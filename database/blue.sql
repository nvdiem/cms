-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2024 at 04:47 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blue`
--

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
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(9, '2024_02_04_150356_add_publish_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `publish` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `publish`) VALUES
(2, 'Jamarcus Weber MD', 'shackett@example.net', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'zYwCztJ3TQ', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(3, 'Ms. Margaretta Towne DVM', 'coleman.cruickshank@example.com', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'cr7rrRM4f3', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(4, 'Mr. Russel Kreiger', 'dudley36@example.org', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'XBkbhvCCRt', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(5, 'Mrs. Martine Crona II', 'brenna.jacobs@example.org', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'Kt4TWe4uSN', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(6, 'Mathilde Torphy', 'mckenzie.lane@example.net', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'ZLjp4zZ2je', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(7, 'Leora Reichel', 'antonio76@example.net', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'pX1EUvWTEo', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(8, 'Eduardo Wolf', 'efrain46@example.org', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'TgnDNpQNhN', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(9, 'Mr. Ali Osinski', 'julien.hill@example.org', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 's708yOXKrd', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(10, 'Rahsaan Hammes I', 'ykeeling@example.com', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'gUFbfpBC04', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(11, 'Stefanie Schneider', 'prussel@example.net', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'Srg3SL8sCj', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(12, 'Prof. Rebecca Gibson DVM', 'schmidt.dorris@example.com', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'PPUrMf1hW4', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(13, 'Dr. Oran Wolf DDS', 'hills.neva@example.net', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'LXBUdDKA6m', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(14, 'Larissa Moore', 'lilian21@example.net', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', '9ZoIYGXvXf', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(15, 'Jovany Hegmann Jr.', 'omer.wiegand@example.net', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'kGJvqpCsvg', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(16, 'Reta DuBuque Jr.', 'lois75@example.org', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'y5R6VSGJ86', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(17, 'Mohammad O\'Keefe', 'neil69@example.com', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'wcqiy3kAdg', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(18, 'Jay Ritchie', 'yundt.freddy@example.com', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', '4Zkzxj0B4g', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(19, 'Mrs. Mya Hermann V', 'mccullough.mervin@example.org', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'q2SqTRgzYH', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(20, 'Horace Hickle', 'zachery.lynch@example.net', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'zQh8PAB7YK', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(21, 'Albina Emmerich', 'welch.mariela@example.com', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'bULJvOdmE2', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(22, 'Prof. Karianne Hahn V', 'odietrich@example.net', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', '8w9IStEr8o', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(23, 'Dallin Nitzsche', 'kaley12@example.net', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'r5DzA7XlKi', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(24, 'Norma Heller', 'mgerhold@example.net', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'pnW8usEe5U', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(25, 'Xander Lowe', 'treutel.wade@example.org', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'abNaZXKa5q', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(26, 'Jasper Nolan', 'favian.luettgen@example.net', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'bnFDI1qJVW', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(27, 'Carey Sauer', 'renner.kara@example.net', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'erLgOr7zex', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(28, 'Aron Christiansen DDS', 'faye.altenwerth@example.com', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'E8c02c85tC', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(29, 'Corbin Volkman I', 'connie.white@example.org', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', '6Jy63l5EfZ', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(30, 'Stanford Cormier', 'funk.karianne@example.com', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', '4kgmYJ3n16', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(31, 'Pascale Hahn', 'marisol.barton@example.org', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'PjOLju8LPn', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(32, 'Fabiola Altenwerth', 'fschoen@example.net', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'AMV6E4ipiD', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(33, 'Pattie Ledner', 'valtenwerth@example.net', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'KwAHPp3mKz', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(34, 'Lewis Orn', 'alycia.gaylord@example.net', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'PysoSacKCF', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(35, 'Miss Lonie Schoen III', 'cedrick.white@example.net', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'fk0IHGmhTy', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(36, 'Candice Johns II', 'joshuah77@example.com', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'aN5qfgJfEv', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(37, 'Angela Lang PhD', 'rocky51@example.org', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'hhna8zTqfO', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(38, 'Marielle Klocko', 'tbernhard@example.org', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', '39MP0H9yIy', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(39, 'Jarret Beier', 'daniel.tod@example.net', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'lYGR4j2Gtn', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(40, 'Gia Runte', 'max73@example.net', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', '4WFK3dB3xi', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(41, 'Adaline Berge', 'hglover@example.net', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'H4ZDZqlosa', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(42, 'Shany Bayer', 'jacobs.lafayette@example.org', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'goqf4hkPaY', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(43, 'Landen Schumm', 'kkulas@example.net', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'pO5dP5psiJ', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(44, 'Candice Reilly', 'patsy61@example.com', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'W5jZFHPr4A', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(45, 'Birdie Jerde', 'orlo.ritchie@example.net', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'BFfGeByML3', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(46, 'Mr. Jadon Purdy', 'clarson@example.net', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'wKD0VbpCa4', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(47, 'Ethyl Hane', 'donnelly.milford@example.net', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'Pb2mTSfk2q', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(48, 'Dr. Alfonzo Lynch', 'nolan06@example.org', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', '9I6D7yOxjL', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(49, 'Cordell Orn DVM', 'harvey.gideon@example.org', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'sdqc5XvLi2', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(50, 'Kitty Kutch', 'clement56@example.net', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', 'cXQsVQGmNq', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(51, 'Bartholome Thompson', 'wwilliamson@example.com', '2024-01-30 07:34:34', '$2y$12$0DM2Rp/b/fX8oU/q/9J3AevG1TOtrFv5Pq5VXlCkll0mhzRJDmQci', '8vjCrYVqoa', '2024-01-30 07:34:34', '2024-01-30 07:34:34', 0),
(55, 'Nguyen Van Diem', 'vandiem.ng@samsung.com', NULL, '$2y$12$OOj/hwwRtf1PIACQxftcyujuB3KS4nu8I00Kl7yMI5LWK/Wzxg9ci', NULL, '2024-02-04 02:55:41', '2024-02-04 08:24:43', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
