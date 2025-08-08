-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 08, 2025 at 04:57 AM
-- Server version: 11.4.3-MariaDB
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `m_magang`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota_pendaftaran`
--

CREATE TABLE `anggota_pendaftaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pendaftaran_id` bigint(20) UNSIGNED NOT NULL,
  `nama_anggota` varchar(255) NOT NULL,
  `nim_anggota` varchar(255) DEFAULT NULL,
  `jurusan` varchar(255) DEFAULT NULL,
  `email_anggota` varchar(255) DEFAULT NULL,
  `no_hp_anggota` varchar(255) DEFAULT NULL,
  `urutan` int(11) DEFAULT NULL COMMENT 'Urutan anggota untuk reorderable feature',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('sistem_pendaftaran_magang_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1752045169),
('sistem_pendaftaran_magang_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1752045169;', 1752045169);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `internship_requirements`
--

CREATE TABLE `internship_requirements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `documents` varchar(255) NOT NULL,
  `deadline` date NOT NULL,
  `quota` int(11) NOT NULL,
  `period` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `additional_info` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_10_050631_create_internship_requirements_table', 1),
(5, '2025_03_11_064815_create_pendaftaran_magangs_table', 1),
(6, '2025_03_12_024230_create_anggota_pendaftaran_table', 1),
(7, '2025_03_12_041153_create_settings_table', 1),
(8, '2025_03_12_041331_add_status_pendaftaran_to_settings_table', 1),
(9, '2025_03_20_064819_update_magang_system_tables', 1),
(10, '2025_04_15_101457_create_universitas_table', 1),
(11, '2025_04_16_051351_add_is_active_to_internship_requirements', 1),
(12, '2025_05_06_115353_add_jurusan_to_anggota_pendaftaran', 2),
(13, '2025_05_07_040557_add_is_active_to_internship_requirements', 3),
(14, '2025_07_02_120000_add_urutan_to_anggota_pendaftaran', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('ahmadpribadiaditya@gmail.com', '$2y$12$laLAoGqRfnZp/qolaQ4GUOXzW4jZwAReeDjbhcWnqg9ipqzp2eB0G', '2025-07-29 20:54:44'),
('jhunkcion@gmail.com', '$2y$12$EDFzsHN9pBllwWSNiqETK.rUsh0BMzCQAATq9o6BMB1NIi1n/Glzy', '2025-08-05 21:41:23'),
('staffindoapril@gmail.com', '$2y$12$d0BzaD8USupSM/w/EzlPHuX3cj3uSDWgSWhwWA/GWe2fosf1k3122', '2025-07-29 20:55:32');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran_magangs`
--

CREATE TABLE `pendaftaran_magangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `asal_kampus` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `surat_pengantar` varchar(255) NOT NULL,
  `status` enum('pending','diterima','ditolak') NOT NULL DEFAULT 'pending',
  `alasan_penolakan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3k3iSd2WyhgEpREBRRtOzlUfDfQI5wDNO8PTwR8U', NULL, '192.168.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTmVjcWVGSzVVSUZZREcxaW8xZm5DWU9Qc2JOUWNVS0ZZQnRLN1JoNSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHA6Ly8xOTIuMTY4LjEuNDo4MDAwIjt9fQ==', 1754623096),
('78rKaTyr9zdPZv8eR0lvil4D982TxMLsiILXwzeY', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTEhscnA1Z1ZwNUl6bDdYTmJpNWJkRmppMXp6NFZ5WUFvcWpsWDdXdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1754615950),
('cARamzlxeVtOY0Npfv9mpbut72cOduCg1gEJdye0', 15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiczNsVUdrZDdzY1ZZaDltVFFMZUgzaVZIbzAxZlVpZ2ZaRm5uaVZiZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VycGVuZGFmdGFyYW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxNTt9', 1754628139),
('jrm8SWDGmIGDEZaGClVmGC3qKtRSkBTXL03GBmYA', NULL, '192.168.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMWdBV01TdzZCRng0NEp6RGVWdTY0bUNtMVRuTU1VS1hHR2JvM2NWTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xOTIuMTY4LjEuNDo4MDAwL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1754627250),
('W76r6814NZpD2g17vNaT8fuVnTnJa97ydyIC0sZm', NULL, '192.168.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQlZZcG1qTzViVXNOdTJKRVE2UmxBamtlZzZPTHdaWGFCZ3F3OUJodiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xOTIuMTY4LjEuNDo4MDAwL3JlZ2lzdGVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1754627255),
('xp0MTa211WEvufaKsOKs5OTaVG98MEdPrMjs666E', 1, '192.168.1.50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoianJEb05zZkZkMTJ2Rk56Y3AzUWo0U3FnYjMyYVFPZmxiYlVtaTlaZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xOTIuMTY4LjEuNDo4MDAwL2FkbWluL3BlbmRhZnRhcmFuLW1hZ2FuZ3MvMjgiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkU09HSnAuYzFESHcucXNlclBZdWpyLnNoc0tRQzB0VXF5WmJRZlZzOTRlSi9hQkVJZ0t5cW0iO30=', 1754616643);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_pendaftaran` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `status_pendaftaran`, `created_at`, `updated_at`) VALUES
(1, 1, '2025-04-15 23:26:49', '2025-05-10 04:14:07');

