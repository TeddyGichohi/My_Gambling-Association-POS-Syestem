-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2026 at 10:32 AM
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
(258, 1, 'create_production_batch', 'production_batches', 2, '::1', '{\"raw_quantity\":10,\"outputs\":{\"56\":\"3\"}}', '2026-06-09 08:28:31');

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
(4, 5, 6, 'authorized', 'Bulk authorization', '2026-06-09 07:03:46');

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
  `quantity` int(11) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `product_id`, `quantity`, `updated_at`) VALUES
(1, 1, 0, NULL),
(2, 2, 624, '2026-06-09 07:03:46'),
(3, 3, 18, '2026-06-08 10:03:47'),
(4, 4, 0, NULL),
(5, 5, 55, '2026-06-08 12:42:14'),
(6, 6, 0, NULL),
(7, 7, 10, '2026-06-08 10:04:52'),
(8, 8, 25, '2026-06-07 14:54:01'),
(9, 9, 0, NULL),
(10, 10, 4, '2026-06-09 06:57:52'),
(11, 11, 13, '2026-06-08 10:04:20'),
(12, 12, 0, '2026-06-09 06:52:41'),
(13, 13, 0, NULL),
(14, 14, 26, '2026-06-09 06:55:35'),
(15, 15, 0, NULL),
(16, 16, 12, '2026-06-09 06:56:35'),
(17, 17, 0, NULL),
(18, 18, 18, '2026-06-08 10:02:26'),
(19, 19, 41, '2026-06-08 12:38:17'),
(20, 20, 0, NULL),
(21, 21, 0, NULL),
(22, 22, 0, NULL),
(23, 23, 45, '2026-06-09 06:54:57'),
(24, 24, 0, NULL),
(25, 25, 36, '2026-06-09 06:54:23'),
(26, 26, 4, '2026-06-09 06:54:12'),
(27, 27, 0, NULL),
(28, 28, 18, '2026-06-09 06:53:00'),
(29, 29, 10, '2026-06-09 06:54:40'),
(30, 30, 12, '2026-06-09 06:52:17'),
(31, 31, 7, '2026-06-08 10:06:48'),
(32, 32, 8, '2026-06-09 06:52:26'),
(33, 33, 9, '2026-06-09 06:55:13'),
(34, 34, 16, '2026-06-08 10:06:07'),
(35, 35, 16, '2026-06-08 10:03:59'),
(36, 36, 0, NULL),
(37, 37, 0, NULL),
(38, 38, 58, '2026-06-08 13:33:18'),
(39, 39, 0, NULL),
(40, 40, 0, NULL),
(41, 41, 50, '2026-06-08 12:39:13'),
(42, 42, 7, '2026-06-08 10:05:52'),
(43, 43, 52, '2026-06-08 13:32:10'),
(44, 45, 8, '2026-06-08 09:59:17'),
(45, 46, 4, '2026-06-09 06:57:02'),
(46, 47, 8, '2026-06-09 08:28:31'),
(49, 50, 0, '2026-06-09 08:04:34'),
(50, 51, 10, '2026-06-09 08:04:34'),
(51, 52, 3, '2026-06-09 08:04:34'),
(52, 53, 0, NULL),
(53, 56, 3, '2026-06-09 08:28:31');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_transactions`
--

CREATE TABLE `inventory_transactions` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `type` enum('stock_in','stock_out','adjustment') NOT NULL,
  `quantity` int(11) NOT NULL,
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
(1, 25, 'adjustment', 37, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 37', '2026-06-08 09:58:37'),
(2, 30, 'adjustment', 27, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 27', '2026-06-08 09:59:02'),
(3, 32, 'adjustment', 19, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 19', '2026-06-08 09:59:08'),
(4, 45, 'adjustment', 8, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 8', '2026-06-08 09:59:17'),
(5, 28, 'adjustment', 19, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 19', '2026-06-08 09:59:29'),
(6, 26, 'adjustment', 5, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 5', '2026-06-08 09:59:40'),
(7, 29, 'adjustment', 11, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 11', '2026-06-08 10:00:56'),
(8, 23, 'adjustment', 42, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 42', '2026-06-08 10:01:24'),
(9, 33, 'adjustment', 17, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 17', '2026-06-08 10:01:46'),
(10, 14, 'adjustment', 38, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 38', '2026-06-08 10:02:03'),
(11, 16, 'adjustment', 33, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 33', '2026-06-08 10:02:12'),
(12, 18, 'adjustment', 18, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 18', '2026-06-08 10:02:26'),
(13, 19, 'adjustment', 8, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 8', '2026-06-08 10:02:43'),
(14, 10, 'adjustment', 4, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 4', '2026-06-08 10:03:19'),
(15, 3, 'adjustment', 18, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 18', '2026-06-08 10:03:47'),
(16, 35, 'adjustment', 16, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 16', '2026-06-08 10:03:59'),
(17, 11, 'adjustment', 13, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 13', '2026-06-08 10:04:20'),
(18, 5, 'adjustment', 30, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 30', '2026-06-08 10:04:38'),
(19, 7, 'adjustment', 10, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 10', '2026-06-08 10:04:52'),
(20, 41, 'adjustment', 25, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 25', '2026-06-08 10:05:38'),
(21, 42, 'adjustment', 7, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 7', '2026-06-08 10:05:52'),
(22, 34, 'adjustment', 16, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 16', '2026-06-08 10:06:07'),
(23, 38, 'adjustment', 19, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 19', '2026-06-08 10:06:21'),
(24, 31, 'adjustment', 7, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 7', '2026-06-08 10:06:48'),
(25, 2, 'adjustment', 1875, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 1875', '2026-06-08 10:11:16'),
(26, 43, 'adjustment', 16, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 0 to 16', '2026-06-08 10:14:51'),
(27, 30, 'adjustment', 2, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 27 to 29', '2026-06-08 10:29:02'),
(28, 43, 'stock_out', -1, 'order', 1, NULL, 6, 'Order authorization deduction in selling units', '2026-06-08 11:58:09'),
(29, 46, 'stock_in', 8, 'store_system_issue', 8364, NULL, 1, 'Synced from Store Management requisition REQ-3267', '2026-06-08 12:36:43'),
(30, 2, 'stock_in', 3750, 'store_system_issue', 8289, NULL, 1, 'Synced from Store Management requisition REQ-3237', '2026-06-08 12:37:46'),
(31, 12, 'stock_in', 66, 'store_system_issue', 8350, NULL, 1, 'Synced from Store Management requisition REQ-3262', '2026-06-08 12:38:17'),
(32, 19, 'stock_in', 33, 'store_system_issue', 8351, NULL, 1, 'Synced from Store Management requisition REQ-3262', '2026-06-08 12:38:17'),
(33, 29, 'stock_in', 33, 'store_system_issue', 8352, NULL, 1, 'Synced from Store Management requisition REQ-3262', '2026-06-08 12:38:17'),
(34, 43, 'stock_in', 20, 'store_system_issue', 8354, NULL, 1, 'Synced from Store Management requisition REQ-3262', '2026-06-08 12:38:17'),
(35, 38, 'stock_in', 20, 'store_system_issue', 8355, NULL, 1, 'Synced from Store Management requisition REQ-3262', '2026-06-08 12:38:17'),
(36, 33, 'stock_in', 25, 'store_system_issue', 8310, NULL, 1, 'Synced from Store Management requisition REQ-3248', '2026-06-08 12:39:13'),
(37, 12, 'stock_in', 132, 'store_system_issue', 8311, NULL, 1, 'Synced from Store Management requisition REQ-3248', '2026-06-08 12:39:13'),
(38, 14, 'stock_in', 33, 'store_system_issue', 8312, NULL, 1, 'Synced from Store Management requisition REQ-3248', '2026-06-08 12:39:13'),
(39, 16, 'stock_in', 33, 'store_system_issue', 8313, NULL, 1, 'Synced from Store Management requisition REQ-3248', '2026-06-08 12:39:13'),
(40, 29, 'stock_in', 33, 'store_system_issue', 8314, NULL, 1, 'Synced from Store Management requisition REQ-3248', '2026-06-08 12:39:13'),
(41, 30, 'stock_in', 33, 'store_system_issue', 8315, NULL, 1, 'Synced from Store Management requisition REQ-3248', '2026-06-08 12:39:13'),
(42, 43, 'stock_in', 50, 'store_system_issue', 8316, NULL, 1, 'Synced from Store Management requisition REQ-3248', '2026-06-08 12:39:13'),
(43, 41, 'stock_in', 25, 'store_system_issue', 8317, NULL, 1, 'Synced from Store Management requisition REQ-3248', '2026-06-08 12:39:13'),
(44, 38, 'stock_in', 100, 'store_system_issue', 8318, NULL, 1, 'Synced from Store Management requisition REQ-3248', '2026-06-08 12:39:13'),
(45, 2, 'stock_in', 1875, 'store_system_issue', 8334, NULL, 1, 'Synced from Store Management requisition REQ-3254', '2026-06-08 12:40:44'),
(46, 10, 'stock_in', 24, 'store_system_issue', 8349, NULL, 1, 'Synced from Store Management requisition REQ-3261', '2026-06-08 12:42:08'),
(47, 26, 'stock_in', 48, 'store_system_issue', 8343, NULL, 1, 'Synced from Store Management requisition REQ-3260', '2026-06-08 12:42:13'),
(48, 25, 'stock_in', 8, 'store_system_issue', 8344, NULL, 1, 'Synced from Store Management requisition REQ-3260', '2026-06-08 12:42:14'),
(49, 23, 'stock_in', 24, 'store_system_issue', 8345, NULL, 1, 'Synced from Store Management requisition REQ-3260', '2026-06-08 12:42:14'),
(50, 5, 'stock_in', 25, 'store_system_issue', 8346, NULL, 1, 'Synced from Store Management requisition REQ-3260', '2026-06-08 12:42:14'),
(51, 10, 'stock_in', 48, 'store_system_issue', 8348, NULL, 1, 'Synced from Store Management requisition REQ-3260', '2026-06-08 12:42:14'),
(52, 26, 'stock_in', 40, 'store_system_issue', 8363, NULL, 1, 'Synced from Store Management requisition REQ-3266', '2026-06-08 12:43:14'),
(53, 46, 'stock_in', 12, 'store_system_issue', 8340, NULL, 1, 'Synced from Store Management requisition REQ-3257', '2026-06-08 12:43:32'),
(54, 2, 'adjustment', -6875, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 7500 to 625', '2026-06-08 13:16:51'),
(55, 46, 'adjustment', -20, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 20 to 0', '2026-06-08 13:17:36'),
(56, 38, 'adjustment', -101, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 139 to 38', '2026-06-08 13:20:11'),
(57, 43, 'adjustment', -53, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 85 to 32', '2026-06-08 13:23:08'),
(58, 43, 'adjustment', 20, 'admin_stock_edit', NULL, NULL, 1, 'Entry Error', '2026-06-08 13:32:10'),
(59, 38, 'adjustment', 20, 'admin_stock_edit', NULL, NULL, 1, 'Entry Error', '2026-06-08 13:33:18'),
(60, 16, 'adjustment', -28, 'admin_stock_edit', NULL, NULL, 1, 'Entry Error', '2026-06-08 13:41:26'),
(61, 16, 'adjustment', -5, 'admin_stock_edit', NULL, NULL, 1, 'Entry Error', '2026-06-08 13:42:06'),
(62, 14, 'adjustment', -33, 'admin_stock_edit', NULL, NULL, 1, 'Current stock edited from 71 to 38', '2026-06-08 13:42:18'),
(63, 26, 'stock_out', -1, 'order', 2, NULL, 1, 'Order authorization deduction in selling units', '2026-06-08 13:58:38'),
(64, 23, 'stock_out', -1, 'order', 4, NULL, 1, 'Order authorization deduction in selling units', '2026-06-08 16:24:13'),
(65, 30, 'adjustment', -50, 'admin_stock_edit', NULL, NULL, 5, 'Current stock edited from 62 to 12', '2026-06-09 06:52:17'),
(66, 32, 'adjustment', -11, 'admin_stock_edit', NULL, NULL, 5, 'Current stock edited from 19 to 8', '2026-06-09 06:52:26'),
(67, 12, 'adjustment', -198, 'admin_stock_edit', NULL, NULL, 5, 'Current stock edited from 198 to 0', '2026-06-09 06:52:41'),
(68, 28, 'adjustment', -1, 'admin_stock_edit', NULL, NULL, 5, 'Current stock edited from 19 to 18', '2026-06-09 06:53:00'),
(69, 26, 'adjustment', -88, 'admin_stock_edit', NULL, NULL, 5, 'Current stock edited from 92 to 4', '2026-06-09 06:54:12'),
(70, 25, 'adjustment', -9, 'admin_stock_edit', NULL, NULL, 5, 'Current stock edited from 45 to 36', '2026-06-09 06:54:23'),
(71, 29, 'adjustment', -67, 'admin_stock_edit', NULL, NULL, 5, 'Current stock edited from 77 to 10', '2026-06-09 06:54:41'),
(72, 23, 'adjustment', -20, 'admin_stock_edit', NULL, NULL, 5, 'Current stock edited from 65 to 45', '2026-06-09 06:54:57'),
(73, 33, 'adjustment', -33, 'admin_stock_edit', NULL, NULL, 5, 'Current stock edited from 42 to 9', '2026-06-09 06:55:13'),
(74, 14, 'adjustment', -12, 'admin_stock_edit', NULL, NULL, 5, 'Current stock edited from 38 to 26', '2026-06-09 06:55:35'),
(75, 16, 'adjustment', -21, 'admin_stock_edit', NULL, NULL, 5, 'Current stock edited from 33 to 12', '2026-06-09 06:56:35'),
(76, 46, 'adjustment', 4, 'admin_stock_edit', NULL, NULL, 5, 'Current stock edited from 0 to 4', '2026-06-09 06:57:02'),
(77, 10, 'adjustment', -72, 'admin_stock_edit', NULL, NULL, 5, 'Current stock edited from 76 to 4', '2026-06-09 06:57:52'),
(78, 2, 'stock_out', -1, 'order', 5, NULL, 6, 'Order authorization deduction in selling units', '2026-06-09 07:03:46'),
(79, 47, 'adjustment', -18, 'admin_stock_edit', NULL, NULL, 5, 'Current stock edited from 36 to 18', '2026-06-09 07:29:01'),
(84, 47, 'stock_out', -10, 'production_batch', 2, NULL, 1, 'Raw stock used for preparation PREP-20260609-102830-91', '2026-06-09 08:28:31'),
(85, 56, 'stock_in', 3, 'production_batch', 2, NULL, 1, 'Prepared portions from PREP-20260609-102830-91', '2026-06-09 08:28:31');

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
(2, 'PERISHABLE FOODS', 'kitchen', 1);

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
(3, 'POS-20260608-34395', 'main_pit', 'Black Jack', 'fgt', 'pending', '', 1, NULL, NULL, '2026-06-08 14:11:31'),
(4, 'POS-20260608-78046', 'main_pit', 'Black Jack', 'test', 'authorized', '', 1, 1, '2026-06-08 19:24:13', '2026-06-08 16:23:33'),
(5, 'POS-20260609-58407', 'slots', '6001', 'moxine', 'authorized', '', 6, 6, '2026-06-09 10:03:46', '2026-06-09 07:02:54');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `department` enum('bar','kitchen') NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `department`, `quantity`, `unit_price`, `notes`) VALUES
(1, 1, 43, 'bar', 1, 0.00, ''),
(2, 2, 26, 'bar', 1, 0.00, ''),
(3, 3, 17, 'bar', 3, 0.00, ''),
(4, 4, 23, 'bar', 1, 0.00, ''),
(5, 5, 2, 'bar', 1, 0.00, 'cappuccino');

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
  `pos_quantity` int(11) NOT NULL,
  `store_issued_at` datetime DEFAULT NULL,
  `synced_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pos_store_issue_sync`
--

INSERT INTO `pos_store_issue_sync` (`id`, `store_requisition_id`, `store_requisition_item_id`, `store_item_id`, `product_id`, `store_quantity`, `pos_quantity`, `store_issued_at`, `synced_at`) VALUES
(1, 3267, 8364, 293, 46, 2.00, 8, '2026-06-08 14:32:46', '2026-06-08 12:36:43'),
(2, 3237, 8289, 149, 2, 30.00, 3750, '2026-06-08 14:33:39', '2026-06-08 12:37:46'),
(3, 3262, 8350, 231, 12, 2.00, 66, '2026-06-08 14:31:03', '2026-06-08 12:38:17'),
(4, 3262, 8351, 154, 19, 1.00, 33, '2026-06-08 14:31:03', '2026-06-08 12:38:17'),
(5, 3262, 8352, 30, 29, 1.00, 33, '2026-06-08 14:31:03', '2026-06-08 12:38:17'),
(6, 3262, 8354, 25, 43, 10.00, 20, '2026-06-08 14:31:03', '2026-06-08 12:38:17'),
(7, 3262, 8355, 24, 38, 10.00, 20, '2026-06-08 14:31:03', '2026-06-08 12:38:17'),
(8, 3248, 8310, 155, 33, 1.00, 25, '2026-06-06 14:50:09', '2026-06-08 12:39:13'),
(9, 3248, 8311, 231, 12, 4.00, 132, '2026-06-06 14:50:09', '2026-06-08 12:39:13'),
(10, 3248, 8312, 44, 14, 1.00, 33, '2026-06-06 14:50:09', '2026-06-08 12:39:13'),
(11, 3248, 8313, 43, 16, 1.00, 33, '2026-06-06 14:50:09', '2026-06-08 12:39:13'),
(12, 3248, 8314, 30, 29, 1.00, 33, '2026-06-06 14:50:09', '2026-06-08 12:39:13'),
(13, 3248, 8315, 29, 30, 1.00, 33, '2026-06-06 14:50:09', '2026-06-08 12:39:13'),
(14, 3248, 8316, 25, 43, 25.00, 50, '2026-06-06 14:50:09', '2026-06-08 12:39:13'),
(15, 3248, 8317, 225, 41, 25.00, 25, '2026-06-06 14:50:09', '2026-06-08 12:39:13'),
(16, 3248, 8318, 24, 38, 50.00, 100, '2026-06-06 14:50:09', '2026-06-08 12:39:13'),
(17, 3254, 8334, 149, 2, 15.00, 1875, '2026-06-08 14:29:11', '2026-06-08 12:40:44'),
(18, 3261, 8349, 296, 10, 24.00, 24, '2026-06-08 14:30:38', '2026-06-08 12:42:08'),
(19, 3260, 8343, 32, 26, 6.00, 48, '2026-06-08 14:30:28', '2026-06-08 12:42:13'),
(20, 3260, 8344, 38, 25, 1.00, 8, '2026-06-08 14:30:28', '2026-06-08 12:42:14'),
(21, 3260, 8345, 34, 23, 3.00, 24, '2026-06-08 14:30:28', '2026-06-08 12:42:14'),
(22, 3260, 8346, 37, 5, 5.00, 25, '2026-06-08 14:30:28', '2026-06-08 12:42:14'),
(23, 3260, 8348, 296, 10, 48.00, 48, '2026-06-08 14:30:28', '2026-06-08 12:42:14'),
(24, 3266, 8363, 32, 26, 5.00, 40, '2026-06-08 14:32:29', '2026-06-08 12:43:14'),
(25, 3257, 8340, 293, 46, 3.00, 12, '2026-06-08 14:29:55', '2026-06-08 12:43:32');

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
(4, 5, 10, 'bar', '                BETKEN POS                \r\n           COMPLIMENTARY ORDER            \r\n                 BAR COPY                 \r\n------------------------------------------\r\nReceipt #:              POS-20260609-58407\r\nService Area:                        SLOTS\r\nMachine:                              6001\r\n------------------------------------------\r\n                 CUSTOMER                 \r\n                  moxine                  \r\n\r\nServed By:                   Jentah Atieno\r\nUser Role:                         Manager\r\n------------------------------------------\r\nQTY  ITEM                             UNIT\r\n------------------------------------------\r\n1    Milk                             Cups\r\n    Note: cappuccino\r\n------------------------------------------\r\nTotal Quantity:                          1\r\n==========================================\r\n                ORDER DATE                \r\n          09/06/2026 10:02:54 AM          \r\n------------------------------------------\r\n              AUTHORIZED BY               \r\n              Jentah Atieno               \r\n          09/06/2026 10:03:46 AM          \r\n==========================================\r\n            Status: AUTHORIZED            \r\n                Thank you                 \r\n\r\n\r\n', 'storage/prints/order-5-bar-20260609090346.txt', 'printed', 6, 0, '2026-06-09 07:03:46');

-- --------------------------------------------------------

--
-- Table structure for table `production_batches`
--

CREATE TABLE `production_batches` (
  `id` int(11) NOT NULL,
  `batch_number` varchar(40) NOT NULL,
  `raw_product_id` int(11) NOT NULL,
  `raw_quantity` int(11) NOT NULL,
  `notes` text DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `production_batches`
--

INSERT INTO `production_batches` (`id`, `batch_number`, `raw_product_id`, `raw_quantity`, `notes`, `created_by`, `created_at`) VALUES
(2, 'PREP-20260609-102830-91', 47, 10, '', 1, '2026-06-09 08:28:30');

-- --------------------------------------------------------

--
-- Table structure for table `production_batch_outputs`
--

CREATE TABLE `production_batch_outputs` (
  `id` int(11) NOT NULL,
  `production_batch_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `production_batch_outputs`
