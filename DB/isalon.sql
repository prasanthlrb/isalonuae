-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2020 at 08:24 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `isalon`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '+971 000000', 'admin@gmail.com', NULL, '$2y$10$m/ihjfXukZ4F4UyUeF4wiOSkfYG9r3kxKq9b4HsODh4glv5Hak43S', '1', NULL, '2020-07-02 09:13:52', '2020-07-17 07:53:49');

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `date`, `parent_id`, `area`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, '0', 'Tamil Nadu', '0', '2020-07-02 08:52:47', '2020-07-02 08:52:47'),
(2, NULL, '0', 'Kerala', '0', '2020-07-02 08:52:58', '2020-07-02 08:53:24'),
(3, NULL, '1', 'Madurai', '0', '2020-07-02 08:53:38', '2020-07-02 08:53:38'),
(4, NULL, '2', 'Cochin', '0', '2020-07-02 08:54:12', '2020-07-02 08:54:12'),
(5, NULL, '1', 'Chennai', '0', '2020-07-10 05:09:37', '2020-07-10 05:09:37'),
(6, NULL, '1', 'Trichy', '0', '2020-07-10 05:09:48', '2020-07-10 05:09:48'),
(7, NULL, '1', 'Dindigul', '0', '2020-07-10 05:09:57', '2020-07-10 05:09:57'),
(8, NULL, '2', 'Munnar', '0', '2020-07-10 05:12:04', '2020-07-10 05:12:04'),
(9, NULL, '2', 'Pollachi', '0', '2020-07-10 05:12:11', '2020-07-10 05:12:25');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_y` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_y` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_y` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_y` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_name_english` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_name_arabic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_id`, `category_name_english`, `category_name_arabic`, `icon`, `image`, `category_status`, `status`, `created_at`, `updated_at`) VALUES
(3, '0', 'Category name', 'Category name arabic', '161801249.png', '84180039.jpg', '0', '0', '2020-07-02 06:25:45', '2020-07-17 07:08:22'),
(4, '3', 'Second Category - 1', NULL, '1965388214.png', '111355259.jpg', '0', '0', '2020-07-02 08:24:21', '2020-07-17 07:09:56'),
(5, '3', 'Second Category - 2', NULL, '354665671.png', '1017557726.jpg', '0', '0', '2020-07-02 08:24:34', '2020-07-17 07:10:02'),
(6, '5', 'Third Category - 1', NULL, '1295305854.png', '1332025959.jpg', '0', '0', '2020-07-02 08:24:54', '2020-07-17 07:10:32'),
(7, '4', 'Third Category', NULL, '943217075.png', '1570791550.jpg', '0', '0', '2020-07-02 08:25:56', '2020-07-17 07:10:14');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `salon_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `limit_per_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `limit_per_coupon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `salon_id`, `coupon_code`, `description`, `start_date`, `end_date`, `discount_type`, `service_id`, `amount`, `max_value`, `limit_per_user`, `limit_per_coupon`, `user_type`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'CODE 150', 'Terms and Condition', '2020-07-06', '2020-07-11', '1', '1', '100', NULL, '5', '100', '1', '1', '1', '2020-07-07 08:43:41', '2020-07-09 06:53:18'),
(2, '4', 'Code 100', 'terms and condition', '2020-07-09', '2020-07-18', '2', '1', '50', '500', '1', '1', '1', '1,2,3', '1', '2020-07-09 06:46:18', '2020-07-11 08:35:12'),
(3, '4', 'Code 50', 'Terms', '2020-07-09', '2020-07-11', '1', '1', '50', '100', '1', '1', '1', '2,3', '0', '2020-07-09 06:48:50', '2020-07-09 06:48:50');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(2555) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `membership_plan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reviews` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `date`, `name`, `phone`, `email`, `password`, `membership_plan`, `reviews`, `status`, `created_at`, `updated_at`) VALUES
(12, '2020-07-16', 'Aravind', '8883191962', 'aravind.0216@gmail.com', '$2y$10$Zr5iZDGMA9Q08OhO9KFLkOBF1CIyuwaQSUjzK0GdyipKHo4Wgzn2q', NULL, NULL, '0', '2020-07-16 05:48:34', '2020-07-16 05:53:47');

-- --------------------------------------------------------

--
-- Table structure for table `customer_passwords`
--

CREATE TABLE `customer_passwords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_passwords`
--

INSERT INTO `customer_passwords` (`id`, `date`, `end_date`, `customer_id`, `name`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, '2020-07-16', '2020-07-30', '5', 'Aravind', 'aravind.0216@gmail.com', '0', '2020-07-16 05:33:30', '2020-07-16 05:33:30'),
(2, '2020-07-16', '2020-07-30', '6', 'Aravind', 'aravind.0216@gmail.com', '0', '2020-07-16 05:33:43', '2020-07-16 05:33:43'),
(3, '2020-07-16', '2020-07-30', '7', 'Aravind', 'aravind.0216@gmail.com', '0', '2020-07-16 05:34:18', '2020-07-16 05:34:18'),
(4, '2020-07-16', '2020-07-30', '8', 'aravind', 'aravind.0216@gmail.com', '0', '2020-07-16 05:36:43', '2020-07-16 05:36:43'),
(5, '2020-07-16', '2020-07-30', '9', 'aravind', 'aravind.0216@gmail.com', '0', '2020-07-16 05:39:20', '2020-07-16 05:39:20'),
(6, '2020-07-16', '2020-07-30', '10', 'aravind', 'aravind.0216@gmail.com', '0', '2020-07-16 05:40:16', '2020-07-16 05:40:16'),
(7, '2020-07-16', '2020-07-30', '11', 'aravind', 'aravind.0216@gmail.com', '0', '2020-07-16 05:41:14', '2020-07-16 05:41:14'),
(8, '2020-07-16', '2020-07-30', '12', 'Aravind', 'aravind.0216@gmail.com', '0', '2020-07-16 05:48:34', '2020-07-16 05:48:34'),
(9, '2020-07-16', '2020-07-30', '13', 'Aravind', 'aravind.0216@gmail.com', '0', '2020-07-16 05:49:40', '2020-07-16 05:49:40'),
(10, '2020-07-16', '2020-07-30', '14', 'Aravind', 'aravind.0216@gmail.com', '0', '2020-07-16 05:50:02', '2020-07-16 05:50:02'),
(11, '2020-07-16', '2020-07-30', '15', 'Aravind', 'aravind.0216@gmail.com', '0', '2020-07-16 05:50:07', '2020-07-16 05:50:07'),
(12, '2020-07-16', '2020-07-30', '12', 'Aravind', 'aravind.0216@gmail.com', '1', '2020-07-16 05:50:29', '2020-07-16 05:53:47');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_07_02_063221_create_admins_table', 1),
(4, '2020_07_02_063304_create_categories_table', 1),
(5, '2020_07_02_063324_create_services_table', 1),
(6, '2020_07_02_120044_create_push_notifications_table', 2),
(7, '2020_07_02_120141_create_reviews_table', 2),
(8, '2020_07_02_120318_create_customers_table', 2),
(9, '2020_07_02_131158_create_areas_table', 3),
(11, '2014_10_12_100000_create_password_resets_table', 4),
(12, '2020_07_03_065420_create_settlement_periods_table', 5),
(15, '2020_07_07_095137_create_service_times_table', 6),
(16, '2020_07_07_102105_create_salon_services_table', 7),
(17, '2020_07_07_133325_create_coupons_table', 8),
(18, '2020_07_08_101627_create_orders_table', 9),
(19, '2020_07_08_144001_create_sliders_table', 10),
(21, '2020_07_08_144823_create_banners_table', 11),
(22, '2020_07_09_075148_create_new_services_table', 12),
(24, '2020_07_11_053418_create_salon_passwords_table', 13),
(25, '2020_07_12_082526_create_settings_table', 14),
(26, '2020_07_12_082740_create_terms_and_conditions_table', 14),
(27, '2020_07_12_145920_create_salon_packages_table', 14),
(28, '2020_07_12_150019_create_salon_package_items_table', 14),
(29, '2020_07_15_122057_create_salon_workers_table', 15),
(30, '2020_07_16_085256_create_customer_passwords_table', 16),
(31, '2020_07_16_112653_create_salon_roles_table', 17),
(32, '2020_07_17_100127_create_roles_table', 18),
(33, '2020_08_24_112758_create_used_packages_table', 19);

-- --------------------------------------------------------

--
-- Table structure for table `new_services`
--

CREATE TABLE `new_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `new_services`
--

