-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2026 at 11:41 AM
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
-- Database: `casino_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(100) NOT NULL,
  `entity_type` varchar(80) DEFAULT NULL,
  `entity_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `entity_type`, `entity_id`, `ip_address`, `metadata`, `created_at`) VALUES
(0, 1, 'login', 'users', 1, '::1', NULL, '2026-06-10 08:23:51'),
(1, 1, 'login', 'users', 1, '::1', NULL, '2026-06-05 08:53:04'),
(2, 1, 'logout', 'users', 1, '::1', NULL, '2026-06-05 08:54:26'),
(3, 1, 'login', 'users', 1, '::1', NULL, '2026-06-05 08:54:28'),
(4, 1, 'logout', 'users', 1, '::1', NULL, '2026-06-05 08:54:37'),
(5, 4, 'login', 'users', 4, '::1', NULL, '2026-06-05 08:54:45'),
(6, 4, 'logout', 'users', 4, '::1', NULL, '2026-06-05 08:55:13'),
(7, 1, 'login', 'users', 1, '::1', NULL, '2026-06-05 08:55:15'),
(8, 1, 'logout', 'users', 1, '::1', NULL, '2026-06-05 09:07:51'),
(9, 4, 'login', 'users', 4, '::1', NULL, '2026-06-05 09:08:17'),
(10, 4, 'logout', 'users', 4, '::1', NULL, '2026-06-05 09:09:10'),
(11, 1, 'login', 'users', 1, '::1', NULL, '2026-06-05 09:09:13'),
(12, 1, 'login', 'users', 1, '192.168.1.148', NULL, '2026-06-05 09:57:31'),
(13, 1, 'login', 'users', 1, '192.168.1.89', NULL, '2026-06-05 11:09:31'),
(14, 1, 'logout', 'users', 1, '192.168.1.148', NULL, '2026-06-05 12:03:08'),
(15, 1, 'login', 'users', 1, '192.168.1.148', NULL, '2026-06-05 12:03:14'),
(16, 1, 'login', 'users', 1, '192.168.1.214', NULL, '2026-06-05 12:28:18'),
(17, 1, 'login', 'users', 1, '192.168.1.214', NULL, '2026-06-05 12:36:31'),
(18, 1, 'login', 'users', 1, '192.168.1.139', NULL, '2026-06-05 14:09:54'),
(19, 1, 'sync_store_system_requisition', NULL, 3231, '192.168.1.139', '{\"synced\":0,\"skipped\":6,\"unmatched\":[\"CDR-0149 - Smirnof Vodka Red 1Ltr\",\"CDR-0226 - Black & White 1ltr\",\"CDR-0028 - Drostdy Cask Red Wine\",\"CDR-0023 - Tusker Lager 500ml btls\",\"CDR-0220 - Tusker Malt 330ml\",\"CDR-0022 - White Cap Lager 500ml btls\"],\"message\":\"Synced 0 issued item(s). Skipped unmatched store item(s): CDR-0149 - Smirnof Vodka Red 1Ltr, CDR-0226 - Black & White 1ltr, CDR-0028 - Drostdy Cask Red Wine, CDR-0023 - Tusker Lager 500ml btls, CDR-0220 - Tusker Malt 330ml, CDR-0022 - White Cap Lager 500ml btls. Add them as POS products using the Store item code as SKU and define selling units per stock unit.\"}', '2026-06-05 14:16:30'),
(20, 1, 'login', 'users', 1, '192.168.1.214', NULL, '2026-06-06 08:44:39'),
(21, 1, 'login', 'users', 1, '192.168.1.148', NULL, '2026-06-07 13:28:02'),
(22, 1, 'login', 'users', 1, '192.168.1.71', NULL, '2026-06-07 13:48:20'),
(23, 1, 'login', 'users', 1, '192.168.1.148', NULL, '2026-06-07 14:35:37'),
(24, 1, 'update_product', 'products', 12, '192.168.1.71', NULL, '2026-06-07 14:46:35'),
(25, 1, 'update_product', 'products', 11, '192.168.1.71', NULL, '2026-06-07 14:46:52'),
(26, 1, 'update_product', 'products', 8, '192.168.1.71', NULL, '2026-06-07 14:48:24'),
(27, 1, 'update_product', 'products', 8, '192.168.1.71', NULL, '2026-06-07 14:48:34'),
(28, 1, 'login', 'users', 1, '::1', NULL, '2026-06-07 14:52:33'),
(29, 1, 'login', 'users', 1, '192.168.1.71', NULL, '2026-06-08 05:46:31'),
(30, 1, 'update_product', 'products', 16, '192.168.1.71', NULL, '2026-06-08 06:00:44'),
(31, 1, 'update_product', 'products', 8, '192.168.1.71', NULL, '2026-06-08 06:01:00'),
(32, 1, 'update_product', 'products', 13, '192.168.1.71', NULL, '2026-06-08 06:01:10'),
(33, 1, 'update_product', 'products', 12, '192.168.1.71', NULL, '2026-06-08 06:01:19'),
(34, 1, 'update_product', 'products', 15, '192.168.1.71', NULL, '2026-06-08 06:01:41'),
(35, 1, 'update_product', 'products', 11, '192.168.1.71', NULL, '2026-06-08 06:01:52'),
(36, 1, 'update_product', 'products', 5, '192.168.1.71', NULL, '2026-06-08 06:02:04'),
(37, 1, 'update_product', 'products', 4, '192.168.1.71', NULL, '2026-06-08 06:02:23'),
(38, 1, 'update_product', 'products', 1, '192.168.1.71', NULL, '2026-06-08 06:25:18'),
(39, 1, 'update_product', 'products', 21, '192.168.1.71', NULL, '2026-06-08 06:26:47'),
(40, 1, 'update_product', 'products', 15, '192.168.1.71', NULL, '2026-06-08 06:27:02'),
(41, 1, 'update_product', 'products', 20, '192.168.1.71', NULL, '2026-06-08 07:41:11'),
(42, 1, 'update_product', 'products', 16, '192.168.1.71', NULL, '2026-06-08 07:41:47'),
(43, 1, 'update_product', 'products', 19, '192.168.1.71', NULL, '2026-06-08 07:41:59'),
(44, 1, 'update_product', 'products', 17, '192.168.1.71', NULL, '2026-06-08 07:42:08'),
(45, 1, 'update_product', 'products', 18, '192.168.1.71', NULL, '2026-06-08 07:42:17'),
(46, 1, 'update_product', 'products', 2, '192.168.1.71', NULL, '2026-06-08 07:44:04'),
(47, 1, 'update_product', 'products', 2, '192.168.1.71', NULL, '2026-06-08 07:44:27'),
(48, 1, 'update_product', 'products', 1, '192.168.1.71', NULL, '2026-06-08 07:45:17'),
(49, 1, 'update_product', 'products', 30, '192.168.1.71', NULL, '2026-06-08 07:46:09'),
(50, 1, 'update_product', 'products', 32, '192.168.1.71', NULL, '2026-06-08 07:46:26'),
(51, 1, 'update_product', 'products', 45, '192.168.1.71', NULL, '2026-06-08 07:46:38'),
(52, 1, 'update_product', 'products', 28, '192.168.1.71', NULL, '2026-06-08 07:46:57'),
(53, 1, 'update_product', 'products', 27, '192.168.1.71', NULL, '2026-06-08 07:47:58'),
(54, 1, 'update_product', 'products', 26, '192.168.1.71', NULL, '2026-06-08 07:48:09'),
(55, 1, 'update_product', 'products', 27, '192.168.1.71', NULL, '2026-06-08 07:48:21'),
(56, 1, 'update_product', 'products', 25, '192.168.1.71', NULL, '2026-06-08 07:48:30'),
(57, 1, 'update_product', 'products', 29, '192.168.1.71', NULL, '2026-06-08 07:48:45'),
(58, 1, 'update_product', 'products', 21, '192.168.1.71', NULL, '2026-06-08 07:48:53'),
(59, 1, 'update_product', 'products', 24, '192.168.1.71', NULL, '2026-06-08 07:49:08'),
(60, 1, 'update_product', 'products', 24, '192.168.1.71', NULL, '2026-06-08 07:49:20'),
(61, 1, 'update_product', 'products', 23, '192.168.1.71', NULL, '2026-06-08 07:49:32'),
(62, 1, 'update_product', 'products', 33, '192.168.1.71', NULL, '2026-06-08 07:49:45'),
(63, 1, 'update_product', 'products', 14, '192.168.1.71', NULL, '2026-06-08 07:49:57'),
(64, 1, 'update_product', 'products', 15, '192.168.1.71', NULL, '2026-06-08 07:50:05'),
(65, 1, 'update_product', 'products', 16, '192.168.1.71', NULL, '2026-06-08 07:50:14'),
(66, 1, 'update_product', 'products', 17, '192.168.1.71', NULL, '2026-06-08 07:50:20'),
(67, 1, 'update_product', 'products', 18, '192.168.1.71', NULL, '2026-06-08 07:50:28'),
(68, 1, 'update_product', 'products', 19, '192.168.1.71', NULL, '2026-06-08 07:50:36'),
(69, 1, 'update_product', 'products', 36, '192.168.1.71', NULL, '2026-06-08 07:50:55'),
(70, 1, 'update_product', 'products', 22, '192.168.1.71', NULL, '2026-06-08 07:51:19'),
(71, 1, 'update_product', 'products', 3, '192.168.1.71', NULL, '2026-06-08 07:51:53'),
(72, 1, 'update_product', 'products', 5, '192.168.1.71', NULL, '2026-06-08 07:52:17'),
(73, 1, 'update_product', 'products', 4, '192.168.1.71', NULL, '2026-06-08 07:52:28'),
(74, 1, 'update_product', 'products', 20, '192.168.1.71', NULL, '2026-06-08 07:53:05'),
(75, 1, 'update_product', 'products', 42, '192.168.1.71', NULL, '2026-06-08 07:53:44'),
(76, 1, 'update_product', 'products', 41, '192.168.1.71', NULL, '2026-06-08 07:54:00'),
(77, 1, 'update_product', 'products', 41, '192.168.1.71', NULL, '2026-06-08 07:54:13'),
(78, 1, 'update_product', 'products', 40, '192.168.1.71', NULL, '2026-06-08 07:54:29'),
(79, 1, 'update_product', 'products', 34, '192.168.1.71', NULL, '2026-06-08 07:54:43'),
(80, 1, 'update_product', 'products', 39, '192.168.1.71', NULL, '2026-06-08 07:55:45'),
(81, 1, 'update_product', 'products', 38, '192.168.1.71', NULL, '2026-06-08 07:55:54'),
(82, 1, 'update_product', 'products', 37, '192.168.1.71', NULL, '2026-06-08 07:56:12'),
(83, 1, 'update_product', 'products', 31, '192.168.1.71', NULL, '2026-06-08 07:56:23'),
(84, 1, 'update_product', 'products', 25, '192.168.1.71', NULL, '2026-06-08 07:57:46'),
(85, 1, 'update_product', 'products', 30, '192.168.1.71', NULL, '2026-06-08 07:57:54'),
(86, 1, 'update_product', 'products', 30, '192.168.1.71', NULL, '2026-06-08 07:58:03'),
(87, 1, 'login', 'users', 1, '192.168.1.148', NULL, '2026-06-08 08:57:03'),
(88, 1, 'logout', 'users', 1, '192.168.1.148', NULL, '2026-06-08 09:37:53'),
(89, 1, 'login', 'users', 1, '::1', NULL, '2026-06-08 09:52:47'),
(90, 1, 'logout', 'users', 1, '::1', NULL, '2026-06-08 09:57:08'),
(91, 1, 'admin_set_current_stock', 'products', 25, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":37,\"difference\":37,\"notes\":\"\"}', '2026-06-08 09:58:37'),
(92, 1, 'login', 'users', 1, '::1', NULL, '2026-06-08 09:58:38'),
(93, 1, 'login', 'users', 1, '192.168.1.148', NULL, '2026-06-08 09:59:00'),
(94, 1, 'admin_set_current_stock', 'products', 30, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":27,\"difference\":27,\"notes\":\"\"}', '2026-06-08 09:59:02'),
(95, 1, 'admin_set_current_stock', 'products', 32, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":19,\"difference\":19,\"notes\":\"\"}', '2026-06-08 09:59:08'),
(96, 1, 'admin_set_current_stock', 'products', 45, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":8,\"difference\":8,\"notes\":\"\"}', '2026-06-08 09:59:17'),
(97, 1, 'admin_set_current_stock', 'products', 28, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":19,\"difference\":19,\"notes\":\"\"}', '2026-06-08 09:59:29'),
(98, 1, 'admin_set_current_stock', 'products', 26, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":5,\"difference\":5,\"notes\":\"\"}', '2026-06-08 09:59:40'),
(99, 1, 'admin_set_current_stock', 'products', 29, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":11,\"difference\":11,\"notes\":\"\"}', '2026-06-08 10:00:56'),
(100, 1, 'admin_set_current_stock', 'products', 23, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":42,\"difference\":42,\"notes\":\"\"}', '2026-06-08 10:01:24'),
(101, 1, 'admin_set_current_stock', 'products', 33, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":17,\"difference\":17,\"notes\":\"\"}', '2026-06-08 10:01:46'),
(102, 1, 'admin_set_current_stock', 'products', 14, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":38,\"difference\":38,\"notes\":\"\"}', '2026-06-08 10:02:03'),
(103, 1, 'admin_set_current_stock', 'products', 16, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":33,\"difference\":33,\"notes\":\"\"}', '2026-06-08 10:02:12'),
(104, 1, 'admin_set_current_stock', 'products', 18, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":18,\"difference\":18,\"notes\":\"\"}', '2026-06-08 10:02:26'),
(105, 1, 'admin_set_current_stock', 'products', 19, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":8,\"difference\":8,\"notes\":\"\"}', '2026-06-08 10:02:43'),
(106, 1, 'admin_set_current_stock', 'products', 10, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":4,\"difference\":4,\"notes\":\"\"}', '2026-06-08 10:03:19'),
(107, 1, 'admin_set_current_stock', 'products', 3, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":18,\"difference\":18,\"notes\":\"\"}', '2026-06-08 10:03:47'),
(108, 1, 'admin_set_current_stock', 'products', 35, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":16,\"difference\":16,\"notes\":\"\"}', '2026-06-08 10:03:59'),
(109, 1, 'admin_set_current_stock', 'products', 11, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":13,\"difference\":13,\"notes\":\"\"}', '2026-06-08 10:04:20'),
(110, 1, 'admin_set_current_stock', 'products', 5, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":30,\"difference\":30,\"notes\":\"\"}', '2026-06-08 10:04:38'),
(111, 1, 'admin_set_current_stock', 'products', 7, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":10,\"difference\":10,\"notes\":\"\"}', '2026-06-08 10:04:52'),
(112, 1, 'admin_set_current_stock', 'products', 41, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":25,\"difference\":25,\"notes\":\"\"}', '2026-06-08 10:05:38'),
(113, 1, 'admin_set_current_stock', 'products', 42, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":7,\"difference\":7,\"notes\":\"\"}', '2026-06-08 10:05:52'),
(114, 1, 'admin_set_current_stock', 'products', 34, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":16,\"difference\":16,\"notes\":\"\"}', '2026-06-08 10:06:07'),
(115, 1, 'admin_set_current_stock', 'products', 38, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":19,\"difference\":19,\"notes\":\"\"}', '2026-06-08 10:06:21'),
(116, 1, 'admin_set_current_stock', 'products', 31, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":7,\"difference\":7,\"notes\":\"\"}', '2026-06-08 10:06:48'),
(117, 1, 'admin_set_current_stock', 'products', 2, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":1875,\"difference\":1875,\"notes\":\"\"}', '2026-06-08 10:11:16'),
(118, 1, 'admin_set_current_stock', 'products', 43, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":16,\"difference\":16,\"notes\":\"\"}', '2026-06-08 10:14:51'),
(119, 1, 'admin_set_current_stock', 'products', 30, '192.168.1.71', '{\"old_quantity\":27,\"new_quantity\":29,\"difference\":2,\"notes\":\"\"}', '2026-06-08 10:29:02'),
(120, 1, 'create_user', 'users', 5, '192.168.1.148', NULL, '2026-06-08 10:44:22'),
(121, 1, 'logout', 'users', 1, '192.168.1.148', NULL, '2026-06-08 10:44:24'),
(122, 5, 'login', 'users', 5, '192.168.1.148', NULL, '2026-06-08 10:44:30'),
(123, 1, 'logout', 'users', 1, '192.168.1.71', NULL, '2026-06-08 10:45:30'),
(124, 5, 'login', 'users', 5, '192.168.1.71', NULL, '2026-06-08 10:45:41'),
(125, 5, 'logout', 'users', 5, '192.168.1.71', NULL, '2026-06-08 10:48:00'),
(126, 1, 'login', 'users', 1, '192.168.1.71', NULL, '2026-06-08 10:48:03'),
(127, 1, 'logout', 'users', 1, '192.168.1.71', NULL, '2026-06-08 10:48:23'),
(128, 5, 'login', 'users', 5, '192.168.1.71', NULL, '2026-06-08 10:48:25'),
(129, 5, 'logout', 'users', 5, '192.168.1.71', NULL, '2026-06-08 10:49:03'),
(130, 1, 'login', 'users', 1, '192.168.1.71', NULL, '2026-06-08 10:49:05'),
(131, 1, 'logout', 'users', 1, '192.168.1.71', NULL, '2026-06-08 10:59:59'),
(132, 5, 'login', 'users', 5, '192.168.1.71', NULL, '2026-06-08 11:00:02'),
(133, 5, 'logout', 'users', 5, '192.168.1.71', NULL, '2026-06-08 11:03:23'),
(134, 5, 'login', 'users', 5, '192.168.1.71', NULL, '2026-06-08 11:03:27'),
(135, 5, 'logout', 'users', 5, '192.168.1.71', NULL, '2026-06-08 11:06:08'),
(136, 1, 'login', 'users', 1, '192.168.1.71', NULL, '2026-06-08 11:06:10'),
(137, 1, 'login', 'users', 1, '192.168.1.236', NULL, '2026-06-08 11:19:07'),
(138, 1, 'login', 'users', 1, '192.168.1.236', NULL, '2026-06-08 11:27:26'),
(139, 1, 'create_user', 'users', 6, '192.168.1.236', NULL, '2026-06-08 11:29:50'),
(140, 1, 'logout', 'users', 1, '192.168.1.71', NULL, '2026-06-08 11:30:09'),
(141, 5, 'login', 'users', 5, '192.168.1.71', NULL, '2026-06-08 11:30:12'),
(142, 1, 'assign_printer', 'printers', 1, '192.168.1.236', '{\"department\":\"bar\",\"printer\":\"EPSON Universal Print Driver (redirected 3)\"}', '2026-06-08 11:33:01'),
(143, 1, 'test_printer', 'printers', 1, '192.168.1.236', '{\"ok\":true,\"message\":\"Windows found EPSON Universal Print Driver (redirected 3) and sent a test print job.\"}', '2026-06-08 11:33:10'),
(144, 1, 'remove_printer', 'printers', 1, '192.168.1.236', '{\"printer\":\"EPSON Universal Print Driver (redirected 3)\"}', '2026-06-08 11:35:29'),
(145, 1, 'test_printer', 'printers', 2, '192.168.1.236', '{\"ok\":true,\"message\":\"Connected to BarPrinter at 192.168.1.87:9100 and sent a test line.\"}', '2026-06-08 11:37:35'),
(146, 1, 'login', 'users', 1, '::1', NULL, '2026-06-08 11:52:58'),
(147, 1, 'assign_printer', 'printers', 3, '::1', '{\"department\":\"bar\",\"printer\":\"POS-X Thermal Printer\"}', '2026-06-08 11:53:41'),
(148, 1, 'test_printer', 'printers', 3, '::1', '{\"ok\":true,\"message\":\"Windows found POS-X Thermal Printer and sent a test print job.\"}', '2026-06-08 11:53:48'),
(149, 1, 'logout', 'users', 1, '192.168.1.236', NULL, '2026-06-08 11:54:56'),
(150, 6, 'login', 'users', 6, '192.168.1.236', NULL, '2026-06-08 11:55:03'),
(151, 6, 'create_order', 'orders', 1, '192.168.1.236', '{\"status\":\"pending\"}', '2026-06-08 11:57:24'),
(152, 6, 'authorize_order', 'orders', 1, '192.168.1.236', '{\"decision\":\"authorized\",\"bulk\":true}', '2026-06-08 11:58:09'),
(153, 6, 'bulk_authorize_orders', 'orders', NULL, '192.168.1.236', '{\"decision\":\"approve\",\"processed\":1,\"requested\":1}', '2026-06-08 11:58:09'),
(154, 6, 'logout', 'users', 6, '192.168.1.236', NULL, '2026-06-08 11:58:55'),
(155, 1, 'login', 'users', 1, '192.168.1.236', NULL, '2026-06-08 11:59:01'),
(156, 1, 'test_printer', 'printers', 3, '192.168.1.236', '{\"ok\":false,\"message\":\"Windows printer is not installed or visible: POS-X Thermal Printer\"}', '2026-06-08 11:59:28'),
(157, 1, 'test_printer', 'printers', 3, '192.168.1.236', '{\"ok\":false,\"message\":\"Windows printer is not installed or visible: POS-X Thermal Printer\"}', '2026-06-08 12:08:32'),
(158, 1, 'logout', 'users', 1, '192.168.1.236', NULL, '2026-06-08 12:08:55'),
(159, 1, 'login', 'users', 1, '192.168.1.236', NULL, '2026-06-08 12:09:02'),
(160, 1, 'test_printer', 'printers', 3, '192.168.1.236', '{\"ok\":true,\"message\":\"Windows found POS-X Thermal Printer and sent a test print job.\"}', '2026-06-08 12:12:42'),
(161, 1, 'test_printer', 'printers', 3, '192.168.1.236', '{\"ok\":true,\"message\":\"Windows found POS-X Thermal Printer and sent a test print job.\"}', '2026-06-08 12:13:40'),
(162, 1, 'assign_printer', 'printers', 4, '192.168.1.236', '{\"department\":\"bar\",\"printer\":\"POS-X Thermal Printer\"}', '2026-06-08 12:14:41'),
(163, 1, 'test_printer', 'printers', 4, '192.168.1.236', '{\"ok\":true,\"message\":\"Windows found POS-X Thermal Printer and sent a test print job.\"}', '2026-06-08 12:15:02'),
(164, 1, 'assign_printer', 'printers', 5, '192.168.1.236', '{\"department\":\"bar\",\"printer\":\"POS-X Thermal Printer\"}', '2026-06-08 12:16:22'),
(165, 1, 'test_printer', 'printers', 4, '::1', '{\"ok\":true,\"message\":\"Windows found POS-X Thermal Printer and sent a test print job.\"}', '2026-06-08 12:16:27'),
(166, 5, 'update_product', 'products', 43, '192.168.1.71', NULL, '2026-06-08 12:16:41'),
(167, 5, 'update_product', 'products', 38, '192.168.1.71', NULL, '2026-06-08 12:21:03'),
(168, 5, 'update_product', 'products', 41, '192.168.1.71', NULL, '2026-06-08 12:22:21'),
(169, 5, 'logout', 'users', 5, '192.168.1.71', NULL, '2026-06-08 12:35:17'),
(170, 1, 'login', 'users', 1, '192.168.1.71', NULL, '2026-06-08 12:35:19'),
(171, 1, 'update_product', 'products', 46, '192.168.1.71', NULL, '2026-06-08 12:35:53'),
(172, 1, 'sync_store_system_requisition', NULL, 3267, '192.168.1.71', '{\"synced\":1,\"skipped\":0,\"unmatched\":[],\"message\":\"Synced 1 issued item(s).\"}', '2026-06-08 12:36:43'),
(173, 1, 'sync_store_system_requisition', NULL, 3237, '192.168.1.71', '{\"synced\":1,\"skipped\":0,\"unmatched\":[],\"message\":\"Synced 1 issued item(s).\"}', '2026-06-08 12:37:46'),
(174, 1, 'sync_store_system_requisition', NULL, 3262, '192.168.1.71', '{\"synced\":5,\"skipped\":0,\"unmatched\":[],\"message\":\"Synced 5 issued item(s).\"}', '2026-06-08 12:38:17'),
(175, 1, 'sync_store_system_requisition', NULL, 3248, '192.168.1.71', '{\"synced\":9,\"skipped\":0,\"unmatched\":[],\"message\":\"Synced 9 issued item(s).\"}', '2026-06-08 12:39:13'),
(176, 1, 'test_printer', 'printers', 5, '::1', '{\"ok\":true,\"message\":\"Windows found POS-X Thermal Printer and sent a test print job.\"}', '2026-06-08 12:40:27'),
(177, 1, 'sync_store_system_requisition', NULL, 3254, '192.168.1.71', '{\"synced\":1,\"skipped\":0,\"unmatched\":[],\"message\":\"Synced 1 issued item(s).\"}', '2026-06-08 12:40:44'),
(178, 1, 'assign_printer', 'printers', 6, '::1', '{\"department\":\"bar\",\"printer\":\"POS-X Thermal Printer\"}', '2026-06-08 12:41:05'),
(179, 1, 'test_printer', 'printers', 6, '::1', '{\"ok\":true,\"message\":\"Windows found POS-X Thermal Printer and sent a test print job.\"}', '2026-06-08 12:41:18'),
(180, 1, 'sync_store_system_requisition', NULL, 3261, '192.168.1.71', '{\"synced\":1,\"skipped\":0,\"unmatched\":[],\"message\":\"Synced 1 issued item(s).\"}', '2026-06-08 12:42:08'),
(181, 1, 'sync_store_system_requisition', NULL, 3260, '192.168.1.71', '{\"synced\":5,\"skipped\":0,\"unmatched\":[],\"message\":\"Synced 5 issued item(s).\"}', '2026-06-08 12:42:14'),
(182, 1, 'sync_store_system_requisition', NULL, 3266, '192.168.1.71', '{\"synced\":1,\"skipped\":0,\"unmatched\":[],\"message\":\"Synced 1 issued item(s).\"}', '2026-06-08 12:43:14'),
(183, 1, 'sync_store_system_requisition', NULL, 3257, '192.168.1.71', '{\"synced\":1,\"skipped\":0,\"unmatched\":[],\"message\":\"Synced 1 issued item(s).\"}', '2026-06-08 12:43:32'),
(184, 1, 'update_product', 'products', 46, '192.168.1.71', NULL, '2026-06-08 12:47:04'),
(185, 1, 'update_product', 'products', 46, '192.168.1.71', NULL, '2026-06-08 12:47:20'),
(186, 1, 'admin_set_current_stock', 'products', 2, '192.168.1.71', '{\"old_quantity\":7500,\"new_quantity\":625,\"difference\":-6875,\"notes\":\"\"}', '2026-06-08 13:16:51'),
(187, 1, 'admin_set_current_stock', 'products', 46, '192.168.1.71', '{\"old_quantity\":20,\"new_quantity\":0,\"difference\":-20,\"notes\":\"\"}', '2026-06-08 13:17:36'),
(188, 1, 'admin_set_current_stock', 'products', 38, '192.168.1.71', '{\"old_quantity\":139,\"new_quantity\":38,\"difference\":-101,\"notes\":\"\"}', '2026-06-08 13:20:11'),
(189, 1, 'admin_set_current_stock', 'products', 43, '192.168.1.71', '{\"old_quantity\":85,\"new_quantity\":32,\"difference\":-53,\"notes\":\"\"}', '2026-06-08 13:23:08'),
(190, 1, 'assign_printer', 'printers', 7, '::1', '{\"department\":\"bar\",\"printer\":\"POS-X Thermal Printer (Copy 1)\"}', '2026-06-08 13:29:40'),
(191, 1, 'assign_printer', 'printers', 8, '::1', '{\"department\":\"bar\",\"printer\":\"POS-X Thermal Printer (Copy 1)\"}', '2026-06-08 13:29:42'),
(192, 1, 'test_printer', 'printers', 8, '::1', '{\"ok\":true,\"message\":\"Windows found POS-X Thermal Printer (Copy 1) and sent a test print job.\"}', '2026-06-08 13:29:49'),
(193, 1, 'admin_set_current_stock', 'products', 43, '192.168.1.71', '{\"old_quantity\":32,\"new_quantity\":52,\"difference\":20,\"notes\":\"Entry Error\"}', '2026-06-08 13:32:10'),
(194, 1, 'admin_set_current_stock', 'products', 38, '192.168.1.71', '{\"old_quantity\":38,\"new_quantity\":58,\"difference\":20,\"notes\":\"Entry Error\"}', '2026-06-08 13:33:18'),
(195, 1, 'admin_set_current_stock', 'products', 16, '192.168.1.71', '{\"old_quantity\":66,\"new_quantity\":38,\"difference\":-28,\"notes\":\"Entry Error\"}', '2026-06-08 13:41:26'),
(196, 1, 'admin_set_current_stock', 'products', 16, '192.168.1.71', '{\"old_quantity\":38,\"new_quantity\":33,\"difference\":-5,\"notes\":\"Entry Error\"}', '2026-06-08 13:42:06'),
(197, 1, 'admin_set_current_stock', 'products', 14, '192.168.1.71', '{\"old_quantity\":71,\"new_quantity\":38,\"difference\":-33,\"notes\":\"\"}', '2026-06-08 13:42:18'),
(198, 1, 'logout', 'users', 1, '192.168.1.71', NULL, '2026-06-08 13:42:46'),
(199, 5, 'login', 'users', 5, '192.168.1.71', NULL, '2026-06-08 13:42:49'),
(200, 1, 'remove_printer', 'printers', 8, '::1', '{\"printer\":\"POS-X Thermal Printer (Copy 1)\"}', '2026-06-08 13:55:07'),
(201, 1, 'test_printer', 'printers', 10, '::1', '{\"ok\":true,\"message\":\"Connected to bar printer at 192.168.1.87:9100 and sent a test line.\"}', '2026-06-08 13:55:52'),
(202, 1, 'test_printer', 'printers', 9, '::1', '{\"ok\":true,\"message\":\"Connected to kitchen printer at 192.168.1.5:9100 and sent a test line.\"}', '2026-06-08 13:56:02'),
(203, 1, 'test_printer', 'printers', 9, '::1', '{\"ok\":true,\"message\":\"Connected to kitchen printer at 192.168.1.5:9100 and sent a test line.\"}', '2026-06-08 13:56:09'),
(204, 1, 'test_printer', 'printers', 9, '::1', '{\"ok\":true,\"message\":\"Connected to kitchen printer at 192.168.1.5:9100 and sent a test line.\"}', '2026-06-08 13:56:14'),
(205, 1, 'test_printer', 'printers', 10, '::1', '{\"ok\":true,\"message\":\"Connected to bar printer at 192.168.1.87:9100 and sent a test line.\"}', '2026-06-08 13:56:22'),
(206, 1, 'test_printer', 'printers', 9, '::1', '{\"ok\":false,\"message\":\"Could not connect to kitchen printer at 192.168.1.5:9100. No connection could be made because the target machine actively refused it\"}', '2026-06-08 13:57:20'),
(207, 1, 'create_order', 'orders', 2, '::1', '{\"status\":\"pending\"}', '2026-06-08 13:58:19'),
(208, 1, 'authorize_order', 'orders', 2, '::1', '{\"decision\":\"authorized\",\"bulk\":true}', '2026-06-08 13:58:38'),
(209, 1, 'bulk_authorize_orders', 'orders', NULL, '::1', '{\"decision\":\"approve\",\"processed\":1,\"requested\":1}', '2026-06-08 13:58:38'),
(210, 1, 'test_printer', 'printers', 9, '::1', '{\"ok\":true,\"message\":\"Connected to kitchen printer at 192.168.1.5:9100 and sent a test line.\"}', '2026-06-08 14:03:51'),
(211, 1, 'create_order', 'orders', 3, '::1', '{\"status\":\"pending\"}', '2026-06-08 14:11:31'),
(212, 1, 'remove_printer', 'printers', 9, '::1', '{\"printer\":\"kitchen printer\"}', '2026-06-08 16:17:25'),
(213, 1, 'assign_printer', 'printers', 11, '::1', '{\"department\":\"kitchen\",\"printer\":\"Star TSP143IIILAN Cutter\"}', '2026-06-08 16:17:32'),
(214, 1, 'test_printer', 'printers', 11, '::1', '{\"ok\":true,\"message\":\"Windows found Star TSP143IIILAN Cutter and sent a test print job.\"}', '2026-06-08 16:20:52'),
(215, 1, 'create_order', 'orders', 4, '192.168.1.236', '{\"status\":\"pending\"}', '2026-06-08 16:23:33'),
(216, 1, 'authorize_order', 'orders', 4, '192.168.1.236', '{\"decision\":\"authorized\",\"bulk\":true}', '2026-06-08 16:24:13'),
(217, 1, 'bulk_authorize_orders', 'orders', NULL, '192.168.1.236', '{\"decision\":\"approve\",\"processed\":1,\"requested\":1}', '2026-06-08 16:24:13'),
(218, 1, 'logout', 'users', 1, '192.168.1.236', NULL, '2026-06-08 16:25:13'),
(219, 1, 'login', 'users', 1, '192.168.1.236', NULL, '2026-06-08 16:26:33'),
(220, 1, 'logout', 'users', 1, '::1', NULL, '2026-06-08 16:41:15'),
(221, 1, 'login', 'users', 1, '::1', NULL, '2026-06-08 16:41:23'),
(222, 1, 'logout', 'users', 1, '::1', NULL, '2026-06-08 16:42:27'),
(223, 1, 'login', 'users', 1, '::1', NULL, '2026-06-08 16:50:27'),
(224, 5, 'login', 'users', 5, '192.168.1.71', NULL, '2026-06-09 06:06:58'),
(225, 5, 'login', 'users', 5, '192.168.1.148', NULL, '2026-06-09 06:51:24'),
(226, 5, 'admin_set_current_stock', 'products', 30, '192.168.1.148', '{\"old_quantity\":62,\"new_quantity\":12,\"difference\":-50,\"notes\":\"\"}', '2026-06-09 06:52:17'),
(227, 5, 'admin_set_current_stock', 'products', 32, '192.168.1.148', '{\"old_quantity\":19,\"new_quantity\":8,\"difference\":-11,\"notes\":\"\"}', '2026-06-09 06:52:26'),
(228, 5, 'admin_set_current_stock', 'products', 12, '192.168.1.148', '{\"old_quantity\":198,\"new_quantity\":0,\"difference\":-198,\"notes\":\"\"}', '2026-06-09 06:52:41'),
(229, 5, 'admin_set_current_stock', 'products', 28, '192.168.1.148', '{\"old_quantity\":19,\"new_quantity\":18,\"difference\":-1,\"notes\":\"\"}', '2026-06-09 06:53:00'),
(230, 5, 'admin_set_current_stock', 'products', 26, '192.168.1.148', '{\"old_quantity\":92,\"new_quantity\":4,\"difference\":-88,\"notes\":\"\"}', '2026-06-09 06:54:12'),
(231, 5, 'admin_set_current_stock', 'products', 25, '192.168.1.148', '{\"old_quantity\":45,\"new_quantity\":36,\"difference\":-9,\"notes\":\"\"}', '2026-06-09 06:54:23'),
(232, 1, 'logout', 'users', 1, '192.168.1.236', NULL, '2026-06-09 06:54:33'),
(233, 5, 'admin_set_current_stock', 'products', 29, '192.168.1.148', '{\"old_quantity\":77,\"new_quantity\":10,\"difference\":-67,\"notes\":\"\"}', '2026-06-09 06:54:41'),
(234, 5, 'admin_set_current_stock', 'products', 23, '192.168.1.148', '{\"old_quantity\":65,\"new_quantity\":45,\"difference\":-20,\"notes\":\"\"}', '2026-06-09 06:54:57'),
(235, 5, 'admin_set_current_stock', 'products', 33, '192.168.1.148', '{\"old_quantity\":42,\"new_quantity\":9,\"difference\":-33,\"notes\":\"\"}', '2026-06-09 06:55:13'),
(236, 5, 'admin_set_current_stock', 'products', 14, '192.168.1.148', '{\"old_quantity\":38,\"new_quantity\":26,\"difference\":-12,\"notes\":\"\"}', '2026-06-09 06:55:35'),
(237, 5, 'admin_set_current_stock', 'products', 16, '192.168.1.148', '{\"old_quantity\":33,\"new_quantity\":12,\"difference\":-21,\"notes\":\"\"}', '2026-06-09 06:56:35'),
(238, 5, 'admin_set_current_stock', 'products', 46, '192.168.1.148', '{\"old_quantity\":0,\"new_quantity\":4,\"difference\":4,\"notes\":\"\"}', '2026-06-09 06:57:02'),
(239, 6, 'login', 'users', 6, '192.168.1.236', NULL, '2026-06-09 06:57:05'),
(240, 5, 'admin_set_current_stock', 'products', 10, '192.168.1.148', '{\"old_quantity\":76,\"new_quantity\":4,\"difference\":-72,\"notes\":\"\"}', '2026-06-09 06:57:52'),
(241, 6, 'logout', 'users', 6, '192.168.1.236', NULL, '2026-06-09 06:58:52'),
(242, 6, 'login', 'users', 6, '192.168.1.236', NULL, '2026-06-09 06:59:57'),
(243, 6, 'create_order', 'orders', 5, '192.168.1.236', '{\"status\":\"pending\"}', '2026-06-09 07:02:54'),
(244, 6, 'failed_bulk_order_authorization_pin', 'orders', NULL, '192.168.1.236', NULL, '2026-06-09 07:03:23'),
(245, 6, 'authorize_order', 'orders', 5, '192.168.1.236', '{\"decision\":\"authorized\",\"bulk\":true}', '2026-06-09 07:03:46'),
(246, 6, 'bulk_authorize_orders', 'orders', NULL, '192.168.1.236', '{\"decision\":\"approve\",\"processed\":1,\"stock_failed\":0,\"requested\":1}', '2026-06-09 07:03:46'),
(247, 6, 'logout', 'users', 6, '192.168.1.236', NULL, '2026-06-09 07:05:14'),
(248, 6, 'login', 'users', 6, '192.168.1.236', NULL, '2026-06-09 07:06:19'),
(249, 1, 'login', 'users', 1, '::1', NULL, '2026-06-09 07:10:32'),
(250, 6, 'logout', 'users', 6, '192.168.1.236', NULL, '2026-06-09 07:16:35'),
(251, 1, 'login', 'users', 1, '192.168.1.236', NULL, '2026-06-09 07:16:48'),
(252, 5, 'admin_set_current_stock', 'products', 47, '192.168.1.148', '{\"old_quantity\":36,\"new_quantity\":18,\"difference\":-18,\"notes\":\"\"}', '2026-06-09 07:29:01'),
(254, 1, 'login', 'users', 1, '::1', NULL, '2026-06-09 08:10:00'),
(255, 1, 'update_product', 'products', 2, '::1', NULL, '2026-06-09 08:12:02'),
(256, 1, 'save_product_recipe', 'products', 53, '::1', NULL, '2026-06-09 08:16:31'),
(257, 1, 'update_product', 'products', 47, '::1', NULL, '2026-06-09 08:21:29'),
(258, 1, 'create_production_batch', 'production_batches', 2, '::1', '{\"raw_quantity\":10,\"outputs\":{\"56\":\"3\"}}', '2026-06-09 08:28:31'),
(259, 1, 'create_production_batch', 'production_batches', 3, '::1', '{\"raw_quantity\":2,\"outputs\":{\"56\":\"3\"}}', '2026-06-09 08:58:37'),
(260, 1, 'create_production_batch', 'production_batches', 4, '::1', '{\"raw_quantity\":3,\"outputs\":{\"56\":\"10\"}}', '2026-06-09 09:01:45'),
(261, 1, 'logout', 'users', 1, '192.168.1.71', NULL, '2026-06-09 13:54:04'),
(262, 5, 'login', 'users', 5, '192.168.1.71', NULL, '2026-06-09 13:54:09'),
(263, 5, 'sync_store_system_requisition', NULL, 3282, '192.168.1.71', '{\"synced\":1,\"skipped\":0,\"unmatched\":[],\"message\":\"Synced 1 issued item(s).\"}', '2026-06-09 14:50:21'),
(264, 5, 'sync_store_system_requisition', NULL, 3281, '192.168.1.71', '{\"synced\":5,\"skipped\":0,\"unmatched\":[],\"message\":\"Synced 5 issued item(s).\"}', '2026-06-09 14:50:25'),
(265, 5, 'sync_store_system_requisition', NULL, 3280, '192.168.1.71', '{\"synced\":1,\"skipped\":0,\"unmatched\":[],\"message\":\"Synced 1 issued item(s).\"}', '2026-06-09 14:50:27'),
(266, 5, 'sync_store_system_requisition', NULL, 3279, '192.168.1.71', '{\"synced\":5,\"skipped\":0,\"unmatched\":[],\"message\":\"Synced 5 issued item(s).\"}', '2026-06-09 14:50:29'),
(267, 5, 'sync_store_system_requisition', NULL, 3274, '192.168.1.71', '{\"synced\":1,\"skipped\":0,\"unmatched\":[],\"message\":\"Synced 1 issued item(s).\"}', '2026-06-09 14:50:36'),
(268, 1, 'login', 'users', 1, '::1', NULL, '2026-06-10 06:39:38'),
(269, 1, 'admin_set_current_stock', 'products', 103, '::1', '{\"old_quantity\":0,\"new_quantity\":10,\"difference\":10,\"notes\":\"\"}', '2026-06-10 07:02:50'),
(270, 1, 'update_product', 'products', 103, '::1', NULL, '2026-06-10 07:03:33'),
(271, 1, 'create_production_batch', 'production_batches', 5, '::1', '{\"raw_quantity\":10,\"outputs\":{\"84\":\"20\",\"85\":\"30\"}}', '2026-06-10 07:04:14'),
(272, 5, 'login', 'users', 5, '192.168.1.71', NULL, '2026-06-10 07:18:09'),
(273, 1, 'login', 'users', 1, '192.168.1.148', NULL, '2026-06-10 07:20:02'),
(274, 1, 'update_product', 'products', 53, '192.168.1.148', NULL, '2026-06-10 07:24:52'),
(275, 1, 'save_product_recipe', 'products', 104, '192.168.1.148', NULL, '2026-06-10 07:27:05'),
(276, 1, 'save_product_recipe', 'products', 114, '192.168.1.148', NULL, '2026-06-10 07:56:39'),
(277, 1, 'save_product_recipe', 'products', 113, '192.168.1.148', NULL, '2026-06-10 07:56:48'),
(278, 1, 'update_product', 'products', 11, '192.168.1.148', NULL, '2026-06-10 08:01:22'),
(279, 1, 'update_product', 'products', 74, '192.168.1.148', NULL, '2026-06-10 08:01:53'),
(280, 1, 'update_product', 'products', 7, '192.168.1.148', NULL, '2026-06-10 08:02:36'),
(281, 1, 'update_product', 'products', 75, '192.168.1.148', NULL, '2026-06-10 08:02:45'),
(282, 1, 'update_product', 'products', 10, '192.168.1.148', NULL, '2026-06-10 08:03:23'),
(283, 1, 'create_user', 'users', 7, '192.168.1.148', NULL, '2026-06-10 08:09:37'),
(284, 1, 'logout', 'users', 1, '192.168.1.148', NULL, '2026-06-10 08:10:07'),
(285, 1, 'login', 'users', 1, '192.168.1.148', NULL, '2026-06-10 08:10:34'),
(286, 1, 'logout', 'users', 1, '192.168.1.148', NULL, '2026-06-10 08:10:48'),
(287, 7, 'login', 'users', 7, '192.168.1.148', NULL, '2026-06-10 08:10:59'),
(288, 7, 'logout', 'users', 7, '192.168.1.148', NULL, '2026-06-10 08:12:43'),
(289, 1, 'login', 'users', 1, '192.168.1.148', NULL, '2026-06-10 08:12:51'),
(290, 1, 'update_product', 'products', 100, '::1', NULL, '2026-06-10 09:23:50'),
(291, 1, 'update_product', 'products', 108, '192.168.1.148', NULL, '2026-06-10 09:28:21'),
(292, 1, 'update_product', 'products', 106, '192.168.1.148', NULL, '2026-06-10 09:28:25'),
(293, 1, 'update_product', 'products', 105, '192.168.1.148', NULL, '2026-06-10 09:31:47'),
(294, 1, 'update_product', 'products', 112, '192.168.1.148', NULL, '2026-06-10 09:31:56'),
(295, 1, 'update_product', 'products', 111, '192.168.1.148', NULL, '2026-06-10 09:32:18'),
(296, 1, 'update_product', 'products', 110, '192.168.1.148', NULL, '2026-06-10 09:32:33'),
(297, 1, 'update_product', 'products', 109, '192.168.1.148', NULL, '2026-06-10 09:32:56'),
(298, 1, 'update_product', 'products', 99, '192.168.1.148', NULL, '2026-06-10 09:34:12'),
(299, 5, 'logout', 'users', 5, '192.168.1.71', NULL, '2026-06-10 11:06:09'),
(300, 1, 'login', 'users', 1, '192.168.1.71', NULL, '2026-06-10 11:06:11'),
(301, 1, 'admin_set_current_stock', 'products', 116, '192.168.1.71', '{\"old_quantity\":20,\"new_quantity\":4,\"difference\":-16,\"notes\":\"\"}', '2026-06-10 11:08:02'),
(302, 1, 'login', 'users', 1, '192.168.1.214', NULL, '2026-06-10 11:19:13'),
(303, 1, 'save_product_recipe', 'products', 119, '192.168.1.71', NULL, '2026-06-10 11:33:38'),
(304, 1, 'save_product_recipe', 'products', 119, '192.168.1.71', NULL, '2026-06-10 11:33:45'),
(305, 1, 'save_product_recipe', 'products', 119, '192.168.1.71', NULL, '2026-06-10 11:33:53'),
(306, 1, 'save_product_recipe', 'products', 119, '192.168.1.71', NULL, '2026-06-10 11:33:57'),
(307, 1, 'admin_set_current_stock', 'products', 118, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":30,\"difference\":30,\"notes\":\"\"}', '2026-06-10 11:36:35'),
(308, 1, 'create_order', 'orders', 8, '192.168.1.71', '{\"status\":\"pending\"}', '2026-06-10 11:37:58'),
(309, 1, 'authorize_order', 'orders', 8, '192.168.1.71', '{\"decision\":\"authorized\",\"bulk\":true}', '2026-06-10 11:42:39'),
(310, 1, 'bulk_authorize_orders', 'orders', NULL, '192.168.1.71', '{\"decision\":\"approve\",\"processed\":1,\"stock_failed\":0,\"requested\":1}', '2026-06-10 11:42:39'),
(311, 1, 'update_product', 'products', 89, '192.168.1.71', NULL, '2026-06-10 12:12:23'),
(312, 1, 'update_product', 'products', 88, '192.168.1.71', NULL, '2026-06-10 12:13:10'),
(313, 1, 'update_product', 'products', 91, '192.168.1.71', NULL, '2026-06-10 12:13:32'),
(314, 1, 'update_product', 'products', 96, '192.168.1.71', NULL, '2026-06-10 13:19:55'),
(315, 1, 'update_product', 'products', 102, '192.168.1.71', NULL, '2026-06-10 13:24:06'),
(316, 1, 'update_product', 'products', 98, '192.168.1.71', NULL, '2026-06-10 13:27:26'),
(317, 1, 'update_product', 'products', 99, '192.168.1.71', NULL, '2026-06-10 13:27:37'),
(318, 1, 'update_product', 'products', 56, '192.168.1.71', NULL, '2026-06-10 13:34:06'),
(319, 1, 'update_product', 'products', 95, '192.168.1.71', NULL, '2026-06-10 13:34:36'),
(320, 1, 'update_product', 'products', 92, '192.168.1.71', NULL, '2026-06-10 13:35:00'),
(321, 1, 'update_product', 'products', 87, '192.168.1.71', NULL, '2026-06-10 13:35:41'),
(322, 1, 'update_product', 'products', 86, '192.168.1.71', NULL, '2026-06-10 13:35:56'),
(323, 1, 'update_product', 'products', 94, '192.168.1.71', NULL, '2026-06-10 13:41:17'),
(324, 1, 'update_product', 'products', 94, '192.168.1.71', NULL, '2026-06-10 13:41:27'),
(325, 1, 'update_product', 'products', 93, '192.168.1.71', NULL, '2026-06-10 13:41:37'),
(326, 1, 'save_product_recipe', 'products', 99, '192.168.1.71', NULL, '2026-06-10 13:43:55'),
(327, 1, 'save_product_recipe', 'products', 99, '192.168.1.71', NULL, '2026-06-10 13:44:37'),
(328, 1, 'save_product_recipe', 'products', 96, '192.168.1.71', NULL, '2026-06-10 13:46:03'),
(329, 1, 'admin_set_current_stock', 'products', 127, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":10,\"difference\":10,\"notes\":\"\"}', '2026-06-10 13:46:59'),
(330, 1, 'admin_set_current_stock', 'products', 127, '192.168.1.71', '{\"old_quantity\":10,\"new_quantity\":0,\"difference\":-10,\"notes\":\"\"}', '2026-06-10 13:47:55'),
(331, 1, 'admin_set_current_stock', 'products', 121, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":2,\"difference\":2,\"notes\":\"\"}', '2026-06-10 13:48:32'),
(332, 1, 'admin_set_current_stock', 'products', 122, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":2,\"difference\":2,\"notes\":\"\"}', '2026-06-10 13:48:51'),
(333, 1, 'update_product', 'products', 122, '192.168.1.71', NULL, '2026-06-10 13:50:43'),
(334, 1, 'save_product_recipe', 'products', 99, '192.168.1.71', NULL, '2026-06-10 13:51:51'),
(335, 1, 'update_product', 'products', 97, '192.168.1.71', NULL, '2026-06-10 13:53:07'),
(336, 1, 'save_product_recipe', 'products', 97, '192.168.1.71', NULL, '2026-06-10 13:53:29'),
(337, 1, 'save_product_recipe', 'products', 88, '192.168.1.71', NULL, '2026-06-10 13:54:40'),
(338, 1, 'save_product_recipe', 'products', 93, '192.168.1.71', NULL, '2026-06-10 13:55:28'),
(339, 1, 'save_product_recipe', 'products', 94, '192.168.1.71', NULL, '2026-06-10 13:55:35'),
(340, 1, 'save_product_recipe', 'products', 96, '192.168.1.71', NULL, '2026-06-10 13:55:57'),
(341, 1, 'save_product_recipe', 'products', 88, '192.168.1.71', NULL, '2026-06-10 13:57:56'),
(342, 1, 'save_product_recipe', 'products', 89, '192.168.1.71', NULL, '2026-06-10 14:06:28'),
(343, 1, 'save_product_recipe', 'products', 102, '192.168.1.71', NULL, '2026-06-10 14:09:48'),
(344, 1, 'save_product_recipe', 'products', 126, '192.168.1.71', NULL, '2026-06-10 14:11:32'),
(345, 1, 'save_product_recipe', 'products', 117, '192.168.1.71', NULL, '2026-06-10 14:14:59'),
(346, 1, 'save_product_recipe', 'products', 87, '192.168.1.71', NULL, '2026-06-10 14:15:19'),
(347, 1, 'save_product_recipe', 'products', 86, '192.168.1.71', NULL, '2026-06-10 14:15:30'),
(348, 1, 'save_product_recipe', 'products', 92, '192.168.1.71', NULL, '2026-06-10 14:17:31'),
(349, 1, 'save_product_recipe', 'products', 92, '192.168.1.71', NULL, '2026-06-10 14:17:38'),
(350, 1, 'admin_set_current_stock', 'products', 134, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":8,\"difference\":8,\"notes\":\"\"}', '2026-06-10 14:18:33'),
(351, 1, 'save_product_recipe', 'products', 95, '192.168.1.71', NULL, '2026-06-10 14:30:23'),
(352, 1, 'update_product', 'products', 135, '192.168.1.71', NULL, '2026-06-10 14:31:24'),
(353, 1, 'login', 'users', 1, '::1', NULL, '2026-06-10 14:35:37'),
(354, 1, 'save_product_recipe', 'products', 97, '192.168.1.71', NULL, '2026-06-10 14:51:03'),
(355, 1, 'save_product_recipe', 'products', 132, '192.168.1.71', NULL, '2026-06-10 14:51:58'),
(356, 1, 'update_product', 'products', 129, '192.168.1.71', NULL, '2026-06-10 14:54:03'),
(357, 1, 'save_product_recipe', 'products', 98, '192.168.1.71', NULL, '2026-06-10 14:54:26'),
(358, 1, 'save_product_recipe', 'products', 98, '192.168.1.71', NULL, '2026-06-10 14:54:36'),
(359, 1, 'save_product_recipe', 'products', 98, '192.168.1.71', NULL, '2026-06-10 14:54:39'),
(360, 1, 'save_product_recipe', 'products', 136, '192.168.1.71', NULL, '2026-06-10 14:56:19'),
(361, 1, 'save_product_recipe', 'products', 136, '192.168.1.71', NULL, '2026-06-10 15:09:22'),
(362, 1, 'update_product', 'products', 101, '192.168.1.71', NULL, '2026-06-10 15:15:26'),
(363, 1, 'save_product_recipe', 'products', 132, '192.168.1.71', NULL, '2026-06-10 15:16:58'),
(364, 1, 'save_product_recipe', 'products', 132, '192.168.1.71', NULL, '2026-06-10 15:17:31'),
(365, 1, 'save_product_recipe', 'products', 101, '192.168.1.71', NULL, '2026-06-10 15:19:04'),
(366, 1, 'save_product_recipe', 'products', 134, '192.168.1.71', NULL, '2026-06-10 15:19:38'),
(367, 1, 'login', 'users', 1, '192.168.1.100', NULL, '2026-06-11 06:11:00'),
(368, 1, 'admin_set_current_stock', 'products', 12, '192.168.1.100', '{\"old_quantity\":66,\"new_quantity\":0,\"difference\":-66,\"notes\":\"\"}', '2026-06-11 06:11:54'),
(369, 1, 'admin_set_current_stock', 'products', 72, '192.168.1.100', '{\"old_quantity\":0,\"new_quantity\":15,\"difference\":15,\"notes\":\"\"}', '2026-06-11 06:12:22'),
(370, 1, 'admin_set_current_stock', 'products', 72, '192.168.1.100', '{\"old_quantity\":15,\"new_quantity\":0,\"difference\":-15,\"notes\":\"\"}', '2026-06-11 06:12:41'),
(371, 1, 'admin_set_current_stock', 'products', 28, '192.168.1.100', '{\"old_quantity\":18,\"new_quantity\":15,\"difference\":-3,\"notes\":\"\"}', '2026-06-11 06:12:46'),
(372, 1, 'admin_set_current_stock', 'products', 26, '192.168.1.100', '{\"old_quantity\":20,\"new_quantity\":18,\"difference\":-2,\"notes\":\"\"}', '2026-06-11 06:13:00'),
(373, 1, 'admin_set_current_stock', 'products', 65, '192.168.1.100', '{\"old_quantity\":0,\"new_quantity\":18,\"difference\":18,\"notes\":\"\"}', '2026-06-11 06:14:01'),
(374, 1, 'admin_set_current_stock', 'products', 25, '192.168.1.100', '{\"old_quantity\":36,\"new_quantity\":27,\"difference\":-9,\"notes\":\"\"}', '2026-06-11 06:14:16'),
(375, 1, 'admin_set_current_stock', 'products', 2, '192.168.1.100', '{\"old_quantity\":2499,\"new_quantity\":1875,\"difference\":-624,\"notes\":\"\"}', '2026-06-11 06:15:32'),
(376, 1, 'admin_set_current_stock', 'products', 66, '192.168.1.100', '{\"old_quantity\":0,\"new_quantity\":27,\"difference\":27,\"notes\":\"\"}', '2026-06-11 06:16:04'),
(377, 1, 'admin_set_current_stock', 'products', 29, '192.168.1.100', '{\"old_quantity\":43,\"new_quantity\":0,\"difference\":-43,\"notes\":\"\"}', '2026-06-11 06:16:13'),
(378, 1, 'admin_set_current_stock', 'products', 67, '192.168.1.100', '{\"old_quantity\":0,\"new_quantity\":43,\"difference\":43,\"notes\":\"\"}', '2026-06-11 06:16:40'),
(379, 1, 'admin_set_current_stock', 'products', 23, '192.168.1.100', '{\"old_quantity\":45,\"new_quantity\":43,\"difference\":-2,\"notes\":\"\"}', '2026-06-11 06:16:58'),
(380, 1, 'admin_set_current_stock', 'products', 33, '192.168.1.100', '{\"old_quantity\":34,\"new_quantity\":27,\"difference\":-7,\"notes\":\"\"}', '2026-06-11 06:17:17'),
(381, 1, 'admin_set_current_stock', 'products', 14, '192.168.1.100', '{\"old_quantity\":26,\"new_quantity\":0,\"difference\":-26,\"notes\":\"\"}', '2026-06-11 06:17:52'),
(382, 1, 'admin_set_current_stock', 'products', 16, '192.168.1.100', '{\"old_quantity\":45,\"new_quantity\":0,\"difference\":-45,\"notes\":\"\"}', '2026-06-11 06:18:12'),
(383, 1, 'admin_set_current_stock', 'products', 14, '192.168.1.100', '{\"old_quantity\":0,\"new_quantity\":6,\"difference\":6,\"notes\":\"\"}', '2026-06-11 06:18:24'),
(384, 1, 'admin_set_current_stock', 'products', 80, '192.168.1.100', '{\"old_quantity\":0,\"new_quantity\":13,\"difference\":13,\"notes\":\"\"}', '2026-06-11 06:19:05'),
(385, 1, 'admin_set_current_stock', 'products', 18, '192.168.1.100', '{\"old_quantity\":18,\"new_quantity\":13,\"difference\":-5,\"notes\":\"\"}', '2026-06-11 06:21:33'),
(386, 1, 'admin_set_current_stock', 'products', 19, '192.168.1.100', '{\"old_quantity\":41,\"new_quantity\":30,\"difference\":-11,\"notes\":\"\"}', '2026-06-11 06:22:02'),
(387, 1, 'admin_set_current_stock', 'products', 46, '192.168.1.100', '{\"old_quantity\":16,\"new_quantity\":8,\"difference\":-8,\"notes\":\"\"}', '2026-06-11 06:24:00'),
(388, 1, 'admin_set_current_stock', 'products', 10, '192.168.1.100', '{\"old_quantity\":76,\"new_quantity\":23,\"difference\":-53,\"notes\":\"\"}', '2026-06-11 06:24:32'),
(389, 1, 'admin_set_current_stock', 'products', 3, '192.168.1.100', '{\"old_quantity\":18,\"new_quantity\":40,\"difference\":22,\"notes\":\"\"}', '2026-06-11 06:24:57'),
(390, 1, 'admin_set_current_stock', 'products', 73, '192.168.1.100', '{\"old_quantity\":0,\"new_quantity\":40,\"difference\":40,\"notes\":\"\"}', '2026-06-11 06:25:05'),
(391, 1, 'admin_set_current_stock', 'products', 11, '192.168.1.100', '{\"old_quantity\":21,\"new_quantity\":8,\"difference\":-13,\"notes\":\"\"}', '2026-06-11 06:25:36'),
(392, 1, 'admin_set_current_stock', 'products', 74, '192.168.1.100', '{\"old_quantity\":0,\"new_quantity\":8,\"difference\":8,\"notes\":\"\"}', '2026-06-11 06:25:51'),
(393, 1, 'admin_set_current_stock', 'products', 5, '192.168.1.100', '{\"old_quantity\":55,\"new_quantity\":20,\"difference\":-35,\"notes\":\"\"}', '2026-06-11 06:26:10'),
(394, 1, 'admin_set_current_stock', 'products', 4, '192.168.1.100', '{\"old_quantity\":24,\"new_quantity\":16,\"difference\":-8,\"notes\":\"\"}', '2026-06-11 06:26:27'),
(395, 1, 'admin_set_current_stock', 'products', 68, '192.168.1.100', '{\"old_quantity\":0,\"new_quantity\":36,\"difference\":36,\"notes\":\"\"}', '2026-06-11 06:26:46'),
(396, 1, 'admin_set_current_stock', 'products', 7, '192.168.1.100', '{\"old_quantity\":18,\"new_quantity\":4,\"difference\":-14,\"notes\":\"\"}', '2026-06-11 06:27:09'),
(397, 1, 'admin_set_current_stock', 'products', 75, '192.168.1.100', '{\"old_quantity\":0,\"new_quantity\":4,\"difference\":4,\"notes\":\"\"}', '2026-06-11 06:27:30'),
(398, 1, 'admin_set_current_stock', 'products', 43, '192.168.1.100', '{\"old_quantity\":82,\"new_quantity\":8,\"difference\":-74,\"notes\":\"\"}', '2026-06-11 06:28:15'),
(399, 1, 'admin_set_current_stock', 'products', 57, '192.168.1.100', '{\"old_quantity\":0,\"new_quantity\":16,\"difference\":16,\"notes\":\"\"}', '2026-06-11 06:28:39'),
(400, 1, 'admin_set_current_stock', 'products', 42, '192.168.1.100', '{\"old_quantity\":7,\"new_quantity\":4,\"difference\":-3,\"notes\":\"\"}', '2026-06-11 06:29:18'),
(401, 1, 'admin_set_current_stock', 'products', 41, '192.168.1.100', '{\"old_quantity\":50,\"new_quantity\":6,\"difference\":-44,\"notes\":\"\"}', '2026-06-11 06:29:54'),
(402, 1, 'admin_set_current_stock', 'products', 34, '192.168.1.100', '{\"old_quantity\":16,\"new_quantity\":13,\"difference\":-3,\"notes\":\"\"}', '2026-06-11 06:30:40'),
(403, 1, 'admin_set_current_stock', 'products', 39, '192.168.1.100', '{\"old_quantity\":0,\"new_quantity\":1,\"difference\":1,\"notes\":\"\"}', '2026-06-11 06:31:56'),
(404, 1, 'admin_set_current_stock', 'products', 38, '192.168.1.100', '{\"old_quantity\":58,\"new_quantity\":8,\"difference\":-50,\"notes\":\"\"}', '2026-06-11 06:32:21'),
(405, 1, 'admin_set_current_stock', 'products', 59, '192.168.1.100', '{\"old_quantity\":0,\"new_quantity\":16,\"difference\":16,\"notes\":\"\"}', '2026-06-11 06:33:00'),
(406, 1, 'login', 'users', 1, '192.168.1.100', NULL, '2026-06-11 06:38:08'),
(407, 1, 'admin_set_current_stock', 'products', 140, '192.168.1.100', '{\"old_quantity\":0,\"new_quantity\":43,\"difference\":43,\"notes\":\"\"}', '2026-06-11 06:39:40'),
(408, 1, 'update_product', 'products', 140, '192.168.1.100', NULL, '2026-06-11 06:41:12'),
(409, 1, 'logout', 'users', 1, '192.168.1.100', NULL, '2026-06-11 06:42:27'),
(410, 5, 'login', 'users', 5, '192.168.1.71', NULL, '2026-06-11 07:04:27'),
(411, 5, 'logout', 'users', 5, '192.168.1.71', NULL, '2026-06-11 07:08:27'),
(412, 1, 'login', 'users', 1, '192.168.1.71', NULL, '2026-06-11 07:08:33'),
(413, 1, 'logout', 'users', 1, '192.168.1.71', NULL, '2026-06-11 07:12:55'),
(414, 1, 'login', 'users', 1, '192.168.1.71', NULL, '2026-06-11 07:12:58'),
(415, 1, 'update_product', 'products', 109, '192.168.1.71', NULL, '2026-06-11 07:14:02'),
(416, 1, 'update_product', 'products', 110, '192.168.1.71', NULL, '2026-06-11 07:14:15'),
(417, 1, 'update_product', 'products', 112, '192.168.1.71', NULL, '2026-06-11 07:16:08'),
(418, 1, 'update_product', 'products', 112, '192.168.1.71', NULL, '2026-06-11 07:16:23'),
(419, 1, 'update_product', 'products', 104, '192.168.1.71', NULL, '2026-06-11 07:17:29'),
(420, 1, 'save_product_recipe', 'products', 109, '192.168.1.71', NULL, '2026-06-11 07:17:48'),
(421, 1, 'save_product_recipe', 'products', 110, '192.168.1.71', NULL, '2026-06-11 07:17:56'),
(422, 1, 'admin_set_current_stock', 'products', 127, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":24,\"difference\":24,\"notes\":\"\"}', '2026-06-11 07:22:19'),
(423, 1, 'admin_set_current_stock', 'products', 84, '192.168.1.71', '{\"old_quantity\":20,\"new_quantity\":24,\"difference\":4,\"notes\":\"\"}', '2026-06-11 07:23:23'),
(424, 1, 'admin_set_current_stock', 'products', 96, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":24,\"difference\":24,\"notes\":\"\"}', '2026-06-11 07:24:36'),
(425, 1, 'admin_set_current_stock', 'products', 95, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":13,\"difference\":13,\"notes\":\"\"}', '2026-06-11 07:26:09'),
(426, 1, 'admin_set_current_stock', 'products', 122, '192.168.1.71', '{\"old_quantity\":2,\"new_quantity\":0,\"difference\":-2,\"notes\":\"\"}', '2026-06-11 07:26:38'),
(427, 1, 'admin_set_current_stock', 'products', 85, '192.168.1.71', '{\"old_quantity\":30,\"new_quantity\":14,\"difference\":-16,\"notes\":\"\"}', '2026-06-11 07:27:08'),
(428, 1, 'admin_set_current_stock', 'products', 103, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":25,\"difference\":25,\"notes\":\"\"}', '2026-06-11 07:28:43'),
(429, 1, 'admin_set_current_stock', 'products', 87, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":32,\"difference\":32,\"notes\":\"\"}', '2026-06-11 07:31:37'),
(430, 1, 'admin_set_current_stock', 'products', 47, '192.168.1.71', '{\"old_quantity\":3,\"new_quantity\":5,\"difference\":2,\"notes\":\"\"}', '2026-06-11 07:33:13');
INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `entity_type`, `entity_id`, `ip_address`, `metadata`, `created_at`) VALUES
(431, 1, 'update_product', 'products', 47, '192.168.1.71', NULL, '2026-06-11 07:34:59'),
(432, 1, 'update_product', 'products', 47, '192.168.1.71', NULL, '2026-06-11 07:37:34'),
(433, 1, 'admin_set_current_stock', 'products', 47, '192.168.1.71', '{\"old_quantity\":5,\"new_quantity\":10,\"difference\":5,\"notes\":\"\"}', '2026-06-11 07:38:07'),
(434, 1, 'admin_set_current_stock', 'products', 135, '192.168.1.71', '{\"old_quantity\":0,\"new_quantity\":13,\"difference\":13,\"notes\":\"\"}', '2026-06-11 07:39:50'),
(435, 1, 'save_product_recipe', 'products', 56, '192.168.1.71', NULL, '2026-06-11 07:42:01'),
(436, 1, 'update_product', 'products', 136, '192.168.1.71', NULL, '2026-06-11 07:53:42'),
(437, 6, 'login', 'users', 6, '192.168.1.236', NULL, '2026-06-11 08:06:52'),
(438, 6, 'create_order', 'orders', 9, '192.168.1.236', '{\"status\":\"pending\"}', '2026-06-11 08:09:43'),
(439, 6, 'create_order', 'orders', 10, '192.168.1.236', '{\"status\":\"authorized\"}', '2026-06-11 08:10:22'),
(440, 6, 'create_order', 'orders', 11, '192.168.1.236', '{\"status\":\"pending\"}', '2026-06-11 08:15:28'),
(441, 6, 'authorize_order', 'orders', 9, '192.168.1.236', '{\"decision\":\"authorized\",\"bulk\":true}', '2026-06-11 08:23:08'),
(442, 6, 'authorize_order', 'orders', 11, '192.168.1.236', '{\"decision\":\"authorized\",\"bulk\":true}', '2026-06-11 08:23:08'),
(443, 6, 'bulk_authorize_orders', 'orders', NULL, '192.168.1.236', '{\"decision\":\"approve\",\"processed\":2,\"stock_failed\":1,\"requested\":3}', '2026-06-11 08:23:08'),
(444, 6, 'authorize_order', 'orders', 3, '192.168.1.236', '{\"decision\":\"rejected\",\"bulk\":true}', '2026-06-11 08:23:39'),
(445, 6, 'bulk_authorize_orders', 'orders', NULL, '192.168.1.236', '{\"decision\":\"reject\",\"processed\":1,\"stock_failed\":0,\"requested\":1}', '2026-06-11 08:23:39'),
(446, 6, 'logout', 'users', 6, '192.168.1.236', NULL, '2026-06-11 08:24:42'),
(447, 6, 'login', 'users', 6, '192.168.1.236', NULL, '2026-06-11 08:24:53'),
(448, 6, 'logout', 'users', 6, '192.168.1.236', NULL, '2026-06-11 08:24:58'),
(449, 1, 'login', 'users', 1, '192.168.1.236', NULL, '2026-06-11 08:25:08'),
(450, 1, 'create_user', 'users', 8, '192.168.1.236', NULL, '2026-06-11 08:26:29'),
(451, 1, 'logout', 'users', 1, '192.168.1.236', NULL, '2026-06-11 08:26:31'),
(452, 8, 'login', 'users', 8, '192.168.1.236', NULL, '2026-06-11 08:26:50'),
(453, 8, 'logout', 'users', 8, '192.168.1.236', NULL, '2026-06-11 08:26:56'),
(454, 1, 'login', 'users', 1, '192.168.1.236', NULL, '2026-06-11 08:27:27'),
(455, 1, 'create_user', 'users', 9, '192.168.1.236', NULL, '2026-06-11 08:28:05'),
(456, 1, 'create_user', 'users', 10, '192.168.1.236', NULL, '2026-06-11 08:28:30'),
(457, 1, 'logout', 'users', 1, '192.168.1.236', NULL, '2026-06-11 08:28:35'),
(458, 10, 'login', 'users', 10, '192.168.1.236', NULL, '2026-06-11 08:28:45'),
(459, 10, 'create_order', 'orders', 12, '192.168.1.236', '{\"status\":\"pending\"}', '2026-06-11 08:30:23'),
(460, 10, 'logout', 'users', 10, '192.168.1.236', NULL, '2026-06-11 08:30:51'),
(461, 6, 'login', 'users', 6, '192.168.1.236', NULL, '2026-06-11 08:30:55'),
(462, 6, 'logout', 'users', 6, '192.168.1.236', NULL, '2026-06-11 08:31:05'),
(463, 10, 'login', 'users', 10, '192.168.1.236', NULL, '2026-06-11 08:31:16'),
(464, 10, 'logout', 'users', 10, '192.168.1.236', NULL, '2026-06-11 08:32:26'),
(465, 8, 'login', 'users', 8, '192.168.1.236', NULL, '2026-06-11 08:32:35'),
(466, 8, 'logout', 'users', 8, '192.168.1.236', NULL, '2026-06-11 08:32:36'),
(467, 9, 'login', 'users', 9, '192.168.1.236', NULL, '2026-06-11 08:33:13'),
(468, 1, 'login', 'users', 1, '192.168.1.129', NULL, '2026-06-11 08:34:34'),
(469, 1, 'create_user', 'users', 11, '192.168.1.129', NULL, '2026-06-11 08:35:04'),
(470, 9, 'logout', 'users', 9, '192.168.1.236', NULL, '2026-06-11 08:35:30'),
(471, 1, 'create_user', 'users', 12, '192.168.1.129', NULL, '2026-06-11 08:35:38'),
(472, 1, 'logout', 'users', 1, '192.168.1.129', NULL, '2026-06-11 08:35:41'),
(473, 11, 'login', 'users', 11, '192.168.1.129', NULL, '2026-06-11 08:35:50'),
(474, 11, 'logout', 'users', 11, '192.168.1.129', NULL, '2026-06-11 08:36:29'),
(475, 1, 'login', 'users', 1, '192.168.1.129', NULL, '2026-06-11 08:36:53'),
(476, 1, 'logout', 'users', 1, '192.168.1.129', NULL, '2026-06-11 08:37:03'),
(477, 12, 'login', 'users', 12, '192.168.1.129', NULL, '2026-06-11 08:38:26'),
(478, 12, 'authorize_order', 'orders', 12, '192.168.1.129', '{\"decision\":\"authorized\",\"bulk\":true}', '2026-06-11 08:38:54'),
(479, 12, 'bulk_authorize_orders', 'orders', NULL, '192.168.1.129', '{\"decision\":\"approve\",\"processed\":1,\"stock_failed\":0,\"requested\":1}', '2026-06-11 08:38:54'),
(480, 6, 'login', 'users', 6, '192.168.1.236', NULL, '2026-06-11 08:46:46'),
(481, 6, 'create_order', 'orders', 13, '192.168.1.236', '{\"status\":\"authorized\"}', '2026-06-11 08:48:24'),
(482, 6, 'logout', 'users', 6, '192.168.1.236', NULL, '2026-06-11 08:48:53'),
(483, 10, 'login', 'users', 10, '192.168.1.236', NULL, '2026-06-11 08:52:17'),
(484, 10, 'logout', 'users', 10, '192.168.1.236', NULL, '2026-06-11 08:52:33'),
(485, 10, 'login', 'users', 10, '192.168.1.236', NULL, '2026-06-11 08:52:51'),
(486, 10, 'create_order', 'orders', 14, '192.168.1.236', '{\"status\":\"pending\"}', '2026-06-11 08:56:44'),
(487, 10, 'create_order', 'orders', 15, '192.168.1.236', '{\"status\":\"pending\"}', '2026-06-11 08:58:54'),
(488, 10, 'logout', 'users', 10, '192.168.1.236', NULL, '2026-06-11 08:59:05'),
(489, 9, 'login', 'users', 9, '192.168.1.236', NULL, '2026-06-11 09:08:50'),
(490, 9, 'logout', 'users', 9, '192.168.1.236', NULL, '2026-06-11 09:08:55'),
(491, 9, 'login', 'users', 9, '192.168.1.236', NULL, '2026-06-11 09:09:06'),
(492, 9, 'create_order', 'orders', 16, '192.168.1.236', '{\"status\":\"pending\"}', '2026-06-11 09:11:51'),
(493, 9, 'create_order', 'orders', 17, '192.168.1.236', '{\"status\":\"pending\"}', '2026-06-11 09:13:24'),
(494, 9, 'create_order', 'orders', 18, '192.168.1.236', '{\"status\":\"pending\"}', '2026-06-11 09:16:17'),
(495, 9, 'logout', 'users', 9, '192.168.1.236', NULL, '2026-06-11 09:16:59'),
(496, 9, 'login', 'users', 9, '192.168.1.236', NULL, '2026-06-11 09:17:03'),
(497, 1, 'update_product', 'products', 122, '192.168.1.71', NULL, '2026-06-11 09:17:39'),
(498, 9, 'logout', 'users', 9, '192.168.1.236', NULL, '2026-06-11 09:17:51'),
(499, 8, 'login', 'users', 8, '192.168.1.236', NULL, '2026-06-11 09:17:57'),
(500, 1, 'update_product', 'products', 123, '192.168.1.71', NULL, '2026-06-11 09:17:58'),
(501, 8, 'logout', 'users', 8, '192.168.1.236', NULL, '2026-06-11 09:18:16'),
(502, 6, 'login', 'users', 6, '192.168.1.236', NULL, '2026-06-11 09:18:19'),
(503, 6, 'failed_bulk_order_authorization_pin', 'orders', NULL, '192.168.1.236', NULL, '2026-06-11 09:19:03'),
(504, 1, 'update_product', 'products', 137, '192.168.1.71', NULL, '2026-06-11 09:19:11'),
(505, 6, 'failed_bulk_order_authorization_pin', 'orders', NULL, '192.168.1.236', NULL, '2026-06-11 09:19:49'),
(506, 6, 'failed_bulk_order_authorization_pin', 'orders', NULL, '192.168.1.236', NULL, '2026-06-11 09:19:59'),
(507, 6, 'logout', 'users', 6, '192.168.1.236', NULL, '2026-06-11 09:20:30'),
(508, 1, 'update_product', 'products', 137, '192.168.1.71', NULL, '2026-06-11 09:20:34'),
(509, 1, 'login', 'users', 1, '192.168.1.236', NULL, '2026-06-11 09:20:40'),
(510, 1, 'failed_bulk_order_authorization_pin', 'orders', NULL, '192.168.1.236', NULL, '2026-06-11 09:20:50'),
(511, 1, 'logout', 'users', 1, '192.168.1.236', NULL, '2026-06-11 09:20:53'),
(512, 1, 'login', 'users', 1, '192.168.1.236', NULL, '2026-06-11 09:21:08'),
(513, 1, 'authorize_order', 'orders', 16, '192.168.1.236', '{\"decision\":\"rejected\",\"bulk\":true}', '2026-06-11 09:21:16'),
(514, 1, 'bulk_authorize_orders', 'orders', NULL, '192.168.1.236', '{\"decision\":\"reject\",\"processed\":1,\"stock_failed\":0,\"requested\":1}', '2026-06-11 09:21:16'),
(515, 1, 'logout', 'users', 1, '192.168.1.236', NULL, '2026-06-11 09:22:22'),
(516, 10, 'login', 'users', 10, '192.168.1.236', NULL, '2026-06-11 09:25:24'),
(517, 1, 'update_product', 'products', 92, '192.168.1.71', NULL, '2026-06-11 09:26:20'),
(518, 10, 'create_order', 'orders', 19, '192.168.1.236', '{\"status\":\"pending\"}', '2026-06-11 09:27:28'),
(519, 10, 'logout', 'users', 10, '192.168.1.236', NULL, '2026-06-11 09:27:37'),
(520, 1, 'create_production_batch', 'production_batches', 6, '192.168.1.71', '{\"raw_quantity\":1,\"outputs\":{\"92\":\"5\"}}', '2026-06-11 09:27:53'),
(521, 1, 'login', 'users', 1, '::1', NULL, '2026-06-11 09:29:47'),
(522, 1, 'login', 'users', 1, '::1', NULL, '2026-06-11 09:34:40');

-- --------------------------------------------------------

--
-- Table structure for table `authorizations`
--

CREATE TABLE `authorizations` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `decision` enum('authorized','rejected') NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authorizations`
--

INSERT INTO `authorizations` (`id`, `order_id`, `manager_id`, `decision`, `notes`, `created_at`) VALUES
(1, 1, 6, 'authorized', 'Bulk authorization', '2026-06-08 11:58:09'),
(2, 2, 1, 'authorized', 'Bulk authorization', '2026-06-08 13:58:38'),
(3, 4, 1, 'authorized', 'Bulk authorization', '2026-06-08 16:24:13'),
(4, 5, 6, 'authorized', 'Bulk authorization', '2026-06-09 07:03:46'),
(5, 8, 1, 'authorized', 'Bulk authorization', '2026-06-10 11:42:38'),
(7, 9, 6, 'authorized', 'Bulk authorization', '2026-06-11 08:23:08'),
(8, 11, 6, 'authorized', 'Bulk authorization', '2026-06-11 08:23:08'),
(9, 3, 6, 'rejected', 'Bulk authorization', '2026-06-11 08:23:39'),
(10, 12, 12, 'authorized', 'Bulk authorization', '2026-06-11 08:38:54'),
(11, 16, 1, 'rejected', 'Bulk authorization', '2026-06-11 09:21:16');

-- --------------------------------------------------------

--
-- Table structure for table `bingo_sessions`
--

CREATE TABLE `bingo_sessions` (
  `id` int(11) NOT NULL,
  `session_time` varchar(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bingo_sessions`
--

INSERT INTO `bingo_sessions` (`id`, `session_time`, `is_active`) VALUES
(1, '13:00', 1),
(2, '16:00', 1),
(3, '19:00', 1),
(4, '22:00', 1),
(5, '01:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `department` enum('bar','kitchen') NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `department`, `is_active`) VALUES
(1, 'PERISHABLE', 'kitchen', 1);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `slug`) VALUES
(1, 'Bar', 'bar'),
(2, 'Kitchen', 'kitchen');

-- --------------------------------------------------------

--
-- Table structure for table `gaming_tables`
--

CREATE TABLE `gaming_tables` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `area` enum('main_pit','prive') NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gaming_tables`
--

INSERT INTO `gaming_tables` (`id`, `name`, `area`, `is_active`) VALUES
(1, 'Rummy', 'main_pit', 1),
(2, 'Easy Poker', 'main_pit', 1),
(3, 'IOS', 'main_pit', 1),
(4, 'R1', 'main_pit', 1),
(5, 'Black Jack', 'main_pit', 1),
(6, 'Pontoon', 'main_pit', 1),
(7, 'R3', 'main_pit', 1),
(8, 'R2', 'main_pit', 1),
(9, 'LPK 1', 'main_pit', 1),
(10, 'LPK 2', 'main_pit', 1),
(11, 'Texas', 'main_pit', 1),
(12, 'Baccarat', 'prive', 1),
(13, 'R5', 'prive', 1),
(14, 'Easy Poker', 'prive', 1),
(15, 'R4', 'prive', 1);

-- --------------------------------------------------------

--
-- Table structure for table `inspectors`
--

CREATE TABLE `inspectors` (
  `id` int(11) NOT NULL,
  `full_name` varchar(120) NOT NULL,
  `agency` varchar(120) DEFAULT 'Government',
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inspectors`
--

INSERT INTO `inspectors` (`id`, `full_name`, `agency`, `is_active`) VALUES
(1, 'Sample', 'Government', 1),
(2, 'G I Eric', 'Government', 1),
(3, 'G I Mbugua', 'Government', 1),
(4, 'G I Caroline', 'Government', 1),
(5, 'G I Mary', 'Government', 1),
(6, 'G I Lawrence', 'Government', 1),
(7, 'G I Gladys', 'Government', 1),
(8, 'G I Pascal', 'Government', 1),
(9, 'G I Hudson', 'Government', 1),
(10, 'G I Alex', 'Government', 1),
(11, 'G I Benson', 'Government', 1),
(12, 'GI Yvonne', 'Government', 1),
(13, 'GI Laureen', 'Government', 1),
(14, 'GI Agustine', 'Government', 1),
(15, 'GI Brenda', 'Government', 1),
(16, 'GI Ibrahim', 'Government', 1),
(17, 'GI Mark', 'Government', 1),
(18, 'GI Otindo', 'Government', 1),
(19, 'GI Juddy', 'Government', 1),
(20, 'G I Catherine', 'Government', 1),
(21, 'GI KEN', 'Government', 1),
(22, 'GI Wachira', 'Government', 1),
(23, 'Shabaan Juma', 'Government', 1),
(24, 'Samuel Waweru', 'Government', 1),
(25, 'Robert Terer', 'Government', 1),
(26, 'Japhet Mbaya', 'Government', 1),
(27, 'Simon Kinoti', 'Government', 1),
(28, 'Sammy Masika', 'Government', 1),
(29, 'Omar Mohammed', 'Government', 1),
(30, 'Sospeter Kutol', 'Government', 1),
(31, 'Nazario Nyaga', 'Government', 1),
(32, 'Kenedy Kirui', 'Government', 1),
(33, 'Derick Motari', 'Government', 1),
(34, 'Alex Masha', 'Government', 1),
(35, 'Ramadhan Sante', 'Government', 1),
(36, 'Moses Thuranira', 'Government', 1),
(37, 'Mulatya Kivindu', 'Government', 1),
(38, 'Bendatter Mbuthi', 'Government', 1),
(39, 'Hassan Muhamud', 'Government', 1),
(40, 'Nick Kyalo', 'Government', 1),
(41, 'Steve Wangai', 'Government', 1),
(42, 'Daniel Karanja', 'Government', 1),
(43, 'Lameck Macharia', 'Government', 1),
(44, 'Moses Lempskichoi', 'Government', 1),
(45, 'Stephen Kairo', 'Government', 1),
(46, 'Armstrong Odinga', 'Government', 1),
(47, 'Jackson Ndegwa', 'Government', 1),
(48, 'Rose Njeri', 'Government', 1),
(49, 'Alex Macharia', 'Government', 1),
(50, 'James Kirinya', 'Government', 1),
(51, 'Eporon Jairus', 'Government', 1),
(52, 'Ali Swaleh', 'Government', 1),
(53, 'Suleiman Hamisi', 'Government', 1),
(54, 'Paul Chege', 'Government', 1),
(55, 'Ali Halkano', 'Government', 1),
(56, 'Emmanuel Ndirangu', 'Government', 1),
(57, 'Charles Muhia', 'Government', 1),
(58, 'Stephen Wangai', 'Government', 1),
(59, 'Stephen Wangai', 'Government', 1),
(60, 'Samuel Otieno', 'Government', 1),
(61, 'Kpkemoi Mutai', 'Government', 1),
(62, 'Kepkemoi Mutai', 'Government', 1),
(63, 'Bonface Muniu', 'Government', 1),
(64, 'Daniel Karanja', 'Government', 1),
(65, 'Willis Awuor', 'Government', 1),
(66, 'Robert Terer', 'Government', 1),
(67, 'Nicholas Kivindu', 'Government', 1),
(68, 'Suleman Hamisi', 'Government', 1),
(69, 'Jonnah Mutwiri', 'Government', 1),
(70, 'Susan Lemedero', 'Government', 1),
(71, 'Macharia Alexander', 'Government', 1),
(72, 'Florence Alunga', 'Government', 1),
(73, 'Halkano Ali', 'Government', 1),
(74, 'Alex Masha', 'Government', 1),
(75, 'Benard Koome', 'Government', 1),
(76, 'Gilbert Kibet', 'Government', 1),
(77, 'Jairus Eporon', 'Government', 1),
(78, 'Alexander Macharia', 'Government', 1),
(79, 'Geoffrey Mutai', 'Government', 1),
(80, 'Benard Koome', 'Government', 1),
(81, 'Kennedy Kirui', 'Government', 1),
(82, 'Nazario Mureithi', 'Government', 1),
(83, 'Kipkemoi Mutai', 'Government', 1),
(84, 'Swaleh Ali', 'Government', 1),
(85, 'Bernard Ambaisi', 'Government', 1),
(86, 'Peterson Muthui', 'Government', 1),
(87, 'Samuel Ocholla', 'Government', 1),
(88, 'Samuel Ondari', 'Government', 1),
(89, 'Amstrong Odinga', 'Government', 1),
(90, 'Edwin Wambulwa', 'Government', 1),
(91, 'Mnangat Limangole', 'Government', 1);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` decimal(14,3) NOT NULL DEFAULT 0.000,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `product_id`, `quantity`, `updated_at`) VALUES
(1, 1, 0.000, NULL),
(2, 2, 1871.000, '2026-06-11 08:48:24'),
(3, 3, 40.000, '2026-06-11 06:24:57'),
(4, 4, 16.000, '2026-06-11 06:26:27'),
(5, 5, 20.000, '2026-06-11 06:26:10'),
(6, 6, 0.000, NULL),
(7, 7, 4.000, '2026-06-11 06:27:09'),
(8, 8, 25.000, '2026-06-07 14:54:01'),
(9, 9, 0.000, NULL),
(10, 10, 21.000, '2026-06-11 08:48:24'),
(11, 11, 8.000, '2026-06-11 06:25:36'),
(12, 12, 0.000, '2026-06-11 06:11:54'),
(13, 13, 0.000, NULL),
(14, 14, 5.000, '2026-06-11 08:23:08'),
(15, 15, 0.000, NULL),
(16, 16, 0.000, '2026-06-11 06:18:12'),
(17, 17, 0.000, NULL),
(18, 18, 13.000, '2026-06-11 06:21:33'),
(19, 19, 30.000, '2026-06-11 06:22:02'),
(20, 20, 0.000, NULL),
(21, 21, 0.000, NULL),
(22, 22, 0.000, NULL),
(23, 23, 43.000, '2026-06-11 06:16:58'),
(24, 24, 0.000, NULL),
(25, 25, 27.000, '2026-06-11 06:14:16'),
(26, 26, 18.000, '2026-06-11 06:13:00'),
(27, 27, 0.000, NULL),
(28, 28, 15.000, '2026-06-11 06:12:46'),
(29, 29, 0.000, '2026-06-11 06:16:13'),
(30, 30, 12.000, '2026-06-09 06:52:17'),
(31, 31, 7.000, '2026-06-08 10:06:48'),
(32, 32, 8.000, '2026-06-09 06:52:26'),
(33, 33, 27.000, '2026-06-11 06:17:17'),
(34, 34, 13.000, '2026-06-11 06:30:40'),
(35, 35, 16.000, '2026-06-08 10:03:59'),
(36, 36, 0.000, NULL),
(37, 37, 0.000, NULL),
(38, 38, 8.000, '2026-06-11 06:32:21'),
(39, 39, 1.000, '2026-06-11 06:31:56'),
(40, 40, 0.000, NULL),
(41, 41, 6.000, '2026-06-11 06:29:54'),
(42, 42, 4.000, '2026-06-11 06:29:18'),
(43, 43, 8.000, '2026-06-11 06:28:15'),
(44, 45, 8.000, '2026-06-08 09:59:17'),
(45, 46, 8.000, '2026-06-11 06:24:00'),
(46, 47, 10.000, '2026-06-11 07:38:07'),
(49, 50, 0.000, '2026-06-09 08:04:34'),
(50, 51, 10.000, '2026-06-09 08:04:34'),
(51, 52, 3.000, '2026-06-09 08:04:34'),
(52, 53, 0.000, NULL),
(53, 56, 16.000, '2026-06-09 09:01:45'),
(54, 57, 16.000, '2026-06-11 06:28:39'),
(55, 58, 0.000, NULL),
(56, 59, 16.000, '2026-06-11 06:33:00'),
(57, 60, 0.000, NULL),
(58, 61, 0.000, NULL),
(59, 62, 0.000, NULL),
(60, 63, 0.000, NULL),
(61, 64, 0.000, NULL),
(62, 65, 18.000, '2026-06-11 06:14:01'),
(63, 66, 27.000, '2026-06-11 06:16:04'),
(64, 67, 43.000, '2026-06-11 06:16:40'),
(65, 68, 36.000, '2026-06-11 06:26:46'),
(66, 69, 0.000, NULL),
(67, 70, 0.000, NULL),
(68, 71, 0.000, NULL),
(69, 72, 0.000, '2026-06-11 06:12:41'),
(70, 73, 40.000, '2026-06-11 06:25:05'),
(71, 74, 8.000, '2026-06-11 06:25:51'),
(72, 75, 4.000, '2026-06-11 06:27:30'),
(73, 76, 0.000, NULL),
(74, 77, 0.000, NULL),
(75, 78, 0.000, NULL),
(76, 79, 0.000, NULL),
(77, 80, 13.000, '2026-06-11 06:19:05'),
(78, 81, 0.000, NULL),
(79, 82, 0.000, NULL),
(80, 83, 0.000, NULL),
(81, 84, 24.000, '2026-06-11 07:23:23'),
(82, 85, 14.000, '2026-06-11 07:27:08'),
(83, 86, 0.000, NULL),
(84, 87, 32.000, '2026-06-11 07:31:37'),
(85, 88, 0.000, NULL),
(86, 89, 0.000, NULL),
(87, 90, 0.000, NULL),
(88, 91, 0.000, NULL),
(89, 92, 5.000, '2026-06-11 09:27:53'),
(90, 93, 0.000, NULL),
(91, 94, 0.000, NULL),
(92, 95, 13.000, '2026-06-11 07:26:09'),
(93, 96, 24.000, '2026-06-11 07:24:36'),
(94, 97, 0.000, NULL),
(95, 98, 0.000, NULL),
(96, 99, 0.000, NULL),
(97, 100, 0.000, NULL),
(98, 101, 0.000, NULL),
(99, 102, 0.000, NULL),
(100, 103, 25.000, '2026-06-11 07:28:43'),
(101, 104, 0.000, NULL),
(102, 105, 0.000, NULL),
(103, 106, 0.000, NULL),
(104, 107, 0.000, NULL),
(105, 108, 0.000, NULL),
(106, 109, 0.000, NULL),
(107, 110, 0.000, NULL),
(108, 111, 0.000, NULL),
(109, 112, 0.000, NULL),
(110, 113, 0.000, NULL),
(111, 114, 0.000, NULL),
(112, 115, 12.000, NULL),
(113, 116, 4.000, '2026-06-10 11:08:02'),
(114, 117, 0.000, NULL),
(115, 118, 28.000, '2026-06-10 11:42:38'),
(116, 119, 0.000, NULL),
(117, 120, 0.000, NULL),
(118, 121, 2.000, '2026-06-10 13:48:32'),
(119, 122, 0.000, '2026-06-11 07:26:38'),
(120, 123, 0.000, NULL),
(121, 124, 0.000, NULL),
(122, 125, 0.000, NULL),
(123, 126, 0.000, NULL),
(124, 127, 24.000, '2026-06-11 07:22:19'),
(125, 128, 0.000, NULL),
(126, 129, 0.000, NULL),
(127, 130, 0.000, NULL),
(128, 131, 0.000, NULL),
(129, 132, 0.000, NULL),
(130, 133, 0.000, NULL),
(131, 134, 8.000, '2026-06-10 14:18:33'),
(132, 135, 12.000, '2026-06-11 09:27:53'),
(133, 136, 0.000, NULL),
(134, 137, 0.000, NULL),
(135, 138, 0.000, NULL),
(136, 139, 0.000, NULL),
(137, 140, 43.000, '2026-06-11 06:39:40');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_transactions`
--

CREATE TABLE `inventory_transactions` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `type` enum('stock_in','stock_out','adjustment') NOT NULL,
  `quantity` decimal(14,3) NOT NULL,
  `reference_type` varchar(60) DEFAULT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory_transactions`
--

INSERT INTO `inventory_transactions` (`id`, `product_id`, `type`, `quantity`, `reference_type`, `reference_id`, `supplier_id`, `created_by`, `notes`, `created_at`) VALUES
(1, 25, 'adjustment', 37.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 37', '2026-06-08 09:58:37'),
(2, 30, 'adjustment', 27.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 27', '2026-06-08 09:59:02'),
(3, 32, 'adjustment', 19.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 19', '2026-06-08 09:59:08'),
(4, 45, 'adjustment', 8.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 8', '2026-06-08 09:59:17'),
(5, 28, 'adjustment', 19.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 19', '2026-06-08 09:59:29'),
(6, 26, 'adjustment', 5.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 5', '2026-06-08 09:59:40'),
(7, 29, 'adjustment', 11.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 11', '2026-06-08 10:00:56'),
(8, 23, 'adjustment', 42.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 42', '2026-06-08 10:01:24'),
(9, 33, 'adjustment', 17.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 17', '2026-06-08 10:01:46'),
(10, 14, 'adjustment', 38.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 38', '2026-06-08 10:02:03'),
(11, 16, 'adjustment', 33.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 33', '2026-06-08 10:02:12'),
(12, 18, 'adjustment', 18.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 18', '2026-06-08 10:02:26'),
(13, 19, 'adjustment', 8.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 8', '2026-06-08 10:02:43'),
(14, 10, 'adjustment', 4.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 4', '2026-06-08 10:03:19'),
(15, 3, 'adjustment', 18.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 18', '2026-06-08 10:03:47'),
(16, 35, 'adjustment', 16.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 16', '2026-06-08 10:03:59'),
(17, 11, 'adjustment', 13.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 13', '2026-06-08 10:04:20'),
(18, 5, 'adjustment', 30.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 30', '2026-06-08 10:04:38'),
(19, 7, 'adjustment', 10.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 10', '2026-06-08 10:04:52'),
(20, 41, 'adjustment', 25.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 25', '2026-06-08 10:05:38'),
(21, 42, 'adjustment', 7.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 7', '2026-06-08 10:05:52'),
(22, 34, 'adjustment', 16.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 16', '2026-06-08 10:06:07'),
(23, 38, 'adjustment', 19.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 19', '2026-06-08 10:06:21'),
(24, 31, 'adjustment', 7.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 7', '2026-06-08 10:06:48'),
(25, 2, 'adjustment', 1875.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 1875', '2026-06-08 10:11:16'),
(26, 43, 'adjustment', 16.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 16', '2026-06-08 10:14:51'),
(27, 30, 'adjustment', 2.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 27 to 29', '2026-06-08 10:29:02'),
(28, 43, 'stock_out', -1.000, 'order', 1, NULL, 6, 'Order authorization deduction in selling units', '2026-06-08 11:58:09'),
(29, 46, 'stock_in', 8.000, 'store_system_issue', 8364, NULL, 1, 'Synced from Store Management requisition REQ-3267', '2026-06-08 12:36:43'),
(30, 2, 'stock_in', 3750.000, 'store_system_issue', 8289, NULL, 1, 'Synced from Store Management requisition REQ-3237', '2026-06-08 12:37:46'),
(31, 12, 'stock_in', 66.000, 'store_system_issue', 8350, NULL, 1, 'Synced from Store Management requisition REQ-3262', '2026-06-08 12:38:17'),
(32, 19, 'stock_in', 33.000, 'store_system_issue', 8351, NULL, 1, 'Synced from Store Management requisition REQ-3262', '2026-06-08 12:38:17'),
(33, 29, 'stock_in', 33.000, 'store_system_issue', 8352, NULL, 1, 'Synced from Store Management requisition REQ-3262', '2026-06-08 12:38:17'),
(34, 43, 'stock_in', 20.000, 'store_system_issue', 8354, NULL, 1, 'Synced from Store Management requisition REQ-3262', '2026-06-08 12:38:17'),
(35, 38, 'stock_in', 20.000, 'store_system_issue', 8355, NULL, 1, 'Synced from Store Management requisition REQ-3262', '2026-06-08 12:38:17'),
(36, 33, 'stock_in', 25.000, 'store_system_issue', 8310, NULL, 1, 'Synced from Store Management requisition REQ-3248', '2026-06-08 12:39:13'),
(37, 12, 'stock_in', 132.000, 'store_system_issue', 8311, NULL, 1, 'Synced from Store Management requisition REQ-3248', '2026-06-08 12:39:13'),
(38, 14, 'stock_in', 33.000, 'store_system_issue', 8312, NULL, 1, 'Synced from Store Management requisition REQ-3248', '2026-06-08 12:39:13'),
(39, 16, 'stock_in', 33.000, 'store_system_issue', 8313, NULL, 1, 'Synced from Store Management requisition REQ-3248', '2026-06-08 12:39:13'),
(40, 29, 'stock_in', 33.000, 'store_system_issue', 8314, NULL, 1, 'Synced from Store Management requisition REQ-3248', '2026-06-08 12:39:13'),
(41, 30, 'stock_in', 33.000, 'store_system_issue', 8315, NULL, 1, 'Synced from Store Management requisition REQ-3248', '2026-06-08 12:39:13'),
(42, 43, 'stock_in', 50.000, 'store_system_issue', 8316, NULL, 1, 'Synced from Store Management requisition REQ-3248', '2026-06-08 12:39:13'),
(43, 41, 'stock_in', 25.000, 'store_system_issue', 8317, NULL, 1, 'Synced from Store Management requisition REQ-3248', '2026-06-08 12:39:13'),
(44, 38, 'stock_in', 100.000, 'store_system_issue', 8318, NULL, 1, 'Synced from Store Management requisition REQ-3248', '2026-06-08 12:39:13'),
(45, 2, 'stock_in', 1875.000, 'store_system_issue', 8334, NULL, 1, 'Synced from Store Management requisition REQ-3254', '2026-06-08 12:40:44'),
(46, 10, 'stock_in', 24.000, 'store_system_issue', 8349, NULL, 1, 'Synced from Store Management requisition REQ-3261', '2026-06-08 12:42:08'),
(47, 26, 'stock_in', 48.000, 'store_system_issue', 8343, NULL, 1, 'Synced from Store Management requisition REQ-3260', '2026-06-08 12:42:13'),
(48, 25, 'stock_in', 8.000, 'store_system_issue', 8344, NULL, 1, 'Synced from Store Management requisition REQ-3260', '2026-06-08 12:42:14'),
(49, 23, 'stock_in', 24.000, 'store_system_issue', 8345, NULL, 1, 'Synced from Store Management requisition REQ-3260', '2026-06-08 12:42:14'),
(50, 5, 'stock_in', 25.000, 'store_system_issue', 8346, NULL, 1, 'Synced from Store Management requisition REQ-3260', '2026-06-08 12:42:14'),
(51, 10, 'stock_in', 48.000, 'store_system_issue', 8348, NULL, 1, 'Synced from Store Management requisition REQ-3260', '2026-06-08 12:42:14'),
(52, 26, 'stock_in', 40.000, 'store_system_issue', 8363, NULL, 1, 'Synced from Store Management requisition REQ-3266', '2026-06-08 12:43:14'),
(53, 46, 'stock_in', 12.000, 'store_system_issue', 8340, NULL, 1, 'Synced from Store Management requisition REQ-3257', '2026-06-08 12:43:32'),
(54, 2, 'adjustment', -6875.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 7500 to 625', '2026-06-08 13:16:51'),
(55, 46, 'adjustment', -20.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 20 to 0', '2026-06-08 13:17:36'),
(56, 38, 'adjustment', -101.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 139 to 38', '2026-06-08 13:20:11'),
(57, 43, 'adjustment', -53.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 85 to 32', '2026-06-08 13:23:08'),
(58, 43, 'adjustment', 20.000, 'admin_stock_edit', NULL, NULL, 1, 'Entry Error', '2026-06-08 13:32:10'),
(59, 38, 'adjustment', 20.000, 'admin_stock_edit', NULL, NULL, 1, 'Entry Error', '2026-06-08 13:33:18'),
(60, 16, 'adjustment', -28.000, 'admin_stock_edit', NULL, NULL, 1, 'Entry Error', '2026-06-08 13:41:26'),
(61, 16, 'adjustment', -5.000, 'admin_stock_edit', NULL, NULL, 1, 'Entry Error', '2026-06-08 13:42:06'),
(62, 14, 'adjustment', -33.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 71 to 38', '2026-06-08 13:42:18'),
(63, 26, 'stock_out', -1.000, 'order', 2, NULL, 1, 'Order authorization deduction in selling units', '2026-06-08 13:58:38'),
(64, 23, 'stock_out', -1.000, 'order', 4, NULL, 1, 'Order authorization deduction in selling units', '2026-06-08 16:24:13'),
(65, 30, 'adjustment', -50.000, 'admin_stock_edit', NULL, NULL, 5, 'Current stock edited from 62 to 12', '2026-06-09 06:52:17'),
(66, 32, 'adjustment', -11.000, 'admin_stock_edit', NULL, NULL, 5, 'Current stock edited from 19 to 8', '2026-06-09 06:52:26'),
(67, 12, 'adjustment', -198.000, 'admin_stock_edit', NULL, NULL, 5, 'Current stock edited from 198 to 0', '2026-06-09 06:52:41'),
(68, 28, 'adjustment', -1.000, 'admin_stock_edit', NULL, NULL, 5, 'Current stock edited from 19 to 18', '2026-06-09 06:53:00'),
(69, 26, 'adjustment', -88.000, 'admin_stock_edit', NULL, NULL, 5, 'Current stock edited from 92 to 4', '2026-06-09 06:54:12'),
(70, 25, 'adjustment', -9.000, 'admin_stock_edit', NULL, NULL, 5, 'Current stock edited from 45 to 36', '2026-06-09 06:54:23'),
(71, 29, 'adjustment', -67.000, 'admin_stock_edit', NULL, NULL, 5, 'Current stock edited from 77 to 10', '2026-06-09 06:54:41'),
(72, 23, 'adjustment', -20.000, 'admin_stock_edit', NULL, NULL, 5, 'Current stock edited from 65 to 45', '2026-06-09 06:54:57'),
(73, 33, 'adjustment', -33.000, 'admin_stock_edit', NULL, NULL, 5, 'Current stock edited from 42 to 9', '2026-06-09 06:55:13'),
(74, 14, 'adjustment', -12.000, 'admin_stock_edit', NULL, NULL, 5, 'Current stock edited from 38 to 26', '2026-06-09 06:55:35'),
(75, 16, 'adjustment', -21.000, 'admin_stock_edit', NULL, NULL, 5, 'Current stock edited from 33 to 12', '2026-06-09 06:56:35'),
(76, 46, 'adjustment', 4.000, 'admin_stock_edit', NULL, NULL, 5, 'Current stock edited from 0 to 4', '2026-06-09 06:57:02'),
(77, 10, 'adjustment', -72.000, 'admin_stock_edit', NULL, NULL, 5, 'Current stock edited from 76 to 4', '2026-06-09 06:57:52'),
(78, 2, 'stock_out', -1.000, 'order', 5, NULL, 6, 'Order authorization deduction in selling units', '2026-06-09 07:03:46'),
(79, 47, 'adjustment', -18.000, 'admin_stock_edit', NULL, NULL, 5, 'Current stock edited from 36 to 18', '2026-06-09 07:29:01'),
(84, 47, 'stock_out', -10.000, 'production_batch', 2, NULL, 1, 'Raw stock used for preparation PREP-20260609-102830-91', '2026-06-09 08:28:31'),
(85, 56, 'stock_in', 3.000, 'production_batch', 2, NULL, 1, 'Prepared portions from PREP-20260609-102830-91', '2026-06-09 08:28:31'),
(86, 47, 'stock_out', -2.000, 'production_batch', 3, NULL, 1, 'Raw stock used for preparation PREP-20260609-105837-65', '2026-06-09 08:58:37'),
(87, 56, 'stock_in', 3.000, 'production_batch', 3, NULL, 1, 'Prepared portions from PREP-20260609-105837-65', '2026-06-09 08:58:37'),
(88, 47, 'stock_out', -3.000, 'production_batch', 4, NULL, 1, 'Raw stock used for preparation PREP-20260609-110144-25', '2026-06-09 09:01:45'),
(89, 56, 'stock_in', 10.000, 'production_batch', 4, NULL, 1, 'Prepared portions from PREP-20260609-110144-25', '2026-06-09 09:01:45'),
(90, 46, 'stock_in', 12.000, 'store_system_issue', 8395, NULL, 5, 'Synced from Store Management requisition REQ-3282', '2026-06-09 14:50:21'),
(91, 33, 'stock_in', 25.000, 'store_system_issue', 8390, NULL, 5, 'Synced from Store Management requisition REQ-3281', '2026-06-09 14:50:25'),
(92, 12, 'stock_in', 66.000, 'store_system_issue', 8391, NULL, 5, 'Synced from Store Management requisition REQ-3281', '2026-06-09 14:50:25'),
(93, 16, 'stock_in', 33.000, 'store_system_issue', 8392, NULL, 5, 'Synced from Store Management requisition REQ-3281', '2026-06-09 14:50:25'),
(94, 29, 'stock_in', 33.000, 'store_system_issue', 8393, NULL, 5, 'Synced from Store Management requisition REQ-3281', '2026-06-09 14:50:25'),
(95, 43, 'stock_in', 30.000, 'store_system_issue', 8394, NULL, 5, 'Synced from Store Management requisition REQ-3281', '2026-06-09 14:50:25'),
(96, 10, 'stock_in', 24.000, 'store_system_issue', 8389, NULL, 5, 'Synced from Store Management requisition REQ-3280', '2026-06-09 14:50:27'),
(97, 26, 'stock_in', 16.000, 'store_system_issue', 8383, NULL, 5, 'Synced from Store Management requisition REQ-3279', '2026-06-09 14:50:29'),
(98, 4, 'stock_in', 24.000, 'store_system_issue', 8384, NULL, 5, 'Synced from Store Management requisition REQ-3279', '2026-06-09 14:50:29'),
(99, 7, 'stock_in', 8.000, 'store_system_issue', 8386, NULL, 5, 'Synced from Store Management requisition REQ-3279', '2026-06-09 14:50:29'),
(100, 11, 'stock_in', 8.000, 'store_system_issue', 8387, NULL, 5, 'Synced from Store Management requisition REQ-3279', '2026-06-09 14:50:29'),
(101, 10, 'stock_in', 48.000, 'store_system_issue', 8388, NULL, 5, 'Synced from Store Management requisition REQ-3279', '2026-06-09 14:50:29'),
(102, 2, 'stock_in', 1875.000, 'store_system_issue', 8377, NULL, 5, 'Synced from Store Management requisition REQ-3274', '2026-06-09 14:50:36'),
(103, 103, 'adjustment', 10.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 10', '2026-06-10 07:02:50'),
(104, 103, 'stock_out', -10.000, 'production_batch', 5, NULL, 1, 'Raw stock used for preparation PREP-20260610-090414-43', '2026-06-10 07:04:14'),
(105, 84, 'stock_in', 20.000, 'production_batch', 5, NULL, 1, 'Prepared portions from PREP-20260610-090414-43', '2026-06-10 07:04:14'),
(106, 85, 'stock_in', 30.000, 'production_batch', 5, NULL, 1, 'Prepared portions from PREP-20260610-090414-43', '2026-06-10 07:04:14'),
(107, 116, 'adjustment', -16.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 20 to 4', '2026-06-10 11:08:02'),
(108, 118, 'adjustment', 30.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 30', '2026-06-10 11:36:35'),
(109, 118, 'stock_out', -2.000, 'order_recipe', 8, NULL, 1, 'Plain Omelette recipe consumption: 2 Piece Eggs', '2026-06-10 11:42:38'),
(110, 127, 'adjustment', 10.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 10', '2026-06-10 13:46:59'),
(111, 127, 'adjustment', -10.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 10 to 0', '2026-06-10 13:47:55'),
(112, 121, 'adjustment', 2.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 2', '2026-06-10 13:48:32'),
(113, 122, 'adjustment', 2.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 2', '2026-06-10 13:48:51'),
(114, 134, 'adjustment', 8.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 8', '2026-06-10 14:18:33'),
(115, 12, 'adjustment', -66.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 66 to 0', '2026-06-11 06:11:54'),
(116, 72, 'adjustment', 15.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 15', '2026-06-11 06:12:22'),
(117, 72, 'adjustment', -15.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 15 to 0', '2026-06-11 06:12:41'),
(118, 28, 'adjustment', -3.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 18 to 15', '2026-06-11 06:12:46'),
(119, 26, 'adjustment', -2.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 20 to 18', '2026-06-11 06:13:00'),
(120, 65, 'adjustment', 18.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 18', '2026-06-11 06:14:01'),
(121, 25, 'adjustment', -9.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 36 to 27', '2026-06-11 06:14:16'),
(122, 2, 'adjustment', -624.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 2499 to 1875', '2026-06-11 06:15:32'),
(123, 66, 'adjustment', 27.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 27', '2026-06-11 06:16:04'),
(124, 29, 'adjustment', -43.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 43 to 0', '2026-06-11 06:16:13'),
(125, 67, 'adjustment', 43.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 43', '2026-06-11 06:16:40'),
(126, 23, 'adjustment', -2.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 45 to 43', '2026-06-11 06:16:58'),
(127, 33, 'adjustment', -7.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 34 to 27', '2026-06-11 06:17:17'),
(128, 14, 'adjustment', -26.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 26 to 0', '2026-06-11 06:17:52'),
(129, 16, 'adjustment', -45.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 45 to 0', '2026-06-11 06:18:12'),
(130, 14, 'adjustment', 6.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 6', '2026-06-11 06:18:24'),
(131, 80, 'adjustment', 13.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 13', '2026-06-11 06:19:05'),
(132, 18, 'adjustment', -5.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 18 to 13', '2026-06-11 06:21:33'),
(133, 19, 'adjustment', -11.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 41 to 30', '2026-06-11 06:22:02'),
(134, 46, 'adjustment', -8.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 16 to 8', '2026-06-11 06:24:00'),
(135, 10, 'adjustment', -53.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 76 to 23', '2026-06-11 06:24:32'),
(136, 3, 'adjustment', 22.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 18 to 40', '2026-06-11 06:24:57'),
(137, 73, 'adjustment', 40.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 40', '2026-06-11 06:25:05'),
(138, 11, 'adjustment', -13.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 21 to 8', '2026-06-11 06:25:36'),
(139, 74, 'adjustment', 8.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 8', '2026-06-11 06:25:51'),
(140, 5, 'adjustment', -35.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 55 to 20', '2026-06-11 06:26:10'),
(141, 4, 'adjustment', -8.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 24 to 16', '2026-06-11 06:26:27'),
(142, 68, 'adjustment', 36.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 36', '2026-06-11 06:26:46'),
(143, 7, 'adjustment', -14.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 18 to 4', '2026-06-11 06:27:09'),
(144, 75, 'adjustment', 4.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 4', '2026-06-11 06:27:30'),
(145, 43, 'adjustment', -74.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 82 to 8', '2026-06-11 06:28:15'),
(146, 57, 'adjustment', 16.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 16', '2026-06-11 06:28:39'),
(147, 42, 'adjustment', -3.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 7 to 4', '2026-06-11 06:29:18'),
(148, 41, 'adjustment', -44.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 50 to 6', '2026-06-11 06:29:54'),
(149, 34, 'adjustment', -3.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 16 to 13', '2026-06-11 06:30:40'),
(150, 39, 'adjustment', 1.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 1', '2026-06-11 06:31:56'),
(151, 38, 'adjustment', -50.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 58 to 8', '2026-06-11 06:32:21'),
(152, 59, 'adjustment', 16.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 16', '2026-06-11 06:33:00'),
(153, 140, 'adjustment', 43.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 43', '2026-06-11 06:39:40'),
(154, 127, 'adjustment', 24.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 24', '2026-06-11 07:22:19'),
(155, 84, 'adjustment', 4.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 20 to 24', '2026-06-11 07:23:23'),
(156, 96, 'adjustment', 24.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 24', '2026-06-11 07:24:36'),
(157, 95, 'adjustment', 13.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 13', '2026-06-11 07:26:09'),
(158, 122, 'adjustment', -2.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 2 to 0', '2026-06-11 07:26:38'),
(159, 85, 'adjustment', -16.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 30 to 14', '2026-06-11 07:27:08'),
(160, 103, 'adjustment', 25.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 25', '2026-06-11 07:28:43'),
(161, 87, 'adjustment', 32.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 32', '2026-06-11 07:31:37'),
(162, 47, 'adjustment', 2.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 3 to 5', '2026-06-11 07:33:13'),
(163, 47, 'adjustment', 5.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 5 to 10', '2026-06-11 07:38:07'),
(164, 135, 'adjustment', 13.000, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 13', '2026-06-11 07:39:50'),
(165, 2, 'stock_out', -1.000, 'order_recipe', 10, NULL, 6, 'Cappuccino recipe consumption: 1 Cups Milk', '2026-06-11 08:10:22'),
(166, 2, 'stock_out', -1.000, 'order_recipe', 9, NULL, 6, 'Cappuccino recipe consumption: 1 Cups Milk', '2026-06-11 08:23:08'),
(167, 10, 'stock_out', -1.000, 'order', 9, NULL, 6, 'Order authorization deduction in selling units', '2026-06-11 08:23:08'),
(168, 14, 'stock_out', -1.000, 'order', 11, NULL, 6, 'Order authorization deduction in selling units', '2026-06-11 08:23:08'),
(169, 2, 'stock_out', -1.000, 'order_recipe', 12, NULL, 12, 'Cappuccino recipe consumption: 1 Cups Milk', '2026-06-11 08:38:54'),
(170, 2, 'stock_out', -1.000, 'order_recipe', 13, NULL, 6, 'Cappuccino recipe consumption: 1 Cups Milk', '2026-06-11 08:48:24'),
(171, 10, 'stock_out', -1.000, 'order', 13, NULL, 6, 'Order authorization deduction in selling units', '2026-06-11 08:48:24'),
(172, 135, 'stock_out', -1.000, 'production_batch', 6, NULL, 1, 'Raw stock used for preparation PREP-20260611-112753-37', '2026-06-11 09:27:53'),
(173, 92, 'stock_in', 5.000, 'production_batch', 6, NULL, 1, 'Prepared portions from PREP-20260611-112753-37', '2026-06-11 09:27:53');

-- --------------------------------------------------------

--
-- Table structure for table `main_groups`
--

CREATE TABLE `main_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `department` enum('bar','kitchen') NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `main_groups`
--

INSERT INTO `main_groups` (`id`, `name`, `department`, `is_active`) VALUES
(1, 'BEVERAGES', 'bar', 1),
(2, 'PERISHABLE FOODS', 'kitchen', 1),
(3, 'Drinks', 'bar', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_number` varchar(40) NOT NULL,
  `source_type` enum('main_pit','prive','slots','bingo','staff','restaurant','inspectors') NOT NULL,
  `source_label` varchar(120) NOT NULL,
  `customer_name` varchar(120) DEFAULT NULL,
  `status` enum('pending','authorized','rejected') NOT NULL DEFAULT 'pending',
  `notes` text DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `authorized_by` int(11) DEFAULT NULL,
  `authorized_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `source_type`, `source_label`, `customer_name`, `status`, `notes`, `created_by`, `authorized_by`, `authorized_at`, `created_at`) VALUES
(1, 'POS-20260608-63855', 'main_pit', 'R3', 'john', 'authorized', '', 6, 6, '2026-06-08 14:58:09', '2026-06-08 11:57:24'),
(2, 'POS-20260608-48171', 'main_pit', 'Black Jack', 'test', 'authorized', '', 1, 1, '2026-06-08 16:58:38', '2026-06-08 13:58:19'),
(3, 'POS-20260608-34395', 'main_pit', 'Black Jack', 'fgt', 'rejected', '', 1, 6, '2026-06-11 11:23:39', '2026-06-08 14:11:31'),
(4, 'POS-20260608-78046', 'main_pit', 'Black Jack', 'test', 'authorized', '', 1, 1, '2026-06-08 19:24:13', '2026-06-08 16:23:33'),
(5, 'POS-20260609-58407', 'slots', '6001', 'moxine', 'authorized', '', 6, 6, '2026-06-09 10:03:46', '2026-06-09 07:02:54'),
(8, 'POS-20260610-51339', 'prive', 'R4', 'Test Customer', 'authorized', '', 1, 1, '2026-06-10 14:42:38', '2026-06-10 11:37:58'),
(9, 'POS-20260611-62251', 'slots', '1001', 'moxine', 'authorized', '', 6, 6, '2026-06-11 11:23:08', '2026-06-11 08:09:43'),
(10, 'POS-20260611-53958', 'staff', 'Nickson Maina', NULL, 'authorized', '', 6, 6, '2026-06-11 10:10:22', '2026-06-11 08:10:22'),
(11, 'POS-20260611-56062', 'main_pit', 'R1', 'sameer', 'authorized', '', 6, 6, '2026-06-11 11:23:08', '2026-06-11 08:15:28'),
(12, 'POS-20260611-86690', 'slots', '3001', 'Mohsin', 'authorized', '', 10, 12, '2026-06-11 11:38:54', '2026-06-11 08:30:23'),
(13, 'POS-20260611-53756', 'staff', 'Robert Walekhwa', NULL, 'authorized', '', 6, 6, '2026-06-11 10:48:24', '2026-06-11 08:48:24'),
(14, 'POS-20260611-34774', 'slots', '1002', 'mende', 'pending', '', 10, NULL, NULL, '2026-06-11 08:56:44'),
(15, 'POS-20260611-72785', 'slots', '1003', 'p njoroge', 'pending', '', 10, NULL, NULL, '2026-06-11 08:58:54'),
(16, 'POS-20260611-32876', 'main_pit', 'R2', 'pathesh', 'rejected', '2', 9, 1, '2026-06-11 12:21:16', '2026-06-11 09:11:51'),
(17, 'POS-20260611-95744', 'main_pit', 'R2', 'parvesh', 'pending', '2', 9, NULL, NULL, '2026-06-11 09:13:24'),
(18, 'POS-20260611-94861', 'slots', '1010', 'moxine', 'pending', '', 9, NULL, NULL, '2026-06-11 09:16:17'),
(19, 'POS-20260611-16394', 'slots', '1003', 'p njoroge', 'pending', '', 10, NULL, NULL, '2026-06-11 09:27:28');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `department` enum('bar','kitchen') NOT NULL,
  `quantity` decimal(14,3) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `department`, `quantity`, `unit_price`, `notes`) VALUES
(1, 1, 43, 'bar', 1.000, 0.00, ''),
(2, 2, 26, 'bar', 1.000, 0.00, ''),
(3, 3, 17, 'bar', 3.000, 0.00, ''),
(4, 4, 23, 'bar', 1.000, 0.00, ''),
(5, 5, 2, 'bar', 1.000, 0.00, 'cappuccino'),
(8, 8, 119, 'kitchen', 1.000, 0.00, 'Less Salt'),
(9, 9, 53, 'bar', 1.000, 0.00, ''),
(10, 9, 10, 'bar', 1.000, 0.00, ''),
(11, 10, 53, 'bar', 1.000, 0.00, ''),
(12, 11, 14, 'bar', 1.000, 0.00, ''),
(13, 12, 53, 'bar', 1.000, 0.00, ''),
(14, 13, 53, 'bar', 1.000, 0.00, ''),
(15, 13, 10, 'bar', 1.000, 0.00, ''),
(16, 14, 106, 'bar', 1.000, 0.00, ''),
(17, 15, 53, 'bar', 1.000, 0.00, ''),
(18, 16, 10, 'bar', 21.000, 0.00, ''),
(19, 17, 10, 'bar', 1.000, 0.00, ''),
(20, 18, 96, 'kitchen', 1.000, 0.00, ''),
(21, 18, 126, 'kitchen', 2.000, 0.00, ''),
(22, 19, 10, 'bar', 1.000, 0.00, '');

-- --------------------------------------------------------

--
-- Table structure for table `pos_store_issue_sync`
--

CREATE TABLE `pos_store_issue_sync` (
  `id` int(11) NOT NULL,
  `store_requisition_id` int(11) NOT NULL,
  `store_requisition_item_id` int(11) NOT NULL,
  `store_item_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `store_quantity` decimal(10,2) NOT NULL,
  `pos_quantity` decimal(14,3) NOT NULL,
  `store_issued_at` datetime DEFAULT NULL,
  `synced_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pos_store_issue_sync`
--

INSERT INTO `pos_store_issue_sync` (`id`, `store_requisition_id`, `store_requisition_item_id`, `store_item_id`, `product_id`, `store_quantity`, `pos_quantity`, `store_issued_at`, `synced_at`) VALUES
(1, 3267, 8364, 293, 46, 2.00, 8.000, '2026-06-08 14:32:46', '2026-06-08 12:36:43'),
(2, 3237, 8289, 149, 2, 30.00, 3750.000, '2026-06-08 14:33:39', '2026-06-08 12:37:46'),
(3, 3262, 8350, 231, 12, 2.00, 66.000, '2026-06-08 14:31:03', '2026-06-08 12:38:17'),
(4, 3262, 8351, 154, 19, 1.00, 33.000, '2026-06-08 14:31:03', '2026-06-08 12:38:17'),
(5, 3262, 8352, 30, 29, 1.00, 33.000, '2026-06-08 14:31:03', '2026-06-08 12:38:17'),
(6, 3262, 8354, 25, 43, 10.00, 20.000, '2026-06-08 14:31:03', '2026-06-08 12:38:17'),
(7, 3262, 8355, 24, 38, 10.00, 20.000, '2026-06-08 14:31:03', '2026-06-08 12:38:17'),
(8, 3248, 8310, 155, 33, 1.00, 25.000, '2026-06-06 14:50:09', '2026-06-08 12:39:13'),
(9, 3248, 8311, 231, 12, 4.00, 132.000, '2026-06-06 14:50:09', '2026-06-08 12:39:13'),
(10, 3248, 8312, 44, 14, 1.00, 33.000, '2026-06-06 14:50:09', '2026-06-08 12:39:13'),
(11, 3248, 8313, 43, 16, 1.00, 33.000, '2026-06-06 14:50:09', '2026-06-08 12:39:13'),
(12, 3248, 8314, 30, 29, 1.00, 33.000, '2026-06-06 14:50:09', '2026-06-08 12:39:13'),
(13, 3248, 8315, 29, 30, 1.00, 33.000, '2026-06-06 14:50:09', '2026-06-08 12:39:13'),
(14, 3248, 8316, 25, 43, 25.00, 50.000, '2026-06-06 14:50:09', '2026-06-08 12:39:13'),
(15, 3248, 8317, 225, 41, 25.00, 25.000, '2026-06-06 14:50:09', '2026-06-08 12:39:13'),
(16, 3248, 8318, 24, 38, 50.00, 100.000, '2026-06-06 14:50:09', '2026-06-08 12:39:13'),
(17, 3254, 8334, 149, 2, 15.00, 1875.000, '2026-06-08 14:29:11', '2026-06-08 12:40:44'),
(18, 3261, 8349, 296, 10, 24.00, 24.000, '2026-06-08 14:30:38', '2026-06-08 12:42:08'),
(19, 3260, 8343, 32, 26, 6.00, 48.000, '2026-06-08 14:30:28', '2026-06-08 12:42:13'),
(20, 3260, 8344, 38, 25, 1.00, 8.000, '2026-06-08 14:30:28', '2026-06-08 12:42:14'),
(21, 3260, 8345, 34, 23, 3.00, 24.000, '2026-06-08 14:30:28', '2026-06-08 12:42:14'),
(22, 3260, 8346, 37, 5, 5.00, 25.000, '2026-06-08 14:30:28', '2026-06-08 12:42:14'),
(23, 3260, 8348, 296, 10, 48.00, 48.000, '2026-06-08 14:30:28', '2026-06-08 12:42:14'),
(24, 3266, 8363, 32, 26, 5.00, 40.000, '2026-06-08 14:32:29', '2026-06-08 12:43:14'),
(25, 3257, 8340, 293, 46, 3.00, 12.000, '2026-06-08 14:29:55', '2026-06-08 12:43:32'),
(26, 3282, 8395, 293, 46, 3.00, 12.000, '2026-06-09 15:25:42', '2026-06-09 14:50:21'),
(27, 3281, 8390, 155, 33, 1.00, 25.000, '2026-06-09 15:25:24', '2026-06-09 14:50:25'),
(28, 3281, 8391, 231, 12, 2.00, 66.000, '2026-06-09 15:25:24', '2026-06-09 14:50:25'),
(29, 3281, 8392, 43, 16, 1.00, 33.000, '2026-06-09 15:25:24', '2026-06-09 14:50:25'),
(30, 3281, 8393, 30, 29, 1.00, 33.000, '2026-06-09 15:25:24', '2026-06-09 14:50:25'),
(31, 3281, 8394, 25, 43, 15.00, 30.000, '2026-06-09 15:25:24', '2026-06-09 14:50:25'),
(32, 3280, 8389, 296, 10, 24.00, 24.000, '2026-06-09 15:25:03', '2026-06-09 14:50:27'),
(33, 3279, 8383, 32, 26, 2.00, 16.000, '2026-06-09 15:24:45', '2026-06-09 14:50:29'),
(34, 3279, 8384, 35, 4, 3.00, 24.000, '2026-06-09 15:24:45', '2026-06-09 14:50:29'),
(35, 3279, 8386, 36, 7, 4.00, 8.000, '2026-06-09 15:24:45', '2026-06-09 14:50:29'),
(36, 3279, 8387, 42, 11, 2.00, 8.000, '2026-06-09 15:24:45', '2026-06-09 14:50:29'),
(37, 3279, 8388, 296, 10, 48.00, 48.000, '2026-06-09 15:24:45', '2026-06-09 14:50:29'),
(38, 3274, 8377, 149, 2, 15.00, 1875.000, '2026-06-09 15:21:24', '2026-06-09 14:50:36');

-- --------------------------------------------------------

--
-- Table structure for table `printers`
--

CREATE TABLE `printers` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `department` enum('bar','kitchen') NOT NULL,
  `connection_type` enum('network','windows_share','file') NOT NULL DEFAULT 'file',
  `connection_value` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `printers`
--

INSERT INTO `printers` (`id`, `name`, `department`, `connection_type`, `connection_value`, `is_active`) VALUES
(1, 'EPSON Universal Print Driver (redirected 3)', 'bar', 'windows_share', 'EPSON Universal Print Driver (redirected 3)', 0),
(2, 'BarPrinter', 'bar', 'network', '192.168.1.87:9100', 0),
(3, 'POS-X Thermal Printer', 'bar', 'windows_share', 'POS-X Thermal Printer', 0),
(4, 'POS-X Thermal Printer', 'bar', 'windows_share', 'POS-X Thermal Printer', 0),
(5, 'POS-X Thermal Printer', 'bar', 'windows_share', 'POS-X Thermal Printer', 0),
(6, 'POS-X Thermal Printer', 'bar', 'windows_share', 'POS-X Thermal Printer', 0),
(7, 'POS-X Thermal Printer (Copy 1)', 'bar', 'windows_share', 'POS-X Thermal Printer (Copy 1)', 0),
(8, 'POS-X Thermal Printer (Copy 1)', 'bar', 'windows_share', 'POS-X Thermal Printer (Copy 1)', 0),
(9, 'kitchen printer', 'kitchen', 'network', '192.168.1.5:9100', 0),
(10, 'bar printer', 'bar', 'network', '192.168.1.87:9100', 1),
(11, 'Star TSP143IIILAN Cutter', 'kitchen', 'windows_share', 'Star TSP143IIILAN Cutter', 1);

-- --------------------------------------------------------

--
-- Table structure for table `print_logs`
--

CREATE TABLE `print_logs` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `printer_id` int(11) NOT NULL,
  `department` enum('bar','kitchen') NOT NULL,
  `ticket_text` text NOT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `status` enum('queued','printed','failed') NOT NULL DEFAULT 'queued',
  `printed_by` int(11) DEFAULT NULL,
  `is_reprint` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `print_logs`
--

INSERT INTO `print_logs` (`id`, `order_id`, `printer_id`, `department`, `ticket_text`, `file_path`, `status`, `printed_by`, `is_reprint`, `created_at`) VALUES
(1, 1, 3, 'bar', '                BETKEN POS                \r\n           COMPLIMENTARY ORDER            \r\n                 BAR COPY                 \r\n------------------------------------------\r\nReceipt #:              POS-20260608-63855\r\nService Area:                     MAIN PIT\r\nTable / Location:                       R3\r\n------------------------------------------\r\n                 CUSTOMER                 \r\n                   john                   \r\n\r\nServed By:                   Jentah Atieno\r\nUser Role:                         Manager\r\n------------------------------------------\r\nQTY  ITEM                             UNIT\r\n------------------------------------------\r\n1    Tusker Lager 500ml btls        Bottle\r\n------------------------------------------\r\nTotal Quantity:                          1\r\n==========================================\r\n                ORDER DATE                \r\n          08/06/2026 02:57:24 PM          \r\n------------------------------------------\r\n              AUTHORIZED BY               \r\n              Jentah Atieno               \r\n          08/06/2026 02:58:09 PM          \r\n==========================================\r\n            Status: AUTHORIZED            \r\n                Thank you                 \r\n\r\n\r\n', 'storage/prints/order-1-bar-20260608135809.txt', 'printed', 6, 0, '2026-06-08 11:58:09'),
(2, 2, 10, 'bar', '                BETKEN POS                \r\n           COMPLIMENTARY ORDER            \r\n                 BAR COPY                 \r\n------------------------------------------\r\nReceipt #:              POS-20260608-48171\r\nService Area:                     MAIN PIT\r\nTable / Location:               Black Jack\r\n------------------------------------------\r\n                 CUSTOMER                 \r\n                   test                   \r\n\r\nServed By:            System Administrator\r\nUser Role:                           Admin\r\n------------------------------------------\r\nQTY  ITEM                             UNIT\r\n------------------------------------------\r\n1    Coke 2ltrs                      Glass\r\n------------------------------------------\r\nTotal Quantity:                          1\r\n==========================================\r\n                ORDER DATE                \r\n          08/06/2026 04:58:19 PM          \r\n------------------------------------------\r\n              AUTHORIZED BY               \r\n           System Administrator           \r\n          08/06/2026 04:58:38 PM          \r\n==========================================\r\n            Status: AUTHORIZED            \r\n                Thank you                 \r\n\r\n\r\n', 'storage/prints/order-2-bar-20260608155838.txt', 'printed', 1, 0, '2026-06-08 13:58:38'),
(3, 4, 10, 'bar', '                BETKEN POS                \r\n           COMPLIMENTARY ORDER            \r\n                 BAR COPY                 \r\n------------------------------------------\r\nReceipt #:              POS-20260608-78046\r\nService Area:                     MAIN PIT\r\nTable / Location:               Black Jack\r\n------------------------------------------\r\n                 CUSTOMER                 \r\n                   test                   \r\n\r\nServed By:            System Administrator\r\nUser Role:                           Admin\r\n------------------------------------------\r\nQTY  ITEM                             UNIT\r\n------------------------------------------\r\n1    Fanta Orange 2Ltrs              Glass\r\n------------------------------------------\r\nTotal Quantity:                          1\r\n==========================================\r\n                ORDER DATE                \r\n          08/06/2026 07:23:33 PM          \r\n------------------------------------------\r\n              AUTHORIZED BY               \r\n           System Administrator           \r\n          08/06/2026 07:24:13 PM          \r\n==========================================\r\n            Status: AUTHORIZED            \r\n                Thank you                 \r\n\r\n\r\n', 'storage/prints/order-4-bar-20260608182413.txt', 'printed', 1, 0, '2026-06-08 16:24:13'),
(4, 5, 10, 'bar', '                BETKEN POS                \r\n           COMPLIMENTARY ORDER            \r\n                 BAR COPY                 \r\n------------------------------------------\r\nReceipt #:              POS-20260609-58407\r\nService Area:                        SLOTS\r\nMachine:                              6001\r\n------------------------------------------\r\n                 CUSTOMER                 \r\n                  moxine                  \r\n\r\nServed By:                   Jentah Atieno\r\nUser Role:                         Manager\r\n------------------------------------------\r\nQTY  ITEM                             UNIT\r\n------------------------------------------\r\n1    Milk                             Cups\r\n    Note: cappuccino\r\n------------------------------------------\r\nTotal Quantity:                          1\r\n==========================================\r\n                ORDER DATE                \r\n          09/06/2026 10:02:54 AM          \r\n------------------------------------------\r\n              AUTHORIZED BY               \r\n              Jentah Atieno               \r\n          09/06/2026 10:03:46 AM          \r\n==========================================\r\n            Status: AUTHORIZED            \r\n                Thank you                 \r\n\r\n\r\n', 'storage/prints/order-5-bar-20260609090346.txt', 'printed', 6, 0, '2026-06-09 07:03:46'),
(5, 8, 11, 'kitchen', '                BETKEN POS                \r\n           COMPLIMENTARY ORDER            \r\n               KITCHEN COPY               \r\n------------------------------------------\r\nReceipt #:              POS-20260610-51339\r\nService Area:                        PRIVE\r\nTable / Location:                       R4\r\n------------------------------------------\r\n                 CUSTOMER                 \r\n              Test Customer               \r\n\r\nServed By:            System Administrator\r\nUser Role:                           Admin\r\n------------------------------------------\r\nQTY  ITEM                             UNIT\r\n------------------------------------------\r\n1    Plain Omelette               Portions\r\n    Note: Less Salt\r\n------------------------------------------\r\nTotal Quantity:                          1\r\n==========================================\r\n                ORDER DATE                \r\n          10/06/2026 02:37:58 PM          \r\n------------------------------------------\r\n              AUTHORIZED BY               \r\n           System Administrator           \r\n          10/06/2026 02:42:38 PM          \r\n==========================================\r\n            Status: AUTHORIZED            \r\n                Thank you                 \r\n\r\n\r\n', 'storage/prints/order-8-kitchen-20260610134238.txt', 'printed', 1, 0, '2026-06-10 11:42:39'),
(6, 10, 10, 'bar', '                BETKEN POS                \r\n           COMPLIMENTARY ORDER            \r\n                 BAR COPY                 \r\n------------------------------------------\r\nReceipt #:              POS-20260611-53958\r\nService Area:                  STAFF ORDER\r\nStaff Member:                Nickson Maina\r\n------------------------------------------\r\n                 CUSTOMER                 \r\n              Nickson Maina               \r\n\r\nServed By:                   Jentah Atieno\r\nUser Role:                         Manager\r\n------------------------------------------\r\nQTY  ITEM                             UNIT\r\n------------------------------------------\r\n1    Cappuccino                       Cups\r\n------------------------------------------\r\nTotal Quantity:                          1\r\n==========================================\r\n                ORDER DATE                \r\n          11/06/2026 11:10:22 AM          \r\n------------------------------------------\r\n              AUTHORIZED BY               \r\n              Jentah Atieno               \r\n          11/06/2026 10:10:22 AM          \r\n==========================================\r\n            Status: AUTHORIZED            \r\n                Thank you                 \r\n\r\n\r\n', 'storage/prints/order-10-bar-20260611101022.txt', 'printed', 6, 0, '2026-06-11 08:10:22'),
(7, 9, 10, 'bar', '                BETKEN POS                \r\n           COMPLIMENTARY ORDER            \r\n                 BAR COPY                 \r\n------------------------------------------\r\nReceipt #:              POS-20260611-62251\r\nService Area:                        SLOTS\r\nMachine:                              1001\r\n------------------------------------------\r\n                 CUSTOMER                 \r\n                  moxine                  \r\n\r\nServed By:                   Jentah Atieno\r\nUser Role:                         Manager\r\n------------------------------------------\r\nQTY  ITEM                             UNIT\r\n------------------------------------------\r\n1    Cappuccino                       Cups\r\n1    Quencher 300ml mineral         Bottle\r\n     water                                \r\n------------------------------------------\r\nTotal Quantity:                          2\r\n==========================================\r\n                ORDER DATE                \r\n          11/06/2026 11:09:43 AM          \r\n------------------------------------------\r\n              AUTHORIZED BY               \r\n              Jentah Atieno               \r\n          11/06/2026 11:23:08 AM          \r\n==========================================\r\n            Status: AUTHORIZED            \r\n                Thank you                 \r\n\r\n\r\n', 'storage/prints/order-9-bar-20260611102308.txt', 'printed', 6, 0, '2026-06-11 08:23:08'),
(8, 11, 10, 'bar', '                BETKEN POS                \r\n           COMPLIMENTARY ORDER            \r\n                 BAR COPY                 \r\n------------------------------------------\r\nReceipt #:              POS-20260611-56062\r\nService Area:                     MAIN PIT\r\nTable / Location:                       R1\r\n------------------------------------------\r\n                 CUSTOMER                 \r\n                  sameer                  \r\n\r\nServed By:                   Jentah Atieno\r\nUser Role:                         Manager\r\n------------------------------------------\r\nQTY  ITEM                             UNIT\r\n------------------------------------------\r\n1    J.W Black Label 1ltr             Tots\r\n------------------------------------------\r\nTotal Quantity:                          1\r\n==========================================\r\n                ORDER DATE                \r\n          11/06/2026 11:15:28 AM          \r\n------------------------------------------\r\n              AUTHORIZED BY               \r\n              Jentah Atieno               \r\n          11/06/2026 11:23:08 AM          \r\n==========================================\r\n            Status: AUTHORIZED            \r\n                Thank you                 \r\n\r\n\r\n', 'storage/prints/order-11-bar-20260611102308.txt', 'printed', 6, 0, '2026-06-11 08:23:08'),
(9, 12, 10, 'bar', '                BETKEN POS                \r\n           COMPLIMENTARY ORDER            \r\n                 BAR COPY                 \r\n------------------------------------------\r\nReceipt #:              POS-20260611-86690\r\nService Area:                        SLOTS\r\nMachine:                              3001\r\n------------------------------------------\r\n                 CUSTOMER                 \r\n                  Mohsin                  \r\n\r\nServed By:                           Periz\r\nUser Role:                         Service\r\n------------------------------------------\r\nQTY  ITEM                             UNIT\r\n------------------------------------------\r\n1    Cappuccino                       Cups\r\n------------------------------------------\r\nTotal Quantity:                          1\r\n==========================================\r\n                ORDER DATE                \r\n          11/06/2026 11:30:23 AM          \r\n------------------------------------------\r\n              AUTHORIZED BY               \r\n                 Luzinga                  \r\n          11/06/2026 11:38:54 AM          \r\n==========================================\r\n            Status: AUTHORIZED            \r\n                Thank you                 \r\n\r\n\r\n', 'storage/prints/order-12-bar-20260611103854.txt', 'printed', 12, 0, '2026-06-11 08:38:54'),
(10, 13, 10, 'bar', '                BETKEN POS                \r\n           COMPLIMENTARY ORDER            \r\n                 BAR COPY                 \r\n------------------------------------------\r\nReceipt #:              POS-20260611-53756\r\nService Area:                  STAFF ORDER\r\nStaff Member:              Robert Walekhwa\r\n------------------------------------------\r\n                 CUSTOMER                 \r\n             Robert Walekhwa              \r\n\r\nServed By:                   Jentah Atieno\r\nUser Role:                         Manager\r\n------------------------------------------\r\nQTY  ITEM                             UNIT\r\n------------------------------------------\r\n1    Cappuccino                       Cups\r\n1    Quencher 300ml mineral         Bottle\r\n     water                                \r\n------------------------------------------\r\nTotal Quantity:                          2\r\n==========================================\r\n                ORDER DATE                \r\n          11/06/2026 11:48:24 AM          \r\n------------------------------------------\r\n              AUTHORIZED BY               \r\n              Jentah Atieno               \r\n          11/06/2026 10:48:24 AM          \r\n==========================================\r\n            Status: AUTHORIZED            \r\n                Thank you                 \r\n\r\n\r\n', 'storage/prints/order-13-bar-20260611104824.txt', 'printed', 6, 0, '2026-06-11 08:48:24');

-- --------------------------------------------------------

--
-- Table structure for table `production_batches`
--

CREATE TABLE `production_batches` (
  `id` int(11) NOT NULL,
  `batch_number` varchar(40) NOT NULL,
  `raw_product_id` int(11) NOT NULL,
  `raw_quantity` decimal(14,3) NOT NULL,
  `notes` text DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `production_batches`
--

INSERT INTO `production_batches` (`id`, `batch_number`, `raw_product_id`, `raw_quantity`, `notes`, `created_by`, `created_at`) VALUES
(2, 'PREP-20260609-102830-91', 47, 10.000, '', 1, '2026-06-09 08:28:30'),
(3, 'PREP-20260609-105837-65', 47, 2.000, '', 1, '2026-06-09 08:58:37'),
(4, 'PREP-20260609-110144-25', 47, 3.000, '', 1, '2026-06-09 09:01:44'),
(5, 'PREP-20260610-090414-43', 103, 10.000, '', 1, '2026-06-10 07:04:14'),
(6, 'PREP-20260611-112753-37', 135, 1.000, '', 1, '2026-06-11 09:27:53');

-- --------------------------------------------------------

--
-- Table structure for table `production_batch_outputs`
--

CREATE TABLE `production_batch_outputs` (
  `id` int(11) NOT NULL,
  `production_batch_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` decimal(14,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `production_batch_outputs`
--

INSERT INTO `production_batch_outputs` (`id`, `production_batch_id`, `product_id`, `quantity`) VALUES
(3, 2, 56, 3.000),
(4, 3, 56, 3.000),
(5, 4, 56, 10.000),
(6, 5, 84, 20.000),
(7, 5, 85, 30.000),
(8, 6, 92, 5.000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `main_group_id` int(11) DEFAULT NULL,
  `sub_group_id` int(11) DEFAULT NULL,
  `selling_unit_id` int(11) DEFAULT NULL,
  `stock_unit_id` int(11) DEFAULT NULL,
  `item_code` int(11) NOT NULL,
  `sku` varchar(60) DEFAULT NULL,
  `name` varchar(160) NOT NULL,
  `sub_group` varchar(100) DEFAULT NULL,
  `main_group` varchar(100) DEFAULT NULL,
  `selling_unit` varchar(40) NOT NULL DEFAULT 'unit',
  `stock_unit_name` varchar(80) NOT NULL DEFAULT 'item',
  `selling_units_per_stock_unit` decimal(14,3) NOT NULL DEFAULT 1.000,
  `product_mode` enum('direct','ingredient','recipe','prepared','non_stock') NOT NULL DEFAULT 'direct',
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `reorder_level` decimal(14,3) NOT NULL DEFAULT 0.000,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `main_group_id`, `sub_group_id`, `selling_unit_id`, `stock_unit_id`, `item_code`, `sku`, `name`, `sub_group`, `main_group`, `selling_unit`, `stock_unit_name`, `selling_units_per_stock_unit`, `product_mode`, `price`, `reorder_level`, `is_active`, `created_at`) VALUES
(1, NULL, 1, 2, 4, 14, 1001, 'CDR-0021', 'Tusker Lager 500ml', 'BEERS', 'BEVERAGES', 'Can', 'ML', 1.000, 'direct', 0.00, 10.000, 1, '2026-06-07 13:52:18'),
(2, NULL, 1, 7, 3, 11, 1002, 'CDR-0145', 'Milk', 'PERISHABLE BEVERAGES', 'BEVERAGES', 'Cups', 'LTRS', 125.000, 'ingredient', 0.00, 10.000, 1, '2026-06-07 13:58:49'),
(3, NULL, 1, 11, 2, 3, 1003, 'CDR-0149', 'Smirnof Vodka Red 1Ltr', 'VODKAS', 'BEVERAGES', 'Tots', '1LT', 33.000, 'direct', 0.00, 5.000, 1, '2026-06-07 14:03:09'),
(4, NULL, 1, 9, 1, 11, 1004, 'CDR-0033', 'Sprite 2ltrs', 'SOFT DRINKS', 'BEVERAGES', 'Glass', 'LTRS', 8.000, 'direct', 0.00, 16.000, 1, '2026-06-07 14:31:52'),
(5, NULL, 1, 9, 1, 13, 1005, 'CDR-0035', 'Sprite 1.25litr', 'SOFT DRINKS', 'BEVERAGES', 'Glass', '1.25LT', 5.000, 'direct', 0.00, 15.000, 1, '2026-06-07 14:34:34'),
(6, NULL, 1, 9, 4, 9, 1006, 'CDR-0144', 'Red Bull', 'SOFT DRINKS', 'BEVERAGES', 'Can', 'CANS', 1.000, 'direct', 0.00, 3.000, 1, '2026-06-07 14:36:11'),
(7, NULL, 3, 24, 1, 14, 1007, 'CDR-0034', 'Tonic Water 500ml', 'Water', 'Drinks', 'Glass', 'ML', 2.000, 'direct', 0.00, 4.000, 1, '2026-06-07 14:38:55'),
(8, NULL, 1, 10, 2, 6, 1008, 'CDR-0259', 'DON JULIO BLANCO 750ML', 'TEQUILAS', 'BEVERAGES', 'Tots', '750ML', 25.000, 'direct', 0.00, 0.000, 1, '2026-06-07 14:40:26'),
(9, NULL, 1, 12, 5, 14, 1009, 'CDR-0039', 'Aquamist 330ml Mineral Water', 'WATER', 'BEVERAGES', 'Bottle', 'ML', 1.000, 'direct', 0.00, 24.000, 1, '2026-06-07 14:42:41'),
(10, NULL, 3, 24, 5, 14, 1010, 'CDR-0286', 'Quencher 300ml mineral water', 'Water', 'Drinks', 'Bottle', 'ML', 1.000, 'direct', 0.00, 24.000, 1, '2026-06-07 14:43:23'),
(11, NULL, 3, 24, 1, 3, 1011, 'CDR-0040', 'Sparkling Water 1ltr', 'Water', 'Drinks', 'Glass', '1LT', 4.000, 'direct', 0.00, 4.000, 1, '2026-06-07 14:44:35'),
(12, NULL, 1, 13, 2, 3, 1012, 'CDR-0226', 'Black & White 1ltr', 'WHISKEYS', 'BEVERAGES', 'Tots', '1LT', 33.000, 'direct', 0.00, 33.000, 1, '2026-06-07 14:45:42'),
(13, NULL, 1, 13, 2, 6, 1013, 'CDR-0272', 'Black and White 750ml', 'WHISKEYS', 'BEVERAGES', 'Tots', '750ML', 25.000, 'direct', 0.00, 25.000, 1, '2026-06-07 14:46:25'),
(14, NULL, 1, 13, 2, 11, 1014, 'CDR-0042', 'J.W Black Label 1ltr', 'WHISKEYS', 'BEVERAGES', 'Tots', 'LTRS', 33.000, 'direct', 0.00, 5.000, 1, '2026-06-08 05:57:24'),
(15, NULL, 1, 13, 2, 6, 1015, 'CDR-0044', 'J.W Black Label 750ML', 'WHISKEYS', 'BEVERAGES', 'Tots', '750ML', 25.000, 'direct', 0.00, 5.000, 1, '2026-06-08 05:58:49'),
(16, NULL, 1, 13, 2, 3, 1016, 'CDR-0041', 'J.W Red Label 1ltr', 'WHISKEYS', 'BEVERAGES', 'Tots', '1LT', 33.000, 'direct', 0.00, 5.000, 1, '2026-06-08 06:00:15'),
(17, NULL, 1, 13, 2, 6, 1017, 'CDR-0043', 'J.W Red Label 750ml', 'WHISKEYS', 'BEVERAGES', 'Tots', '750ML', 25.000, 'direct', 0.00, 5.000, 1, '2026-06-08 06:03:16'),
(18, NULL, 1, 13, 2, 3, 1018, 'CDR-0180', 'Jameson 1ltrs', 'WHISKEYS', 'BEVERAGES', 'Tots', '1LT', 33.000, 'direct', 0.00, 5.000, 1, '2026-06-08 06:04:00'),
(19, NULL, 1, 13, 2, 3, 1019, 'CDR-0150', 'Jim Beam 1ltr', 'WHISKEYS', 'BEVERAGES', 'Tots', '1LT', 33.000, 'direct', 0.00, 5.000, 1, '2026-06-08 06:04:28'),
(20, NULL, 1, 13, 2, 3, 1020, 'CDR-0045', 'Teachers 1ltr', 'WHISKEYS', 'BEVERAGES', 'Tots', '1LT', 33.000, 'direct', 0.00, 20.000, 1, '2026-06-08 06:05:02'),
(21, NULL, 1, 8, 5, 5, 1021, 'CDR-0143', 'Drostdy Cask White Wine', 'RED WINES', 'BEVERAGES', 'Bottle', '5LTR', 33.000, 'direct', 0.00, 5.000, 1, '2026-06-08 06:05:41'),
(22, NULL, 1, 9, 1, 3, 1022, 'CDR-0236', 'Orange Juice', 'SOFT DRINKS', 'BEVERAGES', 'Glass', '1LT', 4.000, 'direct', 0.00, 3.000, 1, '2026-06-08 06:06:56'),
(23, NULL, 1, 9, 1, 11, 1023, 'CDR-0032', 'Fanta Orange 2Ltrs', 'SOFT DRINKS', 'BEVERAGES', 'Glass', 'LTRS', 8.000, 'direct', 0.00, 16.000, 1, '2026-06-08 06:07:53'),
(24, NULL, 1, 9, 1, 13, 1024, 'CDR-0031', 'Fanta 1.25ltrs', 'SOFT DRINKS', 'BEVERAGES', 'Glass', '1.25LT', 5.000, 'direct', 0.00, 15.000, 1, '2026-06-08 06:08:27'),
(25, NULL, 1, 9, 1, 11, 1025, 'CDR-0036', 'Coke Zero 2ltrs', 'SOFT DRINKS', 'BEVERAGES', 'Glass', 'LTRS', 8.000, 'direct', 0.00, 16.000, 0, '2026-06-08 06:08:59'),
(26, NULL, 1, 9, 1, 11, 1026, 'CDR-0030', 'Coke 2ltrs', 'SOFT DRINKS', 'BEVERAGES', 'Glass', 'LTRS', 8.000, 'direct', 0.00, 24.000, 1, '2026-06-08 06:09:46'),
(27, NULL, 1, 9, 1, 13, 1027, 'CDR-0029', 'Coke 1.25ltrs', 'SOFT DRINKS', 'BEVERAGES', 'Glass', '1.25LT', 5.000, 'direct', 0.00, 20.000, 1, '2026-06-08 06:10:19'),
(28, NULL, 1, 10, 2, 6, 1028, 'CDR-0038', 'Camino Silver 750ml', 'TEQUILAS', 'BEVERAGES', 'Tots', '750ML', 25.000, 'direct', 0.00, 5.000, 1, '2026-06-08 06:11:49'),
(29, NULL, 1, 8, 1, 5, 1029, 'CDR-0028', 'Drostdy Cask Red Wine', 'RED WINES', 'BEVERAGES', 'Glass', '5LTR', 33.000, 'direct', 0.00, 15.000, 1, '2026-06-08 06:13:03'),
(30, NULL, 1, 8, 1, 5, 1030, 'CDR-0027', '4th Street Red Wine', 'RED WINES', 'BEVERAGES', 'Glass', '5LTR', 33.000, 'direct', 0.00, 8.000, 1, '2026-06-08 06:13:47'),
(31, NULL, 1, 6, 2, 6, 1031, 'CDR-0026', 'Zappa Sambuca Clear', 'LIQUEURS', 'BEVERAGES', 'Tots', '750ML', 25.000, 'direct', 0.00, 5.000, 1, '2026-06-08 06:14:25'),
(32, NULL, 1, 6, 2, 3, 1032, 'CDR-0025', 'Amarula 1litre', 'LIQUEURS', 'BEVERAGES', 'Tots', '1LT', 33.000, 'direct', 0.00, 5.000, 1, '2026-06-08 06:16:08'),
(33, NULL, 1, 4, 2, 6, 1033, 'CDR-0151', 'Gilbeys', 'GIN', 'BEVERAGES', 'Tots', '750ML', 25.000, 'direct', 0.00, 5.000, 1, '2026-06-08 06:17:58'),
(34, NULL, 1, 3, 2, 6, 1034, 'CDR-0024', 'Viceroy 750ml', 'BRANDYS', 'BEVERAGES', 'Tots', '750ML', 25.000, 'direct', 0.00, 5.000, 1, '2026-06-08 06:18:30'),
(35, NULL, 1, 3, 2, 14, 1035, 'CDR-0253', 'Southern Comfort 700ml', 'BRANDYS', 'BEVERAGES', 'Tots', 'ML', 23.000, 'direct', 0.00, 10.000, 1, '2026-06-08 06:19:05'),
(36, NULL, 1, 3, 2, 3, 1036, 'CDR-0265', 'Myers Rum 1Ltrs', 'BRANDYS', 'BEVERAGES', 'Tots', '1LT', 33.000, 'direct', 0.00, 5.000, 1, '2026-06-08 06:19:41'),
(37, NULL, 1, 2, 4, 14, 1037, 'CDR-0208', 'White Cap Lite 500ml', 'BEERS', 'BEVERAGES', 'Can', 'ML', 1.000, 'direct', 0.00, 4.000, 1, '2026-06-08 06:20:47'),
(38, NULL, 1, 2, 1, 14, 1038, 'CDR-0022', 'White Cap Lager 500ml btls', 'BEERS', 'BEVERAGES', 'Glass', 'ML', 2.000, 'direct', 0.00, 20.000, 1, '2026-06-08 06:21:20'),
(39, NULL, 1, 2, 4, 14, 1039, 'CDR-0020', 'White Cap Lager 500ml', 'BEERS', 'BEVERAGES', 'Can', 'ML', 1.000, 'direct', 0.00, 6.000, 1, '2026-06-08 06:21:46'),
(40, NULL, 1, 2, 5, 14, 1040, 'CDR-0019', 'Tusker Malt Lager 500ml', 'BEERS', 'BEVERAGES', 'Bottle', 'ML', 1.000, 'direct', 0.00, 5.000, 1, '2026-06-08 06:22:17'),
(41, NULL, 1, 2, 1, 14, 1041, 'CDR-0220', 'Tusker Malt 330ml', 'BEERS', 'BEVERAGES', 'Glass', 'ML', 1.000, 'direct', 0.00, 6.000, 1, '2026-06-08 06:22:42'),
(42, NULL, 1, 2, 4, 14, 1042, 'CDR-0209', 'tusker lite 500ml', 'BEERS', 'BEVERAGES', 'Can', 'ML', 1.000, 'direct', 0.00, 3.000, 1, '2026-06-08 06:23:21'),
(43, NULL, 1, 2, 1, 14, 1043, 'CDR-0023', 'Tusker Lager 500ml btls', 'BEERS', 'BEVERAGES', 'Glass', 'ML', 2.000, 'direct', 0.00, 10.000, 1, '2026-06-08 06:23:46'),
(45, NULL, 1, 1, 2, 6, 1044, 'CDR-0016', 'Apple Sour Tang', 'APERITIFSS', 'BEVERAGES', 'Tots', '750ML', 25.000, 'direct', 0.00, 5.000, 1, '2026-06-08 06:25:54'),
(46, NULL, 1, 9, 1, 3, 1045, 'CDR-0283', 'Mango Juice 1 ltr', 'SOFT DRINKS', 'BEVERAGES', 'Glass', '1LT', 4.000, 'direct', 0.00, 2.000, 1, '2026-06-08 12:34:45'),
(47, NULL, 2, 15, 6, 10, 1046, 'CDR-0152', 'Chicken Breast', 'PERISHABLE FOODS', 'PERISHABLE FOODS', 'Portions', 'KGS', 2.000, 'ingredient', 0.00, 0.000, 1, '2026-06-09 07:27:51'),
(53, NULL, 1, 22, 3, 15, 1047, NULL, 'Cappuccino', 'Coffee', 'BEVERAGES', 'Cups', 'Serving', 1.000, 'recipe', 0.00, 10.000, 1, '2026-06-09 08:16:07'),
(56, NULL, 2, 20, 6, 16, 1048, NULL, 'Chicken Sandwich', 'Sandwich', 'PERISHABLE FOODS', 'Portions', 'Portion', 1.000, 'recipe', 0.00, 0.000, 1, '2026-06-09 08:27:19'),
(57, NULL, 1, 2, 1, 15, 1049, NULL, 'Tusker Lager Gls', 'BEERS', 'BEVERAGES', 'Glass', 'Serving', 1.000, 'direct', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(58, NULL, 1, 2, 5, 8, 1050, NULL, 'Tusker Lager bottle', 'BEERS', 'BEVERAGES', 'Bottle', 'BTLS', 1.000, 'direct', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(59, NULL, 1, 2, 1, 15, 1051, NULL, 'Whitecap Lager Gls', 'BEERS', 'BEVERAGES', 'Glass', 'Serving', 1.000, 'direct', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(60, NULL, 1, 2, 5, 8, 1052, NULL, 'Whitecap Lager bottle', 'BEERS', 'BEVERAGES', 'Bottle', 'BTLS', 1.000, 'direct', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(61, NULL, 1, 5, 3, 15, 1053, NULL, 'Black Coffee', 'HOT BEVERAGES', 'BEVERAGES', 'Cups', 'Serving', 1.000, 'direct', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(62, NULL, 1, 5, 3, 15, 1054, NULL, 'White Coffee', 'HOT BEVERAGES', 'BEVERAGES', 'Cups', 'Serving', 1.000, 'direct', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(63, NULL, 1, 4, 2, 15, 1055, NULL, 'Gilbey\'s', 'GIN', 'BEVERAGES', 'Tots', 'Serving', 1.000, 'direct', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(64, NULL, 1, 5, 3, 15, 1056, NULL, 'Hot Chocolate', 'HOT BEVERAGES', 'BEVERAGES', 'Cups', 'Serving', 1.000, 'direct', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(65, NULL, 1, 9, 1, 15, 1057, NULL, 'Coke Gls', 'SOFT DRINKS', 'BEVERAGES', 'Glass', 'Serving', 1.000, 'direct', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(66, NULL, 1, 9, 1, 15, 1058, NULL, 'Coke Zero Gls', 'SOFT DRINKS', 'BEVERAGES', 'Glass', 'Serving', 1.000, 'direct', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(67, NULL, 1, 9, 1, 15, 1059, NULL, 'Fanta Gls', 'SOFT DRINKS', 'BEVERAGES', 'Glass', 'Serving', 1.000, 'direct', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(68, NULL, 1, 9, 1, 15, 1060, NULL, 'Sprite Gls', 'SOFT DRINKS', 'BEVERAGES', 'Glass', 'Serving', 1.000, 'direct', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(69, NULL, 1, 5, 3, 15, 1061, NULL, 'Black Chocolate', 'HOT BEVERAGES', 'BEVERAGES', 'Cups', 'Serving', 1.000, 'direct', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(70, NULL, 1, 5, 3, 15, 1062, NULL, 'Lemon Tea', 'HOT BEVERAGES', 'BEVERAGES', 'Cups', 'Serving', 1.000, 'direct', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(71, NULL, 1, 5, 3, 15, 1063, NULL, 'Milk Tea', 'HOT BEVERAGES', 'BEVERAGES', 'Cups', 'Serving', 1.000, 'direct', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(72, NULL, 1, 10, 2, 15, 1064, NULL, 'Camino Silver', 'TEQUILAS', 'BEVERAGES', 'Tots', 'Serving', 1.000, 'direct', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(73, NULL, 1, 11, 2, 15, 1065, NULL, 'Smirnoff Red', 'VODKAS', 'BEVERAGES', 'Tots', 'Serving', 1.000, 'direct', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(74, NULL, 3, 24, 1, 15, 1066, NULL, 'Sparkling Water Gls', 'Water', 'Drinks', 'Glass', 'Serving', 1.000, 'direct', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(75, NULL, 3, 24, 1, 15, 1067, NULL, 'Tonic Water Gls', 'Water', 'Drinks', 'Glass', 'Serving', 1.000, 'direct', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(76, NULL, 1, 12, 5, 8, 1068, NULL, 'Water 300ml Quencher', 'WATER', 'BEVERAGES', 'Bottle', 'BTLS', 1.000, 'direct', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(77, NULL, 1, 12, 5, 8, 1069, NULL, 'Water 330ml Aquamist', 'WATER', 'BEVERAGES', 'Bottle', 'BTLS', 1.000, 'direct', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(78, NULL, 1, 13, 2, 15, 1070, NULL, 'Black & White', 'WHISKEYS', 'BEVERAGES', 'Tots', 'Serving', 1.000, 'direct', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(79, NULL, 1, 13, 2, 15, 1071, NULL, 'J W R Label', 'WHISKEYS', 'BEVERAGES', 'Tots', 'Serving', 1.000, 'direct', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(80, NULL, 1, 13, 2, 15, 1072, NULL, 'Jameson', 'WHISKEYS', 'BEVERAGES', 'Tots', 'Serving', 1.000, 'direct', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(81, NULL, 1, 13, 2, 15, 1073, NULL, 'Teachers', 'WHISKEYS', 'BEVERAGES', 'Tots', 'Serving', 1.000, 'direct', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(82, NULL, 1, 8, 1, 15, 1074, NULL, 'Drostdy Hof Red', 'RED WINES', 'BEVERAGES', 'Glass', 'Serving', 1.000, 'direct', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(83, NULL, 1, 14, 1, 15, 1075, NULL, 'Drostdy Hof White', 'WHITE WINES', 'BEVERAGES', 'Glass', 'Serving', 1.000, 'direct', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(84, NULL, 2, 16, 6, 16, 1076, NULL, 'French Fries', 'Accompaniment', 'PERISHABLE FOODS', 'Portions', 'Portion', 1.000, 'prepared', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(85, NULL, 2, 16, 6, 16, 1077, NULL, 'Mashed Potatoes', 'Accompaniment', 'PERISHABLE FOODS', 'Portions', 'Portion', 1.000, 'prepared', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(86, NULL, 2, 16, 6, 16, 1078, NULL, 'Steamed Rice', 'Accompaniment', 'PERISHABLE FOODS', 'Portions', 'Portion', 1.000, 'recipe', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(87, NULL, 2, 16, 6, 16, 1079, NULL, 'Vegetable Rice', 'Accompaniment', 'PERISHABLE FOODS', 'Portions', 'Portion', 1.000, 'recipe', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(88, NULL, 2, 17, 6, 16, 1080, NULL, 'Boiled Eggs', 'Egg Dish', 'PERISHABLE FOODS', 'Portions', 'Portion', 2.000, 'recipe', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(89, NULL, 2, 17, 6, 16, 1081, NULL, 'Fried Eggs', 'Egg Dish', 'PERISHABLE FOODS', 'Portions', 'Portion', 2.000, 'recipe', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(90, NULL, 2, 17, 6, 16, 1082, NULL, 'Plain Omelette', 'Egg Dish', 'PERISHABLE FOODS', 'Portions', 'Portion', 1.000, 'prepared', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(91, NULL, 2, 17, 6, 16, 1083, NULL, 'Spanish Omelette', 'Egg Dish', 'PERISHABLE FOODS', 'Portions', 'Portion', 2.000, 'recipe', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(92, NULL, 2, 18, 6, 16, 1084, NULL, 'Chicken Mushroom', 'Main Dish', 'PERISHABLE FOODS', 'Portions', 'Portion', 1.000, 'prepared', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(93, NULL, 2, 18, 6, 16, 1085, NULL, 'Chicken Wings - Dry', 'Main Dish', 'PERISHABLE FOODS', 'Portions', 'Portion', 1.000, 'recipe', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(94, NULL, 2, 18, 6, 16, 1086, NULL, 'Chicken Wings - Spicy', 'Main Dish', 'PERISHABLE FOODS', 'Portions', 'Portion', 1.000, 'recipe', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(95, NULL, 2, 18, 6, 16, 1087, NULL, 'Grilled Chicken', 'Main Dish', 'PERISHABLE FOODS', 'Portions', 'Portion', 1.000, 'recipe', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(96, NULL, 2, 18, 6, 16, 1088, NULL, 'Grilled Fish', 'Main Dish', 'PERISHABLE FOODS', 'Portions', 'Portion', 1.000, 'recipe', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(97, NULL, 2, 19, 6, 16, 1089, NULL, 'Chicken Salad', 'Salad', 'PERISHABLE FOODS', 'Portions', 'Portion', 1.000, 'recipe', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(98, NULL, 2, 19, 6, 16, 1090, NULL, 'Fruit Salad', 'Salad', 'PERISHABLE FOODS', 'Portions', 'Portion', 1.000, 'recipe', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(99, NULL, 2, 19, 6, 16, 1091, NULL, 'Garden Salad', 'Salad', 'PERISHABLE FOODS', 'Portions', 'Portion', 1.000, 'recipe', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(100, NULL, 2, 19, 6, 16, 1092, NULL, 'Kachumbari', 'Salad', 'PERISHABLE FOODS', 'Portions', 'Portion', 1.000, 'non_stock', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(101, NULL, 2, 20, 6, 16, 1093, NULL, 'Cheese Tomato Sandwich', 'Sandwich', 'PERISHABLE FOODS', 'Portions', 'Portion', 1.000, 'recipe', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(102, NULL, 2, 20, 6, 16, 1094, NULL, 'Egg Sandwich', 'Sandwich', 'PERISHABLE FOODS', 'Portions', 'Portion', 2.000, 'recipe', 0.00, 0.000, 1, '2026-06-09 12:31:45'),
(103, NULL, 2, 18, 7, 10, 1095, NULL, 'Potatoes', 'Main Dish', 'PERISHABLE FOODS', 'KGs', 'KGS', 1.000, 'ingredient', 0.00, 10.000, 1, '2026-06-10 07:02:11'),
(104, NULL, 1, 21, 3, 15, 1096, NULL, 'Milk Tea', 'Tea', 'BEVERAGES', 'Cups', 'Serving', 1.000, 'recipe', 0.00, 0.000, 1, '2026-06-10 07:26:41'),
(105, NULL, 1, 22, 3, 12, 1097, NULL, 'Black Tea', 'Coffee', 'BEVERAGES', 'Cups', 'sachets', 1.000, 'non_stock', 0.00, 10.000, 1, '2026-06-10 07:28:16'),
(106, NULL, 1, 21, 3, 15, 1098, NULL, 'Lemon Tea', 'Tea', 'BEVERAGES', 'Cups', 'Serving', 1.000, 'non_stock', 0.00, 10.000, 1, '2026-06-10 07:28:32'),
(107, NULL, 1, 1, 3, 15, 1099, NULL, 'Black Chocolate', 'APERITIFSS', 'BEVERAGES', 'Cups', 'Serving', 1.000, 'direct', 0.00, 10.000, 1, '2026-06-10 07:28:57'),
(108, NULL, 1, 21, 3, 15, 1100, NULL, 'Green Tea', 'Tea', 'BEVERAGES', 'Cups', 'Serving', 1.000, 'non_stock', 0.00, 10.000, 1, '2026-06-10 07:29:21'),
(109, NULL, 1, 22, 3, 15, 1101, NULL, 'Cafe Latte', 'Coffee', 'BEVERAGES', 'Cups', 'Serving', 1.000, 'recipe', 0.00, 0.000, 1, '2026-06-10 07:53:05'),
(110, NULL, 1, 22, 3, 15, 1102, NULL, 'Cafe Mocha', 'Coffee', 'BEVERAGES', 'Cups', 'Serving', 1.000, 'recipe', 0.00, 10.000, 1, '2026-06-10 07:53:38'),
(111, NULL, 1, 22, 3, 15, 1103, NULL, 'Expresso', 'Coffee', 'BEVERAGES', 'Cups', 'Serving', 1.000, 'non_stock', 0.00, 10.000, 1, '2026-06-10 07:53:55'),
(112, NULL, 1, 22, 3, 15, 1104, NULL, 'Expresso Macchiato', 'Coffee', 'BEVERAGES', 'Cups', 'Serving', 1.000, 'non_stock', 0.00, 10.000, 1, '2026-06-10 07:54:15'),
(113, NULL, 1, 23, 3, 15, 1105, NULL, 'Milk Drink', 'Milk', 'BEVERAGES', 'Cups', 'Serving', 1.000, 'recipe', 0.00, 10.000, 1, '2026-06-10 07:56:08'),
(114, NULL, 1, 23, 3, 15, 1106, NULL, 'Hot Chocolate', 'Milk', 'BEVERAGES', 'Cups', 'Serving', 1.000, 'recipe', 0.00, 10.000, 1, '2026-06-10 07:56:27'),
(115, NULL, 2, 20, 6, 10, 1107, NULL, 'Cheese', 'Sandwich', 'PERISHABLE FOODS', 'Portions', 'KGS', 4.000, 'ingredient', 0.00, 0.000, 1, '2026-06-10 10:46:59'),
(116, NULL, 2, 16, 7, 10, 1108, 'CDR-0064', 'Pearl Basmati Rice 5Kg', 'Accompaniment', 'PERISHABLE FOODS', 'KGs', 'KGS', 5.000, 'ingredient', 0.00, 0.000, 1, '2026-06-10 10:59:52'),
(117, NULL, 2, 16, 6, 16, 1109, NULL, 'Fried Rice', 'Accompaniment', 'PERISHABLE FOODS', 'Portions', 'Portion', 1.000, 'recipe', 0.00, 0.000, 1, '2026-06-10 11:01:31'),
(118, NULL, 2, 17, 9, 18, 1110, NULL, 'Eggs', 'Egg Dish', 'PERISHABLE FOODS', 'Piece', 'Tray', 30.000, 'ingredient', 0.00, 0.000, 1, '2026-06-10 11:13:11'),
(119, NULL, 2, 17, 6, 16, 1111, NULL, 'Plain Omelette', 'Egg Dish', 'PERISHABLE FOODS', 'Portions', 'Portion', 2.000, 'recipe', 0.00, 0.000, 1, '2026-06-10 11:20:19'),
(120, NULL, 2, 17, 6, 16, 1112, NULL, 'Spanish Omelette', 'Egg Dish', 'PERISHABLE FOODS', 'Portions', 'Portion', 2.000, 'recipe', 0.00, 0.000, 1, '2026-06-10 12:10:15'),
(121, NULL, 2, 15, 9, 17, 1113, NULL, 'Avocado', 'PERISHABLE FOODS', 'PERISHABLE FOODS', 'Piece', 'Piece', 1.000, 'ingredient', 0.00, 0.000, 1, '2026-06-10 12:56:42'),
(122, NULL, 2, 15, 9, 17, 1114, 'CDR-0148', 'Iceberg Lettuce', 'PERISHABLE FOODS', 'PERISHABLE FOODS', 'Piece', 'Piece', 1.000, 'non_stock', 0.00, 0.000, 1, '2026-06-10 12:58:59'),
(123, NULL, 2, 15, 9, 17, 1115, 'CDR-0287', 'lettuce iceberg unpacked', 'PERISHABLE FOODS', 'PERISHABLE FOODS', 'Piece', 'Piece', 1.000, 'non_stock', 0.00, 0.000, 1, '2026-06-10 13:00:25'),
(124, NULL, 2, 15, 9, 17, 1116, NULL, 'Mushroom', 'PERISHABLE FOODS', 'PERISHABLE FOODS', 'Piece', 'Piece', 2.000, 'ingredient', 0.00, 0.000, 1, '2026-06-10 13:08:22'),
(125, NULL, 2, 15, 7, 10, 1117, 'CDR-0146', 'Chicken Wings', 'PERISHABLE FOODS', 'PERISHABLE FOODS', 'KGs', 'KGS', 1.000, 'ingredient', 0.00, 0.000, 1, '2026-06-10 13:17:59'),
(126, NULL, 2, 16, 6, 16, 1118, NULL, 'Poussin Fries', 'Accompaniment', 'PERISHABLE FOODS', 'Portions', 'Portion', 1.000, 'recipe', 0.00, 0.000, 1, '2026-06-10 13:19:29'),
(127, NULL, 2, 15, 7, 10, 1119, NULL, 'Fish', 'PERISHABLE FOODS', 'PERISHABLE FOODS', 'KGs', 'KGS', 1.000, 'ingredient', 0.00, 0.000, 1, '2026-06-10 13:23:03'),
(128, NULL, 2, 15, 7, 10, 1120, NULL, 'Cucumber', 'PERISHABLE FOODS', 'PERISHABLE FOODS', 'KGs', 'KGS', 1.000, 'ingredient', 0.00, 0.000, 1, '2026-06-10 13:26:02'),
(129, NULL, 2, 15, 7, 10, 1121, NULL, 'Melon', 'PERISHABLE FOODS', 'PERISHABLE FOODS', 'KGs', 'KGS', 7.000, 'ingredient', 0.00, 0.000, 1, '2026-06-10 13:29:17'),
(130, NULL, 2, 15, 9, 17, 1122, NULL, 'Banana', 'PERISHABLE FOODS', 'PERISHABLE FOODS', 'Piece', 'Piece', 6.000, 'ingredient', 0.00, 0.000, 1, '2026-06-10 13:30:11'),
(131, NULL, 2, 15, 7, 10, 1123, NULL, 'Pineapple', 'PERISHABLE FOODS', 'PERISHABLE FOODS', 'KGs', 'KGS', 1.000, 'ingredient', 0.00, 0.000, 1, '2026-06-10 13:31:06'),
(132, NULL, 2, 20, 6, 16, 1124, NULL, 'Vegetable Sandwich', 'Sandwich', 'PERISHABLE FOODS', 'Portions', 'Portion', 1.000, 'recipe', 0.00, 0.000, 1, '2026-06-10 13:38:25'),
(133, NULL, 2, 20, 6, 16, 1125, NULL, 'Chicken Sandwich', 'Sandwich', 'PERISHABLE FOODS', 'Portions', 'Portion', 1.000, 'recipe', 0.00, 0.000, 1, '2026-06-10 13:38:59'),
(134, NULL, 2, 20, 6, 16, 1126, NULL, 'Cheese Sandwich', 'Sandwich', 'PERISHABLE FOODS', 'Portions', 'Portion', 1.000, 'recipe', 0.00, 0.000, 1, '2026-06-10 13:39:29'),
(135, NULL, 2, 19, 6, 16, 1127, NULL, 'Chicken Sandwich', 'Salad', 'PERISHABLE FOODS', 'Portions', 'Portion', 1.000, 'ingredient', 0.00, 0.000, 1, '2026-06-10 14:24:29'),
(136, NULL, 2, 19, 6, 16, 1128, NULL, 'Cucumber & Avocado', 'Salad', 'PERISHABLE FOODS', 'Portions', 'Portion', 1.000, 'non_stock', 0.00, 0.000, 1, '2026-06-10 14:56:03'),
(137, NULL, 2, 20, 9, 17, 1129, 'CDR-0155', 'festive bread white', 'Sandwich', 'PERISHABLE FOODS', 'Piece', 'Piece', 1.000, 'ingredient', 0.00, 0.000, 1, '2026-06-10 15:13:13'),
(138, NULL, 2, 20, 9, 10, 1130, NULL, 'Tomato', 'Sandwich', 'PERISHABLE FOODS', 'Piece', 'KGS', 1.000, 'ingredient', 0.00, 0.000, 1, '2026-06-10 15:13:57'),
(139, NULL, 2, 20, 9, 10, 1131, NULL, 'Onion', 'Sandwich', 'PERISHABLE FOODS', 'Piece', 'KGS', 1.000, 'ingredient', 0.00, 0.000, 1, '2026-06-10 15:14:28'),
(140, NULL, 1, 13, 2, 19, 1132, NULL, 'Jack Daniels', 'WHISKEYS', 'BEVERAGES', 'Tots', '700ML', 23.000, 'direct', 0.00, 0.000, 1, '2026-06-11 06:39:14');

-- --------------------------------------------------------

--
-- Table structure for table `product_recipe_components`
--

CREATE TABLE `product_recipe_components` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `ingredient_product_id` int(11) NOT NULL,
  `quantity_per_unit` decimal(14,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_recipe_components`
--

INSERT INTO `product_recipe_components` (`id`, `product_id`, `ingredient_product_id`, `quantity_per_unit`) VALUES
(2, 53, 2, 1.000),
(3, 104, 2, 1.000),
(4, 114, 2, 1.000),
(5, 113, 2, 1.000),
(9, 119, 118, 2.000),
(15, 99, 121, 1.000),
(16, 99, 122, 1.000),
(20, 93, 125, 1.000),
(21, 94, 125, 1.000),
(22, 96, 127, 1.000),
(23, 88, 118, 2.000),
(24, 89, 118, 2.000),
(25, 102, 118, 2.000),
(26, 102, 115, 1.000),
(27, 126, 103, 1.000),
(28, 117, 116, 1.000),
(29, 87, 116, 1.000),
(30, 86, 116, 1.000),
(33, 92, 47, 1.000),
(34, 92, 124, 2.000),
(35, 95, 47, 1.000),
(36, 97, 121, 1.000),
(37, 97, 122, 1.000),
(38, 97, 47, 1.000),
(48, 98, 121, 1.000),
(49, 98, 130, 1.000),
(50, 98, 129, 1.000),
(51, 98, 131, 1.000),
(54, 136, 121, 1.000),
(55, 136, 128, 1.000),
(60, 132, 128, 1.000),
(61, 132, 122, 1.000),
(62, 132, 139, 1.000),
(63, 132, 138, 1.000),
(64, 132, 137, 2.000),
(65, 101, 115, 1.000),
(66, 101, 137, 2.000),
(67, 101, 138, 1.000),
(68, 134, 137, 2.000),
(69, 134, 115, 1.000),
(70, 109, 2, 1.000),
(71, 110, 2, 1.000),
(72, 56, 135, 1.000);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `po_number` varchar(60) NOT NULL,
  `status` enum('draft','ordered','received','cancelled') NOT NULL DEFAULT 'draft',
  `ordered_by` int(11) DEFAULT NULL,
  `ordered_at` datetime DEFAULT NULL,
  `received_at` datetime DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_items`
--

CREATE TABLE `purchase_order_items` (
  `id` int(11) NOT NULL,
  `purchase_order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` decimal(14,3) NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `type` varchar(60) NOT NULL,
  `filters` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`filters`)),
  `generated_by` int(11) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_tables`
--

CREATE TABLE `restaurant_tables` (
  `id` int(11) NOT NULL,
  `table_name` varchar(80) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`permissions`)),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `permissions`, `created_at`) VALUES
(1, 'Admin', 'admin', '{\"all\": true}', '2026-06-04 12:41:35'),
(2, 'Manager', 'manager', '{\"authorize_orders\": true, \"reports\": true, \"operations\": true}', '2026-06-04 12:41:35'),
(3, 'Cashier', 'cashier', '{\"create_orders\": true, \"print_tickets\": true}', '2026-06-04 12:41:35'),
(4, 'Service', 'waiter', '{\"create_orders\": true, \"print_tickets\": true}', '2026-06-04 12:41:35'),
(5, 'Statistics and Accounts', 'statistics_accounts', '{\"reports\": true, \"inventory\": true, \"administration\": true, \"create_orders\": false, \"authorize_orders\": false}', '2026-06-08 10:41:08');

-- --------------------------------------------------------

--
-- Table structure for table `selling_units`
--

CREATE TABLE `selling_units` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `selling_units`
--

INSERT INTO `selling_units` (`id`, `name`, `is_active`) VALUES
(1, 'Glass', 1),
(2, 'Tots', 1),
(3, 'Cups', 1),
(4, 'Can', 1),
(5, 'Bottle', 1),
(6, 'Portions', 1),
(7, 'KGs', 1),
(8, 'Tray', 1),
(9, 'Piece', 1);

-- --------------------------------------------------------

--
-- Table structure for table `slot_machines`
--

CREATE TABLE `slot_machines` (
  `id` int(11) NOT NULL,
  `machine_number` varchar(40) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slot_machines`
--

INSERT INTO `slot_machines` (`id`, `machine_number`, `is_active`) VALUES
(1, '1001', 1),
(2, '1002', 1),
(3, '1003', 1),
(4, '1004', 1),
(5, '1005', 1),
(6, '1006', 1),
(7, '2001', 1),
(8, '3001', 1),
(9, '3002', 1),
(10, '3003', 1),
(11, '3005', 1),
(12, '3006', 1),
(13, '3007', 1),
(14, '3008', 1),
(15, '3010', 1),
(16, '3011', 1),
(17, '3012', 1),
(18, '3013', 1),
(19, '3014', 1),
(20, '3015', 1),
(21, '3016', 1),
(22, '3017', 1),
(23, '3018', 1),
(24, '3019', 1),
(25, '3020', 1),
(26, '3021', 1),
(27, '3023', 1),
(28, '3024', 1),
(29, '3025', 1),
(30, '3026', 1),
(31, '4001', 1),
(32, '4002', 1),
(33, '4003', 1),
(34, '4004', 1),
(35, '4005', 1),
(36, '4006', 1),
(37, '5001', 1),
(38, '5002', 1),
(39, '5003', 1),
(40, '5004', 1),
(41, '5005', 1),
(42, '6003', 1),
(43, '6004', 1),
(44, '6005', 1),
(45, '6006', 1),
(46, '1008', 1),
(47, '1010', 1),
(48, '1011', 1),
(49, '1012', 1),
(50, '1013', 1),
(51, '1014', 1),
(52, '3027', 1),
(53, '3028', 1),
(54, '3029', 1),
(55, '3030', 1),
(56, '3031', 1),
(57, '3032', 1),
(58, '3037', 1),
(59, '3039', 1),
(60, '3041', 1),
(61, '3042', 1),
(62, '3043', 1),
(63, '3044', 1),
(64, '3045', 1),
(65, '3046', 1),
(66, '3047', 1),
(67, '4007', 1),
(68, '4008', 1),
(69, '4009', 1),
(70, '4010', 1),
(71, '4011', 1),
(72, '5006', 1),
(73, '5007', 1),
(74, '5008', 1),
(75, '6001', 1),
(76, '6002', 1),
(77, '7000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `full_name` varchar(120) NOT NULL,
  `department` varchar(80) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `full_name`, `department`, `is_active`) VALUES
(1, 'Christopher Mwangangi', NULL, 1),
(2, 'Robert Walekhwa', NULL, 1),
(3, 'Christopher Manzi', NULL, 1),
(4, 'Dorothy Orawo', NULL, 1),
(5, 'Edwin Kangi', NULL, 1),
(6, 'Emily Kendi', NULL, 1),
(7, 'Tom Odallo', NULL, 1),
(8, 'John Mirangi', NULL, 1),
(9, 'Eric Mutuma', NULL, 1),
(10, 'Stanley Korir', NULL, 1),
(11, 'Francis Ng\'ang\'a', NULL, 1),
(12, 'Franklyne Imbali', NULL, 1),
(13, 'Kingsly Mungisira', NULL, 1),
(14, 'Beatrice Malonza', NULL, 1),
(15, 'Gloria Kiilu', NULL, 1),
(16, 'Nickson Maina', NULL, 1),
(17, 'Isaac Lusinga', NULL, 1),
(18, 'Sammy Kimani', NULL, 1),
(19, 'Manoah Mutambi', NULL, 1),
(20, 'Francisca Mwelu', NULL, 1),
(21, 'DAVID OMONDI', NULL, 1),
(22, 'Morris Mulewa', NULL, 1),
(23, 'CHRISTINE LULIA', NULL, 1),
(24, 'PHILLIP NZAI', NULL, 1),
(25, 'Collins Inzai', NULL, 1),
(26, 'Esther Mwango', NULL, 1),
(27, 'Irene Butiya', NULL, 1),
(28, 'Ann Wangeci', NULL, 1),
(29, 'Immaculate Munyatia', NULL, 1),
(30, 'Denis Kamara', NULL, 1),
(31, 'sam nyachani', NULL, 1),
(32, 'Daniel Maina', NULL, 1),
(33, 'Hillary Otieno', NULL, 1),
(34, 'Stacy Ochieng', NULL, 1),
(35, 'Bravin Otieno', NULL, 1),
(36, 'Samwel Mbugu', NULL, 1),
(37, 'Vincent Thuku', NULL, 1),
(38, 'Pethias Ochieng', NULL, 1),
(39, 'kevin thuo', NULL, 1),
(40, 'Rueben Murage', NULL, 1),
(41, 'SIMON HAMISI', NULL, 1),
(42, 'SAKINA HASMAN', NULL, 1),
(43, 'MARY CHEGE', NULL, 1),
(44, 'Kelvin Kiplangat', NULL, 1),
(45, 'Jentah Atieno', NULL, 1),
(46, 'Ramadhan Kahindi', NULL, 1),
(47, 'Paul Onyango', NULL, 1),
(48, 'Simon Njoroge', NULL, 1),
(49, 'Collins Mutiso', NULL, 1),
(50, 'Sailor', NULL, 1),
(51, 'Brian', NULL, 1),
(52, 'Winnie', NULL, 1),
(53, 'Kennedy Ambundo', NULL, 1),
(54, 'Florence Mutheu', NULL, 1),
(55, 'Patricia', NULL, 1),
(56, 'Stallon Oluoch', NULL, 1),
(57, 'Joan Maritim', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stock_units`
--

CREATE TABLE `stock_units` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_units`
--

INSERT INTO `stock_units` (`id`, `name`, `is_active`) VALUES
(1, '12\'s', 1),
(2, '1Kg', 1),
(3, '1LT', 1),
(4, '50g', 1),
(5, '5LTR', 1),
(6, '750ML', 1),
(7, 'BOX', 1),
(8, 'BTLS', 1),
(9, 'CANS', 1),
(10, 'KGS', 1),
(11, 'LTRS', 1),
(12, 'sachets', 1),
(13, '1.25LT', 1),
(14, 'ML', 1),
(15, 'Serving', 1),
(16, 'Portion', 1),
(17, 'Piece', 1),
(18, 'Tray', 1),
(19, '700ML', 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_requests`
--

CREATE TABLE `store_requests` (
  `id` int(11) NOT NULL,
  `request_no` varchar(40) NOT NULL,
  `product_id` int(11) NOT NULL,
  `requested_stock_qty` decimal(14,3) NOT NULL,
  `requested_selling_qty` decimal(14,3) NOT NULL,
  `issued_stock_qty` decimal(14,3) DEFAULT NULL,
  `issued_selling_qty` decimal(14,3) DEFAULT NULL,
  `status` enum('pending','authorized','rejected','issued') NOT NULL DEFAULT 'pending',
  `notes` text DEFAULT NULL,
  `requested_by` int(11) NOT NULL,
  `authorized_by` int(11) DEFAULT NULL,
  `authorized_at` datetime DEFAULT NULL,
  `issued_by` int(11) DEFAULT NULL,
  `issued_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_groups`
--

CREATE TABLE `sub_groups` (
  `id` int(11) NOT NULL,
  `main_group_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_groups`
--

INSERT INTO `sub_groups` (`id`, `main_group_id`, `name`, `is_active`) VALUES
(1, 1, 'APERITIFSS', 1),
(2, 1, 'BEERS', 1),
(3, 1, 'BRANDYS', 1),
(4, 1, 'GIN', 1),
(5, 1, 'HOT BEVERAGES', 1),
(6, 1, 'LIQUEURS', 1),
(7, 1, 'PERISHABLE BEVERAGES', 1),
(8, 1, 'RED WINES', 1),
(9, 1, 'SOFT DRINKS', 1),
(10, 1, 'TEQUILAS', 1),
(11, 1, 'VODKAS', 1),
(12, 1, 'WATER', 1),
(13, 1, 'WHISKEYS', 1),
(14, 1, 'WHITE WINES', 1),
(15, 2, 'PERISHABLE FOODS', 1),
(16, 2, 'Accompaniment', 1),
(17, 2, 'Egg Dish', 1),
(18, 2, 'Main Dish', 1),
(19, 2, 'Salad', 1),
(20, 2, 'Sandwich', 1),
(21, 1, 'Tea', 1),
(22, 1, 'Coffee', 1),
(23, 1, 'Milk', 1),
(24, 3, 'Water', 1);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(160) NOT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `phone`, `email`, `address`, `is_active`) VALUES
(1, 'Default Beverage Supplier', '0700000000', 'bar@example.com', NULL, 1),
(2, 'Default Kitchen Supplier', '0711111111', 'kitchen@example.com', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(11) NOT NULL,
  `setting_key` varchar(100) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `setting_key`, `setting_value`, `updated_at`) VALUES
(1, 'casino_name', 'BETKEN POS', '2026-06-05 08:52:36'),
(2, 'currency', 'KES', NULL),
(3, 'require_customer_authorization', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `full_name` varchar(120) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `pin_hash` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `username`, `full_name`, `password_hash`, `pin_hash`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'System Administrator', '$2y$10$pYJN4tI7JSQoVtrwyjIYSePC5Khc7.JFa6LPTdDU7lR3joCo.tv.2', '$2y$10$CzpZ4bSmtGvN9tpyurS3P.SgBmQlPfP9vi3NDR9q2xFAahhTJNXmm', 1, '2026-06-04 12:41:35', NULL),
(2, 2, 'manager', 'POS Manager', '$2y$10$pYJN4tI7JSQoVtrwyjIYSePC5Khc7.JFa6LPTdDU7lR3joCo.tv.2', '$2y$10$CzpZ4bSmtGvN9tpyurS3P.SgBmQlPfP9vi3NDR9q2xFAahhTJNXmm', 1, '2026-06-04 12:41:35', NULL),
(3, 3, 'cashier', 'Main Cashier', '$2y$10$pYJN4tI7JSQoVtrwyjIYSePC5Khc7.JFa6LPTdDU7lR3joCo.tv.2', '$2y$10$CzpZ4bSmtGvN9tpyurS3P.SgBmQlPfP9vi3NDR9q2xFAahhTJNXmm', 1, '2026-06-04 12:41:35', NULL),
(5, 5, 'ken', 'Kennedy Ambundo', '$2y$10$kBYIdbDY.I3nn7Mal.NIBO5i6cdWGJGD8idNlaG6ZIEx936cnNdEC', '$2y$10$/Rl95W0KSF3wFRZ/00h1K.QUpHQmG1YPrXWESbFU4sMt0cACprGE2', 1, '2026-06-08 10:44:22', NULL),
(6, 2, 'jentah', 'Jentah Atieno', '$2y$10$xuyDdLWJz9VrmGZ0AU..d.FkqoFpRwklgJDEih2Lum4wggP2YNG6G', '$2y$10$jf892nuDhrwrjZDYXb2/oOsFb51bg.bQrSgxDrq5NMnUi4HqUStj2', 1, '2026-06-08 11:29:50', NULL),
(7, 5, 'anne', 'Anne Wangeci', '$2y$10$BrqJkhizwIVtivgjdXIdUeRlfoJwICIAfPxFW0Ptkrxas33zcqRW.', '$2y$10$6f92fA2Ccu64MUvciVMC7uuVhQC17nAZLniH/TSvsRQB6VcM/pQA.', 1, '2026-06-10 08:09:37', '2026-06-10 08:26:20'),
(8, 4, 'ana', 'Anastacia', '$2y$10$LQDewgEi0PYGLvTPZTYRhe09O8VNYch5lONwv7/Bo2/royYqN289u', '$2y$10$O3Cb5NjYGSb9A.KjS9sPWeTbrZ6hBH2B.sWQsc2fTnFD3CNSbn7Ki', 1, '2026-06-11 08:26:29', NULL),
(9, 4, 'terry', 'Terry', '$2y$10$hpbKXkYXykLr.nGLbILzAe4X2Bv9haIENSWPdg/NpRe.AxVXcpZoe', '$2y$10$pqRKun9b/nOEF8mqHoE1Te8QRXKz7Ryj6xhfA7hzCq3na535snm9C', 1, '2026-06-11 08:28:05', NULL),
(10, 4, 'Periz', 'Periz', '$2y$10$p33A5wkT72f5RgCOyZwQkeT6RHEj2OThaq0LDwXEJ0Mat7YynXImO', '$2y$10$r.WJ725gXO1tZGehz93NNu/v0XUSBPO3sHskxtmUpk/qmIFoXcLC6', 1, '2026-06-11 08:28:30', NULL),
(11, 2, 'Davie', 'David', '$2y$10$Imr2WkIs/KTb0p3F6mFR8.v8HD7wuO70ouxPsmUZva6aIazgncWAS', '$2y$10$njmgumo1.7.8yFYzcOQB.uLXsTHfLxwQqRvkg3Q9z4OHeR7Umrkji', 1, '2026-06-11 08:35:04', NULL),
(12, 2, 'luzinga', 'Luzinga', '$2y$10$argVXxWmRfxMyN2p4gcbC.7rRVDkbuNWSFjUa3QqpQBbvqk2kwPuq', '$2y$10$0NufynrS0/dz72PphkV3xuW/Hy1aYUN34vyty6/j7EyD2NaBCsr3W', 1, '2026-06-11 08:35:38', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_audit_user` (`user_id`),
  ADD KEY `idx_audit_action` (`action`);

--
-- Indexes for table `authorizations`
--
ALTER TABLE `authorizations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_authorizations_order` (`order_id`),
  ADD KEY `fk_authorizations_manager` (`manager_id`);

--
-- Indexes for table `bingo_sessions`
--
ALTER TABLE `bingo_sessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `session_time` (`session_time`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_category_department` (`name`,`department`),
  ADD KEY `idx_categories_department` (`department`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `gaming_tables`
--
ALTER TABLE `gaming_tables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_gaming_table` (`name`,`area`),
  ADD KEY `idx_gaming_tables_area` (`area`);

--
-- Indexes for table `inspectors`
--
ALTER TABLE `inspectors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_id` (`product_id`);

--
-- Indexes for table `inventory_transactions`
--
ALTER TABLE `inventory_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_inventory_transactions_product` (`product_id`),
  ADD KEY `idx_inventory_transactions_type` (`type`),
  ADD KEY `fk_inventory_transactions_user` (`created_by`);

--
-- Indexes for table `main_groups`
--
ALTER TABLE `main_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_main_group_department` (`name`,`department`),
  ADD KEY `idx_main_groups_department` (`department`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_number` (`order_number`),
  ADD KEY `idx_orders_status` (`status`),
  ADD KEY `idx_orders_source` (`source_type`),
  ADD KEY `idx_orders_created_at` (`created_at`),
  ADD KEY `fk_orders_created_by` (`created_by`),
  ADD KEY `fk_orders_authorized_by` (`authorized_by`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_order_items_order` (`order_id`),
  ADD KEY `idx_order_items_product` (`product_id`),
  ADD KEY `idx_order_items_department` (`department`);

--
-- Indexes for table `pos_store_issue_sync`
--
ALTER TABLE `pos_store_issue_sync`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `store_requisition_item_id` (`store_requisition_item_id`),
  ADD KEY `idx_pos_store_issue_sync_req` (`store_requisition_id`),
  ADD KEY `fk_pos_store_issue_sync_product` (`product_id`);

--
-- Indexes for table `printers`
--
ALTER TABLE `printers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_printers_department` (`department`);

--
-- Indexes for table `print_logs`
--
ALTER TABLE `print_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_print_logs_order` (`order_id`),
  ADD KEY `fk_print_logs_printer` (`printer_id`),
  ADD KEY `fk_print_logs_user` (`printed_by`);

--
-- Indexes for table `production_batches`
--
ALTER TABLE `production_batches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `batch_number` (`batch_number`),
  ADD KEY `fk_production_raw_product` (`raw_product_id`),
  ADD KEY `fk_production_user` (`created_by`);

--
-- Indexes for table `production_batch_outputs`
--
ALTER TABLE `production_batch_outputs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_production_output` (`production_batch_id`,`product_id`),
  ADD KEY `fk_production_output_product` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_products_item_code` (`item_code`),
  ADD UNIQUE KEY `sku` (`sku`),
  ADD KEY `idx_products_name` (`name`),
  ADD KEY `idx_products_category` (`category_id`);

--
-- Indexes for table `product_recipe_components`
--
ALTER TABLE `product_recipe_components`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_recipe_component` (`product_id`,`ingredient_product_id`),
  ADD KEY `fk_recipe_ingredient` (`ingredient_product_id`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `po_number` (`po_number`),
  ADD KEY `fk_purchase_orders_supplier` (`supplier_id`),
  ADD KEY `fk_purchase_orders_user` (`ordered_by`);

--
-- Indexes for table `purchase_order_items`
--
ALTER TABLE `purchase_order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_po_items_po` (`purchase_order_id`),
  ADD KEY `fk_po_items_product` (`product_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_reports_user` (`generated_by`);

--
-- Indexes for table `restaurant_tables`
--
ALTER TABLE `restaurant_tables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `table_name` (`table_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `selling_units`
--
ALTER TABLE `selling_units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `slot_machines`
--
ALTER TABLE `slot_machines`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `machine_number` (`machine_number`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_staff_active` (`is_active`);

--
-- Indexes for table `stock_units`
--
ALTER TABLE `stock_units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `store_requests`
--
ALTER TABLE `store_requests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `request_no` (`request_no`),
  ADD KEY `idx_store_requests_status` (`status`),
  ADD KEY `idx_store_requests_product` (`product_id`),
  ADD KEY `fk_store_requests_requested_by` (`requested_by`),
  ADD KEY `fk_store_requests_authorized_by` (`authorized_by`),
  ADD KEY `fk_store_requests_issued_by` (`issued_by`);

--
-- Indexes for table `sub_groups`
--
ALTER TABLE `sub_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_sub_group_main` (`main_group_id`,`name`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_key` (`setting_key`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `fk_users_role` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=523;

--
-- AUTO_INCREMENT for table `authorizations`
--
ALTER TABLE `authorizations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `bingo_sessions`
--
ALTER TABLE `bingo_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gaming_tables`
--
ALTER TABLE `gaming_tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `inspectors`
--
ALTER TABLE `inspectors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `inventory_transactions`
--
ALTER TABLE `inventory_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `main_groups`
--
ALTER TABLE `main_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `pos_store_issue_sync`
--
ALTER TABLE `pos_store_issue_sync`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `printers`
--
ALTER TABLE `printers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `print_logs`
--
ALTER TABLE `print_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `production_batches`
--
ALTER TABLE `production_batches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `production_batch_outputs`
--
ALTER TABLE `production_batch_outputs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `product_recipe_components`
--
ALTER TABLE `product_recipe_components`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_order_items`
--
ALTER TABLE `purchase_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant_tables`
--
ALTER TABLE `restaurant_tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `selling_units`
--
ALTER TABLE `selling_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `slot_machines`
--
ALTER TABLE `slot_machines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `stock_units`
--
ALTER TABLE `stock_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `store_requests`
--
ALTER TABLE `store_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_groups`
--
ALTER TABLE `sub_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authorizations`
--
ALTER TABLE `authorizations`
  ADD CONSTRAINT `fk_authorizations_manager` FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_authorizations_order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `production_batches`
--
ALTER TABLE `production_batches`
  ADD CONSTRAINT `fk_production_raw_product` FOREIGN KEY (`raw_product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `fk_production_user` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `production_batch_outputs`
--
ALTER TABLE `production_batch_outputs`
  ADD CONSTRAINT `fk_production_output_batch` FOREIGN KEY (`production_batch_id`) REFERENCES `production_batches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_production_output_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_recipe_components`
--
ALTER TABLE `product_recipe_components`
  ADD CONSTRAINT `fk_recipe_ingredient` FOREIGN KEY (`ingredient_product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `fk_recipe_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
