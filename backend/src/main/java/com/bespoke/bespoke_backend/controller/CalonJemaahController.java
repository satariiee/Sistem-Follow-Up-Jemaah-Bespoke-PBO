package com.bespoke.bespoke_backend.controller;

import com.bespoke.bespoke_backend.model.CalonJemaah;
import com.bespoke.bespoke_backend.model.ActivityLog;
import com.bespoke.bespoke_backend.repository.CalonJemaahRepository;
import com.bespoke.bespoke_backend.repository.ActivityLogRepository;
import com.bespoke.bespoke_backend.repository.JadwalFollowUpRepository;
import com.bespoke.bespoke_backend.repository.LaporanClosingRepository;
import com.bespoke.bespoke_backend.repository.StatusKomunikasiRepository;
import com.bespoke.bespoke_backend.repository.UserRepository;
import com.bespoke.bespoke_backend.model.User;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.Authentication;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;
import java.time.LocalDateTime;
import org.springframework.transaction.annotation.Transactional;

@RestController
@RequestMapping("/api/calon-jemaah")
public class CalonJemaahController {

    private final CalonJemaahRepository calonJemaahRepository;
    private final ActivityLogRepository activityLogRepository;
    private final JadwalFollowUpRepository jadwalFollowUpRepository;
    private final LaporanClosingRepository laporanClosingRepository;
    private final StatusKomunikasiRepository statusKomunikasiRepository;
    private final UserRepository userRepository;

    public CalonJemaahController(CalonJemaahRepository calonJemaahRepository, ActivityLogRepository activityLogRepository, JadwalFollowUpRepository jadwalFollowUpRepository, LaporanClosingRepository laporanClosingRepository, StatusKomunikasiRepository statusKomunikasiRepository, UserRepository userRepository) {
        this.calonJemaahRepository = calonJemaahRepository;
        this.activityLogRepository = activityLogRepository;
        this.jadwalFollowUpRepository = jadwalFollowUpRepository;
        this.laporanClosingRepository = laporanClosingRepository;
        this.statusKomunikasiRepository = statusKomunikasiRepository;
        this.userRepository = userRepository;
    }

    @GetMapping
    public ResponseEntity<Map<String, Object>> getAll() {
        User currentUser = getCurrentUser();
        if (currentUser != null && "staff".equals(currentUser.getRole())) {
            return ResponseEntity.ok(Map.of("data", calonJemaahRepository.findByStaffId(currentUser.getId())));
        }
        return ResponseEntity.ok(Map.of("data", calonJemaahRepository.findAll()));
    }

    @GetMapping("/{id}")
    public ResponseEntity<Map<String, Object>> getById(@PathVariable Long id) {
        return calonJemaahRepository.findById(id)
                .map(calonJemaah -> ResponseEntity.ok(Map.of("data", (Object) calonJemaah)))
                .orElse(ResponseEntity.notFound().build());
    }

    @PostMapping
    @Transactional
    public ResponseEntity<Map<String, Object>> create(@RequestBody CalonJemaah calonJemaah) {
        CalonJemaah saved = calonJemaahRepository.save(calonJemaah);
        
        ActivityLog log = new ActivityLog();
        log.setAktivitas("Menambahkan calon jemaah baru: " + saved.getNama());
        log.setUser(getCurrentUser());
        log.setCreatedAt(LocalDateTime.now());
        log.setUpdatedAt(LocalDateTime.now());
        activityLogRepository.save(log);
        
        return ResponseEntity.ok(Map.of("message", "Success", "data", saved));
    }

    @PutMapping("/{id}")
    @Transactional
    public ResponseEntity<Map<String, Object>> update(@PathVariable Long id, @RequestBody CalonJemaah calonJemaahDetails) {
        return calonJemaahRepository.findById(id)
                .map(calonJemaah -> {
                    if (calonJemaahDetails.getNama() != null) calonJemaah.setNama(calonJemaahDetails.getNama());
                    if (calonJemaahDetails.getKontak() != null) calonJemaah.setKontak(calonJemaahDetails.getKontak());
                    if (calonJemaahDetails.getAlamat() != null) calonJemaah.setAlamat(calonJemaahDetails.getAlamat());
                    if (calonJemaahDetails.getSumber() != null) calonJemaah.setSumber(calonJemaahDetails.getSumber());
                    if (calonJemaahDetails.getPaket() != null) calonJemaah.setPaket(calonJemaahDetails.getPaket());
                    if (calonJemaahDetails.getStatusKomunikasi() != null) calonJemaah.setStatusKomunikasi(calonJemaahDetails.getStatusKomunikasi());
                    if (calonJemaahDetails.getNotes() != null) calonJemaah.setNotes(calonJemaahDetails.getNotes());
                    if (calonJemaahDetails.getUmur() != null) calonJemaah.setUmur(calonJemaahDetails.getUmur());
                    if (calonJemaahDetails.getEmail() != null) calonJemaah.setEmail(calonJemaahDetails.getEmail());
                    CalonJemaah updated = calonJemaahRepository.save(calonJemaah);
                    return ResponseEntity.ok(Map.of("message", "Updated", "data", (Object) updated));
                })
                .orElse(ResponseEntity.notFound().build());
    }

    @DeleteMapping("/{id}")
    @Transactional
    public ResponseEntity<Map<String, String>> delete(@PathVariable Long id) {
        return calonJemaahRepository.findById(id)
                .map(calonJemaah -> {
                    // Delete in order: status_komunikasis -> jadwal_follow_ups -> laporan_closings -> calon_jemaahs
                    statusKomunikasiRepository.deleteByCalonJemaahId(id);
                    jadwalFollowUpRepository.deleteByCalonJemaahId(id);
                    laporanClosingRepository.deleteByCalonJemaahId(id);
                    calonJemaahRepository.delete(calonJemaah);
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
