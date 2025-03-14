-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 14, 2025 at 08:24 AM
-- Server version: 10.6.21-MariaDB
-- PHP Version: 8.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mustafa_stuarchivephp`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `workspace_id` bigint(20) UNSIGNED DEFAULT NULL,
  `actor_id` bigint(20) NOT NULL,
  `actor_type` varchar(56) NOT NULL,
  `type_id` bigint(20) NOT NULL,
  `type` varchar(56) NOT NULL,
  `parent_type_id` bigint(20) DEFAULT NULL,
  `parent_type` varchar(56) DEFAULT NULL,
  `activity` varchar(56) NOT NULL,
  `message` varchar(512) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `workspace_id`, `actor_id`, `actor_type`, `type_id`, `type`, `parent_type_id`, `parent_type`, `activity`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'user', 1, 'project', NULL, NULL, 'created', 'mustafa stu created project  ادارة الصادر', '2024-06-28 14:03:27', '2024-06-28 14:03:27'),
(2, 1, 1, 'user', 1, 'task', 1, 'project', 'created', 'mustafa stu created task  ادارة سجل الصادر والوارد الالكتروني', '2024-06-28 14:04:40', '2024-06-28 14:04:40'),
(3, 1, 1, 'user', 1, 'client', NULL, NULL, 'created', 'mustafa stu created client  رند علي محمد شعبة العلمية', '2024-06-28 19:40:58', '2024-06-28 19:40:58'),
(4, 1, 1, 'user', 14, 'priority', NULL, NULL, 'created', 'mustafa stu created priority  تم', '2024-06-28 19:50:16', '2024-06-28 19:50:16'),
(5, 1, 1, 'user', 15, 'priority', NULL, NULL, 'created', 'mustafa stu created priority  غير موجود', '2024-06-28 19:50:29', '2024-06-28 19:50:29'),
(6, 1, 1, 'user', 16, 'priority', NULL, NULL, 'created', 'mustafa stu created priority  تمت الارشفة', '2024-06-28 19:50:40', '2024-06-28 19:50:40'),
(7, 1, 1, 'user', 17, 'priority', NULL, NULL, 'created', 'mustafa stu created priority  تمت الاجابة', '2024-06-28 19:50:49', '2024-06-28 19:50:49'),
(8, 1, 1, 'user', 18, 'priority', NULL, NULL, 'created', 'mustafa stu created priority  بانتظار تجميع الكتب من الاقسام', '2024-06-28 19:51:06', '2024-06-28 19:51:06'),
(9, 1, 1, 'user', 19, 'priority', NULL, NULL, 'created', 'mustafa stu created priority  لم يردنا الكتاب', '2024-06-28 19:51:23', '2024-06-28 19:51:23'),
(10, 1, 1, 'user', 71, 'status', NULL, NULL, 'created', 'mustafa stu created status  تمت الاجابة', '2024-06-28 19:51:58', '2024-06-28 19:51:58'),
(11, 1, 1, 'user', 72, 'status', NULL, NULL, 'created', 'mustafa stu created status  تمت الارشفة', '2024-06-28 19:52:12', '2024-06-28 19:52:12'),
(12, 1, 1, 'user', 73, 'status', NULL, NULL, 'created', 'mustafa stu created status  بانتظار تجميع الاجابات', '2024-06-28 19:52:28', '2024-06-28 19:52:28'),
(13, 1, 1, 'user', 74, 'status', NULL, NULL, 'created', 'mustafa stu created status  لو يردنا الكتاب', '2024-06-28 19:52:41', '2024-06-28 19:52:41'),
(14, 1, 1, 'user', 1, 'project', NULL, NULL, 'updated', 'mustafa stu updated project  ادارة الصادر', '2024-06-28 19:55:12', '2024-06-28 19:55:12'),
(15, 1, 1, 'user', 1, 'task', 1, 'project', 'deleted', 'mustafa stu deleted task ادارة سجل الصادر والوارد الالكتروني', '2024-06-28 19:57:22', '2024-06-28 19:57:22'),
(16, 1, 1, 'user', 2, 'project', NULL, NULL, 'created', 'mustafa stu created project  ادارة الوارد', '2024-06-28 19:59:12', '2024-06-28 19:59:12'),
(17, 1, 1, 'user', 1, 'project', NULL, NULL, 'updated', 'mustafa stu updated project  ادارة الصادر', '2024-06-28 19:59:31', '2024-06-28 19:59:31'),
(18, 1, 1, 'user', 1, 'task', 2, 'project', 'created', 'mustafa stu created task  مجزرة سبايكر', '2024-09-30 11:23:13', '2024-09-30 11:23:13'),
(19, 1, 1, 'user', 1, 'media', 1, 'task', 'uploaded', 'mustafa stu uploaded media  cv-admin-+-doc-1727702697_2379.pdf', '2024-09-30 11:24:57', '2024-09-30 11:24:57'),
(20, 1, 1, 'user', 1, 'payslip', NULL, NULL, 'created', 'mustafa stu created payslip  PSL-1', '2024-09-30 11:28:27', '2024-09-30 11:28:27'),
(21, 1, 1, 'user', 1, 'tag', NULL, NULL, 'created', 'mustafa stu created tag  ص', '2024-11-02 11:02:34', '2024-11-02 11:02:34'),
(22, 1, 1, 'user', 2, 'task', 1, 'project', 'created', 'mustafa stu created task  كتاب', '2024-11-02 11:08:24', '2024-11-02 11:08:24'),
(23, 1, 1, 'user', 15, 'priority', NULL, NULL, 'deleted', 'mustafa stu deleted priority غير موجود', '2024-11-02 11:11:40', '2024-11-02 11:11:40'),
(24, 1, 1, 'user', 1, 'workspace', NULL, NULL, 'updated', 'mustafa stu updated workspace  مساحة عمل الشركة', '2024-11-02 11:17:21', '2024-11-02 11:17:21'),
(25, 1, 1, 'user', 2, 'project', NULL, NULL, 'updated_status', 'mustafa stu updated project status from Default to بانتظار تجميع الاجابات', '2024-11-02 11:19:22', '2024-11-02 11:19:22'),
(26, 1, 1, 'user', 1, 'project', NULL, NULL, 'updated_status', 'mustafa stu updated project status from Default to تمت الارشفة', '2024-11-02 11:19:32', '2024-11-02 11:19:32'),
(27, 1, 1, 'user', 2, 'media', 2, 'project', 'uploaded', 'mustafa stu uploaded media  المواصفات_الفنية_لللنظام-1735665142_9470.pdf', '2024-12-31 16:12:22', '2024-12-31 16:12:22'),
(28, 1, 1, 'user', 1, 'client', NULL, NULL, 'updated', 'mustafa stu updated client  رند علي محمد شعبة العلمية', '2024-12-31 16:13:36', '2024-12-31 16:13:36'),
(29, 1, 1, 'client', 1, 'note', NULL, NULL, 'created', 'رند علي محمد شعبة العلمية created note  مرحبا', '2024-12-31 16:14:33', '2024-12-31 16:14:33'),
(30, 1, 1, 'user', 1, 'client', NULL, NULL, 'deleted', 'mustafa stu deleted client رند علي محمد شعبة العلمية', '2024-12-31 16:19:10', '2024-12-31 16:19:10'),
(31, 1, 1, 'user', 2, 'client', NULL, NULL, 'created', 'mustafa stu created client  رند علمية', '2024-12-31 16:20:25', '2024-12-31 16:20:25'),
(32, 1, 1, 'user', 2, 'user', NULL, NULL, 'created', 'mustafa stu created user  رند بغا', '2024-12-31 16:22:06', '2024-12-31 16:22:06'),
(33, 1, 1, 'user', 2, 'user', NULL, NULL, 'updated', 'mustafa stu updated user  رند بغا', '2024-12-31 16:23:06', '2024-12-31 16:23:06'),
(34, 1, 1, 'user', 2, 'project', NULL, NULL, 'updated', 'mustafa stu updated project  ادارة الوارد', '2024-12-31 16:24:24', '2024-12-31 16:24:24'),
(35, 1, 1, 'user', 1, 'project', NULL, NULL, 'updated', 'mustafa stu updated project  ادارة الصادر', '2024-12-31 16:25:10', '2024-12-31 16:25:10'),
(36, 1, 1, 'user', 3, 'task', 2, 'project', 'created', 'mustafa stu created task  الفصل السياسي', '2024-12-31 16:44:24', '2024-12-31 16:44:24'),
(37, 1, 2, 'user', 2, 'project', NULL, NULL, 'updated', 'رند بغا updated project  ادارة الوارد', '2024-12-31 16:45:55', '2024-12-31 16:45:55'),
(38, 1, 2, 'user', 3, 'media', 1, 'project', 'uploaded', 'رند بغا uploaded media  photo_2024-09-21_15-03-45-1740152832_7800.jpg', '2025-02-21 14:47:13', '2025-02-21 14:47:13');

-- --------------------------------------------------------

--
-- Table structure for table `allowances`
--

CREATE TABLE `allowances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `workspace_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `allowance_payslip`
--

CREATE TABLE `allowance_payslip` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `allowance_id` bigint(20) UNSIGNED NOT NULL,
  `payslip_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ch_favorites`
--

CREATE TABLE `ch_favorites` (
  `id` char(36) NOT NULL,
  `workspace_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `favorite_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ch_messages`
