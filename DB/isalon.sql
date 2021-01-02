-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2021 at 05:52 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

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
(1, 'Admin', '+971 564180384', 'admin@gmail.com', NULL, '$2y$10$m/ihjfXukZ4F4UyUeF4wiOSkfYG9r3kxKq9b4HsODh4glv5Hak43S', '1', NULL, '2020-07-02 09:13:52', '2020-11-20 14:53:06'),
(2, 'thowsif', '+971568169568', 'thowsif@lrbinfotech.com', NULL, '$2y$10$p6gifZRA1XYsuO7.Pc2QkudCraQBT.T2GVa3ZDFCDxLo8UXx6gbRO', '1', NULL, '2020-11-10 07:49:06', '2020-11-19 12:32:28'),
(3, 'saaam', '0501107367', 'samthakur@isalonuae.com', NULL, '$2y$10$d0pJwvbS8OIn6jxDCLj/b.gBIYFssEg27i7bgs2/opcIrCzzOvO3i', '3', NULL, '2020-11-23 06:07:36', '2020-11-24 11:19:30'),
(4, 'tariqt.50', '568169568', 't50@hotmail.com', NULL, '$2y$10$jswAXQu7AyxAWd/TquTeAOh0cMMM0erxxEJgz/iEw9X0tjK0XWq5C', '4', NULL, '2020-11-24 11:15:57', '2020-11-24 11:16:56');

-- --------------------------------------------------------

--
-- Table structure for table `app_beauties`
--

CREATE TABLE `app_beauties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_beauties`
--

INSERT INTO `app_beauties` (`id`, `order_id`, `salon_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '3', '26', '0', '2020-12-11 07:34:52', '2020-12-11 07:35:30'),
(2, '1', '27', '0', '2020-12-11 07:34:56', '2020-12-11 07:35:14'),
(3, '2', '28', '0', '2020-12-11 07:35:00', '2020-12-11 07:35:30');

-- --------------------------------------------------------

--
-- Table structure for table `app_homes`
--

CREATE TABLE `app_homes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_homes`
--

INSERT INTO `app_homes` (`id`, `order_id`, `salon_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '2', '29', '0', '2020-12-11 07:38:11', '2020-12-11 07:38:51'),
(2, '1', '30', '0', '2020-12-11 07:38:15', '2020-12-11 07:38:51'),
(3, '3', '31', '0', '2020-12-11 07:38:19', '2020-12-11 07:38:19');

-- --------------------------------------------------------

--
-- Table structure for table `app_makeups`
--

CREATE TABLE `app_makeups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_makeups`
--

