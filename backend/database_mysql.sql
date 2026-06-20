-- MySQL dump converted from SQLite database.sqlite
SET FOREIGN_KEY_CHECKS = 0;

-- Table: migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` INT AUTO_INCREMENT NOT NULL,
  `migration` VARCHAR(255) NOT NULL,
  `batch` INT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table: migrations
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (12, '0001_01_01_000000_create_users_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (13, '0001_01_01_000001_create_cache_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (14, '0001_01_01_000002_create_jobs_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (15, '2026_04_10_234550_create_calon_jemaahs_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (16, '2026_04_10_234551_create_jadwal_follow_ups_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (17, '2026_04_10_234552_create_status_komunikasis_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (18, '2026_04_10_234553_create_laporan_closings_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (19, '2026_04_10_234554_create_activity_logs_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (20, '2026_04_11_000923_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (21, '2026_04_12_170000_add_missing_auth_columns_to_users_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (22, '2026_04_13_000001_add_metode_to_status_komunikasis_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (23, '2026_05_12_000001_add_umur_to_calon_jemaahs_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (24, '2026_05_12_000002_add_email_to_calon_jemaahs_table', 1);

-- Table: users
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` INT AUTO_INCREMENT NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `phone` VARCHAR(255),
  `role` VARCHAR(255) NOT NULL DEFAULT 'staff',
  `is_active` TINYINT(1) NOT NULL DEFAULT 1,
  `last_login_at` DATETIME,
  `email_verified_at` DATETIME,
  `password` VARCHAR(255) NOT NULL,
  `remember_token` VARCHAR(255),
  `created_at` DATETIME,
  `updated_at` DATETIME,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table: users