-- --------------------------------------------------------

--
-- Table structure for table `universitas`
--

CREATE TABLE `universitas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_universitas` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `universitas`
--

INSERT INTO `universitas` (`id`, `nama_universitas`, `created_at`, `updated_at`) VALUES
(1, 'Universitas Syiah Kuala, Banda Aceh\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(2, 'Universitas Malikussaleh, Lhokseumawe\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(3, 'Politeknik Negeri Lhokseumawe, Lhokseumawe\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(4, 'Politeknik Negeri Aceh, Banda Aceh\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(5, 'Universitas Samudra, Langsa\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(6, 'Universitas Teuku Umar, Meulaboh\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(7, 'Politeknik Aceh, Banda Aceh\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(8, 'UIN Ar-Raniry, Banda Aceh\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(9, 'STAIN Malikussaleh, Lhokseumawe\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(10, 'STAIN Zawiyah Cot Kala, Langsa\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(11, 'Akademi Komunitas Negeri (AKN) Aceh Barat Daya\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(12, 'STAIN Gajah Putih Takengon\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(13, 'IAIN Langsa, Langsa\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(14, 'STAIN Malikussaleh, Lhokseumawe\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(15, 'STAIN Gajah Putih Takengon, Takengon\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(16, 'STAIN Teungku Dirundeng, Melabuh\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(17, 'Politeknik Kesehatan Banda Aceh\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(18, 'Universitas Serambi Mekkah\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(19, 'Universitas Sumatera Utara, Medan\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(20, 'Universitas Negeri Medan, Medan\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(21, 'Politeknik Negeri Medan, Medan\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(22, 'Politeknik Negeri Media Kreatif, Medan\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(23, 'Institut Agama Islam Negeri Sumatera utara, Medan\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(24, 'Poltekes Depkes Medan, Medan\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(25, 'STAIN Padang Sidempuan, Padang Sidempuan\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(26, 'UIN Sumatera Utara, Medan\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(27, 'IAIN Padang Sidempuan, Tapanuli Selatan\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(28, 'Akademi Teknik Keselamatan Penerbangan (ATKP) Medan\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(29, 'Sekolah Tinggi Agama Kristen Protestan Negeri Tarutung\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(30, 'Sekolah Tinggi Penyuluhan Pertanian (STTP) Medan\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(31, 'Politeknik Negeri Medan\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(32, 'kademi Tek. Kes. Penerbangan (ATKP), Medan\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(33, 'Sekolah Tinggi Penyuluhan Pertanian Medan \\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(34, 'Universitas Andalas, Padang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(35, 'Universitas Negeri Padang, Padang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(36, 'Politeknik Negeri Padang, Padang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(37, 'Politeknik Pertanian, Payakumbuh\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(38, 'STSI (Sekolah Tinggi Seni Indonesia Padang Panjang), Padang Panjang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(39, 'IAIN Imam Bonjol, Padang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(40, 'STAIN Batusangkar\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(41, 'STAIN Bukittinggi\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(42, 'ISI Padang Panjang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(43, 'IAIN Imam Bonjol, Padang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(44, 'STAIN Sjech M. Djamil Djambek , Bukittinggi\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(45, 'Politeknik Negeri Sriwijaya\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(46, 'Universitas Riau, Pekanbaru\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(47, 'UIN Sultan Syarif Kasim (SUSKA), Pekanbaru\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(48, 'Politeknik Negeri Bengkalis\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(49, 'Universitas Maritim Raja Ali Haji\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(50, 'Politeknik Negeri Batam\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(51, 'UIN Sultan Syarif Kasim, Riau\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(52, 'STAIN Bengkalis, Riau (Riau)\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(53, 'Universitas Jambi, Jambi\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(54, 'STAIN Kerinci\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(55, 'IAIN Sultan Thaha Saifuddin\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(56, 'Politeknik Kesehatan Jambi\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(57, 'Universitas Bengkulu, Bengkulu\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(58, 'IAIN Bengkulu\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(59, 'STAIN CURUP\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(60, 'Poltekkes Kemenkes Bengkulu\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(61, 'STAIN Curup, Rejang Lebong\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(62, 'Universitas Sriwijaya, Palembang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(63, 'Politeknik Negeri Sriwijaya, Palembang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(64, 'Poltekkes depkes Palembang, Palembang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(65, 'Akademi Komunitas Negeri Prabumulih, Prabumulih\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(66, 'IAIN Raden Fatah\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(67, 'Universitas Lampung, Bandar Lampung\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(68, 'Politeknik Negeri Lampung, Bandar Lampung\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(69, 'Poltekkes Kemenkes Tanjungkarang, Bandar Lampung\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(70, 'STIM (Sekolah Tinggi Olahraga Metro), Kota Metro\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(71, 'Institut Agama Islam Negeri Raden Intan, Bandar Lampung\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(72, 'STAIN Jurai Siwo Metro\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(73, 'IAIN Raden Intan, Bandar Lampung\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(74, 'Universitas Bangka Belitung, Bangka Belitung\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(75, 'Politeknik Manufaktur, Bangka Belitung\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(76, 'Poltekkes Kemenkes Pangkal Pinang, Bangka Belitung\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(77, 'STAIN Syekh Abdurrahman Siddik, Bangka Belitung\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(78, 'Universitas Sultan Ageng Tirtayasa, Serang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(79, 'Perguruan Tinggi Buddhi, Karawaci\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(80, 'IAIN Sultan Maulana Hasanuddin\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(81, 'Universitas Pendidikan Indonesia, Kampus Daerah Serang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(82, 'Universitas Terbuka Pondok Cabe\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(83, 'Sekolah Tinggi Agama Buddha Negeri Sriwijaya Tangerang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(84, 'Akademi Meteorologi dan Geofisika (AMG) Tangerang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(85, 'Institut Agama Islam Banten (IAIB)\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(86, 'Universitas Indonesia\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(87, 'Universitas Pertahanan Indonesia (UNHAN)\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(88, 'Universitas Negeri Jakarta\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(89, 'Universitas Terbuka\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(90, 'Politeknik Negeri Jakarta\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(91, 'Politeknik Negeri Media Kreatif, Jakarta\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(92, 'UIN Syarif Hidayatullah Jakartaâ€Ž\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(93, 'Sekolah Tinggi Ilmu Pelayaran Jakarta\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(94, 'Sekolah Tinggi Manajemen Industri Indonesia\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(95, 'Akademi Pimpinan Perusahaan (APP), Jakarta\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(96, 'Institut Ilmu Pemerintahan, IIP, Jakarta\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(97, 'Sekolah Tinggi Akuntansi Negara, STAN\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(98, 'Sekolah Tinggi Hukum Militer, STHM\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(99, 'Sekolah Tinggi Ilmu Administrasi, LAN Jakarta\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(100, 'Sekolah Tinggi Ilmu Kepolisian (PTIK), Jakarta\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(101, 'Sekolah Tinggi Ilmu Pelayaran (STIP), Jakarta\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(102, 'Sekolah Tinggi Ilmu Statistik (STIS), Jakarta\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(103, 'Sekolah Tinggi Manajemen Industri(STMI), Jakarta\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(104, 'Sekolah Tinggi Penerbangan Indonesia (PI), Jakarta\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(105, 'Sekolah Tinggi Perikanan (STP), Jakarta\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(106, 'Politeknik Kesehatan Jakarta I   \\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(107, 'Politeknik Kesehatan Jakarta II\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(108, 'Politeknik Negeri Jakarta\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(109, 'Politeknik Manufaktur Negeri Bandung, Bandung\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(110, 'Universitas Pendidikan Indonesia, Bandung\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(111, 'Universitas Padjadjaran, Bandung\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(112, 'Universitas Jenderal Achmad Yani, Bandung\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(113, 'Institut Pertanian Bogor, Bogor\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(114, 'Institut Teknologi Bandung, Bandung\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(115, 'Politeknik Negeri Bandung, Bandung\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(116, 'Politeknik Indramayu, Indramayu\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(117, 'Universitas Siliwangi (UNSIL), Tasikmalaya\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(118, 'niversitas Singaperbangsa (UNSIKA), Kampus Daerah Karawang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(119, 'Universitas Swadaya Gunung Jati (Unswagati) di Kota Cirebon\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(120, 'Universitas Pendidikan Indonesia, Kampus Daerah Cibiru\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(121, 'Universitas Pendidikan Indonesia, Kampus Daerah Tasikmalaya\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(122, 'Universitas Pendidikan Indonesia, Kampus Daerah Sumedang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(123, 'Universitas Pendidikan Indonesia, Kampus Daerah Purwakarta\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(124, 'Akademi Ilmu Pemasyarakatan (AKIP), Depok\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(125, 'Akademi Imigrasi (AIM) Depok\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(126, 'Akademi Kimia Analis (AKA) Bogor\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(127, 'Sekolah Tinggi Ilmu Administrasi, Bandung\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(128, 'Sekolah Tinggi Sandi Negara (STSN), Bogor\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(129, 'Sekolah Tinggi Seni Indonesia (STSI), Bandung\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(130, 'Sekolah Tinggi Transportasi Darat (STTD), Bekasi\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(131, 'Sekolah Tinggi Kesejahteraan Sosial (STKS), Bandung\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(132, 'Sekolah Tinggi Pemerintahan Dalam Negeri (STPDN), Sumedang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(133, 'Sekolah Tinggi Penyuluhan Pertanian (STTP) Bogor\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(134, 'STAIN Cirebon\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(135, 'Politeknik Kesehatan Bandung\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(136, 'Politeknik Manufaktur Bandung\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(137, 'Politeknik Negeri Bali, Badung\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(138, 'Universitas Diponegoro, Semarang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(139, 'Universitas Negeri Semarang, Semarang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(140, 'Universitas Jenderal Soedirman, Purwokerto\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(141, 'Universitas Negeri Surakarta Sebelas Maret, Surakarta\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(142, 'Politeknik Negeri Semarang, Semarang \\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(143, 'Politeknik Maritim Negeri Indonesia, Semarang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(144, 'Institut Seni Indonesia Surakarta, Surakarta (ISI Solo, dahulu STSI)\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(145, 'Universitas Tidar Magelang, Magelang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(146, 'UIN Walisongo, Semarang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(147, 'IAIN Surakarta, Surakarta\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(148, 'STAIN Kudus, Kudus\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(149, 'STAIN Pekalongan, Pekalongan\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(150, 'IAIN Salatiga, Salatiga\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(151, 'IAIN Purwokerto, Purwokerto\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(152, 'Akademi Kepolisian (AKPOL),Semarang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(153, 'Akademi Militer (AKMIL) TNI AD, Magelang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(154, 'Akademi Minyak dan Gas Bumi (AKAMIGAS), Blora\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(155, 'Akademi Sanitasi dan Kesehatan Lingkungan (ASKK), Purwokerto\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(156, 'Sekolah Tinggi Seni Indonesia (STSI), Surakarta\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(157, 'Sekolah Tinggi Penyuluhan Pertanian (STTP) Magelang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(158, 'Politeknik Ilmu Pelayaran Semarang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(159, 'Politeknik Kesehatan Semarang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(160, 'Politeknik Kesehatan Surakarta\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(161, 'Universitas Gadjah Mada\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(162, 'Universitas Negeri Yogyakarta\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(163, 'Institut Seni Indonesia Yogyakarta\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(164, 'Universita Terbuka  UPBJJ Yogyakarta\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(165, 'Akademi Teknologi Kulit Yogyakarta (ATK)\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(166, 'Universitas Pembangunan Nasional Veteran (UPN), Yogyakarta\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(167, 'UIN Sunan Kalijaga\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(168, 'Akademi Angkatan Udara (AAU), Yogyakarta\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(169, 'Sekolah Tinggi Pertanahan Nasional (STPN), Yogyakarta\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(170, 'Sekolah Tinggi Teknologi Nuklir (STTN), Yogyakarta\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(171, 'Politeknik Kesehatan Yogyakarta\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(172, 'Universitas Airlangga, Surabaya\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(173, 'Universitas Negeri Surabaya, Surabaya\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(174, 'Universitas Brawijaya, Malang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(175, 'Universitas Negeri Malang, Malang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(176, 'Universitas Jember, Jember\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(177, 'Universitas Trunojoyo, Bangkalan\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(178, 'Politeknik Elektronika Negeri Surabaya, Surabaya\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(179, 'Politeknik Perkapalan Negeri Surabaya, Surabaya\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(180, 'Politeknik Negeri Madura, Sampang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(181, 'Politeknik Negeri Malang, Malang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(182, 'Politeknik Negeri Madiun, Madiun\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(183, 'Politeknik Negeri Jember, Jember\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(184, 'Institut Teknologi Sepuluh Nopember, Surabaya\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(185, 'Akademi Komunitas Negeri, Bojonegoro\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(186, 'Akademi Komunitas Negeri, Pacitan\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(187, 'Universitas Pembangunan Nasional Veteran (UPN), Surabaya\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(188, 'Politeknik Negeri Banyuwangi, Banyuwangi\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(189, 'Akademi Komunitas Negeri Lamongan, Lamongan\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(190, 'Akademi Komunitas Negeri Sumenep. Sumenep\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(191, 'Akademi Komunitas Negeri Bojonegoro, Bojonegoro\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(192, 'Universitas Islam Negeri Maulana Malik Ibrahim, Malang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(193, 'STAIN Kediri\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(194, 'STAIN Ponorogo\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(195, 'UIN Sunan Ampel\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(196, 'IAIN Tulungagung\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(197, 'UIN Maulana Malik Ibrahim, Malang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(198, 'STAIN Pamekasan, Pamekasan\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(199, 'Akademi Angkatan Laut (AAL), Surabaya\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(200, 'Teknik Keselamatan Penerbangan (ATKP) Surabaya\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(201, 'Sekolah Tinggi Penyuluhan Pertanian (STTP) Malang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(202, 'IAIN Jember, Jember\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(203, 'Politeknik Elektronika Negeri Surabaya\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(204, 'Politeknik Kesehatan Malang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(205, 'Politeknik Kesehatan Surabaya\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(206, 'Politeknik Pertanian Negeri Jember\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(207, 'Akademi TKP â€“ Surabaya \\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(208, 'Universitas Mataram, Mataram\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(209, 'IAIN Mataram, Lombok\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(210, 'Sekolah Tinggi Agama Hindu Negeri (STAHN) Gde Puja, Mataram\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(211, 'Universitas Nusa Cendana, Kupang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(212, 'Politeknik Negeri Kupang, Kupang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(213, 'Politeknik Pertanian Negeri Kupang, Kupang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(214, 'Universitas Udayana, Denpasar\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(215, 'Universitas Pendidikan Ganesha, Singaraja\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(216, 'Politeknik Negeri Bali, Kuta-Badung\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(217, 'Institut Seni Indonesia Denpasar, Denpasar\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(218, 'Politeknik Negeri Tanah Lot\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(219, 'Institut Hindu Dharma Negeri (IHDN) Denpasar\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(220, 'Akademi Kebidanan Pemprov Bali singaraja\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(221, 'Sekolah Tinggi Pariwisata Bali\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(222, 'Sekolah Tinggi Agama Kristen Negeri (STAKN) Denpasar\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(223, 'Politeknik Kesehatan Denpasar\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(224, 'Universitas Tanjungpura, Pontianak\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(225, 'Politeknik Negeri Pontianak, Pontianak\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(226, 'Politeknik Kesehatan Kementerian Kesehatan, Pontianak\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(227, 'Politeknik Terpikat Sambas\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(228, 'Politeknik Tonggak Equator\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(229, 'Politeknik Ketapang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(230, 'Politeknik Tunas Bangsa\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(231, 'IAIN Pontianak sebelumnya STAIN Pontianak\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(232, 'Universitas Palangka Raya, Palangka Raya\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(233, 'IAIN Palangkaraya, Palangkaraya\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(234, 'Sekolah Tinggi Agama Hindu Negeri Tampung Peyang, Palangka Raya\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(235, 'Sekolah Tinggi Agama Kristen Negeri (STAKN) Palangkaraya\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(236, 'Universitas Lambung Mangkurat, Banjarmasin\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(237, 'Politeknik Negeri Banjarmasin, Banjarmasin\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(238, 'IAIN ANTASARI, Banjarmasin\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(239, 'Poltekkes Banjarmasin\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(240, 'Ooliteknik Pertanian Negeri Samarinda\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(241, 'Universitas Mulawarman, Samarinda\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(242, 'Politeknik Negeri Samarinda, Samarinda\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(243, 'Politeknik Pertanian Negeri Samarinda, Samarinda\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(244, 'Universitas Borneo Tarakan, Tarakan\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(245, 'Politeknik Balikpapan, Balikpapan\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(246, 'IAIN Samarinda, Samarinda\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(247, 'Universitas Borneo Tarakan\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(248, 'Universitas Sam Ratulangi, Manado\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(249, 'Universitas Negeri Manado, Manado\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(250, 'Politeknik Negeri Manado, Manado\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(251, 'Politeknik Negeri Nusa Utara, Tahuna\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(252, 'IAIN Manado, Manado (Sulawesi Utara)\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(253, 'Politeknik Kesehatan Manado\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(254, 'Politeknik Negeri Manado\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(255, 'Universitas Negeri Gorontalo, Gorontalo\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(256, 'IAIN Sultan Amai, Gorontalo\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(257, 'Universitas Tadulako, Palu\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(258, 'Sekolah Tinggi Ilmu Ekonomi (YPP Mujahidin), Tolitoli\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(259, 'IAIN Dato Karamau, Palu\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(260, 'STAIN Datokarama, Palu\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(261, 'Politeknik Kesehatan Kemenkes Makassar, Makassar\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(262, 'Universitas Hasanuddin, Makassar\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(263, 'Universitas Negeri Makassar\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(264, 'Politeknik Pertanian Negeri Pangkajene Kepulauan, Pangkajene Kepulauan\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(265, 'Politeknik Negeri Ujung pandang, Makassar\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(266, 'Universitas Maiwa Enrekang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(267, 'Politeknik Negeri Media Kreatif, Makassar\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(268, 'Universitas Islam Negeri Makassar\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(269, 'UIN Alauddin, Makassar\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(270, 'STAIN Watampone, Bone\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(271, 'STAIN Parepare, Parepare\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(272, 'IAIN Palopo, Palopo\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(273, 'Akademi Teknik Keselamatan Penerbangan (ATKP) Makasar\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(274, 'Sekolah Tinggi Ilmu Adm, Ujung Pandang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(275, 'Sekolah Tinggi Seni Indonesia, Padang Panjang\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(276, 'Sekolah Tinggi Agama Kristen Negeri (STAKN) Toraja\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(277, 'Sekolah Tinggi Penyuluhan Pertanian (STTP) Gowa\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(278, 'Akademi Teknik Keselamatan Penerbangan Makasar\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(279, 'Universitas Haluoleo, Kendari\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(280, 'Sekolah Tinggi Pertanian (STIP) Muna Kampus Baru, Muna\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(281, 'STAIN Kendari\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(282, 'Universitas 19 November Kolaka\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(283, 'Universitas Muhammadiyah Kendari\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(284, 'Universitas Lakidende\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(285, 'Universitas Dayanu Iksanudin\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(286, 'Universitas Muhammadiyah Buton\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(287, 'Universitas Sulawesi Tenggara\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(288, 'IAIN Kendari, Palu\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(289, 'Universitas Negeri Sulawesi Barat\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(290, 'Universitas Pattimura, Ambon\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(291, 'Universitas Darussalam, Ambon\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(292, 'Politeknik Negeri Ambon, Ambon\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(293, 'Politeknik Perikanan Negeri Tual, Tual\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(294, 'STAKPN Ambon\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(295, 'IAIN Ambon\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(296, 'Sekolah Tinggi Agama Kristen Protestan Negeri Ambon\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(297, 'STAIN Ambon\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(298, 'Universitas Khairun, Ternate\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(299, 'IAIN Ternate, Ternate\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(300, 'Universitas Cendrawasih, Jayapura\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(301, 'Universitas Musamus Merauke, Merauke\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(302, 'STAIN Al-Fatah, Jayapura\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(303, 'Sekolah Tinggi. Agama Kristen Negeri (STAKN) Jayapura\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(304, 'Universitas Negeri Papua, Manokwari \\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(305, 'STAIN Sorong, Sorong\\r\\n', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(306, 'Sekolah Tinggi Penyuluhan Pertanian (STTP) Manokwari', '2025-04-15 22:31:35', '2025-04-15 22:31:35'),
(307, 'Unpri', '2025-08-06 21:40:39', '2025-08-06 21:40:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `otp_code` varchar(255) DEFAULT NULL,
  `otp_expires_at` timestamp NULL DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `otp_code`, `otp_expires_at`, `is_verified`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@example.com', NULL, '$2y$12$SOGJp.c1DHw.qserPYujr.shsKQC0tUqyZbQfVs94eJ/aBEIgKyqm', NULL, NULL, 1, 'admin', NULL, '2025-04-15 22:14:50', '2025-04-15 22:14:50'),
(11, 'Aditya Ahmad Pribadi', 'ahmadpribadiaditya@gmail.com', NULL, '$2y$12$pOHJLZnxnW2XONJwBThBjeSg0Z6a4T4e.TELNaZKJ1U/4SIuOuSYK', NULL, NULL, 1, 'user', NULL, '2025-07-07 19:25:13', '2025-07-07 19:25:13'),
(12, 'Indo April', 'staffindoapril@gmail.com', NULL, '$2y$12$nZdlnxtUfTEaviu1KaX3nu27TBZX0W9Y2./2IC3GKuvJE2ByNhK/e', NULL, NULL, 1, 'user', NULL, '2025-07-08 00:59:55', '2025-07-08 00:59:55'),
(13, 'jroe', 'jhunkcion@gmail.com', NULL, '$2y$12$s1Bm8TfK.459Ps9UjE7.6ejhwnucuMQOouHab/KuY3W0jQsqGly8.', NULL, NULL, 1, 'user', NULL, '2025-08-04 20:13:47', '2025-08-04 20:13:47'),
(14, 'mmi`', 'adipribadijunior@gmail.com', NULL, '$2y$12$wMRT7y86nE1kjy8DaAJ.meeWNWk8p/U8SiOtCUstP8nqx79M82JE6', NULL, NULL, 1, 'user', NULL, '2025-08-06 21:38:51', '2025-08-06 21:38:51'),
(15, 'hhaq', 'yaruuyama@gmail.com', NULL, '$2y$12$DPx9Fl2t2Y29AKoIwDw1iOD/co7aKbpGpO0bCMSsjksq90OCKtS4.', NULL, NULL, 1, 'user', NULL, '2025-08-07 21:32:10', '2025-08-07 21:32:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota_pendaftaran`
--
ALTER TABLE `anggota_pendaftaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anggota_pendaftaran_pendaftaran_id_foreign` (`pendaftaran_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `internship_requirements`
--
ALTER TABLE `internship_requirements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pendaftaran_magangs`
--
ALTER TABLE `pendaftaran_magangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pendaftaran_magangs_user_id_foreign` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `universitas`
--
ALTER TABLE `universitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota_pendaftaran`
--
ALTER TABLE `anggota_pendaftaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `internship_requirements`
--
ALTER TABLE `internship_requirements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pendaftaran_magangs`
--
ALTER TABLE `pendaftaran_magangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `universitas`
--
ALTER TABLE `universitas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=308;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anggota_pendaftaran`
--
ALTER TABLE `anggota_pendaftaran`
  ADD CONSTRAINT `anggota_pendaftaran_pendaftaran_id_foreign` FOREIGN KEY (`pendaftaran_id`) REFERENCES `pendaftaran_magangs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pendaftaran_magangs`
--
ALTER TABLE `pendaftaran_magangs`
  ADD CONSTRAINT `pendaftaran_magangs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
