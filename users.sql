-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 08, 2025 at 04:17 AM
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
(14, 'mmi`', 'adipribadijunior@gmail.com', NULL, '$2y$12$wMRT7y86nE1kjy8DaAJ.meeWNWk8p/U8SiOtCUstP8nqx79M82JE6', NULL, NULL, 1, 'user', NULL, '2025-08-06 21:38:51', '2025-08-06 21:38:51');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
