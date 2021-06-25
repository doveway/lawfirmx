-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 25, 2021 at 10:47 AM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lawfirmx_clients`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `profile_picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `case_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `primary_legal_counsel_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clients_primary_legal_counsel_id_foreign` (`primary_legal_counsel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `first_name`, `last_name`, `email`, `date_of_birth`, `profile_picture`, `case_details`, `primary_legal_counsel_id`, `created_at`, `updated_at`) VALUES
(2, 'John', 'Lu', 'noemail@email.com', '2021-06-08', NULL, 'z4zhh', 3, '2021-06-23 23:00:00', NULL),
(3, 'zbzh', 'ffgf', 'daaa@a.com', '2021-06-24', NULL, 'trdrt', 3, '2021-06-23 23:00:00', NULL),
(4, 'Doveway', 'rrr', 'jamesbro@yahoo.com', '2021-06-24', NULL, 'gxgg', 1, '2021-06-23 23:00:00', NULL),
(5, 'Doveway', 'htg', 'dikcondtn66t@yahoo.com', '2021-06-25', NULL, 'ytyyt', 1, '2021-06-24 23:00:00', NULL),
(6, 'Doveway', 'htg', 'dikcondtn66rt@yahoo.com', '2021-06-25', 'backend/media/profilePic/250621_10_40_13.jpg', 'gyy', 1, '2021-06-24 23:00:00', NULL),
(7, 'Doveway', 'htg', 'dikcondtn66rtteg@yahoo.com', '2021-06-25', NULL, 'gyy', 1, '2021-06-24 23:00:00', NULL),
(8, 'Doveway', 'yarn', 'daaa@aaa.com', '2021-06-25', NULL, 'a14yy', 2, '2021-06-24 23:00:00', NULL),
(9, 'lu', 'Gin', 'gin@y.com', '2021-06-25', NULL, 'gfd', 1, '2021-06-24 23:00:00', NULL),
(10, 'yes', 'yes', 'yes@y.com', '2021-06-25', NULL, 'hhg', 1, '2021-06-24 23:00:00', NULL),
(11, 'hgg', 'fgfgf', 'dikcondtn67546rt@yahoo.com', '2021-06-25', 'backend/media/profilePic/250621_10_40_13.jpg', 'gft', 1, '2021-06-24 23:00:00', NULL),
(12, 'yes', 'frtr', 'dikcondtnfrsefw@yahoo.com', '2021-06-25', 'backend/media/profilePic/250621_10_40_13.jpg', 'yttt', 1, '2021-06-24 23:00:00', NULL),
(13, 'tg', 'gg', 'noemaigffgl@email.com', '2021-06-25', 'backend/media/profilePic/250621_08_50_20.jpg', 'fgf', 1, '2021-06-24 23:00:00', NULL),
(14, '4ss', 'gyy', 'g@t.com', '2021-06-25', NULL, 'yt', 1, '2021-06-24 23:00:00', NULL),
(15, 'hg', 'h', 'ww2m@b.com', '2021-06-25', 'backend/media/profilePic/250621_10_40_13.jpg', '4y', 2, '2021-06-24 23:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_24_025259_create_clients_table', 1),
(5, '2021_06_24_031925_create_primary_legal_counsels_table', 1),
(6, '2021_06_25_075436_create_jobs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `primary_legal_counsels`
--

DROP TABLE IF EXISTS `primary_legal_counsels`;
CREATE TABLE IF NOT EXISTS `primary_legal_counsels` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `primary_legal_counsels`
--

INSERT INTO `primary_legal_counsels` (`id`, `first_name`, `last_name`, `created_at`, `updated_at`) VALUES
(1, 'Dove', 'Onwuka', NULL, NULL),
(2, 'James', 'KK', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
