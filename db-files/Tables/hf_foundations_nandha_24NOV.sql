-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2022 at 04:19 PM
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
(5, 'No 1, first street, pallikaranai', 'Chennai', '24', '600042', '', 1, 1, '2022-07-04 02:48:12', '2022-07-04 02:48:12'),
(6, 'East car street, karpagam avenue', 'chennai', '24', '600028', '', 1, 1, '2022-08-06 13:34:56', '2022-08-06 13:34:56'),
(1519, 'Street', 'Chennai', '24', '565544', '', 1, 1, '2022-11-22 05:00:12', '2022-11-22 05:00:12'),
(1520, 'Hel', 'KIsoie', '24', '658844', '', 1, 1, '2022-11-22 05:04:19', '2022-11-22 07:08:50'),
(1521, 'nwkk', 'chenai', '24', '684466', '', 1, 1, '2022-11-22 06:02:51', '2022-11-22 06:02:51'),
(1522, 'addres', 'ageik', '24', '668454', '', 1, 1, '2022-11-22 06:03:44', '2022-11-22 06:03:44'),
(1523, 'helo', 'tri', '24', '687454', '', 1, 1, '2022-11-22 06:35:23', '2022-11-22 06:35:23'),
(1524, 'koliu', 'heriuo', '24', '754554', '', 1, 1, '2022-11-22 06:36:19', '2022-11-22 06:36:19');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `typeid` int(11) DEFAULT NULL COMMENT '1. Emergency - Off\r\n3.Others',
  `title` varchar(100) DEFAULT NULL,
  `message` varchar(2550) DEFAULT NULL,
  `fileurl` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `typeid`, `title`, `message`, `fileurl`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Alert', 'message', 'C:\\fakepath\\2021-06-11 07.10.55 2593385419075688841_46892858777.jpg', 1, '2022-07-15 04:20:15', '2022-10-11 02:36:02'),
(2, 2, 'New announcement', 'new message', 'C:\\fakepath\\1970-01-01 05.30.00 2647988692515753104_46892858777.jpg', 1, '2022-07-15 04:25:13', '2022-07-15 04:25:13'),
(3, 1, 'afaf', 'fafa', 'null', 1, '2022-11-01 09:49:32', '2022-11-01 09:49:32');

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
  `categoryid` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `message` varchar(2550) DEFAULT NULL,
  `fileurl` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `categoryid`, `title`, `description`, `message`, `fileurl`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Blog post', 'Some description', 'Hi Readers !', 'C:\\fakepath\\.stogram.sqlite', 1, '2022-07-15 04:02:17', '2022-07-15 04:07:12'),
