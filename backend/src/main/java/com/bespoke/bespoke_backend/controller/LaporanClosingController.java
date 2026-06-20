package com.bespoke.bespoke_backend.controller;

import com.bespoke.bespoke_backend.model.LaporanClosing;
import com.bespoke.bespoke_backend.repository.LaporanClosingRepository;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("/api/laporan-closing")
public class LaporanClosingController {

    private final LaporanClosingRepository laporanClosingRepository;

    public LaporanClosingController(LaporanClosingRepository laporanClosingRepository) {
        this.laporanClosingRepository = laporanClosingRepository;
    }

    @GetMapping
    public ResponseEntity<Map<String, Object>> getAll() {
        return ResponseEntity.ok(Map.of("data", laporanClosingRepository.findAll()));
    }

    @GetMapping("/{id}")
    public ResponseEntity<Map<String, Object>> getById(@PathVariable Long id) {
        return laporanClosingRepository.findById(id)
                .map(item -> ResponseEntity.ok(Map.of("data", (Object) item)))
                .orElse(ResponseEntity.notFound().build());
    }

    @PostMapping
    public ResponseEntity<Map<String, Object>> create(@RequestBody LaporanClosing laporanClosing) {
        LaporanClosing saved = laporanClosingRepository.save(laporanClosing);
        return ResponseEntity.ok(Map.of("message", "Success", "data", saved));
    }

    @PutMapping("/{id}")
    public ResponseEntity<Map<String, Object>> update(@PathVariable Long id, @RequestBody LaporanClosing details) {
        return laporanClosingRepository.findById(id)
                .map(item -> {
                    item.setTanggalClosing(details.getTanggalClosing());
                    item.setNilai(details.getNilai());
                    item.setStatusPembayaran(details.getStatusPembayaran());
                    item.setCatatan(details.getCatatan());
                    LaporanClosing updated = laporanClosingRepository.save(item);
                    return ResponseEntity.ok(Map.of("message", "Updated", "data", (Object) updated));
                })
                .orElse(ResponseEntity.notFound().build());
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Map<String, String>> delete(@PathVariable Long id) {
        return laporanClosingRepository.findById(id)
                .map(item -> {
                    laporanClosingRepository.delete(item);
                    return ResponseEntity.ok(Map.of("message", "Deleted"));
                })
                .orElse(ResponseEntity.notFound().build());
    }
}
