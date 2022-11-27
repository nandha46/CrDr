-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2022 at 03:27 PM
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
(1, '175', 'Dindigul', '1', '', '624003', 1, 1, '2022-06-05 08:42:10', '2022-06-05 08:42:10'),
(2, 'xx', 'chennai', '1', '', '600100', 1, 1, '2022-06-08 00:09:19', '2022-06-08 00:09:19'),
(3, '33', 'chennai', '1', '', '600100', 1, 1, '2022-06-08 00:34:40', '2022-06-08 00:34:40'),
(4, 'No 1', 'Chennai', '1', '', '600042', 1, 1, '2022-07-04 02:07:48', '2022-07-04 02:07:48'),
(5, 'No 1', 'Chennai', '1', '', '600042', 1, 1, '2022-07-04 02:48:12', '2022-07-04 02:48:12');

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
  `clssName` varchar(255) NOT NULL,
  `clssIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`clssId`, `clssName`, `clssIsStatus`, `created_at`, `updated_at`) VALUES
(1, 'I', 1, '2022-05-12 19:02:53', '2022-05-12 19:02:53'),
(2, 'II', 1, '2022-05-12 19:02:53', '2022-05-12 19:02:53'),
(3, 'III', 1, '2022-05-12 19:03:12', '2022-05-12 19:03:12'),
(4, 'IV', 1, '2022-05-12 19:03:12', '2022-05-12 19:03:12'),
(5, 'V', 1, '2022-05-12 19:03:20', '2022-05-12 19:03:20');

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
  `condOfficialNumber` varchar(255) NOT NULL,
  `condPersonalNumber` varchar(255) NOT NULL,
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
  `condIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactdetails`
--

INSERT INTO `contactdetails` (`condId`, `condOfficialNumber`, `condPersonalNumber`, `condOtherNumber1`, `condOtherNumber2`, `condLandLine1`, `condLandLine2`, `condLandLine3`, `condLandLine4`, `condLandLine5`, `condNumber5`, `condFax1`, `condFax2`, `condFax3`, `condFax4`, `condFax5`, `condIsStatus`, `created_at`, `updated_at`) VALUES
(1, '9042748542', 'null', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2022-06-05 08:42:10', '2022-06-05 08:42:10'),
(2, '9042748542', 'null', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2022-06-08 00:09:19', '2022-06-08 00:09:19'),
(3, '9042748542', 'null', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2022-06-08 00:34:40', '2022-06-08 00:34:40'),
(4, '123547589', 'null', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2022-07-04 02:07:48', '2022-07-04 02:07:48'),
(5, '321546879', 'null', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2022-07-04 02:48:12', '2022-07-04 02:48:12');

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
-- Table structure for table `emailaddresses`
--

CREATE TABLE `emailaddresses` (
  `emlId` int(11) NOT NULL,
  `emlOfficialAddress` varchar(255) NOT NULL,
  `emlPersonalAddress` varchar(255) NOT NULL,
  `emlOtherAddress1` varchar(255) NOT NULL,
  `emlOtherAddress2` varchar(255) NOT NULL,
  `emlOtherAddress3` varchar(255) NOT NULL,
  `emlIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emailaddresses`
--

INSERT INTO `emailaddresses` (`emlId`, `emlOfficialAddress`, `emlPersonalAddress`, `emlOtherAddress1`, `emlOtherAddress2`, `emlOtherAddress3`, `emlIsStatus`, `created_at`, `updated_at`) VALUES
(1, 'rharikumarcse@gmail.com`', '', '', '', '', 0, '2022-06-05 08:28:51', '2022-06-05 08:28:51'),
(2, 'rharikumarcse@gmail.com`', '', '', '', '', 0, '2022-06-05 08:35:48', '2022-06-05 08:35:48'),
(3, 'rharikumarcse@gmail.com`', '', '', '', '', 0, '2022-06-05 08:39:24', '2022-06-05 08:39:24'),
(4, 'rharikumarcse@gmail.com`', '', '', '', '', 0, '2022-06-05 08:42:10', '2022-06-05 08:42:10'),
(5, 'rharikumarcse@gmail.com', '', '', '', '', 0, '2022-06-08 00:09:19', '2022-06-08 00:09:19'),
(6, 'rr@ee.com', '', '', '', '', 0, '2022-06-08 00:34:40', '2022-06-08 00:34:40'),
(7, 'some@mail.com', '', '', '', '', 0, '2022-07-04 02:07:48', '2022-07-04 02:07:48'),
(8, 'someother@email.com', '', '', '', '', 0, '2022-07-04 02:48:12', '2022-07-04 02:48:12');

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
(4, 0, 'null', 'new', 'new', 'new', 'new', 'new', 'new', '2022-07-14', '00:28:00', '00:28:00', '2022-07-13', 'C:\\fakepath\\troy dc.txt', 1, '2022-07-14 13:24:47', '2022-07-14 13:24:47');

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
  `exmId` int(11) NOT NULL,
  `exmName` varchar(255) NOT NULL,
  `exmYear` year(4) NOT NULL,
  `exmType` varchar(255) NOT NULL,
  `exmIsAssessments` tinyint(4) NOT NULL,
  `exmPassMarks` decimal(10,2) NOT NULL,
  `exmOrgMasterId` int(11) NOT NULL,
  `exmDescription` text NOT NULL,
  `exmComments` text NOT NULL,
  `exmIsCompleted` tinyint(4) NOT NULL DEFAULT 0,
  `exmIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `examsubjects`
--

CREATE TABLE `examsubjects` (
  `exmsbjId` int(11) NOT NULL,
  `exmsbjSubjId` int(11) NOT NULL,
  `exmsbjExmMasterId` int(11) NOT NULL,
  `exmsbjFullMarks` varchar(255) NOT NULL,
  `exmsbjPassMarks` varchar(255) NOT NULL,
  `exmsbjHavePractical` tinyint(4) NOT NULL DEFAULT 0,
  `exmsbjIsPractical` tinyint(4) NOT NULL DEFAULT 0,
  `exmsbjPracticalMarks` varchar(255) NOT NULL,
  `exmsbjTheoryMarks` varchar(255) NOT NULL,
  `exmsbjIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `examtimetables`
