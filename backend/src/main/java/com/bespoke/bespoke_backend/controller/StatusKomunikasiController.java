package com.bespoke.bespoke_backend.controller;

import com.bespoke.bespoke_backend.model.StatusKomunikasi;
import com.bespoke.bespoke_backend.model.LaporanClosing;
import com.bespoke.bespoke_backend.model.JadwalFollowUp;
import com.bespoke.bespoke_backend.model.CalonJemaah;
import com.bespoke.bespoke_backend.repository.StatusKomunikasiRepository;
import com.bespoke.bespoke_backend.repository.LaporanClosingRepository;
import com.bespoke.bespoke_backend.repository.JadwalFollowUpRepository;
import com.bespoke.bespoke_backend.repository.CalonJemaahRepository;
import com.bespoke.bespoke_backend.model.ActivityLog;
import com.bespoke.bespoke_backend.repository.ActivityLogRepository;
import com.bespoke.bespoke_backend.repository.UserRepository;
import com.bespoke.bespoke_backend.model.User;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.Authentication;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;

import java.util.Map;

@RestController
@RequestMapping("/api/status-komunikasi")
public class StatusKomunikasiController {

    private final StatusKomunikasiRepository statusKomunikasiRepository;
    private final LaporanClosingRepository laporanClosingRepository;
    private final JadwalFollowUpRepository jadwalFollowUpRepository;
    private final CalonJemaahRepository calonJemaahRepository;
    private final ActivityLogRepository activityLogRepository;
    private final UserRepository userRepository;

    public StatusKomunikasiController(StatusKomunikasiRepository statusKomunikasiRepository,
                                      LaporanClosingRepository laporanClosingRepository,
                                      JadwalFollowUpRepository jadwalFollowUpRepository,
                                      CalonJemaahRepository calonJemaahRepository,
                                      ActivityLogRepository activityLogRepository,
                                      UserRepository userRepository) {
        this.statusKomunikasiRepository = statusKomunikasiRepository;
        this.laporanClosingRepository = laporanClosingRepository;
        this.jadwalFollowUpRepository = jadwalFollowUpRepository;
        this.calonJemaahRepository = calonJemaahRepository;
        this.activityLogRepository = activityLogRepository;
        this.userRepository = userRepository;
    }

    @GetMapping
    public ResponseEntity<Map<String, Object>> getAll() {
        User currentUser = getCurrentUser();
        if (currentUser != null && "staff".equals(currentUser.getRole())) {
            return ResponseEntity.ok(Map.of("data", statusKomunikasiRepository.findByStaffId(currentUser.getId())));
        }
        return ResponseEntity.ok(Map.of("data", statusKomunikasiRepository.findAll()));
    }

    @GetMapping("/{id}")
    public ResponseEntity<Map<String, Object>> getById(@PathVariable Long id) {
        return statusKomunikasiRepository.findById(id)
                .map(item -> ResponseEntity.ok(Map.of("data", (Object) item)))
                .orElse(ResponseEntity.notFound().build());
    }

    @PostMapping
    public ResponseEntity<Map<String, Object>> create(@RequestBody StatusKomunikasi request) {
        StatusKomunikasi saved = statusKomunikasiRepository.save(request);

        if (request.getJadwalFollowUp() != null && request.getJadwalFollowUp().getId() != null) {
            jadwalFollowUpRepository.findById(request.getJadwalFollowUp().getId()).ifPresent(jadwal -> {
                CalonJemaah cj = jadwal.getCalonJemaah();
                
                // 1. UPDATE PIPELINE REAL-TIME
                if (cj != null && request.getStatus() != null) {
                    cj.setStatusKomunikasi(request.getStatus());
                    cj.setLastFollowUpAt(request.getFollowUpAt() != null ? request.getFollowUpAt() : LocalDateTime.now());
                    calonJemaahRepository.save(cj);
                    
                    // Note: JadwalFollowUp status is managed by the updateJadwalFollowUp endpoint,
                    // so we do NOT override it here.
                    
                    // 2. LOG ACTIVITY REAL-TIME
                    ActivityLog log = new ActivityLog();
                    log.setAktivitas("Mengupdate status jemaah " + cj.getNama() + " menjadi " + request.getStatus());
                    log.setUser(getCurrentUser());
                    log.setCreatedAt(LocalDateTime.now());
                    log.setUpdatedAt(LocalDateTime.now());
                    activityLogRepository.save(log);
                }

                // 3. CREATE CLOSING IF APPLICABLE
                if ("Closing".equals(request.getStatus()) && request.getNilaiPembayaran() != null) {
                    LaporanClosing laporanClosing = new LaporanClosing();
                    laporanClosing.setCalonJemaah(cj);
                    laporanClosing.setStaff(jadwal.getStaff());
                    laporanClosing.setTanggalClosing(LocalDate.now());
                    laporanClosing.setNilai(request.getNilaiPembayaran());
                    laporanClosing.setStatusPembayaran(request.getTipePembayaran());
                    laporanClosing.setCatatan(request.getCatatan());
                    laporanClosingRepository.save(laporanClosing);
                }
            });
        }
        return ResponseEntity.ok(Map.of("message", "Success", "data", saved));
    }

    @PutMapping("/{id}")
    public ResponseEntity<Map<String, Object>> update(@PathVariable Long id, @RequestBody StatusKomunikasi details) {
        return statusKomunikasiRepository.findById(id)
                .map(item -> {
                    item.setStatus(details.getStatus());
                    item.setCatatan(details.getCatatan());
                    item.setFollowUpAt(details.getFollowUpAt());
                    item.setMetode(details.getMetode());
                    StatusKomunikasi updated = statusKomunikasiRepository.save(item);
                    return ResponseEntity.ok(Map.of("message", "Updated", "data", (Object) updated));
                })
                .orElse(ResponseEntity.notFound().build());
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Map<String, String>> delete(@PathVariable Long id) {
        return statusKomunikasiRepository.findById(id)
                .map(item -> {
                    statusKomunikasiRepository.delete(item);
                    return ResponseEntity.ok(Map.of("message", "Deleted"));
                })
                .orElse(ResponseEntity.notFound().build());
    }

    private User getCurrentUser() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null && auth.getName() != null) {
            return userRepository.findByEmail(auth.getName()).orElse(null);
        }
        return null;
    }
}
