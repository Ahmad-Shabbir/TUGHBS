-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2024 at 11:00 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rooms_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `check_in` varchar(255) DEFAULT NULL,
  `check_out` varchar(255) DEFAULT NULL,
  `persion` varchar(255) DEFAULT NULL,
  `number_of_rooms` varchar(255) DEFAULT NULL,
  `total_night` double NOT NULL DEFAULT 0,
  `actual_price` double NOT NULL DEFAULT 0,
  `subtotal` double NOT NULL DEFAULT 0,
  `discount` int(11) NOT NULL DEFAULT 0,
  `total_price` double NOT NULL DEFAULT 0,
  `payment_method` varchar(255) DEFAULT NULL,
  `transation_id` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `rooms_id`, `user_id`, `check_in`, `check_out`, `persion`, `number_of_rooms`, `total_night`, `actual_price`, `subtotal`, `discount`, `total_price`, `payment_method`, `transation_id`, `payment_status`, `name`, `email`, `phone`, `country`, `state`, `zip_code`, `address`, `code`, `status`, `created_at`, `updated_at`) VALUES
(2, 5, 3, '2024-05-16', '2024-05-18', '01', '01', 2, 3000, 6000, 0, 6000, 'COD', '', '1', 'guesthousedemo', 'guesthousedemo@gmail.com', '43415', 'India', 'assam', '145535', 'ind', '705948533', 1, '2024-05-15 07:11:41', '2024-05-15 07:12:36'),
(3, 2, 5, '2024-05-17', '2024-05-19', '02', '01', 2, 1500, 3000, 0, 3000, 'COD', '', '1', 'shabbir', 'shabbir.sa465@gmail.com', '9365453958', 'India', 'assam', '783345', 'assam', '522178064', 1, '2024-05-15 21:08:45', '2024-05-15 21:11:07'),
(4, 2, 5, '2024-05-17', '2024-05-18', '02', '01', 1, 1500, 1500, 0, 1500, 'COD', '', '1', 'shabbir', 'shabbir.sa465@gmail.com', '6747', 'India', 'assam', '783345', 'ind', '974904807', 1, '2024-05-15 23:53:19', '2024-05-15 23:54:47');

-- --------------------------------------------------------

--
-- Table structure for table `booking_room_lists`
--

CREATE TABLE `booking_room_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `room_number_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_room_lists`
--

INSERT INTO `booking_room_lists` (`id`, `booking_id`, `room_id`, `room_number_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 6, '2024-05-15 03:36:21', '2024-05-15 03:36:21'),
(2, 3, 2, 6, '2024-05-15 21:12:00', '2024-05-15 21:12:00');

-- --------------------------------------------------------

--
-- Table structure for table `book_areas`
--

CREATE TABLE `book_areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `short_title` varchar(255) DEFAULT NULL,
  `main_title` varchar(255) DEFAULT NULL,
  `short_desc` text DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_areas`
--

INSERT INTO `book_areas` (`id`, `image`, `short_title`, `main_title`, `short_desc`, `link_url`, `created_at`, `updated_at`) VALUES
(1, NULL, 'HRET', 'GRAVV', 'RGWGVF', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rooms_id` int(11) NOT NULL,
  `facility_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `rooms_id`, `facility_name`, `created_at`, `updated_at`) VALUES
