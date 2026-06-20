-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jun 2026 pada 17.42
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.5.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pbok`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `aktivitas` varchar(255) NOT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  `subject_id` bigint(20) DEFAULT NULL,
  `metadata` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `aktivitas`, `subject_type`, `subject_id`, `metadata`, `created_at`, `updated_at`) VALUES
(2, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 8, '{\"nama\":\"Muhammad Gilang Zamzami\"}', '2026-05-11 19:05:36', '2026-05-11 19:05:36'),
(3, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 9, '{\"nama\":\"Muhammad Farezy\"}', '2026-05-11 19:21:07', '2026-05-11 19:21:07'),
(4, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 10, '{\"nama\":\"Ahmad\"}', '2026-05-11 19:25:49', '2026-05-11 19:25:49'),
(5, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 11, '{\"nama\":\"Ahmad\"}', '2026-05-11 19:28:00', '2026-05-11 19:28:00'),
(6, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 12, '{\"nama\":\"Rizal\"}', '2026-05-11 19:32:44', '2026-05-11 19:32:44'),
(7, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 13, '{\"nama\":\"Rizal\"}', '2026-05-11 19:34:11', '2026-05-11 19:34:11'),
(8, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 14, '{\"nama\":\"Rizal\"}', '2026-05-11 19:35:36', '2026-05-11 19:35:36'),
(9, NULL, 'Membuat jadwal follow up', 'App\\Models\\JadwalFollowUp', 3, '{\"calon_jemaah_id\":14}', '2026-05-11 19:36:20', '2026-05-11 19:36:20'),
(10, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 15, '{\"nama\":\"Rizal\"}', '2026-05-11 19:37:20', '2026-05-11 19:37:20'),
(11, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 16, '{\"nama\":\"Abdul\"}', '2026-05-11 19:53:37', '2026-05-11 19:53:37'),
(12, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 17, '{\"nama\":\"Abdul\"}', '2026-05-11 19:54:44', '2026-05-11 19:54:44'),
(13, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 18, '{\"nama\":\"Abdul\"}', '2026-05-11 19:55:55', '2026-05-11 19:55:55'),
(14, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 19, '{\"nama\":\"Abdul\"}', '2026-05-11 19:56:55', '2026-05-11 19:56:55'),
(15, NULL, 'Membuat jadwal follow up', 'App\\Models\\JadwalFollowUp', 4, '{\"calon_jemaah_id\":19}', '2026-05-11 19:57:18', '2026-05-11 19:57:18'),
(16, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 20, '{\"nama\":\"Abdul\"}', '2026-05-11 19:58:51', '2026-05-11 19:58:51'),
(17, NULL, 'Membuat jadwal follow up', 'App\\Models\\JadwalFollowUp', 5, '{\"calon_jemaah_id\":20}', '2026-05-11 19:59:23', '2026-05-11 19:59:23'),
(18, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 21, '{\"nama\":\"Abdul\"}', '2026-05-11 19:59:52', '2026-05-11 19:59:52'),
(19, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 22, '{\"nama\":\"Abdul\"}', '2026-05-11 20:00:36', '2026-05-11 20:00:36'),
(20, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 23, '{\"nama\":\"Abdul\"}', '2026-05-11 20:03:08', '2026-05-11 20:03:08'),
(21, NULL, 'Membuat jadwal follow up', 'App\\Models\\JadwalFollowUp', 6, '{\"calon_jemaah_id\":23}', '2026-05-11 20:03:35', '2026-05-11 20:03:35'),
(22, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 24, '{\"nama\":\"Abdul\"}', '2026-05-11 20:04:23', '2026-05-11 20:04:23'),
(23, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 25, '{\"nama\":\"Abdul\"}', '2026-05-11 20:06:19', '2026-05-11 20:06:19'),
(24, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 26, '{\"nama\":\"Mahmud\"}', '2026-05-11 20:13:35', '2026-05-11 20:13:35'),
(25, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 27, '{\"nama\":\"Mahmud\"}', '2026-05-11 20:14:37', '2026-05-11 20:14:37'),
(26, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 28, '{\"nama\":\"Mahmud\"}', '2026-05-11 20:15:36', '2026-05-11 20:15:36'),
(27, NULL, 'Membuat jadwal follow up', 'App\\Models\\JadwalFollowUp', 7, '{\"calon_jemaah_id\":28}', '2026-05-11 20:16:00', '2026-05-11 20:16:00'),
(28, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 29, '{\"nama\":\"Mahmud\"}', '2026-05-11 20:16:49', '2026-05-11 20:16:49'),
(29, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 30, '{\"nama\":\"Mahmud\"}', '2026-05-11 20:20:09', '2026-05-11 20:20:09'),
(30, NULL, 'Membuat jadwal follow up', 'App\\Models\\JadwalFollowUp', 8, '{\"calon_jemaah_id\":30}', '2026-05-11 20:20:37', '2026-05-11 20:20:37'),
(31, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 31, '{\"nama\":\"Mahmud\"}', '2026-05-11 20:22:15', '2026-05-11 20:22:15'),
(32, NULL, 'Membuat jadwal follow up', 'App\\Models\\JadwalFollowUp', 9, '{\"calon_jemaah_id\":27}', '2026-05-11 20:24:45', '2026-05-11 20:24:45'),
(33, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 32, '{\"nama\":\"Mahmud\"}', '2026-05-11 20:27:46', '2026-05-11 20:27:46'),
(34, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 33, '{\"nama\":\"Mahmud\"}', '2026-05-12 02:43:51', '2026-05-12 02:43:51'),
(35, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 34, '{\"nama\":\"Mahmud\"}', '2026-05-12 02:49:46', '2026-05-12 02:49:46'),
(36, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 35, '{\"nama\":\"Mahmud\"}', '2026-05-12 02:59:54', '2026-05-12 02:59:54'),
(37, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 36, '{\"nama\":\"Mahmud\"}', '2026-05-12 03:01:09', '2026-05-12 03:01:09'),
(38, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 37, '{\"nama\":\"Mahmud\"}', '2026-05-12 03:01:59', '2026-05-12 03:01:59'),
(39, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 38, '{\"nama\":\"Mahmud\"}', '2026-05-12 03:03:11', '2026-05-12 03:03:11'),
(40, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 39, '{\"nama\":\"Mahmud\"}', '2026-05-12 05:25:36', '2026-05-12 05:25:36'),
(41, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 40, '{\"nama\":\"Mahmud\"}', '2026-05-12 05:30:51', '2026-05-12 05:30:51'),
(42, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 41, '{\"nama\":\"Mahmud\"}', '2026-05-12 05:35:02', '2026-05-12 05:35:02'),
(43, NULL, 'Membuat jadwal follow up', 'App\\Models\\JadwalFollowUp', 10, '{\"calon_jemaah_id\":41}', '2026-05-12 05:36:10', '2026-05-12 05:36:10'),
(44, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 42, '{\"nama\":\"Mahmud\"}', '2026-05-12 05:39:17', '2026-05-12 05:39:17'),
(45, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 43, '{\"nama\":\"Mahmud\"}', '2026-05-12 05:40:02', '2026-05-12 05:40:02'),
(46, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 44, '{\"nama\":\"Mahmud\"}', '2026-05-12 05:42:31', '2026-05-12 05:42:31'),
(47, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 45, '{\"nama\":\"Mahmud\"}', '2026-05-12 05:43:15', '2026-05-12 05:43:15'),
(48, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 46, '{\"nama\":\"Mahmud\"}', '2026-05-12 05:45:32', '2026-05-12 05:45:32'),
(49, NULL, 'Membuat jadwal follow up', 'App\\Models\\JadwalFollowUp', 11, '{\"calon_jemaah_id\":46}', '2026-05-12 05:46:38', '2026-05-12 05:46:38'),
(50, NULL, 'Mengubah status komunikasi', 'App\\Models\\StatusKomunikasi', 1, '{\"status\":\"Tertarik\"}', '2026-05-12 07:33:47', '2026-05-12 07:33:47'),
(51, NULL, 'Menambahkan user baru', 'App\\Models\\User', 6, '{\"role\":\"staff\"}', '2026-05-12 07:47:20', '2026-05-12 07:47:20'),
(52, NULL, 'Memperbarui user', 'App\\Models\\User', 4, '{\"role\":\"staff\"}', '2026-05-12 07:47:53', '2026-05-12 07:47:53'),
(53, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 47, '{\"nama\":\"RIZAL\"}', '2026-05-12 08:08:03', '2026-05-12 08:08:03'),
(54, NULL, 'Membuat jadwal follow up', 'App\\Models\\JadwalFollowUp', 12, '{\"calon_jemaah_id\":47}', '2026-05-12 08:10:16', '2026-05-12 08:10:16'),
(55, 2, 'Memperbarui jadwal follow up', 'App\\Models\\JadwalFollowUp', 12, '{\"status\":\"In Progress\"}', '2026-05-12 08:16:28', '2026-05-12 08:16:28'),
(56, 2, 'Memperbarui status komunikasi', 'App\\Models\\StatusKomunikasi', 3, '{\"status\":\"Dihubungi\"}', '2026-05-12 08:16:28', '2026-05-12 08:16:28'),
(57, 2, 'Memperbarui jadwal follow up', 'App\\Models\\JadwalFollowUp', 12, '{\"status\":\"Done\"}', '2026-05-12 08:17:23', '2026-05-12 08:17:23'),
(58, 2, 'Memperbarui status komunikasi', 'App\\Models\\StatusKomunikasi', 4, '{\"status\":\"Closing\"}', '2026-05-12 08:17:23', '2026-05-12 08:17:23'),
(59, 2, 'Memperbarui jadwal follow up', 'App\\Models\\JadwalFollowUp', 7, '{\"status\":\"In Progress\"}', '2026-05-12 08:19:37', '2026-05-12 08:19:37'),
(60, 2, 'Memperbarui status komunikasi', 'App\\Models\\StatusKomunikasi', 5, '{\"status\":\"Dihubungi\"}', '2026-05-12 08:19:37', '2026-05-12 08:19:37'),
(61, 2, 'Memperbarui jadwal follow up', 'App\\Models\\JadwalFollowUp', 7, '{\"status\":\"In Progress\"}', '2026-05-12 08:21:14', '2026-05-12 08:21:14'),
(62, 2, 'Memperbarui status komunikasi', 'App\\Models\\StatusKomunikasi', 6, '{\"status\":\"Tertarik\"}', '2026-05-12 08:21:14', '2026-05-12 08:21:14'),
(63, 2, 'Memperbarui jadwal follow up', 'App\\Models\\JadwalFollowUp', 7, '{\"status\":\"Done\"}', '2026-05-12 08:23:02', '2026-05-12 08:23:02'),
(64, 2, 'Memperbarui status komunikasi', 'App\\Models\\StatusKomunikasi', 7, '{\"status\":\"Closing\"}', '2026-05-12 08:23:03', '2026-05-12 08:23:03'),
(65, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 48, '{\"nama\":\"Kak novia\"}', '2026-05-17 07:48:15', '2026-05-17 07:48:15'),
(66, NULL, 'Membuat jadwal follow up', 'App\\Models\\JadwalFollowUp', 13, '{\"calon_jemaah_id\":48}', '2026-05-17 07:48:49', '2026-05-17 07:48:49'),
(67, NULL, 'Menambahkan user baru', 'App\\Models\\User', 7, '{\"role\":\"staff\"}', '2026-05-17 07:50:05', '2026-05-17 07:50:05'),
(68, 2, 'Memperbarui jadwal follow up', 'App\\Models\\JadwalFollowUp', 8, '{\"status\":\"In Progress\"}', '2026-05-17 07:51:48', '2026-05-17 07:51:48'),
(69, 2, 'Memperbarui status komunikasi', 'App\\Models\\StatusKomunikasi', 8, '{\"status\":\"Dihubungi\"}', '2026-05-17 07:51:49', '2026-05-17 07:51:49'),
(70, 2, 'Memperbarui jadwal follow up', 'App\\Models\\JadwalFollowUp', 8, '{\"status\":\"Done\"}', '2026-05-17 07:52:59', '2026-05-17 07:52:59'),
(71, 2, 'Memperbarui status komunikasi', 'App\\Models\\StatusKomunikasi', 9, '{\"status\":\"Closing\"}', '2026-05-17 07:52:59', '2026-05-17 07:52:59'),
(72, 2, 'Memperbarui jadwal follow up', 'App\\Models\\JadwalFollowUp', 13, '{\"status\":\"Done\"}', '2026-05-17 08:04:17', '2026-05-17 08:04:17'),
(73, 2, 'Memperbarui status komunikasi', 'App\\Models\\StatusKomunikasi', 10, '{\"status\":\"Closing\"}', '2026-05-17 08:04:17', '2026-05-17 08:04:17'),
(74, NULL, 'Menambahkan user baru', 'App\\Models\\User', 8, '{\"role\":\"staff\"}', '2026-06-08 14:10:32', '2026-06-08 14:10:32'),
(75, NULL, 'Memperbarui user', 'App\\Models\\User', 1, '{\"role\":\"admin\"}', '2026-06-08 14:11:07', '2026-06-08 14:11:07'),
(76, NULL, 'Menambahkan calon jemaah baru', 'App\\Models\\CalonJemaah', 49, '{\"nama\":\"Budi Santoso\"}', '2026-06-08 14:19:41', '2026-06-08 14:19:41'),
(77, NULL, 'Memperbarui data calon jemaah', 'App\\Models\\CalonJemaah', 1, '{\"nama\":\"Ibu Siti Aminah\"}', '2026-06-08 14:20:30', '2026-06-08 14:20:30'),
(78, NULL, 'Menghapus calon jemaah', 'App\\Models\\CalonJemaah', 1, '{\"nama\":\"Ibu Siti Aminah\"}', '2026-06-08 14:20:43', '2026-06-08 14:20:43'),
(79, 9, 'Membuat jadwal follow up', 'App\\Models\\JadwalFollowUp', 14, '{\"calon_jemaah_id\":4}', '2026-06-08 14:30:36', '2026-06-08 14:30:36'),
(80, 9, 'Memperbarui jadwal follow up', 'App\\Models\\JadwalFollowUp', 3, '{\"status\":\"Done\"}', '2026-06-08 14:38:11', '2026-06-08 14:38:11'),
(81, 9, 'Memperbarui jadwal follow up', 'App\\Models\\JadwalFollowUp', 5, '{\"status\":\"Pending\"}', '2026-06-08 14:43:08', '2026-06-08 14:43:08'),
(82, 9, 'Memperbarui status komunikasi', 'App\\Models\\StatusKomunikasi', 11, '{\"status\":\"Tertarik\"}', '2026-06-08 14:44:01', '2026-06-08 14:44:01'),
(83, 9, 'Mengubah status komunikasi', 'App\\Models\\StatusKomunikasi', 5, '{\"status\":\"Dihubungi\"}', '2026-06-08 14:44:30', '2026-06-08 14:44:30'),
(84, 9, 'Menghapus status komunikasi', 'App\\Models\\StatusKomunikasi', 5, NULL, '2026-06-08 14:44:36', '2026-06-08 14:44:36'),
(85, NULL, 'Mencatat laporan closing', 'App\\Models\\LaporanClosing', 6, '{\"calon_jemaah_id\":\"5\"}', '2026-06-08 14:45:48', '2026-06-08 14:45:48'),
(86, NULL, 'Memperbarui laporan closing', 'App\\Models\\LaporanClosing', 1, NULL, '2026-06-08 14:47:52', '2026-06-08 14:47:52'),
(87, NULL, 'Menghapus laporan closing', 'App\\Models\\LaporanClosing', 1, NULL, '2026-06-08 14:47:57', '2026-06-08 14:47:57'),
(88, 9, 'Memperbarui jadwal follow up', 'App\\Models\\JadwalFollowUp', 5, '{\"status\":\"Pending\"}', '2026-06-08 15:03:39', '2026-06-08 15:03:39'),
(89, 2, 'Mengupdate status jemaah Mahmud menjadi Tertarik', NULL, NULL, NULL, '2026-06-18 16:07:57', '2026-06-18 16:07:57'),
(90, 2, 'Mengupdate status jemaah Rizal menjadi Tertarik', NULL, NULL, NULL, '2026-06-18 16:19:44', '2026-06-18 16:19:44'),
(91, 2, 'Mengupdate status jemaah Rizal menjadi Closing', NULL, NULL, NULL, '2026-06-18 16:24:43', '2026-06-18 16:24:43'),
(92, 2, 'Mengupdate status jemaah Abdul menjadi Dihubungi', NULL, NULL, NULL, '2026-06-18 16:33:22', '2026-06-18 16:33:22'),
(93, 2, 'Mengupdate status jemaah Mahmud menjadi Closing', NULL, NULL, NULL, '2026-06-18 16:55:21', '2026-06-18 16:55:21'),
(94, 2, 'Mengupdate status jemaah Mahmud menjadi Closing', NULL, NULL, NULL, '2026-06-18 16:56:38', '2026-06-18 16:56:38'),
(95, 10, 'Menambahkan calon jemaah baru: asda', NULL, NULL, NULL, '2026-06-18 18:14:14', '2026-06-18 18:14:14'),
(96, 10, 'Menambahkan calon jemaah baru: ervin medusa', NULL, NULL, NULL, '2026-06-18 18:15:56', '2026-06-18 18:15:56'),
(97, 10, 'Menambahkan calon jemaah baru: acilajg', NULL, NULL, NULL, '2026-06-18 18:27:34', '2026-06-18 18:27:34'),
(98, 10, 'Menjadwalkan follow up baru untuk null pada 2026-06-22', NULL, NULL, NULL, '2026-06-18 18:27:54', '2026-06-18 18:27:54'),
(99, 10, 'Menjadwalkan follow up baru untuk null pada 2026-06-19', NULL, NULL, NULL, '2026-06-18 18:31:36', '2026-06-18 18:31:36'),
(100, 12, 'Mengupdate status jemaah ervin medusa menjadi Prospek Baru', NULL, NULL, NULL, '2026-06-18 18:32:28', '2026-06-18 18:32:28'),
(101, 12, 'Mengupdate status jemaah acilajg menjadi Dihubungi', NULL, NULL, NULL, '2026-06-18 18:33:31', '2026-06-18 18:33:31'),
(102, 12, 'Mengupdate status jemaah Nur Aisyah Putri menjadi Tertarik', NULL, NULL, NULL, '2026-06-18 18:35:56', '2026-06-18 18:35:56'),
(103, 12, 'Mengupdate status jemaah Mahmud menjadi Dihubungi', NULL, NULL, NULL, '2026-06-18 18:47:29', '2026-06-18 18:47:29'),
(104, 12, 'Mengupdate status jemaah Abdul menjadi Closing', NULL, NULL, NULL, '2026-06-18 18:52:27', '2026-06-18 18:52:27'),
(105, 10, 'Menambahkan calon jemaah baru: staffptk', NULL, NULL, NULL, '2026-06-18 20:25:08', '2026-06-18 20:25:08'),
(106, 10, 'Menambahkan calon jemaah baru: ptkptk', NULL, NULL, NULL, '2026-06-18 20:26:14', '2026-06-18 20:26:14'),
(107, 10, 'Menjadwalkan follow up baru untuk null pada 2026-06-20', NULL, NULL, NULL, '2026-06-18 20:26:37', '2026-06-18 20:26:37'),
(108, 10, 'Menjadwalkan follow up baru untuk null pada 2026-06-22', NULL, NULL, NULL, '2026-06-18 20:26:52', '2026-06-18 20:26:52'),
(109, 14, 'Mengupdate status jemaah staffptk menjadi Dihubungi', NULL, NULL, NULL, '2026-06-18 20:41:00', '2026-06-18 20:41:00'),
(110, 14, 'Mengupdate status jemaah ptkptk menjadi Closing', NULL, NULL, NULL, '2026-06-18 20:44:50', '2026-06-18 20:44:50'),
(111, 14, 'Mengupdate status jemaah staffptk menjadi Dihubungi', NULL, NULL, NULL, '2026-06-18 21:12:28', '2026-06-18 21:12:28'),
(112, 14, 'Mengupdate status jemaah staffptk menjadi Dihubungi', NULL, NULL, NULL, '2026-06-18 21:12:43', '2026-06-18 21:12:43'),
(113, 10, 'Menambahkan calon jemaah baru: kuda', NULL, NULL, NULL, '2026-06-18 21:14:44', '2026-06-18 21:14:44'),
(114, 10, 'Menambahkan calon jemaah baru: rege', NULL, NULL, NULL, '2026-06-18 21:24:21', '2026-06-18 21:24:21'),
(115, 10, 'Menambahkan calon jemaah baru: rege', NULL, NULL, NULL, '2026-06-18 21:25:32', '2026-06-18 21:25:32'),
(116, 10, 'Menjadwalkan follow up baru untuk Mahmud pada 2026-06-26', NULL, NULL, NULL, '2026-06-18 21:35:11', '2026-06-18 21:35:11'),
(117, 10, 'Menambahkan calon jemaah baru: jawir', NULL, NULL, NULL, '2026-06-18 21:38:33', '2026-06-18 21:38:33'),
(118, 10, 'Menjadwalkan follow up baru untuk jawir pada 2026-06-20', NULL, NULL, NULL, '2026-06-18 21:38:55', '2026-06-18 21:38:55'),
(119, 17, 'Mengupdate status jemaah jawir menjadi Dihubungi', NULL, NULL, NULL, '2026-06-18 21:39:57', '2026-06-18 21:39:57'),
(120, 17, 'Mengupdate status jemaah jawir menjadi Tertarik', NULL, NULL, NULL, '2026-06-18 21:45:23', '2026-06-18 21:45:23'),
(121, 17, 'Mengupdate status jemaah jawir menjadi Closing', NULL, NULL, NULL, '2026-06-18 21:46:03', '2026-06-18 21:46:03'),
(122, 10, 'Menambahkan calon jemaah baru: abdul khadir', NULL, NULL, NULL, '2026-06-18 22:00:44', '2026-06-18 22:00:44'),
(123, 10, 'Menjadwalkan follow up baru untuk abdul khadir pada 2026-06-23', NULL, NULL, NULL, '2026-06-18 22:01:07', '2026-06-18 22:01:07'),
(124, 17, 'Mengupdate status jemaah abdul khadir menjadi Dihubungi', NULL, NULL, NULL, '2026-06-18 22:02:48', '2026-06-18 22:02:48'),
(125, 18, 'Menambahkan calon jemaah baru: kribo', NULL, NULL, NULL, '2026-06-19 16:28:13', '2026-06-19 16:28:13'),
(126, 18, 'Menjadwalkan follow up baru untuk kribo pada 2026-07-23', NULL, NULL, NULL, '2026-06-19 16:28:50', '2026-06-19 16:28:50'),
(127, 17, 'Mengupdate status jemaah kribo menjadi Tertarik', NULL, NULL, NULL, '2026-06-19 16:31:21', '2026-06-19 16:31:21'),
(128, 17, 'Mengupdate status jemaah kribo menjadi Closing', NULL, NULL, NULL, '2026-06-19 16:50:59', '2026-06-19 16:50:59'),
(129, 17, 'Mengupdate status jemaah abdul khadir menjadi Closing', NULL, NULL, NULL, '2026-06-19 16:51:23', '2026-06-19 16:51:23'),
(130, 18, 'Menjadwalkan follow up baru untuk Budi Santoso pada 2026-06-20', NULL, NULL, NULL, '2026-06-19 17:11:05', '2026-06-19 17:11:05'),
(131, 17, 'Mengupdate status jemaah Budi Santoso menjadi Dihubungi', NULL, NULL, NULL, '2026-06-19 17:12:29', '2026-06-19 17:12:29'),
(132, 18, 'Menambahkan calon jemaah baru: galek', NULL, NULL, NULL, '2026-06-20 09:28:28', '2026-06-20 09:28:28'),
(133, 18, 'Menjadwalkan follow up baru untuk galek pada 2026-06-21', NULL, NULL, NULL, '2026-06-20 09:28:47', '2026-06-20 09:28:47'),
(134, 17, 'Mengupdate status jemaah galek menjadi Tertarik', NULL, NULL, NULL, '2026-06-20 09:29:56', '2026-06-20 09:29:56'),
(135, 18, 'Menambahkan calon jemaah baru: regeee', NULL, NULL, NULL, '2026-06-20 15:30:39', '2026-06-20 15:30:39'),
(136, 18, 'Menjadwalkan follow up baru untuk regeee pada 2026-06-23', NULL, NULL, NULL, '2026-06-20 15:31:16', '2026-06-20 15:31:16'),
(137, 17, 'Mengupdate status jemaah regeee menjadi Tertarik', NULL, NULL, NULL, '2026-06-20 15:33:42', '2026-06-20 15:33:42'),
(138, 17, 'Mengupdate status jemaah regeee menjadi Closing', NULL, NULL, NULL, '2026-06-20 15:34:35', '2026-06-20 15:34:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `calon_jemaahs`
--

CREATE TABLE `calon_jemaahs` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kontak` varchar(255) NOT NULL,
  `alamat` text DEFAULT NULL,
  `sumber` varchar(255) DEFAULT NULL,
  `paket` varchar(255) DEFAULT NULL,
  `staff_id` bigint(20) DEFAULT NULL,
  `status_komunikasi` varchar(255) NOT NULL DEFAULT 'Prospek Baru',
  `last_follow_up_at` datetime DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `umur` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `calon_jemaahs`
