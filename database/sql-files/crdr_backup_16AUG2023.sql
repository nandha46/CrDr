-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2023 at 04:13 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crdr`
--

-- --------------------------------------------------------

--
-- Table structure for table `acchead`
--

CREATE TABLE `acchead` (
  `id` int(11) NOT NULL,
  `companyId` int(11) NOT NULL,
  `accCode` int(11) NOT NULL,
  `accName` varchar(40) NOT NULL,
  `accType` varchar(15) NOT NULL,
  `drAmt` double NOT NULL,
  `crAmt` double NOT NULL,
  `sno` int(11) NOT NULL,
  `level1` int(11) NOT NULL,
  `orderCode` bigint(20) NOT NULL,
  `shortName` varchar(10) DEFAULT NULL,
  `budgDrAmt` double NOT NULL,
  `budgCrAmt` double NOT NULL,
  `userStatus` tinyint(1) NOT NULL,
  `stkNeed` tinyint(1) NOT NULL,
  `stkOpen` double NOT NULL,
  `stkStatus` varchar(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `closebl`
--

CREATE TABLE `closebl` (
  `id` int(11) NOT NULL,
  `companyId` int(11) NOT NULL,
  `cDate` datetime NOT NULL,
  `drTot` double NOT NULL,
  `crTot` double NOT NULL,
  `closeBal` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `companyName` varchar(155) DEFAULT NULL,
  `CompanyYear` varchar(7) NOT NULL,
  `shortName` varchar(3) NOT NULL,
  `prodId` varchar(10) NOT NULL,
  `rcNo` varchar(50) NOT NULL,
  `companyType` varchar(1) NOT NULL,
  `companyFormat` tinyint(1) NOT NULL,
  `fromDate` datetime DEFAULT NULL,
  `toDate` datetime DEFAULT NULL,
  `address1` varchar(40) NOT NULL,
  `address2` varchar(40) NOT NULL,
  `city` varchar(35) NOT NULL,
  `pincode` varchar(7) NOT NULL,
  `state` varchar(35) NOT NULL,
  `phone1` varchar(20) NOT NULL,
  `phone2` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `quantity` tinyint(1) NOT NULL,
  `qtyWidth` varchar(1) NOT NULL,
  `qtyDecimal` varchar(1) NOT NULL,
  `qtyTotal` tinyint(1) NOT NULL,
  `allBDate` datetime DEFAULT NULL,
  `localBDate` datetime DEFAULT NULL,
  `bNoofAcc` int(11) NOT NULL,
  `bNoofEntr` int(11) NOT NULL,
  `bLastTransDate` datetime DEFAULT NULL,
  `allBMedium` varchar(10) NOT NULL,
  `localBMedium` varchar(10) NOT NULL,
  `allBUser` varchar(10) NOT NULL,
  `localBUser` varchar(10) NOT NULL,
  `restoreDate` datetime DEFAULT NULL,
  `restoreMedium` varchar(1) NOT NULL,
  `restoreUser` varchar(10) NOT NULL,
  `cNoofAcc` int(11) NOT NULL,
  `cNoofEntries` int(11) NOT NULL,
  `cLastTransDate` datetime DEFAULT NULL,
  `currUser` varchar(10) NOT NULL,
  `lastUser` varchar(10) NOT NULL,
  `currLogin` datetime DEFAULT NULL,
  `lastLogin` datetime DEFAULT NULL,
  `logout` datetime DEFAULT NULL,
  `lockDate` datetime DEFAULT NULL,
  `closeStk` int(11) NOT NULL,
  `openCash` int(11) NOT NULL,
  `openDiffDr` int(11) NOT NULL,
  `openDiffCr` int(11) NOT NULL,
  `hide` tinyint(1) NOT NULL,
  `graphicPrint` tinyint(1) NOT NULL,
  `fileHash` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` tinytext NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daybooks`
--

CREATE TABLE `daybooks` (
  `id` int(11) NOT NULL,
  `companyId` int(11) NOT NULL,
  `sno` int(11) NOT NULL,
  `tDate` datetime NOT NULL,
  `narration` varchar(255) NOT NULL,
  `acccode` int(11) NOT NULL,
  `drAmt` double(10,2) NOT NULL,
  `crAmt` double(10,2) NOT NULL,
  `stkValue` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daystock`
