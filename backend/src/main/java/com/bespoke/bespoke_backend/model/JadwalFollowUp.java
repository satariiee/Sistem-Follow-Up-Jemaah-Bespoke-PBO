package com.bespoke.bespoke_backend.model;

import jakarta.persistence.*;
import lombok.*;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Entity
@Table(name = "jadwal_follow_ups")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class JadwalFollowUp {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "calon_jemaah_id", nullable = false)
    private CalonJemaah calonJemaah;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "staff_id")
    private User staff;

    @Column(nullable = false)
    private LocalDate tanggal;

    @Column(nullable = false)
    private String metode;

    @Column(nullable = false)
    @Builder.Default
    private String status = "Pending";

    @Column(columnDefinition = "TEXT")
    private String catatan;

    @Column(name = "created_at")
    private LocalDateTime createdAt;

    @Column(name = "updated_at")
    private LocalDateTime updatedAt;

    @PrePersist
    protected void onCreate() {
        createdAt = LocalDateTime.now();
        updatedAt = LocalDateTime.now();
        if (status == null) {
            status = "Pending";
        }
    }

    @PreUpdate
    protected void onUpdate() {
        updatedAt = LocalDateTime.now();
    }

    @JsonProperty("calon_jemaah_id")
    public void setCalonJemaahIdFromJson(Long id) {
        if (id != null) {
            this.calonJemaah = new CalonJemaah();
            this.calonJemaah.setId(id);
        }
    }

    @JsonProperty("staff_id")
    public void setStaffIdFromJson(Long id) {
        if (id != null) {
            this.staff = new User();
            this.staff.setId(id);
        }
    }
}