(15, 3, 'Complimentary Breakfast', '2024-05-15 02:38:34', '2024-05-15 02:38:34'),
(16, 3, '32/42 inch LED TV', '2024-05-15 02:38:34', '2024-05-15 02:38:34'),
(17, 3, 'Smoke alarms', '2024-05-15 02:38:34', '2024-05-15 02:38:34'),
(18, 3, 'Work Desk', '2024-05-15 02:38:34', '2024-05-15 02:38:34'),
(19, 3, 'Free Wi-Fi', '2024-05-15 02:38:34', '2024-05-15 02:38:34'),
(20, 3, 'Safety box', '2024-05-15 02:38:34', '2024-05-15 02:38:34'),
(21, 3, 'Laundry & Dry Cleaning', '2024-05-15 02:38:34', '2024-05-15 02:38:34'),
(22, 4, 'Complimentary Breakfast', '2024-05-15 02:49:32', '2024-05-15 02:49:32'),
(23, 4, '32/42 inch LED TV', '2024-05-15 02:49:32', '2024-05-15 02:49:32'),
(24, 4, 'Smoke alarms', '2024-05-15 02:49:32', '2024-05-15 02:49:32'),
(25, 4, 'Work Desk', '2024-05-15 02:49:32', '2024-05-15 02:49:32'),
(26, 4, 'Free Wi-Fi', '2024-05-15 02:49:32', '2024-05-15 02:49:32'),
(27, 4, 'Safety box', '2024-05-15 02:49:32', '2024-05-15 02:49:32'),
(28, 4, 'Laundry & Dry Cleaning', '2024-05-15 02:49:32', '2024-05-15 02:49:32'),
(29, 5, 'Complimentary Breakfast', '2024-05-15 03:11:21', '2024-05-15 03:11:21'),
(30, 5, '32/42 inch LED TV', '2024-05-15 03:11:21', '2024-05-15 03:11:21'),
(31, 5, 'Smoke alarms', '2024-05-15 03:11:21', '2024-05-15 03:11:21'),
(32, 5, 'Work Desk', '2024-05-15 03:11:21', '2024-05-15 03:11:21'),
(33, 5, 'Free Wi-Fi', '2024-05-15 03:11:21', '2024-05-15 03:11:21'),
(34, 5, 'Safety box', '2024-05-15 03:11:21', '2024-05-15 03:11:21'),
(35, 5, 'Laundry & Dry Cleaning', '2024-05-15 03:11:21', '2024-05-15 03:11:21'),
(43, 2, 'Complimentary Breakfast', '2024-05-15 03:21:44', '2024-05-15 03:21:44'),
(44, 2, '32/42 inch LED TV', '2024-05-15 03:21:44', '2024-05-15 03:21:44'),
(45, 2, 'Smoke alarms', '2024-05-15 03:21:44', '2024-05-15 03:21:44'),
(46, 2, 'Work Desk', '2024-05-15 03:21:44', '2024-05-15 03:21:44'),
(47, 2, 'Free Wi-Fi', '2024-05-15 03:21:44', '2024-05-15 03:21:44'),
(48, 2, 'Safety box', '2024-05-15 03:21:44', '2024-05-15 03:21:44'),
(49, 2, 'Laundry & Dry Cleaning', '2024-05-15 03:21:44', '2024-05-15 03:21:44'),
(64, 6, 'Complimentary Breakfast', '2024-05-15 06:18:58', '2024-05-15 06:18:58'),
(65, 6, '32/42 inch LED TV', '2024-05-15 06:18:59', '2024-05-15 06:18:59'),
(66, 6, 'Smoke alarms', '2024-05-15 06:18:59', '2024-05-15 06:18:59'),
(67, 6, 'Work Desk', '2024-05-15 06:18:59', '2024-05-15 06:18:59'),
(68, 6, 'Free Wi-Fi', '2024-05-15 06:18:59', '2024-05-15 06:18:59'),
(69, 6, 'Safety box', '2024-05-15 06:18:59', '2024-05-15 06:18:59'),
(70, 6, 'Laundry & Dry Cleaning', '2024-05-15 06:18:59', '2024-05-15 06:18:59'),
(71, 1, 'Complimentary Breakfast', '2024-05-15 06:35:06', '2024-05-15 06:35:06'),
(72, 1, '32/42 inch LED TV', '2024-05-15 06:35:06', '2024-05-15 06:35:06'),
(73, 1, 'Smoke alarms', '2024-05-15 06:35:06', '2024-05-15 06:35:06'),
(74, 1, 'Work Desk', '2024-05-15 06:35:06', '2024-05-15 06:35:06'),
(75, 1, 'Free Wi-Fi', '2024-05-15 06:35:06', '2024-05-15 06:35:06'),
(76, 1, 'Safety box', '2024-05-15 06:35:06', '2024-05-15 06:35:06'),
(77, 1, 'Laundry & Dry Cleaning', '2024-05-15 06:35:06', '2024-05-15 06:35:06');

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
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `photo_name`, `created_at`, `updated_at`) VALUES
(1, 'upload/gallery/1799108361912123.jpg', '2024-05-15 03:27:17', '2024-05-15 03:27:17'),
(2, 'upload/gallery/1799108362026527.jpg', '2024-05-15 03:27:17', '2024-05-15 03:27:17'),
(3, 'upload/gallery/1799108362102896.jpg', '2024-05-15 03:27:17', '2024-05-15 03:27:17'),
(4, 'upload/gallery/1799108362179969.jpg', '2024-05-15 03:27:17', '2024-05-15 03:27:17'),
(5, 'upload/gallery/1799108362260986.jpg', '2024-05-15 03:27:17', '2024-05-15 03:27:17');

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
(4, '2024_04_19_091246_create_teams_table', 1),
(5, '2024_04_20_013625_create_book_areas_table', 1),
(6, '2024_04_20_042700_create_room_types_table', 1),
(7, '2024_04_20_052717_create_facilities_table', 1),
(8, '2024_04_20_055801_create_multi_images_table', 1),
(9, '2024_04_20_104230_drop_rooms_table', 1),
(10, '2024_04_20_105222_create_rooms_table', 1),
(11, '2024_04_27_053756_create_room_numbers_table', 1),
(12, '2024_05_01_145006_create_bookings_table', 1),
(13, '2024_05_01_145445_create_room_booked_dates_table', 1),
(14, '2024_05_01_153304_create_booking_room_lists_table', 1),
(15, '2024_05_13_100129_create_galleries_table', 1),
(16, '2024_05_13_134232_create_contacts_table', 1),
(17, '2024_05_13_143717_create_notifications_table', 1),
(18, '2024_05_13_151935_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `multi_images`
--

CREATE TABLE `multi_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rooms_id` int(11) NOT NULL,
  `multi_img` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_images`
--

INSERT INTO `multi_images` (`id`, `rooms_id`, `multi_img`, `created_at`, `updated_at`) VALUES
(1, 1, '2024051507131770612246598970.jpg', '2024-05-15 01:43:35', '2024-05-15 01:43:35'),
(2, 1, '2024051507131770612217118561.jpg', '2024-05-15 01:43:35', '2024-05-15 01:43:35'),
(3, 1, '2024051507131770612246158447.jpg', '2024-05-15 01:43:35', '2024-05-15 01:43:35'),
(4, 1, '2024051507131770612216903774.jpg', '2024-05-15 01:43:36', '2024-05-15 01:43:36'),
(5, 1, '2024051507131770612216472630.jpg', '2024-05-15 01:43:36', '2024-05-15 01:43:36'),
(6, 2, '2024051507521770612217118561.jpg', '2024-05-15 02:22:33', '2024-05-15 02:22:33'),
(7, 2, '2024051507521770612246158447.jpg', '2024-05-15 02:22:33', '2024-05-15 02:22:33'),
(8, 2, '2024051507521770612216903774.jpg', '2024-05-15 02:22:33', '2024-05-15 02:22:33'),
(9, 3, '2024051508081770612217118561.jpg', '2024-05-15 02:38:34', '2024-05-15 02:38:34'),
(10, 3, '2024051508081770612246158447.jpg', '2024-05-15 02:38:34', '2024-05-15 02:38:34'),
(11, 3, '2024051508081770612216903774.jpg', '2024-05-15 02:38:34', '2024-05-15 02:38:34'),
(12, 4, '2024051508191770612217118561.jpg', '2024-05-15 02:49:32', '2024-05-15 02:49:32'),
(13, 4, '2024051508191770612246158447.jpg', '2024-05-15 02:49:32', '2024-05-15 02:49:32'),
(14, 4, '2024051508191770612216903774.jpg', '2024-05-15 02:49:32', '2024-05-15 02:49:32'),
(15, 5, '202405150841bell-hotel-chennai (2).jpg', '2024-05-15 03:11:21', '2024-05-15 03:11:21'),
(16, 5, '202405150841bell-hotel-chennai (1).jpg', '2024-05-15 03:11:21', '2024-05-15 03:11:21'),
(17, 5, '202405150841bell-hotel-chennai.jpg', '2024-05-15 03:11:21', '2024-05-15 03:11:21'),
(18, 6, '2024051508481770612217118561.jpg', '2024-05-15 03:18:31', '2024-05-15 03:18:31'),
(19, 6, '2024051508481770612246158447.jpg', '2024-05-15 03:18:31', '2024-05-15 03:18:31'),
(20, 6, '2024051508481770612216903774.jpg', '2024-05-15 03:18:31', '2024-05-15 03:18:31');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('43bb4092-2ec3-4b4b-a44a-0403b6790461', 'App\\Notifications\\BookingComplete', 'App\\Models\\User', 3, '{\"message\":\"New Booking Added in Hotel\"}', '2024-05-15 22:03:34', '2024-05-15 07:11:42', '2024-05-15 22:03:34'),
('4fb9ce68-55c4-493b-8092-353d79dbeb5b', 'App\\Notifications\\BookingComplete', 'App\\Models\\User', 3, '{\"message\":\"New Booking Added in Hotel\"}', '2024-05-15 22:03:37', '2024-05-15 03:34:40', '2024-05-15 22:03:37'),
('a5bd6f10-e483-4cf9-ba83-280575f7024b', 'App\\Notifications\\BookingComplete', 'App\\Models\\User', 1, '{\"message\":\"New Booking Added in Hotel\"}', NULL, '2024-05-15 21:08:47', '2024-05-15 21:08:47'),
('c7a05e41-2d2f-4df7-87ed-428c1e15d1bf', 'App\\Notifications\\BookingComplete', 'App\\Models\\User', 1, '{\"message\":\"New Booking Added in Hotel\"}', NULL, '2024-05-15 23:53:19', '2024-05-15 23:53:19'),
('d03ee74d-12be-46a6-9093-3d6e6647d73e', 'App\\Notifications\\BookingComplete', 'App\\Models\\User', 3, '{\"message\":\"New Booking Added in Hotel\"}', '2024-05-15 22:03:29', '2024-05-15 21:08:47', '2024-05-15 22:03:29'),
('d44ef7e1-ec2c-436a-a8c0-d55d1620ebfd', 'App\\Notifications\\BookingComplete', 'App\\Models\\User', 1, '{\"message\":\"New Booking Added in Hotel\"}', NULL, '2024-05-15 03:34:40', '2024-05-15 03:34:40'),
('e4d1dff2-f2c3-478a-8e5a-52a0bb78c026', 'App\\Notifications\\BookingComplete', 'App\\Models\\User', 1, '{\"message\":\"New Booking Added in Hotel\"}', NULL, '2024-05-15 07:11:42', '2024-05-15 07:11:42'),
('f1d6d066-8a64-40bc-aa67-df937fbe7d44', 'App\\Notifications\\BookingComplete', 'App\\Models\\User', 3, '{\"message\":\"New Booking Added in Hotel\"}', NULL, '2024-05-15 23:53:20', '2024-05-15 23:53:20');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'team.add', 'web', '2024-05-15 03:29:41', '2024-05-15 03:29:41');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `roomtype_id` int(11) NOT NULL,
  `total_adult` varchar(255) DEFAULT NULL,
  `total_child` varchar(255) DEFAULT NULL,
  `room_capacity` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `bed_style` varchar(255) DEFAULT NULL,
  `discount` int(11) NOT NULL DEFAULT 0,
  `short_desc` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `roomtype_id`, `total_adult`, `total_child`, `room_capacity`, `image`, `price`, `size`, `view`, `bed_style`, `discount`, `short_desc`, `description`, `status`, `created_at`, `updated_at`, `category`) VALUES
(1, 1, '1', '2', '5', '1799101832401995.jpg', '1000', 'null', NULL, 'King Bed', 0, 'Welcome to our Single Deluxe Guest House Room, where comfort meets elegance in perfect harmony', '<p>To elevate your stay, our Single Deluxe Guest House Room offers a range of modern conveniences, including high-speed Wi-Fi, a flat-screen TV with premium channels, and a minibar stocked with refreshments. Whether you\'re traveling for business or leisure, our room provides the perfect blend of comfort and sophistication for an unforgettable stay.</p>', 1, NULL, '2024-05-15 06:35:06', 'Private'),
(2, 2, '2', '2', '5', '1799104286566609.jpg', '1500', 'null', NULL, 'Twin Bed', 0, 'Welcome to our Double Deluxe Guest House Room, where luxury meets comfort in perfect harmony. Step into a haven of relaxation designed to exceed your expectations.', '<p>Pamper yourself in the sleek ensuite bathroom, complete with a rejuvenating rain shower and premium toiletries, elevating your daily routine to a spa-like experience. With thoughtful touches throughout, including complimentary refreshments and high-speed internet access, your comfort and convenience are our top priorities.</p>', 1, NULL, '2024-05-15 03:21:44', 'Semi Official'),
(3, 3, '1', '2', '5', '1799105295296348.jpg', '1800', 'null', NULL, 'King Bed', 0, 'Welcome to our Single Executive Guest House Room, where comfort meets functionality in a refined setting designed for the modern business traveler. This meticulously crafted space offers a tranquil retreat amidst the bustle of your professional engagements.', '<p>Stay productive with a well-appointed workstation equipped with high-speed Wi-Fi and ample desk space, allowing you to effortlessly tackle your business tasks. Wind down in the evening by indulging in a rejuvenating rain shower in the en-suite bathroom, complete with luxurious toiletries for your convenience.</p>', 1, NULL, '2024-05-15 02:38:34', 'Private'),
(4, 4, '2', '2', '5', '1799105986758054.jpg', '3000', 'NULL', NULL, 'Queen Bed', 0, 'Step into luxury and sophistication with our Double Executive Guest House Room. Designed for the discerning traveler seeking refined comfort, this spacious sanctuary offers a blend of contemporary elegance and timeless style.', '<p>Adorned with modern amenities and bespoke furnishings, including plush bedding, a work desk, and a seating area, every detail is crafted to ensure a memorable stay. Whether you\'re here for business or leisure, indulge in unparalleled comfort and personalized service in our Double Executive Guest House Room, where every moment is elevated to perfection.</p>', 1, NULL, '2024-05-15 02:49:32', 'Private'),
(5, 5, '1', '2', '3', '1799107359748940.webp', '3000', 'null', NULL, 'Twin Bed', 0, 'Step into luxury and comfort in our single suite guest house room. Designed for the discerning traveler seeking a tranquil retreat, this thoughtfully appointed space offers a harmonious blend of modern amenities and timeless elegance.', '<p>From the crisp linens adorning the sumptuous king-sized bed to the sleek ensuite bathroom featuring premium toiletries, every detail has been curated to ensure your utmost comfort. Indulge in a moment of serenity as you sip a freshly brewed cup of coffee on your secluded balcony, overlooking lush garden views. Whether you\'re traveling for business or leisure, our single suite guest house room promises an unparalleled escape where luxury meets relaxation.</p>', 1, NULL, '2024-05-15 03:11:21', 'Semi Private'),
(6, 6, '2', '2', '3', '1799107810614351.jpg', '5500', 'NULL', NULL, 'Twin Bed', 0, 'Step into luxury and comfort in our single suite guest house room. Designed for the discerning traveler seeking a tranquil retreat, this thoughtfully appointed space offers a harmonious blend of modern amenities and timeless elegance.', '<p>From the crisp linens adorning the sumptuous king-sized bed to the sleek ensuite bathroom featuring premium toiletries, every detail has been curated to ensure your utmost comfort. Indulge in a moment of serenity as you sip a freshly brewed cup of coffee on your secluded balcony, overlooking lush garden views. Whether you\'re traveling for business or leisure, our single suite guest house room promises an unparalleled escape where luxury meets relaxation.</p>', 1, NULL, '2024-05-15 06:18:58', 'Semi Private');

-- --------------------------------------------------------

--
-- Table structure for table `room_booked_dates`
--

CREATE TABLE `room_booked_dates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `book_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_booked_dates`
--

INSERT INTO `room_booked_dates` (`id`, `booking_id`, `room_id`, `book_date`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2024-05-16', '2024-05-15 03:34:39', '2024-05-15 03:34:39'),
(2, 1, 2, '2024-05-17', '2024-05-15 03:34:39', '2024-05-15 03:34:39'),
(3, 2, 5, '2024-05-16', '2024-05-15 07:11:41', '2024-05-15 07:11:41'),
(4, 2, 5, '2024-05-17', '2024-05-15 07:11:41', '2024-05-15 07:11:41'),
(5, 3, 2, '2024-05-17', '2024-05-15 21:08:45', '2024-05-15 21:08:45'),
(6, 3, 2, '2024-05-18', '2024-05-15 21:08:45', '2024-05-15 21:08:45'),
(7, 4, 2, '2024-05-17', '2024-05-15 23:53:19', '2024-05-15 23:53:19');

-- --------------------------------------------------------

--
-- Table structure for table `room_numbers`
--

CREATE TABLE `room_numbers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rooms_id` int(11) NOT NULL,
  `room_type_id` int(11) NOT NULL,
  `room_no` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_numbers`
--

INSERT INTO `room_numbers` (`id`, `rooms_id`, `room_type_id`, `room_no`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '501', 'Active', '2024-05-15 01:44:25', '2024-05-15 01:44:25'),
(2, 1, 1, '502', 'Active', '2024-05-15 01:44:36', '2024-05-15 01:44:36'),
(3, 1, 1, '503', 'Active', '2024-05-15 01:44:48', '2024-05-15 01:44:48'),
(4, 1, 1, '504', 'Active', '2024-05-15 01:45:28', '2024-05-15 01:45:28'),
(5, 1, 1, '505', 'Active', '2024-05-15 01:45:44', '2024-05-15 01:45:44'),
(6, 2, 2, '506', 'Active', '2024-05-15 02:23:04', '2024-05-15 02:23:04'),
(7, 2, 2, '507', 'Active', '2024-05-15 02:23:18', '2024-05-15 02:23:18'),
(8, 2, 2, '508', 'Active', '2024-05-15 02:23:39', '2024-05-15 02:23:39'),
(9, 2, 2, '509', 'Active', '2024-05-15 02:23:57', '2024-05-15 02:23:57'),
(10, 2, 2, '510', 'Active', '2024-05-15 02:24:12', '2024-05-15 02:24:12'),
(11, 3, 3, '601', 'Active', '2024-05-15 02:38:54', '2024-05-15 02:38:54'),
(12, 3, 3, '602', 'Active', '2024-05-15 02:39:05', '2024-05-15 02:39:05'),
(13, 3, 3, '603', 'Active', '2024-05-15 02:39:21', '2024-05-15 02:39:21'),
(14, 3, 3, '604', 'Active', '2024-05-15 02:39:39', '2024-05-15 02:39:39'),
(15, 3, 3, '605', 'Active', '2024-05-15 02:39:50', '2024-05-15 02:39:50'),
(16, 4, 4, '606', 'Active', '2024-05-15 02:51:23', '2024-05-15 02:51:23'),
(17, 4, 4, '607', 'Active', '2024-05-15 02:52:25', '2024-05-15 02:52:25'),
(18, 4, 4, '608', 'Active', '2024-05-15 02:54:49', '2024-05-15 02:54:49'),
(19, 4, 4, '609', 'Active', '2024-05-15 02:55:47', '2024-05-15 02:55:47'),
(20, 4, 4, '610', 'Active', '2024-05-15 02:56:13', '2024-05-15 02:56:13'),
(21, 5, 5, '701', 'Active', '2024-05-15 03:13:13', '2024-05-15 03:13:13'),
(22, 5, 5, '702', 'Active', '2024-05-15 03:13:26', '2024-05-15 03:13:26'),
(23, 5, 5, '703', 'Active', '2024-05-15 03:13:38', '2024-05-15 03:13:38'),
(24, 6, 6, '801', 'Active', '2024-05-15 03:19:22', '2024-05-15 03:19:22'),
(25, 6, 6, '802', 'Active', '2024-05-15 03:19:40', '2024-05-15 03:19:40'),
(26, 6, 6, '803', 'Active', '2024-05-15 03:19:56', '2024-05-15 03:19:56');

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE `room_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_types`
--

INSERT INTO `room_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'SINGLE DELUXE', '2024-05-15 01:37:41', NULL),
(2, 'DOUBLE DELUXE', '2024-05-15 01:46:25', NULL),
(3, 'SINGLE EXECUTIVE', '2024-05-15 02:26:26', NULL),
(4, 'DOUBLE EXECUTIVE', '2024-05-15 02:42:21', NULL),
(5, 'SINGLE SUITE', '2024-05-15 03:03:35', NULL),
(6, 'DOUBLE SUITE', '2024-05-15 03:15:23', NULL);

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
('rcuyBlQ2l0ntxIToaZ0VJhr6gooCKA144IJbkaZy', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiaGlwMkxyM0hkOTRkQlFhUGtKalJRTkgyeE1IRGJ4OENvYklVWlhyNSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7czo5OiJib29rX2RhdGUiO2E6Njp7czoxNToibnVtYmVyX29mX3Jvb21zIjtzOjI6IjAxIjtzOjE0OiJhdmFpbGFibGVfcm9vbSI7czoxOiI1IjtzOjc6InBlcnNpb24iO3M6MjoiMDEiO3M6ODoiY2hlY2tfaW4iO3M6MTA6IjIwMjQtMDUtMTciO3M6OToiY2hlY2tfb3V0IjtzOjEwOiIyMDI0LTA1LTE5IjtzOjc6InJvb21faWQiO3M6MToiMSI7fX0=', 1715839111);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `postion` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `image`, `name`, `postion`, `facebook`, `created_at`, `updated_at`) VALUES
(1, 'upload/team/1799101175684233.JPEG', 'Shabbir Ahmad', 'Admin', 'www.facebook.com', '2024-05-15 01:33:16', NULL);

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
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$12$SgJ7vvI0pbqNBeJYT.rd6euDyA6HfM/qMl4ysQQ/2wfYqh/Z/KNX.', NULL, NULL, NULL, 'admin', 'active', NULL, NULL, NULL),
(2, 'User', 'user@gmail.com', NULL, '$2y$12$K8Zym9VdvcwxlcUFYVY2POx/tcYP4DlVExqjA139HuCYC8veqCdbW', NULL, NULL, NULL, 'user', 'active', NULL, NULL, NULL),
(3, 'guesthousedemo', 'guesthousedemo@gmail.com', NULL, '$2y$12$zOwHWAD76oI0UdU8ofD23erlqmrrQCdsMXvyPjgGw9gHmvxuZ./eK', NULL, NULL, NULL, 'admin', 'active', NULL, '2024-05-15 01:29:20', '2024-05-15 01:29:20'),
(4, 'abhay', 'abhaybaro356@gmail.com', NULL, '$2y$12$bXz1oHgas0jlFd7taw1bve0ZSJYu0lhec0wH6V4sB7Y89W6129fmu', NULL, NULL, NULL, 'user', 'active', NULL, '2024-05-15 04:02:41', '2024-05-15 04:02:41'),
(5, 'shabbir', 'shabbir.sa465@gmail.com', NULL, '$2y$12$J3OF2lHyK7qfw0MHLdLshOVanJlAuNrCV9cZ8nu/j21424lwwLOKS', NULL, NULL, NULL, 'user', 'active', NULL, '2024-05-15 21:05:50', '2024-05-15 21:05:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_room_lists`
--
ALTER TABLE `booking_room_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_areas`
--
ALTER TABLE `book_areas`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `multi_images`
--
ALTER TABLE `multi_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_booked_dates`
--
ALTER TABLE `room_booked_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_numbers`
--
ALTER TABLE `room_numbers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
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
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `booking_room_lists`
--
ALTER TABLE `booking_room_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book_areas`
--
ALTER TABLE `book_areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `multi_images`
--
ALTER TABLE `multi_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `room_booked_dates`
--
ALTER TABLE `room_booked_dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `room_numbers`
--
ALTER TABLE `room_numbers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `room_types`
--
ALTER TABLE `room_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