--

CREATE TABLE `examtimetables` (
  `exmtmtblId` int(11) NOT NULL,
  `exmtmtblOrgId` int(11) NOT NULL,
  `exmtmtblClsId` int(11) NOT NULL,
  `exmtmtblYear` year(4) NOT NULL,
  `exmtmtblAnnouncedAt` date NOT NULL,
  `exmtmtblCreatedBy` int(11) NOT NULL,
  `exmtmtblType` int(11) NOT NULL COMMENT '1-Quartely\r\n2-Halfly\r\n3-Annually\r\n4-Monthly\r\n5-Others',
  `exmtmtblTime` int(11) NOT NULL,
  `exmtmtblStartTime` time NOT NULL,
  `exmtmtblEndTime` time NOT NULL,
  `exmtmtblIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `fmStudentId` int(11) NOT NULL,
  `fmName` varchar(255) DEFAULT NULL,
  `fmFolderPath` text NOT NULL,
  `fmContactId` int(11) NOT NULL,
  `fmEmailId` int(11) NOT NULL,
  `fmAddressId` int(11) NOT NULL,
  `fmIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `families`
--

INSERT INTO `families` (`fmId`, `fmStudentId`, `fmName`, `fmFolderPath`, `fmContactId`, `fmEmailId`, `fmAddressId`, `fmIsStatus`, `created_at`, `updated_at`) VALUES
(1, 4, '', '', 1, 4, 1, 0, '2022-06-05 08:42:10', '2022-06-05 08:42:10'),
(3, 6, NULL, '', 3, 6, 3, 0, '2022-06-08 00:34:40', '2022-06-08 00:34:40'),
(4, 7, NULL, '', 4, 7, 4, 0, '2022-07-04 02:07:48', '2022-07-04 02:07:48'),
(5, 8, NULL, '', 5, 8, 5, 0, '2022-07-04 02:48:12', '2022-07-04 02:48:12');

-- --------------------------------------------------------

--
-- Table structure for table `familyconnections`
--

CREATE TABLE `familyconnections` (
  `fmlcId` int(11) NOT NULL,
  `fmlcFamilyId` int(11) NOT NULL,
  `fmlcFirstName` varchar(255) NOT NULL,
  `fmlcMiddleName` varchar(255) NOT NULL,
  `fmlcLastName` varchar(255) NOT NULL,
  `fmlcProfession` varchar(255) NOT NULL,
  `fmlcDOB` date NOT NULL,
  `fmlcGender` int(11) NOT NULL COMMENT '1-Male,\r\n2-Female\r\n3-Others',
  `fmlcRelationship` int(11) NOT NULL COMMENT '1-Father,\r\n2-StepFather,\r\n3-Mother,\r\n4-StepMother,\r\n5-ElderSister,\r\n6-ElderBrother,\r\n7-YoungerSister,\r\n8-YoungerBrother,\r\n9-Gardian,\r\n10-Others',
  `fmlcContactId` int(11) NOT NULL,
  `fmlcEmailId` int(11) NOT NULL,
  `fmlcAddressId` int(11) NOT NULL,
  `fmlcIsStatus` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `familyconnections`
--

INSERT INTO `familyconnections` (`fmlcId`, `fmlcFamilyId`, `fmlcFirstName`, `fmlcMiddleName`, `fmlcLastName`, `fmlcProfession`, `fmlcDOB`, `fmlcGender`, `fmlcRelationship`, `fmlcContactId`, `fmlcEmailId`, `fmlcAddressId`, `fmlcIsStatus`, `created_at`, `updated_at`) VALUES
(1, 1, 'M.G.Rajendran', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, '2022-06-05 08:42:10', '2022-06-05 08:42:10'),
(2, 1, 'R.Kubendra', '', '', '', '0000-00-00', 0, 3, 0, 0, 0, 0, '2022-06-05 08:42:10', '2022-06-05 08:42:10'),
(3, 1, 'null', '', '', '', '0000-00-00', 0, 9, 0, 0, 0, 0, '2022-06-05 08:42:10', '2022-06-05 08:42:10'),
(4, 3, 'mm', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, '2022-06-08 00:34:40', '2022-06-08 00:34:40'),
(5, 3, 'mm', '', '', '', '0000-00-00', 0, 3, 0, 0, 0, 0, '2022-06-08 00:34:40', '2022-06-08 00:34:40'),
(6, 3, 'null', '', '', '', '0000-00-00', 0, 9, 0, 0, 0, 0, '2022-06-08 00:34:40', '2022-06-08 00:34:40'),
(7, 4, 'Luke', '', '', '', '0000-00-00', 0, 1, 0, 0, 0, 0, '2022-07-04 02:07:48', '2022-07-04 02:07:48'),
(8, 4, 'Laia', '', '', '', '0000-00-00', 0, 3, 0, 0, 0, 0, '2022-07-04 02:07:48', '2022-07-04 02:07:48'),
(9, 4, 'null', '', '', '', '0000-00-00', 0, 9, 0, 0, 0, 0, '2022-07-04 02:07:48', '2022-07-04 02:07:48'),
(10, 5, 'Luke', '', '', '', '0000-00-00', 1, 1, 0, 0, 0, 0, '2022-07-04 02:48:12', '2022-07-04 02:48:12'),
(11, 5, 'Leia', '', '', '', '0000-00-00', 2, 3, 0, 0, 0, 0, '2022-07-04 02:48:12', '2022-07-04 02:48:12'),
(12, 5, 'null', '', '', '', '0000-00-00', 0, 9, 0, 0, 0, 0, '2022-07-04 02:48:12', '2022-07-04 02:48:12');

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
(4, 5, 2, 2, 2, 'Unit 1', 1, 1, '2022-05-14 13:48:53', '2022-05-14 13:48:53'),
(5, 5, 2, 2, 2, 'Unit 2', 2, 1, '2022-05-14 13:49:11', '2022-05-14 13:49:11'),
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
(32, 3, 5, 1, 2, 'Test1', 1, 1, '2022-06-07 12:15:40', '2022-06-07 12:15:40');

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
,`subject` varchar(255)
,`syllabusName` varchar(55)
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
(3, 'graphical', b'0', NULL, 2, 0, 'reports-graphical', 1, 1, 1, '2018-12-20 17:59:00', '2018-12-20 17:59:00'),
(4, 'members', b'0', 'users', 2, 1, NULL, 1, 0, 1, '2018-12-20 18:03:00', '2018-12-20 18:03:00'),
(5, 'students', b'0', NULL, 1, 0, 'students', 1, 4, 1, '2018-12-20 18:01:00', '2018-12-20 18:01:00'),
(6, 'teachers', b'0', NULL, 2, 0, 'teachers', 1, 4, 1, '2018-12-20 18:01:00', '2018-12-20 18:01:00'),
(7, 'users', b'0', NULL, 3, 0, 'users', 1, 4, 1, '2018-12-20 18:02:00', '2018-12-20 18:02:00'),
(8, 'components', b'0', 'feather', 3, 1, NULL, 1, 0, 1, '2018-12-20 18:02:00', '2018-12-20 18:02:00'),
(9, 'lessons', b'0', NULL, 1, 0, 'lessons', 1, 8, 1, '2018-12-20 18:02:00', '2018-12-20 18:02:00'),
(11, 'files', b'0', NULL, 5, 0, 'files', 1, 8, 1, '2018-12-20 18:03:00', '2018-12-20 18:03:00'),
(12, 'videos', b'0', NULL, 6, 0, 'videos', 1, 8, 1, '2018-12-20 18:03:00', '2018-12-20 18:03:00'),
(13, 'documents', b'0', NULL, 7, 0, 'documents', 1, 8, 1, '2018-12-20 18:03:00', '2018-12-20 18:03:00'),
(14, 'announcements', b'0', NULL, 4, 0, 'announcements', 1, 22, 1, '2018-12-20 18:03:00', '2018-12-20 18:03:00'),
(15, 'settings', b'0', 'settings', 6, 1, NULL, 1, 0, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(16, 'languages', b'0', NULL, 1, 0, 'languages', 1, 15, 0, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(17, 'emails', b'0', NULL, 1, 0, 'emails', 1, 15, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(18, 'online-tests', b'0', 'pen-tool', 4, 1, 'online-tests', 1, 0, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(19, 'environment', b'0', 'activity', 5, 1, NULL, 1, 0, 1, '2018-12-20 18:03:00', '2018-12-20 18:03:00'),
(20, 'organizations', b'0', NULL, 3, 0, 'organizations', 1, 19, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(21, 'time-tables', b'0', NULL, 4, 0, 'time-tables', 1, 19, 0, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(22, 'programs', b'0', 'box', 4, 1, NULL, 1, 0, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(23, 'events', b'0', NULL, 1, 0, 'events', 1, 22, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(24, 'holidays', b'0', NULL, 1, 0, 'holidays', 1, 19, 0, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(25, 'press-releases', b'0', 'reports', 4, 0, 'press-releases', 1, 22, 1, '2018-12-20 18:03:00', '2018-12-20 18:03:00'),
(26, 'blogs', b'0', NULL, 1, 0, 'blogs', 1, 22, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(27, 'reports', b'0', 'layers', 7, 1, NULL, 1, 0, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(28, 'all-details', b'0', NULL, 1, 0, 'all-in-one-reports', 1, 27, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(29, 'individual-status', b'0', NULL, 1, 0, 'individual-status', 1, 27, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(30, 'org-report-details', b'0', NULL, 1, 0, 'org-details', 1, 27, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(31, 'exams-details', b'0', NULL, 1, 0, 'exams-details', 1, 19, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(32, 'students/staffs', b'0', NULL, 1, 0, 'student-staffs-details', 1, 27, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(33, 'active-status', b'0', NULL, 1, 0, 'active-status', 1, 27, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(34, 'configurations', b'0', NULL, 1, 0, 'configurations', 1, 15, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(35, 'reviewed stories', b'0', NULL, 1, 0, 'reviewed-stories', 1, 27, 1, '2018-12-20 18:04:00', '2018-12-20 18:04:00'),
(36, 'Topics', b'0', NULL, 3, 0, 'topics', 1, 8, 1, '2022-07-04 14:53:36', '2022-07-04 14:53:36'),
(37, 'Add Online Tests', b'0', NULL, 1, 0, 'online-tests', 1, 18, 1, '2022-07-21 13:39:51', '2022-07-21 13:39:51'),
(38, 'View Online Tests', b'0', NULL, 2, 0, 'view-online-tests', 1, 18, 1, '2022-07-21 13:41:17', '2022-07-21 13:41:17');

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
  `questiontype` int(11) NOT NULL,
  `choice` varchar(2550) NOT NULL,
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
(1, 'Can gravity form waves?', 3, 4, 'null', '1', 'Easy', 2, 1, '2022-07-09 13:12:30', '2022-07-14 09:04:41'),
(4, 'Gravity is a ___?', 3, 1, 'null', 'Force', 'Medium', 3, 1, '2022-07-13 03:39:20', '2022-07-13 03:39:20'),
(5, '5 is greater than 3', 3, 4, 'null', '1', 'Easy', 1, 1, '2022-07-13 03:40:39', '2022-07-13 03:40:39'),
(8, 'What is the net force on the book?', 6, 2, '9.8~0~Cannot be determined without additional data~None of the above', '2', 'Hard', 2, 1, '2022-07-13 03:50:07', '2022-07-13 04:16:23'),
(9, 'question', 3, 1, '', '', 'Easy', 2, 1, '2022-07-21 14:23:20', '2022-07-21 14:23:20'),
(10, 'question', 3, 2, '', '', 'Medium', 4, 1, '2022-07-21 14:23:20', '2022-07-21 14:23:20'),
(11, 'question', 3, 3, '', '', 'Hard', 10, 1, '2022-07-21 14:23:53', '2022-07-21 14:23:53'),
(14, 'question', 6, 1, '', '', 'Hard', 5, 1, '2022-07-21 14:25:24', '2022-07-21 14:25:24'),
(15, 'question', 6, 1, '', '', 'Hard', 5, 1, '2022-07-21 14:25:24', '2022-07-21 14:25:24'),
(16, 'question', 6, 1, '', '', 'Medium', 3, 1, '2022-07-21 14:34:07', '2022-07-21 14:34:07'),
(17, 'question', 6, 0, '', '', 'Easy', 2, 1, '2022-07-21 14:34:07', '2022-07-21 14:34:07'),
(19, 'question', 6, 2, '', '', 'Easy', 2, 1, '2022-07-21 14:34:41', '2022-07-21 14:34:41');

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
  `ogcstffClsMasterId` int(11) NOT NULL,
  `ogcstffStaffMasterId` int(11) NOT NULL,
  `ogcstffSubjectId` int(11) NOT NULL,
  `ogcstffIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(1, 1, 'HF-1', 'Hope Foundation', 1, 1, 1, 1, '2022-04-17 05:16:50', '2022-04-17 05:16:50'),
(2, 1, 'HF-2', 'Hope Highschool', 2, 2, 2, 1, '2022-07-20 09:37:31', '2022-07-20 09:37:31');

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
  `orhlHolMasterId` int(11) NOT NULL,
  `orhlFinancialYear` year(4) NOT NULL,
  `orhlIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Table structure for table `orgstaffsconnections`
--

CREATE TABLE `orgstaffsconnections` (
  `orsfId` int(11) NOT NULL,
  `orsfOrgMasterId` int(11) NOT NULL,
  `orsfStaffMasterId` int(11) NOT NULL,
  `orsfDateOfHiring` date NOT NULL,
  `orsfStaffType` int(11) NOT NULL COMMENT '1-Teaching,\r\n2-Non-Teaching',
  `orsfDesignation` varchar(255) NOT NULL,
  `orsfSpeciality` varchar(255) NOT NULL,
  `orsfIdCardNo` varchar(255) NOT NULL,
  `orsfIsStatus` tinyint(4) NOT NULL DEFAULT 0,
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
  `orstStuMasterId` int(11) NOT NULL,
  `orstIsStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orgstudents`
--

INSERT INTO `orgstudents` (`orstId`, `orstOrgMasterId`, `orstStuMasterId`, `orstIsStatus`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, '2022-06-05 03:12:10', '2022-06-05 03:12:10'),
(2, 1, 3, 0, '2022-06-07 19:04:40', '2022-06-07 19:04:40'),
(3, 1, 4, 0, '2022-07-04 02:07:48', '2022-07-04 02:07:48'),
(4, 1, 5, 0, '2022-07-04 02:48:12', '2022-07-04 02:48:12');

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
(3, 'Annual Report', 6, 'name@mail.com,add@mail.com', '', '', 7, 1, '2022-07-19 08:16:17', '2022-07-19 08:19:02');

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
(4, 'D', 1, '2022-04-17 07:43:05', '2022-04-17 07:43:05');

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
  `stffMiddleName` varchar(255) NOT NULL,
  `stffLastName` varchar(255) NOT NULL,
  `stffGender` int(11) NOT NULL COMMENT '1-Male,\r\n2-Female\r\n3-Others',
  `stffDOB` date NOT NULL,
  `stffPlaceOfBirth` varchar(255) NOT NULL,
  `stffOfficalEmailId` int(11) NOT NULL,
  `stffOtherEmailId` int(11) NOT NULL,
  `stffAddressId` int(11) NOT NULL,
  `stffOfficialContactId` int(11) NOT NULL,
  `stffPersonalContactId` int(11) DEFAULT 0,
  `stffComments` text NOT NULL,
  `stffIsStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Table structure for table `staffsdetails`
--

CREATE TABLE `staffsdetails` (
  `staffdId` int(11) NOT NULL,
  `staffdMasterId` int(11) NOT NULL,
  `staffdFolderPath` text NOT NULL,
  `staffdFatherName` varchar(255) NOT NULL,
  `staffdMotherName` varchar(255) NOT NULL,
  `staffdFatherContactNoId` int(11) NOT NULL,
  `staffdMotherContactId` int(11) NOT NULL,
  `staffdSpouseName` varchar(255) NOT NULL,
  `staffdSpouseContactId` int(11) NOT NULL DEFAULT 0,
  `staffdIsStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `staffseducations`
--

CREATE TABLE `staffseducations` (
  `stffedId` int(11) NOT NULL,
  `stffedMasterId` int(11) NOT NULL,
  `stffedQualification` text NOT NULL,
  `stffedYearOfExp` int(11) NOT NULL,
  `stffedIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `staffseduclgdetails`
--

CREATE TABLE `staffseduclgdetails` (
  `stffedcId` int(11) NOT NULL,
  `stffedcMasterId` int(11) NOT NULL,
  `stffedcCollegeName` varchar(255) NOT NULL,
  `stffedcPassedYear` year(4) NOT NULL,
  `stffedcPercentage` varchar(255) NOT NULL,
  `stffedcGrade` varchar(255) NOT NULL,
  `stffedcClass` varchar(255) NOT NULL COMMENT 'First, Second Class',
  `stffedcIsStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `stuFirstName` varchar(255) NOT NULL,
  `stuMiddleName` varchar(255) NOT NULL,
  `stuLastName` varchar(255) NOT NULL,
  `stuGender` int(11) NOT NULL COMMENT '1-Male,\r\n2-Female,\r\n3-Others',
  `stuDOB` date NOT NULL,
  `stuIsStatus` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`stuId`, `stuUserId`, `stuFirstName`, `stuMiddleName`, `stuLastName`, `stuGender`, `stuDOB`, `stuIsStatus`, `created_at`, `updated_at`) VALUES
(1, 11, 'Harikumar', 'null', 'Rajendran', 1, '1995-02-01', 1, '2022-06-05 03:12:10', '2022-06-05 03:12:10'),
(2, 12, 'Test', 'null', 'test', 1, '2022-06-02', 1, '2022-06-07 18:39:19', '2022-06-07 18:39:19'),
(3, 13, 'test', 'null', 'demo', 1, '2022-06-02', 1, '2022-06-07 19:04:40', '2022-06-07 19:04:40'),
(5, 15, 'Anakin', 'Q', 'Skywalker', 1, '2012-02-10', 1, '2022-07-04 02:48:12', '2022-07-04 02:48:12');

-- --------------------------------------------------------

--
-- Table structure for table `studentsclasses`
--

CREATE TABLE `studentsclasses` (
  `stuclId` int(11) NOT NULL,
  `stuclOrgStuMasterId` int(11) NOT NULL,
  `stuclClsMasterId` int(11) NOT NULL,
  `stuclSecMasterId` int(11) NOT NULL,
  `stuclAcademicYear` date NOT NULL,
  `stuclIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `studentsclasses`
--

INSERT INTO `studentsclasses` (`stuclId`, `stuclOrgStuMasterId`, `stuclClsMasterId`, `stuclSecMasterId`, `stuclAcademicYear`, `stuclIsStatus`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 2, '2012-01-01', 0, '2022-06-05 03:12:10', '2022-06-05 03:12:10'),
(2, 2, 4, 3, '0000-00-00', 0, '2022-06-07 19:04:40', '2022-06-07 19:04:40'),
(3, 3, 5, 2, '0000-00-00', 0, '2022-07-04 02:07:48', '2022-07-04 02:07:48'),
(4, 4, 5, 4, '0000-00-00', 0, '2022-07-04 02:48:12', '2022-07-04 02:48:12');

-- --------------------------------------------------------

--
-- Table structure for table `studentsmarks`
--

CREATE TABLE `studentsmarks` (
  `stumrkId` int(11) NOT NULL,
  `stumrkSubjMasterId` int(11) NOT NULL,
  `stumrkStlMasterId` int(11) NOT NULL,
  `stumrkExamId` int(11) NOT NULL,
  `stuclIdMarks` decimal(10,2) NOT NULL,
  `stuclIdIsStatus` tinyint(4) NOT NULL DEFAULT 0,
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
  `standardid` int(11) NOT NULL COMMENT 'aka ClssId',
  `subjIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subjId`, `subjName`, `standardid`, `subjIsStatus`, `created_at`, `updated_at`) VALUES
(1, 'Tamil', 1, 1, '2022-04-24 13:35:59', '2022-04-24 13:35:59'),
(2, 'English', 4, 1, '2022-04-24 13:35:59', '2022-04-24 13:35:59'),
(3, 'Maths', 2, 1, '2022-04-24 13:37:17', '2022-04-24 13:37:17'),
(4, 'Science', 4, 1, '2022-04-24 13:37:17', '2022-04-24 13:37:17'),
(5, 'Social Science', 5, 1, '2022-04-24 13:37:17', '2022-04-24 13:37:17');

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
  `videoid` int(11) NOT NULL,
  `otherlinks` varchar(200) NOT NULL,
  `onlinetestid` int(11) NOT NULL,
  `imageurl` varchar(200) NOT NULL,
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
(2, 'Organic Compounds', 'A Detailed analysis of organic compounds.', 1, '', 1, '', 2, 5, 4, 2, 4, 1, '2022-07-07 06:10:38', '2022-07-07 06:10:38'),
(3, 'Gravity', 'Questions related to gravity', 2, 'some url', 1, 'null', 2, 3, 0, 3, 0, 1, '2022-07-09 00:46:16', '2022-07-13 04:40:03'),
(4, 'Fluids', 'description', 3, 'urls as', 2, 'C:\\fakepath\\Light_Suppressor.litematic', 2, 5, 2, 2, 5, 1, '2022-07-09 00:48:45', '2022-07-09 00:48:45'),
(6, 'Dynamics', 'kellog', 2, 'https', 2, 'C:\\fakepath\\Light_Suppressor.litematic', 2, 4, 2, 2, 3, 1, '2022-07-09 00:54:20', '2022-07-09 00:54:20');

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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `userOrgId`, `userOrgSubId`, `username`, `password`, `usertype`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 'admin', '37a6259cc0c1dae299a7866489dff0bd', 2, 1, '2022-03-05 13:41:24', '2022-03-05 13:41:24'),
(2, 0, 0, 'nandha', 'e10adc3949ba59abbe56e057f20f883e', 2, 1, '2022-06-30 07:12:27', '2022-06-30 07:12:27'),
(11, 0, 0, 'hf-stu-0001', 'e10adc3949ba59abbe56e057f20f883e', 3, 1, '2022-06-05 03:12:10', '2022-06-05 03:12:10'),
(13, 0, 0, 'hf-stu-0002', 'e10adc3949ba59abbe56e057f20f883e', 3, 1, '2022-06-07 19:04:40', '2022-06-07 19:04:40'),
(15, 0, 0, 'hf-stu-0005', 'e10adc3949ba59abbe56e057f20f883e', 3, 1, '2022-07-04 02:48:12', '2022-07-04 02:48:12');

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
(1, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'https://loremipsum.io/', 'http://localhost/hopefoundation', 0, '2022-07-12 06:37:06', '2022-07-12 06:55:03'),
(2, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'https://loremipsum.io/', 'http://localhost/hopefoundation', 1, '2022-07-12 06:38:43', '2022-07-12 06:55:11');

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
-- Stand-in structure for view `view_students`
-- (See below for the actual view)
--
CREATE TABLE `view_students` (
`id` int(11)
,`firstname` varchar(255)
,`lastname` varchar(255)
,`studentstatus` varchar(9)
,`gender` int(11)
,`dob` date
,`orgnId` int(11)
,`OrgStuId` int(11)
,`ClassId` int(11)
,`SectionId` int(11)
,`academicYear` date
,`orgnName` varchar(255)
,`secnName` varchar(255)
,`clssName` varchar(255)
,`OfficialNumber` varchar(255)
,`PersonalNumber` varchar(255)
,`email` varchar(255)
,`address` varchar(255)
,`city` varchar(20)
,`state` varchar(20)
,`pincode` varchar(10)
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
,`videoid` int(11)
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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `lessons_view`  AS SELECT `a`.`lnId` AS `lnId`, `a`.`lnLessonName` AS `lessonName`, `a`.`lnLessonOrder` AS `lessonOrder`, `a`.`lnSubMasterId` AS `SubjectId`, if(`a`.`lnIsStatus` = 1,'Active','In-Active') AS `lessonstatus`, `b`.`clssName` AS `standard`, `c`.`subjName` AS `subject`, `d`.`syName` AS `syllabusName` FROM (((`lessons` `a` left join `classes` `b` on(`a`.`lnClsMasterId` = `b`.`clssId`)) left join `subjects` `c` on(`a`.`lnSubMasterId` = `c`.`subjId`)) left join `syllabuses` `d` on(`a`.`lnSyMasterId` = `d`.`syId`))  ;

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
-- Structure for view `view_students`
--
DROP TABLE IF EXISTS `view_students`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_students`  AS SELECT `a`.`stuId` AS `id`, `a`.`stuFirstName` AS `firstname`, `a`.`stuLastName` AS `lastname`, if(`a`.`stuIsStatus` = 1,'Active','In-Active') AS `studentstatus`, `a`.`stuGender` AS `gender`, `a`.`stuDOB` AS `dob`, `b`.`orstOrgMasterId` AS `orgnId`, `c`.`stuclOrgStuMasterId` AS `OrgStuId`, `c`.`stuclClsMasterId` AS `ClassId`, `c`.`stuclSecMasterId` AS `SectionId`, `c`.`stuclAcademicYear` AS `academicYear`, `d`.`olName` AS `orgnName`, `e`.`secnSecName` AS `secnName`, `f`.`clssName` AS `clssName`, `i`.`condOfficialNumber` AS `OfficialNumber`, `i`.`condPersonalNumber` AS `PersonalNumber`, `j`.`emlOfficialAddress` AS `email`, `k`.`address` AS `address`, `k`.`city` AS `city`, `k`.`state` AS `state`, `k`.`pincode` AS `pincode` FROM (((((((((`students` `a` left join `orgstudents` `b` on(`a`.`stuId` = `b`.`orstStuMasterId`)) left join `studentsclasses` `c` on(`b`.`orstId` = `c`.`stuclOrgStuMasterId`)) left join `orgdetails` `d` on(`d`.`olOrgId` = `b`.`orstOrgMasterId`)) left join `sections` `e` on(`e`.`secnId` = `c`.`stuclSecMasterId`)) left join `classes` `f` on(`f`.`clssId` = `c`.`stuclClsMasterId`)) left join `families` `g` on(`a`.`stuId` = `g`.`fmStudentId`)) left join `contactdetails` `i` on(`i`.`condId` = `g`.`fmContactId`)) left join `emailaddresses` `j` on(`j`.`emlId` = `g`.`fmEmailId`)) left join `addresses` `k` on(`k`.`id` = `g`.`fmAddressId`))  ;

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
  ADD PRIMARY KEY (`exmId`);

--
-- Indexes for table `examsubjects`
--
ALTER TABLE `examsubjects`
  ADD PRIMARY KEY (`exmsbjId`);

--
-- Indexes for table `examtimetables`
--
ALTER TABLE `examtimetables`
  ADD PRIMARY KEY (`exmtmtblId`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`exsId`);

--
-- Indexes for table `families`
--
ALTER TABLE `families`
  ADD PRIMARY KEY (`fmId`),
  ADD UNIQUE KEY `fmName` (`fmName`);

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
-- Indexes for table `orgstaffsconnections`
--
ALTER TABLE `orgstaffsconnections`
  ADD PRIMARY KEY (`orsfId`);

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
-- Indexes for table `staffsdetails`
--
ALTER TABLE `staffsdetails`
  ADD PRIMARY KEY (`staffdId`);

--
-- Indexes for table `staffseducations`
--
ALTER TABLE `staffseducations`
  ADD PRIMARY KEY (`stffedId`);

--
-- Indexes for table `staffseduclgdetails`
--
ALTER TABLE `staffseduclgdetails`
  ADD PRIMARY KEY (`stffedcId`);

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
  ADD PRIMARY KEY (`stumrkId`),
  ADD KEY `stumrkStlMasterId` (`stumrkStlMasterId`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `clssId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `condId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `cnId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emailaddresses`
--
ALTER TABLE `emailaddresses`
  MODIFY `emlId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `employeeleaves`
--
ALTER TABLE `employeeleaves`
  MODIFY `emplvId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `eventsschedules`
--
ALTER TABLE `eventsschedules`
  MODIFY `evntshId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `exmId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `examsubjects`
--
ALTER TABLE `examsubjects`
  MODIFY `exmsbjId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `examtimetables`
--
ALTER TABLE `examtimetables`
  MODIFY `exmtmtblId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `exsId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `families`
--
ALTER TABLE `families`
  MODIFY `fmId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `familyconnections`
--
ALTER TABLE `familyconnections`
  MODIFY `fmlcId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `lnId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `onlinetests`
--
ALTER TABLE `onlinetests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
  MODIFY `ogcstffId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orgdetails`
--
ALTER TABLE `orgdetails`
  MODIFY `olId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orgfees`
--
ALTER TABLE `orgfees`
  MODIFY `ogfId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orgholidays`
--
ALTER TABLE `orgholidays`
  MODIFY `orhlId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orginfrastructures`
--
ALTER TABLE `orginfrastructures`
  MODIFY `oinfId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orgstaffsconnections`
--
ALTER TABLE `orgstaffsconnections`
  MODIFY `orsfId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orgstudents`
--
ALTER TABLE `orgstudents`
  MODIFY `orstId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviewstatus`
--
ALTER TABLE `reviewstatus`
  MODIFY `rvwsId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `secnId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `stffId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staffsalaries`
--
ALTER TABLE `staffsalaries`
  MODIFY `stfslId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staffsdetails`
--
ALTER TABLE `staffsdetails`
  MODIFY `staffdId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staffseducations`
--
ALTER TABLE `staffseducations`
  MODIFY `stffedId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staffseduclgdetails`
--
ALTER TABLE `staffseduclgdetails`
  MODIFY `stffedcId` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `stuclId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `studentsmarks`
--
ALTER TABLE `studentsmarks`
  MODIFY `stumrkId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subjId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `vdId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