INSERT INTO `new_services` (`id`, `date`, `salon_id`, `service_name`, `category`, `remark`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Sevice namee', 'category', 'remark', '1', '2020-07-09 06:22:38', '2020-07-10 00:59:57');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `push_notifications`
--

CREATE TABLE `push_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `salon_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `other_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `push_notifications`
--

INSERT INTO `push_notifications` (`id`, `salon_id`, `title`, `description`, `send_to`, `status`, `other_status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Title', 'Description', '2', '1', NULL, '2020-07-02 07:02:03', '2020-07-13 00:21:35'),
(2, '30', 'Test Titie', 'Test Description', '2', '0', NULL, '2020-07-16 08:36:53', '2020-07-16 08:36:53');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reviews` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `invoice_id`, `salon_name`, `customer_name`, `comments`, `reviews`, `status`, `created_at`, `updated_at`) VALUES
(1, 'INV-000001', 'jojo Salon', 'John jojo', 'Really Good', '4', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboard` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_read` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_create` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_edit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_delete` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_read` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_create` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_edit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_delete` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_read` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_create` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_edit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_delete` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_package_read` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_package_create` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_package_edit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_package_delete` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review_ratings_read` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_read` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_create` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_edit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_delete` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_request_read` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_request_update` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `push_notification_read` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `push_notification_create` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `push_notification_edit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `push_notification_delete` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_request_read` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_request_update` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_read` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_create` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_edit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_delete` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_request_read` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_request_update` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booking_read` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_read` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_create` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_edit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_delete` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chat_to_salon_read` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chat_to_customer_read` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revenue_reports_read` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settlement_reports_read` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_read` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_create` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_edit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_delete` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles_read` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles_create` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles_edit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles_delete` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_read` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_create` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_edit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_delete` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_read` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_create` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_edit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_delete` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `application_settings_read` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms_and_condition_read` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settlement_period_read` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `dashboard`, `customer_read`, `customer_create`, `customer_edit`, `customer_delete`, `salon_read`, `salon_create`, `salon_edit`, `salon_delete`, `category_read`, `category_create`, `category_edit`, `category_delete`, `salon_package_read`, `salon_package_create`, `salon_package_edit`, `salon_package_delete`, `review_ratings_read`, `service_read`, `service_create`, `service_edit`, `service_delete`, `service_request_read`, `service_request_update`, `push_notification_read`, `push_notification_create`, `push_notification_edit`, `push_notification_delete`, `notification_request_read`, `notification_request_update`, `coupon_read`, `coupon_create`, `coupon_edit`, `coupon_delete`, `coupon_request_read`, `coupon_request_update`, `booking_read`, `area_read`, `area_create`, `area_edit`, `area_delete`, `chat_to_salon_read`, `chat_to_customer_read`, `revenue_reports_read`, `settlement_reports_read`, `user_read`, `user_create`, `user_edit`, `user_delete`, `roles_read`, `roles_create`, `roles_edit`, `roles_delete`, `slider_read`, `slider_create`, `slider_edit`, `slider_delete`, `banner_read`, `banner_create`, `banner_edit`, `banner_delete`, `application_settings_read`, `terms_and_condition_read`, `settlement_period_read`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', NULL, 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', NULL, 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', '0', '2020-07-17 05:51:35', '2020-07-17 08:22:20');

-- --------------------------------------------------------

--
-- Table structure for table `salon_packages`
--

CREATE TABLE `salon_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validity_count` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `next_renewal_discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_renewal_remember_days` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salon_packages`
--

INSERT INTO `salon_packages` (`id`, `package_name`, `price`, `validity`, `validity_count`, `next_renewal_discount`, `package_renewal_remember_days`, `status`, `created_at`, `updated_at`) VALUES
(7, 'Basic Plan', '100', '2', '5', '0', '5', '0', '2020-07-17 06:49:53', '2020-08-24 06:44:26'),
(8, 'Trial', '0', '1', '30', '0', '5', '0', '2020-08-24 06:44:08', '2020-08-24 06:44:08');

-- --------------------------------------------------------

--
-- Table structure for table `salon_package_items`
--

CREATE TABLE `salon_package_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_item` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salon_package_items`
--

INSERT INTO `salon_package_items` (`id`, `package_id`, `package_item`, `created_at`, `updated_at`) VALUES
(2, '4', '11', '2020-07-15 07:59:55', '2020-07-15 07:59:55'),
(6, '8', '', '2020-08-24 06:44:08', '2020-08-24 06:44:08'),
(8, '7', '', '2020-08-24 06:44:26', '2020-08-24 06:44:26');

-- --------------------------------------------------------

--
-- Table structure for table `salon_passwords`
--

CREATE TABLE `salon_passwords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salon_passwords`
--

INSERT INTO `salon_passwords` (`id`, `date`, `end_date`, `salon_id`, `owner_name`, `salon_name`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, '2020-07-11', '2020-08-10', '5', 'Araviind', 'spa', 'aravind.0216@gmail.com', '0', '2020-07-11 00:17:27', '2020-07-11 00:17:27'),
(2, '2020-07-11', '2020-08-10', '6', 'Araviind', 'spa', 'aravind.0216@gmail.com', '0', '2020-07-11 00:21:03', '2020-07-11 00:21:03'),
(3, '2020-07-11', '2020-08-10', '7', 'Araviind', 'spa', 'aravind.0216@gmail.com', '0', '2020-07-11 00:26:49', '2020-07-11 00:26:49'),
(4, '2020-07-11', '2020-08-10', '8', 'Araviind', 'spa', 'aravind.0216@gmail.com', '0', '2020-07-11 00:41:53', '2020-07-11 00:41:53'),
(5, '2020-07-11', '2020-08-10', '9', 'Araviind', 'spa', 'aravind.0216@gmail.com', '0', '2020-07-11 00:55:49', '2020-07-11 00:55:49'),
(6, '2020-07-11', '2020-08-10', '10', 'Arvind', 'spa', 'aravind.0216@gmail.com', '0', '2020-07-11 00:58:19', '2020-07-11 00:58:19'),
(7, '2020-07-11', '2020-08-10', '11', 'Arvind', 'spa', 'aravind.0216@gmail.com', '0', '2020-07-11 00:59:01', '2020-07-11 00:59:01'),
(8, '2020-07-11', '2020-08-10', '12', 'Arvind', 'spa', 'aravind.0216@gmail.com', '0', '2020-07-11 01:00:55', '2020-07-11 01:00:55'),
(9, '2020-07-11', '2020-08-10', '13', 'Arvind', 'spa', 'aravind.0216@gmail.com', '0', '2020-07-11 01:00:57', '2020-07-11 01:00:57'),
(10, '2020-07-11', '2020-08-10', '14', 'Arvind', 'spa', 'aravind.0216@gmail.com', '0', '2020-07-11 01:00:59', '2020-07-11 01:00:59'),
(11, '2020-07-11', '2020-08-10', '15', 'Arvind', 'spa', 'aravind.0216@gmail.com', '0', '2020-07-11 01:01:01', '2020-07-11 01:01:01'),
(12, '2020-07-11', '2020-08-10', '16', 'Arvind', 'spa', 'aravind.0216@gmail.com', '0', '2020-07-11 01:01:14', '2020-07-11 01:01:14'),
(13, '2020-07-11', '2020-08-10', '17', 'Arvind', 'spa', 'aravind.0216@gmail.com', '0', '2020-07-11 01:01:16', '2020-07-11 01:01:16'),
(14, '2020-07-11', '2020-08-10', '18', 'Arvind', 'spa', 'aravind.0216@gmail.com', '0', '2020-07-11 01:01:18', '2020-07-11 01:01:18'),
(15, '2020-07-11', '2020-08-10', '19', 'Arvind', 'spa', 'aravind.0216@gmail.com', '0', '2020-07-11 01:01:19', '2020-07-11 01:01:19'),
(16, '2020-07-11', '2020-08-10', '20', 'Arvind', 'spa', 'aravind.0216@gmail.com', '0', '2020-07-11 01:01:21', '2020-07-11 01:01:21'),
(17, '2020-07-11', '2020-07-10', '21', 'aravind', NULL, 'aravind.0216@gmail.com', '0', '2020-07-11 01:02:41', '2020-07-11 01:02:41'),
(18, '2020-07-11', '2020-08-10', '22', 'kumar', NULL, 'aravind.0216@gmail.com', '1', '2020-07-11 01:22:01', '2020-07-11 01:56:11'),
(19, '2020-07-13', '2020-08-12', '23', 'Aravind', NULL, 'aravind.0216@gmail.com', '0', '2020-07-13 05:06:47', '2020-07-13 05:06:47'),
(20, '2020-07-13', '2020-08-12', '24', 'Aravind', NULL, 'aravind.0216@gmail.com', '0', '2020-07-13 05:08:37', '2020-07-13 05:08:37'),
(21, '2020-07-13', '2020-08-12', '25', 'Aravind', 'Aravind Spa', 'aravind.0216@gmail.com', '1', '2020-07-13 05:19:15', '2020-07-13 05:21:11'),
(22, '2020-07-14', '2020-08-13', '26', 'Aravind', NULL, 'vendor@gmail.com', '0', '2020-07-14 00:58:01', '2020-07-14 00:58:01'),
(23, '2020-07-14', '2020-08-13', '27', 'Aravind', NULL, 'aravind.0216@gmail.com', '1', '2020-07-14 05:19:53', '2020-07-14 05:20:24'),
(24, '2020-07-16', '2020-07-30', '28', NULL, 'Aravind Spa', 'aravind.0216@gmail.com', '0', '2020-07-16 07:55:52', '2020-07-16 07:55:52'),
(25, '2020-07-16', '2020-07-30', '29', NULL, 'Aravind Spa', 'aravind.0216@gmail.com', '0', '2020-07-16 07:58:23', '2020-07-16 07:58:23'),
(26, '2020-07-16', '2020-07-30', '30', NULL, 'Aravind Spa', 'aravind.0216@gmail.com', '1', '2020-07-16 08:02:02', '2020-07-16 08:15:54'),
(27, '2020-07-16', '2020-07-30', '33', NULL, NULL, 'aravind@gmail.com', '0', '2020-07-16 09:49:16', '2020-07-16 09:49:16'),
(28, '2020-07-16', '2020-07-30', '34', NULL, NULL, 'kumar@gmail.com', '0', '2020-07-16 09:50:38', '2020-07-16 09:50:38'),
(29, '2020-07-17', '2020-07-31', '8', 'Aravind', NULL, 'aravind.0216@gmail.com', '1', '2020-07-17 06:26:08', '2020-07-17 06:57:16'),
(30, '2020-07-17', '2020-07-31', '9', 'Inba', NULL, 'inbaraj129@gmail.com', '0', '2020-07-17 07:37:52', '2020-07-17 07:37:52'),
(31, '2020-08-24', '2020-09-07', '10', 'Inba', NULL, 'inba@gmail.com', '0', '2020-08-24 08:08:07', '2020-08-24 08:08:07'),
(32, '2020-08-24', '2020-09-07', '11', 'Inba', NULL, 'inba@gmail.com', '0', '2020-08-24 08:08:57', '2020-08-24 08:08:57'),
(33, '2020-08-24', '2020-09-07', '12', 'Inba', NULL, 'inba@gmail.com', '0', '2020-08-24 08:12:01', '2020-08-24 08:12:01'),
(34, '2020-08-24', '2020-09-07', '13', 'Inba', NULL, 'inba@gmail.com', '0', '2020-08-24 08:14:23', '2020-08-24 08:14:23');

-- --------------------------------------------------------

--
-- Table structure for table `salon_roles`
--

CREATE TABLE `salon_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `salon_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appointment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calendor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `push_notification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reports` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salon_roles`
--

INSERT INTO `salon_roles` (`id`, `salon_id`, `role_name`, `dashboard`, `appointment`, `calendor`, `push_notification`, `service`, `review`, `coupon`, `workers`, `reports`, `roles`, `status`, `created_at`, `updated_at`) VALUES
(1, '4', 'Admin', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', '0', '2020-07-16 07:00:00', '2020-07-16 07:03:12'),
(2, '30', 'Admin', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', '0', '2020-07-16 08:32:58', '2020-07-16 08:32:58');

-- --------------------------------------------------------

--
-- Table structure for table `salon_services`
--

CREATE TABLE `salon_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `salon_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salon_services`
--

INSERT INTO `salon_services` (`id`, `salon_id`, `service_id`, `price`, `duration`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '150', '30', '0', '2020-07-07 05:21:44', '2020-07-07 05:25:18'),
(3, '4', '1', '500', '30', '0', '2020-07-07 06:29:12', '2020-07-07 06:29:22'),
(4, '4', '1', '600', '60', '0', '2020-07-07 06:29:42', '2020-07-07 06:29:42');

-- --------------------------------------------------------

--
-- Table structure for table `salon_workers`
--

CREATE TABLE `salon_workers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `salon_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_ids` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salon_workers`
--

INSERT INTO `salon_workers` (`id`, `salon_id`, `name`, `mobile`, `email`, `password`, `service_ids`, `role_id`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Aravind', '8883191962', 'aravind.0216@gmail.com', '$2y$10$.w/Y1bBHLrzBWX9Z8ebvguZi3JHqWEEYplzf5KrywOz5j/Tr2oQ7.', '1', NULL, '0', '2020-07-15 07:31:17', '2020-07-15 07:31:17');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_name_english` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_name_arabic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `category_id`, `service_name_english`, `service_name_arabic`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, '3', 'Service name english', NULL, '1089783658.jpg', '0', '2020-07-02 06:27:25', '2020-07-17 07:08:13');

-- --------------------------------------------------------

--
-- Table structure for table `service_times`
--

CREATE TABLE `service_times` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `salon_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `days` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `close_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_times`
--

INSERT INTO `service_times` (`id`, `salon_id`, `days`, `open_time`, `close_time`, `status`, `created_at`, `updated_at`) VALUES
(1, '4', 'Sunday', '', '', '2', '2020-07-07 06:12:46', '2020-07-07 07:20:10'),
(2, '4', 'Monday', '09:00 AM', '08:30 PM', '1', '2020-07-07 06:12:46', '2020-07-07 07:20:10'),
(3, '4', 'Tuesday', '09:00 AM', '09:00 PM', '1', '2020-07-07 06:12:46', '2020-07-07 07:21:18'),
(4, '4', 'Wednesday', '', '', '2', '2020-07-07 06:12:46', '2020-07-07 07:20:10'),
(5, '4', 'Thursday', '', '', '2', '2020-07-07 06:12:46', '2020-07-07 07:20:10'),
(6, '4', 'Friday', '', '', '2', '2020-07-07 06:12:46', '2020-07-07 07:20:10'),
(7, '4', 'Saturday', '', '', '2', '2020-07-07 06:12:46', '2020-07-07 07:20:10'),
(8, '5', 'Sunday', '', '', '', '2020-07-11 00:17:27', '2020-07-11 07:33:01'),
(9, '5', 'Monday', '08:00 AM', '08:00 PM', '1', '2020-07-11 00:17:27', '2020-07-11 07:33:01'),
(10, '5', 'Tuesday', '08:00 AM', '08:00 PM', '1', '2020-07-11 00:17:27', '2020-07-11 07:34:03'),
(11, '5', 'Wednesday', '08:00 AM', '08:00 PM', '1', '2020-07-11 00:17:27', '2020-07-11 07:34:03'),
(12, '5', 'Thursday', '08:00 AM', '08:00 PM', '1', '2020-07-11 00:17:27', '2020-07-11 07:34:03'),
(13, '5', 'Friday', '08:00 AM', '08:00 PM', '1', '2020-07-11 00:17:27', '2020-07-11 07:34:03'),
(14, '5', 'Saturday', '08:00 AM', '06:00 PM', '1', '2020-07-11 00:17:27', '2020-07-11 07:34:03'),
(15, '6', 'Sunday', NULL, NULL, '0', '2020-07-11 00:21:03', '2020-07-11 00:21:03'),
(16, '6', 'Monday', NULL, NULL, '0', '2020-07-11 00:21:03', '2020-07-11 00:21:03'),
(17, '6', 'Tuesday', NULL, NULL, '0', '2020-07-11 00:21:03', '2020-07-11 00:21:03'),
(18, '6', 'Wednesday', NULL, NULL, '0', '2020-07-11 00:21:03', '2020-07-11 00:21:03'),
(19, '6', 'Thursday', NULL, NULL, '0', '2020-07-11 00:21:03', '2020-07-11 00:21:03'),
(20, '6', 'Friday', NULL, NULL, '0', '2020-07-11 00:21:03', '2020-07-11 00:21:03'),
(21, '6', 'Saturday', NULL, NULL, '0', '2020-07-11 00:21:03', '2020-07-11 00:21:03'),
(22, '7', 'Sunday', NULL, NULL, '0', '2020-07-11 00:26:49', '2020-07-11 00:26:49'),
(23, '7', 'Monday', NULL, NULL, '0', '2020-07-11 00:26:49', '2020-07-11 00:26:49'),
(24, '7', 'Tuesday', NULL, NULL, '0', '2020-07-11 00:26:49', '2020-07-11 00:26:49'),
(25, '7', 'Wednesday', NULL, NULL, '0', '2020-07-11 00:26:49', '2020-07-11 00:26:49'),
(26, '7', 'Thursday', NULL, NULL, '0', '2020-07-11 00:26:49', '2020-07-11 00:26:49'),
(27, '7', 'Friday', NULL, NULL, '0', '2020-07-11 00:26:49', '2020-07-11 00:26:49'),
(28, '7', 'Saturday', NULL, NULL, '0', '2020-07-11 00:26:49', '2020-07-11 00:26:49'),
(29, '8', 'Sunday', NULL, NULL, '0', '2020-07-11 00:41:53', '2020-07-11 00:41:53'),
(30, '8', 'Monday', NULL, NULL, '0', '2020-07-11 00:41:53', '2020-07-11 00:41:53'),
(31, '8', 'Tuesday', NULL, NULL, '0', '2020-07-11 00:41:53', '2020-07-11 00:41:53'),
(32, '8', 'Wednesday', NULL, NULL, '0', '2020-07-11 00:41:53', '2020-07-11 00:41:53'),
(33, '8', 'Thursday', NULL, NULL, '0', '2020-07-11 00:41:53', '2020-07-11 00:41:53'),
(34, '8', 'Friday', NULL, NULL, '0', '2020-07-11 00:41:53', '2020-07-11 00:41:53'),
(35, '8', 'Saturday', NULL, NULL, '0', '2020-07-11 00:41:53', '2020-07-11 00:41:53'),
(36, '9', 'Sunday', NULL, NULL, '0', '2020-07-11 00:55:49', '2020-07-11 00:55:49'),
(37, '9', 'Monday', NULL, NULL, '0', '2020-07-11 00:55:49', '2020-07-11 00:55:49'),
(38, '9', 'Tuesday', NULL, NULL, '0', '2020-07-11 00:55:49', '2020-07-11 00:55:49'),
(39, '9', 'Wednesday', NULL, NULL, '0', '2020-07-11 00:55:49', '2020-07-11 00:55:49'),
(40, '9', 'Thursday', NULL, NULL, '0', '2020-07-11 00:55:49', '2020-07-11 00:55:49'),
(41, '9', 'Friday', NULL, NULL, '0', '2020-07-11 00:55:49', '2020-07-11 00:55:49'),
(42, '9', 'Saturday', NULL, NULL, '0', '2020-07-11 00:55:49', '2020-07-11 00:55:49'),
(43, '10', 'Sunday', NULL, NULL, '0', '2020-07-11 00:58:19', '2020-07-11 00:58:19'),
(44, '10', 'Monday', NULL, NULL, '0', '2020-07-11 00:58:19', '2020-07-11 00:58:19'),
(45, '10', 'Tuesday', NULL, NULL, '0', '2020-07-11 00:58:19', '2020-07-11 00:58:19'),
(46, '10', 'Wednesday', NULL, NULL, '0', '2020-07-11 00:58:19', '2020-07-11 00:58:19'),
(47, '10', 'Thursday', NULL, NULL, '0', '2020-07-11 00:58:19', '2020-07-11 00:58:19'),
(48, '10', 'Friday', NULL, NULL, '0', '2020-07-11 00:58:19', '2020-07-11 00:58:19'),
(49, '10', 'Saturday', NULL, NULL, '0', '2020-07-11 00:58:19', '2020-07-11 00:58:19'),
(50, '11', 'Sunday', NULL, NULL, '0', '2020-07-11 00:59:01', '2020-07-11 00:59:01'),
(51, '11', 'Monday', NULL, NULL, '0', '2020-07-11 00:59:01', '2020-07-11 00:59:01'),
(52, '11', 'Tuesday', NULL, NULL, '0', '2020-07-11 00:59:01', '2020-07-11 00:59:01'),
(53, '11', 'Wednesday', NULL, NULL, '0', '2020-07-11 00:59:01', '2020-07-11 00:59:01'),
(54, '11', 'Thursday', NULL, NULL, '0', '2020-07-11 00:59:01', '2020-07-11 00:59:01'),
(55, '11', 'Friday', NULL, NULL, '0', '2020-07-11 00:59:01', '2020-07-11 00:59:01'),
(56, '11', 'Saturday', NULL, NULL, '0', '2020-07-11 00:59:01', '2020-07-11 00:59:01'),
(57, '12', 'Sunday', NULL, NULL, '0', '2020-07-11 01:00:55', '2020-07-11 01:00:55'),
(58, '12', 'Monday', NULL, NULL, '0', '2020-07-11 01:00:55', '2020-07-11 01:00:55'),
(59, '12', 'Tuesday', NULL, NULL, '0', '2020-07-11 01:00:55', '2020-07-11 01:00:55'),
(60, '12', 'Wednesday', NULL, NULL, '0', '2020-07-11 01:00:55', '2020-07-11 01:00:55'),
(61, '12', 'Thursday', NULL, NULL, '0', '2020-07-11 01:00:55', '2020-07-11 01:00:55'),
(62, '12', 'Friday', NULL, NULL, '0', '2020-07-11 01:00:55', '2020-07-11 01:00:55'),
(63, '12', 'Saturday', NULL, NULL, '0', '2020-07-11 01:00:55', '2020-07-11 01:00:55'),
(64, '13', 'Sunday', NULL, NULL, '0', '2020-07-11 01:00:57', '2020-07-11 01:00:57'),
(65, '13', 'Monday', NULL, NULL, '0', '2020-07-11 01:00:57', '2020-07-11 01:00:57'),
(66, '13', 'Tuesday', NULL, NULL, '0', '2020-07-11 01:00:57', '2020-07-11 01:00:57'),
(67, '13', 'Wednesday', NULL, NULL, '0', '2020-07-11 01:00:57', '2020-07-11 01:00:57'),
(68, '13', 'Thursday', NULL, NULL, '0', '2020-07-11 01:00:57', '2020-07-11 01:00:57'),
(69, '13', 'Friday', NULL, NULL, '0', '2020-07-11 01:00:57', '2020-07-11 01:00:57'),
(70, '13', 'Saturday', NULL, NULL, '0', '2020-07-11 01:00:57', '2020-07-11 01:00:57'),
(71, '14', 'Sunday', NULL, NULL, '0', '2020-07-11 01:00:59', '2020-07-11 01:00:59'),
(72, '14', 'Monday', NULL, NULL, '0', '2020-07-11 01:00:59', '2020-07-11 01:00:59'),
(73, '14', 'Tuesday', NULL, NULL, '0', '2020-07-11 01:00:59', '2020-07-11 01:00:59'),
(74, '14', 'Wednesday', NULL, NULL, '0', '2020-07-11 01:00:59', '2020-07-11 01:00:59'),
(75, '14', 'Thursday', NULL, NULL, '0', '2020-07-11 01:00:59', '2020-07-11 01:00:59'),
(76, '14', 'Friday', NULL, NULL, '0', '2020-07-11 01:00:59', '2020-07-11 01:00:59'),
(77, '14', 'Saturday', NULL, NULL, '0', '2020-07-11 01:00:59', '2020-07-11 01:00:59'),
(78, '15', 'Sunday', NULL, NULL, '0', '2020-07-11 01:01:01', '2020-07-11 01:01:01'),
(79, '15', 'Monday', NULL, NULL, '0', '2020-07-11 01:01:01', '2020-07-11 01:01:01'),
(80, '15', 'Tuesday', NULL, NULL, '0', '2020-07-11 01:01:01', '2020-07-11 01:01:01'),
(81, '15', 'Wednesday', NULL, NULL, '0', '2020-07-11 01:01:01', '2020-07-11 01:01:01'),
(82, '15', 'Thursday', NULL, NULL, '0', '2020-07-11 01:01:01', '2020-07-11 01:01:01'),
(83, '15', 'Friday', NULL, NULL, '0', '2020-07-11 01:01:01', '2020-07-11 01:01:01'),
(84, '15', 'Saturday', NULL, NULL, '0', '2020-07-11 01:01:01', '2020-07-11 01:01:01'),
(85, '16', 'Sunday', NULL, NULL, '0', '2020-07-11 01:01:14', '2020-07-11 01:01:14'),
(86, '16', 'Monday', NULL, NULL, '0', '2020-07-11 01:01:14', '2020-07-11 01:01:14'),
(87, '16', 'Tuesday', NULL, NULL, '0', '2020-07-11 01:01:14', '2020-07-11 01:01:14'),
(88, '16', 'Wednesday', NULL, NULL, '0', '2020-07-11 01:01:14', '2020-07-11 01:01:14'),
(89, '16', 'Thursday', NULL, NULL, '0', '2020-07-11 01:01:14', '2020-07-11 01:01:14'),
(90, '16', 'Friday', NULL, NULL, '0', '2020-07-11 01:01:14', '2020-07-11 01:01:14'),
(91, '16', 'Saturday', NULL, NULL, '0', '2020-07-11 01:01:14', '2020-07-11 01:01:14'),
(92, '17', 'Sunday', NULL, NULL, '0', '2020-07-11 01:01:16', '2020-07-11 01:01:16'),
(93, '17', 'Monday', NULL, NULL, '0', '2020-07-11 01:01:16', '2020-07-11 01:01:16'),
(94, '17', 'Tuesday', NULL, NULL, '0', '2020-07-11 01:01:16', '2020-07-11 01:01:16'),
(95, '17', 'Wednesday', NULL, NULL, '0', '2020-07-11 01:01:16', '2020-07-11 01:01:16'),
(96, '17', 'Thursday', NULL, NULL, '0', '2020-07-11 01:01:16', '2020-07-11 01:01:16'),
(97, '17', 'Friday', NULL, NULL, '0', '2020-07-11 01:01:16', '2020-07-11 01:01:16'),
(98, '17', 'Saturday', NULL, NULL, '0', '2020-07-11 01:01:16', '2020-07-11 01:01:16'),
(99, '18', 'Sunday', NULL, NULL, '0', '2020-07-11 01:01:18', '2020-07-11 01:01:18'),
(100, '18', 'Monday', NULL, NULL, '0', '2020-07-11 01:01:18', '2020-07-11 01:01:18'),
(101, '18', 'Tuesday', NULL, NULL, '0', '2020-07-11 01:01:18', '2020-07-11 01:01:18'),
(102, '18', 'Wednesday', NULL, NULL, '0', '2020-07-11 01:01:18', '2020-07-11 01:01:18'),
(103, '18', 'Thursday', NULL, NULL, '0', '2020-07-11 01:01:18', '2020-07-11 01:01:18'),
(104, '18', 'Friday', NULL, NULL, '0', '2020-07-11 01:01:18', '2020-07-11 01:01:18'),
(105, '18', 'Saturday', NULL, NULL, '0', '2020-07-11 01:01:18', '2020-07-11 01:01:18'),
(106, '19', 'Sunday', NULL, NULL, '0', '2020-07-11 01:01:19', '2020-07-11 01:01:19'),
(107, '19', 'Monday', NULL, NULL, '0', '2020-07-11 01:01:19', '2020-07-11 01:01:19'),
(108, '19', 'Tuesday', NULL, NULL, '0', '2020-07-11 01:01:19', '2020-07-11 01:01:19'),
(109, '19', 'Wednesday', NULL, NULL, '0', '2020-07-11 01:01:19', '2020-07-11 01:01:19'),
(110, '19', 'Thursday', NULL, NULL, '0', '2020-07-11 01:01:19', '2020-07-11 01:01:19'),
(111, '19', 'Friday', NULL, NULL, '0', '2020-07-11 01:01:19', '2020-07-11 01:01:19'),
(112, '19', 'Saturday', NULL, NULL, '0', '2020-07-11 01:01:19', '2020-07-11 01:01:19'),
(113, '20', 'Sunday', NULL, NULL, '0', '2020-07-11 01:01:21', '2020-07-11 01:01:21'),
(114, '20', 'Monday', NULL, NULL, '0', '2020-07-11 01:01:21', '2020-07-11 01:01:21'),
(115, '20', 'Tuesday', NULL, NULL, '0', '2020-07-11 01:01:21', '2020-07-11 01:01:21'),
(116, '20', 'Wednesday', NULL, NULL, '0', '2020-07-11 01:01:21', '2020-07-11 01:01:21'),
(117, '20', 'Thursday', NULL, NULL, '0', '2020-07-11 01:01:21', '2020-07-11 01:01:21'),
(118, '20', 'Friday', NULL, NULL, '0', '2020-07-11 01:01:21', '2020-07-11 01:01:21'),
(119, '20', 'Saturday', NULL, NULL, '0', '2020-07-11 01:01:21', '2020-07-11 01:01:21'),
(120, '21', 'Sunday', NULL, NULL, '0', '2020-07-11 01:02:41', '2020-07-11 01:02:41'),
(121, '21', 'Monday', NULL, NULL, '0', '2020-07-11 01:02:41', '2020-07-11 01:02:41'),
(122, '21', 'Tuesday', NULL, NULL, '0', '2020-07-11 01:02:41', '2020-07-11 01:02:41'),
(123, '21', 'Wednesday', NULL, NULL, '0', '2020-07-11 01:02:41', '2020-07-11 01:02:41'),
(124, '21', 'Thursday', NULL, NULL, '0', '2020-07-11 01:02:41', '2020-07-11 01:02:41'),
(125, '21', 'Friday', NULL, NULL, '0', '2020-07-11 01:02:41', '2020-07-11 01:02:41'),
(126, '21', 'Saturday', NULL, NULL, '0', '2020-07-11 01:02:41', '2020-07-11 01:02:41'),
(127, '22', 'Sunday', NULL, NULL, '0', '2020-07-11 01:22:01', '2020-07-11 01:22:01'),
(128, '22', 'Monday', NULL, NULL, '0', '2020-07-11 01:22:01', '2020-07-11 01:22:01'),
(129, '22', 'Tuesday', NULL, NULL, '0', '2020-07-11 01:22:01', '2020-07-11 01:22:01'),
(130, '22', 'Wednesday', NULL, NULL, '0', '2020-07-11 01:22:01', '2020-07-11 01:22:01'),
(131, '22', 'Thursday', NULL, NULL, '0', '2020-07-11 01:22:01', '2020-07-11 01:22:01'),
(132, '22', 'Friday', NULL, NULL, '0', '2020-07-11 01:22:01', '2020-07-11 01:22:01'),
(133, '22', 'Saturday', NULL, NULL, '0', '2020-07-11 01:22:01', '2020-07-11 01:22:01'),
(134, '23', 'Sunday', NULL, NULL, '0', '2020-07-13 05:06:47', '2020-07-13 05:06:47'),
(135, '23', 'Monday', NULL, NULL, '0', '2020-07-13 05:06:47', '2020-07-13 05:06:47'),
(136, '23', 'Tuesday', NULL, NULL, '0', '2020-07-13 05:06:47', '2020-07-13 05:06:47'),
(137, '23', 'Wednesday', NULL, NULL, '0', '2020-07-13 05:06:47', '2020-07-13 05:06:47'),
(138, '23', 'Thursday', NULL, NULL, '0', '2020-07-13 05:06:47', '2020-07-13 05:06:47'),
(139, '23', 'Friday', NULL, NULL, '0', '2020-07-13 05:06:47', '2020-07-13 05:06:47'),
(140, '23', 'Saturday', NULL, NULL, '0', '2020-07-13 05:06:47', '2020-07-13 05:06:47'),
(141, '24', 'Sunday', NULL, NULL, '0', '2020-07-13 05:08:37', '2020-07-13 05:08:37'),
(142, '24', 'Monday', NULL, NULL, '0', '2020-07-13 05:08:37', '2020-07-13 05:08:37'),
(143, '24', 'Tuesday', NULL, NULL, '0', '2020-07-13 05:08:37', '2020-07-13 05:08:37'),
(144, '24', 'Wednesday', NULL, NULL, '0', '2020-07-13 05:08:37', '2020-07-13 05:08:37'),
(145, '24', 'Thursday', NULL, NULL, '0', '2020-07-13 05:08:37', '2020-07-13 05:08:37'),
(146, '24', 'Friday', NULL, NULL, '0', '2020-07-13 05:08:37', '2020-07-13 05:08:37'),
(147, '24', 'Saturday', NULL, NULL, '0', '2020-07-13 05:08:37', '2020-07-13 05:08:37'),
(148, '25', 'Sunday', NULL, NULL, '0', '2020-07-13 05:19:15', '2020-07-13 05:19:15'),
(149, '25', 'Monday', NULL, NULL, '0', '2020-07-13 05:19:15', '2020-07-13 05:19:15'),
(150, '25', 'Tuesday', NULL, NULL, '0', '2020-07-13 05:19:15', '2020-07-13 05:19:15'),
(151, '25', 'Wednesday', NULL, NULL, '0', '2020-07-13 05:19:15', '2020-07-13 05:19:15'),
(152, '25', 'Thursday', NULL, NULL, '0', '2020-07-13 05:19:15', '2020-07-13 05:19:15'),
(153, '25', 'Friday', NULL, NULL, '0', '2020-07-13 05:19:15', '2020-07-13 05:19:15'),
(154, '25', 'Saturday', NULL, NULL, '0', '2020-07-13 05:19:15', '2020-07-13 05:19:15'),
(155, '26', 'Sunday', NULL, NULL, '0', '2020-07-14 00:58:01', '2020-07-14 00:58:01'),
(156, '26', 'Monday', NULL, NULL, '0', '2020-07-14 00:58:01', '2020-07-14 00:58:01'),
(157, '26', 'Tuesday', NULL, NULL, '0', '2020-07-14 00:58:01', '2020-07-14 00:58:01'),
(158, '26', 'Wednesday', NULL, NULL, '0', '2020-07-14 00:58:01', '2020-07-14 00:58:01'),
(159, '26', 'Thursday', NULL, NULL, '0', '2020-07-14 00:58:01', '2020-07-14 00:58:01'),
(160, '26', 'Friday', NULL, NULL, '0', '2020-07-14 00:58:01', '2020-07-14 00:58:01'),
(161, '26', 'Saturday', NULL, NULL, '0', '2020-07-14 00:58:01', '2020-07-14 00:58:01'),
(162, '27', 'Sunday', NULL, NULL, '0', '2020-07-14 05:19:53', '2020-07-14 05:19:53'),
(163, '27', 'Monday', NULL, NULL, '0', '2020-07-14 05:19:53', '2020-07-14 05:19:53'),
(164, '27', 'Tuesday', NULL, NULL, '0', '2020-07-14 05:19:53', '2020-07-14 05:19:53'),
(165, '27', 'Wednesday', NULL, NULL, '0', '2020-07-14 05:19:53', '2020-07-14 05:19:53'),
(166, '27', 'Thursday', NULL, NULL, '0', '2020-07-14 05:19:53', '2020-07-14 05:19:53'),
(167, '27', 'Friday', NULL, NULL, '0', '2020-07-14 05:19:53', '2020-07-14 05:19:53'),
(168, '27', 'Saturday', NULL, NULL, '0', '2020-07-14 05:19:53', '2020-07-14 05:19:53'),
(169, '28', 'Sunday', NULL, NULL, '0', '2020-07-16 07:55:51', '2020-07-16 07:55:51'),
(170, '28', 'Monday', NULL, NULL, '0', '2020-07-16 07:55:51', '2020-07-16 07:55:51'),
(171, '28', 'Tuesday', NULL, NULL, '0', '2020-07-16 07:55:51', '2020-07-16 07:55:51'),
(172, '28', 'Wednesday', NULL, NULL, '0', '2020-07-16 07:55:51', '2020-07-16 07:55:51'),
(173, '28', 'Thursday', NULL, NULL, '0', '2020-07-16 07:55:51', '2020-07-16 07:55:51'),
(174, '28', 'Friday', NULL, NULL, '0', '2020-07-16 07:55:52', '2020-07-16 07:55:52'),
(175, '28', 'Saturday', NULL, NULL, '0', '2020-07-16 07:55:52', '2020-07-16 07:55:52'),
(176, '29', 'Sunday', NULL, NULL, '0', '2020-07-16 07:58:23', '2020-07-16 07:58:23'),
(177, '29', 'Monday', NULL, NULL, '0', '2020-07-16 07:58:23', '2020-07-16 07:58:23'),
(178, '29', 'Tuesday', NULL, NULL, '0', '2020-07-16 07:58:23', '2020-07-16 07:58:23'),
(179, '29', 'Wednesday', NULL, NULL, '0', '2020-07-16 07:58:23', '2020-07-16 07:58:23'),
(180, '29', 'Thursday', NULL, NULL, '0', '2020-07-16 07:58:23', '2020-07-16 07:58:23'),
(181, '29', 'Friday', NULL, NULL, '0', '2020-07-16 07:58:23', '2020-07-16 07:58:23'),
(182, '29', 'Saturday', NULL, NULL, '0', '2020-07-16 07:58:23', '2020-07-16 07:58:23'),
(183, '30', 'Sunday', NULL, NULL, '0', '2020-07-16 08:02:02', '2020-07-16 08:02:02'),
(184, '30', 'Monday', NULL, NULL, '0', '2020-07-16 08:02:02', '2020-07-16 08:02:02'),
(185, '30', 'Tuesday', NULL, NULL, '0', '2020-07-16 08:02:02', '2020-07-16 08:02:02'),
(186, '30', 'Wednesday', NULL, NULL, '0', '2020-07-16 08:02:02', '2020-07-16 08:02:02'),
(187, '30', 'Thursday', NULL, NULL, '0', '2020-07-16 08:02:02', '2020-07-16 08:02:02'),
(188, '30', 'Friday', NULL, NULL, '0', '2020-07-16 08:02:02', '2020-07-16 08:02:02'),
(189, '30', 'Saturday', NULL, NULL, '0', '2020-07-16 08:02:02', '2020-07-16 08:02:02'),
(190, '33', 'Sunday', NULL, NULL, '0', '2020-07-16 09:49:16', '2020-07-16 09:49:16'),
(191, '33', 'Monday', NULL, NULL, '0', '2020-07-16 09:49:16', '2020-07-16 09:49:16'),
(192, '33', 'Tuesday', NULL, NULL, '0', '2020-07-16 09:49:16', '2020-07-16 09:49:16'),
(193, '33', 'Wednesday', NULL, NULL, '0', '2020-07-16 09:49:16', '2020-07-16 09:49:16'),
(194, '33', 'Thursday', NULL, NULL, '0', '2020-07-16 09:49:16', '2020-07-16 09:49:16'),
(195, '33', 'Friday', NULL, NULL, '0', '2020-07-16 09:49:16', '2020-07-16 09:49:16'),
(196, '33', 'Saturday', NULL, NULL, '0', '2020-07-16 09:49:16', '2020-07-16 09:49:16'),
(197, '34', 'Sunday', NULL, NULL, '0', '2020-07-16 09:50:38', '2020-07-16 09:50:38'),
(198, '34', 'Monday', NULL, NULL, '0', '2020-07-16 09:50:38', '2020-07-16 09:50:38'),
(199, '34', 'Tuesday', NULL, NULL, '0', '2020-07-16 09:50:38', '2020-07-16 09:50:38'),
(200, '34', 'Wednesday', NULL, NULL, '0', '2020-07-16 09:50:38', '2020-07-16 09:50:38'),
(201, '34', 'Thursday', NULL, NULL, '0', '2020-07-16 09:50:38', '2020-07-16 09:50:38'),
(202, '34', 'Friday', NULL, NULL, '0', '2020-07-16 09:50:38', '2020-07-16 09:50:38'),
(203, '34', 'Saturday', NULL, NULL, '0', '2020-07-16 09:50:38', '2020-07-16 09:50:38'),
(204, '5', 'Sunday', NULL, NULL, '0', '2020-07-17 06:19:49', '2020-07-17 06:19:49'),
(205, '5', 'Monday', NULL, NULL, '0', '2020-07-17 06:19:49', '2020-07-17 06:19:49'),
(206, '5', 'Tuesday', NULL, NULL, '0', '2020-07-17 06:19:49', '2020-07-17 06:19:49'),
(207, '5', 'Wednesday', NULL, NULL, '0', '2020-07-17 06:19:49', '2020-07-17 06:19:49'),
(208, '5', 'Thursday', NULL, NULL, '0', '2020-07-17 06:19:49', '2020-07-17 06:19:49'),
(209, '5', 'Friday', NULL, NULL, '0', '2020-07-17 06:19:49', '2020-07-17 06:19:49'),
(210, '5', 'Saturday', NULL, NULL, '0', '2020-07-17 06:19:49', '2020-07-17 06:19:49'),
(211, '6', 'Sunday', NULL, NULL, '0', '2020-07-17 06:21:41', '2020-07-17 06:21:41'),
(212, '6', 'Monday', NULL, NULL, '0', '2020-07-17 06:21:41', '2020-07-17 06:21:41'),
(213, '6', 'Tuesday', NULL, NULL, '0', '2020-07-17 06:21:41', '2020-07-17 06:21:41'),
(214, '6', 'Wednesday', NULL, NULL, '0', '2020-07-17 06:21:41', '2020-07-17 06:21:41'),
(215, '6', 'Thursday', NULL, NULL, '0', '2020-07-17 06:21:41', '2020-07-17 06:21:41'),
(216, '6', 'Friday', NULL, NULL, '0', '2020-07-17 06:21:41', '2020-07-17 06:21:41'),
(217, '6', 'Saturday', NULL, NULL, '0', '2020-07-17 06:21:41', '2020-07-17 06:21:41'),
(218, '7', 'Sunday', NULL, NULL, '0', '2020-07-17 06:24:10', '2020-07-17 06:24:10'),
(219, '7', 'Monday', NULL, NULL, '0', '2020-07-17 06:24:10', '2020-07-17 06:24:10'),
(220, '7', 'Tuesday', NULL, NULL, '0', '2020-07-17 06:24:10', '2020-07-17 06:24:10'),
(221, '7', 'Wednesday', NULL, NULL, '0', '2020-07-17 06:24:10', '2020-07-17 06:24:10'),
(222, '7', 'Thursday', NULL, NULL, '0', '2020-07-17 06:24:10', '2020-07-17 06:24:10'),
(223, '7', 'Friday', NULL, NULL, '0', '2020-07-17 06:24:10', '2020-07-17 06:24:10'),
(224, '7', 'Saturday', NULL, NULL, '0', '2020-07-17 06:24:10', '2020-07-17 06:24:10'),
(225, '8', 'Sunday', NULL, NULL, '0', '2020-07-17 06:26:08', '2020-07-17 06:26:08'),
(226, '8', 'Monday', NULL, NULL, '0', '2020-07-17 06:26:08', '2020-07-17 06:26:08'),
(227, '8', 'Tuesday', NULL, NULL, '0', '2020-07-17 06:26:08', '2020-07-17 06:26:08'),
(228, '8', 'Wednesday', NULL, NULL, '0', '2020-07-17 06:26:08', '2020-07-17 06:26:08'),
(229, '8', 'Thursday', NULL, NULL, '0', '2020-07-17 06:26:08', '2020-07-17 06:26:08'),
(230, '8', 'Friday', NULL, NULL, '0', '2020-07-17 06:26:08', '2020-07-17 06:26:08'),
(231, '8', 'Saturday', NULL, NULL, '0', '2020-07-17 06:26:08', '2020-07-17 06:26:08'),
(232, '9', 'Sunday', NULL, NULL, '0', '2020-07-17 07:37:52', '2020-07-17 07:37:52'),
(233, '9', 'Monday', NULL, NULL, '0', '2020-07-17 07:37:52', '2020-07-17 07:37:52'),
(234, '9', 'Tuesday', NULL, NULL, '0', '2020-07-17 07:37:52', '2020-07-17 07:37:52'),
(235, '9', 'Wednesday', NULL, NULL, '0', '2020-07-17 07:37:52', '2020-07-17 07:37:52'),
(236, '9', 'Thursday', NULL, NULL, '0', '2020-07-17 07:37:52', '2020-07-17 07:37:52'),
(237, '9', 'Friday', NULL, NULL, '0', '2020-07-17 07:37:52', '2020-07-17 07:37:52'),
(238, '9', 'Saturday', NULL, NULL, '0', '2020-07-17 07:37:52', '2020-07-17 07:37:52'),
(239, '10', 'Sunday', NULL, NULL, '0', '2020-08-24 08:08:07', '2020-08-24 08:08:07'),
(240, '10', 'Monday', NULL, NULL, '0', '2020-08-24 08:08:07', '2020-08-24 08:08:07'),
(241, '10', 'Tuesday', NULL, NULL, '0', '2020-08-24 08:08:07', '2020-08-24 08:08:07'),
(242, '10', 'Wednesday', NULL, NULL, '0', '2020-08-24 08:08:07', '2020-08-24 08:08:07'),
(243, '10', 'Thursday', NULL, NULL, '0', '2020-08-24 08:08:07', '2020-08-24 08:08:07'),
(244, '10', 'Friday', NULL, NULL, '0', '2020-08-24 08:08:07', '2020-08-24 08:08:07'),
(245, '10', 'Saturday', NULL, NULL, '0', '2020-08-24 08:08:07', '2020-08-24 08:08:07'),
(246, '11', 'Sunday', NULL, NULL, '0', '2020-08-24 08:08:57', '2020-08-24 08:08:57'),
(247, '11', 'Monday', NULL, NULL, '0', '2020-08-24 08:08:57', '2020-08-24 08:08:57'),
(248, '11', 'Tuesday', NULL, NULL, '0', '2020-08-24 08:08:57', '2020-08-24 08:08:57'),
(249, '11', 'Wednesday', NULL, NULL, '0', '2020-08-24 08:08:57', '2020-08-24 08:08:57'),
(250, '11', 'Thursday', NULL, NULL, '0', '2020-08-24 08:08:57', '2020-08-24 08:08:57'),
(251, '11', 'Friday', NULL, NULL, '0', '2020-08-24 08:08:57', '2020-08-24 08:08:57'),
(252, '11', 'Saturday', NULL, NULL, '0', '2020-08-24 08:08:57', '2020-08-24 08:08:57'),
(253, '12', 'Sunday', NULL, NULL, '0', '2020-08-24 08:12:01', '2020-08-24 08:12:01'),
(254, '12', 'Monday', NULL, NULL, '0', '2020-08-24 08:12:01', '2020-08-24 08:12:01'),
(255, '12', 'Tuesday', NULL, NULL, '0', '2020-08-24 08:12:01', '2020-08-24 08:12:01'),
(256, '12', 'Wednesday', NULL, NULL, '0', '2020-08-24 08:12:01', '2020-08-24 08:12:01'),
(257, '12', 'Thursday', NULL, NULL, '0', '2020-08-24 08:12:01', '2020-08-24 08:12:01'),
(258, '12', 'Friday', NULL, NULL, '0', '2020-08-24 08:12:01', '2020-08-24 08:12:01'),
(259, '12', 'Saturday', NULL, NULL, '0', '2020-08-24 08:12:01', '2020-08-24 08:12:01'),
(260, '13', 'Sunday', NULL, NULL, '0', '2020-08-24 08:14:23', '2020-08-24 08:14:23'),
(261, '13', 'Monday', NULL, NULL, '0', '2020-08-24 08:14:23', '2020-08-24 08:14:23'),
(262, '13', 'Tuesday', NULL, NULL, '0', '2020-08-24 08:14:23', '2020-08-24 08:14:23'),
(263, '13', 'Wednesday', NULL, NULL, '0', '2020-08-24 08:14:23', '2020-08-24 08:14:23'),
(264, '13', 'Thursday', NULL, NULL, '0', '2020-08-24 08:14:23', '2020-08-24 08:14:23'),
(265, '13', 'Friday', NULL, NULL, '0', '2020-08-24 08:14:23', '2020-08-24 08:14:23'),
(266, '13', 'Saturday', NULL, NULL, '0', '2020-08-24 08:14:23', '2020-08-24 08:14:23');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_iframe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `email`, `phone`, `address`, `city`, `area`, `map_iframe`, `latitude`, `longitude`, `license`, `logo`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settlement_periods`
--

CREATE TABLE `settlement_periods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `settlement_period` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settlement_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settlement_periods`
--

INSERT INTO `settlement_periods` (`id`, `settlement_period`, `settlement_amount`, `created_at`, `updated_at`) VALUES
(1, '1', '200', NULL, '2020-07-11 08:27:27');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_y` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_y` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_y` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_y` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `terms_and_conditions`
--

CREATE TABLE `terms_and_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `terms_and_condition` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms_and_conditions`
--

INSERT INTO `terms_and_conditions` (`id`, `terms_and_condition`, `created_at`, `updated_at`) VALUES
(1, '&lt;h2&gt;&lt;strong&gt;Terms and Conditions&lt;/strong&gt;&lt;/h2&gt;\r\n&lt;p&gt;Welcome to&amp;nbsp;&lt;span class=&quot;highlight preview_website_name&quot;&gt;Website Name&lt;/span&gt;!&lt;/p&gt;\r\n&lt;p&gt;These terms and conditions outline the rules and regulations for the use of&amp;nbsp;&lt;span class=&quot;highlight preview_company_name&quot;&gt;Company Name&lt;/span&gt;&#39;s Website, located at&amp;nbsp;&lt;span class=&quot;highlight preview_website_url&quot;&gt;Website.com&lt;/span&gt;.&lt;/p&gt;\r\n&lt;p&gt;By accessing this website we assume you accept these terms and conditions. Do not continue to use&amp;nbsp;&lt;span class=&quot;highlight preview_website_name&quot;&gt;Website Name&lt;/span&gt;&amp;nbsp;if you do not agree to take all of the terms and conditions stated on this page.&lt;/p&gt;\r\n&lt;p&gt;The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: &amp;ldquo;Client&amp;rdquo;, &amp;ldquo;You&amp;rdquo; and &amp;ldquo;Your&amp;rdquo; refers to you, the person log on this website and compliant to the Company&#39;s terms and conditions. &amp;ldquo;The Company&amp;rdquo;, &amp;ldquo;Ourselves&amp;rdquo;, &amp;ldquo;We&amp;rdquo;, &amp;ldquo;Our&amp;rdquo; and &amp;ldquo;Us&amp;rdquo;, refers to our Company. &amp;ldquo;Party&amp;rdquo;, &amp;ldquo;Parties&amp;rdquo;, or &amp;ldquo;Us&amp;rdquo;, refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client&#39;s needs in respect of provision of the Company&#39;s stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.&lt;/p&gt;\r\n&lt;h3&gt;&lt;strong&gt;Cookies&lt;/strong&gt;&lt;/h3&gt;\r\n&lt;p&gt;We employ the use of cookies. By accessing&amp;nbsp;&lt;span class=&quot;highlight preview_website_name&quot;&gt;Website Name&lt;/span&gt;, you agreed to use cookies in agreement with the&amp;nbsp;&lt;span class=&quot;highlight preview_company_name&quot;&gt;Company Name&lt;/span&gt;&#39;s Privacy Policy.&lt;/p&gt;\r\n&lt;p&gt;Most interactive websites use cookies to let us retrieve the user&#39;s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.&lt;/p&gt;\r\n&lt;h3&gt;&lt;strong&gt;License&lt;/strong&gt;&lt;/h3&gt;\r\n&lt;p&gt;Unless otherwise stated,&amp;nbsp;&lt;span class=&quot;highlight preview_company_name&quot;&gt;Company Name&lt;/span&gt;&amp;nbsp;and/or its licensors own the intellectual property rights for all material on&amp;nbsp;&lt;span class=&quot;highlight preview_website_name&quot;&gt;Website Name&lt;/span&gt;. All intellectual property rights are reserved. You may access this from&amp;nbsp;&lt;span class=&quot;highlight preview_website_name&quot;&gt;Website Name&lt;/span&gt;&amp;nbsp;for your own personal use subjected to restrictions set in these terms and conditions.&lt;/p&gt;\r\n&lt;p&gt;You must not:&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Republish material from&amp;nbsp;&lt;span class=&quot;highlight preview_website_name&quot;&gt;Website Name&lt;/span&gt;&lt;/li&gt;\r\n&lt;li&gt;Sell, rent or sub-license material from&amp;nbsp;&lt;span class=&quot;highlight preview_website_name&quot;&gt;Website Name&lt;/span&gt;&lt;/li&gt;\r\n&lt;li&gt;Reproduce, duplicate or copy material from&amp;nbsp;&lt;span class=&quot;highlight preview_website_name&quot;&gt;Website Name&lt;/span&gt;&lt;/li&gt;\r\n&lt;li&gt;Redistribute content from&amp;nbsp;&lt;span class=&quot;highlight preview_website_name&quot;&gt;Website Name&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;This Agreement shall begin on the date hereof.&lt;/p&gt;\r\n&lt;p&gt;Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website.&amp;nbsp;&lt;span class=&quot;highlight preview_company_name&quot;&gt;Company Name&lt;/span&gt;&amp;nbsp;does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of&amp;nbsp;&lt;span class=&quot;highlight preview_company_name&quot;&gt;Company Name&lt;/span&gt;,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws,&amp;nbsp;&lt;span class=&quot;highlight preview_company_name&quot;&gt;Company Name&lt;/span&gt;&amp;nbsp;shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.&lt;/p&gt;\r\n&lt;p&gt;&lt;span class=&quot;highlight preview_company_name&quot;&gt;Company Name&lt;/span&gt;&amp;nbsp;reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.&lt;/p&gt;\r\n&lt;p&gt;You warrant and represent that:&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;&lt;/li&gt;\r\n&lt;li&gt;The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;&lt;/li&gt;\r\n&lt;li&gt;The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy&lt;/li&gt;\r\n&lt;li&gt;The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;You hereby grant&amp;nbsp;&lt;span class=&quot;highlight preview_company_name&quot;&gt;Company Name&lt;/span&gt;&amp;nbsp;a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.&lt;/p&gt;\r\n&lt;h3&gt;&lt;strong&gt;Hyperlinking to our Content&lt;/strong&gt;&lt;/h3&gt;\r\n&lt;p&gt;The following organizations may link to our Website without prior written approval:&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Government agencies;&lt;/li&gt;\r\n&lt;li&gt;Search engines;&lt;/li&gt;\r\n&lt;li&gt;News organizations;&lt;/li&gt;\r\n&lt;li&gt;Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and&lt;/li&gt;\r\n&lt;li&gt;System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party&#39;s site.&lt;/p&gt;\r\n&lt;p&gt;We may consider and approve other link requests from the following types of organizations:&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;commonly-known consumer and/or business information sources;&lt;/li&gt;\r\n&lt;li&gt;dot.com community sites;&lt;/li&gt;\r\n&lt;li&gt;associations or other groups representing charities;&lt;/li&gt;\r\n&lt;li&gt;online directory distributors;&lt;/li&gt;\r\n&lt;li&gt;internet portals;&lt;/li&gt;\r\n&lt;li&gt;accounting, law and consulting firms; and&lt;/li&gt;\r\n&lt;li&gt;educational institutions and trade associations.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of&amp;nbsp;&lt;span class=&quot;highlight preview_company_name&quot;&gt;Company Name&lt;/span&gt;; and (d) the link is in the context of general resource information.&lt;/p&gt;\r\n&lt;p&gt;These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party&#39;s site.&lt;/p&gt;\r\n&lt;p&gt;If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to&amp;nbsp;&lt;span class=&quot;highlight preview_company_name&quot;&gt;Company Name&lt;/span&gt;. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.&lt;/p&gt;\r\n&lt;p&gt;Approved organizations may hyperlink to our Website as follows:&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;By use of our corporate name; or&lt;/li&gt;\r\n&lt;li&gt;By use of the uniform resource locator being linked to; or&lt;/li&gt;\r\n&lt;li&gt;By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party&#39;s site.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;No use of&amp;nbsp;&lt;span class=&quot;highlight preview_company_name&quot;&gt;Company Name&lt;/span&gt;&#39;s logo or other artwork will be allowed for linking absent a trademark license agreement.&lt;/p&gt;\r\n&lt;h3&gt;&lt;strong&gt;iFrames&lt;/strong&gt;&lt;/h3&gt;\r\n&lt;p&gt;Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.&lt;/p&gt;\r\n&lt;h3&gt;&lt;strong&gt;Content Liability&lt;/strong&gt;&lt;/h3&gt;\r\n&lt;p&gt;We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.&lt;/p&gt;\r\n&lt;h3&gt;&lt;strong&gt;Reservation of Rights&lt;/strong&gt;&lt;/h3&gt;\r\n&lt;p&gt;We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it&#39;s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.&lt;/p&gt;\r\n&lt;h3&gt;&lt;strong&gt;Removal of links from our website&lt;/strong&gt;&lt;/h3&gt;\r\n&lt;p&gt;If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.&lt;/p&gt;\r\n&lt;p&gt;We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.&lt;/p&gt;\r\n&lt;h3&gt;&lt;strong&gt;Disclaimer&lt;/strong&gt;&lt;/h3&gt;\r\n&lt;p&gt;To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;limit or exclude our or your liability for death or personal injury;&lt;/li&gt;\r\n&lt;li&gt;limit or exclude our or your liability for fraud or fraudulent misrepresentation;&lt;/li&gt;\r\n&lt;li&gt;limit any of our or your liabilities in any way that is not permitted under applicable law; or&lt;/li&gt;\r\n&lt;li&gt;exclude any of our or your liabilities that may not be excluded under applicable law.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.&lt;/p&gt;\r\n&lt;p&gt;As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.&lt;/p&gt;', NULL, '2020-07-14 00:56:58');

-- --------------------------------------------------------

--
-- Table structure for table `used_packages`
--

CREATE TABLE `used_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiry_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remind_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staus` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `used_packages`
--

INSERT INTO `used_packages` (`id`, `package_id`, `active_date`, `expiry_date`, `remind_date`, `staus`, `created_at`, `updated_at`) VALUES
(4, '8', '2020-08-24', '2020-09-23', '2020-09-18', '0', '2020-08-24 08:14:23', '2020-08-24 08:14:23'),
(5, '8', '2020-08-24', '2020-09-23', '2020-09-18', '0', '2020-08-24 10:29:04', '2020-08-24 10:29:04'),
(6, '7', '2020-08-24', '2021-01-21', '2021-01-16', '0', '2020-08-24 10:32:00', '2020-08-24 10:32:00'),
(7, '7', '2020-08-24', '2021-01-21', '2021-01-16', '0', '2020-08-24 10:35:28', '2020-08-24 10:35:28'),
(8, '7', '2020-08-24', '2021-01-21', '2021-01-16', '0', '2020-08-24 10:36:12', '2020-08-24 10:36:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `busisness_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emirates_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_package` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `used_package_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiry_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remind_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_commission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trade_license` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emirated_id_copy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_copy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature_data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_status` varchar(2255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_ids` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `busisness_type`, `phone`, `salon_name`, `salon_id`, `city`, `area`, `address`, `nationality`, `emirates_id`, `passport_number`, `salon_package`, `used_package_id`, `active_date`, `expiry_date`, `remind_date`, `salon_commission`, `trade_license`, `emirated_id_copy`, `passport_copy`, `latitude`, `longitude`, `signature_data`, `login_status`, `status`, `user_id`, `service_ids`, `role_id`, `created_at`, `updated_at`) VALUES
(8, 'Aravind', 'aravind.0216@gmail.com', NULL, '$2y$10$xKWVp/TVFHoj.FTngyReNu6cd3dpPPNoBzq7q3b6OyjuS2dhvOtym', NULL, '1', '8883191962', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', '8', '2020-08-24', '2021-01-21', '2021-01-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '8', NULL, 'admin', '2020-07-17 06:26:08', '2020-08-24 10:36:12'),
(13, 'Inba', 'inba@gmail.com', NULL, NULL, NULL, '5', '9750036119', NULL, NULL, NULL, NULL, NULL, NULL, '1234546', NULL, '8', '4', '2020-08-24', '2020-09-23', '2020-09-18', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '13', NULL, 'admin', '2020-08-24 08:14:23', '2020-08-24 08:14:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_passwords`
--
ALTER TABLE `customer_passwords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_services`
--
ALTER TABLE `new_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `push_notifications`
--
ALTER TABLE `push_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salon_packages`
--
ALTER TABLE `salon_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salon_package_items`
--
ALTER TABLE `salon_package_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salon_passwords`
--
ALTER TABLE `salon_passwords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salon_roles`
--
ALTER TABLE `salon_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salon_services`
--
ALTER TABLE `salon_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salon_workers`
--
ALTER TABLE `salon_workers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_times`
--
ALTER TABLE `service_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settlement_periods`
--
ALTER TABLE `settlement_periods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms_and_conditions`
--
ALTER TABLE `terms_and_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `used_packages`
--
ALTER TABLE `used_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customer_passwords`
--
ALTER TABLE `customer_passwords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `new_services`
--
ALTER TABLE `new_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `push_notifications`
--
ALTER TABLE `push_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `salon_packages`
--
ALTER TABLE `salon_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `salon_package_items`
--
ALTER TABLE `salon_package_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `salon_passwords`
--
ALTER TABLE `salon_passwords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `salon_roles`
--
ALTER TABLE `salon_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `salon_services`
--
ALTER TABLE `salon_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `salon_workers`
--
ALTER TABLE `salon_workers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service_times`
--
ALTER TABLE `service_times`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settlement_periods`
--
ALTER TABLE `settlement_periods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `terms_and_conditions`
--
ALTER TABLE `terms_and_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `used_packages`
--
ALTER TABLE `used_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
