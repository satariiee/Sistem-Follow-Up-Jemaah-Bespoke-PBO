package com.bespoke.bespoke_backend.repository;

import com.bespoke.bespoke_backend.model.LaporanClosing;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface LaporanClosingRepository extends JpaRepository<LaporanClosing, Long> {
    @Modifying
    @Query("DELETE FROM LaporanClosing l WHERE l.calonJemaah.id = :calonJemaahId")
    void deleteByCalonJemaahId(@Param("calonJemaahId") Long calonJemaahId);
}
