package com.bespoke.bespoke_backend.repository;

import com.bespoke.bespoke_backend.model.StatusKomunikasi;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StatusKomunikasiRepository extends JpaRepository<StatusKomunikasi, Long> {
    @Query("SELECT s FROM StatusKomunikasi s WHERE s.jadwalFollowUp.staff.id = :staffId")
    List<StatusKomunikasi> findByStaffId(@Param("staffId") Long staffId);

    @org.springframework.data.jpa.repository.Modifying
    @Query("DELETE FROM StatusKomunikasi s WHERE s.jadwalFollowUp.calonJemaah.id = :calonJemaahId")
    void deleteByCalonJemaahId(@Param("calonJemaahId") Long calonJemaahId);
}
