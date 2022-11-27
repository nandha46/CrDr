-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2022 at 08:19 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hf_foundations`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `achId` int(11) NOT NULL,
  `achType` int(11) NOT NULL COMMENT '0-Awards\r\n1-Professional,\r\n2-Non-Professional,\r\n3-Educations,\r\n4-Presentation,\r\n5-Sports,\r\n6-Games,\r\n7-Works\r\n8-Other Activities',
  `achTitle` text NOT NULL,
  `achDescription` text NOT NULL,
  `achYear` year(4) NOT NULL,
  `achStudentId` int(11) NOT NULL,
  `achStaffId` int(11) NOT NULL,
  `achIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `country` varchar(15) DEFAULT NULL,
  `addressmode` tinyint(4) NOT NULL DEFAULT 1 COMMENT '"1. Home\r\n2. Office\r\n3. Others"',
  `isstatus` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `address`, `city`, `state`, `pincode`, `country`, `addressmode`, `isstatus`, `created_at`, `updated_at`) VALUES
(1, '175, Bharathi puram, Nagal nagar', 'Dindigul', '24', '624003', '', 1, 1, '2022-06-05 08:42:10', '2022-08-17 15:56:07'),
(5, 'No 1, first street, pallikaranai', 'Chennai', '24', '600042', '', 1, 1, '2022-07-04 02:48:12', '2022-07-04 02:48:12'),
(6, 'East car street, karpagam avenue', 'chennai', '24', '600028', '', 1, 1, '2022-08-06 13:34:56', '2022-08-06 13:34:56'),
(7, 'afaf', 'fafaf', '3', '456987', '', 1, 1, '2022-08-12 01:37:53', '2022-08-17 15:57:06'),
(8, 'gs', 'gsgg', '6', '632154', '', 1, 1, '2022-08-12 01:53:38', '2022-08-17 15:56:28'),
(9, 'mendosa colony', 'Madurai', '24', '634520', '', 1, 1, '2022-08-13 08:34:36', '2022-08-13 08:34:36'),
(10, 'Malligeshwaran Street', 'Chennai', '24', '600100', '', 1, 1, '2022-08-17 08:35:31', '2022-08-17 08:35:31'),
(11, 'afdafdf', 'fadfa', '5', '625487', '', 1, 1, '2022-08-18 15:38:45', '2022-08-18 15:38:45'),
(12, 'null', 'ssiir', '8', '123654', '', 1, 1, '2022-08-19 10:57:04', '2022-08-19 10:57:04'),
(20, 'old street', 'chennai', '8', '562698', '', 1, 1, '2022-08-20 12:32:08', '2022-08-20 12:32:08'),
(21, 'address line', 'madurai', '14', '752654', '', 1, 1, '2022-08-22 11:05:37', '2022-08-22 11:05:37'),
(22, 'efefe efaefeefe fe, fefeq', 'mafeaf', '6', '965756', '', 1, 1, '2022-08-22 12:16:43', '2022-08-22 12:16:43'),
(23, 'tw4t4wtw', 'w4tw4twt', '6', '465464', '', 1, 1, '2022-08-29 06:32:42', '2022-08-29 06:32:42'),
(24, 'new sree', 'aaee', '7', '685985', '', 1, 1, '2022-09-03 04:38:33', '2022-09-03 04:38:33'),
(475, 'No.11556, Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:37', '2022-09-21 00:54:37'),
(476, 'No.92,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:37', '2022-09-21 00:54:37'),
(477, 'No.6863, ,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:37', '2022-09-21 00:54:37'),
(478, 'No.14184, Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(479, 'No.14005, Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(480, 'No.7491, KANNAGI NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(481, 'No.7494, Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(482, 'No.14346, KANNAGI NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(483, 'No.1486,, Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(484, 'No.2248.Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(485, 'No.9955, Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(486, 'No.10329, Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(487, 'No.30/149,Ezhil Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(488, 'No.14325, Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(489, 'No.1085,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(490, 'No.5191,,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(491, 'No.138,30th Block, Ezhil Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(492, 'No.12263,KANNAGI NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(493, 'No.15086,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(494, 'No.12,,eZHILi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(495, 'No.1000, Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(496, 'No.13490,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(497, '12660, Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(498, 'No.11939,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(499, 'No.8129, Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(500, 'No.9229, Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(501, 'No.154, Ezhil Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(502, 'No.34, Ezhil Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(503, 'No.23 , eZHIL Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(504, 'No.9/65,Ezhil Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(505, 'No.14091,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(506, 'No.14803,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(507, 'No.1171,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(508, 'No.139, Ezhil Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(509, 'No.2501, Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(510, 'NO.7192,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(511, 'No.52, EZHIL NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(512, 'No.14836,Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(513, 'No.7747,Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(514, 'No.5858,Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(515, '5777,Kannagi nagar,Thuraipakkam,KANCHEEPURAM', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(516, '5594, Kanagai nagar, Okkiyam Thuraippakam,', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(517, '8773,KANNAGI NAGAR,Thuraipakkam,KANCHEEPURAM', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(518, 'No.9/13. Ezhil nagar Okkiyam thuraippakam.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(519, '6238,KANNAGI NAGAR ,THURAIPAKKM,KANCHEEPURAM', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(520, '4987,KANNAGI NAGAR,THURIPAKKAM,KANCHEEPURAM', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(521, '6868,kannagi nagar,Thuripakkam,KANCHEEPURAM', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(522, NULL, 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(523, '3/6,EZHIL NAGAR ,THURAIPAKKAM,KANCHEEPURAM', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(524, '4451,KANNAG NAGAR,THURIPAKKAM,KANCHEEPURAM', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(525, '6989,KANNAGI NAGAR,Thuraipakkam ,KANCHEEPURAM', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(526, '6702,KANNAGI NAGAR,THURAIPAKKAM,KANCHEEPURAM', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(527, '16/16,EZHIL NAGAR ,CHENNAI ,KANCHEEPURAM', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(528, '5930,KANNAGI NAGAR ,THURIPAKKAM,KANCHEEPURAM', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(529, '7721, Kanagi nagar Thuraippakam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(530, '15071,KANNAGI NAGAR ,THURIPAKKAM,KANCHEEPURAM', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(531, '14754, Kanagi nagar, okkiyam thoraipakkam. Chengalpatu', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(532, '5542,kannagi nagar ,Thuaripakkam ,KANCHEEPURAM', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(533, '2365,kannagi nagar ,KANNAGI NAGAR ,KANCHEEPURAM', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(534, '14704,KANNAGI NAGAR,KANNAGI NAGAR,KANCHEEPURAM', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(535, 'No. 14379 kanagi nagar Okkiyam thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(536, '143/10,EZHIL NAGAR ,THUARIPAKKAM,KANCHEEPURAM', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(537, '5698,KANNAGI NAGAR ,THUARIPAKKAM,KANCHEEPURAM', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(538, '5517, KANNAGI NAGAR, OKKIAM THURAIPAKKAM KANCHEEPURAM', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(539, '3606,KANNAGI NAGAR ,THUARIPAKKAM,KANCHEEPURAM', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(540, '5288,KANNAGI NAGAR ,THUARIPAKKAM,KANCHEEPURAM', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(541, '6786,KANNAGI NAGAR ,THUARIPAKKAM ,KANCHEEPURAM', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(542, '6786,KANNAGI NAGAR ,THUARIPAKKAM ,KANCHEEPURAM', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(543, '5858,KANNAGI NAGAR ,THUARIPAKKAM ,KANCHEEPURAM', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(544, 'No. 12864, Kanagi nagar Thoraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(545, '75/98,EZHIL NAGAR ,THURARIPAKKAM ,KANCHEEPURAM', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(546, '6590,KANNAGI NAGAR ,THUARIPAKKAM ,KANCHEEPURAM', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(547, '14084,Kannagi nagar ,THUARIPAKKAM,KANCHEEPURAM', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(548, '14084,Kannagi nagar ,THUARIPAKKAM,KANCHEEPURAM', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(549, '7567, kanagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(550, '13660,KANNAGI NAGAR ,THUARIPAKKAM,KANCHEEPURAM', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(551, '1112,KANNAGI NAGAR ,THIARIPAKKAM ,KANCHEEPURAM', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(552, 'No. 5823 13th cross street, kanagai nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(553, '885, 13TH MAIN ROAD, KANNAGI NAGAR, THORAIPAKKA, KANCHEEPURAM', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(554, 'No 6704, kannagi nagar .', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(555, 'No 30 171, kannagi nagar.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(556, 'No 1549, Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(557, 'No 14399,kannagi nagar,chennai.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(558, 'No 10493,kannagi nagar .', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(559, 'No 14099,Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(560, 'No 4565,kannaginagr', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(561, 'No 1483,Kanngai nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(562, 'No 49th lock 15th', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(563, 'No 6565 ,Kannagi nagar.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(564, 'No 7237 kannagi nagr', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(565, 'No 1865,Kannagi nagar .', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(566, 'No 11916,Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(567, 'No 23,Ezhlnagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(568, 'No 36,kannagi nagar .', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(569, 'No 14797 k nagar .', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(570, 'No 14884,kannagi nagar.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(571, 'No 11760 k nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(572, 'No 5191,kannagi nagar.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(573, 'No 5941,Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(574, 'No 5191,Kannagi Nagar .', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(575, 'No 7849,kannagi nagar .', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(576, 'No 6429,kannagi nagar.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(577, 'No 14/17 kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(578, 'No 7611,kannagi nagar ,chennai .', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(579, 'No 10854,Kannagi nagar ,chennai .', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(580, 'No 14191 kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(581, 'No 5211,Kannagi nagar ,Thuaripakkam .', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(582, 'No 4/2,ezhil nagar ,chennai .', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(583, 'No 3788,kannagi nagar ,Chennai .', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(584, 'No 80,ezhil nagar ,chennai .', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(585, 'No 16,ezhil nagar ,chennai', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(586, 'No 29/57 ezhil nagar chennai .', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(587, 'No 14672,kannagi nagar ,chennai.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(588, 'No 4549,kannagi nagar,chennai.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(589, 'No 14091,kannagi nagar ,chennai .', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(590, 'No 12252 kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(591, 'No 11700 kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(592, 'No 2302,kannagi nagar,chennnai .', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(593, 'No 7758,kannagi nagar ,chennai .', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(594, 'No 14502 nkannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(595, '35/39, EZHIL NGR, OKKIYAM THURAIPAKKAM CH/97', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(596, '6702, 16TH CROSS ST, Kanngi Nagar, Okkiyam thuraipakkam.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(597, '14899, 7TH CROSS ST, Kanngi Nagar, Okkiyam thuraipakkam.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(598, '6657, Kanngi Nagar, Okkiyam thuraipakkam.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(599, '5035, Kanngi Nagar, Okkiyam thuraipakkam.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(600, '13632, Kanngi Nagar, Okkiyam thuraipakkam.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(601, '8297, 46th cross street ,Kanngi Nagar, Okkiyam thuraipakkam.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(602, '14010, Kanngi Nagar, Okkiyam thuraipakkam.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(603, '12668, 16th CROSS STREET , Kanngi Nagar, Okkiyam thuraipakkam.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(604, '3519, Kanngi Nagar, Okkiyam thuraipakkam.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(605, '15080, Kanngi Nagar, Okkiyam thuraipakkam.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(606, '14719,Kanngi Nagar, Okkiyam thuraipakkam.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(607, '7491, Kanngi Nagar, Okkiyam thuraipakkam.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(608, '13474, Kanngi Nagar, Okkiyam thuraipakkam.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(609, '4552, 11TH CROSS ST,Kanngi Nagar, Okkiyam thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(610, '24/68, Ezhil Nagar,Okkiyam thuraipakkam.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(611, '15626,Kanngi Nagar, Okkiyam thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(612, '6868,Kanngi Nagar, Okkiyam thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(613, '15071, Kanngi Nagar, Okkiyam thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(614, '6531, Kanngi Nagar, Okkiyam thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(615, '5129,39TH CROSS STREET, Kanngi Nagar, Okkiyam thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(616, '14704,Kanngi Nagar, Okkiyam thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(617, '31/10,EZHIL NGR.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(618, '11620, Kanngi Nagar, Okkiyam thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(619, '6565, Kanngi Nagar, Okkiyam thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(620, '9099, 54TH CROSS ST.,Kanngi Nagar, Okkiyam thuraipakkam.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(621, '2523, 3RD CROSS ST., Kanngi Nagar, Okkiyam thuraipakkam.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(622, '14084, 25TH CROSS ST.Kanngi Nagar, Okkiyam thuraipakkam.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(623, '13664,Kanngi Nagar, Okkiyam thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(624, '14106, 25TH CROSS ST.Kanngi Nagar, Okkiyam thuraipakkam.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(625, '13872,Kanngi Nagar, Okkiyam thuraipakkam.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(626, '5852,13th cross street, Kanngi Nagar, Okkiyam thuraipakkam.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(627, 'DOOR NO.470 35TH BLOCK, 2ND MAIN ROAD, EZHIL NGR.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(628, 'NO:14519, Kanngi Nagar, Okkiyam thuraipakkam.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(629, '894, 32nd CROSS STREET, Kanngi Nagar, Okkiyam thuraipakkam.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(630, 'Door No- 6863,16th Main road Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(631, 'Door No 43, Block No-25 Ezhil Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(632, 'Block no-17, House no 1, 3rd Cross Street Ezhil Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(633, '12475, 14th Cross Street Kannagi NaGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(634, '9484, Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(635, NULL, 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(636, '5698, Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(637, NULL, 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(638, '12833, Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(639, 'Door No 6541, 8th Main Road, Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(640, 'Door NO 7610, 2Oth Cross Street Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(641, 'Door No 8236, 46 cross Street, kannagi nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(642, '2471, 43 Cross Street Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(643, '70, 35th block, 2nd Main Road, Ezhil Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(644, 'House no-155, Block No 20, Ezhil nagar.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(645, 'Door no 149, Block No 30, Ezhil Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(646, '10422, Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(647, '11077, 4th Cross Street Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(648, '1225 1st cross street, Kannagi Nagar, okkiyam thuraippakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(649, '11950,11th cross street kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(650, 'Door No-138, Block No- 30, Ezhil Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(651, '11736, 13th Cross Street Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(652, NULL, 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(653, NULL, 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(654, 'Door no:15, block no-15 Sunami Kudiyiruppu ezhil Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(655, 'Door no:15, block no-15 Sunami Kudiyiruppu ezhil Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(656, 'Door no:22, Block No- 46 Sunami Kudiyieuppu, Ezhil nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(657, NULL, 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(658, 'Door No 6429, 11th cross street Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(659, NULL, 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(660, 'Door No 805, 10th Main Road Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(661, 'Door no. 7316 ,19th Cross Street Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(662, 'No 4/313, Azhigandeshwarar second street, Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(663, 'Door No 6849, 16th Main Road, Kannagi Nagar.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(664, 'Door No:1280, 2nd Cross Street Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(665, 'Door no:4562 11th cross street Kannagi Nagar okkiyam thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(666, 'Door number.1381,3rd cross street, Kannagai Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(667, 'No:5/84, Ezhil Nagar, Okkiyam Thuraipakkam,', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(668, 'No:14,719, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(669, 'No:31/32, Ezhil Nagar, Okkiyam Thuraipakkam,', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(670, 'No:15461, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(671, 'No:6618, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(672, 'No:11700, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(673, 'No:7054, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(674, 'No:3603, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(675, 'No:5895, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(676, 'No:11755, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(677, 'No:5594, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(678, 'No:9054, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(679, 'No:5777, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(680, 'No:, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(681, 'No:6704, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(682, 'No:6849, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(683, 'No:12208, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(684, 'No:14/32, Ezhil Nagar, Okkiyam Thuraipakkam,', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(685, 'No:13369, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(686, 'No:11180, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(687, 'No:25/43, Ezhil Nagar, Okkiyam Thuraipakkam,', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(688, 'No:5601, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(689, 'No:15774, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(690, 'No:2773, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(691, 'No:6531, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(692, 'No:38/20, Ezhil Nagar, Okkiyam Thuraipakkam,', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(693, 'No:14899, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(694, 'No:12389, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(695, 'No:5983, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(696, 'No:8357, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(697, 'No:12829, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(698, 'No:5/28, Ezhil Nagar, Okkiyam Thuraipakkam,', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(699, 'No:13788, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(700, 'No:7604, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(701, 'No:14884, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(702, 'No:93, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(703, NULL, 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(704, '5428, Kannagi Nagar, Okkiam Thuraipakkam.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(705, '143/ 20, Ezhil Nagar, Okkaim Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(706, '1503, Kannagi Nagar, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(707, '4721, Kannagi Nagar, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(708, 'NO.4/313 , 2nd Cross street, Aligandeswar Nagar, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(709, '124/23, Ezhil Nagar, Okkaim Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(710, '11909, Kannagi Nagar, Okkaiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(711, '5128, Kannagi Nagar, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(712, '5/28, Kannagi Nagar, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(713, '1486, Kannagi Nagar, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(714, '14867,Kannagi Nagar, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(715, '167, Kannagi Nagar, OkkiamThuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(716, '4085, Kannagi Nagar, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(717, '12268, Kannagi Nagar, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(718, '7339, Kannagi Nagar. Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(719, '6/27, Ezhil Nagar, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(720, '4744, Kannagi Nagar, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(721, '2509, Kannagi Nagar, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(722, '13877, Kannagi Nagar, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(723, '574, Kannagi Nagar, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(724, '7023, Kannagi Nagar, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(725, '12951, Kannagi Nagar, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(726, '7188, Kannagi Nagar, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(727, '31/87, Kannagi Nagar, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(728, '8880, Kannagi Nagar, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(729, '7867, Kannagi Nagar, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(730, '1/17, Ezhil Nagar, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(731, '5781, Kannagi Nagar, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(732, '4/32, Kannagi Nagar, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(733, '15071, Kannagi Nagar, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(734, '9204, Kannagi Nagar, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(735, '13644, Kannagi Nagar, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(736, '6143, Kannagi Nagar, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(737, '4/31, Ezhil Nagar, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(738, '3107, Kannagi Nagar, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(739, '885, Kannagi Nagar, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(740, '894, Kannagi Nagar, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(741, '3600, Kannagi Nagar, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(742, '683, Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(743, 'No. 13302, Kannagi Nagar.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(744, 'No. 7731, Kannagi Nagar.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(745, 'No. 10422, Kannagi Nagar.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(746, 'No.14/76, Ezhil Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(747, 'No. 15080 kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(748, 'No. 1139, Kannagi Nagar.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(749, 'No. 4640, Kannagi Nagar.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(750, 'No.23/41, Ezhil Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(751, 'No.11902, Kannagi Nagar.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(752, 'No.1664, Kannagi Nagar.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(753, 'No.16190, Kannagi Nagar.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(754, 'No.622, Kannagi Nagar.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(755, 'No.1152, Kannagi Nagar.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(756, 'No.14/ 158, Ezhil Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(757, 'No.39/146 Ezhil Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(758, 'No.6332, Kannagi Nagar.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(759, 'No.1731 ,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(760, 'No.17/46, Ezhil Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(761, 'NO.2856 ,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(762, 'NO.13746 ,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(763, 'No.12987 , Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:32', '2022-09-21 00:55:32'),
(764, 'No .5541 ,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:32', '2022-09-21 00:55:32'),
(765, 'No .11591 ,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:32', '2022-09-21 00:55:32'),
(766, 'No.82172, Kannagi Nagar.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:33', '2022-09-21 00:55:33'),
(767, 'No.2773, Kannagi Nagar.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:33', '2022-09-21 00:55:33'),
(768, 'No.5895, Kannagi Nagar.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:34', '2022-09-21 00:55:34'),
(769, 'No.13375, Kannagi Nagar.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:34', '2022-09-21 00:55:34'),
(770, 'No.13409, Kannagi Nagar.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:34', '2022-09-21 00:55:34'),
(771, 'No.30/80, Ezhil Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(772, 'No.14658, Kannagi Nagar.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(773, 'No.30/7,Tsunami Quarters', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(774, '15167, Kannagi Nagar.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(775, '12951, Kannagi Nagar.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(776, 'No .3718 ,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(777, 'No. 13484, Kannagi Nagar.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(778, 'NO.14775. Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(779, 'NO.14419. Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(780, 'No.2278 Kannnagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(781, 'No. 3912,Kannagi Nagar.', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(782, 'No.999, Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(783, 'No.12316,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(784, 'No.6535, ,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(785, 'No.4215, Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(786, 'No.6971, Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(787, 'No.87/31st block, Ezhil Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(788, 'No.1296, Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(789, 'No.20,14th block, Ezhil nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(790, 'No.12391, Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(791, 'No.14125.Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(792, 'No.5681, Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(793, 'No.4670, Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(794, 'No.4584,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(795, 'No.3107, Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(796, 'No.9053,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(797, 'No.12879,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(798, 'No.12797,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(799, 'No.24,35th block,ezhl', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(800, 'No.13968,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(801, 'No.3454,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(802, 'No.1000, Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(803, 'No.7617,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(804, 'No.2750,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(805, 'No.9204,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(806, 'No.5102, Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(807, 'No.6521, Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(808, 'No.598,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(809, 'No.14438,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(810, 'No.773, Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(811, 'No.14461,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(812, 'No.1251,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(813, 'No.4395,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(814, 'No.14337,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(815, 'No.9931, Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(816, 'No.2501, Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(817, 'NO.968,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(818, 'No.1889,Kannagi Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(819, 'No.3718,Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(820, 'No:22, B-46, Ezhil nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(821, 'No: 12268, 12th cross street, Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(822, 'No: 11077, Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(823, 'NO: 76, B-14, Ezhil Nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(824, 'No:4584, Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(825, 'No:3718, kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(826, 'No:3476, Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(827, 'No:23, Block-41, Ezhil nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(828, 'NO: 14867, 7th main road, Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(829, 'No: 3608, Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(830, 'NO: 12295, Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(831, 'No: 1280, Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(832, 'No: 15087, Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(833, 'No: 10843, Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(834, 'No: 1243, Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(835, 'No: 8258, Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(836, 'No:2509, Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(837, 'No: 11411, Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(838, 'No:14302, Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(839, 'No: 3912, Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:49', '2022-09-21 00:55:49'),
(840, 'No: 3280, Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:49', '2022-09-21 00:55:49'),
(841, 'No: 5697, Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(842, 'No:11762, Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(843, 'No: 5700, 14th main road, Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(844, 'No:52, B-40, Ezhil nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(845, 'No: 5171, kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(846, 'No: 12953, Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(847, 'No: 11763, 13th cross street, Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(848, 'No: 29, B-30,Ezhil nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(849, 'No: 14194, Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(850, 'No: 24, B-49,Ezhil nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(851, 'No: 4640, Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(852, 'No: 12088, Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(853, 'No: 7867, 10th main road, Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(854, 'No: 12525, 15th cross street, Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(855, 'No: 1730, Kannagi nagar', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(856, 'NO: 162,BLOCK NO:1, EZHIL NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(857, 'NO.14239,KANNAGI NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(858, 'NO.4383,KANNAGI NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(859, 'NO.2466,KANNAGI NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(860, 'NO.7849,KANNAGI NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(861, 'NO.14668,KANNAGI NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(862, 'NO.4395,KANNAGI NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(863, 'NO.14675,KANNAGI NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:54', '2022-09-21 00:55:54');
INSERT INTO `addresses` (`id`, `address`, `city`, `state`, `pincode`, `country`, `addressmode`, `isstatus`, `created_at`, `updated_at`) VALUES
(864, 'NO: 3103, KANNAGI NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(865, 'NO.3653,KANNAGINAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(866, 'NO.6541,KANNAGI NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(867, 'NO.13698,KANNAGI NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(868, 'NO.12953,KANNAGI NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(869, 'NO.12524,KANNAGI NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(870, 'BLOCK NO : 30/141, EZHIL NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(871, 'NO.9089,KANNAGI NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(872, 'NO: 14290, KANNAGI NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(873, 'NO: 14722,KANNAGI NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(874, 'NO: 8061, KANNAGI NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(875, 'NO.9765,KANNAGINAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(876, 'NO: 3345, KANNAGI NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(877, 'NO: 13746,KANNAGI NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(878, 'NO: 14215, KANNAGI NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(879, 'NO.13318,KANNAGI NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(880, 'NO: 2316, KANNAGI NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(881, 'NO,5979,KANNAGI NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(882, 'NO,14300,KANNAGI NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(883, 'NO: 2505, KANNAGI NAGA', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(884, 'NO.4568,KANNAGI NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(885, 'NO.1475,KANNAGI NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(886, 'NO: 14718, KANNAGI NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(887, 'NO.7607,KANNAGI NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(888, 'NO.1851,KANNAGI NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(889, 'NO.14751,KANNAGI NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(890, 'NO.8964,KANNAGI NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(891, '915,916,32 CROSS STREET,KANNAGI NAGAR,CHENNAI-600097', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(892, 'NO.5/510 A,NEHRU NAGAR,6TH CROSS STREET,MOOTAIKARANCHAVADI', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(893, '3607,,KANNAGI NAGAR,CHENNAI -97', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(894, 'NO.11967, KANNAGI NAGAR,,THURAIPAKKAM, CHENNAI - 97', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(895, '15160,KANNAGINAGAR,OKKIYAM THURAIPAKKAM', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(896, '6008, 15TH CROSS STREET,KANNAGI NAGAR,CHENNAI - 97', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(897, '13950,,KANNAGI NAGAR,CHENNAI - 97', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(898, 'N0-9TH BLOCK NO,14,PSUNAMI NAGAR,KANNAGI NAGAR,CHENNAI-97', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(899, '251, Kannaginagar, THURAIPAKKAM,CHENNEI-97', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(900, 'NO.1072,KANNAGINAGAR,CHENNAI-97', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(901, '7436, KANNAGI NAGAR, THORAIPAKKAM,', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(902, '4/45,RAJU NAGAR,9TH STREET,,KANNAGI NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(903, 'B.NO.38, D.NO.26,EZHIL NAGAR,,T,Chennai-97', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(904, 'NO-49/24,KANNAGI NAGAR,CHENNAI-97', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(905, 'NO.11559, TNSCB, KANNAGI ANGAR,', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(906, '5065,,KANNAGI NAGAR,CHENNAI-97', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(907, '13153,KANNAGI NAGAR,CHENNAI-97', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(908, '14126,,KANNAGI NAGAR,CHENNAI - 97', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(909, '5073,,KANNAGI NAGAR,CHENNAI-97', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(910, '3912,,KANNAGI NAGAR,CHENNAI-97', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(911, '4301, KANNAGI NAGAR,THURAIPAKKAM,CHENNAI-97', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(912, '13982,,KANNAGI NAGAR,CHENNAI-97', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(913, '14775,KANNAGI NAGAR,CHENNAI-97', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(914, '9561,KANNAGI NAGAR,CHENNAI-97', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(915, 'NO.15450,KANNAGI NAGAR,THORAIPAKKAM,CHENNAI-97', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(916, 'BLOCK NO-7,N0-25 EZHIL NAGAR,THURAIPAKKAM,', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(917, '1301,1302,2ND CROSS STREET,KANNAGI NAGAR,CHENNAI - 97', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(918, '9531,KANNAGI NAGAR,CHENNAI-97', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(919, '2340,,KANNAGI NAGAR,CHENNAI,,KANNAGI NAGAR - 97', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(920, '6951,KANNAGI NAGAR,CHENNAI - 97', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(921, 'NO.9594,KANNAGINAGAR,CHENNAI -97', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(922, '1384,,KANNAGI NAGAR,CHENNAI-97', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(923, '4670,53 CROSS STREET,KANNAGI NAGAR,THORAIPAKKAM,CHENNAI-97', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(924, '8927,KANNAGI NAGAR /THURAIPAKKAM,', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(925, '3/413,AZHIGANDESHWARAR 2ND STREET', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(926, 'No: 3/149, Kumaran kudil, Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(927, 'No:3519, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(928, 'No 2 Shakti Nagar, 2nd Cross Street Pallavaram', 'Chennai', '24', '600043', '', 1, 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(929, 'No.141/20, Ezhil Nagar', 'Chennai', '24', '600100', '', 1, 1, '2022-09-21 07:56:48', '2022-09-21 07:56:48'),
(930, 'NO.62/94, 1st street,Thiruvalluvarpuram,choolaimedu', 'Chennai', '24', '600094', '', 1, 1, '2022-09-21 07:56:48', '2022-09-21 07:56:48'),
(931, '4/564, AZHIGANDESHWARAR NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 07:56:48', '2022-09-21 07:56:48'),
(932, 'No3/796Mount battern street ,meettukuppam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(933, '1284, Kannagi Nagar, 2nd Cross street, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(934, 'No: 5/641, 11th cross street, Nehru nagar, M.K chavadi', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(935, 'no-5/2,chellappa street,Gandhi road, Velacheri', 'Chennai', '24', '600042', '', 1, 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(936, NULL, 'Chennai', '24', '600127', '', 1, 1, '2022-09-21 07:56:50', '2022-09-21 07:56:50'),
(937, '3/413,AZHIGANDESHWARAR 2ND STREET', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 08:20:15', '2022-09-21 08:20:15'),
(938, 'No: 3/149, Kumaran kudil, Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 08:20:15', '2022-09-21 08:20:15'),
(939, 'No:3519, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(940, 'No 2 Shakti Nagar, 2nd Cross Street Pallavaram', 'Chennai', '24', '600043', '', 1, 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(941, 'No.141/20, Ezhil Nagar', 'Chennai', '24', '600100', '', 1, 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(942, 'NO.62/94, 1st street,Thiruvalluvarpuram,choolaimedu', 'Chennai', '24', '600094', '', 1, 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(943, '4/564, AZHIGANDESHWARAR NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(944, 'No3/796Mount battern street ,meettukuppam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(945, '1284, Kannagi Nagar, 2nd Cross street, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(946, 'No: 5/641, 11th cross street, Nehru nagar, M.K chavadi', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(947, 'no-5/2,chellappa street,Gandhi road, Velacheri', 'Chennai', '24', '600042', '', 1, 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(948, NULL, 'Chennai', '24', '600127', '', 1, 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(949, '3/413,AZHIGANDESHWARAR 2ND STREET', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 08:32:17', '2022-09-21 08:32:17'),
(950, 'No: 3/149, Kumaran kudil, Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 08:32:18', '2022-09-21 08:32:18'),
(951, 'No:3519, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 08:32:18', '2022-09-21 08:32:18'),
(952, 'No 2 Shakti Nagar, 2nd Cross Street Pallavaram', 'Chennai', '24', '600043', '', 1, 1, '2022-09-21 08:32:18', '2022-09-21 08:32:18'),
(953, 'No.141/20, Ezhil Nagar', 'Chennai', '24', '600100', '', 1, 1, '2022-09-21 08:32:19', '2022-09-21 08:32:19'),
(954, 'NO.62/94, 1st street,Thiruvalluvarpuram,choolaimedu', 'Chennai', '24', '600094', '', 1, 1, '2022-09-21 08:32:19', '2022-09-21 08:32:19'),
(955, '4/564, AZHIGANDESHWARAR NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 08:32:19', '2022-09-21 08:32:19'),
(956, 'No3/796Mount battern street ,meettukuppam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 08:32:20', '2022-09-21 08:32:20'),
(957, '1284, Kannagi Nagar, 2nd Cross street, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 08:32:20', '2022-09-21 08:32:20'),
(958, 'No: 5/641, 11th cross street, Nehru nagar, M.K chavadi', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 08:32:20', '2022-09-21 08:32:20'),
(959, 'no-5/2,chellappa street,Gandhi road, Velacheri', 'Chennai', '24', '600042', '', 1, 1, '2022-09-21 08:32:21', '2022-09-21 08:32:21'),
(960, NULL, 'Chennai', '24', '600127', '', 1, 1, '2022-09-21 08:32:21', '2022-09-21 08:32:21'),
(961, '3/413,AZHIGANDESHWARAR 2ND STREET', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 08:39:02', '2022-09-21 08:39:02'),
(962, 'No: 3/149, Kumaran kudil, Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 08:39:02', '2022-09-21 08:39:02'),
(963, 'No:3519, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 08:39:03', '2022-09-21 08:39:03'),
(964, 'No 2 Shakti Nagar, 2nd Cross Street Pallavaram', 'Chennai', '24', '600043', '', 1, 1, '2022-09-21 08:39:03', '2022-09-21 08:39:03'),
(965, 'No.141/20, Ezhil Nagar', 'Chennai', '24', '600100', '', 1, 1, '2022-09-21 08:39:03', '2022-09-21 08:39:03'),
(966, 'NO.62/94, 1st street,Thiruvalluvarpuram,choolaimedu', 'Chennai', '24', '600094', '', 1, 1, '2022-09-21 08:39:04', '2022-09-21 08:39:04'),
(967, '4/564, AZHIGANDESHWARAR NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 08:39:04', '2022-09-21 08:39:04'),
(968, 'No3/796Mount battern street ,meettukuppam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 08:39:04', '2022-09-21 08:39:04'),
(969, '1284, Kannagi Nagar, 2nd Cross street, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 08:39:05', '2022-09-21 08:39:05'),
(970, 'No: 5/641, 11th cross street, Nehru nagar, M.K chavadi', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 08:39:05', '2022-09-21 08:39:05'),
(971, 'no-5/2,chellappa street,Gandhi road, Velacheri', 'Chennai', '24', '600042', '', 1, 1, '2022-09-21 08:39:05', '2022-09-21 08:39:05'),
(972, NULL, 'Chennai', '24', '600127', '', 1, 1, '2022-09-21 08:39:06', '2022-09-21 08:39:06'),
(973, '3/413,AZHIGANDESHWARAR 2ND STREET', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 08:44:58', '2022-09-21 08:44:58'),
(974, 'No: 3/149, Kumaran kudil, Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 08:44:58', '2022-09-21 08:44:58'),
(975, 'No:3519, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 08:44:59', '2022-09-21 08:44:59'),
(976, 'No 2 Shakti Nagar, 2nd Cross Street Pallavaram', 'Chennai', '24', '600043', '', 1, 1, '2022-09-21 08:44:59', '2022-09-21 08:44:59'),
(977, 'No.141/20, Ezhil Nagar', 'Chennai', '24', '600100', '', 1, 1, '2022-09-21 08:45:00', '2022-09-21 08:45:00'),
(978, 'NO.62/94, 1st street,Thiruvalluvarpuram,choolaimedu', 'Chennai', '24', '600094', '', 1, 1, '2022-09-21 08:45:00', '2022-09-21 08:45:00'),
(979, '4/564, AZHIGANDESHWARAR NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 08:45:00', '2022-09-21 08:45:00'),
(980, 'No3/796Mount battern street ,meettukuppam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 08:45:01', '2022-09-21 08:45:01'),
(981, '1284, Kannagi Nagar, 2nd Cross street, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 08:45:01', '2022-09-21 08:45:01'),
(982, 'No: 5/641, 11th cross street, Nehru nagar, M.K chavadi', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 08:45:02', '2022-09-21 08:45:02'),
(983, 'no-5/2,chellappa street,Gandhi road, Velacheri', 'Chennai', '24', '600042', '', 1, 1, '2022-09-21 08:45:02', '2022-09-21 08:45:02'),
(984, NULL, 'Chennai', '24', '600127', '', 1, 1, '2022-09-21 08:45:03', '2022-09-21 08:45:03'),
(985, '3/413,AZHIGANDESHWARAR 2ND STREET', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 10:50:14', '2022-09-21 10:50:14'),
(986, 'No: 3/149, Kumaran kudil, Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 10:50:14', '2022-09-21 10:50:14'),
(987, 'No:3519, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(988, 'No 2 Shakti Nagar, 2nd Cross Street Pallavaram', 'Chennai', '24', '600043', '', 1, 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(989, 'No.141/20, Ezhil Nagar', 'Chennai', '24', '600100', '', 1, 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(990, 'NO.62/94, 1st street,Thiruvalluvarpuram,choolaimedu', 'Chennai', '24', '600094', '', 1, 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(991, '4/564, AZHIGANDESHWARAR NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(992, 'No3/796Mount battern street ,meettukuppam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(993, '1284, Kannagi Nagar, 2nd Cross street, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(994, 'No: 5/641, 11th cross street, Nehru nagar, M.K chavadi', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(995, 'no-5/2,chellappa street,Gandhi road, Velacheri', 'Chennai', '24', '600042', '', 1, 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(996, NULL, 'Chennai', '24', '600127', '', 1, 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(997, '3/413,AZHIGANDESHWARAR 2ND STREET', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 11:28:55', '2022-09-21 11:28:55'),
(998, 'No: 3/149, Kumaran kudil, Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(999, 'No:3519, Kannagi Nagar, Okkiyam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(1000, 'No 2 Shakti Nagar, 2nd Cross Street Pallavaram', 'Chennai', '24', '600043', '', 1, 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(1001, 'No.141/20, Ezhil Nagar', 'Chennai', '24', '600100', '', 1, 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(1002, 'NO.62/94, 1st street,Thiruvalluvarpuram,choolaimedu', 'Chennai', '24', '600094', '', 1, 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(1003, '4/564, AZHIGANDESHWARAR NAGAR', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(1004, 'No3/796Mount battern street ,meettukuppam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(1005, '1284, Kannagi Nagar, 2nd Cross street, Okkiam Thuraipakkam', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(1006, 'No: 5/641, 11th cross street, Nehru nagar, M.K chavadi', 'Chennai', '24', '600097', '', 1, 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(1007, 'no-5/2,chellappa street,Gandhi road, Velacheri', 'Chennai', '24', '600042', '', 1, 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(1008, NULL, 'Chennai', '24', '600127', '', 1, 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(1009, 'afeaffe', 'test', '4', '658468', '', 1, 1, '2022-09-29 04:44:35', '2022-09-29 04:44:35');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `typeid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `message` varchar(255) NOT NULL,
  `fileurl` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `typeid`, `title`, `message`, `fileurl`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Alert', 'message', 'C:\\fakepath\\2021-06-11 07.10.55 2593385419075688841_46892858777.jpg', 1, '2022-07-15 04:20:15', '2022-07-15 04:20:15'),
(2, 3, 'New announcement', 'new message', 'C:\\fakepath\\1970-01-01 05.30.00 2647988692515753104_46892858777.jpg', 1, '2022-07-15 04:25:13', '2022-07-15 04:25:13');

-- --------------------------------------------------------

--
-- Table structure for table `annualeventdays`
--

CREATE TABLE `annualeventdays` (
  `anulevId` int(11) NOT NULL,
  `anulevOrgMasterId` int(11) NOT NULL,
  `anulevYear` varchar(255) NOT NULL,
  `anulevChiefGuest` varchar(255) NOT NULL,
  `anulevContactNo` text NOT NULL,
  `anulevSpeakers` text NOT NULL,
  `anulevDate` date NOT NULL,
  `anulevStartTime` time NOT NULL,
  `anulevEndTime` time NOT NULL,
  `anulevComments` text NOT NULL,
  `anulevDescription` text NOT NULL,
  `anulevPhotoGallery` text NOT NULL,
  `anulevIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `anId` int(11) NOT NULL,
  `anQusId` int(11) NOT NULL,
  `anAnswers` text NOT NULL,
  `anIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `appdefaults`
--

CREATE TABLE `appdefaults` (
  `defId` int(11) NOT NULL,
  `defName` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `prefix` varchar(10) NOT NULL,
  `poweredBy` varchar(255) CHARACTER SET latin1 NOT NULL,
  `defVersion` varchar(10) CHARACTER SET latin1 DEFAULT 'v1',
  `defDevRelease` varchar(10) CHARACTER SET latin1 NOT NULL,
  `defRelease` varchar(10) CHARACTER SET latin1 DEFAULT '0.1.0',
  `defBaseUrl` text CHARACTER SET latin1 DEFAULT NULL,
  `defAdminUrl` text CHARACTER SET latin1 DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appdefaults`
--

INSERT INTO `appdefaults` (`defId`, `defName`, `prefix`, `poweredBy`, `defVersion`, `defDevRelease`, `defRelease`, `defBaseUrl`, `defAdminUrl`, `created_at`, `updated_at`) VALUES
(1, 'Hope', 'insight', 'Hope Foundation', 'v1', '0.1.0', '1.0', 'http://localhost/hopefoundation', 'http://localhost/hopefoundation', '2022-03-05 13:09:12', '2022-03-05 13:09:12');

-- --------------------------------------------------------

--
-- Table structure for table `appprivileges`
--

CREATE TABLE `appprivileges` (
  `aeId` int(11) NOT NULL,
  `aeName` varchar(255) NOT NULL,
  `aeRelease` decimal(10,0) NOT NULL,
  `aeIsStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `atdId` int(11) NOT NULL,
  `atdOrgStfMasterId` int(11) NOT NULL,
  `atdStuMasterId` int(11) NOT NULL,
  `atdStartDate` int(11) NOT NULL,
  `atdEndDate` int(11) NOT NULL,
  `atdInTime` int(11) NOT NULL,
  `atdOutTime` int(11) NOT NULL,
  `atdTotalHours` int(11) NOT NULL,
  `atdIsStatus` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `authactions`
--

CREATE TABLE `authactions` (
  `auctId` int(11) NOT NULL,
  `auctUserName` varchar(255) NOT NULL,
  `auctPassword` text NOT NULL,
  `auctOrgId` int(11) NOT NULL,
  `auctTypeId` int(11) NOT NULL COMMENT '0-SuperAdmin,\r\n1-OrgAdmin,\r\n2-EachOrgAdmin,\r\n3-Student,\r\n4-Teachers,\r\n5-Staff,\r\n6-Family,\r\n7-Others',
  `auctPrivileges` text NOT NULL,
  `auctIsStatus` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `message` varchar(2550) NOT NULL,
  `fileurl` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `categoryid`, `title`, `description`, `message`, `fileurl`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Blog post', 'Some description', 'Hi Readers !', 'C:\\fakepath\\.stogram.sqlite', 1, '2022-07-15 04:02:17', '2022-07-15 04:07:12');

-- --------------------------------------------------------

--
-- Table structure for table `boardtypes`
--

CREATE TABLE `boardtypes` (
  `beId` int(11) NOT NULL,
  `beType` varchar(255) NOT NULL,
  `beIsStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `cityname` varchar(50) DEFAULT NULL,
  `stateid` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `cityname`, `stateid`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Chennai', 1, 1, '2022-03-02 07:19:24', '2022-03-02 07:19:24');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `clssId` int(11) NOT NULL,
  `branchId` int(11) DEFAULT NULL,
  `clssName` varchar(255) NOT NULL,
  `clssIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`clssId`, `branchId`, `clssName`, `clssIsStatus`, `created_at`, `updated_at`) VALUES
(1, 1, 'I', 1, '2022-05-12 19:02:53', '2022-05-12 19:02:53'),
(2, 1, 'II', 1, '2022-05-12 19:02:53', '2022-05-12 19:02:53'),
(3, 1, 'III', 1, '2022-05-12 19:03:12', '2022-05-12 19:03:12'),
(4, 1, 'IV', 1, '2022-05-12 19:03:12', '2022-05-12 19:03:12'),
(5, 1, 'V', 1, '2022-05-12 19:03:20', '2022-05-12 19:03:20'),
(6, 1, 'VI', 1, '2022-08-02 10:03:20', '2022-08-02 10:03:20'),
(7, 1, 'VII', 1, '2022-09-01 12:41:06', '2022-09-01 12:41:06'),
(8, 1, 'VIII', 1, '2022-09-01 12:41:18', '2022-09-01 12:41:18'),
(9, 1, 'IX', 1, '2022-09-01 12:41:46', '2022-09-01 12:41:46'),
(10, 1, 'X', 1, '2022-09-01 12:41:46', '2022-09-01 12:41:46'),
(11, 1, 'XI', 1, '2022-09-01 12:42:12', '2022-09-01 12:42:12'),
(12, 1, 'XII', 1, '2022-09-01 12:42:12', '2022-09-01 12:42:12'),
(13, 1, 'Pre KG', 1, '2022-09-01 12:42:12', '2022-09-01 12:42:12'),
(14, 1, 'LKG', 1, '2022-09-01 12:42:12', '2022-09-01 12:42:12'),
(15, 1, 'UKG', 1, '2022-09-01 12:42:12', '2022-09-01 12:42:12');

-- --------------------------------------------------------

--
-- Table structure for table `classsections`
--

CREATE TABLE `classsections` (
  `clsecnId` int(11) NOT NULL,
  `clsecnClassMasterId` int(11) NOT NULL,
  `clsecnSectionMasterId` int(11) NOT NULL,
  `clsecnOrgMasterId` int(11) NOT NULL,
  `clsecnIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `clId` int(11) NOT NULL,
  `clName` varchar(255) NOT NULL,
  `clContactNoOne` varchar(255) NOT NULL,
  `clContactNoTwo` varchar(255) NOT NULL,
  `clEmail` varchar(255) NOT NULL,
  `clTrialStart_at` date NOT NULL,
  `clTrialDateCount` int(11) NOT NULL,
  `clAppStart_at` date NOT NULL,
  `clAMC_at` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `collegeboardtypes`
--

CREATE TABLE `collegeboardtypes` (
  `cbeId` int(11) NOT NULL,
  `cbeType` varchar(255) NOT NULL,
  `cbeIsStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `collegetypes`
--

CREATE TABLE `collegetypes` (
  `ceId` int(11) NOT NULL,
  `ceType` varchar(255) NOT NULL,
  `ceIsStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `cmplId` int(11) NOT NULL,
  `cmplOrgId` int(11) NOT NULL,
  `cmplDescription` text NOT NULL,
  `cmplComments` text NOT NULL,
  `cmplReceivedTo` int(11) NOT NULL COMMENT '1-Principal\r\n2-Staff\r\n3-Parents\r\n4-Counceller\r\n5-Corresondent',
  `cmplReviewed` int(11) NOT NULL,
  `cmplIsListed` tinyint(4) NOT NULL DEFAULT 0,
  `cmplReportedBy` int(11) NOT NULL,
  `cmplIsStatus` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `configurationmasters`
--

CREATE TABLE `configurationmasters` (
  `cnId` int(11) NOT NULL,
  `cnName` varchar(255) NOT NULL,
  `cnIsStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `configurationmasters`
--

INSERT INTO `configurationmasters` (`cnId`, `cnName`, `cnIsStatus`, `created_at`, `updated_at`) VALUES
(1, 'online_test_preview', 1, '2022-07-22 08:43:10', '2022-07-22 08:43:10');

-- --------------------------------------------------------

--
-- Table structure for table `configurations`
--

CREATE TABLE `configurations` (
  `cfnId` int(11) NOT NULL,
  `cfnMasterId` int(11) NOT NULL,
  `cfnBranchId` int(11) NOT NULL,
  `cfnConfNumber` int(11) NOT NULL,
  `cfnIsOrgAvail` int(11) NOT NULL,
  `cfnIsDisabled` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `configurations`
--

INSERT INTO `configurations` (`cfnId`, `cfnMasterId`, `cfnBranchId`, `cfnConfNumber`, `cfnIsOrgAvail`, `cfnIsDisabled`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 0, '2022-07-22 08:44:08', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `contactdetails`
--

CREATE TABLE `contactdetails` (
  `condId` int(11) NOT NULL,
  `condOfficialNumber` varchar(15) DEFAULT NULL,
  `condPersonalNumber` varchar(15) DEFAULT NULL,
  `condOtherNumber1` varchar(255) NOT NULL,
  `condOtherNumber2` varchar(255) NOT NULL,
  `condLandLine1` varchar(255) NOT NULL,
  `condLandLine2` varchar(255) NOT NULL,
  `condLandLine3` varchar(255) NOT NULL,
  `condLandLine4` varchar(255) NOT NULL,
  `condLandLine5` varchar(255) NOT NULL,
  `condNumber5` varchar(255) NOT NULL,
  `condFax1` varchar(255) NOT NULL,
  `condFax2` varchar(255) NOT NULL,
  `condFax3` varchar(255) NOT NULL,
  `condFax4` varchar(255) NOT NULL,
  `condFax5` varchar(255) NOT NULL,
  `condIsStatus` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactdetails`
--

INSERT INTO `contactdetails` (`condId`, `condOfficialNumber`, `condPersonalNumber`, `condOtherNumber1`, `condOtherNumber2`, `condLandLine1`, `condLandLine2`, `condLandLine3`, `condLandLine4`, `condLandLine5`, `condNumber5`, `condFax1`, `condFax2`, `condFax3`, `condFax4`, `condFax5`, `condIsStatus`, `created_at`, `updated_at`) VALUES
(1, '9042748542', '8792523546', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-06-05 08:42:10', '2022-08-17 15:56:07'),
(6, '9078090234', '7400586323', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-08-06 13:34:56', '2022-08-06 13:34:56'),
(7, '9095458964', '7894578123', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2022-08-09 20:43:49', '2022-08-09 20:43:49'),
(8, '6987456987', 'null', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2022-08-12 01:37:53', '2022-08-17 15:57:06'),
(9, '6548958756', 'null', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2022-08-12 01:53:38', '2022-08-17 15:56:28'),
(10, '9874632123', 'null', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2022-08-13 08:34:36', '2022-08-13 08:34:36'),
(11, '9900078000', 'null', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2022-08-17 08:35:31', '2022-08-17 08:35:31'),
(12, '7646868666', '46664646', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2022-08-18 15:38:45', '2022-08-18 15:38:45'),
(13, '9789546214', 'null', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2022-08-19 10:57:04', '2022-08-19 10:57:04'),
(14, '9564322541', 'null', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2022-08-19 10:59:35', '2022-08-19 10:59:35'),
(21, '9865968546', 'null', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2022-08-20 12:32:08', '2022-08-20 12:32:08'),
(22, '9456212541', 'null', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2022-08-22 11:05:37', '2022-08-22 11:05:37'),
(23, '9875965875', 'null', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2022-08-22 12:16:43', '2022-08-22 12:16:43'),
(24, '7987297299', 'null', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2022-08-29 06:32:42', '2022-08-29 06:32:42'),
(25, '9587452365', 'null', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2022-09-03 04:38:33', '2022-09-03 04:38:33'),
(113, '7550247920', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:37', '2022-09-21 00:54:37'),
(114, '9840556691', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:37', '2022-09-21 00:54:37'),
(115, '7358669937', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:37', '2022-09-21 00:54:37'),
(116, '9841222064', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(117, '9952910164', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(118, '9941682429', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(119, '9789019148', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(120, '9962959910', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(121, '9080617567', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(122, '7299620252', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(123, '9962858698', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(124, '9514787558', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(125, '7299066238', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(126, '9176767675', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(127, '7401748360', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(128, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(129, '9551346496', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(130, '9940694395', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(131, '9841237966', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(132, '7305337853', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(133, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(134, '8124109638', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(135, '9789963837', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(136, '9962931744', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(137, '9342855471', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(138, '7845361118', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(139, '9840916767', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(140, '9941934301', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(141, '9840532097', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(142, '8072558813', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(143, '8608731974', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(144, '9962858698', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(145, '7358746784', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(146, '7358284810', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(147, '7401007931', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(148, '8608514124', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(149, '9710671365', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(150, '7200972276', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(151, '8678957876', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(152, '8825682689', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(153, '9500135050', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(154, '8608850094', '7092979282', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(155, '9677965063', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(156, '9962421998', '9566157599', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(157, '7358083613', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(158, '9092311875', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(159, '9551522789', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(160, '8428608643', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(161, '8939112131', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(162, '9003230810', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(163, '8220676008', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(164, '9677060056', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(165, '9087450950', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(166, '8778169978', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(167, '7299393433', '9677274867', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(168, '9150719643', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(169, '7358238083', '9710268020', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(170, '9790899689', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(171, '9092377895', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(172, '9092377865', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(173, '9710240542', '9150915191', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(174, '9275988235', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(175, '9875822268', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(176, '9962227761', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(177, '9874652284', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(178, '8978526474', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(179, '9790907467', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(180, '9790907467', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(181, '8825682639', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(182, '6374279282', '8610669525', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(183, '8807700408', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(184, '9940042665', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(185, '9940042665', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(186, '9940042665', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(187, '9941786961', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(188, '7305908891', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(189, '9941009519', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(190, '8144614608', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(191, '7299222544', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(192, '9962439441', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(193, '7871425448', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(194, '8681946537', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(195, '9092311765', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(196, '9789004497', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(197, NULL, '9940076314', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(198, '8608815018', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(199, '9092377895', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(200, '7358373372', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(201, '9176678237', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(202, '9384576935', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(203, '9940077054', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(204, '9884130012', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(205, '9080011989', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(206, '9940208267', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(207, '9941703032', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(208, '9176092772', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(209, '8608398210', '8148562216', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(210, '9566089819', '7448752918', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(211, '9092377895', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(212, '9962247399', '6381224678', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(213, '9789004019', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(214, '6380005965', '6369288425', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(215, '9841412051', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(216, '9600022971', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(217, '9025201363', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(218, '9342284689', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(219, '9710303539', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(220, '9655544091', '8124340933', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(221, '9952903257', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(222, '9952903712', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(223, '7904444745', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(224, '6383123581', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(225, '9790771841', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(226, '9962606302', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(227, '9092311895', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(228, '8939654645', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(229, '9551233953', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(230, '9176460665', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(231, '9092311895', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(232, '9941133684', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(233, '9345245578', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(234, '9677060056', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(235, '9677183047', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(236, '9176568208', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(237, '9176914238', '9962104238', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(238, '9094703563', '8939846426', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(239, '9600743487', '7305341956', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(240, '9952910164', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(241, '9551055419', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(242, '8939895736', '9176177166', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(243, '8056099886', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(244, '9600190763', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(245, '7338833500', '9941682429', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(246, '9003260119', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(247, '9884225581', '9962606302', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(248, '9884640774', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(249, '8939060885', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(250, '9551522789', '9551825651', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(251, '9566089819', '9150719643', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(252, '8608629979', '8124170155', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(253, '7871638914', '8870994390', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(254, '9094551349', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(255, '9080477462', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(256, '9941081333', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(257, '6380072724', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(258, '9003209508', '9941212405', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(259, '9962250825', '8939299063', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(260, '9940042665', '7826077214', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(261, '7305908891', '9884543741', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(262, '8754556621', '7358478795', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(263, '8124680556', '7358675353', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(264, '8610003544', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(265, '9840284892', '9994681187', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(266, '7358605078', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(267, '7092844886', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(268, '7358669937', '8939701294', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(269, '7904800996', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(270, '7305059788', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(271, '9600552671', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(272, '9940255403', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(273, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(274, '9842511487', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(275, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(276, '9841953054', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(277, '9677018680', '9940341288', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(278, '9600022971', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(279, '8939361200', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(280, '8428471146', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(281, '9840284892', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(282, '6369398439', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(283, '7299066238', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(284, '7397330768', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(285, '9884375181', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(286, '99402292671', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(287, '9003731190', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(288, '6380966804', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(289, '9551233953', '9551233953', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(290, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(291, '9176102827', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(292, '8682060761', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(293, '8682060761', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(294, '9790796671', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(295, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(296, '6380005965', '6369288425', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(297, '9790707931', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(298, '9344169627', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(299, '7305342752', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(300, '8939056349', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(301, '9629546990', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(302, '7358382608', '6382909327', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(303, '9789993071', '8754442991', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(304, '7695883387', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(305, '9710059293', '9094595922', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(306, '9940675831', '9600190763', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(307, '9514796171', '7448752918', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(308, '6380553764', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(309, '9790860891', '7338700891', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(310, '9551233953', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(311, '9003208571', '9566378159', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(312, '7401325263', '8939364048', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(313, '9840798641', '9941486989', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(314, '7358404935', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(315, '8608850094', '7092979282', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(316, '9940646987', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(317, '9500135050', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(318, '7258249471', '9952003791', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(319, '9962439441', '8939552034', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(320, '9629546990', '9840275947', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(321, '7338759302', '8939417457', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(322, '6381668211', '8072416656', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(323, '9003512895', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(324, '7449203701', '8668043133', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(325, '7904800996', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(326, '9840933684', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(327, '9962858698', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(328, '9962393163', '9962234361', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(329, '8124170155', '8608629979', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(330, '8946020763', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(331, '9840281029', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(332, '8220526469', '9433525192', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(333, '9566217056', '9841901022', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(334, '7395914665', '9042581683', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(335, '9940717855', '9884282107', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(336, '9500179429', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(337, '9003119593', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(338, '9884104787', '8825722150', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(339, '9176092772', '9841821778', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(340, '8220224040', '9840556691', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(341, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(342, '7401234875', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(343, '7358005573', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(344, '7358356529', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(345, '9841141452', '8012852005', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(346, '8939056349', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(347, '9789882025', '6380607809', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(348, '9176216549', '9884535046', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(349, '8870994390', '7871638914', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(350, '9500179429', '7448573732', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(351, '9080617567', '9841424590', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(352, '6382086486', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(353, '9677286895', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(354, '9499953075', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(355, '8939166947', '8754401752', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(356, '7358303209', '8056025742', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(357, '9710177208', '9791043772', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(358, '7449016399', '7305301090', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(359, '9790833728', '9361601152', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(360, '9710296330', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(361, '9789867688', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(362, '9962225532', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(363, '9789336336', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(364, '8939608784', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(365, '9941975840', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(366, '9110368864', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(367, '9884878035', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(368, '9150802090', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(369, '9677145515', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(370, '8608828611', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(371, '8939259043', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(372, '7397368240', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(373, '9600081219', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(374, '9176211185', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(375, '8608314515', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(376, '9962226087', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(377, '7299222544', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(378, '7092844886', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(379, '8148783991', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(380, '9500150052', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(381, '9566102272', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(382, '9551918569', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(383, '9840577196', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(384, '8056249298', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(385, '8056099886', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(386, '9962727761', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(387, '7358420129', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(388, '9841710262', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(389, '9092800423', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(390, '9962791236', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(391, '9962651304', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(392, '7550274520', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(393, '9003167677', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(394, '9049751619', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(395, '9840299726', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(396, '9003220671', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(397, '8680002338', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(398, '9952003791', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(399, '9840663271', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(400, '7395912806', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(401, '9003274789', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:32', '2022-09-21 00:55:32'),
(402, '9094449969', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:32', '2022-09-21 00:55:32'),
(403, '9789875334', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:32', '2022-09-21 00:55:32'),
(404, '9940479434', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:33', '2022-09-21 00:55:33'),
(405, '9962393163', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:33', '2022-09-21 00:55:33'),
(406, '9941486989', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:34', '2022-09-21 00:55:34'),
(407, '9840672261', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:34', '2022-09-21 00:55:34'),
(408, '7826859406', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:34', '2022-09-21 00:55:34'),
(409, '9789764996', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(410, '7358497213', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(411, '7305908873', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(412, '9941005919', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(413, '7299306617', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(414, '9840707376', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(415, '9789968052', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(416, '7305437944', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(417, '7401090292', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(418, '9884532865', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(419, '9841075978', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(420, '8939765838', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(421, '7092909419', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(422, '7397340288', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(423, '7904870798', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(424, '9176413932', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(425, '9884257773', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(426, '9841800693', '6380705057', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(427, '7358005573', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(428, '9003132061', '7092721303', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(429, '9840476272', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(430, '7200674198', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(431, '9094825205', '7358587846', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(432, '9840417070', '7200220340', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(433, '9962326087', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(434, '9940646987', '8148778964', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(435, '9941198850', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(436, '9566038921', '9789977621', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(437, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(438, '9952216914', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(439, '7358446038', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(440, '6374808690', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(441, '9841183282', '8056293262', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(442, '9176368997', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(443, '7397368240', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(444, '9094514462', '9092817783', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(445, '9841205609', '8428911102', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(446, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(447, '8682092915', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(448, '8248317009', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(449, '8015107549', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(450, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(451, '7550145218', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(452, '9952010991', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(453, '9962494604', '8939559536', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(454, '8825431388', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(455, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(456, '7358403114', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(457, '9840932545', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(458, '9790796671', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(459, '9710765922', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(460, '9884375181', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(461, '9574125635', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(462, '9840417070', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(463, '9840707376', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(464, '9677155124', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(465, '9841710262', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(466, '9840081361', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(467, '9710511066', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(468, '7299621750', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(469, '8675675614', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(470, '9841222064', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(471, '9941673323', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(472, '9962044370', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(473, '9094116878', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(474, '9790833728', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(475, '7010393344', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(476, '9841490978', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(477, '7550274584', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:49', '2022-09-21 00:55:49'),
(478, '9600196636', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:49', '2022-09-21 00:55:49'),
(479, '9884488264', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(480, '9710035589', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(481, '9551082567', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(482, '9884535046', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(483, '9791027527', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(484, '9500366469', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(485, '8056248364', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(486, '8939787242', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51');
INSERT INTO `contactdetails` (`condId`, `condOfficialNumber`, `condPersonalNumber`, `condOtherNumber1`, `condOtherNumber2`, `condLandLine1`, `condLandLine2`, `condLandLine3`, `condLandLine4`, `condLandLine5`, `condNumber5`, `condFax1`, `condFax2`, `condFax3`, `condFax4`, `condFax5`, `condIsStatus`, `created_at`, `updated_at`) VALUES
(487, '9884311491', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(488, '9789985357', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(489, '9003637286', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(490, '9710837880', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(491, '9940050873', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(492, '8973212436', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(493, '9791027527', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(494, '6382974939', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(495, '7358420129', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(496, '9840721872', '9566092023', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(497, '7708132920', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(498, '9789004019', '9994691705', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(499, '7358587843', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(500, '7550145218', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(501, '7305873121', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(502, '9092811314', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(503, '7604963120', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(504, '9940341288', '9677018680', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(505, '9600030260', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(506, '9500366469', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(507, '9176252820', '9841679510', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(508, '8680034126', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(509, '9941025559', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(510, '9176704946', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(511, '7200961469', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(512, '6374172799', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(513, '9551523072', '9841717110', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(514, '6369676707', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(515, '7395912806', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(516, '9514568208', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(517, '6385148922', '7397369867', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(518, '9841446821', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(519, '8939367736', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(520, '9677710076', '8428367581', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(521, '9962032658', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(522, '9962879243', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(523, '8939416198', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(524, '7448539188', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(525, '9941459776', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(526, '7397003099', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(527, '9710849505', '9840664127', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(528, '9840776894', '7871002130', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(529, '9150937870', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(530, '9655744955', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(531, '9176171761', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(532, '9790707931', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(533, '9092597940', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(534, '9840370323', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(535, '7550243395', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(536, '8056032085', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(537, '8825431388', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(538, '8825841598', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(539, '6382229582', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(540, '9791116573', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(541, '9840799192', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(542, '9789985357', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(543, '9092931758', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(544, '9841565216', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(545, '7358752450', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(546, '8939566610', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(547, '8939485915', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(548, '6383706806', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(549, '7358403114', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(550, '6369412559', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(551, '9940551521', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(552, '7305546213', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(553, '9962912101', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(554, '9176150377', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(555, '9790862740', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(556, '9884637588', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(557, '9025207067', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(558, '9962307554', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(559, '7338973947', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(560, '9884282992', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(561, '7358584678', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(562, '9940635908', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(563, '8939056349', '9841922165', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(564, '9176293141', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(565, '9176177166', '9962247399', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(566, '7358592944', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(567, '8939706592', '8870798592', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 07:56:48', '2022-09-21 07:56:48'),
(568, '8925743866', '9444681767', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 07:56:48', '2022-09-21 07:56:48'),
(569, '9884204425', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 07:56:48', '2022-09-21 07:56:48'),
(570, '8939742593', '9489115108', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(571, '9176373686', '8778939872', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(572, '9940567032', '7092215227', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(573, '9962760656', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(574, '9381046672', '7904274607', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 07:56:50', '2022-09-21 07:56:50'),
(575, '8939056349', '9841922165', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:20:15', '2022-09-21 08:20:15'),
(576, '9176293141', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:20:15', '2022-09-21 08:20:15'),
(577, '9176177166', '9962247399', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(578, '7358592944', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(579, '8939706592', '8870798592', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(580, '8925743866', '9444681767', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(581, '9884204425', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(582, '8939742593', '9489115108', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(583, '9176373686', '8778939872', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(584, '9940567032', '7092215227', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(585, '9962760656', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(586, '9381046672', '7904274607', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(587, '8939056349', '9841922165', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:32:17', '2022-09-21 08:32:17'),
(588, '9176293141', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:32:18', '2022-09-21 08:32:18'),
(589, '9176177166', '9962247399', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:32:18', '2022-09-21 08:32:18'),
(590, '7358592944', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:32:18', '2022-09-21 08:32:18'),
(591, '8939706592', '8870798592', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:32:19', '2022-09-21 08:32:19'),
(592, '8925743866', '9444681767', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:32:19', '2022-09-21 08:32:19'),
(593, '9884204425', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:32:19', '2022-09-21 08:32:19'),
(594, '8939742593', '9489115108', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:32:20', '2022-09-21 08:32:20'),
(595, '9176373686', '8778939872', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:32:20', '2022-09-21 08:32:20'),
(596, '9940567032', '7092215227', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:32:20', '2022-09-21 08:32:20'),
(597, '9962760656', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:32:21', '2022-09-21 08:32:21'),
(598, '9381046672', '7904274607', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:32:21', '2022-09-21 08:32:21'),
(599, '8939056349', '9841922165', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:39:02', '2022-09-21 08:39:02'),
(600, '9176293141', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:39:02', '2022-09-21 08:39:02'),
(601, '9176177166', '9962247399', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:39:03', '2022-09-21 08:39:03'),
(602, '7358592944', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:39:03', '2022-09-21 08:39:03'),
(603, '8939706592', '8870798592', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:39:03', '2022-09-21 08:39:03'),
(604, '8925743866', '9444681767', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:39:04', '2022-09-21 08:39:04'),
(605, '9884204425', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:39:04', '2022-09-21 08:39:04'),
(606, '8939742593', '9489115108', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:39:04', '2022-09-21 08:39:04'),
(607, '9176373686', '8778939872', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:39:05', '2022-09-21 08:39:05'),
(608, '9940567032', '7092215227', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:39:05', '2022-09-21 08:39:05'),
(609, '9962760656', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:39:05', '2022-09-21 08:39:05'),
(610, '9381046672', '7904274607', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:39:06', '2022-09-21 08:39:06'),
(611, '8939056349', '9841922165', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:44:58', '2022-09-21 08:44:58'),
(612, '9176293141', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:44:58', '2022-09-21 08:44:58'),
(613, '9176177166', '9962247399', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:44:59', '2022-09-21 08:44:59'),
(614, '7358592944', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:44:59', '2022-09-21 08:44:59'),
(615, '8939706592', '8870798592', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:45:00', '2022-09-21 08:45:00'),
(616, '8925743866', '9444681767', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:45:00', '2022-09-21 08:45:00'),
(617, '9884204425', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:45:00', '2022-09-21 08:45:00'),
(618, '8939742593', '9489115108', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:45:01', '2022-09-21 08:45:01'),
(619, '9176373686', '8778939872', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:45:01', '2022-09-21 08:45:01'),
(620, '9940567032', '7092215227', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:45:02', '2022-09-21 08:45:02'),
(621, '9962760656', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:45:02', '2022-09-21 08:45:02'),
(622, '9381046672', '7904274607', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 08:45:03', '2022-09-21 08:45:03'),
(623, '8939056349', '9841922165', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 10:50:14', '2022-09-21 10:50:14'),
(624, '9176293141', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 10:50:14', '2022-09-21 10:50:14'),
(625, '9176177166', '9962247399', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(626, '7358592944', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(627, '8939706592', '8870798592', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(628, '8925743866', '9444681767', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(629, '9884204425', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(630, '8939742593', '9489115108', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(631, '9176373686', '8778939872', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(632, '9940567032', '7092215227', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(633, '9962760656', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(634, '9381046672', '7904274607', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(635, '8939056349', '9841922165', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 11:28:55', '2022-09-21 11:28:55'),
(636, '9176293141', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(637, '9176177166', '9962247399', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(638, '7358592944', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(639, '8939706592', '8870798592', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(640, '8925743866', '9444681767', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(641, '9884204425', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(642, '8939742593', '9489115108', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(643, '9176373686', '8778939872', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(644, '9940567032', '7092215227', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(645, '9962760656', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(646, '9381046672', '7904274607', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(647, '9562588558', 'null', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-09-29 04:44:35', '2022-09-29 04:44:35');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `cnId` int(11) NOT NULL,
  `cnName` varchar(255) NOT NULL,
  `cnCurrency` varchar(255) NOT NULL,
  `cnCode` varchar(255) NOT NULL,
  `cnIcon` varchar(255) NOT NULL,
  `cnIsStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `docId` int(11) NOT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `docTitle` varchar(255) DEFAULT NULL,
  `docDescription` varchar(255) DEFAULT NULL,
  `doc_type` varchar(10) DEFAULT NULL,
  `docResource` varchar(255) DEFAULT NULL,
  `docIsStatus` tinyint(1) NOT NULL DEFAULT 1,
  `imgHash` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`docId`, `topic_id`, `docTitle`, `docDescription`, `doc_type`, `docResource`, `docIsStatus`, `imgHash`, `created_at`, `updated_at`) VALUES
(119, 13, 'Confession of a Buddhist Atheist - Stephen Batchelor.pdf', '', 'PDF', 'uploads/topics/pdf/291d7aaac7bf3944d7cf1c1a81220227_Confession of a Buddhist Atheist - Stephen Batchelor.pdf', 1, '291d7aaac7bf3944d7cf1c1a81220227', '2022-09-16 07:38:19', '2022-09-16 07:38:19'),
(120, 13, 'curiosity-a4.pdf', '', 'PDF', 'uploads/topics/pdf/a2f3f5ec23e2bd0bb6e5056bb0485de6_curiosity-a4.pdf', 1, 'a2f3f5ec23e2bd0bb6e5056bb0485de6', '2022-09-16 07:38:19', '2022-09-16 07:38:19'),
(121, 13, 'Screenshot (130).png', '', 'IMAGE', 'uploads/topics/image/feb110e16b81f729ec7244dba8066a4f_Screenshot (130).png', 1, 'feb110e16b81f729ec7244dba8066a4f', '2022-09-16 07:38:19', '2022-09-16 07:38:19'),
(122, 13, 'Screenshot (135).png', '', 'IMAGE', 'uploads/topics/image/b62859544f21966fdc4ba3263760e08b_Screenshot (135).png', 1, 'b62859544f21966fdc4ba3263760e08b', '2022-09-16 07:38:19', '2022-09-16 07:38:19'),
(123, 13, 'Screenshot (136).png', '', 'IMAGE', 'uploads/topics/image/992c5fed88d66305a69fe95cb63b8113_Screenshot (136).png', 1, '992c5fed88d66305a69fe95cb63b8113', '2022-09-16 07:38:19', '2022-09-16 07:38:19');

-- --------------------------------------------------------

--
-- Table structure for table `emailaddresses`
--

CREATE TABLE `emailaddresses` (
  `emlId` int(11) NOT NULL,
  `emlOfficialAddress` varchar(50) DEFAULT NULL,
  `emlPersonalAddress` varchar(50) DEFAULT NULL,
  `emlOtherAddress1` varchar(50) DEFAULT NULL,
  `emlOtherAddress2` varchar(50) DEFAULT NULL,
  `emlOtherAddress3` varchar(50) DEFAULT NULL,
  `emlIsStatus` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emailaddresses`
--

INSERT INTO `emailaddresses` (`emlId`, `emlOfficialAddress`, `emlPersonalAddress`, `emlOtherAddress1`, `emlOtherAddress2`, `emlOtherAddress3`, `emlIsStatus`, `created_at`, `updated_at`) VALUES
(1, 'rharikumarcse@gmail.com', '', '', '', '', 0, '2022-06-05 08:28:51', '2022-08-17 15:56:07'),
(6, 'rr@ee.com', '', '', '', '', 0, '2022-06-08 00:34:40', '2022-06-08 00:34:40'),
(7, 'some@mail.com', '', '', '', '', 1, '2022-07-04 02:07:48', '2022-07-04 02:07:48'),
(8, 'someother@email.com', '', '', '', '', 0, '2022-07-04 02:48:12', '2022-07-04 02:48:12'),
(9, 'rajak@email.com', '', '', '', '', 1, '2022-08-06 13:34:56', '2022-08-06 13:34:56'),
(10, 'Saf@feaf.coa', '', '', '', '', 0, '2022-08-12 01:37:53', '2022-08-17 15:57:06'),
(11, 'fd@ghd.ldof', '', '', '', '', 0, '2022-08-12 01:53:38', '2022-08-17 15:56:28'),
(12, 'ranjit@mail.com', '', '', '', '', 0, '2022-08-13 08:34:36', '2022-08-13 08:34:36'),
(13, 'nandha@mail.com', '', '', '', '', 0, '2022-08-17 08:35:31', '2022-08-17 08:35:31'),
(14, 'hdhd@fff.cdf', '', '', '', '', 0, '2022-08-18 15:38:45', '2022-08-18 15:38:45'),
(15, 'sdfe@lfi.cfr', '', '', '', '', 0, '2022-08-19 10:57:04', '2022-08-19 10:57:04'),
(16, 'some@ema.clo', '', '', '', '', 0, '2022-08-19 10:59:35', '2022-08-19 10:59:35'),
(23, 'rathina@dams.com', '', '', '', '', 0, '2022-08-20 12:32:08', '2022-08-20 12:32:08'),
(24, 'dfr@fgh.ckf', '', '', '', '', 0, '2022-08-22 11:05:37', '2022-08-22 11:05:37'),
(25, 'lafaef@fefe.coe', '', '', '', '', 0, '2022-08-22 12:16:43', '2022-08-22 12:16:43'),
(26, '4tw4t@rfhdh.yjr', '', '', '', '', 0, '2022-08-29 06:32:42', '2022-08-29 06:32:42'),
(27, 'someSda@afe.cao', '', '', '', '', 0, '2022-09-03 04:38:33', '2022-09-03 04:38:33'),
(28, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:37', '2022-09-21 00:54:37'),
(29, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:37', '2022-09-21 00:54:37'),
(30, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:37', '2022-09-21 00:54:37'),
(31, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(32, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(33, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(34, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(35, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(36, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(37, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(38, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(39, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(40, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(41, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(42, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(43, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(44, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(45, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(46, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(47, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(48, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(49, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(50, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(51, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(52, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(53, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(54, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(55, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(56, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(57, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(58, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(59, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(60, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(61, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(62, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(63, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(64, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(65, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(66, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(67, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(68, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(69, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(70, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(71, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(72, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(73, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(74, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(75, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(76, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(77, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(78, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(79, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(80, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(81, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(82, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(83, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(84, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(85, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(86, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(87, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(88, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(89, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(90, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(91, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(92, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(93, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(94, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(95, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(96, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(97, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(98, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(99, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(100, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(101, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(102, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(103, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(104, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(105, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(106, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(107, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(108, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(109, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(110, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(111, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(112, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(113, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(114, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(115, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(116, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(117, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(118, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(119, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(120, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(121, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(122, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(123, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(124, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(125, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(126, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(127, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(128, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(129, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(130, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(131, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(132, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(133, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(134, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(135, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(136, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(137, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(138, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(139, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(140, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(141, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(142, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(143, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(144, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(145, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(146, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(147, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(148, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(149, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(150, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(151, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(152, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(153, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(154, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(155, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(156, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(157, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(158, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(159, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(160, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(161, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(162, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(163, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(164, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(165, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(166, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(167, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(168, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(169, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(170, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(171, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(172, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(173, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(174, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(175, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(176, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(177, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(178, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(179, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(180, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(181, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(182, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(183, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(184, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(185, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(186, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(187, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(188, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(189, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(190, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(191, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(192, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(193, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(194, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(195, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(196, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(197, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(198, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(199, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(200, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(201, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(202, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(203, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(204, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(205, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(206, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(207, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(208, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(209, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(210, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(211, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(212, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(213, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(214, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(215, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(216, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(217, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(218, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(219, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(220, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(221, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(222, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(223, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(224, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(225, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(226, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(227, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(228, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(229, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(230, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(231, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(232, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(233, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(234, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(235, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(236, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(237, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(238, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(239, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(240, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(241, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(242, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(243, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(244, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(245, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(246, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(247, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(248, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(249, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(250, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(251, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(252, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(253, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(254, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(255, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(256, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(257, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(258, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(259, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(260, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(261, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(262, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(263, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(264, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(265, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(266, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(267, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(268, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(269, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(270, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(271, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(272, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(273, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(274, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(275, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(276, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(277, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(278, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(279, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(280, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(281, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(282, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(283, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(284, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(285, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(286, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(287, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(288, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(289, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(290, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(291, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(292, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(293, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(294, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(295, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(296, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(297, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(298, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(299, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(300, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(301, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(302, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(303, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(304, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(305, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(306, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(307, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(308, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(309, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(310, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(311, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(312, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(313, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(314, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(315, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(316, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:32', '2022-09-21 00:55:32'),
(317, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:32', '2022-09-21 00:55:32'),
(318, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:32', '2022-09-21 00:55:32'),
(319, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:33', '2022-09-21 00:55:33'),
(320, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:33', '2022-09-21 00:55:33'),
(321, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:34', '2022-09-21 00:55:34'),
(322, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:34', '2022-09-21 00:55:34'),
(323, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:34', '2022-09-21 00:55:34'),
(324, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(325, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(326, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(327, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(328, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(329, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(330, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(331, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(332, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(333, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(334, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(335, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(336, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(337, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(338, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(339, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(340, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(341, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(342, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(343, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(344, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(345, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(346, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(347, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(348, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(349, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(350, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(351, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(352, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(353, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(354, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(355, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(356, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(357, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(358, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(359, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(360, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(361, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(362, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(363, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(364, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(365, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(366, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(367, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(368, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(369, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(370, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(371, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(372, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(373, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(374, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(375, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(376, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(377, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(378, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(379, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(380, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(381, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(382, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(383, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(384, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(385, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(386, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(387, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(388, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(389, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(390, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(391, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(392, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:49', '2022-09-21 00:55:49'),
(393, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:49', '2022-09-21 00:55:49'),
(394, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(395, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(396, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(397, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(398, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(399, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(400, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(401, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(402, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(403, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(404, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(405, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(406, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(407, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(408, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(409, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(410, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(411, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(412, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(413, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(414, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(415, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(416, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(417, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(418, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(419, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(420, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(421, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(422, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(423, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(424, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(425, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(426, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(427, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(428, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(429, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(430, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(431, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(432, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(433, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(434, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(435, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(436, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(437, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(438, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(439, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(440, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(441, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(442, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(443, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(444, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(445, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(446, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(447, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(448, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(449, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(450, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(451, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(452, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(453, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(454, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(455, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(456, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(457, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(458, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(459, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(460, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(461, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(462, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(463, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(464, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(465, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(466, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(467, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(468, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(469, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(470, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(471, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(472, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(473, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(474, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(475, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(476, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(477, NULL, NULL, NULL, NULL, NULL, 1, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(478, 'preetha.jothi@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(479, 'adhilakshmi.m@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(480, 'radhika.s@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(481, 'shreya.chettri@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(482, 'jayalakshmi.t@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 07:56:48', '2022-09-21 07:56:48'),
(483, 'racheljayakumari@gmail.com', NULL, NULL, NULL, NULL, 1, '2022-09-21 07:56:48', '2022-09-21 07:56:48'),
(484, 'geethanjali.v@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 07:56:48', '2022-09-21 07:56:48'),
(485, 'sumathi.s@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(486, 'usha.s@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(487, 'merlinblesssheeba07@gmail.com', NULL, NULL, NULL, NULL, 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(488, 'aruna.s@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(489, 'alphonsa.p@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 07:56:50', '2022-09-21 07:56:50'),
(490, 'preetha.jothi@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:20:15', '2022-09-21 08:20:15'),
(491, 'adhilakshmi.m@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:20:15', '2022-09-21 08:20:15'),
(492, 'radhika.s@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(493, 'shreya.chettri@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(494, 'jayalakshmi.t@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(495, 'racheljayakumari@gmail.com', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(496, 'geethanjali.v@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(497, 'sumathi.s@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(498, 'usha.s@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(499, 'merlinblesssheeba07@gmail.com', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(500, 'aruna.s@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(501, 'alphonsa.p@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(502, 'preetha.jothi@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:32:17', '2022-09-21 08:32:17'),
(503, 'adhilakshmi.m@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:32:18', '2022-09-21 08:32:18'),
(504, 'radhika.s@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:32:18', '2022-09-21 08:32:18'),
(505, 'shreya.chettri@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:32:18', '2022-09-21 08:32:18'),
(506, 'jayalakshmi.t@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:32:19', '2022-09-21 08:32:19'),
(507, 'racheljayakumari@gmail.com', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:32:19', '2022-09-21 08:32:19'),
(508, 'geethanjali.v@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:32:19', '2022-09-21 08:32:19'),
(509, 'sumathi.s@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:32:20', '2022-09-21 08:32:20'),
(510, 'usha.s@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:32:20', '2022-09-21 08:32:20'),
(511, 'merlinblesssheeba07@gmail.com', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:32:20', '2022-09-21 08:32:20'),
(512, 'aruna.s@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:32:21', '2022-09-21 08:32:21'),
(513, 'alphonsa.p@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:32:21', '2022-09-21 08:32:21'),
(514, 'preetha.jothi@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:39:02', '2022-09-21 08:39:02'),
(515, 'adhilakshmi.m@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:39:02', '2022-09-21 08:39:02'),
(516, 'radhika.s@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:39:03', '2022-09-21 08:39:03'),
(517, 'shreya.chettri@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:39:03', '2022-09-21 08:39:03'),
(518, 'jayalakshmi.t@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:39:03', '2022-09-21 08:39:03'),
(519, 'racheljayakumari@gmail.com', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:39:04', '2022-09-21 08:39:04'),
(520, 'geethanjali.v@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:39:04', '2022-09-21 08:39:04'),
(521, 'sumathi.s@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:39:04', '2022-09-21 08:39:04'),
(522, 'usha.s@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:39:05', '2022-09-21 08:39:05'),
(523, 'merlinblesssheeba07@gmail.com', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:39:05', '2022-09-21 08:39:05'),
(524, 'aruna.s@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:39:05', '2022-09-21 08:39:05'),
(525, 'alphonsa.p@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:39:06', '2022-09-21 08:39:06'),
(526, 'preetha.jothi@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:44:58', '2022-09-21 08:44:58'),
(527, 'adhilakshmi.m@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:44:58', '2022-09-21 08:44:58'),
(528, 'radhika.s@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:44:59', '2022-09-21 08:44:59'),
(529, 'shreya.chettri@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:44:59', '2022-09-21 08:44:59'),
(530, 'jayalakshmi.t@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:45:00', '2022-09-21 08:45:00'),
(531, 'racheljayakumari@gmail.com', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:45:00', '2022-09-21 08:45:00'),
(532, 'geethanjali.v@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:45:00', '2022-09-21 08:45:00'),
(533, 'sumathi.s@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:45:01', '2022-09-21 08:45:01'),
(534, 'usha.s@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:45:01', '2022-09-21 08:45:01'),
(535, 'merlinblesssheeba07@gmail.com', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:45:02', '2022-09-21 08:45:02'),
(536, 'aruna.s@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:45:02', '2022-09-21 08:45:02'),
(537, 'alphonsa.p@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 08:45:03', '2022-09-21 08:45:03'),
(538, 'preetha.jothi@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 10:50:14', '2022-09-21 10:50:14'),
(539, 'adhilakshmi.m@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 10:50:14', '2022-09-21 10:50:14'),
(540, 'radhika.s@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(541, 'shreya.chettri@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(542, 'jayalakshmi.t@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(543, 'racheljayakumari@gmail.com', NULL, NULL, NULL, NULL, 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(544, 'geethanjali.v@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(545, 'sumathi.s@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(546, 'usha.s@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(547, 'merlinblesssheeba07@gmail.com', NULL, NULL, NULL, NULL, 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(548, 'aruna.s@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(549, 'alphonsa.p@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(550, 'preetha.jothi@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 11:28:55', '2022-09-21 11:28:55'),
(551, 'adhilakshmi.m@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(552, 'radhika.s@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(553, 'shreya.chettri@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(554, 'jayalakshmi.t@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(555, 'racheljayakumari@gmail.com', NULL, NULL, NULL, NULL, 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(556, 'geethanjali.v@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(557, 'sumathi.s@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(558, 'usha.s@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(559, 'merlinblesssheeba07@gmail.com', NULL, NULL, NULL, NULL, 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(560, 'aruna.s@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(561, 'alphonsa.p@hopeww.in', NULL, NULL, NULL, NULL, 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(562, 'efa@faefea.ceae', NULL, NULL, NULL, NULL, 1, '2022-09-29 04:44:35', '2022-09-29 04:44:35');

-- --------------------------------------------------------

--
-- Table structure for table `employeeleaves`
--

CREATE TABLE `employeeleaves` (
  `emplvId` int(11) NOT NULL,
  `emplvSickLeaves` int(11) NOT NULL,
  `emplvPaidLeaves` int(11) NOT NULL,
  `emplvMaternityLeaves` int(11) NOT NULL,
  `emplvOtherLeaves` int(11) NOT NULL,
  `emplvOrgMasterId` int(11) NOT NULL,
  `emplvStfMasterId` int(11) NOT NULL,
  `emplvIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `evntOrgMasterId` int(11) NOT NULL,
  `evntType` varchar(255) NOT NULL,
  `evntName` varchar(255) NOT NULL,
  `evntDescription` text NOT NULL,
  `chiefguest` varchar(150) NOT NULL,
  `evntPlace` text NOT NULL,
  `evntSponseredBy` text NOT NULL,
  `evntOrganisedBy` varchar(255) NOT NULL,
  `evntDate` date NOT NULL,
  `evntStartTime` time NOT NULL,
  `evntEndTime` time NOT NULL,
  `registrationFrom` date NOT NULL,
  `formUrl` text NOT NULL,
  `evntIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `evntOrgMasterId`, `evntType`, `evntName`, `evntDescription`, `chiefguest`, `evntPlace`, `evntSponseredBy`, `evntOrganisedBy`, `evntDate`, `evntStartTime`, `evntEndTime`, `registrationFrom`, `formUrl`, `evntIsStatus`, `created_at`, `updated_at`) VALUES
(1, 0, 'Cultural', 'Convovation', 'Graduation Ceremony', 'Governor', 'Sapphire Hall', 'Management', 'Staff', '2022-07-12', '05:39:00', '19:15:00', '2022-07-20', 'C:\\fakepath\\Screenshot 2022-06-16 112930.jpg', 1, '2022-07-14 13:45:18', '2022-07-14 13:40:43'),
(2, 1, 'Sports', 'aff', 'fafa', 'affaefe', 'affafefeq', 'dfafda', '1', '2022-07-12', '25:14:05', '18:14:05', '2022-07-20', 'ffefe', 0, '2022-07-14 13:45:46', '2022-07-14 13:45:46'),
(3, 0, '2', 'nmaakk', 'afafafa', 'fafafafa', 'faf', 'af', 'afafa', '2022-07-20', '00:20:00', '00:18:00', '2022-07-04', 'C:\\fakepath\\troy dc.txt', 1, '2022-07-14 13:16:39', '2022-07-14 13:16:39'),
(4, 0, 'null', 'new', 'new', 'new', 'new', 'new', 'new', '2022-07-14', '00:28:00', '00:28:00', '2022-07-13', 'C:\\fakepath\\troy dc.txt', 1, '2022-07-14 13:24:47', '2022-07-14 13:24:47'),
(5, 1, 'null', 'null', 'null', 'null', 'null', 'null', 'null', '2022-08-19', '12:00:00', '13:30:00', '0000-00-00', 'null', 1, '2022-08-05 01:58:30', '2022-08-05 01:58:30');

-- --------------------------------------------------------

--
-- Table structure for table `eventsschedules`
--

CREATE TABLE `eventsschedules` (
  `evntshId` int(11) NOT NULL,
  `evntshMasterId` int(11) NOT NULL,
  `evntshName` varchar(255) NOT NULL,
  `evntshParticipants` varchar(255) NOT NULL,
  `evntshType` varchar(255) NOT NULL,
  `evntshStartTime` time NOT NULL,
  `evntshEndTime` time NOT NULL,
  `evntshDescription` text NOT NULL,
  `evntshComments` text NOT NULL,
  `evntshIsStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(11) NOT NULL,
  `subOrgId` int(11) DEFAULT NULL,
  `exam_type` int(11) DEFAULT NULL,
  `name` varchar(55) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `passing_marks` int(11) NOT NULL DEFAULT 0,
  `isCompleted` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `subOrgId`, `exam_type`, `name`, `date`, `start_time`, `end_time`, `passing_marks`, `isCompleted`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '2022 Second Quarterly Exam', '2022-09-01', '00:00:00', '00:00:00', 70, 0, 1, '2022-08-05 03:17:40', '2022-08-05 05:08:25'),
(2, 1, 5, '2021 Annual Exam', '2022-09-10', '18:20:00', '15:20:00', 70, 0, 1, '2022-08-05 03:20:39', '2022-08-05 05:08:31'),
(3, 1, 1, 'All Standard Math', '2022-08-19', '00:00:00', '00:00:00', 36, 0, 1, '2022-08-05 04:27:36', '2022-08-05 05:08:33'),
(4, 1, 3, 'First Quarterly', '2022-08-24', '00:00:00', '00:00:00', 21, 0, 1, '2022-08-05 04:42:21', '2022-08-05 05:08:35'),
(5, 1, 2, 'Morning Assessment', '2022-08-09', '15:47:00', '15:49:00', 37, 0, 1, '2022-08-05 04:44:42', '2022-08-05 05:08:37');

-- --------------------------------------------------------

--
-- Table structure for table `exam_schedules`
--

CREATE TABLE `exam_schedules` (
  `id` int(11) NOT NULL,
  `examid` int(11) DEFAULT NULL,
  `no_of_questions` int(11) NOT NULL DEFAULT 0,
  `medium_id` int(11) DEFAULT NULL,
  `standard_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `question_ids` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exam_schedules`
--

INSERT INTO `exam_schedules` (`id`, `examid`, `no_of_questions`, `medium_id`, `standard_id`, `subject_id`, `question_ids`, `status`, `created_at`, `updated_at`) VALUES
(8, 5, 56, 2, 5, 2, '[\"1\",\"4\",\"5\",\"9\",\"20\",\"30\",\"31\",\"33\",\"36\"]', 1, '2022-09-12 03:30:43', '2022-09-12 03:30:43'),
(9, 3, 40, 2, 5, 2, '[\"1\",\"5\",\"9\",\"20\",\"26\",\"27\"]', 1, '2022-09-12 03:30:43', '2022-09-12 03:30:43'),
(10, 1, 21, 2, 5, 2, '[\"11\",\"5\",\"20\",\"14\",\"15\"]', 1, '2022-09-12 03:30:43', '2022-09-12 03:30:43'),
(11, 2, 21, 2, 5, 1, '[\"1\",\"5\",\"20\",\"8\",\"9\",\"10\"]', 1, '2022-09-12 03:30:43', '2022-09-12 03:30:43'),
(12, 4, 21, 2, 5, 3, '[\"22\",\"23\",\"20\",\"24\"]', 1, '2022-09-12 03:30:43', '2022-09-12 03:30:43');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `exsId` int(11) NOT NULL,
  `exsOrgId` int(11) NOT NULL,
  `exsName` varchar(255) NOT NULL,
  `exsType` varchar(255) NOT NULL,
  `exsPurchasedQty` int(11) NOT NULL,
  `exsPurchasedFrom` date NOT NULL,
  `exsBillPath` text NOT NULL,
  `exsAmount` decimal(10,3) NOT NULL,
  `exsPurchaseDate` date NOT NULL,
  `exsComments` int(11) NOT NULL,
  `expEmpId` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `families`
--

CREATE TABLE `families` (
  `fmId` int(11) NOT NULL,
  `fmStudentId` int(11) NOT NULL COMMENT 'change UserId',
  `fmName` varchar(255) DEFAULT NULL,
  `fmFolderPath` text NOT NULL,
  `fmContactId` int(11) NOT NULL,
  `fmEmailId` int(11) NOT NULL,
  `fmAddressId` int(11) NOT NULL,
  `fmIsStatus` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `families`
--

INSERT INTO `families` (`fmId`, `fmStudentId`, `fmName`, `fmFolderPath`, `fmContactId`, `fmEmailId`, `fmAddressId`, `fmIsStatus`, `created_at`, `updated_at`) VALUES
(1, 11, 'Harikumar Rajendran Family', '', 1, 1, 1, 1, '2022-08-06 13:34:56', '2022-08-17 15:56:07'),
(8, 19, 'Preethi Ram Family', '', 8, 10, 7, 0, '2022-08-12 01:37:53', '2022-08-17 15:57:06'),
(9, 21, 'Arun kumar Family', '', 9, 11, 8, 0, '2022-08-12 01:53:38', '2022-08-17 15:56:28'),
(12, 24, 'aa fsfasf Family', '', 12, 14, 11, 0, '2022-08-18 15:38:45', '2022-08-18 15:38:45'),
(17, 33, 'Rathina Samy Family', '', 21, 23, 20, 0, '2022-08-20 12:32:08', '2022-08-20 12:32:08'),
(18, 35, 'afe aegaegae Family', '', 23, 25, 22, 0, '2022-08-22 12:16:43', '2022-08-22 12:16:43'),
(19, 36, 'Ragu Saminathan Family', '', 24, 26, 23, 0, '2022-08-29 06:32:42', '2022-08-29 06:32:42'),
(20, 37, 'Venkadesh S Family', '', 25, 27, 24, 0, '2022-09-03 04:38:33', '2022-09-03 04:38:33'),
(21, 1846, 'V.ANTO V. Family', '', 113, 28, 475, 1, '2022-09-21 00:54:37', '2022-09-21 00:54:37'),
(22, 1847, 'V.RAKSHAN V. Family', '', 114, 29, 476, 1, '2022-09-21 00:54:37', '2022-09-21 00:54:37'),
(23, 1848, 'D.SAMUEL D. Family', '', 115, 30, 477, 1, '2022-09-21 00:54:37', '2022-09-21 00:54:37'),
(24, 1849, 'S.YECOP S. Family', '', 116, 31, 478, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(25, 1850, 'R.YASEETH R. Family', '', 117, 32, 479, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(26, 1851, 'K.SURENTHAR K. Family', '', 118, 33, 480, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(27, 1852, 'S.SAIDEV S. Family', '', 119, 34, 481, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(28, 1853, 'S.THANISH S. Family', '', 120, 35, 482, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(29, 1854, 'S.GOWSHIKNATH S. Family', '', 121, 36, 483, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(30, 1855, 'K.LOKESH K. Family', '', 122, 37, 484, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(31, 1856, 'L.HEMANTHJOSHVA L Family', '', 123, 38, 485, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(32, 1857, 'A.SHARWIN A Family', '', 124, 39, 486, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(33, 1858, 'S.YUVANKUMAR S. Family', '', 125, 40, 487, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(34, 1859, 'R.K. ISHANTHKUMAR R. K. Family', '', 126, 41, 488, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(35, 1860, 'S.DINESHWARAN S. Family', '', 127, 42, 489, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(36, 1861, 'G.HARISH G Family', '', 128, 43, 490, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(37, 1862, 'P.AROKIYA MOSES CRYIL P Family', '', 129, 44, 491, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(38, 1863, 'J.FEROZ KHAN J. Family', '', 130, 45, 492, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(39, 1864, 'T.ARUNA SREE T. Family', '', 131, 46, 493, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(40, 1865, 'P.KAMAZHINI R. Family', '', 132, 47, 494, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(41, 1866, 'S.JOY SOFIYA DISCONTINUED Family', '', 133, 48, 495, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(42, 1867, 'R.ASHRA R. Family', '', 134, 49, 496, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(43, 1868, 'V.NITHISHA V. Family', '', 135, 50, 497, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(44, 1869, 'R.SHIVANI R. Family', '', 136, 51, 498, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(45, 1870, 'G.RITHISHA G. Family', '', 137, 52, 499, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(46, 1871, 'S.PREETHIKA RANI S. Family', '', 138, 53, 500, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(47, 1872, 'J.RAKSHITHA J. Family', '', 139, 54, 501, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(48, 1873, 'L.RUTHRA DEVI L. Family', '', 140, 55, 502, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(49, 1874, 'S.PRETHIKA S. Family', '', 141, 56, 503, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(50, 1875, 'V.HITHIKSHA V. Family', '', 142, 57, 504, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(51, 1876, 'P.ASVITHA P. Family', '', 143, 58, 505, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(52, 1877, 'P.PRITHIKA P. Family', '', 144, 59, 506, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(53, 1878, 'K.VAISHNAVI K. Family', '', 145, 60, 507, 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(54, 1879, 'R.RANJITHA R. Family', '', 146, 61, 508, 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(55, 1880, 'V.MOSHIKA SRI DISCONTINUED Family', '', 147, 62, 509, 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(56, 1881, 'C.HARSHINI V. Family', '', 148, 63, 510, 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(57, 1882, 'L.MONISHA L. Family', '', 149, 64, 511, 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(58, 1883, 'G.KANISHKA G. Family', '', 150, 65, 512, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(59, 1884, 'G.DHANSHIKA G. Family', '', 151, 66, 513, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(60, 1885, 'K.JEEVITHA K. Family', '', 152, 67, 514, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(61, 1886, 'Aswin K. Family', '', 153, 68, 515, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(62, 1887, 'Aathish V. Family', '', 154, 69, 516, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(63, 1888, 'Dharshan A. Family', '', 155, 70, 517, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(64, 1889, 'Eswaran S. Family', '', 156, 71, 518, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(65, 1890, 'Harish R. Family', '', 157, 72, 519, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(66, 1891, 'Kevin P. Family', '', 158, 73, 520, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(67, 1892, 'Koushik S. Family', '', 159, 74, 521, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(68, 1893, 'Kavinesh V. Family', '', 160, 75, 522, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(69, 1894, 'Linkesh B. Family', '', 161, 76, 523, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(70, 1895, 'Magihan C. Family', '', 162, 77, 524, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(71, 1896, 'Naveen V. Family', '', 163, 78, 525, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(72, 1897, 'Sajith N. Family', '', 164, 79, 526, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(73, 1898, 'Sashwanth R. Family', '', 165, 80, 527, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(74, 1899, 'Yadesh D. Family', '', 166, 81, 528, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(75, 1900, 'Prathish K. Family', '', 167, 82, 529, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(76, 1901, 'Anushya V. Family', '', 168, 83, 530, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(77, 1902, 'Anu Priya R. V Family', '', 169, 84, 531, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(78, 1903, 'Ashwini S. Family', '', 170, 85, 532, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(79, 1904, 'Dhaarani M. Family', '', 171, 86, 533, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(80, 1905, 'Dhanushka N. Family', '', 172, 87, 534, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(81, 1906, 'Hannah E. Family', '', 173, 88, 535, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(82, 1907, 'Harsika V. Family', '', 174, 89, 536, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(83, 1908, 'Hema Sri I. Family', '', 175, 90, 537, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(84, 1909, 'Janani S. Family', '', 176, 91, 538, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(85, 1910, 'Jayasrika A. Family', '', 177, 92, 539, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(86, 1911, 'Jessica R. Family', '', 178, 93, 540, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(87, 1912, 'Kamala Rakshitha V. Family', '', 179, 94, 541, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(88, 1913, 'Kamala Shree V. Family', '', 180, 95, 542, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(89, 1914, 'Kaviya K. Family', '', 181, 96, 543, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(90, 1915, 'Monika K. Family', '', 182, 97, 544, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(91, 1916, 'Mythravi T. Family', '', 183, 98, 545, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(92, 1917, 'Ragini G. Family', '', 184, 99, 546, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(93, 1918, 'Tarika T. Family', '', 185, 100, 547, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(94, 1919, 'Thansika T. Family', '', 186, 101, 548, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(95, 1920, 'Umaira J. Family', '', 187, 102, 549, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(96, 1921, 'Vikkitha V. Family', '', 188, 103, 550, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(97, 1922, 'Vinodhini S. Family', '', 189, 104, 551, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(98, 1923, 'Yashmitha S. Family', '', 190, 105, 552, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(99, 1924, 'Yuvashree I. Family', '', 191, 106, 553, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(100, 1925, 'Deepadhashan S S Family', '', 192, 107, 554, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(101, 1926, 'Dharun M M Family', '', 193, 108, 555, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(102, 1927, 'Dhaswin B B Family', '', 194, 109, 556, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(103, 1928, 'Gokul P P Family', '', 195, 110, 557, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(104, 1929, 'Gowthem D D Family', '', 196, 111, 558, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(105, 1930, 'Harishwaran K K Family', '', 197, 112, 559, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(106, 1931, 'Jaseeth A A Family', '', 198, 113, 560, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(107, 1932, 'Kavikishore V V Family', '', 199, 114, 561, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(108, 1933, 'Mugilan sai V V Family', '', 200, 115, 562, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(109, 1934, 'Raja A A Family', '', 201, 116, 563, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(110, 1935, 'Sandeep P P Family', '', 202, 117, 564, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(111, 1936, 'Santhosh kumar G G Family', '', 203, 118, 565, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(112, 1937, 'Siddharth abimanyu V V Family', '', 204, 119, 566, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(113, 1938, 'Vigneshwaran S S Family', '', 205, 120, 567, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(114, 1939, 'Yadesh B B Family', '', 206, 121, 568, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(115, 1940, 'Yanishwaran S S Family', '', 207, 122, 569, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(116, 1941, 'Akshaya .M M Family', '', 208, 123, 570, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(117, 1942, 'Arul nikitha . N A Family', '', 209, 124, 571, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(118, 1943, 'Aswitha A A Family', '', 210, 125, 572, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(119, 1944, 'Bavadharani V V Family', '', 211, 126, 573, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(120, 1945, 'Dhanushka sri G G Family', '', 212, 127, 574, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(121, 1946, 'Dhurga devi P P Family', '', 213, 128, 575, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(122, 1947, 'Dhulasi sri D D Family', '', 214, 129, 576, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(123, 1948, 'Diya R R Family', '', 215, 130, 577, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(124, 1949, 'Hansi K S Family', '', 216, 131, 578, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(125, 1950, 'Janani S S Family', '', 217, 132, 579, 1, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(126, 1951, 'Nainika V V Family', '', 218, 133, 580, 1, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(127, 1952, 'Nivethana B B Family', '', 219, 134, 581, 1, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(128, 1953, 'Praganya K K Family', '', 220, 135, 582, 1, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(129, 1954, 'Prithika devi M M Family', '', 221, 136, 583, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(130, 1955, 'Princy J J Family', '', 222, 137, 584, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(131, 1956, 'Rithikashwari D Family', '', 223, 138, 585, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(132, 1957, 'Rithika sri R V Family', '', 224, 139, 586, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(133, 1958, 'Saidhanyasri B B Family', '', 225, 140, 587, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(134, 1959, 'Samyuktha D S Family', '', 226, 141, 588, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(135, 1960, 'Sathana P P Family', '', 227, 142, 589, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(136, 1961, 'Safrin banu T T Family', '', 228, 143, 590, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(137, 1962, 'Shamli D D Family', '', 229, 144, 591, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(138, 1963, 'Subashini S S Family', '', 230, 145, 592, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(139, 1964, 'Swathisri M M Family', '', 231, 146, 593, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(140, 1965, 'Vithika S S Family', '', 232, 147, 594, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(141, 1966, 'AGILAN M Family', '', 233, 148, 595, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(142, 1967, 'JEEVA N Family', '', 234, 149, 596, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(143, 1968, 'JOEL B Family', '', 235, 150, 597, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(144, 1969, 'KAMALESWARAN A Family', '', 236, 151, 598, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(145, 1970, 'LEVINJAI P Family', '', 237, 152, 599, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(146, 1971, 'LINGESH B Family', '', 238, 153, 600, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(147, 1972, 'MUKESHKANNA P Family', '', 239, 154, 601, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(148, 1973, 'NIJITH R Family', '', 240, 155, 602, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(149, 1974, 'NITHISH P Family', '', 241, 156, 603, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(150, 1975, 'RAHUL A.R Family', '', 242, 157, 604, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(151, 1976, 'RAGHAVA S Family', '', 243, 158, 605, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(152, 1977, 'RAKESH R Family', '', 244, 159, 606, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(153, 1978, 'ROSHAN K Family', '', 245, 160, 607, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(154, 1979, 'SANJEEVAHARI R Family', '', 246, 161, 608, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(155, 1980, 'SANJAY M.S Family', '', 247, 162, 609, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(156, 1981, 'VARUN S Family', '', 248, 163, 610, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(157, 1982, 'AKSHAYA B Family', '', 249, 164, 611, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(158, 1983, 'ANSHI S Family', '', 250, 165, 612, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(159, 1984, 'ASHVITHA V Family', '', 251, 166, 613, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(160, 1985, 'DEEPAKSHA S Family', '', 252, 167, 614, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(161, 1986, 'DANUSRI M Family', '', 253, 168, 615, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(162, 1987, 'DHANSIKA N Family', '', 254, 169, 616, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(163, 1988, 'HARINI S Family', '', 255, 170, 617, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(164, 1989, 'ISHRAT N Family', '', 256, 171, 618, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(165, 1990, 'JESSY A Family', '', 257, 172, 619, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(166, 1991, 'JOCELINJOYS S Family', '', 258, 173, 620, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(167, 1992, 'KRISHIKA V Family', '', 259, 174, 621, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(168, 1993, 'LAKSHAYA T Family', '', 260, 175, 622, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(169, 1994, 'RAKSHITHA V Family', '', 261, 176, 623, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(170, 1995, 'SANA S Family', '', 262, 177, 624, 1, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(171, 1996, 'SHALINI R Family', '', 263, 178, 625, 1, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(172, 1997, 'SOWMYA K Family', '', 264, 179, 626, 1, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(173, 1998, 'VERNIKASAI S.M Family', '', 265, 180, 627, 1, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(174, 1999, 'YOGESHWARI D Family', '', 266, 181, 628, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(175, 2000, 'SYED ISMATH RISHANA I Family', '', 267, 182, 629, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(176, 2001, 'ABINASH D  Family', '', 268, 183, 630, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(177, 2002, 'DHANUSH V  Family', '', 269, 184, 631, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(178, 2003, 'DIVINESH P  Family', '', 270, 185, 632, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(179, 2004, 'GOKUL.M  Family', '', 271, 186, 633, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(180, 2005, 'KADHIR SIVAN. K.  Family', '', 272, 187, 634, 1, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(181, 2006, 'MONISH V.  Family', '', 273, 188, 635, 1, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(182, 2007, 'NITHISH .I.  Family', '', 274, 189, 636, 1, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(183, 2008, 'NITHISH .R  Family', '', 275, 190, 637, 1, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(184, 2009, 'NITHESH MATHEW.B  Family', '', 276, 191, 638, 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(185, 2010, 'PRASANNA. S.  Family', '', 277, 192, 639, 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(186, 2011, 'PRAVEEN. K.  Family', '', 278, 193, 640, 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(187, 2012, 'PURUSHOTHAMAN.G.  Family', '', 279, 194, 641, 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(188, 2013, 'ROHITH. R.  Family', '', 280, 195, 642, 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(189, 2014, 'SHAI SHARAN. S. M.  Family', '', 281, 196, 643, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(190, 2015, 'TARUN. V  Family', '', 282, 197, 644, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(191, 2016, 'VARUN KUMAR S  Family', '', 283, 198, 645, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(192, 2017, 'YASHWA.A.  Family', '', 284, 199, 646, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(193, 2018, 'ANTO GLAINSIYA. A  Family', '', 285, 200, 647, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(194, 2019, 'AYISHA BANU  Family', '', 286, 201, 648, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(195, 2020, 'BINDHU SRI V.  Family', '', 287, 202, 649, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(196, 2021, 'BRASILLA SHINI .P.  Family', '', 288, 203, 650, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(197, 2022, 'HEPSIBA. D.  Family', '', 289, 204, 651, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(198, 2023, 'JITHISHA.P  Family', '', 290, 205, 652, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(199, 2024, 'LAKSHMI PRIYA. R  Family', '', 291, 206, 653, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(200, 2025, 'SADHANA M.S  Family', '', 292, 207, 654, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(201, 2026, 'SANJANA M S  Family', '', 293, 208, 655, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(202, 2027, 'SUBA SHREE.R  Family', '', 294, 209, 656, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(203, 2028, 'VIJAYALASKHMI D  Family', '', 295, 210, 657, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(204, 2029, 'DURGA D  Family', '', 296, 211, 658, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(205, 2030, 'KIRITHIKA. P.  Family', '', 297, 212, 659, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(206, 2031, 'VARSHINI SANCHANA S  Family', '', 298, 213, 660, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(207, 2032, 'OVIYASREE  Family', '', 299, 214, 661, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(208, 2033, 'AJITHA  Family', '', 300, 215, 662, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(209, 2034, 'DEVIPRIYA  Family', '', 301, 216, 663, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(210, 2035, 'MOWNITHA  Family', '', 302, 217, 664, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(211, 2036, 'S. TEJA SHREE  Family', '', 303, 218, 665, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(212, 2037, 'V. KEREN VINO  Family', '', 304, 219, 666, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(213, 2038, 'Ajay K Family', '', 305, 220, 667, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(214, 2039, 'Agathiyan R Family', '', 306, 221, 668, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(215, 2040, 'Ashwin A Family', '', 307, 222, 669, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(216, 2041, 'Diwakar M Family', '', 308, 223, 670, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(217, 2042, 'Jebin smith S Family', '', 309, 224, 671, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(218, 2043, 'Moses D Family', '', 310, 225, 672, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(219, 2044, 'Ragav P Family', '', 311, 226, 673, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(220, 2045, 'Sri Ram V Family', '', 312, 227, 674, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(221, 2046, 'Tarun M Family', '', 313, 228, 675, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(222, 2047, 'Yaswanth G Family', '', 314, 229, 676, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(223, 2048, 'Anishkumar K Family', '', 315, 230, 677, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(224, 2049, 'Varun M Family', '', 316, 231, 678, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(225, 2050, 'Niranjan K Family', '', 317, 232, 679, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(226, 2051, 'Karthikannan K Family', '', 318, 233, 680, 1, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(227, 2052, 'Sham S Family', '', 319, 234, 681, 1, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(228, 2053, 'Kavinkumar K Family', '', 320, 235, 682, 1, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(229, 2054, 'Angel M Family', '', 321, 236, 683, 1, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(230, 2055, 'Dharshini S Family', '', 322, 237, 684, 1, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(231, 2056, 'Daaniya Anjum I Family', '', 323, 238, 685, 1, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(232, 2057, 'Haasini Priya K Family', '', 324, 239, 686, 1, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(233, 2058, 'Dharsini V Family', '', 325, 240, 687, 1, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(234, 2059, 'Keerthana G Family', '', 326, 241, 688, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(235, 2060, 'Indrasena B Family', '', 327, 242, 689, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(236, 2061, 'Lekhasri S Family', '', 328, 243, 690, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(237, 2062, 'Laksnana S Family', '', 329, 244, 691, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(238, 2063, 'Prathisa U Family', '', 330, 245, 692, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(239, 2064, 'Merlina M Family', '', 331, 246, 693, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(240, 2065, 'Priya Dharshini D Family', '', 332, 247, 694, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(241, 2066, 'Ritha B Family', '', 333, 248, 695, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(242, 2067, 'Yuventhika K Family', '', 334, 249, 696, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(243, 2068, 'Sujatha P Family', '', 335, 250, 697, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(244, 2069, 'Geethasree S.V Family', '', 336, 251, 698, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(245, 2070, 'Durganandini D Family', '', 337, 252, 699, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(246, 2071, 'Pooja Sri M Family', '', 338, 253, 700, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(247, 2072, 'Harini M Family', '', 339, 254, 701, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(248, 2073, 'Sanjana V Family', '', 340, 255, 702, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(249, 2074, 'Ashwin K Family', '', 341, 256, 703, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(250, 2075, 'Kamalesh V Family', '', 342, 257, 704, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(251, 2076, 'Kashif Basha S Family', '', 343, 258, 705, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(252, 2077, 'Koushik G Family', '', 344, 259, 706, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(253, 2078, 'Lavien Rosan V Family', '', 345, 260, 707, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(254, 2079, 'Lohit M.J Family', '', 346, 261, 708, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(255, 2080, 'Nithish Kumar P Family', '', 347, 262, 709, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(256, 2081, 'Ryan Sherif A Family', '', 348, 263, 710, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(257, 2082, 'Santhosh M Family', '', 349, 264, 711, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(258, 2083, 'Santhosh Kumar S.V Family', '', 350, 265, 712, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(259, 2084, 'Somnath S Family', '', 351, 266, 713, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(260, 2085, 'Vanish V Family', '', 352, 267, 714, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(261, 2086, 'Balaji P Family', '', 353, 268, 715, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(262, 2087, 'Ashwanth M Family', '', 354, 269, 716, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(263, 2088, 'Aashika Sherlin I Family', '', 355, 270, 717, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(264, 2089, 'Divya Sri S Family', '', 356, 271, 718, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(265, 2090, 'Donishia V Family', '', 357, 272, 719, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(266, 2091, 'Getzial Sharon S Family', '', 358, 273, 720, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(267, 2092, 'Jackuline J Family', '', 359, 274, 721, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(268, 2093, 'Jesika G Family', '', 360, 275, 722, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(269, 2094, 'Karishma M.S Family', '', 361, 276, 723, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(270, 2095, 'Keerthika S Family', '', 362, 277, 724, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(271, 2096, 'Lavanya R Family', '', 363, 278, 725, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(272, 2097, 'Leena M Family', '', 364, 279, 726, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(273, 2098, 'Lisa Shalini R Family', '', 365, 280, 727, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(274, 2099, 'Nithiya Sri M Family', '', 366, 281, 728, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(275, 2100, 'Oviya S Family', '', 367, 282, 729, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(276, 2101, 'Priyadharshana P Family', '', 368, 283, 730, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(277, 2102, 'Rakshana R Family', '', 369, 284, 731, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(278, 2103, 'Raffiya Fathima N Family', '', 370, 285, 732, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(279, 2104, 'Ramya R Family', '', 371, 286, 733, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(280, 2105, 'Rakshidha V Family', '', 372, 287, 734, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(281, 2106, 'Rithika P Family', '', 373, 288, 735, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(282, 2107, 'Rubika S Family', '', 374, 289, 736, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(283, 2108, 'Sanjana S Family', '', 375, 290, 737, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(284, 2109, 'Sandhiya R Family', '', 376, 291, 738, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(285, 2110, 'Sivasir I Family', '', 377, 292, 739, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(286, 2111, 'Syed Ismath Rihana I Family', '', 378, 293, 740, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(287, 2112, 'Yazhini I Family', '', 379, 294, 741, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(288, 2113, 'Yazhini J Family', '', 380, 295, 742, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(289, 2114, 'AFIYA R Family', '', 381, 296, 743, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(290, 2115, 'AMUDHA M Family', '', 382, 297, 744, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(291, 2116, 'ANGEL A A Family', '', 383, 298, 745, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(292, 2117, 'ASINA BEGAM S Family', '', 384, 299, 746, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(293, 2118, 'ASWIN S Family', '', 385, 300, 747, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(294, 2119, 'B RAKSHANA B Family', '', 386, 301, 748, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(295, 2120, 'DEEPAK KUMAR K Family', '', 387, 302, 749, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(296, 2121, 'DEEPIKA S S Family', '', 388, 303, 750, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(297, 2122, 'DHANUSKODI S S Family', '', 389, 304, 751, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(298, 2123, 'ENOCH S Family', '', 390, 305, 752, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(299, 2124, 'HARITHA H H Family', '', 391, 306, 753, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(300, 2125, 'HASINI P Family', '', 392, 307, 754, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(301, 2126, 'ILAKKIYA S Family', '', 393, 308, 755, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(302, 2127, 'JAI R Family', '', 394, 309, 756, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(303, 2128, 'JOSITHA P Family', '', 395, 310, 757, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(304, 2129, 'JYOTSNA G G Family', '', 396, 311, 758, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(305, 2130, 'KANISHKA S S Family', '', 397, 312, 759, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(306, 2131, 'KAVIYA G Family', '', 398, 313, 760, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(307, 2132, 'KAVI BHARATHI S S Family', '', 399, 314, 761, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(308, 2133, 'KEERTHANA R Family', '', 400, 315, 762, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(309, 2134, 'KIRAN KUMAR M M Family', '', 401, 316, 763, 1, '2022-09-21 00:55:32', '2022-09-21 00:55:32'),
(310, 2135, 'KUMARESAN S S Family', '', 402, 317, 764, 1, '2022-09-21 00:55:32', '2022-09-21 00:55:32'),
(311, 2136, 'LAKSHEETHA SRI S S Family', '', 403, 318, 765, 1, '2022-09-21 00:55:32', '2022-09-21 00:55:32'),
(312, 2137, 'LOGITHA J J Family', '', 404, 319, 766, 1, '2022-09-21 00:55:33', '2022-09-21 00:55:33'),
(313, 2138, 'MADHU SHRI S S Family', '', 405, 320, 767, 1, '2022-09-21 00:55:33', '2022-09-21 00:55:33'),
(314, 2139, 'MONISHA M M Family', '', 406, 321, 768, 1, '2022-09-21 00:55:34', '2022-09-21 00:55:34'),
(315, 2140, 'MUHAMMAD HUSSAIN A A Family', '', 407, 322, 769, 1, '2022-09-21 00:55:34', '2022-09-21 00:55:34'),
(316, 2141, 'MUHAMED ABU HARISH K.S S Family', '', 408, 323, 770, 1, '2022-09-21 00:55:34', '2022-09-21 00:55:34'),
(317, 2142, 'NANCY J J Family', '', 409, 324, 771, 1, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(318, 2143, 'RAGHAVHA S Family', '', 410, 325, 772, 1, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(319, 2144, 'SADANA T Family', '', 411, 326, 773, 1, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(320, 2145, 'SANJANA S S Family', '', 412, 327, 774, 1, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(321, 2146, 'SANTHOSH R R Family', '', 413, 328, 775, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(322, 2147, 'SHARVESH B B Family', '', 414, 329, 776, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(323, 2148, 'SHAIK FARIED M Family', '', 415, 330, 777, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(324, 2149, 'SUNITHA S Family', '', 416, 331, 778, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(325, 2150, 'SWETHA R R Family', '', 417, 332, 779, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(326, 2151, 'YASHIKA D D Family', '', 418, 333, 780, 1, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(327, 2152, 'YUVARAJ S S Family', '', 419, 334, 781, 1, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(328, 2153, 'Ameer Hussain KHADAR BASHAH Family', '', 420, 335, 782, 1, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(329, 2154, 'Anbu Selvan JAYAVEL Family', '', 421, 336, 783, 1, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(330, 2155, 'Gowtham Kumar VIJAYAKUMAR V Family', '', 422, 337, 784, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(331, 2156, 'Guru SARAVANA PERUMAL Family', '', 423, 338, 785, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(332, 2157, 'Harish RAJIV GHANTHI Family', '', 424, 339, 786, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(333, 2158, 'Jershan Abish RAMESH Family', '', 425, 340, 787, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(334, 2159, 'Kamalesh KUMAR Family', '', 426, 341, 788, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(335, 2160, 'Mojaideen Basha SADIQ BASHA Family', '', 427, 342, 789, 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(336, 2161, 'Sandeep PORCHEZHIAN Family', '', 428, 343, 790, 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(337, 2162, 'Srinithish SURESH Family', '', 429, 344, 791, 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(338, 2163, 'Sumanraj ARUMUGAM Family', '', 430, 345, 792, 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(339, 2164, 'Varadhan UDHAYASHANKAR Family', '', 431, 346, 793, 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(340, 2165, 'Viswanathan RAJESH Family', '', 432, 347, 794, 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(341, 2166, 'Banushri RAJA Family', '', 433, 348, 795, 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(342, 2167, 'Bhavadharani.M MUTHU Family', '', 434, 349, 796, 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(343, 2168, 'Bhavadharani.N.Y YOGANANDHAN Family', '', 435, 350, 797, 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(344, 2169, 'Dharshini.A AARI Family', '', 436, 351, 798, 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(345, 2170, 'Dharshini.J JAYANTHAN Family', '', 437, 352, 799, 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(346, 2171, 'Durga RAJ Family', '', 438, 353, 800, 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(347, 2172, 'Gracy KUPPUSAMY Family', '', 439, 354, 801, 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(348, 2173, 'Hema Shri VINOTH Family', '', 440, 355, 802, 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(349, 2174, 'Joshini SARAVANAN Family', '', 441, 356, 803, 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(350, 2175, 'Joyce MOSES Family', '', 442, 357, 804, 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(351, 2176, 'Kalaivani VIJAYABABU Family', '', 443, 358, 805, 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(352, 2177, 'Mahalakshmi RAJENDRAKUMAR Family', '', 444, 359, 806, 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(353, 2178, 'Monisha Shri ANAND RAJ Family', '', 445, 360, 807, 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(354, 2179, 'Pavithra PRAVEEN KUMAR Family', '', 446, 361, 808, 1, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(355, 2180, 'Regina AROKYA DHAS Family', '', 447, 362, 809, 1, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(356, 2181, 'Riya Princy RAJESHKUMAR Family', '', 448, 363, 810, 1, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(357, 2182, 'Sanjana KUMARAVEL Family', '', 449, 364, 811, 1, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(358, 2183, 'Shanu Shri UDHAYAKUMAR.K Family', '', 450, 365, 812, 1, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(359, 2184, 'Sharmila RAGHU Family', '', 451, 366, 813, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(360, 2185, 'Swetha VINOTHKUMAR Family', '', 452, 367, 814, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(361, 2186, 'Swathi RAJA Family', '', 453, 368, 815, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(362, 2187, 'Sammima Parveen MOHANMMED Family', '', 454, 369, 816, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(363, 2188, 'Tamil Selvi GANAPATHY Family', '', 455, 370, 817, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(364, 2189, 'Vaishnavi RAJASEKAR Family', '', 456, 371, 818, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(365, 2190, 'Yamini MURUGAN.A Family', '', 457, 372, 819, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(366, 2191, 'AJAY R Family', '', 458, 373, 820, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(367, 2192, 'AJAYASIS E Family', '', 459, 374, 821, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(368, 2193, 'ANTOGLADWIN A Family', '', 460, 375, 822, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(369, 2194, 'ASIK IMRAN S S Family', '', 461, 376, 823, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(370, 2195, 'BALANATHAN R Family', '', 462, 377, 824, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(371, 2196, 'DINESH B Family', '', 463, 378, 825, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(372, 2197, 'DHANUSH B Family', '', 464, 379, 826, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(373, 2198, 'JEEVA S Family', '', 465, 380, 827, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(374, 2199, 'KABILESH V Family', '', 466, 381, 828, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(375, 2200, 'LITHISH V Family', '', 467, 382, 829, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(376, 2201, 'MARSHEL L Family', '', 468, 383, 830, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(377, 2202, 'MONISH R Family', '', 469, 384, 831, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(378, 2203, 'RAHUL V Family', '', 470, 385, 832, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(379, 2204, 'SATHISH P Family', '', 471, 386, 833, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(380, 2205, 'SANJEEVAN B Family', '', 472, 387, 834, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(381, 2206, 'SELVAKUMAR S Family', '', 473, 388, 835, 1, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(382, 2207, 'STEEPAN J Family', '', 474, 389, 836, 1, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(383, 2208, 'STEPANRAJ M Family', '', 475, 390, 837, 1, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(384, 2209, 'TAMILSELVAN J Family', '', 476, 391, 838, 1, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(385, 2210, 'ABITHA S Family', '', 477, 392, 839, 1, '2022-09-21 00:55:49', '2022-09-21 00:55:49'),
(386, 2211, 'ASMAPRAVIN B Family', '', 478, 393, 840, 1, '2022-09-21 00:55:49', '2022-09-21 00:55:49'),
(387, 2212, 'DEEPIKA G Family', '', 479, 394, 841, 1, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(388, 2213, 'GAYATHRI A Family', '', 480, 395, 842, 1, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(389, 2214, 'HANISHA R Family', '', 481, 396, 843, 1, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(390, 2215, 'HARSHITHA A Family', '', 482, 397, 844, 1, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(391, 2216, 'LATHA J Family', '', 483, 398, 845, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(392, 2217, 'MATHUMITHA M Family', '', 484, 399, 846, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(393, 2218, 'PREETHA A Family', '', 485, 400, 847, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(394, 2219, 'SADHANA K Family', '', 486, 401, 848, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(395, 2220, 'SANDHIYA R Family', '', 487, 402, 849, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(396, 2221, 'SARASWATHI G Family', '', 488, 403, 850, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(397, 2222, 'SIVA RANGINI K Family', '', 489, 404, 851, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(398, 2223, 'SUBHASHINI A Family', '', 490, 405, 852, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(399, 2224, 'SUJI S Family', '', 491, 406, 853, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(400, 2225, 'VIDHYA P.S Family', '', 492, 407, 854, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(401, 2226, 'YASINI P Family', '', 493, 408, 855, 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(402, 2227, 'AKASH R Family', '', 494, 409, 856, 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(403, 2228, 'BALAJI M Family', '', 495, 410, 857, 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(404, 2229, 'DHANUSH P Family', '', 496, 411, 858, 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(405, 2230, 'DHANUSH S Family', '', 497, 412, 859, 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(406, 2231, 'GANESH PRABHU P Family', '', 498, 413, 860, 1, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(407, 2232, 'GOPINATH S Family', '', 499, 414, 861, 1, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(408, 2233, 'JAIKUMAR R Family', '', 500, 415, 862, 1, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(409, 2234, 'JEEVANNATH A Family', '', 501, 416, 863, 1, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(410, 2235, 'KAMESH V Family', '', 502, 417, 864, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(411, 2236, 'NANDHA KUMAR P Family', '', 503, 418, 865, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(412, 2237, 'NIRMAL S Family', '', 504, 419, 866, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(413, 2238, 'NITHISH K Family', '', 505, 420, 867, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(414, 2239, 'PRASANNA KUMAR M Family', '', 506, 421, 868, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(415, 2240, 'ROHITH S Family', '', 507, 422, 869, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(416, 2241, 'SANTHOSH M Family', '', 508, 423, 870, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(417, 2242, 'SARANRAJ S Family', '', 509, 424, 871, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(418, 2243, 'SIVASANKAR M Family', '', 510, 425, 872, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(419, 2244, 'VINOTH P Family', '', 511, 426, 873, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(420, 2245, 'YUVANESH KUMAR R Family', '', 512, 427, 874, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(421, 2246, 'ASWINI R Family', '', 513, 428, 875, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(422, 2247, 'DEEPIKA D Family', '', 514, 429, 876, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(423, 2248, 'JEEVITHA R Family', '', 515, 430, 877, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(424, 2249, 'KEERTHI R Family', '', 516, 431, 878, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(425, 2250, 'MARIAMBEE A Family', '', 517, 432, 879, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(426, 2251, 'NARMADHA M Family', '', 518, 433, 880, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(427, 2252, 'NEATHRA B Family', '', 519, 434, 881, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(428, 2253, 'ROBATHY R Family', '', 520, 435, 882, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(429, 2254, 'SANDHIYA A Family', '', 521, 436, 883, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(430, 2255, 'SANTHOSHINI M Family', '', 522, 437, 884, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(431, 2256, 'SARANYA G Family', '', 523, 438, 885, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(432, 2257, 'SAROJINI S Family', '', 524, 439, 886, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(433, 2258, 'SIVADHARSHINI M Family', '', 525, 440, 887, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(434, 2259, 'SUBASHREE R Family', '', 526, 441, 888, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(435, 2260, 'SUJITHA M Family', '', 527, 442, 889, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(436, 2261, 'YOGALAKSHMI R Family', '', 528, 443, 890, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(437, 2262, 'AROCKIA SANTHOSH.P p Family', '', 529, 444, 891, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(438, 2263, 'GANAPATHI.I I Family', '', 530, 445, 892, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(439, 2264, 'HARISH.V V Family', '', 531, 446, 893, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(440, 2265, 'KAMALESH.P P Family', '', 532, 447, 894, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(441, 2266, 'KARTHI.S S Family', '', 533, 448, 895, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(442, 2267, 'LEMUEL.J J Family', '', 534, 449, 896, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(443, 2268, 'MADHAN.P P Family', '', 535, 450, 897, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(444, 2269, 'MATHEW.S S Family', '', 536, 451, 898, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(445, 2270, 'MOHAMMED THAMEEM ANSARI.S S Family', '', 537, 452, 899, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(446, 2271, 'PRAKASH.R R Family', '', 538, 453, 900, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(447, 2272, 'SANJEEVI.S S Family', '', 539, 454, 901, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(448, 2273, 'SHREE VISHNU.R R Family', '', 540, 455, 902, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(449, 2274, 'SIDHARTHAN.B B Family', '', 541, 456, 903, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(450, 2275, 'VISHNU.G G Family', '', 542, 457, 904, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(451, 2276, 'YUSUF.A A Family', '', 543, 458, 905, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(452, 2277, 'YUVARAJ.A A Family', '', 544, 459, 906, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(453, 2278, 'AKSHAYA.V V Family', '', 545, 460, 907, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(454, 2279, 'BHAKKIYALAKSHMI.V V Family', '', 546, 461, 908, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(455, 2280, 'DEEPIKA.M M Family', '', 547, 462, 909, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(456, 2281, 'DARANI.S S Family', '', 548, 463, 910, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(457, 2282, 'GAYATHRI.R R Family', '', 549, 464, 911, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(458, 2283, 'GEETHALAKSHMI.R R Family', '', 550, 465, 912, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(459, 2284, 'JAHNSI RANI.K K Family', '', 551, 466, 913, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(460, 2285, 'JENITHA.M M Family', '', 552, 467, 914, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(461, 2286, 'MADHAVI.C C Family', '', 553, 468, 915, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(462, 2287, 'MERLIN.P P Family', '', 554, 469, 916, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(463, 2288, 'POOJA.C C Family', '', 555, 470, 917, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(464, 2289, 'RAMYA.S S Family', '', 556, 471, 918, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(465, 2290, 'SADHANA.S S Family', '', 557, 472, 919, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(466, 2291, 'SAIMIDULA.R R Family', '', 558, 473, 920, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(467, 2292, 'SANJANA.S S Family', '', 559, 474, 921, 1, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(468, 2293, 'VIJAYAPRIYA.A A Family', '', 560, 475, 922, 1, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(469, 2294, 'VAISHNAVI.U U Family', '', 561, 476, 923, 1, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(470, 2295, 'YAMUNA.A A Family', '', 562, 477, 924, 1, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(471, 2296, 'PREETHA JOTHI P Family', '', 563, 478, 925, 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(472, 2297, 'Adhilakshmi M Family', '', 564, 479, 926, 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(473, 2298, 'Radhika S Family', '', 565, 480, 927, 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(474, 2299, 'Shreya Chettri Family', '', 566, 481, 928, 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(475, 2300, 'Jayalakshmi Vasu Family', '', 567, 482, 929, 1, '2022-09-21 07:56:48', '2022-09-21 07:56:48'),
(476, 2302, 'GEETHANJALI V Family', '', 569, 484, 931, 1, '2022-09-21 07:56:48', '2022-09-21 07:56:48'),
(477, 2303, 'Sumathi M Family', '', 570, 485, 932, 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(478, 2304, 'Usha S Family', '', 571, 486, 933, 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(479, 2305, 'Merlin Bless Sheeba C Family', '', 572, 487, 934, 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(480, 2306, 'ARUNA S Family', '', 573, 488, 935, 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(481, 2307, 'ALPHONSA PANNEER SELVAM Family', '', 574, 489, 936, 1, '2022-09-21 07:56:50', '2022-09-21 07:56:50'),
(482, 2308, 'PREETHA JOTHI P Family', '', 575, 490, 937, 1, '2022-09-21 08:20:15', '2022-09-21 08:20:15'),
(483, 2309, 'Adhilakshmi M Family', '', 576, 491, 938, 1, '2022-09-21 08:20:15', '2022-09-21 08:20:15'),
(484, 2310, 'Radhika S Family', '', 577, 492, 939, 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(485, 2311, 'Shreya Chettri Family', '', 578, 493, 940, 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(486, 2312, 'Jayalakshmi Vasu Family', '', 579, 494, 941, 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(487, 2313, 'Racheljayakumari  Family', '', 580, 495, 942, 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(488, 2314, 'GEETHANJALI V Family', '', 581, 496, 943, 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(489, 2315, 'Sumathi M Family', '', 582, 497, 944, 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(490, 2316, 'Usha S Family', '', 583, 498, 945, 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(491, 2317, 'Merlin Bless Sheeba C Family', '', 584, 499, 946, 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(492, 2318, 'ARUNA S Family', '', 585, 500, 947, 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(493, 2319, 'ALPHONSA PANNEER SELVAM Family', '', 586, 501, 948, 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(494, 2356, 'PREETHA JOTHI P Family', '', 623, 538, 985, 1, '2022-09-21 10:50:14', '2022-09-21 10:50:14'),
(495, 2357, 'Adhilakshmi M Family', '', 624, 539, 986, 1, '2022-09-21 10:50:14', '2022-09-21 10:50:14'),
(496, 2358, 'Radhika S Family', '', 625, 540, 987, 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(497, 2359, 'Shreya Chettri Family', '', 626, 541, 988, 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(498, 2360, 'Jayalakshmi Vasu Family', '', 627, 542, 989, 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(499, 2361, 'Racheljayakumari  Family', '', 628, 543, 990, 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(500, 2362, 'GEETHANJALI V Family', '', 629, 544, 991, 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(501, 2363, 'Sumathi M Family', '', 630, 545, 992, 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16');
INSERT INTO `families` (`fmId`, `fmStudentId`, `fmName`, `fmFolderPath`, `fmContactId`, `fmEmailId`, `fmAddressId`, `fmIsStatus`, `created_at`, `updated_at`) VALUES
(502, 2364, 'Usha S Family', '', 631, 546, 993, 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(503, 2365, 'Merlin Bless Sheeba C Family', '', 632, 547, 994, 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(504, 2366, 'ARUNA S Family', '', 633, 548, 995, 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(505, 2367, 'ALPHONSA PANNEER SELVAM Family', '', 634, 549, 996, 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(506, 2368, 'PREETHA JOTHI P Family', '', 635, 550, 997, 1, '2022-09-21 11:28:55', '2022-09-21 11:28:55'),
(507, 2369, 'Adhilakshmi M Family', '', 636, 551, 998, 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(508, 2370, 'Radhika S Family', '', 637, 552, 999, 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(509, 2371, 'Shreya Chettri Family', '', 638, 553, 1000, 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(510, 2372, 'Jayalakshmi Vasu Family', '', 639, 554, 1001, 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(511, 2373, 'Racheljayakumari  Family', '', 640, 555, 1002, 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(512, 2374, 'GEETHANJALI V Family', '', 641, 556, 1003, 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(513, 2375, 'Sumathi M Family', '', 642, 557, 1004, 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(514, 2376, 'Usha S Family', '', 643, 558, 1005, 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(515, 2377, 'Merlin Bless Sheeba C Family', '', 644, 559, 1006, 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(516, 2378, 'ARUNA S Family', '', 645, 560, 1007, 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(517, 2379, 'ALPHONSA PANNEER SELVAM Family', '', 646, 561, 1008, 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(518, 2380, 'test test Family', '', 647, 562, 1009, 1, '2022-09-29 04:44:35', '2022-09-29 04:44:35');

-- --------------------------------------------------------

--
-- Table structure for table `familyconnections`
--

CREATE TABLE `familyconnections` (
  `fmlcId` int(11) NOT NULL,
  `fmlcFamilyId` int(11) NOT NULL,
  `fmlcFirstName` varchar(255) NOT NULL,
  `fmlcProfession` varchar(255) NOT NULL,
  `fmlcDOB` date DEFAULT NULL,
  `fmlcGender` int(11) NOT NULL COMMENT '1-Male,\r\n2-Female\r\n3-Others',
  `fmlcRelationship` int(11) NOT NULL COMMENT '1-Father,\r\n2-StepFather,\r\n3-Mother,\r\n4-StepMother,\r\n5-ElderSister,\r\n6-ElderBrother,\r\n7-YoungerSister,\r\n8-YoungerBrother,\r\n9-Gardian,\r\n10-Others',
  `fmlcContactId` int(11) NOT NULL,
  `fmlcEmailId` int(11) NOT NULL,
  `fmlcAddressId` int(11) NOT NULL,
  `fmlcIsStatus` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `familyconnections`
--

INSERT INTO `familyconnections` (`fmlcId`, `fmlcFamilyId`, `fmlcFirstName`, `fmlcProfession`, `fmlcDOB`, `fmlcGender`, `fmlcRelationship`, `fmlcContactId`, `fmlcEmailId`, `fmlcAddressId`, `fmlcIsStatus`, `created_at`, `updated_at`) VALUES
(1, 1, 'Rajendran', '', '0000-00-00', 1, 1, 1, 1, 1, 0, '2022-06-05 08:42:10', '2022-08-17 15:56:07'),
(2, 1, 'Kubendra', '', '0000-00-00', 2, 3, 1, 1, 1, 0, '2022-06-05 08:42:10', '2022-08-17 15:56:07'),
(3, 1, 'null', '', '0000-00-00', 0, 9, 1, 1, 1, 0, '2022-06-05 08:42:10', '2022-08-17 15:56:07'),
(16, 8, 'fafaf', '', '0000-00-00', 0, 1, 0, 0, 0, 0, '2022-08-12 01:37:53', '2022-08-12 01:37:53'),
(17, 8, 'fafaf', '', '0000-00-00', 0, 3, 0, 0, 0, 0, '2022-08-12 01:37:53', '2022-08-12 01:37:53'),
(18, 8, 'null', '', '0000-00-00', 0, 9, 0, 0, 0, 0, '2022-08-12 01:37:53', '2022-08-12 01:37:53'),
(19, 9, 'hdfh', '', '0000-00-00', 0, 1, 0, 0, 0, 0, '2022-08-12 01:53:38', '2022-08-12 01:53:38'),
(20, 9, 'fhdf', '', '0000-00-00', 0, 3, 0, 0, 0, 0, '2022-08-12 01:53:38', '2022-08-12 01:53:38'),
(21, 9, 'null', '', '0000-00-00', 0, 9, 0, 0, 0, 0, '2022-08-12 01:53:38', '2022-08-12 01:53:38'),
(31, 12, 'fafa', '', '0000-00-00', 0, 1, 12, 14, 11, 1, '2022-08-18 15:38:45', '2022-08-18 15:38:45'),
(32, 12, 'fasf', '', '0000-00-00', 0, 3, 12, 14, 11, 1, '2022-08-18 15:38:45', '2022-08-18 15:38:45'),
(33, 12, 'null', '', '0000-00-00', 0, 9, 12, 14, 11, 1, '2022-08-18 15:38:45', '2022-08-18 15:38:45'),
(43, 17, 'Mani', '', '0000-00-00', 0, 1, 21, 23, 20, 1, '2022-08-20 12:32:08', '2022-08-20 12:32:08'),
(44, 17, 'Rose', '', '0000-00-00', 0, 3, 21, 23, 20, 1, '2022-08-20 12:32:08', '2022-08-20 12:32:08'),
(45, 17, 'null', '', '0000-00-00', 0, 9, 21, 23, 20, 1, '2022-08-20 12:32:08', '2022-08-20 12:32:08'),
(46, 18, 'ae', '', '0000-00-00', 0, 1, 23, 25, 22, 1, '2022-08-22 12:16:43', '2022-08-22 12:16:43'),
(47, 18, 'eaege', '', '0000-00-00', 0, 3, 23, 25, 22, 1, '2022-08-22 12:16:43', '2022-08-22 12:16:43'),
(48, 18, 'null', '', '0000-00-00', 0, 9, 23, 25, 22, 1, '2022-08-22 12:16:43', '2022-08-22 12:16:43'),
(49, 19, 'Saminathan', '', '0000-00-00', 0, 1, 24, 26, 23, 1, '2022-08-29 06:32:42', '2022-08-29 06:32:42'),
(50, 19, 'jladjlahj', '', '0000-00-00', 0, 3, 24, 26, 23, 1, '2022-08-29 06:32:42', '2022-08-29 06:32:42'),
(51, 19, 'null', '', '0000-00-00', 0, 9, 24, 26, 23, 1, '2022-08-29 06:32:42', '2022-08-29 06:32:42'),
(52, 20, 'Subramanian', '', '0000-00-00', 0, 1, 25, 27, 24, 1, '2022-09-03 04:38:33', '2022-09-03 04:38:33'),
(53, 20, 'afaef', '', '0000-00-00', 0, 3, 25, 27, 24, 1, '2022-09-03 04:38:33', '2022-09-03 04:38:33'),
(54, 20, 'null', '', '0000-00-00', 0, 9, 25, 27, 24, 1, '2022-09-03 04:38:33', '2022-09-03 04:38:33'),
(55, 21, 'VINOTH KUMAR', '', NULL, 0, 1, 113, 28, 475, 1, '2022-09-21 00:54:37', '2022-09-21 00:54:37'),
(56, 21, 'PAVITHRA', '', NULL, 0, 3, 113, 28, 475, 1, '2022-09-21 00:54:37', '2022-09-21 00:54:37'),
(57, 22, 'VENKATESAN', '', NULL, 0, 1, 114, 29, 476, 1, '2022-09-21 00:54:37', '2022-09-21 00:54:37'),
(58, 22, 'TAMIZH SELVI', '', NULL, 0, 3, 114, 29, 476, 1, '2022-09-21 00:54:37', '2022-09-21 00:54:37'),
(59, 23, 'DURAIARASAN', '', NULL, 0, 1, 115, 30, 477, 1, '2022-09-21 00:54:37', '2022-09-21 00:54:37'),
(60, 23, 'LAKSHMI', '', NULL, 0, 3, 115, 30, 477, 1, '2022-09-21 00:54:37', '2022-09-21 00:54:37'),
(61, 24, 'SABASTIN', '', NULL, 0, 1, 116, 31, 478, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(62, 24, 'JOTHI LAKSHMI', '', NULL, 0, 3, 116, 31, 478, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(63, 25, 'RAJA', '', NULL, 0, 1, 117, 32, 479, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(64, 25, 'AARTHI', '', NULL, 0, 3, 117, 32, 479, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(65, 26, 'KARTHIK', '', NULL, 0, 1, 118, 33, 480, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(66, 26, 'PARVATHI', '', NULL, 0, 3, 118, 33, 480, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(67, 27, 'SURESH', '', NULL, 0, 1, 119, 34, 481, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(68, 27, 'DEVI', '', NULL, 0, 3, 119, 34, 481, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(69, 28, 'SRIDHAR', '', NULL, 0, 1, 120, 35, 482, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(70, 28, 'MALATHI', '', NULL, 0, 3, 120, 35, 482, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(71, 29, 'SHANKAR', '', NULL, 0, 1, 121, 36, 483, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(72, 29, 'SATHYA', '', NULL, 0, 3, 121, 36, 483, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(73, 30, 'KUPPUSAMAY', '', NULL, 0, 1, 122, 37, 484, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(74, 30, 'DEEPIKA', '', NULL, 0, 3, 122, 37, 484, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(75, 31, 'LAKSHMANAN', '', NULL, 0, 1, 123, 38, 485, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(76, 31, 'JANSI RANI', '', NULL, 0, 3, 123, 38, 485, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(77, 32, 'ALPONS', '', NULL, 0, 1, 124, 39, 486, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(78, 32, 'JOTHI', '', NULL, 0, 3, 124, 39, 486, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(79, 33, 'SIVA', '', NULL, 0, 1, 125, 40, 487, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(80, 33, 'THENMOZHI', '', NULL, 0, 3, 125, 40, 487, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(81, 34, 'RAJESH KUMAR', '', NULL, 0, 1, 126, 41, 488, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(82, 34, 'YOGESHWARI', '', NULL, 0, 3, 126, 41, 488, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(83, 35, 'SUDHAN', '', NULL, 0, 1, 127, 42, 489, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(84, 35, 'NISHANTHI', '', NULL, 0, 3, 127, 42, 489, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(85, 36, 'GAJENDRAN', '', NULL, 0, 1, 128, 43, 490, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(86, 36, 'VIMALRANI', '', NULL, 0, 3, 128, 43, 490, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(87, 37, 'PRAVEEN KUMAR', '', NULL, 0, 1, 129, 44, 491, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(88, 37, 'SELVA MARY', '', NULL, 0, 3, 129, 44, 491, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(89, 38, 'JASIMUEEIN', '', NULL, 0, 1, 130, 45, 492, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(90, 38, 'FAMITHA', '', NULL, 0, 3, 130, 45, 492, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(91, 39, 'THANGA MARIYAPPAN', '', NULL, 0, 1, 131, 46, 493, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(92, 39, 'CHANDRA', '', NULL, 0, 3, 131, 46, 493, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(93, 40, 'PRAKASH', '', NULL, 0, 1, 132, 47, 494, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(94, 40, 'SUDHA', '', NULL, 0, 3, 132, 47, 494, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(95, 41, 'DISCONTINUED', '', NULL, 0, 1, 133, 48, 495, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(96, 42, 'RAHMAN', '', NULL, 0, 1, 134, 49, 496, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(97, 42, 'SHABANA', '', NULL, 0, 3, 134, 49, 496, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(98, 43, 'VENKATESAN', '', NULL, 0, 1, 135, 50, 497, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(99, 43, 'SATHYA', '', NULL, 0, 3, 135, 50, 497, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(100, 44, 'RAGHAVAN', '', NULL, 0, 1, 136, 51, 498, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(101, 44, 'SUNDARI', '', NULL, 0, 3, 136, 51, 498, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(102, 45, 'GOPALA KRISHNAN', '', NULL, 0, 1, 137, 52, 499, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(103, 45, 'THAMARISELVI', '', NULL, 0, 3, 137, 52, 499, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(104, 46, 'SURESH BABU', '', NULL, 0, 1, 138, 53, 500, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(105, 46, 'REVATHI', '', NULL, 0, 3, 138, 53, 500, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(106, 47, 'JOTHI', '', NULL, 0, 1, 139, 54, 501, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(107, 47, 'SHALINI', '', NULL, 0, 3, 139, 54, 501, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(108, 48, 'LAKSHMIKANTH', '', NULL, 0, 1, 140, 55, 502, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(109, 48, 'KARPAGAVALLI', '', NULL, 0, 3, 140, 55, 502, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(110, 49, 'SELVAM', '', NULL, 0, 1, 141, 56, 503, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(111, 49, 'JANCY RANI', '', NULL, 0, 3, 141, 56, 503, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(112, 50, 'VEL MURUGAN', '', NULL, 0, 1, 142, 57, 504, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(113, 50, 'KALPANA', '', NULL, 0, 3, 142, 57, 504, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(114, 51, 'PETHURAJ', '', NULL, 0, 1, 143, 58, 505, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(115, 51, 'MANJU', '', NULL, 0, 3, 143, 58, 505, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(116, 52, 'PRASANTH', '', NULL, 0, 1, 144, 59, 506, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(117, 52, 'RADHIKA', '', NULL, 0, 3, 144, 59, 506, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(118, 53, 'KARTHIK', '', NULL, 0, 1, 145, 60, 507, 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(119, 53, 'VALLI', '', NULL, 0, 3, 145, 60, 507, 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(120, 54, 'RAMESH', '', NULL, 0, 1, 146, 61, 508, 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(121, 54, 'DIVYA', '', NULL, 0, 3, 146, 61, 508, 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(122, 55, 'DISCONTINUED', '', NULL, 0, 1, 147, 62, 509, 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(123, 56, 'CHANDRAN', '', NULL, 0, 1, 148, 63, 510, 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(124, 56, 'SARASWATHI', '', NULL, 0, 3, 148, 63, 510, 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(125, 57, 'LINGA ANAND', '', NULL, 0, 1, 149, 64, 511, 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(126, 57, 'VIJAYALAKSHMI', '', NULL, 0, 3, 149, 64, 511, 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(127, 58, 'GIRI', '', NULL, 0, 1, 150, 65, 512, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(128, 58, 'MANIMEKALAI', '', NULL, 0, 3, 150, 65, 512, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(129, 59, 'GANESH KUMAR', '', NULL, 0, 1, 151, 66, 513, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(130, 59, 'JAYANTHI', '', NULL, 0, 3, 151, 66, 513, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(131, 60, 'KUMARAN', '', NULL, 0, 1, 152, 67, 514, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(132, 60, 'DHANALAKSHMI', '', NULL, 0, 3, 152, 67, 514, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(133, 61, 'Karthick', '', NULL, 0, 1, 153, 68, 515, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(134, 61, 'Sankaraeswari', '', NULL, 0, 3, 153, 68, 515, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(135, 62, 'A. Karthik Kumar', '', NULL, 0, 1, 154, 69, 516, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(136, 62, 'K. Keerthana Devi', '', NULL, 0, 3, 154, 69, 516, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(137, 63, 'AMARAN', '', NULL, 0, 1, 155, 70, 517, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(138, 63, 'Bhavani', '', NULL, 0, 3, 155, 70, 517, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(139, 64, 'Shobhanbabu', '', NULL, 0, 1, 156, 71, 518, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(140, 64, 'Bhuvaneshwari', '', NULL, 0, 3, 156, 71, 518, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(141, 65, 'Rajasekar', '', NULL, 0, 1, 157, 72, 519, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(142, 65, 'Ashwini', '', NULL, 0, 3, 157, 72, 519, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(143, 66, 'Ponnaiyan', '', NULL, 0, 1, 158, 73, 520, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(144, 66, 'Ramya', '', NULL, 0, 3, 158, 73, 520, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(145, 67, 'Senthilkumar', '', NULL, 0, 1, 159, 74, 521, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(146, 67, 'Gowthami', '', NULL, 0, 3, 159, 74, 521, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(147, 68, 'VIGNESHWARAN.S', '', NULL, 0, 1, 160, 75, 522, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(148, 68, 'SARANYA.V', '', NULL, 0, 3, 160, 75, 522, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(149, 69, 'Bharath', '', NULL, 0, 1, 161, 76, 523, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(150, 69, 'Gomathi', '', NULL, 0, 3, 161, 76, 523, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(151, 70, 'CHELLEMUTHU', '', NULL, 0, 1, 162, 77, 524, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(152, 70, 'JAYANTHI', '', NULL, 0, 3, 162, 77, 524, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(153, 71, 'VINOTH', '', NULL, 0, 1, 163, 78, 525, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(154, 71, 'BHARATHI', '', NULL, 0, 3, 163, 78, 525, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(155, 72, 'NANDHA KUMAR', '', NULL, 0, 1, 164, 79, 526, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(156, 72, 'KALPANA', '', NULL, 0, 3, 164, 79, 526, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(157, 73, 'RAMESH', '', NULL, 0, 1, 165, 80, 527, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(158, 73, 'TULASI', '', NULL, 0, 3, 165, 80, 527, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(159, 74, 'Dineshkumar', '', NULL, 0, 1, 166, 81, 528, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(160, 74, 'Meera', '', NULL, 0, 3, 166, 81, 528, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(161, 75, 'Karthick', '', NULL, 0, 1, 167, 82, 529, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(162, 75, 'Praveena', '', NULL, 0, 3, 167, 82, 529, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(163, 76, 'Vignesh', '', NULL, 0, 1, 168, 83, 530, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(164, 76, 'Nagalakshmi', '', NULL, 0, 3, 168, 83, 530, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(165, 77, 'R Venkatesan', '', NULL, 0, 1, 169, 84, 531, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(166, 77, 'V Ganga Devi', '', NULL, 0, 3, 169, 84, 531, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(167, 78, 'SILAMBARASAN', '', NULL, 0, 1, 170, 85, 532, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(168, 78, 'VENNILA', '', NULL, 0, 3, 170, 85, 532, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(169, 79, 'MANI MARAN', '', NULL, 0, 1, 171, 86, 533, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(170, 79, 'SHAN MUGA PRIYA', '', NULL, 0, 3, 171, 86, 533, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(171, 80, 'NAGA RAJ', '', NULL, 0, 1, 172, 87, 534, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(172, 80, 'DEEPA', '', NULL, 0, 3, 172, 87, 534, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(173, 81, 'Egambaram', '', NULL, 0, 1, 173, 88, 535, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(174, 81, 'Valli', '', NULL, 0, 3, 173, 88, 535, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(175, 82, 'VIJAYAN', '', NULL, 0, 1, 174, 89, 536, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(176, 82, 'KAVIYA', '', NULL, 0, 3, 174, 89, 536, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(177, 83, 'INBA SEKAR', '', NULL, 0, 1, 175, 90, 537, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(178, 83, 'Sathya', '', NULL, 0, 3, 175, 90, 537, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(179, 84, 'SIVARAMAN.C', '', NULL, 0, 1, 176, 91, 538, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(180, 84, 'Renuka', '', NULL, 0, 3, 176, 91, 538, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(181, 85, 'ARUL PANDI', '', NULL, 0, 1, 177, 92, 539, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(182, 85, 'GAYATHRI', '', NULL, 0, 3, 177, 92, 539, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(183, 86, 'RAJADURAI', '', NULL, 0, 1, 178, 93, 540, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(184, 86, 'SUREKHA', '', NULL, 0, 3, 178, 93, 540, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(185, 87, 'VANGDI MALAIYAN', '', NULL, 0, 1, 179, 94, 541, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(186, 87, 'DHANA LAKSHMI', '', NULL, 0, 3, 179, 94, 541, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(187, 88, 'VANGDI MALAIYAN', '', NULL, 0, 1, 180, 95, 542, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(188, 88, 'DHANA LAKSHMI', '', NULL, 0, 3, 180, 95, 542, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(189, 89, 'KUMARAN', '', NULL, 0, 1, 181, 96, 543, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(190, 89, 'DHANA LAKSHMI', '', NULL, 0, 3, 181, 96, 543, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(191, 90, 'Kutty easu', '', NULL, 0, 1, 182, 97, 544, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(192, 90, 'Kalliyammal', '', NULL, 0, 3, 182, 97, 544, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(193, 91, 'THIRUNAVUKKARASU', '', NULL, 0, 1, 183, 98, 545, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(194, 91, 'SARANYA', '', NULL, 0, 3, 183, 98, 545, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(195, 92, 'GANESH BABU', '', NULL, 0, 1, 184, 99, 546, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(196, 92, 'Sudha', '', NULL, 0, 3, 184, 99, 546, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(197, 93, 'THIRUNAVUKKARASU', '', NULL, 0, 1, 185, 100, 547, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(198, 93, 'Saranya', '', NULL, 0, 3, 185, 100, 547, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(199, 94, 'THIRUNAVUKKARASU', '', NULL, 0, 1, 186, 101, 548, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(200, 94, 'Saranya', '', NULL, 0, 3, 186, 101, 548, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(201, 95, 'Jamaludhin', '', NULL, 0, 1, 187, 102, 549, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(202, 95, 'Bhavani', '', NULL, 0, 3, 187, 102, 549, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(203, 96, 'VIGNESH', '', NULL, 0, 1, 188, 103, 550, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(204, 96, 'rajathi', '', NULL, 0, 3, 188, 103, 550, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(205, 97, 'SASI KUMAR', '', NULL, 0, 1, 189, 104, 551, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(206, 97, 'Durga', '', NULL, 0, 3, 189, 104, 551, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(207, 98, 'Seenivasa Perumal Late', '', NULL, 0, 1, 190, 105, 552, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(208, 98, 'G. Kavithasri', '', NULL, 0, 3, 190, 105, 552, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(209, 99, 'ILAIYARASAN.J', '', NULL, 0, 1, 191, 106, 553, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(210, 99, 'LOKESHWARI.S', '', NULL, 0, 3, 191, 106, 553, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(211, 100, 'Suresh', '', NULL, 0, 1, 192, 107, 554, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(212, 100, 'Janaki', '', NULL, 0, 3, 192, 107, 554, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(213, 101, 'Madesh', '', NULL, 0, 1, 193, 108, 555, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(214, 101, 'Deepika', '', NULL, 0, 3, 193, 108, 555, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(215, 102, 'Bharath', '', NULL, 0, 1, 194, 109, 556, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(216, 102, 'Gajalakshmi', '', NULL, 0, 3, 194, 109, 556, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(217, 103, 'Purusothaman', '', NULL, 0, 1, 195, 110, 557, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(218, 103, 'preetha mari', '', NULL, 0, 3, 195, 110, 557, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(219, 104, 'Dhana sakar', '', NULL, 0, 1, 196, 111, 558, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(220, 104, 'Preethamari', '', NULL, 0, 3, 196, 111, 558, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(221, 105, 'Karthik', '', NULL, 0, 1, 197, 112, 559, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(222, 105, 'Kanchana', '', NULL, 0, 3, 197, 112, 559, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(223, 106, 'Ashokkumar', '', NULL, 0, 1, 198, 113, 560, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(224, 106, 'Victoriya', '', NULL, 0, 3, 198, 113, 560, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(225, 107, 'Vinoth', '', NULL, 0, 1, 199, 114, 561, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(226, 107, 'Anitha', '', NULL, 0, 3, 199, 114, 561, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(227, 108, 'vengatesan', '', NULL, 0, 1, 200, 115, 562, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(228, 108, 'sowntharya', '', NULL, 0, 3, 200, 115, 562, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(229, 109, 'Albert', '', NULL, 0, 1, 201, 116, 563, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(230, 109, 'suriyakala', '', NULL, 0, 3, 201, 116, 563, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(231, 110, 'prakash', '', NULL, 0, 1, 202, 117, 564, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(232, 110, 'Saranya', '', NULL, 0, 3, 202, 117, 564, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(233, 111, 'Guna', '', NULL, 0, 1, 203, 118, 565, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(234, 111, 'Anju', '', NULL, 0, 3, 203, 118, 565, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(235, 112, 'Velmurugan', '', NULL, 0, 1, 204, 119, 566, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(236, 112, 'Devi', '', NULL, 0, 3, 204, 119, 566, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(237, 113, 'Selvam', '', NULL, 0, 1, 205, 120, 567, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(238, 113, 'Jansirani', '', NULL, 0, 3, 205, 120, 567, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(239, 114, 'Babu', '', NULL, 0, 1, 206, 121, 568, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(240, 114, 'Kalaivani', '', NULL, 0, 3, 206, 121, 568, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(241, 115, 'Suresh', '', NULL, 0, 1, 207, 122, 569, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(242, 115, 'Saranya', '', NULL, 0, 3, 207, 122, 569, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(243, 116, 'Murugan', '', NULL, 0, 1, 208, 123, 570, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(244, 116, 'Parvathi', '', NULL, 0, 3, 208, 123, 570, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(245, 117, 'Arul newton', '', NULL, 0, 1, 209, 124, 571, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(246, 117, 'Chithra', '', NULL, 0, 3, 209, 124, 571, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(247, 118, 'Anand', '', NULL, 0, 1, 210, 125, 572, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(248, 118, 'Nithya', '', NULL, 0, 3, 210, 125, 572, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(249, 119, 'Vinoth', '', NULL, 0, 1, 211, 126, 573, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(250, 119, 'Rajalakshmi', '', NULL, 0, 3, 211, 126, 573, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(251, 120, 'Gajendran', '', NULL, 0, 1, 212, 127, 574, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(252, 120, 'Vimalarani', '', NULL, 0, 3, 212, 127, 574, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(253, 121, 'Pechi muthu', '', NULL, 0, 1, 213, 128, 575, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(254, 121, 'jeya bharathi', '', NULL, 0, 3, 213, 128, 575, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(255, 122, 'Dhanapal', '', NULL, 0, 1, 214, 129, 576, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(256, 122, 'Chinnathai', '', NULL, 0, 3, 214, 129, 576, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(257, 123, 'Rajadurai', '', NULL, 0, 1, 215, 130, 577, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(258, 123, 'Vijayakuari', '', NULL, 0, 3, 215, 130, 577, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(259, 124, 'Sathish kumar', '', NULL, 0, 1, 216, 131, 578, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(260, 124, 'Thenmozhi', '', NULL, 0, 3, 216, 131, 578, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(261, 125, 'Saikumar', '', NULL, 0, 1, 217, 132, 579, 1, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(262, 125, 'Subha', '', NULL, 0, 3, 217, 132, 579, 1, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(263, 126, 'Vengatash', '', NULL, 0, 1, 218, 133, 580, 1, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(264, 126, 'Sargunavathi', '', NULL, 0, 3, 218, 133, 580, 1, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(265, 127, 'Balraj', '', NULL, 0, 1, 219, 134, 581, 1, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(266, 127, 'Muthulakshmi', '', NULL, 0, 3, 219, 134, 581, 1, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(267, 128, 'Karthik', '', NULL, 0, 1, 220, 135, 582, 1, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(268, 128, 'Jayanthi', '', NULL, 0, 3, 220, 135, 582, 1, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(269, 129, 'Murali', '', NULL, 0, 1, 221, 136, 583, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(270, 129, 'Priya', '', NULL, 0, 3, 221, 136, 583, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(271, 130, 'Joseph', '', NULL, 0, 1, 222, 137, 584, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(272, 130, 'Anna pooorana', '', NULL, 0, 3, 222, 137, 584, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(273, 131, 'Durai', '', NULL, 0, 1, 223, 138, 585, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(274, 131, 'Suganya', '', NULL, 0, 3, 223, 138, 585, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(275, 132, 'Vengatesan', '', NULL, 0, 1, 224, 139, 586, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(276, 132, 'kavitha', '', NULL, 0, 3, 224, 139, 586, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(277, 133, 'Babu', '', NULL, 0, 1, 225, 140, 587, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(278, 133, 'Indra', '', NULL, 0, 3, 225, 140, 587, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(279, 134, 'Saravanan', '', NULL, 0, 1, 226, 141, 588, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(280, 134, 'Sangeetha', '', NULL, 0, 3, 226, 141, 588, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(281, 135, 'Pethuraj', '', NULL, 0, 1, 227, 142, 589, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(282, 135, 'Manju', '', NULL, 0, 3, 227, 142, 589, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(283, 136, 'Tamim', '', NULL, 0, 1, 228, 143, 590, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(284, 136, 'Amir beevi', '', NULL, 0, 3, 228, 143, 590, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(285, 137, 'David', '', NULL, 0, 1, 229, 144, 591, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(286, 137, 'Usha', '', NULL, 0, 3, 229, 144, 591, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(287, 138, 'Sathish', '', NULL, 0, 1, 230, 145, 592, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(288, 138, 'shobana', '', NULL, 0, 3, 230, 145, 592, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(289, 139, 'Manikandan', '', NULL, 0, 1, 231, 146, 593, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(290, 139, 'Nishu', '', NULL, 0, 3, 231, 146, 593, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(291, 140, 'Suriya', '', NULL, 0, 1, 232, 147, 594, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(292, 140, 'Divya', '', NULL, 0, 3, 232, 147, 594, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(293, 141, 'MURUGAN', '', NULL, 0, 1, 233, 148, 595, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(294, 141, 'MOHANA', '', NULL, 0, 3, 233, 148, 595, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(295, 142, 'A. NANDHAKUMAR', '', NULL, 0, 1, 234, 149, 596, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(296, 142, 'N. KALPANA', '', NULL, 0, 3, 234, 149, 596, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(297, 143, 'V.BINNIYA', '', NULL, 0, 1, 235, 150, 597, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(298, 143, 'B. NAKMA', '', NULL, 0, 3, 235, 150, 597, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(299, 144, 'G. ARUNKUMAR', '', NULL, 0, 1, 236, 151, 598, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(300, 144, 'A. VANISRI', '', NULL, 0, 3, 236, 151, 598, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(301, 145, 'S. PONNAIYAN', '', NULL, 0, 1, 237, 152, 599, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(302, 145, 'P. RAMYA', '', NULL, 0, 3, 237, 152, 599, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(303, 146, 'M. BHARATHI RAJA', '', NULL, 0, 1, 238, 153, 600, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(304, 146, 'B. VITHYA', '', NULL, 0, 3, 238, 153, 600, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(305, 147, 'S.PRAKASH', '', NULL, 0, 1, 239, 154, 601, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(306, 147, 'P. THIRUPURA SUNDARI', '', NULL, 0, 3, 239, 154, 601, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(307, 148, 'E.RAJA', '', NULL, 0, 1, 240, 155, 602, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(308, 148, 'R.AARTHI', '', NULL, 0, 3, 240, 155, 602, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(309, 149, 'N. PARTHIBAN', '', NULL, 0, 1, 241, 156, 603, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(310, 149, 'P. NANDHINI', '', NULL, 0, 3, 241, 156, 603, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(311, 150, 'M.R.ANAND', '', NULL, 0, 1, 242, 157, 604, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(312, 150, 'S.RADHIKA', '', NULL, 0, 3, 242, 157, 604, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(313, 151, 'S.SIVA', '', NULL, 0, 1, 243, 158, 605, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(314, 151, 'S. BHARATHI', '', NULL, 0, 3, 243, 158, 605, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(315, 152, 'R.RAJESH', '', NULL, 0, 1, 244, 159, 606, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(316, 152, 'R.TAMILSELVI', '', NULL, 0, 3, 244, 159, 606, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(317, 153, 'KARTHIK. R', '', NULL, 0, 1, 245, 160, 607, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(318, 153, 'PARVATHY', '', NULL, 0, 3, 245, 160, 607, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(319, 154, 'R.RAMAKRISHNAN', '', NULL, 0, 1, 246, 161, 608, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(320, 154, 'ANUREKHA', '', NULL, 0, 3, 246, 161, 608, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(321, 155, 'SARAVANAN', '', NULL, 0, 1, 247, 162, 609, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(322, 155, 'M.S.SANGEETHA', '', NULL, 0, 3, 247, 162, 609, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(323, 156, 'SANTHANAKRISHNAN', '', NULL, 0, 1, 248, 163, 610, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(324, 156, 'S.ANUSHIYA', '', NULL, 0, 3, 248, 163, 610, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(325, 157, 'V.BALASUBRAMANI', '', NULL, 0, 1, 249, 164, 611, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(326, 157, 'B.PAVAZHAVALLI', '', NULL, 0, 3, 249, 164, 611, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(327, 158, 'M. SENTHILKUMAR', '', NULL, 0, 1, 250, 165, 612, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(328, 158, 'S.GOWTHAMI', '', NULL, 0, 3, 250, 165, 612, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(329, 159, 'S.VIGNESH', '', NULL, 0, 1, 251, 166, 613, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(330, 159, 'V.NAGALAKSHMI', '', NULL, 0, 3, 251, 166, 613, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(331, 160, 'K.E.SRINIVASAN', '', NULL, 0, 1, 252, 167, 614, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(332, 160, 'S.SANTHA', '', NULL, 0, 3, 252, 167, 614, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(333, 161, 'M.MANIKANDAN', '', NULL, 0, 1, 253, 168, 615, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(334, 161, 'M.DEVI', '', NULL, 0, 3, 253, 168, 615, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(335, 162, 'B. NAGARAJ', '', NULL, 0, 1, 254, 169, 616, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(336, 162, 'N.DEEPA', '', NULL, 0, 3, 254, 169, 616, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(337, 163, 'K. SARAVANAN', '', NULL, 0, 1, 255, 170, 617, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(338, 163, 'S.GEETHA', '', NULL, 0, 3, 255, 170, 617, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(339, 164, 'A.NIYAS', '', NULL, 0, 1, 256, 171, 618, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(340, 164, 'YASMINE', '', NULL, 0, 3, 256, 171, 618, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(341, 165, 'E.ALBERT', '', NULL, 0, 1, 257, 172, 619, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(342, 165, 'A.SURYAKALA', '', NULL, 0, 3, 257, 172, 619, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(343, 166, 'SATHISHKUMAR', '', NULL, 0, 1, 258, 173, 620, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(344, 166, 'S.REBECCA', '', NULL, 0, 3, 258, 173, 620, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(345, 167, 'V.VINOTHKUMAR', '', NULL, 0, 1, 259, 174, 621, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(346, 167, 'V.SELVARANI', '', NULL, 0, 3, 259, 174, 621, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(347, 168, 'G.THIRUNAVUKARASU', '', NULL, 0, 1, 260, 175, 622, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(348, 168, 'T.SARANYA', '', NULL, 0, 3, 260, 175, 622, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(349, 169, 'V. VINESH', '', NULL, 0, 1, 261, 176, 623, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(350, 169, 'V.RAJATHI', '', NULL, 0, 3, 261, 176, 623, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(351, 170, 'M.SUMAM', '', NULL, 0, 1, 262, 177, 624, 1, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(352, 170, 'S.RANI', '', NULL, 0, 3, 262, 177, 624, 1, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(353, 171, 'ROBERT', '', NULL, 0, 1, 263, 178, 625, 1, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(354, 171, 'VIJAYALAXMI', '', NULL, 0, 3, 263, 178, 625, 1, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(355, 172, 'KUMAR', '', NULL, 0, 1, 264, 179, 626, 1, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(356, 172, 'VIJIYA', '', NULL, 0, 3, 264, 179, 626, 1, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(357, 173, 'R.SENTHAMARAIKANNAN', '', NULL, 0, 1, 265, 180, 627, 1, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(358, 173, 'K.MOHANA', '', NULL, 0, 3, 265, 180, 627, 1, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(359, 174, 'R. DIVAKAR', '', NULL, 0, 1, 266, 181, 628, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(360, 174, 'D. SUMITHRA', '', NULL, 0, 3, 266, 181, 628, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(361, 175, 'ISMAIL', '', NULL, 0, 1, 267, 182, 629, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(362, 175, 'SYED ALI FATHIMA', '', NULL, 0, 3, 267, 182, 629, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(363, 176, 'Durai Arasan Lakshmi N', '', NULL, 0, 1, 268, 183, 630, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(364, 177, 'K Vinoth', '', NULL, 0, 1, 269, 184, 631, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(365, 177, 'S Rajasulochana', '', NULL, 0, 3, 269, 184, 631, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(366, 178, 'Prakash', '', NULL, 0, 1, 270, 185, 632, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(367, 178, 'Kalaivani', '', NULL, 0, 3, 270, 185, 632, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(368, 179, 'Murugan', '', NULL, 0, 1, 271, 186, 633, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(369, 179, 'Jayagandhi', '', NULL, 0, 3, 271, 186, 633, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(370, 180, 'Kannan', '', NULL, 0, 1, 272, 187, 634, 1, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(371, 180, 'Devi', '', NULL, 0, 3, 272, 187, 634, 1, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(372, 181, 'Venkatesh', '', NULL, 0, 1, 273, 188, 635, 1, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(373, 181, 'Sargunavath', '', NULL, 0, 3, 273, 188, 635, 1, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(374, 182, 'Inbasekaran', '', NULL, 0, 1, 274, 189, 636, 1, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(375, 182, 'Sathya', '', NULL, 0, 3, 274, 189, 636, 1, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(376, 183, 'Rajesh', '', NULL, 0, 1, 275, 190, 637, 1, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(377, 183, 'Ramya', '', NULL, 0, 3, 275, 190, 637, 1, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(378, 184, 'Bakiyaraj', '', NULL, 0, 1, 276, 191, 638, 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(379, 184, 'Sudha', '', NULL, 0, 3, 276, 191, 638, 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(380, 185, 'Saravanan', '', NULL, 0, 1, 277, 192, 639, 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(381, 185, 'Padmavathi', '', NULL, 0, 3, 277, 192, 639, 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(382, 186, 'Karuna Moorthi', '', NULL, 0, 1, 278, 193, 640, 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(383, 186, 'Gnasoundari', '', NULL, 0, 3, 278, 193, 640, 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(384, 187, 'Gubendran', '', NULL, 0, 1, 279, 194, 641, 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(385, 187, 'Renuka', '', NULL, 0, 3, 279, 194, 641, 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(386, 188, 'Rajesh', '', NULL, 0, 1, 280, 195, 642, 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(387, 188, 'Naveena', '', NULL, 0, 3, 280, 195, 642, 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(388, 189, 'Senthamaraikannan', '', NULL, 0, 1, 281, 196, 643, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(389, 189, 'Mohana', '', NULL, 0, 3, 281, 196, 643, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(390, 190, 'Viji', '', NULL, 0, 1, 282, 197, 644, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(391, 190, 'Durga Devi', '', NULL, 0, 3, 282, 197, 644, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(392, 191, 'Siva', '', NULL, 0, 1, 283, 198, 645, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(393, 191, 'Thenmozhi', '', NULL, 0, 3, 283, 198, 645, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(394, 192, 'Arun', '', NULL, 0, 1, 284, 199, 646, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(395, 192, 'Kalaiselvi', '', NULL, 0, 3, 284, 199, 646, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(396, 193, 'Arokiya Raj', '', NULL, 0, 1, 285, 200, 647, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(397, 193, 'Arokiya Meri', '', NULL, 0, 3, 285, 200, 647, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(398, 194, 'Ajmal Hussain', '', NULL, 0, 1, 286, 201, 648, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(399, 194, 'Ayisha chitika', '', NULL, 0, 3, 286, 201, 648, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(400, 195, 'Velu', '', NULL, 0, 1, 287, 202, 649, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(401, 195, 'Amutha', '', NULL, 0, 3, 287, 202, 649, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(402, 196, 'Praveen Kumar', '', NULL, 0, 1, 288, 203, 650, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(403, 196, 'Selvamari', '', NULL, 0, 3, 288, 203, 650, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(404, 197, 'David', '', NULL, 0, 1, 289, 204, 651, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(405, 197, 'Usha', '', NULL, 0, 3, 289, 204, 651, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(406, 198, 'Purushothaman', '', NULL, 0, 1, 290, 205, 652, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(407, 198, 'Muthumani', '', NULL, 0, 3, 290, 205, 652, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(408, 199, 'Rajan', '', NULL, 0, 1, 291, 206, 653, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(409, 199, 'Amutha', '', NULL, 0, 3, 291, 206, 653, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(410, 200, 'Magesh', '', NULL, 0, 1, 292, 207, 654, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(411, 200, 'Sasikala', '', NULL, 0, 3, 292, 207, 654, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(412, 201, 'Magesh', '', NULL, 0, 1, 293, 208, 655, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(413, 201, 'Sasikala', '', NULL, 0, 3, 293, 208, 655, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(414, 202, 'Rajesh', '', NULL, 0, 1, 294, 209, 656, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(415, 202, 'Maheswari', '', NULL, 0, 3, 294, 209, 656, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(416, 203, 'Prakash', '', NULL, 0, 1, 295, 210, 657, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(417, 203, 'Divya', '', NULL, 0, 3, 295, 210, 657, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(418, 204, 'Dhanapal', '', NULL, 0, 1, 296, 211, 658, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(419, 204, 'Chinnathai', '', NULL, 0, 3, 296, 211, 658, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(420, 205, 'Parthsarathy', '', NULL, 0, 1, 297, 212, 659, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(421, 205, 'Samundeshwari', '', NULL, 0, 3, 297, 212, 659, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(422, 206, 'Srinivasan', '', NULL, 0, 1, 298, 213, 660, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(423, 206, 'Kanchana', '', NULL, 0, 3, 298, 213, 660, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(424, 207, 'Murugan', '', NULL, 0, 1, 299, 214, 661, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(425, 207, 'Amma', '', NULL, 0, 3, 299, 214, 661, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(426, 208, 'Jayanathan', '', NULL, 0, 1, 300, 215, 662, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(427, 208, 'Preetha Jothi', '', NULL, 0, 3, 300, 215, 662, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(428, 209, 'Kesavan', '', NULL, 0, 1, 301, 216, 663, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(429, 209, 'Nithya', '', NULL, 0, 3, 301, 216, 663, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(430, 210, 'Raji M', '', NULL, 0, 1, 302, 217, 664, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(431, 210, 'Devika R', '', NULL, 0, 3, 302, 217, 664, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(432, 211, 'Srikanth', '', NULL, 0, 1, 303, 218, 665, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(433, 211, 'Ramya', '', NULL, 0, 3, 303, 218, 665, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(434, 212, 'Vinoth Kumar', '', NULL, 0, 1, 304, 219, 666, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(435, 212, 'Nandhini', '', NULL, 0, 3, 304, 219, 666, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(436, 213, 'Kumar', '', NULL, 0, 1, 305, 220, 667, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(437, 213, 'Selvi', '', NULL, 0, 3, 305, 220, 667, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(438, 214, 'Rajesh', '', NULL, 0, 1, 306, 221, 668, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(439, 214, 'Tamilselvi', '', NULL, 0, 3, 306, 221, 668, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(440, 215, 'Anand', '', NULL, 0, 1, 307, 222, 669, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(441, 215, 'Nithya', '', NULL, 0, 3, 307, 222, 669, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(442, 216, 'Madhan', '', NULL, 0, 1, 308, 223, 670, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(443, 216, 'Hemalatha', '', NULL, 0, 3, 308, 223, 670, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(444, 217, 'Suresh', '', NULL, 0, 1, 309, 224, 671, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(445, 217, 'Jancy', '', NULL, 0, 3, 309, 224, 671, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(446, 218, 'David', '', NULL, 0, 1, 310, 225, 672, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(447, 218, 'Usha', '', NULL, 0, 3, 310, 225, 672, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(448, 219, 'Perumal', '', NULL, 0, 1, 311, 226, 673, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(449, 219, 'Vimala', '', NULL, 0, 3, 311, 226, 673, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(450, 220, 'Vijayakumar', '', NULL, 0, 1, 312, 227, 674, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(451, 220, 'Pavithra', '', NULL, 0, 3, 312, 227, 674, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(452, 221, 'Munnusamy', '', NULL, 0, 1, 313, 228, 675, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(453, 221, 'Bhuvaneshwari', '', NULL, 0, 3, 313, 228, 675, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(454, 222, 'Gopinath', '', NULL, 0, 1, 314, 229, 676, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(455, 222, 'Gayathri', '', NULL, 0, 3, 314, 229, 676, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(456, 223, 'Karthikkumar', '', NULL, 0, 1, 315, 230, 677, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(457, 223, 'Keerthanadevi', '', NULL, 0, 3, 315, 230, 677, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(458, 224, 'Muthu', '', NULL, 0, 1, 316, 231, 678, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(459, 224, 'Kalaivani', '', NULL, 0, 3, 316, 231, 678, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(460, 225, 'Karthik', '', NULL, 0, 1, 317, 232, 679, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(461, 225, 'Sankareshwari', '', NULL, 0, 3, 317, 232, 679, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(462, 226, 'Govindasamy', '', NULL, 0, 1, 318, 233, 680, 1, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(463, 226, 'Thamarai', '', NULL, 0, 3, 318, 233, 680, 1, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(464, 227, 'Suresh', '', NULL, 0, 1, 319, 234, 681, 1, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(465, 227, 'Janaki', '', NULL, 0, 3, 319, 234, 681, 1, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(466, 228, 'Kesavan', '', NULL, 0, 1, 320, 235, 682, 1, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(467, 228, 'Nithya', '', NULL, 0, 3, 320, 235, 682, 1, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(468, 229, 'Late', '', NULL, 0, 1, 321, 236, 683, 1, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(469, 229, 'Pramila', '', NULL, 0, 3, 321, 236, 683, 1, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(470, 230, 'Sathish', '', NULL, 0, 1, 322, 237, 684, 1, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(471, 230, 'Viji', '', NULL, 0, 3, 322, 237, 684, 1, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(472, 231, 'Imthiyaz ahameed', '', NULL, 0, 1, 323, 238, 685, 1, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(473, 231, 'Sabiya', '', NULL, 0, 3, 323, 238, 685, 1, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(474, 232, 'Karthik', '', NULL, 0, 1, 324, 239, 686, 1, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(475, 232, 'Rajeshwari', '', NULL, 0, 3, 324, 239, 686, 1, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(476, 233, 'Vinoth', '', NULL, 0, 1, 325, 240, 687, 1, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(477, 233, 'Rajasulochana', '', NULL, 0, 3, 325, 240, 687, 1, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(478, 234, 'Gangadharan', '', NULL, 0, 1, 326, 241, 688, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(479, 234, 'Beula', '', NULL, 0, 3, 326, 241, 688, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(480, 235, 'Balasubramaniyam', '', NULL, 0, 1, 327, 242, 689, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(481, 235, 'Pavalavalli', '', NULL, 0, 3, 327, 242, 689, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(482, 236, 'Selvakumar', '', NULL, 0, 1, 328, 243, 690, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(483, 236, 'Eswari', '', NULL, 0, 3, 328, 243, 690, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(484, 237, 'Srinivasan', '', NULL, 0, 1, 329, 244, 691, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(485, 237, 'Shantha', '', NULL, 0, 3, 329, 244, 691, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(486, 238, 'Umapathy', '', NULL, 0, 1, 330, 245, 692, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(487, 238, 'Vasantha', '', NULL, 0, 3, 330, 245, 692, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(488, 239, 'Binniya', '', NULL, 0, 1, 331, 246, 693, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(489, 239, 'Nakma', '', NULL, 0, 3, 331, 246, 693, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(490, 240, 'Dayalan', '', NULL, 0, 1, 332, 247, 694, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(491, 240, 'Devaki', '', NULL, 0, 3, 332, 247, 694, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(492, 241, 'Balaji', '', NULL, 0, 1, 333, 248, 695, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(493, 241, 'Vijaya', '', NULL, 0, 3, 333, 248, 695, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(494, 242, 'Kumaresan', '', NULL, 0, 1, 334, 249, 696, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(495, 242, 'Vani', '', NULL, 0, 3, 334, 249, 696, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(496, 243, 'Prabakaran', '', NULL, 0, 1, 335, 250, 697, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(497, 243, 'Selvi', '', NULL, 0, 3, 335, 250, 697, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(498, 244, 'Saravanan', '', NULL, 0, 1, 336, 251, 698, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(499, 244, 'Vijayalakshmi', '', NULL, 0, 3, 336, 251, 698, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(500, 245, 'Dhamodharan', '', NULL, 0, 1, 337, 252, 699, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(501, 245, 'Jayapriya', '', NULL, 0, 3, 337, 252, 699, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(502, 246, 'Manikandan', '', NULL, 0, 1, 338, 253, 700, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(503, 246, 'Umamageshwari', '', NULL, 0, 3, 338, 253, 700, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(504, 247, 'Murugan', '', NULL, 0, 1, 339, 254, 701, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(505, 247, 'Parvathi', '', NULL, 0, 3, 339, 254, 701, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(506, 248, 'Venkatesh', '', NULL, 0, 1, 340, 255, 702, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(507, 248, 'Tamilselvi', '', NULL, 0, 3, 340, 255, 702, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(508, 250, 'Venkatesan', '', NULL, 0, 1, 342, 257, 704, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(509, 250, 'Vennila', '', NULL, 0, 3, 342, 257, 704, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(510, 251, 'Sadiq Basha', '', NULL, 0, 1, 343, 258, 705, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(511, 251, 'Dowlath Begam', '', NULL, 0, 3, 343, 258, 705, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(512, 252, 'Gopi', '', NULL, 0, 1, 344, 259, 706, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(513, 252, 'Kanniammal', '', NULL, 0, 3, 344, 259, 706, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(514, 253, 'Venkatesan', '', NULL, 0, 1, 345, 260, 707, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(515, 253, 'Kodiyarasi', '', NULL, 0, 3, 345, 260, 707, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(516, 254, 'Jeyanthan', '', NULL, 0, 1, 346, 261, 708, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(517, 254, 'Preetha Jothi', '', NULL, 0, 3, 346, 261, 708, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21');
INSERT INTO `familyconnections` (`fmlcId`, `fmlcFamilyId`, `fmlcFirstName`, `fmlcProfession`, `fmlcDOB`, `fmlcGender`, `fmlcRelationship`, `fmlcContactId`, `fmlcEmailId`, `fmlcAddressId`, `fmlcIsStatus`, `created_at`, `updated_at`) VALUES
(518, 255, 'Parameshwaran', '', NULL, 0, 1, 347, 262, 709, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(519, 255, 'Uma', '', NULL, 0, 3, 347, 262, 709, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(520, 256, 'Abdul Subhan', '', NULL, 0, 1, 348, 263, 710, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(521, 256, 'Nasima Banu', '', NULL, 0, 3, 348, 263, 710, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(522, 257, 'Manikandan', '', NULL, 0, 1, 349, 264, 711, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(523, 257, 'Devi', '', NULL, 0, 3, 349, 264, 711, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(524, 258, 'Saravanan', '', NULL, 0, 1, 350, 265, 712, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(525, 258, 'Vijaya Lakshmi', '', NULL, 0, 3, 350, 265, 712, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(526, 259, 'Sankar', '', NULL, 0, 1, 351, 266, 713, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(527, 259, 'Sathiya', '', NULL, 0, 3, 351, 266, 713, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(528, 260, 'Vinoth', '', NULL, 0, 1, 352, 267, 714, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(529, 260, 'Pavithra', '', NULL, 0, 3, 352, 267, 714, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(530, 261, 'Paulsamy', '', NULL, 0, 1, 353, 268, 715, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(531, 261, 'Maheshwari', '', NULL, 0, 3, 353, 268, 715, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(532, 262, 'Marimuthu', '', NULL, 0, 1, 354, 269, 716, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(533, 262, 'Renuka', '', NULL, 0, 3, 354, 269, 716, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(534, 263, 'Ibrahim', '', NULL, 0, 1, 355, 270, 717, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(535, 263, 'Vidhya', '', NULL, 0, 3, 355, 270, 717, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(536, 264, 'Suresh', '', NULL, 0, 1, 356, 271, 718, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(537, 264, 'Sangeetha', '', NULL, 0, 3, 356, 271, 718, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(538, 265, 'Vishwanathan', '', NULL, 0, 1, 357, 272, 719, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(539, 265, 'Jayalakshmi', '', NULL, 0, 3, 357, 272, 719, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(540, 266, 'Sudhakar', '', NULL, 0, 1, 358, 273, 720, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(541, 266, 'Girecy', '', NULL, 0, 3, 358, 273, 720, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(542, 267, 'Joy Mathew', '', NULL, 0, 1, 359, 274, 721, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(543, 267, 'Sumithra', '', NULL, 0, 3, 359, 274, 721, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(544, 268, 'Gopi', '', NULL, 0, 1, 360, 275, 722, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(545, 268, 'Umamaheshwari', '', NULL, 0, 3, 360, 275, 722, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(546, 269, 'Sathya', '', NULL, 0, 1, 361, 276, 723, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(547, 269, 'Vanitha', '', NULL, 0, 3, 361, 276, 723, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(548, 270, 'Selvaraj', '', NULL, 0, 1, 362, 277, 724, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(549, 270, 'Meenakshi', '', NULL, 0, 3, 362, 277, 724, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(550, 271, 'Ramesh', '', NULL, 0, 1, 363, 278, 725, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(551, 271, 'Alamelu Mangai', '', NULL, 0, 3, 363, 278, 725, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(552, 272, 'Moses', '', NULL, 0, 1, 364, 279, 726, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(553, 272, 'Vanitha', '', NULL, 0, 3, 364, 279, 726, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(554, 273, 'Ramesh', '', NULL, 0, 1, 365, 280, 727, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(555, 273, 'Illavarasi', '', NULL, 0, 3, 365, 280, 727, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(556, 274, 'Madhan Kumar', '', NULL, 0, 1, 366, 281, 728, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(557, 274, 'Megala', '', NULL, 0, 3, 366, 281, 728, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(558, 275, 'Subramani', '', NULL, 0, 1, 367, 282, 729, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(559, 275, 'Jaya', '', NULL, 0, 3, 367, 282, 729, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(560, 276, 'Prakash', '', NULL, 0, 1, 368, 283, 730, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(561, 276, 'Kalaivani', '', NULL, 0, 3, 368, 283, 730, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(562, 277, 'Raja', '', NULL, 0, 1, 369, 284, 731, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(563, 277, 'Umavathi', '', NULL, 0, 3, 369, 284, 731, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(564, 278, 'Noor Mohammad', '', NULL, 0, 1, 370, 285, 732, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(565, 278, 'Shayira Banu', '', NULL, 0, 3, 370, 285, 732, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(566, 279, 'Raji', '', NULL, 0, 1, 371, 286, 733, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(567, 279, 'Karpagam', '', NULL, 0, 3, 371, 286, 733, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(568, 280, 'Vijaya Babu', '', NULL, 0, 1, 372, 287, 734, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(569, 280, 'Pachaiammal', '', NULL, 0, 3, 372, 287, 734, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(570, 281, 'Paalayam', '', NULL, 0, 1, 373, 288, 735, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(571, 281, 'Devi', '', NULL, 0, 3, 373, 288, 735, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(572, 282, 'Senthil Kumar', '', NULL, 0, 1, 374, 289, 736, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(573, 282, 'Lakshmi', '', NULL, 0, 3, 374, 289, 736, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(574, 283, 'Saravanan', '', NULL, 0, 1, 375, 290, 737, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(575, 283, 'Geetha', '', NULL, 0, 3, 375, 290, 737, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(576, 284, 'Raja', '', NULL, 0, 1, 376, 291, 738, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(577, 284, 'Dhanalakshmi', '', NULL, 0, 3, 376, 291, 738, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(578, 285, 'Ilayarasan', '', NULL, 0, 1, 377, 292, 739, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(579, 285, 'Lokeshwari', '', NULL, 0, 3, 377, 292, 739, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(580, 286, 'Ismail', '', NULL, 0, 1, 378, 293, 740, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(581, 286, 'Syed Ali Fathima', '', NULL, 0, 3, 378, 293, 740, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(582, 287, 'Iyyappan', '', NULL, 0, 1, 379, 294, 741, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(583, 287, 'Vijaya', '', NULL, 0, 3, 379, 294, 741, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(584, 288, 'Jaivel', '', NULL, 0, 1, 380, 295, 742, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(585, 288, 'Revathi', '', NULL, 0, 3, 380, 295, 742, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(586, 289, 'RAHIM', '', NULL, 0, 1, 381, 296, 743, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(587, 289, 'RABIYA BASIRI', '', NULL, 0, 3, 381, 296, 743, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(588, 290, 'MURALI', '', NULL, 0, 1, 382, 297, 744, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(589, 290, 'ARUL MARY', '', NULL, 0, 3, 382, 297, 744, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(590, 291, 'ARUN', '', NULL, 0, 1, 383, 298, 745, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(591, 291, 'KALAI SELVI', '', NULL, 0, 3, 383, 298, 745, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(592, 292, 'SADHAM HUSSAIN', '', NULL, 0, 1, 384, 299, 746, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(593, 292, 'SALMA BEGAM', '', NULL, 0, 3, 384, 299, 746, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(594, 293, 'SIVA', '', NULL, 0, 1, 385, 300, 747, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(595, 293, 'BHARATHI', '', NULL, 0, 3, 385, 300, 747, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(596, 294, 'G BALAKRISHNAN', '', NULL, 0, 1, 386, 301, 748, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(597, 294, 'B RAMYA', '', NULL, 0, 3, 386, 301, 748, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(598, 295, 'KANNAN', '', NULL, 0, 1, 387, 302, 749, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(599, 295, 'USHA', '', NULL, 0, 3, 387, 302, 749, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(600, 296, 'SELVAM S', '', NULL, 0, 1, 388, 303, 750, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(601, 296, 'KANIMOZHI S', '', NULL, 0, 3, 388, 303, 750, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(602, 297, 'SEVUGA RAJA K', '', NULL, 0, 1, 389, 304, 751, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(603, 297, 'AANADHIS', '', NULL, 0, 3, 389, 304, 751, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(604, 298, 'SEBASTIN DICROZE', '', NULL, 0, 1, 390, 305, 752, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(605, 298, 'NAVA ROSIE', '', NULL, 0, 3, 390, 305, 752, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(606, 299, 'HARIDASS', '', NULL, 0, 1, 391, 306, 753, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(607, 299, 'ANJALAKSHMI', '', NULL, 0, 3, 391, 306, 753, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(608, 300, 'PRAKASH', '', NULL, 0, 1, 392, 307, 754, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(609, 300, 'TAMILSELVI', '', NULL, 0, 3, 392, 307, 754, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(610, 301, 'SATHYA MOORTHY', '', NULL, 0, 1, 393, 308, 755, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(611, 301, 'PUSHPALATHA', '', NULL, 0, 3, 393, 308, 755, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(612, 302, 'RAJASEKARAN', '', NULL, 0, 1, 394, 309, 756, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(613, 302, 'NAGALAKSHMI', '', NULL, 0, 3, 394, 309, 756, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(614, 303, 'PAULSAMY', '', NULL, 0, 1, 395, 310, 757, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(615, 303, 'MAHESWARI', '', NULL, 0, 3, 395, 310, 757, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(616, 304, 'GANAPATHY', '', NULL, 0, 1, 396, 311, 758, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(617, 304, 'ANJALI', '', NULL, 0, 3, 396, 311, 758, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(618, 305, 'SARAVANAN A', '', NULL, 0, 1, 397, 312, 759, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(619, 305, 'GOMATHI S', '', NULL, 0, 3, 397, 312, 759, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(620, 306, 'GOVINDASWAMY', '', NULL, 0, 1, 398, 313, 760, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(621, 306, 'THAMARAI', '', NULL, 0, 3, 398, 313, 760, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(622, 307, 'SRIVASAN', '', NULL, 0, 1, 399, 314, 761, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(623, 307, 'PONNI', '', NULL, 0, 3, 399, 314, 761, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(624, 308, 'RUBAN', '', NULL, 0, 1, 400, 315, 762, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(625, 308, 'NIRMALA DEVI', '', NULL, 0, 3, 400, 315, 762, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(626, 309, 'MUTHURAMAN', '', NULL, 0, 1, 401, 316, 763, 1, '2022-09-21 00:55:32', '2022-09-21 00:55:32'),
(627, 309, 'SUGANTHI', '', NULL, 0, 3, 401, 316, 763, 1, '2022-09-21 00:55:32', '2022-09-21 00:55:32'),
(628, 310, 'SATHIVEL S', '', NULL, 0, 1, 402, 317, 764, 1, '2022-09-21 00:55:32', '2022-09-21 00:55:32'),
(629, 310, 'JABENA', '', NULL, 0, 3, 402, 317, 764, 1, '2022-09-21 00:55:32', '2022-09-21 00:55:32'),
(630, 311, 'SELVAM M', '', NULL, 0, 1, 403, 318, 765, 1, '2022-09-21 00:55:32', '2022-09-21 00:55:32'),
(631, 311, 'THENMOZHI S', '', NULL, 0, 3, 403, 318, 765, 1, '2022-09-21 00:55:32', '2022-09-21 00:55:32'),
(632, 312, 'JEEVARATHINAM', '', NULL, 0, 1, 404, 319, 766, 1, '2022-09-21 00:55:33', '2022-09-21 00:55:33'),
(633, 312, 'SATHYA PRIYA', '', NULL, 0, 3, 404, 319, 766, 1, '2022-09-21 00:55:33', '2022-09-21 00:55:33'),
(634, 313, 'SELVA KUMAR', '', NULL, 0, 1, 405, 320, 767, 1, '2022-09-21 00:55:33', '2022-09-21 00:55:33'),
(635, 313, 'ESHWARI', '', NULL, 0, 3, 405, 320, 767, 1, '2022-09-21 00:55:33', '2022-09-21 00:55:33'),
(636, 314, 'MUNUSAMY', '', NULL, 0, 1, 406, 321, 768, 1, '2022-09-21 00:55:34', '2022-09-21 00:55:34'),
(637, 314, 'BUVANESHWARI', '', NULL, 0, 3, 406, 321, 768, 1, '2022-09-21 00:55:34', '2022-09-21 00:55:34'),
(638, 315, 'ABDHUL KHAN', '', NULL, 0, 1, 407, 322, 769, 1, '2022-09-21 00:55:34', '2022-09-21 00:55:34'),
(639, 315, 'RAMEEZUNISHA', '', NULL, 0, 3, 407, 322, 769, 1, '2022-09-21 00:55:34', '2022-09-21 00:55:34'),
(640, 316, 'SHAIK ABDUL KATHAR', '', NULL, 0, 1, 408, 323, 770, 1, '2022-09-21 00:55:34', '2022-09-21 00:55:34'),
(641, 316, 'KAMEELA PARVIN', '', NULL, 0, 3, 408, 323, 770, 1, '2022-09-21 00:55:34', '2022-09-21 00:55:34'),
(642, 317, 'JOSEPH', '', NULL, 0, 1, 409, 324, 771, 1, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(643, 317, 'ABI', '', NULL, 0, 3, 409, 324, 771, 1, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(644, 318, 'SELVA KUMAR', '', NULL, 0, 1, 410, 325, 772, 1, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(645, 318, 'RENUGA', '', NULL, 0, 3, 410, 325, 772, 1, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(646, 319, 'THIRUMALAI', '', NULL, 0, 1, 411, 326, 773, 1, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(647, 319, 'MARIYAMMAL', '', NULL, 0, 3, 411, 326, 773, 1, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(648, 320, 'SASIKUMAR', '', NULL, 0, 1, 412, 327, 774, 1, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(649, 320, 'DURKA', '', NULL, 0, 3, 412, 327, 774, 1, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(650, 321, 'RAMESH', '', NULL, 0, 1, 413, 328, 775, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(651, 321, 'ALAMELU', '', NULL, 0, 3, 413, 328, 775, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(652, 322, 'BALAKRISHNAN', '', NULL, 0, 1, 414, 329, 776, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(653, 322, 'NEELA', '', NULL, 0, 3, 414, 329, 776, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(654, 323, 'MOHHAMED ANIFA', '', NULL, 0, 1, 415, 330, 777, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(655, 323, 'SHAKILA BANU', '', NULL, 0, 3, 415, 330, 777, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(656, 324, 'SHAM KANNAN', '', NULL, 0, 1, 416, 331, 778, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(657, 324, 'KOKILA', '', NULL, 0, 3, 416, 331, 778, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(658, 325, 'RAJESH P', '', NULL, 0, 1, 417, 332, 779, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(659, 325, 'RAMYA R', '', NULL, 0, 3, 417, 332, 779, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(660, 326, 'DHAWOOTH A', '', NULL, 0, 1, 418, 333, 780, 1, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(661, 326, 'PARVEEN D', '', NULL, 0, 3, 418, 333, 780, 1, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(662, 327, 'SENTHIL MURUGAN', '', NULL, 0, 1, 419, 334, 781, 1, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(663, 327, 'JAYANTHI', '', NULL, 0, 3, 419, 334, 781, 1, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(664, 328, 'KHADAR BASHAH', '', NULL, 0, 1, 420, 335, 782, 1, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(665, 328, 'THAMIBA BEGAM', '', NULL, 0, 3, 420, 335, 782, 1, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(666, 329, 'JAYAVEL', '', NULL, 0, 1, 421, 336, 783, 1, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(667, 329, 'POORNIMA', '', NULL, 0, 3, 421, 336, 783, 1, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(668, 330, 'VIJAYAKUMAR V', '', NULL, 0, 1, 422, 337, 784, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(669, 330, 'SELVI', '', NULL, 0, 3, 422, 337, 784, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(670, 331, 'SARAVANA', '', NULL, 0, 1, 423, 338, 785, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(671, 331, 'HEMALATHA', '', NULL, 0, 3, 423, 338, 785, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(672, 332, 'RAJIV GHANTHI', '', NULL, 0, 1, 424, 339, 786, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(673, 332, 'KAVITHA', '', NULL, 0, 3, 424, 339, 786, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(674, 333, 'RAMESH', '', NULL, 0, 1, 425, 340, 787, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(675, 333, 'EKKAVARASI', '', NULL, 0, 3, 425, 340, 787, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(676, 334, 'KUMAR', '', NULL, 0, 1, 426, 341, 788, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(677, 334, 'PRIYA', '', NULL, 0, 3, 426, 341, 788, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(678, 335, 'SADIQ BASHA', '', NULL, 0, 1, 427, 342, 789, 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(679, 335, 'DOWLATH', '', NULL, 0, 3, 427, 342, 789, 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(680, 336, 'PORCHEZHIAN', '', NULL, 0, 1, 428, 343, 790, 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(681, 336, 'SASIKALA', '', NULL, 0, 3, 428, 343, 790, 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(682, 337, 'SURESH', '', NULL, 0, 1, 429, 344, 791, 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(683, 337, 'SANGEETHA', '', NULL, 0, 3, 429, 344, 791, 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(684, 338, 'REVATHI', '', NULL, 0, 3, 430, 345, 792, 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(685, 339, 'UDHAYASHANKAR', '', NULL, 0, 1, 431, 346, 793, 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(686, 339, 'REVATHI', '', NULL, 0, 3, 431, 346, 793, 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(687, 340, 'RAJESH', '', NULL, 0, 1, 432, 347, 794, 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(688, 340, 'PRABHAVATHY', '', NULL, 0, 3, 432, 347, 794, 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(689, 341, 'DHANALAKSHMI', '', NULL, 0, 3, 433, 348, 795, 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(690, 342, 'MUTHU', '', NULL, 0, 1, 434, 349, 796, 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(691, 342, 'KALAIVANI', '', NULL, 0, 3, 434, 349, 796, 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(692, 343, 'YOGANANDHAN', '', NULL, 0, 1, 435, 350, 797, 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(693, 343, 'VIAJAYALAKSHMI', '', NULL, 0, 3, 435, 350, 797, 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(694, 344, 'AARI', '', NULL, 0, 1, 436, 351, 798, 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(695, 344, 'SASIKALA', '', NULL, 0, 3, 436, 351, 798, 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(696, 345, 'JAYANTHAN', '', NULL, 0, 1, 437, 352, 799, 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(697, 345, 'ISHWARYA(LATE)', '', NULL, 0, 3, 437, 352, 799, 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(698, 346, 'RAJ', '', NULL, 0, 1, 438, 353, 800, 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(699, 346, 'SELVI', '', NULL, 0, 3, 438, 353, 800, 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(700, 347, 'KUPPUSAMY', '', NULL, 0, 1, 439, 354, 801, 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(701, 347, 'NIRAMALA', '', NULL, 0, 3, 439, 354, 801, 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(702, 348, 'MALINI', '', NULL, 0, 3, 440, 355, 802, 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(703, 349, 'SARAVANAN', '', NULL, 0, 1, 441, 356, 803, 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(704, 349, 'INDHUMATHI', '', NULL, 0, 3, 441, 356, 803, 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(705, 350, 'MOSES', '', NULL, 0, 1, 442, 357, 804, 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(706, 350, 'KANNIMARIYAL', '', NULL, 0, 3, 442, 357, 804, 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(707, 351, 'VIJAYABABU', '', NULL, 0, 1, 443, 358, 805, 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(708, 351, 'PACHAIYAMMAL', '', NULL, 0, 3, 443, 358, 805, 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(709, 352, 'RAJENDRAKUMAR', '', NULL, 0, 1, 444, 359, 806, 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(710, 352, 'CHITRADEVI', '', NULL, 0, 3, 444, 359, 806, 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(711, 353, 'ANAND RAJ', '', NULL, 0, 1, 445, 360, 807, 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(712, 353, 'GNANASOUNDARYA', '', NULL, 0, 3, 445, 360, 807, 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(713, 354, 'JAYADEEPA', '', NULL, 0, 3, 446, 361, 808, 1, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(714, 355, 'CHITRA', '', NULL, 0, 3, 447, 362, 809, 1, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(715, 356, 'MARGRET REGINA', '', NULL, 0, 3, 448, 363, 810, 1, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(716, 357, 'SUMATHI', '', NULL, 0, 3, 449, 364, 811, 1, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(717, 358, 'UDHAYAKUMAR.K', '', NULL, 0, 1, 450, 365, 812, 1, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(718, 358, 'SURYA.U', '', NULL, 0, 3, 450, 365, 812, 1, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(719, 359, 'RAGHU', '', NULL, 0, 1, 451, 366, 813, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(720, 359, 'CHITRA', '', NULL, 0, 3, 451, 366, 813, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(721, 360, 'MUTHUSELVI', '', NULL, 0, 3, 452, 367, 814, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(722, 361, 'Raji', '', NULL, 0, 3, 453, 368, 815, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(723, 362, 'FIRDOSE', '', NULL, 0, 3, 454, 369, 816, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(724, 363, 'NADHIYA', '', NULL, 0, 3, 455, 370, 817, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(725, 364, 'PRIYA', '', NULL, 0, 3, 456, 371, 818, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(726, 365, 'MURUGAN.A', '', NULL, 0, 1, 457, 372, 819, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(727, 365, 'PAVALAKODI', '', NULL, 0, 3, 457, 372, 819, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(728, 366, 'RAJESH', '', NULL, 0, 1, 458, 373, 820, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(729, 366, 'MAGESHWARI', '', NULL, 0, 3, 458, 373, 820, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(730, 367, 'IBRAHIM', '', NULL, 0, 1, 459, 374, 821, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(731, 367, 'VIDHYA', '', NULL, 0, 3, 459, 374, 821, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(732, 368, 'AROCKIARAJ', '', NULL, 0, 1, 460, 375, 822, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(733, 368, 'AROCKIAMARY', '', NULL, 0, 3, 460, 375, 822, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(734, 369, 'SATHAM HUSSIAN', '', NULL, 0, 1, 461, 376, 823, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(735, 369, 'SALMA BEGAM', '', NULL, 0, 3, 461, 376, 823, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(736, 370, 'B.RAJESH', '', NULL, 0, 1, 462, 377, 824, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(737, 370, 'R.PRABAVATHI', '', NULL, 0, 3, 462, 377, 824, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(738, 371, 'BALAKRISHNAN G', '', NULL, 0, 1, 463, 378, 825, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(739, 371, 'NEELA', '', NULL, 0, 3, 463, 378, 825, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(740, 372, 'BHARATHI', '', NULL, 0, 1, 464, 379, 826, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(741, 372, 'GEETHA', '', NULL, 0, 3, 464, 379, 826, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(742, 373, 'SELVAM', '', NULL, 0, 1, 465, 380, 827, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(743, 373, 'KANIMOZHI', '', NULL, 0, 3, 465, 380, 827, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(744, 374, 'L. VINOTH', '', NULL, 0, 1, 466, 381, 828, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(745, 374, 'V. PAVITHRA', '', NULL, 0, 3, 466, 381, 828, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(746, 375, 'VENKATESH', '', NULL, 0, 1, 467, 382, 829, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(747, 375, 'RADHIKA', '', NULL, 0, 3, 467, 382, 829, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(748, 376, 'LUKKAS', '', NULL, 0, 1, 468, 383, 830, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(749, 376, 'DEVI', '', NULL, 0, 3, 468, 383, 830, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(750, 377, 'RAJI', '', NULL, 0, 1, 469, 384, 831, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(751, 377, 'DEVIKA', '', NULL, 0, 3, 469, 384, 831, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(752, 378, 'VELAN', '', NULL, 0, 1, 470, 385, 832, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(753, 378, 'PRIYA', '', NULL, 0, 3, 470, 385, 832, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(754, 379, 'PRABHAKARAN', '', NULL, 0, 1, 471, 386, 833, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(755, 379, 'JAYANTHI', '', NULL, 0, 3, 471, 386, 833, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(756, 380, 'S BASKAR', '', NULL, 0, 1, 472, 387, 834, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(757, 380, 'B MALAR KODI', '', NULL, 0, 3, 472, 387, 834, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(758, 381, 'SELVAM', '', NULL, 0, 1, 473, 388, 835, 1, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(759, 381, 'RENUKA', '', NULL, 0, 3, 473, 388, 835, 1, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(760, 382, 'A.JOY MATHEW', '', NULL, 0, 1, 474, 389, 836, 1, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(761, 382, 'J.SUMITHRA', '', NULL, 0, 3, 474, 389, 836, 1, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(762, 383, 'MARIABASKAR', '', NULL, 0, 1, 475, 390, 837, 1, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(763, 383, 'VINNARASI', '', NULL, 0, 3, 475, 390, 837, 1, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(764, 384, 'JEBASTIN', '', NULL, 0, 1, 476, 391, 838, 1, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(765, 384, 'TAMILSELVI', '', NULL, 0, 3, 476, 391, 838, 1, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(766, 385, 'SENTHIL MURUGAN P', '', NULL, 0, 1, 477, 392, 839, 1, '2022-09-21 00:55:49', '2022-09-21 00:55:49'),
(767, 385, 'JEYANTHI S', '', NULL, 0, 3, 477, 392, 839, 1, '2022-09-21 00:55:49', '2022-09-21 00:55:49'),
(768, 386, 'MOHAMMED BILAL', '', NULL, 0, 1, 478, 393, 840, 1, '2022-09-21 00:55:49', '2022-09-21 00:55:49'),
(769, 386, 'AYISHA', '', NULL, 0, 3, 478, 393, 840, 1, '2022-09-21 00:55:49', '2022-09-21 00:55:49'),
(770, 387, 'GANGADHARAN', '', NULL, 0, 1, 479, 394, 841, 1, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(771, 387, 'INDRA', '', NULL, 0, 3, 479, 394, 841, 1, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(772, 388, 'ANTHONYRAJ', '', NULL, 0, 1, 480, 395, 842, 1, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(773, 388, 'KUMUDHA', '', NULL, 0, 3, 480, 395, 842, 1, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(774, 389, 'RAJESHKUMAR', '', NULL, 0, 1, 481, 396, 843, 1, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(775, 389, 'KAMATCHI', '', NULL, 0, 3, 481, 396, 843, 1, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(776, 390, 'ABDUL SUBHAN', '', NULL, 0, 1, 482, 397, 844, 1, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(777, 390, 'NASEEMA BANU', '', NULL, 0, 3, 482, 397, 844, 1, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(778, 391, 'JOHNSON', '', NULL, 0, 1, 483, 398, 845, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(779, 391, 'KUMUTHA', '', NULL, 0, 3, 483, 398, 845, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(780, 392, 'MANOGARAN', '', NULL, 0, 1, 484, 399, 846, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(781, 392, 'MALATHI', '', NULL, 0, 3, 484, 399, 846, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(782, 393, 'AROKIYARAJ', '', NULL, 0, 1, 485, 400, 847, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(783, 393, 'DEVIKALA', '', NULL, 0, 3, 485, 400, 847, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(784, 394, 'KUTTIYAPPAN', '', NULL, 0, 1, 486, 401, 848, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(785, 394, 'BHUVANESWARI', '', NULL, 0, 3, 486, 401, 848, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(786, 395, 'RAJAMANICKAM', '', NULL, 0, 1, 487, 402, 849, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(787, 395, 'PARVATHY', '', NULL, 0, 3, 487, 402, 849, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(788, 396, 'GANESH S', '', NULL, 0, 1, 488, 403, 850, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(789, 396, 'VANITHA', '', NULL, 0, 3, 488, 403, 850, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(790, 397, 'N. KANNAN', '', NULL, 0, 1, 489, 404, 851, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(791, 397, 'K. USHA', '', NULL, 0, 3, 489, 404, 851, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(792, 398, 'IYYAPPAN', '', NULL, 0, 1, 490, 405, 852, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(793, 398, 'NALINI', '', NULL, 0, 3, 490, 405, 852, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(794, 399, 'SUBRAMANI', '', NULL, 0, 1, 491, 406, 853, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(795, 399, 'JAYA', '', NULL, 0, 3, 491, 406, 853, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(796, 400, 'PALANI', '', NULL, 0, 1, 492, 407, 854, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(797, 400, 'SARASWATHI', '', NULL, 0, 3, 492, 407, 854, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(798, 401, 'PAUL', '', NULL, 0, 1, 493, 408, 855, 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(799, 401, 'ROSE MARY', '', NULL, 0, 3, 493, 408, 855, 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(800, 402, 'G. RAMESH', '', NULL, 0, 1, 494, 409, 856, 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(801, 402, 'R.VENNILA', '', NULL, 0, 3, 494, 409, 856, 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(802, 403, 'MUNIYA', '', NULL, 0, 1, 495, 410, 857, 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(803, 403, 'BANU.M', '', NULL, 0, 3, 495, 410, 857, 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(804, 404, 'J. PALANI', '', NULL, 0, 1, 496, 411, 858, 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(805, 405, 'V.SURESH', '', NULL, 0, 1, 497, 412, 859, 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(806, 406, 'P. PECHIMUTHU', '', NULL, 0, 1, 498, 413, 860, 1, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(807, 406, 'JAYABHARATHI.P', '', NULL, 0, 3, 498, 413, 860, 1, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(808, 407, 'A.SATHIYARAJ', '', NULL, 0, 1, 499, 414, 861, 1, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(809, 407, 'MADHAVI.S', '', NULL, 0, 3, 499, 414, 861, 1, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(810, 408, 'P.RAGU', '', NULL, 0, 1, 500, 415, 862, 1, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(811, 408, 'CITHRA.R', '', NULL, 0, 3, 500, 415, 862, 1, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(812, 409, 'R. ANNAMALAI', '', NULL, 0, 1, 501, 416, 863, 1, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(813, 409, 'DEVAKI.A', '', NULL, 0, 3, 501, 416, 863, 1, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(814, 410, 'C. VEERAKUMAR', '', NULL, 0, 1, 502, 417, 864, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(815, 410, 'V. GAYATHRI', '', NULL, 0, 3, 502, 417, 864, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(816, 411, 'PURUSHOTHAMAN', '', NULL, 0, 1, 503, 418, 865, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(817, 411, 'DEVI.P', '', NULL, 0, 3, 503, 418, 865, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(818, 412, 'SARAVANAN', '', NULL, 0, 1, 504, 419, 866, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(819, 412, 'PADMAVATHI.S', '', NULL, 0, 3, 504, 419, 866, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(820, 413, 'KAMAL', '', NULL, 0, 1, 505, 420, 867, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(821, 413, 'KAVITHA.K', '', NULL, 0, 3, 505, 420, 867, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(822, 414, 'MANOHARAN', '', NULL, 0, 1, 506, 421, 868, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(823, 414, 'MALATHI.M', '', NULL, 0, 3, 506, 421, 868, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(824, 415, 'SUGUMARAN.M', '', NULL, 0, 1, 507, 422, 869, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(825, 415, 'VALLI.S', '', NULL, 0, 3, 507, 422, 869, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(826, 416, 'E.MURUGAN', '', NULL, 0, 1, 508, 423, 870, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(827, 416, 'M.USHA', '', NULL, 0, 3, 508, 423, 870, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(828, 417, 'SELVAM', '', NULL, 0, 1, 509, 424, 871, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(829, 417, 'SATHIYA.S', '', NULL, 0, 3, 509, 424, 871, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(830, 418, 'S. MURUGAN', '', NULL, 0, 1, 510, 425, 872, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(831, 418, 'M.DIVYA', '', NULL, 0, 3, 510, 425, 872, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(832, 419, 'B. PHILIP', '', NULL, 0, 1, 511, 426, 873, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(833, 419, 'P.KANNAGI', '', NULL, 0, 3, 511, 426, 873, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(834, 420, 'R. RAMESHKUMAR', '', NULL, 0, 1, 512, 427, 874, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(835, 420, 'R.AMUL', '', NULL, 0, 3, 512, 427, 874, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(836, 421, 'P. RAVIKUMAR', '', NULL, 0, 1, 513, 428, 875, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(837, 421, 'DHANALAKSHIMI', '', NULL, 0, 3, 513, 428, 875, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(838, 422, 'K. DAVID', '', NULL, 0, 1, 514, 429, 876, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(839, 422, 'D. NATHIYA', '', NULL, 0, 3, 514, 429, 876, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(840, 423, 'E.ROOBAN', '', NULL, 0, 1, 515, 430, 877, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(841, 423, 'R.NIRMALADEVI', '', NULL, 0, 3, 515, 430, 877, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(842, 424, 'V.RAJKUMAR', '', NULL, 0, 1, 516, 431, 878, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(843, 424, 'R.JAYANTHI', '', NULL, 0, 3, 516, 431, 878, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(844, 425, 'K. ABBAS', '', NULL, 0, 1, 517, 432, 879, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(845, 425, 'RAIHAN.A', '', NULL, 0, 3, 517, 432, 879, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(846, 426, 'S.MURALI', '', NULL, 0, 1, 518, 433, 880, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(847, 426, 'M.NALINI', '', NULL, 0, 3, 518, 433, 880, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(848, 427, 'B. BHAKIYARAJ', '', NULL, 0, 1, 519, 434, 881, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(849, 427, 'UMAMAHESHWARI.B', '', NULL, 0, 3, 519, 434, 881, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(850, 428, 'R. RAMESH', '', NULL, 0, 1, 520, 435, 882, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(851, 428, 'SARALA.R', '', NULL, 0, 3, 520, 435, 882, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(852, 429, 'D. ARUL', '', NULL, 0, 1, 521, 436, 883, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(853, 429, 'MANJULA.A', '', NULL, 0, 3, 521, 436, 883, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(854, 430, 'S. MAGESH', '', NULL, 0, 1, 522, 437, 884, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(855, 430, 'MATHA.M', '', NULL, 0, 3, 522, 437, 884, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(856, 431, 'GANESH.B', '', NULL, 0, 1, 523, 438, 885, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(857, 431, 'GEETHA', '', NULL, 0, 3, 523, 438, 885, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(858, 432, 'K.SUNDARAJAN', '', NULL, 0, 1, 524, 439, 886, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(859, 432, 'S. SARALA', '', NULL, 0, 3, 524, 439, 886, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(860, 433, 'MOORTHI.G', '', NULL, 0, 1, 525, 440, 887, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(861, 433, 'DEVISELVI.M', '', NULL, 0, 3, 525, 440, 887, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(862, 434, 'RAMESH.P', '', NULL, 0, 1, 526, 441, 888, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(863, 434, 'PADMAVATHI.R', '', NULL, 0, 3, 526, 441, 888, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(864, 435, 'E. MURUGAN', '', NULL, 0, 1, 527, 442, 889, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(865, 435, 'SIVAGAMI', '', NULL, 0, 3, 527, 442, 889, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(866, 436, 'M. RUBAN', '', NULL, 0, 1, 528, 443, 890, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(867, 436, 'RAJESHWARI', '', NULL, 0, 3, 528, 443, 890, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(868, 437, 'PAUL RAJ.L', '', NULL, 0, 1, 529, 444, 891, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(869, 437, 'AMIRTHA SELVI', '', NULL, 0, 3, 529, 444, 891, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(870, 438, 'IYYAPPAN', '', NULL, 0, 1, 530, 445, 892, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(871, 438, 'AMMACHI', '', NULL, 0, 3, 530, 445, 892, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(872, 439, 'VENKATESH', '', NULL, 0, 1, 531, 446, 893, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(873, 439, 'RADHIKA', '', NULL, 0, 3, 531, 446, 893, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(874, 440, 'A.PARTHASARATHY', '', NULL, 0, 1, 532, 447, 894, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(875, 440, 'P.SAMUNDESHWARI', '', NULL, 0, 3, 532, 447, 894, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(876, 441, 'SURESH S', '', NULL, 0, 1, 533, 448, 895, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(877, 441, 'NATCHATHIRAVANI S', '', NULL, 0, 3, 533, 448, 895, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(878, 442, 'JAIGANESH.S', '', NULL, 0, 1, 534, 449, 896, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(879, 442, 'VEL RANI', '', NULL, 0, 3, 534, 449, 896, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(880, 443, 'PONNUSAMY', '', NULL, 0, 1, 535, 450, 897, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(881, 443, 'MANGAIYARKARASI', '', NULL, 0, 3, 535, 450, 897, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(882, 444, 'SANKAR', '', NULL, 0, 1, 536, 451, 898, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(883, 444, 'SHALINI', '', NULL, 0, 3, 536, 451, 898, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(884, 445, 'SYED MOHAMMAD', '', NULL, 0, 1, 537, 452, 899, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(885, 445, 'FIRTHOSE', '', NULL, 0, 3, 537, 452, 899, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(886, 446, 'RAJESH', '', NULL, 0, 1, 538, 453, 900, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(887, 446, 'KASTHURI', '', NULL, 0, 3, 538, 453, 900, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(888, 447, 'SRINIVASAN', '', NULL, 0, 1, 539, 454, 901, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(889, 447, 'SASIKALA', '', NULL, 0, 3, 539, 454, 901, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(890, 448, 'RAMESH', '', NULL, 0, 1, 540, 455, 902, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(891, 448, 'PREETHI', '', NULL, 0, 3, 540, 455, 902, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(892, 449, 'BALRAJ.R', '', NULL, 0, 1, 541, 456, 903, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(893, 449, 'ANANTHI.B', '', NULL, 0, 3, 541, 456, 903, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(894, 450, 'GANESAN', '', NULL, 0, 1, 542, 457, 904, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(895, 450, 'VANITHA', '', NULL, 0, 3, 542, 457, 904, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(896, 451, 'A. AMEER', '', NULL, 0, 1, 543, 458, 905, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(897, 451, 'A. AMEENA', '', NULL, 0, 3, 543, 458, 905, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(898, 452, 'ARUMUGAM', '', NULL, 0, 1, 544, 459, 906, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(899, 452, 'KAMATCHI', '', NULL, 0, 3, 544, 459, 906, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(900, 453, 'VENKATESH', '', NULL, 0, 1, 545, 460, 907, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(901, 453, 'JAYANTHI', '', NULL, 0, 3, 545, 460, 907, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(902, 454, 'VINAYAGAMOORTHI', '', NULL, 0, 1, 546, 461, 908, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(903, 454, 'ALATHI', '', NULL, 0, 3, 546, 461, 908, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(904, 455, 'MANIKANDAN', '', NULL, 0, 1, 547, 462, 909, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(905, 455, 'SINDHU', '', NULL, 0, 3, 547, 462, 909, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(906, 456, 'SENTHIL MURUGAN', '', NULL, 0, 1, 548, 463, 910, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(907, 456, 'JAYANTHI', '', NULL, 0, 3, 548, 463, 910, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(908, 457, 'RAJASEKAR', '', NULL, 0, 1, 549, 464, 911, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(909, 457, 'PRIYA', '', NULL, 0, 3, 549, 464, 911, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(910, 458, 'RAMU', '', NULL, 0, 1, 550, 465, 912, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(911, 458, 'REENA', '', NULL, 0, 3, 550, 465, 912, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(912, 459, 'KANNAN', '', NULL, 0, 1, 551, 466, 913, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(913, 459, 'KOKILA', '', NULL, 0, 3, 551, 466, 913, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(914, 460, 'MUNUSAMY', '', NULL, 0, 1, 552, 467, 914, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(915, 460, 'SHANTHI', '', NULL, 0, 3, 552, 467, 914, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(916, 461, 'CHIDAMBARAM.N', '', NULL, 0, 1, 553, 468, 915, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(917, 461, 'JAYA.C', '', NULL, 0, 3, 553, 468, 915, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(918, 462, 'PURUSHOTHAMAN', '', NULL, 0, 1, 554, 469, 916, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(919, 462, 'GEETHA', '', NULL, 0, 3, 554, 469, 916, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(920, 463, 'CHAKKRAVARTHI', '', NULL, 0, 1, 555, 470, 917, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(921, 463, 'NATHIYA', '', NULL, 0, 3, 555, 470, 917, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(922, 464, 'SUNDARESAN', '', NULL, 0, 1, 556, 471, 918, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(923, 464, 'SARASWATHI', '', NULL, 0, 3, 556, 471, 918, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(924, 465, 'SARAVANANAN', '', NULL, 0, 1, 557, 472, 919, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(925, 465, 'THAVAMANI', '', NULL, 0, 3, 557, 472, 919, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(926, 466, 'RAMANATHAN', '', NULL, 0, 1, 558, 473, 920, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(927, 466, 'SUBHA', '', NULL, 0, 3, 558, 473, 920, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(928, 467, 'SARAVANAN', '', NULL, 0, 1, 559, 474, 921, 1, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(929, 467, 'SELVI', '', NULL, 0, 3, 559, 474, 921, 1, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(930, 468, 'ANBU', '', NULL, 0, 1, 560, 475, 922, 1, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(931, 468, 'PARIMALA', '', NULL, 0, 3, 560, 475, 922, 1, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(932, 469, 'UDHAYASANKAR', '', NULL, 0, 1, 561, 476, 923, 1, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(933, 469, 'REVATHY', '', NULL, 0, 3, 561, 476, 923, 1, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(934, 470, 'ANANDAN S', '', NULL, 0, 1, 562, 477, 924, 1, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(935, 470, 'JOTHI A', '', NULL, 0, 3, 562, 477, 924, 1, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(936, 471, 'PANDIAN', '', NULL, 0, 1, 563, 478, 925, 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(937, 471, 'SASIKALA', '', NULL, 0, 3, 563, 478, 925, 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(938, 472, 'Mani', '', NULL, 0, 1, 564, 479, 926, 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(939, 472, 'Gunapusanam', '', NULL, 0, 3, 564, 479, 926, 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(940, 473, 'Sukumar', '', NULL, 0, 1, 565, 480, 927, 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(941, 473, 'Shanthi', '', NULL, 0, 3, 565, 480, 927, 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(942, 474, 'Kumar Chettri', '', NULL, 0, 1, 566, 481, 928, 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(943, 474, 'Sandhya Chettri', '', NULL, 0, 3, 566, 481, 928, 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(944, 474, 'Sasikala Rai', '', NULL, 0, 9, 566, 481, 928, 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(945, 475, 'Thukkaram/Vasu', '', NULL, 0, 1, 567, 482, 929, 1, '2022-09-21 07:56:48', '2022-09-21 07:56:48'),
(946, 475, 'Tharaselvi', '', NULL, 0, 3, 567, 482, 929, 1, '2022-09-21 07:56:48', '2022-09-21 07:56:48'),
(947, 476, 'VAITHILINGAM', '', NULL, 0, 1, 569, 484, 931, 1, '2022-09-21 07:56:48', '2022-09-21 07:56:48'),
(948, 476, 'RAKKAMAL', '', NULL, 0, 3, 569, 484, 931, 1, '2022-09-21 07:56:48', '2022-09-21 07:56:48'),
(949, 477, 'Mani', '', NULL, 0, 1, 570, 485, 932, 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(950, 477, 'Thenmalar', '', NULL, 0, 3, 570, 485, 932, 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(951, 478, 'Kandiban', '', NULL, 0, 1, 571, 486, 933, 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(952, 478, 'Jeeva', '', NULL, 0, 3, 571, 486, 933, 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(953, 479, 'S.Chandran', '', NULL, 0, 1, 572, 487, 934, 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(954, 479, 'C. Mary', '', NULL, 0, 3, 572, 487, 934, 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(955, 480, 'A.GUNASEKARAN', '', NULL, 0, 1, 573, 488, 935, 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(956, 480, 'G.GOMATHI', '', NULL, 0, 3, 573, 488, 935, 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(957, 481, 'AMIRTHA NATHAN', '', NULL, 0, 1, 574, 489, 936, 1, '2022-09-21 07:56:50', '2022-09-21 07:56:50'),
(958, 481, 'EMILY MARY', '', NULL, 0, 3, 574, 489, 936, 1, '2022-09-21 07:56:50', '2022-09-21 07:56:50'),
(959, 482, 'PANDIAN', '', NULL, 0, 1, 575, 490, 937, 1, '2022-09-21 08:20:15', '2022-09-21 08:20:15'),
(960, 482, 'SASIKALA', '', NULL, 0, 3, 575, 490, 937, 1, '2022-09-21 08:20:15', '2022-09-21 08:20:15'),
(961, 483, 'Mani', '', NULL, 0, 1, 576, 491, 938, 1, '2022-09-21 08:20:15', '2022-09-21 08:20:15'),
(962, 483, 'Gunapusanam', '', NULL, 0, 3, 576, 491, 938, 1, '2022-09-21 08:20:15', '2022-09-21 08:20:15'),
(963, 484, 'Sukumar', '', NULL, 0, 1, 577, 492, 939, 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(964, 484, 'Shanthi', '', NULL, 0, 3, 577, 492, 939, 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(965, 485, 'Kumar Chettri', '', NULL, 0, 1, 578, 493, 940, 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(966, 485, 'Sandhya Chettri', '', NULL, 0, 3, 578, 493, 940, 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(967, 485, 'Sasikala Rai', '', NULL, 0, 9, 578, 493, 940, 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(968, 486, 'Thukkaram/Vasu', '', NULL, 0, 1, 579, 494, 941, 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(969, 486, 'Tharaselvi', '', NULL, 0, 3, 579, 494, 941, 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(970, 487, 'Paul pargunam', '', NULL, 0, 1, 580, 495, 942, 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(971, 487, 'Amaravathi', '', NULL, 0, 3, 580, 495, 942, 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(972, 488, 'VAITHILINGAM', '', NULL, 0, 1, 581, 496, 943, 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(973, 488, 'RAKKAMAL', '', NULL, 0, 3, 581, 496, 943, 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(974, 489, 'Mani', '', NULL, 0, 1, 582, 497, 944, 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(975, 489, 'Thenmalar', '', NULL, 0, 3, 582, 497, 944, 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(976, 490, 'Kandiban', '', NULL, 0, 1, 583, 498, 945, 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(977, 490, 'Jeeva', '', NULL, 0, 3, 583, 498, 945, 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(978, 491, 'S.Chandran', '', NULL, 0, 1, 584, 499, 946, 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(979, 491, 'C. Mary', '', NULL, 0, 3, 584, 499, 946, 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(980, 492, 'A.GUNASEKARAN', '', NULL, 0, 1, 585, 500, 947, 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(981, 492, 'G.GOMATHI', '', NULL, 0, 3, 585, 500, 947, 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(982, 493, 'AMIRTHA NATHAN', '', NULL, 0, 1, 586, 501, 948, 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(983, 493, 'EMILY MARY', '', NULL, 0, 3, 586, 501, 948, 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(984, 494, 'PANDIAN', '', NULL, 0, 1, 623, 538, 985, 1, '2022-09-21 10:50:14', '2022-09-21 10:50:14'),
(985, 494, 'SASIKALA', '', NULL, 0, 3, 623, 538, 985, 1, '2022-09-21 10:50:14', '2022-09-21 10:50:14'),
(986, 495, 'Mani', '', NULL, 0, 1, 624, 539, 986, 1, '2022-09-21 10:50:14', '2022-09-21 10:50:14'),
(987, 495, 'Gunapusanam', '', NULL, 0, 3, 624, 539, 986, 1, '2022-09-21 10:50:14', '2022-09-21 10:50:14'),
(988, 496, 'Sukumar', '', NULL, 0, 1, 625, 540, 987, 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(989, 496, 'Shanthi', '', NULL, 0, 3, 625, 540, 987, 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(990, 497, 'Kumar Chettri', '', NULL, 0, 1, 626, 541, 988, 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(991, 497, 'Sandhya Chettri', '', NULL, 0, 3, 626, 541, 988, 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(992, 497, 'Sasikala Rai', '', NULL, 0, 9, 626, 541, 988, 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(993, 498, 'Thukkaram/Vasu', '', NULL, 0, 1, 627, 542, 989, 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(994, 498, 'Tharaselvi', '', NULL, 0, 3, 627, 542, 989, 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(995, 499, 'Paul pargunam', '', NULL, 0, 1, 628, 543, 990, 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(996, 499, 'Amaravathi', '', NULL, 0, 3, 628, 543, 990, 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(997, 500, 'VAITHILINGAM', '', NULL, 0, 1, 629, 544, 991, 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(998, 500, 'RAKKAMAL', '', NULL, 0, 3, 629, 544, 991, 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(999, 501, 'Mani', '', NULL, 0, 1, 630, 545, 992, 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(1000, 501, 'Thenmalar', '', NULL, 0, 3, 630, 545, 992, 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16');
INSERT INTO `familyconnections` (`fmlcId`, `fmlcFamilyId`, `fmlcFirstName`, `fmlcProfession`, `fmlcDOB`, `fmlcGender`, `fmlcRelationship`, `fmlcContactId`, `fmlcEmailId`, `fmlcAddressId`, `fmlcIsStatus`, `created_at`, `updated_at`) VALUES
(1001, 502, 'Kandiban', '', NULL, 0, 1, 631, 546, 993, 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(1002, 502, 'Jeeva', '', NULL, 0, 3, 631, 546, 993, 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(1003, 503, 'S.Chandran', '', NULL, 0, 1, 632, 547, 994, 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(1004, 503, 'C. Mary', '', NULL, 0, 3, 632, 547, 994, 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(1005, 504, 'A.GUNASEKARAN', '', NULL, 0, 1, 633, 548, 995, 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(1006, 504, 'G.GOMATHI', '', NULL, 0, 3, 633, 548, 995, 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(1007, 505, 'AMIRTHA NATHAN', '', NULL, 0, 1, 634, 549, 996, 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(1008, 505, 'EMILY MARY', '', NULL, 0, 3, 634, 549, 996, 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(1009, 506, 'PANDIAN', '', NULL, 0, 1, 635, 550, 997, 1, '2022-09-21 11:28:55', '2022-09-21 11:28:55'),
(1010, 506, 'SASIKALA', '', NULL, 0, 3, 635, 550, 997, 1, '2022-09-21 11:28:55', '2022-09-21 11:28:55'),
(1011, 507, 'Mani', '', NULL, 0, 1, 636, 551, 998, 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(1012, 507, 'Gunapusanam', '', NULL, 0, 3, 636, 551, 998, 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(1013, 508, 'Sukumar', '', NULL, 0, 1, 637, 552, 999, 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(1014, 508, 'Shanthi', '', NULL, 0, 3, 637, 552, 999, 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(1015, 509, 'Kumar Chettri', '', NULL, 0, 1, 638, 553, 1000, 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(1016, 509, 'Sandhya Chettri', '', NULL, 0, 3, 638, 553, 1000, 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(1017, 509, 'Sasikala Rai', '', NULL, 0, 9, 638, 553, 1000, 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(1018, 510, 'Thukkaram/Vasu', '', NULL, 0, 1, 639, 554, 1001, 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(1019, 510, 'Tharaselvi', '', NULL, 0, 3, 639, 554, 1001, 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(1020, 511, 'Paul pargunam', '', NULL, 0, 1, 640, 555, 1002, 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(1021, 511, 'Amaravathi', '', NULL, 0, 3, 640, 555, 1002, 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(1022, 512, 'VAITHILINGAM', '', NULL, 0, 1, 641, 556, 1003, 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(1023, 512, 'RAKKAMAL', '', NULL, 0, 3, 641, 556, 1003, 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(1024, 513, 'Mani', '', NULL, 0, 1, 642, 557, 1004, 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(1025, 513, 'Thenmalar', '', NULL, 0, 3, 642, 557, 1004, 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(1026, 514, 'Kandiban', '', NULL, 0, 1, 643, 558, 1005, 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(1027, 514, 'Jeeva', '', NULL, 0, 3, 643, 558, 1005, 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(1028, 515, 'S.Chandran', '', NULL, 0, 1, 644, 559, 1006, 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(1029, 515, 'C. Mary', '', NULL, 0, 3, 644, 559, 1006, 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(1030, 516, 'A.GUNASEKARAN', '', NULL, 0, 1, 645, 560, 1007, 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(1031, 516, 'G.GOMATHI', '', NULL, 0, 3, 645, 560, 1007, 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(1032, 517, 'AMIRTHA NATHAN', '', NULL, 0, 1, 646, 561, 1008, 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(1033, 517, 'EMILY MARY', '', NULL, 0, 3, 646, 561, 1008, 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(1034, 518, 'test', '', NULL, 0, 1, 647, 562, 1009, 1, '2022-09-29 04:44:35', '2022-09-29 04:44:35'),
(1035, 518, 'test', '', NULL, 0, 3, 647, 562, 1009, 1, '2022-09-29 04:44:35', '2022-09-29 04:44:35'),
(1036, 518, 'test', '', NULL, 0, 9, 647, 562, 1009, 1, '2022-09-29 04:44:35', '2022-09-29 04:44:35');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `fdbId` int(11) NOT NULL,
  `fdbOrgId` int(11) NOT NULL,
  `fdbDescription` text NOT NULL,
  `fdbComments` text NOT NULL,
  `fdbReportedBy` int(11) NOT NULL,
  `fdbIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `feetypes`
--

CREATE TABLE `feetypes` (
  `fetId` int(11) NOT NULL,
  `fetName` varchar(255) NOT NULL,
  `fetIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `filequestions`
--

CREATE TABLE `filequestions` (
  `flqnsId` int(11) NOT NULL,
  `flqnsFileId` int(11) NOT NULL,
  `flqnsQusId` int(11) NOT NULL,
  `flqnsDuration` varchar(255) NOT NULL,
  `flqnsYear` year(4) NOT NULL,
  `flqnsIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `filesystems`
--

CREATE TABLE `filesystems` (
  `flsmId` int(11) NOT NULL,
  `flsmOrgId` int(11) NOT NULL,
  `flsmClsId` int(11) NOT NULL,
  `flsmSubId` int(11) NOT NULL,
  `flsmSyllabusId` int(11) NOT NULL,
  `flsmFolderPath` varchar(255) NOT NULL,
  `flsmUploadedBy` int(11) NOT NULL,
  `flsmIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `filevideos`
--

CREATE TABLE `filevideos` (
  `flvoId` int(11) NOT NULL,
  `flvoClsId` int(11) NOT NULL,
  `flvoSubjId` int(11) NOT NULL,
  `flvoSyllabd` int(11) NOT NULL,
  `flvoLink` text NOT NULL,
  `flvoLink2` text NOT NULL,
  `flvoLink3` text NOT NULL,
  `flvoQuesId` int(11) NOT NULL,
  `flvoIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `flvoOrgId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hallseats`
--

CREATE TABLE `hallseats` (
  `hId` int(11) NOT NULL,
  `hExam` varchar(50) NOT NULL,
  `hRoomNo` int(11) NOT NULL,
  `hTotalSeat` int(11) NOT NULL,
  `hClasses` varchar(25) NOT NULL,
  `hArrange` varchar(30) NOT NULL,
  `hSplitOption` int(11) DEFAULT NULL,
  `hTime` varchar(40) NOT NULL,
  `hSeatMode` int(11) DEFAULT NULL,
  `hStudentSeatCount` int(11) DEFAULT NULL,
  `hStatus` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hallseats`
--

INSERT INTO `hallseats` (`hId`, `hExam`, `hRoomNo`, `hTotalSeat`, `hClasses`, `hArrange`, `hSplitOption`, `hTime`, `hSeatMode`, `hStudentSeatCount`, `hStatus`, `created_at`, `updated_at`) VALUES
(1, '1', 1, 10, '6', 'invididual', 6, '1', 0, 0, 1, '2022-08-04 07:07:45', '2022-08-04 07:07:45'),
(2, 'Morning Assessment', 1, 10, '6', 'invididual', 6, '15:47:00', 0, 0, 1, '2022-08-06 07:10:51', '2022-08-06 07:10:51'),
(3, '2021 Annual Exam', 1, 10, 'VI,VIII', 'split2', 0, '18:20:00', 0, 0, 1, '2022-08-06 10:30:44', '2022-08-06 10:30:44'),
(4, '2021 Annual Exam', 1, 10, 'VI,VIII,X', 'split2', 0, '18:20:00', 0, 0, 1, '2022-08-06 10:42:20', '2022-08-06 10:42:20'),
(5, '2', 1, 10, 'VI,VIII', '2', NULL, '18:20:00', NULL, NULL, 1, '2022-08-07 03:51:02', '2022-08-07 03:51:02'),
(6, '2', 1, 10, 'VI,VIII', '2', NULL, '18:20:00', NULL, NULL, 1, '2022-08-07 03:56:32', '2022-08-07 03:56:32'),
(7, '2', 1, 10, 'VI,VIII', '2', 2, '18:20:00', 0, 0, 1, '2022-08-07 04:23:47', '2022-08-07 04:23:47');

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `hldId` int(11) NOT NULL,
  `hldName` varchar(255) NOT NULL,
  `hldIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `homeworks`
--

CREATE TABLE `homeworks` (
  `hwId` int(11) NOT NULL,
  `hwOrgStuMasterId` int(11) NOT NULL,
  `hwClsMasterId` int(11) NOT NULL,
  `hwOrgSubjMasterId` int(11) NOT NULL,
  `hwContent` text NOT NULL,
  `hwStartDate` date NOT NULL,
  `hwEndDate` date NOT NULL,
  `hwComments` text NOT NULL,
  `hwIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `imports`
--

CREATE TABLE `imports` (
  `id` int(11) NOT NULL,
  `tablename` varchar(100) DEFAULT NULL,
  `columnname` varchar(50) DEFAULT NULL,
  `excelcolumn` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `indexing` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `infrastructures`
--

CREATE TABLE `infrastructures` (
  `infId` int(11) NOT NULL,
  `infName` varchar(255) NOT NULL,
  `infType` varchar(255) NOT NULL,
  `infStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `invId` int(11) NOT NULL,
  `invOrgFeeId` int(11) NOT NULL,
  `invStuId` int(11) NOT NULL,
  `invPaidAmount` decimal(10,2) NOT NULL,
  `invLateAmount` decimal(10,2) NOT NULL,
  `invReceivedBy` int(11) NOT NULL DEFAULT 0,
  `invIsStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leavehistories`
--

CREATE TABLE `leavehistories` (
  `lvhsId` int(11) NOT NULL,
  `lvhsLvMasterId` int(11) NOT NULL,
  `lvhsReason` text NOT NULL,
  `lvhsLeaveStatus` int(11) NOT NULL COMMENT '1-Pending\r\n2-Waiting for Approval\r\n3-Confirmed\r\n4-Cancelled\r\n5-Completed',
  `lvhsApprovedBy` int(11) NOT NULL,
  `lvhsIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lessionplans`
--

CREATE TABLE `lessionplans` (
  `lpId` int(11) NOT NULL,
  `lpSubMasterId` int(11) NOT NULL,
  `lpStfMasterId` int(11) NOT NULL,
  `lpOrgMasterId` int(11) NOT NULL,
  `lpFilePath` text NOT NULL,
  `lpIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `lnId` int(11) NOT NULL,
  `lnClsMasterId` int(11) NOT NULL,
  `lnSubMasterId` int(11) NOT NULL,
  `lnMedMasterId` int(11) NOT NULL,
  `lnSyMasterId` int(11) NOT NULL,
  `lnLessonName` varchar(55) NOT NULL,
  `lnLessonOrder` int(11) NOT NULL,
  `lnIsStatus` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`lnId`, `lnClsMasterId`, `lnSubMasterId`, `lnMedMasterId`, `lnSyMasterId`, `lnLessonName`, `lnLessonOrder`, `lnIsStatus`, `created_at`, `updated_at`) VALUES
(1, 4, 2, 2, 1, 'Unit 1', 1, 1, '2022-05-14 13:47:23', '2022-05-14 13:47:23'),
(2, 4, 2, 2, 1, 'Unit 2', 2, 1, '2022-05-14 13:47:42', '2022-05-14 13:47:42'),
(3, 4, 2, 2, 1, 'Unit 3', 3, 1, '2022-05-14 13:47:56', '2022-05-14 13:47:56'),
(4, 5, 2, 2, 2, 'Unit 1 Poem Keeping Clean', 1, 1, '2022-05-14 13:48:53', '2022-05-14 13:48:53'),
(5, 5, 2, 2, 2, 'Unit 2 The Flag goes by', 2, 1, '2022-05-14 13:49:11', '2022-05-14 13:49:11'),
(6, 3, 2, 2, 3, 'Unit 1', 1, 1, '2022-05-14 13:55:06', '2022-05-14 13:55:06'),
(7, 3, 2, 2, 3, 'Unit 2', 2, 1, '2022-05-14 13:55:20', '2022-05-14 13:55:20'),
(8, 3, 2, 2, 3, 'Unit 3', 3, 1, '2022-05-14 13:55:35', '2022-05-14 13:55:35'),
(9, 3, 3, 2, 1, 'Geometry', 1, 1, '2022-05-14 13:56:49', '2022-05-14 13:56:49'),
(10, 3, 3, 2, 1, 'Numbers', 2, 1, '2022-05-14 13:57:05', '2022-05-14 13:57:05'),
(11, 4, 3, 2, 1, 'Patterns', 3, 1, '2022-05-14 13:57:22', '2022-05-14 13:57:22'),
(12, 4, 3, 2, 1, 'Measurements', 4, 1, '2022-05-14 13:57:40', '2022-05-14 13:57:40'),
(13, 5, 3, 2, 1, 'Time', 5, 1, '2022-05-14 13:57:58', '2022-05-14 13:57:58'),
(14, 5, 3, 2, 1, 'Information Processing', 6, 1, '2022-05-14 13:58:13', '2022-05-14 13:58:13'),
(15, 5, 4, 2, 1, 'Organs system', 1, 1, '2022-05-14 13:59:24', '2022-05-14 13:59:24'),
(16, 5, 4, 2, 1, 'Matter and Materials', 2, 1, '2022-05-14 13:59:49', '2022-05-14 13:59:49'),
(17, 5, 4, 2, 1, 'Energy', 3, 1, '2022-05-14 14:00:14', '2022-05-14 14:00:14'),
(18, 5, 4, 2, 1, 'Science in Everyday life', 4, 1, '2022-05-14 14:00:36', '2022-05-14 14:00:36'),
(19, 5, 4, 2, 2, 'Food', 1, 1, '2022-05-14 14:00:56', '2022-05-14 14:00:56'),
(20, 5, 4, 2, 2, 'Water', 2, 1, '2022-05-14 14:01:14', '2022-05-14 14:01:14'),
(21, 5, 4, 2, 2, 'Plants', 3, 1, '2022-05-14 14:01:35', '2022-05-14 14:01:35'),
(22, 5, 5, 2, 1, 'OUR EARTH', 1, 1, '2022-05-14 14:02:47', '2022-05-14 14:02:47'),
(23, 5, 5, 2, 1, 'TOWARDS  HISTORY', 2, 1, '2022-05-14 14:03:09', '2022-05-14 14:03:09'),
(24, 5, 5, 2, 1, 'GOOD  CITIZEN', 3, 1, '2022-05-14 14:03:30', '2022-05-14 14:03:30'),
(25, 5, 5, 2, 1, 'ATMOSPHERE', 4, 1, '2022-05-14 14:03:51', '2022-05-14 14:03:51'),
(26, 5, 5, 2, 2, 'ANCIENT  EXCAVATION', 1, 1, '2022-05-14 14:04:14', '2022-05-14 14:04:14'),
(27, 5, 5, 2, 2, 'HYDROSPHERE', 2, 1, '2022-05-14 14:04:32', '2022-05-14 14:04:32'),
(28, 5, 5, 2, 2, 'CONTINENTS  OF  THE  WORLD', 3, 1, '2022-05-14 14:04:57', '2022-05-14 14:04:57'),
(29, 5, 5, 2, 3, 'FORTS OF PALACES', 1, 1, '2022-05-14 14:05:18', '2022-05-14 14:05:18'),
(30, 5, 5, 2, 3, 'AGRICULTURE', 2, 1, '2022-05-14 14:05:36', '2022-05-14 14:05:36'),
(31, 5, 5, 2, 3, 'EDUCATIONAL RIGHTS', 3, 1, '2022-05-14 14:05:55', '2022-05-14 14:05:55'),
(32, 3, 5, 1, 2, 'Test1', 1, 1, '2022-06-07 12:15:40', '2022-06-07 12:15:40'),
(33, 5, 6, 2, 2, 'Grammer', 1, 1, '2022-08-07 08:17:46', '2022-08-07 08:17:46'),
(34, 5, 6, 2, 2, 'Prose', 2, 1, '2022-08-07 08:18:17', '2022-08-07 08:18:17'),
(35, 5, 2, 2, 2, 'Unit 3 Grammer Happy to learn', 3, 1, '2022-05-14 13:49:11', '2022-05-14 13:49:11'),
(36, 5, 2, 2, 1, 'Unit 1 Prose: Man Versus Nature', 1, 1, '2022-05-14 13:48:53', '2022-05-14 13:48:53'),
(37, 5, 2, 2, 1, 'Unit 2 Prose: A Golden Hour', 2, 1, '2022-05-14 13:48:53', '2022-05-14 13:48:53'),
(38, 5, 2, 2, 3, 'Unit 1 Prose: A Friend Indeed', 1, 1, '2022-05-14 13:48:53', '2022-05-14 13:48:53'),
(39, 5, 2, 2, 3, 'Unit 2 Prose: Listen to spiderman', 2, 1, '2022-05-14 13:48:53', '2022-05-14 13:48:53'),
(40, 5, 2, 2, 3, 'Unit 3 Prose: Deep down the Ocean', 3, 1, '2022-05-14 13:48:53', '2022-05-14 13:48:53');

-- --------------------------------------------------------

--
-- Stand-in structure for view `lessons_view`
-- (See below for the actual view)
--
CREATE TABLE `lessons_view` (
`lnId` int(11)
,`lessonName` varchar(55)
,`lessonOrder` int(11)
,`SubjectId` int(11)
,`lessonstatus` varchar(9)
,`standard` varchar(255)
,`standard_id` int(11)
,`medium_id` int(11)
,`medium_name` varchar(255)
,`subject` varchar(255)
,`syllabusName` varchar(55)
,`syllabusId` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `mediumlanguages`
--

CREATE TABLE `mediumlanguages` (
  `mlgId` int(11) NOT NULL,
  `mlgOrgId` int(11) NOT NULL,
  `mlgFirstLanguage` int(11) NOT NULL,
  `mlgSecondLanguage` int(11) NOT NULL,
  `mlgThirdLanguage` int(11) NOT NULL,
  `mlgFourthLanguage` int(11) NOT NULL,
  `mlgIsStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mediums`
--

CREATE TABLE `mediums` (
  `mmId` int(11) NOT NULL,
  `mmName` varchar(255) NOT NULL,
  `mmIsStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mediums`
--

INSERT INTO `mediums` (`mmId`, `mmName`, `mmIsStatus`, `created_at`, `updated_at`) VALUES
(1, 'Tamil', 1, '2022-05-12 18:49:30', '2022-05-12 18:49:30'),
(2, 'English', 1, '2022-05-12 18:49:30', '2022-05-12 18:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `meetingparticipants`
--

CREATE TABLE `meetingparticipants` (
  `mtptId` int(11) NOT NULL,
  `mtptMtMasterId` int(11) NOT NULL,
  `mtptStfMasterId` int(11) NOT NULL,
  `mtptInvStatus` int(11) NOT NULL COMMENT '1-Declined\r\n2-Accepted\r\n3-Tentative',
  `mtptIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `menuname` varchar(30) CHARACTER SET utf8mb4 DEFAULT NULL,
  `isdirlink` bit(1) NOT NULL DEFAULT b'0',
  `icons` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `position` tinyint(4) DEFAULT NULL,
  `ismain` tinyint(4) DEFAULT NULL,
  `menuurls` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `islisted` tinyint(4) NOT NULL DEFAULT 1,
  `mainid` tinyint(4) DEFAULT NULL,
  `isstatus` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `menuname`, `isdirlink`, `icons`, `position`, `ismain`, `menuurls`, `islisted`, `mainid`, `isstatus`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', b'0', 'home', 1, 1, NULL, 1, 0, 1, '2018-12-20 17:57:00', '2018-12-20 17:57:00'),
(2, 'analytics', b'0', NULL, 1, 0, 'reports-analytics', 1, 1, 1, '2018-12-20 17:58:00', '2018-12-20 17:58:00'),
(3, 'graphical', b'0', NULL, 2, 0, 'reports-graphical', 1, 1, 0, '2018-12-20 17:59:00', '2018-12-20 17:59:00'),
(4, 'members', b'0', 'users', 2, 1, NULL, 1, 0, 1, '2018-12-20 18:03:00', '2018-12-20 18:03:00'),
(5, 'students', b'0', NULL, 1, 0, 'students', 1, 4, 1, '2018-12-20 18:01:00', '2018-12-20 18:01:00'),
(6, 'teachers', b'0', NULL, 2, 0, 'teachers', 1, 4, 1, '2018-12-20 18:01:00', '2018-12-20 18:01:00'),
(7, 'users', b'0', NULL, 3, 0, 'users', 1, 4, 1, '2018-12-20 18:02:00', '2018-12-20 18:02:00'),
(8, 'components', b'0', 'feather', 4, 1, NULL, 1, 0, 1, '2018-12-20 18:02:00', '2018-12-20 18:02:00'),
(9, 'lessons', b'0', NULL, 3, 0, 'lessons', 1, 8, 1, '2018-12-20 18:02:00', '2018-12-20 18:02:00'),
(11, 'files', b'0', NULL, 5, 0, 'files', 1, 8, 0, '2018-12-20 18:03:00', '2018-12-20 18:03:00'),
(12, 'videos', b'0', NULL, 6, 0, 'videos', 1, 8, 0, '2018-12-20 18:03:00', '2018-12-20 18:03:00'),
(13, 'documents', b'0', NULL, 7, 0, 'documents', 1, 8, 0, '2018-12-20 18:03:00', '2018-12-20 18:03:00'),
(14, 'announcements', b'0', NULL, 4, 0, 'announcements', 1, 22, 1, '2018-12-20 18:03:00', '2018-12-20 18:03:00'),
(15, 'settings', b'0', 'settings', 7, 1, NULL, 1, 0, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(16, 'languages', b'0', NULL, 1, 0, 'languages', 1, 15, 0, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(17, 'emails', b'0', NULL, 1, 0, 'emails', 1, 15, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(18, 'online-tests', b'0', 'pen-tool', 8, 1, 'online-tests', 1, 0, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(19, 'environment', b'0', 'activity', 6, 1, NULL, 1, 0, 1, '2018-12-20 18:03:00', '2018-12-20 18:03:00'),
(20, 'organizations', b'0', NULL, 3, 0, 'organizations', 1, 19, 0, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(22, 'programs', b'0', 'box', 5, 1, NULL, 1, 0, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(23, 'events', b'0', NULL, 1, 0, 'events', 1, 22, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(24, 'holidays', b'0', NULL, 1, 0, 'holidays', 1, 19, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(25, 'press-releases', b'0', 'reports', 4, 0, 'press-releases', 1, 22, 1, '2018-12-20 18:03:00', '2018-12-20 18:03:00'),
(26, 'blogs', b'0', NULL, 1, 0, 'blogs', 1, 22, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(27, 'reports', b'0', 'layers', 10, 1, NULL, 1, 0, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(28, 'all-details', b'0', NULL, 1, 0, 'all-in-one-reports', 1, 27, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(29, 'individual-status', b'0', NULL, 1, 0, 'individual-status', 1, 27, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(30, 'org-report-details', b'0', NULL, 1, 0, 'org-details', 1, 27, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(31, 'exams-details', b'0', NULL, 1, 0, 'exams-details', 1, 39, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(32, 'students/staffs', b'0', NULL, 1, 0, 'student-staffs-details', 1, 27, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(33, 'active-status', b'0', NULL, 1, 0, 'active-status', 1, 27, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(34, 'configurations', b'0', NULL, 1, 0, 'configurations', 1, 15, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(35, 'reviewed stories', b'0', NULL, 1, 0, 'reviewed-stories', 1, 27, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(36, 'Topics', b'0', NULL, 4, 0, 'topics', 1, 8, 1, '2022-07-04 14:53:36', '2022-07-04 14:53:36'),
(37, 'Add Online Tests', b'0', NULL, 1, 0, 'online-tests', 1, 18, 1, '2022-07-21 13:39:51', '2022-07-21 13:39:51'),
(38, 'View Online Tests', b'0', NULL, 2, 0, 'view-online-tests', 1, 18, 1, '2022-07-21 13:41:17', '2022-07-21 13:41:17'),
(39, 'Exams', b'0', 'file', 9, 1, NULL, 1, 0, 1, '2022-07-26 12:01:16', '2022-07-26 12:01:16'),
(40, 'Exam-Updates', b'0', NULL, 2, 0, 'exams-updates', 1, 39, 1, '2022-07-26 12:03:57', '2022-07-26 12:03:57'),
(41, 'subjects', b'0', NULL, 2, 0, 'subjects', 1, 8, 1, '2022-07-23 01:36:25', '2022-07-23 01:36:25'),
(42, 'standards', b'0', NULL, 1, 0, 'standards', 1, 8, 1, '2022-07-23 07:44:58', '2022-07-23 07:44:58'),
(44, 'Promotion', b'0', 'users', 3, 1, NULL, 1, 0, 1, '2022-09-01 18:03:00', '2022-09-01 10:42:01'),
(45, 'Promote Students', b'0', NULL, 1, 0, 'promote-students', 1, 44, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Upload', b'0', 'users', 11, 1, NULL, 1, 0, 1, '2022-09-01 18:03:00', '2022-09-01 10:42:01'),
(47, 'Upload TSV Data', b'0', NULL, 1, 0, 'upload-tsv', 1, 46, 1, '2022-09-28 18:30:00', '2022-01-18 19:44:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `onlinetests`
--

CREATE TABLE `onlinetests` (
  `id` int(11) NOT NULL,
  `question` varchar(2550) NOT NULL,
  `topicid` int(11) NOT NULL,
  `questiontype` int(11) NOT NULL COMMENT '1. Fill in the blanks 2.MCQ 3.True of False 4.Short Answer',
  `choice` varchar(2550) NOT NULL DEFAULT '',
  `answer` varchar(2550) NOT NULL,
  `difficulty` varchar(6) NOT NULL DEFAULT 'Easy',
  `marks` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `onlinetests`
--

INSERT INTO `onlinetests` (`id`, `question`, `topicid`, `questiontype`, `choice`, `answer`, `difficulty`, `marks`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Can gravity form waves?', 3, 3, '', '1', 'Easy', 2, 1, '2022-07-09 13:12:30', '2022-07-14 09:04:41'),
(4, 'Gravity is a ___?', 3, 1, '', 'Force', 'Medium', 3, 1, '2022-07-13 03:39:20', '2022-07-13 03:39:20'),
(5, '5 is greater than 3', 3, 3, '', '1', 'Easy', 1, 1, '2022-07-13 03:40:39', '2022-07-13 03:40:39'),
(8, 'What is the net force on the book?', 6, 2, '9.8~0~Cannot be determined without additional data~None of the above', '2', 'Hard', 2, 0, '2022-07-13 03:50:07', '2022-10-05 13:18:49'),
(9, 'Does anyone know how to link Gibbs free energy with enzyme dynamics?', 3, 1, '', '', 'Easy', 2, 1, '2022-07-21 14:23:20', '2022-07-21 14:23:20'),
(10, 'When to apply urea fertilizer in soil ( sandy and clay), before or after the irrigation?', 3, 4, '', '', 'Medium', 4, 1, '2022-07-21 14:23:20', '2022-07-21 14:23:20'),
(11, 'How can I dynamically create and submit cloudlets in CloudSim?', 3, 3, '', '0', 'Hard', 10, 1, '2022-07-21 14:23:53', '2022-07-21 14:23:53'),
(14, 'Why torque control is better than position control for a quadruped?', 6, 1, '', '', 'Hard', 5, 1, '2022-07-21 14:25:24', '2022-07-21 14:25:24'),
(15, 'Exporting Aspen Plus Dynamics simulation to Excel ?', 6, 1, '', '', 'Hard', 5, 0, '2022-07-21 14:25:24', '2022-10-05 12:50:58'),
(16, 'How to solve Spur/Helical gear Dynamics ?', 6, 1, '', '', 'Medium', 3, 1, '2022-07-21 14:34:07', '2022-07-21 14:34:07'),
(17, 'What is the most accurate formula to calculate the damping coefficient of a structure?', 6, 1, '', '', 'Easy', 2, 1, '2022-07-21 14:34:07', '2022-07-21 14:34:07'),
(19, 'Best Simulation Tool for Bi-Pedal Locomotion ?', 6, 1, '', '', 'Easy', 2, 1, '2022-07-21 14:34:41', '2022-07-21 14:34:41'),
(20, 'Can you go fast enough to get enough mass to become a black hole?\r\n', 3, 1, '', 'Depends', 'Hard', 5, 1, '2022-08-05 10:54:32', '2022-08-05 10:54:32'),
(21, 'Do I weigh less on the equator than at the North Pole?', 3, 3, '', '0', 'Easy', 2, 1, '2022-08-05 10:56:08', '2022-08-05 10:56:08'),
(22, 'The moon\'s distance from the center of the Earth was decreased by a multiple of three. How would this affect the gravitational force of the Earth on the moon?', 3, 1, '', '', 'Easy', 2, 0, '2022-08-05 10:57:06', '2022-08-05 10:57:06'),
(23, 'What is the acceleration due to gravity on a planet on which an object with a mass of 20.0kg has a weight of 270N?', 3, 2, '27.8m/s2~13.5m/s2~10m/s2~None', '2', 'Easy', 3, 0, '2022-08-05 10:58:44', '2022-08-05 10:58:44'),
(24, 'A certain planet has three times the radius of Earth and nine times the mass. How does the acceleration of gravity at the surface of this planet (ag) compare to the acceleration at the surface of Earth (g)?', 3, 1, '', '', 'Easy', 2, 0, '2022-08-05 10:59:17', '2022-08-05 10:59:17'),
(26, 'Write an essay about your recent vacation..', 9, 4, '', 'Essay', 'Hard', 10, 1, '2022-08-07 15:04:47', '2022-08-07 15:04:47'),
(27, 'Listed below are some words.Which one will appear FOURTH in the list if they are arranged in ALPHABETICAL ORDER?Bless---Blink---Blast---Blower---Blur', 9, 2, 'Blur~Bless~Blink~Blower', '1', 'Easy', 2, 1, '2022-08-07 08:25:49', '2022-08-07 08:25:49'),
(28, 'The car in front of our scooter stopped \"abruptly\". Since we were not prepared for that, we banged hard into it! The word \"abruptly\" as used in the sentence above, means__________', 9, 1, '', 'Suddenly, without warning', 'Medium', 4, 1, '2022-08-07 08:26:42', '2022-08-07 08:26:42'),
(29, 'What is the fastest bird on foot?', 9, 1, '', 'Ostrich', 'Medium', 2, 1, '2022-08-07 08:27:19', '2022-08-07 08:27:19'),
(30, 'A heptagon is a shape with how many sides?', 9, 2, '4~9~7~6', '3', 'Hard', 5, 1, '2022-08-07 08:29:42', '2022-08-07 08:29:42'),
(31, 'Neil Armstrong was the first person to step foot on the moon?', 9, 3, '', '1', 'Easy', 1, 1, '2022-08-07 08:31:03', '2022-08-07 08:31:03'),
(33, 'Which sentence has a GRAMMAR mistake?', 9, 2, 'My mother told me to put the book back in it\'s place.~Tennis has lost its charm for me since Steffi Graf retired.~My neighbours dog tries to catch its own tail all day long.~ It\'s sunday tomorrow so I will watch my favourite cartoons.', '3', 'Easy', 1, 1, '2022-08-07 08:24:02', '2022-08-07 08:24:02'),
(35, 'test question', 4, 1, 'null', 'answer test', 'Easy', 3, 1, '2022-10-04 08:24:38', '2022-10-04 08:24:38'),
(36, 'question 2', 4, 2, 'opt a~opt b~opt c~opt d', '2', 'Medium', 1, 1, '2022-10-04 08:26:24', '2022-10-04 08:26:24'),
(37, 'jjk', 2, 3, 'null', '1', 'Easy', 5, 1, '2022-10-05 06:34:15', '2022-10-05 06:34:15');

-- --------------------------------------------------------

--
-- Table structure for table `orgadmissions`
--

CREATE TABLE `orgadmissions` (
  `ogamId` int(11) NOT NULL,
  `ogamStudId` int(11) NOT NULL,
  `ogamClsId` int(11) NOT NULL,
  `ogamCerificatesPath` text NOT NULL,
  `ogamMediumId` int(11) NOT NULL,
  `ogamFatherId` int(11) NOT NULL,
  `ogamMotherId` int(11) NOT NULL,
  `ogamAddressId` int(11) NOT NULL,
  `ogamContactId` int(11) NOT NULL,
  `ogamEmailId` int(11) NOT NULL,
  `ogamApprovedBy` int(11) NOT NULL,
  `ogamComments` text NOT NULL,
  `ogamApplicationId` varchar(255) NOT NULL,
  `ogamIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `onId` int(11) NOT NULL,
  `mainname` varchar(100) NOT NULL,
  `contact1` varchar(100) DEFAULT NULL,
  `contact2` varchar(100) DEFAULT NULL,
  `onAccessId` int(11) DEFAULT NULL,
  `onUniqueAccessKey` text DEFAULT NULL,
  `onUniqueAccessSecret` text DEFAULT NULL,
  `onType` tinyint(4) DEFAULT NULL COMMENT '1-College,\r\n2- School,\r\n3-Both',
  `onIsStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`onId`, `mainname`, `contact1`, `contact2`, `onAccessId`, `onUniqueAccessKey`, `onUniqueAccessSecret`, `onType`, `onIsStatus`, `created_at`, `updated_at`) VALUES
(1, 'Hope Foundation', '', '', 123456, 'abcd', '#23fer4trtrt', 2, 1, '2022-04-17 05:16:14', '2022-04-17 05:16:14');

-- --------------------------------------------------------

--
-- Table structure for table `orgclassstaffs`
--

CREATE TABLE `orgclassstaffs` (
  `ogcstffId` int(11) NOT NULL,
  `ogcstffStaffMasterId` int(11) NOT NULL,
  `ogcstffClsMasterId` text DEFAULT NULL,
  `ogcstffSubjectId` text DEFAULT NULL,
  `ogcstffIsStatus` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orgclassstaffs`
--

INSERT INTO `orgclassstaffs` (`ogcstffId`, `ogcstffStaffMasterId`, `ogcstffClsMasterId`, `ogcstffSubjectId`, `ogcstffIsStatus`, `created_at`, `updated_at`) VALUES
(2, 1, '[\"2\",\"3\",\"4\"]', '[\"2\",\"4\"]', 1, '2022-08-20 10:58:53', '2022-08-20 10:58:53'),
(3, 9, '[\"2\",\"4\"]', '[\"2\",\"4\"]', 1, '2022-08-20 12:32:08', '2022-08-20 12:32:08');

-- --------------------------------------------------------

--
-- Table structure for table `orgdetails`
--

CREATE TABLE `orgdetails` (
  `olId` int(11) NOT NULL,
  `olOrgId` int(11) NOT NULL,
  `olSubOrgId` varchar(5) NOT NULL,
  `olName` varchar(255) NOT NULL,
  `olAddressId` int(11) DEFAULT NULL,
  `olContactId` int(11) DEFAULT NULL,
  `olEmailId` int(11) DEFAULT NULL,
  `olOrgClassType` int(11) DEFAULT NULL COMMENT 'This is for class mode. It would be either "1-class" or "2-grade"',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orgdetails`
--

INSERT INTO `orgdetails` (`olId`, `olOrgId`, `olSubOrgId`, `olName`, `olAddressId`, `olContactId`, `olEmailId`, `olOrgClassType`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 'Hope Foundation', 1, 1, 1, 1, '2022-04-17 05:16:50', '2022-04-17 05:16:50'),
(3, 1, '2', 'HOPE foundation Matriculation School, Tannery Road', 0, 0, 0, 0, '2022-09-04 11:37:25', '2022-09-04 11:38:12'),
(4, 1, '3', 'HOPE foundation School, Ashapura Nagar', 0, 0, 0, 0, '2022-09-04 11:37:25', '2022-09-04 11:38:12'),
(5, 1, '4', 'HOPE foundation Matriculation School, Kannagi Nagar', 0, 0, 0, 0, '2022-09-04 11:37:25', '2022-09-04 11:38:12'),
(6, 1, '5', 'Education Center, Narangi', 0, 0, 0, 0, '2022-09-04 11:37:25', '2022-09-04 11:38:12'),
(7, 1, '6', 'Non-Formal Schooling, Panvel', 0, 0, 0, 0, '2022-09-04 11:37:25', '2022-09-04 11:38:12'),
(8, 1, '7', 'Non-Formal Schooling, Thane', 0, 0, 0, 0, '2022-09-04 11:37:25', '2022-09-04 11:38:12'),
(9, 1, '8', 'SAMSUNG School of HOPE, Chinnangudi', 0, 0, 0, 0, '2022-09-04 11:37:25', '2022-09-04 11:38:12'),
(10, 1, '9', 'HOPE foundation Matriculation School, Tharangambadi', 0, 0, 0, 0, '2022-09-04 11:37:25', '2022-09-04 11:38:12'),
(11, 1, '10', 'HOPE foundation Nursery & Primary School, Pudupattinam', 0, 0, 0, 0, '2022-09-04 11:37:25', '2022-09-04 11:38:12'),
(12, 1, '11', 'Non-Formal Schooling, Sanaswadi', 0, 0, 0, 0, '2022-09-04 11:37:25', '2022-09-04 11:38:12'),
(13, 1, '12', 'HOPE foundation School, Tongri Toli', 0, 0, 0, 0, '2022-09-04 11:37:25', '2022-09-04 11:38:12');

-- --------------------------------------------------------

--
-- Table structure for table `orgfees`
--

CREATE TABLE `orgfees` (
  `ogfId` int(11) NOT NULL,
  `ogfOrgId` int(11) NOT NULL,
  `ogfFeeId` int(11) NOT NULL,
  `ogfClsId` int(11) NOT NULL,
  `ogfAcYear` year(4) NOT NULL,
  `ogfAmount` decimal(10,2) NOT NULL,
  `ogfLateFee` decimal(10,0) NOT NULL,
  `ogfDueDate` date NOT NULL,
  `ogfIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orgholidays`
--

INSERT INTO `orgholidays` (`orhlId`, `orhlOrgMasterId`, `orhlHolMasterId`, `orhlFinancialYear`, `orhlName`, `orhlDescription`, `orhlDate`, `orhlMessage`, `orhlIsStatus`, `created_at`, `updated_at`) VALUES
(6, 1, 'hf-holi-0007', 2023, 'holiday', 'good', '2022-07-05', 'verygood', 1, '2022-07-22 07:27:25', '2022-07-22 09:50:19'),
(7, 1, 'hf-holi-0007', 2023, 'foodfestival', 'good for health', '2022-07-21', 'good', 1, '2022-07-22 07:30:36', '2022-07-22 09:50:24'),
(8, 1, 'hf-holi-0007', 2023, 'pongal', 'one', '2022-07-20', 'be safe', 1, '2022-07-22 07:43:42', '2022-07-22 09:50:31'),
(9, 1, 'hf-holi-0007', 2023, 'pongal', 'good', '2022-07-06', 'nice festival', 1, '2022-07-22 08:41:18', '2022-07-22 09:50:36'),
(10, 1, 'hf-holi-0007', 2022, 'bsrg', 'gsg', '2022-09-20', 'gsrgrsgrsg', 1, '2022-09-27 12:16:27', '2022-09-27 12:16:27');

-- --------------------------------------------------------

--
-- Table structure for table `orginfrastructures`
--

CREATE TABLE `orginfrastructures` (
  `oinfId` int(11) NOT NULL,
  `oinfOrgId` int(11) NOT NULL,
  `oinfMasterId` int(11) NOT NULL,
  `oinfIsStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orgstudents`
--

CREATE TABLE `orgstudents` (
  `orstId` int(11) NOT NULL,
  `orstOrgMasterId` int(11) NOT NULL,
  `branch_id` int(11) DEFAULT 1,
  `orstStuMasterId` int(11) NOT NULL,
  `orstIsStatus` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orgstudents`
--

INSERT INTO `orgstudents` (`orstId`, `orstOrgMasterId`, `branch_id`, `orstStuMasterId`, `orstIsStatus`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, '2022-06-05 03:12:10', '2022-08-17 15:56:07'),
(4, 1, 1, 5, 1, '2022-07-04 02:48:12', '2022-07-04 02:48:12'),
(5, 1, 1, 6, 1, '2022-08-12 01:37:53', '2022-08-17 15:57:06'),
(6, 1, 1, 7, 1, '2022-08-12 01:53:38', '2022-08-17 15:56:28'),
(10, 1, 1, 11, 1, '2022-08-22 12:16:43', '2022-08-22 12:16:43'),
(11, 1, 1, 12, 1, '2022-08-29 06:32:42', '2022-08-29 06:32:42'),
(12, 1, 1, 13, 1, '2022-09-03 04:38:33', '2022-09-03 04:38:33'),
(13, 1, NULL, 464, 0, '2022-09-21 00:54:37', '2022-09-21 00:54:37'),
(14, 1, NULL, 465, 0, '2022-09-21 00:54:37', '2022-09-21 00:54:37'),
(15, 1, NULL, 466, 0, '2022-09-21 00:54:37', '2022-09-21 00:54:37'),
(16, 1, NULL, 467, 0, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(17, 1, NULL, 468, 0, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(18, 1, NULL, 469, 0, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(19, 1, NULL, 470, 0, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(20, 1, NULL, 471, 0, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(21, 1, NULL, 472, 0, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(22, 1, NULL, 473, 0, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(23, 1, NULL, 474, 0, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(24, 1, NULL, 475, 0, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(25, 1, NULL, 476, 0, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(26, 1, NULL, 477, 0, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(27, 1, NULL, 478, 0, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(28, 1, NULL, 479, 0, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(29, 1, NULL, 480, 0, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(30, 1, NULL, 481, 0, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(31, 1, NULL, 482, 0, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(32, 1, NULL, 483, 0, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(33, 1, NULL, 484, 0, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(34, 1, NULL, 485, 0, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(35, 1, NULL, 486, 0, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(36, 1, NULL, 487, 0, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(37, 1, NULL, 488, 0, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(38, 1, NULL, 489, 0, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(39, 1, NULL, 490, 0, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(40, 1, NULL, 491, 0, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(41, 1, NULL, 492, 0, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(42, 1, NULL, 493, 0, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(43, 1, NULL, 494, 0, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(44, 1, NULL, 495, 0, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(45, 1, NULL, 496, 0, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(46, 1, NULL, 497, 0, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(47, 1, NULL, 498, 0, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(48, 1, NULL, 499, 0, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(49, 1, NULL, 500, 0, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(50, 1, NULL, 501, 0, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(51, 1, NULL, 502, 0, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(52, 1, NULL, 503, 0, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(53, 1, NULL, 504, 0, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(54, 1, NULL, 505, 0, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(55, 1, NULL, 506, 0, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(56, 1, NULL, 507, 0, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(57, 1, NULL, 508, 0, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(58, 1, NULL, 509, 0, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(59, 1, NULL, 510, 0, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(60, 1, NULL, 511, 0, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(61, 1, NULL, 512, 0, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(62, 1, NULL, 513, 0, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(63, 1, NULL, 514, 0, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(64, 1, NULL, 515, 0, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(65, 1, NULL, 516, 0, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(66, 1, NULL, 517, 0, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(67, 1, NULL, 518, 0, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(68, 1, NULL, 519, 0, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(69, 1, NULL, 520, 0, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(70, 1, NULL, 521, 0, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(71, 1, NULL, 522, 0, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(72, 1, NULL, 523, 0, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(73, 1, NULL, 524, 0, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(74, 1, NULL, 525, 0, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(75, 1, NULL, 526, 0, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(76, 1, NULL, 527, 0, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(77, 1, NULL, 528, 0, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(78, 1, NULL, 529, 0, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(79, 1, NULL, 530, 0, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(80, 1, NULL, 531, 0, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(81, 1, NULL, 532, 0, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(82, 1, NULL, 533, 0, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(83, 1, NULL, 534, 0, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(84, 1, NULL, 535, 0, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(85, 1, NULL, 536, 0, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(86, 1, NULL, 537, 0, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(87, 1, NULL, 538, 0, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(88, 1, NULL, 539, 0, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(89, 1, NULL, 540, 0, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(90, 1, NULL, 541, 0, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(91, 1, NULL, 542, 0, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(92, 1, NULL, 543, 0, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(93, 1, NULL, 544, 0, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(94, 1, NULL, 545, 0, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(95, 1, NULL, 546, 0, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(96, 1, NULL, 547, 0, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(97, 1, NULL, 548, 0, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(98, 1, NULL, 549, 0, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(99, 1, NULL, 550, 0, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(100, 1, NULL, 551, 0, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(101, 1, NULL, 552, 0, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(102, 1, NULL, 553, 0, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(103, 1, NULL, 554, 0, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(104, 1, NULL, 555, 0, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(105, 1, NULL, 556, 0, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(106, 1, NULL, 557, 0, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(107, 1, NULL, 558, 0, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(108, 1, NULL, 559, 0, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(109, 1, NULL, 560, 0, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(110, 1, NULL, 561, 0, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(111, 1, NULL, 562, 0, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(112, 1, NULL, 563, 0, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(113, 1, NULL, 564, 0, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(114, 1, NULL, 565, 0, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(115, 1, NULL, 566, 0, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(116, 1, NULL, 567, 0, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(117, 1, NULL, 568, 0, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(118, 1, NULL, 569, 0, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(119, 1, NULL, 570, 0, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(120, 1, NULL, 571, 0, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(121, 1, NULL, 572, 0, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(122, 1, NULL, 573, 0, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(123, 1, NULL, 574, 0, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(124, 1, NULL, 575, 0, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(125, 1, NULL, 576, 0, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(126, 1, NULL, 577, 0, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(127, 1, NULL, 578, 0, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(128, 1, NULL, 579, 0, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(129, 1, NULL, 580, 0, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(130, 1, NULL, 581, 0, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(131, 1, NULL, 582, 0, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(132, 1, NULL, 583, 0, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(133, 1, NULL, 584, 0, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(134, 1, NULL, 585, 0, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(135, 1, NULL, 586, 0, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(136, 1, NULL, 587, 0, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(137, 1, NULL, 588, 0, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(138, 1, NULL, 589, 0, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(139, 1, NULL, 590, 0, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(140, 1, NULL, 591, 0, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(141, 1, NULL, 592, 0, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(142, 1, NULL, 593, 0, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(143, 1, NULL, 594, 0, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(144, 1, NULL, 595, 0, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(145, 1, NULL, 596, 0, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(146, 1, NULL, 597, 0, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(147, 1, NULL, 598, 0, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(148, 1, NULL, 599, 0, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(149, 1, NULL, 600, 0, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(150, 1, NULL, 601, 0, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(151, 1, NULL, 602, 0, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(152, 1, NULL, 603, 0, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(153, 1, NULL, 604, 0, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(154, 1, NULL, 605, 0, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(155, 1, NULL, 606, 0, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(156, 1, NULL, 607, 0, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(157, 1, NULL, 608, 0, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(158, 1, NULL, 609, 0, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(159, 1, NULL, 610, 0, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(160, 1, NULL, 611, 0, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(161, 1, NULL, 612, 0, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(162, 1, NULL, 613, 0, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(163, 1, NULL, 614, 0, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(164, 1, NULL, 615, 0, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(165, 1, NULL, 616, 0, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(166, 1, NULL, 617, 0, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(167, 1, NULL, 618, 0, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(168, 1, NULL, 619, 0, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(169, 1, NULL, 620, 0, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(170, 1, NULL, 621, 0, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(171, 1, NULL, 622, 0, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(172, 1, NULL, 623, 0, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(173, 1, NULL, 624, 0, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(174, 1, NULL, 625, 0, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(175, 1, NULL, 626, 0, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(176, 1, NULL, 627, 0, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(177, 1, NULL, 628, 0, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(178, 1, NULL, 629, 0, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(179, 1, NULL, 630, 0, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(180, 1, NULL, 631, 0, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(181, 1, NULL, 632, 0, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(182, 1, NULL, 633, 0, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(183, 1, NULL, 634, 0, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(184, 1, NULL, 635, 0, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(185, 1, NULL, 636, 0, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(186, 1, NULL, 637, 0, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(187, 1, NULL, 638, 0, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(188, 1, NULL, 639, 0, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(189, 1, NULL, 640, 0, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(190, 1, NULL, 641, 0, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(191, 1, NULL, 642, 0, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(192, 1, NULL, 643, 0, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(193, 1, NULL, 644, 0, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(194, 1, NULL, 645, 0, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(195, 1, NULL, 646, 0, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(196, 1, NULL, 647, 0, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(197, 1, NULL, 648, 0, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(198, 1, NULL, 649, 0, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(199, 1, NULL, 650, 0, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(200, 1, NULL, 651, 0, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(201, 1, NULL, 652, 0, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(202, 1, NULL, 653, 0, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(203, 1, NULL, 654, 0, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(204, 1, NULL, 655, 0, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(205, 1, NULL, 656, 0, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(206, 1, NULL, 657, 0, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(207, 1, NULL, 658, 0, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(208, 1, NULL, 659, 0, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(209, 1, NULL, 660, 0, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(210, 1, NULL, 661, 0, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(211, 1, NULL, 662, 0, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(212, 1, NULL, 663, 0, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(213, 1, NULL, 664, 0, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(214, 1, NULL, 665, 0, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(215, 1, NULL, 666, 0, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(216, 1, NULL, 667, 0, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(217, 1, NULL, 668, 0, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(218, 1, NULL, 669, 0, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(219, 1, NULL, 670, 0, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(220, 1, NULL, 671, 0, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(221, 1, NULL, 672, 0, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(222, 1, NULL, 673, 0, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(223, 1, NULL, 674, 0, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(224, 1, NULL, 675, 0, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(225, 1, NULL, 676, 0, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(226, 1, NULL, 677, 0, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(227, 1, NULL, 678, 0, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(228, 1, NULL, 679, 0, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(229, 1, NULL, 680, 0, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(230, 1, NULL, 681, 0, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(231, 1, NULL, 682, 0, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(232, 1, NULL, 683, 0, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(233, 1, NULL, 684, 0, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(234, 1, NULL, 685, 0, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(235, 1, NULL, 686, 0, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(236, 1, NULL, 687, 0, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(237, 1, NULL, 688, 0, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(238, 1, NULL, 689, 0, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(239, 1, NULL, 690, 0, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(240, 1, NULL, 691, 0, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(241, 1, NULL, 693, 0, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(242, 1, NULL, 694, 0, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(243, 1, NULL, 695, 0, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(244, 1, NULL, 696, 0, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(245, 1, NULL, 697, 0, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(246, 1, NULL, 698, 0, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(247, 1, NULL, 699, 0, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(248, 1, NULL, 700, 0, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(249, 1, NULL, 701, 0, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(250, 1, NULL, 702, 0, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(251, 1, NULL, 703, 0, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(252, 1, NULL, 704, 0, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(253, 1, NULL, 705, 0, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(254, 1, NULL, 706, 0, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(255, 1, NULL, 707, 0, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(256, 1, NULL, 708, 0, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(257, 1, NULL, 709, 0, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(258, 1, NULL, 710, 0, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(259, 1, NULL, 711, 0, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(260, 1, NULL, 712, 0, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(261, 1, NULL, 713, 0, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(262, 1, NULL, 714, 0, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(263, 1, NULL, 715, 0, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(264, 1, NULL, 716, 0, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(265, 1, NULL, 717, 0, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(266, 1, NULL, 718, 0, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(267, 1, NULL, 719, 0, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(268, 1, NULL, 720, 0, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(269, 1, NULL, 721, 0, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(270, 1, NULL, 722, 0, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(271, 1, NULL, 723, 0, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(272, 1, NULL, 724, 0, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(273, 1, NULL, 725, 0, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(274, 1, NULL, 726, 0, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(275, 1, NULL, 727, 0, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(276, 1, NULL, 728, 0, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(277, 1, NULL, 729, 0, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(278, 1, NULL, 730, 0, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(279, 1, NULL, 731, 0, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(280, 1, NULL, 732, 0, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(281, 1, NULL, 733, 0, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(282, 1, NULL, 734, 0, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(283, 1, NULL, 735, 0, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(284, 1, NULL, 736, 0, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(285, 1, NULL, 737, 0, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(286, 1, NULL, 738, 0, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(287, 1, NULL, 739, 0, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(288, 1, NULL, 740, 0, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(289, 1, NULL, 741, 0, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(290, 1, NULL, 742, 0, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(291, 1, NULL, 743, 0, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(292, 1, NULL, 744, 0, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(293, 1, NULL, 745, 0, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(294, 1, NULL, 746, 0, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(295, 1, NULL, 747, 0, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(296, 1, NULL, 748, 0, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(297, 1, NULL, 749, 0, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(298, 1, NULL, 750, 0, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(299, 1, NULL, 751, 0, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(300, 1, NULL, 752, 0, '2022-09-21 00:55:32', '2022-09-21 00:55:32'),
(301, 1, NULL, 753, 0, '2022-09-21 00:55:32', '2022-09-21 00:55:32'),
(302, 1, NULL, 754, 0, '2022-09-21 00:55:32', '2022-09-21 00:55:32'),
(303, 1, NULL, 755, 0, '2022-09-21 00:55:33', '2022-09-21 00:55:33'),
(304, 1, NULL, 756, 0, '2022-09-21 00:55:33', '2022-09-21 00:55:33'),
(305, 1, NULL, 757, 0, '2022-09-21 00:55:34', '2022-09-21 00:55:34'),
(306, 1, NULL, 758, 0, '2022-09-21 00:55:34', '2022-09-21 00:55:34'),
(307, 1, NULL, 759, 0, '2022-09-21 00:55:34', '2022-09-21 00:55:34'),
(308, 1, NULL, 760, 0, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(309, 1, NULL, 761, 0, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(310, 1, NULL, 762, 0, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(311, 1, NULL, 763, 0, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(312, 1, NULL, 764, 0, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(313, 1, NULL, 765, 0, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(314, 1, NULL, 766, 0, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(315, 1, NULL, 767, 0, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(316, 1, NULL, 768, 0, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(317, 1, NULL, 769, 0, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(318, 1, NULL, 770, 0, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(319, 1, NULL, 771, 0, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(320, 1, NULL, 772, 0, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(321, 1, NULL, 773, 0, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(322, 1, NULL, 774, 0, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(323, 1, NULL, 775, 0, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(324, 1, NULL, 776, 0, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(325, 1, NULL, 777, 0, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(326, 1, NULL, 778, 0, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(327, 1, NULL, 779, 0, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(328, 1, NULL, 780, 0, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(329, 1, NULL, 781, 0, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(330, 1, NULL, 782, 0, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(331, 1, NULL, 783, 0, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(332, 1, NULL, 784, 0, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(333, 1, NULL, 785, 0, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(334, 1, NULL, 786, 0, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(335, 1, NULL, 787, 0, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(336, 1, NULL, 788, 0, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(337, 1, NULL, 789, 0, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(338, 1, NULL, 790, 0, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(339, 1, NULL, 791, 0, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(340, 1, NULL, 792, 0, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(341, 1, NULL, 793, 0, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(342, 1, NULL, 794, 0, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(343, 1, NULL, 795, 0, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(344, 1, NULL, 796, 0, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(345, 1, NULL, 797, 0, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(346, 1, NULL, 798, 0, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(347, 1, NULL, 799, 0, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(348, 1, NULL, 800, 0, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(349, 1, NULL, 801, 0, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(350, 1, NULL, 802, 0, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(351, 1, NULL, 803, 0, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(352, 1, NULL, 804, 0, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(353, 1, NULL, 805, 0, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(354, 1, NULL, 806, 0, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(355, 1, NULL, 807, 0, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(356, 1, NULL, 808, 0, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(357, 1, NULL, 809, 0, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(358, 1, NULL, 810, 0, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(359, 1, NULL, 811, 0, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(360, 1, NULL, 812, 0, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(361, 1, NULL, 813, 0, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(362, 1, NULL, 814, 0, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(363, 1, NULL, 815, 0, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(364, 1, NULL, 816, 0, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(365, 1, NULL, 817, 0, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(366, 1, NULL, 818, 0, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(367, 1, NULL, 819, 0, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(368, 1, NULL, 820, 0, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(369, 1, NULL, 821, 0, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(370, 1, NULL, 822, 0, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(371, 1, NULL, 823, 0, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(372, 1, NULL, 824, 0, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(373, 1, NULL, 825, 0, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(374, 1, NULL, 826, 0, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(375, 1, NULL, 827, 0, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(376, 1, NULL, 828, 0, '2022-09-21 00:55:49', '2022-09-21 00:55:49'),
(377, 1, NULL, 829, 0, '2022-09-21 00:55:49', '2022-09-21 00:55:49'),
(378, 1, NULL, 830, 0, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(379, 1, NULL, 831, 0, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(380, 1, NULL, 832, 0, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(381, 1, NULL, 833, 0, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(382, 1, NULL, 834, 0, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(383, 1, NULL, 835, 0, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(384, 1, NULL, 836, 0, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(385, 1, NULL, 837, 0, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(386, 1, NULL, 838, 0, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(387, 1, NULL, 839, 0, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(388, 1, NULL, 840, 0, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(389, 1, NULL, 841, 0, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(390, 1, NULL, 842, 0, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(391, 1, NULL, 843, 0, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(392, 1, NULL, 844, 0, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(393, 1, NULL, 845, 0, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(394, 1, NULL, 846, 0, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(395, 1, NULL, 847, 0, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(396, 1, NULL, 848, 0, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(397, 1, NULL, 849, 0, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(398, 1, NULL, 850, 0, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(399, 1, NULL, 851, 0, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(400, 1, NULL, 852, 0, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(401, 1, NULL, 853, 0, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(402, 1, NULL, 854, 0, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(403, 1, NULL, 855, 0, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(404, 1, NULL, 856, 0, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(405, 1, NULL, 857, 0, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(406, 1, NULL, 858, 0, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(407, 1, NULL, 859, 0, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(408, 1, NULL, 860, 0, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(409, 1, NULL, 861, 0, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(410, 1, NULL, 862, 0, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(411, 1, NULL, 863, 0, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(412, 1, NULL, 864, 0, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(413, 1, NULL, 865, 0, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(414, 1, NULL, 866, 0, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(415, 1, NULL, 867, 0, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(416, 1, NULL, 868, 0, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(417, 1, NULL, 869, 0, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(418, 1, NULL, 870, 0, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(419, 1, NULL, 871, 0, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(420, 1, NULL, 872, 0, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(421, 1, NULL, 873, 0, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(422, 1, NULL, 874, 0, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(423, 1, NULL, 875, 0, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(424, 1, NULL, 876, 0, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(425, 1, NULL, 877, 0, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(426, 1, NULL, 878, 0, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(427, 1, NULL, 879, 0, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(428, 1, NULL, 880, 0, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(429, 1, NULL, 881, 0, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(430, 1, NULL, 882, 0, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(431, 1, NULL, 883, 0, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(432, 1, NULL, 884, 0, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(433, 1, NULL, 885, 0, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(434, 1, NULL, 886, 0, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(435, 1, NULL, 887, 0, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(436, 1, NULL, 888, 0, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(437, 1, NULL, 889, 0, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(438, 1, NULL, 890, 0, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(439, 1, NULL, 891, 0, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(440, 1, NULL, 892, 0, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(441, 1, NULL, 893, 0, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(442, 1, NULL, 894, 0, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(443, 1, NULL, 895, 0, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(444, 1, NULL, 896, 0, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(445, 1, NULL, 897, 0, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(446, 1, NULL, 898, 0, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(447, 1, NULL, 899, 0, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(448, 1, NULL, 900, 0, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(449, 1, NULL, 901, 0, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(450, 1, NULL, 902, 0, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(451, 1, NULL, 903, 0, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(452, 1, NULL, 904, 0, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(453, 1, NULL, 905, 0, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(454, 1, NULL, 906, 0, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(455, 1, NULL, 907, 0, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(456, 1, NULL, 908, 0, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(457, 1, NULL, 909, 0, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(458, 1, NULL, 910, 0, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(459, 1, NULL, 911, 0, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(460, 1, NULL, 912, 0, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(461, 1, NULL, 913, 0, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(462, 1, 1, 914, 1, '2022-09-29 04:44:35', '2022-09-29 04:44:35');

-- --------------------------------------------------------

--
-- Table structure for table `preferencelanguages`
--

CREATE TABLE `preferencelanguages` (
  `plgId` int(11) NOT NULL,
  `plgName` varchar(255) NOT NULL,
  `plgIsStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pressreleases`
--

CREATE TABLE `pressreleases` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `lead` varchar(100) NOT NULL,
  `message` varchar(2550) NOT NULL,
  `publishing` date NOT NULL,
  `fileurl` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pressreleases`
--

INSERT INTO `pressreleases` (`id`, `title`, `lead`, `message`, `publishing`, `fileurl`, `status`, `created_at`, `updated_at`) VALUES
(1, 'affaf', 'afafaf', 'afafaf', '0000-00-00', 'C:\\fakepath\\2021-06-13 22.56.07 2595310503073041578_46892858777.mp4', 1, '2022-07-15 04:35:54', '2022-07-15 04:35:54'),
(2, 'afaf', 'afafa', 'fafaf', '2022-07-05', 'C:\\fakepath\\2021-08-15 19.49.25 2640877610911263285_46892858777.jpg', 1, '2022-07-15 04:37:49', '2022-07-15 04:37:49'),
(3, 'afafaavzx', 'zxvz', 'vzxvx', '2022-07-29', 'C:\\fakepath\\2021-06-11 23.42.03 2593884277757070316_46892858777.jpg', 1, '2022-07-15 04:40:13', '2022-07-15 04:40:13');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `progressreports`
--

CREATE TABLE `progressreports` (
  `prgrId` int(11) NOT NULL,
  `prgrStuId` int(11) NOT NULL,
  `prgrOrgId` int(11) NOT NULL,
  `prgrResultStatus` int(11) NOT NULL,
  `prgrIsParentsVerified` int(11) NOT NULL,
  `prgrIsStafVerified` int(11) NOT NULL,
  `prgrIsStatus` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `qaId` int(11) NOT NULL,
  `qaPreparedFor` int(11) NOT NULL,
  `qaName` int(11) NOT NULL,
  `qaDescription` text NOT NULL,
  `topicid` int(11) NOT NULL,
  `qaType` int(11) NOT NULL COMMENT '1-Fill In the Blanks\r\n2-Choose the Best Answers\r\n3-Maching\r\n4-Boolean\r\n5-ShortMarks',
  `qaOrgId` int(11) NOT NULL,
  `qaSubjId` int(11) NOT NULL,
  `qaPreparedBy` int(11) NOT NULL,
  `qaMarks` varchar(255) NOT NULL,
  `qaIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reportschedules`
--

CREATE TABLE `reportschedules` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `reportid` int(11) NOT NULL,
  `toaddress` text NOT NULL COMMENT 'As json',
  `cc_address` text NOT NULL COMMENT 'json format',
  `bcc_address` text NOT NULL COMMENT 'json format',
  `sendmode` int(11) NOT NULL COMMENT '1. Daily\r\n2. Weekly\r\n3. 15days\r\n4. Monthly\r\n5. 3 Months\r\n6. 6 Months\r\n7. Yearly',
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reportschedules`
--

INSERT INTO `reportschedules` (`id`, `name`, `reportid`, `toaddress`, `cc_address`, `bcc_address`, `sendmode`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Test Report', 3, 'someoneelse@mail.com', '', '', 2, 1, '2022-07-19 07:55:23', '2022-07-19 08:12:04'),
(2, 'Progress Report', 2, 'someone@mail.com', '', '', 4, 1, '2022-07-19 08:10:07', '2022-07-19 08:10:07'),
(3, 'Annual Report', 6, 'name@mail.com,add@mail.com', '', '', 7, 1, '2022-07-19 08:16:17', '2022-07-19 08:19:02'),
(4, 'afeaf', 3, '[\"somename@mail.com\",\"user@mail.com\"]', '[]', '[]', 3, 1, '2022-08-26 13:01:57', '2022-08-26 13:26:44');

-- --------------------------------------------------------

--
-- Table structure for table `reviewstatus`
--

CREATE TABLE `reviewstatus` (
  `rvwsId` int(11) NOT NULL,
  `rvwsStuId` int(11) NOT NULL,
  `rvwsOrgId` int(11) NOT NULL,
  `rvwsAssignedBy` int(11) NOT NULL,
  `rvwsIsReviewed` int(11) NOT NULL,
  `rvwsReviewTime` int(11) NOT NULL,
  `rvwsReviewScore` int(11) NOT NULL,
  `rvwsFilsId` int(11) NOT NULL,
  `rvwsVideoId` int(11) NOT NULL,
  `rvwsIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `rId` int(11) NOT NULL,
  `rRoomNo` varchar(50) NOT NULL,
  `rTotalSeat` varchar(50) NOT NULL,
  `rStatus` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`rId`, `rRoomNo`, `rTotalSeat`, `rStatus`, `created_at`, `updated_at`) VALUES
(1, '1', '10', 1, '2022-08-06 13:10:43', '2022-08-06 13:10:43');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `secnId` int(11) NOT NULL,
  `secnSecName` varchar(255) NOT NULL DEFAULT '''0''',
  `secnIsStatus` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`secnId`, `secnSecName`, `secnIsStatus`, `created_at`, `updated_at`) VALUES
(1, 'A', 1, '2022-04-17 07:42:49', '2022-04-17 07:42:49'),
(2, 'B', 1, '2022-04-17 07:42:49', '2022-04-17 07:42:49'),
(3, 'C', 1, '2022-04-17 07:43:05', '2022-04-17 07:43:05'),
(4, 'D', 1, '2022-04-17 07:43:05', '2022-04-17 07:43:05'),
(5, 'E', 1, '2022-04-17 07:43:05', '2022-04-17 07:43:05'),
(6, 'F', 1, '2022-09-01 12:44:14', '2022-09-01 12:44:14'),
(7, 'G', 1, '2022-09-01 12:44:14', '2022-09-01 12:44:14'),
(8, 'H', 1, '2022-09-01 12:44:32', '2022-09-01 12:44:32'),
(9, 'I', 1, '2022-09-01 12:44:32', '2022-09-01 12:44:32');

-- --------------------------------------------------------

--
-- Table structure for table `smssettings`
--

CREATE TABLE `smssettings` (
  `smId` int(11) NOT NULL,
  `smPackage` varchar(255) NOT NULL,
  `smCount` int(11) NOT NULL,
  `smIsStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `staffaccounts`
--

CREATE TABLE `staffaccounts` (
  `stfacId` int(11) NOT NULL,
  `stfacStaffMasterId` int(11) NOT NULL,
  `stfacOrgMasterId` int(11) NOT NULL,
  `stfacPFNumber` varchar(255) NOT NULL,
  `stfacGrossSalary` decimal(10,3) NOT NULL,
  `stfacPeriod` int(11) NOT NULL COMMENT '1-Monthly,\r\n2-Daily,\r\n3-Custom',
  `stfacCustomPeriod` int(11) NOT NULL,
  `stfacUANNumber` varchar(255) NOT NULL,
  `stfacIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `staffmeetings`
--

CREATE TABLE `staffmeetings` (
  `mtId` int(11) NOT NULL,
  `mtOrgMasterId` int(11) NOT NULL,
  `mtAgenda` text NOT NULL,
  `mtScheduledAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `mtInviteStatus` int(11) NOT NULL,
  `mtMeetingId` text NOT NULL,
  `mtStartDuration` time NOT NULL,
  `mtEndDuration` time NOT NULL,
  `mtComments` text NOT NULL,
  `mtOrganisedBy` int(11) NOT NULL,
  `mtGoogleMeet` text NOT NULL,
  `mtZoomMeet` text NOT NULL,
  `mtIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `stffId` int(11) NOT NULL,
  `stffUserId` int(11) NOT NULL,
  `stffFirstName` varchar(255) NOT NULL,
  `stffLastName` varchar(55) DEFAULT NULL,
  `stffGender` int(11) NOT NULL COMMENT '1-Male,\r\n2-Female\r\n3-Others',
  `stffDOB` date NOT NULL,
  `stffPlaceOfBirth` varchar(255) DEFAULT NULL,
  `stffOfficalEmailId` int(11) NOT NULL,
  `stffAddressId` int(11) NOT NULL,
  `stffPersonalContactId` int(11) DEFAULT 0,
  `stffIsStatus` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`stffId`, `stffUserId`, `stffFirstName`, `stffLastName`, `stffGender`, `stffDOB`, `stffPlaceOfBirth`, `stffOfficalEmailId`, `stffAddressId`, `stffPersonalContactId`, `stffIsStatus`, `created_at`, `updated_at`) VALUES
(1, 16, 'Rajaraam', 'K', 1, '1967-06-17', 'Mayiladuthurai', 9, 20, 13, 0, '2022-08-06 13:34:56', '2022-09-29 10:54:26'),
(2, 17, 'Bhavani', 'Shankar', 2, '1976-08-12', 'Chennai', 15, 9, 8, 1, '2022-08-09 20:45:38', '2022-08-09 20:45:38'),
(9, 33, 'Rathina', 'Samy', 1, '2022-08-01', NULL, 23, 11, 9, 1, '2022-08-20 12:32:08', '2022-09-29 09:07:53'),
(81, 2368, 'PREETHA JOTHI', 'P', 2, '1986-05-29', NULL, 550, 997, 635, 1, '2022-09-21 11:28:55', '2022-09-21 11:28:55'),
(82, 2369, 'Adhilakshmi', 'M', 2, '1990-07-18', NULL, 551, 998, 636, 0, '2022-09-21 11:28:56', '2022-09-29 10:54:31'),
(83, 2370, 'Radhika', 'S', 2, '1988-07-20', NULL, 552, 999, 637, 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(84, 2371, 'Shreya', 'Chettri', 2, '1997-04-05', NULL, 553, 1000, 638, 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(85, 2372, 'Jayalakshmi', 'Vasu', 2, '1979-06-11', NULL, 554, 1001, 639, 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(86, 2373, 'Racheljayakumari', NULL, 2, '1977-05-14', NULL, 555, 1002, 640, 0, '2022-09-21 11:28:57', '2022-09-29 10:57:52'),
(87, 2374, 'GEETHANJALI', 'V', 2, '1977-06-30', NULL, 556, 1003, 641, 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(88, 2375, 'Sumathi', 'M', 2, '1992-06-08', NULL, 557, 1004, 642, 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(89, 2376, 'Usha', 'S', 2, '1987-04-17', NULL, 558, 1005, 643, 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(90, 2377, 'Merlin Bless Sheeba', 'C', 2, '1998-07-13', NULL, 559, 1006, 644, 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(91, 2378, 'ARUNA', 'S', 2, '1983-12-20', NULL, 560, 1007, 645, 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(92, 2379, 'ALPHONSA', 'PANNEER SELVAM', 2, '1975-05-10', NULL, 561, 1008, 646, 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58');

-- --------------------------------------------------------

--
-- Table structure for table `staffsalaries`
--

CREATE TABLE `staffsalaries` (
  `stfslId` int(11) NOT NULL,
  `stfslStaffOrgMasterId` int(11) NOT NULL,
  `stfslNoOfWorkdays` int(11) NOT NULL,
  `stfslPayPeriod` varchar(255) NOT NULL,
  `stfslPaidDate` date NOT NULL,
  `stfslAmount` decimal(10,3) NOT NULL,
  `stfslDeductions` decimal(10,3) NOT NULL,
  `stfslIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `staffseducations`
--

CREATE TABLE `staffseducations` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `qualification` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staffseducations`
--

INSERT INTO `staffseducations` (`id`, `staff_id`, `qualification`, `status`, `created_at`, `updated_at`) VALUES
(3, 2, 'B.Ed', 1, '2022-08-20 10:58:53', '2022-08-20 10:58:53'),
(4, 9, 'M.A', 1, '2022-08-20 12:32:08', '2022-08-20 12:32:08'),
(34, 21, 'B.Sc', 1, '2022-09-21 08:20:15', '2022-09-21 08:20:15'),
(35, 21, 'M.SC', 1, '2022-09-21 08:20:15', '2022-09-21 08:20:15'),
(36, 21, 'M.PHIL', 1, '2022-09-21 08:20:15', '2022-09-21 08:20:15'),
(37, 22, 'B.Sc', 1, '2022-09-21 08:20:15', '2022-09-21 08:20:15'),
(38, 22, 'M.SC', 1, '2022-09-21 08:20:15', '2022-09-21 08:20:15'),
(39, 22, 'B. Ed', 1, '2022-09-21 08:20:15', '2022-09-21 08:20:15'),
(40, 23, 'B.C.A', 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(41, 23, 'D.EL.ED', 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(42, 24, 'B.Sc', 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(43, 24, 'M.A', 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(44, 25, 'B.A. Economics', 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(45, 25, 'M.A., Eco.', 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(46, 25, 'B. Ed', 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(47, 26, 'NURSERY TEACHER TRAINED', 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(48, 27, 'B.A', 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(49, 27, 'M.A', 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(50, 27, 'B. Ed', 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(51, 28, 'DTED', 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(52, 28, 'B,Lit', 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(53, 28, 'M.A', 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(54, 29, 'B.A. Economics', 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(55, 29, 'D.P.ed', 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(56, 29, 'M.A. Economics', 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(57, 30, 'B.Sc', 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(58, 30, 'B. Ed', 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(59, 31, 'B.Sc', 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(60, 31, 'B. Ed', 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(61, 32, 'B.COM', 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(62, 32, 'D.EL.ED', 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(63, 32, 'Montessori Certificate course', 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(64, 69, 'B.Sc', 1, '2022-09-21 10:50:14', '2022-09-21 10:50:14'),
(65, 69, 'M.SC', 1, '2022-09-21 10:50:14', '2022-09-21 10:50:14'),
(66, 69, 'M.PHIL', 1, '2022-09-21 10:50:14', '2022-09-21 10:50:14'),
(67, 70, 'B.Sc', 1, '2022-09-21 10:50:14', '2022-09-21 10:50:14'),
(68, 70, 'M.SC', 1, '2022-09-21 10:50:14', '2022-09-21 10:50:14'),
(69, 70, 'B. Ed', 1, '2022-09-21 10:50:14', '2022-09-21 10:50:14'),
(70, 71, 'B.C.A', 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(71, 71, 'D.EL.ED', 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(72, 72, 'B.Sc', 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(73, 72, 'M.A', 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(74, 73, 'B.A. Economics', 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(75, 73, 'M.A., Eco.', 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(76, 73, 'B. Ed', 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(77, 74, 'NURSERY TEACHER TRAINED', 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(78, 75, 'B.A', 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(79, 75, 'M.A', 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(80, 75, 'B. Ed', 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(81, 76, 'DTED', 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(82, 76, 'B,Lit', 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(83, 76, 'M.A', 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(84, 77, 'B.A. Economics', 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(85, 77, 'D.P.ed', 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(86, 77, 'M.A. Economics', 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(87, 78, 'B.Sc', 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(88, 78, 'B. Ed', 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(89, 79, 'B.Sc', 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(90, 79, 'B. Ed', 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(91, 80, 'B.COM', 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(92, 80, 'D.EL.ED', 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(93, 80, 'Montessori Certificate course', 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(94, 81, 'B.Sc', 1, '2022-09-21 11:28:55', '2022-09-21 11:28:55'),
(95, 81, 'M.SC', 1, '2022-09-21 11:28:55', '2022-09-21 11:28:55'),
(96, 81, 'M.PHIL', 1, '2022-09-21 11:28:55', '2022-09-21 11:28:55'),
(97, 82, 'B.Sc', 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(98, 82, 'M.SC', 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(99, 82, 'B. Ed', 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(100, 83, 'B.C.A', 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(101, 83, 'D.EL.ED', 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(102, 84, 'B.Sc', 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(103, 84, 'M.A', 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(104, 85, 'B.A. Economics', 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(105, 85, 'M.A., Eco.', 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(106, 85, 'B. Ed', 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(107, 86, 'NURSERY TEACHER TRAINED', 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(108, 87, 'B.A', 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(109, 87, 'M.A', 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(110, 87, 'B. Ed', 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(111, 88, 'DTED', 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(112, 88, 'B,Lit', 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(113, 88, 'M.A', 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(114, 89, 'B.A. Economics', 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(115, 89, 'D.P.ed', 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(116, 89, 'M.A. Economics', 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(117, 90, 'B.Sc', 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(118, 90, 'B. Ed', 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(119, 91, 'B.Sc', 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(120, 91, 'B. Ed', 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(121, 92, 'B.COM', 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(122, 92, 'D.EL.ED', 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(123, 92, 'Montessori Certificate course', 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58');

-- --------------------------------------------------------

--
-- Table structure for table `staffseduclgdetails`
--

CREATE TABLE `staffseduclgdetails` (
  `id` int(11) NOT NULL,
  `staff_edu_id` int(11) NOT NULL,
  `collegeName` varchar(255) DEFAULT NULL,
  `passedYear` year(4) DEFAULT NULL,
  `percentage` varchar(255) DEFAULT NULL,
  `degree_grade` varchar(255) DEFAULT NULL,
  `degree_class` varchar(255) DEFAULT NULL COMMENT 'First, Second Class',
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staffseduclgdetails`
--

INSERT INTO `staffseduclgdetails` (`id`, `staff_edu_id`, `collegeName`, `passedYear`, `percentage`, `degree_grade`, `degree_class`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, NULL, NULL, NULL, NULL, NULL, 1, '2022-08-20 10:58:53', '2022-08-20 10:58:53'),
(2, 4, NULL, NULL, NULL, NULL, NULL, 1, '2022-08-20 12:32:08', '2022-08-20 12:32:08'),
(3, 5, NULL, 2006, '53', NULL, 'Second Class', 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(4, 6, NULL, 2008, '68', NULL, 'First class', 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(5, 7, NULL, 2009, '66', NULL, 'First class', 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(6, 8, NULL, 2010, '89', NULL, 'First Class with distinction', 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(7, 9, NULL, 2012, '66', NULL, 'First class', 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(8, 10, NULL, 2013, '78', NULL, 'First class', 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(9, 11, NULL, 2009, '61', NULL, 'First class', 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(10, 12, NULL, 2019, '81', NULL, 'First class', 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(11, 13, NULL, 2018, '70', NULL, 'First Class', 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(12, 14, NULL, 2023, NULL, NULL, NULL, 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(13, 15, NULL, 2001, '54', NULL, 'Second Class', 1, '2022-09-21 07:56:48', '2022-09-21 07:56:48'),
(14, 16, NULL, 2007, '51', NULL, 'Second Class', 1, '2022-09-21 07:56:48', '2022-09-21 07:56:48'),
(15, 17, NULL, 2011, '75', NULL, 'First class', 1, '2022-09-21 07:56:48', '2022-09-21 07:56:48'),
(16, 18, NULL, 1997, '45', NULL, 'Second Class', 1, '2022-09-21 07:56:48', '2022-09-21 07:56:48'),
(17, 19, NULL, 2001, '55', NULL, 'Second Class', 1, '2022-09-21 07:56:48', '2022-09-21 07:56:48'),
(18, 20, NULL, 2009, '75', NULL, 'First Class with distinction', 1, '2022-09-21 07:56:48', '2022-09-21 07:56:48'),
(19, 21, NULL, 2012, '83', NULL, NULL, 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(20, 22, NULL, 2018, '62', NULL, 'First class', 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(21, 23, NULL, 2020, NULL, NULL, NULL, 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(22, 24, NULL, 2007, '68', NULL, 'First class', 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(23, 25, NULL, 2014, '84', NULL, 'First Class with distinction', 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(24, 26, NULL, 2021, '81', NULL, 'First Class with distinction', 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(25, 27, NULL, 2018, '69', NULL, 'First Class', 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(26, 28, NULL, 2020, '83', NULL, 'First class', 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(27, 29, NULL, 2005, '68', NULL, 'First Class', 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(28, 30, NULL, 2011, '81', NULL, 'First class', 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(29, 31, NULL, 2017, '62', NULL, 'Second Class', 1, '2022-09-21 07:56:50', '2022-09-21 07:56:50'),
(30, 32, NULL, 2019, '71', NULL, 'Second Class', 1, '2022-09-21 07:56:50', '2022-09-21 07:56:50'),
(31, 33, NULL, 2018, '78', NULL, 'Second Class', 1, '2022-09-21 07:56:50', '2022-09-21 07:56:50'),
(32, 34, NULL, 2006, '53', NULL, 'Second Class', 1, '2022-09-21 08:20:15', '2022-09-21 08:20:15'),
(33, 35, NULL, 2008, '68', NULL, 'First class', 1, '2022-09-21 08:20:15', '2022-09-21 08:20:15'),
(34, 36, NULL, 2009, '66', NULL, 'First class', 1, '2022-09-21 08:20:15', '2022-09-21 08:20:15'),
(35, 37, NULL, 2010, '89', NULL, 'First Class with distinction', 1, '2022-09-21 08:20:15', '2022-09-21 08:20:15'),
(36, 38, NULL, 2012, '66', NULL, 'First class', 1, '2022-09-21 08:20:15', '2022-09-21 08:20:15'),
(37, 39, NULL, 2013, '78', NULL, 'First class', 1, '2022-09-21 08:20:15', '2022-09-21 08:20:15'),
(38, 40, NULL, 2009, '61', NULL, 'First class', 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(39, 41, NULL, 2019, '81', NULL, 'First class', 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(40, 42, NULL, 2018, '70', NULL, 'First Class', 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(41, 43, NULL, 2023, NULL, NULL, NULL, 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(42, 44, NULL, 2001, '54', NULL, 'Second Class', 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(43, 45, NULL, 2007, '51', NULL, 'Second Class', 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(44, 46, NULL, 2011, '75', NULL, 'First class', 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(45, 47, NULL, 1982, '85', NULL, 'First Class', 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(46, 48, NULL, 1997, '45', NULL, 'Second Class', 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(47, 49, NULL, 2001, '55', NULL, 'Second Class', 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(48, 50, NULL, 2009, '75', NULL, 'First Class with distinction', 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(49, 51, NULL, 2012, '83', NULL, NULL, 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(50, 52, NULL, 2018, '62', NULL, 'First class', 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(51, 53, NULL, 2020, NULL, NULL, NULL, 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(52, 54, NULL, 2007, '68', NULL, 'First class', 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(53, 55, NULL, 2014, '84', NULL, 'First Class with distinction', 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(54, 56, NULL, 2021, '81', NULL, 'First Class with distinction', 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(55, 57, NULL, 2018, '69', NULL, 'First Class', 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(56, 58, NULL, 2020, '83', NULL, 'First class', 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(57, 59, NULL, 2005, '68', NULL, 'First Class', 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(58, 60, NULL, 2011, '81', NULL, 'First class', 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(59, 61, NULL, 2017, '62', NULL, 'Second Class', 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(60, 62, NULL, 2019, '71', NULL, 'Second Class', 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(61, 63, NULL, 2018, '78', NULL, 'Second Class', 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(62, 64, NULL, 2006, '53', NULL, 'Second Class', 1, '2022-09-21 10:50:14', '2022-09-21 10:50:14'),
(63, 65, NULL, 2008, '68', NULL, 'First class', 1, '2022-09-21 10:50:14', '2022-09-21 10:50:14'),
(64, 66, NULL, 2009, '66', NULL, 'First class', 1, '2022-09-21 10:50:14', '2022-09-21 10:50:14'),
(65, 67, NULL, 2010, '89', NULL, 'First Class with distinction', 1, '2022-09-21 10:50:14', '2022-09-21 10:50:14'),
(66, 68, NULL, 2012, '66', NULL, 'First class', 1, '2022-09-21 10:50:14', '2022-09-21 10:50:14'),
(67, 69, NULL, 2013, '78', NULL, 'First class', 1, '2022-09-21 10:50:14', '2022-09-21 10:50:14'),
(68, 70, NULL, 2009, '61', NULL, 'First class', 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(69, 71, NULL, 2019, '81', NULL, 'First class', 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(70, 72, NULL, 2018, '70', NULL, 'First Class', 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(71, 73, NULL, 2023, NULL, NULL, NULL, 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(72, 74, NULL, 2001, '54', NULL, 'Second Class', 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(73, 75, NULL, 2007, '51', NULL, 'Second Class', 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(74, 76, NULL, 2011, '75', NULL, 'First class', 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(75, 77, NULL, 1982, '85', NULL, 'First Class', 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(76, 78, NULL, 1997, '45', NULL, 'Second Class', 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(77, 79, NULL, 2001, '55', NULL, 'Second Class', 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(78, 80, NULL, 2009, '75', NULL, 'First Class with distinction', 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(79, 81, NULL, 2012, '83', NULL, NULL, 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(80, 82, NULL, 2018, '62', NULL, 'First class', 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(81, 83, NULL, 2020, NULL, NULL, NULL, 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(82, 84, NULL, 2007, '68', NULL, 'First class', 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(83, 85, NULL, 2014, '84', NULL, 'First Class with distinction', 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(84, 86, NULL, 2021, '81', NULL, 'First Class with distinction', 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(85, 87, NULL, 2018, '69', NULL, 'First Class', 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(86, 88, NULL, 2020, '83', NULL, 'First class', 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(87, 89, NULL, 2005, '68', NULL, 'First Class', 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(88, 90, NULL, 2011, '81', NULL, 'First class', 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(89, 91, NULL, 2017, '62', NULL, 'Second Class', 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(90, 92, NULL, 2019, '71', NULL, 'Second Class', 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(91, 93, NULL, 2018, '78', NULL, 'Second Class', 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(92, 94, NULL, 2006, '53', NULL, 'Second Class', 1, '2022-09-21 11:28:55', '2022-09-21 11:28:55'),
(93, 95, NULL, 2008, '68', NULL, 'First class', 1, '2022-09-21 11:28:55', '2022-09-21 11:28:55'),
(94, 96, NULL, 2009, '66', NULL, 'First class', 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(95, 97, NULL, 2010, '89', NULL, 'First Class with distinction', 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(96, 98, NULL, 2012, '66', NULL, 'First class', 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(97, 99, NULL, 2013, '78', NULL, 'First class', 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(98, 100, NULL, 2009, '61', NULL, 'First class', 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(99, 101, NULL, 2019, '81', NULL, 'First class', 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(100, 102, NULL, 2018, '70', NULL, 'First Class', 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(101, 103, NULL, 2023, NULL, NULL, NULL, 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(102, 104, NULL, 2001, '54', NULL, 'Second Class', 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(103, 105, NULL, 2007, '51', NULL, 'Second Class', 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(104, 106, NULL, 2011, '75', NULL, 'First class', 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(105, 107, NULL, 1982, '85', NULL, 'First Class', 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(106, 108, NULL, 1997, '45', NULL, 'Second Class', 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(107, 109, NULL, 2001, '55', NULL, 'Second Class', 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(108, 110, NULL, 2009, '75', NULL, 'First Class with distinction', 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(109, 111, NULL, 2012, '83', NULL, NULL, 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(110, 112, NULL, 2018, '62', NULL, 'First class', 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(111, 113, NULL, 2020, NULL, NULL, NULL, 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(112, 114, NULL, 2007, '68', NULL, 'First class', 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(113, 115, NULL, 2014, '84', NULL, 'First Class with distinction', 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(114, 116, NULL, 2021, '81', NULL, 'First Class with distinction', 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(115, 117, NULL, 2018, '69', NULL, 'First Class', 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(116, 118, NULL, 2020, '83', NULL, 'First class', 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(117, 119, NULL, 2005, '68', NULL, 'First Class', 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(118, 120, NULL, 2011, '81', NULL, 'First class', 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(119, 121, NULL, 2017, '62', NULL, 'Second Class', 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(120, 122, NULL, 2019, '71', NULL, 'Second Class', 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(121, 123, NULL, 2018, '78', NULL, 'Second Class', 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58');

-- --------------------------------------------------------

--
-- Table structure for table `staff_details`
--

CREATE TABLE `staff_details` (
  `id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `dateOfHiring` date DEFAULT NULL,
  `yearsOfExp` int(11) NOT NULL DEFAULT 0,
  `staffType` int(11) DEFAULT NULL COMMENT '1-Teaching,\r\n2-Non-Teaching',
  `designation` varchar(255) DEFAULT NULL,
  `speciality` varchar(255) DEFAULT NULL,
  `reporting_to` varchar(255) DEFAULT NULL,
  `idCardNo` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_details`
--

INSERT INTO `staff_details` (`id`, `org_id`, `staff_id`, `dateOfHiring`, `yearsOfExp`, `staffType`, `designation`, `speciality`, `reporting_to`, `idCardNo`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2014-08-06', 12, 1, 'PG Asst', 'English', NULL, '43', 1, '2022-08-06 13:34:56', '2022-08-06 13:34:56'),
(2, 1, 2, '2022-08-03', 5, 1, 'PG Asst', 'Maths', NULL, '36', 1, '2022-08-10 14:06:21', '2022-08-10 14:06:21'),
(6, 1, 8, NULL, 5, 1, 'PG Asst', 'null', 'Head Master', NULL, 1, '2022-08-20 10:58:53', '2022-08-20 10:58:53'),
(7, 1, 9, NULL, 10, 1, 'PG Asst', 'null', 'Head Master', NULL, 1, '2022-08-20 12:32:08', '2022-08-20 12:32:08'),
(8, 1, 10, NULL, 13, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(9, 1, 11, NULL, 7, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(10, 1, 12, NULL, 9, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(11, 1, 13, NULL, 1, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 07:56:47', '2022-09-21 07:56:47'),
(12, 1, 14, NULL, 11, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 07:56:48', '2022-09-21 07:56:48'),
(13, 1, 15, NULL, 20, 1, 'HEADMISTRESS', NULL, NULL, NULL, 1, '2022-09-21 07:56:48', '2022-09-21 07:56:48'),
(14, 1, 16, NULL, 10, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(15, 1, 17, NULL, 13, 1, 'Teacher & Primary Coordinator', NULL, NULL, NULL, 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(16, 1, 18, NULL, 3, 1, 'Drawing Teacher', NULL, NULL, NULL, 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(17, 1, 19, NULL, 15, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 07:56:49', '2022-09-21 07:56:49'),
(18, 1, 20, NULL, 21, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 07:56:50', '2022-09-21 07:56:50'),
(19, 1, 21, NULL, 13, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 08:20:15', '2022-09-21 08:20:15'),
(20, 1, 22, NULL, 7, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 08:20:15', '2022-09-21 08:20:15'),
(21, 1, 23, NULL, 9, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(22, 1, 24, NULL, 1, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(23, 1, 25, NULL, 11, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(24, 1, 26, NULL, 21, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 08:20:16', '2022-09-21 08:20:16'),
(25, 1, 27, NULL, 20, 1, 'HEADMISTRESS', NULL, NULL, NULL, 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(26, 1, 28, NULL, 10, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(27, 1, 29, NULL, 13, 1, 'Teacher & Primary Coordinator', NULL, NULL, NULL, 1, '2022-09-21 08:20:17', '2022-09-21 08:20:17'),
(28, 1, 30, NULL, 3, 1, 'Drawing Teacher', NULL, NULL, NULL, 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(29, 1, 31, NULL, 15, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(30, 1, 32, NULL, 21, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 08:20:18', '2022-09-21 08:20:18'),
(31, 1, 69, NULL, 13, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 10:50:14', '2022-09-21 10:50:14'),
(32, 1, 70, NULL, 7, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 10:50:14', '2022-09-21 10:50:14'),
(33, 1, 71, NULL, 9, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(34, 1, 72, NULL, 1, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(35, 1, 73, NULL, 11, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(36, 1, 74, NULL, 21, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 10:50:15', '2022-09-21 10:50:15'),
(37, 1, 75, NULL, 20, 1, 'HEADMISTRESS', NULL, NULL, NULL, 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(38, 1, 76, NULL, 10, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(39, 1, 77, NULL, 13, 1, 'Teacher & Primary Coordinator', NULL, NULL, NULL, 1, '2022-09-21 10:50:16', '2022-09-21 10:50:16'),
(40, 1, 78, NULL, 3, 1, 'Drawing Teacher', NULL, NULL, NULL, 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(41, 1, 79, NULL, 15, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(42, 1, 80, NULL, 21, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 10:50:17', '2022-09-21 10:50:17'),
(43, 1, 81, NULL, 13, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 11:28:55', '2022-09-21 11:28:55'),
(44, 1, 82, NULL, 7, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(45, 1, 83, NULL, 9, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(46, 1, 84, NULL, 1, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(47, 1, 85, NULL, 11, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 11:28:56', '2022-09-21 11:28:56'),
(48, 1, 86, NULL, 21, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(49, 1, 87, NULL, 20, 1, 'HEADMISTRESS', NULL, NULL, NULL, 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(50, 1, 88, NULL, 10, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 11:28:57', '2022-09-21 11:28:57'),
(51, 1, 89, NULL, 13, 1, 'Teacher & Primary Coordinator', NULL, NULL, NULL, 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(52, 1, 90, NULL, 3, 1, 'Drawing Teacher', NULL, NULL, NULL, 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(53, 1, 91, NULL, 15, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58'),
(54, 1, 92, NULL, 21, 1, 'Teacher', NULL, NULL, NULL, 1, '2022-09-21 11:28:58', '2022-09-21 11:28:58');

-- --------------------------------------------------------

--
-- Table structure for table `standard_subjects`
--

CREATE TABLE `standard_subjects` (
  `std_subj_id` int(11) NOT NULL,
  `standard_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `standard_subjects`
--

INSERT INTO `standard_subjects` (`std_subj_id`, `standard_id`, `subject_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2022-09-19 13:37:05', '2022-09-19 13:37:05'),
(2, 1, 2, 1, '2022-09-19 13:37:05', '2022-09-19 13:37:05'),
(3, 5, 1, 1, '2022-09-19 13:38:51', '2022-09-19 13:38:51'),
(4, 5, 2, 1, '2022-09-19 13:38:51', '2022-09-19 13:38:51'),
(5, 5, 3, 1, '2022-09-19 13:38:51', '2022-09-19 13:38:51'),
(6, 5, 4, 1, '2022-09-19 13:39:16', '2022-09-19 13:39:16'),
(7, 5, 5, 1, '2022-09-19 13:39:16', '2022-09-19 13:39:16'),
(8, 1, 3, 1, '2022-09-19 13:37:05', '2022-09-19 13:37:05'),
(9, 1, 4, 1, '2022-09-20 10:05:50', '2022-09-20 10:05:50'),
(11, 1, 5, 1, '2022-09-20 10:06:03', '2022-09-20 10:06:03'),
(12, 2, 1, 1, '2022-09-20 10:06:03', '2022-09-20 10:06:03'),
(13, 2, 2, 1, '2022-09-20 10:06:03', '2022-09-20 10:06:03'),
(14, 2, 3, 1, '2022-09-20 10:06:53', '2022-09-20 10:06:53'),
(15, 2, 4, 1, '2022-09-20 10:06:53', '2022-09-20 10:06:53'),
(16, 2, 5, 1, '2022-09-20 10:07:04', '2022-09-20 10:07:04'),
(17, 3, 1, 1, '2022-09-20 10:07:04', '2022-09-20 10:07:04');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(2) NOT NULL,
  `statename` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `statename`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Andhra Pradesh', 1, '2022-07-06 18:25:50', '2022-07-17 00:33:15'),
(2, 'Assam', 1, '2022-07-06 18:25:50', '2022-07-06 18:25:50'),
(3, 'Bihar', 1, '2022-07-06 18:25:50', '2022-07-06 18:25:50'),
(4, 'Chandigarh', 1, '2022-07-06 18:25:50', '2022-07-06 18:25:50'),
(5, 'Chhattisgarh', 1, '2022-07-06 18:25:50', '2022-07-06 18:25:50'),
(6, 'Goa', 1, '2022-07-06 18:25:50', '2022-07-06 18:25:50'),
(7, 'Gujarat', 1, '2022-07-06 18:25:50', '2022-07-06 18:25:50'),
(8, 'Himachal Pradesh', 1, '2022-07-06 18:25:50', '2022-07-06 18:25:50'),
(9, 'Haryana', 1, '2022-07-06 18:25:50', '2022-07-06 18:25:50'),
(10, 'Jammu and Kashmir', 1, '2022-07-06 18:25:50', '2022-07-06 18:25:50'),
(11, 'Jharkhand', 1, '2022-07-06 18:25:50', '2022-07-06 18:25:50'),
(12, 'Karnataka', 1, '2022-07-06 18:25:50', '2022-07-06 18:25:50'),
(13, 'Kerala', 1, '2022-07-06 18:25:50', '2022-07-06 18:25:50'),
(14, 'Madhya Pradesh', 1, '2022-07-06 18:25:50', '2022-07-06 18:25:50'),
(15, 'Maharashta', 1, '2022-07-06 18:25:50', '2022-07-06 18:25:50'),
(16, 'Meghalaya', 1, '2022-07-06 18:25:50', '2022-07-06 18:25:50'),
(17, 'New Delhi', 1, '2022-07-06 18:25:50', '2022-07-06 18:25:50'),
(18, 'Odisha', 1, '2022-07-06 18:25:50', '2022-07-06 18:25:50'),
(19, 'Punjab', 1, '2022-07-06 18:25:50', '2022-07-06 18:25:50'),
(20, 'Puducherry', 1, '2022-07-06 18:25:50', '2022-07-06 18:25:50'),
(21, 'Rajasthan', 1, '2022-07-06 18:25:50', '2022-07-06 18:25:50'),
(22, 'Sikkim', 1, '2022-07-06 18:25:50', '2022-07-06 18:25:50'),
(23, 'Telangana', 1, '2022-07-06 18:25:50', '2022-07-06 18:25:50'),
(24, 'Tamil Nadu', 1, '2022-07-06 18:25:50', '2022-07-06 18:25:50'),
(25, 'Uttarakhand', 1, '2022-07-06 18:25:50', '2022-07-06 18:25:50'),
(26, 'Uttar Pradesh', 1, '2022-07-06 18:25:50', '2022-07-06 18:25:50'),
(27, 'West Bengal', 1, '2022-07-06 18:25:50', '2022-07-06 18:25:50');

-- --------------------------------------------------------

--
-- Table structure for table `studentdetails`
--

CREATE TABLE `studentdetails` (
  `stulId` int(11) NOT NULL,
  `stulStudentId` int(11) NOT NULL,
  `stulReligion` int(11) NOT NULL,
  `stulCommunity` int(11) NOT NULL,
  `stulSubCommunity` int(11) NOT NULL,
  `stulIsPhysicallyChallenged` tinyint(4) NOT NULL DEFAULT 0,
  `stulPhysicallyChallengedDetailsIf` text NOT NULL,
  `stulPlaceOfBirth` varchar(255) NOT NULL,
  `stulIsStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `stuId` int(11) NOT NULL,
  `stuUserId` int(11) NOT NULL,
  `stuFirstName` varchar(255) DEFAULT NULL,
  `stuLastName` varchar(255) DEFAULT NULL,
  `stuGender` int(11) DEFAULT NULL COMMENT '1-Male,\r\n2-Female,\r\n3-Others',
  `stuDOB` date DEFAULT NULL,
  `stuIsStatus` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`stuId`, `stuUserId`, `stuFirstName`, `stuLastName`, `stuGender`, `stuDOB`, `stuIsStatus`, `created_at`, `updated_at`) VALUES
(1, 11, 'Harikumar', 'Rajendran', 1, '1999-02-01', 0, '2022-06-05 03:12:10', '2022-09-29 08:08:38'),
(5, 15, 'Nithya', 'Shankar', 2, '2012-02-10', 1, '2022-07-04 02:48:12', '2022-07-04 02:48:12'),
(6, 19, 'Preethi', 'Saran', 2, '2022-08-08', 1, '2022-08-12 01:37:53', '2022-08-17 15:57:06'),
(7, 21, 'Arun', 'kumar', 1, '2022-08-04', 0, '2022-08-12 01:53:38', '2022-09-29 08:53:45'),
(11, 35, 'Nandha', 'Subramanian', 1, '1984-06-13', 1, '2022-08-22 12:16:43', '2022-08-22 12:16:43'),
(12, 36, 'Ragu', 'Saminathan', 1, '2015-06-13', 0, '2022-08-29 06:32:42', '2022-09-29 10:55:25'),
(13, 37, 'Venkadesh', 'S', 1, '2019-08-07', 1, '2022-09-03 04:38:33', '2022-09-03 04:38:33'),
(464, 1846, 'V.ANTO', 'V.', 1, NULL, 1, '2022-09-21 00:54:37', '2022-09-21 00:54:37'),
(465, 1847, 'V.RAKSHAN', 'V.', 1, NULL, 1, '2022-09-21 00:54:37', '2022-09-21 00:54:37'),
(466, 1848, 'D.SAMUEL', 'D.', 1, NULL, 1, '2022-09-21 00:54:37', '2022-09-21 00:54:37'),
(467, 1849, 'S.YECOP', 'S.', 1, NULL, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(468, 1850, 'R.YASEETH', 'R.', 1, NULL, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(469, 1851, 'K.SURENTHAR', 'K.', 1, NULL, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(470, 1852, 'S.SAIDEV', 'S.', 1, NULL, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(471, 1853, 'S.THANISH', 'S.', 1, NULL, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(472, 1854, 'S.GOWSHIKNATH', 'S.', 1, NULL, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(473, 1855, 'K.LOKESH', 'K.', 1, NULL, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(474, 1856, 'L.HEMANTHJOSHVA', 'L', 1, NULL, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(475, 1857, 'A.SHARWIN', 'A', 1, NULL, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(476, 1858, 'S.YUVANKUMAR', 'S.', 1, NULL, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(477, 1859, 'R.K. ISHANTHKUMAR', 'R. K.', 1, NULL, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(478, 1860, 'S.DINESHWARAN', 'S.', 1, NULL, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(479, 1861, 'G.HARISH', 'G', 1, NULL, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(480, 1862, 'P.AROKIYA MOSES CRYIL', 'P', 1, NULL, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(481, 1863, 'J.FEROZ KHAN', 'J.', 1, NULL, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(482, 1864, 'T.ARUNA SREE', 'T.', 2, NULL, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(483, 1865, 'P.KAMAZHINI', 'R.', 2, NULL, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(484, 1866, 'S.JOY SOFIYA', 'DISCONTINUED', 2, NULL, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(485, 1867, 'R.ASHRA', 'R.', 2, NULL, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(486, 1868, 'V.NITHISHA', 'V.', 2, NULL, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(487, 1869, 'R.SHIVANI', 'R.', 2, NULL, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(488, 1870, 'G.RITHISHA', 'G.', 2, NULL, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(489, 1871, 'S.PREETHIKA RANI', 'S.', 2, NULL, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(490, 1872, 'J.RAKSHITHA', 'J.', 2, NULL, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(491, 1873, 'L.RUTHRA DEVI', 'L.', 2, NULL, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(492, 1874, 'S.PRETHIKA', 'S.', 2, NULL, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(493, 1875, 'V.HITHIKSHA', 'V.', 2, NULL, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(494, 1876, 'P.ASVITHA', 'P.', 2, NULL, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(495, 1877, 'P.PRITHIKA', 'P.', 2, NULL, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(496, 1878, 'K.VAISHNAVI', 'K.', 2, NULL, 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(497, 1879, 'R.RANJITHA', 'R.', 2, NULL, 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(498, 1880, 'V.MOSHIKA SRI', 'DISCONTINUED', 2, NULL, 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(499, 1881, 'C.HARSHINI', 'V.', 2, NULL, 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(500, 1882, 'L.MONISHA', 'L.', 2, NULL, 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(501, 1883, 'G.KANISHKA', 'G.', 2, NULL, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(502, 1884, 'G.DHANSHIKA', 'G.', 2, NULL, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(503, 1885, 'K.JEEVITHA', 'K.', 2, NULL, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(504, 1886, 'Aswin', 'K.', 1, NULL, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(505, 1887, 'Aathish', 'V.', 1, NULL, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(506, 1888, 'Dharshan', 'A.', 1, NULL, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(507, 1889, 'Eswaran', 'S.', 1, NULL, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(508, 1890, 'Harish', 'R.', 1, NULL, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(509, 1891, 'Kevin', 'P.', 1, NULL, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(510, 1892, 'Koushik', 'S.', 1, NULL, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(511, 1893, 'Kavinesh', 'V.', 1, NULL, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(512, 1894, 'Linkesh', 'B.', 1, NULL, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(513, 1895, 'Magihan', 'C.', 1, NULL, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(514, 1896, 'Naveen', 'V.', 1, NULL, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(515, 1897, 'Sajith', 'N.', 1, NULL, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(516, 1898, 'Sashwanth', 'R.', 1, NULL, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(517, 1899, 'Yadesh', 'D.', 1, NULL, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(518, 1900, 'Prathish', 'K.', 1, NULL, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(519, 1901, 'Anushya', 'V.', 2, NULL, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(520, 1902, 'Anu Priya', 'R. V', 2, NULL, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(521, 1903, 'Ashwini', 'S.', 2, NULL, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(522, 1904, 'Dhaarani', 'M.', 2, NULL, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(523, 1905, 'Dhanushka', 'N.', 2, NULL, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(524, 1906, 'Hannah', 'E.', 2, NULL, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(525, 1907, 'Harsika', 'V.', 2, NULL, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(526, 1908, 'Hema Sri', 'I.', 2, NULL, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(527, 1909, 'Janani', 'S.', 2, NULL, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(528, 1910, 'Jayasrika', 'A.', 2, NULL, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(529, 1911, 'Jessica', 'R.', 2, NULL, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(530, 1912, 'Kamala Rakshitha', 'V.', 2, NULL, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(531, 1913, 'Kamala Shree', 'V.', 2, NULL, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(532, 1914, 'Kaviya', 'K.', 2, NULL, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(533, 1915, 'Monika', 'K.', 2, NULL, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(534, 1916, 'Mythravi', 'T.', 2, NULL, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(535, 1917, 'Ragini', 'G.', 2, NULL, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(536, 1918, 'Tarika', 'T.', 2, NULL, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(537, 1919, 'Thansika', 'T.', 2, NULL, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(538, 1920, 'Umaira', 'J.', 2, NULL, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(539, 1921, 'Vikkitha', 'V.', 2, NULL, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(540, 1922, 'Vinodhini', 'S.', 2, NULL, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(541, 1923, 'Yashmitha', 'S.', 2, NULL, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(542, 1924, 'Yuvashree', 'I.', 2, NULL, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(543, 1925, 'Deepadhashan S', 'S', 1, NULL, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(544, 1926, 'Dharun M', 'M', 1, NULL, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(545, 1927, 'Dhaswin B', 'B', 1, NULL, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(546, 1928, 'Gokul P', 'P', 1, NULL, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(547, 1929, 'Gowthem D', 'D', 1, NULL, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(548, 1930, 'Harishwaran K', 'K', 1, NULL, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(549, 1931, 'Jaseeth A', 'A', 1, NULL, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(550, 1932, 'Kavikishore V', 'V', 1, NULL, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(551, 1933, 'Mugilan sai V', 'V', 1, NULL, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(552, 1934, 'Raja A', 'A', 1, NULL, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(553, 1935, 'Sandeep P', 'P', 1, NULL, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(554, 1936, 'Santhosh kumar G', 'G', 1, NULL, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(555, 1937, 'Siddharth abimanyu V', 'V', 1, NULL, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(556, 1938, 'Vigneshwaran S', 'S', 1, NULL, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(557, 1939, 'Yadesh B', 'B', 1, NULL, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(558, 1940, 'Yanishwaran S', 'S', 1, NULL, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(559, 1941, 'Akshaya .M', 'M', 2, NULL, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(560, 1942, 'Arul nikitha . N', 'A', 2, NULL, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(561, 1943, 'Aswitha A', 'A', 2, NULL, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(562, 1944, 'Bavadharani V', 'V', 2, NULL, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(563, 1945, 'Dhanushka sri G', 'G', 2, NULL, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(564, 1946, 'Dhurga devi P', 'P', 2, NULL, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(565, 1947, 'Dhulasi sri D', 'D', 2, NULL, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(566, 1948, 'Diya R', 'R', 2, NULL, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(567, 1949, 'Hansi K', 'S', 2, NULL, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(568, 1950, 'Janani S', 'S', 2, NULL, 1, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(569, 1951, 'Nainika V', 'V', 2, NULL, 1, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(570, 1952, 'Nivethana B', 'B', 2, NULL, 1, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(571, 1953, 'Praganya K', 'K', 2, NULL, 1, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(572, 1954, 'Prithika devi M', 'M', 2, NULL, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(573, 1955, 'Princy J', 'J', 2, NULL, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(574, 1956, 'Rithikashwari', 'D', 2, NULL, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(575, 1957, 'Rithika sri R', 'V', 2, NULL, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(576, 1958, 'Saidhanyasri B', 'B', 2, NULL, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(577, 1959, 'Samyuktha D', 'S', 2, NULL, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(578, 1960, 'Sathana P', 'P', 2, NULL, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(579, 1961, 'Safrin banu T', 'T', 2, NULL, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(580, 1962, 'Shamli D', 'D', 2, NULL, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(581, 1963, 'Subashini S', 'S', 2, NULL, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(582, 1964, 'Swathisri M', 'M', 2, NULL, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(583, 1965, 'Vithika S', 'S', 2, NULL, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(584, 1966, 'AGILAN', 'M', 1, NULL, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(585, 1967, 'JEEVA', 'N', 1, NULL, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(586, 1968, 'JOEL', 'B', 1, NULL, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(587, 1969, 'KAMALESWARAN', 'A', 1, NULL, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(588, 1970, 'LEVINJAI', 'P', 1, NULL, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(589, 1971, 'LINGESH', 'B', 1, NULL, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(590, 1972, 'MUKESHKANNA', 'P', 1, NULL, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(591, 1973, 'NIJITH', 'R', 1, NULL, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(592, 1974, 'NITHISH', 'P', 1, NULL, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(593, 1975, 'RAHUL', 'A.R', 1, NULL, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(594, 1976, 'RAGHAVA', 'S', 1, NULL, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(595, 1977, 'RAKESH', 'R', 1, NULL, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(596, 1978, 'ROSHAN', 'K', 1, NULL, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(597, 1979, 'SANJEEVAHARI', 'R', 1, NULL, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(598, 1980, 'SANJAY', 'M.S', 1, NULL, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(599, 1981, 'VARUN', 'S', 1, NULL, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(600, 1982, 'AKSHAYA', 'B', 2, NULL, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(601, 1983, 'ANSHI', 'S', 2, NULL, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(602, 1984, 'ASHVITHA', 'V', 2, NULL, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(603, 1985, 'DEEPAKSHA', 'S', 2, NULL, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(604, 1986, 'DANUSRI', 'M', 2, NULL, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(605, 1987, 'DHANSIKA', 'N', 2, NULL, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(606, 1988, 'HARINI', 'S', 2, NULL, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(607, 1989, 'ISHRAT', 'N', 2, NULL, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(608, 1990, 'JESSY', 'A', 2, NULL, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(609, 1991, 'JOCELINJOYS', 'S', 2, NULL, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(610, 1992, 'KRISHIKA', 'V', 2, NULL, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(611, 1993, 'LAKSHAYA', 'T', 2, NULL, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(612, 1994, 'RAKSHITHA', 'V', 2, NULL, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(613, 1995, 'SANA', 'S', 2, NULL, 1, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(614, 1996, 'SHALINI', 'R', 2, NULL, 1, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(615, 1997, 'SOWMYA', 'K', 2, NULL, 1, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(616, 1998, 'VERNIKASAI', 'S.M', 2, NULL, 1, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(617, 1999, 'YOGESHWARI', 'D', 2, NULL, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(618, 2000, 'SYED ISMATH RISHANA', 'I', 2, NULL, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(619, 2001, 'ABINASH D', NULL, 1, NULL, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(620, 2002, 'DHANUSH V', NULL, 1, NULL, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(621, 2003, 'DIVINESH P', NULL, 1, NULL, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(622, 2004, 'GOKUL.M', NULL, 1, NULL, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(623, 2005, 'KADHIR SIVAN. K.', NULL, 1, NULL, 1, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(624, 2006, 'MONISH V.', NULL, 1, NULL, 1, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(625, 2007, 'NITHISH .I.', NULL, 1, NULL, 1, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(626, 2008, 'NITHISH .R', NULL, 1, NULL, 1, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(627, 2009, 'NITHESH MATHEW.B', NULL, 1, NULL, 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(628, 2010, 'PRASANNA. S.', NULL, 1, NULL, 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(629, 2011, 'PRAVEEN. K.', NULL, 1, NULL, 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(630, 2012, 'PURUSHOTHAMAN.G.', NULL, 1, NULL, 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(631, 2013, 'ROHITH. R.', NULL, 1, NULL, 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(632, 2014, 'SHAI SHARAN. S. M.', NULL, 1, NULL, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(633, 2015, 'TARUN. V', NULL, 1, NULL, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(634, 2016, 'VARUN KUMAR S', NULL, 1, NULL, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(635, 2017, 'YASHWA.A.', NULL, 1, NULL, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(636, 2018, 'ANTO GLAINSIYA. A', NULL, 2, NULL, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(637, 2019, 'AYISHA BANU', NULL, 2, NULL, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(638, 2020, 'BINDHU SRI V.', NULL, 2, NULL, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(639, 2021, 'BRASILLA SHINI .P.', NULL, 2, NULL, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(640, 2022, 'HEPSIBA. D.', NULL, 2, NULL, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(641, 2023, 'JITHISHA.P', NULL, 2, NULL, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(642, 2024, 'LAKSHMI PRIYA. R', NULL, 2, NULL, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(643, 2025, 'SADHANA M.S', NULL, 2, NULL, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(644, 2026, 'SANJANA M S', NULL, 2, NULL, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(645, 2027, 'SUBA SHREE.R', NULL, 2, NULL, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(646, 2028, 'VIJAYALASKHMI D', NULL, 2, NULL, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(647, 2029, 'DURGA D', NULL, 2, NULL, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(648, 2030, 'KIRITHIKA. P.', NULL, 2, NULL, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(649, 2031, 'VARSHINI SANCHANA S', NULL, 2, NULL, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(650, 2032, 'OVIYASREE', NULL, 2, NULL, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(651, 2033, 'AJITHA', NULL, 2, NULL, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(652, 2034, 'DEVIPRIYA', NULL, 2, NULL, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(653, 2035, 'MOWNITHA', NULL, 2, NULL, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(654, 2036, 'S. TEJA SHREE', NULL, 2, NULL, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(655, 2037, 'V. KEREN VINO', NULL, 2, NULL, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(656, 2038, 'Ajay', 'K', 1, NULL, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(657, 2039, 'Agathiyan', 'R', 1, NULL, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(658, 2040, 'Ashwin', 'A', 1, NULL, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(659, 2041, 'Diwakar', 'M', 1, NULL, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(660, 2042, 'Jebin smith', 'S', 1, NULL, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(661, 2043, 'Moses', 'D', 1, NULL, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(662, 2044, 'Ragav', 'P', 1, NULL, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(663, 2045, 'Sri Ram', 'V', 1, NULL, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(664, 2046, 'Tarun', 'M', 1, NULL, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(665, 2047, 'Yaswanth', 'G', 1, NULL, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(666, 2048, 'Anishkumar', 'K', 1, NULL, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(667, 2049, 'Varun', 'M', 1, NULL, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(668, 2050, 'Niranjan', 'K', 1, NULL, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(669, 2051, 'Karthikannan', 'K', 1, NULL, 1, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(670, 2052, 'Sham', 'S', 1, NULL, 1, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(671, 2053, 'Kavinkumar', 'K', 1, NULL, 1, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(672, 2054, 'Angel', 'M', 2, NULL, 1, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(673, 2055, 'Dharshini', 'S', 2, NULL, 1, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(674, 2056, 'Daaniya Anjum', 'I', 2, NULL, 1, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(675, 2057, 'Haasini Priya', 'K', 2, NULL, 1, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(676, 2058, 'Dharsini', 'V', 2, NULL, 1, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(677, 2059, 'Keerthana', 'G', 2, NULL, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(678, 2060, 'Indrasena', 'B', 2, NULL, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(679, 2061, 'Lekhasri', 'S', 2, NULL, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(680, 2062, 'Laksnana', 'S', 2, NULL, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(681, 2063, 'Prathisa', 'U', 2, NULL, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(682, 2064, 'Merlina', 'M', 2, NULL, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(683, 2065, 'Priya Dharshini', 'D', 2, NULL, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(684, 2066, 'Ritha', 'B', 2, NULL, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(685, 2067, 'Yuventhika', 'K', 2, NULL, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(686, 2068, 'Sujatha', 'P', 2, NULL, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(687, 2069, 'Geethasree', 'S.V', 2, NULL, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(688, 2070, 'Durganandini', 'D', 2, NULL, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(689, 2071, 'Pooja Sri', 'M', 2, NULL, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(690, 2072, 'Harini', 'M', 2, NULL, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(691, 2073, 'Sanjana', 'V', 2, NULL, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(692, 2074, 'Ashwin', 'K', 1, NULL, 0, '2022-09-21 00:55:21', '2022-10-05 12:58:52'),
(693, 2075, 'Kamalesh', 'V', 1, NULL, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(694, 2076, 'Kashif Basha', 'S', 1, NULL, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(695, 2077, 'Koushik', 'G', 1, NULL, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(696, 2078, 'Lavien Rosan', 'V', 1, NULL, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(697, 2079, 'Lohit', 'M.J', 1, NULL, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(698, 2080, 'Nithish Kumar', 'P', 1, NULL, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(699, 2081, 'Ryan Sherif', 'A', 1, NULL, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(700, 2082, 'Santhosh', 'M', 1, NULL, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(701, 2083, 'Santhosh Kumar', 'S.V', 1, NULL, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(702, 2084, 'Somnath', 'S', 1, NULL, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(703, 2085, 'Vanish', 'V', 1, NULL, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(704, 2086, 'Balaji', 'P', 1, NULL, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(705, 2087, 'Ashwanth', 'M', 1, NULL, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(706, 2088, 'Aashika Sherlin', 'I', 2, NULL, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(707, 2089, 'Divya Sri', 'S', 2, NULL, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(708, 2090, 'Donishia', 'V', 2, NULL, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(709, 2091, 'Getzial Sharon', 'S', 2, NULL, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(710, 2092, 'Jackuline', 'J', 2, NULL, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(711, 2093, 'Jesika', 'G', 2, NULL, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(712, 2094, 'Karishma', 'M.S', 2, NULL, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(713, 2095, 'Keerthika', 'S', 2, NULL, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(714, 2096, 'Lavanya', 'R', 2, NULL, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(715, 2097, 'Leena', 'M', 2, NULL, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(716, 2098, 'Lisa Shalini', 'R', 2, NULL, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(717, 2099, 'Nithiya Sri', 'M', 2, NULL, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(718, 2100, 'Oviya', 'S', 2, NULL, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(719, 2101, 'Priyadharshana', 'P', 2, NULL, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(720, 2102, 'Rakshana', 'R', 2, NULL, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(721, 2103, 'Raffiya Fathima', 'N', 2, NULL, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(722, 2104, 'Ramya', 'R', 2, NULL, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(723, 2105, 'Rakshidha', 'V', 2, NULL, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(724, 2106, 'Rithika', 'P', 2, NULL, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(725, 2107, 'Rubika', 'S', 2, NULL, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(726, 2108, 'Sanjana', 'S', 2, NULL, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(727, 2109, 'Sandhiya', 'R', 2, NULL, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(728, 2110, 'Sivasir', 'I', 2, NULL, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(729, 2111, 'Syed Ismath Rihana', 'I', 2, NULL, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(730, 2112, 'Yazhini', 'I', 2, NULL, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(731, 2113, 'Yazhini', 'J', 2, NULL, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(732, 2114, 'AFIYA', 'R', 2, NULL, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(733, 2115, 'AMUDHA', 'M', 2, NULL, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(734, 2116, 'ANGEL A', 'A', 2, NULL, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(735, 2117, 'ASINA BEGAM', 'S', 2, NULL, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(736, 2118, 'ASWIN', 'S', 1, NULL, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(737, 2119, 'B RAKSHANA', 'B', 2, NULL, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(738, 2120, 'DEEPAK KUMAR', 'K', 1, NULL, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(739, 2121, 'DEEPIKA S', 'S', 2, NULL, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(740, 2122, 'DHANUSKODI S', 'S', 1, NULL, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(741, 2123, 'ENOCH', 'S', 1, NULL, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(742, 2124, 'HARITHA H', 'H', 2, NULL, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(743, 2125, 'HASINI', 'P', 2, NULL, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(744, 2126, 'ILAKKIYA', 'S', 2, NULL, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(745, 2127, 'JAI', 'R', 1, NULL, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(746, 2128, 'JOSITHA', 'P', 2, NULL, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(747, 2129, 'JYOTSNA G', 'G', 2, NULL, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(748, 2130, 'KANISHKA S', 'S', 2, NULL, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(749, 2131, 'KAVIYA', 'G', 2, NULL, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(750, 2132, 'KAVI BHARATHI S', 'S', 1, NULL, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(751, 2133, 'KEERTHANA', 'R', 2, NULL, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(752, 2134, 'KIRAN KUMAR M', 'M', 1, NULL, 1, '2022-09-21 00:55:32', '2022-09-21 00:55:32'),
(753, 2135, 'KUMARESAN S', 'S', 1, NULL, 1, '2022-09-21 00:55:32', '2022-09-21 00:55:32'),
(754, 2136, 'LAKSHEETHA SRI S', 'S', 2, NULL, 1, '2022-09-21 00:55:32', '2022-09-21 00:55:32'),
(755, 2137, 'LOGITHA J', 'J', 2, NULL, 1, '2022-09-21 00:55:33', '2022-09-21 00:55:33'),
(756, 2138, 'MADHU SHRI S', 'S', 2, NULL, 1, '2022-09-21 00:55:33', '2022-09-21 00:55:33'),
(757, 2139, 'MONISHA M', 'M', 2, NULL, 1, '2022-09-21 00:55:34', '2022-09-21 00:55:34'),
(758, 2140, 'MUHAMMAD HUSSAIN A', 'A', 1, NULL, 1, '2022-09-21 00:55:34', '2022-09-21 00:55:34'),
(759, 2141, 'MUHAMED ABU HARISH K.S', 'S', 1, NULL, 1, '2022-09-21 00:55:34', '2022-09-21 00:55:34'),
(760, 2142, 'NANCY J', 'J', 2, NULL, 1, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(761, 2143, 'RAGHAVHA', 'S', 1, NULL, 1, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(762, 2144, 'SADANA', 'T', 2, NULL, 1, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(763, 2145, 'SANJANA S', 'S', 2, NULL, 1, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(764, 2146, 'SANTHOSH R', 'R', 1, NULL, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(765, 2147, 'SHARVESH B', 'B', 1, NULL, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(766, 2148, 'SHAIK FARIED', 'M', 1, NULL, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(767, 2149, 'SUNITHA', 'S', 2, NULL, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(768, 2150, 'SWETHA R', 'R', 2, NULL, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(769, 2151, 'YASHIKA D', 'D', 2, NULL, 1, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(770, 2152, 'YUVARAJ S', 'S', 1, NULL, 1, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(771, 2153, 'Ameer Hussain', 'KHADAR BASHAH', 1, NULL, 1, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(772, 2154, 'Anbu Selvan', 'JAYAVEL', 1, NULL, 1, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(773, 2155, 'Gowtham Kumar', 'VIJAYAKUMAR V', 1, NULL, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(774, 2156, 'Guru', 'SARAVANA PERUMAL', 1, NULL, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(775, 2157, 'Harish', 'RAJIV GHANTHI', 1, NULL, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(776, 2158, 'Jershan Abish', 'RAMESH', 1, NULL, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(777, 2159, 'Kamalesh', 'KUMAR', 1, NULL, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(778, 2160, 'Mojaideen Basha', 'SADIQ BASHA', 1, NULL, 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(779, 2161, 'Sandeep', 'PORCHEZHIAN', 1, NULL, 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(780, 2162, 'Srinithish', 'SURESH', 1, NULL, 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(781, 2163, 'Sumanraj', 'ARUMUGAM', 1, NULL, 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(782, 2164, 'Varadhan', 'UDHAYASHANKAR', 1, NULL, 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(783, 2165, 'Viswanathan', 'RAJESH', 1, NULL, 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(784, 2166, 'Banushri', 'RAJA', 2, NULL, 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(785, 2167, 'Bhavadharani.M', 'MUTHU', 2, NULL, 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(786, 2168, 'Bhavadharani.N.Y', 'YOGANANDHAN', 2, NULL, 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(787, 2169, 'Dharshini.A', 'AARI', 2, NULL, 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(788, 2170, 'Dharshini.J', 'JAYANTHAN', 2, NULL, 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(789, 2171, 'Durga', 'RAJ', 2, NULL, 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(790, 2172, 'Gracy', 'KUPPUSAMY', 2, NULL, 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(791, 2173, 'Hema Shri', 'VINOTH', 2, NULL, 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(792, 2174, 'Joshini', 'SARAVANAN', 2, NULL, 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(793, 2175, 'Joyce', 'MOSES', 2, NULL, 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(794, 2176, 'Kalaivani', 'VIJAYABABU', 2, NULL, 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(795, 2177, 'Mahalakshmi', 'RAJENDRAKUMAR', 2, NULL, 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(796, 2178, 'Monisha Shri', 'ANAND RAJ', 2, NULL, 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(797, 2179, 'Pavithra', 'PRAVEEN KUMAR', 2, NULL, 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(798, 2180, 'Regina', 'AROKYA DHAS', 2, NULL, 1, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(799, 2181, 'Riya Princy', 'RAJESHKUMAR', 2, NULL, 1, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(800, 2182, 'Sanjana', 'KUMARAVEL', 2, NULL, 1, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(801, 2183, 'Shanu Shri', 'UDHAYAKUMAR.K', 2, NULL, 1, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(802, 2184, 'Sharmila', 'RAGHU', 2, NULL, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(803, 2185, 'Swetha', 'VINOTHKUMAR', 2, NULL, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(804, 2186, 'Swathi', 'RAJA', 2, NULL, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(805, 2187, 'Sammima Parveen', 'MOHANMMED', 2, NULL, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(806, 2188, 'Tamil Selvi', 'GANAPATHY', 2, NULL, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(807, 2189, 'Vaishnavi', 'RAJASEKAR', 2, NULL, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(808, 2190, 'Yamini', 'MURUGAN.A', 2, NULL, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(809, 2191, 'AJAY', 'R', 1, NULL, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(810, 2192, 'AJAYASIS', 'E', 1, NULL, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(811, 2193, 'ANTOGLADWIN', 'A', 1, NULL, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(812, 2194, 'ASIK IMRAN S', 'S', 1, NULL, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(813, 2195, 'BALANATHAN', 'R', 1, NULL, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(814, 2196, 'DINESH', 'B', 1, NULL, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(815, 2197, 'DHANUSH', 'B', 1, NULL, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(816, 2198, 'JEEVA', 'S', 1, NULL, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(817, 2199, 'KABILESH', 'V', 1, NULL, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(818, 2200, 'LITHISH', 'V', 1, NULL, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(819, 2201, 'MARSHEL', 'L', 1, NULL, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(820, 2202, 'MONISH', 'R', 1, NULL, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(821, 2203, 'RAHUL', 'V', 1, NULL, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(822, 2204, 'SATHISH', 'P', 1, NULL, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(823, 2205, 'SANJEEVAN', 'B', 1, NULL, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(824, 2206, 'SELVAKUMAR', 'S', 1, NULL, 1, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(825, 2207, 'STEEPAN', 'J', 1, NULL, 1, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(826, 2208, 'STEPANRAJ', 'M', 1, NULL, 1, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(827, 2209, 'TAMILSELVAN', 'J', 1, NULL, 1, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(828, 2210, 'ABITHA', 'S', 2, NULL, 1, '2022-09-21 00:55:49', '2022-09-21 00:55:49'),
(829, 2211, 'ASMAPRAVIN', 'B', 2, NULL, 1, '2022-09-21 00:55:49', '2022-09-21 00:55:49'),
(830, 2212, 'DEEPIKA', 'G', 2, NULL, 1, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(831, 2213, 'GAYATHRI', 'A', 2, NULL, 1, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(832, 2214, 'HANISHA', 'R', 2, NULL, 1, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(833, 2215, 'HARSHITHA', 'A', 2, NULL, 1, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(834, 2216, 'LATHA', 'J', 2, NULL, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(835, 2217, 'MATHUMITHA', 'M', 2, NULL, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(836, 2218, 'PREETHA', 'A', 2, NULL, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(837, 2219, 'SADHANA', 'K', 2, NULL, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(838, 2220, 'SANDHIYA', 'R', 2, NULL, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(839, 2221, 'SARASWATHI', 'G', 2, NULL, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(840, 2222, 'SIVA RANGINI', 'K', 2, NULL, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(841, 2223, 'SUBHASHINI', 'A', 2, NULL, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(842, 2224, 'SUJI', 'S', 2, NULL, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(843, 2225, 'VIDHYA', 'P.S', 2, NULL, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(844, 2226, 'YASINI', 'P', 2, NULL, 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(845, 2227, 'AKASH', 'R', 1, NULL, 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(846, 2228, 'BALAJI', 'M', 1, NULL, 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(847, 2229, 'DHANUSH', 'P', 1, NULL, 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(848, 2230, 'DHANUSH', 'S', 1, NULL, 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(849, 2231, 'GANESH PRABHU', 'P', 1, NULL, 1, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(850, 2232, 'GOPINATH', 'S', 1, NULL, 1, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(851, 2233, 'JAIKUMAR', 'R', 1, NULL, 1, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(852, 2234, 'JEEVANNATH', 'A', 1, NULL, 1, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(853, 2235, 'KAMESH', 'V', 1, NULL, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(854, 2236, 'NANDHA KUMAR', 'P', 1, NULL, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(855, 2237, 'NIRMAL', 'S', 1, NULL, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(856, 2238, 'NITHISH', 'K', 1, NULL, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(857, 2239, 'PRASANNA KUMAR', 'M', 1, NULL, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(858, 2240, 'ROHITH', 'S', 1, NULL, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(859, 2241, 'SANTHOSH', 'M', 1, NULL, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(860, 2242, 'SARANRAJ', 'S', 1, NULL, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(861, 2243, 'SIVASANKAR', 'M', 1, NULL, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(862, 2244, 'VINOTH', 'P', 1, NULL, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(863, 2245, 'YUVANESH KUMAR', 'R', 1, NULL, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(864, 2246, 'ASWINI', 'R', 2, NULL, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(865, 2247, 'DEEPIKA', 'D', 2, NULL, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(866, 2248, 'JEEVITHA', 'R', 2, NULL, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(867, 2249, 'KEERTHI', 'R', 2, NULL, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(868, 2250, 'MARIAMBEE', 'A', 2, NULL, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(869, 2251, 'NARMADHA', 'M', 2, NULL, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(870, 2252, 'NEATHRA', 'B', 2, NULL, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(871, 2253, 'ROBATHY', 'R', 2, NULL, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(872, 2254, 'SANDHIYA', 'A', 2, NULL, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(873, 2255, 'SANTHOSHINI', 'M', 2, NULL, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(874, 2256, 'SARANYA', 'G', 2, NULL, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(875, 2257, 'SAROJINI', 'S', 2, NULL, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(876, 2258, 'SIVADHARSHINI', 'M', 2, NULL, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(877, 2259, 'SUBASHREE', 'R', 2, NULL, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(878, 2260, 'SUJITHA', 'M', 2, NULL, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(879, 2261, 'YOGALAKSHMI', 'R', 2, NULL, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(880, 2262, 'AROCKIA SANTHOSH.P', 'p', 1, NULL, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(881, 2263, 'GANAPATHI.I', 'I', 1, NULL, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(882, 2264, 'HARISH.V', 'V', 1, NULL, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(883, 2265, 'KAMALESH.P', 'P', 1, NULL, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(884, 2266, 'KARTHI.S', 'S', 1, NULL, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(885, 2267, 'LEMUEL.J', 'J', 1, NULL, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(886, 2268, 'MADHAN.P', 'P', 1, NULL, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(887, 2269, 'MATHEW.S', 'S', 1, NULL, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(888, 2270, 'MOHAMMED THAMEEM ANSARI.S', 'S', 1, NULL, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(889, 2271, 'PRAKASH.R', 'R', 1, NULL, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(890, 2272, 'SANJEEVI.S', 'S', 1, NULL, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(891, 2273, 'SHREE VISHNU.R', 'R', 1, NULL, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(892, 2274, 'SIDHARTHAN.B', 'B', 1, NULL, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(893, 2275, 'VISHNU.G', 'G', 1, NULL, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(894, 2276, 'YUSUF.A', 'A', 1, NULL, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(895, 2277, 'YUVARAJ.A', 'A', 1, NULL, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(896, 2278, 'AKSHAYA.V', 'V', 2, NULL, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(897, 2279, 'BHAKKIYALAKSHMI.V', 'V', 2, NULL, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(898, 2280, 'DEEPIKA.M', 'M', 2, NULL, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(899, 2281, 'DARANI.S', 'S', 2, NULL, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(900, 2282, 'GAYATHRI.R', 'R', 2, NULL, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(901, 2283, 'GEETHALAKSHMI.R', 'R', 2, NULL, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(902, 2284, 'JAHNSI RANI.K', 'K', 2, NULL, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(903, 2285, 'JENITHA.M', 'M', 2, NULL, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(904, 2286, 'MADHAVI.C', 'C', 2, NULL, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(905, 2287, 'MERLIN.P', 'P', 2, NULL, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(906, 2288, 'POOJA.C', 'C', 2, NULL, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(907, 2289, 'RAMYA.S', 'S', 2, NULL, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(908, 2290, 'SADHANA.S', 'S', 2, NULL, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(909, 2291, 'SAIMIDULA.R', 'R', 2, NULL, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(910, 2292, 'SANJANA.S', 'S', 2, NULL, 1, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(911, 2293, 'VIJAYAPRIYA.A', 'A', 2, NULL, 1, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(912, 2294, 'VAISHNAVI.U', 'U', 2, NULL, 1, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(913, 2295, 'YAMUNA.A', 'A', 2, NULL, 1, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(914, 2380, 'test', 'test', 1, '2019-09-09', 1, '2022-09-29 04:44:35', '2022-09-29 04:44:35');

-- --------------------------------------------------------

--
-- Table structure for table `studentsclasses`
--

CREATE TABLE `studentsclasses` (
  `stuclId` int(11) NOT NULL,
  `stuclOrgStuMasterId` int(11) NOT NULL,
  `medium_id` int(11) DEFAULT 2,
  `stuclClsMasterId` int(11) NOT NULL,
  `stuclSecMasterId` int(11) NOT NULL,
  `stuclAcademicYear` varchar(12) NOT NULL,
  `promoted` tinyint(1) DEFAULT 0,
  `transferred` tinyint(1) DEFAULT 0,
  `stuclIsStatus` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `studentsclasses`
--

INSERT INTO `studentsclasses` (`stuclId`, `stuclOrgStuMasterId`, `medium_id`, `stuclClsMasterId`, `stuclSecMasterId`, `stuclAcademicYear`, `promoted`, `transferred`, `stuclIsStatus`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 5, 2, '2010-2011', 0, 0, 1, '2022-06-05 03:12:10', '2022-08-17 15:57:06'),
(5, 4, 2, 12, 4, '2010-2011', 0, 0, 1, '2022-07-04 02:48:12', '2022-07-04 02:48:12'),
(7, 5, 2, 11, 2, '2010-2011', 0, 0, 1, '2022-08-12 01:37:53', '2022-08-12 01:37:53'),
(8, 6, 2, 14, 0, '2010-2011', 0, 0, 1, '2022-08-12 01:53:38', '2022-08-12 01:53:38'),
(12, 10, 2, 1, 5, '2010-2011', 0, 0, 1, '2022-08-22 12:16:43', '2022-08-22 12:16:43'),
(13, 11, 2, 10, 3, '2010-2011', 0, 0, 1, '2022-08-29 06:32:42', '2022-08-29 06:32:42'),
(14, 12, 2, 2, 5, '2012-2013', 0, 0, 0, '2022-09-03 04:38:33', '2022-09-03 04:38:33'),
(15, 13, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:37', '2022-09-21 00:54:37'),
(16, 14, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:37', '2022-09-21 00:54:37'),
(17, 15, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:37', '2022-09-21 00:54:37'),
(18, 16, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(19, 17, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(20, 18, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(21, 19, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(22, 20, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(23, 21, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(24, 22, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(25, 23, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(26, 24, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(27, 25, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(28, 26, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(29, 27, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(30, 28, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(31, 29, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(32, 30, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(33, 31, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(34, 32, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(35, 33, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(36, 34, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(37, 35, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(38, 36, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(39, 37, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(40, 38, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(41, 39, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(42, 40, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(43, 41, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(44, 42, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(45, 43, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(46, 44, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(47, 45, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(48, 46, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(49, 47, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(50, 48, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(51, 49, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(52, 50, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(53, 51, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(54, 52, 2, 14, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(55, 53, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(56, 54, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(57, 55, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(58, 56, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(59, 57, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(60, 58, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(61, 59, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(62, 60, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(63, 61, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(64, 62, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(65, 63, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(66, 64, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(67, 65, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(68, 66, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(69, 67, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(70, 68, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(71, 69, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(72, 70, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(73, 71, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(74, 72, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(75, 73, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(76, 74, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(77, 75, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(78, 76, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(79, 77, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(80, 78, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(81, 79, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(82, 80, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(83, 81, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(84, 82, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(85, 83, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(86, 84, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(87, 85, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(88, 86, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(89, 87, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(90, 88, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(91, 89, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(92, 90, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(93, 91, 2, 15, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(94, 92, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:51', '2022-09-30 08:03:45'),
(95, 93, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:51', '2022-09-30 08:03:45'),
(96, 94, 2, 1, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:54:52', '2022-09-30 08:03:45'),
(97, 95, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:52', '2022-09-30 08:34:57'),
(98, 96, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:52', '2022-09-30 08:34:57'),
(99, 97, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:52', '2022-09-30 08:34:57'),
(100, 98, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:52', '2022-09-30 08:34:57'),
(101, 99, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:52', '2022-09-30 08:34:57'),
(102, 100, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:53', '2022-09-30 08:34:57'),
(103, 101, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:53', '2022-09-30 08:34:57'),
(104, 102, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:53', '2022-09-30 08:34:57'),
(105, 103, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:53', '2022-09-30 08:34:57'),
(106, 104, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:53', '2022-09-30 08:34:57'),
(107, 105, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:53', '2022-09-30 08:34:57'),
(108, 106, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:54', '2022-09-30 08:34:57'),
(109, 107, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:54', '2022-09-30 08:34:57'),
(110, 108, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:54', '2022-09-30 08:34:57'),
(111, 109, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:54', '2022-09-30 08:34:57'),
(112, 110, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:54', '2022-09-30 08:34:57'),
(113, 111, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:55', '2022-09-30 08:34:57'),
(114, 112, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:55', '2022-09-30 08:34:57'),
(115, 113, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:55', '2022-09-30 08:34:57'),
(116, 114, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:55', '2022-09-30 08:34:57'),
(117, 115, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:55', '2022-09-30 08:34:57'),
(118, 116, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:55', '2022-09-30 08:34:57'),
(119, 117, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:56', '2022-09-30 08:34:57'),
(120, 118, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:56', '2022-09-30 08:34:57'),
(121, 119, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:56', '2022-09-30 08:34:57'),
(122, 120, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:56', '2022-09-30 08:34:57'),
(123, 121, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:57', '2022-09-30 08:34:57'),
(124, 122, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:57', '2022-09-30 08:34:57'),
(125, 123, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:57', '2022-09-30 08:34:57'),
(126, 124, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:57', '2022-09-30 08:34:57'),
(127, 125, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:57', '2022-09-30 08:34:57'),
(128, 126, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:58', '2022-09-30 08:34:57'),
(129, 127, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:58', '2022-09-30 08:34:57'),
(130, 128, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:58', '2022-09-30 08:34:57'),
(131, 129, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:58', '2022-09-30 08:34:57'),
(132, 130, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:58', '2022-09-30 08:34:57'),
(133, 131, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:59', '2022-09-30 08:34:57'),
(134, 132, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:59', '2022-09-30 08:34:57'),
(135, 133, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:59', '2022-09-30 08:37:16'),
(136, 134, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:59', '2022-09-30 08:37:16'),
(137, 135, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:54:59', '2022-09-30 08:37:16'),
(138, 136, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:00', '2022-09-30 08:37:16'),
(139, 137, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:00', '2022-09-30 08:37:16'),
(140, 138, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:00', '2022-09-30 08:37:16'),
(141, 139, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:00', '2022-09-30 08:37:16'),
(142, 140, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:00', '2022-09-30 08:37:16'),
(143, 141, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:01', '2022-09-30 08:37:16'),
(144, 142, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:01', '2022-09-30 08:37:16'),
(145, 143, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:01', '2022-09-30 08:37:16'),
(146, 144, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:01', '2022-09-30 08:37:16'),
(147, 145, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:01', '2022-09-30 08:37:16'),
(148, 146, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:02', '2022-09-30 08:37:16'),
(149, 147, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:02', '2022-09-30 08:37:16'),
(150, 148, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:02', '2022-09-30 08:37:16'),
(151, 149, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:02', '2022-09-30 08:37:16'),
(152, 150, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:02', '2022-09-30 08:37:16'),
(153, 151, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:03', '2022-09-30 08:37:16'),
(154, 152, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:03', '2022-09-30 08:37:16'),
(155, 153, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:03', '2022-09-30 08:37:16'),
(156, 154, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:03', '2022-09-30 08:37:16'),
(157, 155, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:03', '2022-09-30 08:37:16'),
(158, 156, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:04', '2022-09-30 08:37:16'),
(159, 157, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:04', '2022-09-30 08:37:16'),
(160, 158, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:04', '2022-09-30 08:37:16'),
(161, 159, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:04', '2022-09-30 08:37:16'),
(162, 160, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:04', '2022-09-30 08:37:16'),
(163, 161, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:04', '2022-09-30 08:37:16'),
(164, 162, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:05', '2022-09-30 08:37:16'),
(165, 163, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:05', '2022-09-30 08:37:16'),
(166, 164, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:05', '2022-09-30 08:37:16'),
(167, 165, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:05', '2022-09-30 08:37:16'),
(168, 166, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:06', '2022-09-30 08:37:16'),
(169, 167, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:06', '2022-09-30 08:37:16'),
(170, 168, 2, 3, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:06', '2022-09-30 06:31:18'),
(171, 169, 2, 3, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:06', '2022-09-30 06:31:18'),
(172, 170, 2, 3, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:06', '2022-09-30 06:31:18'),
(173, 171, 2, 3, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:06', '2022-09-30 06:31:18'),
(174, 172, 2, 3, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:07', '2022-09-30 06:31:18'),
(175, 173, 2, 3, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:07', '2022-09-30 06:31:18'),
(176, 174, 2, 3, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:07', '2022-09-30 06:31:18'),
(177, 175, 2, 3, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:07', '2022-09-30 06:31:18'),
(178, 176, 2, 3, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:08', '2022-09-30 06:31:18'),
(179, 177, 2, 3, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:08', '2022-09-30 06:31:18'),
(180, 178, 2, 3, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:08', '2022-09-30 06:31:18'),
(181, 179, 2, 3, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:08', '2022-09-30 06:31:18'),
(182, 180, 2, 3, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:08', '2022-09-30 06:31:18'),
(183, 181, 2, 3, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:09', '2022-09-30 06:31:18'),
(184, 182, 2, 3, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:09', '2022-09-30 06:31:18'),
(185, 183, 2, 3, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:09', '2022-09-30 06:31:18'),
(186, 184, 2, 3, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:09', '2022-09-30 06:31:18'),
(187, 185, 2, 3, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:09', '2022-09-30 06:31:18'),
(188, 186, 2, 3, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:10', '2022-09-30 06:31:18'),
(189, 187, 2, 3, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:10', '2022-09-30 06:31:18'),
(190, 188, 2, 3, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:10', '2022-09-30 06:31:18'),
(191, 189, 2, 3, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:10', '2022-09-30 06:31:18'),
(192, 190, 2, 3, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:10', '2022-09-30 06:31:18'),
(193, 191, 2, 3, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:11', '2022-09-30 06:31:18'),
(194, 192, 2, 3, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:11', '2022-09-30 06:31:18'),
(195, 193, 2, 3, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:11', '2022-09-30 06:31:18'),
(196, 194, 2, 3, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:11', '2022-09-30 06:31:18'),
(197, 195, 2, 3, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:11', '2022-09-30 06:31:18'),
(198, 196, 2, 3, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:12', '2022-09-30 06:31:18'),
(199, 197, 2, 3, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:12', '2022-09-30 06:31:18'),
(200, 198, 2, 3, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:12', '2022-09-30 06:31:18'),
(201, 199, 2, 3, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:12', '2022-09-30 06:31:18'),
(202, 200, 2, 3, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:12', '2022-09-30 06:31:18'),
(203, 201, 2, 3, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:12', '2022-09-30 06:31:18'),
(204, 202, 2, 3, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:13', '2022-09-30 06:31:18'),
(205, 203, 2, 3, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:13', '2022-09-30 06:31:18'),
(206, 204, 2, 3, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:13', '2022-09-30 06:31:18'),
(207, 205, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:13', '2022-09-30 08:30:32'),
(208, 206, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:13', '2022-09-30 08:30:32'),
(209, 207, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:14', '2022-09-30 08:30:32'),
(210, 208, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:14', '2022-09-30 08:30:32'),
(211, 209, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:14', '2022-09-30 08:30:32'),
(212, 210, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:14', '2022-09-30 08:30:32'),
(213, 211, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:14', '2022-09-30 08:30:32'),
(214, 212, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:14', '2022-09-30 08:30:32'),
(215, 213, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:15', '2022-09-30 08:30:32'),
(216, 214, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:15', '2022-09-30 08:30:32'),
(217, 215, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:15', '2022-09-30 08:30:32'),
(218, 216, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:15', '2022-09-30 08:30:32'),
(219, 217, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:15', '2022-09-30 08:30:32'),
(220, 218, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:16', '2022-09-30 08:30:32'),
(221, 219, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:16', '2022-09-30 08:30:32'),
(222, 220, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:16', '2022-09-30 08:30:32'),
(223, 221, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:16', '2022-09-30 08:30:32'),
(224, 222, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:17', '2022-09-30 08:30:32'),
(225, 223, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:17', '2022-09-30 08:30:32'),
(226, 224, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:17', '2022-09-30 08:30:32'),
(227, 225, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:17', '2022-09-30 08:30:32'),
(228, 226, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:18', '2022-09-30 08:30:32'),
(229, 227, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:18', '2022-09-30 08:30:32'),
(230, 228, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:18', '2022-09-30 08:30:32'),
(231, 229, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:18', '2022-09-30 08:30:32'),
(232, 230, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:18', '2022-09-30 08:30:32'),
(233, 231, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:19', '2022-09-30 08:30:32'),
(234, 232, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:19', '2022-09-30 08:30:32'),
(235, 233, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:19', '2022-09-30 08:30:32'),
(236, 234, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:19', '2022-09-30 08:30:32'),
(237, 235, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:19', '2022-09-30 08:30:32'),
(238, 236, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:20', '2022-09-30 08:30:32'),
(239, 237, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:20', '2022-09-30 08:30:32'),
(240, 238, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:20', '2022-09-30 08:30:32'),
(241, 239, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:20', '2022-09-30 08:30:32'),
(242, 240, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:20', '2022-09-30 08:30:32'),
(243, 241, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(244, 242, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(245, 243, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(246, 244, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(247, 245, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(248, 246, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(249, 247, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(250, 248, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(251, 249, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(252, 250, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(253, 251, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(254, 252, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(255, 253, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(256, 254, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(257, 255, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(258, 256, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(259, 257, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(260, 258, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(261, 259, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(262, 260, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(263, 261, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(264, 262, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(265, 263, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(266, 264, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(267, 265, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(268, 266, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(269, 267, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(270, 268, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(271, 269, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(272, 270, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(273, 271, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(274, 272, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(275, 273, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(276, 274, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(277, 275, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(278, 276, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(279, 277, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(280, 278, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(281, 279, 2, 5, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(282, 280, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(283, 281, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(284, 282, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(285, 283, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(286, 284, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(287, 285, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(288, 286, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(289, 287, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(290, 288, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(291, 289, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(292, 290, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(293, 291, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(294, 292, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(295, 293, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(296, 294, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(297, 295, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(298, 296, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(299, 297, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(300, 298, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(301, 299, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(302, 300, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:32', '2022-09-21 00:55:32'),
(303, 301, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:32', '2022-09-21 00:55:32'),
(304, 302, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:32', '2022-09-21 00:55:32'),
(305, 303, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:33', '2022-09-21 00:55:33'),
(306, 304, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:33', '2022-09-21 00:55:33'),
(307, 305, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:34', '2022-09-21 00:55:34'),
(308, 306, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:34', '2022-09-21 00:55:34'),
(309, 307, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:34', '2022-09-21 00:55:34'),
(310, 308, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(311, 309, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(312, 310, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(313, 311, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(314, 312, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(315, 313, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(316, 314, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(317, 315, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(318, 316, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(319, 317, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(320, 318, 2, 6, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(321, 319, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(322, 320, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(323, 321, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(324, 322, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(325, 323, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(326, 324, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(327, 325, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(328, 326, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(329, 327, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(330, 328, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(331, 329, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(332, 330, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(333, 331, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(334, 332, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(335, 333, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(336, 334, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(337, 335, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(338, 336, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(339, 337, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(340, 338, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(341, 339, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(342, 340, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(343, 341, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(344, 342, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(345, 343, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(346, 344, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(347, 345, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(348, 346, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(349, 347, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(350, 348, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(351, 349, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(352, 350, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(353, 351, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(354, 352, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(355, 353, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(356, 354, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(357, 355, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(358, 356, 2, 7, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(359, 357, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(360, 358, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(361, 359, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(362, 360, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(363, 361, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(364, 362, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(365, 363, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(366, 364, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(367, 365, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(368, 366, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(369, 367, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(370, 368, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(371, 369, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(372, 370, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(373, 371, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(374, 372, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(375, 373, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(376, 374, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(377, 375, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(378, 376, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:49', '2022-09-21 00:55:49'),
(379, 377, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:49', '2022-09-21 00:55:49'),
(380, 378, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(381, 379, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(382, 380, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(383, 381, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(384, 382, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(385, 383, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(386, 384, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(387, 385, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(388, 386, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(389, 387, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(390, 388, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(391, 389, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(392, 390, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(393, 391, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(394, 392, 2, 8, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(395, 393, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:53', '2022-09-30 07:54:21'),
(396, 394, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:53', '2022-09-30 07:54:21'),
(397, 395, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:53', '2022-09-30 07:54:21'),
(398, 396, 2, 9, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:53', '2022-09-30 07:54:21'),
(399, 397, 2, 9, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:54', '2022-09-30 07:54:21'),
(400, 398, 2, 9, 1, '2022-2023', 1, 0, 0, '2022-09-21 00:55:54', '2022-09-30 07:54:21'),
(401, 399, 2, 9, 1, '2022-2023', 1, 1, 0, '2022-09-21 00:55:54', '2022-09-30 07:54:21'),
(402, 400, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:54', '2022-09-30 07:54:21'),
(403, 401, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:55', '2022-09-30 07:54:21'),
(404, 402, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:55', '2022-09-30 07:54:21'),
(405, 403, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:55', '2022-09-30 07:54:21'),
(406, 404, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:55', '2022-09-30 07:54:21'),
(407, 405, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:55', '2022-09-30 07:54:21'),
(408, 406, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:56', '2022-09-30 07:54:21'),
(409, 407, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:56', '2022-09-30 07:54:21'),
(410, 408, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:56', '2022-09-30 07:54:21'),
(411, 409, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:56', '2022-09-30 07:54:21'),
(412, 410, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:56', '2022-09-30 07:54:21'),
(413, 411, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:56', '2022-09-30 07:54:21'),
(414, 412, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:57', '2022-09-30 07:54:21'),
(415, 413, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:57', '2022-09-30 07:54:21'),
(416, 414, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:57', '2022-09-30 07:54:21'),
(417, 415, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:57', '2022-09-30 07:54:21'),
(418, 416, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:57', '2022-09-30 07:54:21'),
(419, 417, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:58', '2022-09-30 07:54:21'),
(420, 418, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:58', '2022-09-30 07:54:21'),
(421, 419, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:58', '2022-09-30 07:54:21'),
(422, 420, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:58', '2022-09-30 07:54:21'),
(423, 421, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:58', '2022-09-30 07:54:21'),
(424, 422, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:59', '2022-09-30 07:54:21'),
(425, 423, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:59', '2022-09-30 07:54:21'),
(426, 424, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:59', '2022-09-30 07:54:21'),
(427, 425, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:59', '2022-09-30 07:54:21'),
(428, 426, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:55:59', '2022-09-30 07:54:21'),
(429, 427, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:00', '2022-09-30 07:54:21'),
(430, 428, 2, 10, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(431, 429, 2, 10, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(432, 430, 2, 10, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(433, 431, 2, 10, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(434, 432, 2, 10, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(435, 433, 2, 10, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(436, 434, 2, 10, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(437, 435, 2, 10, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(438, 436, 2, 10, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(439, 437, 2, 10, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(440, 438, 2, 10, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(441, 439, 2, 10, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(442, 440, 2, 10, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(443, 441, 2, 10, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(444, 442, 2, 10, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(445, 443, 2, 10, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(446, 444, 2, 10, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(447, 445, 2, 10, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(448, 446, 2, 10, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(449, 447, 2, 10, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(450, 448, 2, 10, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(451, 449, 2, 10, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(452, 450, 2, 10, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(453, 451, 2, 10, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(454, 452, 2, 10, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(455, 453, 2, 10, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(456, 454, 2, 10, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(457, 455, 2, 10, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(458, 456, 2, 10, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(459, 457, 2, 10, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(460, 458, 2, 10, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(461, 459, 2, 10, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(462, 460, 2, 10, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(463, 461, 2, 10, 1, '2022-2023', 0, 0, 0, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(464, 462, 2, 3, 3, '2021-2022', 0, 0, 1, '2022-09-29 04:44:35', '2022-09-29 04:44:35'),
(465, 396, 2, 10, 1, '2023-2024', 1, 0, 0, '2022-09-30 07:54:21', '2022-09-30 07:54:21'),
(466, 398, 2, 10, 1, '2023-2024', 1, 0, 0, '2022-09-30 07:54:21', '2022-09-30 07:54:21'),
(467, 393, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-30 07:54:21', '2022-09-30 07:54:21'),
(468, 394, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-30 07:54:21', '2022-09-30 07:54:21'),
(469, 395, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-30 07:54:21', '2022-09-30 07:54:21'),
(470, 400, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-30 07:54:21', '2022-09-30 07:54:21'),
(471, 401, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-30 07:54:21', '2022-09-30 07:54:21'),
(472, 402, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-30 07:54:21', '2022-09-30 07:54:21'),
(473, 403, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-30 07:54:21', '2022-09-30 07:54:21'),
(474, 404, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-30 07:54:21', '2022-09-30 07:54:21'),
(475, 405, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-30 07:54:21', '2022-09-30 07:54:21'),
(476, 406, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-30 07:54:21', '2022-09-30 07:54:21'),
(477, 407, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-30 07:54:21', '2022-09-30 07:54:21'),
(478, 408, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-30 07:54:21', '2022-09-30 07:54:21'),
(479, 409, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-30 07:54:21', '2022-09-30 07:54:21'),
(480, 410, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-30 07:54:21', '2022-09-30 07:54:21'),
(481, 411, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-30 07:54:21', '2022-09-30 07:54:21'),
(482, 412, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-30 07:54:21', '2022-09-30 07:54:21'),
(483, 413, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-30 07:54:21', '2022-09-30 07:54:21'),
(484, 414, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-30 07:54:21', '2022-09-30 07:54:21'),
(485, 415, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-30 07:54:21', '2022-09-30 07:54:21'),
(486, 416, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-30 07:54:21', '2022-09-30 07:54:21'),
(487, 417, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-30 07:54:21', '2022-09-30 07:54:21'),
(488, 418, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-30 07:54:21', '2022-09-30 07:54:21'),
(489, 419, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-30 07:54:21', '2022-09-30 07:54:21'),
(490, 420, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-30 07:54:21', '2022-09-30 07:54:21'),
(491, 421, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-30 07:54:21', '2022-09-30 07:54:21'),
(492, 422, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-30 07:54:21', '2022-09-30 07:54:21'),
(493, 423, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-30 07:54:21', '2022-09-30 07:54:21'),
(494, 424, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-30 07:54:21', '2022-09-30 07:54:21'),
(495, 425, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-30 07:54:21', '2022-09-30 07:54:21'),
(496, 426, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-30 07:54:21', '2022-09-30 07:54:21'),
(497, 427, 2, 9, 1, '2022-2023', 0, 0, 0, '2022-09-30 07:54:21', '2022-09-30 07:54:21'),
(498, 92, 2, 2, 1, '2023-2024', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:03:45'),
(499, 93, 2, 2, 1, '2023-2024', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:03:45'),
(500, 95, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(501, 96, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(502, 97, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(503, 98, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(504, 99, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(505, 100, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(506, 101, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(507, 102, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(508, 103, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(509, 104, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(510, 105, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(511, 106, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(512, 107, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(513, 108, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(514, 109, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(515, 110, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(516, 111, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(517, 112, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(518, 113, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(519, 114, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(520, 115, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(521, 116, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(522, 117, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(523, 118, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(524, 119, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(525, 120, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(526, 121, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(527, 122, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(528, 123, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(529, 124, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(530, 125, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(531, 126, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(532, 127, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(533, 128, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(534, 129, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(535, 130, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(536, 131, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(537, 132, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:03:45', '2022-09-30 08:34:57'),
(538, 205, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(539, 206, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(540, 207, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(541, 208, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(542, 209, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(543, 210, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(544, 211, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(545, 212, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(546, 213, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(547, 214, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(548, 215, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(549, 216, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(550, 217, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(551, 218, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(552, 219, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(553, 220, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(554, 221, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(555, 222, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(556, 223, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(557, 224, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(558, 225, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(559, 226, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(560, 227, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(561, 228, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(562, 229, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(563, 230, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(564, 231, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(565, 232, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(566, 233, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(567, 234, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(568, 235, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(569, 236, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(570, 237, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(571, 238, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(572, 239, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(573, 240, 2, 4, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:30:32', '2022-09-30 08:30:32'),
(574, 95, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(575, 96, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(576, 97, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(577, 98, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(578, 99, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(579, 100, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(580, 101, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57');
INSERT INTO `studentsclasses` (`stuclId`, `stuclOrgStuMasterId`, `medium_id`, `stuclClsMasterId`, `stuclSecMasterId`, `stuclAcademicYear`, `promoted`, `transferred`, `stuclIsStatus`, `created_at`, `updated_at`) VALUES
(581, 102, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(582, 103, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(583, 104, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(584, 105, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(585, 106, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(586, 107, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(587, 108, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(588, 109, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(589, 110, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(590, 111, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(591, 112, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(592, 113, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(593, 114, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(594, 115, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(595, 116, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(596, 117, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(597, 118, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(598, 119, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(599, 120, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(600, 121, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(601, 122, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(602, 123, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(603, 124, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(604, 125, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(605, 126, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(606, 127, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(607, 128, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(608, 129, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(609, 130, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(610, 131, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(611, 132, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(612, 95, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(613, 96, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(614, 97, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(615, 98, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(616, 99, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(617, 100, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(618, 101, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(619, 102, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(620, 103, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(621, 104, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(622, 105, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(623, 106, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(624, 107, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(625, 108, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(626, 109, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(627, 110, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(628, 111, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(629, 112, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(630, 113, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(631, 114, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(632, 115, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(633, 116, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(634, 117, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(635, 118, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(636, 119, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(637, 120, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(638, 121, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(639, 122, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(640, 123, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(641, 124, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(642, 125, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(643, 126, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(644, 127, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(645, 128, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(646, 129, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(647, 130, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(648, 131, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(649, 132, 2, 1, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:34:57', '2022-09-30 08:34:57'),
(650, 133, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16'),
(651, 134, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16'),
(652, 135, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16'),
(653, 136, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16'),
(654, 137, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16'),
(655, 138, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16'),
(656, 139, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16'),
(657, 140, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16'),
(658, 141, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16'),
(659, 142, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16'),
(660, 143, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16'),
(661, 144, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16'),
(662, 145, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16'),
(663, 146, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16'),
(664, 147, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16'),
(665, 148, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16'),
(666, 149, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16'),
(667, 150, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16'),
(668, 151, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16'),
(669, 152, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16'),
(670, 153, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16'),
(671, 154, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16'),
(672, 155, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16'),
(673, 156, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16'),
(674, 157, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16'),
(675, 158, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16'),
(676, 159, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16'),
(677, 160, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16'),
(678, 161, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16'),
(679, 162, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16'),
(680, 163, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16'),
(681, 164, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16'),
(682, 165, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16'),
(683, 166, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16'),
(684, 167, 2, 2, 1, '2022-2023', 1, 0, 0, '2022-09-30 08:37:16', '2022-09-30 08:37:16');

-- --------------------------------------------------------

--
-- Table structure for table `studentsmarks`
--

CREATE TABLE `studentsmarks` (
  `id` int(11) NOT NULL,
  `student_user_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `marks` int(11) DEFAULT NULL,
  `attempt` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Student marks based on the studentsclasses';

--
-- Dumping data for table `studentsmarks`
--

INSERT INTO `studentsmarks` (`id`, `student_user_id`, `exam_id`, `marks`, `attempt`, `status`, `created_at`, `updated_at`) VALUES
(5, 11, 2, 4, 1, 1, '2022-09-26 06:15:00', '2022-09-26 06:15:00'),
(6, 11, 5, 7, 1, 1, '2022-09-26 06:16:01', '2022-09-26 06:16:01'),
(7, 11, 5, 7, 2, 1, '2022-09-26 06:17:23', '2022-09-26 06:17:23'),
(8, 11, 5, 2, 3, 1, '2022-09-28 02:23:39', '2022-09-28 02:23:39'),
(9, 11, 5, 2, 4, 1, '2022-09-28 02:57:51', '2022-09-28 02:57:51'),
(10, 11, 2, 5, 2, 1, '2022-09-29 10:50:18', '2022-09-29 10:50:18'),
(11, 11, 2, 5, 3, 1, '2022-09-29 10:50:34', '2022-09-29 10:50:34'),
(12, 11, 2, 5, 4, 1, '2022-09-29 10:51:22', '2022-09-29 10:51:22'),
(13, 11, 5, 5, 5, 1, '2022-09-29 10:52:39', '2022-09-29 10:52:39'),
(14, 11, 5, 5, 6, 1, '2022-09-29 10:53:03', '2022-09-29 10:53:03'),
(15, 11, 5, 3, 7, 1, '2022-10-04 04:19:39', '2022-10-04 04:19:39'),
(16, 11, 5, 2, 8, 1, '2022-10-04 05:27:50', '2022-10-04 05:27:50'),
(17, 11, 5, 1, 9, 1, '2022-10-04 05:48:24', '2022-10-04 05:48:24'),
(18, 11, 5, 1, 10, 1, '2022-10-04 05:57:43', '2022-10-04 05:57:43'),
(19, 11, 5, 2, 11, 1, '2022-10-04 07:08:12', '2022-10-04 07:08:12'),
(20, 11, 5, 2, 12, 1, '2022-10-04 07:09:49', '2022-10-04 07:09:49'),
(21, 11, 1, 2, 1, 1, '2022-10-04 07:12:32', '2022-10-04 07:12:32'),
(22, 11, 5, 1, 13, 1, '2022-10-04 08:38:41', '2022-10-04 08:38:41'),
(23, 11, 5, 1, 14, 1, '2022-10-04 08:39:26', '2022-10-04 08:39:26'),
(24, 11, 5, 2, 15, 1, '2022-10-04 08:39:44', '2022-10-04 08:39:44'),
(25, 11, 5, 3, 16, 1, '2022-10-04 08:47:01', '2022-10-04 08:47:01'),
(26, 11, 5, 4, 17, 1, '2022-10-05 02:56:24', '2022-10-05 02:56:24'),
(27, 11, 2, 2, 5, 1, '2022-10-05 02:56:39', '2022-10-05 02:56:39'),
(28, 11, 3, 2, 1, 1, '2022-10-05 02:56:48', '2022-10-05 02:56:48');

-- --------------------------------------------------------

--
-- Table structure for table `stu_strengthes`
--

CREATE TABLE `stu_strengthes` (
  `stId` int(11) NOT NULL,
  `stClasses` varchar(20) NOT NULL,
  `stStrength` varchar(50) NOT NULL,
  `stStatus` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stu_strengthes`
--

INSERT INTO `stu_strengthes` (`stId`, `stClasses`, `stStrength`, `stStatus`, `created_at`, `updated_at`) VALUES
(1, 'VI', '50', 1, '2022-08-06 14:08:38', '2022-08-06 14:08:38'),
(2, 'VII', '40', 1, '2022-08-06 15:46:35', '2022-08-06 15:46:35'),
(3, 'VIII', '40', 1, '2022-08-06 15:46:36', '2022-08-06 15:46:36'),
(4, 'IX', '50', 1, '2022-08-06 15:46:36', '2022-08-06 15:46:36'),
(5, 'X', '40', 1, '2022-08-06 15:46:37', '2022-08-06 15:46:37');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subjId` int(11) NOT NULL,
  `subjName` varchar(255) NOT NULL,
  `standardid` int(11) NOT NULL COMMENT 'aka ClssId',
  `subjMediumId` int(11) NOT NULL DEFAULT 2,
  `subject_order` int(11) NOT NULL DEFAULT 1,
  `subject_logo` varchar(55) DEFAULT NULL,
  `subjIsStatus` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subjId`, `subjName`, `standardid`, `subjMediumId`, `subject_order`, `subject_logo`, `subjIsStatus`, `created_at`, `updated_at`) VALUES
(1, 'Tamil', 1, 2, 1, './images/new-design/course/tamil Aa.png', 1, '2022-04-24 13:35:59', '2022-10-05 13:38:51'),
(2, 'English', 5, 2, 2, './images/new-design/course/english.png', 1, '2022-04-24 13:35:59', '2022-04-24 13:35:59'),
(3, 'Mathematics', 2, 2, 3, './images/new-design/course/maths.png', 0, '2022-04-24 13:37:17', '2022-04-24 13:37:17'),
(4, 'Science', 4, 2, 4, './images/new-design/course/science.png', 1, '2022-04-24 13:37:17', '2022-04-24 13:37:17'),
(5, 'Social Science', 5, 2, 5, './images/new-design/course/social.png', 1, '2022-04-24 13:37:17', '2022-04-24 13:37:17'),
(6, 'Physics', 4, 2, 4, './images/new-design/course/chem.png', 1, '2022-08-07 13:47:02', '2022-08-07 13:47:02'),
(7, 'Biology', 5, 2, 6, './images/new-design/course/chem.png', 0, '2022-08-07 13:47:02', '2022-08-07 13:47:02'),
(8, 'Chemistry', 5, 2, 5, './images/new-design/course/chem.png', 1, '2022-08-07 13:47:02', '2022-08-07 13:47:02'),
(9, 'Computer Science', 5, 2, 6, './images/new-design/course/chem.png', 1, '2022-04-24 13:37:17', '2022-04-24 13:37:17'),
(10, 'Bio-Chemistry', 5, 2, 4, './images/new-design/course/chem.png', 1, '2022-04-24 13:37:17', '2022-04-24 13:37:17'),
(11, 'Commerce', 5, 2, 4, './images/new-design/course/chem.png', 1, '2022-04-24 13:37:17', '2022-04-24 13:37:17'),
(12, 'Accountancy', 5, 2, 4, './images/new-design/course/chem.png', 1, '2022-04-24 13:37:17', '2022-04-24 13:37:17'),
(13, 'History', 5, 2, 4, './images/new-design/course/chem.png', 1, '2022-04-24 13:37:17', '2022-04-24 13:37:17'),
(14, 'Economics', 5, 2, 4, './images/new-design/course/chem.png', 1, '2022-04-24 13:37:17', '2022-04-24 13:37:17');

-- --------------------------------------------------------

--
-- Table structure for table `suggestions`
--

CREATE TABLE `suggestions` (
  `sggId` int(11) NOT NULL,
  `sggOrgId` int(11) NOT NULL,
  `sggDescription` text NOT NULL,
  `sggComments` text NOT NULL,
  `sggInformType` int(11) NOT NULL COMMENT '1-Principal\r\n2-Staff\r\n3-Parents\r\n4-Students\r\n5-Others',
  `sggInformId` int(11) NOT NULL,
  `sggAwards` varchar(255) NOT NULL,
  `sggIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `syllabuses`
--

CREATE TABLE `syllabuses` (
  `syId` int(11) NOT NULL,
  `syName` varchar(55) NOT NULL,
  `syIsStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `syllabuses`
--

INSERT INTO `syllabuses` (`syId`, `syName`, `syIsStatus`, `created_at`, `updated_at`) VALUES
(1, 'Term I', 1, '2022-05-14 13:33:21', '2022-05-14 13:33:21'),
(2, 'Term II', 1, '2022-05-14 13:33:21', '2022-05-14 13:33:21'),
(3, 'Term III', 1, '2022-05-14 13:33:51', '2022-05-14 13:33:51');

-- --------------------------------------------------------

--
-- Table structure for table `timetables`
--

CREATE TABLE `timetables` (
  `ttId` int(11) NOT NULL,
  `ttOrgClsStfId` int(11) NOT NULL,
  `ttTimeSlotId` int(11) NOT NULL,
  `ttStartDuration` time NOT NULL,
  `ttEndDuration` time NOT NULL,
  `ttDays` int(11) NOT NULL COMMENT '1-Monday\r\n2-Tuesday\r\n3-Wednesday\r\n4-Thursday\r\n5-Friday\r\n6-Saturday\r\n7-Sunday(SpecialClasses)',
  `ttIsPETPeriod` tinyint(4) NOT NULL DEFAULT 0,
  `ttIsSeminar` int(11) NOT NULL,
  `ttIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `videoid` text DEFAULT NULL,
  `otherlinks` varchar(200) DEFAULT NULL,
  `onlinetestid` int(11) DEFAULT NULL,
  `imageurl` varchar(200) DEFAULT NULL,
  `mediumid` int(11) NOT NULL,
  `standardid` int(11) NOT NULL,
  `subjectid` int(11) NOT NULL,
  `syllabusid` int(11) NOT NULL,
  `lessonid` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`, `description`, `videoid`, `otherlinks`, `onlinetestid`, `imageurl`, `mediumid`, `standardid`, `subjectid`, `syllabusid`, `lessonid`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Organic Compounds', 'A Detailed analysis of organic compounds.', 'https://youtu.be/vZd6gXXVG3A', '', 1, '', 2, 5, 2, 2, 36, 1, '2022-07-07 06:10:38', '2022-07-07 06:10:38'),
(3, 'Gravity', 'Questions related to gravity', 'https://youtu.be/WfNfpooJHrQ', 'some url', 1, 'null', 2, 5, 2, 3, 37, 1, '2022-07-09 00:46:16', '2022-07-13 04:40:03'),
(4, 'Fluids', 'description', 'https://youtu.be/_wbvVHHvlQk', 'urls as', 2, 'C:\\fakepath\\Light_Suppressor.litematic', 2, 5, 2, 2, 37, 1, '2022-07-09 00:48:45', '2022-07-09 00:48:45'),
(6, 'Dynamics', 'kellog', 'https://youtu.be/9Pb-pne81GU', 'https', 2, 'C:\\fakepath\\Light_Suppressor.litematic', 2, 5, 2, 2, 36, 1, '2022-07-09 00:54:20', '2022-07-09 00:54:20'),
(9, 'Adjectives', 'Some desc', 'https://youtu.be/CEhzbVmpZn8', 'shshsh', 1, 'C:\\fakepath\\WhatsApp Image 2022-05-12 at 9.44.34 PM.jpeg', 2, 5, 2, 2, 37, 1, '2022-08-07 08:20:57', '2022-08-07 08:20:57'),
(13, 'some topic', 'fake description', 'https://youtu.be/CEhzbVmpZn9', NULL, NULL, NULL, 2, 5, 2, 2, 5, 1, '2022-09-16 07:38:19', '2022-09-16 07:38:19');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `useragent_analytics`
--

INSERT INTO `useragent_analytics` (`ua_id`, `username`, `user_agent`, `ip`, `ip2`, `status`, `created_at`, `updated_at`) VALUES
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
(37, 'hf-stu-0001', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-10-06 08:04:53', '2022-10-06 08:04:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `userOrgId` int(11) NOT NULL,
  `userOrgSubId` int(11) NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `usertype` tinyint(4) NOT NULL COMMENT '1. SuperAdmin\n2. Admin\n3. Children\n4. Staff\n5. Manager\n6. Others',
  `id_picture` varchar(150) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `userOrgId`, `userOrgSubId`, `username`, `password`, `usertype`, `id_picture`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 1, '2022-03-05 13:41:24', '2022-03-05 13:41:24'),
(2, 1, 1, 'nandha', 'e10adc3949ba59abbe56e057f20f883e', 2, 'uploads/StudentData/Id_cards/nandha_2.jpg', 1, '2022-06-30 07:12:27', '2022-06-30 07:12:27'),
(11, 1, 1, 'hf-stu-0001', 'e10adc3949ba59abbe56e057f20f883e', 3, 'uploads/StudentData/Id_cards/Harikumar_11.jpg', 1, '2022-06-05 03:12:10', '2022-06-05 03:12:10'),
(15, 1, 1, 'hf-stu-0005', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-07-04 02:48:12', '2022-07-04 02:48:12'),
(16, 1, 1, 'hf-stf-0001', 'e10adc3949ba59abbe56e057f20f883e', 4, NULL, 1, '2022-08-10 14:30:05', '2022-08-10 14:30:05'),
(19, 1, 1, 'hf-stu-0006', 'e10adc3949ba59abbe56e057f20f883e', 3, 'uploads/studentData/Id_cards/afafaf_19.jpg', 1, '2022-08-12 01:37:53', '2022-08-12 01:37:53'),
(21, 1, 1, 'hf-stu-0007', 'e10adc3949ba59abbe56e057f20f883e', 3, 'uploads/studentData/Id_cards/hfhdh_21.jpg', 1, '2022-08-12 01:53:38', '2022-10-05 13:31:46'),
(34, 1, 0, '9456212541', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 1, '2022-08-22 11:05:37', '2022-08-22 11:05:37'),
(35, 1, 0, 'hf-stu-00011', 'e10adc3949ba59abbe56e057f20f883e', 3, 'uploads/studentData/Id_cards/afe_35.jpg', 1, '2022-08-22 12:16:43', '2022-08-22 12:16:43'),
(36, 1, 0, 'hf-stu-00012', 'e10adc3949ba59abbe56e057f20f883e', 3, 'uploads/studentData/Id_cards/Ragu_36.jpg', 1, '2022-08-29 06:32:42', '2022-08-29 06:32:42'),
(37, 1, 0, 'hf-stu-00013', 'e10adc3949ba59abbe56e057f20f883e', 3, 'uploads/studentData/Id_cards/Venkadesh_37.jpg', 1, '2022-09-03 04:38:33', '2022-09-03 04:38:33'),
(1846, 1, 0, 'hf-stu-00014', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:37', '2022-09-21 00:54:37'),
(1847, 1, 0, 'hf-stu-000465', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:37', '2022-09-21 00:54:37'),
(1848, 1, 0, 'hf-stu-000466', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:37', '2022-09-21 00:54:37'),
(1849, 1, 0, 'hf-stu-000467', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(1850, 1, 0, 'hf-stu-000468', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(1851, 1, 0, 'hf-stu-000469', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(1852, 1, 0, 'hf-stu-000470', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(1853, 1, 0, 'hf-stu-000471', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(1854, 1, 0, 'hf-stu-000472', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:38', '2022-09-21 00:54:38'),
(1855, 1, 0, 'hf-stu-000473', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(1856, 1, 0, 'hf-stu-000474', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(1857, 1, 0, 'hf-stu-000475', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(1858, 1, 0, 'hf-stu-000476', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(1859, 1, 0, 'hf-stu-000477', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(1860, 1, 0, 'hf-stu-000478', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:39', '2022-09-21 00:54:39'),
(1861, 1, 0, 'hf-stu-000479', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(1862, 1, 0, 'hf-stu-000480', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(1863, 1, 0, 'hf-stu-000481', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(1864, 1, 0, 'hf-stu-000482', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(1865, 1, 0, 'hf-stu-000483', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:40', '2022-09-21 00:54:40'),
(1866, 1, 0, 'hf-stu-000484', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(1867, 1, 0, 'hf-stu-000485', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(1868, 1, 0, 'hf-stu-000486', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(1869, 1, 0, 'hf-stu-000487', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(1870, 1, 0, 'hf-stu-000488', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(1871, 1, 0, 'hf-stu-000489', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:41', '2022-09-21 00:54:41'),
(1872, 1, 0, 'hf-stu-000490', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(1873, 1, 0, 'hf-stu-000491', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(1874, 1, 0, 'hf-stu-000492', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(1875, 1, 0, 'hf-stu-000493', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(1876, 1, 0, 'hf-stu-000494', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(1877, 1, 0, 'hf-stu-000495', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:42', '2022-09-21 00:54:42'),
(1878, 1, 0, 'hf-stu-000496', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(1879, 1, 0, 'hf-stu-000497', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(1880, 1, 0, 'hf-stu-000498', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(1881, 1, 0, 'hf-stu-000499', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(1882, 1, 0, 'hf-stu-000500', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:43', '2022-09-21 00:54:43'),
(1883, 1, 0, 'hf-stu-000501', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(1884, 1, 0, 'hf-stu-000502', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(1885, 1, 0, 'hf-stu-000503', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(1886, 1, 0, 'hf-stu-000504', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(1887, 1, 0, 'hf-stu-000505', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(1888, 1, 0, 'hf-stu-000506', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:44', '2022-09-21 00:54:44'),
(1889, 1, 0, 'hf-stu-000507', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(1890, 1, 0, 'hf-stu-000508', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(1891, 1, 0, 'hf-stu-000509', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(1892, 1, 0, 'hf-stu-000510', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(1893, 1, 0, 'hf-stu-000511', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:45', '2022-09-21 00:54:45'),
(1894, 1, 0, 'hf-stu-000512', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(1895, 1, 0, 'hf-stu-000513', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(1896, 1, 0, 'hf-stu-000514', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(1897, 1, 0, 'hf-stu-000515', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(1898, 1, 0, 'hf-stu-000516', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(1899, 1, 0, 'hf-stu-000517', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:46', '2022-09-21 00:54:46'),
(1900, 1, 0, 'hf-stu-000518', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(1901, 1, 0, 'hf-stu-000519', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(1902, 1, 0, 'hf-stu-000520', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(1903, 1, 0, 'hf-stu-000521', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(1904, 1, 0, 'hf-stu-000522', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:47', '2022-09-21 00:54:47'),
(1905, 1, 0, 'hf-stu-000523', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(1906, 1, 0, 'hf-stu-000524', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(1907, 1, 0, 'hf-stu-000525', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(1908, 1, 0, 'hf-stu-000526', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(1909, 1, 0, 'hf-stu-000527', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(1910, 1, 0, 'hf-stu-000528', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:48', '2022-09-21 00:54:48'),
(1911, 1, 0, 'hf-stu-000529', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(1912, 1, 0, 'hf-stu-000530', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(1913, 1, 0, 'hf-stu-000531', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(1914, 1, 0, 'hf-stu-000532', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(1915, 1, 0, 'hf-stu-000533', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:49', '2022-09-21 00:54:49'),
(1916, 1, 0, 'hf-stu-000534', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(1917, 1, 0, 'hf-stu-000535', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(1918, 1, 0, 'hf-stu-000536', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(1919, 1, 0, 'hf-stu-000537', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(1920, 1, 0, 'hf-stu-000538', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(1921, 1, 0, 'hf-stu-000539', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:50', '2022-09-21 00:54:50'),
(1922, 1, 0, 'hf-stu-000540', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(1923, 1, 0, 'hf-stu-000541', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(1924, 1, 0, 'hf-stu-000542', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(1925, 1, 0, 'hf-stu-000543', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(1926, 1, 0, 'hf-stu-000544', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:51', '2022-09-21 00:54:51'),
(1927, 1, 0, 'hf-stu-000545', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(1928, 1, 0, 'hf-stu-000546', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(1929, 1, 0, 'hf-stu-000547', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(1930, 1, 0, 'hf-stu-000548', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(1931, 1, 0, 'hf-stu-000549', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(1932, 1, 0, 'hf-stu-000550', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:52', '2022-09-21 00:54:52'),
(1933, 1, 0, 'hf-stu-000551', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(1934, 1, 0, 'hf-stu-000552', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(1935, 1, 0, 'hf-stu-000553', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(1936, 1, 0, 'hf-stu-000554', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(1937, 1, 0, 'hf-stu-000555', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(1938, 1, 0, 'hf-stu-000556', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:53', '2022-09-21 00:54:53'),
(1939, 1, 0, 'hf-stu-000557', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(1940, 1, 0, 'hf-stu-000558', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(1941, 1, 0, 'hf-stu-000559', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(1942, 1, 0, 'hf-stu-000560', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(1943, 1, 0, 'hf-stu-000561', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:54', '2022-09-21 00:54:54'),
(1944, 1, 0, 'hf-stu-000562', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(1945, 1, 0, 'hf-stu-000563', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(1946, 1, 0, 'hf-stu-000564', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(1947, 1, 0, 'hf-stu-000565', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(1948, 1, 0, 'hf-stu-000566', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(1949, 1, 0, 'hf-stu-000567', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:55', '2022-09-21 00:54:55'),
(1950, 1, 0, 'hf-stu-000568', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(1951, 1, 0, 'hf-stu-000569', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(1952, 1, 0, 'hf-stu-000570', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(1953, 1, 0, 'hf-stu-000571', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:56', '2022-09-21 00:54:56'),
(1954, 1, 0, 'hf-stu-000572', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(1955, 1, 0, 'hf-stu-000573', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(1956, 1, 0, 'hf-stu-000574', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(1957, 1, 0, 'hf-stu-000575', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(1958, 1, 0, 'hf-stu-000576', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:57', '2022-09-21 00:54:57'),
(1959, 1, 0, 'hf-stu-000577', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(1960, 1, 0, 'hf-stu-000578', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(1961, 1, 0, 'hf-stu-000579', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(1962, 1, 0, 'hf-stu-000580', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(1963, 1, 0, 'hf-stu-000581', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:58', '2022-09-21 00:54:58'),
(1964, 1, 0, 'hf-stu-000582', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(1965, 1, 0, 'hf-stu-000583', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(1966, 1, 0, 'hf-stu-000584', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(1967, 1, 0, 'hf-stu-000585', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(1968, 1, 0, 'hf-stu-000586', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:54:59', '2022-09-21 00:54:59'),
(1969, 1, 0, 'hf-stu-000587', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(1970, 1, 0, 'hf-stu-000588', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(1971, 1, 0, 'hf-stu-000589', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(1972, 1, 0, 'hf-stu-000590', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(1973, 1, 0, 'hf-stu-000591', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:00', '2022-09-21 00:55:00'),
(1974, 1, 0, 'hf-stu-000592', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(1975, 1, 0, 'hf-stu-000593', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(1976, 1, 0, 'hf-stu-000594', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(1977, 1, 0, 'hf-stu-000595', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(1978, 1, 0, 'hf-stu-000596', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:01', '2022-09-21 00:55:01'),
(1979, 1, 0, 'hf-stu-000597', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(1980, 1, 0, 'hf-stu-000598', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(1981, 1, 0, 'hf-stu-000599', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(1982, 1, 0, 'hf-stu-000600', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(1983, 1, 0, 'hf-stu-000601', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:02', '2022-09-21 00:55:02'),
(1984, 1, 0, 'hf-stu-000602', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(1985, 1, 0, 'hf-stu-000603', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(1986, 1, 0, 'hf-stu-000604', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(1987, 1, 0, 'hf-stu-000605', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(1988, 1, 0, 'hf-stu-000606', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:03'),
(1989, 1, 0, 'hf-stu-000607', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:03', '2022-09-21 00:55:04'),
(1990, 1, 0, 'hf-stu-000608', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(1991, 1, 0, 'hf-stu-000609', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(1992, 1, 0, 'hf-stu-000610', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(1993, 1, 0, 'hf-stu-000611', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(1994, 1, 0, 'hf-stu-000612', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:04', '2022-09-21 00:55:04'),
(1995, 1, 0, 'hf-stu-000613', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(1996, 1, 0, 'hf-stu-000614', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(1997, 1, 0, 'hf-stu-000615', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(1998, 1, 0, 'hf-stu-000616', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:05', '2022-09-21 00:55:05'),
(1999, 1, 0, 'hf-stu-000617', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(2000, 1, 0, 'hf-stu-000618', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(2001, 1, 0, 'hf-stu-000619', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(2002, 1, 0, 'hf-stu-000620', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(2003, 1, 0, 'hf-stu-000621', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(2004, 1, 0, 'hf-stu-000622', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:06', '2022-09-21 00:55:06'),
(2005, 1, 0, 'hf-stu-000623', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(2006, 1, 0, 'hf-stu-000624', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(2007, 1, 0, 'hf-stu-000625', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(2008, 1, 0, 'hf-stu-000626', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:07', '2022-09-21 00:55:07'),
(2009, 1, 0, 'hf-stu-000627', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:07', '2022-09-21 00:55:08'),
(2010, 1, 0, 'hf-stu-000628', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(2011, 1, 0, 'hf-stu-000629', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(2012, 1, 0, 'hf-stu-000630', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(2013, 1, 0, 'hf-stu-000631', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:08', '2022-09-21 00:55:08'),
(2014, 1, 0, 'hf-stu-000632', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(2015, 1, 0, 'hf-stu-000633', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(2016, 1, 0, 'hf-stu-000634', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(2017, 1, 0, 'hf-stu-000635', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(2018, 1, 0, 'hf-stu-000636', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:09', '2022-09-21 00:55:09'),
(2019, 1, 0, 'hf-stu-000637', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(2020, 1, 0, 'hf-stu-000638', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(2021, 1, 0, 'hf-stu-000639', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(2022, 1, 0, 'hf-stu-000640', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(2023, 1, 0, 'hf-stu-000641', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:10', '2022-09-21 00:55:10'),
(2024, 1, 0, 'hf-stu-000642', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(2025, 1, 0, 'hf-stu-000643', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(2026, 1, 0, 'hf-stu-000644', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(2027, 1, 0, 'hf-stu-000645', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(2028, 1, 0, 'hf-stu-000646', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:11', '2022-09-21 00:55:11'),
(2029, 1, 0, 'hf-stu-000647', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(2030, 1, 0, 'hf-stu-000648', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(2031, 1, 0, 'hf-stu-000649', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(2032, 1, 0, 'hf-stu-000650', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(2033, 1, 0, 'hf-stu-000651', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(2034, 1, 0, 'hf-stu-000652', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:12', '2022-09-21 00:55:12'),
(2035, 1, 0, 'hf-stu-000653', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(2036, 1, 0, 'hf-stu-000654', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(2037, 1, 0, 'hf-stu-000655', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(2038, 1, 0, 'hf-stu-000656', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(2039, 1, 0, 'hf-stu-000657', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:13', '2022-09-21 00:55:13'),
(2040, 1, 0, 'hf-stu-000658', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(2041, 1, 0, 'hf-stu-000659', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(2042, 1, 0, 'hf-stu-000660', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(2043, 1, 0, 'hf-stu-000661', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(2044, 1, 0, 'hf-stu-000662', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(2045, 1, 0, 'hf-stu-000663', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:14', '2022-09-21 00:55:14'),
(2046, 1, 0, 'hf-stu-000664', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(2047, 1, 0, 'hf-stu-000665', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(2048, 1, 0, 'hf-stu-000666', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(2049, 1, 0, 'hf-stu-000667', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(2050, 1, 0, 'hf-stu-000668', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:15', '2022-09-21 00:55:15'),
(2051, 1, 0, 'hf-stu-000669', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(2052, 1, 0, 'hf-stu-000670', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(2053, 1, 0, 'hf-stu-000671', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(2054, 1, 0, 'hf-stu-000672', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:16', '2022-09-21 00:55:16'),
(2055, 1, 0, 'hf-stu-000673', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(2056, 1, 0, 'hf-stu-000674', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(2057, 1, 0, 'hf-stu-000675', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(2058, 1, 0, 'hf-stu-000676', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:17', '2022-09-21 00:55:17'),
(2059, 1, 0, 'hf-stu-000677', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(2060, 1, 0, 'hf-stu-000678', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(2061, 1, 0, 'hf-stu-000679', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(2062, 1, 0, 'hf-stu-000680', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(2063, 1, 0, 'hf-stu-000681', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:18', '2022-09-21 00:55:18'),
(2064, 1, 0, 'hf-stu-000682', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(2065, 1, 0, 'hf-stu-000683', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(2066, 1, 0, 'hf-stu-000684', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(2067, 1, 0, 'hf-stu-000685', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(2068, 1, 0, 'hf-stu-000686', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:19', '2022-09-21 00:55:19'),
(2069, 1, 0, 'hf-stu-000687', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(2070, 1, 0, 'hf-stu-000688', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(2071, 1, 0, 'hf-stu-000689', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(2072, 1, 0, 'hf-stu-000690', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(2073, 1, 0, 'hf-stu-000691', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:20', '2022-09-21 00:55:20'),
(2074, 1, 0, 'hf-stu-000692', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(2075, 1, 0, 'hf-stu-000692', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(2076, 1, 0, 'hf-stu-000694', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(2077, 1, 0, 'hf-stu-000695', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(2078, 1, 0, 'hf-stu-000696', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(2079, 1, 0, 'hf-stu-000697', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:21', '2022-09-21 00:55:21'),
(2080, 1, 0, 'hf-stu-000698', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(2081, 1, 0, 'hf-stu-000699', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(2082, 1, 0, 'hf-stu-000700', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(2083, 1, 0, 'hf-stu-000701', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(2084, 1, 0, 'hf-stu-000702', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:22', '2022-09-21 00:55:22'),
(2085, 1, 0, 'hf-stu-000703', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(2086, 1, 0, 'hf-stu-000704', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(2087, 1, 0, 'hf-stu-000705', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(2088, 1, 0, 'hf-stu-000706', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(2089, 1, 0, 'hf-stu-000707', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:23', '2022-09-21 00:55:23'),
(2090, 1, 0, 'hf-stu-000708', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(2091, 1, 0, 'hf-stu-000709', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(2092, 1, 0, 'hf-stu-000710', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(2093, 1, 0, 'hf-stu-000711', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(2094, 1, 0, 'hf-stu-000712', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:24', '2022-09-21 00:55:24'),
(2095, 1, 0, 'hf-stu-000713', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(2096, 1, 0, 'hf-stu-000714', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(2097, 1, 0, 'hf-stu-000715', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(2098, 1, 0, 'hf-stu-000716', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(2099, 1, 0, 'hf-stu-000717', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(2100, 1, 0, 'hf-stu-000718', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:25', '2022-09-21 00:55:25'),
(2101, 1, 0, 'hf-stu-000719', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(2102, 1, 0, 'hf-stu-000720', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(2103, 1, 0, 'hf-stu-000721', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(2104, 1, 0, 'hf-stu-000722', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(2105, 1, 0, 'hf-stu-000723', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:26', '2022-09-21 00:55:26'),
(2106, 1, 0, 'hf-stu-000724', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(2107, 1, 0, 'hf-stu-000725', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(2108, 1, 0, 'hf-stu-000726', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(2109, 1, 0, 'hf-stu-000727', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(2110, 1, 0, 'hf-stu-000728', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:27', '2022-09-21 00:55:27'),
(2111, 1, 0, 'hf-stu-000729', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(2112, 1, 0, 'hf-stu-000730', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(2113, 1, 0, 'hf-stu-000731', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(2114, 1, 0, 'hf-stu-000732', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(2115, 1, 0, 'hf-stu-000733', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(2116, 1, 0, 'hf-stu-000734', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:28', '2022-09-21 00:55:28'),
(2117, 1, 0, 'hf-stu-000735', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(2118, 1, 0, 'hf-stu-000736', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(2119, 1, 0, 'hf-stu-000737', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(2120, 1, 0, 'hf-stu-000738', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(2121, 1, 0, 'hf-stu-000739', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(2122, 1, 0, 'hf-stu-000740', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:29', '2022-09-21 00:55:29'),
(2123, 1, 0, 'hf-stu-000741', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(2124, 1, 0, 'hf-stu-000742', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(2125, 1, 0, 'hf-stu-000743', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(2126, 1, 0, 'hf-stu-000744', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(2127, 1, 0, 'hf-stu-000745', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:30', '2022-09-21 00:55:30'),
(2128, 1, 0, 'hf-stu-000746', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(2129, 1, 0, 'hf-stu-000747', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(2130, 1, 0, 'hf-stu-000748', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(2131, 1, 0, 'hf-stu-000749', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(2132, 1, 0, 'hf-stu-000750', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(2133, 1, 0, 'hf-stu-000751', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:31', '2022-09-21 00:55:31'),
(2134, 1, 0, 'hf-stu-000752', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:32', '2022-09-21 00:55:32'),
(2135, 1, 0, 'hf-stu-000753', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:32', '2022-09-21 00:55:32'),
(2136, 1, 0, 'hf-stu-000754', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:32', '2022-09-21 00:55:32'),
(2137, 1, 0, 'hf-stu-000755', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:33', '2022-09-21 00:55:33'),
(2138, 1, 0, 'hf-stu-000756', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:33', '2022-09-21 00:55:33'),
(2139, 1, 0, 'hf-stu-000757', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:34', '2022-09-21 00:55:34'),
(2140, 1, 0, 'hf-stu-000758', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:34', '2022-09-21 00:55:34'),
(2141, 1, 0, 'hf-stu-000759', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:34', '2022-09-21 00:55:34'),
(2142, 1, 0, 'hf-stu-000760', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(2143, 1, 0, 'hf-stu-000761', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(2144, 1, 0, 'hf-stu-000762', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(2145, 1, 0, 'hf-stu-000763', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:35', '2022-09-21 00:55:35'),
(2146, 1, 0, 'hf-stu-000764', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(2147, 1, 0, 'hf-stu-000765', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(2148, 1, 0, 'hf-stu-000766', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(2149, 1, 0, 'hf-stu-000767', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(2150, 1, 0, 'hf-stu-000768', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:36', '2022-09-21 00:55:36'),
(2151, 1, 0, 'hf-stu-000769', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(2152, 1, 0, 'hf-stu-000770', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(2153, 1, 0, 'hf-stu-000771', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(2154, 1, 0, 'hf-stu-000772', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:37', '2022-09-21 00:55:37'),
(2155, 1, 0, 'hf-stu-000773', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(2156, 1, 0, 'hf-stu-000774', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(2157, 1, 0, 'hf-stu-000775', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(2158, 1, 0, 'hf-stu-000776', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(2159, 1, 0, 'hf-stu-000777', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:38', '2022-09-21 00:55:38'),
(2160, 1, 0, 'hf-stu-000778', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(2161, 1, 0, 'hf-stu-000779', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(2162, 1, 0, 'hf-stu-000780', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(2163, 1, 0, 'hf-stu-000781', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(2164, 1, 0, 'hf-stu-000782', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:39', '2022-09-21 00:55:39'),
(2165, 1, 0, 'hf-stu-000783', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(2166, 1, 0, 'hf-stu-000784', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(2167, 1, 0, 'hf-stu-000785', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(2168, 1, 0, 'hf-stu-000786', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(2169, 1, 0, 'hf-stu-000787', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:40', '2022-09-21 00:55:40'),
(2170, 1, 0, 'hf-stu-000788', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(2171, 1, 0, 'hf-stu-000789', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(2172, 1, 0, 'hf-stu-000790', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(2173, 1, 0, 'hf-stu-000791', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(2174, 1, 0, 'hf-stu-000792', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:41', '2022-09-21 00:55:41'),
(2175, 1, 0, 'hf-stu-000793', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(2176, 1, 0, 'hf-stu-000794', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(2177, 1, 0, 'hf-stu-000795', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(2178, 1, 0, 'hf-stu-000796', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(2179, 1, 0, 'hf-stu-000797', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:42', '2022-09-21 00:55:42'),
(2180, 1, 0, 'hf-stu-000798', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(2181, 1, 0, 'hf-stu-000799', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(2182, 1, 0, 'hf-stu-000800', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(2183, 1, 0, 'hf-stu-000801', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:43', '2022-09-21 00:55:43'),
(2184, 1, 0, 'hf-stu-000802', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(2185, 1, 0, 'hf-stu-000803', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(2186, 1, 0, 'hf-stu-000804', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(2187, 1, 0, 'hf-stu-000805', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(2188, 1, 0, 'hf-stu-000806', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(2189, 1, 0, 'hf-stu-000807', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:44', '2022-09-21 00:55:44'),
(2190, 1, 0, 'hf-stu-000808', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(2191, 1, 0, 'hf-stu-000809', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(2192, 1, 0, 'hf-stu-000810', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(2193, 1, 0, 'hf-stu-000811', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(2194, 1, 0, 'hf-stu-000812', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:45', '2022-09-21 00:55:45'),
(2195, 1, 0, 'hf-stu-000813', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(2196, 1, 0, 'hf-stu-000814', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(2197, 1, 0, 'hf-stu-000815', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(2198, 1, 0, 'hf-stu-000816', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(2199, 1, 0, 'hf-stu-000817', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:46', '2022-09-21 00:55:46'),
(2200, 1, 0, 'hf-stu-000818', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(2201, 1, 0, 'hf-stu-000819', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(2202, 1, 0, 'hf-stu-000820', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(2203, 1, 0, 'hf-stu-000821', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(2204, 1, 0, 'hf-stu-000822', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(2205, 1, 0, 'hf-stu-000823', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:47', '2022-09-21 00:55:47'),
(2206, 1, 0, 'hf-stu-000824', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(2207, 1, 0, 'hf-stu-000825', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(2208, 1, 0, 'hf-stu-000826', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(2209, 1, 0, 'hf-stu-000827', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:48', '2022-09-21 00:55:48'),
(2210, 1, 0, 'hf-stu-000828', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:49', '2022-09-21 00:55:49'),
(2211, 1, 0, 'hf-stu-000829', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:49', '2022-09-21 00:55:49'),
(2212, 1, 0, 'hf-stu-000830', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(2213, 1, 0, 'hf-stu-000831', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(2214, 1, 0, 'hf-stu-000832', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(2215, 1, 0, 'hf-stu-000833', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:50', '2022-09-21 00:55:50'),
(2216, 1, 0, 'hf-stu-000834', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(2217, 1, 0, 'hf-stu-000835', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(2218, 1, 0, 'hf-stu-000836', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(2219, 1, 0, 'hf-stu-000837', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(2220, 1, 0, 'hf-stu-000838', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:51', '2022-09-21 00:55:51'),
(2221, 1, 0, 'hf-stu-000839', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(2222, 1, 0, 'hf-stu-000840', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(2223, 1, 0, 'hf-stu-000841', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(2224, 1, 0, 'hf-stu-000842', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(2225, 1, 0, 'hf-stu-000843', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:52', '2022-09-21 00:55:52'),
(2226, 1, 0, 'hf-stu-000844', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(2227, 1, 0, 'hf-stu-000845', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(2228, 1, 0, 'hf-stu-000846', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(2229, 1, 0, 'hf-stu-000847', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(2230, 1, 0, 'hf-stu-000848', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:53', '2022-09-21 00:55:53'),
(2231, 1, 0, 'hf-stu-000849', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(2232, 1, 0, 'hf-stu-000850', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(2233, 1, 0, 'hf-stu-000851', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(2234, 1, 0, 'hf-stu-000852', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:54', '2022-09-21 00:55:54'),
(2235, 1, 0, 'hf-stu-000853', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(2236, 1, 0, 'hf-stu-000854', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(2237, 1, 0, 'hf-stu-000855', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55');
INSERT INTO `users` (`id`, `userOrgId`, `userOrgSubId`, `username`, `password`, `usertype`, `id_picture`, `status`, `created_at`, `updated_at`) VALUES
(2238, 1, 0, 'hf-stu-000856', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(2239, 1, 0, 'hf-stu-000857', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:55', '2022-09-21 00:55:55'),
(2240, 1, 0, 'hf-stu-000858', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(2241, 1, 0, 'hf-stu-000859', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(2242, 1, 0, 'hf-stu-000860', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(2243, 1, 0, 'hf-stu-000861', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(2244, 1, 0, 'hf-stu-000862', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(2245, 1, 0, 'hf-stu-000863', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:56', '2022-09-21 00:55:56'),
(2246, 1, 0, 'hf-stu-000864', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(2247, 1, 0, 'hf-stu-000865', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(2248, 1, 0, 'hf-stu-000866', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(2249, 1, 0, 'hf-stu-000867', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(2250, 1, 0, 'hf-stu-000868', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:57', '2022-09-21 00:55:57'),
(2251, 1, 0, 'hf-stu-000869', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(2252, 1, 0, 'hf-stu-000870', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(2253, 1, 0, 'hf-stu-000871', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(2254, 1, 0, 'hf-stu-000872', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(2255, 1, 0, 'hf-stu-000873', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:58', '2022-09-21 00:55:58'),
(2256, 1, 0, 'hf-stu-000874', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(2257, 1, 0, 'hf-stu-000875', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(2258, 1, 0, 'hf-stu-000876', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(2259, 1, 0, 'hf-stu-000877', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(2260, 1, 0, 'hf-stu-000878', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:55:59', '2022-09-21 00:55:59'),
(2261, 1, 0, 'hf-stu-000879', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(2262, 1, 0, 'hf-stu-000880', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(2263, 1, 0, 'hf-stu-000881', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(2264, 1, 0, 'hf-stu-000882', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(2265, 1, 0, 'hf-stu-000883', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:00', '2022-09-21 00:56:00'),
(2266, 1, 0, 'hf-stu-000884', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(2267, 1, 0, 'hf-stu-000885', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(2268, 1, 0, 'hf-stu-000886', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(2269, 1, 0, 'hf-stu-000887', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(2270, 1, 0, 'hf-stu-000888', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:01', '2022-09-21 00:56:01'),
(2271, 1, 0, 'hf-stu-000889', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(2272, 1, 0, 'hf-stu-000890', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(2273, 1, 0, 'hf-stu-000891', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(2274, 1, 0, 'hf-stu-000892', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(2275, 1, 0, 'hf-stu-000893', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:02', '2022-09-21 00:56:02'),
(2276, 1, 0, 'hf-stu-000894', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(2277, 1, 0, 'hf-stu-000895', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(2278, 1, 0, 'hf-stu-000896', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(2279, 1, 0, 'hf-stu-000897', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(2280, 1, 0, 'hf-stu-000898', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:03', '2022-09-21 00:56:03'),
(2281, 1, 0, 'hf-stu-000899', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(2282, 1, 0, 'hf-stu-000900', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(2283, 1, 0, 'hf-stu-000901', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(2284, 1, 0, 'hf-stu-000902', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(2285, 1, 0, 'hf-stu-000903', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:04', '2022-09-21 00:56:04'),
(2286, 1, 0, 'hf-stu-000904', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(2287, 1, 0, 'hf-stu-000905', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(2288, 1, 0, 'hf-stu-000906', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(2289, 1, 0, 'hf-stu-000907', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(2290, 1, 0, 'hf-stu-000908', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(2291, 1, 0, 'hf-stu-000909', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:05', '2022-09-21 00:56:05'),
(2292, 1, 0, 'hf-stu-000910', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(2293, 1, 0, 'hf-stu-000911', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(2294, 1, 0, 'hf-stu-000912', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(2295, 1, 0, 'hf-stu-000913', 'e10adc3949ba59abbe56e057f20f883e', 3, NULL, 1, '2022-09-21 00:56:06', '2022-09-21 00:56:06'),
(2380, 1, 0, 'hf-stu-000914', 'e10adc3949ba59abbe56e057f20f883e', 3, 'uploads/studentData/Id_cards/test_2380.jpg', 1, '2022-09-29 04:44:35', '2022-09-29 04:44:35');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `firstname` varchar(55) DEFAULT NULL,
  `lastname` varchar(55) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `years_of_exp` int(11) NOT NULL DEFAULT 0,
  `contact_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `email_id` int(11) DEFAULT NULL,
  `date_of_hiring` date DEFAULT NULL,
  `proof_type` text DEFAULT NULL,
  `proof_no` text DEFAULT NULL,
  `proof_expiry` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `userid`, `firstname`, `lastname`, `gender`, `dob`, `years_of_exp`, `contact_id`, `address_id`, `email_id`, `date_of_hiring`, `proof_type`, `proof_no`, `proof_expiry`, `status`, `created_at`, `updated_at`) VALUES
(1, 34, 'Naadi', 'Muthu', 1, '2022-08-01', 21, 22, 21, 24, '2022-08-02', 'Driving License', 'afafeffefe', '2022-08-31', 1, '2022-01-13 09:27:16', '2022-02-15 18:30:00'),
(2, 2, 'Nandha kumar', 'Subramanian', 1, '2008-08-07', 12, 22, 21, 24, '2015-08-13', 'Driving License', '20514 0558 05888', '2023-08-10', 1, '2022-01-25 18:30:00', '2022-08-25 09:28:37'),
(3, 1, 'Admin', 'PrivilagedUser', 2, '1999-08-11', 3, 22, 21, 24, '2009-08-06', 'Driving License', 'AXIKLSJUJ A', '2028-08-10', 1, '2022-09-02 18:30:00', '2022-09-03 09:29:04');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `vdId` int(11) NOT NULL,
  `vdTitle` varchar(55) NOT NULL,
  `vdDescription` varchar(55) NOT NULL,
  `vdLink` varchar(255) NOT NULL,
  `vdOtherLink` varchar(255) NOT NULL,
  `vdIsStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`vdId`, `vdTitle`, `vdDescription`, `vdLink`, `vdOtherLink`, `vdIsStatus`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'https://www.youtube.com/embed/ulbArdzhOVI?controls=0&modestbranding=1', 'http://localhost/hopefoundation', 0, '2022-07-12 06:37:06', '2022-10-06 02:29:35'),
(2, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'https://www.youtube.com/embed/ulbArdzhOVI?controls=0&modestbranding=1', 'http://localhost/hopefoundation', 1, '2022-07-12 06:38:43', '2022-07-12 06:55:11'),
(3, 'Lesson 4', 'Video for lesson 4', 'https://www.youtube.com/embed/ulbArdzhOVI?controls=0&modestbranding=1', 'http://localhost/hopefoundation', 1, '2022-07-12 06:38:43', '2022-07-12 06:55:11');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_onlinetests`
-- (See below for the actual view)
--
CREATE TABLE `view_onlinetests` (
`id` int(11)
,`question` varchar(2550)
,`topicid` int(11)
,`topicname` varchar(50)
,`difficulty` varchar(6)
,`questiontype` int(11)
,`choice` varchar(2550)
,`answer` varchar(2550)
,`marks` int(11)
,`status` tinyint(1)
,`created_at` timestamp
,`updated_at` timestamp
);

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
-- Stand-in structure for view `view_standards`
-- (See below for the actual view)
--
CREATE TABLE `view_standards` (
`clssId` int(11)
,`clssName` varchar(255)
,`clssIsStatus` tinyint(4)
,`created_at` timestamp
,`updated_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_students`
-- (See below for the actual view)
--
CREATE TABLE `view_students` (
`id` int(11)
,`firstname` varchar(255)
,`lastname` varchar(255)
,`studentstatus` varchar(9)
,`student_userid` int(11)
,`status` tinyint(4)
,`gender` int(11)
,`dob` date
,`orgnId` int(11)
,`OrgStuId` int(11)
,`ClassId` int(11)
,`SectionId` int(11)
,`academicYear` varchar(12)
,`promoted` tinyint(1)
,`transferred` tinyint(1)
,`branchName` varchar(255)
,`secnName` varchar(255)
,`clssName` varchar(255)
,`OfficialNumber` varchar(15)
,`PersonalNumber` varchar(15)
,`email` varchar(50)
,`address` varchar(255)
,`city` varchar(20)
,`state` varchar(20)
,`state_name` varchar(50)
,`pincode` varchar(10)
,`profile_pic` varchar(150)
,`username` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_subjects`
-- (See below for the actual view)
--
CREATE TABLE `view_subjects` (
`subjId` int(11)
,`subjName` varchar(255)
,`subjMediumId` int(11)
,`standardid` int(11)
,`subjIsStatus` tinyint(4)
,`created_at` timestamp
,`updated_at` timestamp
,`mmName` varchar(255)
,`clssName` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_topics`
-- (See below for the actual view)
--
CREATE TABLE `view_topics` (
`id` int(11)
,`name` varchar(50)
,`description` varchar(200)
,`videoid` text
,`otherlinks` varchar(200)
,`onlinetestid` int(11)
,`imageurl` varchar(200)
,`mediumid` int(11)
,`standardid` int(11)
,`subjectid` int(11)
,`syllabusid` int(11)
,`lessonid` int(11)
,`status` tinyint(1)
,`created_at` timestamp
,`updated_at` timestamp
,`mmName` varchar(255)
,`clssName` varchar(255)
,`syName` varchar(55)
,`subjName` varchar(255)
,`lnLessonName` varchar(55)
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
,`stuId` int(11)
,`stffId` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `lessons_view`
--
DROP TABLE IF EXISTS `lessons_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `lessons_view`  AS SELECT `a`.`lnId` AS `lnId`, `a`.`lnLessonName` AS `lessonName`, `a`.`lnLessonOrder` AS `lessonOrder`, `a`.`lnSubMasterId` AS `SubjectId`, if(`a`.`lnIsStatus` = 1,'Active','In-Active') AS `lessonstatus`, `b`.`clssName` AS `standard`, `b`.`clssId` AS `standard_id`, `e`.`mmId` AS `medium_id`, `e`.`mmName` AS `medium_name`, `c`.`subjName` AS `subject`, `d`.`syName` AS `syllabusName`, `d`.`syId` AS `syllabusId` FROM ((((`lessons` `a` left join `classes` `b` on(`a`.`lnClsMasterId` = `b`.`clssId`)) left join `subjects` `c` on(`a`.`lnSubMasterId` = `c`.`subjId`)) left join `mediums` `e` on(`a`.`lnMedMasterId` = `e`.`mmId`)) left join `syllabuses` `d` on(`a`.`lnSyMasterId` = `d`.`syId`))  ;

-- --------------------------------------------------------

--
-- Structure for view `view_onlinetests`
--
DROP TABLE IF EXISTS `view_onlinetests`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_onlinetests`  AS SELECT `onlinetests`.`id` AS `id`, `onlinetests`.`question` AS `question`, `onlinetests`.`topicid` AS `topicid`, `topics`.`name` AS `topicname`, `onlinetests`.`difficulty` AS `difficulty`, `onlinetests`.`questiontype` AS `questiontype`, `onlinetests`.`choice` AS `choice`, `onlinetests`.`answer` AS `answer`, `onlinetests`.`marks` AS `marks`, `onlinetests`.`status` AS `status`, `onlinetests`.`created_at` AS `created_at`, `onlinetests`.`updated_at` AS `updated_at` FROM (`onlinetests` left join `topics` on(`onlinetests`.`topicid` = `topics`.`id`)) ORDER BY `onlinetests`.`topicid` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `view_privileges`
--
DROP TABLE IF EXISTS `view_privileges`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_privileges`  AS SELECT `a`.`id` AS `id`, `a`.`menuname` AS `menuname`, `a`.`isdirlink` AS `isdirlink`, `a`.`icons` AS `icons`, `a`.`position` AS `position`, `a`.`ismain` AS `ismain`, `a`.`menuurls` AS `menuurls`, `a`.`islisted` AS `islisted`, `a`.`mainid` AS `mainid`, `a`.`isstatus` AS `isstatus`, `a`.`created_at` AS `created_at`, `a`.`updated_at` AS `updated_at`, `b`.`isedit` AS `isedit`, `b`.`isview` AS `isview`, `b`.`userid` AS `userid`, `b`.`isstatus` AS `prvlstatus` FROM (`menus` `a` left join `privileges` `b` on(`a`.`id` = `b`.`menuid`))  ;

-- --------------------------------------------------------

--
-- Structure for view `view_standards`
--
DROP TABLE IF EXISTS `view_standards`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_standards`  AS SELECT `classes`.`clssId` AS `clssId`, `classes`.`clssName` AS `clssName`, `classes`.`clssIsStatus` AS `clssIsStatus`, `classes`.`created_at` AS `created_at`, `classes`.`updated_at` AS `updated_at` FROM `classes` ORDER BY `classes`.`clssId` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `view_students`
--
DROP TABLE IF EXISTS `view_students`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_students`  AS SELECT `a`.`stuId` AS `id`, `a`.`stuFirstName` AS `firstname`, `a`.`stuLastName` AS `lastname`, if(`a`.`stuIsStatus` = 1,'Active','In-Active') AS `studentstatus`, `a`.`stuUserId` AS `student_userid`, `a`.`stuIsStatus` AS `status`, `a`.`stuGender` AS `gender`, `a`.`stuDOB` AS `dob`, `b`.`orstOrgMasterId` AS `orgnId`, `c`.`stuclOrgStuMasterId` AS `OrgStuId`, `c`.`stuclClsMasterId` AS `ClassId`, `c`.`stuclSecMasterId` AS `SectionId`, `c`.`stuclAcademicYear` AS `academicYear`, `c`.`promoted` AS `promoted`, `c`.`transferred` AS `transferred`, `d`.`olName` AS `branchName`, `e`.`secnSecName` AS `secnName`, `f`.`clssName` AS `clssName`, `i`.`condOfficialNumber` AS `OfficialNumber`, `i`.`condPersonalNumber` AS `PersonalNumber`, `j`.`emlOfficialAddress` AS `email`, `k`.`address` AS `address`, `k`.`city` AS `city`, `k`.`state` AS `state`, `m`.`statename` AS `state_name`, `k`.`pincode` AS `pincode`, `l`.`id_picture` AS `profile_pic`, `l`.`username` AS `username` FROM (((((((((((`students` `a` left join `orgstudents` `b` on(`a`.`stuId` = `b`.`orstStuMasterId`)) left join `studentsclasses` `c` on(`b`.`orstId` = `c`.`stuclOrgStuMasterId`)) left join `orgdetails` `d` on(`d`.`olSubOrgId` = `b`.`branch_id`)) left join `sections` `e` on(`e`.`secnId` = `c`.`stuclSecMasterId`)) left join `classes` `f` on(`c`.`stuclClsMasterId` = `f`.`clssId`)) left join `families` `g` on(`a`.`stuUserId` = `g`.`fmStudentId`)) left join `contactdetails` `i` on(`i`.`condId` = `g`.`fmContactId`)) left join `emailaddresses` `j` on(`j`.`emlId` = `g`.`fmEmailId`)) left join `addresses` `k` on(`k`.`id` = `g`.`fmAddressId`)) left join `users` `l` on(`l`.`id` = `a`.`stuUserId`)) left join `states` `m` on(`m`.`id` = `k`.`state`))  ;

-- --------------------------------------------------------

--
-- Structure for view `view_subjects`
--
DROP TABLE IF EXISTS `view_subjects`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_subjects`  AS SELECT `subjects`.`subjId` AS `subjId`, `subjects`.`subjName` AS `subjName`, `subjects`.`subjMediumId` AS `subjMediumId`, `subjects`.`standardid` AS `standardid`, `subjects`.`subjIsStatus` AS `subjIsStatus`, `subjects`.`created_at` AS `created_at`, `subjects`.`updated_at` AS `updated_at`, `mediums`.`mmName` AS `mmName`, `classes`.`clssName` AS `clssName` FROM ((`subjects` left join `mediums` on(`subjects`.`subjMediumId` = `mediums`.`mmId`)) left join `classes` on(`subjects`.`standardid` = `classes`.`clssId`)) ORDER BY `subjects`.`subjId` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `view_topics`
--
DROP TABLE IF EXISTS `view_topics`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_topics`  AS SELECT `topics`.`id` AS `id`, `topics`.`name` AS `name`, `topics`.`description` AS `description`, `topics`.`videoid` AS `videoid`, `topics`.`otherlinks` AS `otherlinks`, `topics`.`onlinetestid` AS `onlinetestid`, `topics`.`imageurl` AS `imageurl`, `topics`.`mediumid` AS `mediumid`, `topics`.`standardid` AS `standardid`, `topics`.`subjectid` AS `subjectid`, `topics`.`syllabusid` AS `syllabusid`, `topics`.`lessonid` AS `lessonid`, `topics`.`status` AS `status`, `topics`.`created_at` AS `created_at`, `topics`.`updated_at` AS `updated_at`, `mediums`.`mmName` AS `mmName`, `classes`.`clssName` AS `clssName`, `syllabuses`.`syName` AS `syName`, `subjects`.`subjName` AS `subjName`, `lessons`.`lnLessonName` AS `lnLessonName` FROM (((((`topics` left join `mediums` on(`topics`.`mediumid` = `mediums`.`mmId`)) left join `classes` on(`topics`.`standardid` = `classes`.`clssId`)) left join `syllabuses` on(`topics`.`syllabusid` = `syllabuses`.`syId`)) left join `subjects` on(`topics`.`subjectid` = `subjects`.`subjId`)) left join `lessons` on(`topics`.`lessonid` = `lessons`.`lnId`)) ORDER BY `topics`.`id` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `view_users`
--
DROP TABLE IF EXISTS `view_users`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_users`  AS SELECT `a`.`id` AS `id`, `a`.`username` AS `username`, if(`a`.`status` = 1,'Active','In-Active') AS `userstatus`, CASE WHEN `a`.`usertype` = 1 THEN 'Super-Admin' WHEN `a`.`usertype` = 2 THEN 'Admin' WHEN `a`.`usertype` = 3 THEN 'Children' WHEN `a`.`usertype` = 4 THEN 'Staff' ELSE 'Others' END AS `usertyperesult`, `b`.`stuId` AS `stuId`, `stf`.`stffId` AS `stffId` FROM ((`users` `a` left join `students` `b` on(`a`.`id` = `b`.`stuUserId`)) left join `staffs` `stf` on(`a`.`id` = `stf`.`stffUserId`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`achId`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `annualeventdays`
--
ALTER TABLE `annualeventdays`
  ADD PRIMARY KEY (`anulevId`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`anId`);

--
-- Indexes for table `appdefaults`
--
ALTER TABLE `appdefaults`
  ADD PRIMARY KEY (`defId`);

--
-- Indexes for table `appprivileges`
--
ALTER TABLE `appprivileges`
  ADD PRIMARY KEY (`aeId`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`atdId`);

--
-- Indexes for table `authactions`
--
ALTER TABLE `authactions`
  ADD PRIMARY KEY (`auctId`),
  ADD UNIQUE KEY `auctUserName` (`auctUserName`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `boardtypes`
--
ALTER TABLE `boardtypes`
  ADD PRIMARY KEY (`beId`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`clssId`);

--
-- Indexes for table `classsections`
--
ALTER TABLE `classsections`
  ADD PRIMARY KEY (`clsecnId`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`clId`);

--
-- Indexes for table `collegeboardtypes`
--
ALTER TABLE `collegeboardtypes`
  ADD PRIMARY KEY (`cbeId`);

--
-- Indexes for table `collegetypes`
--
ALTER TABLE `collegetypes`
  ADD PRIMARY KEY (`ceId`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`cmplId`);

--
-- Indexes for table `configurationmasters`
--
ALTER TABLE `configurationmasters`
  ADD PRIMARY KEY (`cnId`);

--
-- Indexes for table `configurations`
--
ALTER TABLE `configurations`
  ADD PRIMARY KEY (`cfnId`);

--
-- Indexes for table `contactdetails`
--
ALTER TABLE `contactdetails`
  ADD PRIMARY KEY (`condId`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`cnId`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`docId`);

--
-- Indexes for table `emailaddresses`
--
ALTER TABLE `emailaddresses`
  ADD PRIMARY KEY (`emlId`);

--
-- Indexes for table `employeeleaves`
--
ALTER TABLE `employeeleaves`
  ADD PRIMARY KEY (`emplvId`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eventsschedules`
--
ALTER TABLE `eventsschedules`
  ADD PRIMARY KEY (`evntshId`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`exsId`);

--
-- Indexes for table `families`
--
ALTER TABLE `families`
  ADD PRIMARY KEY (`fmId`);

--
-- Indexes for table `familyconnections`
--
ALTER TABLE `familyconnections`
  ADD PRIMARY KEY (`fmlcId`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`fdbId`);

--
-- Indexes for table `feetypes`
--
ALTER TABLE `feetypes`
  ADD PRIMARY KEY (`fetId`);

--
-- Indexes for table `filequestions`
--
ALTER TABLE `filequestions`
  ADD PRIMARY KEY (`flqnsId`);

--
-- Indexes for table `filesystems`
--
ALTER TABLE `filesystems`
  ADD PRIMARY KEY (`flsmId`);

--
-- Indexes for table `filevideos`
--
ALTER TABLE `filevideos`
  ADD PRIMARY KEY (`flvoId`);

--
-- Indexes for table `hallseats`
--
ALTER TABLE `hallseats`
  ADD PRIMARY KEY (`hId`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`hldId`);

--
-- Indexes for table `homeworks`
--
ALTER TABLE `homeworks`
  ADD PRIMARY KEY (`hwId`);

--
-- Indexes for table `imports`
--
ALTER TABLE `imports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `infrastructures`
--
ALTER TABLE `infrastructures`
  ADD PRIMARY KEY (`infId`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`invId`);

--
-- Indexes for table `leavehistories`
--
ALTER TABLE `leavehistories`
  ADD PRIMARY KEY (`lvhsId`);

--
-- Indexes for table `lessionplans`
--
ALTER TABLE `lessionplans`
  ADD PRIMARY KEY (`lpId`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`lnId`);

--
-- Indexes for table `mediumlanguages`
--
ALTER TABLE `mediumlanguages`
  ADD PRIMARY KEY (`mlgId`);

--
-- Indexes for table `mediums`
--
ALTER TABLE `mediums`
  ADD PRIMARY KEY (`mmId`);

--
-- Indexes for table `meetingparticipants`
--
ALTER TABLE `meetingparticipants`
  ADD PRIMARY KEY (`mtptId`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `onlinetests`
--
ALTER TABLE `onlinetests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orgadmissions`
--
ALTER TABLE `orgadmissions`
  ADD PRIMARY KEY (`ogamId`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`onId`);

--
-- Indexes for table `orgclassstaffs`
--
ALTER TABLE `orgclassstaffs`
  ADD PRIMARY KEY (`ogcstffId`);

--
-- Indexes for table `orgdetails`
--
ALTER TABLE `orgdetails`
  ADD PRIMARY KEY (`olId`);

--
-- Indexes for table `orgfees`
--
ALTER TABLE `orgfees`
  ADD PRIMARY KEY (`ogfId`);

--
-- Indexes for table `orgholidays`
--
ALTER TABLE `orgholidays`
  ADD PRIMARY KEY (`orhlId`);

--
-- Indexes for table `orginfrastructures`
--
ALTER TABLE `orginfrastructures`
  ADD PRIMARY KEY (`oinfId`);

--
-- Indexes for table `orgstudents`
--
ALTER TABLE `orgstudents`
  ADD PRIMARY KEY (`orstId`);

--
-- Indexes for table `preferencelanguages`
--
ALTER TABLE `preferencelanguages`
  ADD PRIMARY KEY (`plgId`);

--
-- Indexes for table `pressreleases`
--
ALTER TABLE `pressreleases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privileges`
--
ALTER TABLE `privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `progressreports`
--
ALTER TABLE `progressreports`
  ADD PRIMARY KEY (`prgrId`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`qaId`);

--
-- Indexes for table `reportschedules`
--
ALTER TABLE `reportschedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviewstatus`
--
ALTER TABLE `reviewstatus`
  ADD PRIMARY KEY (`rvwsId`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`rId`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`secnId`);

--
-- Indexes for table `smssettings`
--
ALTER TABLE `smssettings`
  ADD PRIMARY KEY (`smId`);

--
-- Indexes for table `staffaccounts`
--
ALTER TABLE `staffaccounts`
  ADD PRIMARY KEY (`stfacId`);

--
-- Indexes for table `staffmeetings`
--
ALTER TABLE `staffmeetings`
  ADD PRIMARY KEY (`mtId`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`stffId`);

--
-- Indexes for table `staffsalaries`
--
ALTER TABLE `staffsalaries`
  ADD PRIMARY KEY (`stfslId`);

--
-- Indexes for table `staffseducations`
--
ALTER TABLE `staffseducations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffseduclgdetails`
--
ALTER TABLE `staffseduclgdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_details`
--
ALTER TABLE `staff_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `standard_subjects`
--
ALTER TABLE `standard_subjects`
  ADD PRIMARY KEY (`std_subj_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentdetails`
--
ALTER TABLE `studentdetails`
  ADD PRIMARY KEY (`stulId`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`stuId`);

--
-- Indexes for table `studentsclasses`
--
ALTER TABLE `studentsclasses`
  ADD PRIMARY KEY (`stuclId`);

--
-- Indexes for table `studentsmarks`
--
ALTER TABLE `studentsmarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stu_strengthes`
--
ALTER TABLE `stu_strengthes`
  ADD PRIMARY KEY (`stId`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subjId`);

--
-- Indexes for table `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`sggId`);

--
-- Indexes for table `syllabuses`
--
ALTER TABLE `syllabuses`
  ADD PRIMARY KEY (`syId`);

--
-- Indexes for table `timetables`
--
ALTER TABLE `timetables`
  ADD PRIMARY KEY (`ttId`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`vdId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `achId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1010;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `annualeventdays`
--
ALTER TABLE `annualeventdays`
  MODIFY `anulevId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `anId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appdefaults`
--
ALTER TABLE `appdefaults`
  MODIFY `defId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appprivileges`
--
ALTER TABLE `appprivileges`
  MODIFY `aeId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `atdId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `authactions`
--
ALTER TABLE `authactions`
  MODIFY `auctId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `boardtypes`
--
ALTER TABLE `boardtypes`
  MODIFY `beId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `clssId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `classsections`
--
ALTER TABLE `classsections`
  MODIFY `clsecnId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `clId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `collegeboardtypes`
--
ALTER TABLE `collegeboardtypes`
  MODIFY `cbeId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `collegetypes`
--
ALTER TABLE `collegetypes`
  MODIFY `ceId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `cmplId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `configurationmasters`
--
ALTER TABLE `configurationmasters`
  MODIFY `cnId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `configurations`
--
ALTER TABLE `configurations`
  MODIFY `cfnId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contactdetails`
--
ALTER TABLE `contactdetails`
  MODIFY `condId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=648;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `cnId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `docId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `emailaddresses`
--
ALTER TABLE `emailaddresses`
  MODIFY `emlId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=563;

--
-- AUTO_INCREMENT for table `employeeleaves`
--
ALTER TABLE `employeeleaves`
  MODIFY `emplvId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `eventsschedules`
--
ALTER TABLE `eventsschedules`
  MODIFY `evntshId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `exsId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `families`
--
ALTER TABLE `families`
  MODIFY `fmId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=519;

--
-- AUTO_INCREMENT for table `familyconnections`
--
ALTER TABLE `familyconnections`
  MODIFY `fmlcId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1037;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `fdbId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feetypes`
--
ALTER TABLE `feetypes`
  MODIFY `fetId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filequestions`
--
ALTER TABLE `filequestions`
  MODIFY `flqnsId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filesystems`
--
ALTER TABLE `filesystems`
  MODIFY `flsmId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filevideos`
--
ALTER TABLE `filevideos`
  MODIFY `flvoId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hallseats`
--
ALTER TABLE `hallseats`
  MODIFY `hId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `hldId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeworks`
--
ALTER TABLE `homeworks`
  MODIFY `hwId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `imports`
--
ALTER TABLE `imports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `infrastructures`
--
ALTER TABLE `infrastructures`
  MODIFY `infId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `invId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leavehistories`
--
ALTER TABLE `leavehistories`
  MODIFY `lvhsId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lessionplans`
--
ALTER TABLE `lessionplans`
  MODIFY `lpId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `lnId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `mediumlanguages`
--
ALTER TABLE `mediumlanguages`
  MODIFY `mlgId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mediums`
--
ALTER TABLE `mediums`
  MODIFY `mmId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `meetingparticipants`
--
ALTER TABLE `meetingparticipants`
  MODIFY `mtptId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `onlinetests`
--
ALTER TABLE `onlinetests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `orgadmissions`
--
ALTER TABLE `orgadmissions`
  MODIFY `ogamId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `onId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orgclassstaffs`
--
ALTER TABLE `orgclassstaffs`
  MODIFY `ogcstffId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orgdetails`
--
ALTER TABLE `orgdetails`
  MODIFY `olId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orgfees`
--
ALTER TABLE `orgfees`
  MODIFY `ogfId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orgholidays`
--
ALTER TABLE `orgholidays`
  MODIFY `orhlId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orginfrastructures`
--
ALTER TABLE `orginfrastructures`
  MODIFY `oinfId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orgstudents`
--
ALTER TABLE `orgstudents`
  MODIFY `orstId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=463;

--
-- AUTO_INCREMENT for table `preferencelanguages`
--
ALTER TABLE `preferencelanguages`
  MODIFY `plgId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pressreleases`
--
ALTER TABLE `pressreleases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `privileges`
--
ALTER TABLE `privileges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `progressreports`
--
ALTER TABLE `progressreports`
  MODIFY `prgrId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `qaId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reportschedules`
--
ALTER TABLE `reportschedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reviewstatus`
--
ALTER TABLE `reviewstatus`
  MODIFY `rvwsId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `rId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `secnId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `smssettings`
--
ALTER TABLE `smssettings`
  MODIFY `smId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staffaccounts`
--
ALTER TABLE `staffaccounts`
  MODIFY `stfacId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staffmeetings`
--
ALTER TABLE `staffmeetings`
  MODIFY `mtId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `stffId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `staffsalaries`
--
ALTER TABLE `staffsalaries`
  MODIFY `stfslId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staffseducations`
--
ALTER TABLE `staffseducations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `staffseduclgdetails`
--
ALTER TABLE `staffseduclgdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `staff_details`
--
ALTER TABLE `staff_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `standard_subjects`
--
ALTER TABLE `standard_subjects`
  MODIFY `std_subj_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `studentdetails`
--
ALTER TABLE `studentdetails`
  MODIFY `stulId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `stuId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=915;

--
-- AUTO_INCREMENT for table `studentsclasses`
--
ALTER TABLE `studentsclasses`
  MODIFY `stuclId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=685;

--
-- AUTO_INCREMENT for table `studentsmarks`
--
ALTER TABLE `studentsmarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `stu_strengthes`
--
ALTER TABLE `stu_strengthes`
  MODIFY `stId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subjId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `suggestions`
--
ALTER TABLE `suggestions`
  MODIFY `sggId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `syllabuses`
--
ALTER TABLE `syllabuses`
  MODIFY `syId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `timetables`
--
ALTER TABLE `timetables`
  MODIFY `ttId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `useragent_analytics`
--
ALTER TABLE `useragent_analytics`
  MODIFY `ua_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2381;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `vdId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
