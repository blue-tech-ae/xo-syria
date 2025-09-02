-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 02, 2025 at 10:38 AM
-- Server version: 10.3.39-MariaDB-0ubuntu0.20.04.2
-- PHP Version: 8.2.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_XO`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(200) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `email`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'SuperAdmin@account.com', NULL, '2024-01-10 19:57:54', '2024-03-11 09:57:41'),
(64, 'aleppo.warehouse@gmail.com', NULL, '2024-10-23 12:17:35', '2024-10-23 12:17:35'),
(65, 'Damascus.warehouse@gmail.com', NULL, '2024-10-23 12:18:13', '2024-10-23 12:18:13'),
(66, 'boy.damascus@gmail.com', NULL, '2024-10-23 12:18:49', '2024-10-23 12:18:49'),
(67, 'boy.aleppo@gmail.com', NULL, '2024-10-23 12:19:19', '2024-10-23 12:19:19'),
(68, 'Operationmanager@emp.com', NULL, '2024-10-23 12:50:09', '2024-10-23 12:50:09'),
(83, 'boy1.damascus@gmail.com', NULL, '2024-10-29 07:49:58', '2024-11-10 07:19:40'),
(84, 'majd00@gmail.com', NULL, '2024-10-29 09:39:41', '2024-10-29 09:39:41'),
(85, 'majd11@gmail.com', NULL, '2024-10-29 09:40:57', '2024-10-29 09:40:57'),
(86, 'omarhlal22222@gmail.com', NULL, '2024-10-29 10:25:56', '2024-10-29 10:25:56'),
(87, 'DeliveryAdmin@emp.com', NULL, '2024-11-05 09:59:59', '2024-11-05 09:59:59'),
(88, 'LattakiaManager@emp.com', NULL, '2024-11-10 07:53:53', '2024-11-10 07:53:53'),
(89, 'entry1@gmail.com', NULL, '2024-12-28 08:15:48', '2024-12-28 08:15:48'),
(90, 'entry2@gmail.com', NULL, '2025-01-09 10:04:53', '2025-01-09 10:04:53'),
(91, 'entry3@gmail.com', NULL, '2025-01-09 10:05:07', '2025-01-09 10:05:07'),
(92, 'entry4@gmail.com', NULL, '2025-01-09 10:05:17', '2025-01-09 10:05:17'),
(93, 'aaaaaaa@aaaaa.com', NULL, '2025-02-24 11:09:18', '2025-02-24 11:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `account_role`
--

CREATE TABLE `account_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_role`
--

INSERT INTO `account_role` (`id`, `account_id`, `role_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, NULL),
(65, 64, 4, NULL, NULL, NULL),
(66, 65, 4, NULL, NULL, NULL),
(67, 66, 7, NULL, NULL, NULL),
(68, 67, 7, NULL, NULL, NULL),
(69, 68, 6, NULL, NULL, NULL),
(70, 69, 6, NULL, NULL, NULL),
(84, 83, 7, NULL, NULL, NULL),
(85, 84, 7, NULL, NULL, NULL),
(86, 85, 6, NULL, NULL, NULL),
(87, 86, 4, NULL, NULL, NULL),
(88, 87, 5, NULL, NULL, NULL),
(89, 88, 4, NULL, NULL, NULL),
(90, 89, 2, NULL, NULL, NULL),
(91, 90, 2, NULL, NULL, NULL),
(92, 91, 2, NULL, NULL, NULL),
(93, 92, 2, NULL, NULL, NULL),
(94, 93, 7, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `father_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `neighborhood` varchar(200) DEFAULT NULL,
  `isKadmous` tinyint(1) NOT NULL DEFAULT 0,
  `street` varchar(200) DEFAULT NULL,
  `another_details` varchar(200) DEFAULT NULL,
  `lat_long` varchar(200) DEFAULT NULL,
  `phone_number_two` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `branch_id`, `first_name`, `father_name`, `last_name`, `phone`, `city`, `neighborhood`, `isKadmous`, `street`, `another_details`, `lat_long`, `phone_number_two`, `created_at`, `updated_at`, `city_id`) VALUES
(1, 11, NULL, '123', NULL, '123', '123123123', 'Damascus', '312', 0, 'حي الإخلاص', '123', '33.49658443432495,36.26007355749607', NULL, '2024-12-23 12:46:25', '2024-12-23 12:46:25', 6),
(2, 11, 3, '123', '12', '123', '123123123', 'Damascus', NULL, 1, 'حي باب سريجة', NULL, '33.505830082385884,36.2960235401988', NULL, '2024-12-23 12:54:39', '2024-12-23 12:54:39', 6),
(5, 11, 3, '099', '99', '99', '999999999', 'محافظة دمشق', NULL, 1, 'شارع العابد', NULL, '33.51859399564563,36.29334669560194', NULL, '2025-01-22 08:22:25', '2025-01-22 08:22:25', 6),
(11, 10, 9, 'mmm', 'mmm', 'mmm', '994914306', 'محافظة دمشق', NULL, 1, 'حي العدوي', NULL, '33.52356375296537,36.305810920894146', NULL, '2025-01-22 08:40:11', '2025-01-22 08:40:11', 6),
(12, 19, 44, 'Abdulaziz', 'Saleh', 'Dablo', '952758019999', 'Rif Dimashq', 'asd', 1, 'ناحية الكسوةd', 'sda', '33.507250531233694,36.31392896175385', NULL, '2025-02-05 12:43:57', '2025-02-17 09:37:32', 6),
(14, 10, 9, '000', '000000', 'p00000', '994914306', 'محافظة دمشق', NULL, 1, 'حي الحقلة', NULL, '33.49182954453013,36.30010787397623', NULL, '2025-02-26 07:45:41', '2025-02-26 07:45:41', 6),
(15, 10, 3, '0999', 'o99999', '88898', '994914306', 'محافظة دمشق', NULL, 1, 'حي المالكي', NULL, '33.51982751717138,36.27831559628248', NULL, '2025-02-26 09:35:07', '2025-02-26 09:35:07', 6),
(16, 10, 3, 'kkkkk', 'ollooool', 'kllllll', '994914306', 'محافظة دمشق', NULL, 1, 'حي باب مصر', NULL, '33.48880608618007,36.294797770679', NULL, '2025-02-26 09:37:54', '2025-02-26 09:37:54', 6),
(17, 10, 9, '99999', '990000', '00099000', '994936386', 'محافظة دمشق', 'ssss', 1, 'حي المجتهد', 'ssss', '33.50074579710924,36.29831079393625', NULL, '2025-02-26 09:38:43', '2025-04-06 08:49:52', 6),
(18, 10, 9, '0okkkk', 'kkkkk', 'kkkkk', '994914306', 'محافظة ريف دمشق', NULL, 1, 'ناحية الحجر الأسود', NULL, '33.46298733161329,36.30164913833141', NULL, '2025-02-26 09:39:32', '2025-02-26 09:39:32', 2),
(19, 10, NULL, 'qqqq', NULL, 'qqqqqq', '994914306', 'محافظة دمشق', 'hhhh', 0, 'حي الفردوس', 'hhhhh', '33.47978121960494,36.28001544624567', NULL, '2025-02-26 10:02:13', '2025-02-26 10:02:13', 6),
(22, 10, NULL, 'Ahmad', NULL, 'Shahla', '0995423478', 'محافظة دمشق', 'ssss', 0, 'شارع فلسطين', 'ssss', '33.51016952140264,36.290147516304714', NULL, '2025-04-06 08:55:59', '2025-04-06 08:55:59', 6),
(23, 10, NULL, 'Ahmad', NULL, 'Shahla', '0997865432', 'محافظة دمشق', 'qqqq', 0, 'شارع الرشيد', 'qqqq', '33.509325054963554,36.275249805519145', NULL, '2025-04-06 09:15:51', '2025-04-06 09:15:51', 6),
(24, 10, NULL, 'Ahmad', NULL, 'Shahla', '0998765423', 'Damascus', 'wwww', 0, 'شارع الثورة', 'wwww', '33.51002639211476,36.27280165012635', NULL, '2025-04-06 09:40:51', '2025-04-06 09:40:51', 6),
(28, 24, NULL, 'Ahmad', NULL, 'Shahla', '0999653734', 'Damascus', 'dsdgg', 0, 'dsdsd', 'hjjjjj', '33.50185868494738,36.245339666306606', NULL, '2025-04-16 07:10:48', '2025-04-17 10:15:18', 6),
(29, 24, NULL, 'Ahmad', NULL, 'Shahla', '0999587653', 'Al-Quneitra', 'ttyy', 0, 'qwerr', 'rrtthh', '33.23317401704192,35.845193275221526', NULL, '2025-04-17 09:44:06', '2025-04-17 09:44:06', 10);

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(200) NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`value`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(7, 'flash_sales', '{\"men\":\"https://api.xo-textile.sy/public/images/sections/man1.jpg\",\"women\":\"https://api.xo-textile.sy/public/images/sections/women1.jpg\",\"kids\":\"https://api.xo-textile.sy/public/images/sections/kids1.jpg\",\"home\":\"https://api.xo-textile.sy/public/images/sections/home1.jpg\"}', '2024-02-19 15:42:58', '2024-02-19 16:26:32'),
(8, 'offers', '{\"men\":\"https://api.xo-textile.sy/public/images/sections/man2.jpg\",\"women\":\"https://api.xo-textile.sy/public/images/sections/women2.jpg\",\"kids\":\"https://api.xo-textile.sy/public/images/sections/kids2.jpg\",\"home\":\"https://api.xo-textile.sy/public/images/sections/home2.jpg\"}', '2024-02-19 16:56:25', '2024-07-11 08:06:40'),
(9, 'new_in', '{\"men\":\"https://api.xo-textile.sy/public/images/sections/man2.jpg\",\"women\":\"https://api.xo-textile.sy/public/images/sections/women2.jpg\",\"kids\":\"https://api.xo-textile.sy/public/images/sections/kids2.jpg\",\"home\":\"https://api.xo-textile.sy/public/images/sections/home2.jpg\"}', '2024-02-19 16:57:56', '2024-04-30 11:43:45'),
(12, 'flashSale', '{\"men\":\"https://api.xo-textile.sy/public/images/sections/man1.jpg\",\"women\":\"https://api.xo-textile.sy/public/images/sections/women1.jpg\",\"kids\":\"https://api.xo-textile.sy/public/images/sections/kids1.jpg\",\"home\":\"https://api.xo-textile.sy/public/images/sections/home1.jpg\"}', '2024-04-24 13:30:28', '2024-07-10 07:01:04'),
(15, 'categoriesSectionPhotos', '{\"men\":\"https://api.xo-textile.sy/public/images/sections/man2.jpg\",\"women\":\"https://api.xo-textile.sy/public/images/sections/women2.jpg\",\"kids\":\"https://api.xo-textile.sy/public/images/sections/kids2.jpg\",\"home\":\"https://api.xo-textile.sy/public/images/sections/home2.jpg\"}', '2024-04-25 08:03:41', '2024-08-26 13:17:11'),
(16, 'freeShipping', '{\"ar\":\"\\u0647\\u0630\\u0627 \\u0627\\u0644\\u0646\\u0635  \\u0647\\u0648  \\u0645\\u062b\\u0627\\u0644  \\u0644\\u0646\\u0635  \\u064a\\u0645\\u0643\\u0646  \\u0623\\u0646  \\u064a\\u0633\\u062a\\u0628\\u062f\\u0644\",\"en\":\"this text\"}', '2024-04-25 09:32:13', '2024-06-06 10:56:17'),
(19, 'newIn', '{\"women\":\"https:\\/\\/api.xo-textile.sy\\/public\\/images\\/sections\\/women3.jpg\",\"men\":\"https:\\/\\/api.xo-textile.sy\\/public\\/newIn\\/men59fdfd07-bfed-43ca-bba1-a2cc118aba4f.png\",\"kids\":\"https:\\/\\/api.xo-textile.sy\\/public\\/images\\/sections\\/kids3.jpg\",\"home\":\"https:\\/\\/api.xo-textile.sy\\/public\\/images\\/sections\\/home3.jpg\"}', '2024-05-25 10:39:52', '2024-10-09 09:35:38'),
(22, 'sectionPhotos', '{\"women\":\"https:\\/\\/res.cloudinary.com\\/dpuuncbke\\/image\\/upload\\/q_auto\\/f_auto\\/v1\\/photo\\/athleisurefashionstyle?_a=E\",\"men\":\"https:\\/\\/api.xo-textile.sy\\/public\\/images\\/sections\\/man4.jpg\",\"kids\":\"https:\\/\\/dashboard.xo-textile.sy\\/website\\/kids.png\",\"home\":\"https:\\/\\/dashboard.xo-textile.sy\\/website\\/home.png\"}', '2024-06-03 08:58:44', '2024-12-29 12:38:34'),
(23, 'measurment', '{\"en\":\"111This text is an exa123123mple of text that can be replaced in the same space. This text was generated from the Arabic text generator, where you can 123123generate such text or many other texts in addition to increasing the number of letters that the application generates. If you need a larger number of paragraphs, the Arabic text generator allows you to increase the number of paragraphs as you want. The text will not appear divided and does not contain linguistic errors. The Arabic text generator is useful for website designers in particular, as the client often needs to see a real picture of the website design. Hence, it is necessary for the designer to create texts.\",\"ar\":\"\\u0647\\u0630\\u0627 \\u0627\\u0644\\u0646\\u0635  \\u0647\\u0648  \\u0645\\u062b\\u0627\\u0644  \\u0644\\u0646\\u0635  \\u064a\\u0645\\u0643\\u0646  \\u0623\\u0646  \\u064a\\u0633\\u062a\\u0628\\u062f\\u0644  \\u0641\\u064a  \\u0646\\u0641\\u0633 \\u0627\\u0644\\u0645\\u0633\\u0627\\u062d\\u0629\\u060c  \\u0644\\u0642\\u062f  \\u062a\\u0645  \\u062a\\u0648\\u0644\\u064a\\u062f  \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0646\\u0635  \\u0645\\u0646  \\u0645\\u0648\\u0644\\u062f \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0639\\u0631\\u0628\\u0649\\u060c  \\u062d\\u064a\\u062b  \\u064a\\u0645\\u0643\\u0646\\u0643  \\u0623\\u0646  \\u062a\\u0648\\u0644\\u062f  \\u0645\\u062b\\u0644  \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0646\\u0635  \\u0623\\u0648 \\u0627\\u0644\\u0639\\u062f\\u064a\\u062f  \\u0645\\u0646 \\u0627\\u0644\\u0646\\u0635\\u0648\\u0635 \\u0627\\u0644\\u0623\\u062e\\u0631\\u0649  \\u0625\\u0636\\u0627\\u0641\\u0629  \\u0625\\u0644\\u0649  \\u0632\\u064a\\u0627\\u062f\\u0629  \\u0639\\u062f\\u062f \\u0627\\u0644\\u062d\\u0631\\u0648\\u0641 \\u0627\\u0644\\u062a\\u0649  \\u064a\\u0648\\u0644\\u062f\\u0647\\u0627 \\u0627\\u0644\\u062a\\u0637\\u0628\\u064a\\u0642.\\u0625\\u0630\\u0627  \\u0643\\u0646\\u062a  \\u062a\\u062d\\u062a\\u0627\\u062c  \\u0625\\u0644\\u0649  \\u0639\\u062f\\u062f  \\u0623\\u0643\\u0628\\u0631  \\u0645\\u0646 \\u0627\\u0644\\u0641\\u0642\\u0631\\u0627\\u062a  \\u064a\\u062a\\u064a\\u062d  \\u0644\\u0643  \\u0645\\u0648\\u0644\\u062f \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0639\\u0631\\u0628\\u0649  \\u0632\\u064a\\u0627\\u062f\\u0629  \\u0639\\u062f\\u062f \\u0627\\u0644\\u0641\\u0642\\u0631\\u0627\\u062a  \\u0643\\u0645\\u0627  \\u062a\\u0631\\u064a\\u062f\\u060c \\u0627\\u0644\\u0646\\u0635  \\u0644\\u0646  \\u064a\\u0628\\u062f\\u0648  \\u0645\\u0642\\u0633\\u0645\\u0627  \\u0648\\u0644\\u0627  \\u064a\\u062d\\u0648\\u064a  \\u0623\\u062e\\u0637\\u0627\\u0621  \\u0644\\u063a\\u0648\\u064a\\u0629\\u060c  \\u0645\\u0648\\u0644\\u062f \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0639\\u0631\\u0628\\u0649  \\u0645\\u0641\\u064a\\u062f  \\u0644\\u0645\\u0635\\u0645\\u0645\\u064a \\u0627\\u0644\\u0645\\u0648\\u0627\\u0642\\u0639  \\u0639\\u0644\\u0649  \\u0648\\u062c\\u0647 \\u0627\\u0644\\u062e\\u0635\\u0648\\u0635\\u060c  \\u062d\\u064a\\u062b  \\u064a\\u062d\\u062a\\u0627\\u062c \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644  \\u0641\\u0649  \\u0643\\u062b\\u064a\\u0631  \\u0645\\u0646 \\u0627\\u0644\\u0623\\u062d\\u064a\\u0627\\u0646  \\u0623\\u0646  \\u064a\\u0637\\u0644\\u0639  \\u0639\\u0644\\u0649  \\u0635\\u0648\\u0631\\u0629  \\u062d\\u0642\\u064a\\u0642\\u064a\\u0629  \\u0644\\u062a\\u0635\\u0645\\u064a\\u0645 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639.\\u0648\\u0645\\u0646  \\u0647\\u0646\\u0627  \\u0648\\u062c\\u0628  \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0645\\u0635\\u0645\\u0645  \\u0623\\u0646  \\u064a\\u0636\\u0639  \\u0646\\u0635\\u0648\\u0635\\u0627\"}', '2024-06-06 09:38:27', '2024-06-06 09:38:27'),
(24, 'compositionAndCare', '{\"en\":\"111This text is an exa123123mple of text that can be replaced in the same space. This text was generated from the Arabic text generator, where you can 123123generate such text or many other texts in addition to increasing the number of letters that the application generates. If you need a larger number of paragraphs, the Arabic text generator allows you to increase the number of paragraphs as you want. The text will not appear divided and does not contain linguistic errors. The Arabic text generator is useful for website designers in particular, as the client often needs to see a real picture of the website design. Hence, it is necessary for the designer to create texts.\",\"ar\":\"\\u0647\\u0630\\u0627 \\u0627\\u0644\\u0646\\u0635  \\u0647\\u0648  \\u0645\\u062b\\u0627\\u0644  \\u0644\\u0646\\u0635  \\u064a\\u0645\\u0643\\u0646  \\u0623\\u0646  \\u064a\\u0633\\u062a\\u0628\\u062f\\u0644  \\u0641\\u064a  \\u0646\\u0641\\u0633 \\u0627\\u0644\\u0645\\u0633\\u0627\\u062d\\u0629\\u060c  \\u0644\\u0642\\u062f  \\u062a\\u0645  \\u062a\\u0648\\u0644\\u064a\\u062f  \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0646\\u0635  \\u0645\\u0646  \\u0645\\u0648\\u0644\\u062f \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0639\\u0631\\u0628\\u0649\\u060c  \\u062d\\u064a\\u062b  \\u064a\\u0645\\u0643\\u0646\\u0643  \\u0623\\u0646  \\u062a\\u0648\\u0644\\u062f  \\u0645\\u062b\\u0644  \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0646\\u0635  \\u0623\\u0648 \\u0627\\u0644\\u0639\\u062f\\u064a\\u062f  \\u0645\\u0646 \\u0627\\u0644\\u0646\\u0635\\u0648\\u0635 \\u0627\\u0644\\u0623\\u062e\\u0631\\u0649  \\u0625\\u0636\\u0627\\u0641\\u0629  \\u0625\\u0644\\u0649  \\u0632\\u064a\\u0627\\u062f\\u0629  \\u0639\\u062f\\u062f \\u0627\\u0644\\u062d\\u0631\\u0648\\u0641 \\u0627\\u0644\\u062a\\u0649  \\u064a\\u0648\\u0644\\u062f\\u0647\\u0627 \\u0627\\u0644\\u062a\\u0637\\u0628\\u064a\\u0642.\\u0625\\u0630\\u0627  \\u0643\\u0646\\u062a  \\u062a\\u062d\\u062a\\u0627\\u062c  \\u0625\\u0644\\u0649  \\u0639\\u062f\\u062f  \\u0623\\u0643\\u0628\\u0631  \\u0645\\u0646 \\u0627\\u0644\\u0641\\u0642\\u0631\\u0627\\u062a  \\u064a\\u062a\\u064a\\u062d  \\u0644\\u0643  \\u0645\\u0648\\u0644\\u062f \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0639\\u0631\\u0628\\u0649  \\u0632\\u064a\\u0627\\u062f\\u0629  \\u0639\\u062f\\u062f \\u0627\\u0644\\u0641\\u0642\\u0631\\u0627\\u062a  \\u0643\\u0645\\u0627  \\u062a\\u0631\\u064a\\u062f\\u060c \\u0627\\u0644\\u0646\\u0635  \\u0644\\u0646  \\u064a\\u0628\\u062f\\u0648  \\u0645\\u0642\\u0633\\u0645\\u0627  \\u0648\\u0644\\u0627  \\u064a\\u062d\\u0648\\u064a  \\u0623\\u062e\\u0637\\u0627\\u0621  \\u0644\\u063a\\u0648\\u064a\\u0629\\u060c  \\u0645\\u0648\\u0644\\u062f \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0639\\u0631\\u0628\\u0649  \\u0645\\u0641\\u064a\\u062f  \\u0644\\u0645\\u0635\\u0645\\u0645\\u064a \\u0627\\u0644\\u0645\\u0648\\u0627\\u0642\\u0639  \\u0639\\u0644\\u0649  \\u0648\\u062c\\u0647 \\u0627\\u0644\\u062e\\u0635\\u0648\\u0635\\u060c  \\u062d\\u064a\\u062b  \\u064a\\u062d\\u062a\\u0627\\u062c \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644  \\u0641\\u0649  \\u0643\\u062b\\u064a\\u0631  \\u0645\\u0646 \\u0627\\u0644\\u0623\\u062d\\u064a\\u0627\\u0646  \\u0623\\u0646  \\u064a\\u0637\\u0644\\u0639  \\u0639\\u0644\\u0649  \\u0635\\u0648\\u0631\\u0629  \\u062d\\u0642\\u064a\\u0642\\u064a\\u0629  \\u0644\\u062a\\u0635\\u0645\\u064a\\u0645 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639.\\u0648\\u0645\\u0646  \\u0647\\u0646\\u0627  \\u0648\\u062c\\u0628  \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0645\\u0635\\u0645\\u0645  \\u0623\\u0646  \\u064a\\u0636\\u0639  \\u0646\\u0635\\u0648\\u0635\\u0627\"}', '2024-06-06 09:39:44', '2024-06-06 09:39:44'),
(25, 'versionNumber', '{\"minimum_version\":\"1.0.0\",\"optional_version\":\"1.0.0\"}', '2024-06-06 12:15:29', '2024-06-08 07:29:42'),
(26, 'return_policy', '{\"en\":{\"title\":\"so dou can return the order within9d\",\"days\":\"10\"},\"ar\":{\"title\":\"\\u0647\\u0630\\u0627 \\u0645\\u062b\\u0627\\u0644 \\u0644\\u0646\\u0635 \\u064a\\u0645\\u0643\\u0646 \\u0627\\u0633\\u062a\\u0628\\u062f\\u0627\\u0644\\u0647 \\u0644\\u0627\\u062d\\u0642\\u0627\\u0627\\u0627\\u0627\",\"days\":\"10\"}}', NULL, NULL),
(27, 'safeShipping', '{\"ar\":\"\\u0647\\u0630\\u0627 \\u0627\\u0644\\u0646\\u0635  \\u0647\\u0648  \\u0645\\u062b\\u0627\\u0644  \\u0644\\u0646\\u0635  \\u064a\\u0645\\u0643\\u0646  \\u0623\\u0646  \\u064a\\u0633\\u062a\\u0628\\u062f\\u0644\",\"en\":\"this text\"}', '2024-06-13 08:36:58', '2024-06-13 08:36:58'),
(32, 'GiftCardDetails', '{\"banner1\":\"https:\\/\\/api.xo-textile.sy\\/public\\/banners\\/banner1144d2b8d-31d1-4036-b7e0-6d5e55d59ccd.webp\",\"banner2\":\"https:\\/\\/api.xo-textile.sy\\/public\\/banners\\/banner248160669-0952-4f03-947f-ad93adcc63dd.png\",\"banner3\":\"https:\\/\\/api.xo-textile.sy\\/public\\/banners\\/banner3d554a737-7025-4483-80a2-9c4e6883baa3.png\",\"balance\":{\"min\":0,\"max\":1000000,\"step\":10,\"price1\":10,\"price2\":20,\"price3\":300,\"price4\":40}}', '2024-07-14 08:56:07', '2024-10-16 12:54:13'),
(33, 'locationPhotos', '{\"image1\":\"https:\\/\\/res.cloudinary.com\\/dpuuncbke\\/image\\/upload\\/q_auto\\/f_auto\\/v1\\/photo\\/register?_a=E\",\"image2\":\"https:\\/\\/res.cloudinary.com\\/dpuuncbke\\/image\\/upload\\/q_auto\\/f_auto\\/v1\\/photo\\/register?_a=E\",\"image3\":\"https:\\/\\/res.cloudinary.com\\/dpuuncbke\\/image\\/upload\\/q_auto\\/f_auto\\/v1\\/photo\\/register?_a=E\"}', '2024-10-03 13:26:59', '2024-11-11 07:19:23');

-- --------------------------------------------------------

--
-- Table structure for table `assign_durations`
--

CREATE TABLE `assign_durations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `account_id` bigint(20) UNSIGNED NOT NULL,
  `assign_from` datetime NOT NULL,
  `assign_to` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_durations`
--

INSERT INTO `assign_durations` (`id`, `employee_id`, `account_id`, `assign_from`, `assign_to`, `deleted_at`, `created_at`, `updated_at`) VALUES
(8, 27, 67, '2024-10-23 15:23:44', '2024-10-29 12:37:17', NULL, '2024-10-23 12:23:44', '2024-10-29 09:37:17'),
(9, 28, 66, '2024-10-23 15:23:54', NULL, NULL, '2024-10-23 12:23:54', '2024-10-23 12:23:54'),
(10, 30, 65, '2024-10-23 15:24:03', NULL, NULL, '2024-10-23 12:24:03', '2024-10-23 12:24:03'),
(11, 29, 64, '2024-10-23 15:24:11', NULL, NULL, '2024-10-23 12:24:11', '2024-10-23 12:24:11'),
(12, 31, 68, '2024-10-23 15:51:51', NULL, NULL, '2024-10-23 12:51:51', '2024-10-23 12:51:51'),
(14, 54, 83, '2024-10-29 10:51:12', '2024-10-29 10:51:37', NULL, '2024-10-29 07:51:12', '2024-10-29 07:51:37'),
(15, 55, 85, '2024-10-29 12:41:37', '2024-10-29 12:41:51', NULL, '2024-10-29 09:41:37', '2024-10-29 09:41:51'),
(16, 55, 84, '2024-10-29 12:42:07', '2024-10-29 13:08:16', NULL, '2024-10-29 09:42:07', '2024-10-29 10:08:16'),
(17, 55, 84, '2024-10-29 12:42:07', NULL, NULL, '2024-10-29 09:42:07', '2024-10-29 09:42:07'),
(18, 27, 67, '2024-10-29 12:47:18', NULL, NULL, '2024-10-29 09:47:18', '2024-10-29 09:47:18'),
(19, 54, 85, '2024-10-29 13:05:34', '2024-10-29 13:06:47', NULL, '2024-10-29 10:05:34', '2024-10-29 10:06:47'),
(20, 54, 84, '2024-10-29 13:09:01', '2024-11-10 10:22:24', NULL, '2024-10-29 10:09:01', '2024-11-10 07:22:24'),
(21, 55, 83, '2024-10-29 13:21:38', '2024-11-10 10:22:41', NULL, '2024-10-29 10:21:38', '2024-11-10 07:22:41'),
(24, 57, 87, '2024-11-05 13:00:31', NULL, NULL, '2024-11-05 10:00:31', '2024-11-05 10:00:31'),
(26, 55, 84, '2024-11-10 10:30:27', '2024-11-10 10:30:51', NULL, '2024-11-10 07:30:27', '2024-11-10 07:30:51'),
(27, 55, 85, '2024-11-10 10:30:59', '2024-11-10 10:38:41', NULL, '2024-11-10 07:30:59', '2024-11-10 07:38:41'),
(28, 55, 85, '2024-11-10 10:43:26', '2024-11-10 10:43:59', NULL, '2024-11-10 07:43:26', '2024-11-10 07:43:59'),
(29, 55, 85, '2024-11-10 10:44:16', '2024-11-10 10:45:39', NULL, '2024-11-10 07:44:16', '2024-11-10 07:45:39'),
(30, 55, 85, '2024-11-10 10:46:11', '2024-11-10 10:46:39', NULL, '2024-11-10 07:46:11', '2024-11-10 07:46:39'),
(31, 55, 83, '2024-11-10 10:46:56', '2024-11-10 10:47:22', NULL, '2024-11-10 07:46:56', '2024-11-10 07:47:22'),
(32, 55, 85, '2024-11-10 10:47:31', '2024-11-10 10:48:22', NULL, '2024-11-10 07:47:31', '2024-11-10 07:48:22'),
(33, 55, 84, '2024-11-10 10:49:54', '2024-11-10 10:50:08', NULL, '2024-11-10 07:49:54', '2024-11-10 07:50:08'),
(34, 55, 85, '2024-11-10 10:50:24', '2024-11-10 10:52:34', NULL, '2024-11-10 07:50:24', '2024-11-10 07:52:34'),
(35, 55, 85, '2024-11-10 10:52:46', NULL, NULL, '2024-11-10 07:52:46', '2024-11-10 07:52:46'),
(36, 58, 88, '2024-11-10 12:55:44', NULL, NULL, '2024-11-10 09:55:44', '2024-11-10 09:55:44'),
(37, 54, 89, '2024-12-28 11:16:08', NULL, NULL, '2024-12-28 08:16:08', '2024-12-28 08:16:08'),
(38, 59, 90, '2025-01-09 13:07:12', NULL, NULL, '2025-01-09 10:07:12', '2025-01-09 10:07:12'),
(39, 60, 91, '2025-01-09 13:07:59', NULL, NULL, '2025-01-09 10:07:59', '2025-01-09 10:07:59'),
(40, 61, 92, '2025-01-09 13:08:29', NULL, NULL, '2025-01-09 10:08:29', '2025-01-09 10:08:29'),
(41, 62, 84, '2025-02-05 16:08:52', NULL, NULL, '2025-02-05 13:08:52', '2025-02-05 13:08:52');

-- --------------------------------------------------------

--
-- Table structure for table `audits`
--

CREATE TABLE `audits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(200) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event` varchar(200) NOT NULL,
  `auditable_type` varchar(200) NOT NULL,
  `auditable_id` bigint(20) UNSIGNED NOT NULL,
  `old_values` text DEFAULT NULL,
  `new_values` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` varchar(1023) DEFAULT NULL,
  `tags` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ban_histories`
--

CREATE TABLE `ban_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `reason` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `city_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 12, 'الحمرا', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(2, 5, 'يبرود ', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(3, 6, 'المحافظة', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(4, 11, 'الرمال الذهبية ', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(5, 4, 'مساكن الحرس', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(6, 9, 'يبرود ', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(7, 4, 'الرمال الذهبية ', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(8, 5, 'المنطقة الصناعية ', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(9, 6, 'الحمرا', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(10, 9, 'الحمرا', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(11, 10, 'يبرود ', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(12, 7, 'مساكن الحرس', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(13, 4, 'الحمرا', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(14, 4, 'مساكن الحرس', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(15, 7, 'الرمال الذهبية ', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(16, 9, 'يبرود ', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(17, 9, 'مساكن الحرس', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(18, 8, 'المحافظة', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(19, 8, 'المنطقة الصناعية ', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(20, 3, 'الحمرا', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(21, 8, 'المنطقة الصناعية ', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(22, 9, 'الحواش', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(23, 12, 'الحواش', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(24, 1, 'يبرود ', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(25, 5, 'يبرود ', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(26, 11, 'المنطقة الصناعية ', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(27, 1, 'القرداحة', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(28, 7, 'المنطقة الصناعية ', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(29, 3, 'القرداحة', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(30, 12, 'الرمال الذهبية ', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(31, 1, 'الحواش', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(32, 10, 'الرمال الذهبية ', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(33, 5, 'المنطقة الصناعية ', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(34, 1, 'يبرود ', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(35, 2, 'الدويلعة', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(36, 11, 'القرداحة', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(37, 12, 'الرمال الذهبية ', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(38, 2, 'الرمال الذهبية ', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(39, 8, 'الحمرا', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(40, 5, 'القرداحة', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(41, 10, 'مساكن الحرس', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(42, 8, 'المنطقة الصناعية ', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(43, 9, 'مساكن الحرس', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(44, 2, 'المحافظة', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(45, 11, 'الحواش', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(46, 8, 'الحمرا', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(47, 1, 'المحافظة', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(48, 11, 'الرمال الذهبية ', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(49, 7, 'الرمال الذهبية ', '2024-01-10 19:57:57', '2024-01-10 19:57:57'),
(50, 10, 'الدويلعة', '2024-01-10 19:57:57', '2024-01-10 19:57:57');

-- --------------------------------------------------------

--
-- Table structure for table `cargo_requests`
--

CREATE TABLE `cargo_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `to_inventory` bigint(20) UNSIGNED NOT NULL,
  `request_status_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `request_id` varchar(30) NOT NULL,
  `status` varchar(200) NOT NULL,
  `recieved_packages` smallint(6) DEFAULT NULL,
  `request_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cargo_shipments`
--

CREATE TABLE `cargo_shipments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cargo_request_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipment_name` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL,
  `from_inventory` bigint(20) UNSIGNED DEFAULT NULL,
  `first_point_inventory_id` int(11) DEFAULT NULL,
  `to_inventory` int(40) NOT NULL,
  `sender_packages` smallint(6) DEFAULT NULL,
  `ship_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `received_date` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cargo_shipments`
--

INSERT INTO `cargo_shipments` (`id`, `cargo_request_id`, `shipment_name`, `status`, `from_inventory`, `first_point_inventory_id`, `to_inventory`, `sender_packages`, `ship_date`, `received_date`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 'TW-4627343860', 'closed', NULL, NULL, 2, NULL, '2025-04-09 11:43:24', '2025-04-09 11:43:24', NULL, '2025-04-09 11:43:24', '2025-04-09 11:43:24'),
(2, NULL, 'TW-1646657830', 'closed', NULL, NULL, 2, NULL, '2025-04-09 12:01:15', '2025-04-09 12:01:15', NULL, '2025-04-09 12:01:15', '2025-04-09 12:01:15'),
(3, NULL, 'TW-4190646650', 'closed', NULL, NULL, 2, NULL, '2025-04-10 07:43:20', '2025-04-10 07:43:20', NULL, '2025-04-10 07:43:20', '2025-04-10 07:43:20'),
(4, NULL, 'TW-2623193065', 'closed', NULL, NULL, 2, NULL, '2025-04-28 11:45:32', '2025-04-28 11:45:32', NULL, '2025-04-28 11:45:32', '2025-04-28 11:45:32');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`name`)),
  `slug` varchar(200) NOT NULL,
  `photo_url` varchar(200) NOT NULL,
  `thumbnail` varchar(200) NOT NULL,
  `valid` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `section_id`, `name`, `slug`, `photo_url`, `thumbnail`, `valid`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '{\"en\":\"Test\",\"ar\":\"\\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\"}', 'test', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/creaslim-0QDEj5dnUMk-unsplash?_a=E', 'dasd', 0, NULL, '2024-10-20 11:01:23', '2025-03-26 06:09:48'),
(17, 1, '{\"en\":\"Natalie Leon\",\"ar\":\"testttt\"}', 'natalie-leon', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/category/%281%29?_a=E', 'dasd', 0, '2025-03-26 06:09:39', '2025-02-20 08:13:06', '2025-03-26 06:09:39'),
(18, 3, '{\"en\":\"Zena Anthony\",\"ar\":\"Armand Cotton\"}', 'zena-anthony', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/category/%281%29?_a=E', 'dasd', 0, '2025-03-27 12:35:18', '2025-02-20 08:18:37', '2025-03-27 12:35:18'),
(19, 1, '{\"en\":\"Jaden Snider\",\"ar\":\"Cathleen Roth\"}', 'jaden-snider', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/category/%281%29?_a=E', 'dasd', 0, '2025-03-26 06:09:45', '2025-02-20 08:22:08', '2025-03-26 06:09:45'),
(20, 1, '{\"en\":\"test1\",\"ar\":\"wq\"}', 'test1', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/category/QR?_a=E', 'dasd', 0, '2025-03-26 06:07:12', '2025-02-24 08:09:23', '2025-03-26 06:07:12'),
(21, 1, '{\"en\":\"ghgh\",\"ar\":\"jjjjj\"}', 'ghgh', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/category/1?_a=E', 'dasd', 0, '2025-03-26 06:08:18', '2025-03-13 11:51:50', '2025-03-26 06:08:18'),
(22, 1, '{\"en\":\"T-Shirt\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a\"}', 't-shirt', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/category/168?_a=E', 'dasd', 0, NULL, '2025-03-16 10:49:51', '2025-06-05 12:49:49'),
(23, 1, '{\"en\":\"Trousers\",\"ar\":\"\\u0628\\u0646\\u0637\\u0627\\u0644\"}', 'trousers', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/category/233?_a=E', 'dasd', 0, NULL, '2025-03-16 12:27:27', '2025-06-05 12:49:52'),
(24, 1, '{\"en\":\"Jacket\",\"ar\":\"\\u062c\\u0627\\u0643\\u064a\\u062a\"}', 'jacket', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/category/106?_a=E', 'dasd', 0, NULL, '2025-03-16 12:45:37', '2025-06-05 12:49:54'),
(25, 1, '{\"en\":\"T-Shirt POLO\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0628\\u0648\\u0644\\u0648\"}', 't-shirt-polo', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/category/102?_a=E', 'dasd', 0, NULL, '2025-03-16 13:01:42', '2025-03-26 06:07:24'),
(26, 1, '{\"en\":\"SHIRTS\",\"ar\":\"\\u0642\\u0645\\u064a\\u0635\"}', 'shirts', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/category/106?_a=E', 'dasd', 0, NULL, '2025-03-26 13:08:56', '2025-03-26 13:08:56'),
(27, 1, '{\"en\":\"Underware\",\"ar\":\"\\u0644\\u0628\\u0627\\u0633 \\u062f\\u0627\\u062e\\u0644\\u064a\"}', 'underware', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/category/317?_a=E', 'dasd', 0, NULL, '2025-03-27 07:11:27', '2025-04-05 06:07:35'),
(28, 3, '{\"en\":\"T-SHIRT\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a\"}', 't-shirt-1', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/category/14?_a=E', 'dasd', 0, NULL, '2025-03-27 12:36:08', '2025-03-27 12:36:08'),
(29, 3, '{\"en\":\"Underware\",\"ar\":\"\\u0644\\u0628\\u0627\\u0633 \\u062f\\u0627\\u062e\\u0644\\u064a\"}', 'underware-1', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/category/316?_a=E', 'dasd', 0, NULL, '2025-04-05 06:15:33', '2025-04-05 06:15:33'),
(30, 2, '{\"en\":\"PYJAMAS\",\"ar\":\"\\u0628\\u064a\\u062c\\u0627\\u0645\\u0627\"}', 'pyjamas', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/category/271?_a=E', 'dasd', 0, NULL, '2025-04-05 07:36:46', '2025-04-05 07:36:46'),
(31, 1, '{\"en\":\"Pyjama\",\"ar\":\"\\u0628\\u064a\\u062c\\u0627\\u0645\\u0627\"}', 'pyjama', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/category/240?_a=E', 'dasd', 0, NULL, '2025-04-05 08:43:18', '2025-04-05 08:43:18'),
(32, 2, '{\"en\":\"UNDERWEAR\",\"ar\":\"\\u062f\\u0627\\u062e\\u0644\\u064a\"}', 'underwear', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/category/underwear_1744719513_67fe4e9969153?_a=E', 'dasd', 0, NULL, '2025-04-15 12:18:42', '2025-04-15 12:18:42'),
(33, 4, '{\"en\":\"gift card\",\"ar\":\"\\u063a\\u064a\\u0641\\u062a \\u0643\\u0627\\u0631\\u062f\"}', 'gift-card', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/IMG_3114_1745834815_680f533f38ef8?_a=E', 'dasd', 0, NULL, '2025-04-28 10:03:26', '2025-05-17 13:34:07'),
(34, 4, '{\"en\":\"Gift Card\",\"ar\":\"\\u0628\\u0637\\u0627\\u0642\\u0629 \\u0647\\u062f\\u064a\\u0629\"}', 'gift-card-1', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/WhatsApp%20Image%202025-05-17%20at%2015.45.07_1747488778_6828900a6737d?_a=E', 'dasd', 0, NULL, '2025-05-17 13:09:50', '2025-06-05 13:55:58');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`name`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Lattakia\",\"ar\":\"\\u0645\\u062d\\u0627\\u0641\\u0638\\u0629 \\u0627\\u0644\\u0644\\u0627\\u0630\\u0642\\u064a\\u0629\"}', '2024-01-13 19:51:16', '2024-06-24 07:17:11'),
(2, '{\"en\":\"Rif Dimashq\",\"ar\":\"\\u0645\\u062d\\u0627\\u0641\\u0638\\u0629 \\u0631\\u064a\\u0641 \\u062f\\u0645\\u0634\\u0642\"}', '2024-01-13 19:51:16', '2024-06-24 07:17:52'),
(3, '{\"en\":\"Aleppo\",\"ar\":\"\\u0645\\u062d\\u0627\\u0641\\u0638\\u0629 \\u062d\\u0644\\u0628\"}', '2024-01-13 19:51:16', '2024-06-24 07:18:15'),
(4, '{\"en\":\"Homs\",\"ar\":\"\\u0645\\u062d\\u0627\\u0641\\u0638\\u0629 \\u062d\\u0645\\u0635\"}', '2024-01-13 19:51:16', '2024-06-24 07:24:21'),
(5, '{\"en\":\"Hama\",\"ar\":\"\\u0645\\u062d\\u0627\\u0641\\u0638\\u0629 \\u062d\\u0645\\u0627\\u0647\"}', '2024-01-13 19:51:16', '2024-06-24 08:55:55'),
(6, '{\"en\":\"Damascus\",\"ar\":\"\\u0645\\u062d\\u0627\\u0641\\u0638\\u0629 \\u062f\\u0645\\u0634\\u0642\"}', '2024-01-13 19:51:16', '2024-06-24 07:25:39'),
(7, '{\"en\":\"Tartus\",\"ar\":\"\\u0645\\u062d\\u0627\\u0641\\u0638\\u0629 \\u0637\\u0631\\u0637\\u0648\\u0633\"}', '2024-01-13 19:51:16', '2024-06-24 07:25:58'),
(8, '{\"en\":\"Daraa\",\"ar\":\"\\u0645\\u062d\\u0627\\u0641\\u0638\\u0629 \\u062f\\u0631\\u0639\\u0627\"}', '2024-01-13 19:51:16', '2024-06-24 07:26:19'),
(9, '{\"en\":\"As-Suweida\",\"ar\":\"\\u0645\\u062d\\u0627\\u0641\\u0638\\u0629 \\u0627\\u0644\\u0633\\u0648\\u064a\\u062f\\u0627\\u0621\"}', '2024-01-13 19:51:16', '2024-06-24 07:26:42'),
(10, '{\"en\":\"Al-Quneitra\",\"ar\":\"\\u0645\\u062d\\u0627\\u0641\\u0638\\u0629 \\u0627\\u0644\\u0642\\u0646\\u064a\\u0637\\u0631\\u0629\"}', '2024-01-13 19:51:16', '2024-06-24 07:27:05'),
(11, '{\"en\":\"Deir ez-Zor\",\"ar\":\"\\u0645\\u062d\\u0627\\u0641\\u0638\\u0629 \\u062f\\u064a\\u0631 \\u0627\\u0644\\u0632\\u0648\\u0631\"}', '2024-01-13 19:51:16', '2024-06-24 07:27:29'),
(12, '{\"en\":\"Ar-Raqqah\",\"ar\":\"\\u0645\\u062d\\u0627\\u0641\\u0638\\u0629 \\u0627\\u0644\\u0631\\u0642\\u0629\"}', '2024-01-13 19:51:16', '2024-06-24 07:27:51'),
(13, '{\"en\":\"Al-Hasakah\",\"ar\":\"\\u0645\\u062d\\u0627\\u0641\\u0638\\u0629 \\u0627\\u0644\\u062d\\u0633\\u0643\\u0629\"}', '2024-01-13 19:51:16', '2024-06-24 07:28:12'),
(14, '{\"en\":\"Idlib\",\"ar\":\"\\u0645\\u062d\\u0627\\u0641\\u0638\\u0629 \\u0625\\u062f\\u0644\\u0628\"}', '2024-01-13 19:51:16', '2024-06-24 07:28:33');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`name`)),
  `hex_code` varchar(200) NOT NULL,
  `sku_code` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `hex_code`, `sku_code`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"asd\",\"ar\":\"asd\"}', '#652424', 'asd', '2024-10-20 12:59:59', '2024-10-20 12:59:59'),
(2, '{\"en\":\"DF\",\"ar\":\"GF\"}', '#000000', 'DF', '2024-10-20 13:01:37', '2024-10-20 13:01:37'),
(3, '{\"en\":\"gray\",\"ar\":\"\\u0631\\u0645\\u0627\\u062f\\u064a\"}', '#cbbdbd', '12', '2024-10-21 08:57:34', '2024-10-21 08:57:34'),
(4, '{\"en\":\"Blue\",\"ar\":\"\\u0623\\u0632\\u0631\\u0642\"}', '#0000ff', '3232', '2024-11-25 12:14:44', '2024-11-25 12:14:44'),
(5, '{\"en\":\"Red\",\"ar\":\"\\u0623\\u062d\\u0645\\u0631\"}', '#ff0000', '3442', '2024-11-25 12:29:20', '2024-11-25 12:29:20'),
(6, '{\"en\":\"white\",\"ar\":\"\\u0623\\u0628\\u064a\\u0636\"}', '#ffffff', '7634', '2025-01-23 12:19:56', '2025-01-23 12:19:56'),
(7, '{\"en\":\"Pink\",\"ar\":\"\\u0632\\u0647\\u0631\"}', '#ff00ae', '7623', '2025-01-23 12:28:46', '2025-01-23 12:28:46'),
(8, '{\"en\":\"Green\",\"ar\":\"\\u0623\\u062e\\u0636\\u0631\"}', '#187c28', '8346', '2025-01-23 12:39:03', '2025-01-23 12:39:03'),
(9, '{\"en\":\"fgsdgfs\",\"ar\":\"kjgk\"}', '#1e00ff', '75', '2025-03-13 11:03:50', '2025-03-13 11:03:50'),
(10, '{\"en\":\"Yellow\",\"ar\":\"\\u0623\\u0635\\u0641\\u0631\"}', '#eeff00', '55', '2025-03-13 11:54:22', '2025-03-13 11:54:22'),
(11, '{\"en\":\"iron\",\"ar\":\"\\u062d\\u062f\\u064a\\u062f\\u064a\"}', '#a3a3a3', '52', '2025-03-16 12:54:53', '2025-03-16 12:54:53'),
(12, '{\"en\":\"BEIGE\",\"ar\":\"\\u0628\\u064a\\u062c\"}', '#f4e68a', '14', '2025-03-16 12:55:56', '2025-03-16 12:55:56'),
(13, '{\"en\":\"OFFWHITE\",\"ar\":\"\\u0623\\u0648\\u0641 \\u0648\\u0627\\u064a\\u062a\"}', '#f3eded', '01', '2025-03-20 12:58:20', '2025-03-20 12:58:20'),
(14, '{\"en\":\"OIL\",\"ar\":\"\\u0632\\u064a\\u062a\\u064a\"}', '#214417', '36', '2025-03-20 13:00:13', '2025-03-20 13:00:13'),
(15, '{\"en\":\"BEIGE\",\"ar\":\"\\u0628\\u064a\\u062c\"}', '#f5e8d1', '5648', '2025-03-25 11:41:24', '2025-03-25 11:41:24'),
(16, '{\"en\":\"KIWI\",\"ar\":\"\\u0643\\u064a\\u0648\\u064a\"}', '#90f58e', '87645', '2025-03-25 11:51:26', '2025-03-25 11:51:26'),
(17, '{\"en\":\"FEATHERY\",\"ar\":\"\\u0633\\u0645\\u0627\\u0648\\u064a\"}', '#b8f5f1', '1564', '2025-03-25 11:52:20', '2025-03-25 11:52:20'),
(18, '{\"en\":\"MOTARD\",\"ar\":\"\\u0645\\u0648\\u062a\\u0627\\u0631\\u062f\"}', '#ffc64d', '1476', '2025-03-25 11:53:09', '2025-03-25 11:53:09'),
(19, '{\"en\":\"NAVY BLUE\",\"ar\":\"\\u0643\\u062d\\u0644\\u064a\"}', '#313949', '5678', '2025-03-25 11:57:15', '2025-03-25 11:57:15'),
(20, '{\"en\":\"sociable\",\"ar\":\"\\u0645\\u0648\\u0646\\u0633\"}', '#dddada', '47545', '2025-03-25 13:01:54', '2025-03-25 13:01:54'),
(22, '{\"en\":\"Totti\",\"ar\":\"\\u062a\\u0648\\u062a\\u064a\"}', '#824050', '864545', '2025-03-25 13:13:07', '2025-03-25 13:13:07'),
(23, '{\"en\":\"brown\",\"ar\":\"\\u0628\\u0646\\u064a\"}', '#573814', '4589', '2025-03-25 13:13:47', '2025-03-25 13:13:47'),
(24, '{\"en\":\"pink\",\"ar\":\"\\u0632\\u0647\\u0631\"}', '#fba7cc', '#221155', '2025-04-05 08:14:02', '2025-04-05 08:14:02'),
(25, '{\"en\":\"PINK\",\"ar\":\"\\u0632\\u0647\\u0631\\u064a\"}', '#ff80c0', '1615', '2025-04-15 12:39:32', '2025-04-15 12:39:32'),
(26, '{\"en\":\"GREEN\",\"ar\":\"\\u0639\\u0641\\u0646\\u064a\"}', '#638000', '121', '2025-04-15 13:23:17', '2025-04-15 13:23:17'),
(27, '{\"en\":\"ANTRASIT\",\"ar\":\"\\u0627\\u0646\\u062a\\u0631\\u0627\\u0633\\u064a\\u062a\"}', '#1a1919', '32', '2025-04-16 13:09:08', '2025-04-16 13:09:08');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `option_name` varchar(40) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `message` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `code` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `password` varchar(200) DEFAULT NULL,
  `valid` tinyint(1) NOT NULL DEFAULT 0,
  `used_redemption` int(11) DEFAULT NULL,
  `max_redemption` int(11) DEFAULT NULL,
  `amount_off` varchar(200) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `percentage` int(11) DEFAULT NULL,
  `expired_at` datetime DEFAULT NULL,
  `last_recharge` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(200) DEFAULT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`name`)),
  `percentage` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `valid` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emergency`
--

CREATE TABLE `emergency` (
  `lock_down_flag` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inventory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shift_id` bigint(20) UNSIGNED DEFAULT NULL,
  `account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `inventory_id`, `shift_id`, `account_id`, `first_name`, `last_name`, `email`, `phone`, `password`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 'Shafeek', 'Admin', 'SuperAdmin@emp.com', '0987654321', 'eyJpdiI6IkQvTkNGVGJ4SndVMFRQcW1aenV0TGc9PSIsInZhbHVlIjoiL0w1emYxTVRJOXEzZTJ0Q0EyZElvUT09IiwibWFjIjoiMWViYjU0YWQ5YzEyYTI4NTgxZGZhY2UyMzMxYTAxZDU3OGRkN2E4M2I0YmYyMjQyMjRjZjllNDY2NjIxNjFjZCIsInRhZyI6IiJ9', NULL, '2024-01-10 19:57:55', '2024-02-08 18:56:53'),
(27, 2, 1, 67, 'boy', 'aleppo', 'boy.aleppo@gmail.com', '123456789', 'eyJpdiI6InBKWTJZdkt5MXNnakhEZ1FqSC8vUWc9PSIsInZhbHVlIjoiZ2NJNDFGclBUZGRPbnV0LytPOE1hUT09IiwibWFjIjoiODIxZTU0ZWYwOGE2ZjhlNzRmOGM5NDEyNzFlNzc1MGFhZWYwZmNhYzJmMzE5OTFmNDZiNjU2YzY4ODI5ZmVkMyIsInRhZyI6IiJ9', NULL, '2024-10-23 12:20:08', '2024-10-29 09:47:18'),
(28, 14, 1, 66, 'boy', 'damascus', 'boy.damascus@gmail.com', '112233445566', 'eyJpdiI6IjRXL01tZEZGZ3poKzlvS2M2N1NNNHc9PSIsInZhbHVlIjoiRkt5S0k3ZHh5NW9TQmFiUEF6MURqdz09IiwibWFjIjoiZmVlZTc3NmYzMDYzMWYwYjA1MjNmMWM4Yjg3YmJmY2M3ODE3MjNlMjc1YTg1YmJlZDBiNThhZjgwOWQzNTZiOCIsInRhZyI6IiJ9', NULL, '2024-10-23 12:21:06', '2024-10-23 12:23:54'),
(29, 2, 1, 64, 'warehouse', 'aleppo', 'warehouse.aleppo@gmail.com', '123556666', 'eyJpdiI6IlZCNWZjeHEySmFnd2JlL0NmYlV1WUE9PSIsInZhbHVlIjoiR0RLdklvVGRUdmJubnA2Y3BLUktEUT09IiwibWFjIjoiYThkOGVjOTI2OTEyZDI4ZjY2YWNiZTNlMjMzN2MzMzNkOWIxZjgwN2QzMDEyN2JiYjAwYmZmNTcyZDczZDVkOSIsInRhZyI6IiJ9', NULL, '2024-10-23 12:22:29', '2024-10-23 12:24:11'),
(30, 14, 1, 65, 'warehouse', 'damascus', 'warehouse.damascus@gmail.com', '234567432', 'eyJpdiI6IkQvTkNGVGJ4SndVMFRQcW1aenV0TGc9PSIsInZhbHVlIjoiL0w1emYxTVRJOXEzZTJ0Q0EyZElvUT09IiwibWFjIjoiMWViYjU0YWQ5YzEyYTI4NTgxZGZhY2UyMzMxYTAxZDU3OGRkN2E4M2I0YmYyMjQyMjRjZjllNDY2NjIxNjFjZCIsInRhZyI6IiJ9', NULL, '2024-10-23 12:23:27', '2024-10-29 09:05:30'),
(31, 2, 1, 68, 'Operation', 'manager', 'Operationmanager@emp.com', '1235664325', 'eyJpdiI6IkJlMStLWGQrcU1ZbERPK2FONzUwWFE9PSIsInZhbHVlIjoiUlRvQ0tweHFrajF2Q1Y2S2tUbFJMQT09IiwibWFjIjoiM2Q5N2MxOGViOTBjMTU0ZTQ5YzBjODY3M2QxMjQ5NzY4NzE0ZjZmNDhmYzQ0OTUyMmJhZDE4YWFjOWQ0YzVjNSIsInRhZyI6IiJ9', NULL, '2024-10-23 12:51:29', '2024-10-29 09:23:13'),
(54, NULL, NULL, 89, 'data', 'entry1', 'entry1@emp.com', '0987654456', 'eyJpdiI6IllwSWM1VjRIODF3MG9Rc1E3OWNOWVE9PSIsInZhbHVlIjoiRU9lNGZDQlFIVitYYzNuYUFjS2VpZz09IiwibWFjIjoiM2Q0NmU3NTM5MTYwNDVkNmFlOTU1MGYwNjljYzBiMmNlOWZhNjgzZGJiZGYzOWE5MjNiMDgwODUyNTZkZmRjZiIsInRhZyI6IiJ9', NULL, '2024-10-29 07:51:12', '2025-01-09 10:06:26'),
(55, NULL, NULL, 85, 'majd', 'kikhia', 'majd888@gmail.com', '0936482744', 'eyJpdiI6ImJTWDUxdERmaHdYaStOeFd2emJaZWc9PSIsInZhbHVlIjoid2RHWWg0TFZJYUs3bTNLbFJzeEhlUT09IiwibWFjIjoiZjg3ZWUxYzEwNTVhYzJlOGUzMGMwNzc2NTZiZjVlYmMxNDg3NWVhNTRlOTljZGNiMmMyNTg5MzlkMWQ2N2ExNyIsInRhZyI6IiJ9', NULL, '2024-10-29 09:41:37', '2024-11-10 07:52:46'),
(57, NULL, NULL, 87, 'delivery', 'admin', 'DeliveryAdmin@emp.com', '0987654321', 'eyJpdiI6ImVRUVMxNi8zQVlySDA0QUd4MTd4RHc9PSIsInZhbHVlIjoiT20xemtJZDVvOWdiQ3oxamRjMFZxUT09IiwibWFjIjoiNWYzNjVlZTcyNzQ5M2JjNmE5MzU2MjM2ZjAyOGU3MjI3MzU2MjM4NTg0YjFhOTkwMmUxZGYzN2Q3NTdlODNiMSIsInRhZyI6IiJ9', NULL, '2024-11-05 10:00:31', '2024-11-10 07:59:32'),
(58, 17, NULL, 88, 'latakia', 'manager', 'warehouse.latakia@gmail.com', '0987654321', 'eyJpdiI6IllwSWM1VjRIODF3MG9Rc1E3OWNOWVE9PSIsInZhbHVlIjoiRU9lNGZDQlFIVitYYzNuYUFjS2VpZz09IiwibWFjIjoiM2Q0NmU3NTM5MTYwNDVkNmFlOTU1MGYwNjljYzBiMmNlOWZhNjgzZGJiZGYzOWE5MjNiMDgwODUyNTZkZmRjZiIsInRhZyI6IiJ9', NULL, '2024-11-10 09:55:44', '2024-11-10 09:55:44'),
(59, NULL, NULL, 90, 'data', 'entry2', 'entry2@emp.com', '0987655677', 'eyJpdiI6ImxTRHJuVE51WDRwS0F5ZXhHM0VGRHc9PSIsInZhbHVlIjoiYzBXeEdaOGF3bk94V3NwQlFoTzRmQT09IiwibWFjIjoiYzhiOTRiYmQ5MDQ2NDJhNDI5ZWRlYWFiZWMyNjc5MTc4MDRmYTVjYjljYTRiOGQ0ZjgzMjhhOThjMGRhN2RlYyIsInRhZyI6IiJ9', NULL, '2025-01-09 10:07:11', '2025-01-09 10:07:32'),
(60, NULL, NULL, 91, 'data', 'entry3', 'entry3@emp.com', '0987655678', 'eyJpdiI6Im1wUmhCYmw3aGYwVkZSaklJTUhZSmc9PSIsInZhbHVlIjoiRE5YWUlaVnVVUUQyV0hwMUlGTGpvZz09IiwibWFjIjoiYTdiNzBhMDgyMTlhYjY1ZTU0MzkyZjlkYzVhY2RkMTFkNWIzZDYyYWFmNzA4MjY2M2UxMmRiYzc0YmE2MDhkMiIsInRhZyI6IiJ9', NULL, '2025-01-09 10:07:59', '2025-01-09 10:07:59'),
(61, NULL, NULL, 92, 'data', 'entry4', 'entry4@emp.com', '0987665678', 'eyJpdiI6InhkZ0pObzZmbHYxREdoK1JvcGt0NUE9PSIsInZhbHVlIjoiQWRVY0dDenVtZmphNGJTZ2VidjRJQT09IiwibWFjIjoiYzFhZmJmZDBjODA1ZGI0ZDkzNGZjMzAxNzMyMjQ5MWE1ZWNhNjgzYWQwYTY1ZGQ4YjU1MmQ5Y2ZkNzdiMjc4NCIsInRhZyI6IiJ9', NULL, '2025-01-09 10:08:29', '2025-01-09 10:08:29'),
(62, 14, 1, 84, 'Abdulaziz', 'Dablo', 'abooddablo@gmail.com', '0952758019', 'eyJpdiI6ImlHek9BdExXaThQSzRJSHJ1U1N6MVE9PSIsInZhbHVlIjoiUDg1b2crZHBtdGNFWEZFR0hsRTBCUT09IiwibWFjIjoiNzlhNzQ4YjM2YmZhN2FlZTE1ZjFjNDgxOTNmNzA0YmVhYTQ4NTRiOGM5OWFmMTlkMTQzOGIzY2YyNmQ1YjBkNSIsInRhZyI6IiJ9', NULL, '2025-02-05 13:08:52', '2025-02-05 13:08:52');

-- --------------------------------------------------------

--
-- Table structure for table `exchanges`
--

CREATE TABLE `exchanges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `exchange_date` datetime NOT NULL,
  `quantity` smallint(6) NOT NULL,
  `total_exchange` decimal(10,2) NOT NULL,
  `status` varchar(200) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exhange_items`
--

CREATE TABLE `exhange_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exchange_id` bigint(20) UNSIGNED NOT NULL,
  `product_variation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `returned_product_variation_id` bigint(20) UNSIGNED NOT NULL,
  `in_quantity` smallint(6) NOT NULL,
  `out_quantity` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(200) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fcm_tokens`
--

CREATE TABLE `fcm_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `device_name` varchar(200) NOT NULL,
  `lang` varchar(2) DEFAULT NULL,
  `fcm_token` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(200) NOT NULL,
  `content` varchar(200) NOT NULL,
  `rate` double NOT NULL,
  `status` varchar(200) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(512) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `promotion_type` varchar(200) DEFAULT NULL,
  `expired` tinyint(1) NOT NULL DEFAULT 0,
  `valid` tinyint(1) NOT NULL DEFAULT 1,
  `percentage` int(11) DEFAULT NULL,
  `number_of_items` int(11) DEFAULT NULL,
  `image_path` varchar(200) NOT NULL,
  `image_thumbnail` varchar(200) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `lat` decimal(6,4) DEFAULT NULL,
  `long` decimal(6,4) DEFAULT NULL,
  `polygon` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `code` varchar(200) NOT NULL,
  `city` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`city`)),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `name`, `lat`, `long`, `polygon`, `code`, `city`, `deleted_at`, `created_at`, `updated_at`, `city_id`) VALUES
(2, 'Aleppo Warehouse', 36.2167, 37.1667, '[[37.12305743527597,36.24490178218605],[37.10647488478335,36.22531371968414],[37.11177178015578,36.19421666113983],[37.126334210741334,36.16786769058636],[37.2028745285991,36.190712961459695],[37.21414869692157,36.2336425153258],[37.172266689817775,36.24869566953191],[37.12305743527597,36.24490178218605]]', 'AW2', '{\"en\":\"Aleppo\",\"ar\":\"\\u062d\\u0644\\u0628\"}', NULL, '2024-01-10 19:57:54', '2025-03-02 09:40:00', 3),
(14, 'Damascus Inventory', NULL, NULL, '[[36.28130142221295,33.5636865947823],[36.19931179556917,33.53352927368201],[36.20621067477049,33.47016472098019],[36.31201818081897,33.45886722470098],[36.35746946213885,33.55396952071371],[36.32177122072133,33.57120385403485],[36.28130142221295,33.5636865947823]]', 'DW1', '{\"ar\":\"\\u0645\\u062d\\u0627\\u0641\\u0638\\u0629 \\u062f\\u0645\\u0634\\u0642\"}', NULL, '2024-10-20 10:12:24', '2025-03-02 08:21:47', 6),
(17, 'Latakia', NULL, NULL, '[[35.76419745540125,35.5611788452069],[35.7657106928125,35.54534105326462],[35.77177932241305,35.527376253099256],[35.7667047323152,35.5184413156035],[35.77,35.5114413156035],[35.803287512513336,35.50211893727779],[35.82040525017926,35.50195112493717],[35.83655276293854,35.51509259412453],[35.83968208007432,35.52728588978629],[35.82993299115929,35.53960145954878],[35.82445529978718,35.54857626329077],[35.81154170334323,35.55368138108314],[35.79454396753849,35.55821787073136],[35.77613491793957,35.5642340572541],[35.76524621826807,35.56447026905627],[35.76419745540125,35.5611788452069]]', 'L111', '{\"ar\":\"\\u0645\\u062d\\u0627\\u0641\\u0638\\u0629 \\u0627\\u0644\\u0644\\u0627\\u0630\\u0642\\u064a\\u0629\"}', NULL, '2024-11-10 09:51:52', '2025-03-01 10:58:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `shipment_id` bigint(20) UNSIGNED NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `fees` decimal(8,2) NOT NULL,
  `total_payment` decimal(10,2) NOT NULL,
  `invoice_number` varchar(200) NOT NULL,
  `gift_card_balance` varchar(20) DEFAULT NULL,
  `coupon_percenage` int(3) DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laravel_model_recommendation_table`
--

CREATE TABLE `laravel_model_recommendation_table` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `recommendation_name` varchar(100) NOT NULL DEFAULT 'default',
  `source_type` varchar(200) NOT NULL,
  `source_id` bigint(20) UNSIGNED NOT NULL,
  `target_type` varchar(200) NOT NULL,
  `target_id` bigint(20) UNSIGNED NOT NULL,
  `order_column` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `last_viewed`
--

CREATE TABLE `last_viewed` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(200) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_03_101303_create_accounts_table', 1),
(6, '2023_05_20_120559_create_sections_table', 1),
(7, '2023_05_21_095303_create_inventories_table', 1),
(8, '2023_05_21_095305_create_shifts_table', 1),
(9, '2023_05_21_095306_create_employees_table', 1),
(10, '2023_05_21_095307_create_categories_table', 1),
(11, '2023_05_21_095800_create_sub_categories_table', 1),
(12, '2023_05_21_100030_create_discounts_table', 1),
(13, '2023_05_21_100035_create_groups_table', 1),
(14, '2023_05_21_100039_create_sizes_table', 1),
(15, '2023_05_21_10003_create_variations_table', 1),
(16, '2023_05_21_100040_create_colors_table', 1),
(17, '2023_05_21_100041_create_products_table', 1),
(18, '2023_05_21_100044_create_product_variations_table', 1),
(19, '2023_05_21_100332_create_photos_table', 1),
(20, '2023_05_21_103504_create_offers_table', 1),
(21, '2023_05_22_061836_create_reviews_table', 1),
(22, '2023_05_22_063524_create_cities_table', 1),
(23, '2023_05_22_063525_create_branches_table', 1),
(24, '2023_05_22_063527_create_coupons_table', 1),
(25, '2023_05_22_063528_create_addresses_table', 1),
(26, '2023_05_22_063528_create_packages_table', 1),
(27, '2023_05_22_063529_create_orders_table', 1),
(28, '2023_05_22_063530_create_feedbacks_table', 1),
(29, '2023_05_22_065217_create_return_orders_table', 1),
(30, '2023_05_22_065218_create_order_items_table', 1),
(31, '2023_05_22_065219_create_sub_orders_table', 1),
(32, '2023_05_22_065220_create_shipments_table', 1),
(33, '2023_05_22_072408_create_favourites_table', 1),
(34, '2023_05_22_120134_create_pricings_table', 1),
(35, '2023_05_22_160704_create_transfers_table', 1),
(36, '2023_05_22_160721_create_transfer_items_table', 1),
(37, '2023_05_23_120419_create_transactions_table', 1),
(38, '2023_05_28_115828_create_stock_levels_table', 1),
(39, '2023_05_28_120013_create_stock_movements_table', 1),
(40, '2023_06_04_083237_create_comments_table', 1),
(41, '2023_06_25_065523_create_notifies_table', 1),
(42, '2023_07_13_120747_create_size_guides_table', 1),
(43, '2023_07_16_092316_create_group_offers_table', 1),
(44, '2023_07_16_092345_create_group_discounts_table', 1),
(45, '2023_08_15_094545_create_user_complaints_table', 1),
(46, '2023_08_20_094837_create_model_recommendation_table', 1),
(47, '2023_09_19_075021_create_settings_table', 1),
(48, '2023_09_20_092845_create_ban_histories_table', 1),
(49, '2023_09_20_111152_create_notifications_table', 1),
(50, '2023_09_26_073358_create_fcm_tokens_table', 1),
(51, '2023_10_23_083139_create_stock_variations_table', 1),
(52, '2023_11_22_095619_create_last_viewed_table', 1),
(53, '2023_11_28_104901_add_gift_id_to_orders_table', 1),
(54, '2023_11_29_071448_add_paid_by_user_covered_by_gift_card_discounted_by_coupon_to_orders_table', 1),
(55, '2023_12_03_101029_create_roles_table', 1),
(56, '2023_12_03_102239_create_assign_durations_table', 1),
(57, '2023_12_03_102957_create_account_role_table', 1),
(58, '2023_12_04_062639_add_on_hold_to_stock_levels_table', 1),
(59, '2023_12_04_095127_add_to_inventory_final_date_to_order_items_table', 1),
(60, '2023_12_04_100345_add_on_hold_to_order_items_table', 1),
(61, '2023_12_06_080756_create_reports_table', 1),
(62, '2023_12_06_085820_create_report_role_table', 1),
(63, '2023_12_06_105837_add_type_to_reports_table', 1),
(64, '2023_12_07_110332_add_from_to_reports_table', 1),
(65, '2023_12_07_122704_add_sender_role_duration_to_reports_table', 1),
(66, '2023_12_10_075812_add_rate_to_reports_table', 1),
(67, '2023_12_11_081919_add_lat_long_to_inventories_table', 1),
(68, '2023_12_12_100624_create_request_statuses_table', 1),
(69, '2023_12_12_100625_create_cargo_requests_table', 1),
(70, '2023_12_12_102705_create_cargo_shipments_table', 1),
(71, '2023_12_12_102706_create_shipment_product_variations_table', 1),
(72, '2023_12_12_103312_create_request_product_variations_table', 1),
(73, '2023_12_20_082442_add_city_id_to_inventories_table', 1),
(74, '2023_12_20_084639_add_city_id_to_shipments_table', 1),
(75, '2023_12_20_084716_add_city_id_to_addresses_table', 1),
(76, '2023_12_20_122952_add_express_to_shipments_table', 1),
(77, '2024_01_04_085021_create_user_verifications_table', 1),
(82, '2018_08_08_100000_create_telescope_entries_table', 2),
(83, '2024_01_28_091108_add_new_fields_to_transactions_table', 2),
(84, '2024_01_31_091437_add_group_id_to_offers_table', 2),
(85, '2024_01_31_091527_add_group_id_to_discounts_table', 3),
(86, '2024_02_11_193434_create_audits_table', 4),
(87, '2024_02_14_101053_create_app_settings_table', 5),
(90, '2024_01_15_081615_create_refund_items_table', 7),
(92, '2024_01_15_081329_create_refunds_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(200) NOT NULL,
  `title` text NOT NULL,
  `body` text NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifies`
--

CREATE TABLE `notifies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_variation_id` bigint(20) UNSIGNED NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`name`)),
  `type` varchar(200) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `original_order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `address_id` bigint(20) UNSIGNED DEFAULT NULL,
  `inventory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `packaging_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coupon_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gift_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `invoice_number` varchar(200) DEFAULT NULL,
  `packed_date` datetime DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `shipping_date` datetime DEFAULT NULL,
  `receiving_date` datetime DEFAULT NULL,
  `total_price` double DEFAULT NULL COMMENT 'this is the price of all items with offers but without applying gift and coupon',
  `price_without_offers` double DEFAULT NULL COMMENT 'this is the price of all items if there was no offers',
  `paid_by_user` double DEFAULT NULL COMMENT 'this is the price of all items with offers and after applying the gift card and coupon\r\n',
  `covered_by_gift_card` double DEFAULT NULL,
  `discounted_by_coupon` double DEFAULT NULL,
  `total_quantity` int(11) NOT NULL,
  `type` varchar(200) NOT NULL DEFAULT 'xo-delivery',
  `is_gift` tinyint(1) NOT NULL DEFAULT 0,
  `gift_message` text DEFAULT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `closed` tinyint(1) NOT NULL DEFAULT 0,
  `replacedOrReturned` tinyint(1) NOT NULL DEFAULT 0,
  `status` varchar(200) NOT NULL DEFAULT 'processing',
  `delivery_type` varchar(20) DEFAULT NULL,
  `payment_method` varchar(200) NOT NULL,
  `need_packaging` tinyint(1) NOT NULL DEFAULT 0,
  `shipping_fee` double NOT NULL,
  `qr_code` varchar(200) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_current_items`
--

CREATE TABLE `order_current_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_variation_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` varchar(200) NOT NULL,
  `original_price` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  `reason` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_variation_id` bigint(20) UNSIGNED NOT NULL,
  `return_order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `group_id` bigint(11) UNSIGNED DEFAULT NULL,
  `quantity` varchar(200) NOT NULL,
  `original_inventory` int(11) DEFAULT NULL COMMENT 'this will be used to check when user return items, so we can decrease the sold items on the original source',
  `to_inventory` bigint(20) UNSIGNED DEFAULT NULL,
  `final_date` datetime DEFAULT NULL,
  `original_price` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `on_hold` tinyint(1) NOT NULL DEFAULT 0,
  `promotion_name` varchar(40) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `show_in_stock` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`name`)),
  `type` varchar(200) NOT NULL,
  `image_url` varchar(200) DEFAULT NULL,
  `valid` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(200) NOT NULL,
  `token` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(200) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `valid` tinyint(1) NOT NULL DEFAULT 1,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `valid`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(7, 'App\\Models\\Employee', 1, 'authToken', '2bf1ea4bc1980eea15913623a292ef4d7246e8925212142b085a3230e5b1e4cc', '[\"main-admin\"]', 1, '2024-11-25 12:54:42', NULL, '2024-11-25 12:47:24', '2024-11-25 12:54:42'),
(8, 'App\\Models\\Employee', 1, 'authToken', '1bd2c9251c972cf2351f89ac73eeca10237525d9ac10777c2623b585bbd0b6bd', '[\"main-admin\"]', 1, '2024-11-26 06:43:32', NULL, '2024-11-26 06:36:57', '2024-11-26 06:43:32'),
(10, 'App\\Models\\User', 10, 'authToken', 'a5d1f29d8c22dd22db790adf51804425f69b74ccd4c32dadf9afebd4c26a3f2e', '[\"user_rt\"]', 1, NULL, '2024-12-04 07:21:26', '2024-11-27 07:21:25', '2024-11-27 07:21:26'),
(11, 'App\\Models\\User', 10, 'authToken', '0fd858dc03880970868652dd48098f2db17e3ecf53b8a638b2b8c676ce31da9d', '[\"user\"]', 1, '2024-11-27 10:54:29', NULL, '2024-11-27 08:58:31', '2024-11-27 10:54:29'),
(13, 'App\\Models\\User', 10, 'authToken', 'b8b7a5f5c24297d3d0417b932c921add5771b5a8a5859dfdec304bef96d4be89', '[\"user_rt\"]', 1, NULL, '2024-12-05 07:33:32', '2024-11-28 07:33:32', '2024-11-28 07:33:32'),
(14, 'App\\Models\\User', 10, 'authToken', '880587c356e03d5c40466dff11f8be0369074d9102c010cee75a940c7873e31c', '[\"user\"]', 1, '2024-12-17 07:46:50', NULL, '2024-11-28 10:33:33', '2024-12-17 07:46:50'),
(15, 'App\\Models\\User', 10, 'authToken', 'aabe144132e451a2077c75ac7392ab76a333753a5f9509473800c4728ae25ba9', '[\"user_rt\"]', 1, NULL, '2024-12-05 10:33:33', '2024-11-28 10:33:33', '2024-11-28 10:33:33'),
(16, 'App\\Models\\Employee', 1, 'authToken', '5067bc82eddec7a6d3b3bed89a6f257d2ca2ed1251a307a8f360ceb812a298aa', '[\"main-admin\"]', 1, '2024-11-29 11:28:55', NULL, '2024-11-29 11:28:49', '2024-11-29 11:28:55'),
(17, 'App\\Models\\User', 10, 'authToken', '34d905bf5f5182392c010f8fb4f194a991dbbcd0379a6ca4fb917a52621e8c90', '[\"user\"]', 1, '2024-11-29 11:35:09', '2024-12-06 10:12:56', '2024-11-29 11:32:56', '2024-11-29 11:35:09'),
(18, 'App\\Models\\User', 10, 'authToken', '84e6e1af9120b98b510e07c83916122f04ea895f727a71ab18a2620e8f6c5e99', '[\"user_rt\"]', 1, NULL, '2024-12-06 11:32:56', '2024-11-29 11:32:56', '2024-11-29 11:32:56'),
(19, 'App\\Models\\Employee', 1, 'authToken', '292976add8c92f0aaa35012cfd11eaee79a09184f242ccaea2bf06faf5112eef', '[\"main-admin\"]', 1, '2024-12-01 08:20:27', NULL, '2024-12-01 08:20:23', '2024-12-01 08:20:27'),
(20, 'App\\Models\\User', 11, 'authToken', '1e3d9d4a33d721173854c8f391aa4b5dff9bc45bc96c3ec94eace04f722d5180', '[\"user\"]', 1, '2024-12-03 12:17:09', NULL, '2024-12-03 06:45:31', '2024-12-03 12:17:09'),
(23, 'App\\Models\\User', 12, 'authToken', '250c3ba86593c0b13ea25e5c78f09b4608f996e371d7c61e6e2ee656c38a7373', '[\"user\"]', 1, NULL, NULL, '2024-12-03 10:09:00', '2024-12-03 10:09:00'),
(24, 'App\\Models\\User', 12, 'authToken', 'db9d6e8f11f947a171bc118f23e7b5d816eb6fa7cb0847024915dd30fddb08a2', '[\"user\"]', 1, '2024-12-03 12:28:19', '2024-12-10 08:49:16', '2024-12-03 10:09:16', '2024-12-03 12:28:19'),
(25, 'App\\Models\\User', 12, 'authToken', 'b4a85561950cbc9afd096b4db53dc1704b02ba65c0753b7155cd3d9c6e148a54', '[\"user_rt\"]', 1, NULL, '2024-12-10 10:09:16', '2024-12-03 10:09:16', '2024-12-03 10:09:16'),
(26, 'App\\Models\\User', 10, 'authToken', 'dc0366a0d5a23f723f4e5df56619c6f1e8d23e4940156fd936ada20fea205870', '[\"user\"]', 1, '2024-12-04 06:42:31', '2024-12-10 09:22:53', '2024-12-03 10:42:53', '2024-12-04 06:42:31'),
(27, 'App\\Models\\User', 10, 'authToken', 'e0f310ec6ff20c6e8e4dc3538e01f40271f15310819e04c98ba7be9b63980cc6', '[\"user_rt\"]', 1, NULL, '2024-12-10 10:42:53', '2024-12-03 10:42:53', '2024-12-03 10:42:53'),
(28, 'App\\Models\\Employee', 30, 'authToken', '69912f3c301c39f2be3b955e32bcb8ab3deb1fe62c7c11dee76652306d75ff87', '[\"warehouse-manager\"]', 1, '2024-12-03 12:08:10', NULL, '2024-12-03 12:05:47', '2024-12-03 12:08:10'),
(29, 'App\\Models\\User', 10, 'authToken', '130b4f81bc5a2643585e2d28321eb6a60d000a35d1851fbd7833c6254f7d4772', '[\"user\"]', 1, '2024-12-04 07:09:48', '2024-12-11 05:49:34', '2024-12-04 07:09:34', '2024-12-04 07:09:48'),
(30, 'App\\Models\\User', 10, 'authToken', '4073ecbb0325b4d4b07826d507dab5033c5623fba97eda0c2279463394ff4c5d', '[\"user_rt\"]', 1, NULL, '2024-12-11 07:09:34', '2024-12-04 07:09:34', '2024-12-04 07:09:34'),
(31, 'App\\Models\\User', 10, 'authToken', 'c5ef5d9efeee15e11edb72f89ef5072409f5d044892a3d160f1b58366ab4c0d6', '[\"user\"]', 1, '2024-12-04 07:11:07', '2024-12-11 05:51:03', '2024-12-04 07:11:03', '2024-12-04 07:11:07'),
(32, 'App\\Models\\User', 10, 'authToken', '17a13fac2a8cad329d3bc958b0c37fbc1e3928a7ed714fb581799477f5ef3ec4', '[\"user_rt\"]', 1, NULL, '2024-12-11 07:11:03', '2024-12-04 07:11:03', '2024-12-04 07:11:03'),
(33, 'App\\Models\\User', 10, 'authToken', 'a8c6cca30cd96ae97af27f8276ac07f8bbfaa4fc3e1a14e47c85d82abd8fc8a6', '[\"user\"]', 1, '2024-12-04 10:18:47', '2024-12-11 08:54:22', '2024-12-04 10:14:22', '2024-12-04 10:18:47'),
(34, 'App\\Models\\User', 10, 'authToken', '1b63d96bfccec4b99def6f9e7024c27c7a9c92b73a960d26fb72da7f5d21c489', '[\"user_rt\"]', 1, NULL, '2024-12-11 10:14:22', '2024-12-04 10:14:22', '2024-12-04 10:14:22'),
(36, 'App\\Models\\User', 11, 'authToken', 'd94f3e63daeb900b45a7d3d05f1aa3a24414fa1f5c912e7f521475053649faae', '[\"user_rt\"]', 1, NULL, '2024-12-11 10:26:28', '2024-12-04 10:26:28', '2024-12-04 10:26:28'),
(37, 'App\\Models\\Employee', 1, 'authToken', '96368196ef277007503e013551a0f2adf09ba069b6becfa3c4d3fc121d0bb35f', '[\"main-admin\"]', 1, '2024-12-04 11:00:57', NULL, '2024-12-04 10:27:38', '2024-12-04 11:00:57'),
(39, 'App\\Models\\Employee', 1, 'authToken', 'a957fddffdc5cc234e88adec15fcd13b31f36c0a0968116c5682fdc0c934be68', '[\"main-admin\"]', 1, '2024-12-04 11:51:42', NULL, '2024-12-04 11:50:05', '2024-12-04 11:51:42'),
(41, 'App\\Models\\Employee', 30, 'authToken', 'a1ad99eadccfcf0a654086182a456c6fdcde35d1a3fc657d2999dc6030a15fdc', '[\"warehouse-manager\"]', 1, '2024-12-05 10:46:57', NULL, '2024-12-05 10:46:56', '2024-12-05 10:46:57'),
(42, 'App\\Models\\User', 11, 'authToken', '311d9b33a290eb8fef6b8f6200296a7370cc0bfdbb5929c7f7c055fc3e55a872', '[\"user\"]', 1, '2025-01-12 09:03:19', NULL, '2024-12-15 11:27:14', '2025-01-12 09:03:19'),
(43, 'App\\Models\\User', 11, 'authToken', '9dd2be970ec75475925e3a8644c2f613bdae8d77bba2c059ad25353c047c2b48', '[\"user_rt\"]', 1, NULL, '2024-12-22 11:27:14', '2024-12-15 11:27:14', '2024-12-15 11:27:14'),
(45, 'App\\Models\\User', 11, 'authToken', 'f36bc35dc5c382322e17ba34a10b717ce8742e42d69dc9d8be9cf8cf2ac10164', '[\"user_rt\"]', 1, NULL, '2024-12-25 07:00:30', '2024-12-18 07:00:30', '2024-12-18 07:00:30'),
(46, 'App\\Models\\Employee', 30, 'authToken', '06bf71c67cd9a71cedab00bfa13820a0ac960bf4899c0eb5fb432e79c97ad89a', '[\"warehouse-manager\"]', 1, '2024-12-18 07:06:45', NULL, '2024-12-18 07:06:43', '2024-12-18 07:06:45'),
(47, 'App\\Models\\User', 10, 'authToken', '1d3e88e9076c73aad3adadb240fecf7f5fc3c379bd368286e81bbdc3f93abcf0', '[\"user\"]', 1, '2024-12-18 07:39:17', NULL, '2024-12-18 07:07:16', '2024-12-18 07:39:17'),
(48, 'App\\Models\\User', 10, 'authToken', '788f87b4ec65b50db9ec348c86dfad99548cdeab7496a5b4b734198bdc4d785d', '[\"user_rt\"]', 1, NULL, '2024-12-25 07:07:16', '2024-12-18 07:07:16', '2024-12-18 07:07:16'),
(49, 'App\\Models\\Employee', 1, 'authToken', '6588c44bbafe9a5270115c868166b5ce66bdb67cf38b8a9fa25dd2e44dff1aa6', '[\"main-admin\"]', 1, '2024-12-18 07:48:34', NULL, '2024-12-18 07:47:36', '2024-12-18 07:48:34'),
(50, 'App\\Models\\Employee', 1, 'authToken', '1d154da2745d4abe9f618b283010107fc43d37a536071d1b7bb5527b92d7d087', '[\"main-admin\"]', 1, '2024-12-21 10:34:24', NULL, '2024-12-21 07:53:25', '2024-12-21 10:34:24'),
(53, 'App\\Models\\User', 11, 'authToken', '57e3d4ac041e65eca6725d2abe49d959f1a7cdf8d95cae5ef2f6a80e0774755d', '[\"user_rt\"]', 1, NULL, '2024-12-29 08:43:10', '2024-12-22 08:43:10', '2024-12-22 08:43:10'),
(54, 'App\\Models\\Employee', 1, 'authToken', 'bc1508d0432c7771de976babdd1b34edc8a7f9381aba7b9d0e95c03fb441308c', '[\"main-admin\"]', 1, '2024-12-22 09:38:14', NULL, '2024-12-22 08:59:37', '2024-12-22 09:38:14'),
(55, 'App\\Models\\Employee', 31, 'authToken', '6e1cd6678520a52e272270961553918918868f8dc3e9d2d85137c281f9f8830c', '[\"operation-manager\"]', 1, '2024-12-22 09:37:51', NULL, '2024-12-22 09:34:06', '2024-12-22 09:37:51'),
(56, 'App\\Models\\User', 10, 'authToken', 'ee25b12d94f5d9689759ae58750ca8702c9fc3c97bd69c50ca384eb27e4bb08e', '[\"user\"]', 1, '2024-12-22 10:59:56', '2024-12-29 09:38:54', '2024-12-22 10:58:53', '2024-12-22 10:59:56'),
(57, 'App\\Models\\User', 10, 'authToken', '47acde6e539f7ebad8a2e9bf2ba180371f03163d550b577c018582ef3de0e6b7', '[\"user_rt\"]', 1, NULL, '2024-12-29 10:58:54', '2024-12-22 10:58:54', '2024-12-22 10:58:54'),
(58, 'App\\Models\\User', 10, 'authToken', '57a7bd1b31fdddde4b28e6b4b8c704bdb2334bca58b178f3527c466c3834cc54', '[\"user\"]', 1, '2024-12-23 08:05:14', '2024-12-29 11:40:55', '2024-12-22 13:00:55', '2024-12-23 08:05:14'),
(59, 'App\\Models\\User', 10, 'authToken', '227c8d6e7589a5158fa456f1997f724027507d51aacb3ac9bf084b5dd2694d96', '[\"user_rt\"]', 1, NULL, '2024-12-29 13:00:55', '2024-12-22 13:00:55', '2024-12-22 13:00:55'),
(62, 'App\\Models\\Employee', 29, 'authToken', 'dd02c172227710e8f4518c07fa7276014794e1288ae9da834232c065d0bab70c', '[\"warehouse-manager\"]', 1, '2024-12-23 09:31:18', NULL, '2024-12-23 09:29:28', '2024-12-23 09:31:18'),
(63, 'App\\Models\\Employee', 28, 'authToken', 'e0539dbad914260a335bad314ddaacaf3f6a5965f0dc17a88f5baa45a46226f6', '[\"delivery-boy\"]', 1, '2024-12-29 07:50:06', NULL, '2024-12-23 09:40:56', '2024-12-29 07:50:06'),
(65, 'App\\Models\\User', 11, 'authToken', 'e9cd8ce1a95b454587b3fd7af814a0476b448eb2882d253217cb5501bcd41b1c', '[\"user_rt\"]', 1, NULL, '2024-12-30 11:00:48', '2024-12-23 11:00:48', '2024-12-23 11:00:48'),
(66, 'App\\Models\\User', 11, 'authToken', '58178ef24e4b848587eb1ebde7e0024087c0c866c08a3065e106ad38ba27459b', '[\"user\"]', 1, '2024-12-24 12:27:16', NULL, '2024-12-23 11:09:04', '2024-12-24 12:27:16'),
(67, 'App\\Models\\User', 11, 'authToken', '09c9ec79934a4518db6fb2103ba1be82f19a1e4075c1a599da1b7be0f103cddb', '[\"user_rt\"]', 1, NULL, '2024-12-30 11:09:04', '2024-12-23 11:09:04', '2024-12-23 11:09:04'),
(68, 'App\\Models\\Employee', 30, 'authToken', '172467d5bbc5def5c3b788d62f0e969ac82ae26ac43cdffc59771f305c07d8ce', '[\"warehouse-manager\"]', 1, '2024-12-23 12:58:40', NULL, '2024-12-23 11:50:15', '2024-12-23 12:58:40'),
(69, 'App\\Models\\Employee', 1, 'authToken', '699b2f877fbc5d024ff52649c808719b306c9b3f47e97e1f8e12227bbf1e5169', '[\"main-admin\"]', 1, '2024-12-23 14:04:52', NULL, '2024-12-23 12:04:25', '2024-12-23 14:04:52'),
(71, 'App\\Models\\Employee', 1, 'authToken', 'a93edd9f09c08373687aaf1377de5d5005c89ae8d84afb5642579e4ae11c31ac', '[\"main-admin\"]', 1, '2024-12-24 13:33:10', NULL, '2024-12-24 06:47:31', '2024-12-24 13:33:10'),
(78, 'App\\Models\\Employee', 28, 'authToken', '07c20cc531ef8b97608408b3cf8577b854b43947a73b4694101a2689f7263526', '[\"delivery-boy\"]', 1, '2024-12-24 09:00:21', NULL, '2024-12-24 09:00:06', '2024-12-24 09:00:21'),
(79, 'App\\Models\\Employee', 1, 'authToken', '2763c63f16f8bfba2ca5049efb065b82c80677b565ca31acdde450bdf87574f3', '[\"main-admin\"]', 1, '2024-12-24 09:29:51', NULL, '2024-12-24 09:27:56', '2024-12-24 09:29:51'),
(80, 'App\\Models\\Employee', 30, 'authToken', '63f298296f420e7a8cc3ce1955d1f2f3a06d491368ae5d5dc5fd241436d1666b', '[\"warehouse-manager\"]', 1, '2024-12-24 12:03:33', NULL, '2024-12-24 09:43:26', '2024-12-24 12:03:33'),
(81, 'App\\Models\\Employee', 29, 'authToken', '067437bb7113cdcf5b8247b1272b30793069aea55f55083a9519725bda147198', '[\"warehouse-manager\"]', 1, '2024-12-26 13:01:54', NULL, '2024-12-24 09:45:32', '2024-12-26 13:01:54'),
(82, 'App\\Models\\Employee', 28, 'authToken', 'ba645b60abf0decac30180ee3f25278a1c045c83743998c424693186af4ae880', '[\"delivery-boy\"]', 1, '2024-12-24 12:33:44', NULL, '2024-12-24 10:57:19', '2024-12-24 12:33:44'),
(83, 'App\\Models\\Employee', 28, 'authToken', '848a7f3857b07fa6039fd43fc7070c5c3c7c6a17658fd841341904aef4ea6baa', '[\"delivery-boy\"]', 1, '2024-12-24 12:37:18', NULL, '2024-12-24 12:36:03', '2024-12-24 12:37:18'),
(85, 'App\\Models\\User', 11, 'authToken', '512bf513d50f6581644b2df52cdb9c896679f5f8dd2c2ffed8c1fee1a4405221', '[\"user_rt\"]', 1, NULL, '2025-01-01 07:06:23', '2024-12-25 07:06:23', '2024-12-25 07:06:23'),
(86, 'App\\Models\\Employee', 1, 'authToken', '0afce85f07696eabab98ec37e9161bebfd3ab7c722f1c88df07242bf51ef5b9f', '[\"main-admin\"]', 1, '2024-12-25 12:57:13', NULL, '2024-12-25 07:11:35', '2024-12-25 12:57:13'),
(93, 'App\\Models\\Employee', 1, 'authToken', '31a29b1e5162a2bcbecc38fbd12bf01f5eb0b6f649522a32e3fdb1c498fc4d23', '[\"main-admin\"]', 1, '2024-12-25 11:08:26', NULL, '2024-12-25 10:50:54', '2024-12-25 11:08:26'),
(96, 'App\\Models\\Employee', 30, 'authToken', '87cac1c8b472dfa5fb1632cc8ac6342b5971f171a64e7ec8b1edda69d9395cb7', '[\"warehouse-manager\"]', 1, '2024-12-25 11:14:52', NULL, '2024-12-25 11:14:16', '2024-12-25 11:14:52'),
(97, 'App\\Models\\User', 10, 'authToken', '5762123b8e84cebc8852d99fdb4c898e7ce52edca26774870fee088eb1ec353d', '[\"user\"]', 1, '2024-12-25 13:09:16', '2025-01-01 11:24:52', '2024-12-25 12:44:52', '2024-12-25 13:09:16'),
(98, 'App\\Models\\User', 10, 'authToken', 'faea03ce2c3de41039b6cf0d9c3754388e585bf246070da20b0adccdf3146834', '[\"user_rt\"]', 1, NULL, '2025-01-01 12:44:52', '2024-12-25 12:44:52', '2024-12-25 12:44:52'),
(99, 'App\\Models\\Employee', 1, 'authToken', '4aaff14028fa836a9f54dc8b4bec176a7cf68cd1f941cc780ccd72b450302274', '[\"main-admin\"]', 1, '2024-12-28 12:43:35', NULL, '2024-12-26 07:19:38', '2024-12-28 12:43:35'),
(102, 'App\\Models\\Employee', 30, 'authToken', 'c969b0902c4d137d3184fa7012fecf250e0237ee93397f8312c0c4324723bc5f', '[\"warehouse-manager\"]', 1, '2024-12-26 07:26:32', NULL, '2024-12-26 07:26:15', '2024-12-26 07:26:32'),
(103, 'App\\Models\\Employee', 30, 'authToken', 'df3a1a737472bba2f0ee4f29efdc687cb06b8f21508908f2ffb5132f21c033e2', '[\"warehouse-manager\"]', 1, '2024-12-26 07:35:40', NULL, '2024-12-26 07:34:30', '2024-12-26 07:35:40'),
(104, 'App\\Models\\Employee', 30, 'authToken', 'e3e83af17db1a59476ba98bdb05db3624a01394f9befd8749f961974e8ef9345', '[\"warehouse-manager\"]', 1, '2024-12-26 07:37:24', NULL, '2024-12-26 07:35:17', '2024-12-26 07:37:24'),
(105, 'App\\Models\\Employee', 30, 'authToken', 'd7e808b6ae857fd694a0190aa377f6cfe9e88dfcf099bbfe49aa743c5a811c2e', '[\"warehouse-manager\"]', 1, '2024-12-26 07:48:48', NULL, '2024-12-26 07:39:09', '2024-12-26 07:48:48'),
(111, 'App\\Models\\Employee', 28, 'authToken', '03ea7d06f6c65259496e1636e8a2fadba927cf5248355faa9f861d3533257cc6', '[\"delivery-boy\"]', 1, '2024-12-26 13:07:16', NULL, '2024-12-26 10:11:27', '2024-12-26 13:07:16'),
(113, 'App\\Models\\Employee', 30, 'authToken', 'dcc2be044b185624da0be18b9b5a944f4c70a8c935bddcad60efae5ac53364ea', '[\"warehouse-manager\"]', 1, '2024-12-26 12:08:11', NULL, '2024-12-26 12:07:59', '2024-12-26 12:08:11'),
(114, 'App\\Models\\Employee', 1, 'authToken', 'bc16e8316fae3423222bfcaa1a4d33536d59d6d17e9af0ef78b4b7a49d4c50a5', '[\"main-admin\"]', 1, '2024-12-26 12:24:52', NULL, '2024-12-26 12:24:46', '2024-12-26 12:24:52'),
(115, 'App\\Models\\User', 10, 'authToken', '2184474ecdbf40a443a3c055f4237c153d487170ad8f41f9a2a8101e9f3eb090', '[\"user\"]', 1, '2024-12-26 12:39:05', NULL, '2024-12-26 12:37:59', '2024-12-26 12:39:05'),
(116, 'App\\Models\\User', 10, 'authToken', 'ee4b5f9b0b39271ebca651f6fc90448a65425704d73a0a781418a36276f262e6', '[\"user_rt\"]', 1, NULL, '2025-01-02 12:37:59', '2024-12-26 12:37:59', '2024-12-26 12:37:59'),
(117, 'App\\Models\\User', 10, 'authToken', 'bb581aa4d3d476ad104b8c5bfaba5aaad9a9124e6e1b71b43b414caae571d539', '[\"user\"]', 1, '2025-01-06 08:01:36', NULL, '2024-12-26 12:45:04', '2025-01-06 08:01:36'),
(118, 'App\\Models\\User', 10, 'authToken', 'a9aec623dab3519f20c26504c878236f54b39db479c6df13f1b02486eeb649bc', '[\"user_rt\"]', 1, NULL, '2025-01-02 12:45:04', '2024-12-26 12:45:04', '2024-12-26 12:45:04'),
(121, 'App\\Models\\Employee', 1, 'authToken', 'd758b42589038f613b49c71f0156f5234d455861e1dde0014eb8472dc9bc2ec2', '[\"main-admin\"]', 1, '2024-12-28 12:43:03', NULL, '2024-12-28 08:29:59', '2024-12-28 12:43:03'),
(122, 'App\\Models\\Employee', 1, 'authToken', 'd8c70aa2a1ed375ffc0c3abaa094823b75e8b83a2589a5b1ec27144081d436ee', '[\"main-admin\"]', 1, '2024-12-28 14:22:33', NULL, '2024-12-28 08:37:47', '2024-12-28 14:22:33'),
(123, 'App\\Models\\Employee', 1, 'authToken', '70ff8cddecf68803b52275c087a2f010353c11f2ba9b5e926f3205e2230a55ee', '[\"main-admin\"]', 1, '2024-12-29 12:42:10', NULL, '2024-12-29 07:04:50', '2024-12-29 12:42:10'),
(126, 'App\\Models\\Employee', 28, 'authToken', '8a09440932815b60ca8446a677e73bcb3426ae34ab532c2aff863dadedf60495', '[\"delivery-boy\"]', 1, '2024-12-29 09:53:26', NULL, '2024-12-29 08:21:54', '2024-12-29 09:53:26'),
(128, 'App\\Models\\Employee', 27, 'authToken', 'e39999e2509dacf6db066f21321f037e12e5f0ef7373e369b466f9f0018af787', '[\"delivery-boy\"]', 1, '2025-01-09 09:44:38', NULL, '2024-12-29 10:41:08', '2025-01-09 09:44:38'),
(129, 'App\\Models\\Employee', 1, 'authToken', 'd4013217ad2fc9501d3c09f4dc12297d0aec1b8230cfdeca2bcd5997ba8e8018', '[\"main-admin\"]', 1, '2024-12-29 11:05:49', NULL, '2024-12-29 11:04:46', '2024-12-29 11:05:49'),
(130, 'App\\Models\\Employee', 1, 'authToken', '63ffa1bbce8889419b68ef1efd2558ede458cc5dce1493c2ee7e868bec339c54', '[\"main-admin\"]', 1, '2025-01-01 10:00:16', NULL, '2025-01-01 09:42:59', '2025-01-01 10:00:16'),
(133, 'App\\Models\\Employee', 1, 'authToken', '8294e75470ca4039cc571cc66d680a92972476c424521c8744f66deeec1c2663', '[\"main-admin\"]', 1, '2025-01-02 12:10:11', NULL, '2025-01-02 08:30:40', '2025-01-02 12:10:11'),
(134, 'App\\Models\\Employee', 29, 'authToken', '62b7a8767a9cd9a3eebf1418feb4c4bf06d09b68ff0c7e98ff43fb94f6263e1a', '[\"warehouse-manager\"]', 1, '2025-01-03 08:13:13', NULL, '2025-01-03 08:10:25', '2025-01-03 08:13:13'),
(135, 'App\\Models\\Employee', 29, 'authToken', '71de101739b85f23b3824a060398134e7b262f131221d7eb3e4fad7cf048bea3', '[\"warehouse-manager\"]', 1, '2025-01-03 20:04:34', NULL, '2025-01-03 17:01:10', '2025-01-03 20:04:34'),
(137, 'App\\Models\\Employee', 27, 'authToken', '683baefb72e4dad31c9fb539401b77f3b9e23c28ba2fa9fdc33c07ed0d1dc0ac', '[\"delivery-boy\"]', 1, '2025-01-04 08:50:00', NULL, '2025-01-04 08:47:37', '2025-01-04 08:50:00'),
(139, 'App\\Models\\Employee', 1, 'authToken', '560a8aab3c902965487f04be15f0924b4d75a59187f28e88502c801eaa308ff4', '[\"main-admin\"]', 1, '2025-01-04 14:29:34', NULL, '2025-01-04 10:57:29', '2025-01-04 14:29:34'),
(141, 'App\\Models\\Employee', 1, 'authToken', '867bdde8f41e411ba8e1fa849a93a9f050633de9a16e958a470d74c0f7c9d07a', '[\"main-admin\"]', 1, '2025-01-04 11:46:59', NULL, '2025-01-04 11:35:54', '2025-01-04 11:46:59'),
(143, 'App\\Models\\Employee', 31, 'authToken', '180bd5fca38b8f04e43e22f8e0e87daf328e39bdf0b346112e38f6f6f322640d', '[\"operation-manager\"]', 1, '2025-01-04 13:29:35', NULL, '2025-01-04 11:52:56', '2025-01-04 13:29:35'),
(145, 'App\\Models\\Employee', 31, 'authToken', '5e21e60d88746317ca37dce9e03dbb6fc54f109c0edf34743c1db5cfd2272c76', '[\"operation-manager\"]', 1, '2025-01-04 12:48:50', NULL, '2025-01-04 12:38:34', '2025-01-04 12:48:50'),
(146, 'App\\Models\\Employee', 1, 'authToken', '23c96b88592c0a564bbd66dcca8ed42c69018a2d5a6ea6ba1ed2bb97b3078123', '[\"main-admin\"]', 1, '2025-01-09 10:41:56', NULL, '2025-01-04 12:40:27', '2025-01-09 10:41:56'),
(147, 'App\\Models\\Employee', 1, 'authToken', '6311c1f54f27698ed55bbe5ea551c49301fee7430c0cf36892885324e65e09e9', '[\"main-admin\"]', 1, '2025-01-04 14:11:46', NULL, '2025-01-04 14:11:04', '2025-01-04 14:11:46'),
(149, 'App\\Models\\Employee', 27, 'authToken', '6f8f4fcb0899c934c5f4c83b08972500b4bcb324f1628badf4130c3f9663256d', '[\"delivery-boy\"]', 1, '2025-01-05 12:24:02', NULL, '2025-01-05 07:39:07', '2025-01-05 12:24:02'),
(150, 'App\\Models\\Employee', 1, 'authToken', 'bc70ec2e86d0103571d666f4dc5803d6f177ec71cc77a8cf96e3c44b1e8c13f9', '[\"main-admin\"]', 1, '2025-01-05 08:47:20', NULL, '2025-01-05 07:44:11', '2025-01-05 08:47:20'),
(151, 'App\\Models\\Employee', 27, 'authToken', '06d6b5833c82c664efa51071b3ee7819590a5be839a2f4096203e7340e200681', '[\"delivery-boy\"]', 1, '2025-01-06 07:50:17', NULL, '2025-01-05 08:19:52', '2025-01-06 07:50:17'),
(160, 'App\\Models\\Employee', 1, 'authToken', '09617fd88dc17db61559cb6045e096e93d78e10ee5c80a0c2ea5d28a8eceef15', '[\"main-admin\"]', 1, '2025-01-05 12:49:03', NULL, '2025-01-05 12:20:08', '2025-01-05 12:49:03'),
(161, 'App\\Models\\Employee', 27, 'authToken', '4c48efca413d93199ae81c590d5752c44096c590c252208e4338a73a93d3e817', '[\"delivery-boy\"]', 1, '2025-01-06 12:42:34', NULL, '2025-01-05 12:30:26', '2025-01-06 12:42:34'),
(162, 'App\\Models\\Employee', 1, 'authToken', '3727fce06d94f8ebe17f591b4c9dd7df44b7282a388022ceb427f67cb53e8dec', '[\"main-admin\"]', 1, '2025-01-05 12:45:49', NULL, '2025-01-05 12:44:58', '2025-01-05 12:45:49'),
(164, 'App\\Models\\Employee', 1, 'authToken', '70b1f89d03785734482174dc7e2fdef2e0ef81cce435ea24b2b29bb017e62547', '[\"main-admin\"]', 1, '2025-01-06 13:20:06', NULL, '2025-01-06 06:47:22', '2025-01-06 13:20:06'),
(166, 'App\\Models\\Employee', 1, 'authToken', '0d4d6f471d5148c44c44a69db4afe993e7740c5a99f0426c33e6cd0be0689f42', '[\"main-admin\"]', 1, '2025-01-06 10:04:46', NULL, '2025-01-06 08:21:12', '2025-01-06 10:04:46'),
(167, 'App\\Models\\User', 10, 'authToken', '4882205a538789a10190520d8ea35fde429e18aab4da67499d3dcd9fac14e847', '[\"user\"]', 1, '2025-01-06 08:31:42', NULL, '2025-01-06 08:31:33', '2025-01-06 08:31:42'),
(168, 'App\\Models\\User', 10, 'authToken', '6179965f564e9181705b0b7118de5003f3bfb91a22d1cf0d785b191ba0ee9d85', '[\"user_rt\"]', 1, NULL, '2025-01-13 08:31:33', '2025-01-06 08:31:33', '2025-01-06 08:31:33'),
(169, 'App\\Models\\User', 10, 'authToken', '394e9a1c977fbdaaf5cac6ba185dd440d0453aa3e5db4991c759db13354de6d8', '[\"user\"]', 1, '2025-01-07 08:35:08', NULL, '2025-01-06 09:19:16', '2025-01-07 08:35:08'),
(170, 'App\\Models\\User', 10, 'authToken', 'f1a1ad963c88799f1e079e05b10e2eb934ce14c56cb510aa4d2cd2e39f10cb82', '[\"user_rt\"]', 1, NULL, '2025-01-13 09:19:17', '2025-01-06 09:19:17', '2025-01-06 09:19:17'),
(171, 'App\\Models\\User', 11, 'authToken', '128352d979c0f8559e6ff78d5c7e1dbef5d099189ca536e95d74c9e575e78b17', '[\"user\"]', 1, '2025-01-06 10:06:09', NULL, '2025-01-06 10:06:08', '2025-01-06 10:06:09'),
(172, 'App\\Models\\User', 11, 'authToken', 'cbd86189f0bdf1b01a528baceeca8997b3d8cf0e7795182393205478e707672f', '[\"user_rt\"]', 1, NULL, '2025-01-13 10:06:08', '2025-01-06 10:06:08', '2025-01-06 10:06:08'),
(173, 'App\\Models\\Employee', 27, 'authToken', '06c4e7c52391d1369f4065f9db3cca98ab48649636da7f1909e7980f07748df4', '[\"delivery-boy\"]', 1, '2025-01-08 12:19:00', NULL, '2025-01-06 12:46:11', '2025-01-08 12:19:00'),
(174, 'App\\Models\\Employee', 1, 'authToken', 'b7f304c3263e0d1e7ce488e39215ee29e661077bd921fb57cfea44248b4cae0f', '[\"main-admin\"]', 1, '2025-01-08 07:59:16', NULL, '2025-01-07 06:14:08', '2025-01-08 07:59:16'),
(175, 'App\\Models\\Employee', 1, 'authToken', '5935ec5dbb41e46c7df19adeba9bdcbb310166b6db98e935740a87dbe158b497', '[\"main-admin\"]', 1, '2025-01-07 12:52:49', NULL, '2025-01-07 07:01:48', '2025-01-07 12:52:49'),
(176, 'App\\Models\\User', 10, 'authToken', '0e8bcf1adeef18d05be575d874d175e5f6389f6b874dc9ff0bd9f725969b381f', '[\"user\"]', 1, '2025-01-07 08:56:35', NULL, '2025-01-07 08:56:34', '2025-01-07 08:56:35'),
(177, 'App\\Models\\User', 10, 'authToken', '1891b4df8f5d21f2ec72fa01207f9c9a13630e69add978bf9634f4176bb2f529', '[\"user_rt\"]', 1, NULL, '2025-01-14 08:56:34', '2025-01-07 08:56:34', '2025-01-07 08:56:34'),
(178, 'App\\Models\\User', 10, 'authToken', 'ed4a4f00aa4ea151fa98b250ac89bd48bd3359f5c34e71dd90a5861f92f8b413', '[\"user\"]', 1, '2025-01-12 09:21:37', NULL, '2025-01-07 10:56:01', '2025-01-12 09:21:37'),
(179, 'App\\Models\\User', 10, 'authToken', '92d6a68bf08fbd98b09c496bb65883ee05eeac4e0e8f22e2e7b2799e799d0624', '[\"user_rt\"]', 1, NULL, '2025-01-14 10:56:01', '2025-01-07 10:56:01', '2025-01-07 10:56:01'),
(180, 'App\\Models\\Employee', 1, 'authToken', 'fc97203f20d46bf1ffaf073faebd764dc24414fa95e6d83bb56f28922bd1698b', '[\"main-admin\"]', 1, '2025-01-07 11:24:57', NULL, '2025-01-07 11:17:03', '2025-01-07 11:24:57'),
(185, 'App\\Models\\Employee', 1, 'authToken', '465e9bf2e5721d9ea208a14f7dc0d92acab6eaa4c640c3819f42fe0107e11b2f', '[\"main-admin\"]', 1, '2025-01-07 13:18:59', NULL, '2025-01-07 12:56:53', '2025-01-07 13:18:59'),
(190, 'App\\Models\\Employee', 1, 'authToken', '5bd451fcdfe99e1bbec59f8c4e4246b5e78d63c1e0c61375a3ad7dd6da18d88a', '[\"main-admin\"]', 1, '2025-01-07 13:56:28', NULL, '2025-01-07 13:40:46', '2025-01-07 13:56:28'),
(191, 'App\\Models\\Employee', 1, 'authToken', 'cbfa227cd85ff794e5e449e15b74ebb06e93b5bef6fc9052521f41242584dbe7', '[\"main-admin\"]', 1, '2025-01-08 12:46:13', NULL, '2025-01-08 07:02:03', '2025-01-08 12:46:13'),
(192, 'App\\Models\\Employee', 1, 'authToken', '7e59b88c7df4d04030e2ecd1210298773b2fb7721db0fc2baab8479a8e8b246b', '[\"main-admin\"]', 1, '2025-01-08 12:56:01', NULL, '2025-01-08 07:02:50', '2025-01-08 12:56:01'),
(193, 'App\\Models\\Employee', 1, 'authToken', 'bff0c42e7e13b48b6d56a712e65f358f5bcba83fd6624e92fd2156a8151f3327', '[\"main-admin\"]', 1, '2025-01-08 11:23:07', NULL, '2025-01-08 11:22:35', '2025-01-08 11:23:07'),
(195, 'App\\Models\\Employee', 1, 'authToken', 'b860ed1d6cd745a7ce1b76272ffa0e6613baf0f51bf92336fc73c3167a518087', '[\"main-admin\"]', 1, '2025-01-09 12:55:14', NULL, '2025-01-09 07:10:47', '2025-01-09 12:55:14'),
(201, 'App\\Models\\Employee', 28, 'authToken', '881818cfb338076e6d2a36e2d91cbd725b958fb8a07a43e26296b8f454f73950', '[\"delivery-boy\"]', 1, '2025-01-09 13:25:39', NULL, '2025-01-09 09:40:25', '2025-01-09 13:25:39'),
(204, 'App\\Models\\Employee', 1, 'authToken', '684706cb876b35694fced9e5070be087cadf4c6942ab9171b723d47470bfdcf3', '[\"main-admin\"]', 1, '2025-01-09 12:52:12', NULL, '2025-01-09 10:13:08', '2025-01-09 12:52:12'),
(210, 'App\\Models\\Employee', 30, 'authToken', 'c52bef9f4b743f57d1a967b797b0e52d6bcff9f3f0ea1950fb8fc2059f3d28e9', '[\"warehouse-manager\"]', 1, '2025-01-09 12:18:34', NULL, '2025-01-09 12:18:17', '2025-01-09 12:18:34'),
(211, 'App\\Models\\Employee', 1, 'authToken', 'f73940ac2af7516636677f8078f49e36a1ec033d7f13def34fdb9b82115ef50d', '[\"main-admin\"]', 1, '2025-01-11 14:54:38', NULL, '2025-01-11 08:21:02', '2025-01-11 14:54:38'),
(212, 'App\\Models\\Employee', 1, 'authToken', '17c4d9a9c81bced44a42e0df4d208bf59dd7aaeb310512f34b255e3160b2b01d', '[\"main-admin\"]', 1, '2025-01-11 14:15:23', NULL, '2025-01-11 08:40:39', '2025-01-11 14:15:23'),
(213, 'App\\Models\\User', 10, 'authToken', '3311b47f1476d816bee78fc9d7aaeb7d8760cb606a0049bb54fecc987379d857', '[\"user\"]', 1, '2025-01-12 07:17:53', NULL, '2025-01-11 20:11:28', '2025-01-12 07:17:53'),
(214, 'App\\Models\\User', 10, 'authToken', '4650481a788d5b19d0fd673300038bb86537f1e766d0764a90a9e1eff53f3640', '[\"user_rt\"]', 1, NULL, '2025-01-18 20:11:28', '2025-01-11 20:11:28', '2025-01-11 20:11:28'),
(215, 'App\\Models\\Employee', 27, 'authToken', '0bdbd6a67a989e8a38b74d4c59e896632fa133515d0cf73e95c76f87901ff6b1', '[\"delivery-boy\"]', 1, '2025-01-12 07:32:20', NULL, '2025-01-12 07:31:42', '2025-01-12 07:32:20'),
(216, 'App\\Models\\Employee', 1, 'authToken', 'f5a95fa6002612054648397cd219d6a51e1e55d117acd15854e0417eb4734be6', '[\"main-admin\"]', 1, '2025-01-12 10:35:51', NULL, '2025-01-12 07:53:43', '2025-01-12 10:35:51'),
(217, 'App\\Models\\Employee', 27, 'authToken', '582670628f5444e92a21ffa7c5046ab91e4b2ef80d60a37339da0f38362b0e57', '[\"delivery-boy\"]', 1, '2025-01-12 08:08:34', NULL, '2025-01-12 08:07:06', '2025-01-12 08:08:34'),
(218, 'App\\Models\\Employee', 1, 'authToken', '7669dc964a6a2d2523a06fe4939cd72e305a2491fb7df5ada2a6596e2ac75124', '[\"main-admin\"]', 1, '2025-01-12 11:50:21', NULL, '2025-01-12 09:33:36', '2025-01-12 11:50:21'),
(219, 'App\\Models\\Employee', 27, 'authToken', '88c81abbf90e064668ba9a44c1846c87ab0a102c431ca18a95c7f3a682ec1fbf', '[\"delivery-boy\"]', 1, '2025-01-12 11:30:46', NULL, '2025-01-12 10:19:32', '2025-01-12 11:30:46'),
(220, 'App\\Models\\Employee', 1, 'authToken', '70347579548f014fba4cff0c8447c3eb07585793d4f0ad6e560a7ea3d393e107', '[\"main-admin\"]', 1, '2025-01-19 12:36:24', NULL, '2025-01-19 11:40:55', '2025-01-19 12:36:24'),
(221, 'App\\Models\\Employee', 1, 'authToken', '04b19cffa6f8675deaff46ce25e352fa7f3934f71cf1ffe1c22fc782ddb39b7d', '[\"main-admin\"]', 1, '2025-01-19 12:36:27', NULL, '2025-01-19 12:08:32', '2025-01-19 12:36:27'),
(222, 'App\\Models\\Employee', 1, 'authToken', '8e2a7e82b33abc6a7064ce6934c928f397403e1843c29ba1ccd8b0479f325185', '[\"main-admin\"]', 1, '2025-01-20 13:04:01', NULL, '2025-01-20 06:30:49', '2025-01-20 13:04:01'),
(223, 'App\\Models\\User', 15, 'authToken', 'cbcdf3c18ce6f7dcc93e17e260b7ff3e771b2de79c836fafc4583ab1cf3a8350', '[\"user\"]', 1, NULL, NULL, '2025-01-20 08:13:53', '2025-01-20 08:13:53'),
(224, 'App\\Models\\User', 16, 'authToken', 'ab8e05e850d19f92f38d14271e1c8953c0445976ccb33274199639132eac4a0d', '[\"user\"]', 1, NULL, NULL, '2025-01-20 08:15:10', '2025-01-20 08:15:10'),
(225, 'App\\Models\\Employee', 1, 'authToken', 'a49163a75c9870d6d0101a2dac0c4e62f208b84d3bda19bfdd889a073c4a8ea8', '[\"main-admin\"]', 1, '2025-01-20 08:23:05', NULL, '2025-01-20 08:23:03', '2025-01-20 08:23:05'),
(226, 'App\\Models\\User', 17, 'authToken', '3bcf938d66d84dff3a507ff33f4d8ed15a3eb92f865a8d226b49536607be2c3a', '[\"user\"]', 1, NULL, NULL, '2025-01-20 09:00:09', '2025-01-20 09:00:09'),
(227, 'App\\Models\\User', 18, 'authToken', '459598b275bc3c31410cf0d7fcde710eff8f28d7c64091188067df1f006aec76', '[\"user\"]', 1, NULL, NULL, '2025-01-20 09:03:40', '2025-01-20 09:03:40'),
(228, 'App\\Models\\User', 19, 'authToken', 'd5a9b03c647bd21357940a273072ba2f8c06e82c8e140f1a6e50a741d48e9b97', '[\"user\"]', 1, NULL, NULL, '2025-01-20 09:07:26', '2025-01-20 09:07:26'),
(229, 'App\\Models\\User', 19, 'authToken', 'c72995aeea5389383be1687e5b8aefbf981085ebbc7951346308fac39f84ba60', '[\"user\"]', 1, '2025-01-20 09:10:00', '2025-01-27 07:49:43', '2025-01-20 09:09:43', '2025-01-20 09:10:00'),
(230, 'App\\Models\\User', 19, 'authToken', '3cbaafc4f394a67fea1883e501ef511811abe4d8593a3dd8cf79fd7ec5a5954e', '[\"user_rt\"]', 1, NULL, '2025-01-27 09:09:43', '2025-01-20 09:09:43', '2025-01-20 09:09:43'),
(231, 'App\\Models\\User', 19, 'authToken', 'c06fae90d307f71a9c8c1045c41fa83fd3f06e6f902f623be4504f6e66249beb', '[\"user\"]', 1, '2025-01-20 09:29:14', '2025-01-27 07:50:22', '2025-01-20 09:10:22', '2025-01-20 09:29:14'),
(232, 'App\\Models\\User', 19, 'authToken', '9d7098b9948688c1a9a0b376be98185bd1fcbcc23e9b2b5c55506139f6858714', '[\"user_rt\"]', 1, NULL, '2025-01-27 09:10:22', '2025-01-20 09:10:22', '2025-01-20 09:10:22'),
(233, 'App\\Models\\User', 19, 'authToken', '5faace259a8f2cbdae48c288aa7f567a5e85038e258f10a81fd98e7428663cad', '[\"user\"]', 1, '2025-01-20 09:51:50', '2025-01-27 08:10:13', '2025-01-20 09:30:13', '2025-01-20 09:51:50'),
(234, 'App\\Models\\User', 19, 'authToken', '00783d2aa1658705cfa7031b02bc2d0a5412d9b92bc1539405f6bc348c5ceec3', '[\"user_rt\"]', 1, NULL, '2025-01-27 09:30:13', '2025-01-20 09:30:13', '2025-01-20 09:30:13'),
(235, 'App\\Models\\User', 19, 'authToken', 'd0db6755c1cf219bc4d217a3c75df299aae079ae724a178574eb3fa19658bd3d', '[\"user\"]', 1, '2025-01-20 10:51:28', '2025-01-27 08:33:50', '2025-01-20 09:53:50', '2025-01-20 10:51:28'),
(236, 'App\\Models\\User', 19, 'authToken', 'c7d84781993b1b3fb83049caab661269375b571099cb8960c9bc2203f6c0112d', '[\"user_rt\"]', 1, NULL, '2025-01-27 09:53:50', '2025-01-20 09:53:50', '2025-01-20 09:53:50'),
(237, 'App\\Models\\User', 19, 'authToken', '32b93afb84d46fc6fe8a615a961288fa474a85354d2811da75f9044cb28bb11c', '[\"user\"]', 1, '2025-01-20 13:05:17', '2025-01-27 09:31:40', '2025-01-20 10:51:40', '2025-01-20 13:05:17'),
(238, 'App\\Models\\User', 19, 'authToken', '9bb6723d616314b6bd6594561fc56da5198fe8bd65ac057019f566356f65bfad', '[\"user_rt\"]', 1, NULL, '2025-01-27 10:51:40', '2025-01-20 10:51:40', '2025-01-20 10:51:40'),
(239, 'App\\Models\\Employee', 1, 'authToken', '65bd720a831b0f45401d2f8b2a741c1b16b2b184acf9a354f140ee8e551daaff', '[\"main-admin\"]', 1, '2025-01-21 10:18:40', NULL, '2025-01-21 06:34:31', '2025-01-21 10:18:40'),
(241, 'App\\Models\\User', 10, 'authToken', '00672d4c503f75be6400de513c4f299b1399be935eca86beb8b9a93942305517', '[\"user\"]', 1, '2025-01-21 08:20:40', '2025-01-28 07:00:03', '2025-01-21 08:20:03', '2025-01-21 08:20:40'),
(242, 'App\\Models\\User', 10, 'authToken', 'a8e7efc9adbcaec6efba3d00ea528af37a24c403d9d2949d3a1608e9907934e2', '[\"user_rt\"]', 1, NULL, '2025-01-28 08:20:03', '2025-01-21 08:20:03', '2025-01-21 08:20:03'),
(243, 'App\\Models\\User', 10, 'authToken', '5d917ae5ebb863d764b02cc8af16c1826b2cd344ae2101fd215a7643f60e0423', '[\"user\"]', 1, '2025-01-23 12:43:11', '2025-01-28 07:00:58', '2025-01-21 08:20:57', '2025-01-23 12:43:11'),
(244, 'App\\Models\\User', 10, 'authToken', '8110950642086dbecc0d3ed44a68759457b58290d940bcc6ac37435245876c8f', '[\"user_rt\"]', 1, NULL, '2025-01-28 08:20:58', '2025-01-21 08:20:58', '2025-01-21 08:20:58'),
(245, 'App\\Models\\User', 10, 'authToken', 'c7073fbed9eb7189a7534db07686f73fb76aad8250f0f8fbe2583c9bfd890ba0', '[\"user\"]', 1, '2025-01-21 08:34:01', NULL, '2025-01-21 08:21:08', '2025-01-21 08:34:01'),
(246, 'App\\Models\\User', 10, 'authToken', '2309b99490261fdf214dbee49e5413f29f52d6e0ed15267b8837690d836e8261', '[\"user_rt\"]', 1, NULL, '2025-01-28 08:21:08', '2025-01-21 08:21:08', '2025-01-21 08:21:08'),
(247, 'App\\Models\\User', 19, 'authToken', '29a32cbc0b118a37e6f6dc5ad7471aab3dbb7806e851dfb319115c233b106cd5', '[\"user\"]', 1, '2025-01-21 11:17:46', '2025-01-28 07:17:12', '2025-01-21 08:37:12', '2025-01-21 11:17:46'),
(248, 'App\\Models\\User', 19, 'authToken', '00b81f55ef52b30588a14a0bcdd02ea0fb007e2e64e8f9661fce95a5af80d31f', '[\"user_rt\"]', 1, NULL, '2025-01-28 08:37:12', '2025-01-21 08:37:12', '2025-01-21 08:37:12'),
(249, 'App\\Models\\User', 10, 'authToken', 'debe6bc41c15b38c83ece73c60706949252329dd27b0f4b69caea8cd1083c671', '[\"user\"]', 1, '2025-01-21 09:13:19', NULL, '2025-01-21 08:59:05', '2025-01-21 09:13:19'),
(250, 'App\\Models\\User', 10, 'authToken', '90a93117e39d74324929d812e901a9c52ac9165d81fe78d6e1895497d4b80051', '[\"user_rt\"]', 1, NULL, '2025-01-28 08:59:05', '2025-01-21 08:59:05', '2025-01-21 08:59:05'),
(252, 'App\\Models\\User', 10, 'authToken', 'ea8ec3fc4c56359d777841a0263f1e794eabadb8e0a395a036a1fc792cc3a2ca', '[\"user_rt\"]', 1, NULL, '2025-01-28 09:16:56', '2025-01-21 09:16:56', '2025-01-21 09:16:56'),
(253, 'App\\Models\\User', 10, 'authToken', 'd445d6b158732c8c33ba0006960295f6e3f94355905eb2e421fcfe633061e59e', '[\"user\"]', 1, '2025-01-21 10:08:49', '2025-01-28 08:45:29', '2025-01-21 10:05:29', '2025-01-21 10:08:49'),
(254, 'App\\Models\\User', 10, 'authToken', '1f584d334e4bf5be0f0572fb74caa6b49b8a71f677f6706dfb3036f085370144', '[\"user_rt\"]', 1, NULL, '2025-01-28 10:05:29', '2025-01-21 10:05:29', '2025-01-21 10:05:29'),
(255, 'App\\Models\\Employee', 1, 'authToken', '025a558eb9a8211ebab78b2a2aff2e690a168718e20eae185205c26fecddc113', '[\"main-admin\"]', 1, '2025-01-21 11:41:19', NULL, '2025-01-21 10:14:03', '2025-01-21 11:41:19'),
(256, 'App\\Models\\User', 10, 'authToken', 'a8bf0ad4e2d0344fd857c8e815151ba5eae2481f9ea43162e8b7024a462bc0e1', '[\"user\"]', 1, '2025-01-22 09:06:07', NULL, '2025-01-21 10:28:44', '2025-01-22 09:06:07'),
(257, 'App\\Models\\User', 10, 'authToken', '79618261be2b8c47d83a6fc97f1f497ce30d9635690cd82de00ea474e3b842d2', '[\"user_rt\"]', 1, NULL, '2025-01-28 10:28:44', '2025-01-21 10:28:44', '2025-01-21 10:28:44'),
(258, 'App\\Models\\Employee', 1, 'authToken', '8acdf61b68532b51268d4e7448d24142c576b49578c8f5a085d848074596a139', '[\"main-admin\"]', 1, '2025-01-21 12:19:13', NULL, '2025-01-21 10:57:30', '2025-01-21 12:19:13'),
(259, 'App\\Models\\User', 10, 'authToken', '50dda0d075d75753256791c4693b8f8b34ad42133eabe48c9e889c277d15bf43', '[\"user\"]', 1, '2025-01-21 11:54:14', '2025-01-28 09:58:17', '2025-01-21 11:18:17', '2025-01-21 11:54:14'),
(260, 'App\\Models\\User', 10, 'authToken', '5773d302a27f4c399965a4b1e85018aadd1357324bc52561ce4aa8255ed2db3d', '[\"user_rt\"]', 1, NULL, '2025-01-28 11:18:17', '2025-01-21 11:18:17', '2025-01-21 11:18:17'),
(261, 'App\\Models\\Employee', 1, 'authToken', 'a4d66a80fabe1f6514011f7444590b1433c97b2699b8758f658bfedd9c381429', '[\"main-admin\"]', 1, '2025-01-21 13:12:58', NULL, '2025-01-21 11:34:32', '2025-01-21 13:12:58'),
(263, 'App\\Models\\Employee', 1, 'authToken', '2b10356f1400e79c29c56b85c213f63f8e356abd05827019ee456240367c98e8', '[\"main-admin\"]', 1, '2025-01-22 07:00:32', NULL, '2025-01-22 07:00:11', '2025-01-22 07:00:32'),
(264, 'App\\Models\\User', 10, 'authToken', '34893e1518b6e9a08827b374ad3aafb1844fefb5020eee7a5c29c4be790e7c45', '[\"user\"]', 1, '2025-02-03 10:51:52', NULL, '2025-01-22 07:55:33', '2025-02-03 10:51:52'),
(265, 'App\\Models\\User', 10, 'authToken', 'b842de4eca6820e12d25209b637d45310eae3d0afa56dbe5c12a0d0c2ed75419', '[\"user_rt\"]', 1, NULL, '2025-01-29 07:55:33', '2025-01-22 07:55:33', '2025-01-22 07:55:33'),
(266, 'App\\Models\\User', 11, 'authToken', 'f87e604af599c4b96490d7ed824e007a18c14c447656b4dabd345fce1b0c02e9', '[\"user\"]', 1, '2025-01-23 07:31:47', NULL, '2025-01-22 08:03:32', '2025-01-23 07:31:47'),
(267, 'App\\Models\\User', 11, 'authToken', '3cc3fcb1bd0bee97251d950ffb4cf8b6af88b2d02e4ef208446ba4fc14c177ce', '[\"user_rt\"]', 1, NULL, '2025-01-29 08:03:32', '2025-01-22 08:03:32', '2025-01-22 08:03:32'),
(271, 'App\\Models\\Employee', 1, 'authToken', 'f0300d1a66d8b073737d7ce4f99e5fa1ee90f17a93468c9e0a13b867f7165f08', '[\"main-admin\"]', 1, '2025-01-22 10:33:47', NULL, '2025-01-22 10:33:44', '2025-01-22 10:33:47'),
(272, 'App\\Models\\Employee', 1, 'authToken', '7c2e68565a0f6e1f00f3ee1e70895fec262a6f50a1689e8bcf828454f3e6dfce', '[\"main-admin\"]', 1, '2025-01-22 10:35:39', NULL, '2025-01-22 10:35:33', '2025-01-22 10:35:39'),
(273, 'App\\Models\\Employee', 1, 'authToken', '00c4a8b33824fb76cfbbfcc8640fc1a8b26a9ef79582e16523f710e23c018b18', '[\"main-admin\"]', 1, '2025-01-22 11:02:46', NULL, '2025-01-22 10:38:43', '2025-01-22 11:02:46'),
(274, 'App\\Models\\User', 10, 'authToken', '7e87841391110e2c7f27d14a504bb47f10c35525e84b89390aadb5450e4fc7fb', '[\"user\"]', 1, '2025-01-25 10:51:56', NULL, '2025-01-22 10:41:58', '2025-01-25 10:51:56'),
(275, 'App\\Models\\User', 10, 'authToken', '7b643ccc587b7462e071c9c63790eaf21ef3a8a8d188697212fdbbcc5f9a68d9', '[\"user_rt\"]', 1, NULL, '2025-01-29 10:41:58', '2025-01-22 10:41:58', '2025-01-22 10:41:58'),
(276, 'App\\Models\\Employee', 1, 'authToken', '29b67ccf55bc45de24a7ab987df9f0277025bfa094703077b565e7158f34fab4', '[\"main-admin\"]', 1, '2025-01-22 10:46:12', NULL, '2025-01-22 10:44:50', '2025-01-22 10:46:12'),
(277, 'App\\Models\\Employee', 1, 'authToken', '28f8e7c1cce749d31688383de5ff744a73ac824231f6c575bf134d469feeba3a', '[\"main-admin\"]', 1, '2025-01-22 10:49:37', NULL, '2025-01-22 10:49:27', '2025-01-22 10:49:37'),
(278, 'App\\Models\\User', 10, 'authToken', '0e7b0ff77f3fecdfcad418588db7c7e6035ba50b0e3b69d533824ac34d8ccac8', '[\"user\"]', 1, '2025-01-25 11:50:49', '2025-01-29 10:45:28', '2025-01-22 12:05:28', '2025-01-25 11:50:49'),
(279, 'App\\Models\\User', 10, 'authToken', '6276fdaf9ccba803af22d4352d4079d4bdd350ddd42c48bf6444fe48c62d4398', '[\"user_rt\"]', 1, NULL, '2025-01-29 12:05:28', '2025-01-22 12:05:28', '2025-01-22 12:05:28'),
(281, 'App\\Models\\Employee', 1, 'authToken', 'c76c981e4ae83e67569592250342591b45d5dac822214946748e5d5408bfe41e', '[\"main-admin\"]', 1, '2025-01-23 12:55:18', NULL, '2025-01-23 07:00:54', '2025-01-23 12:55:18'),
(282, 'App\\Models\\Employee', 1, 'authToken', '459f8e05a8a83b1330ade9477dea8799ba4da55ff5b7b19afaefb701f8857a57', '[\"main-admin\"]', 1, '2025-01-23 09:14:44', NULL, '2025-01-23 07:05:51', '2025-01-23 09:14:44'),
(283, 'App\\Models\\Employee', 1, 'authToken', '36d780271c4c1954e78ac15a30b779cfa04d48e63be96cedc62a6412e3936029', '[\"main-admin\"]', 1, '2025-01-23 08:36:35', NULL, '2025-01-23 08:36:04', '2025-01-23 08:36:35'),
(284, 'App\\Models\\Employee', 1, 'authToken', '267ca30e250b3448a5912f3450c75f187e02c9523db5de553b180e233cdf298d', '[\"main-admin\"]', 1, '2025-01-23 09:53:09', NULL, '2025-01-23 09:53:06', '2025-01-23 09:53:09'),
(285, 'App\\Models\\User', 10, 'authToken', '014e2dad268fe84a8d11b06a612ed0ac0c94b67a39f31f2bf16b1b2e0dc61a5c', '[\"user\"]', 1, '2025-01-23 12:40:10', '2025-01-30 10:40:36', '2025-01-23 12:00:36', '2025-01-23 12:40:10'),
(286, 'App\\Models\\User', 10, 'authToken', 'd0936b615a993bba1a231c244a29cba35e73cf113e76e6250398fa55b96a2f9f', '[\"user_rt\"]', 1, NULL, '2025-01-30 12:00:36', '2025-01-23 12:00:36', '2025-01-23 12:00:36'),
(287, 'App\\Models\\Employee', 1, 'authToken', '1a71c83a15440fa1b372671b1616c4b54dac029baaa8567a226505f02a82f054', '[\"main-admin\"]', 1, '2025-01-25 09:03:53', NULL, '2025-01-25 09:03:50', '2025-01-25 09:03:53'),
(288, 'App\\Models\\User', 10, 'authToken', '9df0fd7c3f8378f29fced8e117e1ab2722ecb01354e600a16cb66062e0f330ad', '[\"user\"]', 1, '2025-01-27 12:12:56', NULL, '2025-01-25 10:56:29', '2025-01-27 12:12:56'),
(289, 'App\\Models\\User', 10, 'authToken', 'e5f531bc41cb9553d98bb340647e789d8ab450998d8dc1f4958936539679f7aa', '[\"user_rt\"]', 1, NULL, '2025-02-01 10:56:29', '2025-01-25 10:56:29', '2025-01-25 10:56:29'),
(290, 'App\\Models\\User', 10, 'authToken', '07c632db145c36fe87d59a2e98fa0864a9145886dc585c99d117f9c109b88de6', '[\"user\"]', 1, '2025-01-26 08:16:22', '2025-02-02 05:53:32', '2025-01-26 07:13:32', '2025-01-26 08:16:22'),
(291, 'App\\Models\\User', 10, 'authToken', '78b017a8432f0925fd170b508c7f3a6c62802bed7ec6f8121203601fe597cde3', '[\"user_rt\"]', 1, NULL, '2025-02-02 07:13:32', '2025-01-26 07:13:32', '2025-01-26 07:13:32'),
(292, 'App\\Models\\User', 10, 'authToken', '08712dc3be26654e920133b26d15c24ddf3ed4055a0c0e73bde8a6576383e368', '[\"user\"]', 1, '2025-01-26 11:43:41', '2025-02-02 08:22:06', '2025-01-26 09:42:06', '2025-01-26 11:43:41'),
(293, 'App\\Models\\User', 10, 'authToken', 'dc53597151e6ea75387490ba7bd8c091d3a90dea05be9429eb0dd8aa227b3ffb', '[\"user_rt\"]', 1, NULL, '2025-02-02 09:42:06', '2025-01-26 09:42:06', '2025-01-26 09:42:06'),
(294, 'App\\Models\\Employee', 31, 'authToken', '258055b71533bde63a884fa23d5e5efb2d3247605a6e161298386a3189370e32', '[\"operation-manager\"]', 1, '2025-01-26 12:57:58', NULL, '2025-01-26 12:32:34', '2025-01-26 12:57:58'),
(295, 'App\\Models\\User', 10, 'authToken', '1529a6bb5ee35c59586944ad1acca6ed6b487c833d1ac48f04d402c6abae82d5', '[\"user\"]', 1, '2025-01-28 08:52:49', '2025-02-03 09:11:13', '2025-01-27 10:31:13', '2025-01-28 08:52:49'),
(296, 'App\\Models\\User', 10, 'authToken', '0f57ec448695b534f3c743dad8972f1490ad8caf25ccff87586387980e443529', '[\"user_rt\"]', 1, NULL, '2025-02-03 10:31:13', '2025-01-27 10:31:13', '2025-01-27 10:31:13'),
(297, 'App\\Models\\User', 10, 'authToken', '4b992466d11e60749db77441539517e46caa467b2574b0cd5e04ecf133800ea7', '[\"user\"]', 1, '2025-01-28 12:49:04', '2025-02-04 07:32:57', '2025-01-28 08:52:57', '2025-01-28 12:49:04'),
(298, 'App\\Models\\User', 10, 'authToken', '538d663750c327e8b14c8c80f876843cac942903dbd494a8e4db61b02ccedeed', '[\"user_rt\"]', 1, NULL, '2025-02-04 08:52:57', '2025-01-28 08:52:57', '2025-01-28 08:52:57'),
(299, 'App\\Models\\User', 10, 'authToken', '02a9a13ff8423d48563b28ac489366cc67eb77e3868eef52d5eb15f29c5d2527', '[\"user\"]', 1, '2025-01-30 12:14:06', '2025-02-05 07:21:16', '2025-01-29 08:41:16', '2025-01-30 12:14:06'),
(300, 'App\\Models\\User', 10, 'authToken', 'fe3f59aa77512677bbcb20a6e81808a2bae1ecf0f3ec359830a2a215289a16ab', '[\"user_rt\"]', 1, NULL, '2025-02-05 08:41:16', '2025-01-29 08:41:16', '2025-01-29 08:41:16'),
(301, 'App\\Models\\User', 10, 'authToken', 'eec18e81454178360485d4b6e995db69b94aa0e5a5e6661bb23fc4cf9e52e0af', '[\"user\"]', 1, '2025-01-29 10:58:17', '2025-02-05 09:34:43', '2025-01-29 10:54:42', '2025-01-29 10:58:17'),
(302, 'App\\Models\\User', 10, 'authToken', '17e9f0281de28705fb292aaaf75b313687f8902b9380101055a0e0d3f485b825', '[\"user_rt\"]', 1, NULL, '2025-02-05 10:54:43', '2025-01-29 10:54:42', '2025-01-29 10:54:43'),
(303, 'App\\Models\\User', 10, 'authToken', '9338f811ac624cdb4cfa7b2d87a133c5c804f10b511705d245d480c41f5028e5', '[\"user\"]', 1, NULL, '2025-02-05 10:02:19', '2025-01-29 11:22:19', '2025-01-29 11:22:19'),
(304, 'App\\Models\\User', 10, 'authToken', 'c0f3449db1d060dcaddf935e6ce5ff28fa2c22596a0e91c29605404e0b9cec03', '[\"user_rt\"]', 1, NULL, '2025-02-05 11:22:19', '2025-01-29 11:22:19', '2025-01-29 11:22:19'),
(305, 'App\\Models\\User', 10, 'authToken', 'c6c94156e286ffc83b1f980e08c1e386bd2e1af304f9f5113d2471ad78cdbe11', '[\"user\"]', 1, '2025-01-29 13:11:20', '2025-02-05 10:02:31', '2025-01-29 11:22:31', '2025-01-29 13:11:20'),
(306, 'App\\Models\\User', 10, 'authToken', '6c8c42ed8c01de1b786abb326f03ec92b2bd5f92b73c48ec5e80e9eda140ee28', '[\"user_rt\"]', 1, NULL, '2025-02-05 11:22:31', '2025-01-29 11:22:31', '2025-01-29 11:22:31'),
(307, 'App\\Models\\User', 10, 'authToken', '08c30696f24e712759d7a692eb556828e6b5129f596a6ac4611ded0bcc3fc815', '[\"user\"]', 1, NULL, '2025-02-05 11:51:57', '2025-01-29 13:11:57', '2025-01-29 13:11:57'),
(308, 'App\\Models\\User', 10, 'authToken', 'd04f5cc09eb8aff6b416b7c760d33d31aaf8abf7c5907c8802e067db70095b0c', '[\"user_rt\"]', 1, NULL, '2025-02-05 13:11:57', '2025-01-29 13:11:57', '2025-01-29 13:11:57'),
(309, 'App\\Models\\User', 10, 'authToken', '9c7da2f1917ccf6aa528bde025c0f33012d9dbcddab65ca8dd038203310a9601', '[\"user\"]', 1, '2025-01-30 12:05:01', '2025-02-05 11:53:20', '2025-01-29 13:13:20', '2025-01-30 12:05:01'),
(310, 'App\\Models\\User', 10, 'authToken', 'f2de488b6201c7dee32928d0a3080e31bfdc55a310654aecb20bb24721a6181a', '[\"user_rt\"]', 1, NULL, '2025-02-05 13:13:20', '2025-01-29 13:13:20', '2025-01-29 13:13:20'),
(311, 'App\\Models\\User', 10, 'authToken', 'ea14e31f81ef6a227cb169b4543a79d6895cd18a1d6f38578233297223ca84b0', '[\"user\"]', 1, '2025-01-29 19:25:47', '2025-02-05 17:15:08', '2025-01-29 18:35:08', '2025-01-29 19:25:47'),
(312, 'App\\Models\\User', 10, 'authToken', '70695bec724f1908cef907fd40316258bf96e297fbfc57d84d7b82f23a763c4f', '[\"user_rt\"]', 1, NULL, '2025-02-05 18:35:08', '2025-01-29 18:35:08', '2025-01-29 18:35:08'),
(313, 'App\\Models\\Employee', 1, 'authToken', '23b941b14ec4fef4169a6e604d4af098422f2fab9dabfa9944fbbffc64e5d686', '[\"main-admin\"]', 1, '2025-02-02 07:45:33', NULL, '2025-02-02 07:44:07', '2025-02-02 07:45:33'),
(314, 'App\\Models\\User', 10, 'authToken', '92c974245b12ddcfac74ba7c9fca066892c3c6cc9014fc2d5e9a8bff0ea804d4', '[\"user\"]', 1, '2025-02-03 11:16:20', '2025-02-10 05:16:13', '2025-02-03 06:36:12', '2025-02-03 11:16:20'),
(315, 'App\\Models\\User', 10, 'authToken', '980066cb63dc07e93734b708a8cdefe2b302f7c1cd1ef3079f638bcaf7f26bd4', '[\"user_rt\"]', 1, NULL, '2025-02-10 06:36:13', '2025-02-03 06:36:12', '2025-02-03 06:36:13'),
(316, 'App\\Models\\Employee', 31, 'authToken', '3b48d67c30c16320caf5f7431d51a23e1ab91b09fa8e21fbcb75f5602d2f6b1c', '[\"operation-manager\"]', 1, '2025-02-03 11:14:15', NULL, '2025-02-03 06:55:16', '2025-02-03 11:14:15'),
(317, 'App\\Models\\User', 10, 'authToken', '4589c920b2bca17e1479e5048c2c7291cd73ede7d552ba735ed6fc2ad1a8bc4b', '[\"user\"]', 1, '2025-02-03 08:03:58', '2025-02-10 06:42:20', '2025-02-03 08:02:20', '2025-02-03 08:03:58'),
(318, 'App\\Models\\User', 10, 'authToken', '237e2ff10f2401d24cf9fad081f3eb6d14b1f758e16328c169931a2de29a9250', '[\"user_rt\"]', 1, NULL, '2025-02-10 08:02:20', '2025-02-03 08:02:20', '2025-02-03 08:02:20'),
(319, 'App\\Models\\User', 19, 'authToken', '4d3153077d460667fb0941371c631b0ceec589317dd204b09c45853240bf6e44', '[\"user\"]', 1, '2025-02-05 12:35:38', '2025-02-10 08:56:49', '2025-02-03 10:16:49', '2025-02-05 12:35:38'),
(320, 'App\\Models\\User', 19, 'authToken', 'b1f9c2094ed213be4b3b3b008e2c2fe790f3d99ad892e85e2e6807b2019ee86e', '[\"user_rt\"]', 1, NULL, '2025-02-10 10:16:49', '2025-02-03 10:16:49', '2025-02-03 10:16:49'),
(321, 'App\\Models\\User', 10, 'authToken', '6e3b69838455d90ac09391107fa8b31c74c0399df76828db22f938f6926928e8', '[\"user\"]', 1, '2025-02-06 10:35:50', '2025-02-10 09:40:53', '2025-02-03 11:00:53', '2025-02-06 10:35:50'),
(322, 'App\\Models\\User', 10, 'authToken', 'a719eebd82bc8214159cc808395785d508535a5e4ceb895f5f94c72335c84b0a', '[\"user_rt\"]', 1, NULL, '2025-02-10 11:00:53', '2025-02-03 11:00:53', '2025-02-03 11:00:53'),
(323, 'App\\Models\\User', 10, 'authToken', '28eb4359023520302736d07bafbefa5cbae950fcbb5dbf1c0d5a0dfc5a908b6f', '[\"user\"]', 1, '2025-02-04 12:52:31', '2025-02-11 05:33:55', '2025-02-04 06:53:55', '2025-02-04 12:52:31'),
(324, 'App\\Models\\User', 10, 'authToken', '421e9cbf90effb8085c3baa16fc445c72dc96b3eb4310f3139877ce77ad80930', '[\"user_rt\"]', 1, NULL, '2025-02-11 06:53:55', '2025-02-04 06:53:55', '2025-02-04 06:53:55'),
(325, 'App\\Models\\User', 11, 'authToken', 'f5c2c2303f3d2760ef5abf0952dfd9a49cdaaac01d82f6af3c3280533d03dda1', '[\"user\"]', 1, '2025-02-04 12:35:44', NULL, '2025-02-04 07:16:56', '2025-02-04 12:35:44'),
(326, 'App\\Models\\User', 11, 'authToken', 'd7251df3f5b80e9e89eec09ce76aab7d649208a4b68562a7a0d45f5e0b9b3e75', '[\"user_rt\"]', 1, NULL, '2025-02-11 07:16:56', '2025-02-04 07:16:56', '2025-02-04 07:16:56'),
(327, 'App\\Models\\User', 10, 'authToken', 'd78ab383ec5b9af4c0ce1f7842dd2b2c32ddc2d493c53ea54db348073fd2182e', '[\"user\"]', 1, '2025-02-04 10:12:41', NULL, '2025-02-04 10:07:52', '2025-02-04 10:12:41'),
(328, 'App\\Models\\User', 10, 'authToken', '9fc7b0d5b88577de95d0617022c11b1b180c1f467018f631cc5b7af459147479', '[\"user_rt\"]', 1, NULL, '2025-02-11 10:07:52', '2025-02-04 10:07:52', '2025-02-04 10:07:52'),
(329, 'App\\Models\\User', 10, 'authToken', '38028f5d1eef141bffb31c5f2c31b17aa1a4f3bcf444227e75d39f39b5f9c1ca', '[\"user\"]', 1, '2025-02-05 07:24:57', '2025-02-12 05:22:33', '2025-02-05 06:42:33', '2025-02-05 07:24:57'),
(330, 'App\\Models\\User', 10, 'authToken', 'a194e2d080fc82afee8762c78d55365f3dd3d66e807b7657a171dceb2cf4141c', '[\"user_rt\"]', 1, NULL, '2025-02-12 06:42:33', '2025-02-05 06:42:33', '2025-02-05 06:42:33');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `valid`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(331, 'App\\Models\\User', 10, 'authToken', 'ae2f44ddc4cae244143536f65ff36522485e1e101d3624ac0b073d9c191302dd', '[\"user\"]', 1, '2025-02-08 08:31:56', '2025-02-12 06:05:50', '2025-02-05 07:25:50', '2025-02-08 08:31:56'),
(332, 'App\\Models\\User', 10, 'authToken', 'f88ecc93efb47756309b3ce4a0bbee21b1ae1cc09c7b38529654f5f04d874edc', '[\"user_rt\"]', 1, NULL, '2025-02-12 07:25:50', '2025-02-05 07:25:50', '2025-02-05 07:25:50'),
(333, 'App\\Models\\Employee', 1, 'authToken', 'ecce1238258c40d56fc702243fcd702ada3fc54ebce63b1aae9d655f3a5904d5', '[\"main-admin\"]', 1, '2025-02-05 12:30:54', NULL, '2025-02-05 07:33:21', '2025-02-05 12:30:54'),
(334, 'App\\Models\\User', 10, 'authToken', '2d892ba948c993a62e5c5a74b55d2dc131cc7e1413521067490b24ed266614cf', '[\"user\"]', 1, '2025-02-06 11:33:12', '2025-02-12 07:00:36', '2025-02-05 08:20:36', '2025-02-06 11:33:12'),
(335, 'App\\Models\\User', 10, 'authToken', '394295168cc688d9e268e18567d935a4b6de8817f63463e10d5156f4d8424a5d', '[\"user_rt\"]', 1, NULL, '2025-02-12 08:20:36', '2025-02-05 08:20:36', '2025-02-05 08:20:36'),
(341, 'App\\Models\\User', 11, 'authToken', '437ef346524f2bb6ce24286ed6f7025c726e54b46cf1dae5b70f8ef5e68e297c', '[\"user_rt\"]', 1, NULL, '2025-02-12 12:21:08', '2025-02-05 12:21:08', '2025-02-05 12:21:08'),
(342, 'App\\Models\\Employee', 1, 'authToken', 'd685f39284cfc78ced1dc4ce72295c8327b4482f08770ae43d053e71fc68491f', '[\"main-admin\"]', 1, '2025-02-05 13:08:59', NULL, '2025-02-05 12:24:44', '2025-02-05 13:08:59'),
(344, 'App\\Models\\User', 19, 'authToken', 'd5589095d4480c2eac198145522f6596f5253b4b1c75205a9dc3bff44c4f4f38', '[\"user_rt\"]', 1, NULL, '2025-02-12 12:39:00', '2025-02-05 12:39:00', '2025-02-05 12:39:00'),
(346, 'App\\Models\\User', 10, 'authToken', '31113b0e04867e4b4ac85d5fa9a81952e50383dd1039aec900d012cb9a5f8e1f', '[\"user\"]', 1, '2025-02-11 09:13:18', NULL, '2025-02-06 06:49:15', '2025-02-11 09:13:18'),
(347, 'App\\Models\\User', 10, 'authToken', '3b1edbbb73df070e2c52bc962310a6c6dfe61e1d9e7c0ce1af63ca15254f9fd5', '[\"user_rt\"]', 1, NULL, '2025-02-13 06:49:15', '2025-02-06 06:49:15', '2025-02-06 06:49:15'),
(349, 'App\\Models\\User', 11, 'authToken', '7eb8dd1d38c76a5cedc50ef8004dfbdcf9a09efb9db516f322adcda914e2aacf', '[\"user_rt\"]', 1, NULL, '2025-02-13 08:18:15', '2025-02-06 08:18:15', '2025-02-06 08:18:15'),
(350, 'App\\Models\\User', 10, 'authToken', '817ca937200d74c5a1b38859b42198ce28e23d6d9106713261e0aa0b2d3644a9', '[\"user\"]', 1, '2025-02-06 10:18:24', NULL, '2025-02-06 08:19:13', '2025-02-06 10:18:24'),
(351, 'App\\Models\\User', 10, 'authToken', '356c0951b6dcb43cdfae63a0a5ee3906c0f5462616dd462ed81dce6b7a342f00', '[\"user_rt\"]', 1, NULL, '2025-02-13 08:19:13', '2025-02-06 08:19:13', '2025-02-06 08:19:13'),
(353, 'App\\Models\\Employee', 30, 'authToken', '52f73857fa01c8f63a2479b323b29aa04eba039791f0c209fcd841ad8266ca41', '[\"warehouse-manager\"]', 1, '2025-02-06 08:21:41', NULL, '2025-02-06 08:21:20', '2025-02-06 08:21:41'),
(354, 'App\\Models\\Employee', 28, 'authToken', '4a747cc1235b36f3756e846d45f27cb7b68386fc9f63853c845476c164c5078f', '[\"delivery-boy\"]', 1, '2025-02-06 08:28:01', NULL, '2025-02-06 08:26:22', '2025-02-06 08:28:01'),
(355, 'App\\Models\\User', 11, 'authToken', 'fe394352331540a8974c95dd47aed9258b436e40993fd28a054c4ec5bbd90404', '[\"user\"]', 1, '2025-02-06 10:33:53', NULL, '2025-02-06 10:31:28', '2025-02-06 10:33:53'),
(356, 'App\\Models\\User', 11, 'authToken', '0bd3f1925562c362f9cc98e60bb9c13a4f4795c1abbeff39bf24c1f88597a4f1', '[\"user_rt\"]', 1, NULL, '2025-02-13 10:31:28', '2025-02-06 10:31:28', '2025-02-06 10:31:28'),
(357, 'App\\Models\\User', 11, 'authToken', 'ff0e1ca9160a5737f75b3ab218408d768c1d78f041b55551991e88135c999c1b', '[\"user\"]', 1, '2025-02-06 10:45:34', NULL, '2025-02-06 10:44:47', '2025-02-06 10:45:34'),
(358, 'App\\Models\\User', 11, 'authToken', 'cd79e5e232d414082d7369666e1d762f8528cb03b86ed11bc8d48a90e0b14b7c', '[\"user_rt\"]', 1, NULL, '2025-02-13 10:44:48', '2025-02-06 10:44:48', '2025-02-06 10:44:48'),
(360, 'App\\Models\\User', 11, 'authToken', 'aa730fcd9425a81d650aaa2acfa5c995088f810905be2c0e8ecaa9746e46fe2e', '[\"user\"]', 1, '2025-02-09 07:03:38', NULL, '2025-02-06 11:41:01', '2025-02-09 07:03:38'),
(361, 'App\\Models\\User', 11, 'authToken', '71d1f6a09b8e252cf897d6fb7816bb7f6cd41bec0358c7bb9a771a10041bc8c3', '[\"user_rt\"]', 1, NULL, '2025-02-13 11:41:01', '2025-02-06 11:41:01', '2025-02-06 11:41:01'),
(362, 'App\\Models\\User', 19, 'authToken', '3831b8b457f998931146aab97c056d18f6f80a154940e3da205b7ff1ef3450e1', '[\"user\"]', 1, '2025-02-09 08:30:27', '2025-02-15 07:12:10', '2025-02-08 08:32:09', '2025-02-09 08:30:27'),
(363, 'App\\Models\\User', 19, 'authToken', 'ab9a2ab0e2d4d84ab60dde580b4bf764696f147eeb57dc656477c3abb60fa233', '[\"user_rt\"]', 1, NULL, '2025-02-15 08:32:10', '2025-02-08 08:32:10', '2025-02-08 08:32:10'),
(364, 'App\\Models\\User', 10, 'authToken', '868caeeb9dcb646790723da18a8088fd3c7233f29ce7f7211a90b858f3a40c85', '[\"user\"]', 1, '2025-02-10 07:11:53', '2025-02-15 07:49:07', '2025-02-08 09:09:07', '2025-02-10 07:11:53'),
(365, 'App\\Models\\User', 10, 'authToken', 'd2fbd4c23998a1e83a8e990e6b7b8cb5b33ede588855d3c0b583d907eb018988', '[\"user_rt\"]', 1, NULL, '2025-02-15 09:09:07', '2025-02-08 09:09:07', '2025-02-08 09:09:07'),
(370, 'App\\Models\\Employee', 1, 'authToken', 'e9b04363b2cd27ecce5567602140b844342f1dc28f20ae5942c7f0139f82980e', '[\"main-admin\"]', 1, '2025-02-09 10:23:41', NULL, '2025-02-09 10:23:10', '2025-02-09 10:23:41'),
(371, 'App\\Models\\User', 10, 'authToken', 'dc687dd41bd1cbae7653a6a471153d242c26ee488ce7016751557e0cfa99a0cb', '[\"user\"]', 1, '2025-02-11 09:05:38', '2025-02-16 11:23:49', '2025-02-09 12:43:49', '2025-02-11 09:05:38'),
(372, 'App\\Models\\User', 10, 'authToken', '8b501c84bcd71201543632eb98cf81463f8413049139753cf4c390dedec6b341', '[\"user_rt\"]', 1, NULL, '2025-02-16 12:43:50', '2025-02-09 12:43:49', '2025-02-09 12:43:50'),
(373, 'App\\Models\\User', 11, 'authToken', 'd2ba2e0ff98f6de06a378ee3846c3925a13d69c5c0e74ba2bb6fb43926bf6002', '[\"user\"]', 1, '2025-02-12 10:26:25', NULL, '2025-02-10 07:07:27', '2025-02-12 10:26:25'),
(374, 'App\\Models\\User', 11, 'authToken', '2425dbbf0119c39dfffe479df4c2a57ab8d2745497fdab65845dab43235fccc6', '[\"user_rt\"]', 1, NULL, '2025-02-17 07:07:27', '2025-02-10 07:07:27', '2025-02-10 07:07:27'),
(375, 'App\\Models\\Employee', 1, 'authToken', '4660d11da61fc65f742053b5453aeafa5fabd8106165e2477275488aaee3f5e0', '[\"main-admin\"]', 1, '2025-02-10 07:35:43', NULL, '2025-02-10 07:35:33', '2025-02-10 07:35:43'),
(376, 'App\\Models\\Employee', 1, 'authToken', 'ff02d5c21b0eb1a86d7b26aa827183fdb995e73cec6036c2ec5df635449ff72b', '[\"main-admin\"]', 1, '2025-02-10 08:01:22', NULL, '2025-02-10 07:38:04', '2025-02-10 08:01:22'),
(377, 'App\\Models\\Employee', 1, 'authToken', '9f835de567018d9874393ca0687272057111f1f69fb2bfbc292450f5cdb5f78d', '[\"main-admin\"]', 1, '2025-02-10 08:03:55', NULL, '2025-02-10 08:03:53', '2025-02-10 08:03:55'),
(378, 'App\\Models\\Employee', 1, 'authToken', '4524630138c8050943a55761a07e0cc5cca17c5179cd76a5870fe7a245167a5b', '[\"main-admin\"]', 1, '2025-02-10 08:12:28', NULL, '2025-02-10 08:12:23', '2025-02-10 08:12:28'),
(379, 'App\\Models\\Employee', 1, 'authToken', '344352c077d583533b96d4282b161435557db7e57e929462e4c35a784a427568', '[\"main-admin\"]', 1, '2025-02-10 08:15:07', NULL, '2025-02-10 08:14:52', '2025-02-10 08:15:07'),
(380, 'App\\Models\\Employee', 1, 'authToken', '35f7fab68d05d7a4a7f6d0e3cc30a73ad49619a293a7541648d7615ff2b67c0b', '[\"main-admin\"]', 1, '2025-02-10 08:23:52', NULL, '2025-02-10 08:22:35', '2025-02-10 08:23:52'),
(381, 'App\\Models\\Employee', 30, 'authToken', 'f5efa32fd10433fec784e91170502bd29644a75c83cef6b6b56a834986755260', '[\"warehouse-manager\"]', 1, '2025-02-10 11:22:40', NULL, '2025-02-10 09:21:52', '2025-02-10 11:22:40'),
(382, 'App\\Models\\Employee', 29, 'authToken', 'f3ac02fb9c01179d87364728e83d346f0cbc0a80eb5e618009c8a6ceea341f28', '[\"warehouse-manager\"]', 1, '2025-02-10 11:21:41', NULL, '2025-02-10 09:22:27', '2025-02-10 11:21:41'),
(384, 'App\\Models\\User', 10, 'authToken', '0590e8bd09570e9d8705ac52c13b06ed928b0273f99866bb939f98186e19ab75', '[\"user\"]', 1, '2025-02-12 13:02:23', NULL, '2025-02-11 09:17:55', '2025-02-12 13:02:23'),
(385, 'App\\Models\\User', 10, 'authToken', 'dee103bee2f0b8ead7de5dd2a3efcb7e7fb09f18a301af2275cce825d62414c2', '[\"user_rt\"]', 1, NULL, '2025-02-18 09:17:55', '2025-02-11 09:17:55', '2025-02-11 09:17:55'),
(390, 'App\\Models\\User', 19, 'authToken', '01fe9ac2fd434504a232e150cf191081bdacea686c96b7fabc2da11c7f48ba74', '[\"user\"]', 1, '2025-03-02 09:04:55', NULL, '2025-02-11 11:13:31', '2025-03-02 09:04:55'),
(391, 'App\\Models\\User', 19, 'authToken', '1807f3791d29285ed064ac9b32738bd7b87bbfdd9719ab07d2afcb08d1a108a1', '[\"user_rt\"]', 1, NULL, '2025-02-18 11:13:31', '2025-02-11 11:13:31', '2025-02-11 11:13:31'),
(392, 'App\\Models\\Employee', 27, 'authToken', '45a24ba444e694c69b6f417bb482b4aa9b1248ab03ef4a8966371ffe6e3befec', '[\"delivery-boy\"]', 1, NULL, NULL, '2025-02-11 11:28:50', '2025-02-11 11:28:50'),
(393, 'App\\Models\\Employee', 27, 'authToken', '6537f1095cde0c0bf4d22b9ff0536a3e6a2bf455298cdc9e0c3241411774ee36', '[\"delivery-boy\"]', 1, '2025-02-11 11:57:49', NULL, '2025-02-11 11:30:48', '2025-02-11 11:57:49'),
(394, 'App\\Models\\Employee', 29, 'authToken', 'a5bc5cbbf0728a240c3a77697d6031f91a3b4adf863406ed540453c554f1accf', '[\"warehouse-manager\"]', 1, '2025-02-11 10:06:23', NULL, '2025-02-11 12:10:02', '2025-02-11 10:06:23'),
(406, 'App\\Models\\Employee', 1, 'authToken', '602ea06b8ce5fcf63fd9b14e367a98890134a825de257d879ec758873afd961e', '[\"main-admin\"]', 1, '2025-02-12 12:58:30', NULL, '2025-02-12 10:38:58', '2025-02-12 12:58:30'),
(408, 'App\\Models\\Employee', 29, 'authToken', 'c38fdd4fb142315b1934b281cd37700f5a7bb450ad20298525ea44aec674fc05', '[\"warehouse-manager\"]', 1, '2025-02-12 12:57:00', NULL, '2025-02-12 12:53:27', '2025-02-12 12:57:00'),
(410, 'App\\Models\\User', 10, 'authToken', 'e5aaefc1436fb43b918bfdba2149d978700a60a7e32cd48318359e35904eabca', '[\"user\"]', 1, '2025-02-14 13:06:38', NULL, '2025-02-13 11:00:38', '2025-02-14 13:06:38'),
(411, 'App\\Models\\User', 10, 'authToken', 'b1f00a38def43fa44e706a498d2eb83cf314f113c76aa06f7b98b2c5290c5576', '[\"user_rt\"]', 1, NULL, '2025-02-20 11:00:38', '2025-02-13 11:00:38', '2025-02-13 11:00:38'),
(412, 'App\\Models\\Employee', 29, 'authToken', '240e4d0f216047e452d033352edecb54dc483f20da16bcd859b30e74221bb922', '[\"warehouse-manager\"]', 1, '2025-02-13 11:49:17', NULL, '2025-02-13 11:04:21', '2025-02-13 11:49:17'),
(413, 'App\\Models\\User', 10, 'authToken', '5a055cad0b65367e32b7131986ce127da483eb37301dc20f12344a3c34393416', '[\"user\"]', 1, '2025-02-15 11:00:13', NULL, '2025-02-13 11:10:07', '2025-02-15 11:00:13'),
(414, 'App\\Models\\User', 10, 'authToken', 'fce5b12e1d267146140bf62d2ceb96e314cc3f848176562444e828ef29379018', '[\"user_rt\"]', 1, NULL, '2025-02-20 11:10:07', '2025-02-13 11:10:07', '2025-02-13 11:10:07'),
(415, 'App\\Models\\User', 10, 'authToken', '1af822f3661e5fe718e37b69d8d112d4054bd0ac891104966660c7bece06b341', '[\"user\"]', 1, '2025-02-14 06:50:39', '2025-02-21 05:24:01', '2025-02-14 06:44:01', '2025-02-14 06:50:39'),
(416, 'App\\Models\\User', 10, 'authToken', '24ae10f6ec91225cd11ae2dddd2289f70fdcb8b0ecece4b613ef4582cb358c25', '[\"user_rt\"]', 1, NULL, '2025-02-21 06:44:02', '2025-02-14 06:44:01', '2025-02-14 06:44:02'),
(418, 'App\\Models\\User', 10, 'authToken', 'dec22ba5b5a623b3efa5c99824746e11fb1d392ea9ba9e19313bd507e07aef30', '[\"user_rt\"]', 1, NULL, '2025-02-21 13:22:15', '2025-02-14 13:22:15', '2025-02-14 13:22:15'),
(419, 'App\\Models\\User', 10, 'authToken', 'fd6d623b6270802b2a4cc3a2fdd60bacfad5c06b5e0bb983429fcb07f5e5e3fd', '[\"user\"]', 1, '2025-02-15 08:22:51', NULL, '2025-02-15 08:22:41', '2025-02-15 08:22:51'),
(420, 'App\\Models\\User', 10, 'authToken', 'a3ae6f55500ec85ae79bf8ed2a18cb3d823a6f80007b08d4b469b794cef9fdfe', '[\"user_rt\"]', 1, NULL, '2025-02-22 08:22:41', '2025-02-15 08:22:41', '2025-02-15 08:22:41'),
(422, 'App\\Models\\User', 10, 'authToken', '1fba02173289993b943dcda5275d5a61368096f5cc851d94be1c05163475b113', '[\"user_rt\"]', 1, NULL, '2025-02-22 08:25:27', '2025-02-15 08:25:27', '2025-02-15 08:25:27'),
(423, 'App\\Models\\User', 10, 'authToken', '1a0cd2b21ecf71480d2f108de2d44ab850c8ed501ca146e732b6e2506585f042', '[\"user\"]', 1, '2025-02-16 17:32:42', NULL, '2025-02-15 09:29:10', '2025-02-16 17:32:43'),
(424, 'App\\Models\\User', 10, 'authToken', 'f85d91ef6320b4867ec1d0e71cf6aaf3bef71438598a9d5997eb177d58031d85', '[\"user_rt\"]', 1, NULL, '2025-02-22 09:29:10', '2025-02-15 09:29:10', '2025-02-15 09:29:10'),
(425, 'App\\Models\\User', 10, 'authToken', '4eb2800c84c867957751bc09335ce0a30062a0eb74a76e6f54afc28cd68bb50e', '[\"user\"]', 1, '2025-02-15 10:08:54', NULL, '2025-02-15 10:08:19', '2025-02-15 10:08:54'),
(426, 'App\\Models\\User', 10, 'authToken', '620fac0e82213fd840a4959363f4b0b417716467dd21b5ffcddc0847ea125a67', '[\"user_rt\"]', 1, NULL, '2025-02-22 10:08:19', '2025-02-15 10:08:19', '2025-02-15 10:08:19'),
(430, 'App\\Models\\User', 10, 'authToken', '41f16bd340848df68b6d0dda23f29515d13f6cfcef3a969e27691264dc8f3a35', '[\"user\"]', 1, '2025-02-18 11:39:21', '2025-02-23 05:15:51', '2025-02-16 06:35:51', '2025-02-18 11:39:21'),
(431, 'App\\Models\\User', 10, 'authToken', 'cd8f88f162e9d670e8b28c33a5f239c7a3cf3fb48d254894604280df53e74f22', '[\"user_rt\"]', 1, NULL, '2025-02-23 06:35:51', '2025-02-16 06:35:51', '2025-02-16 06:35:51'),
(434, 'App\\Models\\User', 19, 'authToken', 'b4dd0474cac13b04841a99de5693f52975ed62893af70a24d629394d091880f9', '[\"user\"]', 1, '2025-02-19 09:05:16', '2025-02-23 08:09:40', '2025-02-16 09:29:40', '2025-02-19 09:05:16'),
(435, 'App\\Models\\User', 19, 'authToken', 'f06b9826055db35cad2820008b8b9cf428239b4581af433d1ebabea6bc736295', '[\"user_rt\"]', 1, NULL, '2025-02-23 09:29:40', '2025-02-16 09:29:40', '2025-02-16 09:29:40'),
(447, 'App\\Models\\User', 11, 'authToken', '804b47acdf9627cadf7d9afad08d2963aba33190ccd152efbee0e728d0cc567c', '[\"user\"]', 1, '2025-02-16 12:03:00', NULL, '2025-02-16 11:04:40', '2025-02-16 12:03:00'),
(448, 'App\\Models\\User', 11, 'authToken', '0a25fefcc0713c926e8eb40688e182eb9608a34e35e6c9552b550c121c1fc720', '[\"user_rt\"]', 1, NULL, '2025-02-23 11:04:40', '2025-02-16 11:04:40', '2025-02-16 11:04:40'),
(450, 'App\\Models\\Employee', 30, 'authToken', '27d372ad69408219b559f51044c90293a1039647b1d5d82452d26134f241bbf3', '[\"warehouse-manager\"]', 1, '2025-02-16 11:53:01', NULL, '2025-02-16 11:09:05', '2025-02-16 11:53:01'),
(451, 'App\\Models\\Employee', 29, 'authToken', '9fcfcc2d40b21399eca1b7ac5e6edecf9c52cd65575c000adb945b072e633900', '[\"warehouse-manager\"]', 1, '2025-02-16 11:13:22', NULL, '2025-02-16 11:12:45', '2025-02-16 11:13:22'),
(458, 'App\\Models\\Employee', 30, 'authToken', 'dd9a5a3ba55c040ac2f92ae84e18c88c4995788657345c321f412c1b3bd7b9e3', '[\"warehouse-manager\"]', 1, '2025-02-16 12:29:04', NULL, '2025-02-16 12:27:34', '2025-02-16 12:29:04'),
(461, 'App\\Models\\Employee', 30, 'authToken', '3c6fbfb13f44d5fb354b15d1a39e8300fcf6e0b291afbeb4a7d9617b35ac3175', '[\"warehouse-manager\"]', 1, '2025-02-16 12:55:50', NULL, '2025-02-16 12:40:47', '2025-02-16 12:55:50'),
(462, 'App\\Models\\User', 10, 'authToken', '9b0fa225488fcb162bc803419ddd724fb0a451bdd1a02798e34793e79f1fec52', '[\"user\"]', 1, '2025-02-16 18:38:31', NULL, '2025-02-16 17:38:18', '2025-02-16 18:38:31'),
(463, 'App\\Models\\User', 10, 'authToken', 'dfd2c2ac134da98583a209b117b43cc8faa6a8c271d617339b90c90d4b07f729', '[\"user_rt\"]', 1, NULL, '2025-02-23 17:38:18', '2025-02-16 17:38:18', '2025-02-16 17:38:18'),
(465, 'App\\Models\\Employee', 29, 'authToken', '5fad4a221a6f21628789b81e5545bfda62f2a7dc404ac37ced9f27ba058b43d0', '[\"warehouse-manager\"]', 1, '2025-02-16 18:33:05', NULL, '2025-02-16 18:12:42', '2025-02-16 18:33:05'),
(469, 'App\\Models\\User', 10, 'authToken', 'd9064ff92a686c2c7c40fb5889d91361e47866c9fa43e0ace9fdea6e5768d6ec', '[\"user\"]', 1, '2025-02-18 11:03:03', NULL, '2025-02-17 07:50:57', '2025-02-18 11:03:03'),
(470, 'App\\Models\\User', 10, 'authToken', 'f5069512701b5295e0cc2c9ef66012db3f29b97d7fe7d3b9cd462992ea3e57d8', '[\"user_rt\"]', 1, NULL, '2025-02-24 07:50:57', '2025-02-17 07:50:57', '2025-02-17 07:50:57'),
(471, 'App\\Models\\Employee', 29, 'authToken', 'bc1f982aa5c80ef75976dbadd3ccc5435936068e1d09e1f815f0118136ff9db2', '[\"warehouse-manager\"]', 1, '2025-02-17 08:22:55', NULL, '2025-02-17 08:11:18', '2025-02-17 08:22:55'),
(475, 'App\\Models\\Employee', 1, 'authToken', '793898e19aa3bfb5ec5488d59d6e3dbfa2d09c0ebc7475e7b3bf02af8d079c40', '[\"main-admin\"]', 1, '2025-02-17 16:29:20', NULL, '2025-02-17 11:13:20', '2025-02-17 16:29:20'),
(485, 'App\\Models\\Employee', 31, 'authToken', '82cb0dd14b146a522a04b2f3f39a8b4609b1c007c06ba5d09b2a7fb8fe116ecc', '[\"operation-manager\"]', 1, '2025-02-17 13:50:18', NULL, '2025-02-17 13:19:52', '2025-02-17 13:50:18'),
(492, 'App\\Models\\Employee', 1, 'authToken', '2448ee1586a64d475e3e6f173bab10f97796b7af9970cfc1a7d561931fe4b9e9', '[\"main-admin\"]', 1, '2025-02-18 12:57:45', NULL, '2025-02-18 11:42:55', '2025-02-18 12:57:45'),
(501, 'App\\Models\\User', 10, 'authToken', '8eabd2f4255ead699526458794a1f0f70f0c170a561cfce565ad3d635a0d67b4', '[\"user\"]', 1, '2025-02-21 17:51:07', '2025-02-26 06:17:42', '2025-02-19 07:37:42', '2025-02-21 17:51:07'),
(502, 'App\\Models\\User', 10, 'authToken', 'e90ca3dbb205e121e4f33c828bec6409b9a8b79d15c0b50957c49d81766847a6', '[\"user_rt\"]', 1, NULL, '2025-02-26 07:37:42', '2025-02-19 07:37:42', '2025-02-19 07:37:42'),
(506, 'App\\Models\\Employee', 1, 'authToken', '545c9968b1a1d9ab176e26ebf685e49aea71f8fb5ef0f1be5c8f4f578a7a5537', '[\"main-admin\"]', 1, '2025-02-19 08:11:46', NULL, '2025-02-19 08:11:18', '2025-02-19 08:11:46'),
(516, 'App\\Models\\Employee', 30, 'authToken', 'f3956f4ebde2e8e2b81652885841f59b42556e2adf3a7c127ddea6d9b9471b46', '[\"warehouse-manager\"]', 1, '2025-02-19 12:55:36', NULL, '2025-02-19 10:02:02', '2025-02-19 12:55:36'),
(517, 'App\\Models\\User', 19, 'authToken', 'cc77fd62b35d1f32579209420fc8b3317d6d360f56bade0d5fefd491604c4ab8', '[\"user\"]', 1, '2025-02-22 10:08:34', '2025-02-26 08:48:58', '2025-02-19 10:08:58', '2025-02-22 10:08:34'),
(518, 'App\\Models\\User', 19, 'authToken', '42c709ae05b882178f40f0fee595011d5cdbfb652a697798396441db6e438bee', '[\"user_rt\"]', 1, NULL, '2025-02-26 10:08:58', '2025-02-19 10:08:58', '2025-02-19 10:08:58'),
(522, 'App\\Models\\Employee', 29, 'authToken', '46c37ad73b0ce3c33ca7d997b907923d51e6ccd56fcbb03cd1a22f8b1e828419', '[\"warehouse-manager\"]', 1, '2025-02-19 12:46:51', NULL, '2025-02-19 12:46:39', '2025-02-19 12:46:51'),
(527, 'App\\Models\\User', 10, 'authToken', '7391517a21d724c9bd2d8638179c78360e053eb2615b492b2af26ec134e4c78b', '[\"user\"]', 1, '2025-02-20 12:36:24', '2025-02-27 05:27:27', '2025-02-20 06:47:27', '2025-02-20 12:36:24'),
(528, 'App\\Models\\User', 10, 'authToken', 'b3753e9c4a8a66afc838cc326e7a91640e73871a167ef280fde68f8853ca6328', '[\"user_rt\"]', 1, NULL, '2025-02-27 06:47:27', '2025-02-20 06:47:27', '2025-02-20 06:47:27'),
(531, 'App\\Models\\Employee', 29, 'authToken', '9a1cd576286cd42adffdbd61ba02424cd9c2bcf8caac6e84f5b942c47e93f381', '[\"warehouse-manager\"]', 1, '2025-02-20 11:15:13', NULL, '2025-02-20 07:28:11', '2025-02-20 11:15:13'),
(532, 'App\\Models\\Employee', 30, 'authToken', '58916980d5a95b9cb64a35c79b05d2623c363d7ba9eee53b1151a6446e2005c2', '[\"warehouse-manager\"]', 1, '2025-02-20 11:17:34', NULL, '2025-02-20 07:29:17', '2025-02-20 11:17:34'),
(534, 'App\\Models\\User', 10, 'authToken', 'c34a9123d8f07b42581e9df2114cd2bc04b772da2659db19ab193a0efb53ce0c', '[\"user\"]', 1, '2025-02-20 12:48:00', '2025-02-27 06:27:18', '2025-02-20 07:47:18', '2025-02-20 12:48:00'),
(535, 'App\\Models\\User', 10, 'authToken', '7263a08946f091f1d5e976ea808ac8a1045fdff1dfae3f1c81f24ca4dca3c0fa', '[\"user_rt\"]', 1, NULL, '2025-02-27 07:47:18', '2025-02-20 07:47:18', '2025-02-20 07:47:18'),
(536, 'App\\Models\\Employee', 1, 'authToken', 'dd84f95a981a6b6a60f34e473266ab3c269eb2fcfbeefeddb39f1eccb93a3966', '[\"main-admin\"]', 1, '2025-02-20 13:02:58', NULL, '2025-02-20 07:57:52', '2025-02-20 13:02:58'),
(537, 'App\\Models\\User', 10, 'authToken', 'd0f97e38f17a97ac7b7f603f228b044ed96266e4590548362aab30473638f835', '[\"user\"]', 1, '2025-02-23 10:19:20', '2025-02-27 11:29:43', '2025-02-20 12:49:43', '2025-02-23 10:19:20'),
(538, 'App\\Models\\User', 10, 'authToken', '50522cb244b546b12971350cce375e16a3aee706723aeacca2472f228b1a4bab', '[\"user_rt\"]', 1, NULL, '2025-02-27 12:49:43', '2025-02-20 12:49:43', '2025-02-20 12:49:43'),
(539, 'App\\Models\\User', 10, 'authToken', '8e8995da016d868afbb4e7c1ce19507d387480cbf6eaa112fd381e2ab5e8cc79', '[\"user\"]', 1, '2025-02-20 12:50:15', '2025-02-27 11:29:47', '2025-02-20 12:49:47', '2025-02-20 12:50:15'),
(540, 'App\\Models\\User', 10, 'authToken', '584e39541e1c4f07fbf6ecad13c470136f016aac8af7c62a0fa03b0935efa23d', '[\"user_rt\"]', 1, NULL, '2025-02-27 12:49:47', '2025-02-20 12:49:47', '2025-02-20 12:49:47'),
(541, 'App\\Models\\User', 10, 'authToken', '77de758bf9099497bc3b3321616101900d148d4897b1eb0c040b4daf66cb9b12', '[\"user\"]', 1, '2025-02-20 22:34:54', '2025-02-27 11:31:08', '2025-02-20 12:51:08', '2025-02-20 22:34:54'),
(542, 'App\\Models\\User', 10, 'authToken', '187f83cb5478ad8eb2aa99ddba7c810d6330ce7f0a179b99b11c369c922b52d3', '[\"user_rt\"]', 1, NULL, '2025-02-27 12:51:08', '2025-02-20 12:51:08', '2025-02-20 12:51:08'),
(543, 'App\\Models\\Employee', 29, 'authToken', '431148df0ae13f4a9b8d8fcd59710cca943e24672ae514f1c328b2c5fb186a89', '[\"warehouse-manager\"]', 1, '2025-02-20 16:24:44', NULL, '2025-02-20 16:24:41', '2025-02-20 16:24:44'),
(544, 'App\\Models\\Employee', 30, 'authToken', 'e10a5c19446e551e67cc52055302757185e621000f087a4e06d3b55e478092ec', '[\"warehouse-manager\"]', 1, '2025-02-20 17:10:18', NULL, '2025-02-20 16:28:16', '2025-02-20 17:10:18'),
(545, 'App\\Models\\Employee', 29, 'authToken', '025bdc918e8fd6356f789e86e4eb8ed3d47d51228402449056e33e563a211428', '[\"warehouse-manager\"]', 1, '2025-02-21 19:20:57', NULL, '2025-02-21 14:56:26', '2025-02-21 19:20:57'),
(546, 'App\\Models\\Employee', 27, 'authToken', 'eb98ddb5bbbb874e55ff68a32205c7a306b68bddebcee792e239c8e991df68c8', '[\"delivery-boy\"]', 1, '2025-02-21 19:21:07', NULL, '2025-02-21 14:57:34', '2025-02-21 19:21:07'),
(547, 'App\\Models\\Employee', 1, 'authToken', 'ef359151eec33ae958df503f356622aa86599408a6d9cd6e4f418a5c5548c70e', '[\"main-admin\"]', 1, '2025-02-22 08:40:23', NULL, '2025-02-22 08:11:11', '2025-02-22 08:40:23'),
(548, 'App\\Models\\User', 10, 'authToken', '6d3bc99fb32d7c4f161603ff7ddad0aa87d22cb74370e79f0bdcb0a78d77ef4e', '[\"user\"]', 1, '2025-02-22 10:12:10', '2025-03-01 08:33:03', '2025-02-22 09:53:03', '2025-02-22 10:12:10'),
(549, 'App\\Models\\User', 10, 'authToken', '9b429993f1a1152b5d26e2ad63d6ca0b26275da99e17341c1b5b8602f161b03f', '[\"user_rt\"]', 1, NULL, '2025-03-01 09:53:03', '2025-02-22 09:53:03', '2025-02-22 09:53:03'),
(550, 'App\\Models\\User', 10, 'authToken', '02cae61ff98277c3df6efff95ac2fdf2d5e460519d58e0433d7221e2d0bb066e', '[\"user\"]', 1, '2025-02-22 11:42:30', '2025-03-01 08:39:37', '2025-02-22 09:59:37', '2025-02-22 11:42:30'),
(551, 'App\\Models\\User', 10, 'authToken', '429cebaa56f1628b4a3caf5d255c65327b5b1b03d5f7c7c6d80345464560c371', '[\"user_rt\"]', 1, NULL, '2025-03-01 09:59:37', '2025-02-22 09:59:37', '2025-02-22 09:59:37'),
(552, 'App\\Models\\User', 10, 'authToken', 'f4d2eeb3350e1fbc3d7cb5fef790a1d82a53c24a2b75fd18fe10c0793a43f977', '[\"user\"]', 1, '2025-02-23 07:11:08', '2025-03-01 09:00:38', '2025-02-22 10:20:38', '2025-02-23 07:11:08'),
(553, 'App\\Models\\User', 10, 'authToken', 'b93a023e12e2ee1118d003f4e5c28a3af70ec6b8752c82484163b3afd240bb5d', '[\"user_rt\"]', 1, NULL, '2025-03-01 10:20:38', '2025-02-22 10:20:38', '2025-02-22 10:20:38'),
(554, 'App\\Models\\User', 19, 'authToken', 'e9a436e08056416a102201183fd7e0044b775c6e8dda24b5ea0a9e5b25cc8252', '[\"user\"]', 1, '2025-02-25 08:25:37', '2025-03-01 09:08:00', '2025-02-22 10:28:00', '2025-02-25 08:25:37'),
(555, 'App\\Models\\User', 19, 'authToken', '8ba46d2ce3798c1bc0d3be59f6d51bea3c41f650c093e5b180c0521cb76f967d', '[\"user_rt\"]', 1, NULL, '2025-03-01 10:28:00', '2025-02-22 10:28:00', '2025-02-22 10:28:00'),
(556, 'App\\Models\\User', 10, 'authToken', 'b30d05d314cd5bb9e57af774f1c7d559311c0723a589fc82ca80466a67aeca7e', '[\"user\"]', 1, '2025-02-24 12:52:26', '2025-03-01 10:52:16', '2025-02-22 12:12:16', '2025-02-24 12:52:26'),
(557, 'App\\Models\\User', 10, 'authToken', 'b6b79acb28cd4a93181e90af68e32354bc6ac228deefa3119c190af782362876', '[\"user_rt\"]', 1, NULL, '2025-03-01 12:12:16', '2025-02-22 12:12:16', '2025-02-22 12:12:16'),
(558, 'App\\Models\\User', 10, 'authToken', 'f42e7d0ac7573e1eac14b89c3ae27d879da2c29080ff2111bfa488c0f1030eae', '[\"user\"]', 1, '2025-02-23 11:33:15', '2025-03-02 06:00:51', '2025-02-23 07:20:51', '2025-02-23 11:33:15'),
(559, 'App\\Models\\User', 10, 'authToken', '4b0f8a927fc2421b57a1c53df9938804f39c6425eb2b773d961650bdf1b916be', '[\"user_rt\"]', 1, NULL, '2025-03-02 07:20:51', '2025-02-23 07:20:51', '2025-02-23 07:20:51'),
(560, 'App\\Models\\User', 10, 'authToken', 'c0147a5cfc239ecbcd7222f867deb19feea68e21eab20307bf2a4606e2c0569e', '[\"user\"]', 1, '2025-02-26 09:39:47', '2025-03-02 08:59:57', '2025-02-23 10:19:57', '2025-02-26 09:39:47'),
(561, 'App\\Models\\User', 10, 'authToken', '4fca68a7ad0b7f38c6d8e6b596662238adddc374328acb0f964f600134db682b', '[\"user_rt\"]', 1, NULL, '2025-03-02 10:19:57', '2025-02-23 10:19:57', '2025-02-23 10:19:57'),
(563, 'App\\Models\\Employee', 1, 'authToken', '345149fddfd78d991f7e6b0fd05e619e174d483e26d3f83df7c27cc3448dc7d1', '[\"main-admin\"]', 1, '2025-02-24 11:48:01', NULL, '2025-02-23 12:07:11', '2025-02-24 11:48:01'),
(564, 'App\\Models\\User', 10, 'authToken', '97c2c43d4cd4d7f6b85ee2f4dd8d4b71a4b87a179bd18e2c99b6832252102c96', '[\"user\"]', 1, '2025-02-24 10:08:03', NULL, '2025-02-24 07:51:57', '2025-02-24 10:08:03'),
(565, 'App\\Models\\User', 10, 'authToken', '16eed9849a5d59e3ce0e214be6b16fce9d50827c297e927f4d649c545118aead', '[\"user_rt\"]', 1, NULL, '2025-03-03 07:51:57', '2025-02-24 07:51:57', '2025-02-24 07:51:57'),
(568, 'App\\Models\\Employee', 28, 'authToken', '33c92119872617eb9bd24cf5bc65817385644547bd0220c5b5a5fadb9912d387', '[\"delivery-boy\"]', 1, '2025-02-24 08:31:17', NULL, '2025-02-24 08:26:30', '2025-02-24 08:31:17'),
(570, 'App\\Models\\User', 10, 'authToken', 'a7526569adde91ef841e36b7c2a6efbde28c27fee26928d19ed98e2bd0ac3a38', '[\"user\"]', 1, '2025-02-24 10:19:28', NULL, '2025-02-24 10:19:20', '2025-02-24 10:19:28'),
(571, 'App\\Models\\User', 10, 'authToken', 'e319682c90e833d34cb073a42f3ce8f896f6927c4c6973851c946f70019494c4', '[\"user_rt\"]', 1, NULL, '2025-03-03 10:19:20', '2025-02-24 10:19:20', '2025-02-24 10:19:20'),
(572, 'App\\Models\\User', 10, 'authToken', '242d446ff948fa0cd9e460623fed75f6c896a0b80195f6aaeaf05ea48a267b8b', '[\"user\"]', 1, '2025-02-24 10:34:22', NULL, '2025-02-24 10:24:03', '2025-02-24 10:34:22'),
(573, 'App\\Models\\User', 10, 'authToken', 'ae7df88a5571ac5279d9bea9052ec98246e55ee7c76dc4d6ad896646450b12ab', '[\"user_rt\"]', 1, NULL, '2025-03-03 10:24:03', '2025-02-24 10:24:03', '2025-02-24 10:24:03'),
(574, 'App\\Models\\User', 10, 'authToken', '6188375bfc33f37def84feea1805f8e61be1a7915fd41316fbbe85872bd2e55e', '[\"user\"]', 1, '2025-02-24 11:07:38', NULL, '2025-02-24 11:06:14', '2025-02-24 11:07:38'),
(575, 'App\\Models\\User', 10, 'authToken', 'ff6fd389a1053e07ce0148edf694a0ea2bc22c3113b6fbab7ef708f209dfde04', '[\"user_rt\"]', 1, NULL, '2025-03-03 11:06:14', '2025-02-24 11:06:14', '2025-02-24 11:06:14'),
(576, 'App\\Models\\Employee', 29, 'authToken', '8b542c5811a3dbf5ed13be3125f8c31cd5c8c70dc872462c70b2b9d402a764c0', '[\"warehouse-manager\"]', 1, '2025-02-24 11:34:12', NULL, '2025-02-24 11:32:28', '2025-02-24 11:34:12'),
(577, 'App\\Models\\User', 10, 'authToken', 'f330e2ad5a4a10e88f07c6c9b1f107f5a00eb28071b82f2967c84daccc03a107', '[\"user\"]', 1, '2025-02-24 11:57:47', NULL, '2025-02-24 11:46:04', '2025-02-24 11:57:47'),
(578, 'App\\Models\\User', 10, 'authToken', 'bb430e8d25635c06f925c2bd4039c7baed9fdac4667981dff2cddc3a1a57d978', '[\"user_rt\"]', 1, NULL, '2025-03-03 11:46:04', '2025-02-24 11:46:04', '2025-02-24 11:46:04'),
(579, 'App\\Models\\User', 10, 'authToken', 'bc65e18fdf51ea00d86f5e927c99695148d7f6838638683e557b5f9f48079296', '[\"user\"]', 1, '2025-02-26 07:53:25', '2025-03-03 10:38:44', '2025-02-24 11:58:44', '2025-02-26 07:53:25'),
(580, 'App\\Models\\User', 10, 'authToken', '5778518f0ded0eb65d37fd666567941520acaa0616d281d7f41f22235fcdfcea', '[\"user_rt\"]', 1, NULL, '2025-03-03 11:58:44', '2025-02-24 11:58:44', '2025-02-24 11:58:44'),
(584, 'App\\Models\\Employee', 1, 'authToken', '051eecbe88e4b5878200b45a199de6a39f0cb9760d046332d37d3b3863b488e6', '[\"main-admin\"]', 1, '2025-02-25 11:48:14', NULL, '2025-02-24 12:18:34', '2025-02-25 11:48:14'),
(585, 'App\\Models\\User', 10, 'authToken', '65b4ddb2dc8ea79e7493101fae4f45c864cc99094fd7a2134bb77246c37b6990', '[\"user\"]', 1, '2025-02-24 12:46:26', NULL, '2025-02-24 12:24:50', '2025-02-24 12:46:26'),
(586, 'App\\Models\\User', 10, 'authToken', '251808c571726b37ec9a14ca79c87b3afb30e091db70de8b6df0e868e0cb6d0b', '[\"user_rt\"]', 1, NULL, '2025-03-03 12:24:50', '2025-02-24 12:24:50', '2025-02-24 12:24:50'),
(587, 'App\\Models\\User', 10, 'authToken', '1f701397c9fc65579373a84ef9c940ebeb040edf974d9f4ea7d71acdb98b596a', '[\"user\"]', 1, '2025-02-24 12:37:42', NULL, '2025-02-24 12:35:50', '2025-02-24 12:37:42'),
(588, 'App\\Models\\User', 10, 'authToken', '1f137ff6d2dc462a9d2f2ed40fc4412b959ae66190bdbcf7711b2673e9e2969c', '[\"user_rt\"]', 1, NULL, '2025-03-03 12:35:50', '2025-02-24 12:35:50', '2025-02-24 12:35:50'),
(589, 'App\\Models\\User', 10, 'authToken', 'be297564e827495c22e02e4539487f34d7812db2ca467a24ea84dc96ea8af4f8', '[\"user\"]', 1, '2025-02-24 12:40:10', NULL, '2025-02-24 12:39:58', '2025-02-24 12:40:10'),
(590, 'App\\Models\\User', 10, 'authToken', '8425e5401376ca59b9c33f71e1c5388a23db7f516c5f201e74952d9883fb7972', '[\"user_rt\"]', 1, NULL, '2025-03-03 12:39:58', '2025-02-24 12:39:58', '2025-02-24 12:39:58'),
(592, 'App\\Models\\Employee', 1, 'authToken', '96e7ad0ee9699469cbc389797a53d7518fd6986ae118e0fcaf71d03b8c90faff', '[\"main-admin\"]', 1, '2025-02-25 11:36:30', NULL, '2025-02-25 08:00:57', '2025-02-25 11:36:30'),
(593, 'App\\Models\\Employee', 1, 'authToken', '2b3eb9b0f8bf082300f634e412a29fb9c8ad71944bb33446b70fb321e2f9b0d2', '[\"main-admin\"]', 1, '2025-02-26 07:50:20', NULL, '2025-02-26 06:38:26', '2025-02-26 07:50:20'),
(594, 'App\\Models\\User', 10, 'authToken', 'a055056096fe5728db4926d178ccf67b0137b8fb049c95ec6c6e689ac75b8a8f', '[\"user\"]', 1, '2025-02-26 07:28:24', NULL, '2025-02-26 07:26:42', '2025-02-26 07:28:24'),
(595, 'App\\Models\\User', 10, 'authToken', '97a396e7c5e21a9adf81e473b8a3ec0795b25f4d5c3db5ff358af04006578a60', '[\"user_rt\"]', 1, NULL, '2025-03-05 07:26:43', '2025-02-26 07:26:43', '2025-02-26 07:26:43'),
(596, 'App\\Models\\User', 19, 'authToken', 'f50eeb8c00a208b67a69689e2e56ae9bdd2d8826bf45c8d15dd3898847d76313', '[\"user\"]', 1, '2025-02-26 07:58:12', '2025-03-05 06:23:37', '2025-02-26 07:43:37', '2025-02-26 07:58:12'),
(597, 'App\\Models\\User', 19, 'authToken', '3316a34d4fbbbaad09a6607f9206383e728d667e405e11aea7aef25433194c0c', '[\"user_rt\"]', 1, NULL, '2025-03-05 07:43:37', '2025-02-26 07:43:37', '2025-02-26 07:43:37'),
(598, 'App\\Models\\User', 10, 'authToken', '80b52cb425d884618d67cabef6e44210df54078f4feb40def102533a11e868bc', '[\"user\"]', 1, '2025-02-26 10:04:12', NULL, '2025-02-26 07:43:54', '2025-02-26 10:04:12'),
(599, 'App\\Models\\User', 10, 'authToken', '4fc2e826011704a338908dd7f79df33451fc3e79aed4e20c1644fe366fb35f32', '[\"user_rt\"]', 1, NULL, '2025-03-05 07:43:54', '2025-02-26 07:43:54', '2025-02-26 07:43:54'),
(600, 'App\\Models\\User', 10, 'authToken', '1ab6840ef03ef83e9295c19b2ee09dc422dfe16e9eeaa580681e618ecc3055c4', '[\"user\"]', 1, '2025-02-27 13:09:27', '2025-03-05 06:27:59', '2025-02-26 07:47:59', '2025-02-27 13:09:27'),
(601, 'App\\Models\\User', 10, 'authToken', 'b793bd1f54fd1794fe635d48b56bde428478ea063a3cfe941e699ed6b8dc284b', '[\"user_rt\"]', 1, NULL, '2025-03-05 07:47:59', '2025-02-26 07:47:59', '2025-02-26 07:47:59'),
(602, 'App\\Models\\User', 19, 'authToken', 'e3a003bd305323a3e10d89c07ed2430f38aac50f80c057fc3b8f0ed9b99c9892', '[\"user\"]', 1, '2025-02-26 09:44:32', '2025-03-05 08:16:58', '2025-02-26 09:36:58', '2025-02-26 09:44:32'),
(603, 'App\\Models\\User', 19, 'authToken', '21f6ca33548a9350311dcde610a3c3f602a4fec4b8b6367f75c3dacd2bb0181f', '[\"user_rt\"]', 1, NULL, '2025-03-05 09:36:58', '2025-02-26 09:36:58', '2025-02-26 09:36:58'),
(604, 'App\\Models\\User', 19, 'authToken', '9b28ba28fa526a544f14b75f330e34c94062e5e5c563a366dd2683e4899a0c61', '[\"user\"]', 1, '2025-02-26 13:01:23', '2025-03-05 08:26:01', '2025-02-26 09:46:01', '2025-02-26 13:01:23'),
(605, 'App\\Models\\User', 19, 'authToken', '558a6b8c89d52302ce4b68c110d89d1bc8248b87a64d8580aead3268f6e9cb92', '[\"user_rt\"]', 1, NULL, '2025-03-05 09:46:01', '2025-02-26 09:46:01', '2025-02-26 09:46:01'),
(606, 'App\\Models\\User', 10, 'authToken', 'fd46e55420947d3528a4f14088fc0df33226bd65d199add414cedccb3804af61', '[\"user\"]', 1, '2025-02-26 12:36:12', '2025-03-05 08:59:29', '2025-02-26 10:19:29', '2025-02-26 12:36:12'),
(607, 'App\\Models\\User', 10, 'authToken', 'c20060362146afd601d0f53673963a26e7d1698df095efdc620cdf68c7904cff', '[\"user_rt\"]', 1, NULL, '2025-03-05 10:19:29', '2025-02-26 10:19:29', '2025-02-26 10:19:29'),
(608, 'App\\Models\\User', 10, 'authToken', 'e5f647a153b1bd6fc9baf5996ae6a441f8b7cb2ead1f760d7225137563b35779', '[\"user\"]', 1, '2025-02-27 07:25:13', '2025-03-06 05:45:16', '2025-02-27 07:05:16', '2025-02-27 07:25:13'),
(609, 'App\\Models\\User', 10, 'authToken', '7930da6fc270d99dd21f57672d7281aaa81e08057fbb86fe754e973213bba69c', '[\"user_rt\"]', 1, NULL, '2025-03-06 07:05:16', '2025-02-27 07:05:16', '2025-02-27 07:05:16'),
(610, 'App\\Models\\User', 10, 'authToken', 'd16a363166360dfbf8917f5b68b0fe1617e79ec77f6ad26c5c74fc85204f1287', '[\"user\"]', 1, '2025-03-01 12:22:55', '2025-03-06 06:05:58', '2025-02-27 07:25:58', '2025-03-01 12:22:55'),
(611, 'App\\Models\\User', 10, 'authToken', 'f259b0810b32319e2b6afd6ccf0c31f0fa2b98a494452a42b66de5dc2ad5a97b', '[\"user_rt\"]', 1, NULL, '2025-03-06 07:25:58', '2025-02-27 07:25:58', '2025-02-27 07:25:58'),
(612, 'App\\Models\\User', 10, 'authToken', 'f35ca577a30872b5aaa7348d93620be5c2e07ceb14a0e1514124302a877fa9be', '[\"user\"]', 1, '2025-03-01 11:05:31', '2025-03-06 09:58:12', '2025-02-27 11:18:12', '2025-03-01 11:05:31'),
(613, 'App\\Models\\User', 10, 'authToken', '2f509f01f5e3c4678b1eec3a503ef209d4e4753568192f56bddc0be062573c56', '[\"user_rt\"]', 1, NULL, '2025-03-06 11:18:12', '2025-02-27 11:18:12', '2025-02-27 11:18:12'),
(614, 'App\\Models\\User', 10, 'authToken', '6c2696efc1d844b718119e43e6e9ba53736a616a5fd369ea1b7e27cf7103a817', '[\"user\"]', 1, '2025-02-27 11:29:59', NULL, '2025-02-27 11:25:42', '2025-02-27 11:29:59'),
(615, 'App\\Models\\User', 10, 'authToken', 'c6a241b10e8593f0fe2faf1f6b75273d0e88eda075d8f1496ab70e8e3ad45de7', '[\"user_rt\"]', 1, NULL, '2025-03-06 11:25:42', '2025-02-27 11:25:42', '2025-02-27 11:25:42'),
(616, 'App\\Models\\User', 10, 'authToken', '4585bac3927bc043fdeba17ffac014bedf347ef5d1cae373eca14ba9e93ef32e', '[\"user\"]', 1, '2025-02-27 13:10:09', '2025-03-06 10:42:05', '2025-02-27 12:02:04', '2025-02-27 13:10:09'),
(617, 'App\\Models\\User', 10, 'authToken', 'ce789e3eca83766c2f33c73df63571fd44ac3074f09110414af2b9997ae18bff', '[\"user_rt\"]', 1, NULL, '2025-03-06 12:02:05', '2025-02-27 12:02:04', '2025-02-27 12:02:05'),
(618, 'App\\Models\\User', 10, 'authToken', 'ad01d1d8fb2d4d453f9111802f1489117bd1c861a66dd6cbe6c19f27d2e668c7', '[\"user\"]', 1, '2025-03-01 07:13:45', NULL, '2025-02-27 12:16:57', '2025-03-01 07:13:45'),
(619, 'App\\Models\\User', 10, 'authToken', 'e98f5cd4f169625c32cb3441f3840cf3d2f1873be32bf431f327cfed71706232', '[\"user_rt\"]', 1, NULL, '2025-03-06 12:16:57', '2025-02-27 12:16:57', '2025-02-27 12:16:57'),
(620, 'App\\Models\\User', 10, 'authToken', '258df86e7eeb3bd54a108df6a750b0150bb883043ffb3918893d70e1b2c0f501', '[\"user\"]', 1, '2025-02-28 17:24:35', '2025-03-07 15:31:02', '2025-02-28 16:51:02', '2025-02-28 17:24:35'),
(621, 'App\\Models\\User', 10, 'authToken', 'ed611284c70e9237650d9930c38fe340002190657c536f9c69dca56970d13220', '[\"user_rt\"]', 1, NULL, '2025-03-07 16:51:02', '2025-02-28 16:51:02', '2025-02-28 16:51:02'),
(622, 'App\\Models\\Employee', 1, 'authToken', 'ee5229c2999d88144c388d2116a6ff583b1f366fa1e0fbaa041d391c354195ab', '[\"main-admin\"]', 1, '2025-03-02 09:58:33', NULL, '2025-03-01 09:47:48', '2025-03-02 09:58:33'),
(623, 'App\\Models\\User', 10, 'authToken', '8605d1d0dbaa7f4f4e225a812db0784c01ac8d43013ff465b65424473b63eecb', '[\"user\"]', 1, NULL, NULL, '2025-03-01 11:03:00', '2025-03-01 11:03:00'),
(624, 'App\\Models\\User', 10, 'authToken', '644a8fb5f9ca9ca89725179bfe955d35b6f800a0542c48d0ff4119e81e73752b', '[\"user\"]', 1, '2025-03-01 11:03:20', '2025-03-08 09:43:11', '2025-03-01 11:03:11', '2025-03-01 11:03:20'),
(625, 'App\\Models\\User', 10, 'authToken', 'b1f250b7a037273348ab1261a9e70afd4e28c8abff9b9828442dbbfd62c0d59b', '[\"user_rt\"]', 1, NULL, '2025-03-08 11:03:11', '2025-03-01 11:03:11', '2025-03-01 11:03:11'),
(626, 'App\\Models\\User', 10, 'authToken', '520a09f45b069a99cdd8707a5fc4b50a26dc0e2287b2890bacb98a392868444b', '[\"user\"]', 1, '2025-03-01 11:45:50', '2025-03-08 10:06:24', '2025-03-01 11:26:24', '2025-03-01 11:45:50'),
(627, 'App\\Models\\User', 10, 'authToken', '0fcb7401c7ea772b65567c573e0865b7d979eeeee8eaf663813e3a03185f95d2', '[\"user_rt\"]', 1, NULL, '2025-03-08 11:26:24', '2025-03-01 11:26:24', '2025-03-01 11:26:24'),
(628, 'App\\Models\\User', 10, 'authToken', '26e6e258c185d1639e9c21721c62bcb1e0bc4b85be39fd24e36e85acc19cb351', '[\"user\"]', 1, '2025-03-01 16:51:33', '2025-03-08 15:10:44', '2025-03-01 16:30:44', '2025-03-01 16:51:33'),
(629, 'App\\Models\\User', 10, 'authToken', '063f520811291e0c8ad1832f0a1b73b192b557338bd77d21880a9fe0320601d3', '[\"user_rt\"]', 1, NULL, '2025-03-08 16:30:44', '2025-03-01 16:30:44', '2025-03-01 16:30:44'),
(630, 'App\\Models\\User', 10, 'authToken', '6c494f532080410577d7d44360fda34e37872e806ec2b6d241d347f14839c230', '[\"user\"]', 1, NULL, NULL, '2025-03-01 16:53:28', '2025-03-01 16:53:28'),
(631, 'App\\Models\\User', 10, 'authToken', '8d036065dff26bd2a3971ee7406ae06cd70d9543065bd5077b705029485e3cc9', '[\"user\"]', 1, '2025-03-03 07:35:29', '2025-03-08 15:33:33', '2025-03-01 16:53:33', '2025-03-03 07:35:29'),
(632, 'App\\Models\\User', 10, 'authToken', '7c4cc40546e0fbf1da7670c2661c41adb1d68447815bb6a665463b45509b969a', '[\"user_rt\"]', 1, NULL, '2025-03-08 16:53:33', '2025-03-01 16:53:33', '2025-03-01 16:53:33'),
(633, 'App\\Models\\User', 19, 'authToken', 'c03d5053f6609c9b3b3e0af1956f50f653d00214d3b2f7f1cc4648391cd02b75', '[\"user\"]', 1, '2025-03-03 09:05:43', '2025-03-08 20:01:18', '2025-03-01 21:21:17', '2025-03-03 09:05:43'),
(634, 'App\\Models\\User', 19, 'authToken', '3eeb50a6c2437e4688bfc72a89d154a5b141386c59d4608831721c30130fa3b3', '[\"user_rt\"]', 1, NULL, '2025-03-08 21:21:18', '2025-03-01 21:21:18', '2025-03-01 21:21:18'),
(635, 'App\\Models\\Employee', 1, 'authToken', 'cc5570cf46ba78409c486e982b033bd961d42fcb89db92a0cf43589bb208e121', '[\"main-admin\"]', 1, '2025-03-02 09:19:23', NULL, '2025-03-02 08:38:13', '2025-03-02 09:19:23'),
(636, 'App\\Models\\User', 10, 'authToken', '2fb91f6b1c1af59b2ee136e25e022e31978946b3603c91029e1d69483dba245d', '[\"user\"]', 1, '2025-03-04 10:29:17', '2025-03-09 07:22:30', '2025-03-02 08:42:30', '2025-03-04 10:29:17'),
(637, 'App\\Models\\User', 10, 'authToken', '6845a6a0e71c51368a90a94aae5c85f83770527d613f12aa1e85852a4ec5d76a', '[\"user_rt\"]', 1, NULL, '2025-03-09 08:42:30', '2025-03-02 08:42:30', '2025-03-02 08:42:30'),
(638, 'App\\Models\\User', 10, 'authToken', 'be909cea8e20f4d48595a9b92679126ab4d738019550f6f0991ffd4a95c68006', '[\"user\"]', 1, '2025-03-03 07:33:11', '2025-03-09 07:23:17', '2025-03-02 08:43:17', '2025-03-03 07:33:11'),
(639, 'App\\Models\\User', 10, 'authToken', '554423852ee9d174e7426ffb052b036f6b405af6b74073b70873c11325d013d7', '[\"user_rt\"]', 1, NULL, '2025-03-09 08:43:17', '2025-03-02 08:43:17', '2025-03-02 08:43:17'),
(640, 'App\\Models\\Employee', 1, 'authToken', '61f150e28496559e31b8bbc69361bf47e057d182bdc2b96fb851be2033cfd74e', '[\"main-admin\"]', 1, '2025-03-02 08:47:41', NULL, '2025-03-02 08:47:39', '2025-03-02 08:47:41'),
(642, 'App\\Models\\User', 19, 'authToken', '142c10b080e2a07f8521788a3e193000f9bc3f35f2c962241fd008d25369e16a', '[\"user_rt\"]', 1, NULL, '2025-03-09 09:25:42', '2025-03-02 09:25:42', '2025-03-02 09:25:42'),
(644, 'App\\Models\\User', 19, 'authToken', 'c574779f3c07d65612426d3c25e5934f2e366401135ee833d4336cd2ebdb1c9c', '[\"user_rt\"]', 1, NULL, '2025-03-09 10:34:34', '2025-03-02 10:34:34', '2025-03-02 10:34:34'),
(646, 'App\\Models\\User', 19, 'authToken', 'fa47a2b3c93f84be073aa54804513d0c173c28e83c003a2b55621352b4361376', '[\"user_rt\"]', 1, NULL, '2025-03-09 11:53:21', '2025-03-02 11:53:21', '2025-03-02 11:53:21'),
(648, 'App\\Models\\User', 19, 'authToken', 'b050619bab00320e2405a1dc0c724b297b47fea3e135a710e9030a442e48cb7c', '[\"user_rt\"]', 1, NULL, '2025-03-09 12:22:55', '2025-03-02 12:22:55', '2025-03-02 12:22:55'),
(650, 'App\\Models\\User', 19, 'authToken', '5e92f89467b5bbf8e953602707eeb00dcb858863861dbe88a4c39977bbe8b5ca', '[\"user_rt\"]', 1, NULL, '2025-03-09 13:00:27', '2025-03-02 13:00:27', '2025-03-02 13:00:27'),
(651, 'App\\Models\\User', 10, 'authToken', 'd97cc2188421a484e1cda0018e0edcf2ad317268b2769f0304e43b6ed549c4e2', '[\"user\"]', 1, '2025-03-05 08:53:14', '2025-03-10 06:52:59', '2025-03-03 08:12:59', '2025-03-05 08:53:14'),
(652, 'App\\Models\\User', 10, 'authToken', 'bbea4d094adc7964f411d8d5efc0e401e08354897f7c226f700dab22d937051e', '[\"user_rt\"]', 1, NULL, '2025-03-10 08:12:59', '2025-03-03 08:12:59', '2025-03-03 08:12:59'),
(653, 'App\\Models\\User', 10, 'authToken', 'e5f7a8b5b249e3b42011508cd24db3844013b90731fbb7b5e24f68f1757ceeb7', '[\"user\"]', 1, '2025-03-06 08:30:28', '2025-03-10 07:33:37', '2025-03-03 08:53:37', '2025-03-06 08:30:28'),
(654, 'App\\Models\\User', 10, 'authToken', '59788130be9ac52fe0d3316519f7fd8bac44b00baa4d3482a253ad49c1ea8808', '[\"user_rt\"]', 1, NULL, '2025-03-10 08:53:37', '2025-03-03 08:53:37', '2025-03-03 08:53:37'),
(655, 'App\\Models\\User', 1, 'authToken', '22b5451a2626b4c92b15d433861e628275df11445a088c1555af0cf22b2e04a6', '[\"user\"]', 1, '2025-03-03 09:44:35', '2025-03-10 08:24:02', '2025-03-03 09:44:02', '2025-03-03 09:44:35'),
(656, 'App\\Models\\User', 1, 'authToken', '014194fe56dec66bb69b9cc393389afeb5f87459d1b27f9519d0494e8f90b06a', '[\"user_rt\"]', 1, NULL, '2025-03-10 09:44:02', '2025-03-03 09:44:02', '2025-03-03 09:44:02'),
(657, 'App\\Models\\User', 19, 'authToken', '56b9a4ef0a05f0d4a35d77c298940c6889e4141fa6e67af8beadde258f2a3dc0', '[\"user\"]', 1, '2025-03-05 11:34:28', '2025-03-10 08:24:47', '2025-03-03 09:44:47', '2025-03-05 11:34:28'),
(658, 'App\\Models\\User', 19, 'authToken', '497cc6f39366bf2b9f1bff56a7f44f4f51a286f2087eb85155ec6532259cba4a', '[\"user_rt\"]', 1, NULL, '2025-03-10 09:44:47', '2025-03-03 09:44:47', '2025-03-03 09:44:47'),
(660, 'App\\Models\\User', 19, 'authToken', 'd241fd74abd8de8c2db0d3c902c45c09aad0c4de7e9008f01140556a7dd332d4', '[\"user_rt\"]', 1, NULL, '2025-03-10 18:38:40', '2025-03-03 18:38:40', '2025-03-03 18:38:40'),
(670, 'App\\Models\\User', 10, 'authToken', '301f329db685a7c1389021c057a5d02ada2c72b03b79d56d1885cea37957b324', '[\"user\"]', 1, '2025-03-04 10:05:15', '2025-03-11 07:00:44', '2025-03-04 08:20:44', '2025-03-04 10:05:15'),
(671, 'App\\Models\\User', 10, 'authToken', '8a6edaa187ac2416d50439e2137eb52d3d30d51e06f592b82bd68595ce818446', '[\"user_rt\"]', 1, NULL, '2025-03-11 08:20:44', '2025-03-04 08:20:44', '2025-03-04 08:20:44'),
(674, 'App\\Models\\User', 10, 'authToken', 'd3e6c6583d820b9725c37384ff3194f1f610960cd39275b08cf6181a97dcd84a', '[\"user\"]', 1, '2025-03-04 09:11:50', '2025-03-11 07:28:31', '2025-03-04 08:48:31', '2025-03-04 09:11:50'),
(675, 'App\\Models\\User', 10, 'authToken', '6da2b2bf888732728a63b11ca52ecd6690fded00eee5766e8c55e1dd7bcfc20e', '[\"user_rt\"]', 1, NULL, '2025-03-11 08:48:31', '2025-03-04 08:48:31', '2025-03-04 08:48:31'),
(678, 'App\\Models\\User', 10, 'authToken', '48ec56b3ed82d34ee628009ff3310fed527298930a2f736e129171c08088c988', '[\"user\"]', 1, '2025-03-04 09:14:52', NULL, '2025-03-04 09:14:02', '2025-03-04 09:14:52'),
(679, 'App\\Models\\User', 10, 'authToken', '1df00d288069e9dc23722dcfeea300fe5d56f792d882073545e91e6ae62cd202', '[\"user_rt\"]', 1, NULL, '2025-03-11 09:14:02', '2025-03-04 09:14:02', '2025-03-04 09:14:02'),
(691, 'App\\Models\\User', 10, 'authToken', 'c8a876012111bfa8148ff62f09514cab96a6680cd94170a02a16a46c72dc2376', '[\"user\"]', 1, '2025-03-27 09:12:49', NULL, '2025-03-05 08:34:42', '2025-03-27 09:12:49'),
(692, 'App\\Models\\User', 10, 'authToken', 'dd80a7c01ccb2ae1cdaa8dcd9bf0ac21b82cd58a93f57c7b2128e2e5151da094', '[\"user_rt\"]', 1, NULL, '2025-03-12 08:34:42', '2025-03-05 08:34:42', '2025-03-05 08:34:42'),
(693, 'App\\Models\\User', 10, 'authToken', '9a6b7b6831d7cf82570bb5110f5d6ab119edd352683b77fb17afb235ac0f5c6c', '[\"user\"]', 1, '2025-03-05 12:44:17', '2025-03-12 07:36:24', '2025-03-05 08:56:24', '2025-03-05 12:44:17'),
(694, 'App\\Models\\User', 10, 'authToken', 'fd92bbd6e5cc1e50934996990a3f34502f732845b0cd26b4f82150bbfc98e6a0', '[\"user_rt\"]', 1, NULL, '2025-03-12 08:56:24', '2025-03-05 08:56:24', '2025-03-05 08:56:24'),
(696, 'App\\Models\\Employee', 30, 'authToken', 'c45bcd8e06102afe3122caa8b29521e8ff1f045485f3ea0359686d8c22be5b62', '[\"warehouse-manager\"]', 1, '2025-03-05 10:08:29', NULL, '2025-03-05 09:23:03', '2025-03-05 10:08:29'),
(699, 'App\\Models\\User', 10, 'authToken', 'f2e7cfd705301c1da33e7adfa7ad8518b58cc0b22ec40d431b36160715796c5f', '[\"user_rt\"]', 1, NULL, '2025-03-12 10:13:56', '2025-03-05 10:13:56', '2025-03-05 10:13:56'),
(703, 'App\\Models\\User', 10, 'authToken', 'c8c376c2852c41c832de3eebeb0bbc431235e60515d00984b904d6155b59fd61', '[\"user_rt\"]', 1, NULL, '2025-03-12 10:33:20', '2025-03-05 10:33:20', '2025-03-05 10:33:20'),
(704, 'App\\Models\\User', 10, 'authToken', '3f1f1962e329fc17fa483cfc147b4e67b91825aa2e7c73dccfe354fa28cd1936', '[\"user\"]', 1, '2025-03-05 11:00:55', '2025-03-12 09:38:12', '2025-03-05 10:58:11', '2025-03-05 11:00:55'),
(705, 'App\\Models\\User', 10, 'authToken', 'fa895cdd8d223b7e914b7e3b5697c4ed7cb34abe7139e99a7903f015224ef5b6', '[\"user_rt\"]', 1, NULL, '2025-03-12 10:58:12', '2025-03-05 10:58:11', '2025-03-05 10:58:12'),
(709, 'App\\Models\\User', 10, 'authToken', 'df7fb52ed7dac7627909008839a5860fa2440c379edbe59366f66a2eb4e9f2fb', '[\"user_rt\"]', 1, NULL, '2025-03-12 11:32:33', '2025-03-05 11:32:32', '2025-03-05 11:32:33'),
(710, 'App\\Models\\User', 10, 'authToken', '367828353794a87a886c5d04271837733be4c40acabfe27db6dcf9e390d54284', '[\"user\"]', 1, '2025-03-24 07:47:43', NULL, '2025-03-05 11:40:01', '2025-03-24 07:47:43'),
(711, 'App\\Models\\User', 10, 'authToken', '557f31ce82cfac2fa84071148276a0513a98a7e776ec5b8bc856b22b6f0849e8', '[\"user_rt\"]', 1, NULL, '2025-03-12 11:40:01', '2025-03-05 11:40:01', '2025-03-05 11:40:01'),
(714, 'App\\Models\\Employee', 30, 'authToken', '4ed3cb688b36613865e023250acee558db92071107f27afd0e85d2f7140615f5', '[\"warehouse-manager\"]', 1, '2025-03-05 11:42:28', NULL, '2025-03-05 11:42:23', '2025-03-05 11:42:28'),
(715, 'App\\Models\\User', 10, 'authToken', '9c2f4986f8929061f460d83440b0203a5e9e26dee62de64e609057b4bc848ce5', '[\"user\"]', 1, '2025-03-08 14:16:21', '2025-03-13 06:28:41', '2025-03-06 07:48:41', '2025-03-08 14:16:21'),
(716, 'App\\Models\\User', 10, 'authToken', 'ff3fb97f5838ea26062f0c10a74b26659270dd803e903ad36eda3fef4d349ade', '[\"user_rt\"]', 1, NULL, '2025-03-13 07:48:41', '2025-03-06 07:48:41', '2025-03-06 07:48:41'),
(717, 'App\\Models\\User', 10, 'authToken', 'eba146e220e5f2882083e46322eeea5e14825ea9cb0a8d40c01dd8ecfd8804e7', '[\"user\"]', 1, '2025-03-06 10:29:28', '2025-03-13 08:00:58', '2025-03-06 09:20:58', '2025-03-06 10:29:28'),
(718, 'App\\Models\\User', 10, 'authToken', '7f6b6b67b09de3d0eadba736d97d66536b02478bba969361dab432162f98a333', '[\"user_rt\"]', 1, NULL, '2025-03-13 09:20:58', '2025-03-06 09:20:58', '2025-03-06 09:20:58'),
(719, 'App\\Models\\User', 10, 'authToken', '48831a1a576ad2d6ad08f44b6aa04c45b2562e1146b9e4c54976027fd7e4c04f', '[\"user\"]', 1, '2025-03-06 11:26:39', '2025-03-13 09:31:53', '2025-03-06 10:51:53', '2025-03-06 11:26:39'),
(720, 'App\\Models\\User', 10, 'authToken', '514883bc3a79e092780961079ef7f131eb6ad749d5358f0bbfedba2c66cc2967', '[\"user_rt\"]', 1, NULL, '2025-03-13 10:51:53', '2025-03-06 10:51:53', '2025-03-06 10:51:53'),
(721, 'App\\Models\\User', 19, 'authToken', '122f228b5cdde36e0f11d78b6e4f506e84c02e2fa1f67523139ffe101b80b775', '[\"user\"]', 1, '2025-03-11 08:53:08', '2025-03-15 08:56:21', '2025-03-08 10:16:21', '2025-03-11 08:53:08'),
(722, 'App\\Models\\User', 19, 'authToken', '004555278ac06f59584863dc2b2a390257072641f8fd01a93e5489a033817cb5', '[\"user_rt\"]', 1, NULL, '2025-03-15 10:16:21', '2025-03-08 10:16:21', '2025-03-08 10:16:21'),
(725, 'App\\Models\\Employee', 28, 'authToken', 'e042ee6f8cfb1c13deba0dafba3d850be5f515336bddb420b88cbd742ef779be', '[\"delivery-boy\"]', 1, '2025-04-12 11:16:14', NULL, '2025-03-08 10:27:15', '2025-04-12 11:16:14'),
(727, 'App\\Models\\Employee', 30, 'authToken', 'c12c81e8e8b51c823f4234f8e0bf7beb8dda6b0c07e55f1a79cd1c933e630967', '[\"warehouse-manager\"]', 1, '2025-03-08 10:52:36', NULL, '2025-03-08 10:49:33', '2025-03-08 10:52:36'),
(728, 'App\\Models\\User', 10, 'authToken', '28d21f8d59588aca795711e87def59edf7cb067f9fe38e74ffa6138bc90fc76e', '[\"user\"]', 1, '2025-03-11 08:04:52', '2025-03-16 09:00:58', '2025-03-09 10:20:58', '2025-03-11 08:04:52'),
(729, 'App\\Models\\User', 10, 'authToken', '0a50fd5c6cb0f2b8f3ca60d59c271822f0433349884caa50a690eb73f7caddb5', '[\"user_rt\"]', 1, NULL, '2025-03-16 10:20:58', '2025-03-09 10:20:58', '2025-03-09 10:20:58');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `valid`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(734, 'App\\Models\\Employee', 1, 'authToken', '16143918c241ac4f5c0f3c5f55bb07621d2dfeff5fb48b272a3e1337bda14f63', '[\"main-admin\"]', 1, '2025-03-10 12:10:36', NULL, '2025-03-10 11:15:35', '2025-03-10 12:10:36'),
(735, 'App\\Models\\User', 10, 'authToken', '5b69d30b781d13a20a4e3934e5806ffacdcfdb2fbe5a39859bfb2f1f69530e03', '[\"user\"]', 1, '2025-03-13 09:23:47', '2025-03-18 06:23:19', '2025-03-11 07:43:19', '2025-03-13 09:23:47'),
(736, 'App\\Models\\User', 10, 'authToken', 'ce093babead09b2d6d66a53eb6a5e48408ed245580d979672604e130d0c4faaf', '[\"user_rt\"]', 1, NULL, '2025-03-18 07:43:19', '2025-03-11 07:43:19', '2025-03-11 07:43:19'),
(737, 'App\\Models\\User', 1, 'authToken', 'e387b34e35aa17de72b0691e913199e5755dd8f52aba1c5a15382be32e96feb0', '[\"*\"]', 1, '2025-03-11 12:30:08', NULL, '2025-03-11 12:09:55', '2025-03-11 12:30:08'),
(738, 'App\\Models\\Employee', 1, 'authToken', 'd4527cc323b58267bf7b1fbf4a0bff8e16b904cc8e0a6d753428bdf28dfe7282', '[\"main-admin\"]', 1, '2025-03-12 10:29:27', NULL, '2025-03-12 08:03:16', '2025-03-12 10:29:27'),
(749, 'App\\Models\\Employee', 1, 'authToken', '0cd41ebe741b4104a8750a5c6c5e88df816359ce773c8484dcca254b03f716d2', '[\"main-admin\"]', 1, '2025-03-12 13:06:14', NULL, '2025-03-12 12:45:27', '2025-03-12 13:06:14'),
(752, 'App\\Models\\Employee', 1, 'authToken', '62aa74d57e8a6eea381621a601babc52467bc9002c253086517fce815c903b77', '[\"main-admin\"]', 1, '2025-03-13 12:50:21', NULL, '2025-03-12 13:17:43', '2025-03-13 12:50:21'),
(754, 'App\\Models\\User', 19, 'authToken', 'e3b4fb73aba33efd9dc456045fa9eb0d67fe7519ccc74510e011d14381f7f3d6', '[\"user\"]', 1, '2025-03-13 09:08:54', '2025-03-20 06:10:54', '2025-03-13 07:30:54', '2025-03-13 09:08:54'),
(755, 'App\\Models\\User', 19, 'authToken', '6f44108500045a4cc1054f9659710501b1377e11d14a95813e2eb2e9ed827d52', '[\"user_rt\"]', 1, NULL, '2025-03-20 07:30:54', '2025-03-13 07:30:54', '2025-03-13 07:30:54'),
(758, 'App\\Models\\User', 10, 'authToken', '3fdfcc81f47a8e4e1ff48c38fa8c3c42fd12cb198ef9f1d5a5cf7828d91f8f88', '[\"user\"]', 1, '2025-03-13 13:25:56', '2025-03-20 08:11:58', '2025-03-13 09:31:57', '2025-03-13 13:25:56'),
(759, 'App\\Models\\User', 10, 'authToken', 'ebc77b98bd0f2beb05cd53712921abfcc5f50eab60a822b5926e481e62f444fd', '[\"user_rt\"]', 1, NULL, '2025-03-20 09:31:58', '2025-03-13 09:31:58', '2025-03-13 09:31:58'),
(762, 'App\\Models\\Employee', 54, 'authToken', '8ea3b9ff64edd72f5b5637d14cccbcce3d451fd887132abdc71c8d508d45128f', '[\"data-entry\"]', 1, '2025-03-13 11:22:18', NULL, '2025-03-13 11:15:32', '2025-03-13 11:22:18'),
(770, 'App\\Models\\Employee', 1, 'authToken', '5ea20b15d27b84690163788f22c58ae6b5355276077de23f4493a7a2eb2be512', '[\"main-admin\"]', 1, '2025-03-13 13:07:26', NULL, '2025-03-13 13:07:23', '2025-03-13 13:07:26'),
(771, 'App\\Models\\Employee', 1, 'authToken', 'fcf5bb127259db1d881751c7ee9751be4f2464695ce31848944c680bdfb75316', '[\"main-admin\"]', 1, '2025-03-13 13:10:29', NULL, '2025-03-13 13:10:25', '2025-03-13 13:10:29'),
(772, 'App\\Models\\User', 10, 'authToken', '21d9b0ad2cec8c854bc3297c50a80a6f89efbbd2f2607aa103ceafc90a6c4147', '[\"user\"]', 1, '2025-03-16 13:21:54', '2025-03-20 12:06:34', '2025-03-13 13:26:34', '2025-03-16 13:21:54'),
(773, 'App\\Models\\User', 10, 'authToken', 'fbb71aef5cc491845685c1d158dd0e62c05629873372542a384e975e702a93e9', '[\"user_rt\"]', 1, NULL, '2025-03-20 13:26:34', '2025-03-13 13:26:34', '2025-03-13 13:26:34'),
(774, 'App\\Models\\User', 10, 'authToken', 'd4a599d036642f4773fc6bc3d5ddfc450bd1d189e80a0384cb95857d0ecce5e0', '[\"user\"]', 1, '2025-03-18 11:45:37', '2025-03-23 07:33:59', '2025-03-16 08:53:58', '2025-03-18 11:45:37'),
(775, 'App\\Models\\User', 10, 'authToken', '381beae70345e1fa69c42209b7deac41fad9135b7c8465be0f99c82f9074989f', '[\"user_rt\"]', 1, NULL, '2025-03-23 08:53:59', '2025-03-16 08:53:59', '2025-03-16 08:53:59'),
(783, 'App\\Models\\Employee', 61, 'authToken', 'fe3dfc0284ddc332044cbfdfb3b81753c7c6ba32f3d1e549f2b4bcf89b4f14d0', '[\"data-entry\"]', 1, '2025-03-17 08:44:59', NULL, '2025-03-16 11:16:50', '2025-03-17 08:44:59'),
(784, 'App\\Models\\Employee', 1, 'authToken', 'f457ccb29b186943b5d8a42b5b336e5185d0b0335ee5d6aef8fceeead8d9394f', '[\"main-admin\"]', 1, '2025-03-16 11:57:56', NULL, '2025-03-16 11:57:51', '2025-03-16 11:57:56'),
(785, 'App\\Models\\Employee', 1, 'authToken', 'a8f20c2ed1779157e88ceb9d006c194e3f42c754036f74658ee922ffb06a7e19', '[\"main-admin\"]', 1, '2025-03-18 11:37:45', NULL, '2025-03-17 12:08:59', '2025-03-18 11:37:45'),
(786, 'App\\Models\\User', 10, 'authToken', '37dd50ab9a09e1aadb6811a5015a268b9cc62547e70c6e03eb200fbf7d1f139e', '[\"user\"]', 1, '2025-03-18 09:27:37', '2025-03-25 06:31:44', '2025-03-18 07:51:44', '2025-03-18 09:27:37'),
(787, 'App\\Models\\User', 10, 'authToken', 'd0dd84d585c7ca09bd42b91e68dc3877940e26cf0b0a47253a70e5a1327f7181', '[\"user_rt\"]', 1, NULL, '2025-03-25 07:51:44', '2025-03-18 07:51:44', '2025-03-18 07:51:44'),
(788, 'App\\Models\\User', 10, 'authToken', '397e09db9e7237776a23d20ad2e2329568d47d426f5193b781944ee1f46c5241', '[\"user\"]', 1, NULL, '2025-03-25 08:08:29', '2025-03-18 09:28:29', '2025-03-18 09:28:29'),
(789, 'App\\Models\\User', 10, 'authToken', '8e210b96d506d917f06717ec37b5ea63dcb3ab75844d5a22e6b59a8a9963d7b0', '[\"user_rt\"]', 1, NULL, '2025-03-25 09:28:29', '2025-03-18 09:28:29', '2025-03-18 09:28:29'),
(790, 'App\\Models\\User', 10, 'authToken', '70037620f057e9fd41523b91474aefd4a320dc5e831aff8294cbc94c61d0419e', '[\"user\"]', 1, '2025-03-20 13:03:34', '2025-03-25 08:09:11', '2025-03-18 09:29:11', '2025-03-20 13:03:34'),
(791, 'App\\Models\\User', 10, 'authToken', 'e1b5a2eda8bc841f2f8ac9538ac4859f4993861458b2bec57b01ca53092f63d0', '[\"user_rt\"]', 1, NULL, '2025-03-25 09:29:11', '2025-03-18 09:29:11', '2025-03-18 09:29:11'),
(792, 'App\\Models\\Employee', 1, 'authToken', '4f680a6c9d20c32902e0e68a7261f95e65a5464eb850d427857b6035cbf12165', '[\"main-admin\"]', 1, '2025-03-18 11:44:46', NULL, '2025-03-18 11:40:33', '2025-03-18 11:44:46'),
(793, 'App\\Models\\Employee', 1, 'authToken', 'f0be3e1579e6c5da79a2f64f09a48872982ab72e2c319f0b5cc43913c220d2b8', '[\"main-admin\"]', 1, '2025-03-20 09:50:58', NULL, '2025-03-20 08:03:39', '2025-03-20 09:50:58'),
(794, 'App\\Models\\Employee', 1, 'authToken', 'b81c06ab73fac8b2e681ba276bc067db8bc917bf297b5b71627582041d19a47b', '[\"main-admin\"]', 1, '2025-03-20 12:19:22', NULL, '2025-03-20 09:50:11', '2025-03-20 12:19:22'),
(795, 'App\\Models\\Employee', 61, 'authToken', '69dfdd8a68fe52617bca3ca528edd5776e492dab360a4111d25bb403719a0b1a', '[\"data-entry\"]', 1, '2025-03-20 13:33:54', NULL, '2025-03-20 10:04:23', '2025-03-20 13:33:54'),
(796, 'App\\Models\\Employee', 54, 'authToken', '89c446654e69311e23e2b7d33e0bc4591796bc4f579dbefe24e71239240b9ff9', '[\"data-entry\"]', 1, '2025-03-20 10:13:42', NULL, '2025-03-20 10:04:39', '2025-03-20 10:13:42'),
(797, 'App\\Models\\Employee', 1, 'authToken', '6a694dc1de923c90b218872d2675887070e97ad872412e6ca12827ed785387c0', '[\"main-admin\"]', 1, '2025-03-20 10:08:23', NULL, '2025-03-20 10:06:06', '2025-03-20 10:08:23'),
(799, 'App\\Models\\Employee', 61, 'authToken', 'cc3ba4ff15676dfab5e3e8cacefbbc6fddfab4ac37de2db28b77adaf672fed35', '[\"data-entry\"]', 1, '2025-03-22 10:34:06', NULL, '2025-03-21 13:31:29', '2025-03-22 10:34:06'),
(800, 'App\\Models\\User', 10, 'authToken', '167b62dd66a5b9e65faaffe1cad5e00d8e6e54f7134b7663abd740ad1ff86eb9', '[\"user\"]', 1, '2025-03-24 07:53:12', '2025-03-29 10:16:47', '2025-03-22 11:36:47', '2025-03-24 07:53:12'),
(801, 'App\\Models\\User', 10, 'authToken', '2071f142fd1d3aebf50af4c701fc6f500d612038c350ba845612444367313887', '[\"user_rt\"]', 1, NULL, '2025-03-29 11:36:47', '2025-03-22 11:36:47', '2025-03-22 11:36:47'),
(802, 'App\\Models\\Employee', 58, 'authToken', 'b79b54aa9014560fa967d3133cec85565202f755c883e9f5756771ce4c54b6d8', '[\"warehouse-manager\"]', 1, '2025-03-23 12:13:18', NULL, '2025-03-23 12:13:08', '2025-03-23 12:13:18'),
(803, 'App\\Models\\User', 10, 'authToken', 'f5ffc5c10aaaff69170c04a3fd14272bffffce3c111894f12a8d70d8da097df0', '[\"user\"]', 1, '2025-03-26 13:20:12', '2025-03-31 11:41:26', '2025-03-24 13:01:25', '2025-03-26 13:20:12'),
(804, 'App\\Models\\User', 10, 'authToken', '1816652fdf56ae86de0ca1f6bfcf991bbf884ffcaec6e807126506179f09ab63', '[\"user_rt\"]', 1, NULL, '2025-03-31 13:01:26', '2025-03-24 13:01:26', '2025-03-24 13:01:26'),
(805, 'App\\Models\\Employee', 1, 'authToken', 'ba170f2597f883daa3977466114a9221bc80fa0f03e2aacc16643525b7d9add3', '[\"main-admin\"]', 1, '2025-03-24 22:40:12', NULL, '2025-03-24 22:38:55', '2025-03-24 22:40:12'),
(806, 'App\\Models\\Employee', 61, 'authToken', '2f0d7be94b20acfc31de97333153391f0e4709b73821aa74044b5511466e34c8', '[\"data-entry\"]', 1, '2025-03-26 11:16:16', NULL, '2025-03-25 11:15:05', '2025-03-26 11:16:16'),
(807, 'App\\Models\\Employee', 61, 'authToken', '84d571cc5bd4d4da35a195c2e1823b6a93991fbc650124eb01492a0fc6d59008', '[\"data-entry\"]', 1, '2025-03-26 06:37:26', NULL, '2025-03-25 11:16:46', '2025-03-26 06:37:26'),
(808, 'App\\Models\\Employee', 61, 'authToken', '276275bd41bd90f5d38599eecc77e3ab58cb1d344589675ad0f4d6e3c1be61b6', '[\"data-entry\"]', 1, '2025-03-26 11:21:03', NULL, '2025-03-26 11:20:56', '2025-03-26 11:21:03'),
(809, 'App\\Models\\Employee', 61, 'authToken', '96bab1f8e59c206711e1b9423dbbbc5661b538c883ecf61b32749577628c0166', '[\"data-entry\"]', 1, '2025-03-27 11:21:28', NULL, '2025-03-26 11:21:09', '2025-03-27 11:21:28'),
(810, 'App\\Models\\Employee', 61, 'authToken', 'd6b898f13ba4ee0c759e805b35d4d7806945db46eaa19bb71e0a8f2fb4fa99fb', '[\"data-entry\"]', 1, '2025-03-26 12:31:59', NULL, '2025-03-26 12:31:12', '2025-03-26 12:31:59'),
(811, 'App\\Models\\User', 10, 'authToken', '61e000a78500640807016ff6c22f2dc5c59243ba512a6e91ddb82faf9d32c750', '[\"user\"]', 1, '2025-03-26 13:26:45', '2025-04-02 12:00:48', '2025-03-26 13:20:47', '2025-03-26 13:26:45'),
(812, 'App\\Models\\User', 10, 'authToken', '5a57de20a2eb9b0644cfe7d3eb2f5aa5f921a2ea01ecd490147b2c10b9e2bf8d', '[\"user_rt\"]', 1, NULL, '2025-04-02 13:20:48', '2025-03-26 13:20:48', '2025-03-26 13:20:48'),
(813, 'App\\Models\\User', 10, 'authToken', '7351f17cef70586f67cf13f560da12ab5796e26481cd35e552c5650f2a2296ed', '[\"user\"]', 1, '2025-03-27 10:01:48', '2025-04-02 12:05:53', '2025-03-26 13:25:53', '2025-03-27 10:01:48'),
(814, 'App\\Models\\User', 10, 'authToken', '94c210d2668c6029145d52613c4529fad096414fd5feb0359d2f1b2dcc900219', '[\"user_rt\"]', 1, NULL, '2025-04-02 13:25:53', '2025-03-26 13:25:53', '2025-03-26 13:25:53'),
(815, 'App\\Models\\Employee', 1, 'authToken', '3c09584435e1749a2b4c6bee0b93fb30f9b42fdbbcabd516b6e128b229c8740c', '[\"main-admin\"]', 1, '2025-03-26 13:43:58', NULL, '2025-03-26 13:38:08', '2025-03-26 13:43:58'),
(816, 'App\\Models\\Employee', 54, 'authToken', '654dd859824caeeada847cb2dfa0cbab93c67921dfcf4f3b10bd318ac46ecbc2', '[\"data-entry\"]', 1, '2025-03-27 07:54:12', NULL, '2025-03-27 07:53:58', '2025-03-27 07:54:12'),
(818, 'App\\Models\\User', 10, 'authToken', '826578832259123f83a272e3bfdf4f7f950347805124e3190145d3c4506b56b5', '[\"user_rt\"]', 1, NULL, '2025-04-03 09:23:50', '2025-03-27 09:23:50', '2025-03-27 09:23:50'),
(819, 'App\\Models\\User', 10, 'authToken', '192babf06c73eba12f63830452374a708e06a3274cec7eee03a45ca380175ae4', '[\"user\"]', 1, '2025-03-29 13:36:56', '2025-04-03 08:41:41', '2025-03-27 10:01:41', '2025-03-29 13:36:56'),
(820, 'App\\Models\\User', 10, 'authToken', 'a9c1187e864ee7a1ea53cd72b328b5425db807541281297514e37cb2bcff08af', '[\"user_rt\"]', 1, NULL, '2025-04-03 10:01:41', '2025-03-27 10:01:41', '2025-03-27 10:01:41'),
(821, 'App\\Models\\User', 10, 'authToken', '4107e8cf799d6ef94148498acfb187fc77c5e4941b05700d8b1a436f02c900d5', '[\"user\"]', 1, '2025-03-29 13:03:43', '2025-04-03 09:24:27', '2025-03-27 10:44:27', '2025-03-29 13:03:43'),
(822, 'App\\Models\\User', 10, 'authToken', '1ddaa74f0275fa75f24196f192747f99a95f7ed5778fcb9eae14aa7960a0bbca', '[\"user_rt\"]', 1, NULL, '2025-04-03 10:44:27', '2025-03-27 10:44:27', '2025-03-27 10:44:27'),
(823, 'App\\Models\\Employee', 61, 'authToken', 'f4a2cd2a1ca58c4d469367322086e7e532827649f5bb51b344d29cb4591237e6', '[\"data-entry\"]', 1, '2025-03-27 11:21:31', NULL, '2025-03-27 11:21:30', '2025-03-27 11:21:31'),
(824, 'App\\Models\\Employee', 61, 'authToken', '05bf0de52b02ae945bf3c97de954e650f7f75ab87e3aa4ef95c3a93bd0cf9b9d', '[\"data-entry\"]', 1, '2025-03-27 13:34:20', NULL, '2025-03-27 11:21:33', '2025-03-27 13:34:20'),
(827, 'App\\Models\\User', 10, 'authToken', 'bf1552919791ef471011dd902d106868b60bcd0fe55738100d4093272845d575', '[\"user\"]', 1, '2025-03-29 13:05:12', '2025-04-05 11:43:56', '2025-03-29 13:03:56', '2025-03-29 13:05:12'),
(828, 'App\\Models\\User', 10, 'authToken', '276884225afee93bda5246fe7cdd56649ef64f2ad340016ceb93da6e78aafd08', '[\"user_rt\"]', 1, NULL, '2025-04-05 13:03:56', '2025-03-29 13:03:56', '2025-03-29 13:03:56'),
(829, 'App\\Models\\User', 10, 'authToken', '3e954c4252c8fa0e94440297e4fd8458f45e4ae91bf17b595a6504960fadf736', '[\"user\"]', 1, '2025-03-29 13:08:48', '2025-04-05 11:45:18', '2025-03-29 13:05:17', '2025-03-29 13:08:48'),
(830, 'App\\Models\\User', 10, 'authToken', '73577acf5be2826e7ae8bb2dd6f3c5b10fc2c56ba2c456e3320cb5f77cc52262', '[\"user_rt\"]', 1, NULL, '2025-04-05 13:05:18', '2025-03-29 13:05:18', '2025-03-29 13:05:18'),
(831, 'App\\Models\\User', 10, 'authToken', '661f917d170e08ae11b4f90dea17aa8f73d2ac0516564a19f58e156dfa197355', '[\"user\"]', 1, '2025-03-29 13:09:00', '2025-04-05 11:48:52', '2025-03-29 13:08:52', '2025-03-29 13:09:00'),
(832, 'App\\Models\\User', 10, 'authToken', 'b8f65f3b48888f90405781f0531eacd4f40ceac5f43cd9cf2fd06e53a4f9adc5', '[\"user_rt\"]', 1, NULL, '2025-04-05 13:08:52', '2025-03-29 13:08:52', '2025-03-29 13:08:52'),
(833, 'App\\Models\\User', 10, 'authToken', 'fa96ebf147312a1fff6304ed795d57c45695765c195b658550f139416d68062f', '[\"user\"]', 1, '2025-03-29 13:16:13', '2025-04-05 11:52:40', '2025-03-29 13:12:40', '2025-03-29 13:16:13'),
(834, 'App\\Models\\User', 10, 'authToken', '00ea5752bed6fe6ca38a500b073281727762e313f15303bc14c7315dbbcd5e0a', '[\"user_rt\"]', 1, NULL, '2025-04-05 13:12:40', '2025-03-29 13:12:40', '2025-03-29 13:12:40'),
(835, 'App\\Models\\User', 10, 'authToken', '5e5dffb1198a5fd3d6e94153a5a2fcf1dc3f8229fb7384ae978c15569f78c089', '[\"user\"]', 1, '2025-03-29 13:38:51', '2025-04-05 12:18:37', '2025-03-29 13:38:37', '2025-03-29 13:38:51'),
(836, 'App\\Models\\User', 10, 'authToken', '3e1cc1aedf010d9c4d775fbe4f65738b2bcaf7cf5f53c09df2ddf8bebaf5391c', '[\"user_rt\"]', 1, NULL, '2025-04-05 13:38:37', '2025-03-29 13:38:37', '2025-03-29 13:38:37'),
(837, 'App\\Models\\User', 10, 'authToken', 'df56dec3ca7e5ae2bcf2de3f9242c3300c2cacc632ae5ce1251b9376de877434', '[\"user\"]', 1, '2025-03-29 14:24:35', '2025-04-05 12:23:44', '2025-03-29 13:43:44', '2025-03-29 14:24:35'),
(838, 'App\\Models\\User', 10, 'authToken', 'a767840e5c0d083bdb3dd9e5fdd2322e4604fe344240975ad69a1409a36a58f9', '[\"user_rt\"]', 1, NULL, '2025-04-05 13:43:44', '2025-03-29 13:43:44', '2025-03-29 13:43:44'),
(839, 'App\\Models\\User', 10, 'authToken', '17e32abf7538672a840e03540979645781bc33779d8d3b2b4570260b7e5e3bf0', '[\"user\"]', 1, NULL, '2025-04-05 13:24:24', '2025-03-29 14:44:24', '2025-03-29 14:44:24'),
(840, 'App\\Models\\User', 10, 'authToken', '114463abe81052d95bc87bbc4505d5bc640fe09bc72a51ce16346dc82b41b502', '[\"user_rt\"]', 1, NULL, '2025-04-05 14:44:24', '2025-03-29 14:44:24', '2025-03-29 14:44:24'),
(841, 'App\\Models\\User', 10, 'authToken', '104bea87882ee9ba2252883b64fd70e1ab07344fa4d9189be42fdc249b78da5e', '[\"user\"]', 1, '2025-03-29 14:47:26', NULL, '2025-03-29 14:45:31', '2025-03-29 14:47:26'),
(842, 'App\\Models\\User', 10, 'authToken', '9fecec6b5da7c8a658cbb3d657285ea9d2aeecc837f2aa2036bf64cceeb7ca4c', '[\"user_rt\"]', 1, NULL, '2025-04-05 14:45:31', '2025-03-29 14:45:31', '2025-03-29 14:45:31'),
(843, 'App\\Models\\Employee', 61, 'authToken', '7043fe7ef9c2999389f8944b420b0b69afde560b022a33acfe0f509dd5cd6588', '[\"data-entry\"]', 1, '2025-04-05 09:12:11', NULL, '2025-04-05 06:07:15', '2025-04-05 09:12:11'),
(844, 'App\\Models\\User', 10, 'authToken', '0f257bf5daa5ca41e624c3a93bda31432cb4c615dccb531e262d9b33d292bbd6', '[\"user\"]', 1, '2025-04-08 07:57:55', '2025-04-12 07:01:35', '2025-04-05 08:21:35', '2025-04-08 07:57:55'),
(845, 'App\\Models\\User', 10, 'authToken', '299c5cb81088f427ea7d5bd3c5cbe8dbcef9eb2f6e1f1c4b817738cc1c763488', '[\"user_rt\"]', 1, NULL, '2025-04-12 08:21:35', '2025-04-05 08:21:35', '2025-04-05 08:21:35'),
(846, 'App\\Models\\User', 10, 'authToken', 'f5e204e6a5f6594783c798a29048448b8698a5ef5ed33342acdbcdf080418284', '[\"user\"]', 1, '2025-04-06 12:35:30', '2025-04-12 07:01:37', '2025-04-05 08:21:37', '2025-04-06 12:35:30'),
(847, 'App\\Models\\User', 10, 'authToken', 'de01dcbc4a8ff67253a1ab77968cd5e7d9ff036353076ba335dff0fa0f157640', '[\"user_rt\"]', 1, NULL, '2025-04-12 08:21:37', '2025-04-05 08:21:37', '2025-04-05 08:21:37'),
(848, 'App\\Models\\Employee', 1, 'authToken', '70b061282fd29499ef899c638731b013313c65da2fe1034c809dced61ff74916', '[\"main-admin\"]', 1, '2025-04-05 13:08:03', NULL, '2025-04-05 08:36:56', '2025-04-05 13:08:03'),
(849, 'App\\Models\\User', 10, 'authToken', '1fbc40928d0c3adab9fd2540547297c64bd774474dd9ef7d277e1464764a6171', '[\"user\"]', 1, '2025-04-07 13:01:06', '2025-04-12 07:35:24', '2025-04-05 08:55:24', '2025-04-07 13:01:06'),
(850, 'App\\Models\\User', 10, 'authToken', 'b61782ac80e889a196d81a6531ce9b532181d91f22d96f13ace6c7dda4241e29', '[\"user_rt\"]', 1, NULL, '2025-04-12 08:55:24', '2025-04-05 08:55:24', '2025-04-05 08:55:24'),
(851, 'App\\Models\\User', 10, 'authToken', '096d388e2bcc177ce07d7f607e5e40ec82c57e1f37875834d7cdf4c450015039', '[\"user\"]', 1, '2025-04-05 09:09:17', NULL, '2025-04-05 09:08:50', '2025-04-05 09:09:17'),
(852, 'App\\Models\\User', 10, 'authToken', 'ff8a6a50e3978bda537c47a2da4c28f11148bf90c5c049022a4bb5dba27cefdc', '[\"user_rt\"]', 1, NULL, '2025-04-12 09:08:50', '2025-04-05 09:08:50', '2025-04-05 09:08:50'),
(854, 'App\\Models\\User', 10, 'authToken', '18e60520d92cf3ba3733a21ccdba6e5e95aaf6f880241327fc464096e6188970', '[\"user_rt\"]', 1, NULL, '2025-04-12 09:33:04', '2025-04-05 09:33:04', '2025-04-05 09:33:04'),
(856, 'App\\Models\\User', 10, 'authToken', 'a45400eceb0d043ad561c3ad58699ab313efebeaff9a6a0a38618a91935a53e3', '[\"user_rt\"]', 1, NULL, '2025-04-12 09:48:49', '2025-04-05 09:48:49', '2025-04-05 09:48:49'),
(858, 'App\\Models\\User', 10, 'authToken', '1bcd3c98637dd9da657e31b14e1a8897922e72f1d8c6b5c935ca6d4534b37d1f', '[\"user_rt\"]', 1, NULL, '2025-04-12 10:07:04', '2025-04-05 10:07:04', '2025-04-05 10:07:04'),
(860, 'App\\Models\\User', 10, 'authToken', '8d55bc6483e42b0f153fb84d7f4f1d54bf4139a6603a3a947561e17cbb5fac71', '[\"user_rt\"]', 1, NULL, '2025-04-12 10:13:01', '2025-04-05 10:13:01', '2025-04-05 10:13:01'),
(861, 'App\\Models\\Employee', 1, 'authToken', 'a89d1f7680c0281819f9c34de3b9b0716cc86f74c36d2cc8d3b13536f438dc59', '[\"main-admin\"]', 1, '2025-04-05 10:14:59', NULL, '2025-04-05 10:14:48', '2025-04-05 10:14:59'),
(863, 'App\\Models\\User', 10, 'authToken', 'dca09e421153d06dd88dc6963cac8f4f7d0fdfb91462f8d5553c2a3b97c7e4d9', '[\"user_rt\"]', 1, NULL, '2025-04-12 10:16:58', '2025-04-05 10:16:58', '2025-04-05 10:16:58'),
(865, 'App\\Models\\User', 10, 'authToken', '82d62c6eb645078f0df48f3a0cb9fcf869388f81dfe8db5f1d08a6e11a89993a', '[\"user_rt\"]', 1, NULL, '2025-04-12 10:23:10', '2025-04-05 10:23:10', '2025-04-05 10:23:10'),
(867, 'App\\Models\\User', 10, 'authToken', '4027f84643c1a7a357bb8cd5fa6ecaa99e8938b28a5b595b75625a0e11c4f9e3', '[\"user_rt\"]', 1, NULL, '2025-04-12 10:47:29', '2025-04-05 10:47:29', '2025-04-05 10:47:29'),
(869, 'App\\Models\\User', 10, 'authToken', 'feb2cb4b52116b85d5ec0911f7f071c97ee0df199764e49cca3106ea3166a005', '[\"user_rt\"]', 1, NULL, '2025-04-12 10:51:14', '2025-04-05 10:51:14', '2025-04-05 10:51:14'),
(871, 'App\\Models\\User', 10, 'authToken', '81cc4114e08f37b8c8fed816e4dd096d4d7586b3b3325a1f8b2446e0cd405c67', '[\"user_rt\"]', 1, NULL, '2025-04-12 10:52:35', '2025-04-05 10:52:35', '2025-04-05 10:52:35'),
(873, 'App\\Models\\User', 10, 'authToken', '0a04b50fbbaf171ee942a60480b41442bd554ebe9124221f13e806463765fe10', '[\"user_rt\"]', 1, NULL, '2025-04-12 10:56:14', '2025-04-05 10:56:14', '2025-04-05 10:56:14'),
(875, 'App\\Models\\User', 10, 'authToken', '03dc49b7f1d4a202a3aba8e96ab0b81618806b79151e3311b3e1b2df98519b5b', '[\"user_rt\"]', 1, NULL, '2025-04-12 11:10:21', '2025-04-05 11:10:21', '2025-04-05 11:10:21'),
(877, 'App\\Models\\User', 10, 'authToken', '02afda8d1ff5c61ddb46eb4d27ef9aadce59849e3f790f1f96920d917f96a22d', '[\"user_rt\"]', 1, NULL, '2025-04-12 11:13:22', '2025-04-05 11:13:22', '2025-04-05 11:13:22'),
(878, 'App\\Models\\User', 7, 'authToken', 'e958f93eff26e60b70ed08116d9a5157fca3ba3a597894d5a09141fc4ccd3ddd', '[\"user\"]', 1, '2025-04-05 13:43:33', NULL, '2025-04-05 13:43:29', '2025-04-05 13:43:33'),
(879, 'App\\Models\\User', 7, 'authToken', 'c86b3bc19aa9a78d0af90c4e541de13505f67ac94730c174a7039313bebd610e', '[\"user_rt\"]', 1, NULL, '2025-04-12 13:43:29', '2025-04-05 13:43:29', '2025-04-05 13:43:29'),
(881, 'App\\Models\\Employee', 28, 'authToken', 'ee920cccb07b8469aefa096e5650cf4df9f8ed89e72716c5361492ced52a6eee', '[\"delivery-boy\"]', 1, '2025-04-06 06:22:08', NULL, '2025-04-06 06:22:05', '2025-04-06 06:22:08'),
(884, 'App\\Models\\User', 10, 'authToken', 'b1c4cb055c7039381c138cef2b586608bf8a1fe5b8e116098add1505cdd773a0', '[\"user_rt\"]', 1, NULL, '2025-04-13 08:09:25', '2025-04-06 08:09:25', '2025-04-06 08:09:25'),
(885, 'App\\Models\\User', 10, 'authToken', '07233c2bcf97f7b8a157400b602b1d863f9cebbfefb2ab90e4f113e13d65d0ea', '[\"user\"]', 1, '2025-04-08 08:07:21', '2025-04-13 10:29:41', '2025-04-06 11:49:41', '2025-04-08 08:07:21'),
(886, 'App\\Models\\User', 10, 'authToken', '66420887814d03bdff43ecdf3538ee32bc55fbdf648cf341e0bad2d4f3387d2e', '[\"user_rt\"]', 1, NULL, '2025-04-13 11:49:41', '2025-04-06 11:49:41', '2025-04-06 11:49:41'),
(887, 'App\\Models\\Employee', 58, 'authToken', '974dfed72e65e0b0246cb62c364cfdb0aef1f5da6b40cc5543537449e6d732b8', '[\"warehouse-manager\"]', 1, '2025-04-06 12:55:06', NULL, '2025-04-06 12:21:35', '2025-04-06 12:55:06'),
(888, 'App\\Models\\User', 10, 'authToken', '7b0686023d410803da819716b9244b26a123a96af2d7cf8a141ebba6ac816fc9', '[\"user\"]', 1, '2025-04-07 06:52:43', '2025-04-13 11:15:47', '2025-04-06 12:35:47', '2025-04-07 06:52:43'),
(889, 'App\\Models\\User', 10, 'authToken', '9fbb9beb409e28d3d32fbf063cdf19a26473a7a1b732ebf2ea8cd83cb28b4210', '[\"user_rt\"]', 1, NULL, '2025-04-13 12:35:47', '2025-04-06 12:35:47', '2025-04-06 12:35:47'),
(891, 'App\\Models\\Employee', 29, 'authToken', 'dcdc5f696dd7da3c742fb64ab76c5b1b435d733e4e99a0deb1944ef29f3b4600', '[\"warehouse-manager\"]', 1, '2025-04-06 13:26:23', NULL, '2025-04-06 13:26:22', '2025-04-06 13:26:23'),
(892, 'App\\Models\\Employee', 29, 'authToken', '02c13c333af9e5ae71c28966a3e73be34b778e67fa4993950fd0c80ccfccdc26', '[\"warehouse-manager\"]', 1, '2025-04-06 13:28:29', NULL, '2025-04-06 13:28:26', '2025-04-06 13:28:29'),
(893, 'App\\Models\\User', 10, 'authToken', 'b7634220913f7ea6eee7a06e06c99b6d03e08607b7d2ed524d9a1788ff375c0e', '[\"user\"]', 1, '2025-04-06 21:26:30', NULL, '2025-04-06 21:25:05', '2025-04-06 21:26:30'),
(894, 'App\\Models\\User', 10, 'authToken', 'f17f51edd4c13d0ece0eefff0206d4830dd530a51eac305dd521bf4b3c7011e5', '[\"user_rt\"]', 1, NULL, '2025-04-13 21:25:05', '2025-04-06 21:25:05', '2025-04-06 21:25:05'),
(895, 'App\\Models\\User', 10, 'authToken', '22643c36d009ff12b498aba61c77f4dd94267c77b4d078ce7a6fa34e0b635fd6', '[\"user\"]', 1, NULL, NULL, '2025-04-07 07:01:38', '2025-04-07 07:01:38'),
(896, 'App\\Models\\User', 10, 'authToken', '70b647eacf3127f82785b391e66ad8ed0cc4bf1fc08750c0daf61dc4ab22e7aa', '[\"user\"]', 1, '2025-04-07 11:22:10', '2025-04-14 05:41:46', '2025-04-07 07:01:46', '2025-04-07 11:22:10'),
(897, 'App\\Models\\User', 10, 'authToken', 'ef099f50d6d0958547480cb9c13dc655134fe4fdf3be5955e45abf92d0af1767', '[\"user_rt\"]', 1, NULL, '2025-04-14 07:01:46', '2025-04-07 07:01:46', '2025-04-07 07:01:46'),
(898, 'App\\Models\\User', 10, 'authToken', '7723ecf0b64f67df8f02aa2857bb3b461e2d1eba9371e32db9216b79a242b31d', '[\"user\"]', 1, NULL, NULL, '2025-04-07 07:12:37', '2025-04-07 07:12:37'),
(899, 'App\\Models\\User', 10, 'authToken', 'a77691f17e7a152e673a5368788c822a10861f78e1474ae0f6b3a86a8d54af4e', '[\"user\"]', 1, '2025-04-09 11:21:09', '2025-04-14 05:52:43', '2025-04-07 07:12:43', '2025-04-09 11:21:09'),
(900, 'App\\Models\\User', 10, 'authToken', '00e7bfeb07abecf3981604c6f8047c467869fbc9bb47ef6529946607cd4519f0', '[\"user_rt\"]', 1, NULL, '2025-04-14 07:12:43', '2025-04-07 07:12:43', '2025-04-07 07:12:43'),
(901, 'App\\Models\\User', 24, 'authToken', 'b724d469428aa848d5ebb357d6f8b0c6fa2ed324aa159e611c8a2677499407c4', '[\"user\"]', 1, '2025-04-08 07:01:08', NULL, '2025-04-07 11:30:38', '2025-04-08 07:01:08'),
(903, 'App\\Models\\User', 24, 'authToken', '01119259931e34783e69636a6aebc9ae970f897f4074e0099940d898ae33643a', '[\"user_rt\"]', 1, NULL, '2025-04-15 07:28:53', '2025-04-08 07:28:53', '2025-04-08 07:28:53'),
(904, 'App\\Models\\Employee', 30, 'authToken', '47ee88ffbc62615d72ec46c36e76f3b493a162f4c0d63d023bc61cd303f7194f', '[\"warehouse-manager\"]', 1, '2025-04-08 08:14:18', NULL, '2025-04-08 08:06:41', '2025-04-08 08:14:18'),
(906, 'App\\Models\\Employee', 30, 'authToken', '8a1314ffabfc79f156b09181d9e5af3b0d9551ba51d901a89de046e9383cf64f', '[\"warehouse-manager\"]', 1, '2025-04-08 08:15:01', NULL, '2025-04-08 08:15:00', '2025-04-08 08:15:01'),
(909, 'App\\Models\\Employee', 29, 'authToken', 'c30d22ab0583e57209b7fb3be7865bed89ce611b86101abb1c9aecfb936cee44', '[\"warehouse-manager\"]', 1, '2025-04-08 11:21:17', NULL, '2025-04-08 08:18:35', '2025-04-08 11:21:17'),
(910, 'App\\Models\\Employee', 27, 'authToken', '94bb1c6247c4513ce2f8d09ecea3fee7a9fb0100c601696a1f5ee7175222dfb2', '[\"delivery-boy\"]', 1, '2025-04-10 11:04:35', NULL, '2025-04-08 08:40:08', '2025-04-10 11:04:35'),
(911, 'App\\Models\\User', 24, 'authToken', '9e7dfd0a501fa9e627ef1e344bfce4e73a4b42bca3093ad82db9f71b0d4e1c57', '[\"user\"]', 1, '2025-04-10 12:10:36', '2025-04-15 08:26:09', '2025-04-08 09:46:09', '2025-04-10 12:10:36'),
(912, 'App\\Models\\User', 24, 'authToken', '35b067be286afd9b08d270998578d6b9c6a0262db61da2fa1d17c53be147bf6a', '[\"user_rt\"]', 1, NULL, '2025-04-15 09:46:09', '2025-04-08 09:46:09', '2025-04-08 09:46:09'),
(913, 'App\\Models\\User', 10, 'authToken', '176267c4c10b40874daf124457f3a4cf2e951a8c4965a661ae2b58e2d2e5ec25', '[\"user\"]', 1, '2025-04-08 11:34:40', '2025-04-15 08:42:33', '2025-04-08 10:02:33', '2025-04-08 11:34:40'),
(914, 'App\\Models\\User', 10, 'authToken', '33d022459b6dc3bacff460e214e62f25ab3d1e321fb950449325d7b0eae12c82', '[\"user_rt\"]', 1, NULL, '2025-04-15 10:02:33', '2025-04-08 10:02:33', '2025-04-08 10:02:33'),
(915, 'App\\Models\\Employee', 1, 'authToken', '93382e5023e9d184b76efa742844ef2f1746baf7c28d044d7b044a40b3e65d37', '[\"main-admin\"]', 1, '2025-04-08 11:13:17', NULL, '2025-04-08 11:06:55', '2025-04-08 11:13:17'),
(916, 'App\\Models\\User', 24, 'authToken', '868bd2bce2197590dd84b3292f384f4e7b8aba64887edd83a95bf126ffb5e7a7', '[\"user\"]', 1, '2025-04-09 10:18:28', '2025-04-15 10:15:40', '2025-04-08 11:35:40', '2025-04-09 10:18:28'),
(917, 'App\\Models\\User', 24, 'authToken', '8c8e286e985bdc20432df1af21e384b3f2fa9869fc61a69da25243a9de2664c5', '[\"user_rt\"]', 1, NULL, '2025-04-15 11:35:40', '2025-04-08 11:35:40', '2025-04-08 11:35:40'),
(918, 'App\\Models\\User', 24, 'authToken', '449f579060bf4e1616aea3a0bc624c882eff64d652fd1fdb56f0af0cfb273c77', '[\"user\"]', 1, '2025-04-14 08:45:40', NULL, '2025-04-09 07:59:52', '2025-04-14 08:45:40'),
(919, 'App\\Models\\User', 24, 'authToken', 'c2ad216c7f8b01328db22a7df12959aa0453918e9925d5fd0528db9a8d6926e2', '[\"user_rt\"]', 1, NULL, '2025-04-16 07:59:53', '2025-04-09 07:59:53', '2025-04-09 07:59:53'),
(921, 'App\\Models\\Employee', 1, 'authToken', '3a0932b0914c41b3fa54997c2f1f2ea5de5731db05fb7132c08ec4d2239302f6', '[\"main-admin\"]', 1, '2025-04-09 10:34:50', NULL, '2025-04-09 08:43:08', '2025-04-09 10:34:50'),
(922, 'App\\Models\\User', 24, 'authToken', '72014bd43a465c13652d90c3ab295778bbdec6689e23ddc489d00d119208d225', '[\"user\"]', 1, '2025-04-12 10:16:36', '2025-04-16 09:00:02', '2025-04-09 10:20:02', '2025-04-12 10:16:36'),
(923, 'App\\Models\\User', 24, 'authToken', 'f4eff8aa21ee0cb8b4278922f79f95e183290f80bccf3e41a9fdc3e9c1f03476', '[\"user_rt\"]', 1, NULL, '2025-04-16 10:20:02', '2025-04-09 10:20:02', '2025-04-09 10:20:02'),
(925, 'App\\Models\\User', 24, 'authToken', '2f539101e54cf7deb9f21132ec0bbbcc2f6bbe6f24391b6eb9ac61a10ab429e8', '[\"user\"]', 1, '2025-04-12 11:12:45', '2025-04-16 10:01:38', '2025-04-09 11:21:38', '2025-04-12 11:12:45'),
(926, 'App\\Models\\User', 24, 'authToken', '3da785687b6d1b84346851366fb8338889c82fb7175415fc7f9e8a6f885e24aa', '[\"user_rt\"]', 1, NULL, '2025-04-16 11:21:38', '2025-04-09 11:21:38', '2025-04-09 11:21:38'),
(939, 'App\\Models\\Employee', 1, 'authToken', '7fc18ed79645d1c51d3b22054a31a5f8e58cca89488841a60870a03f9f764ff0', '[\"main-admin\"]', 1, '2025-04-10 12:57:59', NULL, '2025-04-10 12:57:09', '2025-04-10 12:57:59'),
(940, 'App\\Models\\User', 24, 'authToken', 'ea6b268610611fa363190ba3886691d2910629f4018a6601eade53e2c58b0c83', '[\"user\"]', 1, '2025-04-13 10:29:29', '2025-04-19 09:17:29', '2025-04-12 10:37:29', '2025-04-13 10:29:29'),
(941, 'App\\Models\\User', 24, 'authToken', 'b5e5f17c9248f9679a0c3072b584f00f0c9599cf33a434262deb63989ea9fb69', '[\"user_rt\"]', 1, NULL, '2025-04-19 10:37:29', '2025-04-12 10:37:29', '2025-04-12 10:37:29'),
(942, 'App\\Models\\User', 19, 'authToken', '7e152f4cd330075fe1dfb4379a5972f7d9cd9d532a729b06f341dcd4c8334997', '[\"user\"]', 1, '2025-04-15 11:06:11', '2025-04-19 09:47:37', '2025-04-12 11:07:36', '2025-04-15 11:06:11'),
(943, 'App\\Models\\User', 19, 'authToken', '7d53957880db38e7e7888ff0def6eb7aafc0a5ff8975d5d99875966f77744790', '[\"user_rt\"]', 1, NULL, '2025-04-19 11:07:37', '2025-04-12 11:07:36', '2025-04-12 11:07:37'),
(947, 'App\\Models\\Employee', 29, 'authToken', 'a82fff7ea029e19212f3f635dc9713663c0f0606c69a31ea015c70a0c45f099e', '[\"warehouse-manager\"]', 1, '2025-04-12 11:15:56', NULL, '2025-04-12 11:13:30', '2025-04-12 11:15:56'),
(948, 'App\\Models\\User', 24, 'authToken', '10d971834ac37ff99afcc8b3ae9c0024589257acb066246feebe289ea6fc99ed', '[\"user\"]', 1, '2025-04-15 11:31:23', '2025-04-19 10:28:00', '2025-04-12 11:47:59', '2025-04-15 11:31:23'),
(949, 'App\\Models\\User', 24, 'authToken', '326a3e5c8918332d056e8c5b420f7068a6433f0fe5257db068c67052edfb7e98', '[\"user_rt\"]', 1, NULL, '2025-04-19 11:48:00', '2025-04-12 11:48:00', '2025-04-12 11:48:00'),
(950, 'App\\Models\\User', 24, 'authToken', '9b2dffc36afb6884277b5533aa622d88c42b95b0065ee5ff1bfc7d6c1849d866', '[\"user\"]', 1, '2025-04-13 13:32:34', '2025-04-20 11:48:19', '2025-04-13 13:08:19', '2025-04-13 13:32:34'),
(951, 'App\\Models\\User', 24, 'authToken', 'abbffddc12468fba4744c2cd8a4b07fa4f05f1f3e6bbaec2597e7e415701953b', '[\"user_rt\"]', 1, NULL, '2025-04-20 13:08:19', '2025-04-13 13:08:19', '2025-04-13 13:08:19'),
(953, 'App\\Models\\Employee', 61, 'authToken', '0294f3ec0883e5748772bc5917d09d107a9f4a6c18e3bb71345e76149ac85cf4', '[\"data-entry\"]', 1, '2025-04-15 12:08:22', NULL, '2025-04-14 12:38:36', '2025-04-15 12:08:22'),
(954, 'App\\Models\\User', 24, 'authToken', 'a9c9caef4bd432f7ea690b98731029a65a37a213da66d0c7848d201a231c5001', '[\"user\"]', 1, '2025-04-16 13:18:28', '2025-04-22 05:47:32', '2025-04-15 07:07:32', '2025-04-16 13:18:28'),
(955, 'App\\Models\\User', 24, 'authToken', 'fe74c14eec7f9f477cacebee548066837707ee7d05073dc99b73cd3a71ee2275', '[\"user_rt\"]', 1, NULL, '2025-04-22 07:07:32', '2025-04-15 07:07:32', '2025-04-15 07:07:32'),
(956, 'App\\Models\\Employee', 1, 'authToken', '175f410753d4d5d417abe98c3074ddc2754981a7d4bce899ee65e9fa654699e7', '[\"main-admin\"]', 1, '2025-04-15 09:58:15', NULL, '2025-04-15 09:28:52', '2025-04-15 09:58:15'),
(957, 'App\\Models\\User', 24, 'authToken', 'd6b7e01ac12003b41dbdd3ec196354874b481e2046054034264eb6a2217cd9f1', '[\"user\"]', 1, '2025-04-15 12:24:01', '2025-04-22 08:16:31', '2025-04-15 09:36:31', '2025-04-15 12:24:01'),
(958, 'App\\Models\\User', 24, 'authToken', '13a4cc82e271ceb136bb7dbb3f5d8b42e0e50466633fec2ebbe6c1221189924c', '[\"user_rt\"]', 1, NULL, '2025-04-22 09:36:31', '2025-04-15 09:36:31', '2025-04-15 09:36:31'),
(959, 'App\\Models\\Employee', 61, 'authToken', '059a2215f20f8193f41e81296904c591c698d1e621a77dad2f37a0f7bb6c75ba', '[\"data-entry\"]', 1, '2025-04-15 12:01:07', NULL, '2025-04-15 11:35:53', '2025-04-15 12:01:07'),
(960, 'App\\Models\\Employee', 61, 'authToken', 'b5875e854897a48743e90dc99c012fbbf748db962763628359691581098fc91e', '[\"data-entry\"]', 1, '2025-04-15 13:25:14', NULL, '2025-04-15 11:45:03', '2025-04-15 13:25:14'),
(961, 'App\\Models\\Employee', 61, 'authToken', '119ebe56cd1a0effcad967a2a37e2bf2be23075b065d73767d712bad61bd67a5', '[\"data-entry\"]', 1, '2025-04-16 09:38:29', NULL, '2025-04-15 12:00:23', '2025-04-16 09:38:29'),
(962, 'App\\Models\\User', 24, 'authToken', '391059fd6374fbb0b10842447ba417194e9e42b2d73363577d061684291428b0', '[\"user\"]', 1, '2025-04-17 13:41:50', '2025-04-22 10:48:47', '2025-04-15 12:08:47', '2025-04-17 13:41:50'),
(963, 'App\\Models\\User', 24, 'authToken', '072f4058eb1ea763f91d9e12efb922f413fa6288adc063769cd9ef6cb42c9592', '[\"user_rt\"]', 1, NULL, '2025-04-22 12:08:47', '2025-04-15 12:08:47', '2025-04-15 12:08:47'),
(964, 'App\\Models\\Employee', 61, 'authToken', '8e66d8d6ba42d0b6af4cc8e1372461a1750785b1eb6d467f4a23af3c8af49898', '[\"data-entry\"]', 1, '2025-04-15 12:47:35', NULL, '2025-04-15 12:47:13', '2025-04-15 12:47:35'),
(965, 'App\\Models\\Employee', 61, 'authToken', '9cd0a3c6db12c672499bc57d194d0404ecdee659c8d56530cd9678eb2b5ad545', '[\"data-entry\"]', 1, '2025-04-16 11:11:46', NULL, '2025-04-15 12:55:09', '2025-04-16 11:11:46'),
(966, 'App\\Models\\Employee', 61, 'authToken', '70704993ae469d054063c2584a5650692721b86c9dd2521aef0a6fe57d1fa7f5', '[\"data-entry\"]', 1, '2025-04-16 13:25:18', NULL, '2025-04-16 11:11:50', '2025-04-16 13:25:18'),
(967, 'App\\Models\\User', 19, 'authToken', 'cbc0bdd617e60af954db593d2a110004bf44ee90d889cad46b1a38fc4f36f42a', '[\"user\"]', 1, '2025-04-19 12:22:51', '2025-04-23 10:18:02', '2025-04-16 11:38:02', '2025-04-19 12:22:51'),
(968, 'App\\Models\\User', 19, 'authToken', 'f37c3b97b8e2bc534748bc5183a2600277f5ebc43544b3027369dfae85ccd29e', '[\"user_rt\"]', 1, NULL, '2025-04-23 11:38:02', '2025-04-16 11:38:02', '2025-04-16 11:38:02'),
(969, 'App\\Models\\User', 24, 'authToken', 'd6f5378d2ad5b4c14e38d25babb9b7f3aa554cf79621147131452698cb43f9b9', '[\"user\"]', 1, '2025-04-21 09:33:32', '2025-04-26 09:06:11', '2025-04-19 10:26:11', '2025-04-21 09:33:32'),
(970, 'App\\Models\\User', 24, 'authToken', '275527fca4902eadc3a19ab9b2f93cdab5d99bfe505edc56423bcbbd24d082f9', '[\"user_rt\"]', 1, NULL, '2025-04-26 10:26:11', '2025-04-19 10:26:11', '2025-04-19 10:26:11'),
(971, 'App\\Models\\Employee', 1, 'authToken', '8e849d12570dc90e5f3b0a61611f34887d740454270b4c37f8ad11ed876ba291', '[\"main-admin\"]', 1, '2025-04-19 11:25:58', NULL, '2025-04-19 11:25:39', '2025-04-19 11:25:58'),
(972, 'App\\Models\\User', 19, 'authToken', '55f2cfad743ed7c2a9bb973cea1d893dd3a362e6586368e1554d2f788d327146', '[\"user\"]', 1, '2025-04-21 09:39:36', '2025-04-26 11:03:19', '2025-04-19 12:23:19', '2025-04-21 09:39:36'),
(973, 'App\\Models\\User', 19, 'authToken', 'c5b95b2e832abe8187e5b32a9dbeadb8dc2922ad41b221dd7125fd7bc8e0a2c0', '[\"user_rt\"]', 1, NULL, '2025-04-26 12:23:19', '2025-04-19 12:23:19', '2025-04-19 12:23:19'),
(974, 'App\\Models\\User', 24, 'authToken', 'c1143126ea53e3bd6e9ddf1c7f61ef1e801cb2c1cadce664eccf0d82c887ab8d', '[\"user\"]', 1, '2025-04-21 07:57:05', '2025-04-28 06:32:17', '2025-04-21 07:52:17', '2025-04-21 07:57:05'),
(975, 'App\\Models\\User', 24, 'authToken', 'bc9b4f8ec09faf077ba59b897ad0d21fbaf5dbf1fa5d6d7fabb8ae2353a8bb34', '[\"user_rt\"]', 1, NULL, '2025-04-28 07:52:17', '2025-04-21 07:52:17', '2025-04-21 07:52:17'),
(976, 'App\\Models\\User', 24, 'authToken', '50d0a0122cad600c5b6b1d5c9c8b9e6f6d17f4d20c77a89adfba4bf10243ee63', '[\"user\"]', 1, '2025-04-21 10:21:58', '2025-04-28 08:14:02', '2025-04-21 09:34:02', '2025-04-21 10:21:58'),
(977, 'App\\Models\\User', 24, 'authToken', 'caa68bedcf9523a615a1ceb3061ed5a0410311b63c41202fe9590ecac6d40f41', '[\"user_rt\"]', 1, NULL, '2025-04-28 09:34:02', '2025-04-21 09:34:02', '2025-04-21 09:34:02'),
(978, 'App\\Models\\User', 19, 'authToken', '651e01c93e0f77a7dfcb0bb3e861e5efdb0252ea6c7a2ad180b921108efa42be', '[\"user\"]', 1, '2025-04-21 10:47:04', '2025-04-28 08:20:02', '2025-04-21 09:40:02', '2025-04-21 10:47:04'),
(979, 'App\\Models\\User', 19, 'authToken', 'c1ae56506eb57c5a627281a7f958efa705cb5906f8b75c0418a4945a17f4f3ef', '[\"user_rt\"]', 1, NULL, '2025-04-28 09:40:02', '2025-04-21 09:40:02', '2025-04-21 09:40:02'),
(980, 'App\\Models\\User', 24, 'authToken', 'ea9ce0a16df8ad07c02bf882e074fce5b8509665b822cbe0aceeec63997bef3e', '[\"user\"]', 1, '2025-04-21 09:54:09', '2025-04-28 08:33:25', '2025-04-21 09:53:25', '2025-04-21 09:54:09'),
(981, 'App\\Models\\User', 24, 'authToken', '18210e37830fd9b3cdcb8efccada18936b030670e7d2ecf3c7dc1665bc424071', '[\"user_rt\"]', 1, NULL, '2025-04-28 09:53:25', '2025-04-21 09:53:25', '2025-04-21 09:53:25'),
(982, 'App\\Models\\User', 24, 'authToken', 'd3d7386308636d1ce02d504cb96b6b3de82cc62809ed52fc702badf7f296fd5a', '[\"user\"]', 1, '2025-04-21 10:03:57', '2025-04-28 08:38:25', '2025-04-21 09:58:25', '2025-04-21 10:03:57'),
(983, 'App\\Models\\User', 24, 'authToken', '36f6e8ece155f7b23d4b300f82eb95f96ff6cc616d286871f91f52e252dea322', '[\"user_rt\"]', 1, NULL, '2025-04-28 09:58:25', '2025-04-21 09:58:25', '2025-04-21 09:58:25'),
(984, 'App\\Models\\User', 10, 'authToken', '2e98070941f01b0842ca1a1f5331f901e34e119866f5f1ac479052b4e8eb553e', '[\"user\"]', 1, '2025-04-21 10:24:28', '2025-04-28 09:03:48', '2025-04-21 10:23:48', '2025-04-21 10:24:28'),
(985, 'App\\Models\\User', 10, 'authToken', '33c69488152a767d6895707f3b0ac18a6fea4e0a774234f44c603bf918b718f4', '[\"user_rt\"]', 1, NULL, '2025-04-28 10:23:48', '2025-04-21 10:23:48', '2025-04-21 10:23:48'),
(986, 'App\\Models\\User', 19, 'authToken', '239f1289fd1cea60dc7b15dd9bbc054feaab524a5cd2d78a89b9316152940e91', '[\"user\"]', 1, '2025-04-21 10:50:21', '2025-04-28 09:29:50', '2025-04-21 10:49:50', '2025-04-21 10:50:21'),
(987, 'App\\Models\\User', 19, 'authToken', '496a248aaae0538efe40c14843a0154480ffe4da6fe036fc5bc21ddcfb0881f8', '[\"user_rt\"]', 1, NULL, '2025-04-28 10:49:50', '2025-04-21 10:49:50', '2025-04-21 10:49:50'),
(988, 'App\\Models\\User', 10, 'authToken', '2a2f907d1009ad2b4670ec0dc7366451712b088043583fc3847ad6a80229d06b', '[\"user\"]', 1, '2025-04-21 11:12:54', '2025-04-28 09:52:31', '2025-04-21 11:12:31', '2025-04-21 11:12:54'),
(989, 'App\\Models\\User', 10, 'authToken', 'c31d0c34f86004877018b9db3b3c1b061d3051b9111e8ff460c1904fc9a8f3ff', '[\"user_rt\"]', 1, NULL, '2025-04-28 11:12:31', '2025-04-21 11:12:31', '2025-04-21 11:12:31'),
(990, 'App\\Models\\User', 10, 'authToken', '180c9d6670a262bc8739bc00083d3f66a33a2ffef819388663502e93c3e89d94', '[\"user\"]', 1, '2025-04-21 11:30:23', '2025-04-28 10:04:40', '2025-04-21 11:24:40', '2025-04-21 11:30:23'),
(991, 'App\\Models\\User', 10, 'authToken', '957bc010998bbd2cab0453420403673ff5e954f4dee793d530ed4ca65ddcaf9f', '[\"user_rt\"]', 1, NULL, '2025-04-28 11:24:40', '2025-04-21 11:24:40', '2025-04-21 11:24:40'),
(992, 'App\\Models\\User', 19, 'authToken', '72088e7d7b25a953aa7d77533655e20396a8c359f66c313b791a86fe6890aa3c', '[\"user\"]', 1, '2025-06-09 17:57:15', NULL, '2025-04-21 11:25:38', '2025-06-09 17:57:15'),
(993, 'App\\Models\\User', 19, 'authToken', '77130bd97f788f076f30a1651093501f5fa7d62e6652036a524065f0608a9752', '[\"user_rt\"]', 1, NULL, '2025-04-28 11:25:38', '2025-04-21 11:25:38', '2025-04-21 11:25:38'),
(994, 'App\\Models\\User', 24, 'authToken', '88a655b824bfb9d68a2918c43666c0b59078a3bb239acb14d8c3684dff9e7eba', '[\"user\"]', 1, '2025-04-21 11:27:51', '2025-04-28 10:06:03', '2025-04-21 11:26:03', '2025-04-21 11:27:51'),
(995, 'App\\Models\\User', 24, 'authToken', '6be2d0df9de25ce67afedc1882ff767c408ad44d1fe216569bc31d86a1ab7623', '[\"user_rt\"]', 1, NULL, '2025-04-28 11:26:03', '2025-04-21 11:26:03', '2025-04-21 11:26:03'),
(996, 'App\\Models\\User', 19, 'authToken', '7bc9e5ae8c1407b656f641e0f4c076c2d2cebd257d5e19d633e1e8b11cbe6c7f', '[\"user\"]', 1, '2025-04-21 11:55:16', '2025-04-28 10:08:38', '2025-04-21 11:28:38', '2025-04-21 11:55:16'),
(997, 'App\\Models\\User', 19, 'authToken', '7862aac9531da9fbb899438195efc5bf825819528348d0f40dd79da6ad2d5ca3', '[\"user_rt\"]', 1, NULL, '2025-04-28 11:28:38', '2025-04-21 11:28:38', '2025-04-21 11:28:38'),
(998, 'App\\Models\\User', 24, 'authToken', 'fbe3fd6998805cb8777ab83021a59d46a499b545226311a52bf833f30553c477', '[\"user\"]', 1, '2025-04-21 11:31:46', '2025-04-28 10:11:18', '2025-04-21 11:31:18', '2025-04-21 11:31:46'),
(999, 'App\\Models\\User', 24, 'authToken', '9e22c5de7f82aaac5703a38b68da1f1ccdfed1a8c46273d2e4f55b5cf4f3f1af', '[\"user_rt\"]', 1, NULL, '2025-04-28 11:31:18', '2025-04-21 11:31:18', '2025-04-21 11:31:18'),
(1000, 'App\\Models\\User', 24, 'authToken', '54db98d3858699cca2454e7c5d900fd356e0c1ae2b9904c25881a37236e25591', '[\"user\"]', 1, '2025-04-21 13:10:44', '2025-04-28 10:14:13', '2025-04-21 11:34:13', '2025-04-21 13:10:44'),
(1001, 'App\\Models\\User', 24, 'authToken', 'cf3b314e770cca41252dcbee7205c942c92e3b6267a5a4c8e314be7aabd894b2', '[\"user_rt\"]', 1, NULL, '2025-04-28 11:34:13', '2025-04-21 11:34:13', '2025-04-21 11:34:13'),
(1002, 'App\\Models\\User', 10, 'authToken', '02460d32824ce30a4a74506e9d3b2cd195a1a232eae36035605a1aed62ad24f6', '[\"user\"]', 1, '2025-04-21 11:35:34', '2025-04-28 10:14:40', '2025-04-21 11:34:40', '2025-04-21 11:35:34'),
(1003, 'App\\Models\\User', 10, 'authToken', 'c1c8e2125c1f73c9d74107a3f32649414b735ee56ec8a47d4fe88ae62849d814', '[\"user_rt\"]', 1, NULL, '2025-04-28 11:34:40', '2025-04-21 11:34:40', '2025-04-21 11:34:40'),
(1004, 'App\\Models\\User', 10, 'authToken', '54c697e637827135d99b33f6d2ed7a798e026fc30051b45669e9fcd11bf912e4', '[\"user\"]', 1, '2025-04-21 11:51:31', '2025-04-28 10:30:48', '2025-04-21 11:50:48', '2025-04-21 11:51:31'),
(1005, 'App\\Models\\User', 10, 'authToken', '2dcb8211dc0d8184e4aefd49998ce2174d2b864d00d45b618938d0e23cc0af48', '[\"user_rt\"]', 1, NULL, '2025-04-28 11:50:48', '2025-04-21 11:50:48', '2025-04-21 11:50:48'),
(1006, 'App\\Models\\User', 19, 'authToken', 'a5e3fcf5eae5533063a3c4e73b88a7cb3261811fff87ff9fefad001990e7f13f', '[\"user\"]', 1, '2025-04-21 12:56:35', '2025-04-28 10:35:50', '2025-04-21 11:55:50', '2025-04-21 12:56:35'),
(1007, 'App\\Models\\User', 19, 'authToken', '08256057aadbeeeebec60ce285cd61770c2d70f825d5977e726e218f48bcc074', '[\"user_rt\"]', 1, NULL, '2025-04-28 11:55:50', '2025-04-21 11:55:50', '2025-04-21 11:55:50'),
(1008, 'App\\Models\\User', 10, 'authToken', 'ca03d15e65ba038aa7c254991b40c3c16c10fdf639d1e7ae9c2f6df73f0a3c44', '[\"user\"]', 1, '2025-04-21 13:31:00', '2025-04-28 10:53:16', '2025-04-21 12:13:16', '2025-04-21 13:31:00'),
(1009, 'App\\Models\\User', 10, 'authToken', 'ad9b5883d2ab88e759d679a47599eeac02220e93eba0c33b2f2710688d4702ee', '[\"user_rt\"]', 1, NULL, '2025-04-28 12:13:16', '2025-04-21 12:13:16', '2025-04-21 12:13:16'),
(1010, 'App\\Models\\User', 10, 'authToken', '36f13f3d250c0732ba4a872402dce57a7db7761a37f54ad969623a04f598f729', '[\"user\"]', 1, '2025-04-21 13:32:12', '2025-04-28 12:11:57', '2025-04-21 13:31:57', '2025-04-21 13:32:12'),
(1011, 'App\\Models\\User', 10, 'authToken', '2cfe545c297463d99e4fd559555f10c9345f6c2b9870c0bf0c231c880fc2aca9', '[\"user_rt\"]', 1, NULL, '2025-04-28 13:31:57', '2025-04-21 13:31:57', '2025-04-21 13:31:57'),
(1012, 'App\\Models\\User', 10, 'authToken', '98620c049a5ac4f5c59c1a42a53aec4fd19ebf5e534f626a59caaad7c87d17b5', '[\"user\"]', 1, '2025-04-22 08:12:40', '2025-04-28 12:16:06', '2025-04-21 13:36:06', '2025-04-22 08:12:40'),
(1013, 'App\\Models\\User', 10, 'authToken', 'bc976a61501f2db54a07a3568229c3df70496439e8418e44bf3d4ab0ceccc8a9', '[\"user_rt\"]', 1, NULL, '2025-04-28 13:36:06', '2025-04-21 13:36:06', '2025-04-21 13:36:06'),
(1014, 'App\\Models\\User', 10, 'authToken', '6ca45355293406cd7430142ac42d7c1c6d4ea2398c3672abeb0a20caaeefc6c4', '[\"user\"]', 1, '2025-04-22 08:11:07', '2025-04-29 06:50:49', '2025-04-22 08:10:49', '2025-04-22 08:11:07'),
(1015, 'App\\Models\\User', 10, 'authToken', '0beee860028c73767ad7902c2daf7947db417f2124310a67b290383b00e536ff', '[\"user_rt\"]', 1, NULL, '2025-04-29 08:10:49', '2025-04-22 08:10:49', '2025-04-22 08:10:49'),
(1016, 'App\\Models\\User', 10, 'authToken', 'ae58f5b4c54988338568a455c35b0db892a1174ea9a201ba63d59e271066fa5a', '[\"user\"]', 1, '2025-04-26 10:42:13', NULL, '2025-04-26 10:39:55', '2025-04-26 10:42:13'),
(1017, 'App\\Models\\User', 10, 'authToken', '2355e3d7078895231daabea8eca2a81b453ed1da858832eb90b8a16eefc74459', '[\"user_rt\"]', 1, NULL, '2025-05-03 10:39:55', '2025-04-26 10:39:55', '2025-04-26 10:39:55'),
(1018, 'App\\Models\\User', 10, 'authToken', 'f42fec1c5e828e12ecd4b52f37ad0a127ce0070917a9a9b8eac3e3412d46e2dc', '[\"user\"]', 1, '2025-04-26 13:33:44', NULL, '2025-04-26 10:47:26', '2025-04-26 13:33:44'),
(1019, 'App\\Models\\User', 10, 'authToken', '37b11b2a0eb5c8929166c2bdf6f6637a02b3bde5d05d0bd734c1d17fb49e0317', '[\"user_rt\"]', 1, NULL, '2025-05-03 10:47:26', '2025-04-26 10:47:26', '2025-04-26 10:47:26'),
(1020, 'App\\Models\\User', 19, 'authToken', '8ee90f67d91a40e56ce80fcaac0cc4f3737e10e5079fb2824709c5d09c6a96c9', '[\"user\"]', 1, '2025-04-27 07:57:26', '2025-05-03 10:16:44', '2025-04-26 11:36:44', '2025-04-27 07:57:26'),
(1021, 'App\\Models\\User', 19, 'authToken', '4e65a8e93836a9d9360ed0c7e7ff620c3fb857f02fdeec55f2e1520519b2c121', '[\"user_rt\"]', 1, NULL, '2025-04-03 11:36:44', '2025-04-26 11:36:44', '2025-04-26 11:36:44'),
(1022, 'App\\Models\\Employee', 54, 'authToken', '15d16d43a91bb277b4ab0bf532443639447e6e2598e9aa1f4f9198a3e96160d5', '[\"data-entry\"]', 1, '2025-04-28 07:12:28', NULL, '2025-04-27 12:26:59', '2025-04-28 07:12:28'),
(1023, 'App\\Models\\User', 24, 'authToken', 'ef4ee28b5742583c4c9bdf4a893326c635163ef053473e08e51a5108a793d657', '[\"user\"]', 1, '2025-04-29 11:12:38', '2025-05-04 12:03:00', '2025-04-27 13:23:00', '2025-04-29 11:12:38'),
(1024, 'App\\Models\\User', 24, 'authToken', '18e4aaff8f7c78668e19e86da28c1e98844467f8e27997f505b5461dac8d68e5', '[\"user_rt\"]', 1, NULL, '2025-05-04 13:23:00', '2025-04-27 13:23:00', '2025-04-27 13:23:00'),
(1025, 'App\\Models\\Employee', 54, 'authToken', '79b81246e9bbb1676054c2aa6ad3e5b2b76fd64980415d096ace4dd914bd3f86', '[\"data-entry\"]', 1, '2025-04-28 10:00:10', NULL, '2025-04-28 07:12:37', '2025-04-28 10:00:10'),
(1026, 'App\\Models\\Employee', 61, 'authToken', '6d5a5004a721adb834fd70d5573d87ab04a2d7bb48e41933b0baa76881476a96', '[\"data-entry\"]', 1, '2025-04-28 10:00:23', NULL, '2025-04-28 10:00:16', '2025-04-28 10:00:23'),
(1027, 'App\\Models\\Employee', 54, 'authToken', 'bc1bcf05f925c787172a69e044327b25c08bfa93b67d27725be8c0d8c754d7d8', '[\"data-entry\"]', 1, '2025-04-28 10:03:57', NULL, '2025-04-28 10:00:25', '2025-04-28 10:03:57'),
(1028, 'App\\Models\\Employee', 31, 'authToken', '7594b17c3f8ca7e8afb802b320103c3f6fb4217d60040098d7e67e7d3d1b4df4', '[\"operation-manager\"]', 1, '2025-04-28 10:06:09', NULL, '2025-04-28 10:04:00', '2025-04-28 10:06:09'),
(1029, 'App\\Models\\Employee', 54, 'authToken', '05263af66d2d4ff9b86ea6057fdee5bc97d6f91404f72cb004a70e3169e96821', '[\"data-entry\"]', 1, '2025-04-28 11:42:32', NULL, '2025-04-28 10:06:13', '2025-04-28 11:42:32'),
(1030, 'App\\Models\\User', 10, 'authToken', 'f4769c0ae9a5697848e9c5ac14fa91945fc67b7617e6ac8fea480923e14927f9', '[\"user\"]', 1, NULL, '2025-05-05 09:18:43', '2025-04-28 10:38:43', '2025-04-28 10:38:43'),
(1031, 'App\\Models\\User', 10, 'authToken', 'b4a734996a25730bacbf0ac7d8ea02298fe0751f60a6cb8ab8052396b4fa39b9', '[\"user_rt\"]', 1, NULL, '2025-05-05 10:38:43', '2025-04-28 10:38:43', '2025-04-28 10:38:43'),
(1032, 'App\\Models\\User', 10, 'authToken', '1cda79a9f510a5e7bc155fcb0cb918010507aa1a1aebbae0d28d3473a3067071', '[\"user\"]', 1, '2025-04-29 07:05:33', '2025-05-05 09:18:44', '2025-04-28 10:38:44', '2025-04-29 07:05:33'),
(1033, 'App\\Models\\User', 10, 'authToken', '72d7145d382815a23a2cbad8b2ec25455ee6a5513fbd57dc8cfa6db6dc441c7b', '[\"user_rt\"]', 1, NULL, '2025-05-05 10:38:44', '2025-04-28 10:38:44', '2025-04-28 10:38:44'),
(1034, 'App\\Models\\Employee', 31, 'authToken', 'f9a63fa2967855d541735c8151599018e6bfdb948135cc8e51e0dac87837db14', '[\"operation-manager\"]', 1, '2025-04-28 11:48:12', NULL, '2025-04-28 11:42:34', '2025-04-28 11:48:12'),
(1035, 'App\\Models\\Employee', 54, 'authToken', '9e28bfb5a798abbcf4ce181b6e96a0ea1f3279fb1444257742cd30026840d6af', '[\"data-entry\"]', 1, '2025-04-28 13:27:14', NULL, '2025-04-28 11:48:16', '2025-04-28 13:27:14'),
(1036, 'App\\Models\\Employee', 31, 'authToken', '80272391cb4983f6f5a59c562f87bac3c2e042993c9fff82481595aa46c92e41', '[\"operation-manager\"]', 1, '2025-04-28 13:29:14', NULL, '2025-04-28 13:27:19', '2025-04-28 13:29:14'),
(1037, 'App\\Models\\Employee', 54, 'authToken', '73a3df7f36d452a405c44912f084caa8ecb212e51519026993f97206e81940a3', '[\"data-entry\"]', 1, '2025-04-28 13:29:35', NULL, '2025-04-28 13:29:17', '2025-04-28 13:29:35'),
(1038, 'App\\Models\\User', 19, 'authToken', '971234773ac419d3e8354bf8d5d1310df0fb1fbbbbc56ba0165694af2614661a', '[\"user\"]', 1, '2025-04-30 13:33:50', '2025-05-07 07:30:36', '2025-04-30 08:50:36', '2025-04-30 13:33:50'),
(1039, 'App\\Models\\User', 19, 'authToken', 'df33808124d23b8b323e1341a099453ee16a33553b18702b7972fcc2e1f9722b', '[\"user_rt\"]', 1, NULL, '2025-05-07 08:50:36', '2025-04-30 08:50:36', '2025-04-30 08:50:36'),
(1040, 'App\\Models\\User', 24, 'authToken', 'e6be0d0fe63e1b9a8b360eeb45338d3fd74f5c2a88b83725dd954aeb1f38536d', '[\"user\"]', 1, '2025-05-01 12:57:31', '2025-05-08 11:17:05', '2025-05-01 12:37:05', '2025-05-01 12:57:31'),
(1041, 'App\\Models\\User', 24, 'authToken', '74d6cff44c468a03577f18dfb8f91ad80bb430226284aafc66b74ccb7cb61292', '[\"user_rt\"]', 1, NULL, '2025-05-08 12:37:05', '2025-05-01 12:37:05', '2025-05-01 12:37:05');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `valid`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1042, 'App\\Models\\User', 10, 'authToken', 'ef3c822f9d71ea4776297eb81a4c6bebdedd8fed882ebfe01140a027eb255dae', '[\"user\"]', 1, '2025-05-01 13:42:25', '2025-05-08 11:47:40', '2025-05-01 13:07:40', '2025-05-01 13:42:25'),
(1043, 'App\\Models\\User', 10, 'authToken', '94731776101baada5767c8bd64a562800d1e922742e2611b1b4e9dbbf50b8f5f', '[\"user_rt\"]', 1, NULL, '2025-05-08 13:07:40', '2025-05-01 13:07:40', '2025-05-01 13:07:40'),
(1044, 'App\\Models\\User', 19, 'authToken', '58986592bcda9be080dd77716d0c93928c28b2bb997384cc4c5a626ceec65f24', '[\"user\"]', 1, NULL, '2025-05-19 07:04:23', '2025-05-12 08:24:22', '2025-05-12 08:24:23'),
(1045, 'App\\Models\\User', 19, 'authToken', 'ac975c5439e13582fd71fcdc0eab614c97ec4617b08fbce132cb81b9c9eb9a3e', '[\"user_rt\"]', 1, NULL, '2025-05-19 08:24:23', '2025-05-12 08:24:23', '2025-05-12 08:24:23'),
(1046, 'App\\Models\\User', 19, 'authToken', 'ca72f5bdfa187194a66c5ac533cc9dfe75e9a4571f982f476b1c7e052479785d', '[\"user\"]', 1, '2025-05-13 06:51:44', '2025-05-19 07:04:39', '2025-05-12 08:24:39', '2025-05-13 06:51:44'),
(1047, 'App\\Models\\User', 19, 'authToken', '24e1eb63b2b625650b04ccd0b7c360039afff4c7dd6997325b09bffdccd48dbb', '[\"user_rt\"]', 1, NULL, '2025-05-19 08:24:39', '2025-05-12 08:24:39', '2025-05-12 08:24:39'),
(1048, 'App\\Models\\Employee', 1, 'authToken', '1f2dd68963fc6af61edd97f6cafb50f5347c9a50574f40abe1f6e6530a759def', '[\"main-admin\"]', 1, '2025-05-14 06:32:57', NULL, '2025-05-13 06:38:10', '2025-05-14 06:32:57'),
(1049, 'App\\Models\\Employee', 1, 'authToken', '1e5da5b9a7875377f1841eb303c005799514e663403d24822e139d4944bf0180', '[\"main-admin\"]', 1, '2025-05-14 12:22:32', NULL, '2025-05-14 08:45:37', '2025-05-14 12:22:32'),
(1053, 'App\\Models\\Employee', 54, 'authToken', '4604bd8dbfcc1c9df074210e147140dc6120ab87fbc697cde25503acb96a6591', '[\"data-entry\"]', 1, '2025-05-17 13:34:07', NULL, '2025-05-17 13:31:32', '2025-05-17 13:34:07'),
(1054, 'App\\Models\\Employee', 1, 'authToken', 'ea674163fd0d721df72a6cc3bfba1da5ee69125e98d99170e13175ff6c52c67e', '[\"main-admin\"]', 1, '2025-05-18 13:05:33', NULL, '2025-05-18 10:05:37', '2025-05-18 13:05:33'),
(1055, 'App\\Models\\User', 19, 'authToken', '78129b41b83e0922d3edbed7d01e2727dbb884e7d6f3045a1774aa128c78f01c', '[\"user\"]', 1, '2025-05-21 13:45:15', '2025-05-28 06:44:37', '2025-05-21 08:04:37', '2025-05-21 13:45:15'),
(1056, 'App\\Models\\User', 19, 'authToken', 'd6345c472c3025bbb8029c900e84bcdc837ddf69460a8c71c762015e422be872', '[\"user_rt\"]', 1, NULL, '2025-05-28 08:04:37', '2025-05-21 08:04:37', '2025-05-21 08:04:37'),
(1057, 'App\\Models\\User', 19, 'authToken', '1a8d1faba5bf54d895ffae30c1286aecbfb7afdf06b5ad57f69e95acdf9c7e12', '[\"user\"]', 1, NULL, '2025-05-28 06:44:40', '2025-05-21 08:04:40', '2025-05-21 08:04:40'),
(1058, 'App\\Models\\User', 19, 'authToken', 'b0a7db37593db2bb0bfb801e634a49346afe4c2836a8556a3013c9238e47b7c8', '[\"user_rt\"]', 1, NULL, '2025-05-28 08:04:40', '2025-05-21 08:04:40', '2025-05-21 08:04:40'),
(1059, 'App\\Models\\Employee', 1, 'authToken', '7cb90ace29c37814fc8afc766094347bb08862b76276f235405119df4bd10d10', '[\"main-admin\"]', 1, '2025-05-22 09:53:08', NULL, '2025-05-22 09:31:42', '2025-05-22 09:53:08'),
(1060, 'App\\Models\\Employee', 1, 'authToken', 'f8f0db80a5e7693008947bd120bf32f90718083b272dfebe30ef2bc25298b786', '[\"main-admin\"]', 1, '2025-05-24 14:10:36', NULL, '2025-05-24 14:10:27', '2025-05-24 14:10:36'),
(1061, 'App\\Models\\Employee', 29, 'authToken', '958f901d9821032802838f8942cbe467392f8774fbf0663ca1b9da9a88a9335e', '[\"warehouse-manager\"]', 1, '2025-05-26 07:22:01', NULL, '2025-05-26 07:19:59', '2025-05-26 07:22:01'),
(1062, 'App\\Models\\Employee', 1, 'authToken', 'a9f0fd4bc3a6fe1278485df844dc3140ce1eb132fb7fedbde7e320d369ee6466', '[\"main-admin\"]', 1, '2025-05-26 12:11:33', NULL, '2025-05-26 10:58:45', '2025-05-26 12:11:33'),
(1063, 'App\\Models\\User', 19, 'authToken', '3bc05abf95e825873b970f306a0572a2d54e552d02d38c2a45b300ed200a3d70', '[\"user\"]', 1, '2025-05-26 15:38:29', '2025-06-02 14:17:45', '2025-05-26 15:37:45', '2025-05-26 15:38:29'),
(1064, 'App\\Models\\User', 19, 'authToken', '7c1469ff981f7569c68bbc34478ae50904efecbc518b1f80f4eb4bbce12f6404', '[\"user_rt\"]', 1, NULL, '2025-06-02 15:37:45', '2025-05-26 15:37:45', '2025-05-26 15:37:45'),
(1065, 'App\\Models\\Employee', 61, 'authToken', '96d78440bb4e76a2c66176200b0c1eff000f7fbac12405106d693dc7bcc50866', '[\"data-entry\"]', 1, '2025-05-29 12:18:26', NULL, '2025-05-29 12:18:09', '2025-05-29 12:18:26'),
(1066, 'App\\Models\\Employee', 1, 'authToken', 'ad4e11a72abfc8cda4055ec8fee65b1fc8142acbb97b9259969086f5fb480861', '[\"main-admin\"]', 1, '2025-06-02 12:50:09', NULL, '2025-06-02 12:50:03', '2025-06-02 12:50:09'),
(1068, 'App\\Models\\Employee', 54, 'authToken', 'c89bb74e95979ff7cb53bf365da7d4794291d99161c52ae37baf48c75f569d31', '[\"data-entry\"]', 1, '2025-06-05 12:52:24', NULL, '2025-06-05 12:50:20', '2025-06-05 12:52:24'),
(1069, 'App\\Models\\Employee', 54, 'authToken', '9857facf154ad29addeb4fdb736ba9ab656f30ad255e5c9c7c54fb2fdb9ca0ec', '[\"data-entry\"]', 1, '2025-06-05 13:56:04', NULL, '2025-06-05 12:55:10', '2025-06-05 13:56:04'),
(1070, 'App\\Models\\Employee', 54, 'authToken', 'ce34af6548183aa60a4bd3578868c15efcc04d54d150f3aef7668ea78f15c9da', '[\"data-entry\"]', 1, '2025-06-06 18:16:55', NULL, '2025-06-06 18:15:52', '2025-06-06 18:16:55'),
(1071, 'App\\Models\\User', 24, 'authToken', '72fecaa078e7e2172d049b2508cf686d5f00c8f525afa6294131a982b111512d', '[\"user\"]', 1, '2025-06-11 07:05:35', '2025-06-17 10:18:39', '2025-06-10 11:38:39', '2025-06-11 07:05:35'),
(1072, 'App\\Models\\User', 24, 'authToken', 'ec5eda1e69da6b9f8c86c5af08db0518f1082169c33a4be21b599db213420ee7', '[\"user_rt\"]', 1, NULL, '2025-06-17 11:38:39', '2025-06-10 11:38:39', '2025-06-10 11:38:39'),
(1073, 'App\\Models\\Employee', 1, 'authToken', '13c6072c628f0521f638ba6e2d49d989b3eaeb5871aaa26302d2a358304f3c62', '[\"main-admin\"]', 1, '2025-06-30 07:22:36', NULL, '2025-06-30 07:17:49', '2025-06-30 07:22:36'),
(1074, 'App\\Models\\Employee', 1, 'authToken', 'a6336bf296cef2501b7766e1c8f230c4b957c3f70a74c779b4a16d9e2ee44d1a', '[\"main-admin\"]', 1, '2025-07-02 11:41:19', NULL, '2025-07-02 07:28:47', '2025-07-02 11:41:19'),
(1075, 'App\\Models\\User', 24, 'authToken', '9f9ee8fc7e7de001ca44dc97707e4219f0ea9e195fcc03b14ed3a87b54bfa73d', '[\"user\"]', 1, '2025-07-02 12:09:24', '2025-07-09 10:48:58', '2025-07-02 12:08:58', '2025-07-02 12:09:24'),
(1076, 'App\\Models\\User', 24, 'authToken', 'b98b83a415cddd58a2a56a7d201571f07d2da699c54d9dc4417abdf5230c9715', '[\"user_rt\"]', 1, NULL, '2025-07-09 12:08:58', '2025-07-02 12:08:58', '2025-07-02 12:08:58'),
(1077, 'App\\Models\\Employee', 1, 'authToken', '216bb9aef710f4325701a8131b219fc88cecebcaaac279af4aa7b8cd89fa61f8', '[\"main-admin\"]', 1, '2025-07-10 11:56:32', NULL, '2025-07-10 10:17:14', '2025-07-10 11:56:32'),
(1078, 'App\\Models\\Employee', 1, 'authToken', 'e1725d3ff089cf55263c1f9b8c12e2f82648a56aee16b396cea5d8a7fcd0bb02', '[\"main-admin\"]', 1, '2025-07-17 07:23:08', NULL, '2025-07-17 07:22:36', '2025-07-17 07:23:08'),
(1079, 'App\\Models\\Employee', 1, 'authToken', '97de0df8e66b0eaed3d414e94693551cffbf278334e464d081b2687731a55a98', '[\"main-admin\"]', 1, '2025-07-30 12:34:12', NULL, '2025-07-30 12:32:31', '2025-07-30 12:34:12'),
(1080, 'App\\Models\\Employee', 1, 'authToken', '99994e182a19b01d73810f551037dfd9b735755d4596137d92da63ce2a0e8766', '[\"main-admin\"]', 1, '2025-08-05 07:31:59', NULL, '2025-08-04 09:47:43', '2025-08-05 07:31:59'),
(1081, 'App\\Models\\Employee', 1, 'authToken', 'f41f735e8be3336657f8b591a065c84b4c23e60f820efb39434c1af173084d96', '[\"main-admin\"]', 1, '2025-08-18 08:00:15', NULL, '2025-08-18 07:58:27', '2025-08-18 08:00:15');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `thumbnail` varchar(200) NOT NULL,
  `path` varchar(200) NOT NULL,
  `main_photo` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `product_id`, `color_id`, `thumbnail`, `path`, `main_photo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(128, 17, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/test?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/test?_a=E', 1, NULL, '2025-02-19 08:52:21', '2025-02-19 08:52:21'),
(130, 17, 6, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-02-19 10:51:02', '2025-02-19 10:51:02'),
(134, 19, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/test?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/test?_a=E', 1, NULL, '2025-02-19 11:16:56', '2025-02-19 11:16:56'),
(135, 18, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2J4A9645?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2J4A9645?_a=E', 1, NULL, '2025-02-19 11:20:21', '2025-02-19 11:20:21'),
(136, 18, 6, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2J4A9583?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2J4A9583?_a=E', 1, NULL, '2025-02-19 11:21:57', '2025-02-19 11:21:57'),
(138, 20, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/test?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/test?_a=E', 1, NULL, '2025-02-19 11:40:53', '2025-02-19 11:40:53'),
(139, 19, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2J4A9620?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2J4A9620?_a=E', 0, NULL, '2025-02-19 11:41:56', '2025-02-19 11:41:56'),
(142, 21, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/test?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/test?_a=E', 0, NULL, '2025-02-19 12:34:47', '2025-02-19 12:45:12'),
(143, 21, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/272397054_4898165503599980_4302851108781474094_n?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/272397054_4898165503599980_4302851108781474094_n?_a=E', 1, NULL, '2025-02-19 12:43:57', '2025-02-19 12:45:12'),
(144, 21, 3, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/%281%29?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/%281%29?_a=E', 0, NULL, '2025-02-19 12:44:12', '2025-02-19 12:44:36'),
(145, 21, 3, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/34847138_1715652558517973_2574037594857799680_n?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/34847138_1715652558517973_2574037594857799680_n?_a=E', 1, NULL, '2025-02-19 12:44:31', '2025-02-19 12:44:36'),
(148, 22, 3, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/test?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/test?_a=E', 0, NULL, '2025-02-19 13:09:46', '2025-02-19 13:11:37'),
(149, 22, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/test?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/test?_a=E', 1, NULL, '2025-02-19 13:10:04', '2025-02-19 13:10:04'),
(150, 22, 3, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/272397054_4898165503599980_4302851108781474094_n?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/272397054_4898165503599980_4302851108781474094_n?_a=E', 1, NULL, '2025-02-19 13:11:28', '2025-02-19 13:11:37'),
(152, 23, 2, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-02-20 08:28:17', '2025-02-20 08:28:17'),
(153, 23, 3, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/24?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/24?_a=E', 1, NULL, '2025-02-20 08:28:34', '2025-02-20 08:28:34'),
(156, 25, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-02-17_15-42-35?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-02-17_15-42-35?_a=E', 1, NULL, '2025-03-13 11:17:57', '2025-03-13 11:17:57'),
(157, 25, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/test?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/test?_a=E', 0, NULL, '2025-03-13 11:19:25', '2025-03-13 11:19:25'),
(158, 25, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/%D9%81%D8%A6%D8%A9?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/%D9%81%D8%A6%D8%A9?_a=E', 0, NULL, '2025-03-13 11:19:27', '2025-03-13 11:19:27'),
(160, 26, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-02-17_15-42-35?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-02-17_15-42-35?_a=E', 1, NULL, '2025-03-13 11:21:51', '2025-03-13 11:21:51'),
(161, 26, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/test?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/test?_a=E', 0, NULL, '2025-03-13 11:21:52', '2025-03-13 11:21:52'),
(162, 26, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/test?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/test?_a=E', 0, NULL, '2025-03-13 11:22:12', '2025-03-13 11:22:12'),
(163, 24, 9, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2J4A9609?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2J4A9609?_a=E', 1, NULL, '2025-03-13 11:42:08', '2025-03-13 11:42:12'),
(164, 24, 9, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2J4A9610?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2J4A9610?_a=E', 0, NULL, '2025-03-13 11:42:10', '2025-03-13 11:42:10'),
(165, 24, 9, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2J4A9613?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2J4A9613?_a=E', 0, NULL, '2025-03-13 11:42:11', '2025-03-13 11:42:11'),
(168, 27, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2J4A9583?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2J4A9583?_a=E', 1, NULL, '2025-03-13 11:55:00', '2025-03-13 11:55:00'),
(169, 27, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2J4A9588?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2J4A9588?_a=E', 0, NULL, '2025-03-13 11:55:02', '2025-03-13 11:55:02'),
(170, 27, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2J4A9589?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2J4A9589?_a=E', 0, NULL, '2025-03-13 11:55:04', '2025-03-13 11:55:04'),
(171, 27, 10, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2J4A9588?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2J4A9588?_a=E', 1, NULL, '2025-03-13 11:55:24', '2025-03-13 11:55:24'),
(172, 28, 3, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-13 11:59:43', '2025-03-13 11:59:43'),
(173, 28, 2, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-13 11:59:43', '2025-03-13 11:59:43'),
(174, 29, 1, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-13 12:22:28', '2025-03-13 12:22:28'),
(175, 30, 3, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-13 12:25:37', '2025-03-13 12:25:37'),
(176, 30, 2, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-13 12:25:38', '2025-03-13 12:25:38'),
(177, 31, 1, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-13 12:25:55', '2025-03-13 12:25:55'),
(178, 32, 3, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-13 12:30:32', '2025-03-13 12:30:32'),
(179, 32, 2, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-13 12:30:32', '2025-03-13 12:30:32'),
(182, 34, 10, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-16 12:19:55', '2025-03-16 12:19:55'),
(194, 37, 11, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/106?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/106?_a=E', 1, NULL, '2025-03-16 12:59:37', '2025-03-16 12:59:37'),
(195, 37, 12, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/106?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/106?_a=E', 1, NULL, '2025-03-16 12:59:44', '2025-03-16 12:59:44'),
(196, 37, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/106?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/106?_a=E', 1, NULL, '2025-03-16 12:59:51', '2025-03-16 12:59:51'),
(200, 38, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/102?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/102?_a=E', 1, NULL, '2025-03-16 13:08:01', '2025-03-16 13:08:01'),
(201, 38, 12, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/102?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/102?_a=E', 1, NULL, '2025-03-16 13:08:06', '2025-03-16 13:08:06'),
(202, 38, 6, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/102?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/102?_a=E', 1, NULL, '2025-03-16 13:08:13', '2025-03-16 13:08:13'),
(207, 39, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/154?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/154?_a=E', 1, NULL, '2025-03-20 13:06:07', '2025-03-20 13:06:07'),
(208, 39, 6, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/154?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/154?_a=E', 1, NULL, '2025-03-20 13:06:30', '2025-03-20 13:06:30'),
(209, 39, 13, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/154?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/154?_a=E', 1, NULL, '2025-03-20 13:06:38', '2025-03-20 13:06:38'),
(210, 39, 14, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/154?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/154?_a=E', 1, NULL, '2025-03-20 13:06:45', '2025-03-20 13:06:45'),
(215, 40, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/9?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/9?_a=E', 1, NULL, '2025-03-20 13:19:15', '2025-03-20 13:19:15'),
(216, 40, 6, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/9?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/9?_a=E', 1, NULL, '2025-03-20 13:19:21', '2025-03-20 13:19:21'),
(217, 40, 14, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/9?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/9?_a=E', 1, NULL, '2025-03-20 13:19:44', '2025-03-20 13:19:44'),
(218, 40, 9, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/9?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/9?_a=E', 1, NULL, '2025-03-20 13:19:55', '2025-03-20 13:19:55'),
(219, 41, 12, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(221, 41, 9, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(226, 41, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/123?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/123?_a=E', 1, NULL, '2025-03-25 11:46:27', '2025-03-25 11:46:27'),
(227, 41, 6, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/123?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/123?_a=E', 1, NULL, '2025-03-25 11:46:36', '2025-03-25 11:46:36'),
(228, 41, 13, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/123?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/123?_a=E', 1, NULL, '2025-03-25 11:46:43', '2025-03-25 11:46:43'),
(229, 41, 8, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-25 11:52:54', '2025-03-25 11:52:54'),
(230, 41, 7, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-25 11:52:57', '2025-03-25 11:52:57'),
(239, 42, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_14-23-22%20%282%29?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_14-23-22%20%282%29?_a=E', 1, NULL, '2025-03-25 12:12:34', '2025-03-25 12:12:34'),
(240, 42, 18, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_15-41-01?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_15-41-01?_a=E', 1, NULL, '2025-03-25 12:42:25', '2025-03-25 12:42:25'),
(241, 42, 19, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_14-23-22%20%282%29?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_14-23-22%20%282%29?_a=E', 1, NULL, '2025-03-25 12:43:06', '2025-03-25 12:43:06'),
(242, 42, 14, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_14-23-22%20%282%29?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_14-23-22%20%282%29?_a=E', 1, NULL, '2025-03-25 12:43:11', '2025-03-25 12:43:12'),
(243, 42, 6, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_14-23-22%20%282%29?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_14-23-22%20%282%29?_a=E', 1, NULL, '2025-03-25 12:43:18', '2025-03-25 12:43:18'),
(251, 43, 23, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(252, 43, 15, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(257, 44, 7, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-25 13:14:06', '2025-03-25 13:14:06'),
(259, 44, 16, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-25 13:14:06', '2025-03-25 13:14:06'),
(260, 43, 20, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_14-23-22%20%283%29?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_14-23-22%20%283%29?_a=E', 1, NULL, '2025-03-25 13:17:01', '2025-03-25 13:17:01'),
(261, 44, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/124?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/124?_a=E', 1, NULL, '2025-03-25 13:17:37', '2025-03-25 13:17:37'),
(262, 44, 14, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/124?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/124?_a=E', 1, NULL, '2025-03-25 13:17:47', '2025-03-25 13:17:47'),
(263, 44, 13, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/124?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/124?_a=E', 1, NULL, '2025-03-25 13:17:53', '2025-03-25 13:17:53'),
(264, 44, 9, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_16-18-39?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_16-18-39?_a=E', 1, NULL, '2025-03-25 13:24:17', '2025-03-25 13:24:17'),
(265, 44, 12, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_16-18-39?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_16-18-39?_a=E', 1, NULL, '2025-03-25 13:25:14', '2025-03-25 13:25:14'),
(266, 43, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_14-23-22%20%283%29?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_14-23-22%20%283%29?_a=E', 1, NULL, '2025-03-25 13:31:59', '2025-03-25 13:31:59'),
(267, 43, 14, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_14-23-22%20%283%29?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_14-23-22%20%283%29?_a=E', 1, NULL, '2025-03-25 13:32:08', '2025-03-25 13:32:08'),
(268, 43, 6, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_14-23-22%20%283%29?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_14-23-22%20%283%29?_a=E', 1, NULL, '2025-03-25 13:32:14', '2025-03-25 13:32:14'),
(269, 43, 20, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_14-23-22%20%283%29?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_14-23-22%20%283%29?_a=E', 1, NULL, '2025-03-25 13:32:22', '2025-03-25 13:32:22'),
(270, 43, 19, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_14-23-22%20%283%29?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_14-23-22%20%283%29?_a=E', 1, NULL, '2025-03-25 13:32:30', '2025-03-25 13:32:30'),
(271, 43, 22, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_16-32-35?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_16-32-35?_a=E', 1, NULL, '2025-03-25 13:32:59', '2025-03-25 13:32:59'),
(272, 43, 17, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_16-32-35?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_16-32-35?_a=E', 1, NULL, '2025-03-25 13:33:05', '2025-03-25 13:33:05'),
(273, 42, 5, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_16-33-28?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_16-33-28?_a=E', 1, NULL, '2025-03-25 13:33:39', '2025-03-25 13:33:39'),
(274, 42, 16, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_16-33-28?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_16-33-28?_a=E', 1, NULL, '2025-03-25 13:33:44', '2025-03-25 13:33:45'),
(275, 42, 17, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_16-33-28?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/photo_2025-03-25_16-33-28?_a=E', 1, NULL, '2025-03-25 13:33:50', '2025-03-25 13:33:50'),
(276, 45, 2, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(277, 45, 6, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(278, 45, 13, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(279, 45, 20, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(280, 45, 14, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(282, 45, 4, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/128?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/128?_a=E', 1, NULL, '2025-03-25 13:37:49', '2025-03-25 13:37:49'),
(283, 46, 2, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(284, 46, 6, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(285, 46, 14, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(286, 46, 15, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(287, 46, 20, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(288, 46, 19, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(289, 46, 22, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(290, 46, 23, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(292, 47, 6, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(293, 47, 14, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(294, 47, 15, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(298, 47, 23, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(300, 47, 17, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/11014360?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/11014360?_a=E', 1, NULL, '2025-03-25 13:45:49', '2025-03-25 13:45:49'),
(301, 47, 22, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/11014360?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/11014360?_a=E', 1, NULL, '2025-03-25 13:45:57', '2025-03-25 13:45:57'),
(302, 47, 20, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/125?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/125?_a=E', 1, NULL, '2025-03-25 13:46:26', '2025-03-25 13:46:26'),
(303, 47, 19, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/125?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/125?_a=E', 1, NULL, '2025-03-25 13:46:42', '2025-03-25 13:46:42'),
(304, 47, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/125?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/125?_a=E', 1, NULL, '2025-03-25 13:46:48', '2025-03-25 13:46:48'),
(306, 36, 1, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-26 06:11:05', '2025-03-26 06:11:05'),
(307, 36, 14, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-26 06:12:15', '2025-03-26 06:12:15'),
(309, 36, 4, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-26 06:12:15', '2025-03-26 06:12:15'),
(310, 35, 10, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-26 06:17:00', '2025-03-26 06:17:00'),
(311, 35, 6, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-26 06:17:01', '2025-03-26 06:17:01'),
(313, 48, 14, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-26 06:31:06', '2025-03-26 06:31:06'),
(314, 48, 19, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-26 06:31:06', '2025-03-26 06:31:06'),
(315, 48, 20, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-26 06:31:06', '2025-03-26 06:31:06'),
(316, 48, 15, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-26 06:31:06', '2025-03-26 06:31:06'),
(318, 49, 2, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-26 09:20:50', '2025-03-26 09:20:50'),
(321, 49, 17, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-26 09:20:50', '2025-03-26 09:20:50'),
(322, 49, 4, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-26 09:20:50', '2025-03-26 09:20:50'),
(323, 50, 6, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-26 09:29:19', '2025-03-26 09:29:19'),
(324, 50, 2, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-26 09:29:20', '2025-03-26 09:29:20'),
(325, 50, 14, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-26 09:29:20', '2025-03-26 09:29:20'),
(327, 50, 17, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-26 09:29:20', '2025-03-26 09:29:20'),
(328, 50, 4, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-26 09:29:20', '2025-03-26 09:29:20'),
(335, 36, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/13010789?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/13010789?_a=E', 1, NULL, '2025-03-26 11:02:09', '2025-03-26 11:02:10'),
(337, 48, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/1301070?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/1301070?_a=E', 1, NULL, '2025-03-26 11:02:44', '2025-03-26 11:02:45'),
(339, 39, 12, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/11014354?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/11014354?_a=E', 1, NULL, '2025-03-26 11:04:16', '2025-03-26 11:04:16'),
(340, 39, 23, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/11014354?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/11014354?_a=E', 1, NULL, '2025-03-26 11:04:30', '2025-03-26 11:04:30'),
(342, 49, 6, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-26 11:05:51', '2025-03-26 11:05:51'),
(343, 49, 14, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/11014352?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/11014352?_a=E', 1, NULL, '2025-03-26 11:06:09', '2025-03-26 11:06:09'),
(344, 51, 4, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/13010906?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/13010906?_a=E', 1, NULL, '2025-03-26 11:07:27', '2025-03-26 11:07:27'),
(345, 51, 8, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/13010906?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/13010906?_a=E', 1, NULL, '2025-03-26 11:07:40', '2025-03-26 11:07:40'),
(346, 51, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/13010906?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/13010906?_a=E', 1, NULL, '2025-03-26 11:07:54', '2025-03-26 11:07:54'),
(349, 52, 19, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-26 11:27:23', '2025-03-26 11:27:23'),
(350, 53, 19, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-26 11:32:02', '2025-03-26 11:32:02'),
(351, 53, 2, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-26 11:32:02', '2025-03-26 11:32:02'),
(352, 53, 6, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-26 11:32:02', '2025-03-26 11:32:02'),
(357, 55, 6, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-26 11:55:54', '2025-03-26 11:55:54'),
(360, 57, 2, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-26 12:04:53', '2025-03-26 12:04:53'),
(361, 57, 12, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-26 12:04:53', '2025-03-26 12:04:53'),
(380, 52, 12, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2?_a=E', 1, NULL, '2025-03-26 13:37:49', '2025-03-26 13:37:49'),
(381, 52, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2?_a=E', 1, NULL, '2025-03-26 13:37:55', '2025-03-26 13:37:56'),
(382, 53, 12, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/3?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/3?_a=E', 1, NULL, '2025-03-26 13:38:35', '2025-03-26 13:38:37'),
(383, 63, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/100?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/100?_a=E', 1, NULL, '2025-03-26 13:39:03', '2025-03-26 13:39:04'),
(384, 63, 12, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/100?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/100?_a=E', 1, NULL, '2025-03-26 13:39:13', '2025-03-26 13:39:14'),
(385, 54, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/101?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/101?_a=E', 1, NULL, '2025-03-26 13:39:47', '2025-03-26 13:39:47'),
(386, 54, 12, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/101?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/101?_a=E', 1, NULL, '2025-03-26 13:39:55', '2025-03-26 13:39:57'),
(387, 55, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/102?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/102?_a=E', 1, NULL, '2025-03-26 13:40:21', '2025-03-26 13:40:22'),
(389, 56, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/103?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/103?_a=E', 1, NULL, '2025-03-26 13:42:27', '2025-03-26 13:42:28'),
(390, 56, 6, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/103?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/103?_a=E', 1, NULL, '2025-03-26 13:42:38', '2025-03-26 13:42:39'),
(391, 58, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/104?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/104?_a=E', 1, NULL, '2025-03-26 13:43:10', '2025-03-26 13:43:11'),
(392, 58, 12, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/104?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/104?_a=E', 1, NULL, '2025-03-26 13:43:21', '2025-03-26 13:43:22'),
(400, 68, 6, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-27 06:40:35', '2025-03-27 06:40:35'),
(407, 72, 17, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-27 07:01:07', '2025-03-27 07:01:07'),
(409, 74, 3, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-27 07:57:59', '2025-03-27 07:57:59'),
(410, 75, 10, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-27 11:15:03', '2025-03-27 11:15:03'),
(411, 75, 6, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-27 11:15:03', '2025-03-27 11:15:03'),
(412, 76, 7, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-27 11:20:43', '2025-03-27 11:20:43'),
(413, 76, 2, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-27 11:20:43', '2025-03-27 11:20:43'),
(414, 77, 3, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-27 11:24:40', '2025-03-27 11:24:40'),
(415, 77, 16, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-27 11:24:40', '2025-03-27 11:24:40'),
(416, 78, 11, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-27 12:16:48', '2025-03-27 12:16:48'),
(417, 79, 11, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-27 12:19:43', '2025-03-27 12:19:43'),
(418, 80, 2, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-27 12:22:56', '2025-03-27 12:22:56'),
(419, 81, 2, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-27 12:25:39', '2025-03-27 12:25:39'),
(420, 82, 2, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-27 12:27:36', '2025-03-27 12:27:36'),
(421, 82, 3, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-27 12:27:36', '2025-03-27 12:27:36'),
(422, 83, 2, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-27 12:29:38', '2025-03-27 12:29:38'),
(423, 84, 2, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-27 12:34:13', '2025-03-27 12:34:13'),
(424, 84, 6, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-27 12:34:13', '2025-03-27 12:34:13'),
(425, 85, 6, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-27 13:26:14', '2025-03-27 13:26:14'),
(426, 85, 17, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-27 13:26:15', '2025-03-27 13:26:15'),
(427, 85, 4, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-27 13:26:15', '2025-03-27 13:26:15'),
(428, 86, 4, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-27 13:31:36', '2025-03-27 13:31:36'),
(429, 86, 17, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-27 13:31:36', '2025-03-27 13:31:36'),
(430, 86, 6, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-27 13:31:36', '2025-03-27 13:31:36'),
(431, 87, 4, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-27 13:34:03', '2025-03-27 13:34:03'),
(432, 87, 6, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-27 13:34:03', '2025-03-27 13:34:03'),
(433, 87, 17, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-03-27 13:34:03', '2025-03-27 13:34:03'),
(434, 73, 3, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/5?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/5?_a=E', 1, NULL, '2025-04-05 06:30:19', '2025-04-05 06:30:20'),
(435, 59, 6, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/105?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/105?_a=E', 1, NULL, '2025-04-05 06:31:04', '2025-04-05 06:31:05'),
(436, 59, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/105?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/105?_a=E', 1, NULL, '2025-04-05 06:31:10', '2025-04-05 06:31:10'),
(437, 59, 12, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/105?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/105?_a=E', 1, NULL, '2025-04-05 06:31:15', '2025-04-05 06:31:15'),
(446, 64, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/106?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/106?_a=E', 1, NULL, '2025-04-05 06:32:48', '2025-04-05 06:32:48'),
(447, 64, 12, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/106?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/106?_a=E', 1, NULL, '2025-04-05 06:32:53', '2025-04-05 06:32:53'),
(448, 64, 11, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/106?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/106?_a=E', 1, NULL, '2025-04-05 06:32:58', '2025-04-05 06:32:58'),
(449, 64, 6, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/106?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/106?_a=E', 1, NULL, '2025-04-05 06:33:04', '2025-04-05 06:33:04'),
(450, 60, 14, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/107?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/107?_a=E', 1, NULL, '2025-04-05 06:34:05', '2025-04-05 06:34:05'),
(451, 60, 12, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/107?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/107?_a=E', 1, NULL, '2025-04-05 06:34:13', '2025-04-05 06:34:14'),
(452, 61, 6, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/108?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/108?_a=E', 1, NULL, '2025-04-05 06:34:56', '2025-04-05 06:34:57'),
(453, 61, 12, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/108?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/108?_a=E', 1, NULL, '2025-04-05 06:35:04', '2025-04-05 06:35:05'),
(454, 62, 6, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/110?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/110?_a=E', 1, NULL, '2025-04-05 06:35:32', '2025-04-05 06:35:32'),
(455, 62, 12, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/110?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/110?_a=E', 1, NULL, '2025-04-05 06:35:49', '2025-04-05 06:35:50'),
(456, 70, 6, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/168?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/168?_a=E', 1, NULL, '2025-04-05 06:36:41', '2025-04-05 06:36:42'),
(457, 70, 10, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/168?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/168?_a=E', 1, NULL, '2025-04-05 06:36:47', '2025-04-05 06:36:48'),
(458, 67, 6, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/172?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/172?_a=E', 1, NULL, '2025-04-05 06:37:18', '2025-04-05 06:37:19'),
(459, 67, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/172?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/172?_a=E', 1, NULL, '2025-04-05 06:37:34', '2025-04-05 06:37:35'),
(460, 68, 5, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/178?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/178?_a=E', 1, NULL, '2025-04-05 06:37:53', '2025-04-05 06:37:54'),
(461, 66, 17, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/184?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/184?_a=E', 1, NULL, '2025-04-05 06:39:12', '2025-04-05 06:39:12'),
(462, 66, 14, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/184?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/184?_a=E', 1, NULL, '2025-04-05 06:39:18', '2025-04-05 06:39:19'),
(464, 66, 16, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/184?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/184?_a=E', 1, NULL, '2025-04-05 06:39:47', '2025-04-05 06:39:47'),
(465, 69, 14, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/185?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/185?_a=E', 1, NULL, '2025-04-05 06:40:12', '2025-04-05 06:40:13'),
(466, 69, 16, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/185?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/185?_a=E', 1, NULL, '2025-04-05 06:40:18', '2025-04-05 06:40:18'),
(467, 72, 12, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/188?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/188?_a=E', 1, NULL, '2025-04-05 06:40:52', '2025-04-05 06:40:52'),
(468, 65, 12, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/190?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/190?_a=E', 1, NULL, '2025-04-05 06:41:46', '2025-04-05 06:41:47'),
(469, 65, 14, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/190?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/190?_a=E', 1, NULL, '2025-04-05 06:41:52', '2025-04-05 06:41:53'),
(470, 71, 14, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/288?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/288?_a=E', 1, NULL, '2025-04-05 06:42:24', '2025-04-05 06:42:25'),
(471, 88, 24, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-04-05 08:14:16', '2025-04-05 08:14:16'),
(472, 88, 12, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-04-05 08:14:16', '2025-04-05 08:14:16'),
(473, 89, 17, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-04-05 08:23:47', '2025-04-05 08:23:47'),
(474, 89, 24, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-04-05 08:23:47', '2025-04-05 08:23:47'),
(475, 90, 9, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-04-05 08:48:15', '2025-04-05 08:48:15'),
(476, 91, 14, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-04-05 09:02:33', '2025-04-05 09:02:33'),
(477, 92, 14, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-04-05 09:11:38', '2025-04-05 09:11:38'),
(484, 94, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2J4A9588?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2J4A9588?_a=E', 1, NULL, '2025-04-09 11:28:56', '2025-04-09 11:28:56'),
(485, 94, 8, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2J4A9591?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2J4A9591?_a=E', 1, NULL, '2025-04-09 11:31:37', '2025-04-09 11:31:37'),
(486, 94, 14, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2J4A9600?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2J4A9600?_a=E', 1, NULL, '2025-04-09 11:32:00', '2025-04-09 11:32:00'),
(492, 95, 2, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/9_1744198753_67f65c6192c6e?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/9_1744198753_67f65c6192c6e?_a=E', 1, NULL, '2025-04-09 11:39:14', '2025-04-09 11:39:25'),
(493, 95, 8, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/1_1744198882_67f65ce266246?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/1_1744198882_67f65ce266246?_a=E', 1, NULL, '2025-04-09 11:41:23', '2025-04-09 11:41:23'),
(496, 96, 24, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2025-01-21%2017_42_13.078%2B0300%20%281%29_1744199456_67f65f2011ec3?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2025-01-21%2017_42_13.078%2B0300%20%281%29_1744199456_67f65f2011ec3?_a=E', 1, NULL, '2025-04-09 11:50:58', '2025-04-09 11:50:58'),
(497, 96, 6, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2J4A9718_1744199471_67f65f2fc276c?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2J4A9718_1744199471_67f65f2fc276c?_a=E', 1, NULL, '2025-04-09 11:51:13', '2025-04-09 11:51:13'),
(499, 97, 14, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/8_1744199581_67f65f9d705e8?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/8_1744199581_67f65f9d705e8?_a=E', 1, NULL, '2025-04-09 11:53:03', '2025-04-09 11:53:03'),
(502, 98, 16, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/18_1744199693_67f6600daf445?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/18_1744199693_67f6600daf445?_a=E', 1, NULL, '2025-04-09 11:54:54', '2025-04-09 11:54:54'),
(503, 98, 11, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/13_1744199707_67f6601b354b8?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/13_1744199707_67f6601b354b8?_a=E', 1, NULL, '2025-04-09 11:55:08', '2025-04-09 11:55:08');
INSERT INTO `photos` (`id`, `product_id`, `color_id`, `thumbnail`, `path`, `main_photo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(506, 99, 6, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/4.5_1744270922_67f7764a10ece?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/4.5_1744270922_67f7764a10ece?_a=E', 1, NULL, '2025-04-10 07:42:03', '2025-04-10 07:42:03'),
(507, 99, 5, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/22_1744270932_67f7765411865?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/22_1744270932_67f7765411865?_a=E', 1, NULL, '2025-04-10 07:42:13', '2025-04-10 07:42:13'),
(508, 100, 25, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-04-15 13:00:00', '2025-04-15 13:00:00'),
(509, 101, 15, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-04-15 13:23:36', '2025-04-15 13:23:36'),
(510, 101, 26, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-04-15 13:23:36', '2025-04-15 13:23:36'),
(511, 102, 22, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-04-16 11:41:23', '2025-04-16 11:41:23'),
(512, 103, 15, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-04-16 11:52:00', '2025-04-16 11:52:00'),
(513, 103, 22, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-04-16 11:52:00', '2025-04-16 11:52:00'),
(514, 103, 13, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-04-16 11:52:00', '2025-04-16 11:52:00'),
(515, 104, 26, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-04-16 12:03:06', '2025-04-16 12:03:06'),
(516, 104, 18, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-04-16 12:03:06', '2025-04-16 12:03:06'),
(517, 104, 19, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-04-16 12:03:06', '2025-04-16 12:03:06'),
(518, 105, 11, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-04-16 12:11:53', '2025-04-16 12:11:53'),
(519, 106, 15, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-04-16 12:41:34', '2025-04-16 12:41:34'),
(520, 106, 19, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-04-16 12:41:34', '2025-04-16 12:41:34'),
(521, 107, 18, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-04-16 13:09:20', '2025-04-16 13:09:20'),
(522, 107, 23, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-04-16 13:09:20', '2025-04-16 13:09:20'),
(523, 107, 27, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-04-16 13:09:20', '2025-04-16 13:09:20'),
(524, 108, 19, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-04-16 13:17:16', '2025-04-16 13:17:16'),
(525, 108, 13, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-04-16 13:17:16', '2025-04-16 13:17:16'),
(526, 109, 15, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-04-16 13:24:12', '2025-04-16 13:24:12'),
(527, 109, 14, 'https://api.xo-textile.sy/public/images/xo-logo.webp', 'https://api.xo-textile.sy/public/images/xo-logo.webp', 1, NULL, '2025-04-16 13:24:12', '2025-04-16 13:24:12'),
(529, 110, 5, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/IMG_3114_1745840484_680f6964c1b45?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/IMG_3114_1745840484_680f6964c1b45?_a=E', 1, NULL, '2025-04-28 11:41:26', '2025-04-28 11:41:26'),
(531, 111, 5, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/WhatsApp%20Image%202025-05-17%20at%2015.45.07%20%281%29_1747488401_68288e9111e37?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/WhatsApp%20Image%202025-05-17%20at%2015.45.07%20%281%29_1747488401_68288e9111e37?_a=E', 0, NULL, '2025-05-17 13:26:42', '2025-05-17 13:32:03'),
(532, 111, 5, 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/WhatsApp%20Image%202025-05-17%20at%2015.45.07_1747488408_68288e98a7488?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/WhatsApp%20Image%202025-05-17%20at%2015.45.07_1747488408_68288e98a7488?_a=E', 1, NULL, '2025-05-17 13:26:49', '2025-05-17 13:32:03');

-- --------------------------------------------------------

--
-- Table structure for table `poligons`
--

CREATE TABLE `poligons` (
  `id` bigint(20) NOT NULL,
  `coordinates` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `poligons`
--

INSERT INTO `poligons` (`id`, `coordinates`, `created_at`, `updated_at`) VALUES
(1, '[[35.95, 36.6],[36.05, 36.5],[36.3, 36.5]]', '2024-05-13 08:56:48', '2024-05-13 08:56:48');

-- --------------------------------------------------------

--
-- Table structure for table `pricings`
--

CREATE TABLE `pricings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(200) NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`name`)),
  `currency` varchar(200) NOT NULL,
  `value` double NOT NULL,
  `valid` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pricings`
--

INSERT INTO `pricings` (`id`, `product_id`, `location`, `name`, `currency`, `value`, `valid`, `deleted_at`, `created_at`, `updated_at`) VALUES
(37, 17, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 115000, 0, NULL, '2025-02-19 08:51:57', '2025-04-09 12:06:09'),
(38, 18, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 200000, 0, NULL, '2025-02-19 11:13:39', '2025-02-19 11:13:39'),
(39, 19, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 100000, 0, NULL, '2025-02-19 11:16:24', '2025-02-19 11:16:24'),
(40, 20, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 100000, 0, NULL, '2025-02-19 11:40:28', '2025-02-19 11:40:28'),
(41, 21, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 100000, 0, NULL, '2025-02-19 12:34:05', '2025-02-19 12:34:05'),
(42, 22, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 100000, 0, NULL, '2025-02-19 13:09:27', '2025-02-19 13:09:27'),
(43, 23, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 100000, 0, NULL, '2025-02-20 08:28:17', '2025-02-20 08:28:17'),
(44, 24, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 77000, 0, NULL, '2025-03-13 11:03:57', '2025-03-13 11:03:57'),
(45, 25, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 400, 0, NULL, '2025-03-13 11:17:03', '2025-03-13 11:17:03'),
(46, 26, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 200, 0, NULL, '2025-03-13 11:21:30', '2025-03-13 11:21:30'),
(47, 27, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 494, 0, NULL, '2025-03-13 11:54:25', '2025-03-13 11:54:25'),
(48, 28, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 213, 0, NULL, '2025-03-13 11:59:43', '2025-03-13 11:59:43'),
(49, 29, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 89, 0, NULL, '2025-03-13 12:22:28', '2025-03-13 12:22:28'),
(50, 30, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 213, 0, NULL, '2025-03-13 12:25:37', '2025-03-13 12:25:37'),
(51, 31, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 950, 0, NULL, '2025-03-13 12:25:55', '2025-03-13 12:25:55'),
(52, 32, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 213, 0, NULL, '2025-03-13 12:30:32', '2025-03-13 12:30:32'),
(54, 34, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 100000, 0, NULL, '2025-03-16 12:19:55', '2025-03-16 12:19:55'),
(55, 35, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 100000, 0, NULL, '2025-03-16 12:20:13', '2025-03-16 12:20:13'),
(56, 36, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 50000, 0, NULL, '2025-03-16 12:39:52', '2025-03-16 12:39:52'),
(57, 37, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 75000, 0, NULL, '2025-03-16 12:56:01', '2025-03-16 12:56:01'),
(58, 38, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 50000, 0, NULL, '2025-03-16 13:06:26', '2025-03-16 13:06:26'),
(59, 39, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 50000, 0, NULL, '2025-03-20 13:00:20', '2025-03-20 13:00:20'),
(60, 40, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 75000, 0, NULL, '2025-03-20 13:16:48', '2025-03-20 13:16:48'),
(61, 41, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 100000, 0, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(62, 42, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 100000, 0, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(63, 43, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 100000, 0, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(64, 44, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 85000, 0, NULL, '2025-03-25 13:14:06', '2025-03-25 13:14:06'),
(65, 45, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 100000, 0, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(66, 46, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 100000, 0, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(67, 47, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 100000, 0, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(68, 48, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 100000, 0, NULL, '2025-03-26 06:31:06', '2025-03-26 06:31:06'),
(69, 49, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 100000, 0, NULL, '2025-03-26 09:20:50', '2025-03-26 09:20:50'),
(70, 50, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 100000, 0, NULL, '2025-03-26 09:29:19', '2025-03-26 09:29:19'),
(71, 51, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 125000, 0, NULL, '2025-03-26 10:54:38', '2025-03-26 10:54:38'),
(72, 52, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 120000, 0, NULL, '2025-03-26 11:27:22', '2025-03-26 11:27:22'),
(73, 53, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 80000, 0, NULL, '2025-03-26 11:32:02', '2025-03-26 11:32:02'),
(74, 54, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 75000, 0, NULL, '2025-03-26 11:52:19', '2025-03-26 11:52:19'),
(75, 55, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 100000, 0, NULL, '2025-03-26 11:55:54', '2025-03-26 11:55:54'),
(76, 56, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 85000, 0, NULL, '2025-03-26 12:04:46', '2025-03-26 12:04:46'),
(77, 57, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 85000, 0, NULL, '2025-03-26 12:04:53', '2025-03-26 12:04:53'),
(78, 58, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 80000, 0, NULL, '2025-03-26 12:13:52', '2025-03-26 12:13:52'),
(79, 59, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 90000, 0, NULL, '2025-03-26 12:26:51', '2025-03-26 12:26:51'),
(80, 60, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 85000, 0, NULL, '2025-03-26 12:34:14', '2025-03-26 12:34:14'),
(81, 61, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 85000, 0, NULL, '2025-03-26 12:47:03', '2025-03-26 12:47:03'),
(82, 62, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 75000, 0, NULL, '2025-03-26 12:56:24', '2025-03-26 12:56:24'),
(83, 63, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 90000, 0, NULL, '2025-03-26 13:30:22', '2025-03-26 13:30:22'),
(84, 64, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 90000, 0, NULL, '2025-03-26 13:33:34', '2025-03-26 13:33:34'),
(85, 65, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 75000, 0, NULL, '2025-03-27 06:07:48', '2025-03-27 06:07:48'),
(86, 66, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 75000, 0, NULL, '2025-03-27 06:13:28', '2025-03-27 06:13:28'),
(87, 67, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 95000, 0, NULL, '2025-03-27 06:32:45', '2025-03-27 06:32:45'),
(88, 68, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 85000, 0, NULL, '2025-03-27 06:40:35', '2025-03-27 06:40:35'),
(89, 69, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 85000, 0, NULL, '2025-03-27 06:52:04', '2025-03-27 06:52:04'),
(90, 70, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 85000, 0, NULL, '2025-03-27 06:54:43', '2025-03-27 06:54:43'),
(91, 71, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 85000, 0, NULL, '2025-03-27 06:57:12', '2025-03-27 06:57:12'),
(92, 72, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 85000, 0, NULL, '2025-03-27 07:01:06', '2025-03-27 07:01:06'),
(93, 73, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 15000, 0, NULL, '2025-03-27 07:52:25', '2025-03-27 07:52:25'),
(94, 74, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 15000, 0, NULL, '2025-03-27 07:57:59', '2025-03-27 07:57:59'),
(95, 75, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 85000, 0, NULL, '2025-03-27 11:15:03', '2025-03-27 11:15:03'),
(96, 76, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 85000, 0, NULL, '2025-03-27 11:20:43', '2025-03-27 11:20:43'),
(97, 77, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 75000, 0, NULL, '2025-03-27 11:24:40', '2025-03-27 11:24:40'),
(98, 78, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 15000, 0, NULL, '2025-03-27 12:16:48', '2025-03-27 12:16:48'),
(99, 79, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 15000, 0, NULL, '2025-03-27 12:19:43', '2025-03-27 12:19:43'),
(100, 80, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 15000, 0, NULL, '2025-03-27 12:22:56', '2025-03-27 12:22:56'),
(101, 81, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 15000, 0, NULL, '2025-03-27 12:25:39', '2025-03-27 12:25:39'),
(102, 82, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 15000, 0, NULL, '2025-03-27 12:27:36', '2025-03-27 12:27:36'),
(103, 83, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 15000, 0, NULL, '2025-03-27 12:29:38', '2025-03-27 12:29:38'),
(104, 84, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 100000, 0, NULL, '2025-03-27 12:34:13', '2025-03-27 12:34:13'),
(105, 85, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 50000, 0, NULL, '2025-03-27 13:26:14', '2025-03-27 13:26:14'),
(106, 86, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 50000, 0, NULL, '2025-03-27 13:31:36', '2025-03-27 13:31:36'),
(107, 87, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 50000, 0, NULL, '2025-03-27 13:34:03', '2025-03-27 13:34:03'),
(108, 88, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 150000, 0, NULL, '2025-04-05 08:14:16', '2025-04-05 08:14:16'),
(109, 89, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 150000, 0, NULL, '2025-04-05 08:23:47', '2025-04-05 08:23:47'),
(110, 90, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 150000, 0, NULL, '2025-04-05 08:48:15', '2025-04-05 08:48:15'),
(111, 91, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 150000, 0, NULL, '2025-04-05 09:02:33', '2025-04-05 09:02:33'),
(112, 92, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 150000, 0, NULL, '2025-04-05 09:11:38', '2025-04-05 09:11:38'),
(114, 94, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 135000, 0, NULL, '2025-04-09 10:36:15', '2025-04-09 12:05:41'),
(115, 95, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 65000, 0, NULL, '2025-04-09 11:34:54', '2025-04-09 12:06:41'),
(116, 96, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 180000, 0, NULL, '2025-04-09 11:50:24', '2025-04-09 12:05:09'),
(117, 97, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 25000, 0, NULL, '2025-04-09 11:52:34', '2025-04-09 12:04:39'),
(118, 98, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 80000, 0, NULL, '2025-04-09 11:54:35', '2025-04-09 12:02:20'),
(119, 99, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 100000, 0, NULL, '2025-04-10 07:41:50', '2025-04-10 07:41:50'),
(120, 100, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 100000, 0, NULL, '2025-04-15 12:59:59', '2025-04-15 12:59:59'),
(121, 101, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 200000, 0, NULL, '2025-04-15 13:23:36', '2025-04-15 13:23:36'),
(122, 102, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 200000, 0, NULL, '2025-04-16 11:41:23', '2025-04-16 11:41:23'),
(123, 103, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 200000, 0, NULL, '2025-04-16 11:52:00', '2025-04-16 11:52:00'),
(124, 104, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 200000, 0, NULL, '2025-04-16 12:03:06', '2025-04-16 12:03:06'),
(125, 105, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 200000, 0, NULL, '2025-04-16 12:11:53', '2025-04-16 12:11:53'),
(126, 106, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 500000, 0, NULL, '2025-04-16 12:41:34', '2025-04-16 12:41:34'),
(127, 107, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 100000, 0, NULL, '2025-04-16 13:09:20', '2025-04-16 13:09:20'),
(128, 108, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 150000, 0, NULL, '2025-04-16 13:17:16', '2025-04-16 13:17:16'),
(129, 109, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 200000, 0, NULL, '2025-04-16 13:24:12', '2025-04-16 13:24:12'),
(130, 110, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 100000, 0, NULL, '2025-04-28 11:34:13', '2025-04-28 11:34:13'),
(131, 111, 'sy', '{\"en\":\"Syrian Pound\"}', 'sp', 100000, 0, NULL, '2025-05-17 13:26:12', '2025-05-17 13:26:12');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `discount_id` bigint(20) UNSIGNED DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_category_id` bigint(20) UNSIGNED NOT NULL,
  `item_no` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `available` tinyint(1) NOT NULL DEFAULT 0,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`name`)),
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`description`)),
  `material` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`material`)),
  `composition` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`composition`)),
  `care_instructions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`care_instructions`)),
  `fit` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`fit`)),
  `style` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`style`)),
  `season` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`season`)),
  `isNew` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `displayed_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `discount_id`, `group_id`, `sub_category_id`, `item_no`, `slug`, `available`, `name`, `description`, `material`, `composition`, `care_instructions`, `fit`, `style`, `season`, `isNew`, `deleted_at`, `displayed_at`, `created_at`, `updated_at`) VALUES
(17, NULL, 1, 8, '123458', 'test1', 0, '{\"en\":\"Test1\",\"ar\":\"\\u062a\\u064a\\u0633\\u062a1\"}', '{\"en\":\"Eligendi architecto\",\"ar\":\"Odio incidunt quod\"}', '{\"en\":\"Jillian Hodges\",\"ar\":\"Adam Murray\"}', '{\"en\":\"Arden Good\",\"ar\":\"Hamilton Spears\"}', '{\"en\":\"Margaret Ware\",\"ar\":\"Hope House\"}', '{\"en\":\"Penelope Woodward\",\"ar\":\"Ferdinand Stark\"}', '{\"en\":\"Alea Lyons\",\"ar\":\"Lacy Baldwin\"}', '{\"en\":\"Madeline Hull\",\"ar\":\"Jerry Wooten\"}', 0, NULL, NULL, '2025-02-19 08:51:57', '2025-06-05 13:50:23'),
(18, NULL, 2, 8, '410886', 'test2', 0, '{\"en\":\"Test2\",\"ar\":\"\\u062a\\u064a\\u0633\\u062a2\"}', '{\"en\":\"Id voluptatem et est\",\"ar\":\"Reprehenderit est\"}', '{\"en\":\"Candace Davis\",\"ar\":\"Mannix Montoya\"}', '{\"en\":\"Oleg Sweeney\",\"ar\":\"Chantale Hobbs\"}', '{\"en\":\"Carly Eaton\",\"ar\":\"Suki Sanchez\"}', '{\"en\":\"Nigel Fuentes\",\"ar\":\"Josiah Hines\"}', '{\"en\":\"Charity Beck\",\"ar\":\"Jena Levy\"}', '{\"en\":\"Cade Robertson\",\"ar\":\"Colt Maynard\"}', 0, NULL, NULL, '2025-02-19 11:13:39', '2025-06-05 13:50:39'),
(19, NULL, NULL, 8, '654321', 'test3', 0, '{\"en\":\"Test3\",\"ar\":\"\\u062a\\u064a\\u0633\\u062a3\"}', '{\"en\":\"Sint iste ad ut ut r\",\"ar\":\"Voluptate aute sit r\"}', '{\"en\":\"Shelly Golden\",\"ar\":\"Declan Douglas\"}', '{\"en\":\"Echo Meadows\",\"ar\":\"Lawrence Luna\"}', '{\"en\":\"Renee Wynn\",\"ar\":\"Nehru Rios\"}', '{\"en\":\"Catherine Tanner\",\"ar\":\"Kevin Vaughan\"}', '{\"en\":\"Anika Riley\",\"ar\":\"Yvette Forbes\"}', '{\"en\":\"Amber Mcgee\",\"ar\":\"Lisandra Medina\"}', 0, NULL, NULL, '2025-02-19 11:16:24', '2025-06-05 13:51:12'),
(34, NULL, NULL, 66, '000001', 't-shirt-o', 0, '{\"en\":\"t-shirt o\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629\"}', '{\"en\":\"Printed crew neck T-Shirt\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629 \\u0645\\u0637\\u0628\\u0648\\u0639\"}', '{\"en\":\"Single cotton 20\\/1\",\"ar\":\"\\u0633\\u0646\\u0643\\u0644 \\u0642\\u0637\\u0646 20\\/1\"}', '{\"en\":\"..\",\"ar\":\"..\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"..\",\"ar\":\"..\"}', '{\"en\":\"SLIM\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-16 12:19:55', '2025-06-05 12:49:49'),
(35, NULL, NULL, 66, '000001', 't-shirt-o-1', 0, '{\"en\":\"t-shirt o\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629\"}', '{\"en\":\"Printed crew neck T-Shirt\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629 \\u0645\\u0637\\u0628\\u0648\\u0639\"}', '{\"en\":\"Single cotton 20\\/1\",\"ar\":\"\\u0633\\u0646\\u0643\\u0644 \\u0642\\u0637\\u0646 20\\/1\"}', '{\"en\":\"100% COTTON\",\"ar\":\"\\u0642\\u0637\\u0646 %100\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL\",\"ar\":\"S-M-L-XL\"}', '{\"en\":\"SLIM\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"summer\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-16 12:20:13', '2025-06-05 12:49:49'),
(36, NULL, NULL, 67, '000002', 'regular-fit-trousers', 0, '{\"en\":\"REGULAR FIT TROUSERS\",\"ar\":\"\\u0628\\u0646\\u0637\\u0627\\u0644\"}', '{\"en\":\"REGULAR FIT Trousers made of a cotton blend with 20% polyester, adjustable drawstring waistband, and front pockets, rear pocket detail.\",\"ar\":\"\\u0628\\u0646\\u0637\\u0627\\u0644 \\u0642\\u0627\\u0644\\u0628 \\u0645\\u0631\\u064a\\u062d \\u062e\\u0635\\u0631 \\u0642\\u0627\\u0628\\u0644 \\u0644\\u0644\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0628\\u062d\\u0628\\u0644 \\u0645\\u0639 \\u062c\\u064a\\u0648\\u0628 \\u0623\\u0645\\u0627\\u0645\\u064a\\u0629 \\u0648\\u062c\\u064a\\u0628 \\u062e\\u0644\\u0641\\u064a\"}', '{\"en\":\"Touflis\",\"ar\":\"\\u062a\\u0648\\u0641\\u0644\\u064a\\u0633\"}', '{\"en\":\"80% COTTON - 20% Polyester\",\"ar\":\"\\u0642\\u0637\\u0646 %80 - \\u0628\\u0648\\u0644\\u064a\\u0633\\u062a\\u0631 %20\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL\",\"ar\":\"S-M-L-XL\"}', '{\"en\":\"REGULER\",\"ar\":\"\\u0642\\u0627\\u0644\\u0628 \\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-16 12:39:52', '2025-06-05 12:49:52'),
(37, NULL, NULL, 68, '000003', 'jacket', 0, '{\"en\":\"Jacket\",\"ar\":\"\\u062c\\u0627\\u0643\\u064a\\u062a\"}', '{\"en\":\"Chinese collar jacket\",\"ar\":\"\\u062c\\u0627\\u0643\\u064a\\u062a \\u0642\\u0628\\u0629 \\u0635\\u064a\\u0646\\u064a\"}', '{\"en\":\"Pezo\",\"ar\":\"\\u0628\\u064a\\u0632\\u0648 \\u0648\\u0631\\u0628\"}', '{\"en\":\"80% COTTON - 20% Polyester\",\"ar\":\"\\u0642\\u0637\\u0646 %80 - \\u0628\\u0648\\u0644\\u064a\\u0633\\u062a\\u0631 %20\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL\",\"ar\":\"S-M-L-XL\"}', '{\"en\":\"SLIM\",\"ar\":\"\\u0642\\u0627\\u0644\\u0628 \\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SPRING\",\"ar\":\"\\u0627\\u0644\\u0631\\u0628\\u064a\\u0639\"}', 0, NULL, NULL, '2025-03-16 12:56:01', '2025-06-05 12:49:54'),
(38, NULL, NULL, 69, '000004', 'polo', 0, '{\"en\":\"POLO\",\"ar\":\"\\u0628\\u0648\\u0644\\u0648\"}', '{\"en\":\"Polo T-Shirt\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0628\\u0648\\u0644\\u0648 \\u0642\\u0628\\u0629 \\u062a\\u0631\\u064a\\u0643\\u0648\"}', '{\"en\":\"Lacoste cotton\",\"ar\":\"\\u0644\\u0627\\u0643\\u0648\\u0633\\u062a \\u0642\\u0637\\u0646\"}', '{\"en\":\"100% COTTON\",\"ar\":\"\\u0642\\u0637\\u0646 %100\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL-XXL\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0642\\u0637\\u0646 %100\"}', 0, NULL, NULL, '2025-03-16 13:06:26', '2025-06-05 13:53:29'),
(39, NULL, NULL, 66, '000008', 't-shirt', 0, '{\"en\":\"T-Shirt\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a\"}', '{\"en\":\"Short sleeve T-Shirt with round neck\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629 \\u0646\\u0635\\u0641 \\u0643\\u0645\"}', '{\"en\":\"full legra\",\"ar\":\"\\u0641\\u0644 \\u0644\\u064a\\u0643\\u0631\\u0627\"}', '{\"en\":\"95% COTTON - 5% LEGRA\",\"ar\":\"\\u0642\\u0637\\u0646 %95 - \\u0644\\u064a\\u0643\\u0631\\u0627 %5\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL\",\"ar\":\"S-M-L-XL\"}', '{\"en\":\"Slim\",\"ar\":\"\\u0628\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-20 13:00:20', '2025-06-05 12:49:49'),
(40, NULL, NULL, 66, '000009', 't-shirt-round-neck', 0, '{\"en\":\"T-Shirt round neck\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629\"}', '{\"en\":\"Short sleeve T-Shirt with round neck ,made of 100% cotton\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629 \\u0646\\u0635\\u0641 \\u0643\\u0645 ,\\u0645\\u0635\\u0646\\u0648\\u0639 \\u0645\\u0646 \\u0627\\u0644\\u0642\\u0637\\u0646\"}', '{\"en\":\"SINGLE -CELL\",\"ar\":\"\\u0633\\u0646\\u0643\\u0644 \\u062e\\u0644\\u0627\\u064a\\u0627\"}', '{\"en\":\"100% COTTON\",\"ar\":\"\\u0642\\u0637\\u0646 %100\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL-XXL-XXXL\",\"ar\":\"S-M-L-XL-XXL-XXXL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-20 13:16:48', '2025-06-05 12:49:49'),
(41, NULL, NULL, 66, '000013', 't-shirt-round-neck-1', 0, '{\"en\":\"T-Shirt round neck\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629\"}', '{\"en\":\"Short sleeve T-Shirt with round neck, made of 100% cotton\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629 \\u0646\\u0635\\u0641 \\u0643\\u0645\"}', '{\"en\":\"Single Slab\",\"ar\":\"\\u0633\\u0646\\u0643\\u0644 \\u0633\\u0644\\u0627\\u0628\"}', '{\"en\":\"COTTON 100%\",\"ar\":\"\\u0642\\u0637\\u0646 %100\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL-XXL-XXXL\",\"ar\":\"S-M-L-XL-XXL-XXXL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-06-05 12:49:49'),
(42, NULL, NULL, 66, '000012', 't-shert-round-nech', 0, '{\"en\":\"t- shert round nech\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629\"}', '{\"en\":\"Short sleeve T-Shirt with round neck, made of 100% cotton\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629 \\u0646\\u0635\\u0641 \\u0643\\u0645\"}', '{\"en\":\"cotton single\",\"ar\":\"\\u0633\\u0646\\u0643\\u0644 \\u0642\\u0637\\u0646\"}', '{\"en\":\"100% cotton\",\"ar\":\"100% \\u0642\\u0637\\u0646\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S- M -L- XL- XXL- XXL- XXXL\",\"ar\":\"S- M- L- XL- XXL -XXL -XXXL\"}', '{\"en\":\"regular\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-06-05 12:49:49'),
(43, NULL, NULL, 69, '000014', 'polo-t-shirt', 0, '{\"en\":\"polo t-shirt\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0628\\u0648\\u0644\\u0648\"}', '{\"en\":\"Chinese style half sleeve polo shirt made of 100% cotton\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0628\\u0648\\u0644\\u0648 \\u0642\\u0628\\u0629 \\u0635\\u064a\\u0646\\u064a \\u0646\\u0635\\u0641 \\u0643\\u0645 100% \\u0642\\u0637\\u0646\"}', '{\"en\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0628\\u0648\\u0644\\u0648\",\"ar\":\"\\u0644\\u0627\\u0643\\u0648\\u0633\\u062a \\u0642\\u0637\\u0646\"}', '{\"en\":\"100% COTTON\",\"ar\":\"100% \\u0642\\u0637\\u0646\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S - M - L - XL - XXL - XXXL\",\"ar\":\"S - M - L - XL - XXL - XXXL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-06-05 13:53:26'),
(44, NULL, NULL, 66, '000014', 'v-neck-t-shirt', 0, '{\"en\":\"V-neck T-Shirt\",\"ar\":\"V \\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629\"}', '{\"en\":\"Short sleeve T-Shirt with V-neck, made of 100% cotton\",\"ar\":\"V \\u062a\\u064a\\u0634\\u0631\\u062a \\u0646\\u0635\\u0641 \\u0643\\u0645 \\u0642\\u0628\\u0629\"}', '{\"en\":\"Single  slab\",\"ar\":\"\\u0633\\u0646\\u0643\\u0644 \\u0633\\u0644\\u0627\\u0628\"}', '{\"en\":\"COTTON 100%\",\"ar\":\"\\u0642\\u0637\\u0646 %100\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL\",\"ar\":\"S-M-L-XL\"}', '{\"en\":\"REGULAR\",\"ar\":\"REGULAR\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-25 13:14:06', '2025-06-05 12:49:49'),
(45, NULL, NULL, 70, '000015', 'textured-polo-t-shirt', 0, '{\"en\":\"Textured Polo T-Shirt\",\"ar\":\"\\u0628\\u0648\\u0644\\u0648 \\u0642\\u0628\\u0629 \\u062a\\u0631\\u064a\\u0643\\u0648\"}', '{\"en\":\"Short sleeve TEXTURED POLO SHIRT , made of 100% cotton\",\"ar\":\"\\u0628\\u0648\\u0644\\u0648 \\u0642\\u0628\\u0629 \\u062a\\u0631\\u064a\\u0643\\u0648 \\u0646\\u0635\\u0641 \\u0643\\u0645\"}', '{\"en\":\"COTTON 100%\",\"ar\":\"\\u0642\\u0637\\u0646 %100\"}', '{\"en\":\"COTTON 100%\",\"ar\":\"\\u0642\\u0637\\u0646 %100\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL-XXL-XXXL\",\"ar\":\"S-M-L-XL-XXL-XXXL\"}', '{\"en\":\"Lacoste cotton\",\"ar\":\"\\u0644\\u0627\\u0643\\u0648\\u0633\\u062a \\u0642\\u0637\\u0646\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-06-05 12:49:49'),
(46, NULL, NULL, 70, '000016', 'chinese-style-neck-polo-t-shirt', 0, '{\"en\":\"Chinese Style NECK POLO T-Shirt\",\"ar\":\"\\u0628\\u0648\\u0644\\u0648 \\u0642\\u0628\\u0629 \\u0635\\u064a\\u0646\\u064a\"}', '{\"en\":\"Short sleeve polo shirt Chinese Style NECK, made of 100% cotton\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0628\\u0648\\u0644\\u0648 \\u0642\\u0628\\u0629 \\u0635\\u064a\\u0646\\u064a \\u0646\\u0635\\u0641 \\u0643\\u0645\"}', '{\"en\":\"LACOSTE COTTON\",\"ar\":\"\\u0644\\u0627\\u0643\\u0648\\u0633\\u062a \\u0642\\u0637\\u0646\"}', '{\"en\":\"100% COTTON\",\"ar\":\"100% \\u0642\\u0637\\u0646\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL-XXL-XXXL\",\"ar\":\"S-M-L-XL-XXL-XXXL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-06-05 12:49:49'),
(47, NULL, NULL, 70, '000016', 'polo-t-shirt-1', 0, '{\"en\":\"POLO T-Shirt\",\"ar\":\"\\u0628\\u0648\\u0644\\u0648 \\u0642\\u0628\\u0629 \\u0635\\u064a\\u0646\\u064a\"}', '{\"en\":\"Chinese Style short sleeve polo shirt, made of 100% cotton\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0628\\u0648\\u0644\\u0648 \\u0642\\u0628\\u0629 \\u0635\\u064a\\u0646\\u064a \\u0646\\u0635\\u0641 \\u0643\\u0645\"}', '{\"en\":\"LACOSTE COTTON\",\"ar\":\"\\u0644\\u0627\\u0643\\u0648\\u0633\\u062a \\u0642\\u0637\\u0646\"}', '{\"en\":\"100% COTTON\",\"ar\":\"100% \\u0642\\u0637\\u0646\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL-XXL-XXXL\",\"ar\":\"S-M-L-XL-XXL-XXXL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-06-05 12:49:49'),
(48, NULL, NULL, 67, '000017', 'slim-fit-trousers', 0, '{\"en\":\"SLIM FIT TROUSERS\",\"ar\":\"\\u0628\\u0646\\u0637\\u0644\\u0648\\u0646 \\u0636\\u064a\\u0642\"}', '{\"en\":\"SLIM FIT TROUSERS made of a cotton blend with 15% polyester 5% legra ,featuring an elasticated drawstring waistband, front pockets and cuffed elastic hems\",\"ar\":\"\\u0628\\u0646\\u0637\\u0627\\u0644 \\u0643\\u0645\\u0631 \\u0632\\u0645\\u0629 - \\u0631\\u062c\\u0644 \\u0632\\u0645\\u0629 - \\u0645\\u0639 \\u062c\\u064a\\u0648\\u0628 \\u0623\\u0645\\u0627\\u0645\\u064a\\u0629\"}', '{\"en\":\"TOUFLIS\",\"ar\":\"\\u062a\\u0648\\u0641\\u0644\\u064a\\u0633 \\u0642\\u0637\\u0646\"}', '{\"en\":\"80% Cotton 15% Polyester 5% Legra\",\"ar\":\"5% \\u0642\\u0637\\u0646 80% \\u0628\\u0648\\u0644\\u0633\\u062a\\u0631 15% \\u0644\\u064a\\u0643\\u0631\\u0627\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL\",\"ar\":\"S-M-L-XL\"}', '{\"en\":\"SLIM\",\"ar\":\"\\u0636\\u064a\\u0642\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-26 06:31:06', '2025-06-05 12:49:52'),
(49, NULL, NULL, 70, '000018', 'textured-polo-t-shirt-1', 0, '{\"en\":\"Textured Polo T-Shirt\",\"ar\":\"\\u0628\\u0648\\u0644\\u0648 \\u0642\\u0628\\u0629 \\u062a\\u0631\\u064a\\u0643\\u0648\"}', '{\"en\":\"Short sleeve TEXTURED POLO SHIRT , made of 100% cotton\",\"ar\":\"\\u0628\\u0648\\u0644\\u0648 \\u0642\\u0628\\u0629 \\u062a\\u0631\\u064a\\u0643\\u0648 \\u0646\\u0635\\u0641 \\u0643\\u0645\"}', '{\"en\":\"Lacoste Slab\",\"ar\":\"\\u0644\\u0627\\u0643\\u0648\\u0633\\u062a \\u0633\\u0644\\u0627\\u0628\"}', '{\"en\":\"COTTON 100%\",\"ar\":\"\\u0642\\u0637\\u0646 %100\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL-XXL-XXXL\",\"ar\":\"S-M-L-XL-XXL-XXXL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-26 09:20:50', '2025-06-05 12:49:49'),
(50, NULL, NULL, 70, '000019', 'chinese-style-neck-polo-t-shirt-1', 0, '{\"en\":\"Chinese Style NECK POLO T-Shirt\",\"ar\":\"\\u0628\\u0648\\u0644\\u0648 \\u0642\\u0628\\u0629 \\u0635\\u064a\\u0646\\u064a\"}', '{\"en\":\"Short sleeve polo shirt Chinese Style NECK, made of 100% cotton\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0628\\u0648\\u0644\\u0648 \\u0642\\u0628\\u0629 \\u0635\\u064a\\u0646\\u064a \\u0646\\u0635\\u0641 \\u0643\\u0645\"}', '{\"en\":\"LACOSTE SLAB\",\"ar\":\"\\u0644\\u0627\\u0643\\u0648\\u0633\\u062a \\u0633\\u0644\\u0627\\u0628\"}', '{\"en\":\"100% COTTON\",\"ar\":\"100% \\u0642\\u0637\\u0646\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL-XXL-XXXL\",\"ar\":\"S-M-L-XL-XXL-XXXL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-26 09:29:19', '2025-06-05 12:49:49'),
(51, NULL, NULL, 68, '000021', 'hoodie-jacket', 0, '{\"en\":\"HOODIE JACKET\",\"ar\":\"\\u062c\\u0627\\u0643\\u064a\\u062a \\u0647\\u0648\\u062f\\u064a\"}', '{\"en\":\"REGULAR FIT HOODIE JACKET, Featuring a hood and long sleeves, front pouch pockets, elasticted trims, zip fastening on the front.\",\"ar\":\"\\u062c\\u0627\\u0643\\u064a\\u062a \\u0642\\u0628\\u0629 \\u0643\\u0627\\u0628\\u064a\\u0634\\u0648\\u0646 - \\u0643\\u0645 \\u0632\\u0645\\u0629 - \\u062c\\u064a\\u0628 \\u0643\\u0646\\u063a\\u0631\"}', '{\"en\":\"DIACONAL FLEECE\",\"ar\":\"\\u0641\\u0644\\u064a\\u0633 \\u0628\\u0644\\u0627 \\u0646\\u0641\\u0634 \\u062f\\u064a\\u0627\\u0643\\u0648\\u0646\\u0627\\u0644\"}', '{\"en\":\"COTTON 100%\",\"ar\":\"\\u0642\\u0637\\u0646 %100\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"S-M-L-XL-XXL-XXXL\",\"ar\":\"S-M-L-XL-XXL-XXXL\"}', '{\"en\":\"SPRING\",\"ar\":\"\\u0627\\u0644\\u0631\\u0628\\u064a\\u0639\"}', 0, NULL, NULL, '2025-03-26 10:54:38', '2025-06-05 12:49:54'),
(52, NULL, NULL, 68, '000022', 'ribbed-coller-jacket', 0, '{\"en\":\"Ribbed coller Jacket\",\"ar\":\"\\u062c\\u0627\\u0643\\u064a\\u062a \\u0642\\u0628\\u0629 \\u0635\\u064a\\u0646\\u064a\"}', '{\"en\":\"REGULAR FIT JACKET with ribbed collar, Featuring long sleeves, front pockets, elasticated trims, zip fastening on the front.\",\"ar\":\"\\u062c\\u0627\\u0643\\u064a\\u062a \\u0642\\u0628\\u0629 \\u0635\\u064a\\u0646\\u064a \\u0643\\u0645 \\u0632\\u0645\\u0629 \\u062c\\u064a\\u0648\\u0628 \\u0623\\u0645\\u0627\\u0645\\u064a\\u0629\"}', '{\"en\":\"BEZO\",\"ar\":\"\\u0628\\u064a\\u0632\\u0648\"}', '{\"en\":\"COTTON 100% - POLYESTER 20%\",\"ar\":\"\\u0642\\u0637\\u0646 %100 - \\u0628\\u0648\\u0644\\u064a\\u0633\\u062a\\u0631 %20\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL\",\"ar\":\"S-M-L-XL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SPRING\",\"ar\":\"\\u0627\\u0644\\u0631\\u0628\\u064a\\u0639\"}', 0, NULL, NULL, '2025-03-26 11:27:22', '2025-06-05 12:49:54'),
(53, NULL, NULL, 67, '000023', 'trousers', 0, '{\"en\":\"TROUSERS\",\"ar\":\"\\u0628\\u0646\\u0637\\u0627\\u0644\"}', '{\"en\":\"REGULAR FIT Trousers made of a cotton blend with 20% polyester, Elasticated drawstring waistband, and front pockets detail.\",\"ar\":\"\\u0628\\u0646\\u0637\\u0627\\u0644 \\u0642\\u0627\\u0644\\u0628 \\u0645\\u0631\\u064a\\u062d \\u062e\\u0635\\u0631 \\u0632\\u0645\\u0629 \\u0628\\u062d\\u0628\\u0644 \\u0645\\u0639 \\u062c\\u064a\\u0648\\u0628 \\u0623\\u0645\\u0627\\u0645\\u064a\\u0629\"}', '{\"en\":\"BEZO\",\"ar\":\"\\u0628\\u064a\\u0632\\u0648\"}', '{\"en\":\"80% COTTON - 20% Polyester\",\"ar\":\"\\u0642\\u0637\\u0646 %80 - \\u0628\\u0648\\u0644\\u064a\\u0633\\u062a\\u0631 %20\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL\",\"ar\":\"S-M-L-XL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SPRING\",\"ar\":\"\\u0627\\u0644\\u0631\\u0628\\u064a\\u0639\"}', 0, NULL, NULL, '2025-03-26 11:32:02', '2025-06-05 12:49:52'),
(54, NULL, NULL, 66, '000101', 'round-neck-t-shirt', 0, '{\"en\":\"ROUND NECK T-SHIRT\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629\"}', '{\"en\":\"Printed T-Shirt with round neck Short sleeve, made of a cotton blend with 20% polyester.\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629 \\u0646\\u0635\\u0641 \\u0643\\u0645 \\u0645\\u0642\\u0644\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0629\"}', '{\"en\":\"HASERA\",\"ar\":\"\\u062d\\u0635\\u064a\\u0631\\u0629\"}', '{\"en\":\"COTTON 80% - POLYESTER 20%\",\"ar\":\"\\u0642\\u0637\\u0646 %80 - \\u0628\\u0648\\u0644\\u064a\\u0633\\u062a\\u0631 %20\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL-XXL\",\"ar\":\"S-M-L-XL-XXL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-26 11:52:19', '2025-06-05 12:49:49'),
(55, NULL, NULL, 70, '000102', 'textured-polo-t-shirt-2', 0, '{\"en\":\"Textured Polo T-Shirt\",\"ar\":\"\\u0628\\u0648\\u0644\\u0648 \\u0642\\u0628\\u0629 \\u062a\\u0631\\u064a\\u0643\\u0648\"}', '{\"en\":\"Short sleeve TEXTURED POLO SHIRT , made of 100% cotton\",\"ar\":\"\\u0628\\u0648\\u0644\\u0648 \\u0642\\u0628\\u0629 \\u062a\\u0631\\u064a\\u0643\\u0648 \\u0646\\u0635\\u0641 \\u0643\\u0645\"}', '{\"en\":\"LACOSTE COTTON\",\"ar\":\"\\u0644\\u0627\\u0643\\u0648\\u0633\\u062a \\u0642\\u0637\\u0646\"}', '{\"en\":\"COTTON 100%\",\"ar\":\"\\u0642\\u0637\\u0646 %100\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL-XXL\",\"ar\":\"S-M-L-XL-XXL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-26 11:55:54', '2025-06-05 12:49:49'),
(56, NULL, NULL, 70, '000103', 'textured-polo-t-shirt-3', 0, '{\"en\":\"Textured Polo T-Shirt\",\"ar\":\"\\u0628\\u0648\\u0644\\u0648 \\u0642\\u0628\\u0629 \\u062a\\u0631\\u064a\\u0643\\u0648\"}', '{\"en\":\"PRINTED TEXTURED POLO SHIRT, made of a cotton blend with 20% polyester\",\"ar\":\"\\u0628\\u0648\\u0644\\u0648 \\u0642\\u0628\\u0629 \\u062a\\u0631\\u064a\\u0643\\u0648 \\u0646\\u0635\\u0641 \\u0643\\u0645 \\u0645\\u0642\\u0644\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0629\"}', '{\"en\":\"HASERA\",\"ar\":\"\\u062d\\u0635\\u064a\\u0631\\u0629\"}', '{\"en\":\"COTTON 80% - POLYESTER 20%\",\"ar\":\"\\u0642\\u0637\\u0646 %80 - \\u0628\\u0648\\u0644\\u064a\\u0633\\u062a\\u0631 %20\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL-XXL\",\"ar\":\"S-M-L-XL-XXL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-26 12:04:46', '2025-06-05 12:49:49'),
(57, NULL, NULL, 70, '000103', 'textured-polo-t-shirt-4', 0, '{\"en\":\"Textured Polo T-Shirt\",\"ar\":\"\\u0628\\u0648\\u0644\\u0648 \\u0642\\u0628\\u0629 \\u062a\\u0631\\u064a\\u0643\\u0648\"}', '{\"en\":\"EMBROIDERD TEXTURED POLO SHIRT, made of a cotton blend with 20% polyester\",\"ar\":\"\\u0628\\u0648\\u0644\\u0648 \\u0642\\u0628\\u0629 \\u062a\\u0631\\u064a\\u0643\\u0648 \\u0646\\u0635\\u0641 \\u0643\\u0645 \\u0645\\u0642\\u0644\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0629\"}', '{\"en\":\"HASERA\",\"ar\":\"\\u062d\\u0635\\u064a\\u0631\\u0629\"}', '{\"en\":\"COTTON 80% - POLYESTER 20%\",\"ar\":\"\\u0642\\u0637\\u0646 %80 - \\u0628\\u0648\\u0644\\u064a\\u0633\\u062a\\u0631 %20\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL-XXL\",\"ar\":\"S-M-L-XL-XXL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-26 12:04:53', '2025-06-05 12:49:49'),
(58, NULL, NULL, 67, '000104', 'trousers-1', 0, '{\"en\":\"TROUSERS\",\"ar\":\"\\u0628\\u0646\\u0637\\u0627\\u0644\"}', '{\"en\":\"REGULAR FIT Trousers made of a cotton blend with 20% polyester, Elasticated drawstring waistband, and front pockets detail.\",\"ar\":\"\\u0628\\u0646\\u0637\\u0627\\u0644 \\u0642\\u0627\\u0644\\u0628 \\u0645\\u0631\\u064a\\u062d \\u062e\\u0635\\u0631 \\u0632\\u0645\\u0629 \\u0628\\u062d\\u0628\\u0644 \\u0645\\u0639 \\u062c\\u064a\\u0648\\u0628 \\u0623\\u0645\\u0627\\u0645\\u064a\\u0629\"}', '{\"en\":\"HASERA\",\"ar\":\"\\u062d\\u0635\\u064a\\u0631\\u0629\"}', '{\"en\":\"80% COTTON - 20% Polyester\",\"ar\":\"\\u0642\\u0637\\u0646 %80 - \\u0628\\u0648\\u0644\\u064a\\u0633\\u062a\\u0631 %20\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL-XXL\",\"ar\":\"S-M-L-XL-XXL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-26 12:13:51', '2025-06-05 12:49:52'),
(59, NULL, NULL, 66, '000105', 'round-neck-t-shirt-1', 0, '{\"en\":\"ROUND NECK T-SHIRT\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629\"}', '{\"en\":\"Embroidered T-Shirt with round neck Short sleeve, made of a cotton blend with 20% polyester.\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629 \\u0632\\u0645\\u0629 \\u0646\\u0635\\u0641 \\u0643\\u0645 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0645\\u0637\\u0631\\u0632 \\u0639\\u0627\\u0644\\u0635\\u062f\\u0631\"}', '{\"en\":\"HASERA\",\"ar\":\"\\u062d\\u0635\\u064a\\u0631\\u0629\"}', '{\"en\":\"COTTON 80% - POLYESTER 20%\",\"ar\":\"\\u0642\\u0637\\u0646 %80 - \\u0628\\u0648\\u0644\\u064a\\u0633\\u062a\\u0631 %20\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL-XXL\",\"ar\":\"S-M-L-XL-XXL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-26 12:26:50', '2025-06-05 12:49:49'),
(60, NULL, NULL, 66, '000107', 'round-neck-t-shirt-2', 0, '{\"en\":\"ROUND NECK T-SHIRT\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629\"}', '{\"en\":\"Embroidered T-Shirt Short sleeve with round neck, made of 100% cotton\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629 \\u0645\\u0642\\u0644\\u0645 \\u062d\\u064a\\u0627\\u0643\\u0629\"}', '{\"en\":\"TOFLEES\",\"ar\":\"\\u062a\\u0648\\u0641\\u0644\\u064a\\u0633\"}', '{\"en\":\"COTTON 100%\",\"ar\":\"\\u0642\\u0637\\u0646 %100\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S- M -L- XL- XXL- XXL- XXXL\",\"ar\":\"S- M- L- XL- XXL -XXL -XXXL\"}', '{\"en\":\"regular\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-26 12:34:14', '2025-06-05 12:49:49'),
(61, NULL, NULL, 70, '000108', 'textured-polo-t-shirt-5', 0, '{\"en\":\"Textured Polo T-Shirt\",\"ar\":\"\\u0628\\u0648\\u0644\\u0648 \\u0642\\u0628\\u0629 \\u062a\\u0631\\u064a\\u0643\\u0648\"}', '{\"en\":\"SHORT SLEEVE TEXTURED POLO SHIRT, made of a cotton blend with 20% polyester\",\"ar\":\"\\u0628\\u0648\\u0644\\u0648 \\u0642\\u0628\\u0629 \\u062a\\u0631\\u064a\\u0643\\u0648 \\u0646\\u0635\\u0641 \\u0643\\u0645\"}', '{\"en\":\"HASERA\",\"ar\":\"\\u062d\\u0635\\u064a\\u0631\\u0629\"}', '{\"en\":\"COTTON 80% - POLYESTER 20%\",\"ar\":\"\\u0642\\u0637\\u0646 %80 - \\u0628\\u0648\\u0644\\u064a\\u0633\\u062a\\u0631 %20\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL-XXL\",\"ar\":\"S-M-L-XL-XXL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-26 12:47:03', '2025-06-05 12:49:49'),
(62, NULL, NULL, 66, '000110', 'round-neck-t-shirt-3', 0, '{\"en\":\"ROUND NECK T-SHIRT\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629\"}', '{\"en\":\"SHORT SLEEVE T-Shirt with round neck and one front pochet, made of a cotton blend with 20% polyester.\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629 \\u0632\\u0645\\u0629 \\u0645\\u0639 \\u062c\\u064a\\u0628 \\u0639\\u0627\\u0644\\u0635\\u062f\\u0631\"}', '{\"en\":\"HASERA\",\"ar\":\"\\u062d\\u0635\\u064a\\u0631\\u0629\"}', '{\"en\":\"COTTON 80% - POLYESTER 20%\",\"ar\":\"\\u0642\\u0637\\u0646 %80 - \\u0628\\u0648\\u0644\\u064a\\u0633\\u062a\\u0631 %20\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL-XXL\",\"ar\":\"S-M-L-XL-XXL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-26 12:56:24', '2025-06-05 12:49:49'),
(63, NULL, NULL, 72, '000100', 'shirt', 0, '{\"en\":\"SHIRT\",\"ar\":\"\\u0642\\u0645\\u064a\\u0635\"}', '{\"en\":\"Short sleeve shirt with lapel collar, Featuring a button-up front, made of a cotton blend with 20% polyester\",\"ar\":\"\\u0642\\u0645\\u064a\\u0635 \\u0642\\u0628\\u0629 \\u062a\\u0631\\u064a\\u0643\\u0629 \\u0623\\u0632\\u0631\\u0627\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u0623\\u0645\\u0627\\u0645\"}', '{\"en\":\"HASERA\",\"ar\":\"\\u062d\\u0635\\u064a\\u0631\\u0629\"}', '{\"en\":\"COTTON 80% - POLYESTER 20%\",\"ar\":\"\\u0642\\u0637\\u0646 %80 - \\u0628\\u0648\\u0644\\u064a\\u0633\\u062a\\u0631 %20\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL-XXL\",\"ar\":\"S-M-L-XL-XXL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-26 13:30:22', '2025-04-01 21:00:02'),
(64, NULL, NULL, 72, '000106', 'shirt-1', 0, '{\"en\":\"SHIRT\",\"ar\":\"\\u0642\\u0645\\u064a\\u0635\"}', '{\"en\":\"Long sleeve shirt with lapel collar, Featuring a button-up front, made of a cotton blend with 20% polyester\",\"ar\":\"\\u0642\\u0645\\u064a\\u0635 \\u0642\\u0628\\u0629 \\u062a\\u0631\\u064a\\u0643\\u0629 \\u0623\\u0632\\u0631\\u0627\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u0623\\u0645\\u0627\\u0645\"}', '{\"en\":\"BEZO\",\"ar\":\"\\u0628\\u064a\\u0632\\u0648 \\u0648\\u0631\\u0628\"}', '{\"en\":\"COTTON 80% - POLYESTER 20%\",\"ar\":\"\\u0642\\u0637\\u0646 %80 - \\u0628\\u0648\\u0644\\u064a\\u0633\\u062a\\u0631 %20\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL\",\"ar\":\"S-M-L-XL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SPRING\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-26 13:33:34', '2025-04-01 21:00:02'),
(65, NULL, NULL, 66, '000190', 'round-neck-t-shert', 0, '{\"en\":\"ROUND NECK T-SHERT\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629\"}', '{\"en\":\"Printed striped T-Shirt with round neck Short sleeve, made of 100% cotton\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629 \\u0646\\u0635\\u0641 \\u0643\\u0645 \\u0645\\u0642\\u0644\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0629\"}', '{\"en\":\"SINGLE COTTON\",\"ar\":\"\\u0633\\u0646\\u0643\\u0644 \\u0642\\u0637\\u0646\"}', '{\"en\":\"COTTON 100%\",\"ar\":\"\\u0642\\u0637\\u0646 %100\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL\",\"ar\":\"S-M-L-XL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-27 06:07:48', '2025-06-05 12:49:49'),
(66, NULL, NULL, 66, '000184', 'round-neck-t-shert-1', 0, '{\"en\":\"ROUND NECK T-SHERT\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629\"}', '{\"en\":\"Printed striped T-Shirt with round neck Short sleeve, made of 100% cotton\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0627\\u0644\\u0628 \\u0645\\u0631\\u064a\\u062d \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629 \\u0646\\u0635\\u0641 \\u0643\\u0645 \\u0645\\u0642\\u0644\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0629\"}', '{\"en\":\"SINGLE COTTON\",\"ar\":\"\\u0633\\u0646\\u0643\\u0644 \\u0642\\u0637\\u0646\"}', '{\"en\":\"COTTON 100%\",\"ar\":\"\\u0642\\u0637\\u0646 %100\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL\",\"ar\":\"S-M-L-XL\"}', '{\"en\":\"COMFORT\",\"ar\":\"\\u0645\\u0631\\u064a\\u062d\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-27 06:13:28', '2025-06-05 12:49:49'),
(67, NULL, NULL, 66, '000172', 'round-neck-t-shirt-4', 0, '{\"en\":\"ROUND NECK T-SHIRT\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629\"}', '{\"en\":\"Embroidered T-Shirt with round neck Short sleeve, made of 100% COTTON\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629 \\u0632\\u0645\\u0629 \\u0646\\u0635\\u0641 \\u0643\\u0645 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0645\\u0637\\u0631\\u0632 \\u0639\\u0627\\u0644\\u0635\\u062f\\u0631\"}', '{\"en\":\"SINGLE COTTON\",\"ar\":\"\\u0633\\u0646\\u0643\\u0644 \\u0642\\u0637\\u0646\"}', '{\"en\":\"COTTON 100%\",\"ar\":\"\\u0642\\u0637\\u0646 %100\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL\",\"ar\":\"S-M-L-XL\"}', '{\"en\":\"COMFORT\",\"ar\":\"\\u0645\\u0631\\u064a\\u062d\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-27 06:32:45', '2025-06-05 12:49:49'),
(68, NULL, NULL, 66, '000178', 'round-neck-t-shirt-5', 0, '{\"en\":\"ROUND NECK T-SHIRT\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629\"}', '{\"en\":\"PRINTED T-Shirt with round neck and Short sleeve, made of a cotton 100%\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629 \\u0632\\u0645\\u0629 \\u0646\\u0635\\u0641 \\u0643\\u0645 \\u0645\\u0637\\u0628\\u0648\\u0639 \\u0639\\u0627\\u0644\\u0635\\u062f\\u0631\"}', '{\"en\":\"SINGLE COTTON\",\"ar\":\"\\u0633\\u0646\\u0643\\u0644 \\u0642\\u0637\\u0646\"}', '{\"en\":\"COTTON 100%\",\"ar\":\"\\u0642\\u0637\\u0646 %100\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL\",\"ar\":\"S-M-L-XL\"}', '{\"en\":\"COMFORT\",\"ar\":\"\\u0645\\u0631\\u064a\\u062d\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-27 06:40:35', '2025-06-05 12:49:49'),
(69, NULL, NULL, 66, '000185', 'round-neck-t-shert-2', 0, '{\"en\":\"ROUND NECK T-SHERT\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629\"}', '{\"en\":\"Printed striped T-Shirt with round neck Short sleeve, made of 100% cotton\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0627\\u0644\\u0628 \\u0639\\u0627\\u062f\\u064a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629 \\u0646\\u0635\\u0641 \\u0643\\u0645 \\u0645\\u0642\\u0644\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0629\"}', '{\"en\":\"SINGLE COTTON\",\"ar\":\"\\u0633\\u0646\\u0643\\u0644 \\u0642\\u0637\\u0646\"}', '{\"en\":\"COTTON 100%\",\"ar\":\"\\u0642\\u0637\\u0646 %100\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL\",\"ar\":\"S-M-L-XL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-27 06:52:04', '2025-06-05 12:49:49'),
(70, NULL, NULL, 66, '000168', 'round-neck-t-shirt-6', 0, '{\"en\":\"ROUND NECK T-SHIRT\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629\"}', '{\"en\":\"PRINTED T-Shirt with round neck and Short sleeve, made of a cotton 100%\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629 \\u0632\\u0645\\u0629 \\u0646\\u0635\\u0641 \\u0643\\u0645 \\u0645\\u0637\\u0628\\u0648\\u0639 \\u0639\\u0627\\u0644\\u0635\\u062f\\u0631\"}', '{\"en\":\"SINGLE COTTON\",\"ar\":\"\\u0633\\u0646\\u0643\\u0644 \\u0642\\u0637\\u0646\"}', '{\"en\":\"COTTON 100%\",\"ar\":\"\\u0642\\u0637\\u0646 %100\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL\",\"ar\":\"S-M-L-XL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-27 06:54:43', '2025-06-05 12:49:49');
INSERT INTO `products` (`id`, `discount_id`, `group_id`, `sub_category_id`, `item_no`, `slug`, `available`, `name`, `description`, `material`, `composition`, `care_instructions`, `fit`, `style`, `season`, `isNew`, `deleted_at`, `displayed_at`, `created_at`, `updated_at`) VALUES
(71, NULL, NULL, 66, '000288', 'round-neck-t-shirt-7', 0, '{\"en\":\"ROUND NECK T-SHIRT\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629\"}', '{\"en\":\"Embroidered T-Shirt with round neck Short sleeve, made of a cotton blend with 20% polyester.\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629 \\u0632\\u0645\\u0629 \\u0646\\u0635\\u0641 \\u0643\\u0645 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0645\\u0637\\u0631\\u0632 \\u0639\\u0627\\u0644\\u0635\\u062f\\u0631\"}', '{\"en\":\"BEZO\",\"ar\":\"\\u0628\\u064a\\u0632\\u0648\"}', '{\"en\":\"COTTON 80% - POLYESTER 20%\",\"ar\":\"\\u0642\\u0637\\u0646 %80 - \\u0628\\u0648\\u0644\\u064a\\u0633\\u062a\\u0631 %20\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL\",\"ar\":\"S-M-L-XL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-27 06:57:12', '2025-06-05 12:49:49'),
(72, NULL, NULL, 66, '000188', 'round-neck-t-shert-3', 0, '{\"en\":\"ROUND NECK T-SHERT\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629\"}', '{\"en\":\"Printed striped T-Shirt with round neck Short sleeve, made of 100% cotton\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0627\\u0644\\u0628 \\u0639\\u0627\\u062f\\u064a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629 \\u0646\\u0635\\u0641 \\u0643\\u0645 \\u0645\\u0642\\u0644\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0629\"}', '{\"en\":\"SINGLE COTTON\",\"ar\":\"\\u0633\\u0646\\u0643\\u0644 \\u0642\\u0637\\u0646\"}', '{\"en\":\"COTTON 100%\",\"ar\":\"\\u0642\\u0637\\u0646 %100\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL\",\"ar\":\"S-M-L-XL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-27 07:01:06', '2025-06-05 12:49:49'),
(73, NULL, NULL, 73, '000050', 'printed-boxer-shorts', 0, '{\"en\":\"PRINTED BOXER SHORTS\",\"ar\":\"\\u0628\\u0648\\u0643\\u0633\\u0631 \\u0645\\u0637\\u0628\\u0648\\u0639\"}', '{\"en\":\"Printed boxer. Featuring an elastic waistband. Made of a very comfortable and pleasant cotton blend.\",\"ar\":\"\\u0628\\u0648\\u0643\\u0633\\u0631 \\u0645\\u0637\\u0628\\u0648\\u0639 \\u0645\\u0639 \\u0645\\u0637\\u0627\\u0637 \\u062e\\u0627\\u0631\\u062c\\u064a\"}', '{\"en\":\"FULL LEGRA\",\"ar\":\"\\u0641\\u0644 \\u0644\\u064a\\u0643\\u0631\\u0627\"}', '{\"en\":\"COTTON 95% - POLYESTER 5%\",\"ar\":\"\\u0642\\u0637\\u0646 %95- \\u0628\\u0648\\u0644\\u064a\\u0633\\u062a\\u0631 %5\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"M-L-XL-XXL\",\"ar\":\"M-L-XL-XXL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-27 07:52:25', '2025-04-02 21:00:02'),
(74, NULL, NULL, 73, '000060', 'printed-boxer-shorts-1', 0, '{\"en\":\"PRINTED BOXER SHORTS\",\"ar\":\"\\u0628\\u0648\\u0643\\u0633\\u0631 \\u0645\\u0637\\u0628\\u0648\\u0639\"}', '{\"en\":\"Printed boxer. Featuring an elastic waistband. Made of a very comfortable and pleasant cotton blend.\",\"ar\":\"\\u0628\\u0648\\u0643\\u0633\\u0631 \\u0645\\u0637\\u0628\\u0648\\u0639 \\u0645\\u0639 \\u0645\\u0637\\u0627\\u0637 \\u062e\\u0627\\u0631\\u062c\\u064a\"}', '{\"en\":\"FULL LEGRA\",\"ar\":\"\\u0641\\u0644 \\u0644\\u064a\\u0643\\u0631\\u0627\"}', '{\"en\":\"COTTON 95% - POLYESTER 5%\",\"ar\":\"\\u0642\\u0637\\u0646 %95- \\u0628\\u0648\\u0644\\u064a\\u0633\\u062a\\u0631 %5\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"M-L-XL-XXL\",\"ar\":\"M-L-XL-XXL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-27 07:57:59', '2025-04-02 21:00:02'),
(75, NULL, NULL, 66, '000174', 'round-neck-t-shert-4', 0, '{\"en\":\"ROUND NECK T-SHERT\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629\"}', '{\"en\":\"Printed T-Shirt with round neck Short sleeve, made of 100% cotton\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0627\\u0644\\u0628 \\u0645\\u0631\\u064a\\u062d \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629 \\u0646\\u0635\\u0641 \\u0643\\u0645 \\u064a\\u0648\\u062c\\u062f \\u0637\\u0628\\u0639\\u0629 \\u0639\\u0627\\u0644\\u0635\\u062f\\u0631\"}', '{\"en\":\"SINGLE COTTON\",\"ar\":\"\\u0633\\u0646\\u0643\\u0644 \\u0642\\u0637\\u0646\"}', '{\"en\":\"COTTON 100%\",\"ar\":\"\\u0642\\u0637\\u0646 %100\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL\",\"ar\":\"S-M-L-XL\"}', '{\"en\":\"COMFORT\",\"ar\":\"\\u0645\\u0631\\u064a\\u062d\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-27 11:15:03', '2025-06-05 12:49:49'),
(76, NULL, NULL, 66, '000187', 'round-neck-t-shert-5', 0, '{\"en\":\"ROUND NECK T-SHERT\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629\"}', '{\"en\":\"Printed striped T-Shirt with round neck Short sleeve, made of 100% cotton\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0627\\u0644\\u0628 \\u0645\\u0631\\u064a\\u062d \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629 \\u0646\\u0635\\u0641 \\u0643\\u0645 \\u0645\\u0642\\u0644\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0629\"}', '{\"en\":\"SINGLE SLAB\",\"ar\":\"\\u0633\\u0646\\u0643\\u0644 \\u0633\\u0644\\u0627\\u0628\"}', '{\"en\":\"COTTON 100%\",\"ar\":\"\\u0642\\u0637\\u0646 %100\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL\",\"ar\":\"S-M-L-XL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-27 11:20:43', '2025-06-05 12:49:49'),
(77, NULL, NULL, 66, '000186', 'round-neck-t-shert-6', 0, '{\"en\":\"ROUND NECK T-SHERT\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629\"}', '{\"en\":\"Printed striped T-Shirt with round neck Short sleeve, made of 100% cotton\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0627\\u0644\\u0628 \\u0645\\u0631\\u064a\\u062d \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629 \\u0646\\u0635\\u0641 \\u0643\\u0645 \\u0645\\u0642\\u0644\\u0645 \\u0637\\u0628\\u0627\\u0639\\u0629\"}', '{\"en\":\"SINGLE SLAB\",\"ar\":\"\\u0633\\u0646\\u0643\\u0644 \\u0633\\u0644\\u0627\\u0628\"}', '{\"en\":\"COTTON 100%\",\"ar\":\"\\u0642\\u0637\\u0646 %100\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL\",\"ar\":\"S-M-L-XL\"}', '{\"en\":\"COMFORT\",\"ar\":\"\\u0645\\u0631\\u064a\\u062d\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-27 11:24:40', '2025-06-05 12:49:49'),
(78, NULL, NULL, 73, '000312', 'printed-boxer-shorts-2', 0, '{\"en\":\"PRINTED BOXER SHORTS\",\"ar\":\"\\u0628\\u0648\\u0643\\u0633\\u0631 \\u0645\\u0637\\u0628\\u0648\\u0639\"}', '{\"en\":\"Printed boxer. Featuring an elastic waistband. Made of a very comfortable and pleasant cotton blend.\",\"ar\":\"\\u0628\\u0648\\u0643\\u0633\\u0631 \\u0645\\u0637\\u0628\\u0648\\u0639 \\u0645\\u0639 \\u0645\\u0637\\u0627\\u0637 \\u062e\\u0627\\u0631\\u062c\\u064a\"}', '{\"en\":\"FULL LEGRA\",\"ar\":\"\\u0641\\u0644 \\u0644\\u064a\\u0643\\u0631\\u0627\"}', '{\"en\":\"COTTON 95% - POLYESTER 5%\",\"ar\":\"\\u0642\\u0637\\u0646 %95- \\u0628\\u0648\\u0644\\u064a\\u0633\\u062a\\u0631 %5\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"M-L-XL-XXL\",\"ar\":\"M-L-XL-XXL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-27 12:16:48', '2025-04-02 21:00:02'),
(79, NULL, NULL, 73, '000070', 'printed-boxer-shorts-3', 0, '{\"en\":\"PRINTED BOXER SHORTS\",\"ar\":\"\\u0628\\u0648\\u0643\\u0633\\u0631 \\u0645\\u0637\\u0628\\u0648\\u0639\"}', '{\"en\":\"Printed boxer. Featuring an elastic waistband. Made of a very comfortable and pleasant cotton blend.\",\"ar\":\"\\u0628\\u0648\\u0643\\u0633\\u0631 \\u0645\\u0637\\u0628\\u0648\\u0639 \\u0645\\u0639 \\u0645\\u0637\\u0627\\u0637 \\u062e\\u0627\\u0631\\u062c\\u064a\"}', '{\"en\":\"FULL LEGRA\",\"ar\":\"\\u0641\\u0644 \\u0644\\u064a\\u0643\\u0631\\u0627\"}', '{\"en\":\"COTTON 95% - POLYESTER 5%\",\"ar\":\"\\u0642\\u0637\\u0646 %95- \\u0628\\u0648\\u0644\\u064a\\u0633\\u062a\\u0631 %5\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"M-L-XL-XXL\",\"ar\":\"M-L-XL-XXL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-27 12:19:43', '2025-04-02 21:00:02'),
(80, NULL, NULL, 73, '000316', 'printed-boxer-shorts-4', 0, '{\"en\":\"PRINTED BOXER SHORTS\",\"ar\":\"\\u0628\\u0648\\u0643\\u0633\\u0631 \\u0645\\u0637\\u0628\\u0648\\u0639\"}', '{\"en\":\"Printed boxer. Featuring an elastic waistband. Made of a very comfortable and pleasant cotton blend.\",\"ar\":\"\\u0628\\u0648\\u0643\\u0633\\u0631 \\u0645\\u0637\\u0628\\u0648\\u0639 \\u0645\\u0639 \\u0645\\u0637\\u0627\\u0637 \\u062e\\u0627\\u0631\\u062c\\u064a\"}', '{\"en\":\"FULL LEGRA\",\"ar\":\"\\u0641\\u0644 \\u0644\\u064a\\u0643\\u0631\\u0627\"}', '{\"en\":\"COTTON 95% - POLYESTER 5%\",\"ar\":\"\\u0642\\u0637\\u0646 %95- \\u0628\\u0648\\u0644\\u064a\\u0633\\u062a\\u0631 %5\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L\",\"ar\":\"S-M-L\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-27 12:22:56', '2025-04-02 21:00:02'),
(81, NULL, NULL, 73, '000309', 'printed-boxer-shorts-5', 0, '{\"en\":\"PRINTED BOXER SHORTS\",\"ar\":\"\\u0628\\u0648\\u0643\\u0633\\u0631 \\u0645\\u0637\\u0628\\u0648\\u0639\"}', '{\"en\":\"Printed boxer. Featuring an elastic waistband. Made of a very comfortable and pleasant cotton blend.\",\"ar\":\"\\u0628\\u0648\\u0643\\u0633\\u0631 \\u0645\\u0637\\u0628\\u0648\\u0639 \\u0645\\u0639 \\u0645\\u0637\\u0627\\u0637 \\u062e\\u0627\\u0631\\u062c\\u064a\"}', '{\"en\":\"FULL LEGRA\",\"ar\":\"\\u0641\\u0644 \\u0644\\u064a\\u0643\\u0631\\u0627\"}', '{\"en\":\"COTTON 95% - POLYESTER 5%\",\"ar\":\"\\u0642\\u0637\\u0646 %95- \\u0628\\u0648\\u0644\\u064a\\u0633\\u062a\\u0631 %5\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L\",\"ar\":\"S-M-L\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-27 12:25:39', '2025-04-02 21:00:02'),
(82, NULL, NULL, 73, '000310', 'printed-boxer-shorts-6', 0, '{\"en\":\"PRINTED BOXER SHORTS\",\"ar\":\"\\u0628\\u0648\\u0643\\u0633\\u0631 \\u0645\\u0637\\u0628\\u0648\\u0639\"}', '{\"en\":\"Printed boxer. Featuring an elastic waistband. Made of a very comfortable and pleasant cotton blend.\",\"ar\":\"\\u0628\\u0648\\u0643\\u0633\\u0631 \\u0645\\u0637\\u0628\\u0648\\u0639 \\u0645\\u0639 \\u0645\\u0637\\u0627\\u0637 \\u062e\\u0627\\u0631\\u062c\\u064a\"}', '{\"en\":\"FULL LEGRA\",\"ar\":\"\\u0641\\u0644 \\u0644\\u064a\\u0643\\u0631\\u0627\"}', '{\"en\":\"COTTON 95% - POLYESTER 5%\",\"ar\":\"\\u0642\\u0637\\u0646 %95- \\u0628\\u0648\\u0644\\u064a\\u0633\\u062a\\u0631 %5\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L\",\"ar\":\"S-M-L\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-27 12:27:36', '2025-04-02 21:00:02'),
(83, NULL, NULL, 73, '000317', 'printed-boxer-shorts-7', 0, '{\"en\":\"PRINTED BOXER SHORTS\",\"ar\":\"\\u0628\\u0648\\u0643\\u0633\\u0631 \\u0645\\u0637\\u0628\\u0648\\u0639\"}', '{\"en\":\"Printed boxer. Featuring an elastic waistband. Made of a very comfortable and pleasant cotton blend.\",\"ar\":\"\\u0628\\u0648\\u0643\\u0633\\u0631 \\u0645\\u0637\\u0628\\u0648\\u0639 \\u0645\\u0639 \\u0645\\u0637\\u0627\\u0637 \\u062e\\u0627\\u0631\\u062c\\u064a\"}', '{\"en\":\"FULL LEGRA\",\"ar\":\"\\u0641\\u0644 \\u0644\\u064a\\u0643\\u0631\\u0627\"}', '{\"en\":\"COTTON 95% - POLYESTER 5%\",\"ar\":\"\\u0642\\u0637\\u0646 %95- \\u0628\\u0648\\u0644\\u064a\\u0633\\u062a\\u0631 %5\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L\",\"ar\":\"S-M-L\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-27 12:29:38', '2025-04-02 21:00:02'),
(84, NULL, NULL, 70, '000170', 'textured-polo-t-shirt-6', 0, '{\"en\":\"Textured Polo T-Shirt\",\"ar\":\"\\u0628\\u0648\\u0644\\u0648 \\u0642\\u0628\\u0629 \\u062a\\u0631\\u064a\\u0643\\u0648\"}', '{\"en\":\"TEXTURED POLO SHIRT, made of a cotton blend with 20% polyester\",\"ar\":\"\\u0628\\u0648\\u0644\\u0648 \\u0642\\u0628\\u0629 \\u062a\\u0631\\u064a\\u0643\\u0648 \\u0646\\u0635\\u0641 \\u0643\\u0645\"}', '{\"en\":\"HASERA\",\"ar\":\"\\u062d\\u0635\\u064a\\u0631\\u0629\"}', '{\"en\":\"COTTON 80% POLYESTER 20%\",\"ar\":\"\\u0642\\u0637\\u0646 %80 - \\u0628\\u0648\\u0644\\u064a\\u0633\\u062a\\u0631 %20\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL\",\"ar\":\"S-M-L-XL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-27 12:34:13', '2025-06-05 12:49:49'),
(85, NULL, NULL, 74, '000150', 'chinese-style-neck-polo-t-shirt-2', 0, '{\"en\":\"Chinese Style NECK POLO T-Shirt\",\"ar\":\"\\u0628\\u0648\\u0644\\u0648 \\u0642\\u0628\\u0629 \\u0635\\u064a\\u0646\\u064a\"}', '{\"en\":\"Short sleeve polo shirt Chinese Style NECK, made of 100% cotton\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0628\\u0648\\u0644\\u0648 \\u0642\\u0628\\u0629 \\u0635\\u064a\\u0646\\u064a \\u0646\\u0635\\u0641 \\u0643\\u0645\"}', '{\"en\":\"LACOSTE SLAB\",\"ar\":\"\\u0644\\u0627\\u0643\\u0648\\u0633\\u062a \\u0633\\u0644\\u0627\\u0628\"}', '{\"en\":\"COTTON 100%\",\"ar\":\"\\u0642\\u0637\\u0646 %100\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"10-12-14\",\"ar\":\"10-12-14\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-27 13:26:14', '2025-04-02 21:00:02'),
(86, NULL, NULL, 74, '000160', 'chinese-style-neck-polo-t-shirt-3', 0, '{\"en\":\"Chinese Style NECK POLO T-Shirt\",\"ar\":\"\\u0628\\u0648\\u0644\\u0648 \\u0642\\u0628\\u0629 \\u0635\\u064a\\u0646\\u064a\"}', '{\"en\":\"Short sleeve polo shirt Chinese Style NECK, made of 100% cotton\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0628\\u0648\\u0644\\u0648 \\u0642\\u0628\\u0629 \\u0635\\u064a\\u0646\\u064a \\u0646\\u0635\\u0641 \\u0643\\u0645\"}', '{\"en\":\"LACOSTE slab\",\"ar\":\"\\u0644\\u0627\\u0643\\u0648\\u0633\\u062a \\u0633\\u0644\\u0627\\u0628\"}', '{\"en\":\"100% COTTON\",\"ar\":\"100% \\u0642\\u0637\\u0646\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"1-2-3\",\"ar\":\"1-2-3\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-27 13:31:36', '2025-04-02 21:00:02'),
(87, NULL, NULL, 74, '000180', 'chinese-style-neck-polo-t-shirt-4', 0, '{\"en\":\"Chinese Style NECK POLO T-Shirt\",\"ar\":\"\\u0628\\u0648\\u0644\\u0648 \\u0642\\u0628\\u0629 \\u0635\\u064a\\u0646\\u064a\"}', '{\"en\":\"Short sleeve polo shirt Chinese Style NECK, made of 100% cotton\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0628\\u0648\\u0644\\u0648 \\u0642\\u0628\\u0629 \\u0635\\u064a\\u0646\\u064a \\u0646\\u0635\\u0641 \\u0643\\u0645\"}', '{\"en\":\"LACOSTE slab\",\"ar\":\"\\u0644\\u0627\\u0643\\u0648\\u0633\\u062a \\u0633\\u0644\\u0627\\u0628\"}', '{\"en\":\"100% COTTON\",\"ar\":\"100% \\u0642\\u0637\\u0646\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"4-6-8\",\"ar\":\"4-6-8\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-03-27 13:34:03', '2025-04-02 21:00:02'),
(88, NULL, NULL, 77, '000254', 'pyjama', 0, '{\"en\":\"PYJAMA\",\"ar\":\"\\u0628\\u064a\\u062c\\u0627\\u0645\\u0627\"}', '{\"en\":\"Two-piece pyjamas, Featuring a short sleeve T-shirt with round nick and matching long trousers contains adjustable drawstring waistband.\",\"ar\":\"\\u0628\\u064a\\u062c\\u0627\\u0645\\u0627 \\u0645\\u0624\\u0644\\u0641\\u0629 \\u0645\\u0646 \\u0642\\u0637\\u0639\\u062a\\u064a\\u0646 \\u0648\\u062a\\u062a\\u0645\\u064a\\u0632 \\u0628\\u062a\\u064a\\u0634\\u0631\\u062a \\u0630\\u0627\\u062a \\u0627\\u0643\\u0645\\u0627\\u0645 \\u0642\\u0635\\u064a\\u0631\\u0629 \\u0648\\u0628\\u0646\\u0637\\u0627\\u0644 \\u064a\\u062d\\u062a\\u0648\\u064a \\u0639\\u0644\\u0649 \\u062e\\u0635\\u0631 \\u0642\\u0627\\u0628\\u0644 \\u0644\\u0644\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 \\u062d\\u0628\\u0644\"}', '{\"en\":\"MIXED SINGLE\",\"ar\":\"\\u0633\\u0646\\u0643\\u0644 \\u0645\\u0645\\u0632\\u0648\\u062c\"}', '{\"en\":\"COTTON 65% - POLYESTER 35%\",\"ar\":\"\\u0642\\u0637\\u0646 %65 - \\u0628\\u0648\\u0644\\u064a\\u0633\\u062a\\u0631 %35\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL\",\"ar\":\"S-M-L-XL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-04-05 08:14:16', '2025-04-11 21:00:02'),
(89, NULL, NULL, 77, '000255', 'pyjama-1', 0, '{\"en\":\"PYJAMA\",\"ar\":\"\\u0628\\u064a\\u062c\\u0627\\u0645\\u0627\"}', '{\"en\":\"Two-piece pyjamas, Featuring a short sleeve T-shirt with round nick and matching long trousers contains adjustable drawstring waistband.\",\"ar\":\"\\u0628\\u064a\\u062c\\u0627\\u0645\\u0627 \\u0645\\u0624\\u0644\\u0641\\u0629 \\u0645\\u0646 \\u0642\\u0637\\u0639\\u062a\\u064a\\u0646 \\u0648\\u062a\\u062a\\u0645\\u064a\\u0632 \\u0628\\u062a\\u064a\\u0634\\u0631\\u062a \\u0630\\u0627\\u062a \\u0627\\u0643\\u0645\\u0627\\u0645 \\u0642\\u0635\\u064a\\u0631\\u0629 \\u0648\\u0628\\u0646\\u0637\\u0627\\u0644 \\u064a\\u062d\\u062a\\u0648\\u064a \\u0639\\u0644\\u0649 \\u062e\\u0635\\u0631 \\u0642\\u0627\\u0628\\u0644 \\u0644\\u0644\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 \\u062d\\u0628\\u0644\"}', '{\"en\":\"MIXED SINGLE\",\"ar\":\"\\u0633\\u0646\\u0643\\u0644 \\u0645\\u0645\\u0632\\u0648\\u062c\"}', '{\"en\":\"COTTON 65% - POLYESTER 35%\",\"ar\":\"\\u0642\\u0637\\u0646 %65 - \\u0628\\u0648\\u0644\\u064a\\u0633\\u062a\\u0631 %35\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL\",\"ar\":\"S-M-L-XL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-04-05 08:23:47', '2025-04-11 21:00:02'),
(90, NULL, NULL, 78, '000241', 'pyjama-2', 0, '{\"en\":\"PYJAMA\",\"ar\":\"\\u0628\\u064a\\u062c\\u0627\\u0645\\u0627\"}', '{\"en\":\"Two-piece pyjamas, Featuring a short sleeve T-shirt with round nick and matching long trouser contains adjustable drawstring waistband.\",\"ar\":\"\\u0628\\u064a\\u062c\\u0627\\u0645\\u0627 \\u0645\\u0624\\u0644\\u0641\\u0629 \\u0645\\u0646 \\u0642\\u0637\\u0639\\u062a\\u064a\\u0646 \\u0648\\u062a\\u062a\\u0645\\u064a\\u0632 \\u0628\\u062a\\u064a\\u0634\\u0631\\u062a \\u0630\\u0627\\u062a \\u0627\\u0643\\u0645\\u0627\\u0645 \\u0642\\u0635\\u064a\\u0631\\u0629 \\u0648\\u0628\\u0646\\u0637\\u0627\\u0644 \\u064a\\u062d\\u062a\\u0648\\u064a \\u0639\\u0644\\u0649 \\u062e\\u0635\\u0631 \\u0642\\u0627\\u0628\\u0644 \\u0644\\u0644\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 \\u062d\\u0628\\u0644\"}', '{\"en\":\"MIXED SINGLE\",\"ar\":\"\\u0633\\u0646\\u0643\\u0644 \\u0645\\u0645\\u0632\\u0648\\u062c\"}', '{\"en\":\"COTTON 65% - POLYESTER 35%\",\"ar\":\"\\u0642\\u0637\\u0646 %65 - \\u0628\\u0648\\u0644\\u064a\\u0633\\u062a\\u0631 %35\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL\",\"ar\":\"S-M-L-XL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-04-05 08:48:15', '2025-04-11 21:00:02'),
(91, NULL, NULL, 78, '000240', 'pyjama-3', 0, '{\"en\":\"PYJAMA\",\"ar\":\"\\u0628\\u064a\\u062c\\u0627\\u0645\\u0627\"}', '{\"en\":\"Two-piece pyjamas, Featuring a short sleeve T-shirt with round nick and matching long trouser contains adjustable drawstring waistband.\",\"ar\":\"\\u0628\\u064a\\u062c\\u0627\\u0645\\u0627 \\u0645\\u0624\\u0644\\u0641\\u0629 \\u0645\\u0646 \\u0642\\u0637\\u0639\\u062a\\u064a\\u0646 \\u0648\\u062a\\u062a\\u0645\\u064a\\u0632 \\u0628\\u062a\\u064a\\u0634\\u0631\\u062a \\u0630\\u0627\\u062a \\u0627\\u0643\\u0645\\u0627\\u0645 \\u0642\\u0635\\u064a\\u0631\\u0629 \\u0648\\u0628\\u0646\\u0637\\u0627\\u0644 \\u064a\\u062d\\u062a\\u0648\\u064a \\u0639\\u0644\\u0649 \\u062e\\u0635\\u0631 \\u0642\\u0627\\u0628\\u0644 \\u0644\\u0644\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 \\u062d\\u0628\\u0644\"}', '{\"en\":\"MIXED SINGLE\",\"ar\":\"\\u0633\\u0646\\u0643\\u0644 \\u0645\\u0645\\u0632\\u0648\\u062c\"}', '{\"en\":\"COTTON 65% - POLYESTER 35%\",\"ar\":\"\\u0642\\u0637\\u0646 %65 - \\u0628\\u0648\\u0644\\u064a\\u0633\\u062a\\u0631 %35\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL\",\"ar\":\"S-M-L-XL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-04-05 09:02:33', '2025-04-11 21:00:02'),
(92, NULL, NULL, 78, '000243', 'pyjama-4', 0, '{\"en\":\"PYJAMA\",\"ar\":\"\\u0628\\u064a\\u062c\\u0627\\u0645\\u0627\"}', '{\"en\":\"Two-piece pyjamas, Featuring a short sleeve  ribbed trims striped T-shirt with round nick and matching long trouser contains adjustable drawstring waistband.\",\"ar\":\"\\u0628\\u064a\\u062c\\u0627\\u0645\\u0627 \\u0645\\u0624\\u0644\\u0641\\u0629 \\u0645\\u0646 \\u0642\\u0637\\u0639\\u062a\\u064a\\u0646 \\u0648\\u062a\\u062a\\u0645\\u064a\\u0632 \\u0628\\u062a\\u064a\\u0634\\u0631\\u062a \\u0630\\u0627\\u062a \\u0627\\u0643\\u0645\\u0627\\u0645 \\u0642\\u0635\\u064a\\u0631\\u0629 \\u0648\\u0628\\u0646\\u0637\\u0627\\u0644 \\u064a\\u062d\\u062a\\u0648\\u064a \\u0639\\u0644\\u0649 \\u062e\\u0635\\u0631 \\u0642\\u0627\\u0628\\u0644 \\u0644\\u0644\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 \\u062d\\u0628\\u0644\"}', '{\"en\":\"MIXED SINGLE\",\"ar\":\"\\u0633\\u0646\\u0643\\u0644 \\u0645\\u0645\\u0632\\u0648\\u062c\"}', '{\"en\":\"COTTON 65% - POLYESTER 35%\",\"ar\":\"\\u0642\\u0637\\u0646 %65 - \\u0628\\u0648\\u0644\\u064a\\u0633\\u062a\\u0631 %35\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL\",\"ar\":\"S-M-L-XL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-04-05 09:11:38', '2025-04-11 21:00:02'),
(94, NULL, 3, 8, '864225', 'test-4', 0, '{\"en\":\"Test 4\",\"ar\":\"\\u062a\\u064a\\u0633\\u062a 4\"}', '{\"en\":\"Ipsam dolore nesciun\",\"ar\":\"Repellendus Aliquid\"}', '{\"en\":\"Veda Peck\",\"ar\":\"Leilani Price\"}', '{\"en\":\"Veda Gay\",\"ar\":\"Hashim Garrison\"}', '{\"en\":\"Gareth Ferrell\",\"ar\":\"Carla Rodriguez\"}', '{\"en\":\"Driscoll Shields\",\"ar\":\"Yvonne Dotson\"}', '{\"en\":\"Charissa Hawkins\",\"ar\":\"Maisie Sparks\"}', '{\"en\":\"Regina Castillo\",\"ar\":\"Deanna Castaneda\"}', 0, NULL, NULL, '2025-04-09 10:36:15', '2025-06-05 13:50:30'),
(95, NULL, NULL, 8, '732786', 'test-5', 0, '{\"en\":\"Test 5\",\"ar\":\"\\u062a\\u064a\\u0633\\u062a 5\"}', '{\"en\":\"Ratione non quis qui\",\"ar\":\"Eligendi pariatur S\"}', '{\"en\":\"MacKensie Petty\",\"ar\":\"William Bailey\"}', '{\"en\":\"Shelley Farmer\",\"ar\":\"Nero Martin\"}', '{\"en\":\"Margaret Chang\",\"ar\":\"Vanna Suarez\"}', '{\"en\":\"Arsenio Cortez\",\"ar\":\"Hall Kelly\"}', '{\"en\":\"Maya Kirby\",\"ar\":\"Daniel Hood\"}', '{\"en\":\"Raven Byrd\",\"ar\":\"Mechelle Dixon\"}', 0, NULL, NULL, '2025-04-09 11:34:54', '2025-06-05 13:50:57'),
(96, NULL, 2, 8, '842756', 'test-6', 0, '{\"en\":\"Test 6\",\"ar\":\"\\u062a\\u064a\\u0633\\u062a 6\"}', '{\"en\":\"Quisquam laborum Re\",\"ar\":\"Hic non nostrud repr\"}', '{\"en\":\"Brynn Puckett\",\"ar\":\"Ursula Contreras\"}', '{\"en\":\"Jakeem Sparks\",\"ar\":\"Mikayla Richardson\"}', '{\"en\":\"Pascale Thomas\",\"ar\":\"Oleg Burton\"}', '{\"en\":\"Justine Kennedy\",\"ar\":\"Chastity Cash\"}', '{\"en\":\"Kennedy Paul\",\"ar\":\"Neil Sanchez\"}', '{\"en\":\"Shay Beach\",\"ar\":\"Geraldine Hoover\"}', 0, NULL, NULL, '2025-04-09 11:50:24', '2025-06-05 13:50:51'),
(97, NULL, 1, 8, '933259', 'test-7', 0, '{\"en\":\"Test 7\",\"ar\":\"\\u062a\\u064a\\u0633\\u062a 7\"}', '{\"en\":\"Consequatur Vel off\",\"ar\":\"Facere asperiores id\"}', '{\"en\":\"Charde Keller\",\"ar\":\"Isabelle Cummings\"}', '{\"en\":\"Cyrus Bryant\",\"ar\":\"Mona Burgess\"}', '{\"en\":\"Wilma Henry\",\"ar\":\"Charity Mcpherson\"}', '{\"en\":\"Mercedes Vance\",\"ar\":\"Brennan Collins\"}', '{\"en\":\"Oren Carrillo\",\"ar\":\"Jerry Potter\"}', '{\"en\":\"Mohammad Lewis\",\"ar\":\"Hannah Cote\"}', 0, NULL, NULL, '2025-04-09 11:52:34', '2025-06-05 13:51:08'),
(98, NULL, 3, 8, '538831', 'test-8', 0, '{\"en\":\"Test 8\",\"ar\":\"\\u062a\\u064a\\u0633\\u062a 8\"}', '{\"en\":\"Velit laudantium ab\",\"ar\":\"Ea labore maxime eu\"}', '{\"en\":\"Blair Mcdaniel\",\"ar\":\"Kyle Sutton\"}', '{\"en\":\"Elvis Yang\",\"ar\":\"Blaze Wolfe\"}', '{\"en\":\"Hashim Estes\",\"ar\":\"Signe Peck\"}', '{\"en\":\"Nora Chan\",\"ar\":\"Mona Mack\"}', '{\"en\":\"Cedric Glass\",\"ar\":\"Cally Monroe\"}', '{\"en\":\"Jeanette Thornton\",\"ar\":\"Holmes Hayes\"}', 0, NULL, NULL, '2025-04-09 11:54:35', '2025-06-05 13:51:03'),
(99, NULL, NULL, 8, '336883', 'flash', 0, '{\"en\":\"Flash\",\"ar\":\"\\u0641\\u0644\\u0627\\u0634\"}', '{\"en\":\"Accusantium sint ve\",\"ar\":\"Quidem at ipsa quia\"}', '{\"en\":\"Burke Oconnor\",\"ar\":\"Abel Bird\"}', '{\"en\":\"Lee Sloan\",\"ar\":\"Colleen Sweeney\"}', '{\"en\":\"Flavia Cross\",\"ar\":\"September Haney\"}', '{\"en\":\"Wing Kirk\",\"ar\":\"Maia Dale\"}', '{\"en\":\"Inga White\",\"ar\":\"Gavin Shaffer\"}', '{\"en\":\"Quin Lamb\",\"ar\":\"Rachel Washington\"}', 0, NULL, NULL, '2025-04-10 07:41:50', '2025-06-05 13:51:15'),
(100, NULL, NULL, 79, '000476', 'women-slip', 0, '{\"en\":\"WOMEN SLIP\",\"ar\":\"\\u0633\\u0644\\u064a\\u0628 \\u0646\\u0633\\u0627\\u0626\\u064a\"}', '{\"en\":\"WOMEN\'S SLIP UNDERWEAR - SLIM FIT AND ELASTIC LEG WICH MADE OF COMFORTABLE LEGRA AND COTTON BLEND.\",\"ar\":\"\\u0633\\u0644\\u064a\\u0628  \\u0646\\u0633\\u0627\\u0626\\u064a - \\u0642\\u0627\\u0644\\u0628 \\u0631\\u0641\\u064a\\u0639   - \\u0631\\u062c\\u0644 \\u0645\\u0637\\u0627\\u0637\"}', '{\"en\":\"FULL LEGRA\",\"ar\":\"\\u0641\\u0644 \\u0644\\u064a\\u0643\\u0631\\u0627\"}', '{\"en\":\"LEGRA 95% - COTTON 5%\",\"ar\":\"\\u0644\\u064a\\u0643\\u0631\\u0627 %95- \\u0642\\u0637\\u0646%5\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"M-L-XL-XXL\",\"ar\":\"M-L-XL-XXL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-04-15 12:59:59', '2025-04-21 21:00:02'),
(101, NULL, NULL, 77, '000259', 'pyjama-5', 0, '{\"en\":\"PYJAMA\",\"ar\":\"\\u0628\\u064a\\u062c\\u0627\\u0645\\u0627  \\u0646\\u0633\\u0627\\u0626\\u064a\"}', '{\"en\":\"Two-piece pajama set featuring a short-sleeved T-shirt with a round neck and a half-length skirt with a drawstring waist.\",\"ar\":\"\\u0628\\u064a\\u062c\\u0627\\u0645\\u0627 \\u0645\\u0624\\u0644\\u0641\\u0629 \\u0645\\u0646 \\u0642\\u0637\\u0639\\u062a\\u064a\\u0646 \\u0648\\u062a\\u062a\\u0645\\u064a\\u0632 \\u0628\\u062a\\u064a\\u0634\\u0631\\u062a \\u0630\\u0627\\u062a \\u0627\\u0643\\u0645\\u0627\\u0645 \\u0642\\u0635\\u064a\\u0631\\u0629\\u0648  \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629 \\u0631\\u0634\\u0629 \\u0646\\u0635 \\u0641\\u0644\\u0648\\u0645\\u0639 \\u0628\\u0646\\u0637\\u0627\\u0644 \\u0643\\u0645\\u0631 \\u0648\\u0635\\u0644 \\u062d\\u0628\\u0644 \\u0645\\u0646 \\u0627\\u0644\\u0642\\u0645\\u0627\\u0634\"}', '{\"en\":\"MIXED SINGLE-1\\/30 COTTON SINGLE\",\"ar\":\"\\u0633\\u0646\\u0643\\u0644 \\u0645\\u0645\\u0632\\u0648\\u062c \\u2013 \\u0633\\u0646\\u0643\\u0644 \\u0642\\u0637\\u0646 30\\/ 1\"}', '{\"en\":\"PANTS: 80% COTTON, 20% POLEYESTER. \\u064dSHIRT: 100% COTTON.\",\"ar\":\"\\u0627\\u0644\\u0628\\u0646\\u0637\\u0627\\u0644 80 % \\u0642\\u0637\\u0646 20 % \\u0628\\u0648\\u0644\\u0633\\u062a\\u0631.  \\u0627\\u0644\\u0628\\u0644\\u0648\\u0632\\u0629 100 % \\u0642\\u0637\\u0646\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL\",\"ar\":\"S-M-L-XL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-04-15 13:23:36', '2025-04-21 21:00:02'),
(102, NULL, NULL, 80, '000559', 'long-sleeve-t-shirt', 0, '{\"en\":\"long sleeve t-shirt\",\"ar\":\"\\u0628\\u0644\\u0648\\u0632\\u0629 \\u0628\\u0646\\u0627\\u062a\\u064a \\u0628\\u0643\\u0645\"}', '{\"en\":\"Round neck blouse with long ruffle sleeves\",\"ar\":\"\\u0628\\u0644\\u0648\\u0632\\u0629 \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629 \\u0632\\u0645 \\u0645\\u0639 \\u0643\\u0645 \\u0631\\u0634\\u0629 \\u0637\\u0648\\u064a\\u0644\"}', '{\"en\":\"24\\/1 cotton single\",\"ar\":\"\\u0633\\u0646\\u0643\\u0644 \\u0642\\u0637\\u0646 24\\/1\"}', '{\"en\":\"100% COTTON\",\"ar\":\"\\u0642\\u0637\\u0646 %100\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"4 6 8\",\"ar\":\"4 6 8\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-04-16 11:41:23', '2025-04-22 21:00:02'),
(103, NULL, NULL, 70, '000212', 'polo-t-shirt-2', 0, '{\"en\":\"POLO T-SHIRT\",\"ar\":\"\\u0628\\u0648\\u0644\\u0648 \\u062a\\u064a\\u0634\\u0631\\u062a\"}', '{\"en\":\"Regular fit half sleeve polo shirt with striped hook and loop sleeve\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0628\\u0648\\u0644\\u0648  \\u0646\\u0635 \\u0643\\u0645 \\u0642\\u0628\\u0629 \\u0639\\u0627\\u062f\\u064a\\u0629 \\u0645\\u0639 \\u0643\\u0645 \\u0633\\u0646\\u0627\\u0631\\u0629  \\u0645\\u062e\\u0637\\u0637\\u0629\"}', '{\"en\":\"COTTON SINGLE\",\"ar\":\"\\u0633\\u0646\\u0643\\u0644 \\u0642\\u0637\\u0646\"}', '{\"en\":\"%100  COTTON\",\"ar\":\"100% \\u0642\\u0637\\u0646\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL\",\"ar\":\"S-M-L-XL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-04-16 11:52:00', '2025-06-05 12:49:49'),
(104, NULL, NULL, 66, '000200', 't-shirt-1', 0, '{\"en\":\"T-SHIRT\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a\"}', '{\"en\":\"Summer round neck half sleeve blouse with corlet contour\",\"ar\":\"\\u0628\\u0644\\u0648\\u0632\\u0629 \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629 \\u0646\\u0635 \\u0643\\u0645 \\u0635\\u064a\\u0641\\u064a\\u0629 \\u0643\\u0641\\u0627\\u0641 \\u0643\\u0631\\u0648\\u0644\\u064a\\u062a\"}', '{\"en\":\"HASERA\",\"ar\":\"\\u062d\\u0635\\u064a\\u0631\\u0629\"}', '{\"en\":\"COTTON 80% - POLYESTER 20%\",\"ar\":\"\\u0642\\u0637\\u0646 %80 - \\u0628\\u0648\\u0644\\u064a\\u0633\\u062a\\u0631 %20\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL\",\"ar\":\"S-M-L-XL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-04-16 12:03:06', '2025-06-05 12:49:49'),
(105, NULL, NULL, 70, '000125', 'polo-t-shirt-3', 0, '{\"en\":\"POLO T-SHIRT\",\"ar\":\"\\u0628\\u0648\\u0644\\u0648 \\u062a\\u064a\\u0634\\u0631\\u062a\"}', '{\"en\":\"Comfortable summer half-sleeve polo shirt with a Chinese collar and hook-and-eye sleeves\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0628\\u0648\\u0644\\u0648 \\u0646\\u0635 \\u0643\\u0645 \\u0635\\u064a\\u0641\\u064a\\u0629 \\u0645\\u0631\\u064a\\u062d\\u0629 \\u0645\\u0639  \\u0642\\u0628\\u0629 \\u0635\\u064a\\u0646\\u064a \\u0648 \\u0643\\u0645 \\u0633\\u0646\\u0627\\u0631\\u0629\"}', '{\"en\":\"COTTON LACOSTA\",\"ar\":\"\\u0644\\u0627\\u0643\\u0648\\u0633\\u062a \\u0642\\u0637\\u0646\"}', '{\"en\":\"%100 COTTON\",\"ar\":\"%100 \\u0642\\u0637\\u0646\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL\",\"ar\":\"S-M-L-XL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', 0, NULL, NULL, '2025-04-16 12:11:53', '2025-06-05 12:49:49'),
(106, NULL, NULL, 76, '000404', 'printed-boxer-shorts-8', 0, '{\"en\":\"PRINTED BOXER SHORTS\",\"ar\":\"\\u0628\\u0648\\u0643\\u0633\\u0631 \\u0645\\u0637\\u0628\\u0648\\u0639\"}', '{\"en\":\"2-piece set: printed crochet tank top and printed boxer briefs with inner elastic\",\"ar\":\"\\u0645\\u0646\\u062a\\u062c \\u064a\\u062a\\u0626\\u0627\\u0644\\u0641 \\u0645\\u0646 \\u0642\\u0637\\u0639\\u062a\\u064a\\u0646: \\u0642\\u0645\\u064a\\u0635 \\u0634\\u064a\\u0627\\u0644 \\u0643\\u0631\\u0648\\u0644\\u064a\\u062a \\u0645\\u0637\\u0628\\u0648\\u0639 \\u0648 \\u0628\\u0648\\u0643\\u0633\\u0631 \\u0645\\u0637\\u0628\\u0648\\u0639 \\u0645\\u0639 \\u0645\\u0637\\u0627\\u0637 \\u062f\\u0627\\u062e\\u0644\\u064a\"}', '{\"en\":\"1\\/30 COTTON SINGLE\",\"ar\":\"\\u0633\\u0646\\u0643\\u0644 \\u0642\\u0637\\u0646 30\\/1\"}', '{\"en\":\"%100 COTTON\",\"ar\":\"100 % \\u0642\\u0637\\u0646\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"2 4 6\",\"ar\":\"2 4 6\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-04-16 12:41:34', '2025-04-22 21:00:02'),
(107, NULL, NULL, 66, '000155', 't-shirt-2', 0, '{\"en\":\"T-SHIRT\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0631\\u062c\\u0627\\u0644\\u064a\"}', '{\"en\":\"Summer half-sleeve T-shirt with a round neck\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0646\\u0635 \\u0643\\u0645 \\u0635\\u064a\\u0641\\u064a \\u0645\\u0639 \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629 \\u0645\\u062f\\u0631\\u064a\\u0629\"}', '{\"en\":\"FULL LEGRA\",\"ar\":\"\\u0641\\u0644 \\u0644\\u064a\\u0643\\u0631\\u0627\"}', '{\"en\":\"%5 COTTON %95 LEGRA\",\"ar\":\"95% \\u0642\\u0637\\u0646 5% \\u0644\\u064a\\u0643\\u0631\\u0627\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL\",\"ar\":\"S-M-L-XL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-04-16 13:09:20', '2025-06-05 12:49:49'),
(108, NULL, NULL, 66, '000176', 't-shirt-3', 0, '{\"en\":\"t-shirt\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a\"}', '{\"en\":\"Comfortable summer wide crew neck T-shirt\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629 \\u0639\\u0631\\u064a\\u0636\\u0629 \\u0635\\u064a\\u0641\\u064a \\u0645\\u0631\\u064a\\u062d\\u0629\"}', '{\"en\":\"1\\/24 COTTON SINGLE\",\"ar\":\"\\u0633\\u0646\\u0643\\u0644 \\u0642\\u0637\\u0646 24\\/1\"}', '{\"en\":\"%100 COTTON\",\"ar\":\"100% \\u0642\\u0637\\u0646\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL\",\"ar\":\"S-M-L-XL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-04-16 13:17:16', '2025-06-05 12:49:49'),
(109, NULL, NULL, 66, '000208', 't-shirt-4', 0, '{\"en\":\"T-SHIRT\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a\"}', '{\"en\":\"Comfortable half-sleeved summer T-shirt with a wide round neck\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0635\\u064a\\u0641\\u064a \\u0646\\u0635 \\u0643\\u0645 \\u0645\\u0631\\u064a\\u062d \\u0645\\u0639 \\u0642\\u0628\\u0629 \\u0645\\u062f\\u0648\\u0631\\u0629 \\u0639\\u0631\\u064a\\u0636\\u0629\"}', '{\"en\":\"TOVLIS\",\"ar\":\"\\u062a\\u0648\\u0641\\u0644\\u064a\\u0633\"}', '{\"en\":\"%100 COTTON\",\"ar\":\"100% \\u0642\\u0637\\u0646\"}', '{\"en\":\"Do Not Bleach and wash inside out ; Machine Washing Max 30C\",\"ar\":\"\\u0644\\u0627 \\u062a\\u0633\\u062a\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0643\\u0644\\u0648\\u0631 \\u0648\\u064a\\u063a\\u0633\\u0644 \\u0645\\u0642\\u0644\\u0648\\u0628 \\u0628\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u062d\\u0643\\u062f \\u0623\\u0642\\u0635\\u0649 30\"}', '{\"en\":\"S-M-L-XL\",\"ar\":\"S-M-L-XL\"}', '{\"en\":\"REGULAR\",\"ar\":\"\\u0639\\u0627\\u062f\\u064a\"}', '{\"en\":\"SUMMER\",\"ar\":\"\\u0627\\u0644\\u0635\\u064a\\u0641\"}', 0, NULL, NULL, '2025-04-16 13:24:12', '2025-06-05 12:49:49'),
(110, NULL, NULL, 81, '223344', 'gift-card', 0, '{\"en\":\"gift card\",\"ar\":\"\\u0628\\u0637\\u0627\\u0642\\u0629 \\u0647\\u062f\\u064a\\u0629\"}', '{\"en\":\"gift card\",\"ar\":\"\\u0628\\u0637\\u0627\\u0642\\u0629 \\u0647\\u062f\\u064a\\u0629\"}', '{\"en\":\"223344\",\"ar\":\"223344\"}', '{\"en\":\"5\",\"ar\":\"5\"}', '{\"en\":\"1\",\"ar\":\"1\"}', '{\"en\":\"3\",\"ar\":\"3\"}', '{\"en\":\"2\",\"ar\":\"2\"}', '{\"en\":\"4\",\"ar\":\"4\"}', 0, NULL, NULL, '2025-04-28 11:34:13', '2025-05-17 13:34:07'),
(111, NULL, NULL, 82, '100001', 'gift-card-1', 0, '{\"en\":\"Gift Card\",\"ar\":\"\\u0628\\u0637\\u0627\\u0642\\u0629 \\u0647\\u062f\\u064a\\u0629\"}', '{\"en\":\"0\",\"ar\":\"0\"}', '{\"en\":\"0\",\"ar\":\"0\"}', '{\"en\":\"0\",\"ar\":\"0\"}', '{\"en\":\"0\",\"ar\":\"0\"}', '{\"en\":\"0\",\"ar\":\"0\"}', '{\"en\":\"0\",\"ar\":\"0\"}', '{\"en\":\"0\",\"ar\":\"0\"}', 0, NULL, NULL, '2025-05-17 13:26:12', '2025-06-05 13:55:58');

-- --------------------------------------------------------

--
-- Table structure for table `product_variations`
--

CREATE TABLE `product_variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `sku_code` varchar(200) NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 0,
  `group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variations`
--

INSERT INTO `product_variations` (`id`, `product_id`, `variation_id`, `color_id`, `size_id`, `sku_code`, `visible`, `group_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(164, 17, NULL, 2, 3, '123458-DF-66', 0, 1, NULL, '2025-02-19 08:51:57', '2025-02-25 10:18:13'),
(165, 17, NULL, 2, 2, '123458-DF-444', 0, 1, NULL, '2025-02-19 10:48:44', '2025-02-25 10:18:13'),
(166, 17, NULL, 2, 1, '123458-DF-1', 0, 1, NULL, '2025-02-19 10:48:44', '2025-02-25 10:18:13'),
(167, 17, NULL, 6, 3, '123458-7634-66', 0, 1, NULL, '2025-02-19 10:48:44', '2025-02-25 10:18:13'),
(168, 17, NULL, 6, 2, '123458-7634-444', 0, 1, NULL, '2025-02-19 10:48:44', '2025-02-25 10:18:13'),
(169, 17, NULL, 6, 1, '123458-7634-1', 0, 1, NULL, '2025-02-19 10:48:44', '2025-02-25 10:18:13'),
(170, 18, NULL, 2, 1, '410886-DF-1', 0, 2, NULL, '2025-02-19 11:13:39', '2025-04-09 11:45:53'),
(171, 18, NULL, 2, 2, '410886-DF-444', 0, 2, NULL, '2025-02-19 11:13:39', '2025-04-09 11:45:53'),
(172, 18, NULL, 2, 3, '410886-DF-66', 0, 2, NULL, '2025-02-19 11:13:39', '2025-04-09 11:45:53'),
(173, 18, NULL, 6, 1, '410886-7634-1', 0, 2, NULL, '2025-02-19 11:13:39', '2025-04-09 11:45:53'),
(174, 18, NULL, 6, 2, '410886-7634-444', 0, 2, NULL, '2025-02-19 11:13:39', '2025-04-09 11:45:53'),
(175, 18, NULL, 6, 3, '410886-7634-66', 0, 2, NULL, '2025-02-19 11:13:39', '2025-04-09 11:45:53'),
(176, 19, NULL, 2, 3, '654321-DF-66', 0, NULL, NULL, '2025-02-19 11:16:24', '2025-02-19 11:16:24'),
(225, 34, NULL, 10, 2, '000001-55-444', 0, NULL, NULL, '2025-03-16 12:19:55', '2025-03-16 12:19:55'),
(226, 34, NULL, 10, 17, '000001-55-38', 0, NULL, NULL, '2025-03-16 12:19:55', '2025-03-16 12:19:55'),
(227, 34, NULL, 10, 3, '000001-55-66', 0, NULL, NULL, '2025-03-16 12:19:55', '2025-03-16 12:19:55'),
(228, 34, NULL, 10, 16, '000001-55-22', 0, NULL, NULL, '2025-03-16 12:19:55', '2025-03-16 12:19:55'),
(229, 35, NULL, 10, 2, '000001-55-444', 0, NULL, NULL, '2025-03-16 12:20:13', '2025-03-16 12:20:13'),
(230, 35, NULL, 10, 17, '000001-55-38', 0, NULL, NULL, '2025-03-16 12:20:13', '2025-03-16 12:20:13'),
(231, 35, NULL, 10, 3, '000001-55-66', 0, NULL, NULL, '2025-03-16 12:20:13', '2025-03-16 12:20:13'),
(232, 35, NULL, 10, 16, '000001-55-22', 0, NULL, NULL, '2025-03-16 12:20:13', '2025-03-16 12:20:13'),
(233, 35, NULL, 6, 2, '000001-7634-444', 0, NULL, NULL, '2025-03-16 12:20:13', '2025-03-16 12:20:13'),
(234, 35, NULL, 6, 17, '000001-7634-38', 0, NULL, NULL, '2025-03-16 12:20:14', '2025-03-16 12:20:14'),
(235, 35, NULL, 6, 3, '000001-7634-66', 0, NULL, NULL, '2025-03-16 12:20:14', '2025-03-16 12:20:14'),
(236, 35, NULL, 6, 16, '000001-7634-22', 0, NULL, NULL, '2025-03-16 12:20:14', '2025-03-16 12:20:14'),
(237, 36, NULL, 2, 2, '000002-DF-444', 0, NULL, NULL, '2025-03-16 12:39:52', '2025-03-16 12:39:52'),
(238, 36, NULL, 2, 3, '000002-DF-66', 0, NULL, NULL, '2025-03-16 12:39:52', '2025-03-16 12:39:52'),
(239, 36, NULL, 2, 17, '000002-DF-38', 0, NULL, NULL, '2025-03-16 12:39:52', '2025-03-16 12:39:52'),
(240, 36, NULL, 2, 16, '000002-DF-22', 0, NULL, NULL, '2025-03-16 12:39:52', '2025-03-16 12:39:52'),
(241, 36, NULL, 1, 2, '000002-asd-444', 0, NULL, NULL, '2025-03-16 12:39:52', '2025-03-16 12:39:52'),
(242, 36, NULL, 1, 3, '000002-asd-66', 0, NULL, NULL, '2025-03-16 12:39:52', '2025-03-16 12:39:52'),
(243, 36, NULL, 1, 17, '000002-asd-38', 0, NULL, NULL, '2025-03-16 12:39:52', '2025-03-16 12:39:52'),
(244, 36, NULL, 1, 16, '000002-asd-22', 0, NULL, NULL, '2025-03-16 12:39:52', '2025-03-16 12:39:52'),
(245, 37, NULL, 11, 2, '000003-52-444', 0, NULL, NULL, '2025-03-16 12:56:01', '2025-03-16 12:56:01'),
(246, 37, NULL, 11, 17, '000003-52-38', 0, NULL, NULL, '2025-03-16 12:56:01', '2025-03-16 12:56:01'),
(247, 37, NULL, 11, 3, '000003-52-66', 0, NULL, NULL, '2025-03-16 12:56:01', '2025-03-16 12:56:01'),
(248, 37, NULL, 11, 16, '000003-52-22', 0, NULL, NULL, '2025-03-16 12:56:01', '2025-03-16 12:56:01'),
(249, 37, NULL, 11, 18, '000003-52-44', 0, NULL, NULL, '2025-03-16 12:56:01', '2025-03-16 12:56:01'),
(250, 37, NULL, 12, 2, '000003-14-444', 0, NULL, NULL, '2025-03-16 12:56:01', '2025-03-16 12:56:01'),
(251, 37, NULL, 12, 17, '000003-14-38', 0, NULL, NULL, '2025-03-16 12:56:01', '2025-03-16 12:56:01'),
(252, 37, NULL, 12, 3, '000003-14-66', 0, NULL, NULL, '2025-03-16 12:56:01', '2025-03-16 12:56:01'),
(253, 37, NULL, 12, 16, '000003-14-22', 0, NULL, NULL, '2025-03-16 12:56:01', '2025-03-16 12:56:01'),
(254, 37, NULL, 12, 18, '000003-14-44', 0, NULL, NULL, '2025-03-16 12:56:01', '2025-03-16 12:56:01'),
(255, 37, NULL, 2, 2, '000003-DF-444', 0, NULL, NULL, '2025-03-16 12:56:01', '2025-03-16 12:56:01'),
(256, 37, NULL, 2, 17, '000003-DF-38', 0, NULL, NULL, '2025-03-16 12:56:01', '2025-03-16 12:56:01'),
(257, 37, NULL, 2, 3, '000003-DF-66', 0, NULL, NULL, '2025-03-16 12:56:01', '2025-03-16 12:56:01'),
(258, 37, NULL, 2, 16, '000003-DF-22', 0, NULL, NULL, '2025-03-16 12:56:01', '2025-03-16 12:56:01'),
(259, 37, NULL, 2, 18, '000003-DF-44', 0, NULL, NULL, '2025-03-16 12:56:01', '2025-03-16 12:56:01'),
(260, 38, NULL, 2, 2, '000004-DF-444', 0, NULL, NULL, '2025-03-16 13:06:26', '2025-03-16 13:06:26'),
(261, 38, NULL, 2, 17, '000004-DF-38', 0, NULL, NULL, '2025-03-16 13:06:26', '2025-03-16 13:06:26'),
(262, 38, NULL, 2, 3, '000004-DF-66', 0, NULL, NULL, '2025-03-16 13:06:26', '2025-03-16 13:06:26'),
(263, 38, NULL, 2, 16, '000004-DF-22', 0, NULL, NULL, '2025-03-16 13:06:26', '2025-03-16 13:06:26'),
(264, 38, NULL, 2, 18, '000004-DF-44', 0, NULL, NULL, '2025-03-16 13:06:26', '2025-03-16 13:06:26'),
(265, 38, NULL, 12, 2, '000004-14-444', 0, NULL, NULL, '2025-03-16 13:06:26', '2025-03-16 13:06:26'),
(266, 38, NULL, 12, 17, '000004-14-38', 0, NULL, NULL, '2025-03-16 13:06:26', '2025-03-16 13:06:26'),
(267, 38, NULL, 12, 3, '000004-14-66', 0, NULL, NULL, '2025-03-16 13:06:26', '2025-03-16 13:06:26'),
(268, 38, NULL, 12, 16, '000004-14-22', 0, NULL, NULL, '2025-03-16 13:06:26', '2025-03-16 13:06:26'),
(269, 38, NULL, 12, 18, '000004-14-44', 0, NULL, NULL, '2025-03-16 13:06:26', '2025-03-16 13:06:26'),
(270, 38, NULL, 6, 2, '000004-7634-444', 0, NULL, NULL, '2025-03-16 13:06:26', '2025-03-16 13:06:26'),
(271, 38, NULL, 6, 17, '000004-7634-38', 0, NULL, NULL, '2025-03-16 13:06:26', '2025-03-16 13:06:26'),
(272, 38, NULL, 6, 3, '000004-7634-66', 0, NULL, NULL, '2025-03-16 13:06:26', '2025-03-16 13:06:26'),
(273, 38, NULL, 6, 16, '000004-7634-22', 0, NULL, NULL, '2025-03-16 13:06:26', '2025-03-16 13:06:26'),
(274, 38, NULL, 6, 18, '000004-7634-44', 0, NULL, NULL, '2025-03-16 13:06:26', '2025-03-16 13:06:26'),
(275, 39, NULL, 2, 2, '000008-DF-444', 0, NULL, NULL, '2025-03-20 13:00:21', '2025-03-20 13:00:21'),
(276, 39, NULL, 2, 17, '000008-DF-38', 0, NULL, NULL, '2025-03-20 13:00:22', '2025-03-20 13:00:22'),
(277, 39, NULL, 2, 3, '000008-DF-66', 0, NULL, NULL, '2025-03-20 13:00:22', '2025-03-20 13:00:22'),
(278, 39, NULL, 2, 16, '000008-DF-22', 0, NULL, NULL, '2025-03-20 13:00:22', '2025-03-20 13:00:22'),
(279, 39, NULL, 6, 2, '000008-7634-444', 0, NULL, NULL, '2025-03-20 13:00:22', '2025-03-20 13:00:22'),
(280, 39, NULL, 6, 17, '000008-7634-38', 0, NULL, NULL, '2025-03-20 13:00:22', '2025-03-20 13:00:22'),
(281, 39, NULL, 6, 3, '000008-7634-66', 0, NULL, NULL, '2025-03-20 13:00:22', '2025-03-20 13:00:22'),
(282, 39, NULL, 6, 16, '000008-7634-22', 0, NULL, NULL, '2025-03-20 13:00:22', '2025-03-20 13:00:22'),
(283, 39, NULL, 13, 2, '000008-01-444', 0, NULL, NULL, '2025-03-20 13:00:22', '2025-03-20 13:00:22'),
(284, 39, NULL, 13, 17, '000008-01-38', 0, NULL, NULL, '2025-03-20 13:00:22', '2025-03-20 13:00:22'),
(285, 39, NULL, 13, 3, '000008-01-66', 0, NULL, NULL, '2025-03-20 13:00:23', '2025-03-20 13:00:23'),
(286, 39, NULL, 13, 16, '000008-01-22', 0, NULL, NULL, '2025-03-20 13:00:23', '2025-03-20 13:00:23'),
(287, 39, NULL, 14, 2, '000008-36-444', 0, NULL, NULL, '2025-03-20 13:00:23', '2025-03-20 13:00:23'),
(288, 39, NULL, 14, 17, '000008-36-38', 0, NULL, NULL, '2025-03-20 13:00:23', '2025-03-20 13:00:23'),
(289, 39, NULL, 14, 3, '000008-36-66', 0, NULL, NULL, '2025-03-20 13:00:23', '2025-03-20 13:00:23'),
(290, 39, NULL, 14, 16, '000008-36-22', 0, NULL, NULL, '2025-03-20 13:00:23', '2025-03-20 13:00:23'),
(291, 40, NULL, 6, 2, '000009-7634-444', 0, NULL, NULL, '2025-03-20 13:16:48', '2025-03-20 13:16:48'),
(292, 40, NULL, 6, 17, '000009-7634-38', 0, NULL, NULL, '2025-03-20 13:16:48', '2025-03-20 13:16:48'),
(293, 40, NULL, 6, 3, '000009-7634-66', 0, NULL, NULL, '2025-03-20 13:16:48', '2025-03-20 13:16:48'),
(294, 40, NULL, 6, 16, '000009-7634-22', 0, NULL, NULL, '2025-03-20 13:16:48', '2025-03-20 13:16:48'),
(295, 40, NULL, 2, 2, '000009-DF-444', 0, NULL, NULL, '2025-03-20 13:16:48', '2025-03-20 13:16:48'),
(296, 40, NULL, 2, 17, '000009-DF-38', 0, NULL, NULL, '2025-03-20 13:16:48', '2025-03-20 13:16:48'),
(297, 40, NULL, 2, 3, '000009-DF-66', 0, NULL, NULL, '2025-03-20 13:16:48', '2025-03-20 13:16:48'),
(298, 40, NULL, 2, 16, '000009-DF-22', 0, NULL, NULL, '2025-03-20 13:16:48', '2025-03-20 13:16:48'),
(299, 40, NULL, 14, 2, '000009-36-444', 0, NULL, NULL, '2025-03-20 13:16:48', '2025-03-20 13:16:48'),
(300, 40, NULL, 14, 17, '000009-36-38', 0, NULL, NULL, '2025-03-20 13:16:48', '2025-03-20 13:16:48'),
(301, 40, NULL, 14, 3, '000009-36-66', 0, NULL, NULL, '2025-03-20 13:16:48', '2025-03-20 13:16:48'),
(302, 40, NULL, 14, 16, '000009-36-22', 0, NULL, NULL, '2025-03-20 13:16:48', '2025-03-20 13:16:48'),
(303, 40, NULL, 9, 2, '000009-75-444', 0, NULL, NULL, '2025-03-20 13:16:48', '2025-03-20 13:16:48'),
(304, 40, NULL, 9, 17, '000009-75-38', 0, NULL, NULL, '2025-03-20 13:16:48', '2025-03-20 13:16:48'),
(305, 40, NULL, 9, 3, '000009-75-66', 0, NULL, NULL, '2025-03-20 13:16:48', '2025-03-20 13:16:48'),
(306, 40, NULL, 9, 16, '000009-75-22', 0, NULL, NULL, '2025-03-20 13:16:48', '2025-03-20 13:16:48'),
(307, 40, NULL, 6, 18, '000009-7634-44', 0, NULL, NULL, '2025-03-20 13:32:38', '2025-03-20 13:32:38'),
(308, 40, NULL, 6, 20, '000009-7634-XXXL', 0, NULL, NULL, '2025-03-20 13:32:38', '2025-03-20 13:32:38'),
(309, 40, NULL, 2, 18, '000009-DF-44', 0, NULL, NULL, '2025-03-20 13:32:38', '2025-03-20 13:32:38'),
(310, 40, NULL, 2, 20, '000009-DF-XXXL', 0, NULL, NULL, '2025-03-20 13:32:38', '2025-03-20 13:32:38'),
(311, 40, NULL, 14, 18, '000009-36-44', 0, NULL, NULL, '2025-03-20 13:32:38', '2025-03-20 13:32:38'),
(312, 40, NULL, 14, 20, '000009-36-XXXL', 0, NULL, NULL, '2025-03-20 13:32:38', '2025-03-20 13:32:38'),
(313, 40, NULL, 9, 18, '000009-75-44', 0, NULL, NULL, '2025-03-20 13:32:38', '2025-03-20 13:32:38'),
(314, 40, NULL, 9, 20, '000009-75-XXXL', 0, NULL, NULL, '2025-03-20 13:32:38', '2025-03-20 13:32:38'),
(315, 40, NULL, 6, 20, '000009-7634-0', 0, NULL, NULL, '2025-03-20 13:33:28', '2025-03-20 13:33:28'),
(316, 40, NULL, 2, 20, '000009-DF-0', 0, NULL, NULL, '2025-03-20 13:33:28', '2025-03-20 13:33:28'),
(317, 40, NULL, 14, 20, '000009-36-0', 0, NULL, NULL, '2025-03-20 13:33:28', '2025-03-20 13:33:28'),
(318, 40, NULL, 9, 20, '000009-75-0', 0, NULL, NULL, '2025-03-20 13:33:28', '2025-03-20 13:33:28'),
(319, 41, NULL, 12, 2, '000013-14-444', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(320, 41, NULL, 12, 17, '000013-14-38', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(321, 41, NULL, 12, 3, '000013-14-66', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(322, 41, NULL, 12, 18, '000013-14-44', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(323, 41, NULL, 12, 20, '000013-14-XXXL', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(324, 41, NULL, 2, 2, '000013-DF-444', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(325, 41, NULL, 2, 17, '000013-DF-38', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(326, 41, NULL, 2, 3, '000013-DF-66', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(327, 41, NULL, 2, 18, '000013-DF-44', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(328, 41, NULL, 2, 20, '000013-DF-XXXL', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(329, 41, NULL, 9, 2, '000013-75-444', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(330, 41, NULL, 9, 17, '000013-75-38', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(331, 41, NULL, 9, 3, '000013-75-66', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(332, 41, NULL, 9, 18, '000013-75-44', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(333, 41, NULL, 9, 20, '000013-75-XXXL', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(334, 41, NULL, 6, 2, '000013-7634-444', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(335, 41, NULL, 6, 17, '000013-7634-38', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(336, 41, NULL, 6, 3, '000013-7634-66', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(337, 41, NULL, 6, 18, '000013-7634-44', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(338, 41, NULL, 6, 20, '000013-7634-XXXL', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(339, 41, NULL, 13, 2, '000013-01-444', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(340, 41, NULL, 13, 17, '000013-01-38', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(341, 41, NULL, 13, 3, '000013-01-66', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(342, 41, NULL, 13, 18, '000013-01-44', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(343, 41, NULL, 13, 20, '000013-01-XXXL', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(344, 41, NULL, 7, 2, '000013-7623-444', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(345, 41, NULL, 7, 17, '000013-7623-38', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(346, 41, NULL, 7, 3, '000013-7623-66', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(347, 41, NULL, 7, 18, '000013-7623-44', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(348, 41, NULL, 7, 20, '000013-7623-XXXL', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(349, 41, NULL, 8, 2, '000013-8346-444', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(350, 41, NULL, 8, 17, '000013-8346-38', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(351, 41, NULL, 8, 3, '000013-8346-66', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(352, 41, NULL, 8, 18, '000013-8346-44', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(353, 41, NULL, 8, 20, '000013-8346-XXXL', 0, NULL, NULL, '2025-03-25 11:45:08', '2025-03-25 11:45:08'),
(354, 41, NULL, 12, 20, '000013-14-0', 0, NULL, NULL, '2025-03-25 12:00:13', '2025-03-25 12:00:13'),
(355, 41, NULL, 2, 20, '000013-DF-0', 0, NULL, NULL, '2025-03-25 12:00:13', '2025-03-25 12:00:13'),
(356, 41, NULL, 9, 20, '000013-75-0', 0, NULL, NULL, '2025-03-25 12:00:13', '2025-03-25 12:00:13'),
(357, 41, NULL, 6, 20, '000013-7634-0', 0, NULL, NULL, '2025-03-25 12:00:13', '2025-03-25 12:00:13'),
(358, 41, NULL, 13, 20, '000013-01-0', 0, NULL, NULL, '2025-03-25 12:00:13', '2025-03-25 12:00:13'),
(359, 41, NULL, 7, 20, '000013-7623-0', 0, NULL, NULL, '2025-03-25 12:00:13', '2025-03-25 12:00:13'),
(360, 41, NULL, 8, 20, '000013-8346-0', 0, NULL, NULL, '2025-03-25 12:00:13', '2025-03-25 12:00:13'),
(361, 42, NULL, 16, 2, '000012-87645-444', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(362, 42, NULL, 16, 17, '000012-87645-38', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(363, 42, NULL, 16, 3, '000012-87645-66', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(364, 42, NULL, 16, 16, '000012-87645-22', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(365, 42, NULL, 16, 18, '000012-87645-44', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(366, 42, NULL, 16, 20, '000012-87645-XXXL', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(367, 42, NULL, 17, 2, '000012-1564-444', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(368, 42, NULL, 17, 17, '000012-1564-38', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(369, 42, NULL, 17, 3, '000012-1564-66', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(370, 42, NULL, 17, 16, '000012-1564-22', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(371, 42, NULL, 17, 18, '000012-1564-44', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(372, 42, NULL, 17, 20, '000012-1564-XXXL', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(373, 42, NULL, 5, 2, '000012-3442-444', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(374, 42, NULL, 5, 17, '000012-3442-38', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(375, 42, NULL, 5, 3, '000012-3442-66', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(376, 42, NULL, 5, 16, '000012-3442-22', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(377, 42, NULL, 5, 18, '000012-3442-44', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(378, 42, NULL, 5, 20, '000012-3442-XXXL', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(379, 42, NULL, 18, 2, '000012-1476-444', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(380, 42, NULL, 18, 17, '000012-1476-38', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(381, 42, NULL, 18, 3, '000012-1476-66', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(382, 42, NULL, 18, 16, '000012-1476-22', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(383, 42, NULL, 18, 18, '000012-1476-44', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(384, 42, NULL, 18, 20, '000012-1476-XXXL', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(385, 42, NULL, 6, 2, '000012-7634-444', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(386, 42, NULL, 6, 17, '000012-7634-38', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(387, 42, NULL, 6, 3, '000012-7634-66', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(388, 42, NULL, 6, 16, '000012-7634-22', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(389, 42, NULL, 6, 18, '000012-7634-44', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(390, 42, NULL, 6, 20, '000012-7634-XXXL', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(391, 42, NULL, 14, 2, '000012-36-444', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(392, 42, NULL, 14, 17, '000012-36-38', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(393, 42, NULL, 14, 3, '000012-36-66', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(394, 42, NULL, 14, 16, '000012-36-22', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(395, 42, NULL, 14, 18, '000012-36-44', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(396, 42, NULL, 14, 20, '000012-36-XXXL', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(397, 42, NULL, 2, 2, '000012-DF-444', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(398, 42, NULL, 2, 17, '000012-DF-38', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(399, 42, NULL, 2, 3, '000012-DF-66', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(400, 42, NULL, 2, 16, '000012-DF-22', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(401, 42, NULL, 2, 18, '000012-DF-44', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(402, 42, NULL, 2, 20, '000012-DF-XXXL', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(403, 42, NULL, 19, 2, '000012-5678-444', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(404, 42, NULL, 19, 17, '000012-5678-38', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(405, 42, NULL, 19, 3, '000012-5678-66', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(406, 42, NULL, 19, 16, '000012-5678-22', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(407, 42, NULL, 19, 18, '000012-5678-44', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(408, 42, NULL, 19, 20, '000012-5678-XXXL', 0, NULL, NULL, '2025-03-25 12:02:44', '2025-03-25 12:02:44'),
(409, 43, NULL, 2, 2, '000014-DF-444', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(410, 43, NULL, 2, 17, '000014-DF-38', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(411, 43, NULL, 2, 3, '000014-DF-66', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(412, 43, NULL, 2, 16, '000014-DF-22', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(413, 43, NULL, 2, 18, '000014-DF-44', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(414, 43, NULL, 2, 20, '000014-DF-XXXL', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(415, 43, NULL, 14, 2, '000014-36-444', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(416, 43, NULL, 14, 17, '000014-36-38', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(417, 43, NULL, 14, 3, '000014-36-66', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(418, 43, NULL, 14, 16, '000014-36-22', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(419, 43, NULL, 14, 18, '000014-36-44', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(420, 43, NULL, 14, 20, '000014-36-XXXL', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(421, 43, NULL, 6, 2, '000014-7634-444', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(422, 43, NULL, 6, 17, '000014-7634-38', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(423, 43, NULL, 6, 3, '000014-7634-66', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(424, 43, NULL, 6, 16, '000014-7634-22', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(425, 43, NULL, 6, 18, '000014-7634-44', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(426, 43, NULL, 6, 20, '000014-7634-XXXL', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(427, 43, NULL, 20, 2, '000014-47545-444', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(428, 43, NULL, 20, 17, '000014-47545-38', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(429, 43, NULL, 20, 3, '000014-47545-66', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(430, 43, NULL, 20, 16, '000014-47545-22', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(431, 43, NULL, 20, 18, '000014-47545-44', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(432, 43, NULL, 20, 20, '000014-47545-XXXL', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(433, 43, NULL, 19, 2, '000014-5678-444', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(434, 43, NULL, 19, 17, '000014-5678-38', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(435, 43, NULL, 19, 3, '000014-5678-66', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(436, 43, NULL, 19, 16, '000014-5678-22', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(437, 43, NULL, 19, 18, '000014-5678-44', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(438, 43, NULL, 19, 20, '000014-5678-XXXL', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(439, 43, NULL, 22, 2, '000014-864545-444', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(440, 43, NULL, 22, 17, '000014-864545-38', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(441, 43, NULL, 22, 3, '000014-864545-66', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(442, 43, NULL, 22, 16, '000014-864545-22', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(443, 43, NULL, 22, 18, '000014-864545-44', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(444, 43, NULL, 22, 20, '000014-864545-XXXL', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(445, 43, NULL, 17, 2, '000014-1564-444', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(446, 43, NULL, 17, 17, '000014-1564-38', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(447, 43, NULL, 17, 3, '000014-1564-66', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(448, 43, NULL, 17, 16, '000014-1564-22', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(449, 43, NULL, 17, 18, '000014-1564-44', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(450, 43, NULL, 17, 20, '000014-1564-XXXL', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(451, 43, NULL, 23, 2, '000014-4589-444', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(452, 43, NULL, 23, 17, '000014-4589-38', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(453, 43, NULL, 23, 3, '000014-4589-66', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(454, 43, NULL, 23, 16, '000014-4589-22', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(455, 43, NULL, 23, 18, '000014-4589-44', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(456, 43, NULL, 23, 20, '000014-4589-XXXL', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(457, 43, NULL, 15, 2, '000014-5648-444', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(458, 43, NULL, 15, 17, '000014-5648-38', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(459, 43, NULL, 15, 3, '000014-5648-66', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(460, 43, NULL, 15, 16, '000014-5648-22', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(461, 43, NULL, 15, 18, '000014-5648-44', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(462, 43, NULL, 15, 20, '000014-5648-XXXL', 0, NULL, NULL, '2025-03-25 13:14:05', '2025-03-25 13:14:05'),
(463, 44, NULL, 2, 2, '000014-DF-444', 0, NULL, NULL, '2025-03-25 13:14:06', '2025-03-25 13:14:06'),
(464, 44, NULL, 2, 17, '000014-DF-38', 0, NULL, NULL, '2025-03-25 13:14:06', '2025-03-25 13:14:06'),
(465, 44, NULL, 2, 3, '000014-DF-66', 0, NULL, NULL, '2025-03-25 13:14:06', '2025-03-25 13:14:06'),
(466, 44, NULL, 2, 16, '000014-DF-22', 0, NULL, NULL, '2025-03-25 13:14:06', '2025-03-25 13:14:06'),
(467, 44, NULL, 14, 2, '000014-36-444', 0, NULL, NULL, '2025-03-25 13:14:06', '2025-03-25 13:14:06'),
(468, 44, NULL, 14, 17, '000014-36-38', 0, NULL, NULL, '2025-03-25 13:14:06', '2025-03-25 13:14:06'),
(469, 44, NULL, 14, 3, '000014-36-66', 0, NULL, NULL, '2025-03-25 13:14:06', '2025-03-25 13:14:06'),
(470, 44, NULL, 14, 16, '000014-36-22', 0, NULL, NULL, '2025-03-25 13:14:06', '2025-03-25 13:14:06'),
(471, 44, NULL, 13, 2, '000014-01-444', 0, NULL, NULL, '2025-03-25 13:14:06', '2025-03-25 13:14:06'),
(472, 44, NULL, 13, 17, '000014-01-38', 0, NULL, NULL, '2025-03-25 13:14:06', '2025-03-25 13:14:06'),
(473, 44, NULL, 13, 3, '000014-01-66', 0, NULL, NULL, '2025-03-25 13:14:06', '2025-03-25 13:14:06'),
(474, 44, NULL, 13, 16, '000014-01-22', 0, NULL, NULL, '2025-03-25 13:14:06', '2025-03-25 13:14:06'),
(475, 44, NULL, 9, 2, '000014-75-444', 0, NULL, NULL, '2025-03-25 13:14:06', '2025-03-25 13:14:06'),
(476, 44, NULL, 9, 17, '000014-75-38', 0, NULL, NULL, '2025-03-25 13:14:06', '2025-03-25 13:14:06'),
(477, 44, NULL, 9, 3, '000014-75-66', 0, NULL, NULL, '2025-03-25 13:14:06', '2025-03-25 13:14:06'),
(478, 44, NULL, 9, 16, '000014-75-22', 0, NULL, NULL, '2025-03-25 13:14:06', '2025-03-25 13:14:06'),
(479, 44, NULL, 7, 2, '000014-7623-444', 0, NULL, NULL, '2025-03-25 13:14:06', '2025-03-25 13:14:06'),
(480, 44, NULL, 7, 17, '000014-7623-38', 0, NULL, NULL, '2025-03-25 13:14:06', '2025-03-25 13:14:06'),
(481, 44, NULL, 7, 3, '000014-7623-66', 0, NULL, NULL, '2025-03-25 13:14:06', '2025-03-25 13:14:06'),
(482, 44, NULL, 7, 16, '000014-7623-22', 0, NULL, NULL, '2025-03-25 13:14:06', '2025-03-25 13:14:06'),
(483, 44, NULL, 12, 2, '000014-14-444', 0, NULL, NULL, '2025-03-25 13:14:06', '2025-03-25 13:14:06'),
(484, 44, NULL, 12, 17, '000014-14-38', 0, NULL, NULL, '2025-03-25 13:14:06', '2025-03-25 13:14:06'),
(485, 44, NULL, 12, 3, '000014-14-66', 0, NULL, NULL, '2025-03-25 13:14:06', '2025-03-25 13:14:06'),
(486, 44, NULL, 12, 16, '000014-14-22', 0, NULL, NULL, '2025-03-25 13:14:06', '2025-03-25 13:14:06'),
(487, 44, NULL, 16, 2, '000014-87645-444', 0, NULL, NULL, '2025-03-25 13:14:06', '2025-03-25 13:14:06'),
(488, 44, NULL, 16, 17, '000014-87645-38', 0, NULL, NULL, '2025-03-25 13:14:06', '2025-03-25 13:14:06'),
(489, 44, NULL, 16, 3, '000014-87645-66', 0, NULL, NULL, '2025-03-25 13:14:06', '2025-03-25 13:14:06'),
(490, 44, NULL, 16, 16, '000014-87645-22', 0, NULL, NULL, '2025-03-25 13:14:06', '2025-03-25 13:14:06'),
(491, 45, NULL, 2, 2, '000015-DF-444', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(492, 45, NULL, 2, 17, '000015-DF-38', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(493, 45, NULL, 2, 3, '000015-DF-66', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(494, 45, NULL, 2, 16, '000015-DF-22', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(495, 45, NULL, 2, 18, '000015-DF-44', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(496, 45, NULL, 2, 20, '000015-DF-XXXL', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(497, 45, NULL, 6, 2, '000015-7634-444', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(498, 45, NULL, 6, 17, '000015-7634-38', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(499, 45, NULL, 6, 3, '000015-7634-66', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(500, 45, NULL, 6, 16, '000015-7634-22', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(501, 45, NULL, 6, 18, '000015-7634-44', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(502, 45, NULL, 6, 20, '000015-7634-XXXL', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(503, 45, NULL, 13, 2, '000015-01-444', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(504, 45, NULL, 13, 17, '000015-01-38', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(505, 45, NULL, 13, 3, '000015-01-66', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(506, 45, NULL, 13, 16, '000015-01-22', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(507, 45, NULL, 13, 18, '000015-01-44', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(508, 45, NULL, 13, 20, '000015-01-XXXL', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(509, 45, NULL, 20, 2, '000015-47545-444', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(510, 45, NULL, 20, 17, '000015-47545-38', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(511, 45, NULL, 20, 3, '000015-47545-66', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(512, 45, NULL, 20, 16, '000015-47545-22', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(513, 45, NULL, 20, 18, '000015-47545-44', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(514, 45, NULL, 20, 20, '000015-47545-XXXL', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(515, 45, NULL, 14, 2, '000015-36-444', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(516, 45, NULL, 14, 17, '000015-36-38', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(517, 45, NULL, 14, 3, '000015-36-66', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(518, 45, NULL, 14, 16, '000015-36-22', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(519, 45, NULL, 14, 18, '000015-36-44', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(520, 45, NULL, 14, 20, '000015-36-XXXL', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(521, 45, NULL, 4, 2, '000015-3232-444', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(522, 45, NULL, 4, 17, '000015-3232-38', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(523, 45, NULL, 4, 3, '000015-3232-66', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(524, 45, NULL, 4, 16, '000015-3232-22', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(525, 45, NULL, 4, 18, '000015-3232-44', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(526, 45, NULL, 4, 20, '000015-3232-XXXL', 0, NULL, NULL, '2025-03-25 13:36:56', '2025-03-25 13:36:56'),
(527, 46, NULL, 2, 2, '000016-DF-444', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(528, 46, NULL, 2, 3, '000016-DF-66', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(529, 46, NULL, 2, 16, '000016-DF-22', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(530, 46, NULL, 2, 20, '000016-DF-XXXL', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(531, 46, NULL, 2, 18, '000016-DF-44', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(532, 46, NULL, 2, 17, '000016-DF-38', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(533, 46, NULL, 6, 2, '000016-7634-444', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(534, 46, NULL, 6, 3, '000016-7634-66', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(535, 46, NULL, 6, 16, '000016-7634-22', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(536, 46, NULL, 6, 20, '000016-7634-XXXL', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(537, 46, NULL, 6, 18, '000016-7634-44', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(538, 46, NULL, 6, 17, '000016-7634-38', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(539, 46, NULL, 14, 2, '000016-36-444', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(540, 46, NULL, 14, 3, '000016-36-66', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(541, 46, NULL, 14, 16, '000016-36-22', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(542, 46, NULL, 14, 20, '000016-36-XXXL', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(543, 46, NULL, 14, 18, '000016-36-44', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(544, 46, NULL, 14, 17, '000016-36-38', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(545, 46, NULL, 15, 2, '000016-5648-444', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(546, 46, NULL, 15, 3, '000016-5648-66', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(547, 46, NULL, 15, 16, '000016-5648-22', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(548, 46, NULL, 15, 20, '000016-5648-XXXL', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(549, 46, NULL, 15, 18, '000016-5648-44', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(550, 46, NULL, 15, 17, '000016-5648-38', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(551, 46, NULL, 20, 2, '000016-47545-444', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(552, 46, NULL, 20, 3, '000016-47545-66', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(553, 46, NULL, 20, 16, '000016-47545-22', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(554, 46, NULL, 20, 20, '000016-47545-XXXL', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(555, 46, NULL, 20, 18, '000016-47545-44', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(556, 46, NULL, 20, 17, '000016-47545-38', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(557, 46, NULL, 19, 2, '000016-5678-444', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(558, 46, NULL, 19, 3, '000016-5678-66', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(559, 46, NULL, 19, 16, '000016-5678-22', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(560, 46, NULL, 19, 20, '000016-5678-XXXL', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(561, 46, NULL, 19, 18, '000016-5678-44', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(562, 46, NULL, 19, 17, '000016-5678-38', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(563, 46, NULL, 22, 2, '000016-864545-444', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(564, 46, NULL, 22, 3, '000016-864545-66', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(565, 46, NULL, 22, 16, '000016-864545-22', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(566, 46, NULL, 22, 20, '000016-864545-XXXL', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(567, 46, NULL, 22, 18, '000016-864545-44', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(568, 46, NULL, 22, 17, '000016-864545-38', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(569, 46, NULL, 23, 2, '000016-4589-444', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(570, 46, NULL, 23, 3, '000016-4589-66', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(571, 46, NULL, 23, 16, '000016-4589-22', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(572, 46, NULL, 23, 20, '000016-4589-XXXL', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(573, 46, NULL, 23, 18, '000016-4589-44', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(574, 46, NULL, 23, 17, '000016-4589-38', 0, NULL, NULL, '2025-03-25 13:45:09', '2025-03-25 13:45:09'),
(575, 47, NULL, 2, 2, '000016-DF-444', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(576, 47, NULL, 2, 3, '000016-DF-66', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(577, 47, NULL, 2, 16, '000016-DF-22', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(578, 47, NULL, 2, 20, '000016-DF-XXXL', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(579, 47, NULL, 2, 18, '000016-DF-44', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(580, 47, NULL, 2, 17, '000016-DF-38', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(581, 47, NULL, 6, 2, '000016-7634-444', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(582, 47, NULL, 6, 3, '000016-7634-66', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(583, 47, NULL, 6, 16, '000016-7634-22', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(584, 47, NULL, 6, 20, '000016-7634-XXXL', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(585, 47, NULL, 6, 18, '000016-7634-44', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(586, 47, NULL, 6, 17, '000016-7634-38', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(587, 47, NULL, 14, 2, '000016-36-444', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(588, 47, NULL, 14, 3, '000016-36-66', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(589, 47, NULL, 14, 16, '000016-36-22', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(590, 47, NULL, 14, 20, '000016-36-XXXL', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(591, 47, NULL, 14, 18, '000016-36-44', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(592, 47, NULL, 14, 17, '000016-36-38', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(593, 47, NULL, 15, 2, '000016-5648-444', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(594, 47, NULL, 15, 3, '000016-5648-66', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(595, 47, NULL, 15, 16, '000016-5648-22', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(596, 47, NULL, 15, 20, '000016-5648-XXXL', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(597, 47, NULL, 15, 18, '000016-5648-44', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(598, 47, NULL, 15, 17, '000016-5648-38', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(599, 47, NULL, 20, 2, '000016-47545-444', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(600, 47, NULL, 20, 3, '000016-47545-66', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(601, 47, NULL, 20, 16, '000016-47545-22', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(602, 47, NULL, 20, 20, '000016-47545-XXXL', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(603, 47, NULL, 20, 18, '000016-47545-44', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(604, 47, NULL, 20, 17, '000016-47545-38', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(605, 47, NULL, 19, 2, '000016-5678-444', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(606, 47, NULL, 19, 3, '000016-5678-66', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(607, 47, NULL, 19, 16, '000016-5678-22', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(608, 47, NULL, 19, 20, '000016-5678-XXXL', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(609, 47, NULL, 19, 18, '000016-5678-44', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(610, 47, NULL, 19, 17, '000016-5678-38', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(611, 47, NULL, 22, 2, '000016-864545-444', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(612, 47, NULL, 22, 3, '000016-864545-66', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(613, 47, NULL, 22, 16, '000016-864545-22', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(614, 47, NULL, 22, 20, '000016-864545-XXXL', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(615, 47, NULL, 22, 18, '000016-864545-44', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(616, 47, NULL, 22, 17, '000016-864545-38', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(617, 47, NULL, 23, 2, '000016-4589-444', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(618, 47, NULL, 23, 3, '000016-4589-66', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(619, 47, NULL, 23, 16, '000016-4589-22', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(620, 47, NULL, 23, 20, '000016-4589-XXXL', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(621, 47, NULL, 23, 18, '000016-4589-44', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(622, 47, NULL, 23, 17, '000016-4589-38', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(623, 47, NULL, 17, 2, '000016-1564-444', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(624, 47, NULL, 17, 3, '000016-1564-66', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(625, 47, NULL, 17, 16, '000016-1564-22', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(626, 47, NULL, 17, 20, '000016-1564-XXXL', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(627, 47, NULL, 17, 18, '000016-1564-44', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(628, 47, NULL, 17, 17, '000016-1564-38', 0, NULL, NULL, '2025-03-25 13:45:39', '2025-03-25 13:45:39'),
(629, 36, NULL, 14, 2, '000002-36-444', 0, NULL, NULL, '2025-03-26 06:12:15', '2025-03-26 06:12:15'),
(630, 36, NULL, 14, 3, '000002-36-66', 0, NULL, NULL, '2025-03-26 06:12:15', '2025-03-26 06:12:15'),
(631, 36, NULL, 14, 17, '000002-36-38', 0, NULL, NULL, '2025-03-26 06:12:15', '2025-03-26 06:12:15'),
(632, 36, NULL, 14, 16, '000002-36-22', 0, NULL, NULL, '2025-03-26 06:12:15', '2025-03-26 06:12:15'),
(637, 36, NULL, 4, 2, '000002-3232-444', 0, NULL, NULL, '2025-03-26 06:12:15', '2025-03-26 06:12:15'),
(638, 36, NULL, 4, 3, '000002-3232-66', 0, NULL, NULL, '2025-03-26 06:12:16', '2025-03-26 06:12:16'),
(639, 36, NULL, 4, 17, '000002-3232-38', 0, NULL, NULL, '2025-03-26 06:12:16', '2025-03-26 06:12:16'),
(640, 36, NULL, 4, 16, '000002-3232-22', 0, NULL, NULL, '2025-03-26 06:12:16', '2025-03-26 06:12:16'),
(641, 46, NULL, 2, 20, '000016-DF-0', 0, NULL, NULL, '2025-03-26 06:18:58', '2025-03-26 06:18:58'),
(642, 46, NULL, 6, 20, '000016-7634-0', 0, NULL, NULL, '2025-03-26 06:18:58', '2025-03-26 06:18:58'),
(643, 46, NULL, 14, 20, '000016-36-0', 0, NULL, NULL, '2025-03-26 06:18:58', '2025-03-26 06:18:58'),
(644, 46, NULL, 15, 20, '000016-5648-0', 0, NULL, NULL, '2025-03-26 06:18:58', '2025-03-26 06:18:58'),
(645, 46, NULL, 20, 20, '000016-47545-0', 0, NULL, NULL, '2025-03-26 06:18:58', '2025-03-26 06:18:58'),
(646, 46, NULL, 19, 20, '000016-5678-0', 0, NULL, NULL, '2025-03-26 06:18:58', '2025-03-26 06:18:58'),
(647, 46, NULL, 22, 20, '000016-864545-0', 0, NULL, NULL, '2025-03-26 06:18:58', '2025-03-26 06:18:58'),
(648, 46, NULL, 23, 20, '000016-4589-0', 0, NULL, NULL, '2025-03-26 06:18:58', '2025-03-26 06:18:58'),
(649, 48, NULL, 2, 2, '000017-DF-444', 0, NULL, NULL, '2025-03-26 06:31:06', '2025-03-26 06:31:06'),
(650, 48, NULL, 2, 17, '000017-DF-38', 0, NULL, NULL, '2025-03-26 06:31:06', '2025-03-26 06:31:06'),
(651, 48, NULL, 2, 3, '000017-DF-66', 0, NULL, NULL, '2025-03-26 06:31:06', '2025-03-26 06:31:06'),
(652, 48, NULL, 2, 16, '000017-DF-22', 0, NULL, NULL, '2025-03-26 06:31:06', '2025-03-26 06:31:06'),
(653, 48, NULL, 14, 2, '000017-36-444', 0, NULL, NULL, '2025-03-26 06:31:06', '2025-03-26 06:31:06'),
(654, 48, NULL, 14, 17, '000017-36-38', 0, NULL, NULL, '2025-03-26 06:31:06', '2025-03-26 06:31:06'),
(655, 48, NULL, 14, 3, '000017-36-66', 0, NULL, NULL, '2025-03-26 06:31:06', '2025-03-26 06:31:06'),
(656, 48, NULL, 14, 16, '000017-36-22', 0, NULL, NULL, '2025-03-26 06:31:06', '2025-03-26 06:31:06'),
(657, 48, NULL, 19, 2, '000017-5678-444', 0, NULL, NULL, '2025-03-26 06:31:06', '2025-03-26 06:31:06'),
(658, 48, NULL, 19, 17, '000017-5678-38', 0, NULL, NULL, '2025-03-26 06:31:06', '2025-03-26 06:31:06'),
(659, 48, NULL, 19, 3, '000017-5678-66', 0, NULL, NULL, '2025-03-26 06:31:06', '2025-03-26 06:31:06'),
(660, 48, NULL, 19, 16, '000017-5678-22', 0, NULL, NULL, '2025-03-26 06:31:06', '2025-03-26 06:31:06'),
(661, 48, NULL, 20, 2, '000017-47545-444', 0, NULL, NULL, '2025-03-26 06:31:06', '2025-03-26 06:31:06'),
(662, 48, NULL, 20, 17, '000017-47545-38', 0, NULL, NULL, '2025-03-26 06:31:06', '2025-03-26 06:31:06'),
(663, 48, NULL, 20, 3, '000017-47545-66', 0, NULL, NULL, '2025-03-26 06:31:06', '2025-03-26 06:31:06'),
(664, 48, NULL, 20, 16, '000017-47545-22', 0, NULL, NULL, '2025-03-26 06:31:06', '2025-03-26 06:31:06'),
(665, 48, NULL, 15, 2, '000017-5648-444', 0, NULL, NULL, '2025-03-26 06:31:06', '2025-03-26 06:31:06'),
(666, 48, NULL, 15, 17, '000017-5648-38', 0, NULL, NULL, '2025-03-26 06:31:06', '2025-03-26 06:31:06'),
(667, 48, NULL, 15, 3, '000017-5648-66', 0, NULL, NULL, '2025-03-26 06:31:06', '2025-03-26 06:31:06'),
(668, 48, NULL, 15, 16, '000017-5648-22', 0, NULL, NULL, '2025-03-26 06:31:06', '2025-03-26 06:31:06'),
(669, 49, NULL, 6, 2, '000018-7634-444', 0, NULL, NULL, '2025-03-26 09:20:50', '2025-03-26 09:20:50'),
(670, 49, NULL, 6, 17, '000018-7634-38', 0, NULL, NULL, '2025-03-26 09:20:50', '2025-03-26 09:20:50'),
(671, 49, NULL, 6, 3, '000018-7634-66', 0, NULL, NULL, '2025-03-26 09:20:50', '2025-03-26 09:20:50'),
(672, 49, NULL, 6, 16, '000018-7634-22', 0, NULL, NULL, '2025-03-26 09:20:50', '2025-03-26 09:20:50'),
(673, 49, NULL, 6, 18, '000018-7634-44', 0, NULL, NULL, '2025-03-26 09:20:50', '2025-03-26 09:20:50'),
(674, 49, NULL, 6, 20, '000018-7634-XXXL', 0, NULL, NULL, '2025-03-26 09:20:50', '2025-03-26 09:20:50'),
(675, 49, NULL, 2, 2, '000018-DF-444', 0, NULL, NULL, '2025-03-26 09:20:50', '2025-03-26 09:20:50'),
(676, 49, NULL, 2, 17, '000018-DF-38', 0, NULL, NULL, '2025-03-26 09:20:50', '2025-03-26 09:20:50'),
(677, 49, NULL, 2, 3, '000018-DF-66', 0, NULL, NULL, '2025-03-26 09:20:50', '2025-03-26 09:20:50'),
(678, 49, NULL, 2, 16, '000018-DF-22', 0, NULL, NULL, '2025-03-26 09:20:50', '2025-03-26 09:20:50'),
(679, 49, NULL, 2, 18, '000018-DF-44', 0, NULL, NULL, '2025-03-26 09:20:50', '2025-03-26 09:20:50'),
(680, 49, NULL, 2, 20, '000018-DF-XXXL', 0, NULL, NULL, '2025-03-26 09:20:50', '2025-03-26 09:20:50'),
(681, 49, NULL, 14, 2, '000018-36-444', 0, NULL, NULL, '2025-03-26 09:20:50', '2025-03-26 09:20:50'),
(682, 49, NULL, 14, 17, '000018-36-38', 0, NULL, NULL, '2025-03-26 09:20:50', '2025-03-26 09:20:50'),
(683, 49, NULL, 14, 3, '000018-36-66', 0, NULL, NULL, '2025-03-26 09:20:50', '2025-03-26 09:20:50'),
(684, 49, NULL, 14, 16, '000018-36-22', 0, NULL, NULL, '2025-03-26 09:20:50', '2025-03-26 09:20:50'),
(685, 49, NULL, 14, 18, '000018-36-44', 0, NULL, NULL, '2025-03-26 09:20:50', '2025-03-26 09:20:50'),
(686, 49, NULL, 14, 20, '000018-36-XXXL', 0, NULL, NULL, '2025-03-26 09:20:50', '2025-03-26 09:20:50'),
(693, 49, NULL, 17, 2, '000018-1564-444', 0, NULL, NULL, '2025-03-26 09:20:50', '2025-03-26 09:20:50'),
(694, 49, NULL, 17, 17, '000018-1564-38', 0, NULL, NULL, '2025-03-26 09:20:50', '2025-03-26 09:20:50'),
(695, 49, NULL, 17, 3, '000018-1564-66', 0, NULL, NULL, '2025-03-26 09:20:50', '2025-03-26 09:20:50'),
(696, 49, NULL, 17, 16, '000018-1564-22', 0, NULL, NULL, '2025-03-26 09:20:50', '2025-03-26 09:20:50'),
(697, 49, NULL, 17, 18, '000018-1564-44', 0, NULL, NULL, '2025-03-26 09:20:50', '2025-03-26 09:20:50'),
(698, 49, NULL, 17, 20, '000018-1564-XXXL', 0, NULL, NULL, '2025-03-26 09:20:50', '2025-03-26 09:20:50'),
(699, 49, NULL, 4, 2, '000018-3232-444', 0, NULL, NULL, '2025-03-26 09:20:50', '2025-03-26 09:20:50'),
(700, 49, NULL, 4, 17, '000018-3232-38', 0, NULL, NULL, '2025-03-26 09:20:50', '2025-03-26 09:20:50'),
(701, 49, NULL, 4, 3, '000018-3232-66', 0, NULL, NULL, '2025-03-26 09:20:50', '2025-03-26 09:20:50'),
(702, 49, NULL, 4, 16, '000018-3232-22', 0, NULL, NULL, '2025-03-26 09:20:50', '2025-03-26 09:20:50'),
(703, 49, NULL, 4, 18, '000018-3232-44', 0, NULL, NULL, '2025-03-26 09:20:50', '2025-03-26 09:20:50'),
(704, 49, NULL, 4, 20, '000018-3232-XXXL', 0, NULL, NULL, '2025-03-26 09:20:50', '2025-03-26 09:20:50'),
(705, 49, NULL, 6, 20, '000018-7634-0', 0, NULL, NULL, '2025-03-26 09:23:39', '2025-03-26 09:23:39'),
(706, 49, NULL, 2, 20, '000018-DF-0', 0, NULL, NULL, '2025-03-26 09:23:39', '2025-03-26 09:23:39'),
(707, 49, NULL, 14, 20, '000018-36-0', 0, NULL, NULL, '2025-03-26 09:23:39', '2025-03-26 09:23:39'),
(709, 49, NULL, 17, 20, '000018-1564-0', 0, NULL, NULL, '2025-03-26 09:23:39', '2025-03-26 09:23:39'),
(710, 49, NULL, 4, 20, '000018-3232-0', 0, NULL, NULL, '2025-03-26 09:23:39', '2025-03-26 09:23:39'),
(711, 50, NULL, 6, 2, '000019-7634-444', 0, NULL, NULL, '2025-03-26 09:29:19', '2025-03-26 09:29:19'),
(712, 50, NULL, 6, 17, '000019-7634-38', 0, NULL, NULL, '2025-03-26 09:29:19', '2025-03-26 09:29:19'),
(713, 50, NULL, 6, 3, '000019-7634-66', 0, NULL, NULL, '2025-03-26 09:29:20', '2025-03-26 09:29:20'),
(714, 50, NULL, 6, 16, '000019-7634-22', 0, NULL, NULL, '2025-03-26 09:29:20', '2025-03-26 09:29:20'),
(715, 50, NULL, 2, 2, '000019-DF-444', 0, NULL, NULL, '2025-03-26 09:29:20', '2025-03-26 09:29:20'),
(716, 50, NULL, 2, 17, '000019-DF-38', 0, NULL, NULL, '2025-03-26 09:29:20', '2025-03-26 09:29:20');
INSERT INTO `product_variations` (`id`, `product_id`, `variation_id`, `color_id`, `size_id`, `sku_code`, `visible`, `group_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(717, 50, NULL, 2, 3, '000019-DF-66', 0, NULL, NULL, '2025-03-26 09:29:20', '2025-03-26 09:29:20'),
(718, 50, NULL, 2, 16, '000019-DF-22', 0, NULL, NULL, '2025-03-26 09:29:20', '2025-03-26 09:29:20'),
(719, 50, NULL, 14, 2, '000019-36-444', 0, NULL, NULL, '2025-03-26 09:29:20', '2025-03-26 09:29:20'),
(720, 50, NULL, 14, 17, '000019-36-38', 0, NULL, NULL, '2025-03-26 09:29:20', '2025-03-26 09:29:20'),
(721, 50, NULL, 14, 3, '000019-36-66', 0, NULL, NULL, '2025-03-26 09:29:20', '2025-03-26 09:29:20'),
(722, 50, NULL, 14, 16, '000019-36-22', 0, NULL, NULL, '2025-03-26 09:29:20', '2025-03-26 09:29:20'),
(727, 50, NULL, 17, 2, '000019-1564-444', 0, NULL, NULL, '2025-03-26 09:29:20', '2025-03-26 09:29:20'),
(728, 50, NULL, 17, 17, '000019-1564-38', 0, NULL, NULL, '2025-03-26 09:29:20', '2025-03-26 09:29:20'),
(729, 50, NULL, 17, 3, '000019-1564-66', 0, NULL, NULL, '2025-03-26 09:29:20', '2025-03-26 09:29:20'),
(730, 50, NULL, 17, 16, '000019-1564-22', 0, NULL, NULL, '2025-03-26 09:29:20', '2025-03-26 09:29:20'),
(731, 50, NULL, 4, 2, '000019-3232-444', 0, NULL, NULL, '2025-03-26 09:29:20', '2025-03-26 09:29:20'),
(732, 50, NULL, 4, 17, '000019-3232-38', 0, NULL, NULL, '2025-03-26 09:29:20', '2025-03-26 09:29:20'),
(733, 50, NULL, 4, 3, '000019-3232-66', 0, NULL, NULL, '2025-03-26 09:29:20', '2025-03-26 09:29:20'),
(734, 50, NULL, 4, 16, '000019-3232-22', 0, NULL, NULL, '2025-03-26 09:29:20', '2025-03-26 09:29:20'),
(735, 39, NULL, 12, 2, '000008-14-444', 0, NULL, NULL, '2025-03-26 09:33:54', '2025-03-26 09:33:54'),
(736, 39, NULL, 12, 17, '000008-14-38', 0, NULL, NULL, '2025-03-26 09:33:54', '2025-03-26 09:33:54'),
(737, 39, NULL, 12, 3, '000008-14-66', 0, NULL, NULL, '2025-03-26 09:33:54', '2025-03-26 09:33:54'),
(738, 39, NULL, 12, 16, '000008-14-22', 0, NULL, NULL, '2025-03-26 09:33:54', '2025-03-26 09:33:54'),
(739, 39, NULL, 23, 2, '000008-4589-444', 0, NULL, NULL, '2025-03-26 09:33:54', '2025-03-26 09:33:54'),
(740, 39, NULL, 23, 17, '000008-4589-38', 0, NULL, NULL, '2025-03-26 09:33:54', '2025-03-26 09:33:54'),
(741, 39, NULL, 23, 3, '000008-4589-66', 0, NULL, NULL, '2025-03-26 09:33:54', '2025-03-26 09:33:54'),
(742, 39, NULL, 23, 16, '000008-4589-22', 0, NULL, NULL, '2025-03-26 09:33:54', '2025-03-26 09:33:54'),
(747, 51, NULL, 4, 2, '000021-3232-444', 0, NULL, NULL, '2025-03-26 10:54:38', '2025-03-26 10:54:38'),
(748, 51, NULL, 4, 17, '000021-3232-38', 0, NULL, NULL, '2025-03-26 10:54:38', '2025-03-26 10:54:38'),
(749, 51, NULL, 4, 3, '000021-3232-66', 0, NULL, NULL, '2025-03-26 10:54:38', '2025-03-26 10:54:38'),
(750, 51, NULL, 4, 16, '000021-3232-22', 0, NULL, NULL, '2025-03-26 10:54:38', '2025-03-26 10:54:38'),
(751, 51, NULL, 8, 2, '000021-8346-444', 0, NULL, NULL, '2025-03-26 10:54:38', '2025-03-26 10:54:38'),
(752, 51, NULL, 8, 17, '000021-8346-38', 0, NULL, NULL, '2025-03-26 10:54:38', '2025-03-26 10:54:38'),
(753, 51, NULL, 8, 3, '000021-8346-66', 0, NULL, NULL, '2025-03-26 10:54:38', '2025-03-26 10:54:38'),
(754, 51, NULL, 8, 16, '000021-8346-22', 0, NULL, NULL, '2025-03-26 10:54:38', '2025-03-26 10:54:38'),
(755, 51, NULL, 2, 2, '000021-DF-444', 0, NULL, NULL, '2025-03-26 10:54:38', '2025-03-26 10:54:38'),
(756, 51, NULL, 2, 17, '000021-DF-38', 0, NULL, NULL, '2025-03-26 10:54:38', '2025-03-26 10:54:38'),
(757, 51, NULL, 2, 3, '000021-DF-66', 0, NULL, NULL, '2025-03-26 10:54:38', '2025-03-26 10:54:38'),
(758, 51, NULL, 2, 16, '000021-DF-22', 0, NULL, NULL, '2025-03-26 10:54:38', '2025-03-26 10:54:38'),
(759, 52, NULL, 12, 2, '000022-14-444', 0, NULL, NULL, '2025-03-26 11:27:22', '2025-03-26 11:27:22'),
(760, 52, NULL, 12, 17, '000022-14-38', 0, NULL, NULL, '2025-03-26 11:27:22', '2025-03-26 11:27:22'),
(761, 52, NULL, 12, 3, '000022-14-66', 0, NULL, NULL, '2025-03-26 11:27:23', '2025-03-26 11:27:23'),
(762, 52, NULL, 12, 16, '000022-14-22', 0, NULL, NULL, '2025-03-26 11:27:23', '2025-03-26 11:27:23'),
(763, 52, NULL, 2, 2, '000022-DF-444', 0, NULL, NULL, '2025-03-26 11:27:23', '2025-03-26 11:27:23'),
(764, 52, NULL, 2, 17, '000022-DF-38', 0, NULL, NULL, '2025-03-26 11:27:23', '2025-03-26 11:27:23'),
(765, 52, NULL, 2, 3, '000022-DF-66', 0, NULL, NULL, '2025-03-26 11:27:23', '2025-03-26 11:27:23'),
(766, 52, NULL, 2, 16, '000022-DF-22', 0, NULL, NULL, '2025-03-26 11:27:23', '2025-03-26 11:27:23'),
(767, 52, NULL, 19, 2, '000022-5678-444', 0, NULL, NULL, '2025-03-26 11:27:23', '2025-03-26 11:27:23'),
(768, 52, NULL, 19, 17, '000022-5678-38', 0, NULL, NULL, '2025-03-26 11:27:23', '2025-03-26 11:27:23'),
(769, 52, NULL, 19, 3, '000022-5678-66', 0, NULL, NULL, '2025-03-26 11:27:23', '2025-03-26 11:27:23'),
(770, 52, NULL, 19, 16, '000022-5678-22', 0, NULL, NULL, '2025-03-26 11:27:23', '2025-03-26 11:27:23'),
(771, 53, NULL, 19, 2, '000023-5678-444', 0, NULL, NULL, '2025-03-26 11:32:02', '2025-03-26 11:32:02'),
(772, 53, NULL, 19, 17, '000023-5678-38', 0, NULL, NULL, '2025-03-26 11:32:02', '2025-03-26 11:32:02'),
(773, 53, NULL, 19, 3, '000023-5678-66', 0, NULL, NULL, '2025-03-26 11:32:02', '2025-03-26 11:32:02'),
(774, 53, NULL, 19, 16, '000023-5678-22', 0, NULL, NULL, '2025-03-26 11:32:02', '2025-03-26 11:32:02'),
(775, 53, NULL, 2, 2, '000023-DF-444', 0, NULL, NULL, '2025-03-26 11:32:02', '2025-03-26 11:32:02'),
(776, 53, NULL, 2, 17, '000023-DF-38', 0, NULL, NULL, '2025-03-26 11:32:02', '2025-03-26 11:32:02'),
(777, 53, NULL, 2, 3, '000023-DF-66', 0, NULL, NULL, '2025-03-26 11:32:02', '2025-03-26 11:32:02'),
(778, 53, NULL, 2, 16, '000023-DF-22', 0, NULL, NULL, '2025-03-26 11:32:02', '2025-03-26 11:32:02'),
(779, 53, NULL, 6, 2, '000023-7634-444', 0, NULL, NULL, '2025-03-26 11:32:02', '2025-03-26 11:32:02'),
(780, 53, NULL, 6, 17, '000023-7634-38', 0, NULL, NULL, '2025-03-26 11:32:02', '2025-03-26 11:32:02'),
(781, 53, NULL, 6, 3, '000023-7634-66', 0, NULL, NULL, '2025-03-26 11:32:02', '2025-03-26 11:32:02'),
(782, 53, NULL, 6, 16, '000023-7634-22', 0, NULL, NULL, '2025-03-26 11:32:02', '2025-03-26 11:32:02'),
(783, 53, NULL, 12, 2, '000023-14-444', 0, NULL, NULL, '2025-03-26 11:32:02', '2025-03-26 11:32:02'),
(784, 53, NULL, 12, 17, '000023-14-38', 0, NULL, NULL, '2025-03-26 11:32:02', '2025-03-26 11:32:02'),
(785, 53, NULL, 12, 3, '000023-14-66', 0, NULL, NULL, '2025-03-26 11:32:02', '2025-03-26 11:32:02'),
(786, 53, NULL, 12, 16, '000023-14-22', 0, NULL, NULL, '2025-03-26 11:32:02', '2025-03-26 11:32:02'),
(787, 54, NULL, 2, 2, '000101-DF-444', 0, NULL, NULL, '2025-03-26 11:52:19', '2025-03-26 11:52:19'),
(788, 54, NULL, 2, 17, '000101-DF-38', 0, NULL, NULL, '2025-03-26 11:52:19', '2025-03-26 11:52:19'),
(789, 54, NULL, 2, 3, '000101-DF-66', 0, NULL, NULL, '2025-03-26 11:52:19', '2025-03-26 11:52:19'),
(790, 54, NULL, 2, 16, '000101-DF-22', 0, NULL, NULL, '2025-03-26 11:52:19', '2025-03-26 11:52:19'),
(791, 54, NULL, 2, 18, '000101-DF-44', 0, NULL, NULL, '2025-03-26 11:52:19', '2025-03-26 11:52:19'),
(792, 54, NULL, 12, 2, '000101-14-444', 0, NULL, NULL, '2025-03-26 11:52:19', '2025-03-26 11:52:19'),
(793, 54, NULL, 12, 17, '000101-14-38', 0, NULL, NULL, '2025-03-26 11:52:19', '2025-03-26 11:52:19'),
(794, 54, NULL, 12, 3, '000101-14-66', 0, NULL, NULL, '2025-03-26 11:52:19', '2025-03-26 11:52:19'),
(795, 54, NULL, 12, 16, '000101-14-22', 0, NULL, NULL, '2025-03-26 11:52:19', '2025-03-26 11:52:19'),
(796, 54, NULL, 12, 18, '000101-14-44', 0, NULL, NULL, '2025-03-26 11:52:19', '2025-03-26 11:52:19'),
(797, 55, NULL, 2, 2, '000102-DF-444', 0, NULL, NULL, '2025-03-26 11:55:54', '2025-03-26 11:55:54'),
(798, 55, NULL, 2, 17, '000102-DF-38', 0, NULL, NULL, '2025-03-26 11:55:54', '2025-03-26 11:55:54'),
(799, 55, NULL, 2, 3, '000102-DF-66', 0, NULL, NULL, '2025-03-26 11:55:54', '2025-03-26 11:55:54'),
(800, 55, NULL, 2, 16, '000102-DF-22', 0, NULL, NULL, '2025-03-26 11:55:54', '2025-03-26 11:55:54'),
(801, 55, NULL, 2, 18, '000102-DF-44', 0, NULL, NULL, '2025-03-26 11:55:54', '2025-03-26 11:55:54'),
(802, 55, NULL, 6, 2, '000102-7634-444', 0, NULL, NULL, '2025-03-26 11:55:54', '2025-03-26 11:55:54'),
(803, 55, NULL, 6, 17, '000102-7634-38', 0, NULL, NULL, '2025-03-26 11:55:54', '2025-03-26 11:55:54'),
(804, 55, NULL, 6, 3, '000102-7634-66', 0, NULL, NULL, '2025-03-26 11:55:54', '2025-03-26 11:55:54'),
(805, 55, NULL, 6, 16, '000102-7634-22', 0, NULL, NULL, '2025-03-26 11:55:54', '2025-03-26 11:55:54'),
(806, 55, NULL, 6, 18, '000102-7634-44', 0, NULL, NULL, '2025-03-26 11:55:54', '2025-03-26 11:55:54'),
(807, 56, NULL, 6, 2, '000103-7634-444', 0, NULL, NULL, '2025-03-26 12:04:46', '2025-03-26 12:04:46'),
(808, 56, NULL, 6, 17, '000103-7634-38', 0, NULL, NULL, '2025-03-26 12:04:46', '2025-03-26 12:04:46'),
(809, 56, NULL, 6, 3, '000103-7634-66', 0, NULL, NULL, '2025-03-26 12:04:46', '2025-03-26 12:04:46'),
(810, 56, NULL, 6, 16, '000103-7634-22', 0, NULL, NULL, '2025-03-26 12:04:46', '2025-03-26 12:04:46'),
(811, 56, NULL, 6, 18, '000103-7634-44', 0, NULL, NULL, '2025-03-26 12:04:46', '2025-03-26 12:04:46'),
(812, 56, NULL, 2, 2, '000103-DF-444', 0, NULL, NULL, '2025-03-26 12:04:46', '2025-03-26 12:04:46'),
(813, 56, NULL, 2, 17, '000103-DF-38', 0, NULL, NULL, '2025-03-26 12:04:46', '2025-03-26 12:04:46'),
(814, 56, NULL, 2, 3, '000103-DF-66', 0, NULL, NULL, '2025-03-26 12:04:46', '2025-03-26 12:04:46'),
(815, 56, NULL, 2, 16, '000103-DF-22', 0, NULL, NULL, '2025-03-26 12:04:46', '2025-03-26 12:04:46'),
(816, 56, NULL, 2, 18, '000103-DF-44', 0, NULL, NULL, '2025-03-26 12:04:46', '2025-03-26 12:04:46'),
(817, 57, NULL, 2, 2, '000103-DF-444', 0, NULL, NULL, '2025-03-26 12:04:53', '2025-03-26 12:04:53'),
(818, 57, NULL, 2, 17, '000103-DF-38', 0, NULL, NULL, '2025-03-26 12:04:53', '2025-03-26 12:04:53'),
(819, 57, NULL, 2, 3, '000103-DF-66', 0, NULL, NULL, '2025-03-26 12:04:53', '2025-03-26 12:04:53'),
(820, 57, NULL, 2, 16, '000103-DF-22', 0, NULL, NULL, '2025-03-26 12:04:53', '2025-03-26 12:04:53'),
(821, 57, NULL, 2, 18, '000103-DF-44', 0, NULL, NULL, '2025-03-26 12:04:53', '2025-03-26 12:04:53'),
(822, 57, NULL, 12, 2, '000103-14-444', 0, NULL, NULL, '2025-03-26 12:04:53', '2025-03-26 12:04:53'),
(823, 57, NULL, 12, 17, '000103-14-38', 0, NULL, NULL, '2025-03-26 12:04:53', '2025-03-26 12:04:53'),
(824, 57, NULL, 12, 3, '000103-14-66', 0, NULL, NULL, '2025-03-26 12:04:53', '2025-03-26 12:04:53'),
(825, 57, NULL, 12, 16, '000103-14-22', 0, NULL, NULL, '2025-03-26 12:04:53', '2025-03-26 12:04:53'),
(826, 57, NULL, 12, 18, '000103-14-44', 0, NULL, NULL, '2025-03-26 12:04:53', '2025-03-26 12:04:53'),
(827, 58, NULL, 2, 2, '000104-DF-444', 0, NULL, NULL, '2025-03-26 12:13:52', '2025-03-26 12:13:52'),
(828, 58, NULL, 2, 17, '000104-DF-38', 0, NULL, NULL, '2025-03-26 12:13:52', '2025-03-26 12:13:52'),
(829, 58, NULL, 2, 3, '000104-DF-66', 0, NULL, NULL, '2025-03-26 12:13:52', '2025-03-26 12:13:52'),
(830, 58, NULL, 2, 16, '000104-DF-22', 0, NULL, NULL, '2025-03-26 12:13:52', '2025-03-26 12:13:52'),
(831, 58, NULL, 2, 18, '000104-DF-44', 0, NULL, NULL, '2025-03-26 12:13:52', '2025-03-26 12:13:52'),
(832, 58, NULL, 12, 2, '000104-14-444', 0, NULL, NULL, '2025-03-26 12:13:52', '2025-03-26 12:13:52'),
(833, 58, NULL, 12, 17, '000104-14-38', 0, NULL, NULL, '2025-03-26 12:13:52', '2025-03-26 12:13:52'),
(834, 58, NULL, 12, 3, '000104-14-66', 0, NULL, NULL, '2025-03-26 12:13:52', '2025-03-26 12:13:52'),
(835, 58, NULL, 12, 16, '000104-14-22', 0, NULL, NULL, '2025-03-26 12:13:52', '2025-03-26 12:13:52'),
(836, 58, NULL, 12, 18, '000104-14-44', 0, NULL, NULL, '2025-03-26 12:13:52', '2025-03-26 12:13:52'),
(837, 59, NULL, 6, 2, '000105-7634-444', 0, NULL, NULL, '2025-03-26 12:26:51', '2025-03-26 12:26:51'),
(838, 59, NULL, 6, 17, '000105-7634-38', 0, NULL, NULL, '2025-03-26 12:26:51', '2025-03-26 12:26:51'),
(839, 59, NULL, 6, 3, '000105-7634-66', 0, NULL, NULL, '2025-03-26 12:26:51', '2025-03-26 12:26:51'),
(840, 59, NULL, 6, 16, '000105-7634-22', 0, NULL, NULL, '2025-03-26 12:26:51', '2025-03-26 12:26:51'),
(841, 59, NULL, 6, 18, '000105-7634-44', 0, NULL, NULL, '2025-03-26 12:26:51', '2025-03-26 12:26:51'),
(842, 59, NULL, 2, 2, '000105-DF-444', 0, NULL, NULL, '2025-03-26 12:26:51', '2025-03-26 12:26:51'),
(843, 59, NULL, 2, 17, '000105-DF-38', 0, NULL, NULL, '2025-03-26 12:26:51', '2025-03-26 12:26:51'),
(844, 59, NULL, 2, 3, '000105-DF-66', 0, NULL, NULL, '2025-03-26 12:26:51', '2025-03-26 12:26:51'),
(845, 59, NULL, 2, 16, '000105-DF-22', 0, NULL, NULL, '2025-03-26 12:26:51', '2025-03-26 12:26:51'),
(846, 59, NULL, 2, 18, '000105-DF-44', 0, NULL, NULL, '2025-03-26 12:26:51', '2025-03-26 12:26:51'),
(847, 59, NULL, 12, 2, '000105-14-444', 0, NULL, NULL, '2025-03-26 12:26:51', '2025-03-26 12:26:51'),
(848, 59, NULL, 12, 17, '000105-14-38', 0, NULL, NULL, '2025-03-26 12:26:51', '2025-03-26 12:26:51'),
(849, 59, NULL, 12, 3, '000105-14-66', 0, NULL, NULL, '2025-03-26 12:26:51', '2025-03-26 12:26:51'),
(850, 59, NULL, 12, 16, '000105-14-22', 0, NULL, NULL, '2025-03-26 12:26:51', '2025-03-26 12:26:51'),
(851, 59, NULL, 12, 18, '000105-14-44', 0, NULL, NULL, '2025-03-26 12:26:51', '2025-03-26 12:26:51'),
(852, 60, NULL, 14, 2, '000107-36-444', 0, NULL, NULL, '2025-03-26 12:34:14', '2025-03-26 12:34:14'),
(853, 60, NULL, 14, 17, '000107-36-38', 0, NULL, NULL, '2025-03-26 12:34:14', '2025-03-26 12:34:14'),
(854, 60, NULL, 14, 3, '000107-36-66', 0, NULL, NULL, '2025-03-26 12:34:14', '2025-03-26 12:34:14'),
(855, 60, NULL, 14, 16, '000107-36-22', 0, NULL, NULL, '2025-03-26 12:34:14', '2025-03-26 12:34:14'),
(856, 60, NULL, 14, 18, '000107-36-44', 0, NULL, NULL, '2025-03-26 12:34:14', '2025-03-26 12:34:14'),
(857, 60, NULL, 12, 2, '000107-14-444', 0, NULL, NULL, '2025-03-26 12:34:14', '2025-03-26 12:34:14'),
(858, 60, NULL, 12, 17, '000107-14-38', 0, NULL, NULL, '2025-03-26 12:34:14', '2025-03-26 12:34:14'),
(859, 60, NULL, 12, 3, '000107-14-66', 0, NULL, NULL, '2025-03-26 12:34:14', '2025-03-26 12:34:14'),
(860, 60, NULL, 12, 16, '000107-14-22', 0, NULL, NULL, '2025-03-26 12:34:14', '2025-03-26 12:34:14'),
(861, 60, NULL, 12, 18, '000107-14-44', 0, NULL, NULL, '2025-03-26 12:34:14', '2025-03-26 12:34:14'),
(862, 61, NULL, 6, 2, '000108-7634-444', 0, NULL, NULL, '2025-03-26 12:47:03', '2025-03-26 12:47:03'),
(863, 61, NULL, 6, 17, '000108-7634-38', 0, NULL, NULL, '2025-03-26 12:47:03', '2025-03-26 12:47:03'),
(864, 61, NULL, 6, 3, '000108-7634-66', 0, NULL, NULL, '2025-03-26 12:47:03', '2025-03-26 12:47:03'),
(865, 61, NULL, 6, 16, '000108-7634-22', 0, NULL, NULL, '2025-03-26 12:47:03', '2025-03-26 12:47:03'),
(866, 61, NULL, 6, 18, '000108-7634-44', 0, NULL, NULL, '2025-03-26 12:47:03', '2025-03-26 12:47:03'),
(867, 61, NULL, 12, 2, '000108-14-444', 0, NULL, NULL, '2025-03-26 12:47:03', '2025-03-26 12:47:03'),
(868, 61, NULL, 12, 17, '000108-14-38', 0, NULL, NULL, '2025-03-26 12:47:03', '2025-03-26 12:47:03'),
(869, 61, NULL, 12, 3, '000108-14-66', 0, NULL, NULL, '2025-03-26 12:47:03', '2025-03-26 12:47:03'),
(870, 61, NULL, 12, 16, '000108-14-22', 0, NULL, NULL, '2025-03-26 12:47:04', '2025-03-26 12:47:04'),
(871, 61, NULL, 12, 18, '000108-14-44', 0, NULL, NULL, '2025-03-26 12:47:04', '2025-03-26 12:47:04'),
(872, 62, NULL, 6, 2, '000110-7634-444', 0, NULL, NULL, '2025-03-26 12:56:24', '2025-03-26 12:56:24'),
(873, 62, NULL, 6, 17, '000110-7634-38', 0, NULL, NULL, '2025-03-26 12:56:24', '2025-03-26 12:56:24'),
(874, 62, NULL, 6, 3, '000110-7634-66', 0, NULL, NULL, '2025-03-26 12:56:24', '2025-03-26 12:56:24'),
(875, 62, NULL, 6, 16, '000110-7634-22', 0, NULL, NULL, '2025-03-26 12:56:24', '2025-03-26 12:56:24'),
(876, 62, NULL, 6, 18, '000110-7634-44', 0, NULL, NULL, '2025-03-26 12:56:24', '2025-03-26 12:56:24'),
(877, 62, NULL, 12, 2, '000110-14-444', 0, NULL, NULL, '2025-03-26 12:56:24', '2025-03-26 12:56:24'),
(878, 62, NULL, 12, 17, '000110-14-38', 0, NULL, NULL, '2025-03-26 12:56:24', '2025-03-26 12:56:24'),
(879, 62, NULL, 12, 3, '000110-14-66', 0, NULL, NULL, '2025-03-26 12:56:24', '2025-03-26 12:56:24'),
(880, 62, NULL, 12, 16, '000110-14-22', 0, NULL, NULL, '2025-03-26 12:56:24', '2025-03-26 12:56:24'),
(881, 62, NULL, 12, 18, '000110-14-44', 0, NULL, NULL, '2025-03-26 12:56:24', '2025-03-26 12:56:24'),
(882, 63, NULL, 2, 2, '000100-DF-444', 0, NULL, NULL, '2025-03-26 13:30:22', '2025-03-26 13:30:22'),
(883, 63, NULL, 2, 17, '000100-DF-38', 0, NULL, NULL, '2025-03-26 13:30:22', '2025-03-26 13:30:22'),
(884, 63, NULL, 2, 3, '000100-DF-66', 0, NULL, NULL, '2025-03-26 13:30:22', '2025-03-26 13:30:22'),
(885, 63, NULL, 2, 16, '000100-DF-22', 0, NULL, NULL, '2025-03-26 13:30:22', '2025-03-26 13:30:22'),
(886, 63, NULL, 2, 18, '000100-DF-44', 0, NULL, NULL, '2025-03-26 13:30:22', '2025-03-26 13:30:22'),
(887, 63, NULL, 12, 2, '000100-14-444', 0, NULL, NULL, '2025-03-26 13:30:22', '2025-03-26 13:30:22'),
(888, 63, NULL, 12, 17, '000100-14-38', 0, NULL, NULL, '2025-03-26 13:30:22', '2025-03-26 13:30:22'),
(889, 63, NULL, 12, 3, '000100-14-66', 0, NULL, NULL, '2025-03-26 13:30:22', '2025-03-26 13:30:22'),
(890, 63, NULL, 12, 16, '000100-14-22', 0, NULL, NULL, '2025-03-26 13:30:22', '2025-03-26 13:30:22'),
(891, 63, NULL, 12, 18, '000100-14-44', 0, NULL, NULL, '2025-03-26 13:30:22', '2025-03-26 13:30:22'),
(892, 64, NULL, 2, 2, '000106-DF-444', 0, NULL, NULL, '2025-03-26 13:33:34', '2025-03-26 13:33:34'),
(893, 64, NULL, 2, 17, '000106-DF-38', 0, NULL, NULL, '2025-03-26 13:33:34', '2025-03-26 13:33:34'),
(894, 64, NULL, 2, 3, '000106-DF-66', 0, NULL, NULL, '2025-03-26 13:33:34', '2025-03-26 13:33:34'),
(895, 64, NULL, 2, 16, '000106-DF-22', 0, NULL, NULL, '2025-03-26 13:33:34', '2025-03-26 13:33:34'),
(896, 64, NULL, 12, 2, '000106-14-444', 0, NULL, NULL, '2025-03-26 13:33:34', '2025-03-26 13:33:34'),
(897, 64, NULL, 12, 17, '000106-14-38', 0, NULL, NULL, '2025-03-26 13:33:34', '2025-03-26 13:33:34'),
(898, 64, NULL, 12, 3, '000106-14-66', 0, NULL, NULL, '2025-03-26 13:33:34', '2025-03-26 13:33:34'),
(899, 64, NULL, 12, 16, '000106-14-22', 0, NULL, NULL, '2025-03-26 13:33:34', '2025-03-26 13:33:34'),
(900, 64, NULL, 11, 2, '000106-52-444', 0, NULL, NULL, '2025-03-26 13:33:34', '2025-03-26 13:33:34'),
(901, 64, NULL, 11, 17, '000106-52-38', 0, NULL, NULL, '2025-03-26 13:33:34', '2025-03-26 13:33:34'),
(902, 64, NULL, 11, 3, '000106-52-66', 0, NULL, NULL, '2025-03-26 13:33:34', '2025-03-26 13:33:34'),
(903, 64, NULL, 11, 16, '000106-52-22', 0, NULL, NULL, '2025-03-26 13:33:34', '2025-03-26 13:33:34'),
(904, 64, NULL, 6, 2, '000106-7634-444', 0, NULL, NULL, '2025-03-26 13:33:34', '2025-03-26 13:33:34'),
(905, 64, NULL, 6, 17, '000106-7634-38', 0, NULL, NULL, '2025-03-26 13:33:34', '2025-03-26 13:33:34'),
(906, 64, NULL, 6, 3, '000106-7634-66', 0, NULL, NULL, '2025-03-26 13:33:34', '2025-03-26 13:33:34'),
(907, 64, NULL, 6, 16, '000106-7634-22', 0, NULL, NULL, '2025-03-26 13:33:34', '2025-03-26 13:33:34'),
(908, 65, NULL, 12, 2, '000190-14-444', 0, NULL, NULL, '2025-03-27 06:07:48', '2025-03-27 06:07:48'),
(909, 65, NULL, 12, 17, '000190-14-38', 0, NULL, NULL, '2025-03-27 06:07:48', '2025-03-27 06:07:48'),
(910, 65, NULL, 12, 3, '000190-14-66', 0, NULL, NULL, '2025-03-27 06:07:48', '2025-03-27 06:07:48'),
(911, 65, NULL, 12, 16, '000190-14-22', 0, NULL, NULL, '2025-03-27 06:07:48', '2025-03-27 06:07:48'),
(912, 65, NULL, 14, 2, '000190-36-444', 0, NULL, NULL, '2025-03-27 06:07:48', '2025-03-27 06:07:48'),
(913, 65, NULL, 14, 17, '000190-36-38', 0, NULL, NULL, '2025-03-27 06:07:48', '2025-03-27 06:07:48'),
(914, 65, NULL, 14, 3, '000190-36-66', 0, NULL, NULL, '2025-03-27 06:07:48', '2025-03-27 06:07:48'),
(915, 65, NULL, 14, 16, '000190-36-22', 0, NULL, NULL, '2025-03-27 06:07:48', '2025-03-27 06:07:48'),
(916, 66, NULL, 17, 2, '000184-1564-444', 0, NULL, NULL, '2025-03-27 06:13:28', '2025-03-27 06:13:28'),
(917, 66, NULL, 17, 17, '000184-1564-38', 0, NULL, NULL, '2025-03-27 06:13:28', '2025-03-27 06:13:28'),
(918, 66, NULL, 17, 3, '000184-1564-66', 0, NULL, NULL, '2025-03-27 06:13:28', '2025-03-27 06:13:28'),
(919, 66, NULL, 17, 16, '000184-1564-22', 0, NULL, NULL, '2025-03-27 06:13:28', '2025-03-27 06:13:28'),
(920, 66, NULL, 14, 2, '000184-36-444', 0, NULL, NULL, '2025-03-27 06:13:28', '2025-03-27 06:13:28'),
(921, 66, NULL, 14, 17, '000184-36-38', 0, NULL, NULL, '2025-03-27 06:13:28', '2025-03-27 06:13:28'),
(922, 66, NULL, 14, 3, '000184-36-66', 0, NULL, NULL, '2025-03-27 06:13:28', '2025-03-27 06:13:28'),
(923, 66, NULL, 14, 16, '000184-36-22', 0, NULL, NULL, '2025-03-27 06:13:28', '2025-03-27 06:13:28'),
(924, 67, NULL, 6, 2, '000172-7634-444', 0, NULL, NULL, '2025-03-27 06:32:45', '2025-03-27 06:32:45'),
(925, 67, NULL, 6, 17, '000172-7634-38', 0, NULL, NULL, '2025-03-27 06:32:45', '2025-03-27 06:32:45'),
(926, 67, NULL, 6, 3, '000172-7634-66', 0, NULL, NULL, '2025-03-27 06:32:45', '2025-03-27 06:32:45'),
(927, 67, NULL, 6, 16, '000172-7634-22', 0, NULL, NULL, '2025-03-27 06:32:45', '2025-03-27 06:32:45'),
(928, 67, NULL, 2, 2, '000172-DF-444', 0, NULL, NULL, '2025-03-27 06:32:45', '2025-03-27 06:32:45'),
(929, 67, NULL, 2, 17, '000172-DF-38', 0, NULL, NULL, '2025-03-27 06:32:45', '2025-03-27 06:32:45'),
(930, 67, NULL, 2, 3, '000172-DF-66', 0, NULL, NULL, '2025-03-27 06:32:45', '2025-03-27 06:32:45'),
(931, 67, NULL, 2, 16, '000172-DF-22', 0, NULL, NULL, '2025-03-27 06:32:45', '2025-03-27 06:32:45'),
(932, 68, NULL, 5, 2, '000178-3442-444', 0, NULL, NULL, '2025-03-27 06:40:35', '2025-03-27 06:40:35'),
(933, 68, NULL, 5, 17, '000178-3442-38', 0, NULL, NULL, '2025-03-27 06:40:35', '2025-03-27 06:40:35'),
(934, 68, NULL, 5, 3, '000178-3442-66', 0, NULL, NULL, '2025-03-27 06:40:35', '2025-03-27 06:40:35'),
(935, 68, NULL, 5, 16, '000178-3442-22', 0, NULL, NULL, '2025-03-27 06:40:35', '2025-03-27 06:40:35'),
(936, 68, NULL, 6, 2, '000178-7634-444', 0, NULL, NULL, '2025-03-27 06:40:35', '2025-03-27 06:40:35'),
(937, 68, NULL, 6, 17, '000178-7634-38', 0, NULL, NULL, '2025-03-27 06:40:35', '2025-03-27 06:40:35'),
(938, 68, NULL, 6, 3, '000178-7634-66', 0, NULL, NULL, '2025-03-27 06:40:35', '2025-03-27 06:40:35'),
(939, 68, NULL, 6, 16, '000178-7634-22', 0, NULL, NULL, '2025-03-27 06:40:35', '2025-03-27 06:40:35'),
(940, 69, NULL, 14, 2, '000185-36-444', 0, NULL, NULL, '2025-03-27 06:52:04', '2025-03-27 06:52:04'),
(941, 69, NULL, 14, 17, '000185-36-38', 0, NULL, NULL, '2025-03-27 06:52:04', '2025-03-27 06:52:04'),
(942, 69, NULL, 14, 3, '000185-36-66', 0, NULL, NULL, '2025-03-27 06:52:04', '2025-03-27 06:52:04'),
(943, 69, NULL, 14, 16, '000185-36-22', 0, NULL, NULL, '2025-03-27 06:52:04', '2025-03-27 06:52:04'),
(944, 69, NULL, 16, 2, '000185-87645-444', 0, NULL, NULL, '2025-03-27 06:52:04', '2025-03-27 06:52:04'),
(945, 69, NULL, 16, 17, '000185-87645-38', 0, NULL, NULL, '2025-03-27 06:52:04', '2025-03-27 06:52:04'),
(946, 69, NULL, 16, 3, '000185-87645-66', 0, NULL, NULL, '2025-03-27 06:52:04', '2025-03-27 06:52:04'),
(947, 69, NULL, 16, 16, '000185-87645-22', 0, NULL, NULL, '2025-03-27 06:52:04', '2025-03-27 06:52:04'),
(948, 70, NULL, 6, 17, '000168-7634-38', 0, NULL, NULL, '2025-03-27 06:54:43', '2025-03-27 06:54:43'),
(949, 70, NULL, 6, 2, '000168-7634-444', 0, NULL, NULL, '2025-03-27 06:54:43', '2025-03-27 06:54:43'),
(950, 70, NULL, 6, 3, '000168-7634-66', 0, NULL, NULL, '2025-03-27 06:54:43', '2025-03-27 06:54:43'),
(951, 70, NULL, 6, 16, '000168-7634-22', 0, NULL, NULL, '2025-03-27 06:54:43', '2025-03-27 06:54:43'),
(952, 70, NULL, 10, 17, '000168-55-38', 0, NULL, NULL, '2025-03-27 06:54:43', '2025-03-27 06:54:43'),
(953, 70, NULL, 10, 2, '000168-55-444', 0, NULL, NULL, '2025-03-27 06:54:43', '2025-03-27 06:54:43'),
(954, 70, NULL, 10, 3, '000168-55-66', 0, NULL, NULL, '2025-03-27 06:54:43', '2025-03-27 06:54:43'),
(955, 70, NULL, 10, 16, '000168-55-22', 0, NULL, NULL, '2025-03-27 06:54:43', '2025-03-27 06:54:43'),
(956, 71, NULL, 14, 2, '000288-36-444', 0, NULL, NULL, '2025-03-27 06:57:12', '2025-03-27 06:57:12'),
(957, 71, NULL, 14, 3, '000288-36-66', 0, NULL, NULL, '2025-03-27 06:57:12', '2025-03-27 06:57:12'),
(958, 71, NULL, 14, 17, '000288-36-38', 0, NULL, NULL, '2025-03-27 06:57:12', '2025-03-27 06:57:12'),
(959, 71, NULL, 14, 16, '000288-36-22', 0, NULL, NULL, '2025-03-27 06:57:12', '2025-03-27 06:57:12'),
(960, 72, NULL, 12, 2, '000188-14-444', 0, NULL, NULL, '2025-03-27 07:01:06', '2025-03-27 07:01:06'),
(961, 72, NULL, 12, 3, '000188-14-66', 0, NULL, NULL, '2025-03-27 07:01:06', '2025-03-27 07:01:06'),
(962, 72, NULL, 12, 17, '000188-14-38', 0, NULL, NULL, '2025-03-27 07:01:06', '2025-03-27 07:01:06'),
(963, 72, NULL, 12, 16, '000188-14-22', 0, NULL, NULL, '2025-03-27 07:01:06', '2025-03-27 07:01:06'),
(964, 72, NULL, 17, 2, '000188-1564-444', 0, NULL, NULL, '2025-03-27 07:01:07', '2025-03-27 07:01:07'),
(965, 72, NULL, 17, 3, '000188-1564-66', 0, NULL, NULL, '2025-03-27 07:01:07', '2025-03-27 07:01:07'),
(966, 72, NULL, 17, 17, '000188-1564-38', 0, NULL, NULL, '2025-03-27 07:01:07', '2025-03-27 07:01:07'),
(967, 72, NULL, 17, 16, '000188-1564-22', 0, NULL, NULL, '2025-03-27 07:01:07', '2025-03-27 07:01:07'),
(968, 73, NULL, 3, 3, '000050-12-66', 0, NULL, NULL, '2025-03-27 07:52:25', '2025-03-27 07:52:25'),
(969, 73, NULL, 3, 17, '000050-12-38', 0, NULL, NULL, '2025-03-27 07:52:25', '2025-03-27 07:52:25'),
(970, 73, NULL, 3, 16, '000050-12-22', 0, NULL, NULL, '2025-03-27 07:52:25', '2025-03-27 07:52:25'),
(971, 73, NULL, 3, 18, '000050-12-44', 0, NULL, NULL, '2025-03-27 07:52:25', '2025-03-27 07:52:25'),
(972, 74, NULL, 3, 17, '000060-12-38', 0, NULL, NULL, '2025-03-27 07:57:59', '2025-03-27 07:57:59'),
(973, 74, NULL, 3, 3, '000060-12-66', 0, NULL, NULL, '2025-03-27 07:57:59', '2025-03-27 07:57:59'),
(974, 74, NULL, 3, 16, '000060-12-22', 0, NULL, NULL, '2025-03-27 07:57:59', '2025-03-27 07:57:59'),
(975, 74, NULL, 3, 18, '000060-12-44', 0, NULL, NULL, '2025-03-27 07:57:59', '2025-03-27 07:57:59'),
(976, 75, NULL, 10, 2, '000174-55-444', 0, NULL, NULL, '2025-03-27 11:15:03', '2025-03-27 11:15:03'),
(977, 75, NULL, 10, 17, '000174-55-38', 0, NULL, NULL, '2025-03-27 11:15:03', '2025-03-27 11:15:03'),
(978, 75, NULL, 10, 3, '000174-55-66', 0, NULL, NULL, '2025-03-27 11:15:03', '2025-03-27 11:15:03'),
(979, 75, NULL, 10, 16, '000174-55-22', 0, NULL, NULL, '2025-03-27 11:15:03', '2025-03-27 11:15:03'),
(980, 75, NULL, 6, 2, '000174-7634-444', 0, NULL, NULL, '2025-03-27 11:15:03', '2025-03-27 11:15:03'),
(981, 75, NULL, 6, 17, '000174-7634-38', 0, NULL, NULL, '2025-03-27 11:15:03', '2025-03-27 11:15:03'),
(982, 75, NULL, 6, 3, '000174-7634-66', 0, NULL, NULL, '2025-03-27 11:15:03', '2025-03-27 11:15:03'),
(983, 75, NULL, 6, 16, '000174-7634-22', 0, NULL, NULL, '2025-03-27 11:15:03', '2025-03-27 11:15:03'),
(984, 76, NULL, 7, 2, '000187-7623-444', 0, NULL, NULL, '2025-03-27 11:20:43', '2025-03-27 11:20:43'),
(985, 76, NULL, 7, 3, '000187-7623-66', 0, NULL, NULL, '2025-03-27 11:20:43', '2025-03-27 11:20:43'),
(986, 76, NULL, 7, 17, '000187-7623-38', 0, NULL, NULL, '2025-03-27 11:20:43', '2025-03-27 11:20:43'),
(987, 76, NULL, 7, 16, '000187-7623-22', 0, NULL, NULL, '2025-03-27 11:20:43', '2025-03-27 11:20:43'),
(988, 76, NULL, 2, 2, '000187-DF-444', 0, NULL, NULL, '2025-03-27 11:20:43', '2025-03-27 11:20:43'),
(989, 76, NULL, 2, 3, '000187-DF-66', 0, NULL, NULL, '2025-03-27 11:20:43', '2025-03-27 11:20:43'),
(990, 76, NULL, 2, 17, '000187-DF-38', 0, NULL, NULL, '2025-03-27 11:20:43', '2025-03-27 11:20:43'),
(991, 76, NULL, 2, 16, '000187-DF-22', 0, NULL, NULL, '2025-03-27 11:20:43', '2025-03-27 11:20:43'),
(992, 77, NULL, 3, 2, '000186-12-444', 0, NULL, NULL, '2025-03-27 11:24:40', '2025-03-27 11:24:40'),
(993, 77, NULL, 3, 3, '000186-12-66', 0, NULL, NULL, '2025-03-27 11:24:40', '2025-03-27 11:24:40'),
(994, 77, NULL, 3, 17, '000186-12-38', 0, NULL, NULL, '2025-03-27 11:24:40', '2025-03-27 11:24:40'),
(995, 77, NULL, 3, 16, '000186-12-22', 0, NULL, NULL, '2025-03-27 11:24:40', '2025-03-27 11:24:40'),
(996, 77, NULL, 16, 2, '000186-87645-444', 0, NULL, NULL, '2025-03-27 11:24:40', '2025-03-27 11:24:40'),
(997, 77, NULL, 16, 3, '000186-87645-66', 0, NULL, NULL, '2025-03-27 11:24:40', '2025-03-27 11:24:40'),
(998, 77, NULL, 16, 17, '000186-87645-38', 0, NULL, NULL, '2025-03-27 11:24:40', '2025-03-27 11:24:40'),
(999, 77, NULL, 16, 16, '000186-87645-22', 0, NULL, NULL, '2025-03-27 11:24:40', '2025-03-27 11:24:40'),
(1000, 78, NULL, 11, 17, '000312-52-38', 0, NULL, NULL, '2025-03-27 12:16:48', '2025-03-27 12:16:48'),
(1001, 78, NULL, 11, 16, '000312-52-22', 0, NULL, NULL, '2025-03-27 12:16:48', '2025-03-27 12:16:48'),
(1002, 78, NULL, 11, 3, '000312-52-66', 0, NULL, NULL, '2025-03-27 12:16:48', '2025-03-27 12:16:48'),
(1003, 78, NULL, 11, 18, '000312-52-44', 0, NULL, NULL, '2025-03-27 12:16:48', '2025-03-27 12:16:48'),
(1004, 79, NULL, 11, 17, '000070-52-38', 0, NULL, NULL, '2025-03-27 12:19:43', '2025-03-27 12:19:43'),
(1005, 79, NULL, 11, 16, '000070-52-22', 0, NULL, NULL, '2025-03-27 12:19:43', '2025-03-27 12:19:43'),
(1006, 79, NULL, 11, 3, '000070-52-66', 0, NULL, NULL, '2025-03-27 12:19:43', '2025-03-27 12:19:43'),
(1007, 79, NULL, 11, 18, '000070-52-44', 0, NULL, NULL, '2025-03-27 12:19:43', '2025-03-27 12:19:43'),
(1008, 80, NULL, 2, 2, '000316-DF-444', 0, NULL, NULL, '2025-03-27 12:22:56', '2025-03-27 12:22:56'),
(1009, 80, NULL, 2, 17, '000316-DF-38', 0, NULL, NULL, '2025-03-27 12:22:56', '2025-03-27 12:22:56'),
(1010, 80, NULL, 2, 3, '000316-DF-66', 0, NULL, NULL, '2025-03-27 12:22:56', '2025-03-27 12:22:56'),
(1011, 81, NULL, 2, 2, '000309-DF-444', 0, NULL, NULL, '2025-03-27 12:25:39', '2025-03-27 12:25:39'),
(1012, 81, NULL, 2, 3, '000309-DF-66', 0, NULL, NULL, '2025-03-27 12:25:39', '2025-03-27 12:25:39'),
(1013, 81, NULL, 2, 17, '000309-DF-38', 0, NULL, NULL, '2025-03-27 12:25:39', '2025-03-27 12:25:39'),
(1014, 82, NULL, 2, 2, '000310-DF-444', 0, NULL, NULL, '2025-03-27 12:27:36', '2025-03-27 12:27:36'),
(1015, 82, NULL, 2, 17, '000310-DF-38', 0, NULL, NULL, '2025-03-27 12:27:36', '2025-03-27 12:27:36'),
(1016, 82, NULL, 2, 3, '000310-DF-66', 0, NULL, NULL, '2025-03-27 12:27:36', '2025-03-27 12:27:36'),
(1017, 82, NULL, 3, 2, '000310-12-444', 0, NULL, NULL, '2025-03-27 12:27:36', '2025-03-27 12:27:36'),
(1018, 82, NULL, 3, 17, '000310-12-38', 0, NULL, NULL, '2025-03-27 12:27:36', '2025-03-27 12:27:36'),
(1019, 82, NULL, 3, 3, '000310-12-66', 0, NULL, NULL, '2025-03-27 12:27:36', '2025-03-27 12:27:36'),
(1020, 83, NULL, 2, 2, '000317-DF-444', 0, NULL, NULL, '2025-03-27 12:29:38', '2025-03-27 12:29:38'),
(1021, 83, NULL, 2, 17, '000317-DF-38', 0, NULL, NULL, '2025-03-27 12:29:38', '2025-03-27 12:29:38'),
(1022, 83, NULL, 2, 3, '000317-DF-66', 0, NULL, NULL, '2025-03-27 12:29:38', '2025-03-27 12:29:38'),
(1023, 84, NULL, 2, 2, '000170-DF-444', 0, NULL, NULL, '2025-03-27 12:34:13', '2025-03-27 12:34:13'),
(1024, 84, NULL, 2, 17, '000170-DF-38', 0, NULL, NULL, '2025-03-27 12:34:13', '2025-03-27 12:34:13'),
(1025, 84, NULL, 2, 3, '000170-DF-66', 0, NULL, NULL, '2025-03-27 12:34:13', '2025-03-27 12:34:13'),
(1026, 84, NULL, 2, 16, '000170-DF-22', 0, NULL, NULL, '2025-03-27 12:34:13', '2025-03-27 12:34:13'),
(1027, 84, NULL, 6, 2, '000170-7634-444', 0, NULL, NULL, '2025-03-27 12:34:13', '2025-03-27 12:34:13'),
(1028, 84, NULL, 6, 17, '000170-7634-38', 0, NULL, NULL, '2025-03-27 12:34:13', '2025-03-27 12:34:13'),
(1029, 84, NULL, 6, 3, '000170-7634-66', 0, NULL, NULL, '2025-03-27 12:34:13', '2025-03-27 12:34:13'),
(1030, 84, NULL, 6, 16, '000170-7634-22', 0, NULL, NULL, '2025-03-27 12:34:13', '2025-03-27 12:34:13'),
(1031, 85, NULL, 6, 11, '000150-7634-9910', 0, NULL, NULL, '2025-03-27 13:26:14', '2025-03-27 13:26:14'),
(1032, 85, NULL, 6, 22, '000150-7634-12 Years', 0, NULL, NULL, '2025-03-27 13:26:14', '2025-03-27 13:26:14'),
(1033, 85, NULL, 6, 23, '000150-7634-14 Years', 0, NULL, NULL, '2025-03-27 13:26:14', '2025-03-27 13:26:14'),
(1034, 85, NULL, 17, 11, '000150-1564-9910', 0, NULL, NULL, '2025-03-27 13:26:15', '2025-03-27 13:26:15'),
(1035, 85, NULL, 17, 22, '000150-1564-12 Years', 0, NULL, NULL, '2025-03-27 13:26:15', '2025-03-27 13:26:15'),
(1036, 85, NULL, 17, 23, '000150-1564-14 Years', 0, NULL, NULL, '2025-03-27 13:26:15', '2025-03-27 13:26:15'),
(1037, 85, NULL, 4, 11, '000150-3232-9910', 0, NULL, NULL, '2025-03-27 13:26:15', '2025-03-27 13:26:15'),
(1038, 85, NULL, 4, 22, '000150-3232-12 Years', 0, NULL, NULL, '2025-03-27 13:26:15', '2025-03-27 13:26:15'),
(1039, 85, NULL, 4, 23, '000150-3232-14 Years', 0, NULL, NULL, '2025-03-27 13:26:15', '2025-03-27 13:26:15'),
(1040, 86, NULL, 4, 24, '000160-3232-1 Years', 0, NULL, NULL, '2025-03-27 13:31:36', '2025-03-27 13:31:36'),
(1041, 86, NULL, 4, 25, '000160-3232-2 Years', 0, NULL, NULL, '2025-03-27 13:31:36', '2025-03-27 13:31:36'),
(1042, 86, NULL, 4, 26, '000160-3232-3 Years', 0, NULL, NULL, '2025-03-27 13:31:36', '2025-03-27 13:31:36'),
(1043, 86, NULL, 17, 24, '000160-1564-1 Years', 0, NULL, NULL, '2025-03-27 13:31:36', '2025-03-27 13:31:36'),
(1044, 86, NULL, 17, 25, '000160-1564-2 Years', 0, NULL, NULL, '2025-03-27 13:31:36', '2025-03-27 13:31:36'),
(1045, 86, NULL, 17, 26, '000160-1564-3 Years', 0, NULL, NULL, '2025-03-27 13:31:36', '2025-03-27 13:31:36'),
(1046, 86, NULL, 6, 24, '000160-7634-1 Years', 0, NULL, NULL, '2025-03-27 13:31:36', '2025-03-27 13:31:36'),
(1047, 86, NULL, 6, 25, '000160-7634-2 Years', 0, NULL, NULL, '2025-03-27 13:31:36', '2025-03-27 13:31:36'),
(1048, 86, NULL, 6, 26, '000160-7634-3 Years', 0, NULL, NULL, '2025-03-27 13:31:36', '2025-03-27 13:31:36'),
(1049, 87, NULL, 4, 9, '000180-3232-9906', 0, NULL, NULL, '2025-03-27 13:34:03', '2025-03-27 13:34:03'),
(1050, 87, NULL, 4, 10, '000180-3232-9908', 0, NULL, NULL, '2025-03-27 13:34:03', '2025-03-27 13:34:03'),
(1051, 87, NULL, 4, 27, '000180-3232-4 Years', 0, NULL, NULL, '2025-03-27 13:34:03', '2025-03-27 13:34:03'),
(1052, 87, NULL, 6, 9, '000180-7634-9906', 0, NULL, NULL, '2025-03-27 13:34:03', '2025-03-27 13:34:03'),
(1053, 87, NULL, 6, 10, '000180-7634-9908', 0, NULL, NULL, '2025-03-27 13:34:03', '2025-03-27 13:34:03'),
(1054, 87, NULL, 6, 27, '000180-7634-4 Years', 0, NULL, NULL, '2025-03-27 13:34:03', '2025-03-27 13:34:03'),
(1055, 87, NULL, 17, 9, '000180-1564-9906', 0, NULL, NULL, '2025-03-27 13:34:03', '2025-03-27 13:34:03'),
(1056, 87, NULL, 17, 10, '000180-1564-9908', 0, NULL, NULL, '2025-03-27 13:34:03', '2025-03-27 13:34:03'),
(1057, 87, NULL, 17, 27, '000180-1564-4 Years', 0, NULL, NULL, '2025-03-27 13:34:03', '2025-03-27 13:34:03'),
(1058, 66, NULL, 16, 2, '000184-87645-444', 0, NULL, NULL, '2025-04-05 06:39:36', '2025-04-05 06:39:36'),
(1059, 66, NULL, 16, 17, '000184-87645-38', 0, NULL, NULL, '2025-04-05 06:39:36', '2025-04-05 06:39:36'),
(1060, 66, NULL, 16, 3, '000184-87645-66', 0, NULL, NULL, '2025-04-05 06:39:36', '2025-04-05 06:39:36'),
(1061, 66, NULL, 16, 16, '000184-87645-22', 0, NULL, NULL, '2025-04-05 06:39:36', '2025-04-05 06:39:36'),
(1062, 88, NULL, 24, 2, '000254-#221155-444', 0, NULL, NULL, '2025-04-05 08:14:16', '2025-04-05 08:14:16'),
(1063, 88, NULL, 24, 17, '000254-#221155-38', 0, NULL, NULL, '2025-04-05 08:14:16', '2025-04-05 08:14:16'),
(1064, 88, NULL, 24, 3, '000254-#221155-66', 0, NULL, NULL, '2025-04-05 08:14:16', '2025-04-05 08:14:16'),
(1065, 88, NULL, 24, 16, '000254-#221155-22', 0, NULL, NULL, '2025-04-05 08:14:16', '2025-04-05 08:14:16'),
(1066, 88, NULL, 12, 2, '000254-14-444', 0, NULL, NULL, '2025-04-05 08:14:16', '2025-04-05 08:14:16'),
(1067, 88, NULL, 12, 17, '000254-14-38', 0, NULL, NULL, '2025-04-05 08:14:16', '2025-04-05 08:14:16'),
(1068, 88, NULL, 12, 3, '000254-14-66', 0, NULL, NULL, '2025-04-05 08:14:16', '2025-04-05 08:14:16'),
(1069, 88, NULL, 12, 16, '000254-14-22', 0, NULL, NULL, '2025-04-05 08:14:16', '2025-04-05 08:14:16'),
(1070, 89, NULL, 17, 2, '000255-1564-444', 0, NULL, NULL, '2025-04-05 08:23:47', '2025-04-05 08:23:47'),
(1071, 89, NULL, 17, 17, '000255-1564-38', 0, NULL, NULL, '2025-04-05 08:23:47', '2025-04-05 08:23:47'),
(1072, 89, NULL, 17, 3, '000255-1564-66', 0, NULL, NULL, '2025-04-05 08:23:47', '2025-04-05 08:23:47'),
(1073, 89, NULL, 17, 16, '000255-1564-22', 0, NULL, NULL, '2025-04-05 08:23:47', '2025-04-05 08:23:47'),
(1074, 89, NULL, 24, 2, '000255-#221155-444', 0, NULL, NULL, '2025-04-05 08:23:47', '2025-04-05 08:23:47'),
(1075, 89, NULL, 24, 17, '000255-#221155-38', 0, NULL, NULL, '2025-04-05 08:23:47', '2025-04-05 08:23:47'),
(1076, 89, NULL, 24, 3, '000255-#221155-66', 0, NULL, NULL, '2025-04-05 08:23:47', '2025-04-05 08:23:47'),
(1077, 89, NULL, 24, 16, '000255-#221155-22', 0, NULL, NULL, '2025-04-05 08:23:47', '2025-04-05 08:23:47'),
(1078, 90, NULL, 9, 2, '000241-75-444', 0, NULL, NULL, '2025-04-05 08:48:15', '2025-04-05 08:48:15'),
(1079, 90, NULL, 9, 3, '000241-75-66', 0, NULL, NULL, '2025-04-05 08:48:15', '2025-04-05 08:48:15'),
(1080, 90, NULL, 9, 16, '000241-75-22', 0, NULL, NULL, '2025-04-05 08:48:15', '2025-04-05 08:48:15'),
(1081, 90, NULL, 9, 17, '000241-75-38', 0, NULL, NULL, '2025-04-05 08:48:15', '2025-04-05 08:48:15'),
(1082, 91, NULL, 14, 2, '000240-36-444', 0, NULL, NULL, '2025-04-05 09:02:33', '2025-04-05 09:02:33'),
(1083, 91, NULL, 14, 3, '000240-36-66', 0, NULL, NULL, '2025-04-05 09:02:33', '2025-04-05 09:02:33'),
(1084, 91, NULL, 14, 16, '000240-36-22', 0, NULL, NULL, '2025-04-05 09:02:33', '2025-04-05 09:02:33'),
(1085, 91, NULL, 14, 17, '000240-36-38', 0, NULL, NULL, '2025-04-05 09:02:33', '2025-04-05 09:02:33'),
(1086, 92, NULL, 14, 2, '000243-36-444', 0, NULL, NULL, '2025-04-05 09:11:38', '2025-04-05 09:11:38'),
(1087, 92, NULL, 14, 3, '000243-36-66', 0, NULL, NULL, '2025-04-05 09:11:38', '2025-04-05 09:11:38'),
(1088, 92, NULL, 14, 17, '000243-36-38', 0, NULL, NULL, '2025-04-05 09:11:38', '2025-04-05 09:11:38'),
(1089, 92, NULL, 14, 16, '000243-36-22', 0, NULL, NULL, '2025-04-05 09:11:38', '2025-04-05 09:11:38'),
(1102, 94, NULL, 2, 2, '864225-DF-444', 0, 3, NULL, '2025-04-09 10:36:15', '2025-04-09 11:46:19'),
(1103, 94, NULL, 2, 17, '864225-DF-38', 0, 3, NULL, '2025-04-09 10:36:15', '2025-04-09 11:46:19'),
(1104, 94, NULL, 2, 3, '864225-DF-66', 0, 3, NULL, '2025-04-09 10:36:15', '2025-04-09 11:46:19'),
(1105, 94, NULL, 2, 16, '864225-DF-22', 0, 3, NULL, '2025-04-09 10:36:15', '2025-04-09 11:46:19'),
(1106, 94, NULL, 8, 2, '864225-8346-444', 0, 3, NULL, '2025-04-09 10:36:15', '2025-04-09 11:46:19'),
(1107, 94, NULL, 8, 17, '864225-8346-38', 0, 3, NULL, '2025-04-09 10:36:15', '2025-04-09 11:46:19'),
(1108, 94, NULL, 8, 3, '864225-8346-66', 0, 3, NULL, '2025-04-09 10:36:15', '2025-04-09 11:46:19'),
(1109, 94, NULL, 8, 16, '864225-8346-22', 0, 3, NULL, '2025-04-09 10:36:15', '2025-04-09 11:46:19'),
(1110, 94, NULL, 14, 2, '864225-36-444', 0, 3, NULL, '2025-04-09 10:36:15', '2025-04-09 11:46:19'),
(1111, 94, NULL, 14, 17, '864225-36-38', 0, 3, NULL, '2025-04-09 10:36:15', '2025-04-09 11:46:19'),
(1112, 94, NULL, 14, 3, '864225-36-66', 0, 3, NULL, '2025-04-09 10:36:15', '2025-04-09 11:46:19'),
(1113, 94, NULL, 14, 16, '864225-36-22', 0, 3, NULL, '2025-04-09 10:36:15', '2025-04-09 11:46:19'),
(1114, 95, NULL, 2, 24, '732786-DF-1 Years', 0, NULL, NULL, '2025-04-09 11:34:54', '2025-04-09 11:34:54'),
(1115, 95, NULL, 2, 25, '732786-DF-2 Years', 0, NULL, NULL, '2025-04-09 11:34:54', '2025-04-09 11:34:54'),
(1116, 95, NULL, 2, 26, '732786-DF-3 Years', 0, NULL, NULL, '2025-04-09 11:34:54', '2025-04-09 11:34:54'),
(1117, 95, NULL, 2, 27, '732786-DF-4 Years', 0, NULL, NULL, '2025-04-09 11:34:54', '2025-04-09 11:34:54'),
(1118, 95, NULL, 8, 24, '732786-8346-1 Years', 0, NULL, NULL, '2025-04-09 11:34:54', '2025-04-09 11:34:54'),
(1119, 95, NULL, 8, 25, '732786-8346-2 Years', 0, NULL, NULL, '2025-04-09 11:34:54', '2025-04-09 11:34:54'),
(1120, 95, NULL, 8, 26, '732786-8346-3 Years', 0, NULL, NULL, '2025-04-09 11:34:54', '2025-04-09 11:34:54'),
(1121, 95, NULL, 8, 27, '732786-8346-4 Years', 0, NULL, NULL, '2025-04-09 11:34:54', '2025-04-09 11:34:54'),
(1122, 96, NULL, 24, 2, '842756-#221155-444', 0, 2, NULL, '2025-04-09 11:50:24', '2025-04-09 11:55:39'),
(1123, 96, NULL, 24, 17, '842756-#221155-38', 0, 2, NULL, '2025-04-09 11:50:24', '2025-04-09 11:55:39'),
(1124, 96, NULL, 24, 3, '842756-#221155-66', 0, 2, NULL, '2025-04-09 11:50:24', '2025-04-09 11:55:39'),
(1125, 96, NULL, 24, 16, '842756-#221155-22', 0, 2, NULL, '2025-04-09 11:50:24', '2025-04-09 11:55:39'),
(1126, 96, NULL, 6, 2, '842756-7634-444', 0, 2, NULL, '2025-04-09 11:50:24', '2025-04-09 11:55:39'),
(1127, 96, NULL, 6, 17, '842756-7634-38', 0, 2, NULL, '2025-04-09 11:50:24', '2025-04-09 11:55:39'),
(1128, 96, NULL, 6, 3, '842756-7634-66', 0, 2, NULL, '2025-04-09 11:50:24', '2025-04-09 11:55:39'),
(1129, 96, NULL, 6, 16, '842756-7634-22', 0, 2, NULL, '2025-04-09 11:50:24', '2025-04-09 11:55:39'),
(1130, 97, NULL, 14, 11, '933259-36-9910', 0, 1, NULL, '2025-04-09 11:52:34', '2025-04-09 11:55:50'),
(1131, 97, NULL, 14, 12, '933259-36-0000', 0, 1, NULL, '2025-04-09 11:52:34', '2025-04-09 11:55:50'),
(1132, 98, NULL, 16, 14, '538831-87645-8080', 0, 3, NULL, '2025-04-09 11:54:35', '2025-04-09 11:56:02'),
(1133, 98, NULL, 16, 13, '538831-87645-8850', 0, 3, NULL, '2025-04-09 11:54:35', '2025-04-09 11:56:02'),
(1134, 98, NULL, 11, 14, '538831-52-8080', 0, 3, NULL, '2025-04-09 11:54:35', '2025-04-09 11:56:02'),
(1135, 98, NULL, 11, 13, '538831-52-8850', 0, 3, NULL, '2025-04-09 11:54:35', '2025-04-09 11:56:02'),
(1136, 97, NULL, 14, 12, '933259-36-0', 0, NULL, NULL, '2025-04-09 12:04:12', '2025-04-09 12:04:12'),
(1145, 99, NULL, 6, 2, '336883-7634-444', 0, NULL, NULL, '2025-04-10 07:41:50', '2025-04-30 21:00:01'),
(1146, 99, NULL, 6, 17, '336883-7634-38', 0, NULL, NULL, '2025-04-10 07:41:50', '2025-04-30 21:00:01'),
(1147, 99, NULL, 6, 3, '336883-7634-66', 0, NULL, NULL, '2025-04-10 07:41:50', '2025-04-30 21:00:01'),
(1148, 99, NULL, 5, 2, '336883-3442-444', 0, NULL, NULL, '2025-04-10 07:41:50', '2025-04-30 21:00:01'),
(1149, 99, NULL, 5, 17, '336883-3442-38', 0, NULL, NULL, '2025-04-10 07:41:50', '2025-04-30 21:00:01'),
(1150, 99, NULL, 5, 3, '336883-3442-66', 0, NULL, NULL, '2025-04-10 07:41:50', '2025-04-30 21:00:01'),
(1151, 100, NULL, 25, 3, '000476-1615-66', 0, NULL, NULL, '2025-04-15 12:59:59', '2025-04-15 12:59:59'),
(1152, 100, NULL, 25, 2, '000476-1615-444', 0, NULL, NULL, '2025-04-15 13:00:00', '2025-04-15 13:00:00'),
(1153, 100, NULL, 25, 17, '000476-1615-38', 0, NULL, NULL, '2025-04-15 13:00:00', '2025-04-15 13:00:00'),
(1154, 100, NULL, 25, 16, '000476-1615-22', 0, NULL, NULL, '2025-04-15 13:00:00', '2025-04-15 13:00:00'),
(1155, 101, NULL, 15, 2, '000259-5648-444', 0, NULL, NULL, '2025-04-15 13:23:36', '2025-04-15 13:23:36'),
(1156, 101, NULL, 15, 3, '000259-5648-66', 0, NULL, NULL, '2025-04-15 13:23:36', '2025-04-15 13:23:36'),
(1157, 101, NULL, 15, 17, '000259-5648-38', 0, NULL, NULL, '2025-04-15 13:23:36', '2025-04-15 13:23:36'),
(1158, 101, NULL, 15, 16, '000259-5648-22', 0, NULL, NULL, '2025-04-15 13:23:36', '2025-04-15 13:23:36'),
(1159, 101, NULL, 26, 2, '000259-121-444', 0, NULL, NULL, '2025-04-15 13:23:36', '2025-04-15 13:23:36'),
(1160, 101, NULL, 26, 3, '000259-121-66', 0, NULL, NULL, '2025-04-15 13:23:36', '2025-04-15 13:23:36'),
(1161, 101, NULL, 26, 17, '000259-121-38', 0, NULL, NULL, '2025-04-15 13:23:36', '2025-04-15 13:23:36'),
(1162, 101, NULL, 26, 16, '000259-121-22', 0, NULL, NULL, '2025-04-15 13:23:36', '2025-04-15 13:23:36'),
(1163, 102, NULL, 22, 9, '000559-864545-9906', 0, NULL, NULL, '2025-04-16 11:41:23', '2025-04-16 11:41:23'),
(1164, 102, NULL, 22, 10, '000559-864545-9908', 0, NULL, NULL, '2025-04-16 11:41:23', '2025-04-16 11:41:23'),
(1165, 102, NULL, 22, 27, '000559-864545-4 Years', 0, NULL, NULL, '2025-04-16 11:41:23', '2025-04-16 11:41:23'),
(1166, 103, NULL, 15, 2, '000212-5648-444', 0, NULL, NULL, '2025-04-16 11:52:00', '2025-04-16 11:52:00'),
(1167, 103, NULL, 15, 3, '000212-5648-66', 0, NULL, NULL, '2025-04-16 11:52:00', '2025-04-16 11:52:00'),
(1168, 103, NULL, 15, 17, '000212-5648-38', 0, NULL, NULL, '2025-04-16 11:52:00', '2025-04-16 11:52:00'),
(1169, 103, NULL, 15, 16, '000212-5648-22', 0, NULL, NULL, '2025-04-16 11:52:00', '2025-04-16 11:52:00'),
(1170, 103, NULL, 22, 2, '000212-864545-444', 0, NULL, NULL, '2025-04-16 11:52:00', '2025-04-16 11:52:00'),
(1171, 103, NULL, 22, 3, '000212-864545-66', 0, NULL, NULL, '2025-04-16 11:52:00', '2025-04-16 11:52:00'),
(1172, 103, NULL, 22, 17, '000212-864545-38', 0, NULL, NULL, '2025-04-16 11:52:00', '2025-04-16 11:52:00'),
(1173, 103, NULL, 22, 16, '000212-864545-22', 0, NULL, NULL, '2025-04-16 11:52:00', '2025-04-16 11:52:00'),
(1174, 103, NULL, 13, 2, '000212-01-444', 0, NULL, NULL, '2025-04-16 11:52:00', '2025-04-16 11:52:00'),
(1175, 103, NULL, 13, 3, '000212-01-66', 0, NULL, NULL, '2025-04-16 11:52:00', '2025-04-16 11:52:00'),
(1176, 103, NULL, 13, 17, '000212-01-38', 0, NULL, NULL, '2025-04-16 11:52:00', '2025-04-16 11:52:00'),
(1177, 103, NULL, 13, 16, '000212-01-22', 0, NULL, NULL, '2025-04-16 11:52:00', '2025-04-16 11:52:00'),
(1178, 104, NULL, 26, 3, '000200-121-66', 0, NULL, NULL, '2025-04-16 12:03:06', '2025-04-16 12:03:06'),
(1179, 104, NULL, 26, 2, '000200-121-444', 0, NULL, NULL, '2025-04-16 12:03:06', '2025-04-16 12:03:06'),
(1180, 104, NULL, 26, 16, '000200-121-22', 0, NULL, NULL, '2025-04-16 12:03:06', '2025-04-16 12:03:06'),
(1181, 104, NULL, 26, 17, '000200-121-38', 0, NULL, NULL, '2025-04-16 12:03:06', '2025-04-16 12:03:06'),
(1182, 104, NULL, 18, 3, '000200-1476-66', 0, NULL, NULL, '2025-04-16 12:03:06', '2025-04-16 12:03:06'),
(1183, 104, NULL, 18, 2, '000200-1476-444', 0, NULL, NULL, '2025-04-16 12:03:06', '2025-04-16 12:03:06'),
(1184, 104, NULL, 18, 16, '000200-1476-22', 0, NULL, NULL, '2025-04-16 12:03:06', '2025-04-16 12:03:06'),
(1185, 104, NULL, 18, 17, '000200-1476-38', 0, NULL, NULL, '2025-04-16 12:03:06', '2025-04-16 12:03:06'),
(1186, 104, NULL, 19, 3, '000200-5678-66', 0, NULL, NULL, '2025-04-16 12:03:06', '2025-04-16 12:03:06'),
(1187, 104, NULL, 19, 2, '000200-5678-444', 0, NULL, NULL, '2025-04-16 12:03:06', '2025-04-16 12:03:06'),
(1188, 104, NULL, 19, 16, '000200-5678-22', 0, NULL, NULL, '2025-04-16 12:03:06', '2025-04-16 12:03:06'),
(1189, 104, NULL, 19, 17, '000200-5678-38', 0, NULL, NULL, '2025-04-16 12:03:06', '2025-04-16 12:03:06'),
(1190, 105, NULL, 11, 2, '000125-52-444', 0, NULL, NULL, '2025-04-16 12:11:53', '2025-04-16 12:11:53'),
(1191, 105, NULL, 11, 3, '000125-52-66', 0, NULL, NULL, '2025-04-16 12:11:53', '2025-04-16 12:11:53'),
(1192, 105, NULL, 11, 17, '000125-52-38', 0, NULL, NULL, '2025-04-16 12:11:53', '2025-04-16 12:11:53'),
(1193, 105, NULL, 11, 16, '000125-52-22', 0, NULL, NULL, '2025-04-16 12:11:53', '2025-04-16 12:11:53'),
(1194, 106, NULL, 15, 9, '000404-5648-9906', 0, NULL, NULL, '2025-04-16 12:41:34', '2025-04-16 12:41:34'),
(1195, 106, NULL, 15, 25, '000404-5648-2 Years', 0, NULL, NULL, '2025-04-16 12:41:34', '2025-04-16 12:41:34'),
(1196, 106, NULL, 15, 27, '000404-5648-4 Years', 0, NULL, NULL, '2025-04-16 12:41:34', '2025-04-16 12:41:34'),
(1197, 106, NULL, 19, 9, '000404-5678-9906', 0, NULL, NULL, '2025-04-16 12:41:34', '2025-04-16 12:41:34'),
(1198, 106, NULL, 19, 25, '000404-5678-2 Years', 0, NULL, NULL, '2025-04-16 12:41:34', '2025-04-16 12:41:34'),
(1199, 106, NULL, 19, 27, '000404-5678-4 Years', 0, NULL, NULL, '2025-04-16 12:41:34', '2025-04-16 12:41:34'),
(1200, 107, NULL, 18, 2, '000155-1476-444', 0, NULL, NULL, '2025-04-16 13:09:20', '2025-04-16 13:09:20'),
(1201, 107, NULL, 18, 3, '000155-1476-66', 0, NULL, NULL, '2025-04-16 13:09:20', '2025-04-16 13:09:20'),
(1202, 107, NULL, 18, 16, '000155-1476-22', 0, NULL, NULL, '2025-04-16 13:09:20', '2025-04-16 13:09:20'),
(1203, 107, NULL, 18, 17, '000155-1476-38', 0, NULL, NULL, '2025-04-16 13:09:20', '2025-04-16 13:09:20'),
(1204, 107, NULL, 23, 2, '000155-4589-444', 0, NULL, NULL, '2025-04-16 13:09:20', '2025-04-16 13:09:20'),
(1205, 107, NULL, 23, 3, '000155-4589-66', 0, NULL, NULL, '2025-04-16 13:09:20', '2025-04-16 13:09:20'),
(1206, 107, NULL, 23, 16, '000155-4589-22', 0, NULL, NULL, '2025-04-16 13:09:20', '2025-04-16 13:09:20'),
(1207, 107, NULL, 23, 17, '000155-4589-38', 0, NULL, NULL, '2025-04-16 13:09:20', '2025-04-16 13:09:20'),
(1208, 107, NULL, 27, 2, '000155-32-444', 0, NULL, NULL, '2025-04-16 13:09:20', '2025-04-16 13:09:20'),
(1209, 107, NULL, 27, 3, '000155-32-66', 0, NULL, NULL, '2025-04-16 13:09:20', '2025-04-16 13:09:20'),
(1210, 107, NULL, 27, 16, '000155-32-22', 0, NULL, NULL, '2025-04-16 13:09:20', '2025-04-16 13:09:20'),
(1211, 107, NULL, 27, 17, '000155-32-38', 0, NULL, NULL, '2025-04-16 13:09:20', '2025-04-16 13:09:20'),
(1212, 108, NULL, 19, 2, '000176-5678-444', 0, NULL, NULL, '2025-04-16 13:17:16', '2025-04-16 13:17:16'),
(1213, 108, NULL, 19, 3, '000176-5678-66', 0, NULL, NULL, '2025-04-16 13:17:16', '2025-04-16 13:17:16'),
(1214, 108, NULL, 19, 16, '000176-5678-22', 0, NULL, NULL, '2025-04-16 13:17:16', '2025-04-16 13:17:16'),
(1215, 108, NULL, 19, 17, '000176-5678-38', 0, NULL, NULL, '2025-04-16 13:17:16', '2025-04-16 13:17:16'),
(1216, 108, NULL, 13, 2, '000176-01-444', 0, NULL, NULL, '2025-04-16 13:17:16', '2025-04-16 13:17:16'),
(1217, 108, NULL, 13, 3, '000176-01-66', 0, NULL, NULL, '2025-04-16 13:17:16', '2025-04-16 13:17:16'),
(1218, 108, NULL, 13, 16, '000176-01-22', 0, NULL, NULL, '2025-04-16 13:17:16', '2025-04-16 13:17:16'),
(1219, 108, NULL, 13, 17, '000176-01-38', 0, NULL, NULL, '2025-04-16 13:17:16', '2025-04-16 13:17:16'),
(1220, 109, NULL, 15, 2, '000208-5648-444', 0, NULL, NULL, '2025-04-16 13:24:12', '2025-04-16 13:24:12'),
(1221, 109, NULL, 15, 3, '000208-5648-66', 0, NULL, NULL, '2025-04-16 13:24:12', '2025-04-16 13:24:12'),
(1222, 109, NULL, 15, 16, '000208-5648-22', 0, NULL, NULL, '2025-04-16 13:24:12', '2025-04-16 13:24:12'),
(1223, 109, NULL, 15, 17, '000208-5648-38', 0, NULL, NULL, '2025-04-16 13:24:12', '2025-04-16 13:24:12'),
(1224, 109, NULL, 14, 2, '000208-36-444', 0, NULL, NULL, '2025-04-16 13:24:12', '2025-04-16 13:24:12'),
(1225, 109, NULL, 14, 3, '000208-36-66', 0, NULL, NULL, '2025-04-16 13:24:12', '2025-04-16 13:24:12'),
(1226, 109, NULL, 14, 16, '000208-36-22', 0, NULL, NULL, '2025-04-16 13:24:12', '2025-04-16 13:24:12'),
(1227, 109, NULL, 14, 17, '000208-36-38', 0, NULL, NULL, '2025-04-16 13:24:12', '2025-04-16 13:24:12'),
(1228, 110, NULL, 5, 12, '223344-3442-0000', 0, NULL, NULL, '2025-04-28 11:34:13', '2025-04-28 11:34:13'),
(1229, 110, NULL, 5, 12, '223344-3442-0', 0, NULL, NULL, '2025-04-28 11:41:15', '2025-04-28 11:41:15'),
(1230, 111, NULL, 5, 12, '100001-3442-0000', 0, NULL, NULL, '2025-05-17 13:26:12', '2025-05-17 13:26:12'),
(1231, 111, NULL, 5, 12, '100001-3442-0', 0, NULL, NULL, '2025-05-17 13:32:01', '2025-05-17 13:32:01');

-- --------------------------------------------------------

--
-- Table structure for table `refunds`
--

CREATE TABLE `refunds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `inventory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `refund_date` datetime NOT NULL,
  `packed_date` datetime DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `shipping_date` datetime DEFAULT NULL,
  `receiving_date` datetime DEFAULT NULL,
  `total_refund` mediumint(9) NOT NULL,
  `status` varchar(200) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refund_items`
--

CREATE TABLE `refund_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `refund_id` bigint(20) UNSIGNED NOT NULL,
  `product_variation_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` smallint(6) NOT NULL,
  `price` mediumint(9) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reply_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `content` text NOT NULL,
  `type` varchar(200) NOT NULL DEFAULT 'other',
  `sender_role` varchar(200) DEFAULT NULL,
  `duration` varchar(200) DEFAULT NULL,
  `inventory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `reply` text DEFAULT NULL,
  `status` enum('open','solved') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_role`
--

CREATE TABLE `report_role` (
  `id` bigint(20) NOT NULL,
  `report_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request_product_variations`
--

CREATE TABLE `request_product_variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cargo_request_id` bigint(20) UNSIGNED NOT NULL,
  `product_variation_id` bigint(20) UNSIGNED NOT NULL,
  `requested_from_inventory` mediumint(8) UNSIGNED NOT NULL,
  `requested_from_manager` mediumint(8) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request_statuses`
--

CREATE TABLE `request_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_statuses`
--

INSERT INTO `request_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'open', NULL, NULL),
(2, 'pending', NULL, NULL),
(3, 'closed', NULL, NULL),
(4, 'canceled', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `return_and_exchange_orders`
--

CREATE TABLE `return_and_exchange_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `inventory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subInvoice_number` varchar(200) DEFAULT NULL,
  `packed_date` datetime DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `shipping_date` datetime DEFAULT NULL,
  `receiving_date` datetime DEFAULT NULL,
  `price_difference` double NOT NULL,
  `total_quantity` int(11) NOT NULL,
  `type` varchar(200) NOT NULL DEFAULT 'xo-delivery',
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `closed` tinyint(1) NOT NULL DEFAULT 0,
  `status` varchar(200) NOT NULL DEFAULT 'processing',
  `payment_method` varchar(200) NOT NULL,
  `shipping_fee` double NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `return_orders`
--

CREATE TABLE `return_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `total_refund` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `city` varchar(200) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `rating` double NOT NULL,
  `comment` varchar(200) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'main_admin', '2024-01-10 19:58:00', '2024-01-10 19:58:00'),
(2, 'data_entry', '2024-01-10 19:58:00', '2024-01-10 19:58:00'),
(3, 'warehouse_admin', '2024-01-10 19:58:00', '2024-01-10 19:58:00'),
(4, 'warehouse_manager', '2024-01-10 19:58:00', '2024-01-10 19:58:00'),
(5, 'delivery_admin', '2024-01-10 19:58:00', '2024-01-10 19:58:00'),
(6, 'operation_manager', '2024-01-10 19:58:00', '2024-01-10 19:58:00'),
(7, 'delivery_boy', '2024-01-10 19:58:00', '2024-01-10 19:58:00');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`name`)),
  `photo_url` varchar(200) NOT NULL,
  `thumbnail` varchar(200) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `photo_url`, `thumbnail`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Men\",\"ar\":\"\\u0631\\u062c\\u0627\\u0644\"}', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/redd-f-jC7nVH_Sw8k-unsplash?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/redd-f-jC7nVH_Sw8k-unsplash?_a=E', NULL, '2024-01-10 19:57:55', '2024-01-10 19:57:55'),
(2, '{\"en\":\"Women\",\"ar\":\"\\u0646\\u0633\\u0627\\u0621\"}', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/register?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/register?_a=E', NULL, '2024-01-10 19:57:55', '2024-01-10 19:57:55'),
(3, '{\"en\":\"Kids\",\"ar\":\"\\u0623\\u0637\\u0641\\u0627\\u0644\"}', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/f1adb828febc844ee2d97fc38c8ae9dc?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/f1adb828febc844ee2d97fc38c8ae9dc?_a=E', NULL, '2024-01-10 19:57:55', '2024-01-10 19:57:55'),
(4, '{\"en\":\"Home\",\"ar\":\"\\u0647\\u0648\\u0645\"}', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2025-01-13_142058?_a=E', 'https://res.cloudinary.com/dpuuncbke/image/upload/q_auto/f_auto/v1/photo/2025-01-13_142058?_a=E', NULL, '2024-01-10 19:57:55', '2024-01-10 19:57:55');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(200) NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`value`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(10, 'filter', '{\n                \"price\": {\n                    \"max\": \"1000000\",\n                    \"min\": \"1\"\n                }\n            }', '2024-01-17 16:31:31', '2024-01-17 16:31:31'),
(23, 'navBarPhotos', '{\"men\":{\"link\":\"https://dashboard.xo-textile.sy/website/gift.jpg\",\"OnClick\":\"0\"},\"women\":{\"link\":\"https://dashboard.xo-textile.sy/website/gift.jpg\",\"OnClick\":\"0\"},\"kids\":{\"link\":\"https://dashboard.xo-textile.sy/website/gift.jpg\",\"OnClick\":\"1\"},\"home\":{\"link\":\"https://dashboard.xo-textile.sy/website/gift.jpg\",\"OnClick\":\"1\"}}', '2024-02-14 20:00:36', '2024-02-14 20:00:36'),
(28, 'locationPhotos', '{\"image1\":{\"link\":\"https://api.xo-textile.sy/public/images/sections/man1.jpg\"}}', '2024-02-17 20:43:12', '2024-02-17 20:43:12'),
(76, 'kidsPhotos', '{\"navBar\":{\"link\":\"https:\\/\\/res.cloudinary.com\\/dpuuncbke\\/image\\/upload\\/q_auto\\/f_auto\\/v1\\/photo\\/f1adb828febc844ee2d97fc38c8ae9dc?_a=E\",\"OnClick\":\"4\"},\"banner_header\":{\"link\":\"https:\\/\\/res.cloudinary.com\\/dpuuncbke\\/image\\/upload\\/q_auto\\/f_auto\\/v1\\/photo\\/KIDS?_a=E\",\"OnClick\":\"1\"},\"banner_middle_page\":{\"link\":\"https:\\/\\/res.cloudinary.com\\/dpuuncbke\\/image\\/upload\\/q_auto\\/f_auto\\/v1\\/photo\\/middle_banner?_a=E\",\"OnClick\":\"https:\\/\\/www.facebook.com\\/\"},\"banner_bottom_page\":{\"link\":\"https:\\/\\/res.cloudinary.com\\/dpuuncbke\\/image\\/upload\\/q_auto\\/f_auto\\/v1\\/photo\\/bottom_banner?_a=E\",\"OnClick\":\"https:\\/\\/www.facebook.com\\/\"}}', '2024-02-26 18:16:48', '2025-01-21 10:24:46'),
(77, 'menPhotos', '{\"navBar\":{\"link\":\"https:\\/\\/res.cloudinary.com\\/dpuuncbke\\/image\\/upload\\/q_auto\\/f_auto\\/v1\\/photo\\/men_navbar?_a=E\",\"OnClick\":\"https:\\/\\/www.facebook.com\\/\"},\"banner_header\":{\"link\":\"https:\\/\\/res.cloudinary.com\\/dpuuncbke\\/image\\/upload\\/q_auto\\/f_auto\\/v1\\/photo\\/men_banner_header?_a=E\",\"OnClick\":\"002345\"},\"banner_middle_page\":{\"link\":\"https:\\/\\/res.cloudinary.com\\/dpuuncbke\\/image\\/upload\\/q_auto\\/f_auto\\/v1\\/photo\\/middle_banner?_a=E\",\"OnClick\":\"https:\\/\\/www.facebook.com\\/\"},\"banner_bottom_page\":{\"link\":\"https:\\/\\/res.cloudinary.com\\/dpuuncbke\\/image\\/upload\\/q_auto\\/f_auto\\/v1\\/photo\\/bottom_banner?_a=E\",\"OnClick\":\"https:\\/\\/www.facebook.com\\/\"}}', '2024-02-26 19:14:05', '2025-01-21 10:22:32'),
(78, 'womenPhotos', '{\"navBar\":{\"link\":\"https:\\/\\/res.cloudinary.com\\/dpuuncbke\\/image\\/upload\\/q_auto\\/f_auto\\/v1\\/photo\\/women_navbar?_a=E\",\"OnClick\":\"0\"},\"banner_header\":{\"link\":\"https:\\/\\/res.cloudinary.com\\/dpuuncbke\\/image\\/upload\\/q_auto\\/f_auto\\/v1\\/photo\\/WOMEN?_a=E\",\"OnClick\":\"linko\"},\"banner_middle_page\":{\"link\":\"https:\\/\\/res.cloudinary.com\\/dpuuncbke\\/image\\/upload\\/q_auto\\/f_auto\\/v1\\/photo\\/middle_banner?_a=E\",\"OnClick\":\"po\"},\"banner_bottom_page\":{\"link\":\"https:\\/\\/res.cloudinary.com\\/dpuuncbke\\/image\\/upload\\/q_auto\\/f_auto\\/v1\\/photo\\/bottom_banner?_a=E\",\"OnClick\":\"hoo\"}}', '2024-02-26 19:14:50', '2025-01-21 10:23:58'),
(80, 'homePagePhotos', '{\"men\":{\"link\":\"https:\\/\\/res.cloudinary.com\\/dpuuncbke\\/image\\/upload\\/q_auto\\/f_auto\\/v1\\/photo\\/Men_1744709658_67fe281ab7a8c?_a=E\",\"OnClick\":\"90976\"},\"women\":{\"link\":\"https:\\/\\/res.cloudinary.com\\/dpuuncbke\\/image\\/upload\\/q_auto\\/f_auto\\/v1\\/photo\\/Women_1744709682_67fe283209bfd?_a=E\",\"OnClick\":\"90\"},\"kids\":{\"link\":\"https:\\/\\/res.cloudinary.com\\/dpuuncbke\\/image\\/upload\\/q_auto\\/f_auto\\/v1\\/photo\\/Kids_1744709695_67fe283f5faa0?_a=E\",\"OnClick\":\"1\"},\"home\":{\"link\":\"https:\\/\\/res.cloudinary.com\\/dpuuncbke\\/image\\/upload\\/q_auto\\/f_auto\\/v1\\/photo\\/Home_1744709715_67fe285305b37?_a=E\",\"OnClick\":\"66\"}}', '2024-02-26 19:17:40', '2025-04-15 09:35:16'),
(87, 'Advertisement_tape', '{\"en\":{\"sentence1\":\"We\'re excited to announce the launch of our new branch in Dubai.\",\"sentence2\":\"Explore our new branch now!\",\"sentence3\":\"Discover our new branch today!\"},\"ar\":{\"sentence1\":\"\\u0627\\u0641\\u062a\\u062a\\u0627\\u062d \\u0641\\u0631\\u0639 \\u062c\\u062f\\u064a\\u062f \\u0641\\u064a \\u0623\\u0628\\u0648 \\u0638\\u0628\\u064a\",\"sentence2\":\"\\u0627\\u0641\\u062a\\u062a\\u0627\\u062d \\u0641\\u0631\\u0639 \\u062c\\u062f\\u064a\\u062f \\u0641\\u064a \\u0623\\u0628\\u0648 \\u0638\\u0628\\u064a\",\"sentence3\":\"\\u0627\\u0641\\u062a\\u062a\\u0627\\u062d \\u0641\\u0631\\u0639 \\u062c\\u062f\\u064a\\u062f \\u0641\\u064a \\u0623\\u0628\\u0648 \\u0638\\u0628\\u064a\"}}', '2024-03-12 10:09:17', '2024-09-18 08:43:04'),
(89, 'terms', '{\"en\":\"<b>Hello World<\\/b>This text is an example of text that can be replaced in the same space. This text was generated from the Arabic text generator, where you can generate such text or many other texts in addition to increasing the number of letters that the application generates. If you need a larger number of paragraphs, the Arabic text generator allows you to increase the number of paragraphs as you want. The text will not appear divided and does not contain linguistic errors. The Arabic text generator is useful for website designers in particular, as the client often needs to see a real picture of the website design. Hence, it is necessary for the designer to create texts.\",\"ar\":\"asdwsd\"}', '2024-03-12 10:18:08', '2024-09-18 08:43:28'),
(90, 'policySecurity', '{\"en\":{\"refund_policy\":\"You can return and replace within 10 days\",\"secure_payment\":\"You can easily pay with our payment methods with full security\",\"your_info_is_safe\":\"Your information is safe, don\'t worry\"},\"ar\":{\"refund_policy\":\"\\u064a\\u0645\\u0643\\u0646\\u0643 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0648\\u0627\\u0644\\u0627\\u0633\\u062a\\u0628\\u062f\\u0627\\u0644 \\u062e\\u0644\\u0627\\u0644 11 \\u064a\\u0648\\u0645\",\"secure_payment\":\"\\u064a\\u0645\\u0643\\u0646\\u0643 \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0628\\u0633\\u0647\\u0648\\u0644\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 \\u0637\\u0631\\u0642 \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0627\\u0644\\u062e\\u0627\\u0635\\u0629 \\u0628\\u0646\\u0627 \\u0628\\u0623\\u0645\\u0627\\u0646 \\u0643\\u0627\\u0645\\u0644\",\"your_info_is_safe\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a\\u0643 \\u0622\\u0645\\u0646\\u0629 \\u0644\\u0627 \\u062a\\u0642\\u0644\\u0642\"}}', '2024-03-12 10:20:30', '2024-08-26 10:11:41'),
(91, 'links', '{\"phone\":\"+963 987 782 466\",\"helpdesk\":\"+963 987 782 466\",\"facebook\":\"xo\",\"instagram\":\"https:\\/\\/www.instagram.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"whatsapp\":\"+963 945 673 389\",\"email\":\"xo.\",\"google_play\":\"googleplay\",\"app_store\":\"990\"}', '2024-03-12 10:40:20', '2024-10-02 11:38:14'),
(93, 'privacy_policy', '{\"en\":\"This text is an example of text that can be replaced in the same space. This text was generated from the Arabic text generator, where you can generate such text or many other texts in addition to increasing the number of letters that the application generates. If you need a larger number of paragraphs, the Arabic text generator allows you to increase the number of paragraphs as you want. The text will not appear divided and does not contain linguistic errors. The Arabic text generator is useful for website designers in particular, as the client often needs to see a real picture of the website design. Hence, it is necessary for the designer to create texts.\",\"ar\":\"\\u0647\\u0630\\u0627 \\u0627\\u0644\\u0646\\u0635  \\u0647\\u0648  \\u0645\\u062b\\u0627\\u0644  \\u0644\\u0646\\u0635  \\u064a\\u0645\\u0643\\u0646  \\u0623\\u0646  \\u064a\\u0633\\u062a\\u0628\\u062f\\u0644  \\u0641\\u064a  \\u0646\\u0641\\u0633 \\u0627\\u0644\\u0645\\u0633\\u0627\\u062d\\u0629\\u060c  \\u0644\\u0642\\u062f  \\u062a\\u0645  \\u062a\\u0648\\u0644\\u064a\\u062f  \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0646\\u0635  \\u0645\\u0646  \\u0645\\u0648\\u0644\\u062f \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0639\\u0631\\u0628\\u0649\\u060c  \\u062d\\u064a\\u062b  \\u064a\\u0645\\u0643\\u0646\\u0643  \\u0623\\u0646  \\u062a\\u0648\\u0644\\u062f  \\u0645\\u062b\\u0644  \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0646\\u0635  \\u0623\\u0648 \\u0627\\u0644\\u0639\\u062f\\u064a\\u062f  \\u0645\\u0646 \\u0627\\u0644\\u0646\\u0635\\u0648\\u0635 \\u0627\\u0644\\u0623\\u062e\\u0631\\u0649  \\u0625\\u0636\\u0627\\u0641\\u0629  \\u0625\\u0644\\u0649  \\u0632\\u064a\\u0627\\u062f\\u0629  \\u0639\\u062f\\u062f \\u0627\\u0644\\u062d\\u0631\\u0648\\u0641 \\u0627\\u0644\\u062a\\u0649  \\u064a\\u0648\\u0644\\u062f\\u0647\\u0627 \\u0627\\u0644\\u062a\\u0637\\u0628\\u064a\\u0642.\\u0625\\u0630\\u0627  \\u0643\\u0646\\u062a  \\u062a\\u062d\\u062a\\u0627\\u062c  \\u0625\\u0644\\u0649  \\u0639\\u062f\\u062f  \\u0623\\u0643\\u0628\\u0631  \\u0645\\u0646 \\u0627\\u0644\\u0641\\u0642\\u0631\\u0627\\u062a  \\u064a\\u062a\\u064a\\u062d  \\u0644\\u0643  \\u0645\\u0648\\u0644\\u062f \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0639\\u0631\\u0628\\u0649  \\u0632\\u064a\\u0627\\u062f\\u0629  \\u0639\\u062f\\u062f \\u0627\\u0644\\u0641\\u0642\\u0631\\u0627\\u062a  \\u0643\\u0645\\u0627  \\u062a\\u0631\\u064a\\u062f\\u060c \\u0627\\u0644\\u0646\\u0635  \\u0644\\u0646  \\u064a\\u0628\\u062f\\u0648  \\u0645\\u0642\\u0633\\u0645\\u0627  \\u0648\\u0644\\u0627  \\u064a\\u062d\\u0648\\u064a  \\u0623\\u062e\\u0637\\u0627\\u0621  \\u0644\\u063a\\u0648\\u064a\\u0629\\u060c  \\u0645\\u0648\\u0644\\u062f \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0639\\u0631\\u0628\\u0649  \\u0645\\u0641\\u064a\\u062f  \\u0644\\u0645\\u0635\\u0645\\u0645\\u064a \\u0627\\u0644\\u0645\\u0648\\u0627\\u0642\\u0639  \\u0639\\u0644\\u0649  \\u0648\\u062c\\u0647 \\u0627\\u0644\\u062e\\u0635\\u0648\\u0635\\u060c  \\u062d\\u064a\\u062b  \\u064a\\u062d\\u062a\\u0627\\u062c \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644  \\u0641\\u0649  \\u0643\\u062b\\u064a\\u0631  \\u0645\\u0646 \\u0627\\u0644\\u0623\\u062d\\u064a\\u0627\\u0646  \\u0623\\u0646  \\u064a\\u0637\\u0644\\u0639  \\u0639\\u0644\\u0649  \\u0635\\u0648\\u0631\\u0629  \\u062d\\u0642\\u064a\\u0642\\u064a\\u0629  \\u0644\\u062a\\u0635\\u0645\\u064a\\u0645 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639.\\u0648\\u0645\\u0646  \\u0647\\u0646\\u0627  \\u0648\\u062c\\u0628  \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0645\\u0635\\u0645\\u0645  \\u0623\\u0646  \\u064a\\u0636\\u0639  \\u0646\\u0635\\u0648\\u0635\\u0627\"}', '2024-03-13 07:19:30', '2024-09-18 08:44:39'),
(94, 'userComplaints', '{\"ar\":{\"complaint1\":\"\\u0647\\u0630\\u0627 \\u0645\\u062b\\u0627\\u0644 \\u0644\\u0646\\u0635 \\u064a\\u0645\\u0643\\u0646 \\u062a\\u063a\\u064a\\u0631 llllllll\",\"complaint2\":\"7s7sGet Out our brand new coupons via code \\u0634\\u0634\\u0634\\u0634\\u0634\\u0634\",\"complaint3\":\"Get Out our brand new coupons via code\"},\"en\":{\"complaint1\":\"Get Out our brand new coupons via codei\",\"complaint2\":\"Get Out our brand new coupons via code\",\"complaint3\":\"Get Out our brand new coupons via code\"}}', '2024-03-13 09:47:14', '2024-08-26 10:32:40'),
(97, 'loginNotification', '{\"en\":{\"title\":\"Welcome in XO\",\"body\":\"We wish you a pleasant trip in XO\"},\"ar\":{\"title\":\"\\u0645\\u0631\\u062d\\u0628\\u064b\\u0627 \\u0641\\u064a XO\",\"body\":\"\\u0646\\u062a\\u0645\\u0646\\u0649 \\u0644\\u0643 \\u0631\\u062d\\u0644\\u0629 \\u0645\\u0645\\u062a\\u0639\\u0629 \\u0641\\u064a XO\"}}', '2024-03-17 09:45:05', '2024-03-17 09:45:05'),
(98, 'BanUserNotification', '{\"ar\":{\"title\":\"\\u062a\\u0645 \\u062d\\u0638\\u0631 \\u062d\\u0633\\u0627\\u0628\\u0643f\",\"body\":\"\\u062a\\u0645 \\u062d\\u0638\\u0631 \\u062d\\u0633\\u0627\\u0628\\u0643. \\u064a\\u0631\\u062c\\u0649 \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644 \\u0628\\u0627\\u0644\\u0645\\u0633\\u0624\\u0648\\u0644 \\u0625\\u0630\\u0627 \\u0643\\u0646\\u062a \\u062a\\u0631\\u063a\\u0628 \\u0641\\u064a \\u0627\\u0633\\u062a\\u0639\\u0627\\u062f\\u0629 \\u0627\\u0644\\u062d\\u0633\\u0627\\u0628\"},\"en\":{\"title\":\"Your account has been blocked\",\"body\":\"Your account has been blocked. Please contact the admin if you wish to recover the account\"}}', '2024-03-17 09:45:26', '2024-03-19 11:03:00'),
(103, 'return_policy', '{\"en\":{\"title\":\"so dou can return the order within9d\",\"days\":\"10\"},\"ar\":{\"title\":\"\\u0647\\u0630\\u0627 \\u0645\\u062b\\u0627\\u0644 \\u0644\\u0646\\u0635 \\u064a\\u0645\\u0643\\u0646 \\u0627\\u0633\\u062a\\u0628\\u062f\\u0627\\u0644\\u0647 \\u0644\\u0627\\u062d\\u0642\\u0627\\u0627\\u0627\\u0627\",\"days\":\"10\"}}', '2024-03-20 12:09:55', '2024-06-10 12:53:17'),
(104, 'aboutUs', '{\"ar\":\"\\u0647\\u0630\\u0627 \\u0627\\u0644\\u0646\\u0635 \\u0647\\u0648 \\u0645\\u062b\\u0627\\u0644 \\u0644\\u0646\\u0635 \\u064a\\u0645\\u0643\\u0646 \\u0623\\u0646 \\u064a\\u0633\\u062a\\u0628\\u062f\\u0644...\",\"en\":\"This text is an example of text that can be replaced in the same space...\",\"image\":\"https:\\/\\/res.cloudinary.com\\/dpuuncbke\\/image\\/upload\\/q_auto\\/f_auto\\/v1\\/835749\\/SEO?_a=E\"}', '2024-03-27 11:44:46', '2025-01-04 11:24:48'),
(114, 'frequent_questions', '{\"en\":[{\"faq_name\":\"how to buy online\",\"faq_photo\":\"https://dashboard.xo-textile.sy/website/men.png\",\"faq_questions\":[{\"question\":\"how to buy from xo ?\",\"answer\":\"bla bla bla\"},{\"question\":\"how to not buy from xo ?\",\"answer\":\"bla bla bla\"}]},{\"faq_name\":\"about my order\",\"faq_photo\":\"https://dashboard.xo-textile.sy/website/men.png\",\"faq_questions\":[{\"question\":\"how to buy from xo ?\",\"answer\":\"bla bla bla\"},{\"question\":\"how to not buy from xo ?\",\"answer\":\"bla bla bla\"}]}],\"ar\":[{\"faq_name\":\"how to buy online\",\"faq_photo\":\"https://dashboard.xo-textile.sy/website/men.png\",\"faq_questions\":[{\"question\":\"how to buy from xo ?\",\"answer\":\"bla bla bla\"},{\"question\":\"how to not buy from xo ?\",\"answer\":\"bla bla bla\"}]},{\"faq_name\":\"about my order\",\"faq_photo\":\"https://dashboard.xo-textile.sy/website/men.png\",\"faq_questions\":[{\"question\":\"how to buy from xo ?\",\"answer\":\"bla bla bla\"},{\"question\":\"how to not buy from xo ?\",\"answer\":\"bla bla bla\"}]}]}', '2024-03-31 12:32:17', '2024-03-31 12:32:17'),
(115, 'homePhotos', '{\"navBar\":{\"link\":\"https:\\/\\/res.cloudinary.com\\/dpuuncbke\\/image\\/upload\\/q_auto\\/f_auto\\/v1\\/photo\\/2025-01-13_142058?_a=E\",\"OnClick\":\"4\"},\"banner_header\":{\"link\":\"https:\\/\\/res.cloudinary.com\\/dpuuncbke\\/image\\/upload\\/q_auto\\/f_auto\\/v1\\/photo\\/HOME?_a=E\",\"OnClick\":\"1\"},\"banner_middle_page\":{\"link\":\"https:\\/\\/res.cloudinary.com\\/dpuuncbke\\/image\\/upload\\/q_auto\\/f_auto\\/v1\\/photo\\/middle_banner?_a=E\",\"OnClick\":\"0\"},\"banner_bottom_page\":{\"link\":\"https:\\/\\/res.cloudinary.com\\/dpuuncbke\\/image\\/upload\\/q_auto\\/f_auto\\/v1\\/photo\\/bottom_banner?_a=E\",\"OnClick\":\"1\"}}', '2024-03-31 18:11:42', '2025-01-21 10:26:40'),
(116, 'type_of_problems', '{\"en\":[{\"name\":\"Technical Problems\",\"options\":[\"App is Slow\",\"There is no new orders\",\"App crashes unexpectedly\",\"App is lagging\",\"Some features don\'t work\",\"other\"]},{\"name\":\"Product Problems\",\"options\":[\"Product has bad smell\",\"Product doesn\'t have its own tag\",\"Product doesn\'t have delivery invoice\",\"Product has rips\",\"other\"]},{\"name\":\"Operational Problems\",\"options\":[]}],\"ar\":[{\"name\":\"\\u062a\\u0642\\u0646\\u064a\\u0629 \\u0627\\u0644\\u0645\\u0634\\u0643\\u0644\\u0627\\u062a\",\"options\":[\"\\u062a\\u0639\\u0637\\u0644 \\u0627\\u0644\\u062a\\u0637\\u0628\\u064a\\u0642\",\"\\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f \\u0637\\u0644\\u0628\\u0627\\u062a \\u062c\\u062f\\u064a\\u062f\\u0629\",\"\\u062a\\u0633\\u0628\\u0628 \\u0627\\u0644\\u062a\\u0637\\u0628\\u064a\\u0642 \\u0641\\u064a \\u0627\\u0646\\u0647\\u064a\\u0627\\u0631 \\u063a\\u064a\\u0631 \\u0645\\u062a\\u0648\\u0642\\u0639\",\"\\u0627\\u0644\\u062a\\u0637\\u0628\\u064a\\u0642 \\u064a\\u062a\\u0623\\u062e\\u0631\",\"\\u0628\\u0639\\u0636 \\u0627\\u0644\\u0645\\u064a\\u0632\\u0627\\u062a \\u0644\\u0627 \\u062a\\u0639\\u0645\\u0644\",\"\\u0622\\u062e\\u0631\\u064a\"]},{\"name\":\"\\u0645\\u0634\\u0643\\u0644\\u0627\\u062a \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c\",\"options\":[\"\\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0644\\u062f\\u064a\\u0647 \\u0631\\u0627\\u0626\\u062d\\u0629 \\u0633\\u064a\\u0626\\u0629\",\"\\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0644\\u064a\\u0633 \\u0644\\u0647 \\u0639\\u0644\\u0627\\u0645\\u0629 \\u062e\\u0627\\u0635\\u0629 \\u0644\\u0647\",\"\\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0644\\u064a\\u0633 \\u0644\\u0647 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062a\\u0648\\u0635\\u064a\\u0644\",\"\\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u0647 \\u062a\\u0645\\u0632\\u0642\",\"\\u0622\\u062e\\u0631\\u064a\"]},{\"name\":\"\\u0645\\u0634\\u0643\\u0644\\u0627\\u062a \\u0627\\u0644\\u0639\\u0645\\u0644\\u064a\\u0627\\u062a\",\"options\":[]}]}', '2024-04-07 08:57:49', '2024-04-07 08:57:49'),
(117, 'couponDetails', '{\"ar\":{\"code\":\"\\u0643\\u0648\\u0628\\u0648\\u0646 \\u0643\\u0648\\u062f 22\",\"text\":\"\\u062a\\u064a\\u0643\\u0633\\u062a \\u062a\\u064a\\u0633\\u062a\",\"banner\":\"https:\\/\\/res.cloudinary.com\\/dpuuncbke\\/image\\/upload\\/q_auto\\/f_auto\\/v1\\/banners\\/Gift%20Card%20Ramadan_1744709975_67fe29570fb09?_a=E\"},\"en\":{\"code\":\"coupon code 22\",\"text\":\"text test\",\"banner\":\"https:\\/\\/res.cloudinary.com\\/dpuuncbke\\/image\\/upload\\/q_auto\\/f_auto\\/v1\\/banners\\/Gift%20Card%20Ramadan_1744709975_67fe29570fb09?_a=E\"}}', '2024-04-15 08:12:31', '2025-04-15 09:39:36'),
(118, 'shippingNotes', '{\"en\":{\"paragraph\":\"Your English paragraph here\"},\"ar\":{\"paragraph\":\"Your Arabic paragraph here\"}}', '2024-04-15 08:51:34', '2024-04-15 08:51:34'),
(119, 'fees', '{\"ar\":{\"shipping_fee\":3,\"free_shipping\":400},\"en\":{\"shipping_fee\":3,\"free_shipping\":400}}', '2024-05-30 08:54:56', '2024-09-15 08:01:59'),
(121, 'addNonReplacableCatgories', '[[]]', '2024-07-16 09:42:09', '2024-12-29 12:08:55'),
(122, 'terms_en', '{\"User personal information collecting\":\"111This text is an exa123123mple of text that can be replaced in the same space. This text was generated from the Arabic text generator, where you can 123123generate such text or many other texts in addition to increasing the number of letters that the application generates. If you need a larger number of paragraphs, the Arabic text generator allows you to increase the number of paragraphs as you want. The text will not appear divided and does not contain linguistic errors. The Arabic text generator is useful for website designers in particular, as the client often needs to see a real picture of the website design. Hence, it is necessary for the designer to create texts.\",\"User personal information usage\":\"222This text is an exa123123mple of text that can be replaced in the same space. This text was generated from the Arabic text generator, where you can 123123generate such text or many other texts in addition to increasing the number of letters that the application generates. If you need a larger number of paragraphs, the Arabic text generator allows you to increase the number of paragraphs as you want. The text will not appear divided and does not contain linguistic errors. The Arabic text generator is useful for website designers in particular, as the client often needs to see a real picture of the website design. Hence, it is necessary for the designer to create texts.\",\"User personal information sharing\":\"222This text is an exa123123mple of text that can be replaced in the same space. This text was generated from the Arabic text generator, where you can 123123generate such text or many other texts in addition to increasing the number of letters that the application generates. If you need a larger number of paragraphs, the Arabic text generator allows you to increase the number of paragraphs as you want. The text will not appear divided and does not contain linguistic errors. The Arabic text generator is useful for website designers in particular, as the client often needs to see a real picture of the website design. Hence, it is necessary for the designer to create texts.\",\"User personal information security\":\"222This text is an exa123123mple of text that can be replaced in the same space. This text was generated from the Arabic text generator, where you can 123123generate such text or many other texts in addition to increasing the number of letters that the application generates. If you need a larger number of paragraphs, the Arabic text generator allows you to increase the number of paragraphs as you want. The text will not appear divided and does not contain linguistic errors. The Arabic text generator is useful for website designers in particular, as the client often needs to see a real picture of the website design. Hence, it is necessary for the designer to create texts.\",\"cockies\":\"222This text is an exa123123mple of text that can be replaced in the same space. This text was generated from the Arabic text generator, where you can 123123generate such text or many other texts in addition to increasing the number of letters that the application generates. If you need a larger number of paragraphs, the Arabic text generator allows you to increase the number of paragraphs as you want. The text will not appear divided and does not contain linguistic errors. The Arabic text generator is useful for website designers in particular, as the client often needs to see a real picture of the website design. Hence, it is necessary for the designer to create texts.\",\"User personal information update\":\"222This text is an exa123123mple of text that can be replaced in the same space. This text was generated from the Arabic text generator, where you can 123123generate such text or many other texts in addition to increasing the number of letters that the application generates. If you need a larger number of paragraphs, the Arabic text generator allows you to increase the number of paragraphs as you want. The text will not appear divided and does not contain linguistic errors. The Arabic text generator is useful for website designers in particular, as the client often needs to see a real picture of the website design. Hence, it is necessary for the designer to create texts.\",\"App usage\":\"222This text is an exa123123mple of text that can be replaced in the same space. This text was generated from the Arabic text generator, where you can 123123generate such text or many other texts in addition to increasing the number of letters that the application generates. If you need a larger number of paragraphs, the Arabic text generator allows you to increase the number of paragraphs as you want. The text will not appear divided and does not contain linguistic errors. The Arabic text generator is useful for website designers in particular, as the client often needs to see a real picture of the website design. Hence, it is necessary for the designer to create texts.\",\"Terms updates\":\"222This text is an exa123123mple of text that can be replaced in the same space. This text was generated from the Arabic text generator, where you can 123123generate such text or many other texts in addition to increasing the number of letters that the application generates. If you need a larger number of paragraphs, the Arabic text generator allows you to increase the number of paragraphs as you want. The text will not appear divided and does not contain linguistic errors. The Arabic text generator is useful for website designers in particular, as the client often needs to see a real picture of the website design. Hence, it is necessary for the designer to create texts.\"}', '2024-08-18 11:09:00', '2024-08-18 11:09:00'),
(123, 'loginPhotos', '{\"register\":{\"link\":\"https:\\/\\/res.cloudinary.com\\/dpuuncbke\\/image\\/upload\\/q_auto\\/f_auto\\/v1\\/photo\\/register?_a=E\"},\"login\":{\"link\":\"https:\\/\\/res.cloudinary.com\\/dpuuncbke\\/image\\/upload\\/q_auto\\/f_auto\\/v1\\/photo\\/register?_a=E\"}}', '2024-11-04 09:03:14', '2024-12-29 10:53:13');

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shifts`
--

INSERT INTO `shifts` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'daily', '2024-01-10 19:57:54', '2024-01-10 19:57:54'),
(2, 'night', '2024-01-10 19:57:54', '2024-01-10 19:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `shipments`
--

CREATE TABLE `shipments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(200) NOT NULL,
  `date` date DEFAULT NULL,
  `time` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `street` varchar(200) DEFAULT NULL,
  `neighborhood` varchar(200) DEFAULT NULL,
  `lat` varchar(200) DEFAULT NULL,
  `long` varchar(200) DEFAULT NULL,
  `additional_details` varchar(200) DEFAULT NULL,
  `receiver_first_name` varchar(200) DEFAULT NULL,
  `receiver_father_name` varchar(25) DEFAULT NULL,
  `receiver_last_name` varchar(200) DEFAULT NULL,
  `receiver_phone` varchar(200) DEFAULT NULL,
  `receiver_phone2` varchar(200) DEFAULT NULL,
  `is_delivered` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `express` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipment_product_variations`
--

CREATE TABLE `shipment_product_variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cargo_shipment_id` bigint(20) UNSIGNED NOT NULL,
  `product_variation_id` bigint(20) UNSIGNED NOT NULL,
  `received` int(20) DEFAULT NULL,
  `quantity` mediumint(9) NOT NULL,
  `ship_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`value`)),
  `type` varchar(200) NOT NULL,
  `sku_code` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `value`, `type`, `sku_code`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"X\",\"ar\":\"X\"}', 'clothing', '1', '2024-10-20 12:49:40', '2024-10-20 12:49:40'),
(2, '{\"en\":\"S\",\"ar\":\"S\"}', 'clothing', '444', '2024-10-20 12:51:14', '2024-10-20 12:51:14'),
(3, '{\"en\":\"L\",\"ar\":\"L\"}', 'clothing', '66', '2024-10-20 12:57:54', '2024-10-20 12:57:54'),
(4, '{\"en\":\"18\",\"ar\":\"18\"}', 'clothing', '18', '2024-11-16 11:03:11', '2024-11-16 11:03:11'),
(5, '{\"en\":\"42\",\"ar\":\"42\"}', 'clothing', '0042', '2024-11-25 12:13:18', '2024-11-25 12:13:18'),
(6, '{\"en\":\"44\",\"ar\":\"44\"}', 'clothing', '0044', '2024-11-25 12:13:29', '2024-11-25 12:13:29'),
(7, '{\"en\":\"46\",\"ar\":\"46\"}', 'clothing', '0046', '2024-11-25 12:13:39', '2024-11-25 12:13:39'),
(8, '{\"en\":\"25ml\",\"ar\":\"25ml\"}', 'other', '1025', '2024-11-25 12:28:53', '2024-11-25 12:28:53'),
(9, '{\"en\":\"6 Y\",\"ar\":\"6 Y\"}', 'clothing', '9906', '2024-11-25 12:34:06', '2024-11-25 12:34:06'),
(10, '{\"en\":\"8 Y\",\"ar\":\"8 Y\"}', 'clothing', '9908', '2024-11-25 12:34:24', '2024-11-25 12:34:24'),
(11, '{\"en\":\"10 Y\",\"ar\":\"10 Y\"}', 'clothing', '9910', '2024-11-25 12:34:40', '2024-11-25 12:34:40'),
(12, '{\"en\":\"Free Size\",\"ar\":\"Free Size\"}', 'other', '0000', '2024-11-25 12:36:45', '2024-11-25 12:36:45'),
(13, '{\"en\":\"50 mg\",\"ar\":\"50 mg\"}', 'other', '8850', '2024-11-25 12:40:31', '2024-11-25 12:40:31'),
(14, '{\"en\":\"500ml\",\"ar\":\"500ml\"}', 'other', '8080', '2025-01-07 12:44:26', '2025-01-07 12:44:26'),
(15, '{\"en\":\"gfhgf\",\"ar\":\"hjgjh\"}', 'clothing', 'fdfd', '2025-03-13 11:03:21', '2025-03-13 11:03:21'),
(16, '{\"en\":\"XL\",\"ar\":\"XL\"}', 'clothing', '22', '2025-03-13 11:53:56', '2025-03-13 11:53:56'),
(17, '{\"en\":\"M\",\"ar\":\"M\"}', 'clothing', '38', '2025-03-16 12:18:20', '2025-03-16 12:18:20'),
(18, '{\"en\":\"XXL\",\"ar\":\"XXL\"}', 'clothing', '44', '2025-03-16 12:53:54', '2025-03-16 12:53:54'),
(19, '{\"en\":\"52\",\"ar\":\"52\"}', 'clothing', '21312', '2025-03-20 08:09:57', '2025-03-20 08:09:57'),
(20, '{\"en\":\"XXXL\",\"ar\":\"XXXL\"}', 'clothing', 'XXXL', '2025-03-20 13:32:32', '2025-03-20 13:32:32'),
(21, '{\"en\":\"12\",\"ar\":\"12\"}', 'clothing', '12', '2025-03-27 13:24:29', '2025-03-27 13:24:29'),
(22, '{\"en\":\"12 Y\",\"ar\":\"12 Y\"}', 'clothing', '12 Years', '2025-03-27 13:25:18', '2025-03-27 13:25:18'),
(23, '{\"en\":\"14 Y\",\"ar\":\"14 Y\"}', 'clothing', '14 Years', '2025-03-27 13:25:35', '2025-03-27 13:25:35'),
(24, '{\"en\":\"1 Y\",\"ar\":\"1 Y\"}', 'clothing', '1 Years', '2025-03-27 13:31:05', '2025-03-27 13:31:05'),
(25, '{\"en\":\"2 Y\",\"ar\":\"2 Y\"}', 'clothing', '2 Years', '2025-03-27 13:31:12', '2025-03-27 13:31:12'),
(26, '{\"en\":\"3 Y\",\"ar\":\"3 Y\"}', 'clothing', '3 Years', '2025-03-27 13:31:21', '2025-03-27 13:31:21'),
(27, '{\"en\":\"4 Y\",\"ar\":\"4 Y\"}', 'clothing', '4 Years', '2025-03-27 13:33:56', '2025-03-27 13:33:56'),
(28, '{\"en\":\"stander\",\"ar\":\"stander\"}', 'other', '100001', '2025-05-17 13:17:32', '2025-05-17 13:17:32');

-- --------------------------------------------------------

--
-- Table structure for table `size_guides`
--

CREATE TABLE `size_guides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`values`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `size_guides`
--

INSERT INTO `size_guides` (`id`, `category_id`, `name`, `values`, `created_at`, `updated_at`) VALUES
(1, 10, 'T-SHIRTS', '{\n \"sizes\": [\n    {\"value\": \"XXS\"},\n    {\"value\": \"XS\"},\n    {\"value\": \"S\"},\n    {\"value\": \"M\"},\n    {\"value\": \"L\"},\n    {\"value\": \"XL\"},\n    {\"value\": \"XXL\"},\n    {\"value\": \"1XL\"},\n    {\"value\": \"2XL\"}\n ],\n \"Bust\": [\n    {\"value\": \"79.0\"},\n    {\"value\": \"82.0\"},\n    {\"value\": \"86.0\"},\n    {\"value\": \"92.0\"},\n    {\"value\": \"98.0\"},\n    {\"value\": \"104.0\"},\n    {\"value\": \"110.0\"},\n    {\"value\": \"116.0\"},\n    {\"value\": \"124.0\"},\n    {\"value\": \"79.0\"},\n    {\"value\": \"82.0\"},\n    {\"value\": \"86.0\"},\n    {\"value\": \"92.0\"},\n    {\"value\": \"98.0\"},\n    {\"value\": \"104.0\"},\n    {\"value\": \"110.0\"},\n    {\"value\": \"116.0\"},\n    {\"value\": \"124.0\"},\n    {\"value\": \"79.0\"},\n    {\"value\": \"82.0\"},\n    {\"value\": \"86.0\"},\n    {\"value\": \"92.0\"},\n    {\"value\": \"98.0\"},\n    {\"value\": \"104.0\"},\n    {\"value\": \"110.0\"},\n    {\"value\": \"116.0\"},\n    {\"value\": \"124.0\"},\n    {\"value\": \"79.0\"},\n    {\"value\": \"82.0\"},\n    {\"value\": \"86.0\"},\n    {\"value\": \"92.0\"},\n    {\"value\": \"98.0\"},\n    {\"value\": \"104.0\"},\n    {\"value\": \"110.0\"},\n    {\"value\": \"116.0\"},\n    {\"value\": \"124.0\"}\n ],\n \"Waist\": [\n    {\"value\": \"59.0\"},\n    {\"value\": \"63.0\"},\n    {\"value\": \"66.0\"},\n    {\"value\": \"72.0\"},\n    {\"value\": \"78.0\"},\n    {\"value\": \"85.0\"},\n    {\"value\": \"92.0\"},\n    {\"value\": \"99.0\"},\n    {\"value\": \"108.0\"},\n    {\"value\": \"59.0\"},\n    {\"value\": \"63.0\"},\n    {\"value\": \"66.0\"},\n    {\"value\": \"72.0\"},\n    {\"value\": \"78.0\"},\n    {\"value\": \"85.0\"},\n    {\"value\": \"92.0\"},\n    {\"value\": \"99.0\"},\n    {\"value\": \"108.0\"},\n    {\"value\": \"59.0\"},\n    {\"value\": \"63.0\"},\n    {\"value\": \"66.0\"},\n    {\"value\": \"72.0\"},\n    {\"value\": \"78.0\"},\n    {\"value\": \"85.0\"},\n    {\"value\": \"92.0\"},\n    {\"value\": \"99.0\"},\n    {\"value\": \"108.0\"},\n    {\"value\": \"59.0\"},\n    {\"value\": \"63.0\"},\n    {\"value\": \"66.0\"},\n    {\"value\": \"72.0\"},\n    {\"value\": \"78.0\"},\n    {\"value\": \"85.0\"},\n    {\"value\": \"92.0\"},\n    {\"value\": \"99.0\"},\n    {\"value\": \"108.0\"}\n ]\n}\n', '2024-01-10 19:59:39', '2024-01-10 19:59:39'),
(2, 1, 'SHIRTS', '{\n \"sizes\": [\n    {\"value\": \"XXS\"},\n    {\"value\": \"XS\"},\n    {\"value\": \"S\"},\n    {\"value\": \"M\"},\n    {\"value\": \"L\"},\n    {\"value\": \"XL\"},\n    {\"value\": \"XXL\"},\n    {\"value\": \"1XL\"},\n    {\"value\": \"2XL\"}\n ],\n \"Bust\": [\n    {\"value\": \"79.0\"},\n    {\"value\": \"82.0\"},\n    {\"value\": \"86.0\"},\n    {\"value\": \"92.0\"},\n    {\"value\": \"98.0\"},\n    {\"value\": \"104.0\"},\n    {\"value\": \"110.0\"},\n    {\"value\": \"116.0\"},\n    {\"value\": \"124.0\"},\n    {\"value\": \"79.0\"},\n    {\"value\": \"82.0\"},\n    {\"value\": \"86.0\"},\n    {\"value\": \"92.0\"},\n    {\"value\": \"98.0\"},\n    {\"value\": \"104.0\"},\n    {\"value\": \"110.0\"},\n    {\"value\": \"116.0\"},\n    {\"value\": \"124.0\"},\n    {\"value\": \"79.0\"},\n    {\"value\": \"82.0\"},\n    {\"value\": \"86.0\"},\n    {\"value\": \"92.0\"},\n    {\"value\": \"98.0\"},\n    {\"value\": \"104.0\"},\n    {\"value\": \"110.0\"},\n    {\"value\": \"116.0\"},\n    {\"value\": \"124.0\"},\n    {\"value\": \"79.0\"},\n    {\"value\": \"82.0\"},\n    {\"value\": \"86.0\"},\n    {\"value\": \"92.0\"},\n    {\"value\": \"98.0\"},\n    {\"value\": \"104.0\"},\n    {\"value\": \"110.0\"},\n    {\"value\": \"116.0\"},\n    {\"value\": \"124.0\"}\n ],\n \"Waist\": [\n    {\"value\": \"59.0\"},\n    {\"value\": \"63.0\"},\n    {\"value\": \"66.0\"},\n    {\"value\": \"72.0\"},\n    {\"value\": \"78.0\"},\n    {\"value\": \"85.0\"},\n    {\"value\": \"92.0\"},\n    {\"value\": \"99.0\"},\n    {\"value\": \"108.0\"},\n    {\"value\": \"59.0\"},\n    {\"value\": \"63.0\"},\n    {\"value\": \"66.0\"},\n    {\"value\": \"72.0\"},\n    {\"value\": \"78.0\"},\n    {\"value\": \"85.0\"},\n    {\"value\": \"92.0\"},\n    {\"value\": \"99.0\"},\n    {\"value\": \"108.0\"},\n    {\"value\": \"59.0\"},\n    {\"value\": \"63.0\"},\n    {\"value\": \"66.0\"},\n    {\"value\": \"72.0\"},\n    {\"value\": \"78.0\"},\n    {\"value\": \"85.0\"},\n    {\"value\": \"92.0\"},\n    {\"value\": \"99.0\"},\n    {\"value\": \"108.0\"},\n    {\"value\": \"59.0\"},\n    {\"value\": \"63.0\"},\n    {\"value\": \"66.0\"},\n    {\"value\": \"72.0\"},\n    {\"value\": \"78.0\"},\n    {\"value\": \"85.0\"},\n    {\"value\": \"92.0\"},\n    {\"value\": \"99.0\"},\n    {\"value\": \"108.0\"}\n ]\n}\n', '2024-01-10 19:59:39', '2024-01-10 19:59:39'),
(3, 7, 'PANTS', '{\n \"sizes\": [\n    {\"value\": \"XXS\"},\n    {\"value\": \"XS\"},\n    {\"value\": \"S\"},\n    {\"value\": \"M\"},\n    {\"value\": \"L\"},\n    {\"value\": \"XL\"},\n    {\"value\": \"XXL\"},\n    {\"value\": \"1XL\"},\n    {\"value\": \"2XL\"}\n ],\n \"Bust\": [\n    {\"value\": \"79.0\"},\n    {\"value\": \"82.0\"},\n    {\"value\": \"86.0\"},\n    {\"value\": \"92.0\"},\n    {\"value\": \"98.0\"},\n    {\"value\": \"104.0\"},\n    {\"value\": \"110.0\"},\n    {\"value\": \"116.0\"},\n    {\"value\": \"124.0\"},\n    {\"value\": \"79.0\"},\n    {\"value\": \"82.0\"},\n    {\"value\": \"86.0\"},\n    {\"value\": \"92.0\"},\n    {\"value\": \"98.0\"},\n    {\"value\": \"104.0\"},\n    {\"value\": \"110.0\"},\n    {\"value\": \"116.0\"},\n    {\"value\": \"124.0\"},\n    {\"value\": \"79.0\"},\n    {\"value\": \"82.0\"},\n    {\"value\": \"86.0\"},\n    {\"value\": \"92.0\"},\n    {\"value\": \"98.0\"},\n    {\"value\": \"104.0\"},\n    {\"value\": \"110.0\"},\n    {\"value\": \"116.0\"},\n    {\"value\": \"124.0\"},\n    {\"value\": \"79.0\"},\n    {\"value\": \"82.0\"},\n    {\"value\": \"86.0\"},\n    {\"value\": \"92.0\"},\n    {\"value\": \"98.0\"},\n    {\"value\": \"104.0\"},\n    {\"value\": \"110.0\"},\n    {\"value\": \"116.0\"},\n    {\"value\": \"124.0\"}\n ],\n \"Waist\": [\n    {\"value\": \"59.0\"},\n    {\"value\": \"63.0\"},\n    {\"value\": \"66.0\"},\n    {\"value\": \"72.0\"},\n    {\"value\": \"78.0\"},\n    {\"value\": \"85.0\"},\n    {\"value\": \"92.0\"},\n    {\"value\": \"99.0\"},\n    {\"value\": \"108.0\"},\n    {\"value\": \"59.0\"},\n    {\"value\": \"63.0\"},\n    {\"value\": \"66.0\"},\n    {\"value\": \"72.0\"},\n    {\"value\": \"78.0\"},\n    {\"value\": \"85.0\"},\n    {\"value\": \"92.0\"},\n    {\"value\": \"99.0\"},\n    {\"value\": \"108.0\"},\n    {\"value\": \"59.0\"},\n    {\"value\": \"63.0\"},\n    {\"value\": \"66.0\"},\n    {\"value\": \"72.0\"},\n    {\"value\": \"78.0\"},\n    {\"value\": \"85.0\"},\n    {\"value\": \"92.0\"},\n    {\"value\": \"99.0\"},\n    {\"value\": \"108.0\"},\n    {\"value\": \"59.0\"},\n    {\"value\": \"63.0\"},\n    {\"value\": \"66.0\"},\n    {\"value\": \"72.0\"},\n    {\"value\": \"78.0\"},\n    {\"value\": \"85.0\"},\n    {\"value\": \"92.0\"},\n    {\"value\": \"99.0\"},\n    {\"value\": \"108.0\"}\n ]\n}\n', '2024-01-10 19:59:39', '2024-01-10 19:59:39'),
(5, 13, 'HOME STYLE', '{\n \"sizes\": [\n    {\"value\": \"XXS\"},\n    {\"value\": \"XS\"},\n    {\"value\": \"S\"},\n    {\"value\": \"M\"},\n    {\"value\": \"L\"},\n    {\"value\": \"XL\"},\n    {\"value\": \"XXL\"},\n    {\"value\": \"1XL\"},\n    {\"value\": \"2XL\"}\n ],\n \"Bust\": [\n    {\"value\": \"79.0\"},\n    {\"value\": \"82.0\"},\n    {\"value\": \"86.0\"},\n    {\"value\": \"92.0\"},\n    {\"value\": \"98.0\"},\n    {\"value\": \"104.0\"},\n    {\"value\": \"110.0\"},\n    {\"value\": \"116.0\"},\n    {\"value\": \"124.0\"},\n    {\"value\": \"79.0\"},\n    {\"value\": \"82.0\"},\n    {\"value\": \"86.0\"},\n    {\"value\": \"92.0\"},\n    {\"value\": \"98.0\"},\n    {\"value\": \"104.0\"},\n    {\"value\": \"110.0\"},\n    {\"value\": \"116.0\"},\n    {\"value\": \"124.0\"},\n    {\"value\": \"79.0\"},\n    {\"value\": \"82.0\"},\n    {\"value\": \"86.0\"},\n    {\"value\": \"92.0\"},\n    {\"value\": \"98.0\"},\n    {\"value\": \"104.0\"},\n    {\"value\": \"110.0\"},\n    {\"value\": \"116.0\"},\n    {\"value\": \"124.0\"},\n    {\"value\": \"79.0\"},\n    {\"value\": \"82.0\"},\n    {\"value\": \"86.0\"},\n    {\"value\": \"92.0\"},\n    {\"value\": \"98.0\"},\n    {\"value\": \"104.0\"},\n    {\"value\": \"110.0\"},\n    {\"value\": \"116.0\"},\n    {\"value\": \"124.0\"}\n ],\n \"Waist\": [\n    {\"value\": \"59.0\"},\n    {\"value\": \"63.0\"},\n    {\"value\": \"66.0\"},\n    {\"value\": \"72.0\"},\n    {\"value\": \"78.0\"},\n    {\"value\": \"85.0\"},\n    {\"value\": \"92.0\"},\n    {\"value\": \"99.0\"},\n    {\"value\": \"108.0\"},\n    {\"value\": \"59.0\"},\n    {\"value\": \"63.0\"},\n    {\"value\": \"66.0\"},\n    {\"value\": \"72.0\"},\n    {\"value\": \"78.0\"},\n    {\"value\": \"85.0\"},\n    {\"value\": \"92.0\"},\n    {\"value\": \"99.0\"},\n    {\"value\": \"108.0\"},\n    {\"value\": \"59.0\"},\n    {\"value\": \"63.0\"},\n    {\"value\": \"66.0\"},\n    {\"value\": \"72.0\"},\n    {\"value\": \"78.0\"},\n    {\"value\": \"85.0\"},\n    {\"value\": \"92.0\"},\n    {\"value\": \"99.0\"},\n    {\"value\": \"108.0\"},\n    {\"value\": \"59.0\"},\n    {\"value\": \"63.0\"},\n    {\"value\": \"66.0\"},\n    {\"value\": \"72.0\"},\n    {\"value\": \"78.0\"},\n    {\"value\": \"85.0\"},\n    {\"value\": \"92.0\"},\n    {\"value\": \"99.0\"},\n    {\"value\": \"108.0\"}\n ]\n}\n', '2024-01-10 19:59:39', '2024-01-10 19:59:39');

-- --------------------------------------------------------

--
-- Table structure for table `stock_levels`
--

CREATE TABLE `stock_levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_variation_id` bigint(20) UNSIGNED NOT NULL,
  `inventory_id` bigint(20) UNSIGNED NOT NULL,
  `first_point_inventory_id` int(11) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `min_stock_level` int(11) NOT NULL,
  `max_stock_level` int(11) NOT NULL,
  `current_stock_level` int(11) NOT NULL,
  `on_hold` int(11) DEFAULT 0,
  `shipment_hold` int(11) NOT NULL DEFAULT 0,
  `target_date` datetime NOT NULL,
  `sold_quantity` int(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_levels`
--

INSERT INTO `stock_levels` (`id`, `product_variation_id`, `inventory_id`, `first_point_inventory_id`, `name`, `min_stock_level`, `max_stock_level`, `current_stock_level`, `on_hold`, `shipment_hold`, `target_date`, `sold_quantity`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(22, 164, 2, NULL, 'Initial Shipment', 3, 1000, 993, 0, 0, '2025-02-19 11:57:05', 7, 'slow-movement', NULL, '2025-02-19 08:57:05', '2025-04-21 13:29:24'),
(23, 165, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-02-19 14:43:35', 0, 'slow-movement', NULL, '2025-02-19 11:43:35', '2025-02-20 11:13:20'),
(24, 166, 2, NULL, 'Initial Shipment', 3, 1000, 989, 0, 0, '2025-02-19 14:43:35', 11, 'slow-movement', NULL, '2025-02-19 11:43:35', '2025-04-30 13:18:55'),
(25, 167, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-02-19 14:43:35', 0, 'slow-movement', NULL, '2025-02-19 11:43:35', '2025-04-08 11:02:48'),
(26, 168, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-02-19 14:43:35', 0, 'slow-movement', NULL, '2025-02-19 11:43:35', '2025-02-19 11:43:35'),
(27, 169, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-02-19 14:43:35', 0, 'slow-movement', NULL, '2025-02-19 11:43:35', '2025-04-08 11:19:17'),
(28, 170, 2, NULL, 'Initial Shipment', 3, 1000, 994, 0, 0, '2025-02-19 14:43:35', 6, 'slow-movement', NULL, '2025-02-19 11:43:35', '2025-05-12 10:15:44'),
(29, 171, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-02-19 14:43:35', 0, 'slow-movement', NULL, '2025-02-19 11:43:35', '2025-04-08 11:19:17'),
(30, 172, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-02-19 14:43:35', 0, 'slow-movement', NULL, '2025-02-19 11:43:35', '2025-02-19 11:43:35'),
(31, 173, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-02-19 14:43:35', 0, 'slow-movement', NULL, '2025-02-19 11:43:35', '2025-03-20 09:07:11'),
(32, 174, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-02-19 14:43:35', 0, 'slow-movement', NULL, '2025-02-19 11:43:35', '2025-04-09 08:09:16'),
(33, 175, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-02-19 14:43:35', 0, 'slow-movement', NULL, '2025-02-19 11:43:35', '2025-04-09 07:33:13'),
(34, 176, 2, NULL, 'Initial Shipment', 3, 1000, 955, 0, 0, '2025-02-19 14:43:35', 45, 'slow-movement', NULL, '2025-02-19 11:43:35', '2025-04-30 13:11:37'),
(57, 1102, 2, NULL, 'Initial Shipment', 3, 1000, 995, 0, 0, '2025-04-09 14:43:24', 5, 'slow-movement', NULL, '2025-04-09 11:43:24', '2025-04-19 12:41:32'),
(58, 1103, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-04-09 14:43:24', 0, 'slow-movement', NULL, '2025-04-09 11:43:24', '2025-04-09 11:43:24'),
(59, 1104, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-04-09 14:43:24', 0, 'slow-movement', NULL, '2025-04-09 11:43:24', '2025-04-09 11:43:24'),
(60, 1105, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-04-09 14:43:24', 0, 'slow-movement', NULL, '2025-04-09 11:43:24', '2025-04-09 11:43:24'),
(61, 1106, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-04-09 14:43:24', 0, 'slow-movement', NULL, '2025-04-09 11:43:24', '2025-04-09 11:43:24'),
(62, 1107, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-04-09 14:43:24', 0, 'slow-movement', NULL, '2025-04-09 11:43:24', '2025-04-09 11:43:24'),
(63, 1108, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-04-09 14:43:24', 0, 'slow-movement', NULL, '2025-04-09 11:43:24', '2025-04-09 11:43:24'),
(64, 1109, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-04-09 14:43:24', 0, 'slow-movement', NULL, '2025-04-09 11:43:24', '2025-04-09 11:43:24'),
(65, 1110, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-04-09 14:43:24', 0, 'slow-movement', NULL, '2025-04-09 11:43:24', '2025-04-09 11:43:24'),
(66, 1111, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-04-09 14:43:24', 0, 'slow-movement', NULL, '2025-04-09 11:43:24', '2025-04-09 11:43:24'),
(67, 1112, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-04-09 14:43:24', 0, 'slow-movement', NULL, '2025-04-09 11:43:24', '2025-04-09 11:43:24'),
(68, 1113, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-04-09 14:43:24', 0, 'slow-movement', NULL, '2025-04-09 11:43:24', '2025-04-09 11:43:24'),
(69, 1114, 2, NULL, 'Initial Shipment', 3, 1000, 992, 0, 0, '2025-04-09 14:43:24', 8, 'slow-movement', NULL, '2025-04-09 11:43:24', '2025-04-16 12:47:34'),
(70, 1115, 2, NULL, 'Initial Shipment', 3, 1000, 998, 0, 0, '2025-04-09 14:43:24', 2, 'slow-movement', NULL, '2025-04-09 11:43:24', '2025-04-10 10:46:33'),
(71, 1116, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-04-09 14:43:24', 0, 'slow-movement', NULL, '2025-04-09 11:43:24', '2025-04-09 11:43:24'),
(72, 1117, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-04-09 14:43:24', 0, 'slow-movement', NULL, '2025-04-09 11:43:24', '2025-04-09 11:43:24'),
(73, 1118, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-04-09 14:43:24', 0, 'slow-movement', NULL, '2025-04-09 11:43:24', '2025-04-09 11:43:24'),
(74, 1119, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-04-09 14:43:24', 0, 'slow-movement', NULL, '2025-04-09 11:43:24', '2025-04-09 11:43:24'),
(75, 1120, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-04-09 14:43:24', 0, 'slow-movement', NULL, '2025-04-09 11:43:24', '2025-04-09 11:43:24'),
(76, 1121, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-04-09 14:43:24', 0, 'slow-movement', NULL, '2025-04-09 11:43:24', '2025-04-09 11:43:24'),
(77, 1122, 2, NULL, 'Initial Shipment', 3, 1000, 995, 0, 0, '2025-04-09 15:01:15', 5, 'slow-movement', NULL, '2025-04-09 12:01:15', '2025-04-19 12:30:25'),
(78, 1123, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-04-09 15:01:15', 0, 'slow-movement', NULL, '2025-04-09 12:01:15', '2025-04-09 12:01:15'),
(79, 1124, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-04-09 15:01:15', 0, 'slow-movement', NULL, '2025-04-09 12:01:15', '2025-04-09 12:01:15'),
(80, 1125, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-04-09 15:01:15', 0, 'slow-movement', NULL, '2025-04-09 12:01:15', '2025-04-09 12:01:15'),
(81, 1126, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-04-09 15:01:15', 0, 'slow-movement', NULL, '2025-04-09 12:01:15', '2025-04-09 12:01:15'),
(82, 1127, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-04-09 15:01:15', 0, 'slow-movement', NULL, '2025-04-09 12:01:15', '2025-04-09 12:01:15'),
(83, 1128, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-04-09 15:01:15', 0, 'slow-movement', NULL, '2025-04-09 12:01:15', '2025-04-09 12:01:15'),
(84, 1129, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-04-09 15:01:15', 0, 'slow-movement', NULL, '2025-04-09 12:01:15', '2025-04-09 12:01:15'),
(85, 1130, 2, NULL, 'Initial Shipment', 3, 1000, 996, 0, 0, '2025-04-09 15:01:15', 4, 'slow-movement', NULL, '2025-04-09 12:01:15', '2025-04-14 09:45:49'),
(86, 1131, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-04-09 15:01:15', 0, 'slow-movement', NULL, '2025-04-09 12:01:15', '2025-04-09 12:01:15'),
(87, 1132, 2, NULL, 'Initial Shipment', 3, 1000, 993, 0, 0, '2025-04-09 15:01:15', 7, 'slow-movement', NULL, '2025-04-09 12:01:15', '2025-04-21 13:38:27'),
(88, 1133, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-04-09 15:01:15', 0, 'slow-movement', NULL, '2025-04-09 12:01:15', '2025-04-09 12:01:15'),
(89, 1134, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-04-09 15:01:15', 0, 'slow-movement', NULL, '2025-04-09 12:01:15', '2025-04-09 12:01:15'),
(90, 1135, 2, NULL, 'Initial Shipment', 3, 1000, 1000, 0, 0, '2025-04-09 15:01:15', 0, 'slow-movement', NULL, '2025-04-09 12:01:15', '2025-04-09 12:01:15'),
(91, 1145, 2, NULL, 'Initial Shipment', 3, 1000, 492, 0, 0, '2025-04-10 10:43:20', 8, 'slow-movement', NULL, '2025-04-10 07:43:20', '2025-05-12 09:05:18'),
(92, 1146, 2, NULL, 'Initial Shipment', 3, 1000, 500, 0, 0, '2025-04-10 10:43:20', 0, 'slow-movement', NULL, '2025-04-10 07:43:20', '2025-04-10 07:43:20'),
(93, 1147, 2, NULL, 'Initial Shipment', 3, 1000, 490, 0, 0, '2025-04-10 10:43:20', 10, 'slow-movement', NULL, '2025-04-10 07:43:20', '2025-04-12 11:10:01'),
(94, 1148, 2, NULL, 'Initial Shipment', 3, 1000, 500, 0, 0, '2025-04-10 10:43:20', 0, 'slow-movement', NULL, '2025-04-10 07:43:20', '2025-04-10 07:43:20'),
(95, 1149, 2, NULL, 'Initial Shipment', 3, 1000, 500, 0, 0, '2025-04-10 10:43:20', 0, 'slow-movement', NULL, '2025-04-10 07:43:20', '2025-04-10 07:43:20'),
(96, 1150, 2, NULL, 'Initial Shipment', 3, 1000, 500, 0, 0, '2025-04-10 10:43:20', 0, 'slow-movement', NULL, '2025-04-10 07:43:20', '2025-04-10 07:43:20'),
(97, 1228, 2, NULL, 'Initial Shipment', 3, 1000, 200, 0, 0, '2025-04-28 14:45:32', 0, 'slow-movement', NULL, '2025-04-28 11:45:32', '2025-04-28 11:45:32');

-- --------------------------------------------------------

--
-- Table structure for table `stock_movements`
--

CREATE TABLE `stock_movements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_inventory_id` bigint(20) UNSIGNED NOT NULL,
  `to_inventory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipment_name` varchar(200) NOT NULL,
  `delivery_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `shipped_date` timestamp NULL DEFAULT NULL,
  `received_date` timestamp NULL DEFAULT NULL,
  `expected` int(11) DEFAULT NULL,
  `received` int(11) DEFAULT NULL,
  `num_of_packages` int(11) NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'open',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_variations`
--

CREATE TABLE `stock_variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_variation_id` bigint(20) UNSIGNED NOT NULL,
  `stock_movement_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`name`)),
  `slug` varchar(200) NOT NULL,
  `valid` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `slug`, `valid`, `deleted_at`, `created_at`, `updated_at`) VALUES
(8, 1, '{\"en\":\"Test Sub-category 1\",\"ar\":\"\\u0641\\u0626\\u0629 \\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629 1\"}', '{\"en\":\"test-sub-category-1\"}', 0, NULL, '2024-10-20 12:40:31', '2025-03-26 06:09:48'),
(9, 1, '{\"en\":\"Test Sub-category 2\",\"ar\":\"\\u0641\\u0626\\u0629 \\u062a\\u062c\\u0631\\u064a\\u0628\\u064a\\u0629 2\"}', '{\"en\":\"test-sub-category-2\"}', 0, NULL, '2024-10-20 12:40:47', '2025-03-26 06:09:48'),
(53, 1, '{\"en\":\"Solomon Vega\",\"ar\":\"Nathan Frye\"}', '{\"en\":\"solomon-vega\"}', 0, NULL, '2025-02-19 12:30:43', '2025-03-26 06:09:48'),
(54, 17, '{\"en\":\"Austin Ferrell\",\"ar\":\"Olympia Joyce\"}', '{\"en\":\"austin-ferrell\"}', 0, '2025-03-26 06:09:39', '2025-02-20 08:13:31', '2025-03-26 06:09:39'),
(55, 17, '{\"en\":\"Eagan Brewer\",\"ar\":\"Xena Fitzgerald\"}', '{\"en\":\"eagan-brewer\"}', 0, '2025-03-26 06:09:39', '2025-02-20 08:13:55', '2025-03-26 06:09:39'),
(56, 17, '{\"en\":\"SSAA\",\"ar\":\"dd\"}', '{\"en\":\"ssaa\"}', 0, '2025-03-26 06:09:39', '2025-02-25 10:59:11', '2025-03-26 06:09:39'),
(57, 18, '{\"en\":\"aa\",\"ar\":\"ss\"}', '{\"en\":\"aa\"}', 0, '2025-03-27 12:35:18', '2025-02-25 11:10:44', '2025-03-27 12:35:18'),
(58, 1, '{\"en\":\"aa\",\"ar\":\"aaa\"}', '{\"en\":\"aa-1\"}', 0, '2025-02-25 11:40:41', '2025-02-25 11:35:24', '2025-02-25 11:40:41'),
(59, 1, '{\"en\":\"aa\",\"ar\":\"ss\"}', '{\"en\":\"aa-2\"}', 0, '2025-02-25 11:37:26', '2025-02-25 11:37:14', '2025-02-25 11:37:26'),
(60, 1, '{\"en\":\"kk\",\"ar\":\"kk\"}', '{\"en\":\"kk\"}', 0, '2025-02-25 11:41:09', '2025-02-25 11:40:32', '2025-02-25 11:41:09'),
(61, 1, '{\"en\":\"ss\",\"ar\":\"ss\"}', '{\"en\":\"ss\"}', 0, '2025-02-25 11:42:59', '2025-02-25 11:42:48', '2025-02-25 11:42:59'),
(62, 1, '{\"en\":\"aa\",\"ar\":\"aa\"}', '{\"en\":\"aa-3\"}', 0, '2025-02-25 11:47:58', '2025-02-25 11:47:44', '2025-02-25 11:47:58'),
(63, 1, '{\"en\":\"ss\",\"ar\":\"ss\"}', '{\"en\":\"ss-1\"}', 0, '2025-02-25 11:48:13', '2025-02-25 11:48:07', '2025-02-25 11:48:13'),
(64, 1, '{\"en\":\"aa\",\"ar\":\"sss\"}', '{\"en\":\"aa-4\"}', 0, '2025-02-26 06:55:27', '2025-02-26 06:54:52', '2025-02-26 06:55:27'),
(65, 21, '{\"en\":\"jhffjhf\",\"ar\":\"jhfjh\"}', '{\"en\":\"jhffjhf\"}', 0, '2025-03-26 06:08:18', '2025-03-13 11:52:08', '2025-03-26 06:08:18'),
(66, 22, '{\"en\":\"T-Shirt\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a\"}', '{\"en\":\"t-shirt\"}', 0, NULL, '2025-03-16 11:31:35', '2025-06-05 12:49:49'),
(67, 23, '{\"en\":\"TROUSERS\",\"ar\":\"\\u0628\\u0646\\u0637\\u0627\\u0644\"}', '{\"en\":\"trousers\"}', 0, NULL, '2025-03-16 12:27:43', '2025-06-05 12:49:52'),
(68, 24, '{\"en\":\"Jacket\",\"ar\":\"\\u062c\\u0627\\u0643\\u064a\\u062a\"}', '{\"en\":\"jacket\"}', 0, NULL, '2025-03-16 12:45:58', '2025-06-05 12:49:54'),
(69, 25, '{\"en\":\"T-Shirt POLO\",\"ar\":\"\\u062a\\u064a\\u0634\\u0631\\u062a \\u0628\\u0648\\u0644\\u0648\"}', '{\"en\":\"t-shirt-polo\"}', 0, NULL, '2025-03-16 13:02:08', '2025-03-26 06:07:24'),
(70, 22, '{\"en\":\"POLO T-Shirt\",\"ar\":\"\\u0628\\u0648\\u0644\\u0648\"}', '{\"en\":\"polo-t-shirt\"}', 0, NULL, '2025-03-25 13:26:36', '2025-06-05 12:49:49'),
(71, 22, '{\"en\":\"FOR DELETE\",\"ar\":\"\\u0644\\u0644\\u062d\\u0630\\u0641\"}', '{\"en\":\"for-delete\"}', 0, '2025-03-26 06:25:50', '2025-03-26 06:23:55', '2025-03-26 06:25:50'),
(72, 26, '{\"en\":\"SHIRT\",\"ar\":\"\\u0642\\u0645\\u064a\\u0635\"}', '{\"en\":\"shirt\"}', 0, NULL, '2025-03-26 13:11:55', '2025-03-26 13:11:55'),
(73, 27, '{\"en\":\"BOXER\",\"ar\":\"\\u0628\\u0648\\u0643\\u0633\\u0631\"}', '{\"en\":\"boxer\"}', 0, NULL, '2025-03-27 07:12:06', '2025-03-27 07:12:06'),
(74, 28, '{\"en\":\"T-SHIRT POLO\",\"ar\":\"\\u0628\\u0648\\u0644\\u0648\"}', '{\"en\":\"t-shirt-polo-1\"}', 0, NULL, '2025-03-27 12:37:05', '2025-03-27 12:37:05'),
(75, 29, '{\"en\":\"BOXER\",\"ar\":\"\\u0628\\u0648\\u0643\\u0633\\u0631\"}', '{\"en\":\"boxer-1\"}', 0, '2025-04-05 07:18:40', '2025-04-05 07:08:35', '2025-04-05 07:18:40'),
(76, 29, '{\"en\":\"BOXER\",\"ar\":\"\\u0628\\u0648\\u0643\\u0633\\u0631\"}', '{\"en\":\"boxer-2\"}', 0, NULL, '2025-04-05 07:27:46', '2025-04-05 07:27:46'),
(77, 30, '{\"en\":\"Pyjama (trouser)\",\"ar\":\"\\u0628\\u064a\\u062c\\u0627\\u0645\\u0627 (\\u0628\\u0646\\u0637\\u0627\\u0644)\"}', '{\"en\":\"pyjama-trouser\"}', 0, NULL, '2025-04-05 07:56:51', '2025-04-05 08:25:31'),
(78, 31, '{\"en\":\"PYJAMA (trouser)\",\"ar\":\"\\u0628\\u064a\\u062c\\u0627\\u0645\\u0627 (\\u0628\\u0646\\u0637\\u0627\\u0644)\"}', '{\"en\":\"pyjama-trouser-1\"}', 0, NULL, '2025-04-05 08:44:29', '2025-04-05 08:44:29'),
(79, 32, '{\"en\":\"UNDERWEAR\",\"ar\":\"\\u062f\\u0627\\u062e\\u0644\\u064a\"}', '{\"en\":\"underwear\"}', 0, NULL, '2025-04-15 12:48:22', '2025-04-15 12:48:22'),
(80, 28, '{\"en\":\"long sleeve t-shirt\",\"ar\":\"\\u0628\\u0644\\u0648\\u0632\\u0629 \\u0628\\u0643\\u0645\"}', '{\"en\":\"long-sleeve-t-shirt\"}', 0, NULL, '2025-04-16 11:18:06', '2025-04-16 11:18:06'),
(81, 33, '{\"en\":\"Gift Card\",\"ar\":\"\\u063a\\u064a\\u0641\\u062a \\u0643\\u0627\\u0631\\u062f\"}', '{\"en\":\"gift-card\"}', 0, NULL, '2025-04-28 10:09:30', '2025-05-17 13:34:07'),
(82, 34, '{\"en\":\"Gift Card\",\"ar\":\"\\u0628\\u0637\\u0627\\u0642\\u0629 \\u0647\\u062f\\u064a\\u0629\"}', '{\"en\":\"gift-card-1\"}', 0, NULL, '2025-05-17 13:25:09', '2025-06-05 13:55:58');

-- --------------------------------------------------------

--
-- Table structure for table `sub_orders`
--

CREATE TABLE `sub_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `packaging_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `telescope_entries`
--

CREATE TABLE `telescope_entries` (
  `sequence` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `batch_id` char(36) NOT NULL,
  `family_hash` varchar(200) DEFAULT NULL,
  `should_display_on_index` tinyint(1) NOT NULL DEFAULT 1,
  `type` varchar(20) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `telescope_entries_tags`
--

CREATE TABLE `telescope_entries_tags` (
  `entry_uuid` char(36) NOT NULL,
  `tag` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `telescope_monitoring`
--

CREATE TABLE `telescope_monitoring` (
  `tag` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `top_products`
--

CREATE TABLE `top_products` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_uuid` varchar(255) NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `exchange_id` bigint(11) DEFAULT NULL,
  `refund_id` bigint(20) DEFAULT NULL,
  `gift_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `covered_by_gift` int(11) DEFAULT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'order',
  `payment_method` varchar(200) DEFAULT NULL,
  `transaction_source` varchar(25) DEFAULT NULL,
  `operation_type` varchar(100) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_inventory_id` bigint(20) UNSIGNED NOT NULL,
  `to_inventory_id` bigint(20) UNSIGNED NOT NULL,
  `deliver_date` datetime NOT NULL,
  `quantity` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_items`
--

CREATE TABLE `transfer_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transfer_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `banned` tinyint(1) NOT NULL DEFAULT 0,
  `isVerified` tinyint(1) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `phone`, `banned`, `isVerified`, `is_deleted`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Ahmad', 'Shahla', 'ahmadshahla410@gmail.com', '$2y$10$ilA/Wh4M26cpIxbxUze6Z.5YmeQO7sgMDcvMUjPpeetLpDfFokzRe', '0933096222', 0, 1, 0, NULL, NULL, '2024-10-20 10:28:36', '2024-12-24 11:44:42'),
(3, 'Majd', 'Kikhia', 'majd.kikhia.9@gmail.com', '$2y$10$6iRihCc8gJSJT92/htkIS.EkC2XaIC.jwTPcMGCNeurQT.g70rWzW', 'deleted account -0983463705-', 0, 1, 1, NULL, NULL, '2024-10-23 10:51:20', '2024-11-07 10:53:54'),
(4, 'Majd', 'Kikhia', NULL, '$2y$10$tF8wgcbmwDsue.xJSTv4Sung/qyigvwrsPzm6GHs0Od3ultobAl6K', 'deleted account -0983463705-', 0, 1, 1, 'GhbLeXFia7ULzUp68tsmPnvfPbjCg5S4PStvLAUjbSQqwcXw7dtJPLVyKtfE', NULL, '2024-09-24 10:53:26', '2024-11-09 10:58:31'),
(5, 'Nora', 'Kadri', NULL, '$2y$10$j8eN3aKkd1qeuHBd/4Tv4ezv2TBmXJxcu5yXha0gq5gi8ghayOwMq', '0935744377', 0, 1, 0, NULL, NULL, '2024-10-23 19:22:02', '2024-11-03 18:26:34'),
(6, 'nora', 'Kadri', NULL, '$2y$10$hTrxMaA4HqxTO1LijOL87eR68gYm0q0F.4gTuN6T6RWp6Yz5NnlAa', '0933930199', 0, 1, 0, NULL, NULL, '2024-10-23 19:25:27', '2024-10-23 19:26:30'),
(7, 'mohamad', 'alhaskeh', NULL, '$2y$10$57Agc8znhi8wYySInukrU.FghrksCmWvFbHSUCCO6rjCr5RdepXJa', '0993572688', 0, 1, 0, 'sMnFaJqnsTu5uRXkO4EMbY6iy9sAyCG5cOXovgYkfOAukvXJ7jtgdudUusqv', NULL, '2024-11-02 10:50:30', '2025-04-05 13:43:18'),
(8, 'salah', 'ALJAIROUDI', NULL, '$2y$10$l6qLbGXAUk/8jBTkLF35FuCtaiSEsnP2vsPIhx3se/28gXRugb3ly', '0937878787', 0, 1, 0, NULL, NULL, '2024-11-04 11:44:14', '2024-11-04 11:44:26'),
(9, 'Yaroub', 'Sbeha', 'yroubss@gmail.com', '$2y$10$mwER.0vY3tB6391O2TVRL.KJMMqhNBvHFzLG5grpbhA270VLjSKmG', '0992348088', 0, 1, 0, NULL, NULL, '2024-11-21 11:36:41', '2024-11-21 11:36:56'),
(10, 'Ahmad', 'Shahla', 'ahmadshahla411@gmail.com', '$2y$10$kbhi5jHLZcWBTT1lFgCKrObYMetL46t7uYvb/9bxMIdOo0fonhbSa', '0933096270', 0, 1, 0, '9nGyU9NLUpQtpsNXjmMAAZBOJuOKCMWwyJTFCkXDe2l7uHEAEAGfblf3eg2Z', NULL, '2024-11-25 11:12:20', '2025-04-07 07:12:37'),
(11, 'majd', 'kikhia', NULL, '$2y$10$hBM95hn1wqJ3/g7KL1g3K.ATqORWn7IOhdLMJ91w7SAHk6g//YUBW', '0983463705', 0, 1, 0, NULL, NULL, '2024-12-03 06:45:05', '2025-01-07 12:38:56'),
(12, 'Omran', 'XO cafe', NULL, '$2y$10$RwSzztNL6jcVMFg/ALUPvufdIqK5JLkViS8k0KCgfSzIpfFcXqOOm', '0989222002', 0, 1, 0, NULL, NULL, '2024-12-03 10:08:42', '2024-12-03 10:09:00'),
(13, 'abdulrahman', 'Hamada', 'abdhamado995@gmail.com', '$2y$10$DknjHiPC/ilB3YttamsLXumVEvNZnyjnfvEm3ifUndX/xW9fCYb2K', '0956269626', 0, 0, 0, NULL, NULL, '2025-01-02 14:12:57', '2025-01-02 14:12:57'),
(14, 'Mahmood', 'mohammed', 'operations@xo-textile.com', '$2y$10$cC.CAtm.3g9/WCyFlEN73eAc4morABbKxavo1dDPB5aux2t.cNBsC', '0989222079', 0, 0, 0, NULL, NULL, '2025-01-04 12:58:39', '2025-01-04 12:58:39'),
(19, 'Abdulaziz1212', 'Dablo', 'abooddddablo@gmail.com', '$2y$10$930Qa69ZH/KEjEPus7H.ouMRXhscyxWxN65a1X6tcGaRdWy2xzoD2', '0952758019', 0, 1, 0, NULL, NULL, '2025-01-20 09:07:13', '2025-04-19 09:10:28'),
(20, 'Omar', 'Helal', 'mohammadmhjazy1010@gmail.com', '$2y$10$Iwhat67kGt9wZ.ajrwyBxucDmDpNqFTkXPbPkPEloV5QTHQBJPaiS', '0936482744', 0, 0, 0, NULL, NULL, '2025-03-03 07:51:14', '2025-03-03 07:51:14'),
(24, 'Ahmad', 'Shahla', NULL, '$2y$10$zX901Kii4HJ5QhSYMIJRKOXaoAwcBLuxa4eZG.GsOMCOXaskQLjyi', '0933096271', 0, 1, 0, 'yvSNMqoGsdpR1BuPrd426gWBVxO3J3O8JqLqxyVD5gw85pkLMuC9GQsnTwtB', NULL, '2025-04-07 11:28:51', '2025-04-09 07:59:43'),
(25, 'Maher', 'Hdiouh', 'maher.hdiouh@gmail.com', '$2y$10$ttevFTKv.QJtnlh7amtqBeWh2bxYXF546mR3dRb2amgGDQq8cYqJK', '0933066350', 0, 0, 0, NULL, NULL, '2025-04-18 08:21:09', '2025-04-18 08:21:09'),
(26, 'Haidara', 'Darwish', 'had35272@gmail.com', '$2y$10$jzCq/UkCfoKW5Ndqdv9jMOFEOKOXtaiFuJhB99F.V06YafOMKy9Sy', '0988784048', 0, 0, 0, NULL, NULL, '2025-04-18 16:07:30', '2025-04-18 16:07:30'),
(27, 'احمد', 'طباع', 'ahmad.tabbaa@gmail.com', '$2y$10$PXjUmz3KZPQ1DS.7g2jKWuQGbqaP2G4yD4JGouPaEfmCFCXFkvaBe', '0993236000', 0, 0, 0, NULL, NULL, '2025-04-20 14:04:27', '2025-04-20 14:04:27'),
(28, 'Ahmad', 'Ahmad', 'drghamdakhol@gmail.com', '$2y$10$psnnsZhKel5.QjjN0SzWtuw/2mlOQQwrrceNGvy/EzCc0HFAWxjDu', '0994335204', 0, 0, 0, NULL, NULL, '2025-04-21 11:19:30', '2025-04-21 11:19:30'),
(29, 'Aya', 'Ibrahim', 'ibrahimaya821@gmail.com', '$2y$10$Mxz5swDW8tb7yQnToTVHO.SdDr.nVA0qF3QRxTZuf0X9qWA/MySAC', '0987297772', 0, 0, 0, NULL, NULL, '2025-04-30 10:09:12', '2025-04-30 10:09:12'),
(30, 'Abdulraheem', 'Ma', 'abd.ood372@gmail.com', '$2y$10$sxMyujylX.yAFhQFLO7sPeR4ur9YAUi3lQnu/Jv4/wgYROv61Otfe', '0943941673', 0, 0, 0, NULL, NULL, '2025-05-05 19:28:12', '2025-05-05 19:28:12'),
(31, 'عبدالله', 'الدخيل', 'abdullaaldakil@gmail.com', '$2y$10$dvCPNoa4T3kgAlfoYeozT.qfCPyQoPYKu8VpyPSD0B5Tbz0qIIrsW', '0994065046', 0, 0, 0, NULL, NULL, '2025-05-19 19:13:58', '2025-05-19 19:13:58'),
(32, 'mohd', 'hunt', 'hunt.pro.019@gmail.com', '$2y$10$zkE/63V1F1uxFH8TSPEdw.F/LPCNWUg7UPVW/kMFAwobvMIFqpeCy', '0941806761', 0, 0, 0, NULL, NULL, '2025-05-20 05:35:43', '2025-05-20 05:35:43'),
(33, 'يوسف', 'الخلف', 'alkhlfy471@gmail.com', '$2y$10$y7tb8G3XgRHq9c88D1SnKeXIuYSPc460WVLU2hF2VzEkEDvxAeO9K', '0939116787', 0, 0, 0, NULL, NULL, '2025-06-01 04:40:43', '2025-06-01 04:40:43'),
(34, 'Ward', 'Khoder', 'wardalkhodr@gmail.com', '$2y$10$JugDG6AZ2qjZcgS5u4v9DOyuVAmq/oKFPjAsN0KbT78g62K2/D7/a', '0992020158', 0, 0, 0, NULL, NULL, '2025-06-02 13:54:14', '2025-06-02 13:54:14'),
(35, 'Boushra', 'Kilo', 'boushrskilo3@gmail.com', '$2y$10$xs5QvcOh5esW4u8K5kyNiO90WUBWupd834FdnULz/kyUtmxzu4saa', '0954215048', 0, 0, 0, NULL, NULL, '2025-06-02 14:56:17', '2025-06-02 14:56:17'),
(36, 'Boushra', 'Kilo', 'kiloboushra@gmail.com', '$2y$10$nQN0cbW0xGWfqD9s7t1H3uuX9asSlL.BxGFqLcg2j9kUHDaAe/LvW', '0983821824', 0, 0, 0, NULL, NULL, '2025-06-02 15:04:35', '2025-06-02 15:04:35'),
(37, 'Lubna', 'Alnahhas', 'loleta-loloo@hotmail.com', '$2y$10$bSp8M7eB682XPSCnziQS/OKsI2HGo3CGr/7RfSZ5A6mL4R6BXkZG6', '0960987786', 0, 0, 0, NULL, NULL, '2025-06-03 08:52:58', '2025-06-03 08:52:58'),
(38, 'Molham', 'Alhariri', 'molham.alhariri.2008@gmail.com', '$2y$10$ubapGqYym1xCMMI/dDAaluViJ4MpVYKzH6nKQBFhMYh4VSYFBckde', '0932118229', 0, 0, 0, NULL, NULL, '2025-06-04 12:27:40', '2025-06-04 12:27:40'),
(39, 'Yahya', 'Baba', 'tahy900@gmail.com', '$2y$10$EnUMYmxktMmR3rvAeRSSFuXDrBKjL5qu646gaJfz0rAnUJKu/xoUW', '0991137716', 0, 0, 0, NULL, NULL, '2025-06-05 10:50:42', '2025-06-05 10:50:42'),
(40, 'fatima', 'basha', 'Fatimaalbsha7@gmail.com', '$2y$10$kWWLa/N9gjo96oglsGoUa.gW.igUY76Q6NrDaCtJ0wNDgvNGUzZPe', '0988957909', 0, 0, 0, NULL, NULL, '2025-06-14 08:01:18', '2025-06-14 08:01:18'),
(41, 'عبد الحميد', 'العثمان', 'aboodothaman@gmail.com', '$2y$10$jYm1rIdIza6n2s5UMfSl1erY5k6EKFw4P3SMl/hUneLDNrjVNTDw.', '0943867185', 0, 0, 0, NULL, NULL, '2025-06-26 06:45:46', '2025-06-26 06:45:46'),
(42, 'Duaa', 'Hafez', 'dadohafez0@gmail.com', '$2y$10$2W41HsnnZR8A/g.CC1bma.tYS3XFvfSkPsoIH3Xkci5g5rIdWRkCC', '0962199039', 0, 0, 0, NULL, NULL, '2025-07-06 00:08:27', '2025-07-06 00:08:27'),
(43, 'Nawal', 'Bekdash', 'nawal.bekdash99@gmail.com', '$2y$10$O22Le1ennJQ66lkE2B5uNuR7Q23oD5cygJmEaQjjdjdXrp73.qwku', '0934309613', 0, 0, 0, NULL, NULL, '2025-07-06 23:52:40', '2025-07-06 23:52:40'),
(44, 'أنس', 'صبحان', 'anassabhani31@gmail.com', '$2y$10$gXJzA0MmH4c7ecBpuAAUtu.eJoMq2iy73LfYZq8f.BokIgVe2OJZC', '0981898790', 0, 0, 0, NULL, NULL, '2025-07-11 19:27:43', '2025-07-11 19:27:43'),
(45, 'Abd', 'A', 'abdtr197@gmail.com', '$2y$10$yYpRsqgEAa8YAYctermwV.DnggCSFNJDTx7y8qRdlWUKNkSniO5ny', '0996218072', 0, 0, 0, NULL, NULL, '2025-07-13 14:30:52', '2025-07-13 14:30:52'),
(46, 'فرح', 'نور', 'farohnour856@gmail.com', '$2y$10$j7g4SWHx1t9tHIsKmjYA0OZUpA9hl/s7Yys0ETONzbyXfyBDRP.2m', '0984852307', 0, 0, 0, NULL, NULL, '2025-07-17 10:06:56', '2025-07-17 10:06:56'),
(47, 'Areeg', 'Saad', NULL, '$2y$10$tLhe1eUNk0JlLVvYJKYl0utLyZI7yG4tGlfncSIVQnJyq0QR3RS56', '0957280032', 0, 0, 0, NULL, NULL, '2025-07-17 15:33:25', '2025-07-17 15:33:25'),
(48, 'Kati', 'Sh', 'katiaalshanaat@gmail.com', '$2y$10$Ha3kIy6j8KBps8vLLVy0m.1JMqqvqIKnR74foCIjaXQkQuAqYBVSW', '0937925849', 0, 0, 0, NULL, NULL, '2025-07-18 16:23:47', '2025-07-18 16:23:47'),
(49, 'Bilal', 'Shaban', 'shabanb544@gmail.com', '$2y$10$ModGvzoDiabECTKsOo2ROuZeHhL0zlfHrNRm1p8fP0miLWFJNqTT.', '0936653587', 0, 0, 0, NULL, NULL, '2025-07-18 22:06:22', '2025-07-18 22:06:22'),
(50, 'hala', 'nh', 'hala.nh25@gmail.com', '$2y$10$G6ymydxyAf3lrgBppphWBe6yLQ7VxWnFnk8bxP4bX9hHYOHXEieG6', '0992243237', 0, 0, 0, NULL, NULL, '2025-07-23 08:04:02', '2025-07-23 08:04:02'),
(51, 'Julia', 'Saad', 'saadjulia265@gmail.com', '$2y$10$Wl/1rwVw8mnOfkmlAYzxoOtUCcg3DYfWaj4H1s9eJ/Px7Gm3aeImK', '0934530120', 0, 0, 0, NULL, NULL, '2025-07-24 01:10:12', '2025-07-24 01:10:12'),
(52, 'Hassn', 'Alnashar', 'hassnalnashar9@gmail.com', '$2y$10$9H7l/dX/PwghLnmj23uVOuuIpl3qJzkxLKbI6ojfFnzj6FLr7n8vO', '0939357291', 0, 0, 0, NULL, NULL, '2025-07-24 11:19:42', '2025-07-24 11:19:42'),
(53, 'روعة', 'العبيد', 'rawaaalhgur99@gmail.com', '$2y$10$1CH326t2fOGb9My2TJv79ed.bTcg4CHdpX3dTI8Ap8AYJ6gfRzDka', '0962143383', 0, 0, 0, NULL, NULL, '2025-07-26 01:56:41', '2025-07-26 01:56:41'),
(54, 'Alaa', 'Hammoud', 'alaa2004hammoud@gmail.com', '$2y$10$1U4XAaXq5GA49GkS7lx45.2TPX907eCrrUk7.aW62jO/mvsaRGg7q', '0945361067', 0, 0, 0, NULL, NULL, '2025-08-04 19:28:49', '2025-08-04 19:28:49'),
(55, 'Alaa', 'Hammoud', 'hammoud2004alaa@gmail.com', '$2y$10$3F..yufv4hhWeeeLAxB/EuEN3P/wuIhiqjNBRDIy0jzHdrE4gZo5S', '0983418986', 0, 0, 0, NULL, NULL, '2025-08-04 19:41:21', '2025-08-04 19:41:21'),
(56, 'غيث', 'بكور', 'gaithbakour31@gmail.com', '$2y$10$JUWxe5xQ/okybIiCJUF82On6UsXGt9WI9HuyzAFH3ByTYXPUhRQlG', '0990581367', 0, 0, 0, NULL, NULL, '2025-08-11 13:07:08', '2025-08-11 13:07:08'),
(57, 'Rama', 'Attar', 'Rama.attar12@gmail.com', '$2y$10$rsk5ZjplgSxU0a.7as2XI.mlkJpjI9WeGaHqeS5vkstL34863HwQG', '0964031248', 0, 0, 0, NULL, NULL, '2025-08-11 20:01:34', '2025-08-11 20:01:34'),
(58, 'Hasan', 'Kaşkuş', 'ha082930@gmail.com', '$2y$10$dF93ULzAsU6k0R7RhqgHkeMx5oWgaUYEuPbr7Z0x7PNk0TW1Lvv1q', '0945871815', 0, 0, 0, NULL, NULL, '2025-08-17 04:20:26', '2025-08-17 04:20:26'),
(59, 'محمد', 'الفاعل', 'w0125x@gmail.com', '$2y$10$HSNbCLFnKauXp2QzhFnOx.30QdpQsKMRFiRuSFJC9scac3T46TR9.', '0955311998', 0, 0, 0, NULL, NULL, '2025-08-17 07:54:06', '2025-08-17 07:54:06'),
(60, 'ليلاس', 'مرع', 'lilasmerai977@gmail.com', '$2y$10$TJR2A/aINIZq2yt6y.vy3eVEgXnVd7wVmuBQzT6yMcL3KWfu0.HW.', '0937884640', 0, 0, 0, NULL, NULL, '2025-08-30 09:45:01', '2025-08-30 09:45:01');

-- --------------------------------------------------------

--
-- Table structure for table `user_complaints`
--

CREATE TABLE `user_complaints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `details` varchar(200) DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_verifications`
--

CREATE TABLE `user_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `verify_code` varchar(200) NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_verifications`
--

INSERT INTO `user_verifications` (`id`, `user_id`, `verify_code`, `expired_at`, `created_at`, `updated_at`) VALUES
(1, 10, '2355', '2025-04-09 11:10:00', '2025-04-09 07:55:00', '2025-04-09 07:55:00'),
(2, 10, '3446', '2025-04-09 11:11:03', '2025-04-09 07:56:03', '2025-04-09 07:56:03'),
(4, 10, '5552', '2025-04-09 11:37:16', '2025-04-09 08:22:16', '2025-04-09 08:22:16'),
(5, 24, '9124', '2025-04-10 11:08:10', '2025-04-10 07:53:10', '2025-04-10 07:53:10'),
(6, 24, '8802', '2025-04-10 11:14:45', '2025-04-10 07:59:45', '2025-04-10 07:59:45'),
(7, 24, '5119', '2025-04-10 11:18:47', '2025-04-10 08:03:47', '2025-04-10 08:03:47'),
(8, 24, '8902', '2025-04-16 16:25:52', '2025-04-16 13:10:52', '2025-04-16 13:10:52'),
(9, 19, '6865', '2025-04-17 16:51:25', '2025-04-17 13:36:25', '2025-04-17 13:36:25'),
(13, 25, '0000', '2025-04-18 11:44:48', '2025-04-18 08:29:48', '2025-04-18 08:29:48'),
(15, 26, '0000', '2025-04-18 19:23:56', '2025-04-18 16:08:56', '2025-04-18 16:08:56'),
(17, 27, '0000', '2025-04-20 17:20:39', '2025-04-20 14:05:39', '2025-04-20 14:05:39'),
(18, 28, '0000', '2025-04-21 14:34:30', '2025-04-21 11:19:30', '2025-04-21 11:19:30'),
(20, 29, '0000', '2025-04-30 13:25:24', '2025-04-30 10:10:24', '2025-04-30 10:10:24'),
(26, 30, '0000', '2025-05-06 02:14:16', '2025-05-05 22:59:16', '2025-05-05 22:59:16'),
(28, 31, '0000', '2025-05-19 22:31:25', '2025-05-19 19:16:25', '2025-05-19 19:16:25'),
(29, 32, '0000', '2025-05-20 08:50:43', '2025-05-20 05:35:43', '2025-05-20 05:35:43'),
(30, 33, '0000', '2025-06-01 07:55:43', '2025-06-01 04:40:44', '2025-06-01 04:40:44'),
(31, 34, '0000', '2025-06-02 17:09:15', '2025-06-02 13:54:15', '2025-06-02 13:54:15'),
(35, 36, '0000', '2025-06-02 18:19:35', '2025-06-02 15:04:35', '2025-06-02 15:04:35'),
(38, 35, '0000', '2025-06-02 20:11:53', '2025-06-02 16:56:53', '2025-06-02 16:56:53'),
(39, 35, '0000', '2025-06-03 09:50:59', '2025-06-03 06:35:59', '2025-06-03 06:35:59'),
(42, 37, '0000', '2025-06-03 12:31:51', '2025-06-03 09:16:51', '2025-06-03 09:16:51'),
(44, 38, '0000', '2025-06-04 15:44:20', '2025-06-04 12:29:20', '2025-06-04 12:29:20'),
(45, 39, '0000', '2025-06-05 14:05:42', '2025-06-05 10:50:42', '2025-06-05 10:50:42'),
(46, 40, '0000', '2025-06-14 11:16:18', '2025-06-14 08:01:18', '2025-06-14 08:01:18'),
(48, 41, '0000', '2025-06-26 10:02:18', '2025-06-26 06:47:18', '2025-06-26 06:47:18'),
(50, 42, '0000', '2025-07-06 03:24:53', '2025-07-06 00:09:53', '2025-07-06 00:09:53'),
(52, 43, '0000', '2025-07-07 03:08:55', '2025-07-06 23:53:55', '2025-07-06 23:53:55'),
(55, 44, '0000', '2025-07-11 22:47:34', '2025-07-11 19:32:34', '2025-07-11 19:32:34'),
(59, 45, '0000', '2025-07-15 05:36:45', '2025-07-15 02:21:45', '2025-07-15 02:21:45'),
(61, 46, '0000', '2025-07-17 13:22:18', '2025-07-17 10:07:18', '2025-07-17 10:07:18'),
(63, 47, '0000', '2025-07-17 19:48:44', '2025-07-17 16:33:44', '2025-07-17 16:33:44'),
(65, 48, '0000', '2025-07-18 19:39:52', '2025-07-18 16:24:52', '2025-07-18 16:24:52'),
(66, 49, '0000', '2025-07-19 01:21:22', '2025-07-18 22:06:22', '2025-07-18 22:06:22'),
(68, 50, '0000', '2025-07-23 11:20:07', '2025-07-23 08:05:07', '2025-07-23 08:05:07'),
(70, 51, '0000', '2025-07-24 04:27:23', '2025-07-24 01:12:23', '2025-07-24 01:12:23'),
(71, 52, '0000', '2025-07-24 14:34:42', '2025-07-24 11:19:42', '2025-07-24 11:19:42'),
(81, 53, '0000', '2025-07-30 19:59:46', '2025-07-30 16:44:46', '2025-07-30 16:44:46'),
(83, 54, '0000', '2025-08-04 22:45:25', '2025-08-04 19:30:25', '2025-08-04 19:30:25'),
(85, 55, '0000', '2025-08-04 22:59:19', '2025-08-04 19:44:19', '2025-08-04 19:44:19'),
(88, 56, '0000', '2025-08-11 16:24:07', '2025-08-11 13:09:07', '2025-08-11 13:09:07'),
(89, 57, '0000', '2025-08-11 23:16:34', '2025-08-11 20:01:34', '2025-08-11 20:01:34'),
(93, 59, '0000', '2025-08-17 11:13:36', '2025-08-17 07:58:36', '2025-08-17 07:58:36'),
(95, 58, '0000', '2025-08-17 20:12:06', '2025-08-17 16:57:06', '2025-08-17 16:57:06'),
(101, 60, '0000', '2025-08-30 13:12:05', '2025-08-30 09:57:05', '2025-08-30 09:57:05');

-- --------------------------------------------------------

--
-- Table structure for table `variations`
--

CREATE TABLE `variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(200) DEFAULT NULL,
  `property` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`property`)),
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`value`)),
  `hex_code` varchar(200) DEFAULT NULL,
  `main_color` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `versions`
--

CREATE TABLE `versions` (
  `id` bigint(20) NOT NULL,
  `version_number` varchar(10) NOT NULL,
  `op_sys` varchar(20) NOT NULL,
  `is_deployed` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `versions`
--

INSERT INTO `versions` (`id`, `version_number`, `op_sys`, `is_deployed`, `created_at`, `updated_at`) VALUES
(1, '1.0.0', 'IOS', 1, '2024-09-04 08:57:17', '2024-09-04 09:30:43'),
(2, '1.0.0', 'Android', 1, '2024-09-04 08:57:57', '2024-09-04 08:57:57'),
(3, '1.1.0', 'IOS', 1, '2024-09-04 08:58:10', '2024-09-04 08:58:10'),
(4, '1.1.0', 'Android', 1, '2024-09-04 08:58:19', '2024-09-04 08:58:19'),
(5, '1.2.0', 'IOS', 0, '2024-09-04 08:58:10', '2024-09-04 08:58:10'),
(6, '1.2.0', 'Android', 0, '2024-09-04 08:58:19', '2024-09-04 08:58:19'),
(7, '1.3.0', 'IOS', 0, '2024-09-04 08:58:10', '2024-09-04 08:58:10'),
(8, '1.3.0', 'Android', 0, '2024-09-04 08:58:19', '2024-09-04 08:58:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_email_unique` (`email`);

--
-- Indexes for table `account_role`
--
ALTER TABLE `account_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_role_account_id_foreign` (`account_id`),
  ADD KEY `account_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`),
  ADD KEY `addresses_city_id_foreign` (`city_id`),
  ADD KEY `addresses_branch_id_foreign` (`branch_id`) USING BTREE;

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_durations`
--
ALTER TABLE `assign_durations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assign_durations_employee_id_foreign` (`employee_id`),
  ADD KEY `assign_durations_account_id_foreign` (`account_id`);

--
-- Indexes for table `audits`
--
ALTER TABLE `audits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audits_auditable_type_auditable_id_index` (`auditable_type`,`auditable_id`),
  ADD KEY `audits_user_id_user_type_index` (`user_id`,`user_type`);

--
-- Indexes for table `ban_histories`
--
ALTER TABLE `ban_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ban_histories_user_id_foreign` (`user_id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branches_city_id_foreign` (`city_id`);

--
-- Indexes for table `cargo_requests`
--
ALTER TABLE `cargo_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cargo_requests_to_inventory_foreign` (`to_inventory`),
  ADD KEY `cargo_requests_request_status_id_foreign` (`request_status_id`),
  ADD KEY `cargo_requests_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `cargo_shipments`
--
ALTER TABLE `cargo_shipments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cargo_shipments_first_point_inventory_id_foreign` (`first_point_inventory_id`) USING BTREE,
  ADD KEY `cargo_shipments_cargo_request_id_foreign` (`cargo_request_id`),
  ADD KEY `cargo_shipments_from_inventory_foreign` (`from_inventory`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_section_id_foreign` (`section_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_product_id_foreign` (`product_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`),
  ADD KEY `coupons_user_id_foreign` (`user_id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discounts_group_id_foreign` (`group_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_inventory_id_foreign` (`inventory_id`),
  ADD KEY `employees_shift_id_foreign` (`shift_id`),
  ADD KEY `employees_account_id_foreign` (`account_id`);

--
-- Indexes for table `exchanges`
--
ALTER TABLE `exchanges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exchanges_order_id_foreign` (`order_id`);

--
-- Indexes for table `exhange_items`
--
ALTER TABLE `exhange_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favourites_user_id_foreign` (`user_id`),
  ADD KEY `favourites_product_id_foreign` (`product_id`);

--
-- Indexes for table `fcm_tokens`
--
ALTER TABLE `fcm_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fcm_tokens_user_id_foreign` (`user_id`),
  ADD KEY `fcm_tokens_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedbacks_user_id_foreign` (`user_id`),
  ADD KEY `feedbacks_order_id_foreign` (`order_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventories_city_id_foreign` (`city_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_order_id_foreign` (`order_id`),
  ADD KEY `invoices_user_id_foreign` (`user_id`),
  ADD KEY `invoices_shipment_id_foreign` (`shipment_id`);

--
-- Indexes for table `laravel_model_recommendation_table`
--
ALTER TABLE `laravel_model_recommendation_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laravel_model_recommendation_table_source_type_source_id_index` (`source_type`,`source_id`),
  ADD KEY `laravel_model_recommendation_table_target_type_target_id_index` (`target_type`,`target_id`),
  ADD KEY `source_index` (`source_type`,`source_id`,`recommendation_name`),
  ADD KEY `order_column_index` (`order_column`);

--
-- Indexes for table `last_viewed`
--
ALTER TABLE `last_viewed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `last_viewed_user_id_foreign` (`user_id`),
  ADD KEY `last_viewed_product_id_foreign` (`product_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`),
  ADD KEY `notifications_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `notifies`
--
ALTER TABLE `notifies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifies_user_id_foreign` (`user_id`),
  ADD KEY `notifies_product_variation_id_foreign` (`product_variation_id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offers_group_id_foreign` (`group_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_address_id_foreign` (`address_id`),
  ADD KEY `orders_inventory_id_foreign` (`inventory_id`),
  ADD KEY `orders_employee_id_foreign` (`employee_id`),
  ADD KEY `orders_packaging_id_foreign` (`packaging_id`),
  ADD KEY `orders_coupon_id_foreign` (`coupon_id`),
  ADD KEY `orders_branch_id_foreign` (`branch_id`),
  ADD KEY `orders_gift_id_foreign` (`gift_id`);

--
-- Indexes for table `order_current_items`
--
ALTER TABLE `order_current_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_current_items_order_id_foreign` (`order_id`),
  ADD KEY `order_current_items_product_variation_id_foreign` (`product_variation_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_variation_id_foreign` (`product_variation_id`),
  ADD KEY `order_items_return_order_id_foreign` (`return_order_id`),
  ADD KEY `order_items_to_inventory_foreign` (`to_inventory`),
  ADD KEY `order_items_group_id_foreign` (`group_id`) USING BTREE;

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photos_product_id_foreign` (`product_id`),
  ADD KEY `photos_color_id_foreign` (`color_id`);

--
-- Indexes for table `poligons`
--
ALTER TABLE `poligons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pricings`
--
ALTER TABLE `pricings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pricings_product_id_foreign` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_sub_category_id_foreign` (`sub_category_id`),
  ADD KEY `products_discount_id_foreign` (`discount_id`),
  ADD KEY `products_group_id_foreign` (`group_id`);

--
-- Indexes for table `product_variations`
--
ALTER TABLE `product_variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variations_group_id_foreign` (`group_id`),
  ADD KEY `product_variations_product_id_foreign` (`product_id`),
  ADD KEY `product_variations_color_id_foreign` (`color_id`),
  ADD KEY `product_variations_size_id_foreign` (`size_id`),
  ADD KEY `product_variations_variation_id_foreign` (`variation_id`);

--
-- Indexes for table `refunds`
--
ALTER TABLE `refunds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `refunds_user_id_foreign` (`user_id`),
  ADD KEY `refunds_order_id_foreign` (`order_id`),
  ADD KEY `refunds_inventory_id_foreign` (`inventory_id`),
  ADD KEY `refunds_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `refund_items`
--
ALTER TABLE `refund_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `refund_items_refund_id_foreign` (`refund_id`),
  ADD KEY `refund_items_product_variation_id_foreign` (`product_variation_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_employee_id_foreign` (`employee_id`),
  ADD KEY `reports_user_id_foreign` (`user_id`),
  ADD KEY `reports_order_id_foreign` (`order_id`),
  ADD KEY `reports_reply_by_id_foreign` (`reply_by_id`),
  ADD KEY `reports_inventory_id_foreign` (`inventory_id`);

--
-- Indexes for table `report_role`
--
ALTER TABLE `report_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report_role_report_id_foreign` (`report_id`),
  ADD KEY `report_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `request_product_variations`
--
ALTER TABLE `request_product_variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_product_variations_cargo_request_id_foreign` (`cargo_request_id`),
  ADD KEY `request_product_variations_product_variation_id_foreign` (`product_variation_id`);

--
-- Indexes for table `request_statuses`
--
ALTER TABLE `request_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `return_and_exchange_orders`
--
ALTER TABLE `return_and_exchange_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `return_and_exchange_orders_user_id_foreign` (`user_id`),
  ADD KEY `return_and_exchange_orders_order_id_foreign` (`order_id`),
  ADD KEY `return_and_exchange_orders_inventory_id_foreign` (`inventory_id`),
  ADD KEY `return_and_exchange_orders_employee_id_foreign` (`employee_id`),
  ADD KEY `return_and_exchange_orders_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `return_orders`
--
ALTER TABLE `return_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `return_orders_order_id_foreign` (`order_id`),
  ADD KEY `return_orders_user_id_foreign` (`user_id`),
  ADD KEY `return_orders_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipments`
--
ALTER TABLE `shipments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipments_order_id_foreign` (`order_id`),
  ADD KEY `shipments_city_id_foreign` (`city_id`);

--
-- Indexes for table `shipment_product_variations`
--
ALTER TABLE `shipment_product_variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipment_product_variations_cargo_shipment_id_foreign` (`cargo_shipment_id`),
  ADD KEY `shipment_product_variations_product_variation_id_foreign` (`product_variation_id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `size_guides`
--
ALTER TABLE `size_guides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `size_guides_category_id_foreign` (`category_id`);

--
-- Indexes for table `stock_levels`
--
ALTER TABLE `stock_levels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stock_levels_first_point_inventory_foreign` (`first_point_inventory_id`),
  ADD KEY `stock_levels_product_variation_id_foreign` (`product_variation_id`),
  ADD KEY `stock_levels_inventory_id_foreign` (`inventory_id`);

--
-- Indexes for table `stock_movements`
--
ALTER TABLE `stock_movements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_movements_from_inventory_id_foreign` (`from_inventory_id`),
  ADD KEY `stock_movements_to_inventory_id_foreign` (`to_inventory_id`);

--
-- Indexes for table `stock_variations`
--
ALTER TABLE `stock_variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_variations_product_variation_id_foreign` (`product_variation_id`),
  ADD KEY `stock_variations_stock_movement_id_foreign` (`stock_movement_id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `sub_orders`
--
ALTER TABLE `sub_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_orders_order_item_id_foreign` (`order_item_id`),
  ADD KEY `sub_orders_packaging_id_foreign` (`packaging_id`);

--
-- Indexes for table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  ADD PRIMARY KEY (`sequence`),
  ADD UNIQUE KEY `telescope_entries_uuid_unique` (`uuid`),
  ADD KEY `telescope_entries_batch_id_index` (`batch_id`),
  ADD KEY `telescope_entries_family_hash_index` (`family_hash`),
  ADD KEY `telescope_entries_created_at_index` (`created_at`),
  ADD KEY `telescope_entries_type_should_display_on_index_index` (`type`,`should_display_on_index`);

--
-- Indexes for table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD KEY `telescope_entries_tags_entry_uuid_tag_index` (`entry_uuid`,`tag`),
  ADD KEY `telescope_entries_tags_tag_index` (`tag`);

--
-- Indexes for table `top_products`
--
ALTER TABLE `top_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `last_viewed_product_id_foreign` (`product_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_gift_id_foreign` (`gift_id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfers_from_inventory_id_foreign` (`from_inventory_id`),
  ADD KEY `transfers_to_inventory_id_foreign` (`to_inventory_id`);

--
-- Indexes for table `transfer_items`
--
ALTER TABLE `transfer_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfer_items_transfer_id_foreign` (`transfer_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_complaints`
--
ALTER TABLE `user_complaints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_complaints_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_verifications`
--
ALTER TABLE `user_verifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_verifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `variations`
--
ALTER TABLE `variations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `versions`
--
ALTER TABLE `versions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `account_role`
--
ALTER TABLE `account_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `assign_durations`
--
ALTER TABLE `assign_durations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `audits`
--
ALTER TABLE `audits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ban_histories`
--
ALTER TABLE `ban_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `cargo_requests`
--
ALTER TABLE `cargo_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cargo_shipments`
--
ALTER TABLE `cargo_shipments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `exchanges`
--
ALTER TABLE `exchanges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exhange_items`
--
ALTER TABLE `exhange_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fcm_tokens`
--
ALTER TABLE `fcm_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laravel_model_recommendation_table`
--
ALTER TABLE `laravel_model_recommendation_table`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `last_viewed`
--
ALTER TABLE `last_viewed`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifies`
--
ALTER TABLE `notifies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_current_items`
--
ALTER TABLE `order_current_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1082;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=533;

--
-- AUTO_INCREMENT for table `poligons`
--
ALTER TABLE `poligons`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pricings`
--
ALTER TABLE `pricings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `product_variations`
--
ALTER TABLE `product_variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1232;

--
-- AUTO_INCREMENT for table `refunds`
--
ALTER TABLE `refunds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refund_items`
--
ALTER TABLE `refund_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_role`
--
ALTER TABLE `report_role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request_product_variations`
--
ALTER TABLE `request_product_variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request_statuses`
--
ALTER TABLE `request_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `return_and_exchange_orders`
--
ALTER TABLE `return_and_exchange_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `return_orders`
--
ALTER TABLE `return_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shipments`
--
ALTER TABLE `shipments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipment_product_variations`
--
ALTER TABLE `shipment_product_variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `size_guides`
--
ALTER TABLE `size_guides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stock_levels`
--
ALTER TABLE `stock_levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `stock_movements`
--
ALTER TABLE `stock_movements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_variations`
--
ALTER TABLE `stock_variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `sub_orders`
--
ALTER TABLE `sub_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  MODIFY `sequence` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `top_products`
--
ALTER TABLE `top_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfer_items`
--
ALTER TABLE `transfer_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `user_complaints`
--
ALTER TABLE `user_complaints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_verifications`
--
ALTER TABLE `user_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `variations`
--
ALTER TABLE `variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `versions`
--
ALTER TABLE `versions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_role`
--
ALTER TABLE `account_role`
  ADD CONSTRAINT `account_role_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `account_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `assign_durations`
--
ALTER TABLE `assign_durations`
  ADD CONSTRAINT `assign_durations_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `assign_durations_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ban_histories`
--
ALTER TABLE `ban_histories`
  ADD CONSTRAINT `ban_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `branches`
--
ALTER TABLE `branches`
  ADD CONSTRAINT `branches_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cargo_requests`
--
ALTER TABLE `cargo_requests`
  ADD CONSTRAINT `cargo_requests_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `cargo_requests_request_status_id_foreign` FOREIGN KEY (`request_status_id`) REFERENCES `request_statuses` (`id`),
  ADD CONSTRAINT `cargo_requests_to_inventory_foreign` FOREIGN KEY (`to_inventory`) REFERENCES `inventories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cargo_shipments`
--
ALTER TABLE `cargo_shipments`
  ADD CONSTRAINT `cargo_shipments_cargo_request_id_foreign` FOREIGN KEY (`cargo_request_id`) REFERENCES `cargo_requests` (`id`),
  ADD CONSTRAINT `cargo_shipments_from_inventory_foreign` FOREIGN KEY (`from_inventory`) REFERENCES `inventories` (`id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `coupons`
--
ALTER TABLE `coupons`
  ADD CONSTRAINT `coupons_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `discounts`
--
ALTER TABLE `discounts`
  ADD CONSTRAINT `discounts_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `employees_inventory_id_foreign` FOREIGN KEY (`inventory_id`) REFERENCES `inventories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `employees_shift_id_foreign` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favourites`
--
ALTER TABLE `favourites`
  ADD CONSTRAINT `favourites_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favourites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `	order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shipments`
--
ALTER TABLE `shipments`
  ADD CONSTRAINT `shipments_order_id_foreign	` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