(2, 1, 'new post', 'hi ...', 'aagag', 'C:\\fakepath\\313304533_10161024889294903_4485896313951838767_n.jpg', 1, '2022-11-02 05:59:21', '2022-11-02 05:59:21'),
(3, 2, 'fea', 'gaaeg', 'gaea', 'C:\\fakepath\\313304533_10161024889294903_4485896313951838767_n.jpg', 0, '2022-11-02 06:15:52', '2022-11-02 06:17:05'),
(4, 0, 'afaf', 'gaagag', 'gagagagggggg', 'C:\\fakepath\\pexels-simon-berger-1323550.jpg', 1, '2022-11-14 07:14:02', '2022-11-14 07:14:02');

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
(1, 1, 'Pre KG', 0, '2022-09-01 12:42:12', '2022-10-07 06:14:23'),
(2, 1, 'LKG', 1, '2022-09-01 12:42:12', '2022-09-01 12:42:12'),
(3, 1, 'UKG', 1, '2022-09-01 12:42:12', '2022-09-01 12:42:12'),
(4, 1, 'I', 1, '2022-05-12 19:02:53', '2022-05-12 19:02:53'),
(5, 1, 'II', 1, '2022-05-12 19:02:53', '2022-05-12 19:02:53'),
(6, 1, 'III', 1, '2022-05-12 19:03:12', '2022-05-12 19:03:12'),
(7, 1, 'IV', 1, '2022-05-12 19:03:12', '2022-05-12 19:03:12'),
(8, 1, 'V', 1, '2022-05-12 19:03:20', '2022-05-12 19:03:20'),
(9, 1, 'VI', 1, '2022-08-02 10:03:20', '2022-08-02 10:03:20'),
(10, 1, 'VII', 1, '2022-09-01 12:41:06', '2022-09-01 12:41:06'),
(11, 1, 'VIII', 1, '2022-09-01 12:41:18', '2022-09-01 12:41:18'),
(12, 1, 'IX', 1, '2022-09-01 12:41:46', '2022-09-01 12:41:46'),
(13, 1, 'X', 1, '2022-09-01 12:41:46', '2022-09-01 12:41:46'),
(14, 1, 'XI', 0, '2022-09-01 12:42:12', '2022-10-07 06:14:38'),
(15, 1, 'XII', 0, '2022-09-01 12:42:12', '2022-10-07 06:14:40');

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
(2, '9078090234', '7400586323', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-08-06 13:34:56', '2022-08-06 13:34:56'),
(1157, '9856646464', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-11-22 05:00:12', '2022-11-22 05:00:12'),
(1158, '8545441254', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-11-22 05:04:19', '2022-11-22 07:08:50'),
(1159, '9646464616', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-11-22 06:02:51', '2022-11-22 06:02:51'),
(1160, '8464646616', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-11-22 06:03:44', '2022-11-22 06:03:44'),
(1161, '9656564646', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-11-22 06:35:23', '2022-11-22 06:35:23'),
(1162, '9874545454', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2022-11-22 06:36:19', '2022-11-22 06:36:19');

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
  `announcement_id` int(11) DEFAULT NULL,
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

INSERT INTO `documents` (`docId`, `topic_id`, `announcement_id`, `docTitle`, `docDescription`, `doc_type`, `docResource`, `docIsStatus`, `imgHash`, `created_at`, `updated_at`) VALUES
(119, 13, NULL, 'Confession of a Buddhist Atheist - Stephen Batchelor.pdf', '', 'PDF', 'uploads/topics/pdf/291d7aaac7bf3944d7cf1c1a81220227_Confession of a Buddhist Atheist - Stephen Batchelor.pdf', 1, '291d7aaac7bf3944d7cf1c1a81220227', '2022-09-16 07:38:19', '2022-09-16 07:38:19'),
(120, 13, NULL, 'curiosity-a4.pdf', '', 'PDF', 'uploads/topics/pdf/a2f3f5ec23e2bd0bb6e5056bb0485de6_curiosity-a4.pdf', 1, 'a2f3f5ec23e2bd0bb6e5056bb0485de6', '2022-09-16 07:38:19', '2022-09-16 07:38:19'),
(121, 13, NULL, 'Screenshot (130).png', '', 'IMAGE', 'uploads/topics/image/feb110e16b81f729ec7244dba8066a4f_Screenshot (130).png', 1, 'feb110e16b81f729ec7244dba8066a4f', '2022-09-16 07:38:19', '2022-09-16 07:38:19'),
(122, 13, NULL, 'Screenshot (135).png', '', 'IMAGE', 'uploads/topics/image/b62859544f21966fdc4ba3263760e08b_Screenshot (135).png', 1, 'b62859544f21966fdc4ba3263760e08b', '2022-09-16 07:38:19', '2022-09-16 07:38:19'),
(123, 13, NULL, 'Screenshot (136).png', '', 'IMAGE', 'uploads/topics/image/992c5fed88d66305a69fe95cb63b8113_Screenshot (136).png', 1, '992c5fed88d66305a69fe95cb63b8113', '2022-09-16 07:38:19', '2022-09-16 07:38:19'),
(124, 14, NULL, 'buiding plan.jpg', '', 'IMAGE', 'uploads/topics/image/63d5d2ec7071a9c0dccb0f7e8aff668b_buiding plan.jpg', 1, '63d5d2ec7071a9c0dccb0f7e8aff668b', '2022-10-07 07:32:37', '2022-10-07 07:32:37'),
(125, 15, NULL, 'buiding plan.jpg', '', 'IMAGE', 'uploads/topics/image/63d5d2ec7071a9c0dccb0f7e8aff668b_buiding plan.jpg', 1, '63d5d2ec7071a9c0dccb0f7e8aff668b', '2022-10-21 00:58:24', '2022-10-21 00:58:24');

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
(1, 'rharikumarcse@gmail.com', '', '', '', '', 1, '2022-06-05 08:28:51', '2022-08-17 15:56:07'),
(2, 'rr@ee.com', '', '', '', '', 1, '2022-06-08 00:34:40', '2022-06-08 00:34:40'),
(1072, NULL, NULL, NULL, NULL, NULL, 1, '2022-11-22 05:00:12', '2022-11-22 05:00:12'),
(1073, 'test@mail.com', NULL, NULL, NULL, NULL, 1, '2022-11-22 05:04:19', '2022-11-22 07:08:50'),
(1074, NULL, NULL, NULL, NULL, NULL, 1, '2022-11-22 06:02:51', '2022-11-22 06:02:51'),
(1075, NULL, NULL, NULL, NULL, NULL, 1, '2022-11-22 06:03:44', '2022-11-22 06:03:44'),
(1076, NULL, NULL, NULL, NULL, NULL, 1, '2022-11-22 06:35:23', '2022-11-22 06:35:23'),
(1077, NULL, NULL, NULL, NULL, NULL, 1, '2022-11-22 06:36:19', '2022-11-22 06:36:19');

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
(4, 1, 'Cultural', 'new', 'new', 'new', 'new', 'new', 'new', '2022-07-14', '00:28:00', '00:28:00', '2022-07-13', 'null', 1, '2022-07-14 13:24:47', '2022-10-11 04:18:25'),
(5, 1, 'Seminar', 'null to name', 'null', 'null', 'null', 'null', 'null', '2022-08-19', '12:00:00', '13:30:00', '2022-10-12', 'null', 1, '2022-08-05 01:58:30', '2022-10-11 04:19:00'),
(6, 1, 'Cultural', 'ryhe', 'hthehth', 'hehthe', 'hehth', 'heth', 'thtet', '2022-10-13', '15:18:00', '15:19:00', '2022-10-06', 'C:\\fakepath\\Fal-SGEWYAABBSu.jfif', 1, '2022-10-11 04:17:25', '2022-10-11 04:17:25'),
(7, 1, 'Sport', 'test event', 'aefea', 'null', 'faefe', 'null', 'efae', '2022-10-06', '15:27:00', '15:28:00', '0000-00-00', 'null', 1, '2022-10-11 04:25:44', '2022-10-11 04:25:44'),
(8, 1, 'Cultural', '2te3', 'grsr', 'gsgs', 'gsrrs', 'null', 'gsrsr', '2022-10-21', '16:09:00', '16:08:00', '0000-00-00', 'null', 1, '2022-10-11 05:06:46', '2022-10-11 05:06:46');

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
(6, 1, 3, 'grg', '2022-10-01', '00:00:00', '11:51:00', 25, 0, 1, '2022-10-11 05:17:37', '2022-10-11 05:23:39'),
(7, 1, 1, 'Daily Exam', '2022-10-12', '14:25:00', '11:56:00', 50, 0, 1, '2022-10-21 00:54:27', '2022-10-21 00:54:27'),
(9, 1, 2, 'First Midterm 2022', '2022-11-16', '17:50:00', '18:50:00', 35, 0, 1, '2022-11-22 05:50:24', '2022-11-22 05:50:24');

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
(9, 3, 6, 2, 5, 2, '[\"1\",\"5\",\"9\",\"20\",\"26\",\"27\"]', 1, '2022-09-12 03:30:43', '2022-09-12 03:30:43'),
(10, 1, 5, 2, 5, 2, '[\"11\",\"5\",\"20\",\"14\",\"15\"]', 1, '2022-09-12 03:30:43', '2022-09-12 03:30:43'),
(11, 2, 6, 2, 5, 1, '[\"1\",\"5\",\"20\",\"8\",\"9\",\"10\"]', 1, '2022-09-12 03:30:43', '2022-09-12 03:30:43'),
(12, 4, 4, 2, 5, 3, '[\"22\",\"23\",\"20\",\"24\"]', 1, '2022-09-12 03:30:43', '2022-09-12 03:30:43'),
(13, 7, 1, 2, 14, 1, '[\"38\"]', 1, '2022-10-21 01:00:30', '2022-10-21 01:00:30');

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
-- Table structure for table `family`
--

CREATE TABLE `family` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `father_name` varchar(55) DEFAULT NULL,
  `mother_name` varchar(55) DEFAULT NULL,
  `guardian_name` varchar(55) DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `email_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `family`
--

INSERT INTO `family` (`id`, `userid`, `father_name`, `mother_name`, `guardian_name`, `contact_id`, `address_id`, `email_id`, `status`, `created_at`, `updated_at`) VALUES
(0, 2887, 'K', 'L', NULL, 1157, 1519, 1072, 1, '2022-11-22 05:00:12', '2022-11-22 05:00:12'),
(0, 2888, 'HE', 'LO', NULL, 1158, 1520, 1073, 1, '2022-11-22 05:04:19', '2022-11-22 07:08:50'),
(0, 2889, 'new', 'kerl', NULL, 1159, 1521, 1074, 1, '2022-11-22 06:02:51', '2022-11-22 06:02:51'),
(0, 2890, 'father', 'mort', NULL, 1160, 1522, 1075, 1, '2022-11-22 06:03:44', '2022-11-22 06:03:44'),
(0, 2891, 'S', 'S', NULL, 1161, 1523, 1076, 1, '2022-11-22 06:35:23', '2022-11-22 06:35:23'),
(0, 2892, 'dertg', 'kiour', NULL, 1162, 1524, 1077, 1, '2022-11-22 06:36:19', '2022-11-22 06:36:19');

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
(5, 5, 2, 2, 2, 'The Flag goes by', 2, 1, '2022-05-14 13:49:11', '2022-10-20 06:51:50'),
(6, 3, 2, 2, 3, 'Unit 1', 1, 0, '2022-05-14 13:55:06', '2022-11-17 08:15:54'),
(7, 3, 2, 2, 3, 'Unit 2', 2, 1, '2022-05-14 13:55:20', '2022-05-14 13:55:20'),
(8, 3, 2, 2, 3, 'Unit 3', 3, 1, '2022-05-14 13:55:35', '2022-05-14 13:55:35'),
(9, 3, 3, 2, 1, 'Geometry', 1, 1, '2022-05-14 13:56:49', '2022-11-01 07:33:39'),
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
(40, 5, 2, 2, 3, 'Unit 3 Prose: Deep down the Ocean', 3, 1, '2022-05-14 13:48:53', '2022-05-14 13:48:53'),
(41, 14, 1, 2, 1, 'ஆத்திசூடி', 1, 1, '2022-10-21 00:56:14', '2022-10-21 00:56:14'),
(42, 8, 1, 2, 3, 'afaf', 1, 1, '2022-11-14 07:38:05', '2022-11-14 07:38:05'),
(43, 7, 2, 2, 2, 'Sample Lesson', 2, 1, '2022-11-14 11:31:26', '2022-11-14 11:31:26'),
(44, 1, 1, 2, 2, 'valid lessons', 2, 1, '2022-11-17 08:08:30', '2022-11-17 08:15:36');

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
(18, 'Question Bank', b'0', 'pen-tool', 8, 1, 'online-tests', 1, 0, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(19, 'environment', b'0', 'activity', 6, 1, NULL, 1, 0, 1, '2018-12-20 18:03:00', '2018-12-20 18:03:00'),
(20, 'organizations', b'0', NULL, 3, 0, 'organizations', 1, 19, 0, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(22, 'programs', b'0', 'box', 5, 1, NULL, 1, 0, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(23, 'events', b'0', NULL, 1, 0, 'events', 1, 22, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(24, 'holidays', b'0', NULL, 1, 0, 'holidays', 1, 19, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(25, 'press-releases', b'0', 'reports', 4, 0, 'press-releases', 1, 22, 1, '2018-12-20 18:03:00', '2018-12-20 18:03:00'),
(26, 'blogs', b'0', NULL, 1, 0, 'blogs', 1, 22, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(27, 'reports', b'0', 'layers', 10, 1, NULL, 1, 0, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(28, 'Overall Report', b'0', NULL, 1, 0, 'all-in-one-reports', 1, 27, 0, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(29, 'Student Reports', b'0', NULL, 2, 0, 'get-student-reports', 1, 27, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(30, 'Performance Report', b'0', NULL, 3, 0, 'get-performance-reports', 1, 27, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(31, 'Add Exams', b'0', NULL, 1, 0, 'exams-details', 1, 39, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(32, 'Staff Reports', b'0', NULL, 4, 0, 'get-staff-reports', 1, 27, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(33, 'Exam Reports', b'0', NULL, 5, 0, 'get-exam-reports', 1, 27, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(34, 'configurations', b'0', NULL, 1, 0, 'configurations', 1, 15, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(35, 'reviewed stories', b'0', NULL, 6, 0, 'reviewed-stories', 1, 27, 0, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(36, 'Topics', b'0', NULL, 4, 0, 'topics', 1, 8, 1, '2022-07-04 14:53:36', '2022-07-04 14:53:36'),
(37, 'Add Questions', b'0', NULL, 1, 0, 'online-tests', 1, 18, 1, '2022-07-21 13:39:51', '2022-07-21 13:39:51'),
(38, 'View Questions', b'0', NULL, 2, 0, 'view-online-tests', 1, 18, 1, '2022-07-21 13:41:17', '2022-07-21 13:41:17'),
(39, 'Exams', b'0', 'file', 9, 1, NULL, 1, 0, 1, '2022-07-26 12:01:16', '2022-07-26 12:01:16'),
(40, 'Set Question Paper', b'0', NULL, 2, 0, 'set-questions', 1, 39, 1, '2022-07-26 12:03:57', '2022-07-26 12:03:57'),
(41, 'subjects', b'0', NULL, 2, 0, 'subjects', 1, 8, 1, '2022-07-23 01:36:25', '2022-07-23 01:36:25'),
(42, 'standards', b'0', NULL, 1, 0, 'standards', 1, 8, 1, '2022-07-23 07:44:58', '2022-07-23 07:44:58'),
(44, 'Promotion', b'0', 'users', 3, 1, NULL, 1, 0, 1, '2022-09-01 18:03:00', '2022-09-01 10:42:01'),
(45, 'Promote Students', b'0', NULL, 1, 0, 'promote-students', 1, 44, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Upload', b'0', 'users', 11, 1, NULL, 1, 0, 1, '2022-09-01 18:03:00', '2022-09-01 10:42:01'),
(47, 'Upload TSV Data', b'0', NULL, 1, 0, 'upload-tsv', 1, 46, 1, '2022-09-28 18:30:00', '2022-01-18 19:44:28'),
(48, 'Time Table', b'0', NULL, 3, 0, 'exams-updates', 1, 39, 1, '2022-07-26 12:03:57', '2022-07-26 12:03:57'),
(49, 'Seating Arrangement', b'0', NULL, 5, 0, 'seat-arrangements', 1, 39, 1, '2022-11-16 14:37:14', '2022-11-16 12:03:57'),
(50, 'Add Rooms', b'0', NULL, 4, 0, 'add-rooms', 1, 39, 1, '2022-11-22 06:54:53', '2022-11-22 06:54:53');

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
  `added_by` int(11) NOT NULL COMMENT 'staff_id',
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `onlinetests`
--

INSERT INTO `onlinetests` (`id`, `question`, `topicid`, `questiontype`, `choice`, `answer`, `difficulty`, `marks`, `added_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Can gravity form waves?', 3, 3, '', '1', 'Easy', 2, 83, 1, '2022-07-09 13:12:30', '2022-07-14 09:04:41'),
(4, 'Gravity is a ___?', 3, 1, '', 'Force', 'Medium', 3, 83, 1, '2022-07-13 03:39:20', '2022-07-13 03:39:20'),
(5, '5 is greater than 3', 3, 3, '', '1', 'Easy', 1, 83, 1, '2022-07-13 03:40:39', '2022-07-13 03:40:39'),
(8, 'What is the net force on the book?', 6, 2, '9.8~0~Cannot be determined without additional data~None of the above', '2', 'Hard', 2, 83, 0, '2022-07-13 03:50:07', '2022-10-05 13:18:49'),
(9, 'Does anyone know how to link Gibbs free energy with enzyme dynamics?', 3, 1, '', 'yes', 'Easy', 2, 83, 1, '2022-07-21 14:23:20', '2022-07-21 14:23:20'),
(10, 'When to apply urea fertilizer in soil ( sandy and clay), before or after the irrigation?', 3, 4, '', '', 'Medium', 4, 83, 1, '2022-07-21 14:23:20', '2022-07-21 14:23:20'),
(11, 'How can I dynamically create and submit cloudlets in CloudSim?', 3, 3, '', '0', 'Hard', 10, 83, 1, '2022-07-21 14:23:53', '2022-07-21 14:23:53'),
(14, 'Why torque control is better than position control for a quadruped?', 6, 1, '', '', 'Hard', 5, 83, 1, '2022-07-21 14:25:24', '2022-07-21 14:25:24'),
(15, 'Exporting Aspen Plus Dynamics simulation to Excel ?', 6, 1, '', '', 'Hard', 5, 83, 0, '2022-07-21 14:25:24', '2022-10-05 12:50:58'),
(16, 'How to solve Spur/Helical gear Dynamics ?', 6, 1, '', '', 'Medium', 3, 83, 1, '2022-07-21 14:34:07', '2022-07-21 14:34:07'),
(17, 'What is the most accurate formula to calculate the damping coefficient of a structure?', 6, 1, '', '', 'Easy', 2, 83, 1, '2022-07-21 14:34:07', '2022-07-21 14:34:07'),
(19, 'Best Simulation Tool for Bi-Pedal Locomotion ?', 6, 1, '', '', 'Easy', 2, 83, 1, '2022-07-21 14:34:41', '2022-07-21 14:34:41'),
(20, 'Can you go fast enough to get enough mass to become a black hole?\r\n', 3, 1, '', 'Depends', 'Hard', 5, 83, 1, '2022-08-05 10:54:32', '2022-08-05 10:54:32'),
(21, 'Do I weigh less on the equator than at the North Pole?', 3, 3, '', '0', 'Easy', 2, 83, 1, '2022-08-05 10:56:08', '2022-08-05 10:56:08'),
(22, 'The moon\'s distance from the center of the Earth was decreased by a multiple of three. How would this affect the gravitational force of the Earth on the moon?', 3, 1, '', '', 'Easy', 2, 83, 0, '2022-08-05 10:57:06', '2022-08-05 10:57:06'),
(23, 'What is the acceleration due to gravity on a planet on which an object with a mass of 20.0kg has a weight of 270N?', 3, 2, '27.8m/s2~13.5m/s2~10m/s2~None', '2', 'Easy', 3, 83, 0, '2022-08-05 10:58:44', '2022-08-05 10:58:44'),
(24, 'A certain planet has three times the radius of Earth and nine times the mass. How does the acceleration of gravity at the surface of this planet (ag) compare to the acceleration at the surface of Earth (g)?', 3, 1, '', '', 'Easy', 2, 83, 0, '2022-08-05 10:59:17', '2022-08-05 10:59:17'),
(26, 'Write an essay about your recent vacation..', 9, 4, '', 'Essay', 'Hard', 10, 83, 1, '2022-08-07 15:04:47', '2022-10-20 06:09:47'),
(27, 'Listed below are some words.Which one will appear FOURTH in the list if they are arranged in ALPHABETICAL ORDER?Bless---Blink---Blast---Blower---Blur', 9, 2, 'Blur~Bless~Blink~Blower', '1', 'Easy', 2, 83, 1, '2022-08-07 08:25:49', '2022-08-07 08:25:49'),
(28, 'The car in front of our scooter stopped \"abruptly\". Since we were not prepared for that, we banged hard into it! The word \"abruptly\" as used in the sentence above, means__________', 9, 1, '', 'Suddenly, without warning', 'Medium', 4, 83, 1, '2022-08-07 08:26:42', '2022-08-07 08:26:42'),
(29, 'What is the fastest bird on foot?', 9, 1, '', 'Ostrich', 'Medium', 2, 83, 1, '2022-08-07 08:27:19', '2022-08-07 08:27:19'),
(30, 'A heptagon is a shape with how many sides?', 9, 2, '4~9~7~6', '3', 'Hard', 5, 83, 1, '2022-08-07 08:29:42', '2022-08-07 08:29:42'),
(31, 'Neil Armstrong was the first person to step foot on the moon?', 9, 3, '', '1', 'Easy', 1, 83, 1, '2022-08-07 08:31:03', '2022-08-07 08:31:03'),
(33, 'Which sentence has a GRAMMAR mistake?', 9, 2, 'My mother told me to put the book back in it\'s place.~Tennis has lost its charm for me since Steffi Graf retired.~My neighbours dog tries to catch its own tail all day long.~ It\'s sunday tomorrow so I will watch my favourite cartoons.', '3', 'Easy', 1, 83, 1, '2022-08-07 08:24:02', '2022-08-07 08:24:02'),
(35, 'test question', 4, 1, 'null', 'answer test', 'Easy', 3, 83, 1, '2022-10-04 08:24:38', '2022-10-04 08:24:38'),
(36, 'question 2', 4, 2, 'opt a~opt b~opt c~opt d', '2', 'Medium', 1, 83, 1, '2022-10-04 08:26:24', '2022-10-04 08:26:24'),
(37, 'jjk', 2, 3, 'null', '1', 'Easy', 5, 83, 1, '2022-10-05 06:34:15', '2022-10-05 06:34:15'),
(38, 'முதல் இரண்டு வரிகளை எழுதவும்', 15, 1, 'null', 'faf', 'Easy', 5, 0, 1, '2022-10-21 00:59:53', '2022-10-21 00:59:53'),
(39, 'test question', 2, 1, 'null', 'A', 'Easy', 2, 0, 1, '2022-11-01 07:52:23', '2022-11-01 07:52:23');

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
(1, 1, '[\"4\",\"5\",\"6\",\"8\"]', '[\"3\"]', 1, '2022-11-22 05:04:19', '2022-11-22 07:08:50'),
(2, 0, '[\"6\",\"7\",\"8\"]', '[\"null\"]', 1, '2022-11-22 06:47:38', '2022-11-22 06:47:38'),
(3, 0, '[\"4\",\"6\"]', '[\"3\"]', 1, '2022-11-22 07:02:19', '2022-11-22 07:02:19'),
(4, 1, '[\"4\",\"5\",\"6\",\"8\"]', '[\"3\"]', 1, '2022-11-22 07:04:59', '2022-11-22 07:08:50');

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
(6, 1, 'hf-holi-0007', 2023, 'holiday', 'good', '2022-07-05', 'verygood', 1, '2022-07-22 07:27:25', '2022-10-11 08:01:54'),
(7, 1, 'hf-holi-0007', 2023, 'foodfestival', 'good for health', '2022-07-21', 'good', 1, '2022-07-22 07:30:36', '2022-07-22 09:50:24'),
(8, 1, 'hf-holi-0007', 2023, 'pongal', 'pongal is a regional festival', '2022-07-20', 'be safe', 1, '2022-07-22 07:43:42', '2022-11-16 08:36:06'),
(9, 1, 'hf-holi-0007', 2023, 'Christmas', 'good', '2022-07-06', 'nice festival', 1, '2022-07-22 08:41:18', '2022-11-16 08:36:48'),
(10, 1, 'hf-holi-0007', 2027, 'new Year', 'gsg', '2022-09-20', 'gsrgrsgrsg', 1, '2022-09-27 12:16:27', '2022-11-16 08:37:03');

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
  `orstOrgMasterId` int(11) NOT NULL COMMENT 'organization id',
  `branch_id` int(11) DEFAULT 1,
  `orstStuMasterId` int(11) NOT NULL COMMENT 'student id',
  `orstIsStatus` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orgstudents`
--

INSERT INTO `orgstudents` (`orstId`, `orstOrgMasterId`, `branch_id`, `orstStuMasterId`, `orstIsStatus`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, '2022-11-22 05:00:12', '2022-11-22 05:00:12'),
(2, 1, 1, 2, 1, '2022-11-22 06:02:51', '2022-11-22 06:02:51'),
(3, 1, 1, 3, 1, '2022-11-22 06:03:44', '2022-11-22 06:03:44'),
(4, 1, 1, 4, 1, '2022-11-22 06:35:23', '2022-11-22 06:35:23'),
(5, 1, 1, 5, 1, '2022-11-22 06:36:19', '2022-11-22 06:36:19');

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
(1, 'rel 1', 'afafaf', 'afafaf', '2022-11-02', 'null', 1, '2022-07-15 04:35:54', '2022-11-16 08:29:23'),
(2, 'release 2', 'afafa', 'fafaf', '2022-07-05', 'null', 1, '2022-07-15 04:37:49', '2022-11-16 08:30:52'),
(3, 'press release 3', 'zxvz', 'vzxvx', '2022-07-29', 'null', 1, '2022-07-15 04:40:13', '2022-11-16 08:32:00');

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

--
-- Dumping data for table `privileges`
--

INSERT INTO `privileges` (`id`, `menuid`, `isedit`, `isview`, `userid`, `isstatus`, `created_at`, `updated_at`) VALUES
(1, 4, 0, 0, 2392, 1, '2022-10-18 06:16:04', '2022-10-18 06:16:04'),
(2, 8, 0, 0, 2392, 1, '2022-10-18 06:16:04', '2022-10-18 06:16:04'),
(3, 5, 1, 1, 2392, 1, '2022-10-18 06:16:04', '2022-10-18 06:16:04'),
(4, 9, 1, 1, 2392, 1, '2022-10-18 06:16:04', '2022-10-18 06:16:04'),
(5, 4, 0, 0, 2393, 1, '2022-10-18 06:34:53', '2022-10-18 06:34:53'),
(6, 8, 0, 0, 2393, 1, '2022-10-18 06:34:53', '2022-10-18 06:34:53'),
(7, 18, 0, 0, 2393, 1, '2022-10-18 06:34:53', '2022-10-18 06:34:53'),
(8, 27, 0, 0, 2393, 1, '2022-10-18 06:34:53', '2022-10-18 06:34:53'),
(9, 5, 1, 1, 2393, 1, '2022-10-18 06:34:53', '2022-10-18 06:34:53'),
(10, 9, 1, 1, 2393, 1, '2022-10-18 06:34:53', '2022-10-18 06:34:53'),
(11, 36, 1, 1, 2393, 1, '2022-10-18 06:34:53', '2022-10-18 06:34:53'),
(12, 37, 1, 1, 2393, 1, '2022-10-18 06:34:53', '2022-10-18 06:34:53'),
(13, 38, 1, 1, 2393, 1, '2022-10-18 06:34:53', '2022-10-18 06:34:53'),
(14, 30, 1, 1, 2393, 1, '2022-10-18 06:34:53', '2022-10-18 06:34:53'),
(15, 33, 1, 1, 2393, 1, '2022-10-18 06:34:53', '2022-10-18 06:34:53'),
(16, 4, 0, 0, 2865, 1, '2022-10-29 06:08:47', '2022-10-29 06:08:47'),
(17, 8, 0, 0, 2865, 1, '2022-10-29 06:08:47', '2022-10-29 06:08:47'),
(18, 18, 0, 0, 2865, 1, '2022-10-29 06:08:47', '2022-10-29 06:08:47'),
(19, 27, 0, 0, 2865, 1, '2022-10-29 06:08:47', '2022-10-29 06:08:47'),
(20, 5, 1, 1, 2865, 1, '2022-10-29 06:08:47', '2022-10-29 06:08:47'),
(21, 9, 1, 1, 2865, 1, '2022-10-29 06:08:47', '2022-10-29 06:08:47'),
(22, 36, 1, 1, 2865, 1, '2022-10-29 06:08:47', '2022-10-29 06:08:47'),
(23, 37, 1, 1, 2865, 1, '2022-10-29 06:08:47', '2022-10-29 06:08:47'),
(24, 38, 1, 1, 2865, 1, '2022-10-29 06:08:47', '2022-10-29 06:08:47'),
(25, 30, 1, 1, 2865, 1, '2022-10-29 06:08:47', '2022-10-29 06:08:47'),
(26, 33, 1, 1, 2865, 1, '2022-10-29 06:08:47', '2022-10-29 06:08:47'),
(27, 4, 0, 0, 2866, 1, '2022-10-29 13:35:14', '2022-10-29 13:35:14'),
(28, 8, 0, 0, 2866, 1, '2022-10-29 13:35:14', '2022-10-29 13:35:14'),
(29, 18, 0, 0, 2866, 1, '2022-10-29 13:35:14', '2022-10-29 13:35:14'),
(30, 27, 0, 0, 2866, 1, '2022-10-29 13:35:14', '2022-10-29 13:35:14'),
(31, 5, 1, 1, 2866, 1, '2022-10-29 13:35:14', '2022-10-29 13:35:14'),
(32, 9, 1, 1, 2866, 1, '2022-10-29 13:35:14', '2022-10-29 13:35:14'),
(33, 36, 1, 1, 2866, 1, '2022-10-29 13:35:14', '2022-10-29 13:35:14'),
(34, 37, 1, 1, 2866, 1, '2022-10-29 13:35:14', '2022-10-29 13:35:14'),
(35, 38, 1, 1, 2866, 1, '2022-10-29 13:35:14', '2022-10-29 13:35:14'),
(36, 30, 1, 1, 2866, 1, '2022-10-29 13:35:14', '2022-10-29 13:35:14'),
(37, 33, 1, 1, 2866, 1, '2022-10-29 13:35:14', '2022-10-29 13:35:14'),
(38, 4, 0, 0, 2868, 1, '2022-11-01 12:18:15', '2022-11-01 12:18:15'),
(39, 8, 0, 0, 2868, 1, '2022-11-01 12:18:15', '2022-11-01 12:18:15'),
(40, 18, 0, 0, 2868, 1, '2022-11-01 12:18:15', '2022-11-01 12:18:15'),
(41, 27, 0, 0, 2868, 1, '2022-11-01 12:18:15', '2022-11-01 12:18:15'),
(42, 5, 1, 1, 2868, 1, '2022-11-01 12:18:15', '2022-11-01 12:18:15'),
(43, 9, 1, 1, 2868, 1, '2022-11-01 12:18:15', '2022-11-01 12:18:15'),
(44, 36, 1, 1, 2868, 1, '2022-11-01 12:18:15', '2022-11-01 12:18:15'),
(45, 37, 1, 1, 2868, 1, '2022-11-01 12:18:15', '2022-11-01 12:18:15'),
(46, 38, 1, 1, 2868, 1, '2022-11-01 12:18:15', '2022-11-01 12:18:15'),
(47, 30, 1, 1, 2868, 1, '2022-11-01 12:18:15', '2022-11-01 12:18:15'),
(48, 33, 1, 1, 2868, 1, '2022-11-01 12:18:15', '2022-11-01 12:18:15'),
(49, 4, 0, 0, 2869, 1, '2022-11-01 12:24:26', '2022-11-01 12:24:26'),
(50, 8, 0, 0, 2869, 1, '2022-11-01 12:24:26', '2022-11-01 12:24:26'),
(51, 18, 0, 0, 2869, 1, '2022-11-01 12:24:26', '2022-11-01 12:24:26'),
(52, 27, 0, 0, 2869, 1, '2022-11-01 12:24:26', '2022-11-01 12:24:26'),
(53, 5, 1, 1, 2869, 1, '2022-11-01 12:24:26', '2022-11-01 12:24:26'),
(54, 9, 1, 1, 2869, 1, '2022-11-01 12:24:26', '2022-11-01 12:24:26'),
(55, 36, 1, 1, 2869, 1, '2022-11-01 12:24:26', '2022-11-01 12:24:26'),
(56, 37, 1, 1, 2869, 1, '2022-11-01 12:24:26', '2022-11-01 12:24:26'),
(57, 38, 1, 1, 2869, 1, '2022-11-01 12:24:26', '2022-11-01 12:24:26'),
(58, 30, 1, 1, 2869, 1, '2022-11-01 12:24:26', '2022-11-01 12:24:26'),
(59, 33, 1, 1, 2869, 1, '2022-11-01 12:24:26', '2022-11-01 12:24:26'),
(60, 4, 0, 0, 2872, 1, '2022-11-02 01:09:15', '2022-11-02 01:09:15'),
(61, 8, 0, 0, 2872, 1, '2022-11-02 01:09:15', '2022-11-02 01:09:15'),
(62, 18, 0, 0, 2872, 1, '2022-11-02 01:09:15', '2022-11-02 01:09:15'),
(63, 27, 0, 0, 2872, 1, '2022-11-02 01:09:15', '2022-11-02 01:09:15'),
(64, 5, 1, 1, 2872, 1, '2022-11-02 01:09:15', '2022-11-02 01:09:15'),
(65, 9, 1, 1, 2872, 1, '2022-11-02 01:09:15', '2022-11-02 01:09:15'),
(66, 36, 1, 1, 2872, 1, '2022-11-02 01:09:15', '2022-11-02 01:09:15'),
(67, 37, 1, 1, 2872, 1, '2022-11-02 01:09:15', '2022-11-02 01:09:15'),
(68, 38, 1, 1, 2872, 1, '2022-11-02 01:09:15', '2022-11-02 01:09:15'),
(69, 30, 1, 1, 2872, 1, '2022-11-02 01:09:15', '2022-11-02 01:09:15'),
(70, 33, 1, 1, 2872, 1, '2022-11-02 01:09:15', '2022-11-02 01:09:15'),
(71, 1, 0, 0, 2876, 1, '2022-11-02 03:42:12', '2022-11-02 03:42:12'),
(72, 4, 0, 0, 2876, 1, '2022-11-02 03:42:12', '2022-11-02 03:42:12'),
(73, 8, 0, 0, 2876, 1, '2022-11-02 03:42:12', '2022-11-02 03:42:12'),
(74, 2, 1, 1, 2876, 1, '2022-11-02 03:42:12', '2022-11-02 03:42:12'),
(75, 5, 1, 1, 2876, 1, '2022-11-02 03:42:12', '2022-11-02 03:42:12'),
(76, 9, 1, 1, 2876, 1, '2022-11-02 03:42:12', '2022-11-02 03:42:12'),
(82, 4, 0, 0, 2882, 1, '2022-11-14 06:55:59', '2022-11-14 06:55:59'),
(83, 8, 0, 0, 2882, 1, '2022-11-14 06:55:59', '2022-11-14 06:55:59'),
(84, 18, 0, 0, 2882, 1, '2022-11-14 06:55:59', '2022-11-14 06:55:59'),
(85, 27, 0, 0, 2882, 1, '2022-11-14 06:55:59', '2022-11-14 06:55:59'),
(86, 5, 1, 1, 2882, 1, '2022-11-14 06:55:59', '2022-11-14 06:55:59'),
(87, 9, 1, 1, 2882, 1, '2022-11-14 06:55:59', '2022-11-14 06:55:59'),
(88, 36, 1, 1, 2882, 1, '2022-11-14 06:55:59', '2022-11-14 06:55:59'),
(89, 37, 1, 1, 2882, 1, '2022-11-14 06:55:59', '2022-11-14 06:55:59'),
(90, 38, 1, 1, 2882, 1, '2022-11-14 06:55:59', '2022-11-14 06:55:59'),
(91, 30, 1, 1, 2882, 1, '2022-11-14 06:55:59', '2022-11-14 06:55:59'),
(92, 33, 1, 1, 2882, 1, '2022-11-14 06:55:59', '2022-11-14 06:55:59'),
(93, 4, 0, 0, 2886, 1, '2022-11-18 08:00:12', '2022-11-18 08:00:12'),
(94, 8, 0, 0, 2886, 1, '2022-11-18 08:00:12', '2022-11-18 08:00:12'),
(95, 18, 0, 0, 2886, 1, '2022-11-18 08:00:12', '2022-11-18 08:00:12'),
(96, 27, 0, 0, 2886, 1, '2022-11-18 08:00:12', '2022-11-18 08:00:12'),
(97, 5, 1, 1, 2886, 1, '2022-11-18 08:00:12', '2022-11-18 08:00:12'),
(98, 9, 1, 1, 2886, 1, '2022-11-18 08:00:12', '2022-11-18 08:00:12'),
(99, 36, 1, 1, 2886, 1, '2022-11-18 08:00:12', '2022-11-18 08:00:12'),
(100, 37, 1, 1, 2886, 1, '2022-11-18 08:00:12', '2022-11-18 08:00:12'),
(101, 38, 1, 1, 2886, 1, '2022-11-18 08:00:12', '2022-11-18 08:00:12'),
(102, 30, 1, 1, 2886, 1, '2022-11-18 08:00:12', '2022-11-18 08:00:12'),
(103, 33, 1, 1, 2886, 1, '2022-11-18 08:00:12', '2022-11-18 08:00:12'),
(104, 4, 0, 0, 2888, 1, '2022-11-22 05:04:19', '2022-11-22 05:04:19'),
(105, 8, 0, 0, 2888, 1, '2022-11-22 05:04:19', '2022-11-22 05:04:19'),
(106, 18, 0, 0, 2888, 1, '2022-11-22 05:04:19', '2022-11-22 05:04:19'),
(107, 27, 0, 0, 2888, 1, '2022-11-22 05:04:19', '2022-11-22 05:04:19'),
(108, 5, 1, 1, 2888, 1, '2022-11-22 05:04:19', '2022-11-22 05:04:19'),
(109, 9, 1, 1, 2888, 1, '2022-11-22 05:04:19', '2022-11-22 05:04:19'),
(110, 36, 1, 1, 2888, 1, '2022-11-22 05:04:19', '2022-11-22 05:04:19'),
(111, 37, 1, 1, 2888, 1, '2022-11-22 05:04:19', '2022-11-22 05:04:19'),
(112, 38, 1, 1, 2888, 1, '2022-11-22 05:04:19', '2022-11-22 05:04:19'),
(113, 30, 1, 1, 2888, 1, '2022-11-22 05:04:19', '2022-11-22 05:04:19'),
(114, 33, 1, 1, 2888, 1, '2022-11-22 05:04:19', '2022-11-22 05:04:19');

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
(4, 'afeaf', 3, '[\"somename@mail.com\",\"user@mail.com\"]', '[]', '[]', 3, 1, '2022-08-26 13:01:57', '2022-08-26 13:26:44'),
(5, 'task1', 4, '[\"somename@mail.com\",\"user@mail.com\",\"fafa@ff.feaf\"]', '[\"sample@email.com\"]', '[\"afef@fef.fe\"]', 3, 1, '2022-10-11 11:05:33', '2022-10-11 11:05:33'),
(6, 'try', 3, '[\"nandha@mail.com\",\"helo@world.ca\"]', '[\"faefeaf@faef.aea\"]', '[\"dffaf@aef.efa\"]', 2, 1, '2022-10-11 11:29:19', '2022-10-11 11:29:19'),
(7, 'weekly report', 2, '[\"name@email.com\"]', '[]', '[]', 2, 1, '2022-11-17 12:46:45', '2022-11-17 12:46:45');

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
  `id` int(11) NOT NULL,
  `branch_id` tinyint(4) DEFAULT NULL,
  `room_name` varchar(50) DEFAULT NULL,
  `room_type` tinyint(4) NOT NULL DEFAULT 0,
  `seating_type` varchar(10) DEFAULT NULL,
  `no_of_seats` int(11) NOT NULL DEFAULT 0,
  `bench_capacity` tinyint(4) NOT NULL DEFAULT 0,
  `max_capacity` int(11) NOT NULL DEFAULT 0,
  `available_capacity` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `branch_id`, `room_name`, `room_type`, `seating_type`, `no_of_seats`, `bench_capacity`, `max_capacity`, `available_capacity`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'X-A', 1, 'Chair', 45, 2, 45, 45, 1, '2022-08-06 13:10:43', '2022-11-23 06:48:09'),
(2, 1, 'V-B', 1, 'Bench', 8, 3, 24, 21, 1, '2022-11-22 02:34:13', '2022-11-23 07:00:18'),
(3, 1, 'III-A', 1, 'Bench', 12, 2, 40, 20, 1, '2022-11-22 02:35:56', '2022-11-23 06:49:05'),
(4, 1, 'Lavender Hall', 1, 'Chair', 250, 2, 250, 220, 1, '2022-11-23 07:05:33', '2022-11-23 07:05:33'),
(5, 1, 'Rose Hall', 1, 'Bench', 24, 2, 48, 48, 1, '2022-11-23 07:20:29', '2022-11-23 07:20:29');

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
(1, 2888, 'Tango', 'M', 2, '2002-04-03', NULL, 1073, 1520, 1158, 1, '2022-11-22 05:04:19', '2022-11-22 07:08:50');

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
(11, 1, 'BA', 1, '2022-11-22 07:08:50', '2022-11-22 07:08:50');

-- --------------------------------------------------------

--
-- Table structure for table `staffseduclgdetails`
--

CREATE TABLE `staffseduclgdetails` (
  `id` int(11) NOT NULL,
  `staff_edu_id` int(11) NOT NULL,
  `collegeName` varchar(255) DEFAULT NULL,
  `passedYear` varchar(4) DEFAULT NULL,
  `percentage` varchar(5) DEFAULT NULL,
  `degree_class` varchar(255) DEFAULT NULL COMMENT 'First, Second Class',
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staffseduclgdetails`
--

INSERT INTO `staffseduclgdetails` (`id`, `staff_edu_id`, `collegeName`, `passedYear`, `percentage`, `degree_class`, `status`, `created_at`, `updated_at`) VALUES
(43115, 11, NULL, '2015', '84.52', 'First', 1, '2022-11-22 07:08:50', '2022-11-22 07:08:50');

-- --------------------------------------------------------

--
-- Table structure for table `staff_details`
--

CREATE TABLE `staff_details` (
  `id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `dateOfHiring` date DEFAULT NULL,
  `yearsOfExp` varchar(4) DEFAULT '0',
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
(1, 1, 1, NULL, '1.5', 1, 'Teacher', NULL, 'Head Master', NULL, 1, '2022-11-22 05:04:19', '2022-11-22 07:08:50');

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
(2, 1, 2, 1, '2022-09-19 13:37:05', '2022-09-19 13:37:05'),
(4, 5, 2, 1, '2022-09-19 13:38:51', '2022-09-19 13:38:51'),
(5, 5, 3, 1, '2022-09-19 13:38:51', '2022-09-19 13:38:51'),
(6, 5, 4, 1, '2022-09-19 13:39:16', '2022-09-19 13:39:16'),
(7, 5, 5, 1, '2022-09-19 13:39:16', '2022-09-19 13:39:16'),
(8, 1, 3, 1, '2022-09-19 13:37:05', '2022-09-19 13:37:05'),
(9, 1, 6, 1, '2022-09-20 10:05:50', '2022-09-20 10:05:50'),
(13, 2, 2, 1, '2022-09-20 10:06:03', '2022-09-20 10:06:03'),
(14, 2, 3, 1, '2022-09-20 10:06:53', '2022-09-20 10:06:53'),
(15, 2, 6, 1, '2022-09-20 10:06:53', '2022-09-20 10:06:53'),
(24, 3, 2, 1, '2022-09-20 10:07:04', '2022-09-20 10:07:04'),
(25, 3, 3, 1, '2022-09-20 10:07:04', '2022-09-20 10:07:04'),
(26, 3, 4, 1, '2022-10-07 11:25:29', '2022-10-07 11:25:29'),
(27, 3, 5, 1, '2022-10-07 11:25:29', '2022-10-07 11:25:29'),
(28, 4, 5, 1, '2022-10-07 11:25:29', '2022-10-07 11:25:29'),
(30, 4, 2, 1, '2022-10-07 11:31:05', '2022-10-07 11:31:05'),
(31, 4, 3, 1, '2022-10-07 11:31:05', '2022-10-07 11:31:05'),
(32, 4, 4, 1, '2022-10-07 11:31:13', '2022-10-07 11:31:13'),
(34, 6, 2, 1, '2022-10-07 11:35:10', '2022-10-07 11:35:10'),
(35, 6, 3, 1, '2022-10-07 11:35:10', '2022-10-07 11:35:10'),
(36, 6, 4, 1, '2022-10-07 11:35:10', '2022-10-07 11:35:10'),
(37, 6, 5, 1, '2022-10-07 11:35:10', '2022-10-07 11:35:10'),
(39, 7, 2, 1, '2022-10-07 11:35:30', '2022-10-07 11:35:30'),
(40, 7, 3, 1, '2022-10-07 11:35:30', '2022-10-07 11:35:30'),
(41, 7, 4, 1, '2022-10-07 11:35:30', '2022-10-07 11:35:30'),
(42, 7, 5, 1, '2022-10-07 11:35:30', '2022-10-07 11:35:30'),
(44, 8, 2, 1, '2022-10-07 11:35:44', '2022-10-07 11:35:44'),
(45, 8, 3, 1, '2022-10-07 11:35:44', '2022-10-07 11:35:44'),
(46, 8, 4, 1, '2022-10-07 11:35:44', '2022-10-07 11:35:44'),
(47, 8, 5, 1, '2022-10-07 11:35:44', '2022-10-07 11:35:44'),
(49, 9, 2, 1, '2022-10-07 11:35:58', '2022-10-07 11:35:58'),
(50, 9, 3, 1, '2022-10-07 11:35:58', '2022-10-07 11:35:58'),
(51, 9, 4, 1, '2022-10-07 11:35:58', '2022-10-07 11:35:58'),
(52, 9, 5, 1, '2022-10-07 11:35:58', '2022-10-07 11:35:58'),
(54, 10, 2, 1, '2022-10-07 11:36:13', '2022-10-07 11:36:13'),
(55, 10, 3, 1, '2022-10-07 11:36:13', '2022-10-07 11:36:13'),
(56, 10, 4, 1, '2022-10-07 11:36:13', '2022-10-07 11:36:13'),
(57, 10, 5, 1, '2022-10-07 11:36:13', '2022-10-07 11:36:13'),
(59, 14, 2, 1, '2022-10-07 11:37:53', '2022-10-07 11:37:53'),
(60, 14, 3, 1, '2022-10-07 11:37:53', '2022-10-07 11:37:53'),
(61, 14, 6, 1, '2022-10-07 11:37:53', '2022-10-07 11:37:53'),
(63, 15, 2, 1, '2022-10-07 11:38:04', '2022-10-07 11:38:04'),
(64, 15, 3, 1, '2022-10-07 11:38:04', '2022-10-07 11:38:04'),
(65, 15, 6, 1, '2022-10-07 11:38:04', '2022-10-07 11:38:04'),
(66, 11, 23, 1, '2022-10-27 13:40:00', '2022-10-27 13:40:00'),
(67, 12, 23, 1, '2022-10-27 13:40:00', '2022-10-27 13:40:00'),
(76, 3, 28, 1, '2022-10-27 14:07:47', '2022-10-27 14:07:47'),
(77, 5, 28, 1, '2022-10-27 14:07:47', '2022-10-27 14:07:47'),
(78, 4, 29, 1, '2022-11-01 12:59:49', '2022-11-01 12:59:49'),
(79, 5, 30, 1, '2022-11-08 14:00:34', '2022-11-08 14:00:34'),
(80, 3, 31, 1, '2022-11-17 13:50:19', '2022-11-17 13:50:19'),
(81, 10, 32, 1, '2022-11-17 13:55:51', '2022-11-17 13:55:51'),
(172, 2, 1, 1, '2022-11-23 08:16:39', '2022-11-23 08:16:39'),
(173, 3, 1, 1, '2022-11-23 08:16:39', '2022-11-23 08:16:39'),
(174, 4, 1, 1, '2022-11-23 08:16:39', '2022-11-23 08:16:39'),
(175, 5, 1, 1, '2022-11-23 08:16:39', '2022-11-23 08:16:39'),
(176, 6, 1, 1, '2022-11-23 08:16:39', '2022-11-23 08:16:39'),
(177, 7, 1, 1, '2022-11-23 08:16:39', '2022-11-23 08:16:39'),
(178, 8, 1, 1, '2022-11-23 08:16:39', '2022-11-23 08:16:39'),
(179, 9, 1, 1, '2022-11-23 08:16:39', '2022-11-23 08:16:39');

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
(1, 2887, 'Echo', 'N', 1, '2001-04-04', 1, '2022-11-22 05:00:12', '2022-11-22 05:00:12'),
(2, 2889, 'new', 'student', 1, '2004-04-15', 1, '2022-11-22 06:02:51', '2022-11-22 06:02:51'),
(3, 2890, 'another', 'student', 1, '2002-04-04', 1, '2022-11-22 06:03:44', '2022-11-22 06:03:44'),
(4, 2891, 'Nandha', 'S', 1, '2010-04-14', 1, '2022-11-22 06:35:23', '2022-11-22 06:35:23'),
(5, 2892, 'hari', 'r', 1, '2011-04-14', 1, '2022-11-22 06:36:19', '2022-11-22 06:36:19');

-- --------------------------------------------------------

--
-- Table structure for table `studentsclasses`
--

CREATE TABLE `studentsclasses` (
  `stuclId` int(11) NOT NULL,
  `stuclOrgStuMasterId` int(11) NOT NULL COMMENT 'orgstudents_pk',
  `medium_id` int(11) DEFAULT 2,
  `stuclClsMasterId` int(11) NOT NULL COMMENT 'standard',
  `stuclSecMasterId` int(11) NOT NULL COMMENT 'section',
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
(1, 1, 2, 8, 1, '2022-2023', 0, 0, 1, '2022-11-22 05:00:12', '2022-11-22 05:00:12'),
(2, 2, 2, 6, 1, '2022-2023', 0, 0, 1, '2022-11-22 06:02:51', '2022-11-22 06:02:51'),
(3, 3, 2, 8, 1, '2022-2023', 0, 0, 1, '2022-11-22 06:03:44', '2022-11-22 06:03:44'),
(4, 4, 2, 10, 1, '2022-2023', 0, 0, 1, '2022-11-22 06:35:23', '2022-11-22 06:35:23'),
(5, 5, 2, 12, 1, '2022-2023', 0, 0, 1, '2022-11-22 06:36:19', '2022-11-22 06:36:19');

-- --------------------------------------------------------

--
-- Table structure for table `studentsmarks`
--

CREATE TABLE `studentsmarks` (
  `id` int(11) NOT NULL,
  `student_user_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `correct_answers` int(11) NOT NULL DEFAULT 0,
  `total_marks` int(11) NOT NULL DEFAULT 0,
  `marks` int(11) DEFAULT 0,
  `attempt` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Student marks based on the studentsclasses';

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subjId` int(11) NOT NULL,
  `subjName` varchar(255) NOT NULL,
  `standardid` int(11) DEFAULT NULL COMMENT 'aka ClssId',
  `subjMediumId` int(11) NOT NULL DEFAULT 2,
  `subject_order` int(11) NOT NULL DEFAULT 1,
  `subject_logo` varchar(55) DEFAULT 'images/new-design/course/social.png',
  `subjIsStatus` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subjId`, `subjName`, `standardid`, `subjMediumId`, `subject_order`, `subject_logo`, `subjIsStatus`, `created_at`, `updated_at`) VALUES
(1, 'Tamil', 1, 2, 1, './images/new-design/course/tamil Aa.png', 1, '2022-04-24 13:35:59', '2022-11-23 02:46:39'),
(2, 'English', 5, 2, 2, './images/new-design/course/english.png', 1, '2022-04-24 13:35:59', '2022-04-24 13:35:59'),
(3, 'Mathematics', 2, 2, 3, './images/new-design/course/maths.png', 1, '2022-04-24 13:37:17', '2022-10-07 06:08:23'),
(4, 'Science', 4, 2, 4, './images/new-design/course/science.png', 1, '2022-04-24 13:37:17', '2022-04-24 13:37:17'),
(5, 'Social Science', 5, 2, 5, './images/new-design/course/social.png', 1, '2022-04-24 13:37:17', '2022-04-24 13:37:17'),
(6, 'Environmental Science', 6, 2, 4, './images/new-design/course/chem.png', 1, '2022-04-24 13:37:17', '2022-04-24 13:37:17'),
(23, 'History', 11, 2, 1, 'images/new-design/course/social.png', 0, '2022-10-27 08:10:00', '2022-11-09 07:54:23'),
(29, 'Zoology', 4, 2, 1, 'images/new-design/course/social.png', 0, '2022-11-01 07:29:49', '2022-11-17 06:43:14'),
(30, 'Physics', 5, 2, 1, 'images/new-design/course/social.png', 0, '2022-11-08 08:30:34', '2022-11-17 06:43:16');

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
(2, 'Organic Compounds', 'A Detailed analysis of organic compounds.', 'https://youtu.be/vZd6gXXVG3A', '', 1, '', 2, 5, 2, 1, 36, 1, '2022-07-07 06:10:38', '2022-07-07 06:10:38'),
(3, 'Gravity & Effects', 'Questions related to gravity', 'https://youtu.be/WfNfpooJHrQ', 'some url', 1, 'null', 2, 5, 2, 1, 37, 1, '2022-07-09 00:46:16', '2022-11-17 08:02:38'),
(4, 'Fluids', 'description', 'https://youtu.be/_wbvVHHvlQk', 'urls as', 2, 'C:\\fakepath\\Light_Suppressor.litematic', 2, 5, 2, 2, 37, 1, '2022-07-09 00:48:45', '2022-07-09 00:48:45'),
(6, 'Dynamics', 'kellog', 'https://youtu.be/9Pb-pne81GU', 'https', 2, 'C:\\fakepath\\Light_Suppressor.litematic', 2, 5, 2, 2, 36, 1, '2022-07-09 00:54:20', '2022-07-09 00:54:20'),
(9, 'Adjectives', 'Some desc', 'https://youtu.be/CEhzbVmpZn8', 'shshsh', 1, 'C:\\fakepath\\WhatsApp Image 2022-05-12 at 9.44.34 PM.jpeg', 2, 5, 2, 2, 37, 1, '2022-08-07 08:20:57', '2022-08-07 08:20:57'),
(13, 'some topic edited', 'fake description', 'https://youtu.be/CEhzbVmpZn9', NULL, NULL, NULL, 2, 5, 2, 2, 5, 1, '2022-09-16 07:38:19', '2022-10-11 00:51:36'),
(14, 'some topic', 'afaee eag tkytuly;;;', 'frgrgs', NULL, NULL, NULL, 2, 5, 2, 3, 39, 1, '2022-10-07 07:32:37', '2022-10-07 07:32:37'),
(15, 'மனப்பாடம் செய்தல்', 'faefeeaf', NULL, NULL, NULL, NULL, 2, 14, 1, 1, 41, 1, '2022-10-21 00:58:24', '2022-10-21 00:58:24');

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
(140, 'nandha', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '::1', 'No HTTP_X_FORWARDED_FOR Set', 1, '2022-11-24 00:56:29', '2022-11-24 00:56:29');

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
(1, 1, 1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 2, NULL, 1, '2022-03-05 13:41:24', '2022-11-02 07:44:25'),
(2, 1, 1, 'nandha', 'e10adc3949ba59abbe56e057f20f883e', 2, 'uploads/StudentData/Id_cards/nandha_2.jpg', 1, '2022-06-30 07:12:27', '2022-11-02 04:29:27'),
(2887, 1, 0, 'hf-stu-0001', 'e10adc3949ba59abbe56e057f20f883e', 3, 'uploads/StudentData/Id_cards/Echo_2887.jpg', 1, '2022-11-22 05:00:11', '2022-11-22 05:00:12'),
(2888, 1, 0, 'hf-stf-0001', 'e10adc3949ba59abbe56e057f20f883e', 4, 'uploads/teacherData/Id_cards/Tango_2888.jpg', 1, '2022-11-22 05:04:19', '2022-11-22 07:08:17'),
(2889, 1, 0, 'hf-stu-0002', 'e10adc3949ba59abbe56e057f20f883e', 3, 'uploads/StudentData/default_boy.png', 1, '2022-11-22 06:02:51', '2022-11-22 06:02:51'),
(2890, 1, 0, 'hf-stu-0003', 'e10adc3949ba59abbe56e057f20f883e', 3, 'uploads/StudentData/default_boy.png', 1, '2022-11-22 06:03:43', '2022-11-22 06:03:43'),
(2891, 1, 0, 'hf-stu-0004', 'e10adc3949ba59abbe56e057f20f883e', 3, 'uploads/StudentData/default_boy.png', 1, '2022-11-22 06:35:23', '2022-11-22 06:35:23'),
(2892, 1, 0, 'hf-stu-0005', 'e10adc3949ba59abbe56e057f20f883e', 3, 'uploads/StudentData/default_boy.png', 1, '2022-11-22 06:36:19', '2022-11-22 06:36:19');

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
  `years_of_exp` varchar(4) NOT NULL DEFAULT '0',
  `contact_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `email_id` int(11) DEFAULT NULL,
  `date_of_hiring` date DEFAULT NULL,
  `proof_type` text DEFAULT NULL,
  `proof_no` text DEFAULT NULL,
  `proof_expiry` date DEFAULT NULL,
  `proof_file` varchar(255) DEFAULT NULL COMMENT 'proof file location on disk',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `userid`, `firstname`, `lastname`, `gender`, `dob`, `years_of_exp`, `contact_id`, `address_id`, `email_id`, `date_of_hiring`, `proof_type`, `proof_no`, `proof_expiry`, `proof_file`, `status`, `created_at`, `updated_at`) VALUES
(2, 2, 'Nandha kumar', 'Subramanian', 1, '2008-08-07', '12', 1, 5, 1, '2015-08-13', 'Driving License', '20514 0558 05888', '2023-08-10', NULL, 1, '2022-01-25 18:30:00', '2022-08-25 09:28:37'),
(3, 1, 'Admin', 'PrivilagedUser', 2, '1999-08-11', '3', 2, 6, 2, '2009-08-06', 'Driving License', 'AXIKLSJUJ A', '2028-08-10', NULL, 1, '2022-09-02 18:30:00', '2022-09-03 09:29:04');

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
-- Stand-in structure for view `view_students_strength`
-- (See below for the actual view)
--
CREATE TABLE `view_students_strength` (
`clssName` varchar(255)
,`secnSecName` varchar(255)
,`count` bigint(21)
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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_students`  AS SELECT `a`.`stuId` AS `id`, `a`.`stuFirstName` AS `firstname`, `a`.`stuLastName` AS `lastname`, if(`a`.`stuIsStatus` = 1,'Active','In-Active') AS `studentstatus`, `a`.`stuUserId` AS `student_userid`, `a`.`stuIsStatus` AS `status`, `a`.`stuGender` AS `gender`, `a`.`stuDOB` AS `dob`, `b`.`orstOrgMasterId` AS `orgnId`, `c`.`stuclOrgStuMasterId` AS `OrgStuId`, `c`.`stuclClsMasterId` AS `ClassId`, `c`.`stuclSecMasterId` AS `SectionId`, `c`.`stuclAcademicYear` AS `academicYear`, `c`.`promoted` AS `promoted`, `c`.`transferred` AS `transferred`, `d`.`olName` AS `branchName`, `e`.`secnSecName` AS `secnName`, `f`.`clssName` AS `clssName`, `i`.`condOfficialNumber` AS `OfficialNumber`, `i`.`condPersonalNumber` AS `PersonalNumber`, `j`.`emlOfficialAddress` AS `email`, `k`.`address` AS `address`, `k`.`city` AS `city`, `k`.`state` AS `state`, `m`.`statename` AS `state_name`, `k`.`pincode` AS `pincode`, `l`.`id_picture` AS `profile_pic`, `l`.`username` AS `username` FROM (((((((((((`students` `a` left join `orgstudents` `b` on(`a`.`stuId` = `b`.`orstStuMasterId`)) left join `studentsclasses` `c` on(`b`.`orstId` = `c`.`stuclOrgStuMasterId`)) left join `orgdetails` `d` on(`d`.`olSubOrgId` = `b`.`branch_id`)) left join `sections` `e` on(`e`.`secnId` = `c`.`stuclSecMasterId`)) left join `classes` `f` on(`c`.`stuclClsMasterId` = `f`.`clssId`)) left join `family` `g` on(`a`.`stuUserId` = `g`.`userid`)) left join `contactdetails` `i` on(`i`.`condId` = `g`.`contact_id`)) left join `emailaddresses` `j` on(`j`.`emlId` = `g`.`email_id`)) left join `addresses` `k` on(`k`.`id` = `g`.`address_id`)) left join `users` `l` on(`l`.`id` = `a`.`stuUserId`)) left join `states` `m` on(`m`.`id` = `k`.`state`))  ;

-- --------------------------------------------------------

--
-- Structure for view `view_students_strength`
--
DROP TABLE IF EXISTS `view_students_strength`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_students_strength`  AS SELECT `classes`.`clssName` AS `clssName`, `sections`.`secnSecName` AS `secnSecName`, count(0) AS `count` FROM ((`studentsclasses` join `classes` on(`studentsclasses`.`stuclClsMasterId` = `classes`.`clssId`)) join `sections` on(`studentsclasses`.`stuclSecMasterId` = `sections`.`secnId`)) GROUP BY `studentsclasses`.`stuclClsMasterId`, `studentsclasses`.`stuclSecMasterId`  ;

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `room_id` (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1525;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `clssId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

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
  MODIFY `condId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1163;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `cnId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `docId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `emailaddresses`
--
ALTER TABLE `emailaddresses`
  MODIFY `emlId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1078;

--
-- AUTO_INCREMENT for table `employeeleaves`
--
ALTER TABLE `employeeleaves`
  MODIFY `emplvId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `eventsschedules`
--
ALTER TABLE `eventsschedules`
  MODIFY `evntshId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `exsId` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `lnId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `onlinetests`
--
ALTER TABLE `onlinetests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

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
  MODIFY `ogcstffId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `orstId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reviewstatus`
--
ALTER TABLE `reviewstatus`
  MODIFY `rvwsId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `stffId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staffsalaries`
--
ALTER TABLE `staffsalaries`
  MODIFY `stfslId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staffseducations`
--
ALTER TABLE `staffseducations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `staffseduclgdetails`
--
ALTER TABLE `staffseduclgdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43116;

--
-- AUTO_INCREMENT for table `staff_details`
--
ALTER TABLE `staff_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `standard_subjects`
--
ALTER TABLE `standard_subjects`
  MODIFY `std_subj_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

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
  MODIFY `stuId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `studentsclasses`
--
ALTER TABLE `studentsclasses`
  MODIFY `stuclId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `studentsmarks`
--
ALTER TABLE `studentsmarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subjId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `useragent_analytics`
--
ALTER TABLE `useragent_analytics`
  MODIFY `ua_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2893;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `vdId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
