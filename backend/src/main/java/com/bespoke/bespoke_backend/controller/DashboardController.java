package com.bespoke.bespoke_backend.controller;

import com.bespoke.bespoke_backend.repository.*;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import jakarta.persistence.EntityManager;
import jakarta.persistence.Query;
import java.util.*;

@RestController
@RequestMapping("/api")
public class DashboardController {

    private final CalonJemaahRepository calonJemaahRepository;
    private final JadwalFollowUpRepository jadwalFollowUpRepository;
    private final LaporanClosingRepository laporanClosingRepository;
    private final EntityManager entityManager;

    private final UserRepository userRepository;

    public DashboardController(
            CalonJemaahRepository calonJemaahRepository,
            JadwalFollowUpRepository jadwalFollowUpRepository,
            LaporanClosingRepository laporanClosingRepository,
            EntityManager entityManager,
            UserRepository userRepository) {
        this.calonJemaahRepository = calonJemaahRepository;
        this.jadwalFollowUpRepository = jadwalFollowUpRepository;
        this.laporanClosingRepository = laporanClosingRepository;
        this.entityManager = entityManager;
        this.userRepository = userRepository;
    }

    private com.bespoke.bespoke_backend.model.User getCurrentUser() {
        org.springframework.security.core.Authentication auth = org.springframework.security.core.context.SecurityContextHolder.getContext().getAuthentication();
        if (auth != null && auth.getName() != null) {
            return userRepository.findByEmail(auth.getName()).orElse(null);
        }
        return null;
    }

    @GetMapping("/dashboard")
    public ResponseEntity<?> getDashboardStats() {
        com.bespoke.bespoke_backend.model.User currentUser = getCurrentUser();
        boolean isStaff = currentUser != null && "staff".equals(currentUser.getRole());
        Long staffId = isStaff ? currentUser.getId() : null;

        String staffFilterCalon = isStaff ? " WHERE staff_id = " + staffId : "";
        String staffFilterJadwal = isStaff ? " WHERE staff_id = " + staffId : "";
        String staffFilterJadwalAnd = isStaff ? " AND staff_id = " + staffId : "";
        String staffFilterJadwalWhere = isStaff ? " WHERE j.staff_id = " + staffId : "";
        String staffFilterClosing = isStaff ? " WHERE staff_id = " + staffId : "";
        String staffFilterClosingAnd = isStaff ? " AND staff_id = " + staffId : "";

        long totalJemaah = 0;
        try {
            Query q = entityManager.createNativeQuery("SELECT COUNT(*) FROM calon_jemaahs" + staffFilterCalon);
            totalJemaah = ((Number) q.getSingleResult()).longValue();
        } catch (Exception ignored) {}

        long totalClosing = 0;
        try {
            Query q = entityManager.createNativeQuery("SELECT COUNT(*) FROM laporan_closings" + staffFilterClosing);
            totalClosing = ((Number) q.getSingleResult()).longValue();
        } catch (Exception ignored) {}

        // Follow up hari ini
        long followUpHariIni = 0;
        try {
            Query q = entityManager.createNativeQuery("SELECT COUNT(*) FROM jadwal_follow_ups WHERE DATE(tanggal) = CURDATE()" + staffFilterJadwalAnd);
            followUpHariIni = ((Number) q.getSingleResult()).longValue();
        } catch (Exception ignored) {}

        // Conversion rate
        double conversionRate = totalJemaah > 0 ? Math.round((double) totalClosing / totalJemaah * 100.0 * 100.0) / 100.0 : 0;

        Map<String, Object> stats = new HashMap<>();
        stats.put("total_jemaah", totalJemaah);
        stats.put("follow_up_hari_ini", followUpHariIni);
        stats.put("total_closing", totalClosing);
        stats.put("conversion_rate", conversionRate);

        // Follow up activity per month (last 6 months)
        List<Map<String, Object>> followUpActivity = new ArrayList<>();
        try {
            Query q = entityManager.createNativeQuery(
                "SELECT DATE_FORMAT(tanggal, '%Y-%m') as month, COUNT(*) as count " +
                "FROM jadwal_follow_ups WHERE tanggal >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH) " +
                staffFilterJadwalAnd +
                " GROUP BY DATE_FORMAT(tanggal, '%Y-%m') ORDER BY month");
            List<Object[]> results = q.getResultList();
            for (Object[] row : results) {
                Map<String, Object> item = new HashMap<>();
                item.put("month", row[0] != null ? row[0].toString() : "");
                item.put("count", ((Number) row[1]).longValue());
                followUpActivity.add(item);
            }
        } catch (Exception ignored) {}

        // Closing per month (last 6 months)
        List<Map<String, Object>> closingPerMonth = new ArrayList<>();
        try {
            Query q = entityManager.createNativeQuery(
                "SELECT DATE_FORMAT(tanggal_closing, '%Y-%m') as month, COUNT(*) as closing " +
                "FROM laporan_closings WHERE tanggal_closing >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH) " +
                staffFilterClosingAnd +
                " GROUP BY DATE_FORMAT(tanggal_closing, '%Y-%m') ORDER BY month");
            List<Object[]> results = q.getResultList();
            for (Object[] row : results) {
                Map<String, Object> item = new HashMap<>();
                item.put("month", row[0] != null ? row[0].toString() : "");
                item.put("closing", ((Number) row[1]).longValue());
                closingPerMonth.add(item);
            }
        } catch (Exception ignored) {}

        // Recent follow ups (last 10)
        List<Map<String, Object>> recentFollowUps = new ArrayList<>();
        try {
            Query q = entityManager.createNativeQuery(
                "SELECT j.id, cj.nama, cj.kontak, j.tanggal, j.metode, j.status as status_jadwal, " +
                "cj.status_komunikasi, u.name as staff " +
                "FROM jadwal_follow_ups j " +
                "LEFT JOIN calon_jemaahs cj ON j.calon_jemaah_id = cj.id " +
                "LEFT JOIN users u ON j.staff_id = u.id " +
                staffFilterJadwalWhere +
                " ORDER BY j.tanggal DESC LIMIT 10");
            List<Object[]> results = q.getResultList();
            for (Object[] row : results) {
                Map<String, Object> item = new HashMap<>();
                item.put("id", row[0] != null ? ((Number) row[0]).longValue() : null);
                item.put("nama", row[1]);
                item.put("kontak", row[2]);
                item.put("tanggal", row[3] != null ? row[3].toString() : null);
                item.put("metode", row[4]);
                item.put("status_jadwal", row[5]);
                item.put("status_komunikasi", row[6]);
                item.put("staff", row[7]);
                recentFollowUps.add(item);
            }
        } catch (Exception ignored) {}

        // Build response
        Map<String, Object> data = new HashMap<>();
        data.put("stats", stats);
        data.put("follow_up_activity", followUpActivity);
        data.put("closing_per_month", closingPerMonth);
        data.put("recent_follow_ups", recentFollowUps);

        Map<String, Object> response = new HashMap<>();
        response.put("data", data);

        return ResponseEntity.ok(response);
    }
}