--

CREATE TABLE `ch_messages` (
  `id` char(36) NOT NULL,
  `workspace_id` bigint(20) UNSIGNED NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `body` varchar(5000) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ch_messages`
--

INSERT INTO `ch_messages` (`id`, `workspace_id`, `from_id`, `to_id`, `body`, `attachment`, `seen`, `created_at`, `updated_at`) VALUES
('cbd2afdd-ce0f-4456-9aa1-3892f1723a25', 1, 1, 1, '.', NULL, 1, '2024-09-30 11:26:36', '2024-11-02 11:16:24');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `email` varchar(191) NOT NULL,
  `country_code` varchar(28) DEFAULT NULL,
  `phone` varchar(56) NOT NULL,
  `password` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `doj` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zip` varchar(56) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `lang` varchar(28) NOT NULL DEFAULT 'en',
  `remember_token` text DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `first_name`, `last_name`, `company`, `email`, `country_code`, `phone`, `password`, `dob`, `doj`, `address`, `city`, `state`, `country`, `zip`, `photo`, `status`, `lang`, `remember_token`, `email_verified_at`, `created_at`, `updated_at`) VALUES
(2, 'رند', 'علمية', 'رئاسة الجامعة / العلمية', 'em1@gmail.com', '967', '7700000000', '$2y$10$E3Ohm/sTzsy9T8YlksQUDexW2OsMby/wBfWQDgSfLHOZTi.0N63fy', '2024-12-10', '2024-12-10', 'رئاسة الجامعة', 'البصرة', 'بصرة', 'العراق', '61001', 'photos/no-image.jpg', 1, 'en', NULL, '2024-12-31 19:20:25', '2024-12-31 16:20:25', '2024-12-31 16:20:25');

-- --------------------------------------------------------

--
-- Table structure for table `client_meeting`
--

CREATE TABLE `client_meeting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meeting_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_notifications`
--

