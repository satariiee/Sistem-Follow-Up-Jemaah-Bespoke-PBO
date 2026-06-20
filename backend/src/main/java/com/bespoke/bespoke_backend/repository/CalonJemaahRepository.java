package com.bespoke.bespoke_backend.repository;

import com.bespoke.bespoke_backend.model.CalonJemaah;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CalonJemaahRepository extends JpaRepository<CalonJemaah, Long> {
    @Query("SELECT c FROM CalonJemaah c WHERE c.staff.id = :staffId")
    List<CalonJemaah> findByStaffId(@Param("staffId") Long staffId);
}
