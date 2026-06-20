package com.bespoke.bespoke_backend.model;

import jakarta.persistence.*;
import lombok.*;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.time.LocalDateTime;

@Entity
@Table(name = "calon_jemaahs")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CalonJemaah {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String nama;

    @Column(nullable = false)
    private String kontak;

    @Column(columnDefinition = "TEXT")
    private String alamat;

    private String sumber;
    
    private String paket;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "staff_id")
    private User staff;

    @Column(name = "status_komunikasi", nullable = false)
    @Builder.Default
    private String statusKomunikasi = "Prospek Baru";

    @Column(name = "last_follow_up_at")
    private LocalDateTime lastFollowUpAt;

    @Column(columnDefinition = "TEXT")
    private String notes;

    private Integer umur;

    private String email;

    @Column(name = "created_at")
    private LocalDateTime createdAt;

    @Column(name = "updated_at")
    private LocalDateTime updatedAt;

    @PrePersist
    protected void onCreate() {
        createdAt = LocalDateTime.now();
        updatedAt = LocalDateTime.now();
        if (statusKomunikasi == null) {
            statusKomunikasi = "Prospek Baru";
        }
    }

    @PreUpdate
    protected void onUpdate() {
        updatedAt = LocalDateTime.now();
    }

    @JsonProperty("staff_id")
    public void setStaffIdFromJson(Long id) {
        if (id != null) {
            this.staff = new User();
            this.staff.setId(id);
        }
    }
}
