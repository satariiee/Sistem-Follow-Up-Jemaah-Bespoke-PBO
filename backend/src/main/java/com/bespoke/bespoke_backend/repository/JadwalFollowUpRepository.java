package com.bespoke.bespoke_backend.repository;

import com.bespoke.bespoke_backend.model.JadwalFollowUp;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface JadwalFollowUpRepository extends JpaRepository<JadwalFollowUp, Long> {
    @Query("SELECT j FROM JadwalFollowUp j WHERE j.staff.id = :staffId")
    List<JadwalFollowUp> findByStaffId(@Param("staffId") Long staffId);

    @org.springframework.data.jpa.repository.Modifying
    @Query("DELETE FROM JadwalFollowUp j WHERE j.calonJemaah.id = :calonJemaahId")
    void deleteByCalonJemaahId(@Param("calonJemaahId") Long calonJemaahId);
}
