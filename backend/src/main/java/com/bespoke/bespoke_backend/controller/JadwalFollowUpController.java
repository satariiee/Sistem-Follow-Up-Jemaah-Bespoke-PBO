package com.bespoke.bespoke_backend.controller;

import com.bespoke.bespoke_backend.model.JadwalFollowUp;
import com.bespoke.bespoke_backend.model.CalonJemaah;
import com.bespoke.bespoke_backend.model.ActivityLog;
import com.bespoke.bespoke_backend.repository.JadwalFollowUpRepository;
import com.bespoke.bespoke_backend.repository.CalonJemaahRepository;
import com.bespoke.bespoke_backend.repository.ActivityLogRepository;
import com.bespoke.bespoke_backend.repository.UserRepository;
import com.bespoke.bespoke_backend.model.User;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.Authentication;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;
import java.util.HashMap;
import java.util.stream.Collectors;
import java.time.LocalDateTime;

@RestController
@RequestMapping("/api/jadwal-follow-up")
public class JadwalFollowUpController {

    private final JadwalFollowUpRepository jadwalFollowUpRepository;
    private final CalonJemaahRepository calonJemaahRepository;
    private final ActivityLogRepository activityLogRepository;
    private final UserRepository userRepository;

    public JadwalFollowUpController(JadwalFollowUpRepository jadwalFollowUpRepository, CalonJemaahRepository calonJemaahRepository, ActivityLogRepository activityLogRepository, UserRepository userRepository) {
        this.jadwalFollowUpRepository = jadwalFollowUpRepository;
        this.calonJemaahRepository = calonJemaahRepository;
        this.activityLogRepository = activityLogRepository;
        this.userRepository = userRepository;
    }

    @GetMapping
    public ResponseEntity<Map<String, Object>> getAll() {
        User currentUser = getCurrentUser();
        List<JadwalFollowUp> jadwalList;
        if (currentUser != null && "staff".equals(currentUser.getRole())) {
            jadwalList = jadwalFollowUpRepository.findByStaffId(currentUser.getId());
        } else {
            jadwalList = jadwalFollowUpRepository.findAll();
        }
        List<Map<String, Object>> mappedList = jadwalList.stream()
            .map(this::mapToResponse)
            .collect(Collectors.toList());
        return ResponseEntity.ok(Map.of("data", mappedList));
    }

    @GetMapping("/{id}")
    public ResponseEntity<Map<String, Object>> getById(@PathVariable Long id) {
        return jadwalFollowUpRepository.findById(id)
                .map(jadwal -> ResponseEntity.ok(Map.of("data", (Object) mapToResponse(jadwal))))
                .orElse(ResponseEntity.notFound().build());
    }

    @PostMapping
    @org.springframework.transaction.annotation.Transactional
    public ResponseEntity<Map<String, Object>> create(@RequestBody JadwalFollowUp jadwalFollowUp) {
        JadwalFollowUp saved = jadwalFollowUpRepository.save(jadwalFollowUp);
        
        if (saved.getCalonJemaah() != null && saved.getCalonJemaah().getId() != null) {
            calonJemaahRepository.findById(saved.getCalonJemaah().getId()).ifPresent(cj -> {
                // Update CalonJemaah with staff assignment and last follow up date
                cj.setStaff(saved.getStaff() != null ? saved.getStaff() : cj.getStaff());
                if (saved.getTanggal() != null) {
                    cj.setLastFollowUpAt(saved.getTanggal().atStartOfDay());
                }
                calonJemaahRepository.save(cj);

                ActivityLog log = new ActivityLog();
                log.setAktivitas("Menjadwalkan follow up baru untuk " + cj.getNama() + " pada " + saved.getTanggal());
                log.setUser(getCurrentUser());
                log.setCreatedAt(LocalDateTime.now());
                log.setUpdatedAt(LocalDateTime.now());
                activityLogRepository.save(log);
            });
        }
        
        return ResponseEntity.ok(Map.of("message", "Success", "data", mapToResponse(saved)));
    }

    @PutMapping("/{id}")
    @org.springframework.transaction.annotation.Transactional
    public ResponseEntity<Map<String, Object>> update(@PathVariable Long id, @RequestBody JadwalFollowUp jadwalDetails) {
        return jadwalFollowUpRepository.findById(id)
                .map(jadwal -> {
                    if (jadwalDetails.getTanggal() != null) {
                        jadwal.setTanggal(jadwalDetails.getTanggal());
                    }
                    if (jadwalDetails.getMetode() != null) {
                        jadwal.setMetode(jadwalDetails.getMetode());
                    }
                    if (jadwalDetails.getStatus() != null) {
                        jadwal.setStatus(jadwalDetails.getStatus());
                    }
                    if (jadwalDetails.getCatatan() != null) {
                        jadwal.setCatatan(jadwalDetails.getCatatan());
                    }
                    if (jadwalDetails.getStaff() != null) {
                        jadwal.setStaff(jadwalDetails.getStaff());
                    }
                    
                    JadwalFollowUp updated = jadwalFollowUpRepository.save(jadwal);
                    
                    if (updated.getCalonJemaah() != null && updated.getCalonJemaah().getId() != null) {
                        calonJemaahRepository.findById(updated.getCalonJemaah().getId()).ifPresent(cj -> {
                            cj.setStaff(updated.getStaff() != null ? updated.getStaff() : cj.getStaff());
                            if (updated.getTanggal() != null) {
                                cj.setLastFollowUpAt(updated.getTanggal().atStartOfDay());
                            }
                            calonJemaahRepository.save(cj);
                        });
                    }
                    
                    return ResponseEntity.ok(Map.of("message", "Updated", "data", (Object) mapToResponse(updated)));
                })
                .orElse(ResponseEntity.notFound().build());
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Map<String, String>> delete(@PathVariable Long id) {
        return jadwalFollowUpRepository.findById(id)
                .map(jadwal -> {
                    jadwalFollowUpRepository.delete(jadwal);
                    return ResponseEntity.ok(Map.of("message", "Deleted"));
                })
                .orElse(ResponseEntity.notFound().build());
    }

    private Map<String, Object> mapToResponse(JadwalFollowUp jadwal) {
        Map<String, Object> response = new HashMap<>();
        response.put("id", jadwal.getId());
        response.put("calon_jemaah_id", jadwal.getCalonJemaah() != null ? jadwal.getCalonJemaah().getId() : null);
        response.put("calon_jemaah", jadwal.getCalonJemaah() != null ? jadwal.getCalonJemaah().getNama() : null);
        response.put("kontak", jadwal.getCalonJemaah() != null ? jadwal.getCalonJemaah().getKontak() : null);
        response.put("staff_id", jadwal.getStaff() != null ? jadwal.getStaff().getId() : null);
        response.put("staff", jadwal.getStaff() != null ? jadwal.getStaff().getName() : null);
        response.put("tanggal", jadwal.getTanggal() != null ? jadwal.getTanggal().toString() : null);
        response.put("metode", jadwal.getMetode());
        response.put("status", jadwal.getStatus());
        response.put("catatan", jadwal.getCatatan());
        return response;
    }

    private User getCurrentUser() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null && auth.getName() != null) {
            return userRepository.findByEmail(auth.getName()).orElse(null);
        }
        return null;
    }
}