--

CREATE TABLE `daystock` (
  `id` int(11) NOT NULL,
  `companyId` int(11) NOT NULL,
  `cDate` datetime NOT NULL,
  `stockValue` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `menuname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `isdirlink` bit(1) NOT NULL DEFAULT b'0',
  `icons` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `position` tinyint(4) DEFAULT NULL,
  `ismain` tinyint(4) DEFAULT NULL,
  `menuurls` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `islisted` tinyint(4) NOT NULL DEFAULT 1,
  `mainid` tinyint(4) DEFAULT NULL,
  `isstatus` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `menuname`, `isdirlink`, `icons`, `position`, `ismain`, `menuurls`, `islisted`, `mainid`, `isstatus`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', b'0', 'home', 1, 1, NULL, 1, 0, 1, '2018-12-20 17:57:00', '2018-12-20 17:57:00'),
(2, 'analytics', b'0', NULL, 1, 0, 'reports-analytics', 1, 1, 1, '2018-12-20 17:58:00', '2018-12-20 17:58:00'),
(3, 'Statistics', b'0', NULL, 2, 0, 'reports-statistics', 1, 1, 1, '2023-08-12 17:58:00', '2023-08-12 17:58:00'),
(4, 'members', b'0', 'users', 2, 1, NULL, 1, 0, 1, '2018-12-20 18:03:00', '2018-12-20 18:03:00'),
(7, 'users', b'0', NULL, 3, 0, 'users', 1, 4, 1, '2018-12-20 18:02:00', '2018-12-20 18:02:00'),
(27, 'reports', b'0', 'layers', 4, 1, NULL, 1, 0, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(52, 'Daybooks', b'0', NULL, 1, 0, 'daybook', 1, 27, 1, '2018-12-20 18:03:00', '2018-12-20 18:03:00'),
(53, 'Ledger', b'0', NULL, 2, 0, 'ledger', 1, 27, 1, '2018-12-20 18:03:00', '2018-12-20 18:03:00'),
(54, 'Trial Balance', b'0', NULL, 3, 0, 'trial-balance', 1, 27, 1, '2018-12-20 18:03:00', '2018-12-20 18:03:00'),
(55, 'Trading - Profit & Loss', b'0', NULL, 4, 0, 'trading-pnl', 1, 27, 1, '2018-12-20 18:03:00', '2018-12-20 18:03:00'),
(56, 'Balance Sheet', b'0', NULL, 5, 0, 'balance-sheet', 1, 27, 1, '2018-12-20 18:03:00', '2018-12-20 18:03:00'),
(57, 'companies', b'0', 'users', 3, 1, NULL, 1, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'All Companies', b'0', NULL, 1, 0, 'list-company', 1, 57, 1, '2018-12-20 18:03:00', '2018-12-20 18:03:00'),
(59, 'upload company', b'0', NULL, 2, 0, 'upload-company', 1, 57, 1, '2018-12-20 18:03:00', '2018-12-20 18:03:00');

-- --------------------------------------------------------

--
-- Table structure for table `orgholidays`
--

CREATE TABLE `orgholidays` (
  `orhlId` int(11) NOT NULL,
  `orhlOrgMasterId` int(11) NOT NULL,
  `orhlHolMasterId` varchar(25) NOT NULL,
  `orhlFinancialYear` year(4) NOT NULL,
  `orhlName` varchar(25) NOT NULL,
  `orhlDescription` varchar(50) NOT NULL,
  `orhlDate` date NOT NULL,
  `orhlMessage` varchar(50) NOT NULL,
  `orhlIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orgholidays`
--

INSERT INTO `orgholidays` (`orhlId`, `orhlOrgMasterId`, `orhlHolMasterId`, `orhlFinancialYear`, `orhlName`, `orhlDescription`, `orhlDate`, `orhlMessage`, `orhlIsStatus`, `created_at`, `updated_at`) VALUES
(6, 1, 'hf-holi-0007', '2023', 'holiday', 'good', '2022-07-05', 'verygood', 1, '2022-07-22 07:27:25', '2022-10-11 08:01:54'),
(7, 1, 'hf-holi-0007', '2023', 'foodfestival', 'good for health', '2022-07-21', 'good', 1, '2022-07-22 07:30:36', '2022-07-22 09:50:24'),
(8, 1, 'hf-holi-0007', '2023', 'pongal', 'pongal is a regional festival', '2022-07-20', 'be safe', 1, '2022-07-22 07:43:42', '2022-11-16 08:36:06'),
(9, 1, 'hf-holi-0007', '2023', 'Christmas', 'good', '2022-07-06', 'nice festival', 1, '2022-07-22 08:41:18', '2022-11-16 08:36:48'),
(10, 1, 'hf-holi-0007', '2027', 'new Year', 'gsg', '2022-09-20', 'gsrgrsgrsg', 1, '2022-09-27 12:16:27', '2022-11-16 08:37:03');

-- --------------------------------------------------------

--
-- Table structure for table `privileges`
--

CREATE TABLE `privileges` (
  `id` int(11) NOT NULL,
  `menuid` int(11) NOT NULL,
  `isedit` tinyint(4) NOT NULL,
  `isview` tinyint(4) NOT NULL,
  `userid` int(11) NOT NULL,
  `isstatus` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `useragent_analytics`
--

CREATE TABLE `useragent_analytics` (
  `ua_id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `ip2` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `useragent_analytics`
--

INSERT INTO `useragent_analytics` (`ua_id`, `username`, `user_agent`, `ip`, `ip2`, `status`, `created_at`, `updated_at`) VALUES
(0, 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2023-05-26 00:26:11', '2023-05-26 00:26:11'),
(1, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-09-22 06:10:44', '2022-09-22 06:10:44'),
(2, 'hf-stu-0005', 'Mozilla/5.0 (Linux; Android 11; ONEPLUS A6010) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', '192.168.1.3', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-09-22 06:11:57', '2022-09-22 06:11:57'),
(3, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.42', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-09-22 06:34:22', '2022-09-22 06:34:22'),
(4, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.42', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-09-22 06:35:02', '2022-09-22 06:35:02'),
(5, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 Edg/105.0.1343.42', '192.168.1.8', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-09-22 06:35:25', '2022-09-22 06:35:25'),
(6, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-09-22 07:40:44', '2022-09-22 07:40:44'),
(7, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-09-22 23:10:10', '2022-09-22 23:10:10'),
(8, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-09-22 23:11:13', '2022-09-22 23:11:13'),
(9, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-09-26 05:03:51', '2022-09-26 05:03:51'),
(10, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-09-26 05:04:03', '2022-09-26 05:04:03'),
(11, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-09-27 10:39:14', '2022-09-27 10:39:14'),
(12, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-09-27 12:04:04', '2022-09-27 12:04:04'),
(13, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-09-28 01:37:07', '2022-09-28 01:37:07'),
(14, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-09-28 04:05:35', '2022-09-28 04:05:35'),
(15, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-09-28 06:39:08', '2022-09-28 06:39:08'),
(16, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-09-28 07:02:21', '2022-09-28 07:02:21'),
(17, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-09-28 07:38:04', '2022-09-28 07:38:04'),
(18, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-09-28 07:39:23', '2022-09-28 07:39:23'),
(19, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-09-28 10:36:01', '2022-09-28 10:36:01'),
(20, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-09-29 01:01:09', '2022-09-29 01:01:09'),
(21, 'hf-stu-000914', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-09-29 04:45:16', '2022-09-29 04:45:16'),
(22, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-09-29 08:00:28', '2022-09-29 08:00:28'),
(23, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-09-30 02:03:59', '2022-09-30 02:03:59'),
(24, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-09-30 04:37:07', '2022-09-30 04:37:07'),
(25, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-03 10:52:25', '2022-10-03 10:52:25'),
(26, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-03 15:18:33', '2022-10-03 15:18:33'),
(27, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-04 02:31:44', '2022-10-04 02:31:44'),
(28, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-04 02:33:29', '2022-10-04 02:33:29'),
(29, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-05 02:04:25', '2022-10-05 02:04:25'),
(30, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-05 02:46:09', '2022-10-05 02:46:09'),
(31, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-05 02:56:12', '2022-10-05 02:56:12'),
(32, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-05 06:33:15', '2022-10-05 06:33:15'),
(33, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-05 06:53:06', '2022-10-05 06:53:06'),
(34, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-06 02:03:36', '2022-10-06 02:03:36'),
(35, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-06 02:36:50', '2022-10-06 02:36:50'),
(36, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-06 06:49:23', '2022-10-06 06:49:23'),
(37, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-06 08:04:53', '2022-10-06 08:04:53'),
(38, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-07 01:41:42', '2022-10-07 01:41:42'),
(39, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-07 04:21:46', '2022-10-07 04:21:46'),
(40, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-07 11:48:05', '2022-10-07 11:48:05'),
(41, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-08 02:47:16', '2022-10-08 02:47:16'),
(42, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-11 00:18:45', '2022-10-11 00:18:45'),
(43, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-11 02:41:57', '2022-10-11 02:41:57'),
(44, 'hf-stu-000915', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-11 07:33:31', '2022-10-11 07:33:31'),
(45, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-11 11:04:42', '2022-10-11 11:04:42'),
(46, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-12 02:49:34', '2022-10-12 02:49:34'),
(47, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-12 07:31:21', '2022-10-12 07:31:21'),
(48, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-12 10:23:20', '2022-10-12 10:23:20'),
(49, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-12 10:44:12', '2022-10-12 10:44:12'),
(50, 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-13 00:57:12', '2022-10-13 00:57:12'),
(51, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-13 05:51:56', '2022-10-13 05:51:56'),
(52, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-13 08:23:09', '2022-10-13 08:23:09'),
(53, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-14 00:17:11', '2022-10-14 00:17:11'),
(54, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-14 06:17:14', '2022-10-14 06:17:14'),
(55, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-15 02:36:03', '2022-10-15 02:36:03'),
(56, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-15 07:59:20', '2022-10-15 07:59:20'),
(57, 'hf-stu-00012', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-15 08:23:47', '2022-10-15 08:23:47'),
(58, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-15 08:30:07', '2022-10-15 08:30:07'),
(59, 'hf-stu-0006', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-15 08:30:53', '2022-10-15 08:30:53'),
(60, 'hf-stu-000692', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-15 08:31:42', '2022-10-15 08:31:42'),
(61, 'hf-stu-000915', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-15 08:32:50', '2022-10-15 08:32:50'),
(62, 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-17 00:19:05', '2022-10-17 00:19:05'),
(63, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-17 01:45:12', '2022-10-17 01:45:12'),
(64, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-17 07:07:29', '2022-10-17 07:07:29'),
(65, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-17 23:31:01', '2022-10-17 23:31:01'),
(66, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-19 01:27:36', '2022-10-19 01:27:36'),
(67, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-19 10:35:47', '2022-10-19 10:35:47'),
(68, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-20 00:59:42', '2022-10-20 00:59:42'),
(69, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-20 04:04:01', '2022-10-20 04:04:01'),
(70, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-20 05:25:23', '2022-10-20 05:25:23'),
(71, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-20 05:41:36', '2022-10-20 05:41:36'),
(72, 'hf-stu-0001173', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-20 06:26:53', '2022-10-20 06:26:53'),
(73, 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-20 23:03:03', '2022-10-20 23:03:03'),
(74, 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-21 00:27:43', '2022-10-21 00:27:43'),
(75, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-21 00:28:06', '2022-10-21 00:28:06'),
(76, 'hf-stu-000935', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-21 00:53:22', '2022-10-21 00:53:22'),
(77, 'hf-stu-0001179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-21 01:13:06', '2022-10-21 01:13:06'),
(78, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-21 06:00:28', '2022-10-21 06:00:28'),
(79, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-22 01:27:35', '2022-10-22 01:27:35'),
(80, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-25 01:45:41', '2022-10-25 01:45:41'),
(81, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-25 06:31:43', '2022-10-25 06:31:43'),
(82, 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-25 06:56:41', '2022-10-25 06:56:41'),
(83, 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-25 08:57:14', '2022-10-25 08:57:14'),
(84, 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-25 12:41:59', '2022-10-25 12:41:59'),
(85, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-26 00:15:06', '2022-10-26 00:15:06'),
(86, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-26 02:39:56', '2022-10-26 02:39:56'),
(87, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-26 03:21:13', '2022-10-26 03:21:13'),
(88, 'hf-stu-000935', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-26 03:21:53', '2022-10-26 03:21:53'),
(89, 'hf-stu-0001190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-26 03:22:33', '2022-10-26 03:22:33'),
(90, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-26 05:46:42', '2022-10-26 05:46:42'),
(91, 'hf-stu-0001388', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-26 05:47:10', '2022-10-26 05:47:10'),
(92, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-26 06:41:08', '2022-10-26 06:41:08'),
(93, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-26 10:48:44', '2022-10-26 10:48:44'),
(94, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-27 03:38:45', '2022-10-27 03:38:45'),
(95, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-28 06:49:19', '2022-10-28 06:49:19'),
(96, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-29 01:11:10', '2022-10-29 01:11:10'),
(97, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-29 06:00:12', '2022-10-29 06:00:12'),
(98, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-29 13:15:59', '2022-10-29 13:15:59'),
(99, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-29 13:34:28', '2022-10-29 13:34:28'),
(100, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-31 05:13:11', '2022-10-31 05:13:11'),
(101, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-31 08:04:18', '2022-10-31 08:04:18'),
(102, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-01 07:29:20', '2022-11-01 07:29:20'),
(103, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-01 11:56:11', '2022-11-01 11:56:11'),
(104, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-01 23:46:05', '2022-11-01 23:46:05'),
(105, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-08 08:30:13', '2022-11-08 08:30:13'),
(106, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-09 07:39:09', '2022-11-09 07:39:09'),
(107, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-09 11:02:26', '2022-11-09 11:02:26'),
(108, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-10 01:54:18', '2022-11-10 01:54:18'),
(109, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-14 01:35:37', '2022-11-14 01:35:37'),
(110, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-14 04:11:06', '2022-11-14 04:11:06'),
(111, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-14 06:44:17', '2022-11-14 06:44:17'),
(112, 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-14 11:20:01', '2022-11-14 11:20:01'),
(113, 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-16 02:36:37', '2022-11-16 02:36:37'),
(114, 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-16 02:43:25', '2022-11-16 02:43:25'),
(115, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-16 02:45:23', '2022-11-16 02:45:23'),
(116, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-16 02:47:00', '2022-11-16 02:47:00'),
(117, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-16 02:47:21', '2022-11-16 02:47:21'),
(118, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-16 02:52:36', '2022-11-16 02:52:36'),
(119, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-16 03:17:45', '2022-11-16 03:17:45'),
(120, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-16 03:19:38', '2022-11-16 03:19:38'),
(121, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-16 03:21:02', '2022-11-16 03:21:02'),
(122, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-16 03:23:48', '2022-11-16 03:23:48'),
(123, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-17 07:24:41', '2022-11-17 07:24:41'),
(124, 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-17 11:02:18', '2022-11-17 11:02:18'),
(125, 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-18 01:00:18', '2022-11-18 01:00:18'),
(126, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-18 04:10:21', '2022-11-18 04:10:21'),
(127, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-18 10:44:50', '2022-11-18 10:44:50'),
(128, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-19 06:39:46', '2022-11-19 06:39:46'),
(129, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-19 06:39:52', '2022-11-19 06:39:52'),
(130, 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-19 08:13:45', '2022-11-19 08:13:45'),
(131, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-19 08:14:14', '2022-11-19 08:14:14'),
(132, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-19 08:17:54', '2022-11-19 08:17:54'),
(133, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-19 08:19:40', '2022-11-19 08:19:40'),
(134, 'hf-stf-000101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-19 08:23:38', '2022-11-19 08:23:38'),
(135, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-19 08:33:54', '2022-11-19 08:33:54'),
(136, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-19 10:48:39', '2022-11-19 10:48:39'),
(137, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-21 05:53:58', '2022-11-21 05:53:58'),
(138, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-22 00:28:05', '2022-11-22 00:28:05'),
(139, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-23 01:13:49', '2022-11-23 01:13:49'),
(140, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-24 00:56:29', '2022-11-24 00:56:29'),
(141, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-24 10:33:00', '2022-11-24 10:33:00'),
(142, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-24 11:06:04', '2022-11-24 11:06:04'),
(143, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-24 11:27:00', '2022-11-24 11:27:00'),
(144, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-24 11:27:34', '2022-11-24 11:27:34'),
(145, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-24 11:29:10', '2022-11-24 11:29:10'),
(146, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-24 11:32:18', '2022-11-24 11:32:18'),
(147, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-24 11:33:53', '2022-11-24 11:33:53'),
(148, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-24 11:34:16', '2022-11-24 11:34:16'),
(149, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-24 11:34:44', '2022-11-24 11:34:44'),
(150, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-24 11:35:13', '2022-11-24 11:35:13'),
(151, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-24 11:35:27', '2022-11-24 11:35:27'),
(152, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-24 11:36:24', '2022-11-24 11:36:24'),
(153, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-24 11:36:53', '2022-11-24 11:36:53'),
(154, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-24 11:38:33', '2022-11-24 11:38:33'),
(155, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-24 11:38:48', '2022-11-24 11:38:48'),
(156, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-24 11:46:37', '2022-11-24 11:46:37'),
(157, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-24 11:47:25', '2022-11-24 11:47:25'),
(158, 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-24 12:46:59', '2022-11-24 12:46:59'),
(159, 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-24 12:47:41', '2022-11-24 12:47:41'),
(160, 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-24 12:49:11', '2022-11-24 12:49:11'),
(161, 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-24 12:49:26', '2022-11-24 12:49:26'),
(162, 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-24 12:52:25', '2022-11-24 12:52:25'),
(163, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-24 12:52:50', '2022-11-24 12:52:50'),
(164, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-24 12:53:09', '2022-11-24 12:53:09'),
(165, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-25 01:33:55', '2022-11-25 01:33:55'),
(166, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-25 04:49:24', '2022-11-25 04:49:24'),
(167, 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-12-21 12:49:32', '2022-12-21 12:49:32'),
(168, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-12-25 06:30:05', '2022-12-25 06:30:05'),
(169, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '127.0.0.1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-12-25 07:10:11', '2022-12-25 07:10:11'),
(170, 'admin', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-12-26 14:39:42', '2022-12-26 14:39:42'),
(171, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2023-01-15 11:16:46', '2023-01-15 11:16:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `usertype` tinyint(4) NOT NULL COMMENT '1. Super Admin\r\n2. Admin\r\n3. Staff',
  `companyId` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `admin_id`, `username`, `password`, `usertype`, `companyId`, `status`, `created_at`, `updated_at`) VALUES
(2, NULL, 'nandha', 'e10adc3949ba59abbe56e057f20f883e', 1, NULL, 1, '2022-06-30 07:12:27', '2023-08-12 06:11:16'),
(9, NULL, '8807621371', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 1, '2023-08-11 23:57:57', '2023-08-16 08:42:34');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `firstname` varchar(55) DEFAULT NULL,
  `lastname` varchar(55) DEFAULT NULL,
  `primary_mobile` varchar(13) DEFAULT NULL,
  `secondary_mobile` varchar(13) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `userid`, `firstname`, `lastname`, `primary_mobile`, `secondary_mobile`, `email`, `status`, `created_at`, `updated_at`) VALUES
(2, 2, 'Nandha kumar', 'Subramanian', '90000900000', NULL, 'nandha@mail.com', 1, '2022-01-25 18:30:00', '2022-08-25 09:28:37'),
(12, 9, 'VENKY', 'S', '8807621371', NULL, 'VENKADESH5991@GMAIL.COM', 1, '2023-08-11 23:57:57', '2023-08-11 23:57:57');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_privileges`
-- (See below for the actual view)
--
CREATE TABLE `view_privileges` (
`id` int(11)
,`menuname` varchar(30)
,`isdirlink` bit(1)
,`icons` varchar(50)
,`position` tinyint(4)
,`ismain` tinyint(4)
,`menuurls` text
,`islisted` tinyint(4)
,`mainid` tinyint(4)
,`isstatus` tinyint(4)
,`created_at` timestamp
,`updated_at` timestamp
,`isedit` tinyint(4)
,`isview` tinyint(4)
,`userid` int(11)
,`prvlstatus` tinyint(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_users`
-- (See below for the actual view)
--
CREATE TABLE `view_users` (
`id` int(11)
,`username` varchar(20)
,`userstatus` varchar(9)
,`usertyperesult` varchar(11)
);

-- --------------------------------------------------------

--
-- Structure for view `view_privileges`
--
DROP TABLE IF EXISTS `view_privileges`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_privileges`  AS SELECT `a`.`id` AS `id`, `a`.`menuname` AS `menuname`, `a`.`isdirlink` AS `isdirlink`, `a`.`icons` AS `icons`, `a`.`position` AS `position`, `a`.`ismain` AS `ismain`, `a`.`menuurls` AS `menuurls`, `a`.`islisted` AS `islisted`, `a`.`mainid` AS `mainid`, `a`.`isstatus` AS `isstatus`, `a`.`created_at` AS `created_at`, `a`.`updated_at` AS `updated_at`, `b`.`isedit` AS `isedit`, `b`.`isview` AS `isview`, `b`.`userid` AS `userid`, `b`.`isstatus` AS `prvlstatus` FROM (`menus` `a` left join `privileges` `b` on(`a`.`id` = `b`.`menuid`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_users`
--
DROP TABLE IF EXISTS `view_users`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_users`  AS SELECT `a`.`id` AS `id`, `a`.`username` AS `username`, if(`a`.`status` = 1,'Active','In-Active') AS `userstatus`, CASE WHEN `a`.`usertype` = 1 THEN 'Super-Admin' WHEN `a`.`usertype` = 2 THEN 'Admin' WHEN `a`.`usertype` = 3 THEN 'Children' WHEN `a`.`usertype` = 4 THEN 'Staff' ELSE 'Others' END AS `usertyperesult` FROM `users` AS `a` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acchead`
--
ALTER TABLE `acchead`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companyId` (`companyId`);

--
-- Indexes for table `closebl`
--
ALTER TABLE `closebl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companyId` (`companyId`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `daybooks`
--
ALTER TABLE `daybooks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companyId` (`companyId`);

--
-- Indexes for table `daystock`
--
ALTER TABLE `daystock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companyId` (`companyId`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orgholidays`
--
ALTER TABLE `orgholidays`
  ADD PRIMARY KEY (`orhlId`);

--
-- Indexes for table `privileges`
--
ALTER TABLE `privileges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `useragent_analytics`
--
ALTER TABLE `useragent_analytics`
  ADD PRIMARY KEY (`ua_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userdetails_ibfk_1` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acchead`
--
ALTER TABLE `acchead`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=634;

--
-- AUTO_INCREMENT for table `closebl`
--
ALTER TABLE `closebl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4393;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `daybooks`
--
ALTER TABLE `daybooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2036;

--
-- AUTO_INCREMENT for table `daystock`
--
ALTER TABLE `daystock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4381;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `privileges`
--
ALTER TABLE `privileges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `acchead`
--
ALTER TABLE `acchead`
  ADD CONSTRAINT `acchead_ibfk_1` FOREIGN KEY (`companyId`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `closebl`
--
ALTER TABLE `closebl`
  ADD CONSTRAINT `closebl_ibfk_1` FOREIGN KEY (`companyId`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `daybooks`
--
ALTER TABLE `daybooks`
  ADD CONSTRAINT `daybooks_ibfk_1` FOREIGN KEY (`companyId`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `daystock`
--
ALTER TABLE `daystock`
  ADD CONSTRAINT `daystock_ibfk_1` FOREIGN KEY (`companyId`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `privileges`
--
ALTER TABLE `privileges`
  ADD CONSTRAINT `privileges_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `userdetails_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