INSERT INTO `app_makeups` (`id`, `order_id`, `salon_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '2', '23', '0', '2020-12-11 07:36:55', '2020-12-11 07:37:20'),
(2, '1', '24', '0', '2020-12-11 07:37:00', '2020-12-11 07:37:20'),
(3, '3', '25', '0', '2020-12-11 07:37:04', '2020-12-11 07:37:04');

-- --------------------------------------------------------

--
-- Table structure for table `app_salons`
--

CREATE TABLE `app_salons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_salons`
--

INSERT INTO `app_salons` (`id`, `order_id`, `salon_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', '14', '0', '2020-12-09 07:31:35', '2020-12-17 05:56:10'),
(2, '2', '18', '0', '2020-12-09 07:53:49', '2020-12-17 05:56:10'),
(3, '3', '19', '0', '2020-12-09 08:02:30', '2020-12-09 08:02:30');

-- --------------------------------------------------------

--
-- Table structure for table `app_spas`
--

CREATE TABLE `app_spas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_spas`
--

INSERT INTO `app_spas` (`id`, `order_id`, `salon_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '2', '21', '0', '2020-12-11 07:12:20', '2020-12-11 07:14:26'),
(2, '1', '20', '0', '2020-12-11 07:12:25', '2020-12-11 07:14:26'),
(3, '3', '22', '0', '2020-12-11 07:14:00', '2020-12-11 07:14:00');

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
(10, NULL, '0', 'Abudhabi', '0', '2020-07-26 07:24:57', '2020-07-26 07:24:57'),
(11, NULL, '0', 'Musafah', '0', '2020-07-26 07:25:16', '2020-07-26 07:25:16'),
(12, NULL, '0', 'Shakh Zyaid City', '0', '2020-07-26 07:25:38', '2020-07-26 07:25:38'),
(13, NULL, '0', 'Khalifa city', '0', '2020-07-26 07:25:56', '2020-07-26 07:25:56'),
(14, NULL, '0', 'Al Alain', '0', '2020-07-26 07:26:24', '2020-07-26 07:26:24'),
(15, NULL, '0', 'Dubai', '0', '2020-07-26 07:26:38', '2020-07-26 07:26:38'),
(16, NULL, '0', 'Bar Dubai', '0', '2020-07-26 07:26:50', '2020-07-26 07:26:50'),
(17, NULL, '0', 'Inybatuta', '0', '2020-07-26 07:27:09', '2020-07-26 07:27:09'),
(18, NULL, '0', 'Alreef area', '0', '2020-07-26 07:27:36', '2020-07-26 07:27:36'),
(20, NULL, '0', 'Al Shahma', '0', '2020-07-26 07:27:59', '2020-07-26 07:27:59'),
(21, NULL, '0', 'Al Batain', '0', '2020-07-26 07:28:20', '2020-07-26 07:28:20'),
(22, NULL, '0', 'Elactra ADB', '0', '2020-07-26 07:28:33', '2020-07-26 07:28:33'),
(23, NULL, '0', 'beru', '0', '2020-07-26 10:18:08', '2020-07-26 10:18:08'),
(25, NULL, '0', 'Tariq', '0', '2020-11-24 10:57:00', '2020-11-24 10:57:00');

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
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `customer_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' ',
  `pay_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` int(11) DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `service_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appointment_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `appointment_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `workers_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `subtotal` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `discount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `coupon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `after_discount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `otp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `address_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `booking_status` int(191) NOT NULL DEFAULT 0,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `date`, `salon_id`, `customer_id`, `order_id`, `pay_url`, `payment_id`, `payment_type`, `payment_status`, `service_type`, `appointment_date`, `appointment_time`, `workers_id`, `coupon_id`, `subtotal`, `discount`, `coupon`, `after_discount`, `tax`, `total`, `otp`, `address_id`, `booking_status`, `status`, `created_at`, `updated_at`) VALUES
(31, NULL, '14', '23', '9f5eaf60-9fe6-4d5d-9df9-bef33d2faac2', 'https://paypage.sandbox.ngenius-payments.com/?code=92f29c3218f1d12c', '12516426-33fe-4853-9d1b-9341c50d02c7', 0, '1', NULL, '2020-10-25', '07:00 AM', '0', NULL, '1100.0', '0.0', NULL, NULL, NULL, '1100.0', '7546', '0', 1, '1', '2020-10-24 16:47:08', '2020-12-08 07:07:26'),
(32, NULL, '14', '23', 'b3d8a3c3-f71c-44f1-8ef1-9348b88a437d', 'https://paypage.sandbox.ngenius-payments.com/?code=dda906468a65066b', 'e027e1d7-c4ba-4464-82d1-d5a88e08cd5e', 0, '1', NULL, '2020-10-25', '07:00 AM', '0', '4', '2850.0', '20.0', 'CODE20', NULL, NULL, '2850.0', '4141', '0', 1, '1', '2020-10-24 16:48:48', '2020-12-08 07:07:26'),
(37, NULL, '14', '23', 'f49afd1f-41a7-406b-b9b7-9df19609513e', 'https://paypage.sandbox.ngenius-payments.com/?code=d84671a1a92e782a', '1dceede8-8989-4f71-b040-9aadf5a7044a', 1, '1', NULL, '2020-10-25', '05:00 PM', '14', '4', '500.0', '20.0', 'CODE20', NULL, NULL, '480.0', '5529', '0', 1, '1', '2020-10-25 08:28:27', '2020-12-08 07:07:32'),
(38, NULL, '14', '23', 'fe8b6fce-6657-4e24-9e40-ec61431c8bef', 'https://paypage.sandbox.ngenius-payments.com/?code=bf21818003df3ef6', NULL, 0, '0', NULL, '2020-10-27', '11:00 AM', '0', 'null', '1100.0', '0.0', NULL, NULL, NULL, '1100.0', '9892', '0', 0, '0', '2020-10-27 02:19:07', '2020-10-27 02:19:07'),
(41, NULL, '14', '23', '5b142402-e270-403e-a00b-f9d97a3cba23', 'https://paypage.sandbox.ngenius-payments.com/?code=7a2023ccbdd681a8', NULL, 0, '0', NULL, '2020-10-24', '10:00 AM', '1', '1', '5', '0', NULL, NULL, NULL, '1', '7017', '0', 0, '0', '2020-11-13 07:29:02', '2020-11-13 07:29:02'),
(42, '2020-11-13', '14', '23', 'ae6c7423-c0fe-4817-8399-ac2d3ac7c54e', 'https://paypage.sandbox.ngenius-payments.com/?code=52ccd8f510f1b3ea', NULL, 0, '0', NULL, '2020-11-15', '07:00 AM', '0', 'null', '1223.0', '0.0', NULL, NULL, NULL, '1223.0', '6504', '0', 0, '0', '2020-11-13 10:42:10', '2020-11-13 10:42:10'),
(43, '2020-11-13', '14', '23', '86cc59f9-0aa6-41d4-80b1-eddf9be43f3b', 'https://paypage.sandbox.ngenius-payments.com/?code=1facea26699bcb3f', '9efa568a-b715-4648-a98d-aa5326cae027', 0, '1', NULL, '2020-11-15', '07:00 AM', '0', 'null', '1723.0', '0.0', NULL, NULL, NULL, '1723.0', '4248', '0', 0, '1', '2020-11-13 10:53:57', '2020-12-08 07:07:26'),
(44, '2020-11-13', '29', '23', 'dd2733b4-4e36-4858-8100-be5b4f9a3f25', 'https://paypage.sandbox.ngenius-payments.com/?code=507cd416f9ed98ec', NULL, 0, '0', NULL, '2020-11-14', '09:00 AM', '0', 'null', '480.0', '0.0', NULL, NULL, NULL, '480.0', '8870', '14', 0, '0', '2020-11-13 18:22:53', '2020-11-13 18:22:53'),
(45, '2020-11-14', '14', '23', 'fba4ffba-64b3-4610-a58c-3c6b1b0b08a5', 'https://paypage.sandbox.ngenius-payments.com/?code=2fb617e83bc2ef8f', NULL, 0, '0', NULL, '2020-11-15', '08:00 AM', '34', 'null', '100.0', '0.0', NULL, NULL, NULL, '100.0', '5264', NULL, 0, '0', '2020-11-14 09:20:27', '2020-11-14 09:20:27'),
(46, '2020-11-15', '18', '23', 'b00c120c-0299-4017-9fc1-9e24d8a73b22', 'https://paypage.sandbox.ngenius-payments.com/?code=fbc18d8eaa4de883', NULL, 0, '0', NULL, '2020-11-16', '07:00 AM', '0', 'null', '600.0', '0.0', NULL, NULL, NULL, '600.0', '7342', NULL, 1, '0', '2020-11-15 12:08:12', '2020-11-22 04:03:46'),
(47, '2020-11-16', '14', '23', 'f1099a6f-fa7b-4b9f-a392-cfb1007ec495', 'https://paypage.sandbox.ngenius-payments.com/?code=93f803496be5565f', NULL, 0, '1', NULL, '2020-11-17', '08:00 AM', '34', 'null', '3623.0', '0.0', NULL, NULL, NULL, '3623.0', '4053', NULL, 0, '1', '2020-11-16 12:22:51', '2020-12-08 07:07:26'),
(48, '2020-11-16', '14', '34', 'ee08efb0-a823-4a8e-8a28-d8fc7743e6ad', 'https://paypage.sandbox.ngenius-payments.com/?code=73b84b495bb4a324', '36a502a8-9bcb-4030-a6e6-175f7c163acb', 0, '0', NULL, '2020-11-17', '08:00 AM', '34', 'null', '1223.0', '0.0', NULL, NULL, NULL, '1223.0', '5320', NULL, 0, '0', '2020-11-16 12:25:00', '2020-11-16 12:27:27'),
(49, '2020-11-17', '18', '34', 'f2929eec-513c-488c-b257-7059c573fbe3', 'https://paypage.sandbox.ngenius-payments.com/?code=a6573102726d6990', NULL, 0, '0', NULL, '2020-11-18', '09:00 AM', '18', 'null', '4250.0', '0.0', NULL, NULL, NULL, '4250.0', '4593', NULL, 0, '0', '2020-11-17 15:51:42', '2020-11-17 15:51:42'),
(50, '2020-11-17', '14', '34', '3b375b1a-1caa-4ce3-9b65-e2765771aeda', 'https://paypage.sandbox.ngenius-payments.com/?code=fa1980d100638bd3', NULL, 0, '0', NULL, '2020-11-18', '08:00 AM', '34', 'null', '1750.0', '0.0', NULL, NULL, NULL, '1750.0', '5510', NULL, 0, '0', '2020-11-17 15:58:42', '2020-11-17 15:58:42'),
(51, '2020-11-21', '18', '46', '3d8c773d-6258-40ce-8235-ee1ce6c3f7cc', 'https://paypage.sandbox.ngenius-payments.com/?code=8764ed0357975d92', NULL, 0, '0', NULL, '2020-11-24', '09:00 AM', '0', 'null', '600.0', '0.0', 'gold', NULL, NULL, '600.0', '8917', NULL, 0, '0', '2020-11-21 09:26:15', '2020-11-21 09:26:15'),
(52, '2020-11-21', '18', '46', '404790e9-cf14-4976-9303-fe99f10b7f2f', 'https://paypage.sandbox.ngenius-payments.com/?code=e54c912f4c631db9', NULL, 0, '0', NULL, '2020-11-24', '09:00 AM', '0', 'null', '600.0', '0.0', NULL, NULL, NULL, '600.0', '5997', NULL, 0, '0', '2020-11-21 09:26:43', '2020-11-21 09:26:43'),
(53, '2020-11-21', '18', '46', '8345c2c9-3646-4d04-b665-cbd1d1736394', 'https://paypage.sandbox.ngenius-payments.com/?code=53dabb6c92f06758', NULL, 0, '0', NULL, '2020-11-24', '09:00 AM', '0', 'null', '1600.0', '0.0', NULL, NULL, NULL, '1600.0', '4052', NULL, 0, '0', '2020-11-21 09:27:48', '2020-11-21 09:27:48'),
(54, '2020-11-21', '14', '48', 'cf3442e6-71fc-4d17-93d0-92f4ed1a16fa', 'https://paypage.sandbox.ngenius-payments.com/?code=65c5c05d9926bdcf', NULL, 0, '0', NULL, '2020-11-22', '05:00 PM', '35', 'null', '700.0', '0.0', NULL, NULL, NULL, '700.0', '7251', NULL, 0, '0', '2020-11-21 10:25:17', '2020-11-21 10:25:17'),
(55, '2020-11-21', '14', '48', 'e0058531-d800-41d8-a144-8c2fc43cf5ed', 'https://paypage.sandbox.ngenius-payments.com/?code=933ad518a01d1979', NULL, 0, '0', NULL, '2020-11-22', '09:00 AM', '0', 'null', '1100.0', '0.0', NULL, NULL, NULL, '1100.0', '7486', NULL, 0, '0', '2020-11-21 10:26:12', '2020-11-21 10:26:12'),
(56, '2020-11-21', '20', '48', '517755b3-bdcc-4aef-9ec0-00067779dda7', 'https://paypage.sandbox.ngenius-payments.com/?code=5b5d23c4b8f460a7', NULL, 0, '0', NULL, '2020-11-22', '01:00 AM', '42', 'null', '600.0', '0.0', NULL, NULL, NULL, '600.0', '9300', NULL, 0, '0', '2020-11-21 11:03:21', '2020-11-21 11:03:21'),
(57, '2020-11-22', '20', '44', '89282132-e43c-47bf-84e2-1159f9fcc087', 'https://paypage.sandbox.ngenius-payments.com/?code=880a9f459da1011d', 'f9f73afc-9851-4f28-a74d-33b8e01bdcfa', 0, '0', NULL, '2020-11-22', '04:00 PM', '42', 'null', '1900.0', '0.0', NULL, NULL, NULL, '1900.0', '2867', NULL, 0, '0', '2020-11-22 06:11:06', '2020-11-22 06:15:18'),
(58, '2020-11-24', '14', '51', 'd0f93969-e71e-481b-989d-1a99621018d3', 'https://paypage.sandbox.ngenius-payments.com/?code=fdf79229cc4bacc7', NULL, NULL, '0', NULL, '2020-11-24', '01:00 PM', '14', 'null', '100.0', '0.0', NULL, NULL, NULL, '100.0', '2096', NULL, 0, '0', '2020-11-24 04:03:35', '2020-11-24 04:03:35'),
(59, '2020-11-24', '14', '44', 'cd66baf7-b3d8-4795-964b-d03b6f601c5f', 'https://paypage.sandbox.ngenius-payments.com/?code=15d20d5f6d4497cd', NULL, NULL, '0', NULL, '2020-11-25', '07:00 AM', '0', 'null', '501.0', '0.0', NULL, NULL, NULL, '501.0', '5420', NULL, 0, '0', '2020-11-24 11:24:55', '2020-11-24 11:24:55'),
(60, '2020-11-24', '14', '33', 'c5f01963-258a-4cbf-8fb0-d5a23c760bc4', 'https://paypage.sandbox.ngenius-payments.com/?code=a78549362bfdafa3', NULL, 1, '0', NULL, '2020-11-25', '09:00 AM', '34', '1', '2161.0', '100.0', 'CODE 150', NULL, NULL, '2061.0', '3438', NULL, 0, '0', '2020-11-24 12:15:33', '2020-11-24 12:15:33'),
(61, '2020-11-24', '14', '33', 'd5838338-285d-472b-84b3-5a6de7193aed', 'https://paypage.sandbox.ngenius-payments.com/?code=c2352d63d220bf6a', NULL, 1, '0', NULL, '2020-11-25', '09:00 AM', '34', 'null', '2161.0', '0.0', NULL, NULL, NULL, '2161.0', '8255', NULL, 0, '0', '2020-11-24 12:17:28', '2020-11-24 12:17:28'),
(62, '2020-11-24', '14', '47', '59630d8b-1cb9-4656-82ae-c3e901281f86', 'https://paypage.sandbox.ngenius-payments.com/?code=8cdcdb7cc5a642f6', '88878266-e15f-4b59-98f6-aa9102eec64e', 1, '0', NULL, '2020-11-25', '09:00 AM', '0', 'null', '2161.0', '0.0', NULL, NULL, NULL, '2161.0', '2334', NULL, 1, '0', '2020-11-24 12:18:01', '2020-11-24 12:23:55'),
(63, '2020-11-24', '14', '23', '1ecc23bc-07f0-4afd-8b64-2366ce2a565b', 'https://paypage.sandbox.ngenius-payments.com/?code=b4f66fb370e02437', NULL, 1, '0', NULL, '2020-11-25', '07:00 AM', '0', 'null', '1261.0', '0.0', NULL, NULL, NULL, '1261.0', '5620', NULL, 0, '0', '2020-11-24 12:21:35', '2020-11-24 12:21:35'),
(64, '2020-11-24', '14', '23', '82790211-8a8c-4079-9d15-89d0f4730e4f', 'https://paypage.sandbox.ngenius-payments.com/?code=96302d9f521252a', NULL, NULL, '0', NULL, '2020-11-26', '07:00 AM', '0', 'null', '1601.0', '0.0', NULL, NULL, NULL, '1601.0', '1580', NULL, 0, '0', '2020-11-24 12:22:29', '2020-11-24 12:22:29'),
(65, '2020-11-24', '14', '23', '2fca802f-76f6-4976-b750-2780b08d033c', 'https://paypage.sandbox.ngenius-payments.com/?code=91ffe731de97279a', NULL, NULL, '0', NULL, '2020-11-25', '07:00 AM', '34', '1', '1261.0', '100.0', 'CODE 150', NULL, NULL, '1161.0', '5557', NULL, 0, '0', '2020-11-24 18:26:23', '2020-11-24 18:26:23'),
(66, '2020-11-24', '14', '44', 'd6c817bc-586c-40cd-9902-0b063b182215', 'https://paypage.sandbox.ngenius-payments.com/?code=318114bfde9b6830', NULL, NULL, '0', NULL, '2020-11-25', '08:00 AM', '34', '1', '601.0', '100.0', 'CODE 150', NULL, NULL, '501.0', '4887', NULL, 0, '0', '2020-11-24 18:27:42', '2020-11-24 18:27:42'),
(67, '2020-11-24', '14', '23', '46c062d7-b9b1-49ee-821b-afcd69c125e5', 'https://paypage.sandbox.ngenius-payments.com/?code=cdd00060ec30f4d6', NULL, NULL, '0', NULL, '2020-11-25', '07:00 AM', '34', '1', '624.0', '100.0', 'CODE 150', NULL, NULL, '524.0', '5734', NULL, 0, '0', '2020-11-24 18:30:45', '2020-11-24 18:30:45'),
(68, '2020-11-24', '14', '23', 'a8b572f0-5184-4537-ab7b-5f9c6a95a9d7', 'https://paypage.sandbox.ngenius-payments.com/?code=75c69cff854e2400', NULL, NULL, '0', NULL, '2020-11-25', '07:00 AM', '34', 'null', '624.0', '0.0', NULL, NULL, NULL, '624.0', '4202', NULL, 0, '0', '2020-11-24 18:32:45', '2020-11-24 18:32:45'),
(69, '2020-11-25', '14', '23', 'f23a4a53-8ec2-42ea-855c-3272ce9e37a9', 'https://paypage.sandbox.ngenius-payments.com/?code=85d93efa85c29a56', NULL, NULL, '0', NULL, '2020-11-25', '05:00 PM', '34', 'null', '100.0', '0.0', NULL, NULL, NULL, '100.0', '8940', NULL, 1, '0', '2020-11-25 08:12:48', '2020-12-02 22:12:38'),
(70, '2020-11-26', '14', '33', '9345062d-148a-4d22-926e-a841bbc90192', 'https://paypage.sandbox.ngenius-payments.com/?code=b1c06de02c91c2a9', NULL, NULL, '0', NULL, '2020-11-27', '07:00 AM', '0', 'null', '760.0', '0.0', NULL, NULL, NULL, '760.0', '7104', NULL, 0, '0', '2020-11-26 10:31:49', '2020-11-26 10:31:49'),
(71, '2020-11-29', '14', '44', '6af55a7f-5844-40b0-b672-909b8fc5341d', 'https://paypage.sandbox.ngenius-payments.com/?code=6abdb250956432c8', NULL, NULL, '0', NULL, '2020-11-30', '08:00 AM', '35', 'null', '601.0', '0.0', NULL, NULL, NULL, '601.0', '1615', NULL, 0, '0', '2020-11-29 11:07:47', '2020-11-29 11:07:47'),
(72, '2020-11-30', '14', '44', '6cea044a-811d-4a68-a190-98ada2a56297', 'https://paypage.sandbox.ngenius-payments.com/?code=19fc001f0a9a6ddc', '54dec052-7efb-477a-95e5-5416b98af66a', NULL, '0', NULL, '2020-10-24', '10:00 AM', '1', '1', '5', '0', NULL, NULL, NULL, '1', '8521', NULL, 0, '0', '2020-11-30 08:31:31', '2020-12-02 06:00:48'),
(73, '2020-12-01', '14', '23', 'dc6729ef-15d9-4e6b-855b-b30b53dbcb3b', 'https://paypage.sandbox.ngenius-payments.com/?code=f5a5608e1a3819af', NULL, 0, '0', NULL, '2020-12-01', '11:00 AM', '0', 'null', '601.0', '0.0', NULL, NULL, NULL, '601.0', '5924', NULL, 1, '0', '2020-12-01 03:00:48', '2020-12-02 22:11:08'),
(74, '2020-12-01', '14', '23', ' ', NULL, NULL, 0, '1', NULL, '2020-12-01', '01:00 PM', '0', 'null', '601.0', '0.0', NULL, NULL, NULL, '601.0', '3985', NULL, 1, '1', '2020-12-01 04:34:03', '2020-12-08 07:07:26'),
(75, '2020-12-01', '14', '54', ' ', NULL, NULL, NULL, '0', NULL, '2020-10-24', '10:00 AM', '1', '1', '5', '0', NULL, NULL, NULL, '1', '7477', NULL, 0, '0', '2020-12-01 09:19:50', '2020-12-01 09:22:06'),
(76, '2020-12-02', '21', '23', ' ', NULL, NULL, 0, '0', NULL, '2020-12-02', '12:00 PM', '0', 'null', '1200.0', '0.0', NULL, NULL, NULL, '1200.0', '3395', NULL, 0, '0', '2020-12-02 03:22:38', '2020-12-02 03:22:38'),
(77, '2020-12-02', '29', '23', ' ', NULL, NULL, 0, '0', NULL, '2020-12-02', '12:00 PM', '0', 'null', '480.0', '0.0', NULL, NULL, NULL, '480.0', '5832', '14', 0, '0', '2020-12-02 03:25:37', '2020-12-02 03:25:37'),
(78, '2020-12-02', '22', '54', ' ', NULL, NULL, 0, '0', NULL, '2020-12-02', '02:00 PM', '49', 'null', '1200.0', '0.0', NULL, NULL, NULL, '1200.0', '6221', NULL, 0, '0', '2020-12-02 05:11:28', '2020-12-02 05:11:28'),
(79, '2020-12-02', '14', '54', '6588e433-4ccb-4191-9398-a12f2d052c8d', 'https://paypage.sandbox.ngenius-payments.com/?code=39163a1179f30a93', NULL, 1, '0', NULL, '2020-12-02', '02:00 PM', '14', 'null', '23.0', '0.0', NULL, NULL, NULL, '23.0', '7685', NULL, 0, '0', '2020-12-02 05:13:07', '2020-12-02 05:13:07'),
(80, '2020-12-02', '14', '54', ' ', NULL, NULL, 0, '1', NULL, '2020-12-02', '02:00 PM', '36', 'null', '100.0', '0.0', NULL, NULL, NULL, '100.0', '7867', NULL, 0, '1', '2020-12-02 05:19:06', '2020-12-08 07:07:26'),
(81, '2020-12-02', '19', '56', ' ', NULL, NULL, 0, '0', NULL, '2020-12-02', '03:00 PM', '19', 'null', '3100.0', '0.0', NULL, NULL, NULL, '3100.0', '5075', NULL, 0, '0', '2020-12-02 05:27:19', '2020-12-02 05:27:19'),
(82, '2020-12-02', '21', '56', ' ', NULL, NULL, 0, '0', NULL, '2020-12-02', '05:00 PM', '45', 'null', '1100.0', '0.0', 'redeem', NULL, NULL, '1100.0', '2385', NULL, 0, '0', '2020-12-02 05:29:01', '2020-12-02 05:29:01'),
(83, '2020-12-02', '28', '56', ' ', NULL, NULL, 0, '0', NULL, '2020-12-02', '03:00 PM', '0', 'null', '250.0', '0.0', NULL, NULL, NULL, '250.0', '3122', NULL, 0, '0', '2020-12-02 05:30:21', '2020-12-02 05:30:21'),
(84, '2020-12-02', '21', '56', '2a562956-af3f-4592-84e7-f4c891aefbc6', 'https://paypage.sandbox.ngenius-payments.com/?code=9d35292fef5eef7', NULL, 1, '0', NULL, '2020-12-02', '02:00 PM', '0', 'null', '500.0', '0.0', NULL, NULL, NULL, '500.0', '3644', NULL, 0, '0', '2020-12-02 05:30:47', '2020-12-02 05:30:47'),
(85, '2020-12-02', '23', '56', ' ', NULL, NULL, 0, '0', NULL, '2020-12-06', '02:00 PM', '0', 'null', '2000.0', '0.0', NULL, NULL, NULL, '2000.0', '4200', NULL, 0, '0', '2020-12-02 05:33:04', '2020-12-02 05:33:04'),
(86, '2020-12-02', '28', '56', ' ', NULL, NULL, 0, '0', NULL, '2020-12-02', '02:00 PM', '0', 'null', '100.0', '0.0', NULL, NULL, NULL, '100.0', '8832', NULL, 0, '0', '2020-12-02 05:38:11', '2020-12-02 05:38:11'),
(87, '2020-12-02', '21', '56', ' ', NULL, NULL, 0, '0', NULL, '2020-12-02', '02:00 PM', '44', 'null', '600.0', '0.0', NULL, NULL, NULL, '600.0', '7736', NULL, 0, '0', '2020-12-02 05:39:42', '2020-12-02 05:39:42'),
(88, '2020-12-02', '29', '56', ' ', NULL, NULL, 0, '0', NULL, '2020-12-02', '02:00 PM', '0', 'null', '300.0', '0.0', NULL, NULL, NULL, '300.0', '3616', '17', 0, '0', '2020-12-02 05:40:21', '2020-12-02 05:40:21'),
(89, '2020-12-02', '19', '56', '8650e3c1-019e-459b-be05-42479e251676', 'https://paypage.sandbox.ngenius-payments.com/?code=51870cc067d98ab3', NULL, 1, '0', NULL, '2020-12-02', '02:00 PM', '0', 'null', '1500.0', '0.0', NULL, NULL, NULL, '1500.0', '3700', NULL, 0, '0', '2020-12-02 05:49:48', '2020-12-02 05:49:48'),
(90, '2020-12-02', '14', '54', '706391b1-04bc-48d0-a5eb-e92705ecb4a0', 'https://paypage.sandbox.ngenius-payments.com/?code=78ff60496414d873', '0a134690-5d53-496f-8c10-a60f632e6877', 1, '1', NULL, '2020-12-02', '02:00 PM', '36', 'null', '23.0', '0.0', NULL, NULL, NULL, '23.0', '9297', NULL, 0, '1', '2020-12-02 05:50:04', '2020-12-08 07:07:32'),
(91, '2020-12-02', '19', '56', '48d72657-e542-4053-ac4a-abd501c3b1af', 'https://paypage.sandbox.ngenius-payments.com/?code=75d7c4069738fcbc', '1a289596-45ef-451e-abfe-ff7f1b75b0c4', 1, '1', NULL, '2020-12-02', '02:00 PM', '0', 'null', '1500.0', '0.0', NULL, NULL, NULL, '1500.0', '1650', NULL, 0, '1', '2020-12-02 05:52:50', '2020-12-08 07:07:32'),
(92, '2020-12-02', '20', '56', '13128e90-b75d-4255-8d01-ea223aed24dd', 'https://paypage.sandbox.ngenius-payments.com/?code=dd2c1abaff71468d', '13cb3181-5d19-4765-ba39-b0558b9ef7fb', 1, '0', NULL, '2020-12-02', '03:00 PM', '0', 'null', '300.0', '0.0', NULL, NULL, NULL, '300.0', '9197', NULL, 0, '0', '2020-12-02 06:05:26', '2020-12-02 06:06:40'),
(93, '2020-12-03', '14', '23', ' ', NULL, NULL, 0, '1', NULL, '2020-12-03', '03:00 PM', '35', '1', '624.0', '100.0', 'code 150', NULL, NULL, '524.0', '9664', NULL, 1, '1', '2020-12-03 05:53:52', '2020-12-08 07:07:26'),
(94, '2020-12-03', '14', '23', 'a9f017b3-8558-4661-8d04-692cfbebacbb', 'https://paypage.sandbox.ngenius-payments.com/?code=60c530e43cb4eee7', NULL, 1, '0', NULL, '2020-12-03', '04:00 PM', '34', 'null', '601.0', '0.0', NULL, NULL, NULL, '601.0', '7117', NULL, 0, '0', '2020-12-03 06:14:02', '2020-12-03 06:14:02'),
(95, '2020-12-03', '21', '23', '296ed003-452b-4291-b23c-9660ff3bc501', 'https://paypage.sandbox.ngenius-payments.com/?code=e394171d01598c8c', NULL, 1, '0', NULL, '2020-12-03', '04:00 PM', '46', 'null', '600.0', '0.0', NULL, NULL, NULL, '600.0', '6155', NULL, 0, '0', '2020-12-03 06:15:26', '2020-12-03 06:15:26'),
(96, '2020-12-03', '14', '54', ' ', NULL, NULL, NULL, '0', NULL, '2020-10-24', '10:00 AM', '1', '1', '5', '0', NULL, NULL, NULL, '1', '9147', NULL, 0, '0', '2020-12-03 08:04:28', '2020-12-03 08:04:28'),
(97, '2020-12-03', '14', '54', '9bc9c30d-dd71-4a83-9c97-40ffa84b3180', 'https://paypage.sandbox.ngenius-payments.com/?code=2a8782208ae9752a', 'd7e7da4e-7e9c-40e0-93be-e9a0199527aa', 1, '0', NULL, '2020-12-03', '05:00 PM', '0', 'null', '23.0', '0.0', NULL, NULL, NULL, '23.0', '2174', NULL, 0, '0', '2020-12-03 08:31:42', '2020-12-03 08:35:50'),
(98, '2020-12-03', '14', '54', 'fbf8728e-df6b-48b5-b3d4-d66d45816dd4', 'https://paypage.sandbox.ngenius-payments.com/?code=43a67863452057d0', '64ca4361-b4f1-499f-bfe7-676512957597', 1, '0', NULL, '2020-12-03', '05:00 PM', '0', 'null', '23.0', '0.0', NULL, NULL, NULL, '23.0', '8603', NULL, 0, '0', '2020-12-03 08:34:03', '2020-12-03 08:35:44'),
(99, '2020-12-03', '14', '54', 'd7755303-53fe-49db-8100-e85045a81fb8', 'https://paypage.sandbox.ngenius-payments.com/?code=a6406bb5c0cd5ea3', 'b3197a7c-34f0-41f2-9bd4-3fcba19c8f13', 1, '0', NULL, '2020-12-03', '05:00 PM', '0', 'null', '23.0', '0.0', NULL, NULL, NULL, '23.0', '5685', NULL, 0, '0', '2020-12-03 08:36:32', '2020-12-03 08:37:41'),
(100, '2020-12-03', '14', '54', '1dd02393-f9b6-4985-acb3-009daac50fec', 'https://paypage.sandbox.ngenius-payments.com/?code=98acecadbbf61a84', '7235a4d2-99ae-4b87-b0c5-a63d21e2d568', 1, '0', NULL, '2020-12-03', '05:00 PM', '0', 'null', '23.0', '0.0', NULL, NULL, NULL, '23.0', '8774', NULL, 0, '0', '2020-12-03 08:38:03', '2020-12-03 08:39:29'),
(101, '2020-12-03', '14', '54', '34bbf60c-097b-4838-ac5e-50bf4ccc745d', 'https://paypage.sandbox.ngenius-payments.com/?code=370b47b6197070c6', NULL, 1, '0', NULL, '2020-12-03', '05:00 PM', '0', 'null', '23.0', '0.0', NULL, NULL, NULL, '23.0', '8707', NULL, 0, '0', '2020-12-03 08:49:32', '2020-12-03 08:49:32'),
(102, '2020-12-03', '14', '54', '2aa78389-3b98-489e-bd2f-164a8500a9dd', 'https://paypage.sandbox.ngenius-payments.com/?code=fc2114e3b9d35f1a', NULL, 1, '0', NULL, '2020-12-03', '05:00 PM', '0', 'null', '23.0', '0.0', NULL, NULL, NULL, '23.0', '1342', NULL, 0, '0', '2020-12-03 08:49:41', '2020-12-03 08:49:41'),
(103, '2020-12-03', '14', '54', '05a84f72-8ef8-415b-a51b-8f8ca0bd432f', 'https://paypage.sandbox.ngenius-payments.com/?code=de2619d1ef5aa159', NULL, 1, '0', NULL, '2020-12-03', '05:00 PM', '0', 'null', '23.0', '0.0', NULL, NULL, NULL, '23.0', '4016', NULL, 0, '0', '2020-12-03 08:49:55', '2020-12-03 08:49:55'),
(104, '2020-12-03', '14', '54', 'c626732e-37fd-44c0-a2df-4047213a8d9f', 'https://paypage.sandbox.ngenius-payments.com/?code=e38ad2aa6a75ec57', NULL, 1, '0', NULL, '2020-12-03', '05:00 PM', '0', 'null', '23.0', '0.0', NULL, NULL, NULL, '23.0', '9105', NULL, 0, '0', '2020-12-03 08:54:17', '2020-12-03 08:54:17'),
(105, '2020-12-03', '14', '54', 'a9c4e978-af22-427c-b8c2-16935899e2c6', 'https://paypage.sandbox.ngenius-payments.com/?code=ae34d803be20b329', NULL, 1, '0', NULL, '2020-12-03', '05:00 PM', '0', 'null', '23.0', '0.0', NULL, NULL, NULL, '23.0', '9252', NULL, 0, '0', '2020-12-03 08:57:22', '2020-12-03 08:57:22'),
(106, '2020-12-03', '14', '54', '2d6e7dcc-72f1-4073-b803-8295e9849e4a', 'https://paypage.sandbox.ngenius-payments.com/?code=c09dbbe67ddfab95', NULL, 1, '0', NULL, '2020-12-03', '06:00 PM', '0', 'null', '23.0', '0.0', NULL, NULL, NULL, '23.0', '1334', NULL, 0, '0', '2020-12-03 09:01:25', '2020-12-03 09:01:25'),
(107, '2020-12-03', '14', '54', '4ba1c6a5-122c-48c6-a381-953978e25885', 'https://paypage.sandbox.ngenius-payments.com/?code=2c359bae1c0e5c2d', '60569f55-d8e1-40cf-98c6-fe5c2134b73d', 1, '1', NULL, '2020-12-03', '06:00 PM', '0', 'null', '23.0', '0.0', NULL, NULL, NULL, '23.0', '7473', NULL, 0, '1', '2020-12-03 09:02:24', '2020-12-08 07:07:32');

-- --------------------------------------------------------

--
-- Table structure for table `booking_items`
--

CREATE TABLE `booking_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `service_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_items`
--

INSERT INTO `booking_items` (`id`, `booking_id`, `service_id`, `price`, `created_at`, `updated_at`) VALUES
(14, '31', '2', '500.0', '2020-10-24 16:47:09', '2020-10-24 16:47:09'),
(15, '31', '3', '600.0', '2020-10-24 16:47:09', '2020-10-24 16:47:09'),
(16, '32', '3', '600.0', '2020-10-24 16:48:49', '2020-10-24 16:48:49'),
(17, '32', '2', '500.0', '2020-10-24 16:48:49', '2020-10-24 16:48:49'),
(18, '32', '3', '750.0', '2020-10-24 16:48:49', '2020-10-24 16:48:49'),
(19, '32', '4', '1000.0', '2020-10-24 16:48:50', '2020-10-24 16:48:50'),
(20, '33', '2', '500.0', '2020-10-25 06:08:19', '2020-10-25 06:08:19'),
(21, '34', '3', '750.0', '2020-10-25 07:03:52', '2020-10-25 07:03:52'),
(22, '36', '2', '500.0', '2020-10-25 07:20:40', '2020-10-25 07:20:40'),
(23, '36', '3', '600.0', '2020-10-25 07:20:40', '2020-10-25 07:20:40'),
(24, '37', '2', '500.0', '2020-10-25 08:28:28', '2020-10-25 08:28:28'),
(25, '38', '3', '600.0', '2020-10-27 02:19:09', '2020-10-27 02:19:09'),
(26, '38', '2', '500.0', '2020-10-27 02:19:09', '2020-10-27 02:19:09'),
(27, '39', '2', '500.0', '2020-11-03 07:23:15', '2020-11-03 07:23:15'),
(28, '40', '2', '500.0', '2020-11-04 07:17:56', '2020-11-04 07:17:56'),
(29, '42', '2', '500.0', '2020-11-13 10:42:12', '2020-11-13 10:42:12'),
(30, '42', '3', '600.0', '2020-11-13 10:42:21', '2020-11-13 10:42:21'),
(31, '41', '3', '600.0', '2020-11-13 10:53:58', '2020-11-13 10:53:58'),
(32, '41', '4', '1000.0', '2020-11-13 10:53:59', '2020-11-13 10:53:59'),
(33, '44', '2', '100.0', '2020-11-13 18:22:55', '2020-11-13 18:22:55'),
(34, '44', '8', '80.0', '2020-11-13 18:22:55', '2020-11-13 18:22:55'),
(35, '46', '2', '600.0', '2020-11-15 12:08:13', '2020-11-15 12:08:13'),
(36, '47', '3', '600.0', '2020-11-16 12:22:52', '2020-11-16 12:22:52'),
(37, '47', '2', '100.0', '2020-11-16 12:22:52', '2020-11-16 12:22:52'),
(38, '47', '2', '500.0', '2020-11-16 12:22:53', '2020-11-16 12:22:53'),
(39, '47', '6', '500.0', '2020-11-16 12:22:54', '2020-11-16 12:22:54'),
(40, '47', '3', '750.0', '2020-11-16 12:22:54', '2020-11-16 12:22:54'),
(41, '47', '4', '1000.0', '2020-11-16 12:22:55', '2020-11-16 12:22:55'),
(42, '48', '3', '600.0', '2020-11-16 12:25:01', '2020-11-16 12:25:01'),
(43, '48', '2', '500.0', '2020-11-16 12:25:02', '2020-11-16 12:25:02'),
(44, '49', '12', '1200.0', '2020-11-17 15:51:43', '2020-11-17 15:51:43'),
(45, '49', '8', '500.0', '2020-11-17 15:51:43', '2020-11-17 15:51:43'),
(46, '49', '5', '600.0', '2020-11-17 15:51:44', '2020-11-17 15:51:44'),
(47, '49', '11', '700.0', '2020-11-17 15:51:44', '2020-11-17 15:51:44'),
(48, '49', '6', '400.0', '2020-11-17 15:51:45', '2020-11-17 15:51:45'),
(49, '49', '2', '600.0', '2020-11-17 15:51:46', '2020-11-17 15:51:46'),
(50, '50', '4', '1000.0', '2020-11-17 15:58:43', '2020-11-17 15:58:43'),
(51, '50', '3', '750.0', '2020-11-17 15:58:43', '2020-11-17 15:58:43'),
(52, '53', '6', '400.0', '2020-11-21 09:27:49', '2020-11-21 09:27:49'),
(53, '53', '8', '500.0', '2020-11-21 09:27:49', '2020-11-21 09:27:49'),
(54, '53', '11', '700.0', '2020-11-21 09:27:49', '2020-11-21 09:27:49'),
(55, '54', '3', '600.0', '2020-11-21 10:25:18', '2020-11-21 10:25:18'),
(56, '55', '3', '600.0', '2020-11-21 10:26:12', '2020-11-21 10:26:12'),
(57, '55', '2', '500.0', '2020-11-21 10:26:13', '2020-11-21 10:26:13'),
(58, '56', '2', '600.0', '2020-11-21 11:03:22', '2020-11-21 11:03:22'),
(59, '57', '2', '600.0', '2020-11-22 06:11:07', '2020-11-22 06:11:07'),
(60, '57', '3', '600.0', '2020-11-22 06:11:07', '2020-11-22 06:11:07'),
(61, '59', '2', '501.0', '2020-11-24 11:24:55', '2020-11-24 11:24:55'),
(62, '62', '4', '1000.0', '2020-11-24 12:18:02', '2020-11-24 12:18:02'),
(63, '62', '3', '660.0', '2020-11-24 12:18:02', '2020-11-24 12:18:02'),
(64, '62', '2', '501.0', '2020-11-24 12:18:03', '2020-11-24 12:18:03'),
(65, '63', '2', '501.0', '2020-11-24 12:21:35', '2020-11-24 12:21:35'),
(66, '63', '3', '660.0', '2020-11-24 12:21:36', '2020-11-24 12:21:36'),
(67, '64', '4', '1000.0', '2020-11-24 12:22:29', '2020-11-24 12:22:29'),
(68, '64', '2', '501.0', '2020-11-24 12:22:30', '2020-11-24 12:22:30'),
(69, '65', '2', '501.0', '2020-11-24 18:26:24', '2020-11-24 18:26:24'),
(70, '65', '3', '660.0', '2020-11-24 18:26:25', '2020-11-24 18:26:25'),
(71, '67', '2', '501.0', '2020-11-24 18:30:46', '2020-11-24 18:30:46'),
(72, '68', '2', '501.0', '2020-11-24 18:32:46', '2020-11-24 18:32:46'),
(73, '70', '3', '660.0', '2020-11-26 10:31:50', '2020-11-26 10:31:50'),
(74, '71', '2', '501.0', '2020-11-29 11:07:47', '2020-11-29 11:07:47'),
(75, '73', '2', '501.0', '2020-12-01 03:00:49', '2020-12-01 03:00:49'),
(76, 'null', '2', '501.0', '2020-12-01 04:31:29', '2020-12-01 04:31:29'),
(77, '74', '2', '501.0', '2020-12-01 04:34:03', '2020-12-01 04:34:03'),
(78, '76', '2', '600.0', '2020-12-02 03:22:40', '2020-12-02 03:22:40'),
(79, '76', '3', '600.0', '2020-12-02 03:22:40', '2020-12-02 03:22:40'),
(80, '77', '2', '100.0', '2020-12-02 03:25:38', '2020-12-02 03:25:38'),
(81, '77', '8', '80.0', '2020-12-02 03:25:39', '2020-12-02 03:25:39'),
(82, '78', '2', '600.0', '2020-12-02 05:11:29', '2020-12-02 05:11:29'),
(83, '78', '3', '600.0', '2020-12-02 05:11:29', '2020-12-02 05:11:29'),
(84, '81', '6', '600.0', '2020-12-02 05:27:20', '2020-12-02 05:27:20'),
(85, '81', '4', '1000.0', '2020-12-02 05:27:21', '2020-12-02 05:27:21'),
(86, '82', '6', '500.0', '2020-12-02 05:29:02', '2020-12-02 05:29:02'),
(87, '82', '3', '600.0', '2020-12-02 05:29:02', '2020-12-02 05:29:02'),
(88, '83', '5', '250.0', '2020-12-02 05:30:23', '2020-12-02 05:30:23'),
(89, '84', '3', '500.0', '2020-12-02 05:30:49', '2020-12-02 05:30:49'),
(90, '85', '3', '2000.0', '2020-12-02 05:33:05', '2020-12-02 05:33:05'),
(91, '86', '2', '100.0', '2020-12-02 05:38:13', '2020-12-02 05:38:13'),
(92, '87', '2', '600.0', '2020-12-02 05:39:43', '2020-12-02 05:39:43'),
(93, '93', '2', '501.0', '2020-12-03 05:53:54', '2020-12-03 05:53:54'),
(94, '94', '2', '501.0', '2020-12-03 06:14:03', '2020-12-03 06:14:03'),
(95, '95', '2', '600.0', '2020-12-03 06:15:27', '2020-12-03 06:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `booking_packages`
--

CREATE TABLE `booking_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `package_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `package_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_packages`
--

INSERT INTO `booking_packages` (`id`, `booking_id`, `package_id`, `package_name`, `price`, `created_at`, `updated_at`) VALUES
(2, '43', '1', 'Spa Package', '100', '2020-11-13 10:53:59', '2020-11-13 10:53:59'),
(3, '43', '3', 'Hair Cut package', '23', '2020-11-13 10:53:59', '2020-11-13 10:53:59'),
(4, '44', '7', 'Home Services', '300', '2020-11-13 18:22:55', '2020-11-13 18:22:55'),
(5, '45', '1', 'Spa Package', '100', '2020-11-14 09:20:28', '2020-11-14 09:20:28'),
(6, '47', '4', 'Makeup Package', '50', '2020-11-16 12:22:53', '2020-11-16 12:22:53'),
(7, '47', '3', 'Hair Cut package', '23', '2020-11-16 12:22:53', '2020-11-16 12:22:53'),
(8, '47', '1', 'Spa Package', '100', '2020-11-16 12:22:54', '2020-11-16 12:22:54'),
(9, '48', '3', 'Hair Cut package', '23', '2020-11-16 12:25:01', '2020-11-16 12:25:01'),
(10, '48', '1', 'Spa Package', '100', '2020-11-16 12:25:01', '2020-11-16 12:25:01'),
(11, '49', '5', 'Haircut Package', '150', '2020-11-17 15:51:44', '2020-11-17 15:51:44'),
(12, '49', '6', 'Bridal package', '100', '2020-11-17 15:51:45', '2020-11-17 15:51:45'),
(13, '54', '1', 'Spa Package', '100', '2020-11-21 10:25:18', '2020-11-21 10:25:18'),
(14, '57', '12', 'home Spl', '300', '2020-11-22 06:11:06', '2020-11-22 06:11:06'),
(15, '57', '13', 'Home 2', '400', '2020-11-22 06:11:06', '2020-11-22 06:11:06'),
(16, '58', '1', 'Spa Package', '100', '2020-11-24 04:03:35', '2020-11-24 04:03:35'),
(17, '63', '1', 'Spa Package', '100', '2020-11-24 12:21:36', '2020-11-24 12:21:36'),
(18, '64', '1', 'Spa Package', '100', '2020-11-24 12:22:30', '2020-11-24 12:22:30'),
(19, '65', '1', 'Spa Package', '100', '2020-11-24 18:26:24', '2020-11-24 18:26:24'),
(20, '67', '1', 'Spa Package', '100', '2020-11-24 18:30:46', '2020-11-24 18:30:46'),
(21, '67', '3', 'Hair Cut package', '23', '2020-11-24 18:30:46', '2020-11-24 18:30:46'),
(22, '68', '3', 'Hair Cut package', '23', '2020-11-24 18:32:46', '2020-11-24 18:32:46'),
(23, '68', '1', 'Spa Package', '100', '2020-11-24 18:32:46', '2020-11-24 18:32:46'),
(24, '69', '1', 'Spa Package', '100', '2020-11-25 08:12:48', '2020-11-25 08:12:48'),
(25, '70', '1', 'Spa Package', '100', '2020-11-26 10:31:50', '2020-11-26 10:31:50'),
(26, '71', '1', 'Spa Package', '100', '2020-11-29 11:07:47', '2020-11-29 11:07:47'),
(27, '73', '1', 'Spa Package', '100', '2020-12-01 03:00:50', '2020-12-01 03:00:50'),
(28, 'null', '1', 'Spa Package', '100', '2020-12-01 04:31:30', '2020-12-01 04:31:30'),
(29, '74', '1', 'Spa Package', '100', '2020-12-01 04:34:03', '2020-12-01 04:34:03'),
(30, '77', '7', 'Home Services', '300', '2020-12-02 03:25:39', '2020-12-02 03:25:39'),
(31, '79', '3', 'Hair Cut package', '23', '2020-12-02 05:13:08', '2020-12-02 05:13:08'),
(32, '80', '1', 'Spa Package', '100', '2020-12-02 05:19:07', '2020-12-02 05:19:07'),
(33, '81', '10', 'Family Pack', '1500', '2020-12-02 05:27:20', '2020-12-02 05:27:20'),
(34, '88', '7', 'Home Services', '300', '2020-12-02 05:40:22', '2020-12-02 05:40:22'),
(35, '89', '11', 'Family Pack', '1500', '2020-12-02 05:49:49', '2020-12-02 05:49:49'),
(36, '90', '3', 'Hair Cut package', '23', '2020-12-02 05:50:05', '2020-12-02 05:50:05'),
(37, '91', '10', 'Family Pack', '1500', '2020-12-02 05:52:51', '2020-12-02 05:52:51'),
(38, '92', '12', 'home Spl', '300', '2020-12-02 06:05:27', '2020-12-02 06:05:27'),
(39, '93', '1', 'Spa Package', '100', '2020-12-03 05:53:54', '2020-12-03 05:53:54'),
(40, '93', '3', 'Hair Cut package', '23', '2020-12-03 05:53:55', '2020-12-03 05:53:55'),
(41, '94', '1', 'Spa Package', '100', '2020-12-03 06:14:04', '2020-12-03 06:14:04'),
(42, '97', '3', 'Hair Cut package', '23', '2020-12-03 08:31:44', '2020-12-03 08:31:44'),
(43, '98', '3', 'Hair Cut package', '23', '2020-12-03 08:34:04', '2020-12-03 08:34:04'),
(44, '99', '3', 'Hair Cut package', '23', '2020-12-03 08:36:33', '2020-12-03 08:36:33'),
(45, '100', '3', 'Hair Cut package', '23', '2020-12-03 08:38:04', '2020-12-03 08:38:04'),
(46, '104', '3', 'Hair Cut package', '23', '2020-12-03 08:54:19', '2020-12-03 08:54:19'),
(47, '105', '3', 'Hair Cut package', '23', '2020-12-03 08:57:23', '2020-12-03 08:57:23'),
(48, '107', '3', 'Hair Cut package', '23', '2020-12-03 09:02:25', '2020-12-03 09:02:25');

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
-- Table structure for table `chat_customers`
--

CREATE TABLE `chat_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_send` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_send` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staus` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat_salons`
--

CREATE TABLE `chat_salons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `salon_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_send` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `salon_send` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staus` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat_salons`
--

INSERT INTO `chat_salons` (`id`, `salon_id`, `admin_id`, `admin_send`, `salon_send`, `date`, `time`, `text`, `staus`, `created_at`, `updated_at`) VALUES
(1, '14', NULL, '1', '0', NULL, NULL, 'hi', '0', '2020-10-19 04:05:27', '2020-10-19 04:05:27'),
(2, '14', NULL, '1', '0', NULL, NULL, 'hi', '0', '2020-10-19 04:14:16', '2020-10-19 04:14:16'),
(3, '14', NULL, '1', '0', NULL, NULL, 'hi', '0', '2020-10-19 04:16:13', '2020-10-19 04:16:13'),
(4, '14', NULL, '1', '0', NULL, NULL, 'hi , How are you?', '0', '2020-10-19 04:16:24', '2020-10-19 04:16:24'),
(5, '14', NULL, '0', '1', NULL, NULL, 'Im fine', '0', '2020-10-19 04:16:24', '2020-10-19 04:16:24'),
(6, '14', NULL, '1', '0', NULL, NULL, 'what are you doing?', '0', '2020-10-19 04:17:15', '2020-10-19 04:17:15'),
(7, '14', NULL, '1', '0', NULL, NULL, 'hi', '0', '2020-10-19 04:26:29', '2020-10-19 04:26:29'),
(8, '14', NULL, '1', '0', NULL, NULL, 'hi', '0', '2020-10-19 04:26:41', '2020-10-19 04:26:41'),
(9, '18', NULL, '1', '0', NULL, NULL, 'hi how r u?', '0', '2020-10-19 04:30:10', '2020-10-19 04:30:10'),
(10, '18', NULL, '1', '0', NULL, NULL, 'hi', '0', '2020-10-19 08:33:28', '2020-10-19 08:33:28'),
(11, '14', NULL, '1', '0', NULL, NULL, 'hi', '0', '2020-10-19 12:49:35', '2020-10-19 12:49:35'),
(12, '14', NULL, '1', '0', NULL, NULL, 'im fine', '0', '2020-10-19 12:50:18', '2020-10-19 12:50:18'),
(13, '14', NULL, '1', '0', NULL, NULL, 'hello', '0', '2020-11-10 11:35:01', '2020-11-10 11:35:01'),
(14, '14', NULL, '1', '0', NULL, NULL, 'Hi Rithvika', '0', '2020-11-22 10:07:45', '2020-11-22 10:07:45');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_name_english` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_name_arabic` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_count` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name_english`, `country_name_arabic`, `phone_count`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, '+971', 'UAE', 'UAE', '9', '1284241477.jpg', '0', '2020-12-09 02:46:40', '2020-12-13 05:00:46'),
(2, '+91', 'INDIA', 'INDIA', '10', '78024524.png', '0', '2020-12-09 02:47:15', '2020-12-13 05:00:55'),
(3, '+07', 'RUSSIA', 'RUSSIA', '0', '896816098.jpg', '0', '2020-12-09 02:50:26', '2020-12-13 05:01:03'),
(4, '+92', 'PAKISTAN', 'PAKISTAN', '0', '663530986.png', '0', '2020-12-09 02:52:23', '2020-12-13 05:01:12');

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
  `min_order_val` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deny_remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `salon_id`, `coupon_code`, `description`, `start_date`, `end_date`, `discount_type`, `service_id`, `amount`, `max_value`, `limit_per_user`, `min_order_val`, `user_type`, `user_id`, `deny_remark`, `status`, `created_at`, `updated_at`) VALUES
(1, '14', 'CODE 150', 'Terms and Condition', '2020-07-06', '2020-12-23', '3', '1', '100', NULL, '5', '10', '1', '23', 'test', '1', '2020-07-07 08:43:41', '2020-12-08 13:25:30'),
(4, 'admin', 'CODE20', 'TEST', '2020-10-24', '2020-10-31', '3', NULL, '20', NULL, '5', '10', NULL, '', NULL, '1', '2020-10-24 16:27:49', '2020-10-24 16:31:10');

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
  `dob` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firebase_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(2555) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `membership_plan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reviews` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `date`, `name`, `phone`, `email`, `dob`, `gender`, `location`, `firebase_key`, `city`, `otp`, `password`, `membership_plan`, `reviews`, `address_id`, `country_id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(23, NULL, 'prasanth ats', '564180385', 'prasanth@lrbinfotech.com', NULL, '0', 'abudhabi', 'd1fM188n_Lc:APA91bEU8Yy1WIYjHdLpba_zuBdoTwjJmOCBQ6o5H_oG3tKDWVPl6_L5oZzcakT01EJ_jILlsJzqDrkwoWN0I1qk5N6oYd-ewPMkhqx978_y40eHUvcirD6WAVwMU7VKHPfs7SB_Pt2p', 'abudhabi', '629664', '$2y$10$5ts69nXVR9aiaB1a9h9L/.1bEenUZlCtCwyUPN.tsJ8uj3UivNk46', NULL, NULL, '13', NULL, NULL, '1', '2020-10-07 04:53:43', '2020-12-13 05:50:13'),
(33, NULL, 'tariq', '509310222', 'k.t5@hotmail.com', NULL, '0', NULL, 'dunHkRLUyBM:APA91bEC9g8f6Dhkg6Iy96wmTcOzC1IzmtF0Fqwy5UyhsqRXTh_qvq07Bmb7biIK3z9kFMOVlWokROEb3T9CZMJHHzu8oSI7dxc8Yf7pa4j2OqrYXj4MRefCWJ2DF6GhluH47MKEGT4z', 'Abudhabi', '3236', '$2y$10$P1W72xlIVpec/Z9VpXiQrOIW3lSAsagckNuTjJkVVsXmlNuyXszBi', NULL, NULL, NULL, NULL, NULL, '1', '2020-11-16 10:34:53', '2020-11-24 12:14:01'),
(36, NULL, 'Th', '502232552', 't.s_2007_15@hotmail.com', NULL, '1', NULL, 'edPC8eqSGOc:APA91bFD5i-zUjc0_A6QzTvvGZVtAOjzuCkIw7QDb7Vi6HYg9Bjbi46dmg-tqpBsMOF2PVsJQ8gYBLd4a_tPK7ohjDNZFKsMkXbSJOPqXwtzgS3fuf-6Qlwa1g6MsDWEo6QtDfsOe9Rl', 'Al Alain', '5855', '$2y$10$unQ6xkPz4UlvpozjMRdt8ONUtsYCvQDTW.1J.ObFhtlIuOmE9mi4e', NULL, NULL, NULL, NULL, NULL, '1', '2020-11-16 17:31:32', '2020-11-21 11:34:38'),
(42, NULL, 'joseph', '508435747', 'joseph@gmail.com', NULL, '0', NULL, 'cXzuzLxk3mU:APA91bE2TWCH3wYajjQolSmsj1JSt7sH_vstuXsHr2daM3T1c8AzJJdQEiMML63-Ue9MOjGmgQGFF9O_JIM4eo5J2B-kwViA7Fo5DJpyg9yxHn-DeBRqhFGpv4bwd6OZjji4SiMBNYdD', 'Abudhabi', '9215', '$2y$10$W0P5ZzlXwzkAwm8YWKkuBe7nVNNVGPmwXGNa.XoEpcrTRpSWz8IFG', NULL, NULL, NULL, NULL, NULL, '1', '2020-11-20 04:45:01', '2020-11-20 04:45:25'),
(44, NULL, 'thowsif', '568169568', 'thowsif@lrbinfotech.com', NULL, '0', NULL, 'dFlBoPw9anc:APA91bExgUJLyP7hGptHbIo2Nqw4nsivMpJiPIq4ut81OVKl2ziJ0_M0eYDCuMuqsKcoGyX_bqo1h6RS6_tJDTCUCLUvxi4eY93xKa1R0wRkS1hmCuYSBDzJ7uLtU23aZmQkyKnWB_iU', 'Abudhabi', '3202', '$2y$10$QE7tZwbsoreSyRhl8ob1TeQ6lG0fgsUTb4lrX5wnCs8jfUSPAJvhe', NULL, NULL, NULL, NULL, NULL, '1', '2020-11-21 08:48:16', '2020-11-24 15:03:27'),
(45, NULL, 'lrb info tech', '567100733', 'info@lrbtech.com', NULL, '0', NULL, 'fzxDRtdPLII:APA91bHt1_aJ9NyLCRTkiOAhzChfZb-eaew1GEMK4fI5PISTylTVZpXSanK_0xsV10QjRAwEX3BFJWDTI0yc0Qxi3JwdGyKB3iFcJJUjcPfnCL_720qGXAhYr0kLED_m2vkniRkHFPG8', 'Abudhabi', '2556', '$2y$10$/.pUzYKSeba1VJvAsHCry.ARPDI4k7IO982a8LHDPi/vU.MslnJJi', NULL, NULL, NULL, NULL, NULL, '1', '2020-11-21 09:17:44', '2020-11-21 09:18:03'),
(46, NULL, 'samthakur', '501107367', 'samthakur@isalonuae.com', NULL, '0', NULL, 'cj3oFtNrcOA:APA91bHliwLj1NK4wHmAhUUx0F3aHK2oCNgxLOcMbQp5ha8F8VH1IkIIVuHMK_uz8jdCbFhC2Lv81Xj7KKEpw5vcrkzuctymFbI_TdicE0M58IiJYJgV7U6ccb0umf_8-UItggAgzgIa', 'Abudhabi', '3327', '$2y$10$zFua1LCtzLs2vJcleaJRKO2eNsCU.7SNGqJOcxwKAfz.gayGJq3QO', NULL, NULL, NULL, NULL, NULL, '1', '2020-11-21 09:21:31', '2020-11-21 09:24:13'),
(47, '2020-11-21', 'Tariq', '509310222', 'talqubaisi@isalonuae.com', NULL, NULL, NULL, 'cBoVCxQh0P8:APA91bEZmA4WB6T22pr1hK6WykJX9PDqQhm0x8zdzHr8NX3_KC2PWRpT7LTDB77i_Bn5etRQH2N-dlyEEp0e9d7iahgrnrCa_in1DMDJqZkrImNQrMhzlqylclVIDk7x-EsALUAp6KTF', NULL, '826440', '$2y$10$RZNzIV8vA9sVJybu8AGSTObpeWc7D6o0e4PMT5yfEYtDCi.sZEfR6', NULL, NULL, NULL, NULL, NULL, '1', '2020-11-21 09:46:15', '2020-11-24 12:41:58'),
(48, NULL, 'tariq', '556016000', 'alqubaisitariq@gmail.com', NULL, '0', NULL, 'dunHkRLUyBM:APA91bEC9g8f6Dhkg6Iy96wmTcOzC1IzmtF0Fqwy5UyhsqRXTh_qvq07Bmb7biIK3z9kFMOVlWokROEb3T9CZMJHHzu8oSI7dxc8Yf7pa4j2OqrYXj4MRefCWJ2DF6GhluH47MKEGT4z', 'Abudhabi', '9472', '$2y$10$1ucrvAI.Y/afjC6hiFayvuZltFjMtwlmTo9dYpX9fMSSzNQtcDMkG', NULL, NULL, NULL, NULL, NULL, '1', '2020-11-21 10:23:42', '2020-11-21 10:23:49'),
(49, NULL, 'mahra ‎', '501226719', 'raniataha132@gmail.com', NULL, '1', NULL, 'd11E9S7sTkY:APA91bEb59F3YFY5Y20UyKZEaJy528U12fNjJvaHCA6h5djHdpmbpXniwvmJqk5s6ikqiEQPN-D_-bdmL0z1gi1RN_seLAiBcMqVIJQx3xXn8IGHzo2y0HnVkQXvW9OrJ2Fa4LiSdrmz', 'Abudhabi', '4768', '$2y$10$SGyuMEc.O.MxgB3dkxkknuALOaI8LPp7reQXof2YKNUmMdZJoprKa', NULL, NULL, NULL, NULL, NULL, '1', '2020-11-21 18:23:59', '2020-11-21 18:24:09'),
(50, NULL, 'om', '544696997', 'o.ahmed416@gmail.com', NULL, '0', NULL, 'dUazGMTDJYk:APA91bEVFH9bBOqIWqofZKWim-Wxa2TjumBvlaWQShiOEhb78an_HfD5DCWj70rFt_AJjubUmSjdph48vqnNUILv4Glfa4ngi5lYDBRwkYjC-Sn0sAO-Gf0EdVChwkqCwQdV9IA9Uixt', 'Abudhabi', '1964', '$2y$10$XUTlpgZT0SxJ98fzf9L7qeum0IlBBbsSi3eTlhnu.DnHM701.jqSi', NULL, NULL, NULL, NULL, NULL, '1', '2020-11-22 01:11:15', '2020-11-22 01:11:20'),
(51, NULL, 'John', '564180384', 'nijo@lrbinfotech.com', NULL, '0', NULL, 'fAWXFRY8Sfg:APA91bF2isDMGK5GkivzcEeW5g9YBd2NaMEolPZ5mbkZjxo-gNfowNWrFJhqhvKLR7xMB378eev3DNECOiEzg86UMONcld-rbLUuI1E7K_K-VqDsI4Y9Yu-gyXTZYlDH0r40phYSFe7w', 'Abudhabi', '4859', '$2y$10$40olwpBgZVa1nntYZoqszOb/nv5IAwrS/UVQfQgD30HZzfEZ.2wCi', NULL, NULL, NULL, NULL, NULL, '1', '2020-11-22 05:03:32', '2020-11-22 05:03:55'),
(52, NULL, 'kb3', '503330011', 'kar.uae33@gmail.com', NULL, '0', NULL, 'd4cbSPqxDfc:APA91bHsyd5R8_lzGiZMD_9tDEEUSSsxM18b9dXcoz0ovusK3SFuZM2H5mzXnWY3ET5Ri_i47uRa5G8wkbGGH3F4ry6qz6JkYAtoww3i9OtmfwU5ua-VR3dxSSODspzkOJK56KfRVT8Q', 'Abudhabi', '7061', '$2y$10$YdWw3nFF9B6Ho37C2y3rIeKD4DTtaOapPxsBatnw2wFZ7zllQqPGC', NULL, NULL, NULL, NULL, NULL, '1', '2020-11-24 14:58:42', '2020-11-24 14:58:51'),
(54, NULL, 'aravind', '8883191962', 'aravind.0216@gmail.com', NULL, '0', NULL, 'eJSujj-PDp8:APA91bE1vVS_wElz_V1zOtvaNQ0wnBagc70KlPmuaBpi1q_EQaCCWy8BQCGBaLYcSc7VDz_UH_NpvmhyF0ccdlncs_SHGHe8VbJXEGue6Y5eaXaFWS0SAULBXPJtZP87hV2ILGX2Q__Y', 'Abudhabi', '4847', '$2y$10$/XMtxhhtRLr5mblGvMG07eKdVRcncjtM0XAtGkmWVIkBUqyXUjV8a', NULL, NULL, NULL, NULL, NULL, '1', '2020-11-30 06:22:04', '2020-12-02 05:02:07'),
(55, NULL, 'maria', '524611181', 'mariabaldri@hotmail.com', NULL, '1', NULL, 'faHEG99P8lY:APA91bEnpS2ZTrFbkkjw9IQ4zTiP-MXF1WeY5rDKLKAfR4tyvaKo6mYTr8JWx8EUroR9hEU4MX8u9xk-M-IrOFnn-q-PuKi7fRF8SdctlsGdMvz6UkkIP_hzyhNbvwLse9XlFfcKzZjC', 'Al Alain', '3215', '$2y$10$RuZvp5.uIdqWL3R3FoUYdupe1dTM9HDD8KT33wHeIOL6kj2hAY7Je', NULL, NULL, NULL, NULL, NULL, '1', '2020-12-01 03:25:10', '2020-12-01 03:25:45'),
(56, NULL, 'jagubar', '807261494', 'jagubarnisha@tutanota.com', '1990-12-09', '1', NULL, 'd18UaSiQ9cw:APA91bGoGelOJiozItMpHXTZ9sZArvCoJz4KiSWHOITbikJJktm7IIObSp2SU5oY02nytzaEHtaQ-y5b010YxPMWW5DL7LipYz6Ct-2ZI4-OJmR3LIKljzcv-VOUNUO-cwycYOaJznow', 'Abudhabi', '2946', '$2y$10$xhiH/OeeoXJ5RcQrGdCiSekDPYDuBq/aZn1gwqPFj16CS3V/tNmfy', NULL, NULL, NULL, NULL, NULL, '1', '2020-12-02 05:03:28', '2020-12-02 05:19:58');

-- --------------------------------------------------------

--
-- Table structure for table `customer_packages`
--

CREATE TABLE `customer_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `salon_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_ids` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `salon_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `salon_id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(8, '18', 'Hair spa', '1875735250.jpg', '0', '2020-10-22 04:12:53', '2020-10-22 04:12:53'),
(9, '18', 'spa', '1444896000.jpg', '0', '2020-10-22 04:13:13', '2020-10-22 04:13:13'),
(10, '18', 'salon', '847835549.png', '0', '2020-10-22 04:13:47', '2020-10-22 04:13:47'),
(11, '18', 'hair coloring', '137347293.jpg', '0', '2020-10-22 04:14:20', '2020-10-22 04:14:20'),
(12, '19', 'salon', '213712010.jpg', '0', '2020-10-22 04:26:02', '2020-10-22 04:26:02'),
(13, '19', 'hair coloring', '291728260.jpg', '0', '2020-10-22 04:26:27', '2020-10-22 04:26:27'),
(14, '19', 'pimple cure', '1338414228.jpg', '0', '2020-10-22 04:26:45', '2020-10-22 04:26:45'),
(15, '19', 'spa', '514491859.jpg', '0', '2020-10-22 04:27:34', '2020-10-22 04:27:34'),
(16, '20', 'salon', '115914523.jpg', '0', '2020-10-22 04:42:38', '2020-10-22 04:42:38'),
(17, '20', 'pedicure', '1911294529.jpg', '0', '2020-10-22 04:45:16', '2020-10-22 04:45:16'),
(18, '20', 'facial', '1860295317.jpg', '0', '2020-10-22 04:45:34', '2020-10-22 04:45:34'),
(19, '20', 'spa', '854340504.jpg', '0', '2020-10-22 04:45:56', '2020-10-22 04:45:56'),
(20, '21', 'facial', '2045613127.jpg', '0', '2020-10-22 04:57:12', '2020-10-22 04:57:12'),
(21, '21', 'hair cut', '1161300298.jpg', '0', '2020-10-22 04:57:42', '2020-10-22 04:57:42'),
(22, '21', 'salon', '2128948688.jpg', '0', '2020-10-22 04:58:11', '2020-10-22 04:58:11'),
(23, '21', 'manicure&pedicure', '578182862.jpg', '0', '2020-10-22 04:58:43', '2020-10-22 04:58:43'),
(24, '14', 'salon', '1558766879.png', '0', '2020-10-22 05:01:48', '2020-10-22 05:01:48'),
(25, '14', 'Hair care', '1318368604.jpg', '0', '2020-10-22 05:02:14', '2020-10-22 05:02:14'),
(26, '14', 'Foot care', '1337137895.jpg', '0', '2020-10-22 05:02:31', '2020-10-22 05:02:31'),
(27, '14', 'facial', '468299207.jpg', '0', '2020-10-22 05:02:50', '2020-10-22 05:02:50'),
(28, '22', 'spa', '1775506505.jpg', '0', '2020-10-22 05:18:07', '2020-10-22 05:18:07'),
(33, '22', 'Hair spa', '61649842.jpg', '0', '2020-10-22 05:18:56', '2020-10-22 05:18:56'),
(34, '22', 'facial', '105036569.jpg', '0', '2020-10-22 05:19:13', '2020-10-22 05:19:13'),
(35, '22', 'spa bed', '1210807247.jpg', '0', '2020-10-22 05:19:37', '2020-10-22 05:19:37'),
(36, '23', 'salon', '1033801202.jpg', '0', '2020-10-22 05:33:59', '2020-10-22 05:33:59'),
(37, '23', 'hair coloring', '2142180986.jpg', '0', '2020-10-22 05:34:24', '2020-10-22 05:34:24'),
(38, '23', 'spa items', '61054924.jpg', '0', '2020-10-22 05:34:45', '2020-10-22 05:34:45'),
(39, '23', 'body spa', '124973251.jpg', '0', '2020-10-22 05:35:19', '2020-10-22 05:35:19'),
(40, '24', 'facial', '690377655.jpg', '0', '2020-10-22 05:48:23', '2020-10-22 05:48:23'),
(41, '24', 'hair spa', '293746610.jpg', '0', '2020-10-22 05:48:50', '2020-10-22 05:48:50'),
(42, '24', 'pedicure', '1729432191.jpg', '0', '2020-10-22 05:49:09', '2020-10-22 05:49:09'),
(43, '24', 'Massage', '701961098.jpg', '0', '2020-10-22 05:49:27', '2020-10-22 05:49:27'),
(44, '81', 'Sam Thakur', '558736142.jpg', '0', '2020-12-05 08:04:36', '2020-12-05 08:04:36'),
(45, '81', 'Meat House', '80659722.png', '0', '2020-12-05 08:05:21', '2020-12-05 08:05:21');

-- --------------------------------------------------------

--
-- Table structure for table `manage_addresses`
--

CREATE TABLE `manage_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `map_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addr_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landmark` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manage_addresses`
--

INSERT INTO `manage_addresses` (`id`, `map_title`, `lat`, `lng`, `city`, `addr_title`, `address`, `landmark`, `customer_id`, `status`, `created_at`, `updated_at`) VALUES
(13, 'M Floor, Omeir Holidays Building - 3rd St - Zone 1E6 - Abu Dhabi - United Arab Emirates', '24.4895263', '54.35854819999999', 'Abudhabi', 'dalma plaza', '1210', 'near wtc', '23', '0', '2020-11-12 17:17:43', '2020-11-12 18:06:24'),
(14, '313 3rd St - Zone 1E5 - Abu Dhabi - United Arab Emirates', '24.4912898', '54.3597', 'Abudhabi', 'mubarak tower', '4035', 'near wtct', '23', '0', '2020-11-12 17:18:49', '2020-11-12 18:23:02'),
(15, '5 شارع التَّدْوِين - Al ZahiyahE16-02 - Abu Dhabi - United Arab Emirates', '24.4910245', '54.3837406', 'Abudhabi', 'al gaith', '244', 'near almaya', '44', '1', '2020-11-22 06:10:11', '2020-11-24 11:30:01'),
(16, '2-1-36, Koodal Nagar, Madurai, Tamil Nadu 625018, India', '9.959182', '78.10098099999999', 'Abudhabi', 'koodal nagar', '15', 'temple', '56', '0', '2020-12-02 05:34:52', '2020-12-02 05:34:52'),
(17, '2-1-36, Koodal Nagar, Madurai, Tamil Nadu 625018, India', '9.959182', '78.10098099999999', 'Abudhabi', 'abu dhabi', '15/6', 'mosque', '56', '0', '2020-12-02 05:36:15', '2020-12-02 05:36:15');

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
(21, '2020_07_08_144823_create_banners_table', 11),
(22, '2020_07_09_075148_create_new_services_table', 12),
(24, '2020_07_11_053418_create_salon_passwords_table', 13),
(25, '2020_07_12_082526_create_settings_table', 14),
(26, '2020_07_12_082740_create_terms_and_conditions_table', 10),
(27, '2020_07_12_145920_create_salon_packages_table', 14),
(28, '2020_07_12_150019_create_salon_package_items_table', 14),
(29, '2020_07_15_122057_create_salon_workers_table', 15),
(30, '2020_07_16_085256_create_customer_passwords_table', 16),
(31, '2020_07_16_112653_create_salon_roles_table', 17),
(32, '2020_07_17_100127_create_roles_table', 18),
(33, '2020_08_24_112758_create_used_packages_table', 19),
(48, '2016_06_01_000001_create_oauth_auth_codes_table', 20),
(49, '2016_06_01_000002_create_oauth_access_tokens_table', 20),
(50, '2016_06_01_000003_create_oauth_refresh_tokens_table', 20),
(51, '2016_06_01_000004_create_oauth_clients_table', 20),
(52, '2016_06_01_000005_create_oauth_personal_access_clients_table', 20),
(53, '2020_07_08_144001_create_sliders_table', 20),
(54, '2020_09_28_113838_create_chat_salons_table', 20),
(55, '2020_09_28_113911_create_chat_customers_table', 20),
(56, '2020_10_04_181105_create_customer_packages_table', 21),
(57, '2020_10_05_123808_create_manage_addresses_table', 22),
(58, '2020_10_05_135635_create_galleries_table', 23),
(59, '2020_10_19_070606_create_bookings_table', 24),
(60, '2020_10_19_070630_create_booking_items_table', 24),
(61, '2020_10_19_091915_create_salon_customers_table', 25),
(62, '2020_11_03_162215_create_packages_table', 26),
(63, '2020_11_11_171934_create_booking_packages_table', 27),
(64, '2020_12_04_071731_create_payments_ins_table', 28),
(65, '2020_12_04_071819_create_payments_outs_table', 28),
(66, '2020_12_09_042807_create_countries_table', 29),
(67, '2020_12_09_110456_create_app_salons_table', 30),
(68, '2020_12_11_102837_create_app_spas_table', 31),
(69, '2020_12_11_102853_create_app_beauties_table', 31),
(70, '2020_12_11_102902_create_app_makeups_table', 31),
(71, '2020_12_11_102911_create_app_homes_table', 31);

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
  `deny_remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `new_services`
--

INSERT INTO `new_services` (`id`, `date`, `salon_id`, `service_name`, `category`, `remark`, `deny_remark`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Sevice namee', 'category', 'remark', 'test', '2', '2020-07-09 06:22:38', '2020-11-29 06:10:55'),
(2, NULL, '14', 'Pedicure', 'Foot', 'We need to add this service', NULL, '1', '2020-11-11 08:16:35', '2020-11-11 08:16:54'),
(3, NULL, '14', 'Foot Spa', 'medicare', 'we need to add this service', NULL, '1', '2020-11-11 08:20:39', '2020-11-11 08:21:00'),
(4, NULL, '14', 'admin saying', 'i need some bolgs higness', 'for media management', 'test', '2', '2020-11-16 03:55:19', '2020-11-16 06:58:45'),
(5, NULL, '14', 'tariq i need to add foot massage service today', 'massage / spa', 'we need this immediate', 'test', '2', '2020-11-24 11:01:52', '2020-11-24 11:03:03');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `salon_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_name_english` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_name_arabic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_ids` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `salon_id`, `package_name_english`, `package_name_arabic`, `price`, `service_ids`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, '14', 'Spa Package', 'Spa Package', '100', '2,3', '240719706.jpg', '0', NULL, '2020-12-01 03:40:19'),
(3, '14', 'Hair Cut package', NULL, '23', '7,11,12', '1967252810.jpg', '0', '2020-11-03 14:41:58', '2020-11-12 06:58:32'),
(4, '14', 'Makeup Package', NULL, '50', '3,4,5', '1870078945.jpg', '0', '2020-11-03 14:41:58', '2020-11-12 07:19:32'),
(5, '18', 'Haircut Package', 'Haircut Package', '150', '2,6,11', '1378887022.jpg', '0', '2020-11-13 11:17:54', '2020-12-01 03:50:15'),
(6, '18', 'Bridal package', 'Bridal package', '100', '4,5,7,8,9,10', '2114902101.jpg', '0', '2020-11-13 11:19:10', '2020-12-01 03:50:22'),
(7, '29', 'Home Services', NULL, '300', '2,3,4,5', '2114902101.jpg', '0', '2020-11-13 17:40:47', '2020-11-13 17:40:47'),
(8, '30', 'Home Sweet', NULL, '500', '2,3,4,5,6', ' ', '0', '2020-11-13 17:44:21', '2020-11-13 17:44:21'),
(9, '31', 'Home Services', NULL, '800', '2,3,4,5,6', ' ', '0', '2020-11-13 17:45:22', '2020-11-13 17:45:22'),
(10, '19', 'Family Pack', NULL, '1500', '2,3,4', ' ', '0', '2020-11-13 20:01:40', '2020-11-13 20:01:40'),
(11, '19', 'Family Pack', NULL, '1500', '2,3,4', ' ', '0', '2020-11-13 20:01:41', '2020-11-13 20:01:41'),
(12, '20', 'home Spl', NULL, '300', '2,3', ' ', '0', '2020-11-14 15:07:53', '2020-11-14 15:07:53'),
(13, '20', 'Home 2', NULL, '400', '4,5,6', ' ', '0', '2020-11-14 15:08:20', '2020-11-14 15:08:20'),
(14, '26', 'home', NULL, '100', '3', ' ', '0', '2020-11-14 15:53:54', '2020-11-14 15:53:54');

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
-- Table structure for table `payments_ins`
--

CREATE TABLE `payments_ins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments_ins`
--

INSERT INTO `payments_ins` (`id`, `date`, `salon_id`, `payment`, `payment_type`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, '2020-12-08', '14', '526', NULL, NULL, NULL, '0', '2020-12-08 07:07:32', '2020-12-08 07:07:32'),
(2, '2020-12-08', '19', '1500', NULL, NULL, NULL, '0', '2020-12-08 07:07:32', '2020-12-08 07:07:32');

-- --------------------------------------------------------

--
-- Table structure for table `payments_outs`
--

CREATE TABLE `payments_outs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments_outs`
--

INSERT INTO `payments_outs` (`id`, `date`, `salon_id`, `payment`, `payment_type`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, '2020-12-08', '14', '10521', NULL, NULL, NULL, '0', '2020-12-08 07:07:26', '2020-12-08 07:07:26');

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
  `customer_ids` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_ids` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deny_remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `other_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `push_notifications`
--

INSERT INTO `push_notifications` (`id`, `salon_id`, `title`, `description`, `send_to`, `customer_ids`, `salon_ids`, `deny_remark`, `status`, `other_status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'PLATINUM', 'BRIDAL MAKUP, PARTY MAKEOVER, FUCTION PREPRATION', '4', '44', NULL, 'test', '2', NULL, '2020-07-02 07:02:03', '2020-12-03 06:05:05'),
(2, '30', 'XMAS OFFER', '20% DISCOUNT ON KIDS ALL SERVICES', '2', NULL, NULL, NULL, '1', NULL, '2020-07-16 08:36:53', '2020-12-01 07:56:33'),
(3, 'admin', 'AD- RED BOX SALON 30% DISCOUNT', 'ON ALL HAIR CUTS', '1', '23', NULL, NULL, '1', NULL, '2020-10-21 14:01:31', '2020-12-05 03:34:55'),
(4, '14', 'higness', 'we would like to discuss on covid on media today', '2', NULL, NULL, NULL, '0', NULL, '2020-11-16 03:59:22', '2020-11-16 03:59:22'),
(5, 'admin', 'golden', 'skin treatment', '1', NULL, NULL, NULL, '1', NULL, '2020-11-22 06:52:09', '2020-11-22 06:52:09'),
(6, 'admin', 'test', 'test', '2', NULL, NULL, NULL, '1', NULL, '2020-11-23 05:29:10', '2020-11-23 05:29:10'),
(7, 'admin', 'Tariq is testing today', 'We are testing the application', '2', NULL, NULL, NULL, '1', NULL, '2020-11-24 11:04:21', '2020-11-24 11:04:21'),
(8, '14', 'rithu saloun copuon cose tariq 50%', 'we have sale 50% on the orders', '2', NULL, NULL, NULL, '1', NULL, '2020-11-24 12:34:15', '2020-11-24 12:34:44'),
(9, 'admin', 'Testing', 'Testing', '2', '23,54', NULL, NULL, '1', NULL, '2020-12-01 05:07:23', '2020-12-01 07:58:31'),
(10, 'admin', 'testing purpose', 'alert check', '4', '23', NULL, NULL, '1', NULL, '2020-12-02 04:07:01', '2020-12-02 04:07:01'),
(11, 'admin', 'Test', 'test', '3', NULL, '14', NULL, '1', NULL, '2020-12-03 01:22:33', '2020-12-04 04:14:04'),
(13, 'admin', 'test', 'test05', '4', '23', NULL, NULL, '1', NULL, '2020-12-05 06:52:15', '2020-12-05 06:52:15'),
(14, '81', 'Winter offer', '1+1', '2', NULL, NULL, NULL, '0', NULL, '2020-12-05 07:57:58', '2020-12-05 07:57:58');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reviews` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `invoice_id`, `salon_id`, `customer_id`, `comments`, `reviews`, `status`, `created_at`, `updated_at`) VALUES
(1, 'INV-000001', '14', '23', 'Really Good', '4', '0', NULL, '2020-10-18 00:26:49'),
(2, 'INV-000001', '14', '23', 'Not Bad', '3', '0', NULL, '2020-10-18 17:04:42'),
(3, 'INV-000001', '19', '23', 'Really Good', '4', '0', NULL, NULL),
(4, 'INV-000001', '20', '23', 'Really Good', '4', '0', NULL, NULL),
(5, 'INV-000001', '21', '23', 'Really Good', '4', '0', NULL, '2020-10-08 17:04:24'),
(8, '62', '14', '47', 'my services was good I enjoyed', '5', '0', '2020-11-24 12:26:38', '2020-11-24 12:26:38'),
(9, '93', '14', '23', 'Good services', '5', '0', '2020-12-03 05:58:19', '2020-12-03 05:58:19');

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
(1, 'Admin', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', NULL, 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', '0', '2020-07-17 05:51:35', '2020-11-29 08:26:45'),
(3, 'sam', NULL, 'on', 'on', NULL, NULL, NULL, NULL, 'on', NULL, NULL, 'on', NULL, NULL, 'on', 'on', 'on', NULL, NULL, NULL, 'on', NULL, NULL, NULL, 'on', NULL, 'on', 'on', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2020-11-23 06:05:40', '2020-11-23 06:05:40'),
(4, 'employee', NULL, NULL, 'on', NULL, NULL, NULL, 'on', NULL, NULL, NULL, 'on', NULL, NULL, NULL, 'on', NULL, NULL, NULL, NULL, 'on', NULL, NULL, NULL, NULL, NULL, 'on', NULL, NULL, NULL, 'on', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2020-11-24 11:16:44', '2020-11-24 11:16:44');

-- --------------------------------------------------------

--
-- Table structure for table `salon_customers`
--

CREATE TABLE `salon_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_from` int(11) NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staus` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salon_customers`
--

INSERT INTO `salon_customers` (`id`, `booking_id`, `salon_id`, `customer_id`, `message_from`, `date`, `time`, `text`, `staus`, `created_at`, `updated_at`) VALUES
(24, '1', '14', '23', 0, NULL, NULL, 'hiiiii', '0', '2020-10-23 03:09:49', '2020-10-23 03:09:49'),
(25, '1', '14', '23', 0, NULL, NULL, 'hiiiii', '0', '2020-10-23 03:10:13', '2020-10-23 03:10:13'),
(26, '1', '14', '23', 0, NULL, NULL, 'hiiiii', '0', '2020-10-23 03:10:51', '2020-10-23 03:10:51'),
(27, '1', '14', '23', 0, NULL, NULL, 'hello', '0', '2020-10-23 03:11:09', '2020-10-23 03:11:09'),
(28, '1', '14', '23', 0, NULL, NULL, 'hello', '0', '2020-10-23 03:12:32', '2020-10-23 03:12:32'),
(29, '1', '14', '23', 0, NULL, NULL, 'hello123', '0', '2020-10-23 03:14:30', '2020-10-23 03:14:30'),
(30, '1', '14', '23', 1, NULL, NULL, 'hi', '0', '2020-10-23 03:14:51', '2020-10-23 03:14:51'),
(31, '1', '14', '23', 0, NULL, NULL, 'hello123', '0', '2020-10-23 03:16:47', '2020-10-23 03:16:47'),
(32, '1', '14', '23', 0, NULL, NULL, 'hello123', '0', '2020-10-23 03:18:44', '2020-10-23 03:18:44'),
(33, '1', '14', '23', 0, NULL, NULL, 'hello123', '0', '2020-10-23 03:18:49', '2020-10-23 03:18:49'),
(34, '1', '14', '23', 0, NULL, NULL, 'hello1234', '0', '2020-10-23 03:20:46', '2020-10-23 03:20:46'),
(35, '1', '14', '23', 0, NULL, NULL, 'hello1234', '0', '2020-10-23 03:25:25', '2020-10-23 03:25:25'),
(36, '1', '14', '23', 0, NULL, NULL, 'hello1234', '0', '2020-10-23 03:28:08', '2020-10-23 03:28:08'),
(37, '1', '14', '23', 0, NULL, NULL, 'hello1234', '0', '2020-10-23 03:34:55', '2020-10-23 03:34:55'),
(38, '1', '14', '23', 0, NULL, NULL, 'hi', '0', '2020-10-23 03:35:00', '2020-10-23 03:35:00'),
(39, '1', '14', '23', 0, NULL, NULL, '123234', '0', '2020-10-23 03:35:19', '2020-10-23 03:35:19'),
(40, '1', '14', '23', 0, NULL, NULL, 'hi', '0', '2020-10-23 03:35:38', '2020-10-23 03:35:38'),
(41, '1', '14', '23', 1, NULL, NULL, 'hi', '0', '2020-10-23 03:42:53', '2020-10-23 03:42:53'),
(44, '1', '14', '23', 1, NULL, NULL, 'hi', '0', '2020-10-23 05:45:48', '2020-10-23 05:45:48'),
(45, '1', '14', '23', 0, NULL, NULL, 'hi', '0', '2020-10-23 05:47:27', '2020-10-23 05:47:27'),
(47, '1', '14', '23', 0, NULL, NULL, 'Howdy', '0', '2020-10-23 05:54:43', '2020-10-23 05:54:43'),
(48, '1', '14', '23', 1, NULL, NULL, '121314', '0', '2020-10-23 05:55:18', '2020-10-23 05:55:18'),
(49, '1', '14', '23', 0, NULL, NULL, 'Working right', '0', '2020-10-23 06:00:43', '2020-10-23 06:00:43'),
(50, '1', '14', '23', 1, NULL, NULL, '632', '0', '2020-10-23 06:00:59', '2020-10-23 06:00:59'),
(51, '1', '14', '23', 0, NULL, NULL, 'Hi', '0', '2020-10-23 06:04:33', '2020-10-23 06:04:33'),
(52, '1', '14', '23', 0, NULL, NULL, 'Hi', '0', '2020-10-23 06:07:10', '2020-10-23 06:07:10'),
(53, '1', '14', '23', 0, NULL, NULL, 'Ji', '0', '2020-10-23 06:08:26', '2020-10-23 06:08:26'),
(54, '1', '14', '23', 0, NULL, NULL, 'Hi', '0', '2020-10-23 06:10:09', '2020-10-23 06:10:09'),
(55, '1', '14', '23', 0, NULL, NULL, 'Ji', '0', '2020-10-23 06:12:17', '2020-10-23 06:12:17'),
(56, '1', '14', '23', 0, NULL, NULL, 'Hi', '0', '2020-10-23 06:13:49', '2020-10-23 06:13:49'),
(57, '1', '14', '23', 0, NULL, NULL, 'Kk', '0', '2020-10-23 06:15:19', '2020-10-23 06:15:19'),
(58, '1', '14', '23', 1, NULL, NULL, 'ok', '0', '2020-10-23 06:16:23', '2020-10-23 06:16:23'),
(59, '1', '14', '23', 0, NULL, NULL, 'Hi', '0', '2020-10-23 06:17:09', '2020-10-23 06:17:09'),
(60, '1', '14', '23', 0, NULL, NULL, 'Ok', '0', '2020-10-23 06:19:56', '2020-10-23 06:19:56'),
(61, '1', '14', '23', 0, NULL, NULL, 'OkI', '0', '2020-10-23 06:21:22', '2020-10-23 06:21:22'),
(62, '1', '14', '23', 0, NULL, NULL, 'K', '0', '2020-10-23 06:21:35', '2020-10-23 06:21:35'),
(63, '33', '14', '25', 0, NULL, NULL, 'Hiii', '0', '2020-10-25 11:05:09', '2020-10-25 11:05:09'),
(64, '33', '14', '25', 0, NULL, NULL, 'Hiii', '0', '2020-10-25 11:05:12', '2020-10-25 11:05:12'),
(65, '33', '14', '25', 0, NULL, NULL, 'Hiii', '0', '2020-10-25 11:05:12', '2020-10-25 11:05:12'),
(66, '33', '14', '25', 0, NULL, NULL, 'Hiii', '0', '2020-10-25 11:05:13', '2020-10-25 11:05:13'),
(67, '33', '14', '25', 0, NULL, NULL, NULL, '0', '2020-10-25 11:05:14', '2020-10-25 11:05:14'),
(68, '33', '14', '25', 0, NULL, NULL, NULL, '0', '2020-10-25 11:05:15', '2020-10-25 11:05:15'),
(69, '33', '14', '25', 0, NULL, NULL, 'hello', '0', '2020-10-25 11:05:20', '2020-10-25 11:05:20'),
(70, '33', '14', '25', 0, NULL, NULL, NULL, '0', '2020-10-25 11:05:21', '2020-10-25 11:05:21'),
(71, '33', '14', '25', 0, NULL, NULL, NULL, '0', '2020-10-25 11:22:00', '2020-10-25 11:22:00'),
(72, '33', '14', '25', 0, NULL, NULL, NULL, '0', '2020-10-25 11:22:02', '2020-10-25 11:22:02'),
(73, '33', '14', '25', 0, NULL, NULL, NULL, '0', '2020-10-25 11:22:05', '2020-10-25 11:22:05'),
(74, '31', '14', '23', 0, NULL, NULL, 'Hi', '0', '2020-10-25 12:19:37', '2020-10-25 12:19:37'),
(75, '31', '14', '23', 0, NULL, NULL, NULL, '0', '2020-10-25 12:19:45', '2020-10-25 12:19:45'),
(76, '38', '14', '23', 0, NULL, NULL, 'Hi', '0', '2020-10-27 21:18:29', '2020-10-27 21:18:29'),
(77, '39', '14', '29', 0, NULL, NULL, 'Ui', '0', '2020-11-03 11:25:03', '2020-11-03 11:25:03'),
(78, '39', '14', '29', 0, NULL, NULL, 'Ui', '0', '2020-11-03 11:25:06', '2020-11-03 11:25:06'),
(79, '31', '14', '23', 1, NULL, NULL, 'hi', '0', '2020-11-03 12:44:35', '2020-11-03 12:44:35'),
(80, '32', '14', '23', 1, NULL, NULL, 'hello', '0', '2020-11-10 11:32:46', '2020-11-10 11:32:46'),
(81, '32', '14', '23', 1, NULL, NULL, 'this is from salon let me know what time you come to our salon', '0', '2020-11-10 11:33:31', '2020-11-10 11:33:31'),
(82, '31', '14', '23', 0, NULL, NULL, 'Hello', '0', '2020-11-11 11:37:21', '2020-11-11 11:37:21'),
(83, '31', '14', '23', 0, NULL, NULL, 'Hello', '0', '2020-11-11 11:37:23', '2020-11-11 11:37:23'),
(84, '31', '14', '23', 0, NULL, NULL, 'Hello', '0', '2020-11-11 11:37:24', '2020-11-11 11:37:24'),
(85, '31', '14', '23', 0, NULL, NULL, 'Hello', '0', '2020-11-11 11:37:25', '2020-11-11 11:37:25'),
(86, '31', '14', '23', 0, NULL, NULL, 'Hello', '0', '2020-11-11 11:37:25', '2020-11-11 11:37:25'),
(87, '31', '14', '23', 0, NULL, NULL, 'Hello', '0', '2020-11-11 11:37:26', '2020-11-11 11:37:26'),
(88, '31', '14', '23', 0, NULL, NULL, 'Hello', '0', '2020-11-11 11:37:27', '2020-11-11 11:37:27'),
(89, '48', '14', '34', 0, NULL, NULL, 'Ji', '0', '2020-11-16 16:28:27', '2020-11-16 16:28:27'),
(90, '48', '14', '34', 0, NULL, NULL, 'Hi', '0', '2020-11-16 16:28:30', '2020-11-16 16:28:30'),
(91, '48', '14', '34', 0, NULL, NULL, 'Hi', '0', '2020-11-16 16:28:31', '2020-11-16 16:28:31'),
(92, '49', '18', '34', 0, NULL, NULL, 'Hello', '0', '2020-11-17 19:53:37', '2020-11-17 19:53:37'),
(93, '49', '18', '34', 0, NULL, NULL, 'Hello', '0', '2020-11-17 19:53:40', '2020-11-17 19:53:40'),
(94, '53', '18', '46', 0, NULL, NULL, 'Hi.. I miss the appointment can you reschedule it', '0', '2020-11-21 14:57:00', '2020-11-21 14:57:00'),
(95, '53', '18', '46', 0, NULL, NULL, 'Hi.. I miss the appointment can you reschedule it', '0', '2020-11-21 14:57:02', '2020-11-21 14:57:02'),
(96, '53', '18', '46', 0, NULL, NULL, 'Hi.. I miss the appointment can you reschedule it', '0', '2020-11-21 14:57:03', '2020-11-21 14:57:03'),
(97, '53', '18', '46', 0, NULL, NULL, 'hi can you revert..', '0', '2020-11-21 14:57:36', '2020-11-21 14:57:36'),
(98, '52', '18', '46', 0, NULL, NULL, 'Hello', '0', '2020-11-21 15:00:00', '2020-11-21 15:00:00'),
(99, '51', '18', '46', 0, NULL, NULL, 'Hello', '0', '2020-11-24 09:09:12', '2020-11-24 09:09:12'),
(100, '51', '18', '46', 0, NULL, NULL, 'Hello', '0', '2020-11-24 09:09:15', '2020-11-24 09:09:15'),
(101, '51', '18', '46', 0, NULL, NULL, 'Hello', '0', '2020-11-24 09:09:16', '2020-11-24 09:09:16'),
(102, '37', '14', '23', 0, NULL, NULL, 'Hi', '0', '2020-11-24 15:42:59', '2020-11-24 15:42:59'),
(103, '37', '14', '23', 0, NULL, NULL, 'Hi', '0', '2020-11-24 15:43:09', '2020-11-24 15:43:09'),
(104, '62', '14', '47', 1, NULL, NULL, 'hi', '0', '2020-11-24 16:22:31', '2020-11-24 16:22:31'),
(105, '62', '14', '47', 1, NULL, NULL, 'how are you', '0', '2020-11-24 16:22:50', '2020-11-24 16:22:50'),
(106, '75', '14', '54', 1, NULL, NULL, 'Hi Aravind', '0', '2020-12-01 13:31:35', '2020-12-01 13:31:35'),
(107, '75', '14', '54', 1, NULL, NULL, 'what can i do?', '0', '2020-12-01 13:49:15', '2020-12-01 13:49:15'),
(108, '75', '14', '54', 1, NULL, NULL, 'hi', '0', '2020-12-01 13:50:05', '2020-12-01 13:50:05'),
(109, '77', '29', '23', 0, NULL, NULL, 'Hi', '0', '2020-12-02 08:00:18', '2020-12-02 08:00:18'),
(110, '77', '29', '23', 0, NULL, NULL, 'Hi', '0', '2020-12-02 08:00:21', '2020-12-02 08:00:21'),
(111, '77', '29', '23', 0, NULL, NULL, 'Hi', '0', '2020-12-02 08:00:22', '2020-12-02 08:00:22'),
(112, '77', '29', '23', 0, NULL, NULL, 'Hi', '0', '2020-12-02 08:00:28', '2020-12-02 08:00:28'),
(113, '77', '29', '23', 0, NULL, NULL, 'Hi', '0', '2020-12-02 08:00:33', '2020-12-02 08:00:33'),
(114, '77', '29', '23', 0, NULL, NULL, 'Hello', '0', '2020-12-02 08:00:48', '2020-12-02 08:00:48'),
(115, '75', '14', '54', 0, NULL, NULL, 'hi', '0', '2020-12-02 08:33:04', '2020-12-02 08:33:04'),
(116, '75', '14', '54', 1, NULL, NULL, 'hi', '0', '2020-12-02 08:33:23', '2020-12-02 08:33:23'),
(117, '76', '21', '23', 0, NULL, NULL, 'hi', '0', '2020-12-02 08:45:49', '2020-12-02 08:45:49'),
(118, '75', '14', '54', 0, NULL, NULL, 'Hi', '0', '2020-12-02 08:53:38', '2020-12-02 08:53:38'),
(119, '75', '14', '54', 0, NULL, NULL, 'Hi', '0', '2020-12-02 08:53:40', '2020-12-02 08:53:40'),
(120, '75', '14', '54', 0, NULL, NULL, 'Hi', '0', '2020-12-02 08:53:42', '2020-12-02 08:53:42'),
(121, '75', '14', '54', 1, NULL, NULL, 'hi', '0', '2020-12-02 09:03:35', '2020-12-02 09:03:35'),
(122, '75', '14', '54', 1, NULL, NULL, 'Hi', '0', '2020-12-02 23:51:00', '2020-12-02 23:51:00'),
(123, '74', '14', '23', 0, NULL, NULL, 'Hi', '0', '2020-12-03 02:04:37', '2020-12-03 02:04:37'),
(124, '74', '14', '23', 1, NULL, NULL, 'How are you', '0', '2020-12-03 02:04:52', '2020-12-03 02:04:52'),
(125, '74', '14', '23', 1, NULL, NULL, 'Where is you shop', '0', '2020-12-03 02:07:10', '2020-12-03 02:07:10'),
(126, '74', '14', '23', 0, NULL, NULL, 'Near wtc', '0', '2020-12-03 02:07:20', '2020-12-03 02:07:20'),
(127, '74', '14', '23', 1, NULL, NULL, 'Ok', '0', '2020-12-03 02:07:35', '2020-12-03 02:07:35'),
(128, '73', '14', '23', 1, NULL, NULL, 'Hi', '0', '2020-12-03 02:16:13', '2020-12-03 02:16:13'),
(129, '93', '14', '23', 1, NULL, NULL, 'Hello', '0', '2020-12-03 09:56:31', '2020-12-03 09:56:31'),
(130, '93', '14', '23', 1, NULL, NULL, 'Hello', '0', '2020-12-03 09:56:32', '2020-12-03 09:56:32'),
(131, '93', '14', '23', 1, NULL, NULL, 'Hegrgd', '0', '2020-12-03 09:57:25', '2020-12-03 09:57:25'),
(132, '93', '14', '23', 1, NULL, NULL, 'Hegrgd', '0', '2020-12-03 09:57:25', '2020-12-03 09:57:25'),
(133, '93', '14', '23', 1, NULL, NULL, 'HegrgdGrheb', '0', '2020-12-03 09:57:27', '2020-12-03 09:57:27'),
(134, '93', '14', '23', 1, NULL, NULL, 'HegrgdGrheb', '0', '2020-12-03 09:57:28', '2020-12-03 09:57:28'),
(135, '68', '14', '23', 1, NULL, NULL, 'hello', '0', '2020-12-03 10:02:14', '2020-12-03 10:02:14'),
(136, '76', '21', '23', 0, NULL, NULL, 'hi', '0', '2020-12-03 15:33:04', '2020-12-03 15:33:04');

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
(1, 'Trial', '0', '1', '30', '0', '5', '0', '2020-08-24 06:44:08', '2020-08-24 06:44:08'),
(7, 'Basic Plan', '1000', '2', '3', '0', '5', '0', '2020-07-17 06:49:53', '2020-11-28 08:44:50'),
(9, 'GOLD Pack', '3000', '2', '6', '500', 'Saturday', '0', '2020-11-04 03:53:38', '2020-11-21 10:06:15'),
(10, 'Queen Heart', '3000', '2', '7', '500', '10', '0', '2020-11-28 08:42:21', '2020-11-28 08:45:19'),
(11, 'GOLDEST', '1000', '2', '3', '200', '10', '0', '2020-11-28 08:43:16', '2020-11-28 08:45:33'),
(12, 'FEV HEART', '5000', '2', '12', '500', '15', '0', '2020-11-28 08:44:10', '2020-11-28 08:46:00');

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
(15, '7', '', '2020-11-28 08:44:50', '2020-11-28 08:44:50'),
(16, '9', 'Kids ', '2020-11-28 08:45:02', '2020-11-28 08:45:02'),
(17, '10', '', '2020-11-28 08:45:19', '2020-11-28 08:45:19'),
(18, '11', '', '2020-11-28 08:45:33', '2020-11-28 08:45:33'),
(19, '12', '', '2020-11-28 08:46:00', '2020-11-28 08:46:00');

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
(34, '2020-08-24', '2020-09-07', '13', 'Inba', NULL, 'inba@gmail.com', '0', '2020-08-24 08:14:23', '2020-08-24 08:14:23'),
(35, '2020-09-28', '2020-10-12', '14', 'Rithvika', 'Rithu\'s salon', 'rithusalon@gmail.com', '0', '2020-09-28 10:14:09', '2020-09-28 10:14:09'),
(36, '2020-09-28', '2020-10-12', '15', 'Rithvika', 'Rithu\'s', 'rithu8798', '0', '2020-09-28 10:14:51', '2020-09-28 10:14:51'),
(37, '2020-09-28', '2020-10-12', '16', 'Rithvika', 'Rithu\'s', 'rithugold98@gmail.com', '0', '2020-09-28 10:15:23', '2020-09-28 10:15:23'),
(38, '2020-09-28', '2020-10-12', '17', 'Rithvika', 'Rithu\'s', 'rithugold9778@gmail.com', '0', '2020-09-28 10:16:05', '2020-09-28 10:16:05'),
(39, '2020-09-28', '2020-10-12', '18', 'BoomikaShri', 'Shreethu Boomika', 'boomiboomi@gmail.com', '0', '2020-09-28 10:18:26', '2020-09-28 10:18:26'),
(40, '2020-09-28', '2020-10-12', '19', 'Varuneesha', 'Varuneesha', 'varuneesh93@gmail.com', '0', '2020-09-28 10:20:17', '2020-09-28 10:20:17'),
(41, '2020-09-28', '2020-10-12', '20', 'shilpa', 'shilpa', 'shilpashri43@gmail.com', '0', '2020-09-28 10:21:59', '2020-09-28 10:21:59'),
(42, '2020-09-28', '2020-10-12', '21', 'Greesh', 'Greesh unix', 'greesh73@gmail.com', '0', '2020-09-28 10:23:27', '2020-09-28 10:23:27'),
(43, '2020-09-28', '2020-10-12', '22', 'swarnithsha', 'Swarnithsha', 'swarni23@gmail.com', '0', '2020-09-28 10:25:23', '2020-09-28 10:25:23'),
(44, '2020-09-28', '2020-10-12', '23', 'Dhuruveena', 'Dhuruveena', 'dhuruv@gmail.com', '0', '2020-09-28 10:27:19', '2020-09-28 10:27:19'),
(45, '2020-09-28', '2020-10-12', '24', 'Grekish', 'Grekish', 'ggrekish', '0', '2020-09-28 10:28:47', '2020-09-28 10:28:47'),
(46, '2020-09-28', '2020-10-12', '25', 'Bhavesha', NULL, 'bhavi@gmail.com', '0', '2020-09-28 10:30:01', '2020-09-28 10:30:01'),
(47, '2020-09-28', '2020-10-12', '26', 'shreeja', 'Glow Pearl', 'shreejashri@gmail.com', '0', '2020-09-28 10:31:33', '2020-09-28 10:31:33'),
(48, '2020-09-28', '2020-10-12', '27', 'Surjeshvi', 'Surjeshvi', 'surjeshvi@gmail.com', '0', '2020-09-28 10:33:26', '2020-09-28 10:33:26'),
(49, '2020-09-28', '2020-10-12', '28', 'Gulbeezsha', 'Gulbeezsha', 'gulbeesh@gmail.com', '0', '2020-09-28 10:35:50', '2020-09-28 10:35:50'),
(50, '2020-09-28', '2020-10-12', '29', 'Clarie Shaw', NULL, 'clarie@gmail.com', '0', '2020-09-28 10:39:25', '2020-09-28 10:39:25'),
(51, '2020-09-28', '2020-10-12', '30', 'Gripeeshk', NULL, 'gripeesh@gmail.com', '0', '2020-09-28 10:41:56', '2020-09-28 10:41:56'),
(52, '2020-09-28', '2020-10-12', '31', 'Kalishfa', NULL, 'kalish@gmail.com', '0', '2020-09-28 10:42:38', '2020-09-28 10:42:38'),
(53, '2020-11-28', '2020-12-12', '54', 'ARavind', 'Aravind Salon', 'aravind@gmail.com', '0', '2020-11-28 08:03:00', '2020-11-28 08:03:00'),
(54, '2020-11-28', '2020-12-12', '55', 'shalifhahaseen', NULL, 'shalifhahaseen@protonmail.com', '0', '2020-11-28 08:05:38', '2020-11-28 08:05:38'),
(55, '2020-11-29', '2020-12-13', '56', 'Aravind', 'Aravind Salon', 'aravind.0216@gmail.com', '0', '2020-11-29 11:19:27', '2020-11-29 11:19:27'),
(56, '2020-11-29', '2020-12-13', '57', 'Aravind', 'Aravind Salon', 'aravind@lrbinfotech.com', '0', '2020-11-29 11:34:05', '2020-11-29 11:34:05'),
(57, '2020-11-29', '2020-12-13', '58', 'Aravind', 'Aravind Salon', 'aravind@lrbinfotech.com', '0', '2020-11-29 11:39:56', '2020-11-29 11:39:56'),
(58, '2020-11-29', '2020-12-13', '59', 'aravind', 'Aravind Salon', 'aravind.0216@gmail.com', '0', '2020-11-29 11:44:56', '2020-11-29 11:44:56'),
(59, '2020-11-29', '2020-12-13', '60', 'aravind', 'Aravind Salon', 'aravind.0216@gmail.com', '0', '2020-11-29 11:49:04', '2020-11-29 11:49:04'),
(60, '2020-11-29', '2020-12-13', '61', 'aravind', 'Aravind Salon', 'aravind.0216@gmail.com', '0', '2020-11-29 11:51:34', '2020-11-29 11:51:34'),
(61, '2020-11-29', '2020-12-13', '62', 'aravind', 'Aravind Salon', 'aravind.0216@gmail.com', '0', '2020-11-29 11:53:58', '2020-11-29 11:53:58'),
(62, '2020-11-29', '2020-12-13', '63', 'aravind', 'Aravind Salon', 'aravind.0216@gmail.com', '0', '2020-11-29 12:00:36', '2020-11-29 12:00:36'),
(63, '2020-11-29', '2020-12-13', '64', 'Aravindkumar R', 'Aravind Salon', 'aravind.0216@gmail.com', '0', '2020-11-29 12:03:35', '2020-11-29 12:03:35'),
(64, '2020-12-02', '2020-12-16', '65', 'Kumar', 'Singapore Spa', 'aravind@lrbinfotech.com', '0', '2020-12-02 05:33:53', '2020-12-02 05:33:53'),
(65, '2020-12-02', '2020-12-16', '66', 'Kumar', 'Singapore Spa', 'aravind@lrbinfotech.com', '0', '2020-12-02 05:34:56', '2020-12-02 05:34:56'),
(66, '2020-12-02', '2020-12-16', '67', 'Kumar', 'Singapore Spa', 'aravind@lrbinfotech.com', '0', '2020-12-02 05:37:05', '2020-12-02 05:37:05'),
(67, '2020-12-02', '2020-12-16', '68', 'Kumar', 'Singapore Spa', 'aravind@lrbinfotech.com', '0', '2020-12-02 05:41:36', '2020-12-02 05:41:36'),
(68, '2020-12-02', '2020-12-16', '69', 'Kumar', 'Singapore Spa', 'aravind@lrbinfotech.com', '0', '2020-12-02 05:46:57', '2020-12-02 05:46:57'),
(69, '2020-12-02', '2020-12-16', '70', 'Kumar', 'Kumar Spa', 'aravind@lrbinfotech.com', '0', '2020-12-02 07:02:50', '2020-12-02 07:02:50'),
(70, '2020-12-02', '2020-12-16', '71', 'Aravind', 'Singapore Spa', 'aravind@lrbinfotech.com', '0', '2020-12-02 07:15:46', '2020-12-02 07:15:46'),
(71, '2020-12-02', '2020-12-16', '72', 'Aravind', 'Singapore Spa', 'aravind@lrbinfotech.com', '0', '2020-12-02 07:28:17', '2020-12-02 07:28:17'),
(72, '2020-12-02', '2020-12-16', '73', 'kumar', 'Singapore Spa', 'aravind@lrbinfotech.com', '0', '2020-12-02 07:30:39', '2020-12-02 07:30:39'),
(73, '2020-12-02', '2020-12-16', '74', 'Kumar', 'Singapore Spa', 'aravind@lrbinfotech.com', '0', '2020-12-02 07:45:53', '2020-12-02 07:45:53'),
(74, '2020-12-02', '2020-12-16', '75', 'Kumar', 'Singapore Spa', 'aravind@lrbinfotech.com', '0', '2020-12-02 07:58:45', '2020-12-02 07:58:45'),
(75, '2020-12-02', '2020-12-16', '76', 'Kumar', 'Singapore Spa', 'aravind@lrbinfotech.com', '0', '2020-12-02 08:02:44', '2020-12-02 08:02:44'),
(76, '2020-12-02', '2020-12-16', '77', 'Kumar', 'Singapore Spa', 'aravind@lrbinfotech.com', '0', '2020-12-02 09:35:03', '2020-12-02 09:35:03'),
(77, '2020-12-03', '2020-12-17', '78', 'gds', 'gds', 'gdg', '0', '2020-12-03 03:29:51', '2020-12-03 03:29:51'),
(78, '2020-12-03', '2020-12-17', '79', 'Aravind', NULL, 'aravind@lrbinfotech.com', '0', '2020-12-03 03:39:27', '2020-12-03 03:39:27'),
(79, '2020-12-03', '2020-12-17', '80', 'thowsif', 'Salon', 'thowsif@lrbinfotech.com', '1', '2020-12-03 05:12:02', '2020-12-03 05:18:51'),
(80, '2020-12-05', '2020-12-19', '81', 'SAm', 'Sam Salon', 'fitnessforeverfit@gmail.com', '1', '2020-12-05 05:50:53', '2020-12-05 07:55:52'),
(81, '2020-12-05', '2020-12-19', '82', 'Aravind', 'Aravind Salon', 'aravind.0216@gmail.com', '0', '2020-12-05 09:54:37', '2020-12-05 09:54:37'),
(82, '2020-12-05', '2020-12-19', '83', 'Aravind', 'Aravind Salon', 'aravind.0216@gmail.com', '0', '2020-12-05 09:55:08', '2020-12-05 09:55:08'),
(83, '2020-12-05', '2020-12-19', '84', 'aravind', 'Aravind Salon', 'aravind.0216@gmail.com', '0', '2020-12-05 09:58:21', '2020-12-05 09:58:21'),
(84, '2020-12-05', '2020-12-19', '85', 'Thowsif', 'Thowsif', 'thowsif@lrbinfotech.com', '0', '2020-12-05 13:57:31', '2020-12-05 13:57:31'),
(85, '2020-12-06', '2020-12-20', '86', 'Aravind', NULL, 'aravind.0216@gmail.com', '0', '2020-12-06 02:55:22', '2020-12-06 02:55:22');

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
(2, '30', 'Admin', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', '0', '2020-07-16 08:32:58', '2020-07-16 08:32:58'),
(3, '23', 'admin', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', '0', '2020-09-28 10:48:48', '2020-09-28 10:48:48'),
(4, '14', 'admin', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', '0', '2020-09-28 11:12:12', '2020-09-28 11:12:12'),
(5, '18', 'admin', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', '0', '2020-09-28 11:17:46', '2020-09-28 11:17:46'),
(6, '19', 'admin', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', '0', '2020-09-28 11:33:51', '2020-09-28 11:33:51'),
(7, '20', 'admin', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', '0', '2020-09-28 11:40:16', '2020-09-28 11:40:16'),
(8, '21', 'admin', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', '0', '2020-09-28 11:50:49', '2020-09-28 11:50:49'),
(9, '22', 'admin', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', '0', '2020-09-28 11:57:10', '2020-09-28 11:57:10'),
(10, '24', 'admin', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', '0', '2020-09-28 12:07:05', '2020-09-28 12:07:05'),
(11, '25', 'admin', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', '0', '2020-09-28 12:32:24', '2020-09-28 12:32:24');

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
(3, '14', '2', '501', '30', '0', '2020-07-07 06:29:12', '2020-11-22 01:42:38'),
(4, '14', '3', '660', '60', '0', '2020-07-07 06:29:42', '2020-11-22 01:42:54'),
(5, '18', '2', '600', '60', '0', '2020-07-07 06:29:42', '2020-07-07 06:29:42'),
(6, '19', '2', '600', '60', '0', '2020-07-07 06:29:42', '2020-07-07 06:29:42'),
(7, '20', '2', '600', '60', '0', '2020-07-07 06:29:42', '2020-07-07 06:29:42'),
(8, '21', '2', '600', '60', '0', '2020-07-07 06:29:42', '2020-07-07 06:29:42'),
(9, '22', '2', '600', '60', '0', '2020-07-07 06:29:42', '2020-07-07 06:29:42'),
(10, '22', '3', '600', '60', '0', '2020-07-07 06:29:42', '2020-07-07 06:29:42'),
(11, '21', '3', '600', '60', '0', '2020-07-07 06:29:42', '2020-07-07 06:29:42'),
(12, '20', '3', '600', '60', '0', '2020-07-07 06:29:42', '2020-07-07 06:29:42'),
(13, '19', '3', '600', '60', '0', '2020-07-07 06:29:42', '2020-07-07 06:29:42'),
(14, '14', '4', '1000', '105', '0', '2020-10-22 03:38:09', '2020-10-22 03:38:09'),
(15, '14', '3', '750', '45', '0', '2020-10-22 03:38:35', '2020-10-22 03:38:35'),
(16, '14', '6', '500', '60', '0', '2020-10-22 03:38:57', '2020-10-22 03:38:57'),
(17, '18', '5', '600', '75', '0', '2020-10-22 03:52:07', '2020-10-22 03:52:07'),
(18, '18', '6', '400', '60', '0', '2020-10-22 03:52:18', '2020-10-22 03:52:29'),
(19, '18', '8', '500', '105', '0', '2020-10-22 03:52:42', '2020-10-22 03:52:42'),
(20, '18', '11', '700', '90', '0', '2020-10-22 03:53:01', '2020-10-22 03:53:01'),
(21, '19', '4', '1000', '120', '0', '2020-10-22 03:57:05', '2020-10-22 03:57:05'),
(22, '19', '7', '300', '30', '0', '2020-10-22 03:57:23', '2020-10-22 03:57:23'),
(23, '19', '6', '600', '60', '0', '2020-10-22 03:57:37', '2020-10-22 03:57:37'),
(24, '19', '3', '750', '75', '0', '2020-10-22 03:58:05', '2020-10-22 03:58:05'),
(25, '20', '2', '500', '45', '0', '2020-10-22 04:31:47', '2020-10-22 04:31:47'),
(26, '20', '4', '600', '60', '0', '2020-10-22 04:31:59', '2020-10-22 04:31:59'),
(27, '20', '6', '700', '75', '0', '2020-10-22 04:32:11', '2020-10-22 04:32:11'),
(28, '20', '9', '1000', '120', '0', '2020-10-22 04:32:25', '2020-10-22 04:32:25'),
(29, '21', '3', '500', '60', '0', '2020-10-22 04:49:27', '2020-10-22 04:49:27'),
(30, '21', '7', '250', '30', '0', '2020-10-22 04:49:43', '2020-10-22 04:49:43'),
(31, '21', '10', '300', '105', '0', '2020-10-22 04:50:00', '2020-10-22 04:50:00'),
(32, '21', '6', '500', '90', '0', '2020-10-22 04:50:15', '2020-10-22 04:50:15'),
(33, '22', '7', '150', '15', '0', '2020-10-22 05:05:25', '2020-10-22 05:05:25'),
(34, '22', '8', '800', '90', '0', '2020-10-22 05:05:40', '2020-10-22 05:05:40'),
(35, '22', '5', '1000', '75', '0', '2020-10-22 05:05:51', '2020-10-22 05:05:51'),
(36, '23', '3', '2000', '75', '0', '2020-10-22 05:20:53', '2020-10-22 05:20:53'),
(37, '23', '6', '500', '60', '0', '2020-10-22 05:21:03', '2020-10-22 05:21:03'),
(38, '23', '8', '1000', '60', '0', '2020-10-22 05:21:14', '2020-10-22 05:21:14'),
(39, '23', '4', '1800', '90', '0', '2020-10-22 05:21:31', '2020-10-22 05:21:31'),
(40, '24', '2', '300', '60', '0', '2020-10-22 05:36:34', '2020-10-22 05:36:34'),
(41, '24', '4', '1000', '75', '0', '2020-10-22 05:36:56', '2020-10-22 05:36:56'),
(42, '24', '6', '500', '45', '0', '2020-10-22 05:37:11', '2020-10-22 05:37:11'),
(43, '24', '5', '900', '60', '0', '2020-10-22 05:37:22', '2020-10-22 05:37:22'),
(44, '24', '10', '600', '45', '0', '2020-10-22 05:37:37', '2020-10-22 05:37:37'),
(45, '25', '2', '600', '60', '0', '2020-10-22 05:50:53', '2020-10-22 05:50:53'),
(46, '25', '3', '1000', '75', '0', '2020-10-22 05:51:12', '2020-10-22 05:51:12'),
(47, '25', '6', '500', '60', '0', '2020-10-22 05:51:22', '2020-10-22 05:51:22'),
(48, '25', '7', '500', '45', '0', '2020-10-22 05:51:33', '2020-10-22 05:51:33'),
(49, '25', '8', '1000', '75', '0', '2020-10-22 05:51:48', '2020-10-22 05:51:48'),
(51, '14', '2', '100', '45', '0', '2020-11-04 04:59:11', '2020-11-04 04:59:11'),
(52, '14', '12', '200', '45', '0', '2020-11-11 08:26:20', '2020-11-11 08:26:20'),
(53, '18', '12', '1200', '45', '0', '2020-11-11 08:29:01', '2020-11-11 08:29:01'),
(54, '29', '2', '100', '45', '0', '2020-11-12 19:00:49', '2020-11-12 19:00:49'),
(55, '29', '8', '80', '30', '0', '2020-11-12 19:03:24', '2020-11-12 19:03:24'),
(56, '29', '3', '200', '45', '0', '2020-11-13 17:39:34', '2020-11-13 17:39:34'),
(57, '30', '3', '200', '60', '0', '2020-11-13 17:42:13', '2020-11-13 17:42:13'),
(58, '30', '3', '100', '30', '0', '2020-11-13 17:42:28', '2020-11-13 17:42:28'),
(59, '30', '4', '250', '60', '0', '2020-11-13 17:42:42', '2020-11-13 17:42:42'),
(60, '30', '6', '300', '60', '0', '2020-11-13 17:42:52', '2020-11-13 17:42:52'),
(61, '30', '9', '700', '120', '0', '2020-11-13 17:43:32', '2020-11-13 17:43:32'),
(62, '31', '2', '100', '30', '0', '2020-11-13 17:45:35', '2020-11-13 17:45:35'),
(63, '31', '2', '300', '60', '0', '2020-11-13 17:45:45', '2020-11-13 17:45:45'),
(64, '31', '4', '500', '60', '0', '2020-11-13 17:45:54', '2020-11-13 17:45:54'),
(65, '31', '7', '150', '30', '0', '2020-11-13 17:46:07', '2020-11-13 17:46:07'),
(66, '26', '2', '100', '30', '0', '2020-11-14 15:52:33', '2020-11-14 15:52:33'),
(67, '26', '3', '200', '45', '0', '2020-11-14 15:52:51', '2020-11-14 15:52:51'),
(68, '26', '4', '100', '60', '0', '2020-11-14 15:53:05', '2020-11-14 15:53:05'),
(69, '26', '7', '100', '90', '0', '2020-11-14 15:53:18', '2020-11-14 15:53:18'),
(70, '26', '11', '500', '60', '0', '2020-11-14 15:53:31', '2020-11-14 15:53:31'),
(71, '28', '2', '100', '30', '0', '2020-11-14 16:01:59', '2020-11-14 16:01:59'),
(72, '28', '3', '200', '45', '0', '2020-11-14 16:02:10', '2020-11-14 16:02:10'),
(73, '28', '4', '300', '60', '0', '2020-11-14 16:02:22', '2020-11-14 16:02:22'),
(74, '28', '5', '250', '60', '0', '2020-11-14 16:03:41', '2020-11-14 16:03:41'),
(75, '28', '6', '350', '60', '0', '2020-11-14 16:03:56', '2020-11-14 16:03:56'),
(76, '27', '2', '100', '30', '0', '2020-11-14 16:07:28', '2020-11-14 16:07:28'),
(77, '27', '3', '200', '45', '0', '2020-11-14 16:07:37', '2020-11-14 16:07:37'),
(78, '27', '4', '300', '60', '0', '2020-11-14 16:07:48', '2020-11-14 16:07:48'),
(79, '27', '5', '400', '75', '0', '2020-11-14 16:07:58', '2020-11-14 16:07:58'),
(80, '27', '8', '300', '75', '0', '2020-11-14 16:08:10', '2020-11-14 16:08:10'),
(81, '14', '3', '50', '60', '0', '2020-11-24 10:49:56', '2020-12-03 06:17:01');

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
(2, '3', 'Back massage', 'تدليك الظهر', '361072824.png', '0', '2020-10-16 20:03:40', '2020-10-16 20:03:40'),
(3, '3', 'beauty clinic', 'عيادة تجميل', '633431107.png', '0', '2020-10-16 20:04:15', '2020-10-16 20:04:15'),
(4, NULL, 'Makeup services', 'خدمة المكياج', '1463732654.png', '0', '2020-10-22 02:37:54', '2020-11-13 11:47:23'),
(5, NULL, 'Facial Treatments', 'علاج الوجه', '1339173150.png', '0', '2020-10-22 02:54:12', '2020-11-13 11:32:31'),
(6, NULL, 'Hair Care', 'العناية بالشعر', '1361349138.png', '0', '2020-10-22 02:57:10', '2020-11-13 11:32:46'),
(7, NULL, 'Nail Care', 'العناية بالأظافر', '1474202752.png', '0', '2020-10-22 03:00:39', '2020-11-13 11:47:59'),
(8, NULL, 'Skin Services', 'خدمات الجلد', '813246396.png', '0', '2020-10-22 03:06:01', '2020-11-13 11:33:22'),
(9, NULL, 'Bridal services', 'خدمات الزفاف', '658582913.png', '0', '2020-10-22 03:11:49', '2020-11-13 11:33:33'),
(10, NULL, 'waxing', 'الصبح', '855888538.png', '0', '2020-10-22 03:15:14', '2020-11-13 11:36:35'),
(11, NULL, 'Hair styling services', 'خدمات تصفيف الشعر', '820395328.png', '0', '2020-10-22 03:20:37', '2020-11-13 11:34:25'),
(12, '3', 'Foot Care', 'Foot Care', '315269300.png', '0', '2020-11-11 08:25:45', '2020-11-13 11:49:40');

-- --------------------------------------------------------

--
-- Table structure for table `service_times`
--

CREATE TABLE `service_times` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `salon_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `days` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `open_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `close_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
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
(71, '14', 'Sunday', '06:00 AM', '06:30 PM', '1', '2020-07-11 01:00:59', '2020-10-24 15:31:51'),
(72, '14', 'Monday', '06:00 AM', '06:30 PM', '1', '2020-07-11 01:00:59', '2020-10-18 13:56:01'),
(73, '14', 'Tuesday', '06:00 AM', '06:30 PM', '1', '2020-07-11 01:00:59', '2020-10-18 13:56:01'),
(74, '14', 'Wednesday', '06:00 AM', '06:30 PM', '1', '2020-07-11 01:00:59', '2020-10-18 13:56:01'),
(75, '14', 'Thursday', '06:00 AM', '06:30 PM', '1', '2020-07-11 01:00:59', '2020-10-18 13:56:01'),
(76, '14', 'Friday', '06:00 AM', '06:30 PM', '1', '2020-07-11 01:00:59', '2020-10-18 13:56:01'),
(77, '14', 'Saturday', '', '', '2', '2020-07-11 01:00:59', '2020-12-05 08:54:31'),
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
(99, '18', 'Sunday', '08:00 AM', '07:00 PM', '1', '2020-07-11 01:01:18', '2020-10-22 03:55:10'),
(100, '18', 'Monday', '06:30 AM', '06:30 PM', '1', '2020-07-11 01:01:18', '2020-10-22 03:55:10'),
(101, '18', 'Tuesday', '08:00 AM', '09:00 PM', '1', '2020-07-11 01:01:18', '2020-10-22 03:55:10'),
(102, '18', 'Wednesday', '07:30 AM', '06:00 PM', '1', '2020-07-11 01:01:18', '2020-10-22 03:55:10'),
(103, '18', 'Thursday', '07:00 AM', '06:00 PM', '1', '2020-07-11 01:01:18', '2020-10-22 03:55:10'),
(104, '18', 'Friday', '09:00 AM', '09:30 PM', '1', '2020-07-11 01:01:18', '2020-10-22 03:55:10'),
(105, '18', 'Saturday', '05:30 AM', '06:00 PM', '1', '2020-07-11 01:01:18', '2020-10-22 03:55:10'),
(106, '19', 'Sunday', '', '', '2', '2020-07-11 01:01:19', '2020-10-22 04:18:51'),
(107, '19', 'Monday', '08:30 AM', '08:00 PM', '1', '2020-07-11 01:01:19', '2020-10-22 04:18:51'),
(108, '19', 'Tuesday', '08:00 AM', '04:00 PM', '1', '2020-07-11 01:01:19', '2020-10-22 04:18:51'),
(109, '19', 'Wednesday', '10:00 AM', '06:30 PM', '1', '2020-07-11 01:01:19', '2020-10-22 04:18:51'),
(110, '19', 'Thursday', '09:00 AM', '05:00 PM', '1', '2020-07-11 01:01:19', '2020-10-22 04:18:51'),
(111, '19', 'Friday', '09:30 AM', '05:30 PM', '1', '2020-07-11 01:01:19', '2020-10-22 04:18:51'),
(112, '19', 'Saturday', '09:00 AM', '07:00 PM', '1', '2020-07-11 01:01:19', '2020-10-22 04:18:51'),
(113, '20', 'Sunday', '12:00 AM', '11:00 PM', '2', '2020-07-11 01:01:21', '2020-11-14 15:09:30'),
(114, '20', 'Monday', '07:00 AM', '03:00 PM', '1', '2020-07-11 01:01:21', '2020-10-22 04:34:00'),
(115, '20', 'Tuesday', '08:00 AM', '07:00 PM', '1', '2020-07-11 01:01:21', '2020-10-22 04:34:00'),
(116, '20', 'Wednesday', '08:30 AM', '06:00 PM', '1', '2020-07-11 01:01:21', '2020-10-22 04:34:00'),
(117, '20', 'Thursday', '11:30 AM', '05:30 PM', '1', '2020-07-11 01:01:21', '2020-10-22 04:34:00'),
(118, '20', 'Friday', '10:00 AM', '08:00 PM', '1', '2020-07-11 01:01:21', '2020-10-22 04:34:00'),
(119, '20', 'Saturday', '09:00 AM', '04:00 PM', '1', '2020-07-11 01:01:21', '2020-10-22 04:34:00'),
(120, '21', 'Sunday', '08:00 AM', '02:00 PM', '1', '2020-07-11 01:02:41', '2020-10-22 04:51:30'),
(121, '21', 'Monday', '08:30 AM', '08:30 PM', '1', '2020-07-11 01:02:41', '2020-10-22 04:51:30'),
(122, '21', 'Tuesday', '09:30 AM', '07:30 PM', '1', '2020-07-11 01:02:41', '2020-10-22 04:51:30'),
(123, '21', 'Wednesday', '09:00 AM', '06:00 PM', '1', '2020-07-11 01:02:41', '2020-10-22 04:51:30'),
(124, '21', 'Thursday', '09:00 AM', '06:00 PM', '1', '2020-07-11 01:02:41', '2020-10-22 04:51:30'),
(125, '21', 'Friday', '', '', '2', '2020-07-11 01:02:41', '2020-10-22 04:51:30'),
(126, '21', 'Saturday', '09:00 AM', '12:00 PM', '1', '2020-07-11 01:02:41', '2020-10-22 04:51:30'),
(127, '22', 'Sunday', '07:30 AM', '12:00 PM', '1', '2020-07-11 01:22:01', '2020-10-22 05:07:20'),
(128, '22', 'Monday', '08:30 AM', '07:00 PM', '1', '2020-07-11 01:22:01', '2020-10-22 05:07:20'),
(129, '22', 'Tuesday', '09:00 AM', '07:00 PM', '1', '2020-07-11 01:22:01', '2020-10-22 05:07:20'),
(130, '22', 'Wednesday', '09:30 AM', '08:00 PM', '1', '2020-07-11 01:22:01', '2020-10-22 05:07:20'),
(131, '22', 'Thursday', '09:00 AM', '06:00 PM', '1', '2020-07-11 01:22:01', '2020-10-22 05:07:20'),
(132, '22', 'Friday', '', '', '2', '2020-07-11 01:22:01', '2020-10-22 05:07:20'),
(133, '22', 'Saturday', '10:30 AM', '07:00 PM', '1', '2020-07-11 01:22:01', '2020-10-22 05:07:20'),
(134, '23', 'Sunday', '07:00 AM', '02:30 PM', '1', '2020-07-13 05:06:47', '2020-10-22 05:28:22'),
(135, '23', 'Monday', '08:00 AM', '05:30 PM', '1', '2020-07-13 05:06:47', '2020-10-22 05:28:22'),
(136, '23', 'Tuesday', '09:00 AM', '04:30 PM', '1', '2020-07-13 05:06:47', '2020-10-22 05:28:22'),
(137, '23', 'Wednesday', '10:00 AM', '07:00 PM', '1', '2020-07-13 05:06:47', '2020-10-22 05:28:22'),
(138, '23', 'Thursday', '08:30 AM', '04:00 PM', '1', '2020-07-13 05:06:47', '2020-10-22 05:28:22'),
(139, '23', 'Friday', '', '', '2', '2020-07-13 05:06:47', '2020-10-22 05:28:22'),
(140, '23', 'Saturday', '10:00 AM', '06:00 PM', '1', '2020-07-13 05:06:47', '2020-10-22 05:28:22'),
(141, '24', 'Sunday', '09:00 AM', '05:30 PM', '1', '2020-07-13 05:08:37', '2020-10-22 05:38:39'),
(142, '24', 'Monday', '06:30 AM', '12:30 PM', '1', '2020-07-13 05:08:37', '2020-10-22 05:38:39'),
(143, '24', 'Tuesday', '08:30 AM', '06:00 PM', '1', '2020-07-13 05:08:37', '2020-10-22 05:38:39'),
(144, '24', 'Wednesday', '07:00 AM', '02:30 PM', '1', '2020-07-13 05:08:37', '2020-10-22 05:38:39'),
(145, '24', 'Thursday', '09:00 AM', '01:30 PM', '1', '2020-07-13 05:08:37', '2020-10-22 05:38:39'),
(146, '24', 'Friday', '', '', '2', '2020-07-13 05:08:37', '2020-10-22 05:38:39'),
(147, '24', 'Saturday', '10:00 AM', '04:00 PM', '1', '2020-07-13 05:08:37', '2020-10-22 05:38:39'),
(148, '25', 'Sunday', '09:00 AM', '04:30 PM', '1', '2020-07-13 05:19:15', '2020-10-22 05:53:20'),
(149, '25', 'Monday', '09:00 AM', '06:00 PM', '1', '2020-07-13 05:19:15', '2020-10-22 05:53:20'),
(150, '25', 'Tuesday', '10:00 AM', '08:00 PM', '1', '2020-07-13 05:19:15', '2020-10-22 05:53:20'),
(151, '25', 'Wednesday', '10:30 AM', '11:00 PM', '1', '2020-07-13 05:19:15', '2020-10-22 05:53:20'),
(152, '25', 'Thursday', '08:00 AM', '01:00 PM', '1', '2020-07-13 05:19:15', '2020-10-22 05:53:20'),
(153, '25', 'Friday', '', '', '2', '2020-07-13 05:19:15', '2020-10-22 05:53:20'),
(154, '25', 'Saturday', '', '', '2', '2020-07-13 05:19:15', '2020-10-22 05:53:20'),
(155, '26', 'Sunday', '08:00 AM', '05:00 PM', '1', '2020-07-14 00:58:01', '2020-11-14 15:55:29'),
(156, '26', 'Monday', '08:30 AM', '08:00 PM', '1', '2020-07-14 00:58:01', '2020-11-14 15:55:29'),
(157, '26', 'Tuesday', '08:00 AM', '07:00 PM', '1', '2020-07-14 00:58:01', '2020-11-14 15:55:29'),
(158, '26', 'Wednesday', '08:30 AM', '08:00 PM', '1', '2020-07-14 00:58:01', '2020-11-14 15:55:29'),
(159, '26', 'Thursday', '08:30 AM', '09:00 PM', '1', '2020-07-14 00:58:01', '2020-11-14 15:55:29'),
(160, '26', 'Friday', '', '', '', '2020-07-14 00:58:01', '2020-11-14 15:55:29'),
(161, '26', 'Saturday', '', '', '', '2020-07-14 00:58:01', '2020-11-14 15:55:29'),
(162, '27', 'Sunday', '08:00 AM', '10:00 PM', '1', '2020-07-14 05:19:53', '2020-11-14 16:09:54'),
(163, '27', 'Monday', '08:00 AM', '07:00 PM', '1', '2020-07-14 05:19:53', '2020-11-14 16:09:54'),
(164, '27', 'Tuesday', '08:30 AM', '09:30 PM', '1', '2020-07-14 05:19:53', '2020-11-14 16:09:54'),
(165, '27', 'Wednesday', '08:00 AM', '09:00 PM', '1', '2020-07-14 05:19:53', '2020-11-14 16:09:54'),
(166, '27', 'Thursday', '08:30 AM', '08:00 PM', '1', '2020-07-14 05:19:53', '2020-11-14 16:09:54'),
(167, '27', 'Friday', '', '', '', '2020-07-14 05:19:53', '2020-11-14 16:09:54'),
(168, '27', 'Saturday', '', '', '', '2020-07-14 05:19:53', '2020-11-14 16:09:54'),
(169, '28', 'Sunday', '08:30 AM', '06:30 PM', '1', '2020-07-16 07:55:51', '2020-11-14 16:05:49'),
(170, '28', 'Monday', '08:30 AM', '10:00 PM', '1', '2020-07-16 07:55:51', '2020-11-14 16:05:49'),
(171, '28', 'Tuesday', '09:00 AM', '10:00 PM', '1', '2020-07-16 07:55:51', '2020-11-14 16:05:49'),
(172, '28', 'Wednesday', '09:00 AM', '08:00 PM', '1', '2020-07-16 07:55:51', '2020-11-14 16:05:49'),
(173, '28', 'Thursday', '08:30 AM', '09:00 PM', '1', '2020-07-16 07:55:51', '2020-11-14 16:05:49'),
(174, '28', 'Friday', '', '', '', '2020-07-16 07:55:52', '2020-11-14 16:05:49'),
(175, '28', 'Saturday', '', '', '', '2020-07-16 07:55:52', '2020-11-14 16:05:49'),
(176, '29', 'Sunday', '08:00 AM', '10:00 PM', '1', '2020-07-16 07:58:23', '2020-11-12 19:02:37'),
(177, '29', 'Monday', '08:00 AM', '09:30 PM', '1', '2020-07-16 07:58:23', '2020-11-12 19:02:37'),
(178, '29', 'Tuesday', '08:00 AM', '09:30 PM', '1', '2020-07-16 07:58:23', '2020-11-12 19:02:37'),
(179, '29', 'Wednesday', '08:00 AM', '10:00 PM', '1', '2020-07-16 07:58:23', '2020-11-12 19:02:37'),
(180, '29', 'Thursday', '08:30 AM', '09:00 PM', '1', '2020-07-16 07:58:23', '2020-11-12 19:02:37'),
(181, '29', 'Friday', '03:00 AM', '10:00 PM', '1', '2020-07-16 07:58:23', '2020-11-12 19:02:37'),
(182, '29', 'Saturday', '08:00 AM', '11:00 PM', '1', '2020-07-16 07:58:23', '2020-11-12 19:02:37'),
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
(204, '54', 'Sunday', ' ', ' ', '0', '2020-11-28 08:03:00', '2020-11-28 08:03:00'),
(205, '54', 'Monday', ' ', ' ', '0', '2020-11-28 08:03:00', '2020-11-28 08:03:00'),
(206, '54', 'Tuesday', ' ', ' ', '0', '2020-11-28 08:03:00', '2020-11-28 08:03:00'),
(207, '54', 'Wednesday', ' ', ' ', '0', '2020-11-28 08:03:00', '2020-11-28 08:03:00'),
(208, '54', 'Thursday', ' ', ' ', '0', '2020-11-28 08:03:00', '2020-11-28 08:03:00'),
(209, '54', 'Friday', ' ', ' ', '0', '2020-11-28 08:03:00', '2020-11-28 08:03:00'),
(210, '54', 'Saturday', ' ', ' ', '0', '2020-11-28 08:03:00', '2020-11-28 08:03:00'),
(211, '55', 'Sunday', ' ', ' ', '0', '2020-11-28 08:05:38', '2020-11-28 08:05:38'),
(212, '55', 'Monday', ' ', ' ', '0', '2020-11-28 08:05:38', '2020-11-28 08:05:38'),
(213, '55', 'Tuesday', ' ', ' ', '0', '2020-11-28 08:05:38', '2020-11-28 08:05:38'),
(214, '55', 'Wednesday', ' ', ' ', '0', '2020-11-28 08:05:38', '2020-11-28 08:05:38'),
(215, '55', 'Thursday', ' ', ' ', '0', '2020-11-28 08:05:38', '2020-11-28 08:05:38'),
(216, '55', 'Friday', ' ', ' ', '0', '2020-11-28 08:05:38', '2020-11-28 08:05:38'),
(217, '55', 'Saturday', ' ', ' ', '0', '2020-11-28 08:05:38', '2020-11-28 08:05:38'),
(218, '56', 'Sunday', ' ', ' ', '0', '2020-11-29 11:19:27', '2020-11-29 11:19:27'),
(219, '56', 'Monday', ' ', ' ', '0', '2020-11-29 11:19:27', '2020-11-29 11:19:27'),
(220, '56', 'Tuesday', ' ', ' ', '0', '2020-11-29 11:19:27', '2020-11-29 11:19:27'),
(221, '56', 'Wednesday', ' ', ' ', '0', '2020-11-29 11:19:27', '2020-11-29 11:19:27'),
(222, '56', 'Thursday', ' ', ' ', '0', '2020-11-29 11:19:27', '2020-11-29 11:19:27'),
(223, '56', 'Friday', ' ', ' ', '0', '2020-11-29 11:19:27', '2020-11-29 11:19:27'),
(224, '56', 'Saturday', ' ', ' ', '0', '2020-11-29 11:19:27', '2020-11-29 11:19:27'),
(225, '57', 'Sunday', ' ', ' ', '0', '2020-11-29 11:34:05', '2020-11-29 11:34:05'),
(226, '57', 'Monday', ' ', ' ', '0', '2020-11-29 11:34:05', '2020-11-29 11:34:05'),
(227, '57', 'Tuesday', ' ', ' ', '0', '2020-11-29 11:34:05', '2020-11-29 11:34:05'),
(228, '57', 'Wednesday', ' ', ' ', '0', '2020-11-29 11:34:05', '2020-11-29 11:34:05'),
(229, '57', 'Thursday', ' ', ' ', '0', '2020-11-29 11:34:05', '2020-11-29 11:34:05'),
(230, '57', 'Friday', ' ', ' ', '0', '2020-11-29 11:34:05', '2020-11-29 11:34:05'),
(231, '57', 'Saturday', ' ', ' ', '0', '2020-11-29 11:34:05', '2020-11-29 11:34:05'),
(232, '58', 'Sunday', ' ', ' ', '0', '2020-11-29 11:39:56', '2020-11-29 11:39:56'),
(233, '58', 'Monday', ' ', ' ', '0', '2020-11-29 11:39:56', '2020-11-29 11:39:56'),
(234, '58', 'Tuesday', ' ', ' ', '0', '2020-11-29 11:39:56', '2020-11-29 11:39:56'),
(235, '58', 'Wednesday', ' ', ' ', '0', '2020-11-29 11:39:56', '2020-11-29 11:39:56'),
(236, '58', 'Thursday', ' ', ' ', '0', '2020-11-29 11:39:56', '2020-11-29 11:39:56'),
(237, '58', 'Friday', ' ', ' ', '0', '2020-11-29 11:39:56', '2020-11-29 11:39:56'),
(238, '58', 'Saturday', ' ', ' ', '0', '2020-11-29 11:39:56', '2020-11-29 11:39:56'),
(239, '59', 'Sunday', ' ', ' ', '0', '2020-11-29 11:44:55', '2020-11-29 11:44:55'),
(240, '59', 'Monday', ' ', ' ', '0', '2020-11-29 11:44:55', '2020-11-29 11:44:55'),
(241, '59', 'Tuesday', ' ', ' ', '0', '2020-11-29 11:44:56', '2020-11-29 11:44:56'),
(242, '59', 'Wednesday', ' ', ' ', '0', '2020-11-29 11:44:56', '2020-11-29 11:44:56'),
(243, '59', 'Thursday', ' ', ' ', '0', '2020-11-29 11:44:56', '2020-11-29 11:44:56'),
(244, '59', 'Friday', ' ', ' ', '0', '2020-11-29 11:44:56', '2020-11-29 11:44:56'),
(245, '59', 'Saturday', ' ', ' ', '0', '2020-11-29 11:44:56', '2020-11-29 11:44:56'),
(246, '60', 'Sunday', ' ', ' ', '0', '2020-11-29 11:49:04', '2020-11-29 11:49:04'),
(247, '60', 'Monday', ' ', ' ', '0', '2020-11-29 11:49:04', '2020-11-29 11:49:04'),
(248, '60', 'Tuesday', ' ', ' ', '0', '2020-11-29 11:49:04', '2020-11-29 11:49:04'),
(249, '60', 'Wednesday', ' ', ' ', '0', '2020-11-29 11:49:04', '2020-11-29 11:49:04'),
(250, '60', 'Thursday', ' ', ' ', '0', '2020-11-29 11:49:04', '2020-11-29 11:49:04'),
(251, '60', 'Friday', ' ', ' ', '0', '2020-11-29 11:49:04', '2020-11-29 11:49:04'),
(252, '60', 'Saturday', ' ', ' ', '0', '2020-11-29 11:49:04', '2020-11-29 11:49:04'),
(253, '61', 'Sunday', ' ', ' ', '0', '2020-11-29 11:51:34', '2020-11-29 11:51:34'),
(254, '61', 'Monday', ' ', ' ', '0', '2020-11-29 11:51:34', '2020-11-29 11:51:34'),
(255, '61', 'Tuesday', ' ', ' ', '0', '2020-11-29 11:51:34', '2020-11-29 11:51:34'),
(256, '61', 'Wednesday', ' ', ' ', '0', '2020-11-29 11:51:34', '2020-11-29 11:51:34'),
(257, '61', 'Thursday', ' ', ' ', '0', '2020-11-29 11:51:34', '2020-11-29 11:51:34'),
(258, '61', 'Friday', ' ', ' ', '0', '2020-11-29 11:51:34', '2020-11-29 11:51:34'),
(259, '61', 'Saturday', ' ', ' ', '0', '2020-11-29 11:51:34', '2020-11-29 11:51:34'),
(260, '62', 'Sunday', ' ', ' ', '0', '2020-11-29 11:53:58', '2020-11-29 11:53:58'),
(261, '62', 'Monday', ' ', ' ', '0', '2020-11-29 11:53:58', '2020-11-29 11:53:58'),
(262, '62', 'Tuesday', ' ', ' ', '0', '2020-11-29 11:53:58', '2020-11-29 11:53:58'),
(263, '62', 'Wednesday', ' ', ' ', '0', '2020-11-29 11:53:58', '2020-11-29 11:53:58'),
(264, '62', 'Thursday', ' ', ' ', '0', '2020-11-29 11:53:58', '2020-11-29 11:53:58'),
(265, '62', 'Friday', ' ', ' ', '0', '2020-11-29 11:53:58', '2020-11-29 11:53:58'),
(266, '62', 'Saturday', ' ', ' ', '0', '2020-11-29 11:53:58', '2020-11-29 11:53:58'),
(267, '63', 'Sunday', ' ', ' ', '0', '2020-11-29 12:00:36', '2020-11-29 12:00:36'),
(268, '63', 'Monday', ' ', ' ', '0', '2020-11-29 12:00:36', '2020-11-29 12:00:36'),
(269, '63', 'Tuesday', ' ', ' ', '0', '2020-11-29 12:00:36', '2020-11-29 12:00:36'),
(270, '63', 'Wednesday', ' ', ' ', '0', '2020-11-29 12:00:36', '2020-11-29 12:00:36'),
(271, '63', 'Thursday', ' ', ' ', '0', '2020-11-29 12:00:36', '2020-11-29 12:00:36'),
(272, '63', 'Friday', ' ', ' ', '0', '2020-11-29 12:00:36', '2020-11-29 12:00:36'),
(273, '63', 'Saturday', ' ', ' ', '0', '2020-11-29 12:00:36', '2020-11-29 12:00:36'),
(274, '64', 'Sunday', ' ', ' ', '0', '2020-11-29 12:03:35', '2020-11-29 12:03:35'),
(275, '64', 'Monday', ' ', ' ', '0', '2020-11-29 12:03:35', '2020-11-29 12:03:35'),
(276, '64', 'Tuesday', ' ', ' ', '0', '2020-11-29 12:03:35', '2020-11-29 12:03:35'),
(277, '64', 'Wednesday', ' ', ' ', '0', '2020-11-29 12:03:35', '2020-11-29 12:03:35'),
(278, '64', 'Thursday', ' ', ' ', '0', '2020-11-29 12:03:35', '2020-11-29 12:03:35'),
(279, '64', 'Friday', ' ', ' ', '0', '2020-11-29 12:03:35', '2020-11-29 12:03:35'),
(280, '64', 'Saturday', ' ', ' ', '0', '2020-11-29 12:03:35', '2020-11-29 12:03:35'),
(281, '65', 'Sunday', ' ', ' ', '0', '2020-12-02 05:33:53', '2020-12-02 05:33:53'),
(282, '65', 'Monday', ' ', ' ', '0', '2020-12-02 05:33:53', '2020-12-02 05:33:53'),
(283, '65', 'Tuesday', ' ', ' ', '0', '2020-12-02 05:33:53', '2020-12-02 05:33:53'),
(284, '65', 'Wednesday', ' ', ' ', '0', '2020-12-02 05:33:53', '2020-12-02 05:33:53'),
(285, '65', 'Thursday', ' ', ' ', '0', '2020-12-02 05:33:53', '2020-12-02 05:33:53'),
(286, '65', 'Friday', ' ', ' ', '0', '2020-12-02 05:33:53', '2020-12-02 05:33:53'),
(287, '65', 'Saturday', ' ', ' ', '0', '2020-12-02 05:33:53', '2020-12-02 05:33:53'),
(288, '66', 'Sunday', ' ', ' ', '0', '2020-12-02 05:34:56', '2020-12-02 05:34:56'),
(289, '66', 'Monday', ' ', ' ', '0', '2020-12-02 05:34:56', '2020-12-02 05:34:56'),
(290, '66', 'Tuesday', ' ', ' ', '0', '2020-12-02 05:34:56', '2020-12-02 05:34:56'),
(291, '66', 'Wednesday', ' ', ' ', '0', '2020-12-02 05:34:56', '2020-12-02 05:34:56'),
(292, '66', 'Thursday', ' ', ' ', '0', '2020-12-02 05:34:56', '2020-12-02 05:34:56'),
(293, '66', 'Friday', ' ', ' ', '0', '2020-12-02 05:34:56', '2020-12-02 05:34:56'),
(294, '66', 'Saturday', ' ', ' ', '0', '2020-12-02 05:34:56', '2020-12-02 05:34:56'),
(295, '67', 'Sunday', ' ', ' ', '0', '2020-12-02 05:37:05', '2020-12-02 05:37:05'),
(296, '67', 'Monday', ' ', ' ', '0', '2020-12-02 05:37:05', '2020-12-02 05:37:05'),
(297, '67', 'Tuesday', ' ', ' ', '0', '2020-12-02 05:37:05', '2020-12-02 05:37:05'),
(298, '67', 'Wednesday', ' ', ' ', '0', '2020-12-02 05:37:05', '2020-12-02 05:37:05'),
(299, '67', 'Thursday', ' ', ' ', '0', '2020-12-02 05:37:05', '2020-12-02 05:37:05'),
(300, '67', 'Friday', ' ', ' ', '0', '2020-12-02 05:37:05', '2020-12-02 05:37:05'),
(301, '67', 'Saturday', ' ', ' ', '0', '2020-12-02 05:37:05', '2020-12-02 05:37:05'),
(302, '68', 'Sunday', ' ', ' ', '0', '2020-12-02 05:41:36', '2020-12-02 05:41:36'),
(303, '68', 'Monday', ' ', ' ', '0', '2020-12-02 05:41:36', '2020-12-02 05:41:36'),
(304, '68', 'Tuesday', ' ', ' ', '0', '2020-12-02 05:41:36', '2020-12-02 05:41:36'),
(305, '68', 'Wednesday', ' ', ' ', '0', '2020-12-02 05:41:36', '2020-12-02 05:41:36'),
(306, '68', 'Thursday', ' ', ' ', '0', '2020-12-02 05:41:36', '2020-12-02 05:41:36'),
(307, '68', 'Friday', ' ', ' ', '0', '2020-12-02 05:41:36', '2020-12-02 05:41:36'),
(308, '68', 'Saturday', ' ', ' ', '0', '2020-12-02 05:41:36', '2020-12-02 05:41:36'),
(309, '69', 'Sunday', ' ', ' ', '0', '2020-12-02 05:46:57', '2020-12-02 05:46:57'),
(310, '69', 'Monday', ' ', ' ', '0', '2020-12-02 05:46:57', '2020-12-02 05:46:57'),
(311, '69', 'Tuesday', ' ', ' ', '0', '2020-12-02 05:46:57', '2020-12-02 05:46:57'),
(312, '69', 'Wednesday', ' ', ' ', '0', '2020-12-02 05:46:57', '2020-12-02 05:46:57'),
(313, '69', 'Thursday', ' ', ' ', '0', '2020-12-02 05:46:57', '2020-12-02 05:46:57'),
(314, '69', 'Friday', ' ', ' ', '0', '2020-12-02 05:46:57', '2020-12-02 05:46:57'),
(315, '69', 'Saturday', ' ', ' ', '0', '2020-12-02 05:46:57', '2020-12-02 05:46:57'),
(316, '70', 'Sunday', ' ', ' ', '0', '2020-12-02 07:02:50', '2020-12-02 07:02:50'),
(317, '70', 'Monday', ' ', ' ', '0', '2020-12-02 07:02:50', '2020-12-02 07:02:50'),
(318, '70', 'Tuesday', ' ', ' ', '0', '2020-12-02 07:02:50', '2020-12-02 07:02:50'),
(319, '70', 'Wednesday', ' ', ' ', '0', '2020-12-02 07:02:50', '2020-12-02 07:02:50'),
(320, '70', 'Thursday', ' ', ' ', '0', '2020-12-02 07:02:50', '2020-12-02 07:02:50'),
(321, '70', 'Friday', ' ', ' ', '0', '2020-12-02 07:02:50', '2020-12-02 07:02:50'),
(322, '70', 'Saturday', ' ', ' ', '0', '2020-12-02 07:02:50', '2020-12-02 07:02:50'),
(323, '71', 'Sunday', ' ', ' ', '0', '2020-12-02 07:15:46', '2020-12-02 07:15:46'),
(324, '71', 'Monday', ' ', ' ', '0', '2020-12-02 07:15:46', '2020-12-02 07:15:46'),
(325, '71', 'Tuesday', ' ', ' ', '0', '2020-12-02 07:15:46', '2020-12-02 07:15:46'),
(326, '71', 'Wednesday', ' ', ' ', '0', '2020-12-02 07:15:46', '2020-12-02 07:15:46'),
(327, '71', 'Thursday', ' ', ' ', '0', '2020-12-02 07:15:46', '2020-12-02 07:15:46'),
(328, '71', 'Friday', ' ', ' ', '0', '2020-12-02 07:15:46', '2020-12-02 07:15:46'),
(329, '71', 'Saturday', ' ', ' ', '0', '2020-12-02 07:15:46', '2020-12-02 07:15:46'),
(330, '72', 'Sunday', ' ', ' ', '0', '2020-12-02 07:28:17', '2020-12-02 07:28:17'),
(331, '72', 'Monday', ' ', ' ', '0', '2020-12-02 07:28:17', '2020-12-02 07:28:17'),
(332, '72', 'Tuesday', ' ', ' ', '0', '2020-12-02 07:28:17', '2020-12-02 07:28:17'),
(333, '72', 'Wednesday', ' ', ' ', '0', '2020-12-02 07:28:17', '2020-12-02 07:28:17'),
(334, '72', 'Thursday', ' ', ' ', '0', '2020-12-02 07:28:17', '2020-12-02 07:28:17'),
(335, '72', 'Friday', ' ', ' ', '0', '2020-12-02 07:28:17', '2020-12-02 07:28:17'),
(336, '72', 'Saturday', ' ', ' ', '0', '2020-12-02 07:28:17', '2020-12-02 07:28:17'),
(337, '73', 'Sunday', ' ', ' ', '0', '2020-12-02 07:30:39', '2020-12-02 07:30:39'),
(338, '73', 'Monday', ' ', ' ', '0', '2020-12-02 07:30:39', '2020-12-02 07:30:39'),
(339, '73', 'Tuesday', ' ', ' ', '0', '2020-12-02 07:30:39', '2020-12-02 07:30:39'),
(340, '73', 'Wednesday', ' ', ' ', '0', '2020-12-02 07:30:39', '2020-12-02 07:30:39'),
(341, '73', 'Thursday', ' ', ' ', '0', '2020-12-02 07:30:39', '2020-12-02 07:30:39'),
(342, '73', 'Friday', ' ', ' ', '0', '2020-12-02 07:30:39', '2020-12-02 07:30:39'),
(343, '73', 'Saturday', ' ', ' ', '0', '2020-12-02 07:30:39', '2020-12-02 07:30:39'),
(344, '74', 'Sunday', ' ', ' ', '0', '2020-12-02 07:45:53', '2020-12-02 07:45:53'),
(345, '74', 'Monday', ' ', ' ', '0', '2020-12-02 07:45:53', '2020-12-02 07:45:53'),
(346, '74', 'Tuesday', ' ', ' ', '0', '2020-12-02 07:45:53', '2020-12-02 07:45:53'),
(347, '74', 'Wednesday', ' ', ' ', '0', '2020-12-02 07:45:53', '2020-12-02 07:45:53'),
(348, '74', 'Thursday', ' ', ' ', '0', '2020-12-02 07:45:53', '2020-12-02 07:45:53'),
(349, '74', 'Friday', ' ', ' ', '0', '2020-12-02 07:45:53', '2020-12-02 07:45:53'),
(350, '74', 'Saturday', ' ', ' ', '0', '2020-12-02 07:45:53', '2020-12-02 07:45:53'),
(351, '75', 'Sunday', ' ', ' ', '0', '2020-12-02 07:58:45', '2020-12-02 07:58:45'),
(352, '75', 'Monday', ' ', ' ', '0', '2020-12-02 07:58:45', '2020-12-02 07:58:45'),
(353, '75', 'Tuesday', ' ', ' ', '0', '2020-12-02 07:58:45', '2020-12-02 07:58:45'),
(354, '75', 'Wednesday', ' ', ' ', '0', '2020-12-02 07:58:45', '2020-12-02 07:58:45'),
(355, '75', 'Thursday', ' ', ' ', '0', '2020-12-02 07:58:45', '2020-12-02 07:58:45'),
(356, '75', 'Friday', ' ', ' ', '0', '2020-12-02 07:58:45', '2020-12-02 07:58:45'),
(357, '75', 'Saturday', ' ', ' ', '0', '2020-12-02 07:58:45', '2020-12-02 07:58:45'),
(358, '76', 'Sunday', ' ', ' ', '0', '2020-12-02 08:02:44', '2020-12-02 08:02:44'),
(359, '76', 'Monday', ' ', ' ', '0', '2020-12-02 08:02:44', '2020-12-02 08:02:44'),
(360, '76', 'Tuesday', ' ', ' ', '0', '2020-12-02 08:02:44', '2020-12-02 08:02:44'),
(361, '76', 'Wednesday', ' ', ' ', '0', '2020-12-02 08:02:44', '2020-12-02 08:02:44'),
(362, '76', 'Thursday', ' ', ' ', '0', '2020-12-02 08:02:44', '2020-12-02 08:02:44'),
(363, '76', 'Friday', ' ', ' ', '0', '2020-12-02 08:02:44', '2020-12-02 08:02:44'),
(364, '76', 'Saturday', ' ', ' ', '0', '2020-12-02 08:02:44', '2020-12-02 08:02:44'),
(365, '77', 'Sunday', ' ', ' ', '0', '2020-12-02 09:35:03', '2020-12-02 09:35:03'),
(366, '77', 'Monday', ' ', ' ', '0', '2020-12-02 09:35:03', '2020-12-02 09:35:03'),
(367, '77', 'Tuesday', ' ', ' ', '0', '2020-12-02 09:35:03', '2020-12-02 09:35:03'),
(368, '77', 'Wednesday', ' ', ' ', '0', '2020-12-02 09:35:03', '2020-12-02 09:35:03'),
(369, '77', 'Thursday', ' ', ' ', '0', '2020-12-02 09:35:03', '2020-12-02 09:35:03'),
(370, '77', 'Friday', ' ', ' ', '0', '2020-12-02 09:35:03', '2020-12-02 09:35:03'),
(371, '77', 'Saturday', ' ', ' ', '0', '2020-12-02 09:35:03', '2020-12-02 09:35:03'),
(372, '78', 'Sunday', ' ', ' ', '0', '2020-12-03 03:29:51', '2020-12-03 03:29:51'),
(373, '78', 'Monday', ' ', ' ', '0', '2020-12-03 03:29:51', '2020-12-03 03:29:51'),
(374, '78', 'Tuesday', ' ', ' ', '0', '2020-12-03 03:29:51', '2020-12-03 03:29:51'),
(375, '78', 'Wednesday', ' ', ' ', '0', '2020-12-03 03:29:51', '2020-12-03 03:29:51'),
(376, '78', 'Thursday', ' ', ' ', '0', '2020-12-03 03:29:51', '2020-12-03 03:29:51'),
(377, '78', 'Friday', ' ', ' ', '0', '2020-12-03 03:29:51', '2020-12-03 03:29:51'),
(378, '78', 'Saturday', ' ', ' ', '0', '2020-12-03 03:29:51', '2020-12-03 03:29:51'),
(379, '79', 'Sunday', ' ', ' ', '0', '2020-12-03 03:39:27', '2020-12-03 03:39:27'),
(380, '79', 'Monday', ' ', ' ', '0', '2020-12-03 03:39:27', '2020-12-03 03:39:27'),
(381, '79', 'Tuesday', ' ', ' ', '0', '2020-12-03 03:39:27', '2020-12-03 03:39:27'),
(382, '79', 'Wednesday', ' ', ' ', '0', '2020-12-03 03:39:27', '2020-12-03 03:39:27'),
(383, '79', 'Thursday', ' ', ' ', '0', '2020-12-03 03:39:27', '2020-12-03 03:39:27'),
(384, '79', 'Friday', ' ', ' ', '0', '2020-12-03 03:39:27', '2020-12-03 03:39:27'),
(385, '79', 'Saturday', ' ', ' ', '0', '2020-12-03 03:39:27', '2020-12-03 03:39:27'),
(386, '80', 'Sunday', ' ', ' ', '0', '2020-12-03 05:12:02', '2020-12-03 05:12:02'),
(387, '80', 'Monday', ' ', ' ', '0', '2020-12-03 05:12:02', '2020-12-03 05:12:02'),
(388, '80', 'Tuesday', ' ', ' ', '0', '2020-12-03 05:12:02', '2020-12-03 05:12:02'),
(389, '80', 'Wednesday', ' ', ' ', '0', '2020-12-03 05:12:02', '2020-12-03 05:12:02'),
(390, '80', 'Thursday', ' ', ' ', '0', '2020-12-03 05:12:02', '2020-12-03 05:12:02'),
(391, '80', 'Friday', ' ', ' ', '0', '2020-12-03 05:12:02', '2020-12-03 05:12:02'),
(392, '80', 'Saturday', ' ', ' ', '0', '2020-12-03 05:12:02', '2020-12-03 05:12:02'),
(393, '81', 'Sunday', ' ', ' ', '0', '2020-12-05 05:50:53', '2020-12-05 05:50:53'),
(394, '81', 'Monday', ' ', ' ', '0', '2020-12-05 05:50:53', '2020-12-05 05:50:53'),
(395, '81', 'Tuesday', ' ', ' ', '0', '2020-12-05 05:50:53', '2020-12-05 05:50:53'),
(396, '81', 'Wednesday', ' ', ' ', '0', '2020-12-05 05:50:53', '2020-12-05 05:50:53'),
(397, '81', 'Thursday', ' ', ' ', '0', '2020-12-05 05:50:53', '2020-12-05 05:50:53'),
(398, '81', 'Friday', ' ', ' ', '0', '2020-12-05 05:50:53', '2020-12-05 05:50:53'),
(399, '81', 'Saturday', ' ', ' ', '0', '2020-12-05 05:50:53', '2020-12-05 05:50:53'),
(400, '82', 'Sunday', ' ', ' ', '0', '2020-12-05 09:54:37', '2020-12-05 09:54:37'),
(401, '82', 'Monday', ' ', ' ', '0', '2020-12-05 09:54:37', '2020-12-05 09:54:37'),
(402, '82', 'Tuesday', ' ', ' ', '0', '2020-12-05 09:54:37', '2020-12-05 09:54:37'),
(403, '82', 'Wednesday', ' ', ' ', '0', '2020-12-05 09:54:37', '2020-12-05 09:54:37'),
(404, '82', 'Thursday', ' ', ' ', '0', '2020-12-05 09:54:37', '2020-12-05 09:54:37'),
(405, '82', 'Friday', ' ', ' ', '0', '2020-12-05 09:54:37', '2020-12-05 09:54:37'),
(406, '82', 'Saturday', ' ', ' ', '0', '2020-12-05 09:54:37', '2020-12-05 09:54:37'),
(407, '83', 'Sunday', ' ', ' ', '0', '2020-12-05 09:55:08', '2020-12-05 09:55:08'),
(408, '83', 'Monday', ' ', ' ', '0', '2020-12-05 09:55:08', '2020-12-05 09:55:08'),
(409, '83', 'Tuesday', ' ', ' ', '0', '2020-12-05 09:55:08', '2020-12-05 09:55:08'),
(410, '83', 'Wednesday', ' ', ' ', '0', '2020-12-05 09:55:08', '2020-12-05 09:55:08'),
(411, '83', 'Thursday', ' ', ' ', '0', '2020-12-05 09:55:08', '2020-12-05 09:55:08'),
(412, '83', 'Friday', ' ', ' ', '0', '2020-12-05 09:55:08', '2020-12-05 09:55:08'),
(413, '83', 'Saturday', ' ', ' ', '0', '2020-12-05 09:55:08', '2020-12-05 09:55:08'),
(414, '84', 'Sunday', ' ', ' ', '0', '2020-12-05 09:58:21', '2020-12-05 09:58:21'),
(415, '84', 'Monday', ' ', ' ', '0', '2020-12-05 09:58:21', '2020-12-05 09:58:21'),
(416, '84', 'Tuesday', ' ', ' ', '0', '2020-12-05 09:58:21', '2020-12-05 09:58:21'),
(417, '84', 'Wednesday', ' ', ' ', '0', '2020-12-05 09:58:21', '2020-12-05 09:58:21'),
(418, '84', 'Thursday', ' ', ' ', '0', '2020-12-05 09:58:21', '2020-12-05 09:58:21'),
(419, '84', 'Friday', ' ', ' ', '0', '2020-12-05 09:58:21', '2020-12-05 09:58:21'),
(420, '84', 'Saturday', ' ', ' ', '0', '2020-12-05 09:58:21', '2020-12-05 09:58:21'),
(421, '85', 'Sunday', ' ', ' ', '0', '2020-12-05 13:57:31', '2020-12-05 13:57:31'),
(422, '85', 'Monday', ' ', ' ', '0', '2020-12-05 13:57:31', '2020-12-05 13:57:31'),
(423, '85', 'Tuesday', ' ', ' ', '0', '2020-12-05 13:57:31', '2020-12-05 13:57:31'),
(424, '85', 'Wednesday', ' ', ' ', '0', '2020-12-05 13:57:31', '2020-12-05 13:57:31'),
(425, '85', 'Thursday', ' ', ' ', '0', '2020-12-05 13:57:31', '2020-12-05 13:57:31'),
(426, '85', 'Friday', ' ', ' ', '0', '2020-12-05 13:57:31', '2020-12-05 13:57:31'),
(427, '85', 'Saturday', ' ', ' ', '0', '2020-12-05 13:57:31', '2020-12-05 13:57:31'),
(428, '86', 'Sunday', ' ', ' ', '0', '2020-12-06 02:55:22', '2020-12-06 02:55:22'),
(429, '86', 'Monday', ' ', ' ', '0', '2020-12-06 02:55:22', '2020-12-06 02:55:22'),
(430, '86', 'Tuesday', ' ', ' ', '0', '2020-12-06 02:55:22', '2020-12-06 02:55:22'),
(431, '86', 'Wednesday', ' ', ' ', '0', '2020-12-06 02:55:22', '2020-12-06 02:55:22'),
(432, '86', 'Thursday', ' ', ' ', '0', '2020-12-06 02:55:22', '2020-12-06 02:55:22'),
(433, '86', 'Friday', ' ', ' ', '0', '2020-12-06 02:55:22', '2020-12-06 02:55:22'),
(434, '86', 'Saturday', ' ', ' ', '0', '2020-12-06 02:55:22', '2020-12-06 02:55:22');

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
  `app_about_english` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_about_arabic` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_terms_english` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_terms_arabic` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_privacy_english` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_privacy_arabic` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `email`, `phone`, `address`, `city`, `area`, `map_iframe`, `latitude`, `longitude`, `license`, `logo`, `app_about_english`, `app_about_arabic`, `app_terms_english`, `app_terms_arabic`, `app_privacy_english`, `app_privacy_arabic`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'At iSALON UAE, we believe that beauty is different for each individual. A brand that thinks differently with an innovative, inspiring and creative take on all things beauty, spa and wellness. Holistic services of grooming, spa, skin, health and wellbeing are all mindfully selected and combined for beauty within and without. We have identified and built exclusive relationships with the best beauty wellness, fashion, stylist influences in the world. Each one contributes through their own body of knowledge, and brings a whole world of exciting possibilities to our search for real “Beauty”. We partner with each of them to offer you services exclusively available through our platform.\r\n\r\nCrafted with love by iSALON FINANCIAL SERVICES', 'في iSALON UAE ، نعتقد أن الجمال يختلف من شخص لآخر. علامة تجارية تفكر بشكل مختلف من خلال أسلوب مبتكر وملهم وإبداعي في كل ما يتعلق بالجمال والسبا والعافية. يتم اختيار جميع الخدمات الشاملة للعناية بالجسم والمنتجعات الصحية والجلد والصحة والرفاهية بعناية وتجميعها للجمال من الداخل والخارج. لقد حددنا وبنينا علاقات حصرية مع أفضل الجمال والعافية والأزياء وتأثيرات المصمم في العالم. يساهم كل فرد من خلال مجموعة المعرفة الخاصة به ، ويوفر عالماً كاملاً من الإمكانيات المثيرة لبحثنا عن \"الجمال\" الحقيقي. نتشارك مع كل منهم لنقدم لك الخدمات المتوفرة حصريًا من خلال منصتنا.\r\n\r\nCrafted with love by iSALON FINANCIAL SERVICES', 'At isalon, we believe that beauty is different for each individual. A brand that thinks differently with an innovative, inspiring and creative take on all things beauty, spa and wellness. Holistic services of grooming, spa, skin, health and wellbeing are all mindfully selected and combined for beauty within and without. We have identified and built exclusive relationships with the best beauty wellness, fashion, stylist influences in the world. Each one contributes through their own body of knowledge, and brings a whole world of exciting possibilities to our search for real “Beauty”. We partner with each of them to offer you services exclusively available through our platform.\r\n\r\nCrafted with love by LRB INFO TECH', 'في isalon ، نعتقد أن الجمال يختلف من شخص لآخر. علامة تجارية تفكر بشكل مختلف من خلال أسلوب مبتكر وملهم وإبداعي في كل ما يتعلق بالجمال والسبا والعافية. يتم اختيار جميع الخدمات الشاملة للعناية بالجسم والمنتجعات الصحية والجلد والصحة والرفاهية بعناية وتجميعها للجمال من الداخل والخارج. لقد حددنا وبنينا علاقات حصرية مع أفضل الجمال والعافية والأزياء وتأثيرات المصمم في العالم. يساهم كل فرد من خلال مجموعة المعرفة الخاصة به ، ويوفر عالماً كاملاً من الإمكانيات المثيرة لبحثنا عن \"الجمال\" الحقيقي. نتشارك مع كل منهم لنقدم لك الخدمات المتوفرة حصريًا من خلال منصتنا.\r\n\r\nCrafted with love by LRB INFO TECH', 'Privacy Policy\r\n iSALON UAE app as a Free app. This SERVICE is provided by iSALON UAE at no cost and is intended for use as is.\r\n\r\nThis page is used to inform visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service.\r\n\r\nIf you choose to use our Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that we collect is used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy.\r\n\r\nThe terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at iSALON UAE unless otherwise defined in this Privacy Policy.\r\n\r\nInformation Collection and Use\r\n\r\nFor a better experience, while using our Service, we may require you to provide us with certain personally identifiable information, including but not limited to Mobile Number, Location details to show real time salon nearby. The information that we request will be retained by us and used as described in this privacy policy.\r\n\r\nThe app does use third party services that may collect information used to identify you.\r\n\r\nLink to privacy policy of third party service providers used by the app\r\n\r\nGoogle Play Services\r\nLog Data\r\n\r\nWe want to inform you that whenever you use our Service, in a case of an error in the app we collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing our Service, the time and date of your use of the Service, and other statistics.\r\n\r\nCookies\r\n\r\nCookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device\'s internal memory.\r\n\r\nThis Service does not use these “cookies” explicitly. However, the app may use third party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.\r\n\r\nService Providers\r\n\r\nWe may employ third-party companies and individuals due to the following reasons:\r\n\r\nTo facilitate our Service;\r\nTo provide the Service on our behalf;\r\nTo perform Service-related services; or\r\nTo assist us in analyzing how our Service is used.\r\nWe want to inform users of this Service that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.\r\n\r\nSecurity\r\n\r\nWe value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.\r\n\r\nLinks to Other Sites\r\n\r\nThis Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.\r\n\r\nChildren’s Privacy\r\n\r\nThese Services do not address anyone under the age of 13. We do not knowingly collect personally identifiable information from children under 13. In the case we discover that a child under 13 has provided us with personal information, we immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact us so that we will be able to do necessary actions.\r\n\r\nChanges to This Privacy Policy\r\n\r\nWe may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page.\r\n\r\nThis policy is effective as of 2020-11-09\r\n\r\nCrafted with love by LRB INFO TECH\r\n\r\nIf you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us at info@isalonuae.com', 'سياسة خاصة\r\n تطبيق iSALON الإمارات العربية المتحدة كتطبيق مجاني. يتم توفير هذه الخدمة من قبل iSALON UAE بدون تكلفة وهي مخصصة للاستخدام كما هي.\r\n\r\nتُستخدم هذه الصفحة لإعلام الزائرين بشأن سياساتنا بجمع المعلومات الشخصية واستخدامها والكشف عنها إذا قرر أي شخص استخدام خدمتنا.\r\n\r\nإذا اخترت استخدام خدمتنا ، فأنت توافق على جمع واستخدام المعلومات المتعلقة بهذه السياسة. تُستخدم المعلومات الشخصية التي نجمعها لتوفير الخدمة وتحسينها. لن نستخدم أو نشارك معلوماتك مع أي شخص باستثناء ما هو موضح في سياسة الخصوصية هذه.\r\n\r\nالمصطلحات المستخدمة في سياسة الخصوصية هذه لها نفس المعاني الواردة في الشروط والأحكام الخاصة بنا ، والتي يمكن الوصول إليها في iSALON UAE ما لم يتم تحديد خلاف ذلك في سياسة الخصوصية هذه.\r\n\r\nجمع المعلومات واستخدامها\r\n\r\nللحصول على تجربة أفضل ، أثناء استخدام خدمتنا ، قد نطلب منك تزويدنا بمعلومات تعريف شخصية معينة ، بما في ذلك على سبيل المثال لا الحصر رقم الهاتف المحمول وتفاصيل الموقع لإظهار صالون في الوقت الحقيقي بالقرب منك. سيتم الاحتفاظ بالمعلومات التي نطلبها من قبلنا واستخدامها كما هو موضح في سياسة الخصوصية هذه.\r\n\r\nيستخدم التطبيق خدمات الجهات الخارجية التي قد تجمع المعلومات المستخدمة لتحديد هويتك.\r\n\r\nرابط لسياسة الخصوصية لمقدمي خدمات الطرف الثالث التي يستخدمها التطبيق\r\n\r\nخدمات جوجل بلاي\r\nتسجيل البيانات\r\n\r\nنود إعلامك أنه كلما استخدمت خدمتنا ، في حالة حدوث خطأ في التطبيق ، نقوم بجمع البيانات والمعلومات (من خلال منتجات الجهات الخارجية) على هاتفك تسمى Log Data. قد تتضمن بيانات السجل هذه معلومات مثل عنوان بروتوكول الإنترنت (\"IP\") الخاص بجهازك ، واسم الجهاز ، وإصدار نظام التشغيل ، وتكوين التطبيق عند استخدام خدمتنا ، ووقت وتاريخ استخدامك للخدمة ، وإحصائيات أخرى .\r\n\r\nبسكويت\r\n\r\nملفات تعريف الارتباط هي ملفات تحتوي على كمية صغيرة من البيانات التي يتم استخدامها بشكل شائع كمعرفات فريدة مجهولة الهوية. يتم إرسالها إلى متصفحك من مواقع الويب التي تزورها ويتم تخزينها على الذاكرة الداخلية لجهازك.\r\n\r\nلا تستخدم هذه الخدمة \"ملفات تعريف الارتباط\" بشكل صريح. ومع ذلك ، قد يستخدم التطبيق رموزًا ومكتبات خاصة بطرف ثالث تستخدم \"ملفات تعريف الارتباط\" لجمع المعلومات وتحسين خدماتهم. لديك خيار إما قبول أو رفض ملفات تعريف الارتباط هذه ومعرفة متى يتم إرسال ملف تعريف الارتباط إلى جهازك. إذا اخترت رفض ملفات تعريف الارتباط الخاصة بنا ، فقد لا تتمكن من استخدام بعض أجزاء هذه الخدمة.\r\n\r\nمقدمي الخدمة\r\n\r\nيجوز لنا توظيف شركات وأفراد من جهات خارجية للأسباب التالية:\r\n\r\nلتسهيل خدمتنا ؛\r\nلتقديم الخدمة نيابة عنا ؛\r\nلأداء الخدمات المتعلقة بالخدمة ؛ أو\r\nلمساعدتنا في تحليل كيفية استخدام خدمتنا.\r\nنريد إبلاغ مستخدمي هذه الخدمة أن هذه الأطراف الثالثة لديها حق الوصول إلى معلوماتك الشخصية. والسبب هو أداء المهام الموكلة إليهم نيابة عنا. ومع ذلك ، فهم ملزمون بعدم الكشف عن المعلومات أو استخدامها لأي غرض آخر.\r\n\r\nالأمان\r\n\r\nنحن نقدر ثقتك في تزويدنا بمعلوماتك الشخصية ، وبالتالي فإننا نسعى جاهدين لاستخدام وسائل مقبولة تجاريًا لحمايتها. لكن تذكر أنه لا توجد طريقة نقل عبر الإنترنت أو طريقة تخزين إلكتروني آمنة وموثوقة بنسبة 100٪ ، ولا يمكننا ضمان أمانها المطلق.\r\n\r\nروابط لمواقع أخرى\r\n\r\nقد تحتوي هذه الخدمة على روابط لمواقع أخرى. إذا قمت بالنقر فوق ارتباط جهة خارجية ، فسيتم توجيهك إلى هذا الموقع. لاحظ أن هذه المواقع الخارجية لا يتم تشغيلها بواسطتنا. لذلك ، ننصحك بشدة بمراجعة سياسة الخصوصية الخاصة بهذه المواقع. ليس لدينا أي سيطرة ولا نتحمل أي مسؤولية عن المحتوى أو سياسات الخصوصية أو ممارسات أي مواقع أو خدمات تابعة لجهات خارجية.\r\n\r\nخصوصية الأطفال\r\n\r\nلا تخاطب هذه الخدمات أي شخص يقل عمره عن 13 عامًا. نحن لا نجمع عن عمد معلومات تعريف شخصية من الأطفال دون سن 13 عامًا. في حالة اكتشافنا أن طفلًا أقل من 13 عامًا قد زودنا بمعلومات شخصية ، فإننا نحذفها على الفور من خوادمنا. إذا كنت والدًا أو وصيًا وكنت على علم بأن طفلك قد زودنا بمعلومات شخصية ، فيرجى الاتصال بنا حتى نتمكن من القيام بالإجراءات اللازمة.\r\n\r\nالتغييرات على سياسة الخصوصية هذه\r\n\r\nقد نقوم بتحديث سياسة الخصوصية الخاصة بنا من وقت لآخر. وبالتالي ، يُنصح بمراجعة هذه الصفحة بشكل دوري لمعرفة أي تغييرات. سنخطرك بأي تغييرات عن طريق نشر سياسة الخصوصية الجديدة على هذه الصفحة.\r\n\r\nهذه السياسة سارية اعتبارًا من 2020-11-09\r\n\r\nCrafted with love by LRB INFO TECH\r\n\r\nإذا كان لديك أي أسئلة أو اقتراحات حول سياسة الخصوصية الخاصة بنا ، فلا تتردد في الاتصال بنا على info@isalonuae.com', NULL, '2020-11-28 08:40:10');

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
  `order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `indicator_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_fit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `order`, `text`, `button`, `text_position`, `text_color`, `button_color`, `background_color`, `indicator_color`, `slider_image`, `image_fit`, `service_id`, `salon_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '0', 'Promotion Discount', 'View', 'center', 'ffffff', '232121', 'ceab67', '000000', '240719706.jpg', 'cover', NULL, '14', '0', '2020-09-28 13:09:29', '2020-11-09 05:28:23'),
