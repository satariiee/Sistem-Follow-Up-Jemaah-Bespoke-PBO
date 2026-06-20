package com.bespoke.bespoke_backend.model;

import jakarta.persistence.*;
import lombok.*;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.time.LocalDateTime;
import java.math.BigDecimal;

@Entity
@Table(name = "status_komunikasis")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class StatusKomunikasi {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "jadwal_follow_up_id", nullable = false)
    private JadwalFollowUp jadwalFollowUp;

    @Column(nullable = false)
    private String status;

    @Column(columnDefinition = "TEXT")
    private String catatan;

    @Column(name = "follow_up_at")
    @JsonProperty("follow_up_at")
    private LocalDateTime followUpAt;

    private String metode;

    @Transient
    @JsonProperty("nilai_pembayaran")
    private BigDecimal nilaiPembayaran;

    @Transient
    @JsonProperty("tipe_pembayaran")
    private String tipePembayaran;

    @Column(name = "created_at")
    private LocalDateTime createdAt;

    @Column(name = "updated_at")
    private LocalDateTime updatedAt;

    @PrePersist
    protected void onCreate() {
        createdAt = LocalDateTime.now();
        updatedAt = LocalDateTime.now();
    }

    @PreUpdate
    protected void onUpdate() {
        updatedAt = LocalDateTime.now();
    }

    @JsonProperty("jadwal_follow_up_id")
    public void setJadwalFollowUpIdFromJson(Long id) {
        if (id != null) {
            this.jadwalFollowUp = new JadwalFollowUp();
            this.jadwalFollowUp.setId(id);
        }
    }
}