--

INSERT INTO `production_batch_outputs` (`id`, `production_batch_id`, `product_id`, `quantity`) VALUES
(3, 2, 56, 3);

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
  `selling_units_per_stock_unit` int(11) NOT NULL DEFAULT 1,
  `product_mode` enum('direct','ingredient','recipe','prepared') NOT NULL DEFAULT 'direct',
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `reorder_level` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `main_group_id`, `sub_group_id`, `selling_unit_id`, `stock_unit_id`, `item_code`, `sku`, `name`, `sub_group`, `main_group`, `selling_unit`, `stock_unit_name`, `selling_units_per_stock_unit`, `product_mode`, `price`, `reorder_level`, `is_active`, `created_at`) VALUES
(1, NULL, 1, 2, 4, 14, 1001, 'CDR-0021', 'Tusker Lager 500ml', 'BEERS', 'BEVERAGES', 'Can', 'ML', 1, 'direct', 0.00, 10, 1, '2026-06-07 13:52:18'),
(2, NULL, 1, 7, 3, 11, 1002, 'CDR-0145', 'Milk', 'PERISHABLE BEVERAGES', 'BEVERAGES', 'Cups', 'LTRS', 125, 'ingredient', 0.00, 10, 1, '2026-06-07 13:58:49'),
(3, NULL, 1, 11, 2, 3, 1003, 'CDR-0149', 'Smirnof Vodka Red 1Ltr', 'VODKAS', 'BEVERAGES', 'Tots', '1LT', 33, 'direct', 0.00, 5, 1, '2026-06-07 14:03:09'),
(4, NULL, 1, 9, 1, 11, 1004, 'CDR-0033', 'Sprite 2ltrs', 'SOFT DRINKS', 'BEVERAGES', 'Glass', 'LTRS', 8, 'direct', 0.00, 16, 1, '2026-06-07 14:31:52'),
(5, NULL, 1, 9, 1, 13, 1005, 'CDR-0035', 'Sprite 1.25litr', 'SOFT DRINKS', 'BEVERAGES', 'Glass', '1.25LT', 5, 'direct', 0.00, 15, 1, '2026-06-07 14:34:34'),
(6, NULL, 1, 9, 4, 9, 1006, 'CDR-0144', 'Red Bull', 'SOFT DRINKS', 'BEVERAGES', 'Can', 'CANS', 1, 'direct', 0.00, 3, 1, '2026-06-07 14:36:11'),
(7, NULL, 1, 12, 1, 14, 1007, 'CDR-0034', 'Tonic Water 500ml', 'WATER', 'BEVERAGES', 'Glass', 'ML', 2, 'direct', 0.00, 4, 1, '2026-06-07 14:38:55'),
(8, NULL, 1, 10, 2, 6, 1008, 'CDR-0259', 'DON JULIO BLANCO 750ML', 'TEQUILAS', 'BEVERAGES', 'Tots', '750ML', 25, 'direct', 0.00, 0, 1, '2026-06-07 14:40:26'),
(9, NULL, 1, 12, 5, 14, 1009, 'CDR-0039', 'Aquamist 330ml Mineral Water', 'WATER', 'BEVERAGES', 'Bottle', 'ML', 1, 'direct', 0.00, 24, 1, '2026-06-07 14:42:41'),
(10, NULL, 1, 12, 5, 14, 1010, 'CDR-0286', 'Quencher 300ml mineral water', 'WATER', 'BEVERAGES', 'Bottle', 'ML', 1, 'direct', 0.00, 24, 1, '2026-06-07 14:43:23'),
(11, NULL, 1, 12, 1, 3, 1011, 'CDR-0040', 'Sparkling Water 1ltr', 'WATER', 'BEVERAGES', 'Glass', '1LT', 4, 'direct', 0.00, 4, 1, '2026-06-07 14:44:35'),
(12, NULL, 1, 13, 2, 3, 1012, 'CDR-0226', 'Black & White 1ltr', 'WHISKEYS', 'BEVERAGES', 'Tots', '1LT', 33, 'direct', 0.00, 33, 1, '2026-06-07 14:45:42'),
(13, NULL, 1, 13, 2, 6, 1013, 'CDR-0272', 'Black and White 750ml', 'WHISKEYS', 'BEVERAGES', 'Tots', '750ML', 25, 'direct', 0.00, 25, 1, '2026-06-07 14:46:25'),
(14, NULL, 1, 13, 2, 11, 1014, 'CDR-0042', 'J.W Black Label 1ltr', 'WHISKEYS', 'BEVERAGES', 'Tots', 'LTRS', 33, 'direct', 0.00, 5, 1, '2026-06-08 05:57:24'),
(15, NULL, 1, 13, 2, 6, 1015, 'CDR-0044', 'J.W Black Label 750ML', 'WHISKEYS', 'BEVERAGES', 'Tots', '750ML', 25, 'direct', 0.00, 5, 1, '2026-06-08 05:58:49'),
(16, NULL, 1, 13, 2, 3, 1016, 'CDR-0041', 'J.W Red Label 1ltr', 'WHISKEYS', 'BEVERAGES', 'Tots', '1LT', 33, 'direct', 0.00, 5, 1, '2026-06-08 06:00:15'),
(17, NULL, 1, 13, 2, 6, 1017, 'CDR-0043', 'J.W Red Label 750ml', 'WHISKEYS', 'BEVERAGES', 'Tots', '750ML', 25, 'direct', 0.00, 5, 1, '2026-06-08 06:03:16'),
(18, NULL, 1, 13, 2, 3, 1018, 'CDR-0180', 'Jameson 1ltrs', 'WHISKEYS', 'BEVERAGES', 'Tots', '1LT', 33, 'direct', 0.00, 5, 1, '2026-06-08 06:04:00'),
(19, NULL, 1, 13, 2, 3, 1019, 'CDR-0150', 'Jim Beam 1ltr', 'WHISKEYS', 'BEVERAGES', 'Tots', '1LT', 33, 'direct', 0.00, 5, 1, '2026-06-08 06:04:28'),
(20, NULL, 1, 13, 2, 3, 1020, 'CDR-0045', 'Teachers 1ltr', 'WHISKEYS', 'BEVERAGES', 'Tots', '1LT', 33, 'direct', 0.00, 20, 1, '2026-06-08 06:05:02'),
(21, NULL, 1, 8, 5, 5, 1021, 'CDR-0143', 'Drostdy Cask White Wine', 'RED WINES', 'BEVERAGES', 'Bottle', '5LTR', 33, 'direct', 0.00, 5, 1, '2026-06-08 06:05:41'),
(22, NULL, 1, 9, 1, 3, 1022, 'CDR-0236', 'Orange Juice', 'SOFT DRINKS', 'BEVERAGES', 'Glass', '1LT', 4, 'direct', 0.00, 3, 1, '2026-06-08 06:06:56'),
(23, NULL, 1, 9, 1, 11, 1023, 'CDR-0032', 'Fanta Orange 2Ltrs', 'SOFT DRINKS', 'BEVERAGES', 'Glass', 'LTRS', 8, 'direct', 0.00, 16, 1, '2026-06-08 06:07:53'),
(24, NULL, 1, 9, 1, 13, 1024, 'CDR-0031', 'Fanta 1.25ltrs', 'SOFT DRINKS', 'BEVERAGES', 'Glass', '1.25LT', 5, 'direct', 0.00, 15, 1, '2026-06-08 06:08:27'),
(25, NULL, 1, 9, 1, 11, 1025, 'CDR-0036', 'Coke Zero 2ltrs', 'SOFT DRINKS', 'BEVERAGES', 'Glass', 'LTRS', 8, 'direct', 0.00, 16, 0, '2026-06-08 06:08:59'),
(26, NULL, 1, 9, 1, 11, 1026, 'CDR-0030', 'Coke 2ltrs', 'SOFT DRINKS', 'BEVERAGES', 'Glass', 'LTRS', 8, 'direct', 0.00, 24, 1, '2026-06-08 06:09:46'),
(27, NULL, 1, 9, 1, 13, 1027, 'CDR-0029', 'Coke 1.25ltrs', 'SOFT DRINKS', 'BEVERAGES', 'Glass', '1.25LT', 5, 'direct', 0.00, 20, 1, '2026-06-08 06:10:19'),
(28, NULL, 1, 10, 2, 6, 1028, 'CDR-0038', 'Camino Silver 750ml', 'TEQUILAS', 'BEVERAGES', 'Tots', '750ML', 25, 'direct', 0.00, 5, 1, '2026-06-08 06:11:49'),
(29, NULL, 1, 8, 1, 5, 1029, 'CDR-0028', 'Drostdy Cask Red Wine', 'RED WINES', 'BEVERAGES', 'Glass', '5LTR', 33, 'direct', 0.00, 15, 1, '2026-06-08 06:13:03'),
(30, NULL, 1, 8, 1, 5, 1030, 'CDR-0027', '4th Street Red Wine', 'RED WINES', 'BEVERAGES', 'Glass', '5LTR', 33, 'direct', 0.00, 8, 1, '2026-06-08 06:13:47'),
(31, NULL, 1, 6, 2, 6, 1031, 'CDR-0026', 'Zappa Sambuca Clear', 'LIQUEURS', 'BEVERAGES', 'Tots', '750ML', 25, 'direct', 0.00, 5, 1, '2026-06-08 06:14:25'),
(32, NULL, 1, 6, 2, 3, 1032, 'CDR-0025', 'Amarula 1litre', 'LIQUEURS', 'BEVERAGES', 'Tots', '1LT', 33, 'direct', 0.00, 5, 1, '2026-06-08 06:16:08'),
(33, NULL, 1, 4, 2, 6, 1033, 'CDR-0151', 'Gilbeys', 'GIN', 'BEVERAGES', 'Tots', '750ML', 25, 'direct', 0.00, 5, 1, '2026-06-08 06:17:58'),
(34, NULL, 1, 3, 2, 6, 1034, 'CDR-0024', 'Viceroy 750ml', 'BRANDYS', 'BEVERAGES', 'Tots', '750ML', 25, 'direct', 0.00, 5, 1, '2026-06-08 06:18:30'),
(35, NULL, 1, 3, 2, 14, 1035, 'CDR-0253', 'Southern Comfort 700ml', 'BRANDYS', 'BEVERAGES', 'Tots', 'ML', 23, 'direct', 0.00, 10, 1, '2026-06-08 06:19:05'),
(36, NULL, 1, 3, 2, 3, 1036, 'CDR-0265', 'Myers Rum 1Ltrs', 'BRANDYS', 'BEVERAGES', 'Tots', '1LT', 33, 'direct', 0.00, 5, 1, '2026-06-08 06:19:41'),
(37, NULL, 1, 2, 4, 14, 1037, 'CDR-0208', 'White Cap Lite 500ml', 'BEERS', 'BEVERAGES', 'Can', 'ML', 1, 'direct', 0.00, 4, 1, '2026-06-08 06:20:47'),
(38, NULL, 1, 2, 1, 14, 1038, 'CDR-0022', 'White Cap Lager 500ml btls', 'BEERS', 'BEVERAGES', 'Glass', 'ML', 2, 'direct', 0.00, 20, 1, '2026-06-08 06:21:20'),
(39, NULL, 1, 2, 4, 14, 1039, 'CDR-0020', 'White Cap Lager 500ml', 'BEERS', 'BEVERAGES', 'Can', 'ML', 1, 'direct', 0.00, 6, 1, '2026-06-08 06:21:46'),
(40, NULL, 1, 2, 5, 14, 1040, 'CDR-0019', 'Tusker Malt Lager 500ml', 'BEERS', 'BEVERAGES', 'Bottle', 'ML', 1, 'direct', 0.00, 5, 1, '2026-06-08 06:22:17'),
(41, NULL, 1, 2, 1, 14, 1041, 'CDR-0220', 'Tusker Malt 330ml', 'BEERS', 'BEVERAGES', 'Glass', 'ML', 1, 'direct', 0.00, 6, 1, '2026-06-08 06:22:42'),
(42, NULL, 1, 2, 4, 14, 1042, 'CDR-0209', 'tusker lite 500ml', 'BEERS', 'BEVERAGES', 'Can', 'ML', 1, 'direct', 0.00, 3, 1, '2026-06-08 06:23:21'),
(43, NULL, 1, 2, 1, 14, 1043, 'CDR-0023', 'Tusker Lager 500ml btls', 'BEERS', 'BEVERAGES', 'Glass', 'ML', 2, 'direct', 0.00, 10, 1, '2026-06-08 06:23:46'),
(45, NULL, 1, 1, 2, 6, 1044, 'CDR-0016', 'Apple Sour Tang', 'APERITIFSS', 'BEVERAGES', 'Tots', '750ML', 25, 'direct', 0.00, 5, 1, '2026-06-08 06:25:54'),
(46, NULL, 1, 9, 1, 3, 1045, 'CDR-0283', 'Mango Juice 1 ltr', 'SOFT DRINKS', 'BEVERAGES', 'Glass', '1LT', 4, 'direct', 0.00, 2, 1, '2026-06-08 12:34:45'),
(47, NULL, 2, 15, 6, 10, 1046, 'CDR-0152', 'Chicken Breast', 'PERISHABLE FOODS', 'PERISHABLE FOODS', 'Portions', 'KGS', 2, 'ingredient', 0.00, 10, 1, '2026-06-09 07:27:51'),
(53, NULL, 1, 5, 3, 13, 1047, NULL, 'Cappuccino', 'HOT BEVERAGES', 'BEVERAGES', 'Cups', '1.25LT', 1, 'recipe', 0.00, 10, 1, '2026-06-09 08:16:07'),
(56, NULL, 2, 15, 6, 13, 1048, NULL, 'Chicken Sandwich', 'PERISHABLE FOODS', 'PERISHABLE FOODS', 'Portions', '1.25LT', 1, 'prepared', 0.00, 10, 1, '2026-06-09 08:27:19');