INSERT INTO `users` (`id`, `name`, `email`, `phone`, `role`, `is_active`, `last_login_at`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (2, 'Tengku Galek', 'galek@staff.com', '082213346967', 'staff', 1, NULL, NULL, '$2y$12$OwBRBb1fHQJ3EdQmIWmfReaVWQmdFUXHHNsDvibx.t8e6AetLbX8i', NULL, '2026-05-11 18:40:14', '2026-05-11 18:40:14');
INSERT INTO `users` (`id`, `name`, `email`, `phone`, `role`, `is_active`, `last_login_at`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (3, 'Admin CRM', 'admin@example.com', '081200000001', 'admin', 1, NULL, NULL, '$2y$12$nB14Zpwnk9cQnreKhrKYhuUDRBwRvcfxVfs9jgKHz5EUmWF9XlMV6', NULL, '2026-05-11 18:41:05', '2026-05-11 18:41:05');
INSERT INTO `users` (`id`, `name`, `email`, `phone`, `role`, `is_active`, `last_login_at`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (4, 'Ahmad Fauzi', 'ahmad@example.com', '081200000002', 'staff', 0, NULL, NULL, '$2y$12$b.sDvgZR/1r3GOBTEVXIZeqxj29XHM33GeCIeCs.YNTy5eo/8bZUy', NULL, '2026-05-11 18:41:06', '2026-05-12 07:47:53');
INSERT INTO `users` (`id`, `name`, `email`, `phone`, `role`, `is_active`, `last_login_at`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (5, 'Fatimah Zahra', 'fatimah@example.com', '081200000003', 'staff', 1, NULL, NULL, '$2y$12$fqg/EYqv8IuHPV8GGNS8HOMMET/lKE55ulMNcpVakWPrFpcQBEApe', NULL, '2026-05-11 18:41:06', '2026-05-11 18:41:06');
INSERT INTO `users` (`id`, `name`, `email`, `phone`, `role`, `is_active`, `last_login_at`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (6, 'Zamzai', 'zmzm@gmail.com', '08212362080', 'staff', 1, NULL, NULL, '$2y$12$WwhFzM8YhNoMqTCGwKn7fuM29SvVWZ7Nt/tGqEMLfPFJC6aLwW1VW', NULL, '2026-05-12 07:47:20', '2026-05-12 07:47:20');
INSERT INTO `users` (`id`, `name`, `email`, `phone`, `role`, `is_active`, `last_login_at`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (7, 'acil', 'acil@staff.com', '082818211', 'staff', 1, NULL, NULL, '$2y$12$enjm5jOtL2SeV3XZCR.a1ew7GsSIOnALOr2/wBwSnTREouqmC1ddi', NULL, '2026-05-17 07:50:05', '2026-05-17 07:50:05');
INSERT INTO `users` (`id`, `name`, `email`, `phone`, `role`, `is_active`, `last_login_at`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (8, 'Staff Baru', 'staff.baru@example.com', NULL, 'staff', 1, NULL, NULL, '$2y$12$2LkklWPWdQMbPyp///5W/eUHOfQIh/znYG4yjVqDfr6k5z1tawJbi', NULL, '2026-06-08 14:10:32', '2026-06-08 14:10:32');
INSERT INTO `users` (`id`, `name`, `email`, `phone`, `role`, `is_active`, `last_login_at`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (9, 'Admin Updated', 'admin1@example.com', '082123620869', 'admin', 1, NULL, NULL, '$2y$12$pRfk5lfBFbmxk04aDIiEh.sq8EGl/4fNHCZl8AP0HqnJ6n8DyLIgy', NULL, '2026-06-08 14:16:31', '2026-06-08 14:55:21');

-- Table: password_reset_tokens
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` VARCHAR(255) NOT NULL,
  `token` VARCHAR(255) NOT NULL,
  `created_at` DATETIME,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Table: sessions
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` VARCHAR(255) NOT NULL,
  `user_id` INT,
  `ip_address` VARCHAR(255),
  `user_agent` TEXT,
  `payload` TEXT NOT NULL,
  `last_activity` INT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Table: cache
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache` (
  `key` VARCHAR(255) NOT NULL,
  `value` TEXT NOT NULL,
  `expiration` INT NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Table: cache_locks
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks` (
  `key` VARCHAR(255) NOT NULL,
  `owner` VARCHAR(255) NOT NULL,
  `expiration` INT NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Table: jobs
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` INT AUTO_INCREMENT NOT NULL,
  `queue` VARCHAR(255) NOT NULL,
  `payload` TEXT NOT NULL,
  `attempts` INT NOT NULL,
  `reserved_at` INT,
  `available_at` INT NOT NULL,
  `created_at` INT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Table: job_batches
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches` (
  `id` VARCHAR(255) NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `total_jobs` INT NOT NULL,
  `pending_jobs` INT NOT NULL,
  `failed_jobs` INT NOT NULL,
  `failed_job_ids` TEXT NOT NULL,
  `options` TEXT,
  `cancelled_at` INT,
  `created_at` INT NOT NULL,
  `finished_at` INT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Table: failed_jobs
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` INT AUTO_INCREMENT NOT NULL,
  `uuid` VARCHAR(255) NOT NULL,
  `connection` TEXT NOT NULL,
  `queue` TEXT NOT NULL,
  `payload` TEXT NOT NULL,
  `exception` TEXT NOT NULL,
  `failed_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Table: calon_jemaahs
DROP TABLE IF EXISTS `calon_jemaahs`;
CREATE TABLE `calon_jemaahs` (
  `id` INT AUTO_INCREMENT NOT NULL,
  `nama` VARCHAR(255) NOT NULL,
  `kontak` VARCHAR(255) NOT NULL,
  `alamat` TEXT,
  `sumber` VARCHAR(255),
  `paket` VARCHAR(255),
  `staff_id` INT,
  `status_komunikasi` VARCHAR(255) NOT NULL DEFAULT 'Prospek Baru',
  `last_follow_up_at` DATETIME,
  `notes` TEXT,
  `created_at` DATETIME,
  `updated_at` DATETIME,
  `umur` INT,
  `email` VARCHAR(255),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table: calon_jemaahs
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (2, 'Bapak Abdullah Rahman', '081234567891', 'Bandung', 'Referral', 'Umrah Plus Turki', 5, 'Closing', '2026-05-09 18:41:06', 'Siap DP bulan ini.', '2026-05-11 18:41:06', '2026-05-11 18:41:06', NULL, NULL);
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (3, 'Muhammad Rizky Pratama', '081321000101', 'Bekasi', 'Instagram Ads', 'Umrah Reguler', NULL, 'Prospek Baru', NULL, 'Lead baru dari campaign Ramadhan.', '2026-05-11 18:41:06', '2026-05-11 18:41:06', NULL, NULL);
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (4, 'Nur Aisyah Putri', '081321000102', 'Depok', 'TikTok', 'Umrah Plus Turki', NULL, 'Prospek Baru', '2026-06-15 00:00:00', 'Tertarik keberangkatan akhir tahun.', '2026-05-11 18:41:06', '2026-06-08 14:30:36', NULL, NULL);
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (5, 'Abdul Karim Maulana', '081321000103', 'Bogor', 'Referral', 'Umrah VIP', NULL, 'Prospek Baru', NULL, 'Direferensikan oleh alumni jamaah.', '2026-05-11 18:41:06', '2026-05-11 18:41:06', NULL, NULL);
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (6, 'Siti Rahmawati', '081321000104', 'Tangerang', 'Facebook', 'Umrah Reguler', NULL, 'Prospek Baru', NULL, 'Meminta info cicilan pembayaran.', '2026-05-11 18:41:06', '2026-05-11 18:41:06', NULL, NULL);
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (7, 'Fajar Hidayatullah', '081321000105', 'Jakarta Timur', 'Website', 'Umrah Plus Aqsa', NULL, 'Prospek Baru', NULL, 'Isi form konsultasi di website.', '2026-05-11 18:41:06', '2026-05-11 18:41:06', NULL, NULL);
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (8, 'Muhammad Gilang Zamzami', '081134567654', 'Palembang', 'other', 'gold-12', NULL, 'Prospek Baru', NULL, 'mantap123', '2026-05-11 19:05:36', '2026-05-11 19:05:36', 18, 'gilangzamzami@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (9, 'Muhammad Farezy', '089765244312', 'Karawang', 'other', 'vip-12', NULL, 'Prospek Baru', NULL, 'mantap 23', '2026-05-11 19:21:07', '2026-05-11 19:21:07', 21, 'farezy@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (10, 'Ahmad', '089765433452', 'Karawang', 'other', 'platinum-12', NULL, 'Prospek Baru', NULL, 'anjay', '2026-05-11 19:25:49', '2026-05-11 19:25:49', 32, 'ahmad@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (11, 'Ahmad', '089765433452', 'Karawang', 'other', 'vip-12', NULL, 'Prospek Baru', NULL, 'anjay', '2026-05-11 19:28:00', '2026-05-11 19:28:00', 32, 'ahmad@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (12, 'Rizal', '081245636251', 'Karawang', 'walk-in', 'gold-12', NULL, 'Prospek Baru', NULL, 'ok', '2026-05-11 19:32:44', '2026-05-11 19:32:44', 44, 'rizal@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (13, 'Rizal', '081245636251', 'Karawang', 'walk-in', 'gold-12', NULL, 'Prospek Baru', NULL, 'ok', '2026-05-11 19:34:11', '2026-05-11 19:34:11', 44, 'rizal@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (14, 'Rizal', '081245636251', 'Karawang', 'walk-in', 'gold-12', 2, 'Prospek Baru', '2026-05-14 00:00:00', 'ok', '2026-05-11 19:35:36', '2026-05-11 19:36:20', 44, 'rizal@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (15, 'Rizal', '081245636251', 'Karawang', 'walk-in', 'gold-12', NULL, 'Prospek Baru', NULL, 'ok', '2026-05-11 19:37:20', '2026-05-11 19:37:20', 44, 'rizal@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (16, 'Abdul', '0876222514232', 'Karawang', 'walk-in', 'platinum-12', NULL, 'Prospek Baru', NULL, 'oke', '2026-05-11 19:53:37', '2026-05-11 19:53:37', 55, 'abdul@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (17, 'Abdul', '0876222514232', 'Karawang', 'walk-in', 'platinum-12', NULL, 'Prospek Baru', NULL, 'oke', '2026-05-11 19:54:44', '2026-05-11 19:54:44', 55, 'abdul@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (18, 'Abdul', '0876222514232', 'Karawang', 'walk-in', 'platinum-12', NULL, 'Prospek Baru', NULL, 'oke', '2026-05-11 19:55:55', '2026-05-11 19:55:55', 55, 'abdul@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (19, 'Abdul', '0876222514232', 'Karawang', 'walk-in', 'platinum-12', 2, 'Prospek Baru', '2026-05-15 00:00:00', 'oke', '2026-05-11 19:56:55', '2026-05-11 19:57:18', 55, 'abdul@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (20, 'Abdul', '0876222514232', 'Karawang', 'walk-in', 'platinum-12', 2, 'Tertarik', '2026-06-08 14:44:01', 'oke', '2026-05-11 19:58:51', '2026-06-08 14:44:01', 55, 'abdul@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (21, 'Abdul', '0876222514232', 'Karawang', 'walk-in', 'platinum-12', NULL, 'Prospek Baru', NULL, 'oke', '2026-05-11 19:59:52', '2026-05-11 19:59:52', 55, 'abdul@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (22, 'Abdul', '0876222514232', 'Karawang', 'walk-in', 'platinum-12', NULL, 'Prospek Baru', NULL, 'oke', '2026-05-11 20:00:36', '2026-05-11 20:00:36', 55, 'abdul@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (23, 'Abdul', '0876222514232', 'Karawang', 'walk-in', 'platinum-12', 2, 'Prospek Baru', '2026-05-15 00:00:00', 'oke', '2026-05-11 20:03:08', '2026-05-11 20:03:35', 55, 'abdul@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (24, 'Abdul', '0876222514232', 'Karawang', 'walk-in', 'platinum-12', NULL, 'Prospek Baru', NULL, 'oke', '2026-05-11 20:04:23', '2026-05-11 20:04:23', 55, 'abdul@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (25, 'Abdul', '0876222514232', 'Karawang', 'walk-in', 'platinum-12', NULL, 'Prospek Baru', NULL, 'oke', '2026-05-11 20:06:19', '2026-05-11 20:06:19', 55, 'abdul@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (26, 'Mahmud', '087654233412', 'Bekasi', 'other', 'vip-12', NULL, 'Prospek Baru', NULL, 'OKE', '2026-05-11 20:13:35', '2026-05-11 20:13:35', 44, 'mahmud@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (27, 'Mahmud', '087654233412', 'Bekasi', 'other', 'vip-12', 2, 'Prospek Baru', '2026-05-15 00:00:00', 'OKE', '2026-05-11 20:14:37', '2026-05-11 20:24:45', 44, 'mahmud@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (28, 'Mahmud', '087654233412', 'Bekasi', 'other', 'vip-12', 2, 'Dihubungi', '2026-05-12 08:19:37', 'OKE', '2026-05-11 20:15:36', '2026-06-08 14:44:30', 44, 'mahmud@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (29, 'Mahmud', '087654233412', 'Bekasi', 'other', 'vip-12', NULL, 'Prospek Baru', NULL, 'OKE', '2026-05-11 20:16:49', '2026-05-11 20:16:49', 44, 'mahmud@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (30, 'Mahmud', '087654233412', 'bekasi', 'walk-in', 'vip-12', 2, 'Closing', '2026-05-17 07:52:59', 'sddas', '2026-05-11 20:20:09', '2026-05-17 07:52:59', 44, 'mahmud@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (31, 'Mahmud', '087654233412', 'Bekasi', 'other', 'vip-12', NULL, 'Prospek Baru', NULL, 'OKE', '2026-05-11 20:22:15', '2026-05-11 20:22:15', 44, 'mahmud@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (32, 'Mahmud', '087654233412', 'Bekasi', 'other', 'vip-12', NULL, 'Prospek Baru', NULL, 'OKE', '2026-05-11 20:27:46', '2026-05-11 20:27:46', 44, 'mahmud@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (33, 'Mahmud', '087654233412', 'Bekasi', 'other', 'vip-12', NULL, 'Prospek Baru', NULL, 'OKE', '2026-05-12 02:43:51', '2026-05-12 02:43:51', 44, 'mahmud@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (34, 'Mahmud', '087654233412', 'Bekasi', 'other', 'vip-12', NULL, 'Prospek Baru', NULL, 'OKE', '2026-05-12 02:49:46', '2026-05-12 02:49:46', 44, 'mahmud@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (35, 'Mahmud', '087654233412', 'Bekasi', 'other', 'vip-12', NULL, 'Prospek Baru', NULL, 'OKE', '2026-05-12 02:59:54', '2026-05-12 02:59:54', 44, 'mahmud@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (36, 'Mahmud', '087654233412', 'Bekasi', 'other', 'vip-12', NULL, 'Prospek Baru', NULL, 'OKE', '2026-05-12 03:01:09', '2026-05-12 03:01:09', 44, 'mahmud@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (37, 'Mahmud', '087654233412', 'Bekasi', 'other', 'vip-12', NULL, 'Prospek Baru', NULL, 'OKE', '2026-05-12 03:01:59', '2026-05-12 03:01:59', 44, 'mahmud@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (38, 'Mahmud', '087654233412', 'Bekasi', 'other', 'vip-12', NULL, 'Prospek Baru', NULL, 'OKE', '2026-05-12 03:03:11', '2026-05-12 03:03:11', 44, 'mahmud@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (39, 'Mahmud', '087654233412', 'Bekasi', 'other', 'vip-12', NULL, 'Prospek Baru', NULL, 'OKE', '2026-05-12 05:25:36', '2026-05-12 05:25:36', 44, 'mahmud@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (40, 'Mahmud', '087654233412', 'Bekasi', 'other', 'vip-12', NULL, 'Prospek Baru', NULL, 'OKE', '2026-05-12 05:30:51', '2026-05-12 05:30:51', 44, 'mahmud@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (41, 'Mahmud', '087654233412', 'Bekasi', 'other', 'vip-12', 2, 'Prospek Baru', '2026-05-15 00:00:00', 'OKE', '2026-05-12 05:35:02', '2026-05-12 05:36:10', 44, 'mahmud@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (42, 'Mahmud', '087654233412', 'Bekasi', 'other', 'vip-12', NULL, 'Prospek Baru', NULL, 'OKE', '2026-05-12 05:39:17', '2026-05-12 05:39:17', 44, 'mahmud@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (43, 'Mahmud', '087654233412', 'Bekasi', 'other', 'vip-12', NULL, 'Prospek Baru', NULL, 'OKE', '2026-05-12 05:40:02', '2026-05-12 05:40:02', 44, 'mahmud@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (44, 'Mahmud', '087654233412', 'Bekasi', 'other', 'vip-12', NULL, 'Prospek Baru', NULL, 'OKE', '2026-05-12 05:42:31', '2026-05-12 05:42:31', 44, 'mahmud@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (45, 'Mahmud', '087654233412', 'Bekasi', 'other', 'vip-12', NULL, 'Prospek Baru', NULL, 'OKE', '2026-05-12 05:43:15', '2026-05-12 05:43:15', 44, 'mahmud@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (46, 'Mahmud', '087654233412', 'Bekasi', 'other', 'vip-12', 4, 'Prospek Baru', '2026-05-15 00:00:00', 'OKE', '2026-05-12 05:45:32', '2026-05-12 05:46:38', 44, 'mahmud@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (47, 'RIZAL', '081287873424', 'Karawang', 'referral', 'ekonomi-12', 2, 'Closing', '2026-05-12 08:17:23', 'ya', '2026-05-12 08:08:03', '2026-05-12 08:17:23', 47, 'rizal@gmail.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (48, 'Kak novia', '082612531', 'bekasi', 'website', 'vip-12', 2, 'Closing', '2026-05-17 08:04:17', '222', '2026-05-17 07:48:15', '2026-05-17 08:04:17', 22, 'kaknovia@gmial.com');
INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES (49, 'Budi Santoso', '08123456789', 'Jl. Sudirman No. 10, Jakarta', 'Facebook', NULL, NULL, 'Prospek Baru', NULL, NULL, '2026-06-08 14:19:41', '2026-06-08 14:19:41', NULL, 'budi@example.com');

-- Table: jadwal_follow_ups
DROP TABLE IF EXISTS `jadwal_follow_ups`;
CREATE TABLE `jadwal_follow_ups` (
  `id` INT AUTO_INCREMENT NOT NULL,
  `calon_jemaah_id` INT NOT NULL,
  `staff_id` INT,
  `tanggal` DATE NOT NULL,
  `metode` VARCHAR(255) NOT NULL,
  `status` VARCHAR(255) NOT NULL DEFAULT 'Pending',
  `catatan` TEXT,
  `created_at` DATETIME,
  `updated_at` DATETIME,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table: jadwal_follow_ups
INSERT INTO `jadwal_follow_ups` (`id`, `calon_jemaah_id`, `staff_id`, `tanggal`, `metode`, `status`, `catatan`, `created_at`, `updated_at`) VALUES (2, 2, 5, '2026-05-10 00:00:00', 'Telepon', 'Done', 'Sudah setuju jadwal pembayaran.', '2026-05-11 18:41:06', '2026-05-11 18:41:06');
INSERT INTO `jadwal_follow_ups` (`id`, `calon_jemaah_id`, `staff_id`, `tanggal`, `metode`, `status`, `catatan`, `created_at`, `updated_at`) VALUES (3, 14, 2, '2026-05-14 00:00:00', 'WhatsApp', 'Done', 'Prospek tertarik dengan paket premium, minta info lebih lanjut', '2026-05-11 19:36:20', '2026-06-08 14:38:11');
INSERT INTO `jadwal_follow_ups` (`id`, `calon_jemaah_id`, `staff_id`, `tanggal`, `metode`, `status`, `catatan`, `created_at`, `updated_at`) VALUES (4, 19, 2, '2026-05-15 00:00:00', 'WhatsApp', 'Pending', 'IYA', '2026-05-11 19:57:18', '2026-05-11 19:57:18');
INSERT INTO `jadwal_follow_ups` (`id`, `calon_jemaah_id`, `staff_id`, `tanggal`, `metode`, `status`, `catatan`, `created_at`, `updated_at`) VALUES (5, 20, 2, '2026-05-15 00:00:00', 'WhatsApp', 'Pending', 'IYA', '2026-05-11 19:59:23', '2026-05-11 19:59:23');
INSERT INTO `jadwal_follow_ups` (`id`, `calon_jemaah_id`, `staff_id`, `tanggal`, `metode`, `status`, `catatan`, `created_at`, `updated_at`) VALUES (6, 23, 2, '2026-05-15 00:00:00', 'WhatsApp', 'Pending', 'A', '2026-05-11 20:03:35', '2026-05-11 20:03:35');
INSERT INTO `jadwal_follow_ups` (`id`, `calon_jemaah_id`, `staff_id`, `tanggal`, `metode`, `status`, `catatan`, `created_at`, `updated_at`) VALUES (7, 28, 2, '2026-05-13 09:00:00', 'Meeting', 'Done', 'iya', '2026-05-11 20:16:00', '2026-05-12 08:23:02');
INSERT INTO `jadwal_follow_ups` (`id`, `calon_jemaah_id`, `staff_id`, `tanggal`, `metode`, `status`, `catatan`, `created_at`, `updated_at`) VALUES (8, 30, 2, '2026-05-21 09:00:00', 'Meeting', 'Done', 'tertarik dan sudah transfer', '2026-05-11 20:20:37', '2026-05-17 07:52:59');
INSERT INTO `jadwal_follow_ups` (`id`, `calon_jemaah_id`, `staff_id`, `tanggal`, `metode`, `status`, `catatan`, `created_at`, `updated_at`) VALUES (9, 27, 2, '2026-05-15 00:00:00', 'WhatsApp', 'Pending', 'sad', '2026-05-11 20:24:45', '2026-05-11 20:24:45');
INSERT INTO `jadwal_follow_ups` (`id`, `calon_jemaah_id`, `staff_id`, `tanggal`, `metode`, `status`, `catatan`, `created_at`, `updated_at`) VALUES (10, 41, 2, '2026-05-15 00:00:00', 'WhatsApp', 'Pending', 'iya', '2026-05-12 05:36:10', '2026-05-12 05:36:10');
INSERT INTO `jadwal_follow_ups` (`id`, `calon_jemaah_id`, `staff_id`, `tanggal`, `metode`, `status`, `catatan`, `created_at`, `updated_at`) VALUES (11, 46, 4, '2026-05-15 00:00:00', 'WhatsApp', 'Pending', 'iya', '2026-05-12 05:46:38', '2026-05-12 05:46:38');
INSERT INTO `jadwal_follow_ups` (`id`, `calon_jemaah_id`, `staff_id`, `tanggal`, `metode`, `status`, `catatan`, `created_at`, `updated_at`) VALUES (12, 47, 2, '2026-05-13 09:00:00', 'Meeting', 'Done', 'berangkat', '2026-05-12 08:10:16', '2026-05-12 08:17:23');
INSERT INTO `jadwal_follow_ups` (`id`, `calon_jemaah_id`, `staff_id`, `tanggal`, `metode`, `status`, `catatan`, `created_at`, `updated_at`) VALUES (13, 48, 2, '2026-05-30 09:00:00', 'WhatsApp', 'Done', 'dfgfgfdg', '2026-05-17 07:48:49', '2026-05-17 08:04:17');
INSERT INTO `jadwal_follow_ups` (`id`, `calon_jemaah_id`, `staff_id`, `tanggal`, `metode`, `status`, `catatan`, `created_at`, `updated_at`) VALUES (14, 4, NULL, '2026-06-15 00:00:00', 'Call', 'Pending', NULL, '2026-06-08 14:30:36', '2026-06-08 14:30:36');

-- Table: status_komunikasis
DROP TABLE IF EXISTS `status_komunikasis`;
CREATE TABLE `status_komunikasis` (
  `id` INT AUTO_INCREMENT NOT NULL,
  `jadwal_follow_up_id` INT NOT NULL,
  `status` VARCHAR(255) NOT NULL,
  `catatan` TEXT,
  `follow_up_at` DATETIME,
  `created_at` DATETIME,
  `updated_at` DATETIME,
  `metode` VARCHAR(255),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table: status_komunikasis
INSERT INTO `status_komunikasis` (`id`, `jadwal_follow_up_id`, `status`, `catatan`, `follow_up_at`, `created_at`, `updated_at`, `metode`) VALUES (2, 2, 'Closing', 'Sudah deal dan menunggu pembayaran.', '2026-05-09 18:41:06', '2026-05-11 18:41:06', '2026-05-11 18:41:06', NULL);
INSERT INTO `status_komunikasis` (`id`, `jadwal_follow_up_id`, `status`, `catatan`, `follow_up_at`, `created_at`, `updated_at`, `metode`) VALUES (3, 12, 'Dihubungi', 'mantap', '2026-05-12 08:16:28', '2026-05-12 08:16:28', '2026-05-12 08:16:28', 'WhatsApp');
INSERT INTO `status_komunikasis` (`id`, `jadwal_follow_up_id`, `status`, `catatan`, `follow_up_at`, `created_at`, `updated_at`, `metode`) VALUES (4, 12, 'Closing', 'berangkat', '2026-05-12 08:17:23', '2026-05-12 08:17:23', '2026-05-12 08:17:23', 'Meeting');
INSERT INTO `status_komunikasis` (`id`, `jadwal_follow_up_id`, `status`, `catatan`, `follow_up_at`, `created_at`, `updated_at`, `metode`) VALUES (6, 7, 'Tertarik', 'iya', '2026-05-12 08:21:14', '2026-05-12 08:21:14', '2026-05-12 08:21:14', 'WhatsApp');
INSERT INTO `status_komunikasis` (`id`, `jadwal_follow_up_id`, `status`, `catatan`, `follow_up_at`, `created_at`, `updated_at`, `metode`) VALUES (7, 7, 'Closing', 'iya', '2026-05-12 08:23:02', '2026-05-12 08:23:03', '2026-05-12 08:23:03', 'Meeting');
INSERT INTO `status_komunikasis` (`id`, `jadwal_follow_up_id`, `status`, `catatan`, `follow_up_at`, `created_at`, `updated_at`, `metode`) VALUES (8, 8, 'Dihubungi', 'baru dihubungi', '2026-05-17 07:51:48', '2026-05-17 07:51:49', '2026-05-17 07:51:49', 'WhatsApp');
INSERT INTO `status_komunikasis` (`id`, `jadwal_follow_up_id`, `status`, `catatan`, `follow_up_at`, `created_at`, `updated_at`, `metode`) VALUES (9, 8, 'Closing', 'tertarik dan sudah transfer', '2026-05-17 07:52:59', '2026-05-17 07:52:59', '2026-05-17 07:52:59', 'Meeting');
INSERT INTO `status_komunikasis` (`id`, `jadwal_follow_up_id`, `status`, `catatan`, `follow_up_at`, `created_at`, `updated_at`, `metode`) VALUES (10, 13, 'Closing', 'dfgfgfdg', '2026-05-17 08:04:17', '2026-05-17 08:04:17', '2026-05-17 08:04:17', 'WhatsApp');
INSERT INTO `status_komunikasis` (`id`, `jadwal_follow_up_id`, `status`, `catatan`, `follow_up_at`, `created_at`, `updated_at`, `metode`) VALUES (11, 5, 'Tertarik', 'Dihubungi via WhatsApp, sangat antusias', '2026-06-08 14:44:01', '2026-06-08 14:44:01', '2026-06-08 14:44:01', 'WhatsApp');

-- Table: laporan_closings
DROP TABLE IF EXISTS `laporan_closings`;
CREATE TABLE `laporan_closings` (
  `id` INT AUTO_INCREMENT NOT NULL,
  `calon_jemaah_id` INT NOT NULL,
  `staff_id` INT,
  `tanggal_closing` DATE NOT NULL,
  `nilai` DECIMAL(15,2),
  `status_pembayaran` VARCHAR(255),
  `catatan` TEXT,
  `created_at` DATETIME,
  `updated_at` DATETIME,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table: laporan_closings
INSERT INTO `laporan_closings` (`id`, `calon_jemaah_id`, `staff_id`, `tanggal_closing`, `nilai`, `status_pembayaran`, `catatan`, `created_at`, `updated_at`) VALUES (2, 47, 2, '2026-05-12 00:00:00', 45000000, 'Lunas', 'berangkat', '2026-05-12 08:17:23', '2026-05-12 08:17:23');
INSERT INTO `laporan_closings` (`id`, `calon_jemaah_id`, `staff_id`, `tanggal_closing`, `nilai`, `status_pembayaran`, `catatan`, `created_at`, `updated_at`) VALUES (3, 28, 2, '2026-05-12 00:00:00', 44999999.99, 'Lunas', 'iya', '2026-05-12 08:23:03', '2026-05-12 08:23:03');
INSERT INTO `laporan_closings` (`id`, `calon_jemaah_id`, `staff_id`, `tanggal_closing`, `nilai`, `status_pembayaran`, `catatan`, `created_at`, `updated_at`) VALUES (4, 30, 2, '2026-05-17 00:00:00', 4000000, 'Lunas', 'tertarik dan sudah transfer', '2026-05-17 07:52:59', '2026-05-17 07:52:59');
INSERT INTO `laporan_closings` (`id`, `calon_jemaah_id`, `staff_id`, `tanggal_closing`, `nilai`, `status_pembayaran`, `catatan`, `created_at`, `updated_at`) VALUES (5, 48, 2, '2026-05-17 00:00:00', 5675675, 'Lunas', 'dfgfgfdg', '2026-05-17 08:04:17', '2026-05-17 08:04:17');
INSERT INTO `laporan_closings` (`id`, `calon_jemaah_id`, `staff_id`, `tanggal_closing`, `nilai`, `status_pembayaran`, `catatan`, `created_at`, `updated_at`) VALUES (6, 5, NULL, '2026-04-30 00:00:00', NULL, NULL, NULL, '2026-06-08 14:45:48', '2026-06-08 14:45:48');

-- Table: activity_logs
DROP TABLE IF EXISTS `activity_logs`;
CREATE TABLE `activity_logs` (
  `id` INT AUTO_INCREMENT NOT NULL,
  `user_id` INT,
  `aktivitas` VARCHAR(255) NOT NULL,
  `subject_type` VARCHAR(255),
  `subject_id` INT,
  `metadata` TEXT,
  `created_at` DATETIME,
  `updated_at` DATETIME,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table: activity_logs
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (2, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 8, '{"nama":"Muhammad Gilang Zamzami"}', '2026-05-11 19:05:36', '2026-05-11 19:05:36');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (3, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 9, '{"nama":"Muhammad Farezy"}', '2026-05-11 19:21:07', '2026-05-11 19:21:07');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (4, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 10, '{"nama":"Ahmad"}', '2026-05-11 19:25:49', '2026-05-11 19:25:49');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (5, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 11, '{"nama":"Ahmad"}', '2026-05-11 19:28:00', '2026-05-11 19:28:00');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (6, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 12, '{"nama":"Rizal"}', '2026-05-11 19:32:44', '2026-05-11 19:32:44');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (7, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 13, '{"nama":"Rizal"}', '2026-05-11 19:34:11', '2026-05-11 19:34:11');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (8, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 14, '{"nama":"Rizal"}', '2026-05-11 19:35:36', '2026-05-11 19:35:36');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (9, NULL, 'Membuat jadwal follow up', 'App\\Models\\JadwalFollowUp', 3, '{"calon_jemaah_id":14}', '2026-05-11 19:36:20', '2026-05-11 19:36:20');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (10, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 15, '{"nama":"Rizal"}', '2026-05-11 19:37:20', '2026-05-11 19:37:20');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (11, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 16, '{"nama":"Abdul"}', '2026-05-11 19:53:37', '2026-05-11 19:53:37');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (12, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 17, '{"nama":"Abdul"}', '2026-05-11 19:54:44', '2026-05-11 19:54:44');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (13, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 18, '{"nama":"Abdul"}', '2026-05-11 19:55:55', '2026-05-11 19:55:55');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (14, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 19, '{"nama":"Abdul"}', '2026-05-11 19:56:55', '2026-05-11 19:56:55');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (15, NULL, 'Membuat jadwal follow up', 'App\\Models\\JadwalFollowUp', 4, '{"calon_jemaah_id":19}', '2026-05-11 19:57:18', '2026-05-11 19:57:18');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (16, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 20, '{"nama":"Abdul"}', '2026-05-11 19:58:51', '2026-05-11 19:58:51');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (17, NULL, 'Membuat jadwal follow up', 'App\\Models\\JadwalFollowUp', 5, '{"calon_jemaah_id":20}', '2026-05-11 19:59:23', '2026-05-11 19:59:23');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (18, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 21, '{"nama":"Abdul"}', '2026-05-11 19:59:52', '2026-05-11 19:59:52');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (19, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 22, '{"nama":"Abdul"}', '2026-05-11 20:00:36', '2026-05-11 20:00:36');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (20, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 23, '{"nama":"Abdul"}', '2026-05-11 20:03:08', '2026-05-11 20:03:08');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (21, NULL, 'Membuat jadwal follow up', 'App\\Models\\JadwalFollowUp', 6, '{"calon_jemaah_id":23}', '2026-05-11 20:03:35', '2026-05-11 20:03:35');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (22, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 24, '{"nama":"Abdul"}', '2026-05-11 20:04:23', '2026-05-11 20:04:23');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (23, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 25, '{"nama":"Abdul"}', '2026-05-11 20:06:19', '2026-05-11 20:06:19');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (24, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 26, '{"nama":"Mahmud"}', '2026-05-11 20:13:35', '2026-05-11 20:13:35');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (25, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 27, '{"nama":"Mahmud"}', '2026-05-11 20:14:37', '2026-05-11 20:14:37');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (26, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 28, '{"nama":"Mahmud"}', '2026-05-11 20:15:36', '2026-05-11 20:15:36');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (27, NULL, 'Membuat jadwal follow up', 'App\\Models\\JadwalFollowUp', 7, '{"calon_jemaah_id":28}', '2026-05-11 20:16:00', '2026-05-11 20:16:00');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (28, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 29, '{"nama":"Mahmud"}', '2026-05-11 20:16:49', '2026-05-11 20:16:49');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (29, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 30, '{"nama":"Mahmud"}', '2026-05-11 20:20:09', '2026-05-11 20:20:09');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (30, NULL, 'Membuat jadwal follow up', 'App\\Models\\JadwalFollowUp', 8, '{"calon_jemaah_id":30}', '2026-05-11 20:20:37', '2026-05-11 20:20:37');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (31, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 31, '{"nama":"Mahmud"}', '2026-05-11 20:22:15', '2026-05-11 20:22:15');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (32, NULL, 'Membuat jadwal follow up', 'App\\Models\\JadwalFollowUp', 9, '{"calon_jemaah_id":27}', '2026-05-11 20:24:45', '2026-05-11 20:24:45');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (33, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 32, '{"nama":"Mahmud"}', '2026-05-11 20:27:46', '2026-05-11 20:27:46');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (34, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 33, '{"nama":"Mahmud"}', '2026-05-12 02:43:51', '2026-05-12 02:43:51');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (35, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 34, '{"nama":"Mahmud"}', '2026-05-12 02:49:46', '2026-05-12 02:49:46');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (36, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 35, '{"nama":"Mahmud"}', '2026-05-12 02:59:54', '2026-05-12 02:59:54');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (37, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 36, '{"nama":"Mahmud"}', '2026-05-12 03:01:09', '2026-05-12 03:01:09');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (38, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 37, '{"nama":"Mahmud"}', '2026-05-12 03:01:59', '2026-05-12 03:01:59');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (39, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 38, '{"nama":"Mahmud"}', '2026-05-12 03:03:11', '2026-05-12 03:03:11');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (40, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 39, '{"nama":"Mahmud"}', '2026-05-12 05:25:36', '2026-05-12 05:25:36');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (41, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 40, '{"nama":"Mahmud"}', '2026-05-12 05:30:51', '2026-05-12 05:30:51');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (42, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 41, '{"nama":"Mahmud"}', '2026-05-12 05:35:02', '2026-05-12 05:35:02');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (43, NULL, 'Membuat jadwal follow up', 'App\\Models\\JadwalFollowUp', 10, '{"calon_jemaah_id":41}', '2026-05-12 05:36:10', '2026-05-12 05:36:10');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (44, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 42, '{"nama":"Mahmud"}', '2026-05-12 05:39:17', '2026-05-12 05:39:17');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (45, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 43, '{"nama":"Mahmud"}', '2026-05-12 05:40:02', '2026-05-12 05:40:02');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (46, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 44, '{"nama":"Mahmud"}', '2026-05-12 05:42:31', '2026-05-12 05:42:31');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (47, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 45, '{"nama":"Mahmud"}', '2026-05-12 05:43:15', '2026-05-12 05:43:15');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (48, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 46, '{"nama":"Mahmud"}', '2026-05-12 05:45:32', '2026-05-12 05:45:32');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (49, NULL, 'Membuat jadwal follow up', 'App\\Models\\JadwalFollowUp', 11, '{"calon_jemaah_id":46}', '2026-05-12 05:46:38', '2026-05-12 05:46:38');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (50, NULL, 'Mengubah status komunikasi', 'App\\Models\\StatusKomunikasi', 1, '{"status":"Tertarik"}', '2026-05-12 07:33:47', '2026-05-12 07:33:47');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (51, NULL, 'Menambahkan user baru', 'App\\Models\\User', 6, '{"role":"staff"}', '2026-05-12 07:47:20', '2026-05-12 07:47:20');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (52, NULL, 'Memperbarui user', 'App\\Models\\User', 4, '{"role":"staff"}', '2026-05-12 07:47:53', '2026-05-12 07:47:53');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (53, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 47, '{"nama":"RIZAL"}', '2026-05-12 08:08:03', '2026-05-12 08:08:03');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (54, NULL, 'Membuat jadwal follow up', 'App\\Models\\JadwalFollowUp', 12, '{"calon_jemaah_id":47}', '2026-05-12 08:10:16', '2026-05-12 08:10:16');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (55, 2, 'Memperbarui jadwal follow up', 'App\\Models\\JadwalFollowUp', 12, '{"status":"In Progress"}', '2026-05-12 08:16:28', '2026-05-12 08:16:28');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (56, 2, 'Memperbarui status komunikasi', 'App\\Models\\StatusKomunikasi', 3, '{"status":"Dihubungi"}', '2026-05-12 08:16:28', '2026-05-12 08:16:28');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (57, 2, 'Memperbarui jadwal follow up', 'App\\Models\\JadwalFollowUp', 12, '{"status":"Done"}', '2026-05-12 08:17:23', '2026-05-12 08:17:23');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (58, 2, 'Memperbarui status komunikasi', 'App\\Models\\StatusKomunikasi', 4, '{"status":"Closing"}', '2026-05-12 08:17:23', '2026-05-12 08:17:23');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (59, 2, 'Memperbarui jadwal follow up', 'App\\Models\\JadwalFollowUp', 7, '{"status":"In Progress"}', '2026-05-12 08:19:37', '2026-05-12 08:19:37');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (60, 2, 'Memperbarui status komunikasi', 'App\\Models\\StatusKomunikasi', 5, '{"status":"Dihubungi"}', '2026-05-12 08:19:37', '2026-05-12 08:19:37');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (61, 2, 'Memperbarui jadwal follow up', 'App\\Models\\JadwalFollowUp', 7, '{"status":"In Progress"}', '2026-05-12 08:21:14', '2026-05-12 08:21:14');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (62, 2, 'Memperbarui status komunikasi', 'App\\Models\\StatusKomunikasi', 6, '{"status":"Tertarik"}', '2026-05-12 08:21:14', '2026-05-12 08:21:14');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (63, 2, 'Memperbarui jadwal follow up', 'App\\Models\\JadwalFollowUp', 7, '{"status":"Done"}', '2026-05-12 08:23:02', '2026-05-12 08:23:02');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (64, 2, 'Memperbarui status komunikasi', 'App\\Models\\StatusKomunikasi', 7, '{"status":"Closing"}', '2026-05-12 08:23:03', '2026-05-12 08:23:03');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (65, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 48, '{"nama":"Kak novia"}', '2026-05-17 07:48:15', '2026-05-17 07:48:15');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (66, NULL, 'Membuat jadwal follow up', 'App\\Models\\JadwalFollowUp', 13, '{"calon_jemaah_id":48}', '2026-05-17 07:48:49', '2026-05-17 07:48:49');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (67, NULL, 'Menambahkan user baru', 'App\\Models\\User', 7, '{"role":"staff"}', '2026-05-17 07:50:05', '2026-05-17 07:50:05');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (68, 2, 'Memperbarui jadwal follow up', 'App\\Models\\JadwalFollowUp', 8, '{"status":"In Progress"}', '2026-05-17 07:51:48', '2026-05-17 07:51:48');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (69, 2, 'Memperbarui status komunikasi', 'App\\Models\\StatusKomunikasi', 8, '{"status":"Dihubungi"}', '2026-05-17 07:51:49', '2026-05-17 07:51:49');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (70, 2, 'Memperbarui jadwal follow up', 'App\\Models\\JadwalFollowUp', 8, '{"status":"Done"}', '2026-05-17 07:52:59', '2026-05-17 07:52:59');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (71, 2, 'Memperbarui status komunikasi', 'App\\Models\\StatusKomunikasi', 9, '{"status":"Closing"}', '2026-05-17 07:52:59', '2026-05-17 07:52:59');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (72, 2, 'Memperbarui jadwal follow up', 'App\\Models\\JadwalFollowUp', 13, '{"status":"Done"}', '2026-05-17 08:04:17', '2026-05-17 08:04:17');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (73, 2, 'Memperbarui status komunikasi', 'App\\Models\\StatusKomunikasi', 10, '{"status":"Closing"}', '2026-05-17 08:04:17', '2026-05-17 08:04:17');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (74, NULL, 'Menambahkan user baru', 'App\\Models\\User', 8, '{"role":"staff"}', '2026-06-08 14:10:32', '2026-06-08 14:10:32');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (75, NULL, 'Memperbarui user', 'App\\Models\\User', 1, '{"role":"admin"}', '2026-06-08 14:11:07', '2026-06-08 14:11:07');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (76, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 49, '{"nama":"Budi Santoso"}', '2026-06-08 14:19:41', '2026-06-08 14:19:41');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (77, NULL, 'Memperbarui data calon jemaah', 'App\\Models\\CalonJemaah', 1, '{"nama":"Ibu Siti Aminah"}', '2026-06-08 14:20:30', '2026-06-08 14:20:30');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (78, NULL, 'Menghapus calon jemaah', 'App\\Models\\CalonJemaah', 1, '{"nama":"Ibu Siti Aminah"}', '2026-06-08 14:20:43', '2026-06-08 14:20:43');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (79, 9, 'Membuat jadwal follow up', 'App\\Models\\JadwalFollowUp', 14, '{"calon_jemaah_id":4}', '2026-06-08 14:30:36', '2026-06-08 14:30:36');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (80, 9, 'Memperbarui jadwal follow up', 'App\\Models\\JadwalFollowUp', 3, '{"status":"Done"}', '2026-06-08 14:38:11', '2026-06-08 14:38:11');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (81, 9, 'Memperbarui jadwal follow up', 'App\\Models\\JadwalFollowUp', 5, '{"status":"Pending"}', '2026-06-08 14:43:08', '2026-06-08 14:43:08');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (82, 9, 'Memperbarui status komunikasi', 'App\\Models\\StatusKomunikasi', 11, '{"status":"Tertarik"}', '2026-06-08 14:44:01', '2026-06-08 14:44:01');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (83, 9, 'Mengubah status komunikasi', 'App\\Models\\StatusKomunikasi', 5, '{"status":"Dihubungi"}', '2026-06-08 14:44:30', '2026-06-08 14:44:30');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (84, 9, 'Menghapus status komunikasi', 'App\\Models\\StatusKomunikasi', 5, NULL, '2026-06-08 14:44:36', '2026-06-08 14:44:36');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (85, NULL, 'Mencatat laporan closing', 'App\\Models\\LaporanClosing', 6, '{"calon_jemaah_id":"5"}', '2026-06-08 14:45:48', '2026-06-08 14:45:48');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (86, NULL, 'Memperbarui laporan closing', 'App\\Models\\LaporanClosing', 1, NULL, '2026-06-08 14:47:52', '2026-06-08 14:47:52');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (87, NULL, 'Menghapus laporan closing', 'App\\Models\\LaporanClosing', 1, NULL, '2026-06-08 14:47:57', '2026-06-08 14:47:57');
INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES (88, 9, 'Memperbarui jadwal follow up', 'App\\Models\\JadwalFollowUp', 5, '{"status":"Pending"}', '2026-06-08 15:03:39', '2026-06-08 15:03:39');

-- Table: personal_access_tokens
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` INT AUTO_INCREMENT NOT NULL,
  `tokenable_type` VARCHAR(255) NOT NULL,
  `tokenable_id` INT NOT NULL,
  `name` TEXT NOT NULL,
  `token` VARCHAR(255) NOT NULL,
  `abilities` TEXT,
  `last_used_at` DATETIME,
  `expires_at` DATETIME,
  `created_at` DATETIME,
  `updated_at` DATETIME,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table: personal_access_tokens
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (2, 'App\\Models\\User', 1, 'api-token', '25039d4f953e210bf04ae3f5bf9ffc921a28ad6308e5056265b90336c442b650', '["*"]', '2026-05-11 18:58:44', NULL, '2026-05-11 18:58:43', '2026-05-11 18:58:44');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (3, 'App\\Models\\User', 1, 'api-token', '5a0301361080d702d18c677f4715aa3ede2b43078b48a22e98e3a16d99c0f397', '["*"]', '2026-05-11 19:05:37', NULL, '2026-05-11 19:04:06', '2026-05-11 19:05:37');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (4, 'App\\Models\\User', 1, 'api-token', '7165bb6700cff59cef24d2f5ea2c77e27ad6755c98eb05bdfb5298d86972466b', '["*"]', '2026-05-11 19:17:12', NULL, '2026-05-11 19:16:57', '2026-05-11 19:17:12');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (5, 'App\\Models\\User', 1, 'api-token', 'b7542fc64a524af131799e8c22176c45210280b93aea32bdc3982b1a49b02bd2', '["*"]', '2026-05-11 19:21:08', NULL, '2026-05-11 19:18:14', '2026-05-11 19:21:08');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (6, 'App\\Models\\User', 1, 'api-token', 'c83bb4fe08310c0458ff370ecfdc034e9ce78e821248910cd012e8ea6998a401', '["*"]', '2026-05-11 19:21:53', NULL, '2026-05-11 19:21:52', '2026-05-11 19:21:53');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (7, 'App\\Models\\User', 1, 'api-token', '92edd615a171d9322a39bf35db4d10d95160ea61e3097c717a5d5af43072cb6e', '["*"]', '2026-05-11 19:22:01', NULL, '2026-05-11 19:21:58', '2026-05-11 19:22:01');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (8, 'App\\Models\\User', 1, 'api-token', '0eaa784cfe2bb40e4757368f0e7df41720ed6bba1065da23579bd2bbcfe0c06e', '["*"]', '2026-05-11 19:22:26', NULL, '2026-05-11 19:22:23', '2026-05-11 19:22:26');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (9, 'App\\Models\\User', 1, 'api-token', '1fbf1b79cd47cd50232054fced4693ccd26dd2148e21a3d6288b8250ae9a7d97', '["*"]', '2026-05-11 19:25:50', NULL, '2026-05-11 19:24:12', '2026-05-11 19:25:50');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (10, 'App\\Models\\User', 1, 'api-token', 'dd832d8743cbe4c4ddbba42f34257c0072c0ea7c5274df69f4b20f0a94aa50dd', '["*"]', '2026-05-11 19:26:32', NULL, '2026-05-11 19:26:32', '2026-05-11 19:26:32');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (11, 'App\\Models\\User', 1, 'api-token', 'd0db01ad1b3b2267eb1923fadcd8b8989903776c5d947ab5bc7d72a919c3e072', '["*"]', '2026-05-11 19:26:40', NULL, '2026-05-11 19:26:37', '2026-05-11 19:26:40');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (12, 'App\\Models\\User', 1, 'api-token', '7144c96841ce1dd7e36187650e9d48f17ed2a0d3880b3cb186b52c4f1f5d0110', '["*"]', '2026-05-11 19:27:20', NULL, '2026-05-11 19:27:19', '2026-05-11 19:27:20');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (13, 'App\\Models\\User', 1, 'api-token', '522e2ecc2f0980840441932b1fdfbe41524d93c040c4e7a7686ceaa680a0f96f', '["*"]', '2026-05-11 19:28:02', NULL, '2026-05-11 19:27:25', '2026-05-11 19:28:02');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (14, 'App\\Models\\User', 1, 'api-token', '185c7950c1c2212ef73c2a0df5232148f3988d10eca8840cd3f0122dd9233a9b', '["*"]', '2026-05-11 19:29:46', NULL, '2026-05-11 19:29:43', '2026-05-11 19:29:46');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (15, 'App\\Models\\User', 1, 'api-token', '0b113b6c720e0f7bfd43f99535954fae88bf6aa08633c0f21b87536b6b875863', '["*"]', '2026-05-11 19:32:46', NULL, '2026-05-11 19:31:52', '2026-05-11 19:32:46');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (16, 'App\\Models\\User', 1, 'api-token', '3f954670d359cfa16fc9469a143ac11a4cef91458bba82215bca263fdcdec9bf', '["*"]', '2026-05-11 19:34:13', NULL, '2026-05-11 19:33:58', '2026-05-11 19:34:13');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (17, 'App\\Models\\User', 1, 'api-token', '260e98f9f1b0b5183159a299802ca81bf715ea811bf14dd9832080983a9626bb', '["*"]', '2026-05-11 19:36:22', NULL, '2026-05-11 19:35:23', '2026-05-11 19:36:22');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (18, 'App\\Models\\User', 1, 'api-token', '208209fcdd79d1c765f71c4f120c20959a8ee080eb848f4c293098a20be401bd', '["*"]', '2026-05-11 19:37:24', NULL, '2026-05-11 19:37:07', '2026-05-11 19:37:24');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (19, 'App\\Models\\User', 1, 'api-token', '532459a1c76ea937683cb4d089646fa24b67d7bbd908954ac36ce4b0d0faf5d6', '["*"]', '2026-05-11 19:44:36', NULL, '2026-05-11 19:44:36', '2026-05-11 19:44:36');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (20, 'App\\Models\\User', 1, 'api-token', 'd8eb864da0f8f90fe037be16510987461aa6d89e21993beabe660709279d7822', '["*"]', '2026-05-11 19:45:21', NULL, '2026-05-11 19:45:20', '2026-05-11 19:45:21');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (21, 'App\\Models\\User', 1, 'api-token', 'b821a6eae2cc8ac9f2c77faf780c93f2bbede9ae91b821e7cab6bd6415e3732e', '["*"]', '2026-05-11 19:45:51', NULL, '2026-05-11 19:45:50', '2026-05-11 19:45:51');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (22, 'App\\Models\\User', 1, 'api-token', '288bf37ad68a3f8a970627892f144ab21628684d7b665e9bf9076680a117cd3f', '["*"]', '2026-05-11 19:51:03', NULL, '2026-05-11 19:51:03', '2026-05-11 19:51:03');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (23, 'App\\Models\\User', 1, 'api-token', 'b7a16bd4e3332e77b70111da5b13f98e5c1fa2b01a8e1ce3ccfa2edd3dd480bb', '["*"]', '2026-05-11 19:53:39', NULL, '2026-05-11 19:52:41', '2026-05-11 19:53:39');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (24, 'App\\Models\\User', 1, 'api-token', '54477b4bb9279a422ba3fae6b1dcba5ba45ad500954acd7d42fe9866f5d8341c', '["*"]', '2026-05-11 19:54:46', NULL, '2026-05-11 19:54:31', '2026-05-11 19:54:46');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (25, 'App\\Models\\User', 1, 'api-token', 'a164370881af09539c7ea5aeeb1640030f64721176cacb06999d60f6b2819c1a', '["*"]', '2026-05-11 19:56:07', NULL, '2026-05-11 19:55:42', '2026-05-11 19:56:07');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (26, 'App\\Models\\User', 1, 'api-token', '3c061194b11a677a5c210edca43ca7efa188331df8fc701186fcc27a54cd3516', '["*"]', '2026-05-11 19:57:20', NULL, '2026-05-11 19:56:42', '2026-05-11 19:57:20');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (27, 'App\\Models\\User', 1, 'api-token', 'a9b81007c5fc143cbcd171bfa15f17c5515c5aac6393f2d20a85ac4704fa2d8f', '["*"]', '2026-05-11 19:59:24', NULL, '2026-05-11 19:58:38', '2026-05-11 19:59:24');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (28, 'App\\Models\\User', 1, 'api-token', 'bb084cf6c85b5901827144dccb75a73b2f755ea0028dda6cc585ab4fb47db1c1', '["*"]', '2026-05-11 19:59:57', NULL, '2026-05-11 19:59:39', '2026-05-11 19:59:57');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (29, 'App\\Models\\User', 1, 'api-token', 'c542dcd7a0b1797256b7072b7a117e618f61622342bf1aaab43aecef77db508a', '["*"]', '2026-05-11 20:00:40', NULL, '2026-05-11 20:00:23', '2026-05-11 20:00:40');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (30, 'App\\Models\\User', 1, 'api-token', '49f8471c567ee3424776c012df35914173647616f6fb9ca4d329b7ce8cdaaab4', '["*"]', '2026-05-11 20:03:37', NULL, '2026-05-11 20:02:55', '2026-05-11 20:03:37');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (31, 'App\\Models\\User', 1, 'api-token', '81fb7537c9ac44e9548a7ae69485f4e29b0ddb76e995aa4d28c9ea3a471bce68', '["*"]', '2026-05-11 20:04:27', NULL, '2026-05-11 20:04:09', '2026-05-11 20:04:27');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (32, 'App\\Models\\User', 1, 'api-token', '0198620f4c5cc21898d43fbaf318ddcdbda7d2cbe6fa051255b0d0d3d2e5cd76', '["*"]', '2026-05-11 20:06:21', NULL, '2026-05-11 20:06:06', '2026-05-11 20:06:21');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (33, 'App\\Models\\User', 1, 'api-token', '604ea18e227318fbb1b513d29c3dcbd4b4cceedfc96da17a9a3ff9fcfaa377a0', '["*"]', '2026-05-11 20:10:07', NULL, '2026-05-11 20:10:07', '2026-05-11 20:10:07');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (34, 'App\\Models\\User', 1, 'api-token', '1d7e2a2375297b107092c0d139bd13e6d0b142b8bd0ac3c83fe4e394f7c95afe', '["*"]', '2026-05-11 20:13:37', NULL, '2026-05-11 20:12:42', '2026-05-11 20:13:37');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (35, 'App\\Models\\User', 1, 'api-token', '7e50ba03944d9c1904d113927e7fa92b487c50a63c56e167261e7501742e7363', '["*"]', '2026-05-11 20:14:39', NULL, '2026-05-11 20:14:26', '2026-05-11 20:14:39');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (36, 'App\\Models\\User', 1, 'api-token', 'a5c87161b3bb2ca632c43c53b50c8e4bfd7cd0103a633ffe7987600ca55725d8', '["*"]', '2026-05-11 20:16:02', NULL, '2026-05-11 20:15:25', '2026-05-11 20:16:02');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (37, 'App\\Models\\User', 1, 'api-token', 'eaed320062be0aede181181970aa29ed65f42be1d78d0e79f82d98a78976e9b3', '["*"]', '2026-05-11 20:16:51', NULL, '2026-05-11 20:16:37', '2026-05-11 20:16:51');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (38, 'App\\Models\\User', 1, 'api-token', '17ecd37b0f51ab668c7373513d457bb5f36bdc49d8e44c306160018b31cb97cc', '["*"]', '2026-05-11 20:22:16', NULL, '2026-05-11 20:22:03', '2026-05-11 20:22:16');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (39, 'App\\Models\\User', 1, 'api-token', '418e842672c9095b9cb5148e5dab73c87f6f907852c44bf927b1e4ad2fae0283', '["*"]', '2026-05-11 20:27:47', NULL, '2026-05-11 20:27:33', '2026-05-11 20:27:47');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (40, 'App\\Models\\User', 1, 'api-token', '35c46545fd92c1d525b631007f616a0c55bb35ad1b5928812479bce62b92e49c', '["*"]', '2026-05-12 02:16:57', NULL, '2026-05-12 02:16:55', '2026-05-12 02:16:57');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (41, 'App\\Models\\User', 1, 'api-token', '44434d7201f1de416e80c05c7f2cee459f1e79cea2df1a2c8e1942b3031c8a67', '["*"]', '2026-05-12 02:40:22', NULL, '2026-05-12 02:40:20', '2026-05-12 02:40:22');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (42, 'App\\Models\\User', 1, 'api-token', '3cac61bc93e72d9e9668c2f933beed11ff56d0d1b0378def633916652f76e667', '["*"]', '2026-05-12 02:43:53', NULL, '2026-05-12 02:43:37', '2026-05-12 02:43:53');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (43, 'App\\Models\\User', 1, 'api-token', 'c0d449a4e44a10842d228cba8806521e292f97ccbe532b25b9ca964c7641213f', '["*"]', '2026-05-12 02:49:48', NULL, '2026-05-12 02:49:32', '2026-05-12 02:49:48');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (44, 'App\\Models\\User', 1, 'api-token', '5c2da36d895b30b2f1931f0ada6fc0118ca680ef6131f5d37fc71aac2258ddca', '["*"]', '2026-05-12 02:59:56', NULL, '2026-05-12 02:59:40', '2026-05-12 02:59:56');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (45, 'App\\Models\\User', 1, 'api-token', '95a6c3cb94d0000afa94518ef57a64a3d6cdc60642aecd409d4a387d6f15394f', '["*"]', '2026-05-12 03:01:11', NULL, '2026-05-12 03:00:56', '2026-05-12 03:01:11');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (46, 'App\\Models\\User', 1, 'api-token', 'bbe22b10c44f56f2d7eebc7388cbfe7d3fd93ead8707559f4488fa3911e9aaa3', '["*"]', '2026-05-12 03:02:04', NULL, '2026-05-12 03:01:45', '2026-05-12 03:02:04');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (47, 'App\\Models\\User', 1, 'api-token', 'af7822263c16036184a32c3b14a131f5c15122c2af6551132b0ad76cc5093d08', '["*"]', '2026-05-12 03:03:17', NULL, '2026-05-12 03:02:58', '2026-05-12 03:03:17');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (48, 'App\\Models\\User', 1, 'api-token', '77ecbe5340a6bb0c0fe5295477dcda666f90b034117f5dd3645a74dcbbf31f29', '["*"]', '2026-05-12 05:25:41', NULL, '2026-05-12 05:25:24', '2026-05-12 05:25:41');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (49, 'App\\Models\\User', 1, 'api-token', 'd9dfc674caf5596a50868c315444e6dfd96017dcfbf0e1a700fff685ac39db69', '["*"]', '2026-05-12 05:30:56', NULL, '2026-05-12 05:30:38', '2026-05-12 05:30:56');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (50, 'App\\Models\\User', 1, 'api-token', '949b122d3b29baf81e879ac1e50e2215d6dffb6ea570070c5a6a4412097cb1d3', '["*"]', '2026-05-12 05:36:12', NULL, '2026-05-12 05:34:50', '2026-05-12 05:36:12');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (51, 'App\\Models\\User', 1, 'api-token', 'a391e88e88b78579136da441e04723f1da7d7f037fc426e91184eaa4b26083a8', '["*"]', '2026-05-12 05:39:22', NULL, '2026-05-12 05:39:05', '2026-05-12 05:39:22');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (52, 'App\\Models\\User', 1, 'api-token', '7887130431bab28fea59e941ee9d13694d064d9d89a374159ad9206ac3b65c19', '["*"]', '2026-05-12 05:40:07', NULL, '2026-05-12 05:39:50', '2026-05-12 05:40:07');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (53, 'App\\Models\\User', 1, 'api-token', '372bdf3641bef9fd4006f4f2301f95b0b38850e3ef19002751446acb23b3a1bd', '["*"]', '2026-05-12 05:42:36', NULL, '2026-05-12 05:42:18', '2026-05-12 05:42:36');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (54, 'App\\Models\\User', 1, 'api-token', '31a37d6c056a30c2f8628ca5e7c3c0b8c337995379f9d4bf014c500689ee91d7', '["*"]', '2026-05-12 05:43:21', NULL, '2026-05-12 05:43:03', '2026-05-12 05:43:21');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (55, 'App\\Models\\User', 1, 'api-token', '0b667a867c245dd1561f94333d2095df4e89a980dee451196de7c8b2e26f7dbf', '["*"]', '2026-05-12 05:50:01', NULL, '2026-05-12 05:45:20', '2026-05-12 05:50:01');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (56, 'App\\Models\\User', 3, 'api-token', 'aef95b5b51276baf404bb007c354105b787e5b529160da340a0254ba7c1da5a5', '["*"]', NULL, NULL, '2026-05-12 07:28:39', '2026-05-12 07:28:39');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (57, 'App\\Models\\User', 3, 'api-token', 'df257bd380ae5382486d6b3bb09783cd681e89e18798e2b174afda041ccdddb8', '["*"]', NULL, NULL, '2026-05-12 07:30:38', '2026-05-12 07:30:38');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (58, 'App\\Models\\User', 1, 'api-token', 'f2471a52739c5f1039ea8abe42028f25ba21c6fdf643c8c675149f9bf0019ed0', '["*"]', '2026-05-12 07:34:30', NULL, '2026-05-12 07:31:07', '2026-05-12 07:34:30');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (69, 'App\\Models\\User', 2, 'api-token', '68b9db1143acfc58aba2a38bfd63f594763d181bd61afb8de2fd04a3954b10bc', '["*"]', NULL, NULL, '2026-05-17 08:03:41', '2026-05-17 08:03:41');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (71, 'App\\Models\\User', 1, 'api-token', '7f4ed9d377a66d9ba4e75d929f0d25e6716092d7b78ad2162f86493e0ede337b', '["*"]', '2026-06-08 13:53:53', NULL, '2026-06-08 13:53:22', '2026-06-08 13:53:53');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (72, 'App\\Models\\User', 1, 'api-token', '9cabc9973ecbe40bc95336b13c869c258936a122c982b6e789e983cf8d9d2d41', '["*"]', NULL, NULL, '2026-06-08 13:59:23', '2026-06-08 13:59:23');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (73, 'App\\Models\\User', 2, 'api-token', '8adcb0c378aa325ad6ae2868ce6efcfa946b101dcd7bdaa59a536a709e826395', '["*"]', '2026-06-08 15:13:30', NULL, '2026-06-08 14:00:27', '2026-06-08 15:13:30');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (74, 'App\\Models\\User', 1, 'api-token', 'cf60a199b367e54dfbe53f59d46e8748b8631fb64376ecef543ed10e3ce70fd3', '["*"]', NULL, NULL, '2026-06-08 14:02:54', '2026-06-08 14:02:54');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (76, 'App\\Models\\User', 1, 'api-token', '7000a1070226229fccb8e606c05dd5094895d3cd265e01c1a59cf82b997b2ded', '["*"]', '2026-06-08 14:11:24', NULL, '2026-06-08 14:04:56', '2026-06-08 14:11:24');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (77, 'App\\Models\\User', 9, 'api-token', 'fc89fc1b3e03660482c3e1a4c481a862988fa692c82ab8b7b33c1d2c56143d3e', '["*"]', '2026-06-08 15:03:39', NULL, '2026-06-08 14:16:52', '2026-06-08 15:03:39');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (78, 'App\\Models\\User', 9, 'api-token', 'a09806ee6a9d23567b75d8d3a3ea62cc5660e37d58839a3e046b72dd183eec18', '["*"]', '2026-06-08 14:38:06', NULL, '2026-06-08 14:24:41', '2026-06-08 14:38:06');

SET FOREIGN_KEY_CHECKS = 1;