CREATE TABLE `client_notifications` (
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `notification_id` bigint(20) UNSIGNED NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_notifications`
--

INSERT INTO `client_notifications` (`client_id`, `notification_id`, `read_at`) VALUES
(2, 9, NULL),
(2, 10, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `client_project`
--

CREATE TABLE `client_project` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_project`
--

INSERT INTO `client_project` (`id`, `project_id`, `client_id`) VALUES
(4, 1, 2),
(3, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `client_workspace`
--

CREATE TABLE `client_workspace` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `workspace_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_workspace`
--

INSERT INTO `client_workspace` (`id`, `workspace_id`, `client_id`) VALUES
(2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

CREATE TABLE `contracts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `workspace_id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(10,2) NOT NULL,
  `contract_type_id` bigint(20) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `promisor_sign` text DEFAULT NULL,
  `promisee_sign` text DEFAULT NULL,
  `created_by` varchar(56) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contract_types`
--

CREATE TABLE `contract_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `workspace_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contract_types`
--

INSERT INTO `contract_types` (`id`, `workspace_id`, `type`, `created_at`, `updated_at`) VALUES
(0, NULL, 'Default', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deductions`
--

CREATE TABLE `deductions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `workspace_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(512) NOT NULL DEFAULT 'amount',
  `percentage` double DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deduction_payslip`
--

CREATE TABLE `deduction_payslip` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `deduction_id` bigint(20) UNSIGNED NOT NULL,
  `payslip_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `estimates_invoices`
--

CREATE TABLE `estimates_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `workspace_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `note` longtext DEFAULT NULL,
  `personal_note` longtext DEFAULT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `total` double NOT NULL,
  `tax_amount` double DEFAULT NULL,
  `final_total` double NOT NULL,
  `created_by` varchar(56) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `estimates_invoice_item`
--

CREATE TABLE `estimates_invoice_item` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `estimates_invoice_id` bigint(20) UNSIGNED NOT NULL,
  `qty` double NOT NULL,
  `unit_id` bigint(20) DEFAULT NULL,
  `rate` double NOT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `workspace_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `expense_type_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `note` text DEFAULT NULL,
  `expense_date` date NOT NULL,
  `created_by` varchar(56) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_types`
--

CREATE TABLE `expense_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `workspace_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_types`
--

INSERT INTO `expense_types` (`id`, `workspace_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(0, NULL, 'Default', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `workspace_id` bigint(20) UNSIGNED NOT NULL,
  `unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(4, 'English', 'en', '2023-06-29 09:37:47', '2023-06-29 09:37:47'),
(37, 'Arabic', 'ar', '2024-04-11 05:37:27', '2024-04-11 05:37:27');

-- --------------------------------------------------------

--
-- Table structure for table `leave_editors`
--

CREATE TABLE `leave_editors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_requests`
--

CREATE TABLE `leave_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `workspace_id` bigint(20) UNSIGNED NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `from_time` time DEFAULT NULL,
  `to_time` time DEFAULT NULL,
  `reason` text NOT NULL,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `action_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_request_visibility`
--

CREATE TABLE `leave_request_visibility` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `leave_request_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `disk` varchar(255) NOT NULL,
  `conversions_disk` varchar(255) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Task', 1, '60870a84-5881-4d14-84d7-f106ce2f875b', 'task-media', 'cv admin + doc', 'cv-admin-+-doc-1727702697_2379.pdf', 'application/pdf', 'public', 'public', 1270560, '[]', '[]', '[]', '[]', 1, '2024-09-30 11:24:57', '2024-09-30 11:24:57'),
(2, 'App\\Models\\Project', 2, '61053bbc-c58e-44c2-b8d6-3b5b2155e629', 'project-media', 'المواصفات_الفنية_لللنظام', 'المواصفات_الفنية_لللنظام-1735665142_9470.pdf', 'application/pdf', 'public', 'public', 1207137, '[]', '[]', '[]', '[]', 1, '2024-12-31 16:12:22', '2024-12-31 16:12:22'),
(3, 'App\\Models\\Project', 1, '04ff9deb-a96a-4d49-8436-2f17a78dbc42', 'project-media', 'photo_2024-09-21_15-03-45', 'photo_2024-09-21_15-03-45-1740152832_7800.jpg', 'image/jpeg', 'public', 'public', 168972, '[]', '[]', '[]', '[]', 1, '2025-02-21 14:47:12', '2025-02-21 14:47:12');

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `workspace_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `start_date_time` timestamp NULL DEFAULT NULL,
  `end_date_time` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_user`
--

CREATE TABLE `meeting_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meeting_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_05_044027_create_clients_table', 2),
(6, '2023_01_09_041709_create_projects_table', 3),
(7, '2023_01_12_095035_create_tasks_table', 4),
(8, '2023_01_25_061517_create_project_user_table', 5),
(9, '2023_01_27_044336_create_project_client_table', 6),
(10, '2023_01_30_050742_create_task_user_table', 7),
(11, '2023_01_30_060853_create_task_user_table', 8),
(12, '2023_03_02_051733_create_todo_table', 9),
(13, '2023_03_06_043616_create_status_table', 9),
(14, '2023_03_14_045106_create_permission_tables', 10),
(15, '2023_06_14_074411_create_settings_table', 11),
(16, '2023_06_15_074941_create_meetings_table', 12),
(19, '2023_06_15_073618_create_meeting_users_table', 13),
(21, '2023_06_15_074054_create_meeting_clients_table', 14),
(22, '2023_06_15_111007_create_meetings_table', 15),
(23, '2023_06_15_121717_create_meeting_user_table', 16),
(24, '2023_06_15_121752_create_client_meeting_table', 16),
(25, '2023_06_16_999999_add_active_status_to_users', 17),
(26, '2023_06_16_999999_add_avatar_to_users', 17),
(27, '2023_06_16_999999_add_dark_mode_to_users', 17),
(28, '2023_06_16_999999_add_messenger_color_to_users', 17),
(29, '2023_06_16_999999_create_chatify_favorites_table', 17),
(30, '2023_06_16_999999_create_chatify_messages_table', 17),
(34, '2023_06_16_132714_create_workspaces_table', 18),
(36, '2023_06_16_133749_create_workspace_client_table', 18),
(37, '2023_06_16_133505_create_workspace_user_table', 19),
(39, '2023_06_19_100748_alter_projects_table_add_column_workspace_id', 20),
(40, '2023_06_19_111816_alter_projects_table_add_column_created_by', 21),
(41, '2023_06_19_124749_alter_tasks_table_add_columns', 22),
(42, '2023_06_19_134537_alter_meeting_and_todo_tables_add_columns', 23),
(44, '2023_06_20_152434_alter_ch_messages_add_column_workspace_id', 24),
(45, '2023_06_24_162358_alter_ch_messages_add_column_workspace_id', 25),
(46, '2023_06_28_101921_alter_ch_favorites_table_add_column_workspace_id', 25),
(47, '2023_06_29_105758_create_languages_table', 26),
(48, '2023_08_22_124156_create_tags_table', 27),
(49, '2023_08_22_175355_create_project_tags_table', 28),
(50, '2023_08_22_180431_create_project_tag_table', 29),
(51, '2023_08_22_181203_create_project_tag_table', 30),
(52, '2023_08_24_050550_create_project_tag_table', 31),
(53, '2023_09_11_140028_create_todos_table', 32),
(54, '2023_09_11_085224_create_todos_table', 33),
(55, '2023_09_19_063727_create_leave_requests_table', 34),
(56, '2023_09_19_134017_create_leave_editors_table', 35),
(59, '2023_09_20_124013_create_contract_types_table', 36),
(60, '2023_09_20_123424_create_contracts_table', 37),
(61, '2023_09_25_084705_create_payment_methods_table', 38),
(62, '2023_09_25_070729_create_payslips_table', 39),
(63, '2023_09_25_094532_create_allowances_table', 40),
(64, '2023_09_25_094632_create_deductions_table', 40),
(65, '2023_09_27_124345_create_allowance_payslip_table', 41),
(66, '2023_09_27_124747_create_deduction_payslip_table', 41),
(67, '2023_09_29_131131_create_notes_table', 42),
(68, '2023_10_03_115025_create_updates_table', 43),
(69, '2023_10_03_115438_create_updates_table', 44),
(70, '2023_12_18_100056_create_time_trackers_table', 45),
(71, '2023_12_19_044413_create_time_trackers_table', 46),
(74, '2023_12_19_065522_create_time_trackers_table', 47),
(75, '2024_01_17_121328_create_media_table', 48),
(76, '2024_01_24_135513_create_activity_logs_table', 49),
(77, '2024_01_29_135126_create_taxes_table', 50),
(78, '2024_01_30_070848_create_units_table', 51),
(79, '2024_01_31_045129_create_items_table', 52),
(80, '2024_02_02_142029_create_estimates_invoices_table', 53),
(81, '2024_02_02_162343_create_estimates_invoice_item_table', 53),
(82, '2024_02_12_093738_create_expense_types_table', 54),
(83, '2024_02_12_094118_create_expenses_table', 54),
(84, '2024_02_16_043457_create_payments_table', 55),
(85, '2024_02_26_101512_create_milestones_table', 56),
(87, '2024_03_05_074505_create_notifications_table', 57),
(88, '2024_03_05_092120_create_client_notifications_table', 57),
(89, '2024_03_05_092139_create_notification_user_table', 57),
(91, '2024_03_11_120312_create_templates_table', 58),
(92, '2024_04_13_142557_create_priorities_table', 59),
(93, '2024_04_29_122911_create_role_status_table', 60),
(94, '2024_05_02_074714_create_leave_request_visibility_table', 61),
(95, '2024_05_17_054155_create_user_client_preferences_table', 62);

-- --------------------------------------------------------

--
-- Table structure for table `milestones`
--

CREATE TABLE `milestones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `workspace_id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `cost` double NOT NULL,
  `progress` double NOT NULL DEFAULT 0,
  `description` longtext DEFAULT NULL,
  `created_by` varchar(56) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(9, 'App\\Models\\User', 2),
(21, 'App\\Models\\Client', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `workspace_id` bigint(20) UNSIGNED NOT NULL,
  `creator_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `color` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `workspace_id`, `creator_id`, `title`, `description`, `color`, `created_at`, `updated_at`) VALUES
(1, 1, 'c_1', 'مرحبا', NULL, 'danger', '2024-12-31 16:14:33', '2024-12-31 16:14:33');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `workspace_id` bigint(20) UNSIGNED NOT NULL,
  `from_id` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `type_id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `workspace_id`, `from_id`, `type`, `type_id`, `action`, `title`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 'u_1', 'project', 1, 'assigned', 'New project assigned', 'mustafa stu assigned you new project : ادارة الصادر, ID #1.', '2024-06-28 14:03:27', '2024-06-28 14:03:27'),
(2, 1, 'u_1', 'task', 1, 'assigned', 'New task assigned', 'mustafa stu assigned you new task : ادارة سجل الصادر والوارد الالكتروني, ID #1.', '2024-06-28 14:04:40', '2024-06-28 14:04:40'),
(3, 1, 'u_1', 'project', 1, 'assigned', 'New project assigned', 'mustafa stu assigned you new project : ادارة الصادر, ID #1.', '2024-06-28 19:55:12', '2024-06-28 19:55:12'),
(4, 1, 'u_1', 'project', 2, 'assigned', 'New project assigned', 'mustafa stu assigned you new project : ادارة الوارد, ID #2.', '2024-06-28 19:59:12', '2024-06-28 19:59:12'),
(5, 1, 'u_1', 'task', 1, 'assigned', 'New task assigned', 'mustafa stu assigned you new task : مجزرة سبايكر, ID #1.', '2024-09-30 11:23:13', '2024-09-30 11:23:13'),
(6, 1, 'u_1', 'task', 2, 'assigned', 'New task assigned', 'mustafa stu assigned you new task : كتاب, ID #2.', '2024-11-02 11:08:24', '2024-11-02 11:08:24'),
(7, 1, 'u_1', 'project', 2, 'status_updated', 'Project status updated', 'mustafa stu has updated the status of project : ادارة الوارد, ID #2 from Default to بانتظار تجميع الاجابات', '2024-11-02 11:19:22', '2024-11-02 11:19:22'),
(8, 1, 'u_1', 'project', 1, 'status_updated', 'Project status updated', 'mustafa stu has updated the status of project : ادارة الصادر, ID #1 from Default to تمت الارشفة', '2024-11-02 11:19:32', '2024-11-02 11:19:32'),
(9, 1, 'u_1', 'project', 2, 'assigned', 'New project assigned', 'mustafa stu assigned you new project : ادارة الوارد, ID #2.', '2024-12-31 16:24:24', '2024-12-31 16:24:24'),
(10, 1, 'u_1', 'project', 1, 'assigned', 'New project assigned', 'mustafa stu assigned you new project : ادارة الصادر, ID #1.', '2024-12-31 16:25:10', '2024-12-31 16:25:10'),
(11, 1, 'u_1', 'task', 3, 'assigned', 'New task assigned', 'mustafa stu assigned you new task : الفصل السياسي, ID #3.', '2024-12-31 16:44:24', '2024-12-31 16:44:24');

-- --------------------------------------------------------

--
-- Table structure for table `notification_user`
--

CREATE TABLE `notification_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `notification_id` bigint(20) UNSIGNED NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_user`
--

INSERT INTO `notification_user` (`user_id`, `notification_id`, `read_at`) VALUES
(2, 9, NULL),
(2, 10, NULL),
(2, 11, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `workspace_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `invoice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_method_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` double NOT NULL,
  `payment_date` date NOT NULL,
  `note` text DEFAULT NULL,
  `created_by` varchar(56) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `workspace_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `workspace_id`, `title`, `created_at`, `updated_at`) VALUES
(0, NULL, 'Default', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payslips`
--

CREATE TABLE `payslips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `workspace_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method_id` bigint(20) UNSIGNED DEFAULT NULL,
  `month` varchar(128) NOT NULL,
  `working_days` double NOT NULL,
  `lop_days` double NOT NULL,
  `paid_days` double NOT NULL,
  `basic_salary` double NOT NULL,
  `leave_deduction` double NOT NULL,
  `ot_hours` double NOT NULL DEFAULT 0,
  `ot_rate` double NOT NULL DEFAULT 0,
  `ot_payment` double NOT NULL DEFAULT 0,
  `total_allowance` double NOT NULL DEFAULT 0,
  `incentives` double NOT NULL DEFAULT 0,
  `bonus` double NOT NULL DEFAULT 0,
  `total_earnings` double NOT NULL,
  `total_deductions` double NOT NULL DEFAULT 0,
  `net_pay` double NOT NULL,
  `payment_date` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `note` text DEFAULT NULL,
  `created_by` varchar(56) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payslips`
--

INSERT INTO `payslips` (`id`, `user_id`, `workspace_id`, `payment_method_id`, `month`, `working_days`, `lop_days`, `paid_days`, `basic_salary`, `leave_deduction`, `ot_hours`, `ot_rate`, `ot_payment`, `total_allowance`, `incentives`, `bonus`, `total_earnings`, `total_deductions`, `net_pay`, `payment_date`, `status`, `note`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, '2024-07', 31, 0, 31, 1250000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1250000, '2024-09-29 22:00:00', 1, NULL, 'u_1', '2024-09-30 11:28:27', '2024-09-30 11:28:27');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'edit_tasks', 'web', '2023-03-14 00:32:57', '2023-03-14 00:32:57'),
(3, 'delete_tasks', 'web', '2023-03-14 01:09:18', '2023-03-14 01:09:18'),
(4, 'edit_projects', 'web', '2023-03-14 03:22:52', '2023-03-14 03:22:52'),
(5, 'delete_projects', 'web', '2023-03-14 03:23:43', '2023-03-14 03:23:43'),
(6, 'edit_clients', 'web', '2023-03-14 03:23:53', '2023-03-14 03:23:53'),
(7, 'delete_clients', 'web', '2023-03-14 03:24:01', '2023-03-14 03:24:01'),
(8, 'create_projects', 'web', '2023-03-14 23:12:29', '2023-03-14 23:12:29'),
(9, 'create_tasks', 'web', '2023-03-14 23:12:34', '2023-03-14 23:12:34'),
(10, 'create_clients', 'web', '2023-03-14 23:12:38', '2023-03-14 23:12:38'),
(11, 'edit_users', 'web', '2023-03-17 00:51:15', '2023-03-17 00:51:15'),
(12, 'delete_users', 'web', '2023-03-17 00:57:41', '2023-03-17 00:57:41'),
(13, 'manage_users', 'web', '2023-03-27 00:04:49', '2023-03-27 00:04:49'),
(14, 'manage_projects', 'web', '2023-03-27 00:04:54', '2023-03-27 00:04:54'),
(15, 'manage_tasks', 'web', '2023-03-27 00:04:58', '2023-03-27 00:04:58'),
(16, 'manage_clients', 'web', '2023-03-27 00:05:02', '2023-03-27 00:05:02'),
(17, 'create_users', 'web', '2023-03-27 00:19:25', '2023-03-27 00:19:25'),
(22, 'create_workspaces', 'web', '2023-08-12 10:48:04', '2023-08-12 10:48:04'),
(23, 'manage_workspaces', 'web', '2023-08-12 10:48:04', '2023-08-12 10:48:04'),
(24, 'edit_workspaces', 'web', '2023-08-12 10:48:04', '2023-08-12 10:48:04'),
(25, 'delete_workspaces', 'web', '2023-08-12 10:48:04', '2023-08-12 10:48:04'),
(26, 'create_meetings', 'web', '2023-08-12 10:50:22', '2023-08-12 10:50:22'),
(27, 'manage_meetings', 'web', '2023-08-12 10:50:22', '2023-08-12 10:50:22'),
(28, 'edit_meetings', 'web', '2023-08-12 10:50:22', '2023-08-12 10:50:22'),
(29, 'delete_meetings', 'web', '2023-08-12 10:50:22', '2023-08-12 10:50:22'),
(37, 'delete_projects', 'client', '2023-09-08 11:57:55', '2023-09-08 11:57:55'),
(38, 'manage_projects', 'client', '2023-09-08 11:57:55', '2023-09-08 11:57:55'),
(39, 'create_tasks', 'client', '2023-09-08 12:32:02', '2023-09-08 12:32:02'),
(40, 'create_projects', 'client', '2023-09-08 12:33:36', '2023-09-08 12:33:36'),
(41, 'manage_tasks', 'client', '2023-09-08 12:33:48', '2023-09-08 12:33:48'),
(42, 'edit_tasks', 'client', '2023-09-08 12:33:59', '2023-09-08 12:33:59'),
(43, 'delete_tasks', 'client', '2023-09-08 12:34:13', '2023-09-08 12:34:13'),
(44, 'create_users', 'client', '2023-09-08 12:34:25', '2023-09-08 12:34:25'),
(45, 'manage_users', 'client', '2023-09-08 12:34:37', '2023-09-08 12:34:37'),
(46, 'edit_users', 'client', '2023-09-08 12:34:56', '2023-09-08 12:34:56'),
(47, 'delete_users', 'client', '2023-09-08 12:35:08', '2023-09-08 12:35:08'),
(48, 'create_clients', 'client', '2023-09-08 12:35:25', '2023-09-08 12:35:25'),
(49, 'manage_clients', 'client', '2023-09-08 12:35:37', '2023-09-08 12:35:37'),
(50, 'edit_clients', 'client', '2023-09-08 12:35:49', '2023-09-08 12:35:49'),
(51, 'delete_clients', 'client', '2023-09-08 12:36:01', '2023-09-08 12:36:01'),
(52, 'create_workspaces', 'client', '2023-09-08 12:36:17', '2023-09-08 12:36:17'),
(53, 'manage_workspaces', 'client', '2023-09-08 12:36:34', '2023-09-08 12:36:34'),
(54, 'edit_workspaces', 'client', '2023-09-08 12:36:45', '2023-09-08 12:36:45'),
(55, 'delete_workspaces', 'client', '2023-09-08 12:37:01', '2023-09-08 12:37:01'),
(56, 'create_meetings', 'client', '2023-09-08 12:37:16', '2023-09-08 12:37:16'),
(57, 'manage_meetings', 'client', '2023-09-08 12:37:29', '2023-09-08 12:37:29'),
(58, 'edit_meetings', 'client', '2023-09-08 12:37:42', '2023-09-08 12:37:42'),
(59, 'delete_meetings', 'client', '2023-09-08 12:37:55', '2023-09-08 12:37:55'),
(60, 'edit_projects', 'client', '2023-09-08 13:10:48', '2023-09-08 13:10:48'),
(61, 'create_contracts', 'client', '2023-09-23 23:32:01', '2023-09-23 23:32:01'),
(62, 'manage_contracts', 'client', '2023-09-23 23:32:44', '2023-09-23 23:32:44'),
(63, 'edit_contracts', 'client', '2023-09-23 23:32:56', '2023-09-23 23:32:56'),
(64, 'delete_contracts', 'client', '2023-09-23 23:33:04', '2023-09-23 23:33:04'),
(65, 'delete_contracts', 'web', '2023-09-23 23:33:16', '2023-09-23 23:33:16'),
(66, 'edit_contracts', 'web', '2023-09-23 23:33:26', '2023-09-23 23:33:26'),
(67, 'manage_contracts', 'web', '2023-09-23 23:33:37', '2023-09-23 23:33:37'),
(68, 'create_contracts', 'web', '2023-09-23 23:33:50', '2023-09-23 23:33:50'),
(69, 'create_timesheet', 'web', '2023-12-19 07:13:52', '2023-12-19 07:13:52'),
(70, 'delete_timesheet', 'web', '2023-12-19 07:13:55', '2023-12-19 07:13:55'),
(71, 'manage_timesheet', 'web', '2023-12-19 07:13:55', '2023-12-19 07:13:55'),
(72, 'create_timesheet', 'client', '2023-12-19 07:15:11', '2023-12-19 07:15:11'),
(73, 'delete_timesheet', 'client', '2023-12-19 07:15:11', '2023-12-19 07:15:11'),
(74, 'manage_timesheet', 'client', '2023-12-19 07:15:11', '2023-12-19 07:15:11'),
(75, 'create_payslips', 'client', '2023-12-22 05:46:34', '2023-12-22 05:46:34'),
(76, 'edit_payslips', 'client', '2023-12-22 05:46:35', '2023-12-22 05:46:35'),
(77, 'delete_payslips', 'client', '2023-12-22 05:46:35', '2023-12-22 05:46:35'),
(78, 'manage_payslips', 'client', '2023-12-22 05:46:35', '2023-12-22 05:46:35'),
(79, 'create_payslips', 'web', '2023-12-22 05:46:52', '2023-12-22 05:46:52'),
(80, 'edit_payslips', 'web', '2023-12-22 05:46:53', '2023-12-22 05:46:53'),
(81, 'delete_payslips', 'web', '2023-12-22 05:46:53', '2023-12-22 05:46:53'),
(82, 'manage_payslips', 'web', '2023-12-22 05:46:53', '2023-12-22 05:46:53'),
(83, 'access_all_data', 'web', '2024-01-08 07:22:04', '2024-01-08 13:47:12'),
(85, 'access_all_data', 'client', '2024-01-08 07:22:04', '2024-01-08 13:47:12'),
(86, 'manage_activity_log', 'web', '2024-01-15 13:46:23', '2024-01-15 13:46:23'),
(87, 'delete_activity_log', 'web', '2024-01-15 13:46:23', '2024-01-15 13:46:23'),
(88, 'manage_activity_log', 'client', '2024-01-15 13:46:23', '2024-01-15 13:46:23'),
(89, 'delete_activity_log', 'client', '2024-01-15 13:46:23', '2024-01-15 13:46:23'),
(90, 'create_estimates_invoices', 'web', '2024-02-07 06:15:12', '2024-02-07 06:15:12'),
(91, 'manage_estimates_invoices', 'web', '2024-02-07 06:15:12', '2024-02-07 06:15:12'),
(92, 'edit_estimates_invoices', 'web', '2024-02-07 06:15:12', '2024-02-07 06:15:12'),
(93, 'delete_estimates_invoices', 'web', '2024-02-07 06:15:13', '2024-02-07 06:15:13'),
(94, 'create_estimates_invoices', 'client', '2024-02-07 06:15:30', '2024-02-07 06:15:30'),
(95, 'manage_estimates_invoices', 'client', '2024-02-07 06:15:30', '2024-02-07 06:15:30'),
(96, 'edit_estimates_invoices', 'client', '2024-02-07 06:15:31', '2024-02-07 06:15:31'),
(97, 'delete_estimates_invoices', 'client', '2024-02-07 06:15:31', '2024-02-07 06:15:31'),
(98, 'create_expenses', 'client', '2024-02-13 01:06:26', '2024-02-13 01:06:26'),
(99, 'manage_expenses', 'client', '2024-02-13 01:06:27', '2024-02-13 01:06:27'),
(100, 'edit_expenses', 'client', '2024-02-13 01:06:27', '2024-02-13 01:06:27'),
(101, 'delete_expenses', 'client', '2024-02-13 01:06:27', '2024-02-13 01:06:27'),
(102, 'create_expenses', 'web', '2024-02-13 01:11:45', '2024-02-13 01:11:45'),
(103, 'manage_expenses', 'web', '2024-02-13 01:11:45', '2024-02-13 01:11:45'),
(104, 'edit_expenses', 'web', '2024-02-13 01:11:45', '2024-02-13 01:11:45'),
(105, 'delete_expenses', 'web', '2024-02-13 01:11:45', '2024-02-13 01:11:45'),
(106, 'create_milestones', 'web', '2024-02-26 04:28:09', '2024-02-26 04:28:09'),
(107, 'manage_milestones', 'web', '2024-02-26 04:28:09', '2024-02-26 04:28:09'),
(108, 'edit_milestones', 'web', '2024-02-26 04:28:09', '2024-02-26 04:28:09'),
(109, 'delete_milestones', 'web', '2024-02-26 04:28:09', '2024-02-26 04:28:09'),
(110, 'create_milestones', 'client', '2024-02-26 04:28:35', '2024-02-26 04:28:35'),
(111, 'manage_milestones', 'client', '2024-02-26 04:28:35', '2024-02-26 04:28:35'),
(112, 'edit_milestones', 'client', '2024-02-26 04:28:36', '2024-02-26 04:28:36'),
(113, 'delete_milestones', 'client', '2024-02-26 04:28:36', '2024-02-26 04:28:36'),
(114, 'manage_system_notifications', 'client', '2024-03-05 06:57:10', '2024-03-05 06:57:10'),
(115, 'delete_system_notifications', 'client', '2024-03-05 06:57:10', '2024-03-05 06:57:10'),
(116, 'manage_system_notifications', 'web', '2024-03-05 06:57:21', '2024-03-05 06:57:21'),
(117, 'delete_system_notifications', 'web', '2024-03-05 06:57:21', '2024-03-05 06:57:21');

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
-- Table structure for table `priorities`
--

CREATE TABLE `priorities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `priorities`
--

INSERT INTO `priorities` (`id`, `title`, `slug`, `color`, `created_at`, `updated_at`) VALUES
(14, 'تم', 'tm', 'success', '2024-06-28 19:50:16', '2024-06-28 19:50:16'),
(16, 'تمت الارشفة', 'tmt-alarshf', 'success', '2024-06-28 19:50:40', '2024-06-28 19:50:40'),
(17, 'تمت الاجابة', 'tmt-alagab', 'success', '2024-06-28 19:50:49', '2024-06-28 19:50:49'),
(18, 'بانتظار تجميع الكتب من الاقسام', 'bantthar-tgmyaa-alktb-mn-alaksam', 'warning', '2024-06-28 19:51:06', '2024-06-28 19:51:06'),
(19, 'لم يردنا الكتاب', 'lm-yrdna-alktab', 'danger', '2024-06-28 19:51:23', '2024-06-28 19:51:23');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `workspace_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `priority_id` bigint(20) DEFAULT NULL,
  `budget` varchar(255) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `is_favorite` tinyint(4) NOT NULL DEFAULT 0,
  `task_accessibility` varchar(28) NOT NULL DEFAULT 'assigned_users',
  `note` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `workspace_id`, `title`, `description`, `status_id`, `priority_id`, `budget`, `start_date`, `end_date`, `created_by`, `is_favorite`, `task_accessibility`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 'ادارة الصادر', 'شاشة متخصصة في ادارة الصادر في الجامعة', 72, 17, NULL, '2024-01-01', '2024-12-31', 1, 0, 'assigned_users', 'تم', '2024-06-28 14:03:27', '2024-11-02 11:19:32'),
(2, 1, 'ادارة الوارد', 'شاشة متخصصة في ادارة الوارد في الجامعة', 73, 17, NULL, '2024-12-31', '2024-12-31', 1, 0, 'assigned_users', 'تم التجميع واكمال الملف', '2024-06-28 19:59:12', '2024-12-31 16:45:55');

-- --------------------------------------------------------

--
-- Table structure for table `project_tag`
--

CREATE TABLE `project_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_user`
--

CREATE TABLE `project_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_user`
--

INSERT INTO `project_user` (`id`, `project_id`, `user_id`) VALUES
(1, 1, 1),
(4, 1, 2),
(2, 2, 1),
(3, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-03-13 23:28:49', '2023-09-24 06:53:41'),
(9, 'member', 'web', '2023-03-31 06:21:47', '2023-03-31 06:21:47'),
(21, 'client', 'client', '2023-12-22 07:45:49', '2023-12-22 07:45:49');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 9),
(4, 9),
(8, 9),
(9, 9),
(14, 9),
(39, 21),
(40, 21),
(42, 21),
(60, 21);

-- --------------------------------------------------------

--
-- Table structure for table `role_status`
--

CREATE TABLE `role_status` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_status`
--

INSERT INTO `role_status` (`role_id`, `status_id`) VALUES
(9, 71),
(21, 71);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `variable` varchar(255) DEFAULT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `variable`, `value`, `created_at`, `updated_at`) VALUES
(5, 'general_settings', '{\"company_title\":\"\\u0627\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0644\\u0641\\u0627\\u062a \\u0627\\u0644\\u062c\\u0627\\u0645\\u0639\\u064a\\u0629\",\"currency_full_form\":\"\\u0627\\u0644\\u0639\\u0631\\u0627\\u0642\",\"currency_symbol\":\"\\u0627\\u0644\\u062f\\u064a\\u0646\\u0627\\u0631 \\u0627\\u0644\\u0639\\u0631\\u0627\\u0642\\u064a\",\"currency_code\":\"IQD\",\"currency_symbol_position\":\"before\",\"currency_formate\":\"comma_separated\",\"decimal_points_in_currency\":\"0\",\"timezone\":\"Asia\\/Baghdad\",\"date_format\":\"DD-MM-YYYY|d-m-Y\",\"time_format\":\"h:i:s A\",\"footer_text\":\"<p>made with \\u2764\\ufe0f by <span style=\\\"background-color: rgb(224, 62, 45);\\\"><strong>MUSTAFA ALMUSAWI<\\/strong><\\/span><\\/p>\",\"full_logo\":\"logos\\/Vtv0frYeUdr1CBhD4slFrdawocJSN1XVKIPuWTEM.png\",\"half_logo\":\"\",\"favicon\":\"logos\\/Hju4L2LqaTmgf1rMMkDr6apeGTgtr81Oq7mpCYX7.png\"}', '2023-06-14 07:48:25', '2024-11-02 10:46:19'),
(9, 'pusher_settings', NULL, '2023-06-21 05:33:13', '2023-10-09 01:09:20'),
(10, 'email_settings', NULL, '2023-06-21 08:43:07', '2023-11-26 22:08:55'),
(11, 'media_storage_settings', '{\"media_storage_type\":\"local\",\"s3_key\":\"em1@gmail.com\",\"s3_secret\":\"123456\",\"s3_region\":null,\"s3_bucket\":null}', '2024-01-22 07:03:48', '2024-06-28 20:20:15'),
(12, 'sms_gateway_settings', NULL, '2024-03-29 01:21:39', '2024-04-02 04:45:13');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `title`, `slug`, `color`, `created_at`, `updated_at`) VALUES
(0, 'Default', 'default', 'secondary', '2023-09-16 05:14:30', '2023-09-16 05:14:30'),
(71, 'تمت الاجابة', 'tmt-alagab', 'success', '2024-06-28 19:51:58', '2024-06-28 19:51:58'),
(72, 'تمت الارشفة', 'tmt-alarshf', 'success', '2024-06-28 19:52:12', '2024-06-28 19:52:12'),
(73, 'بانتظار تجميع الاجابات', 'bantthar-tgmyaa-alagabat', 'secondary', '2024-06-28 19:52:27', '2024-06-28 19:52:27'),
(74, 'لو يردنا الكتاب', 'lo-yrdna-alktab', 'danger', '2024-06-28 19:52:41', '2024-06-28 19:52:41');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `slug`, `color`, `created_at`, `updated_at`) VALUES
(1, 'ص', 's', 'secondary', '2024-11-02 11:02:34', '2024-11-02 11:02:34');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `workspace_id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `status_id` bigint(20) NOT NULL DEFAULT 1,
  `priority_id` bigint(20) DEFAULT NULL,
  `start_date` date NOT NULL,
  `due_date` date NOT NULL,
  `note` longtext DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `workspace_id`, `project_id`, `title`, `description`, `status_id`, `priority_id`, `start_date`, `due_date`, `note`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'مجزرة سبايكر', '201225', 72, 16, '2024-09-30', '2024-09-30', '22/10/2024', 1, '2024-09-30 11:23:13', '2024-09-30 11:23:13'),
(2, 1, 1, 'كتاب', NULL, 72, 16, '2024-11-02', '2024-11-19', '7857545', 1, '2024-11-02 11:08:24', '2024-11-02 11:08:24'),
(3, 1, 2, 'الفصل السياسي', NULL, 72, 16, '2024-12-31', '2024-12-31', '5465010', 1, '2024-12-31 16:44:24', '2024-12-31 16:44:24');

-- --------------------------------------------------------

--
-- Table structure for table `task_user`
--

CREATE TABLE `task_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_user`
--

INSERT INTO `task_user` (`id`, `task_id`, `user_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `workspace_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(512) NOT NULL,
  `percentage` double DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `subject` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_trackers`
--

CREATE TABLE `time_trackers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `workspace_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `start_date_time` datetime NOT NULL,
  `end_date_time` datetime DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `workspace_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `priority` varchar(255) NOT NULL,
  `is_completed` tinyint(1) NOT NULL DEFAULT 0,
  `creator_id` bigint(20) UNSIGNED NOT NULL,
  `creator_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `workspace_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE `updates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `updates`
--

INSERT INTO `updates` (`id`, `version`, `created_at`, `updated_at`) VALUES
(1, '1.0.0', '2023-10-03 06:26:04', '2023-10-03 06:26:04'),
(2, '1.0.1', '2023-10-30 05:35:10', '2023-10-30 05:35:10'),
(3, '1.0.2', '2024-01-27 04:21:48', '2024-01-27 04:21:53'),
(4, '1.0.3', '2024-01-27 04:22:09', '2024-01-27 04:22:16'),
(5, '1.0.4', '2024-03-01 12:53:15', '2024-03-01 12:53:15'),
(6, '1.0.5', '2024-04-04 17:59:02', '2024-04-04 17:59:02'),
(7, '1.0.6', '2024-04-25 16:16:21', '2024-04-25 16:16:21'),
(8, '1.0.7', '2024-05-07 14:52:04', '2024-05-07 14:52:04'),
(9, '1.0.8', '2024-05-30 08:06:35', '2024-05-30 08:06:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `country_code` varchar(28) DEFAULT NULL,
  `phone` varchar(56) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `zip` varchar(56) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `dob` date DEFAULT NULL,
  `doj` date DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) NOT NULL DEFAULT 'avatar.png',
  `active_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'For chatify messenger',
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `messenger_color` varchar(255) DEFAULT NULL,
  `lang` varchar(28) NOT NULL DEFAULT 'en',
  `remember_token` text DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `country_code`, `phone`, `email`, `address`, `city`, `state`, `country`, `zip`, `password`, `dob`, `doj`, `photo`, `avatar`, `active_status`, `dark_mode`, `messenger_color`, `lang`, `remember_token`, `email_verified_at`, `created_at`, `updated_at`, `status`) VALUES
(1, 'mustafa', 'stu', NULL, NULL, 'nssfbi@gmail.com', NULL, NULL, NULL, NULL, NULL, '$2y$10$dLpy5RK2b.TsGFD2U86OquLVkgjtJYMMGMSKQ0iVp0zwElfqKUHum', NULL, NULL, NULL, 'avatar.png', 0, 0, '#ff2522', 'en', NULL, '2024-06-28 08:55:33', '2024-06-28 08:55:41', '2024-06-28 19:48:53', 1),
(2, 'رند', 'بغا', '4564', '4645654', 'em1@gmail.com', 'بلابل', 'بلابل', 'بلا', 'بلا', '645', '$2y$10$xHkhbJl3nBdqOkTlwMAnAeIgRgTnfO3b0GRk.gK0K4XnN4irYcq5K', '2024-12-03', '2024-12-10', 'photos/no-image.jpg', 'avatar.png', 0, 0, NULL, 'en', NULL, '2024-12-31 19:22:06', '2024-12-31 16:22:06', '2024-12-31 16:23:06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_client_preferences`
--

CREATE TABLE `user_client_preferences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(56) NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `visible_columns` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`visible_columns`)),
  `default_view` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `user_client_preferences`
--

INSERT INTO `user_client_preferences` (`id`, `user_id`, `table_name`, `visible_columns`, `default_view`) VALUES
(1, 'u_1', 'tasks', '[\"id\",\"title\",\"project_id\",\"users\",\"clients\",\"status_id\",\"priority_id\",\"start_date\",\"end_date\",\"actions\"]', 'list'),
(2, 'u_1', 'project_media', '[\"id\",\"file\",\"file_size\",\"actions\"]', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_workspace`
--

CREATE TABLE `user_workspace` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `workspace_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_workspace`
--

INSERT INTO `user_workspace` (`id`, `workspace_id`, `user_id`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `workspaces`
--

CREATE TABLE `workspaces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workspaces`
--

INSERT INTO `workspaces` (`id`, `user_id`, `title`, `created_at`, `updated_at`) VALUES
(1, '1', 'مساحة عمل الشركة', '2024-06-28 08:55:41', '2024-11-02 11:17:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_logs_workspace_id_index` (`workspace_id`);

--
-- Indexes for table `allowances`
--
ALTER TABLE `allowances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `allowances_workspace_id_foreign` (`workspace_id`);

--
-- Indexes for table `allowance_payslip`
--
ALTER TABLE `allowance_payslip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `allowance_payslip_allowance_id_foreign` (`allowance_id`),
  ADD KEY `allowance_payslip_payslip_id_foreign` (`payslip_id`);

--
-- Indexes for table `ch_favorites`
--
ALTER TABLE `ch_favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_messages`
--
ALTER TABLE `ch_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_email_unique` (`email`);

--
-- Indexes for table `client_meeting`
--
ALTER TABLE `client_meeting`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `client_meeting_meeting_id_client_id_unique` (`meeting_id`,`client_id`),
  ADD KEY `client_meeting_client_id_foreign` (`client_id`);

--
-- Indexes for table `client_notifications`
--
ALTER TABLE `client_notifications`
  ADD PRIMARY KEY (`client_id`,`notification_id`),
  ADD KEY `client_notifications_notification_id_foreign` (`notification_id`);

--
-- Indexes for table `client_project`
--
ALTER TABLE `client_project`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_client_project_id_client_id_unique` (`project_id`,`client_id`),
  ADD KEY `project_client_client_id_foreign` (`client_id`);

--
-- Indexes for table `client_workspace`
--
ALTER TABLE `client_workspace`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `client_workspace_workspace_id_client_id_unique` (`workspace_id`,`client_id`),
  ADD KEY `client_workspace_client_id_foreign` (`client_id`);

--
-- Indexes for table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contracts_workspace_id_foreign` (`workspace_id`),
  ADD KEY `contracts_project_id_foreign` (`project_id`),
  ADD KEY `contracts_client_id_foreign` (`client_id`),
  ADD KEY `contracts_contract_type_id_foreign` (`contract_type_id`);

--
-- Indexes for table `contract_types`
--
ALTER TABLE `contract_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contract_types_workspace_id_foreign` (`workspace_id`);

--
-- Indexes for table `deductions`
--
ALTER TABLE `deductions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deduction_payslip`
--
ALTER TABLE `deduction_payslip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deduction_payslip_deduction_id_foreign` (`deduction_id`),
  ADD KEY `deduction_payslip_payslip_id_foreign` (`payslip_id`);

--
-- Indexes for table `estimates_invoices`
--
ALTER TABLE `estimates_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estimates_invoices_client_id_foreign` (`client_id`),
  ADD KEY `estimates_invoices_workspace_id_foreign` (`workspace_id`);

--
-- Indexes for table `estimates_invoice_item`
--
ALTER TABLE `estimates_invoice_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estimates_invoices_items_item_id_foreign` (`item_id`),
  ADD KEY `estimates_invoices_items_estimate_invoice_id_foreign` (`estimates_invoice_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_workspace_id_foreign` (`workspace_id`),
  ADD KEY `expenses_user_id_foreign` (`user_id`),
  ADD KEY `expenses_expense_type_id_foreign` (`expense_type_id`);

--
-- Indexes for table `expense_types`
--
ALTER TABLE `expense_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_types_workspace_id_foreign` (`workspace_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_editors`
--
ALTER TABLE `leave_editors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_editors_user_id_foreign` (`user_id`);

--
-- Indexes for table `leave_requests`
--
ALTER TABLE `leave_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_requests_user_id_foreign` (`user_id`),
  ADD KEY `leave_requests_workspace_id_foreign` (`workspace_id`);

--
-- Indexes for table `leave_request_visibility`
--
ALTER TABLE `leave_request_visibility`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_request_id` (`leave_request_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meeting_user`
--
ALTER TABLE `meeting_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `meeting_user_meeting_id_user_id_unique` (`meeting_id`,`user_id`),
  ADD KEY `meeting_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `milestones`
--
ALTER TABLE `milestones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `milestones_project_id_foreign` (`project_id`),
  ADD KEY `milestones_workspace_id_foreign` (`workspace_id`);

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
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_workspace_id_foreign` (`workspace_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_workspace_id_foreign` (`workspace_id`);

--
-- Indexes for table `notification_user`
--
ALTER TABLE `notification_user`
  ADD PRIMARY KEY (`user_id`,`notification_id`),
  ADD KEY `notification_user_notification_id_foreign` (`notification_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_methods_workspace_id_foreign` (`workspace_id`);

--
-- Indexes for table `payslips`
--
ALTER TABLE `payslips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payslips_user_id_foreign` (`user_id`),
  ADD KEY `payslips_workspace_id_foreign` (`workspace_id`),
  ADD KEY `payslips_payment_method_id_foreign` (`payment_method_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `priorities`
--
ALTER TABLE `priorities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_status_id_foreign` (`status_id`);

--
-- Indexes for table `project_tag`
--
ALTER TABLE `project_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_tag_project_id_foreign` (`project_id`),
  ADD KEY `project_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `project_user`
--
ALTER TABLE `project_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_user_project_id_user_id_unique` (`project_id`,`user_id`),
  ADD KEY `project_user_user_id_foreign` (`user_id`);

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
-- Indexes for table `role_status`
--
ALTER TABLE `role_status`
  ADD PRIMARY KEY (`role_id`,`status_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_project_id_foreign` (`project_id`);

--
-- Indexes for table `task_user`
--
ALTER TABLE `task_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `task_user_task_id_user_id_unique` (`task_id`,`user_id`),
  ADD KEY `task_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `templates_type_name_unique` (`type`,`name`);

--
-- Indexes for table `time_trackers`
--
ALTER TABLE `time_trackers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `time_trackers_workspace_id_foreign` (`workspace_id`),
  ADD KEY `time_trackers_user_id_foreign` (`user_id`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_client_preferences`
--
ALTER TABLE `user_client_preferences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_workspace`
--
ALTER TABLE `user_workspace`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_workspace_workspace_id_user_id_unique` (`workspace_id`,`user_id`),
  ADD KEY `user_workspace_user_id_foreign` (`user_id`);

--
-- Indexes for table `workspaces`
--
ALTER TABLE `workspaces`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `allowances`
--
ALTER TABLE `allowances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `allowance_payslip`
--
ALTER TABLE `allowance_payslip`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `client_meeting`
--
ALTER TABLE `client_meeting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_project`
--
ALTER TABLE `client_project`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `client_workspace`
--
ALTER TABLE `client_workspace`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contract_types`
--
ALTER TABLE `contract_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deductions`
--
ALTER TABLE `deductions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deduction_payslip`
--
ALTER TABLE `deduction_payslip`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estimates_invoices`
--
ALTER TABLE `estimates_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estimates_invoice_item`
--
ALTER TABLE `estimates_invoice_item`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_types`
--
ALTER TABLE `expense_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `leave_editors`
--
ALTER TABLE `leave_editors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_requests`
--
ALTER TABLE `leave_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_request_visibility`
--
ALTER TABLE `leave_request_visibility`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meeting_user`
--
ALTER TABLE `meeting_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `milestones`
--
ALTER TABLE `milestones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payslips`
--
ALTER TABLE `payslips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `priorities`
--
ALTER TABLE `priorities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `project_tag`
--
ALTER TABLE `project_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_user`
--
ALTER TABLE `project_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `task_user`
--
ALTER TABLE `task_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_trackers`
--
ALTER TABLE `time_trackers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `updates`
--
ALTER TABLE `updates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_client_preferences`
--
ALTER TABLE `user_client_preferences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_workspace`
--
ALTER TABLE `user_workspace`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `workspaces`
--
ALTER TABLE `workspaces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `activity_logs_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `allowances`
--
ALTER TABLE `allowances`
  ADD CONSTRAINT `allowances_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `allowance_payslip`
--
ALTER TABLE `allowance_payslip`
  ADD CONSTRAINT `allowance_payslip_allowance_id_foreign` FOREIGN KEY (`allowance_id`) REFERENCES `allowances` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `allowance_payslip_payslip_id_foreign` FOREIGN KEY (`payslip_id`) REFERENCES `payslips` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `client_meeting`
--
ALTER TABLE `client_meeting`
  ADD CONSTRAINT `client_meeting_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `client_meeting_meeting_id_foreign` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `client_notifications`
--
ALTER TABLE `client_notifications`
  ADD CONSTRAINT `client_notifications_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `client_notifications_notification_id_foreign` FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `client_project`
--
ALTER TABLE `client_project`
  ADD CONSTRAINT `project_client_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_client_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `client_workspace`
--
ALTER TABLE `client_workspace`
  ADD CONSTRAINT `client_workspace_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `client_workspace_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contracts`
--
ALTER TABLE `contracts`
  ADD CONSTRAINT `contracts_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contracts_contract_type_id_foreign` FOREIGN KEY (`contract_type_id`) REFERENCES `contract_types` (`id`),
  ADD CONSTRAINT `contracts_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contracts_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contract_types`
--
ALTER TABLE `contract_types`
  ADD CONSTRAINT `contract_types_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `deduction_payslip`
--
ALTER TABLE `deduction_payslip`
  ADD CONSTRAINT `deduction_payslip_deduction_id_foreign` FOREIGN KEY (`deduction_id`) REFERENCES `deductions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `deduction_payslip_payslip_id_foreign` FOREIGN KEY (`payslip_id`) REFERENCES `payslips` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `estimates_invoices`
--
ALTER TABLE `estimates_invoices`
  ADD CONSTRAINT `estimates_invoices_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `estimates_invoices_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `estimates_invoice_item`
--
ALTER TABLE `estimates_invoice_item`
  ADD CONSTRAINT `estimates_invoices_items_estimate_invoice_id_foreign` FOREIGN KEY (`estimates_invoice_id`) REFERENCES `estimates_invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `estimates_invoices_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_expense_type_id_foreign` FOREIGN KEY (`expense_type_id`) REFERENCES `expense_types` (`id`),
  ADD CONSTRAINT `expenses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expenses_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expense_types`
--
ALTER TABLE `expense_types`
  ADD CONSTRAINT `expense_types_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `leave_editors`
--
ALTER TABLE `leave_editors`
  ADD CONSTRAINT `leave_editors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `leave_requests`
--
ALTER TABLE `leave_requests`
  ADD CONSTRAINT `leave_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `leave_requests_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `leave_request_visibility`
--
ALTER TABLE `leave_request_visibility`
  ADD CONSTRAINT `leave_request_visibility_ibfk_1` FOREIGN KEY (`leave_request_id`) REFERENCES `leave_requests` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `leave_request_visibility_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meeting_user`
--
ALTER TABLE `meeting_user`
  ADD CONSTRAINT `meeting_user_meeting_id_foreign` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `meeting_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `milestones`
--
ALTER TABLE `milestones`
  ADD CONSTRAINT `milestones_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `milestones_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notification_user`
--
ALTER TABLE `notification_user`
  ADD CONSTRAINT `notification_user_notification_id_foreign` FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notification_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD CONSTRAINT `payment_methods_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payslips`
--
ALTER TABLE `payslips`
  ADD CONSTRAINT `payslips_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`),
  ADD CONSTRAINT `payslips_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payslips_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_tag`
--
ALTER TABLE `project_tag`
  ADD CONSTRAINT `project_tag_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_user`
--
ALTER TABLE `project_user`
  ADD CONSTRAINT `project_user_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_status`
--
ALTER TABLE `role_status`
  ADD CONSTRAINT `role_status_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_status_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_user`
--
ALTER TABLE `task_user`
  ADD CONSTRAINT `task_user_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `time_trackers`
--
ALTER TABLE `time_trackers`
  ADD CONSTRAINT `time_trackers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `time_trackers_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_workspace`
--
ALTER TABLE `user_workspace`
  ADD CONSTRAINT `user_workspace_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_workspace_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `workspaces` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