(2, '1', 'Bridal Package', 'View', 'center', 'ffffff', '232121', 'ceab67', '000000', '1967252810.jpg', 'cover', NULL, '14', '0', '2020-09-28 13:09:29', '2020-11-11 07:10:41'),
(3, '2', 'Massage / Spa', 'View', 'center', 'ffffff', '232121', 'ceab67', '000000', '1870078945.jpg', 'cover', NULL, '26', '0', '2020-09-28 13:09:29', '2020-11-11 07:10:52');

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
(1, '&lt;h2&gt;&lt;strong&gt;Terms and Conditions&lt;/strong&gt;&lt;/h2&gt;\r\n&lt;p&gt;Welcome to&amp;nbsp;&lt;span class=&quot;highlight preview_website_name&quot;&gt;Website Name&lt;/span&gt;!&lt;/p&gt;\r\n&lt;p&gt;These terms and conditions outline the rules and regulations for the use of&amp;nbsp;&lt;span class=&quot;highlight preview_company_name&quot;&gt;Company Name&lt;/span&gt;&#39;s Website, located at&amp;nbsp;&lt;span class=&quot;highlight preview_website_url&quot;&gt;Website.com&lt;/span&gt;.&lt;/p&gt;\r\n&lt;p&gt;By accessing this website we assume you accept these terms and conditions. Do not continue to use&amp;nbsp;&lt;span class=&quot;highlight preview_website_name&quot;&gt;Website Name&lt;/span&gt;&amp;nbsp;if you do not agree to take all of the terms and conditions stated on this page.&lt;/p&gt;\r\n&lt;p&gt;The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: &amp;ldquo;Client&amp;rdquo;, &amp;ldquo;You&amp;rdquo; and &amp;ldquo;Your&amp;rdquo; refers to you, the person log on this website and compliant to the Company&#39;s terms and conditions. &amp;ldquo;The Company&amp;rdquo;, &amp;ldquo;Ourselves&amp;rdquo;, &amp;ldquo;We&amp;rdquo;, &amp;ldquo;Our&amp;rdquo; and &amp;ldquo;Us&amp;rdquo;, refers to our Company. &amp;ldquo;Party&amp;rdquo;, &amp;ldquo;Parties&amp;rdquo;, or &amp;ldquo;Us&amp;rdquo;, refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client&#39;s needs in respect of provision of the Company&#39;s stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.&lt;/p&gt;\r\n&lt;h3&gt;&lt;strong&gt;Cookies&lt;/strong&gt;&lt;/h3&gt;\r\n&lt;p&gt;We employ the use of cookies. By accessing&amp;nbsp;&lt;span class=&quot;highlight preview_website_name&quot;&gt;Website Name&lt;/span&gt;, you agreed to use cookies in agreement with the&amp;nbsp;&lt;span class=&quot;highlight preview_company_name&quot;&gt;Company Name&lt;/span&gt;&#39;s Privacy Policy.&lt;/p&gt;\r\n&lt;p&gt;Most interactive websites use cookies to let us retrieve the user&#39;s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.&lt;/p&gt;\r\n&lt;h3&gt;&lt;strong&gt;License&lt;/strong&gt;&lt;/h3&gt;\r\n&lt;p&gt;Unless otherwise stated,&amp;nbsp;&lt;span class=&quot;highlight preview_company_name&quot;&gt;Company Name&lt;/span&gt;&amp;nbsp;and/or its licensors own the intellectual property rights for all material on&amp;nbsp;&lt;span class=&quot;highlight preview_website_name&quot;&gt;Website Name&lt;/span&gt;. All intellectual property rights are reserved. You may access this from&amp;nbsp;&lt;span class=&quot;highlight preview_website_name&quot;&gt;Website Name&lt;/span&gt;&amp;nbsp;for your own personal use subjected to restrictions set in these terms and conditions.&lt;/p&gt;\r\n&lt;p&gt;You must not:&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Republish material from&amp;nbsp;&lt;span class=&quot;highlight preview_website_name&quot;&gt;Website Name&lt;/span&gt;&lt;/li&gt;\r\n&lt;li&gt;Sell, rent or sub-license material from&amp;nbsp;&lt;span class=&quot;highlight preview_website_name&quot;&gt;Website Name&lt;/span&gt;&lt;/li&gt;\r\n&lt;li&gt;Reproduce, duplicate or copy material from&amp;nbsp;&lt;span class=&quot;highlight preview_website_name&quot;&gt;Website Name&lt;/span&gt;&lt;/li&gt;\r\n&lt;li&gt;Redistribute content from&amp;nbsp;&lt;span class=&quot;highlight preview_website_name&quot;&gt;Website Name&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;This Agreement shall begin on the date hereof.&lt;/p&gt;\r\n&lt;p&gt;Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website.&amp;nbsp;&lt;span class=&quot;highlight preview_company_name&quot;&gt;Company Name&lt;/span&gt;&amp;nbsp;does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of&amp;nbsp;&lt;span class=&quot;highlight preview_company_name&quot;&gt;Company Name&lt;/span&gt;,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws,&amp;nbsp;&lt;span class=&quot;highlight preview_company_name&quot;&gt;Company Name&lt;/span&gt;&amp;nbsp;shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.&lt;/p&gt;\r\n&lt;p&gt;&lt;span class=&quot;highlight preview_company_name&quot;&gt;Company Name&lt;/span&gt;&amp;nbsp;reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.&lt;/p&gt;\r\n&lt;p&gt;You warrant and represent that:&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;&lt;/li&gt;\r\n&lt;li&gt;The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;&lt;/li&gt;\r\n&lt;li&gt;The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy&lt;/li&gt;\r\n&lt;li&gt;The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;You hereby grant&amp;nbsp;&lt;span class=&quot;highlight preview_company_name&quot;&gt;Company Name&lt;/span&gt;&amp;nbsp;a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.&lt;/p&gt;\r\n&lt;h3&gt;&lt;strong&gt;Hyperlinking to our Content&lt;/strong&gt;&lt;/h3&gt;\r\n&lt;p&gt;The following organizations may link to our Website without prior written approval:&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Government agencies;&lt;/li&gt;\r\n&lt;li&gt;Search engines;&lt;/li&gt;\r\n&lt;li&gt;News organizations;&lt;/li&gt;\r\n&lt;li&gt;Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and&lt;/li&gt;\r\n&lt;li&gt;System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party&#39;s site.&lt;/p&gt;\r\n&lt;p&gt;We may consider and approve other link requests from the following types of organizations:&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;commonly-known consumer and/or business information sources;&lt;/li&gt;\r\n&lt;li&gt;dot.com community sites;&lt;/li&gt;\r\n&lt;li&gt;associations or other groups representing charities;&lt;/li&gt;\r\n&lt;li&gt;online directory distributors;&lt;/li&gt;\r\n&lt;li&gt;internet portals;&lt;/li&gt;\r\n&lt;li&gt;accounting, law and consulting firms; and&lt;/li&gt;\r\n&lt;li&gt;educational institutions and trade associations.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of&amp;nbsp;&lt;span class=&quot;highlight preview_company_name&quot;&gt;Company Name&lt;/span&gt;; and (d) the link is in the context of general resource information.&lt;/p&gt;\r\n&lt;p&gt;These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party&#39;s site.&lt;/p&gt;\r\n&lt;p&gt;If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to&amp;nbsp;&lt;span class=&quot;highlight preview_company_name&quot;&gt;Company Name&lt;/span&gt;. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.&lt;/p&gt;\r\n&lt;p&gt;Approved organizations may hyperlink to our Website as follows:&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;By use of our corporate name; or&lt;/li&gt;\r\n&lt;li&gt;By use of the uniform resource locator being linked to; or&lt;/li&gt;\r\n&lt;li&gt;By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party&#39;s site.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;No use of&amp;nbsp;&lt;span class=&quot;highlight preview_company_name&quot;&gt;Company Name&lt;/span&gt;&#39;s logo or other artwork will be allowed for linking absent a trademark license agreement.&lt;/p&gt;\r\n&lt;h3&gt;&lt;strong&gt;iFrames&lt;/strong&gt;&lt;/h3&gt;\r\n&lt;p&gt;Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.&lt;/p&gt;\r\n&lt;h3&gt;&lt;strong&gt;Content Liability&lt;/strong&gt;&lt;/h3&gt;\r\n&lt;p&gt;We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.&lt;/p&gt;\r\n&lt;h3&gt;&lt;strong&gt;Reservation of Rights&lt;/strong&gt;&lt;/h3&gt;\r\n&lt;p&gt;We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it&#39;s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.&lt;/p&gt;\r\n&lt;h3&gt;&lt;strong&gt;Removal of links from our website&lt;/strong&gt;&lt;/h3&gt;\r\n&lt;p&gt;If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.&lt;/p&gt;\r\n&lt;p&gt;We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.&lt;/p&gt;\r\n&lt;h3&gt;&lt;strong&gt;Disclaimer&lt;/strong&gt;&lt;/h3&gt;\r\n&lt;p&gt;To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;limit or exclude our or your liability for death or personal injury;&lt;/li&gt;\r\n&lt;li&gt;limit or exclude our or your liability for fraud or fraudulent misrepresentation;&lt;/li&gt;\r\n&lt;li&gt;limit any of our or your liabilities in any way that is not permitted under applicable law; or&lt;/li&gt;\r\n&lt;li&gt;exclude any of our or your liabilities that may not be excluded under applicable law.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.&lt;/p&gt;\r\n&lt;p&gt;As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Crafted with love by LRB INFO TECH&lt;/p&gt;', NULL, '2020-11-24 19:41:46');

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
(8, '7', '2020-08-24', '2021-01-21', '2021-01-16', '0', '2020-08-24 10:36:12', '2020-08-24 10:36:12'),
(9, '10', '2020-12-10', '2021-07-08', '2021-06-28', '0', '2020-12-10 08:12:34', '2020-12-10 08:12:34'),
(10, '10', '2020-12-10', '2021-07-08', '2021-06-28', '0', '2020-12-10 08:14:08', '2020-12-10 08:14:08'),
(11, '1', '2020-12-10', '2021-01-09', '2021-01-04', '0', '2020-12-10 08:14:41', '2020-12-10 08:14:41'),
(12, '1', '2020-12-10', '2021-01-09', '2021-01-04', '0', '2020-12-10 10:51:08', '2020-12-10 10:51:08'),
(13, '1', '2020-12-10', '2021-01-09', '2021-01-04', '0', '2020-12-10 10:51:56', '2020-12-10 10:51:56'),
(14, '10', '2020-12-10', '2021-07-08', '2021-06-28', '0', '2020-12-10 10:54:08', '2020-12-10 10:54:08'),
(15, '7', '2020-12-10', '2021-03-10', '2021-03-05', '0', '2020-12-10 10:54:22', '2020-12-10 10:54:22'),
(16, '11', '2020-12-11', '2021-03-11', '2021-03-01', '0', '2020-12-11 07:30:26', '2020-12-11 07:30:26'),
(17, '1', '2020-12-11', '2021-01-10', '2021-01-05', '0', '2020-12-11 07:30:36', '2020-12-11 07:30:36'),
(18, '1', '2020-12-11', '2021-01-10', '2021-01-05', '0', '2020-12-11 07:32:02', '2020-12-11 07:32:02'),
(19, '1', '2020-12-11', '2021-01-10', '2021-01-05', '0', '2020-12-11 07:32:19', '2020-12-11 07:32:19'),
(20, '1', '2020-12-11', '2021-01-10', '2021-01-05', '0', '2020-12-11 07:32:39', '2020-12-11 07:32:39'),
(21, '1', '2020-12-11', '2021-01-10', '2021-01-05', '0', '2020-12-11 07:32:49', '2020-12-11 07:32:49'),
(22, '1', '2020-12-11', '2021-01-10', '2021-01-05', '0', '2020-12-11 07:32:59', '2020-12-11 07:32:59'),
(23, '1', '2020-12-11', '2021-01-10', '2021-01-05', '0', '2020-12-11 07:33:07', '2020-12-11 07:33:07'),
(24, '1', '2020-12-11', '2021-01-10', '2021-01-05', '0', '2020-12-11 07:33:15', '2020-12-11 07:33:15'),
(25, '1', '2020-12-11', '2021-01-10', '2021-01-05', '0', '2020-12-11 07:33:23', '2020-12-11 07:33:23'),
(26, '1', '2020-12-11', '2021-01-10', '2021-01-05', '0', '2020-12-11 07:33:32', '2020-12-11 07:33:32'),
(27, '7', '2020-12-12', '2021-03-12', '2021-03-07', '0', '2020-12-12 02:20:23', '2020-12-12 02:20:23'),
(28, '12', '2020-12-12', '2021-12-07', '2021-11-22', '0', '2020-12-12 02:20:30', '2020-12-12 02:20:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `busisness_type` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT ' ',
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emirates_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trade_license_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_certificate_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_package` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `used_package_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiry_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remind_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_commission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trade_license` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emirated_id_copy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_copy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature_data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_english` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_arabic` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_status` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_ids` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swift_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcm_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_pay` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_paid` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salon_balance` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_pay` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_paid` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_balance` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `date`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `busisness_type`, `phone`, `salon_name`, `salon_id`, `city`, `area`, `address`, `nationality`, `country_id`, `emirates_id`, `trade_license_no`, `vat_certificate_no`, `passport_number`, `salon_package`, `used_package_id`, `active_date`, `expiry_date`, `remind_date`, `salon_commission`, `cover_image`, `profile_image`, `trade_license`, `emirated_id_copy`, `passport_copy`, `latitude`, `longitude`, `signature_data`, `website`, `about_english`, `about_arabic`, `login_status`, `status`, `user_id`, `service_ids`, `role_id`, `account_number`, `bank_name`, `iban_number`, `swift_code`, `account_name`, `fcm_token`, `otp`, `salon_pay`, `salon_paid`, `salon_balance`, `admin_pay`, `admin_paid`, `admin_balance`, `created_at`, `updated_at`) VALUES
(14, NULL, 'Rithvika', 'rithusalon@gmail.com', NULL, '$2y$10$xKWVp/TVFHoj.FTngyReNu6cd3dpPPNoBzq7q3b6OyjuS2dhvOtym', NULL, '1', '564180385', 'Rithu\'s salon', NULL, '10', NULL, 'Office no- 873, Floor No- 8, Al Ghaith Tower,(opposite to ADCB BANK Hamdan Street Abu dhabi - Abu Dhabi - United Arab Emirates', '1', '1', NULL, '1234545', '31314245', '44654561', '10', '14', '2020-12-10', '2021-07-08', '2021-06-28', NULL, '501383785.jpg', '1642715462.jpg', NULL, NULL, NULL, '24.490405', '54.362763', NULL, 'https://lrbinfotech.com/', 'We strive to reach beyond the roots (of hair), and into the refinement and healing of one’s core self.Salon U is an award-winning salon, established in the year 2002 and known for high-quality beauty, hair, and spa services.We celebrate women and men in their real, most raw, authentic brilliance, who believe in themselves and are ready to step into the look they love. We employ hair products with some of the most natural and rich ingredients because we believe you should never expect less.', NULL, '0', '1', '14', NULL, 'admin', NULL, NULL, NULL, NULL, NULL, 'caobEGG5TiyVu-0o5eixto:APA91bHa2Ki4d6Prf7Fqqk6ysDD89qZ1PuE1gTbwBl4v65jnrDBl71jhTp-4tYn6eumf6yaXjnuI1Jt8_csFIr1wuF4L7G7hEw_Ew-aqmEaUaNSLT5K4meK1mA41A9TsTneV_7AmDh0H', '970356', '526', NULL, '1052', '10521', NULL, '21042', '2020-09-28 10:14:09', '2020-12-11 09:54:13'),
(18, NULL, 'BoomikaShri', 'boomiboomi@gmail.com', NULL, '$2y$10$xKWVp/TVFHoj.FTngyReNu6cd3dpPPNoBzq7q3b6OyjuS2dhvOtym', NULL, '1', '9842635178', 'Shreethu Boomika', NULL, '10', '9', 'Office no- 873, Floor No- 8, Al Ghaith Tower,(opposite to ADCB BANK Hamdan Street Abu dhabi - Abu Dhabi - United Arab Emirates', '3', NULL, NULL, NULL, NULL, NULL, '7', '27', '2020-12-12', '2021-03-12', '2021-03-07', NULL, '1190070455.jpg', '647665384.jpg', NULL, NULL, NULL, '24.492863', '54.367603', NULL, 'https://lrbinfotech.com/', 'We strive to reach beyond the roots (of hair), and into the refinement and healing of one’s core self.Salon U is an award-winning salon, established in the year 2002 and known for high-quality beauty, hair, and spa services.We celebrate women and men in their real, most raw, authentic brilliance, who believe in themselves and are ready to step into the look they love. We employ hair products with some of the most natural and rich ingredients because we believe you should never expect less.', NULL, '0', '1', '18', NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 10:18:26', '2020-12-12 02:20:23'),
(19, NULL, 'Varuneesha', 'varuneesha@gmail.com', NULL, '$2y$10$xKWVp/TVFHoj.FTngyReNu6cd3dpPPNoBzq7q3b6OyjuS2dhvOtym', NULL, '1', '7036984125', 'Varuneesha', NULL, '10', '9', 'Tenth-12th Floors, Baniyas Road, Deira, PO Box 594, Dubai, UAE\r\nTelephone: (4) 223 0000. Fax: (4) 223 0022.', '4', NULL, NULL, NULL, NULL, NULL, '12', '28', '2020-12-12', '2021-12-07', '2021-11-22', NULL, '600323278.jpg', '789351178.jpg', NULL, NULL, NULL, '24.478101', '54.381635', NULL, 'https://lrbinfotech.com/', 'Beauty salon, offers expert services in hairstyling, skin and beauty care. It is dedicated to the contemporary Woman’s exploration of the fine art of beauty.', NULL, '0', '1', '19', NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1500', NULL, '3000', NULL, NULL, NULL, '2020-09-28 10:20:17', '2020-12-12 02:20:30'),
(20, NULL, 'shilpa', 'shilpa@gmail.com', NULL, '$2y$10$xKWVp/TVFHoj.FTngyReNu6cd3dpPPNoBzq7q3b6OyjuS2dhvOtym', NULL, '2', '6354876521', 'shilpa', NULL, '10', NULL, 'P.O. Box 3625\r\nSheikh Khalifa Bin Saeed Street\r\nDubai', '2', NULL, NULL, NULL, NULL, NULL, '10', '10', '2020-12-10', '2021-07-08', '2021-06-28', NULL, '1044935648.jpg', '457471388.jpg', NULL, NULL, NULL, '24.471134', '54.377343', NULL, 'https://lrbinfotech.com/', 'Known for our magical concoction of stunning make-up, fabulous hair and excellent skin services.', NULL, '0', '1', '20', NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 10:21:59', '2020-12-10 08:14:08'),
(21, NULL, 'Greesh', 'greesh@gmail.com', NULL, '$2y$10$xKWVp/TVFHoj.FTngyReNu6cd3dpPPNoBzq7q3b6OyjuS2dhvOtym', NULL, '2', '9325814723', 'Greesh unix', NULL, '10', NULL, 'Liwa Tower P.O. Box 901 Abu Dhabi', '1', NULL, NULL, NULL, NULL, NULL, '1', '11', '2020-12-10', '2021-01-09', '2021-01-04', NULL, '1367469593.jpg', '640440107.jpg', NULL, NULL, NULL, '24.489843', '54.379416', NULL, 'https://lrbinfotech.com/', 'We strive to reach beyond the roots (of hair), and into the refinement and healing of one’s core self.Salon U is an award-winning salon, established in the year 2002 and known for high-quality beauty, hair, and spa services.We celebrate women and men in their real, most raw, authentic brilliance, who believe in themselves and are ready to step into the look they love. We employ hair products with some of the most natural and rich ingredients because we believe you should never expect less.', NULL, '0', '1', '21', NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 10:23:27', '2020-12-10 08:14:41'),
(22, NULL, 'swarnithsha', 'swarni@gmail.com', NULL, '$2y$10$xKWVp/TVFHoj.FTngyReNu6cd3dpPPNoBzq7q3b6OyjuS2dhvOtym', NULL, '2', '6541287654', 'Swarnithsha', NULL, '10', NULL, 'MR. OMAR HUSSAINPOBOX 111DUBAIUNITED ARAB EMIRATES', '3', NULL, NULL, NULL, NULL, NULL, '1', '12', '2020-12-10', '2021-01-09', '2021-01-04', NULL, '28962901.jpg', '359891027.png', NULL, NULL, NULL, '25.397130', '55.443900', NULL, NULL, 'We strive to reach beyond the roots (of hair), and into the refinement and healing of one’s core self.Salon U is an award-winning salon, established in the year 2002 and known for high-quality beauty, hair, and spa services.We celebrate women and men in their real, most raw, authentic brilliance.', NULL, '0', '1', '22', NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 10:25:23', '2020-12-10 10:51:08'),
(23, NULL, 'Dhuruveena', 'dhuruv@gmail.com', NULL, '$2y$10$xKWVp/TVFHoj.FTngyReNu6cd3dpPPNoBzq7q3b6OyjuS2dhvOtym', NULL, '3', '9512369874', 'Dhuruveena', NULL, '10', NULL, 'P.O. Box 3625 Sheikh Khalifa Bin Saeed Street Dubai P.O. Box 901 Abu Dhabi', '1', NULL, NULL, NULL, NULL, NULL, '1', '13', '2020-12-10', '2021-01-09', '2021-01-04', NULL, '2087802672.jpg', '1495988228.png', NULL, NULL, NULL, '24.486931', '54.354198', NULL, NULL, 'Beauty salon, offers expert services in hairstyling, skin and beauty care. It is dedicated to the contemporary Woman’s exploration of the fine art of beauty', NULL, '0', '1', '23', NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 10:27:19', '2020-12-10 10:51:56'),
(24, NULL, 'Grekish', 'grekish@gmail.com', NULL, '$2y$10$xKWVp/TVFHoj.FTngyReNu6cd3dpPPNoBzq7q3b6OyjuS2dhvOtym', NULL, '3', '9426543287', 'Grekish', NULL, '10', NULL, '45 O’Connor Street, Suite 1800,\r\nWorld Exchange Plaza, Ottawa, Ontario K1P 1A4', '3', NULL, NULL, NULL, NULL, NULL, '7', '15', '2020-12-10', '2021-03-10', '2021-03-05', NULL, '1805968047.jpg', '626876169.png', NULL, NULL, NULL, '24.466667', '54.366669', NULL, NULL, 'Beauty salon, offers expert services in hairstyling, skin and beauty care. It is dedicated to the contemporary Woman’s exploration of the fine art of beauty', NULL, '0', '1', '24', NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 10:28:47', '2020-12-10 10:54:22'),
(25, NULL, 'Bhavesha', 'bhavi@gmail.com', NULL, '$2y$10$xKWVp/TVFHoj.FTngyReNu6cd3dpPPNoBzq7q3b6OyjuS2dhvOtym', NULL, '3', '7065489632', 'Bhaveesha', NULL, '10', NULL, 'Office no- 873, Floor No- 8, Al Ghaith Tower,(opposite to ADCB BANK Hamdan Street Abu dhabi - Abu Dhabi - United Arab Emirates', '3', NULL, NULL, NULL, NULL, NULL, '11', '16', '2020-12-11', '2021-03-11', '2021-03-01', NULL, '1381615800.jpg', '992679680.jpg', NULL, NULL, NULL, '24.421555', '54.576599', NULL, NULL, NULL, NULL, '0', '1', '25', NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 10:30:01', '2020-12-11 07:30:26'),
(26, NULL, 'shreeja', 'shreejashri@gmail.com', NULL, '$2y$10$xKWVp/TVFHoj.FTngyReNu6cd3dpPPNoBzq7q3b6OyjuS2dhvOtym', NULL, '4', '6358412987', 'Glow Pearl', NULL, '10', NULL, 'Office no- 873, Floor No- 8, Al Ghaith Tower,(opposite to ADCB BANK Hamdan Street Abu dhabi - Abu Dhabi - United Arab Emirates', '3', NULL, NULL, NULL, NULL, NULL, '1', '17', '2020-12-11', '2021-01-10', '2021-01-05', NULL, '111674713.jpg', '1059936168.jpg', NULL, NULL, NULL, '24.474551', '54.349218', NULL, NULL, NULL, NULL, '0', '1', '26', NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 10:31:33', '2020-12-11 07:30:36'),
(27, NULL, 'Surjeshvi', 'surjeshvi@gmail.com', NULL, '$2y$10$xKWVp/TVFHoj.FTngyReNu6cd3dpPPNoBzq7q3b6OyjuS2dhvOtym', NULL, '4', '9632145632', 'Surjeshvi', NULL, '10', NULL, 'Office no- 873, Floor No- 8, Al Ghaith Tower,(opposite to ADCB BANK Hamdan Street Abu dhabi - Abu Dhabi - United Arab Emirates', '3', NULL, NULL, NULL, NULL, NULL, '1', '18', '2020-12-11', '2021-01-10', '2021-01-05', NULL, '1954089178.jpg', '1083775378.jpg', NULL, NULL, NULL, '24.467717', '54.355362', NULL, NULL, NULL, NULL, '0', '1', '27', NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 10:33:26', '2020-12-11 07:32:02'),
(28, NULL, 'Gulbeezsha', 'gulbeesh@gmail.com', NULL, '$2y$10$xKWVp/TVFHoj.FTngyReNu6cd3dpPPNoBzq7q3b6OyjuS2dhvOtym', NULL, '4', '9852412563', 'Gulbeezsha', NULL, '10', NULL, 'Office no- 873, Floor No- 8, Al Ghaith Tower,(opposite to ADCB BANK Hamdan Street Abu dhabi - Abu Dhabi - United Arab Emirates', '3', NULL, NULL, NULL, NULL, NULL, '1', '19', '2020-12-11', '2021-01-10', '2021-01-05', NULL, '1034682067.jpg', '662823675.jpg', NULL, NULL, NULL, '24.477906', '54.381575', NULL, NULL, NULL, NULL, '0', '1', '28', NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 10:35:50', '2020-12-11 07:32:19'),
(29, NULL, 'Clarie Shaw', 'clarie@gmail.com', NULL, '$2y$10$xKWVp/TVFHoj.FTngyReNu6cd3dpPPNoBzq7q3b6OyjuS2dhvOtym', NULL, '5', '6543219871', NULL, NULL, '10', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, '1', '20', '2020-12-11', '2021-01-10', '2021-01-05', NULL, '864999429.jpg', '1859906199.jpg', NULL, NULL, NULL, '24.477906', '54.381575', NULL, NULL, 'Beauty salon, offers expert services in hairstyling, skin and beauty care. It is dedicated to the contemporary Woman’s exploration of the fine art of beauty', NULL, '0', '1', '29', NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 10:39:25', '2020-12-11 07:32:39'),
(30, NULL, 'Gripeeshk', 'gripeesh@gmail.com', NULL, '$2y$10$xKWVp/TVFHoj.FTngyReNu6cd3dpPPNoBzq7q3b6OyjuS2dhvOtym', NULL, '5', '6541495236', NULL, NULL, '10', NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, '1', '21', '2020-12-11', '2021-01-10', '2021-01-05', NULL, '123606130.jpg', '1918998366.jpg', NULL, NULL, NULL, '24.447833', '54.400886\r\n', NULL, 'www.lrbinfotech.com', 'We strive to reach beyond the roots (of hair), and into the refinement and healing of one’s core self.Salon U is an award-winning salon, established in the year 2002 and known for high-quality beauty, hair, and spa services.We celebrate women and men in their real, most raw, authentic brilliance, who believe in themselves and are ready to step into the look they love. We employ hair products with some of the most natural and rich ingredients because we believe you should never expect less.', NULL, '0', '1', '30', NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 10:41:56', '2020-12-11 07:32:49'),
(31, NULL, 'Kalishfa', 'kalish@gmail.com', NULL, '$2y$10$xKWVp/TVFHoj.FTngyReNu6cd3dpPPNoBzq7q3b6OyjuS2dhvOtym', NULL, '5', '9541785236', NULL, NULL, '10', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, '1', '22', '2020-12-11', '2021-01-10', '2021-01-05', NULL, '499894115.jpg', '848169265.jpg', NULL, NULL, NULL, '24.381643', '54.524887', NULL, 'www.lrbinfotech.com', 'We strive to reach beyond the roots (of hair), and into the refinement and healing of one’s core self.Salon U is an award-winning salon, established in the year 2002 and known for high-quality beauty, hair, and spa services.We celebrate women and men in their real, most raw, authentic brilliance, who believe in themselves and are ready to step into the look they love. We employ hair products with some of the most natural and rich ingredients because we believe you should never expect less.', NULL, '0', '1', '31', NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 10:42:38', '2020-12-11 07:32:59'),
(32, NULL, 'Swetha', 'swetha@gmail.com', NULL, '$2y$10$xKWVp/TVFHoj.FTngyReNu6cd3dpPPNoBzq7q3b6OyjuS2dhvOtym', NULL, NULL, '98452148789', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '530430378.jpg', NULL, NULL, NULL, '24.381643', '54.524887', NULL, NULL, NULL, NULL, '0', '2', '23', '1', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 10:57:55', '2020-12-08 07:07:16'),
(33, NULL, 'boomika', 'boomi@gmail.com', NULL, '$2y$10$LhizEX9Kn8HJDlgQGY78/OkCmNzMGiOtPyTMkFDUExxmQtJIDpouy', NULL, NULL, '9685412365', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '424600543.jpg', NULL, NULL, NULL, '24.381643', '54.524887', NULL, NULL, NULL, NULL, '0', '2', '23', '1', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 11:03:55', '2020-12-08 07:07:16'),
(34, NULL, 'meharnisha', 'mehar@gmail.com', NULL, '$2y$10$xKWVp/TVFHoj.FTngyReNu6cd3dpPPNoBzq7q3b6OyjuS2dhvOtym', NULL, NULL, '6541237485', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1287759339.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '14', '2,3', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 11:13:39', '2020-12-08 07:07:16'),
(35, NULL, 'pavitha', 'pavithra@gmail.com', NULL, '$2y$10$r6BoRRQXLEmAuWHqMVCX7eV.DJ2HHFbbdSUpadeJ3RPnbqFPYoKLG', NULL, NULL, '9574412563', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1572496301.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '14', '1', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 11:14:42', '2020-12-08 07:07:16'),
(36, NULL, 'swapna', 'swapna@gmail.com', NULL, '$2y$10$GaPkE24SY/th4VT1eGyiQ.4z1zSic2EWV8agH0cQMlCCySUYa1BXS', NULL, NULL, '9654841235', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1882042701.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '14', '1', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 11:15:38', '2020-12-08 07:07:16'),
(37, NULL, 'Harishma', 'harishma@gmail.com', NULL, '$2y$10$xmQH0z8p0KXy6F./mFIuTe4luCcaxXI0co0vNzwJs/bOTW/WGn90q', NULL, NULL, '9874563214', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1521346292.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '18', '1', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 11:18:54', '2020-12-08 07:07:16'),
(38, NULL, 'keerthika', 'keerthika@gmail.com', NULL, '$2y$10$8GXbd7KJwxq8BGF7jFdeLOkbTX1p8DFFY44Yx3UZ/HBL5jCYTSoGq', NULL, NULL, '9874563214', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1740620972.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '18', '1', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 11:19:46', '2020-12-08 07:07:16'),
(39, NULL, 'poornima', 'poornima@gmail.com', NULL, '$2y$10$qrwFNL00pWYyu.GKpK1vNO5mQwv4vB6HRjNmjzP6TpGfpmdw1v/dG', NULL, NULL, '6326347896', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2129380621.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '18', '1', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 11:21:08', '2020-12-08 07:07:16'),
(40, NULL, 'jeyashree', 'jeyashree@gmail.com', NULL, '$2y$10$MlcsLJzbKXKgd/F9LrGSqeR3crib.LFB83jitVI3.VGRLm1l0efdC', NULL, NULL, '9874125632', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '534751861.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '19', '1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 11:34:44', '2020-12-08 07:07:16'),
(41, NULL, 'avanthika', 'avanthika@gmail.com', NULL, '$2y$10$YY8D1c3CIisPyl0fuRHBWukPRBvXDvpob7NHKUhJWs/4nK0y7m/fm', NULL, NULL, '6547789654', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '674413821.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '19', '1', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 11:35:35', '2020-12-08 07:07:16'),
(42, NULL, 'keerthu', 'keerthu@gmail.com', NULL, '$2y$10$nVokYzqecZp8EGL.vDKsdO07jQkdFVnGMaPD48uyMk2VRa9rw9k06', NULL, NULL, '9745653214', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '663455441.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '20', '1', '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 11:41:14', '2020-12-08 07:07:16'),
(43, NULL, 'grija', 'grija@gmail.com', NULL, '$2y$10$bfj.u3unQDq..6pNwR/UeuiWV/GOF0/F3wQmnqfej7/4gyxnoF06C', NULL, NULL, '9874563214', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1844250977.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '20', '1', '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 11:42:54', '2020-12-08 07:07:16'),
(44, NULL, 'Nathiya', 'nathiya@gmail.com', NULL, '$2y$10$iMGLKg9hh/QFgwg6Utzgb.4J0MXIEcrN.hOnZlwAaXYB7lytB5hFK', NULL, NULL, '9412563214', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1835023796.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '21', '1', '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 11:51:51', '2020-12-08 07:07:16'),
(45, NULL, 'ashifha', 'ashifha@gmail.com', NULL, '$2y$10$.Gjw8KaEIlKoA3fY3QcfuukuVgJlU/v10RG7zZUef8607jWsaNAFS', NULL, NULL, '9425612365', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1581169201.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '21', '1', '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 11:52:37', '2020-12-08 07:07:16'),
(46, NULL, 'rishika', 'rishika@gmail.com', NULL, '$2y$10$pWdkjVjviZHapLUeoqdol..1eAh7joBXOpWHCZr/kbloqbQLen7cu', NULL, NULL, '6358964123', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '190439537.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '21', '1', '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 11:53:29', '2020-12-08 07:07:16'),
(47, NULL, 'Carolina', 'carolina@gmail.com', NULL, '$2y$10$8vq7i7/NfAQe.2838G17..kAsucVPLtqhCo7YVyjKiNI0WUShZKae', NULL, NULL, '9014785523', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1582946374.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '22', '1', '9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 11:58:02', '2020-12-08 07:07:16'),
(48, NULL, 'Deepika', 'deepika@gmail.com', NULL, '$2y$10$TmIghfZLWHbDGwfM8DsvS.7nzGhg0gan0ddZYaO32lq.XuOqm7FUy', NULL, NULL, '9325489642', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '110310373.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '22', '1', '9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 11:59:10', '2020-12-08 07:07:16'),
(49, NULL, 'praveena', 'praveena@gmailcom', NULL, '$2y$10$qSeKW.dPdzgC3npJldHQ7.CywY1B3CuDhHQD/S7Gywblvcf4FoZYG', NULL, NULL, '9104844125', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1826846958.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '22', '1', '9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 12:00:17', '2020-12-08 07:07:16'),
(50, NULL, 'Malavika', 'malavika@gmail.com', NULL, '$2y$10$8yAtudgm3nGsBcG7CUYn9OlH9dAFTxJjPSv3nf73YFUbPkuRW.F3u', NULL, NULL, '9874152145', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '52515770.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '24', '1', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 12:07:59', '2020-12-08 07:07:16'),
(51, NULL, 'miruthula', 'miruthula@gmail.com', NULL, '$2y$10$IeVnYOG10Wb5QZhRCmveue2UQ54LQCJdN9CS45rVDGbzLcYe/AeiW', NULL, NULL, '9856854785', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '399375376.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '24', '1', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 12:09:44', '2020-12-08 07:07:16'),
(52, NULL, 'sushmitha', 'susmitha@gmail.com', NULL, '$2y$10$oL2koEzv9ZYNcOWKOfXrxOY4JzYBzosVE7ydTzx0urfaXnyTm7LFG', NULL, NULL, '6321487542', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '616170661.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '25', '1', '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 12:37:11', '2020-12-08 07:07:16'),
(53, NULL, 'parishma', 'parishma@gmail.com', NULL, '$2y$10$cwMcCWJ2kBbotSUW/.YHe.mbIqKRVfkAaoVoiFOdnxigffTcPBvsa', NULL, NULL, '9874145412', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '170566424.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '25', '1', '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 12:38:09', '2020-12-08 07:07:16'),
(55, NULL, 'shalifhahaseen', 'aravind.021hh6@gmail.com', NULL, NULL, NULL, NULL, '9875453214', NULL, NULL, '10', NULL, '15/7 local street', '2', NULL, '1321624964', '654654984', '656541601348', '2165454184954', '1', '23', '2020-12-11', '2021-01-10', '2021-01-05', NULL, '1249817378.png', '934321870.png', NULL, '930729523.png', '379157554.png', NULL, NULL, 'data:image/png;base64,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', NULL, NULL, NULL, '0', '1', '55', NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-28 08:05:38', '2020-12-11 07:33:07'),
(81, NULL, 'SAm', 'fitnessforeverfit@gmail.com', NULL, '$2y$10$b/ANyh6tIHYcnJ6PhyaDeu5aahnJLZjX2bTaffCBvrwgO3kB.vq6y', NULL, '1', '501107367', 'Sam Salon', '000002223223', '10', NULL, '3 Al Rak St - Al Mushrif - Abu Dhabi - United Arab Emirates', '2', NULL, 'As45464644SSD245', 'CA1246194G', '57684464684', 'L-6494646', '1', '24', '2020-12-11', '2021-01-10', '2021-01-05', NULL, '393645331.jpg', '1498000355.jpg', '1391433894.jpg', '1165572386.jpg', '2111081686.jpg', '24.43929214891219', '54.39722433321837', 'data:image/png;base64,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', NULL, NULL, NULL, '0', '1', '81', NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-05 05:50:53', '2020-12-11 07:33:15');
INSERT INTO `users` (`id`, `date`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `busisness_type`, `phone`, `salon_name`, `salon_id`, `city`, `area`, `address`, `nationality`, `country_id`, `emirates_id`, `trade_license_no`, `vat_certificate_no`, `passport_number`, `salon_package`, `used_package_id`, `active_date`, `expiry_date`, `remind_date`, `salon_commission`, `cover_image`, `profile_image`, `trade_license`, `emirated_id_copy`, `passport_copy`, `latitude`, `longitude`, `signature_data`, `website`, `about_english`, `about_arabic`, `login_status`, `status`, `user_id`, `service_ids`, `role_id`, `account_number`, `bank_name`, `iban_number`, `swift_code`, `account_name`, `fcm_token`, `otp`, `salon_pay`, `salon_paid`, `salon_balance`, `admin_pay`, `admin_paid`, `admin_balance`, `created_at`, `updated_at`) VALUES
(85, '2020-12-05', 'Thowsif', 'thowsif@lrbinfotech.com', NULL, NULL, NULL, '1', '568169568', 'Thowsif', '123556', '11', NULL, '914 مبارك بن محمد - Al Mushrif - Abu Dhabi - United Arab Emirates', '2', NULL, '123456', '123456', '12345667', 'Qertyytyy', '1', '25', '2020-12-11', '2021-01-10', '2021-01-05', NULL, '246369160.jpg', '627961140.jpg', '408079108.jpg', '1154535133.jpg', '1755251968.jpg', '24.449352307438993', '54.37391057246092', 'data:image/png;base64,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', NULL, NULL, NULL, '0', '1', '85', NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-05 13:57:31', '2020-12-11 07:33:23'),
(86, '2020-12-06', 'Aravind', 'aravind.0216@gmail.com', NULL, NULL, NULL, '5', '987654321', NULL, NULL, '10', NULL, 'Office no- 873, Floor No- 8, Al Ghaith Tower,(opposite to ADCB BANK Hamdan Street Abu dhabi - Zone 1شرق 8 - أبو ظبي - United Arab Emirates', '1', NULL, '654321', '909090', '45678', '7654321', '1', '26', '2020-12-11', '2021-01-10', '2021-01-05', NULL, '1855594297.jpg', '1155086627.jpg', NULL, '309527543.jpg', '1594867549.jpg', '24.4908877', '54.3638712', 'data:image/png;base64,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kk8AnnvuufCxj30svPOd7wzf+ta3wp133rkg3tzcDF/60pfCL3/5y/D000+Hd7/73ZnRq+4ygerlSBKAZVL+nQABAgQIECDQXCD5BCAO/r773e+GT3/60+Hb3/52eOSRRxat++EPfxgefvjh8P3vfz984hOfCHG3GD/zEpAAzCueWkOAAAECBAikIZB8AhCZLl68GD73uc+FP/zhD+HHP/7xYlnIxz/+8fDggw+Gxx57LJw4cSINTbXoVUAC0CunwggQIECAAAECC4EsEoBY0Wop0Hvf+95w+fLlcO7cufDkk0+G+++/XygJECBAgAABAgQIEGgokE0CUF8KdOrUqcVyoPhsgB8CBAgQIECAAAECBJoLZJMAxCb98Y9/DGfOnAk7Ozs3PfjrGYDmQXckAQIECBAgQIDA6gJz2ZgkmwQg7vrz+c9/PvzsZz9bROuhhx4KX/va166v/5cArN6JnUGAAAECBAgQINBcQALQ3KrzkRE77vrz2c9+drH0J/7EXYGeeOIJOwB11lUAAQIECBAgQIBASQJZ3AH405/+tNj15z3vec9i1j/+xLsBv/vd78JTTz3lQeCSeqy2EiBAgAABAgQIdBJIPgGolv786le/umHdf31XoPpSoE4aTiZAgAABAgQIECAwc4GkE4Bq6U984dfXv/71cPbs2esv/Ir/9o1vfCM8+uijXgY2806qeQQIECBAgAABAv0JJJ0A9NdMJREgQIAAAQIECBAgEAUkAPoBAQIECBAgQIAAgYIEJAAFBVtTCRAgQIAAAQIECEgA9AECBAgQIECAAAECBQlIAAoKtqYSIECAAAECBAgQkADoAwQIECBAgAABAgQKEpAAFBRsTSVAgAABAgQIECAgAdAHCBAgQIAAAQIECBQkIAEoKNiaSoAAAQIECBAgQEACoA8QIECAAAECBAgQKEhAAlBQsDWVAAECBAgQIECAgARAHyBAgAABAgQIECBQkIAEoKBgayoBAgQIECBAgAABCYA+QIAAAQIECBAgQKAgAQlAQcHWVAIECBAgQIAAAQISAH2AAAECBAgQIECAQEECEoCCgq2pBAgQIECAAAECBCQA+gABAgQIECBAgACBggQkAAUFW1MJECBAgAABAgQISAD0AQIECBAgQIAAAQIFCUgACgq2phIgQIAAAQIECBCQAOgDBAgQIECAAAECBAoSkAAUFGxNJUCAAAECBAgQICAB0AcIECBAgAABAgQIFCQgASgo2JpKgAABAgQIECBAQAKgDxAgQIAAAQIECBAoSEACUFCwNZUAAQIECBAgQICABEAfIECAAAECBAgQIFCQgASgoGBrKgECBAgQIECAAAEJgD5AgAABAgQIECBAoCABCUBBwdZUAhrG2MgAAADwSURBVAQIECBAgAABAhIAfYAAAQIECBAgQIBAQQISgIKCrakECBAgQIAAAQIEJAD6AAECBAgQIECAAIGCBCQABQVbUwkQIECAAAECBAhIAPQBAgQIECBAgAABAgUJSAAKCramEiBAgAABAgQIEJAA6AMECBAgQIAAAQIEChKQABQUbE0lQIAAAQIECBAgIAHQBwgQIECAAAECBAgUJCABKCjYmkqAAAECBAgQIEBAAqAPECBAgAABAgQIEChIQAJQULA1lQABAgQIECBAgIAEQB8gQIAAAQIECBAgUJCABKCgYGsqAQIECBAgQIAAgf8B+SDXmV/l9GYAAAAASUVORK5CYII=', NULL, NULL, NULL, '0', '1', '86', NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-06 02:55:22', '2020-12-11 07:33:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_beauties`
--
ALTER TABLE `app_beauties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_homes`
--
ALTER TABLE `app_homes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_makeups`
--
ALTER TABLE `app_makeups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_salons`
--
ALTER TABLE `app_salons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_spas`
--
ALTER TABLE `app_spas`
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
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_items`
--
ALTER TABLE `booking_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_packages`
--
ALTER TABLE `booking_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_customers`
--
ALTER TABLE `chat_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_salons`
--
ALTER TABLE `chat_salons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
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
-- Indexes for table `customer_packages`
--
ALTER TABLE `customer_packages`
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
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_addresses`
--
ALTER TABLE `manage_addresses`
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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments_ins`
--
ALTER TABLE `payments_ins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments_outs`
--
ALTER TABLE `payments_outs`
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
-- Indexes for table `salon_customers`
--
ALTER TABLE `salon_customers`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app_beauties`
--
ALTER TABLE `app_beauties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `app_homes`
--
ALTER TABLE `app_homes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `app_makeups`
--
ALTER TABLE `app_makeups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `app_salons`
--
ALTER TABLE `app_salons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `app_spas`
--
ALTER TABLE `app_spas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `booking_items`
--
ALTER TABLE `booking_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `booking_packages`
--
ALTER TABLE `booking_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `chat_customers`
--
ALTER TABLE `chat_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_salons`
--
ALTER TABLE `chat_salons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `customer_packages`
--
ALTER TABLE `customer_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `manage_addresses`
--
ALTER TABLE `manage_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `new_services`
--
ALTER TABLE `new_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payments_ins`
--
ALTER TABLE `payments_ins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments_outs`
--
ALTER TABLE `payments_outs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `push_notifications`
--
ALTER TABLE `push_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `salon_customers`
--
ALTER TABLE `salon_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `salon_packages`
--
ALTER TABLE `salon_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `salon_package_items`
--
ALTER TABLE `salon_package_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `salon_passwords`
--
ALTER TABLE `salon_passwords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `salon_roles`
--
ALTER TABLE `salon_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `salon_services`
--
ALTER TABLE `salon_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `salon_workers`
--
ALTER TABLE `salon_workers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `service_times`
--
ALTER TABLE `service_times`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=435;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `terms_and_conditions`
--
ALTER TABLE `terms_and_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `used_packages`
--
ALTER TABLE `used_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
