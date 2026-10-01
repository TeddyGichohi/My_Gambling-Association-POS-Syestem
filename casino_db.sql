-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2026 at 10:40 AM
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
-- Database: `casino_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `code`, `created_at`) VALUES
(1, 'KES', '2025-08-14 09:48:54'),
(2, 'USD', '2025-08-20 15:01:07');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `id_number` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `nationality` varchar(100) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `referred_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `full_name`, `first_name`, `last_name`, `id_number`, `phone`, `address`, `alias`, `nationality`, `photo`, `created_at`, `referred_by`) VALUES
(1, 'Denis Mariga', '', '', '5545454', '0758193803', '100', 'Dennoh', 'Kenyan', '1753141105_13245.png', '2025-07-21 23:38:25', NULL),
(3, 'Mutiso', '', '', '5545454554', '0726773505', '100', 'Nzai', 'Kenyan', '1753869641_ChatGPT Image May 31, 2025, 03_58_56 PM.png', '2025-07-30 10:00:41', NULL),
(4, 'Sample Sample', 'Sample', 'Sample', '55454545', '0758193878', '100', 'Nzai', 'Kenyan', '1755765791_WhatsApp Image 2025-08-19 at 05.30.30.jpeg', '2025-08-21 08:43:11', NULL),
(5, 'New', 'New', '', '', '', '', '', 'Kenyan', NULL, '2025-08-21 10:18:30', NULL),
(7, 'Denis Mariga', 'Denis', 'Mariga', '11111', '0758193803', '100', '', '', NULL, '2025-08-21 10:21:02', 4);

-- --------------------------------------------------------

--
-- Table structure for table `customer_checkins`
--

CREATE TABLE `customer_checkins` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `time_in` datetime NOT NULL,
  `purpose_of_visit` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `security_name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_checkins`
--

INSERT INTO `customer_checkins` (`id`, `customer_id`, `time_in`, `purpose_of_visit`, `notes`, `security_name`, `created_at`) VALUES
(1, 3, '2025-08-21 11:27:01', 'Gamble', 'sample note', 'Mwanz', '2025-08-21 09:27:01'),
(2, 4, '2025-08-21 11:29:12', 'Gamble', 'wwww', 'wwww', '2025-08-21 09:29:12'),
(3, 1, '2025-08-26 13:52:20', 'ddd', 'dd', 'sample', '2025-08-26 11:52:20');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `service` enum('forex','chips_buy','chips_sell') NOT NULL,
  `payment_method` enum('cash','card','mpesa') DEFAULT NULL,
  `currency_from` varchar(10) DEFAULT NULL,
  `currency_to` varchar(10) DEFAULT NULL,
  `amount_given` decimal(10,2) NOT NULL,
  `amount_received` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `customer_id`, `service`, `payment_method`, `currency_from`, `currency_to`, `amount_given`, `amount_received`, `created_at`) VALUES
(1, 1, 'chips_buy', NULL, NULL, NULL, 1000.00, 1000.00, '2025-07-22 18:51:05'),
(2, 1, 'chips_buy', NULL, NULL, NULL, 5000.00, 5000.00, '2025-08-06 10:37:20'),
(3, 7, 'chips_buy', NULL, 'KES', 'KES', 5000.00, 5000.00, '2025-08-21 09:30:53'),
(4, 7, 'chips_buy', 'card', 'KES', 'KES', 111.00, 1111.00, '2025-08-21 09:32:08'),
(5, 1, 'chips_buy', 'mpesa', 'KES', 'KES', 2000.00, 2000.00, '2025-08-26 10:53:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','cashier','security') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `created_at`) VALUES
(1, 'admin', '$2y$10$eUR0R6Xw805EK.m1D84vMeMlI0BJB5LNFXeQTEWLxICbiCPHDmyX6', 'admin', '2025-07-21 23:36:22'),
(2, 'cashier', '$2y$10$M9Fi3D3W0EuRLL8QV82gaecL2DR67JgeS0aqpCf5nWZ7ULrz6F/i2', 'cashier', '2025-07-21 23:36:22'),
(3, 'security', '$2y$10$hDpvXB58C0Ts7BFB0SOlhe3PLeLyzoIpyYApg3.xdya1/Lcl2oQPK', 'security', '2025-07-21 23:36:22'),
(4, 'Denis', '$2y$10$lzoBBISq9VewzGVjajpmpObWPkb85zKsPgsk7Hk.seLHPZu2L.FDe', 'admin', '2025-08-21 08:15:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_number` (`id_number`);

--
-- Indexes for table `customer_checkins`
--
ALTER TABLE `customer_checkins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer_checkins`
--
ALTER TABLE `customer_checkins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_checkins`
--
ALTER TABLE `customer_checkins`
  ADD CONSTRAINT `customer_checkins_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