-- --------------------------------------------------------

--
-- Table structure for table `product_recipe_components`
--

CREATE TABLE `product_recipe_components` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `ingredient_product_id` int(11) NOT NULL,
  `quantity_per_unit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_recipe_components`
--

INSERT INTO `product_recipe_components` (`id`, `product_id`, `ingredient_product_id`, `quantity_per_unit`) VALUES
(2, 53, 2, 1);

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
  `quantity` int(11) NOT NULL,
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
(6, 'Portions', 1);

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
(14, 'ML', 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_requests`
--

CREATE TABLE `store_requests` (
  `id` int(11) NOT NULL,
  `request_no` varchar(40) NOT NULL,
  `product_id` int(11) NOT NULL,
  `requested_stock_qty` int(11) NOT NULL,
  `requested_selling_qty` int(11) NOT NULL,
  `issued_stock_qty` int(11) DEFAULT NULL,
  `issued_selling_qty` int(11) DEFAULT NULL,
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
(15, 2, 'PERISHABLE FOODS', 1);

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
(6, 2, 'jentah', 'Jentah Atieno', '$2y$10$xuyDdLWJz9VrmGZ0AU..d.FkqoFpRwklgJDEih2Lum4wggP2YNG6G', '$2y$10$jf892nuDhrwrjZDYXb2/oOsFb51bg.bQrSgxDrq5NMnUi4HqUStj2', 1, '2026-06-08 11:29:50', NULL);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT for table `authorizations`
--
ALTER TABLE `authorizations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `inventory_transactions`
--
ALTER TABLE `inventory_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `main_groups`
--
ALTER TABLE `main_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pos_store_issue_sync`
--
ALTER TABLE `pos_store_issue_sync`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `printers`
--
ALTER TABLE `printers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `print_logs`
--
ALTER TABLE `print_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `production_batches`
--
ALTER TABLE `production_batches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `production_batch_outputs`
--
ALTER TABLE `production_batch_outputs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `product_recipe_components`
--
ALTER TABLE `product_recipe_components`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `store_requests`
--
ALTER TABLE `store_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_groups`
--
ALTER TABLE `sub_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