--

INSERT INTO `calon_jemaahs` (`id`, `nama`, `kontak`, `alamat`, `sumber`, `paket`, `staff_id`, `status_komunikasi`, `last_follow_up_at`, `notes`, `created_at`, `updated_at`, `umur`, `email`) VALUES
(2, 'anjay', '081234567891', 'Bandung', 'Referral', 'Umrah Plus Turki', 5, 'Closing', '2026-05-09 18:41:06', 'Siap DP bulan ini.', '2026-05-11 18:41:06', '2026-06-18 17:38:19', NULL, NULL),
(27, 'Mahmud', '087654233412', 'Bekasi', 'other', 'vip-12', 2, 'Closing', '2026-06-18 09:56:38', 'OKE', '2026-05-11 20:14:37', '2026-06-18 16:56:38', 44, 'mahmud@gmail.com'),
(58, 'jawir', '09876781212', 'bekasi', 'instagram', 'platinum-12', 17, 'Closing', '2026-06-18 14:46:03', NULL, '2026-06-18 21:38:33', '2026-06-18 21:46:03', 30, 'jaiwr@bspk.com'),
(59, 'abdul khadir', '00892342122', 'Jawa timur', 'website', 'gold-12', 17, 'Closing', '2026-06-19 09:51:23', NULL, '2026-06-18 22:00:44', '2026-06-19 16:51:23', 31, 'abdulkhadir@gmail.com'),
(60, 'kribo', '089766534251', 'depok', 'walk-in', 'platinum-12', 17, 'Closing', '2026-06-19 09:50:59', 'ff', '2026-06-19 16:28:13', '2026-06-19 16:50:59', 77, 'kriboptk@gmail.com'),
(66, 'Budi Santoso', '081234567890', 'Jl. Sudirman No. 10, Jakarta Pusat', 'Instagram Ads', 'Umrah Reguler 9 Hari', 17, 'Dihubungi', '2026-06-19 10:12:29', 'Tertarik untuk umrah sekeluarga 4 orang, minta brosur.', '2026-06-19 23:38:47', '2026-06-19 17:12:29', 45, 'budi.santoso@gmail.com'),
(71, 'galek', '082291827712', 'bekasi', 'other', 'silver-9', 17, 'Tertarik', '2026-06-20 02:29:56', 'bb', '2026-06-20 09:28:28', '2026-06-20 09:29:56', 22, 't.gaffan04@gmail.com'),
(72, 'regeee', '0877261534421', 'Karawang', 'walk-in', 'gold-9', 17, 'Closing', '2026-06-20 08:34:35', 'adasdas', '2026-06-20 15:30:38', '2026-06-20 15:34:35', 44, 'vinliapilang@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` text NOT NULL,
  `exception` text NOT NULL,
  `failed_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_follow_ups`
--

CREATE TABLE `jadwal_follow_ups` (
  `id` bigint(20) NOT NULL,
  `calon_jemaah_id` bigint(20) NOT NULL,
  `staff_id` bigint(20) DEFAULT NULL,
  `tanggal` date NOT NULL,
  `metode` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Pending',
  `catatan` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jadwal_follow_ups`
--

INSERT INTO `jadwal_follow_ups` (`id`, `calon_jemaah_id`, `staff_id`, `tanggal`, `metode`, `status`, `catatan`, `created_at`, `updated_at`) VALUES
(2, 2, 5, '2026-06-18', 'WhatsApp', 'Done', 'closing mantap ah ah', '2026-05-11 18:41:06', '2026-06-18 15:43:06'),
(9, 27, 2, '2026-06-18', 'Call', 'Done', 'boleh', '2026-05-11 20:24:45', '2026-06-18 16:56:38'),
(29, 58, 17, '2026-06-23', 'Meeting', 'Done', 'deal', '2026-06-18 21:38:55', '2026-06-18 21:46:03'),
(30, 59, 17, '2026-06-25', 'Call', 'Done', 'udah oke', '2026-06-18 22:01:07', '2026-06-19 16:51:23'),
(31, 60, 17, '2026-07-30', 'Meeting', 'Done', 'mantap', '2026-06-19 16:28:50', '2026-06-19 16:50:59'),
(32, 66, 17, '2026-06-27', 'Call', 'In Progress', 'pp', '2026-06-19 17:11:05', '2026-06-19 17:12:29'),
(33, 71, 17, '2026-06-24', 'Call', 'In Progress', 'vv', '2026-06-20 09:28:47', '2026-06-20 09:29:56'),
(34, 72, 17, '2026-06-20', 'Call', 'Done', 'sudah lunas', '2026-06-20 15:31:16', '2026-06-20 15:34:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` text NOT NULL,
  `attempts` int(11) NOT NULL,
  `reserved_at` int(11) DEFAULT NULL,
  `available_at` int(11) NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` text NOT NULL,
  `options` text DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan_closings`
--

CREATE TABLE `laporan_closings` (
  `id` bigint(20) NOT NULL,
  `calon_jemaah_id` bigint(20) NOT NULL,
  `staff_id` bigint(20) DEFAULT NULL,
  `tanggal_closing` date NOT NULL,
  `nilai` decimal(38,2) DEFAULT NULL,
  `status_pembayaran` varchar(255) DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `laporan_closings`
--

INSERT INTO `laporan_closings` (`id`, `calon_jemaah_id`, `staff_id`, `tanggal_closing`, `nilai`, `status_pembayaran`, `catatan`, `created_at`, `updated_at`) VALUES
(7, 2, 5, '2026-06-18', 22500000.00, 'Lunas', 'closing mantap ah ah', '2026-06-18 15:43:06', '2026-06-18 15:43:06'),
(9, 27, 2, '2026-06-18', 8900000.00, 'Lunas', 'boleh', '2026-06-18 16:56:38', '2026-06-18 16:56:38'),
(11, 58, 17, '2026-06-19', 6700000.00, 'Lunas', 'deal', '2026-06-18 21:46:03', '2026-06-18 21:46:03'),
(12, 60, 17, '2026-06-19', 60000000.00, 'Lunas', 'mantap', '2026-06-19 16:50:59', '2026-06-19 16:50:59'),
(13, 59, 17, '2026-06-19', 70000000.00, 'Lunas', 'udah oke', '2026-06-19 16:51:23', '2026-06-19 16:51:23'),
(14, 72, 17, '2026-06-20', 40000000.00, 'Lunas', 'sudah lunas', '2026-06-20 15:34:35', '2026-06-20 15:34:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(12, '0001_01_01_000000_create_users_table', 1),
(13, '0001_01_01_000001_create_cache_table', 1),
(14, '0001_01_01_000002_create_jobs_table', 1),
(15, '2026_04_10_234550_create_calon_jemaahs_table', 1),
(16, '2026_04_10_234551_create_jadwal_follow_ups_table', 1),
(17, '2026_04_10_234552_create_status_komunikasis_table', 1),
(18, '2026_04_10_234553_create_laporan_closings_table', 1),
(19, '2026_04_10_234554_create_activity_logs_table', 1),
(20, '2026_04_11_000923_create_personal_access_tokens_table', 1),
(21, '2026_04_12_170000_add_missing_auth_columns_to_users_table', 1),
(22, '2026_04_13_000001_add_metode_to_status_komunikasis_table', 1),
(23, '2026_05_12_000001_add_umur_to_calon_jemaahs_table', 1),
(24, '2026_05_12_000002_add_email_to_calon_jemaahs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` int(11) NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `token` varchar(255) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` datetime DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(2, 'App\\Models\\User', 1, 'api-token', '25039d4f953e210bf04ae3f5bf9ffc921a28ad6308e5056265b90336c442b650', '[\"*\"]', '2026-05-11 18:58:44', NULL, '2026-05-11 18:58:43', '2026-05-11 18:58:44'),
(3, 'App\\Models\\User', 1, 'api-token', '5a0301361080d702d18c677f4715aa3ede2b43078b48a22e98e3a16d99c0f397', '[\"*\"]', '2026-05-11 19:05:37', NULL, '2026-05-11 19:04:06', '2026-05-11 19:05:37'),
(4, 'App\\Models\\User', 1, 'api-token', '7165bb6700cff59cef24d2f5ea2c77e27ad6755c98eb05bdfb5298d86972466b', '[\"*\"]', '2026-05-11 19:17:12', NULL, '2026-05-11 19:16:57', '2026-05-11 19:17:12'),
(5, 'App\\Models\\User', 1, 'api-token', 'b7542fc64a524af131799e8c22176c45210280b93aea32bdc3982b1a49b02bd2', '[\"*\"]', '2026-05-11 19:21:08', NULL, '2026-05-11 19:18:14', '2026-05-11 19:21:08'),
(6, 'App\\Models\\User', 1, 'api-token', 'c83bb4fe08310c0458ff370ecfdc034e9ce78e821248910cd012e8ea6998a401', '[\"*\"]', '2026-05-11 19:21:53', NULL, '2026-05-11 19:21:52', '2026-05-11 19:21:53'),
(7, 'App\\Models\\User', 1, 'api-token', '92edd615a171d9322a39bf35db4d10d95160ea61e3097c717a5d5af43072cb6e', '[\"*\"]', '2026-05-11 19:22:01', NULL, '2026-05-11 19:21:58', '2026-05-11 19:22:01'),
(8, 'App\\Models\\User', 1, 'api-token', '0eaa784cfe2bb40e4757368f0e7df41720ed6bba1065da23579bd2bbcfe0c06e', '[\"*\"]', '2026-05-11 19:22:26', NULL, '2026-05-11 19:22:23', '2026-05-11 19:22:26'),
(9, 'App\\Models\\User', 1, 'api-token', '1fbf1b79cd47cd50232054fced4693ccd26dd2148e21a3d6288b8250ae9a7d97', '[\"*\"]', '2026-05-11 19:25:50', NULL, '2026-05-11 19:24:12', '2026-05-11 19:25:50'),
(10, 'App\\Models\\User', 1, 'api-token', 'dd832d8743cbe4c4ddbba42f34257c0072c0ea7c5274df69f4b20f0a94aa50dd', '[\"*\"]', '2026-05-11 19:26:32', NULL, '2026-05-11 19:26:32', '2026-05-11 19:26:32'),
(11, 'App\\Models\\User', 1, 'api-token', 'd0db01ad1b3b2267eb1923fadcd8b8989903776c5d947ab5bc7d72a919c3e072', '[\"*\"]', '2026-05-11 19:26:40', NULL, '2026-05-11 19:26:37', '2026-05-11 19:26:40'),
(12, 'App\\Models\\User', 1, 'api-token', '7144c96841ce1dd7e36187650e9d48f17ed2a0d3880b3cb186b52c4f1f5d0110', '[\"*\"]', '2026-05-11 19:27:20', NULL, '2026-05-11 19:27:19', '2026-05-11 19:27:20'),
(13, 'App\\Models\\User', 1, 'api-token', '522e2ecc2f0980840441932b1fdfbe41524d93c040c4e7a7686ceaa680a0f96f', '[\"*\"]', '2026-05-11 19:28:02', NULL, '2026-05-11 19:27:25', '2026-05-11 19:28:02'),
(14, 'App\\Models\\User', 1, 'api-token', '185c7950c1c2212ef73c2a0df5232148f3988d10eca8840cd3f0122dd9233a9b', '[\"*\"]', '2026-05-11 19:29:46', NULL, '2026-05-11 19:29:43', '2026-05-11 19:29:46'),
(15, 'App\\Models\\User', 1, 'api-token', '0b113b6c720e0f7bfd43f99535954fae88bf6aa08633c0f21b87536b6b875863', '[\"*\"]', '2026-05-11 19:32:46', NULL, '2026-05-11 19:31:52', '2026-05-11 19:32:46'),
(16, 'App\\Models\\User', 1, 'api-token', '3f954670d359cfa16fc9469a143ac11a4cef91458bba82215bca263fdcdec9bf', '[\"*\"]', '2026-05-11 19:34:13', NULL, '2026-05-11 19:33:58', '2026-05-11 19:34:13'),
(17, 'App\\Models\\User', 1, 'api-token', '260e98f9f1b0b5183159a299802ca81bf715ea811bf14dd9832080983a9626bb', '[\"*\"]', '2026-05-11 19:36:22', NULL, '2026-05-11 19:35:23', '2026-05-11 19:36:22'),
(18, 'App\\Models\\User', 1, 'api-token', '208209fcdd79d1c765f71c4f120c20959a8ee080eb848f4c293098a20be401bd', '[\"*\"]', '2026-05-11 19:37:24', NULL, '2026-05-11 19:37:07', '2026-05-11 19:37:24'),
(19, 'App\\Models\\User', 1, 'api-token', '532459a1c76ea937683cb4d089646fa24b67d7bbd908954ac36ce4b0d0faf5d6', '[\"*\"]', '2026-05-11 19:44:36', NULL, '2026-05-11 19:44:36', '2026-05-11 19:44:36'),
(20, 'App\\Models\\User', 1, 'api-token', 'd8eb864da0f8f90fe037be16510987461aa6d89e21993beabe660709279d7822', '[\"*\"]', '2026-05-11 19:45:21', NULL, '2026-05-11 19:45:20', '2026-05-11 19:45:21'),
(21, 'App\\Models\\User', 1, 'api-token', 'b821a6eae2cc8ac9f2c77faf780c93f2bbede9ae91b821e7cab6bd6415e3732e', '[\"*\"]', '2026-05-11 19:45:51', NULL, '2026-05-11 19:45:50', '2026-05-11 19:45:51'),
(22, 'App\\Models\\User', 1, 'api-token', '288bf37ad68a3f8a970627892f144ab21628684d7b665e9bf9076680a117cd3f', '[\"*\"]', '2026-05-11 19:51:03', NULL, '2026-05-11 19:51:03', '2026-05-11 19:51:03'),
(23, 'App\\Models\\User', 1, 'api-token', 'b7a16bd4e3332e77b70111da5b13f98e5c1fa2b01a8e1ce3ccfa2edd3dd480bb', '[\"*\"]', '2026-05-11 19:53:39', NULL, '2026-05-11 19:52:41', '2026-05-11 19:53:39'),
(24, 'App\\Models\\User', 1, 'api-token', '54477b4bb9279a422ba3fae6b1dcba5ba45ad500954acd7d42fe9866f5d8341c', '[\"*\"]', '2026-05-11 19:54:46', NULL, '2026-05-11 19:54:31', '2026-05-11 19:54:46'),
(25, 'App\\Models\\User', 1, 'api-token', 'a164370881af09539c7ea5aeeb1640030f64721176cacb06999d60f6b2819c1a', '[\"*\"]', '2026-05-11 19:56:07', NULL, '2026-05-11 19:55:42', '2026-05-11 19:56:07'),
(26, 'App\\Models\\User', 1, 'api-token', '3c061194b11a677a5c210edca43ca7efa188331df8fc701186fcc27a54cd3516', '[\"*\"]', '2026-05-11 19:57:20', NULL, '2026-05-11 19:56:42', '2026-05-11 19:57:20'),
(27, 'App\\Models\\User', 1, 'api-token', 'a9b81007c5fc143cbcd171bfa15f17c5515c5aac6393f2d20a85ac4704fa2d8f', '[\"*\"]', '2026-05-11 19:59:24', NULL, '2026-05-11 19:58:38', '2026-05-11 19:59:24'),
(28, 'App\\Models\\User', 1, 'api-token', 'bb084cf6c85b5901827144dccb75a73b2f755ea0028dda6cc585ab4fb47db1c1', '[\"*\"]', '2026-05-11 19:59:57', NULL, '2026-05-11 19:59:39', '2026-05-11 19:59:57'),
(29, 'App\\Models\\User', 1, 'api-token', 'c542dcd7a0b1797256b7072b7a117e618f61622342bf1aaab43aecef77db508a', '[\"*\"]', '2026-05-11 20:00:40', NULL, '2026-05-11 20:00:23', '2026-05-11 20:00:40'),
(30, 'App\\Models\\User', 1, 'api-token', '49f8471c567ee3424776c012df35914173647616f6fb9ca4d329b7ce8cdaaab4', '[\"*\"]', '2026-05-11 20:03:37', NULL, '2026-05-11 20:02:55', '2026-05-11 20:03:37'),
(31, 'App\\Models\\User', 1, 'api-token', '81fb7537c9ac44e9548a7ae69485f4e29b0ddb76e995aa4d28c9ea3a471bce68', '[\"*\"]', '2026-05-11 20:04:27', NULL, '2026-05-11 20:04:09', '2026-05-11 20:04:27'),
(32, 'App\\Models\\User', 1, 'api-token', '0198620f4c5cc21898d43fbaf318ddcdbda7d2cbe6fa051255b0d0d3d2e5cd76', '[\"*\"]', '2026-05-11 20:06:21', NULL, '2026-05-11 20:06:06', '2026-05-11 20:06:21'),
(33, 'App\\Models\\User', 1, 'api-token', '604ea18e227318fbb1b513d29c3dcbd4b4cceedfc96da17a9a3ff9fcfaa377a0', '[\"*\"]', '2026-05-11 20:10:07', NULL, '2026-05-11 20:10:07', '2026-05-11 20:10:07'),
(34, 'App\\Models\\User', 1, 'api-token', '1d7e2a2375297b107092c0d139bd13e6d0b142b8bd0ac3c83fe4e394f7c95afe', '[\"*\"]', '2026-05-11 20:13:37', NULL, '2026-05-11 20:12:42', '2026-05-11 20:13:37'),
(35, 'App\\Models\\User', 1, 'api-token', '7e50ba03944d9c1904d113927e7fa92b487c50a63c56e167261e7501742e7363', '[\"*\"]', '2026-05-11 20:14:39', NULL, '2026-05-11 20:14:26', '2026-05-11 20:14:39'),
(36, 'App\\Models\\User', 1, 'api-token', 'a5c87161b3bb2ca632c43c53b50c8e4bfd7cd0103a633ffe7987600ca55725d8', '[\"*\"]', '2026-05-11 20:16:02', NULL, '2026-05-11 20:15:25', '2026-05-11 20:16:02'),
(37, 'App\\Models\\User', 1, 'api-token', 'eaed320062be0aede181181970aa29ed65f42be1d78d0e79f82d98a78976e9b3', '[\"*\"]', '2026-05-11 20:16:51', NULL, '2026-05-11 20:16:37', '2026-05-11 20:16:51'),
(38, 'App\\Models\\User', 1, 'api-token', '17ecd37b0f51ab668c7373513d457bb5f36bdc49d8e44c306160018b31cb97cc', '[\"*\"]', '2026-05-11 20:22:16', NULL, '2026-05-11 20:22:03', '2026-05-11 20:22:16'),
(39, 'App\\Models\\User', 1, 'api-token', '418e842672c9095b9cb5148e5dab73c87f6f907852c44bf927b1e4ad2fae0283', '[\"*\"]', '2026-05-11 20:27:47', NULL, '2026-05-11 20:27:33', '2026-05-11 20:27:47'),
(40, 'App\\Models\\User', 1, 'api-token', '35c46545fd92c1d525b631007f616a0c55bb35ad1b5928812479bce62b92e49c', '[\"*\"]', '2026-05-12 02:16:57', NULL, '2026-05-12 02:16:55', '2026-05-12 02:16:57'),
(41, 'App\\Models\\User', 1, 'api-token', '44434d7201f1de416e80c05c7f2cee459f1e79cea2df1a2c8e1942b3031c8a67', '[\"*\"]', '2026-05-12 02:40:22', NULL, '2026-05-12 02:40:20', '2026-05-12 02:40:22'),
(42, 'App\\Models\\User', 1, 'api-token', '3cac61bc93e72d9e9668c2f933beed11ff56d0d1b0378def633916652f76e667', '[\"*\"]', '2026-05-12 02:43:53', NULL, '2026-05-12 02:43:37', '2026-05-12 02:43:53'),
(43, 'App\\Models\\User', 1, 'api-token', 'c0d449a4e44a10842d228cba8806521e292f97ccbe532b25b9ca964c7641213f', '[\"*\"]', '2026-05-12 02:49:48', NULL, '2026-05-12 02:49:32', '2026-05-12 02:49:48'),
(44, 'App\\Models\\User', 1, 'api-token', '5c2da36d895b30b2f1931f0ada6fc0118ca680ef6131f5d37fc71aac2258ddca', '[\"*\"]', '2026-05-12 02:59:56', NULL, '2026-05-12 02:59:40', '2026-05-12 02:59:56'),
(45, 'App\\Models\\User', 1, 'api-token', '95a6c3cb94d0000afa94518ef57a64a3d6cdc60642aecd409d4a387d6f15394f', '[\"*\"]', '2026-05-12 03:01:11', NULL, '2026-05-12 03:00:56', '2026-05-12 03:01:11'),
(46, 'App\\Models\\User', 1, 'api-token', 'bbe22b10c44f56f2d7eebc7388cbfe7d3fd93ead8707559f4488fa3911e9aaa3', '[\"*\"]', '2026-05-12 03:02:04', NULL, '2026-05-12 03:01:45', '2026-05-12 03:02:04'),
(47, 'App\\Models\\User', 1, 'api-token', 'af7822263c16036184a32c3b14a131f5c15122c2af6551132b0ad76cc5093d08', '[\"*\"]', '2026-05-12 03:03:17', NULL, '2026-05-12 03:02:58', '2026-05-12 03:03:17'),
(48, 'App\\Models\\User', 1, 'api-token', '77ecbe5340a6bb0c0fe5295477dcda666f90b034117f5dd3645a74dcbbf31f29', '[\"*\"]', '2026-05-12 05:25:41', NULL, '2026-05-12 05:25:24', '2026-05-12 05:25:41'),
(49, 'App\\Models\\User', 1, 'api-token', 'd9dfc674caf5596a50868c315444e6dfd96017dcfbf0e1a700fff685ac39db69', '[\"*\"]', '2026-05-12 05:30:56', NULL, '2026-05-12 05:30:38', '2026-05-12 05:30:56'),
(50, 'App\\Models\\User', 1, 'api-token', '949b122d3b29baf81e879ac1e50e2215d6dffb6ea570070c5a6a4412097cb1d3', '[\"*\"]', '2026-05-12 05:36:12', NULL, '2026-05-12 05:34:50', '2026-05-12 05:36:12'),
(51, 'App\\Models\\User', 1, 'api-token', 'a391e88e88b78579136da441e04723f1da7d7f037fc426e91184eaa4b26083a8', '[\"*\"]', '2026-05-12 05:39:22', NULL, '2026-05-12 05:39:05', '2026-05-12 05:39:22'),
(52, 'App\\Models\\User', 1, 'api-token', '7887130431bab28fea59e941ee9d13694d064d9d89a374159ad9206ac3b65c19', '[\"*\"]', '2026-05-12 05:40:07', NULL, '2026-05-12 05:39:50', '2026-05-12 05:40:07'),
(53, 'App\\Models\\User', 1, 'api-token', '372bdf3641bef9fd4006f4f2301f95b0b38850e3ef19002751446acb23b3a1bd', '[\"*\"]', '2026-05-12 05:42:36', NULL, '2026-05-12 05:42:18', '2026-05-12 05:42:36'),
(54, 'App\\Models\\User', 1, 'api-token', '31a37d6c056a30c2f8628ca5e7c3c0b8c337995379f9d4bf014c500689ee91d7', '[\"*\"]', '2026-05-12 05:43:21', NULL, '2026-05-12 05:43:03', '2026-05-12 05:43:21'),
(55, 'App\\Models\\User', 1, 'api-token', '0b667a867c245dd1561f94333d2095df4e89a980dee451196de7c8b2e26f7dbf', '[\"*\"]', '2026-05-12 05:50:01', NULL, '2026-05-12 05:45:20', '2026-05-12 05:50:01'),
(56, 'App\\Models\\User', 3, 'api-token', 'aef95b5b51276baf404bb007c354105b787e5b529160da340a0254ba7c1da5a5', '[\"*\"]', NULL, NULL, '2026-05-12 07:28:39', '2026-05-12 07:28:39'),
(57, 'App\\Models\\User', 3, 'api-token', 'df257bd380ae5382486d6b3bb09783cd681e89e18798e2b174afda041ccdddb8', '[\"*\"]', NULL, NULL, '2026-05-12 07:30:38', '2026-05-12 07:30:38'),
(58, 'App\\Models\\User', 1, 'api-token', 'f2471a52739c5f1039ea8abe42028f25ba21c6fdf643c8c675149f9bf0019ed0', '[\"*\"]', '2026-05-12 07:34:30', NULL, '2026-05-12 07:31:07', '2026-05-12 07:34:30'),
(69, 'App\\Models\\User', 2, 'api-token', '68b9db1143acfc58aba2a38bfd63f594763d181bd61afb8de2fd04a3954b10bc', '[\"*\"]', NULL, NULL, '2026-05-17 08:03:41', '2026-05-17 08:03:41'),
(71, 'App\\Models\\User', 1, 'api-token', '7f4ed9d377a66d9ba4e75d929f0d25e6716092d7b78ad2162f86493e0ede337b', '[\"*\"]', '2026-06-08 13:53:53', NULL, '2026-06-08 13:53:22', '2026-06-08 13:53:53'),
(72, 'App\\Models\\User', 1, 'api-token', '9cabc9973ecbe40bc95336b13c869c258936a122c982b6e789e983cf8d9d2d41', '[\"*\"]', NULL, NULL, '2026-06-08 13:59:23', '2026-06-08 13:59:23'),
(73, 'App\\Models\\User', 2, 'api-token', '8adcb0c378aa325ad6ae2868ce6efcfa946b101dcd7bdaa59a536a709e826395', '[\"*\"]', '2026-06-08 15:13:30', NULL, '2026-06-08 14:00:27', '2026-06-08 15:13:30'),
(74, 'App\\Models\\User', 1, 'api-token', 'cf60a199b367e54dfbe53f59d46e8748b8631fb64376ecef543ed10e3ce70fd3', '[\"*\"]', NULL, NULL, '2026-06-08 14:02:54', '2026-06-08 14:02:54'),
(76, 'App\\Models\\User', 1, 'api-token', '7000a1070226229fccb8e606c05dd5094895d3cd265e01c1a59cf82b997b2ded', '[\"*\"]', '2026-06-08 14:11:24', NULL, '2026-06-08 14:04:56', '2026-06-08 14:11:24'),
(77, 'App\\Models\\User', 9, 'api-token', 'fc89fc1b3e03660482c3e1a4c481a862988fa692c82ab8b7b33c1d2c56143d3e', '[\"*\"]', '2026-06-08 15:03:39', NULL, '2026-06-08 14:16:52', '2026-06-08 15:03:39'),
(78, 'App\\Models\\User', 9, 'api-token', 'a09806ee6a9d23567b75d8d3a3ea62cc5660e37d58839a3e046b72dd183eec18', '[\"*\"]', '2026-06-08 14:38:06', NULL, '2026-06-08 14:24:41', '2026-06-08 14:38:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_komunikasis`
--

CREATE TABLE `status_komunikasis` (
  `id` bigint(20) NOT NULL,
  `jadwal_follow_up_id` bigint(20) NOT NULL,
  `status` varchar(255) NOT NULL,
  `catatan` text DEFAULT NULL,
  `follow_up_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `metode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `status_komunikasis`
--

INSERT INTO `status_komunikasis` (`id`, `jadwal_follow_up_id`, `status`, `catatan`, `follow_up_at`, `created_at`, `updated_at`, `metode`) VALUES
(2, 2, 'Closing', 'Sudah deal dan menunggu pembayaran.', '2026-05-09 18:41:06', '2026-05-11 18:41:06', '2026-05-11 18:41:06', NULL),
(12, 2, 'Dihubungi', 'test catatan', '2026-06-18 08:41:36', '2026-06-18 15:41:36', '2026-06-18 15:41:36', 'WhatsApp'),
(13, 2, 'Closing', 'closing mantap ah ah', '2026-06-18 08:43:06', '2026-06-18 15:43:06', '2026-06-18 15:43:06', 'WhatsApp'),
(15, 9, 'Tertarik', 'boleh', '2026-06-18 09:07:57', '2026-06-18 16:07:57', '2026-06-18 16:07:57', 'Meeting'),
(20, 9, 'Closing', 'boleh', '2026-06-18 09:56:38', '2026-06-18 16:56:38', '2026-06-18 16:56:38', 'Call'),
(30, 29, 'Dihubungi', 'sudah tertarik', '2026-06-18 14:39:57', '2026-06-18 21:39:57', '2026-06-18 21:39:57', 'Meeting'),
(31, 29, 'Tertarik', 'sudah tertarik', '2026-06-18 14:45:23', '2026-06-18 21:45:23', '2026-06-18 21:45:23', 'Meeting'),
(32, 29, 'Closing', 'deal', '2026-06-18 14:46:03', '2026-06-18 21:46:03', '2026-06-18 21:46:03', 'Meeting'),
(33, 30, 'Dihubungi', 'udah oke', '2026-06-18 15:02:48', '2026-06-18 22:02:48', '2026-06-18 22:02:48', 'WhatsApp'),
(34, 31, 'Tertarik', 'mantap', '2026-06-19 09:31:21', '2026-06-19 16:31:21', '2026-06-19 16:31:21', 'Call'),
(35, 31, 'Closing', 'mantap', '2026-06-19 09:50:59', '2026-06-19 16:50:59', '2026-06-19 16:50:59', 'Meeting'),
(36, 30, 'Closing', 'udah oke', '2026-06-19 09:51:23', '2026-06-19 16:51:23', '2026-06-19 16:51:23', 'Call'),
(37, 32, 'Dihubungi', 'pp', '2026-06-19 10:12:29', '2026-06-19 17:12:29', '2026-06-19 17:12:29', 'Call'),
(38, 33, 'Tertarik', 'vv', '2026-06-20 02:29:56', '2026-06-20 09:29:56', '2026-06-20 09:29:56', 'Call'),
(39, 34, 'Tertarik', 'manbtap', '2026-06-20 08:33:42', '2026-06-20 15:33:42', '2026-06-20 15:33:42', 'WhatsApp'),
(40, 34, 'Closing', 'sudah lunas', '2026-06-20 08:34:35', '2026-06-20 15:34:35', '2026-06-20 15:34:35', 'Call');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'staff',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `last_login_at` datetime DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `role`, `is_active`, `last_login_at`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Tengku Galek', 'galek@staff.com', '082213346967', 'staff', 0, NULL, NULL, '$2a$12$OwBRBb1fHQJ3EdQmIWmfReaVWQmdFUXHHNsDvibx.t8e6AetLbX8i', NULL, '2026-05-11 18:40:14', '2026-06-20 15:32:01'),
(3, 'Admin CRM', 'admin@example.com', '081200000001', 'admin', 0, '2026-06-18 14:20:46', NULL, '$2a$12$nB14Zpwnk9cQnreKhrKYhuUDRBwRvcfxVfs9jgKHz5EUmWF9XlMV6', NULL, '2026-05-11 18:41:05', '2026-06-18 22:01:32'),
(4, 'Ahmad Fauzi', 'ahmad@example.com', '081200000002', 'staff', 0, NULL, NULL, '$2a$12$b.sDvgZR/1r3GOBTEVXIZeqxj29XHM33GeCIeCs.YNTy5eo/8bZUy', NULL, '2026-05-11 18:41:06', '2026-05-12 07:47:53'),
(5, 'Fatimah Zahra', 'fatimah@example.com', '081200000003', 'staff', 0, NULL, NULL, '$2a$12$fqg/EYqv8IuHPV8GGNS8HOMMET/lKE55ulMNcpVakWPrFpcQBEApe', NULL, '2026-05-11 18:41:06', '2026-06-18 22:01:35'),
(6, 'Zamzai', 'zmzm@gmail.com', '08212362080', 'staff', 1, NULL, NULL, '$2a$12$WwhFzM8YhNoMqTCGwKn7fuM29SvVWZ7Nt/tGqEMLfPFJC6aLwW1VW', NULL, '2026-05-12 07:47:20', '2026-05-12 07:47:20'),
(7, 'acil', 'acil@staff.com', '082818211', 'staff', 0, NULL, NULL, '$2a$12$enjm5jOtL2SeV3XZCR.a1ew7GsSIOnALOr2/wBwSnTREouqmC1ddi', NULL, '2026-05-17 07:50:05', '2026-06-18 22:01:38'),
(8, 'Staff Baru', 'staff.baru@example.com', NULL, 'staff', 0, NULL, NULL, '$2a$12$2LkklWPWdQMbPyp///5W/eUHOfQIh/znYG4yjVqDfr6k5z1tawJbi', NULL, '2026-06-08 14:10:32', '2026-06-18 22:01:41'),
(9, 'Admin Updated', 'admin1@example.com', '082123620869', 'admin', 0, NULL, NULL, '$2a$12$pRfk5lfBFbmxk04aDIiEh.sq8EGl/4fNHCZl8AP0HqnJ6n8DyLIgy', NULL, '2026-06-08 14:16:31', '2026-06-18 22:01:42'),
(10, 'Satari', 'satari@admin.com', '081200000000', 'admin', 0, '2026-06-18 21:46:25', NULL, '$2a$12$nB14Zpwnk9cQnreKhrKYhuUDRBwRvcfxVfs9jgKHz5EUmWF9XlMV6', NULL, '2026-06-18 21:32:27', '2026-06-18 22:01:46'),
(11, 'test', 'test331122@test.com', NULL, 'admin', 1, NULL, NULL, '$2a$10$TG65VZRCppFFfbXRIgT3oeGuMM/EsDktng8adQ4h0PRH9zgEskdP2', NULL, '2026-06-18 15:13:31', '2026-06-18 15:13:31'),
(12, 'ervin setyanata kusuma', 'vin@staff.com', '0821313131231', 'staff', 0, '2026-06-18 21:18:43', NULL, '$2a$10$Mf4Pbx6DvOgw/nZn8/5mNe9Pqw7nBxxrwo4W3zg6FkcNVkW8nlGcm', NULL, '2026-06-18 15:15:45', '2026-06-18 21:21:03'),
(13, 'ersa', 'ersuy@staff.com', '082217382271', 'staff', 0, NULL, NULL, '$2a$10$hbhckqQmFVFMxO.siy5UxONGkcoQToSCS1DCAR88TQVb4ievxgrzq', NULL, '2026-06-18 17:43:49', '2026-06-18 17:43:59'),
(14, 'ptk', 'ptk@staff.com', '082217738821', 'staff', 1, '2026-06-18 21:20:22', NULL, '$2a$10$X2pe4c0NZqauAkp8/cWSyuJvYkc42lamRvBy5N4h8mx0oP.P6wgYS', NULL, '2026-06-18 20:24:02', '2026-06-18 21:20:22'),
(15, 'tesyt', 'tesyt@staff.com', '0097892371', 'staff', 0, NULL, NULL, '$2a$10$C2hfDIf0s8ZZw9pOPzVaBemuj7YCSXdtsXpdPvYZ9/mrrpvBfsiN6', NULL, '2026-06-18 21:18:09', '2026-06-18 21:36:07'),
(16, 'ervin', 'vintest@staff.com', '098776447687', 'staff', 0, '2026-06-18 21:35:33', NULL, '$2a$10$uJOFpfwLxcWvQvWkPymFue0c2jeXFWQTaqjfNa1ySblo7yUv5wdIC', NULL, '2026-06-18 21:21:45', '2026-06-18 21:36:03'),
(17, 'reji', 'reji@staff.com', '0989737323', 'staff', 1, '2026-06-20 15:32:55', NULL, '$2a$10$BK85AYW5HwshiKAK65MeiOVUF8s6CxBJcLVoOkR2fxrjO0HVdkEVO', NULL, '2026-06-18 21:36:44', '2026-06-20 15:32:55'),
(18, 'Satari Baru', 'satari2@admin.com', NULL, 'admin', 1, '2026-06-20 15:34:55', NULL, '$2a$12$OQC14qVUOD/umSQA2cwrYO0XOUS9wY67dnaU87A8u/tDuYVEiy17a', NULL, '2026-06-19 05:08:18', '2026-06-20 15:34:55'),
(19, 'nelson', 'nbelson@staff.com', 'satari@admin.com', 'staff', 1, NULL, NULL, '$2a$10$DcYj0Y7Zzl8TafTU9t9ZzuruRflDIlaM7aAgX0E5FUBd1.i2X3i32', NULL, '2026-06-20 15:32:34', '2026-06-20 15:32:34');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK5bm1lt4f4eevt8lv2517soakd` (`user_id`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `calon_jemaahs`
--
ALTER TABLE `calon_jemaahs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKe46tcqdm7vvhkbsa77hegvw2k` (`staff_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jadwal_follow_ups`
--
ALTER TABLE `jadwal_follow_ups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKlyx10ua19kr219p7hga5g6ql6` (`calon_jemaah_id`),
  ADD KEY `FKeqm12ssorg72d37gbp00meaje` (`staff_id`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `laporan_closings`
--
ALTER TABLE `laporan_closings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK2k8q89c4235ij4l1xnexmx9h` (`calon_jemaah_id`),
  ADD KEY `FKjhs6579qxcsgil4bk54ownykg` (`staff_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `status_komunikasis`
--
ALTER TABLE `status_komunikasis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKaxts2ciyvf2avphxebd802udw` (`jadwal_follow_up_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT untuk tabel `calon_jemaahs`
--
ALTER TABLE `calon_jemaahs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jadwal_follow_ups`
--
ALTER TABLE `jadwal_follow_ups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `laporan_closings`
--
ALTER TABLE `laporan_closings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT untuk tabel `status_komunikasis`
--
ALTER TABLE `status_komunikasis`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `FK5bm1lt4f4eevt8lv2517soakd` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `calon_jemaahs`
--
ALTER TABLE `calon_jemaahs`
  ADD CONSTRAINT `FKe46tcqdm7vvhkbsa77hegvw2k` FOREIGN KEY (`staff_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `jadwal_follow_ups`
--
ALTER TABLE `jadwal_follow_ups`
  ADD CONSTRAINT `FKeqm12ssorg72d37gbp00meaje` FOREIGN KEY (`staff_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKlyx10ua19kr219p7hga5g6ql6` FOREIGN KEY (`calon_jemaah_id`) REFERENCES `calon_jemaahs` (`id`);

--
-- Ketidakleluasaan untuk tabel `laporan_closings`
--
ALTER TABLE `laporan_closings`
  ADD CONSTRAINT `FK2k8q89c4235ij4l1xnexmx9h` FOREIGN KEY (`calon_jemaah_id`) REFERENCES `calon_jemaahs` (`id`),
  ADD CONSTRAINT `FKjhs6579qxcsgil4bk54ownykg` FOREIGN KEY (`staff_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `status_komunikasis`
--
ALTER TABLE `status_komunikasis`
  ADD CONSTRAINT `FKaxts2ciyvf2avphxebd802udw` FOREIGN KEY (`jadwal_follow_up_id`) REFERENCES `jadwal_follow_ups` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
