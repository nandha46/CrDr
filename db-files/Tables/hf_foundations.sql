-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 08, 2022 at 09:04 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

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
  `userid` int(11) NOT NULL,
  `doorflathouseno` varchar(20) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  `landmark` varchar(50) DEFAULT NULL,
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

INSERT INTO `addresses` (`id`, `userid`, `doorflathouseno`, `street`, `landmark`, `city`, `state`, `pincode`, `country`, `addressmode`, `isstatus`, `created_at`, `updated_at`) VALUES
(30, 66, 'null', 'null', 'null', 'Chennai', '26', 'null', 'india', 1, 1, '2022-02-12 20:21:53', '2022-02-12 20:21:53'),
(32, 67, 'null', 'null', 'null', 'sfdsfds', '2', 'null', 'india', 1, 1, '2022-02-12 20:22:55', '2022-02-12 20:22:55'),
(33, 1, 'null', 'null', 'null', 'Chennai', 'null', 'null', 'null', 1, 1, '2022-02-12 20:25:58', '2022-02-12 20:25:58'),
(35, 68, 'null', 'null', 'null', 'ddfds', '3', 'null', 'india', 1, 1, '2022-02-13 12:43:15', '2022-02-13 12:43:15'),
(36, 69, 'null', 'null', 'null', 'Chennai', '30', 'null', 'india', 1, 1, '2022-02-14 09:11:31', '2022-02-14 09:11:31');

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

-- --------------------------------------------------------

--
-- Table structure for table `classsections`
--

CREATE TABLE `classsections` (
  `clsecnId` int(11) NOT NULL,
  `clsecnClassMasterId` int(11) NOT NULL,
  `clsecnSectionMasterId` int(11) NOT NULL,
  `clsecnOrgMasterId` int(11) NOT NULL,
  `clsecnIsStatus` tinyint(11) NOT NULL DEFAULT 0,
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

-- --------------------------------------------------------

--
-- Table structure for table `configurations`
--

CREATE TABLE `configurations` (
  `cfnId` int(11) NOT NULL,
  `cfnMasterId` int(11) NOT NULL,
  `cfnOrgId` int(11) NOT NULL,
  `cfnConfNumber` int(11) NOT NULL,
  `cfnIsOrgAvail` int(11) NOT NULL,
  `cfnIsDisabled` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `evntId` int(11) NOT NULL,
  `evntOrgMasterId` int(11) NOT NULL,
  `evntType` varchar(255) NOT NULL,
  `evntDescription` text NOT NULL,
  `evntComments` text NOT NULL,
  `evntSponseredBy` text NOT NULL,
  `evntOrganisedBy` int(11) NOT NULL,
  `evntDate` date NOT NULL,
  `evntStartTime` time NOT NULL,
  `evntEndTime` time NOT NULL,
  `evntIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `evntshComments` text NOT NULL DEFAULT '0',
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
  `fmName` varchar(255) NOT NULL,
  `fmFolderPath` text NOT NULL,
  `fmContactId` int(11) NOT NULL,
  `fmEmailId` int(11) NOT NULL,
  `fmAddressId` int(11) NOT NULL,
  `fmIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `menuname` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
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
(1, 'dashboard', b'0', 'home', 1, 1, NULL, 1, 0, 1, '2018-12-20 23:27:00', '2018-12-20 23:27:00'),
(2, 'analytics', b'0', NULL, 1, 0, 'reports-analytics', 1, 1, 1, '2018-12-20 23:28:00', '2018-12-20 23:28:00'),
(3, 'graphical', b'0', NULL, 2, 0, 'reports-graphical', 1, 1, 1, '2018-12-20 23:29:00', '2018-12-20 23:29:00'),
(4, 'members', b'0', 'users', 2, 1, NULL, 1, 0, 1, '2018-12-20 23:33:00', '2018-12-20 23:33:00'),
(5, 'students', b'0', NULL, 1, 0, 'students', 1, 4, 1, '2018-12-20 23:31:00', '2018-12-20 23:31:00'),
(6, 'teachers', b'0', NULL, 2, 0, 'teachers', 1, 4, 1, '2018-12-20 23:31:00', '2018-12-20 23:31:00'),
(7, 'users', b'0', NULL, 3, 0, 'users', 1, 4, 1, '2018-12-20 23:32:00', '2018-12-20 23:32:00'),
(8, 'components', b'0', 'feather', 3, 1, NULL, 1, 0, 1, '2018-12-20 23:32:00', '2018-12-20 23:32:00'),
(9, 'subjects', b'0', NULL, 1, 0, 'subjects', 1, 8, 1, '2018-12-20 23:32:00', '2018-12-20 23:32:00'),
(10, 'syllabus', b'0', NULL, 2, 0, 'syllabus', 1, 8, 1, '2018-12-20 23:32:00', '2018-12-20 23:32:00'),
(11, 'files', b'0', NULL, 4, 0, 'files', 1, 8, 1, '2018-12-20 23:33:00', '2018-12-20 23:33:00'),
(12, 'videos', b'0', NULL, 5, 0, 'videos', 1, 8, 1, '2018-12-20 23:33:00', '2018-12-20 23:33:00'),
(13, 'documents', b'0', NULL, 6, 0, 'documents', 1, 8, 1, '2018-12-20 23:33:00', '2018-12-20 23:33:00'),
(14, 'announcements', b'0', NULL, 4, 0, 'announcements', 1, 22, 1, '2018-12-20 23:33:00', '2018-12-20 23:33:00'),
(15, 'settings', b'0', 'settings', 6, 1, NULL, 1, 0, 1, '2018-12-20 23:34:00', '2018-12-20 23:34:00'),
(16, 'languages', b'0', NULL, 1, 0, 'languages', 1, 15, 1, '2018-12-20 23:34:00', '2018-12-20 23:34:00'),
(17, 'emails', b'0', NULL, 1, 0, 'emails', 1, 15, 1, '2018-12-20 23:34:00', '2018-12-20 23:34:00'),
(18, 'online-tests', b'0', NULL, 3, 0, 'online-tests', 1, 8, 1, '2018-12-20 23:34:00', '2018-12-20 23:34:00'),
(19, 'environment', b'0', 'activity', 5, 1, NULL, 1, 0, 1, '2018-12-20 23:33:00', '2018-12-20 23:33:00'),
(20, 'organizations', b'0', NULL, 3, 0, 'organizations', 1, 19, 1, '2018-12-20 23:34:00', '2018-12-20 23:34:00'),
(21, 'time-tables', b'0', NULL, 4, 0, 'time-tables', 1, 19, 0, '2018-12-20 23:34:00', '2018-12-20 23:34:00'),
(22, 'programs', b'0', 'box', 4, 1, NULL, 1, 0, 1, '2018-12-20 23:34:00', '2018-12-20 23:34:00'),
(23, 'events', b'0', NULL, 1, 0, 'events', 1, 22, 1, '2018-12-20 23:34:00', '2018-12-20 23:34:00'),
(24, 'holidays', b'0', NULL, 1, 0, 'holidays', 1, 19, 1, '2018-12-20 23:34:00', '2018-12-20 23:34:00'),
(25, 'press-releases', b'0', 'reports', 4, 0, 'press-releases', 1, 22, 1, '2018-12-20 23:33:00', '2018-12-20 23:33:00'),
(26, 'blogs', b'0', NULL, 1, 0, 'blogs', 1, 22, 1, '2018-12-20 23:34:00', '2018-12-20 23:34:00'),
(27, 'reports', b'0', 'layers', 7, 1, NULL, 1, 0, 1, '2018-12-20 23:34:00', '2018-12-20 23:34:00'),
(28, 'all-details', b'0', NULL, 1, 0, 'all-in-one-reports', 1, 27, 1, '2018-12-20 23:34:00', '2018-12-20 23:34:00'),
(29, 'individual-status', b'0', NULL, 1, 0, 'individual-status', 1, 27, 1, '2018-12-20 23:34:00', '2018-12-20 23:34:00'),
(30, 'org-report-details', b'0', NULL, 1, 0, 'org-details', 1, 27, 1, '2018-12-20 23:34:00', '2018-12-20 23:34:00'),
(31, 'exams-details', b'0', NULL, 1, 0, 'exams-details', 1, 19, 1, '2018-12-20 23:34:00', '2018-12-20 23:34:00'),
(32, 'students/staffs', b'0', NULL, 1, 0, 'student-staffs-details', 1, 27, 1, '2018-12-20 23:34:00', '2018-12-20 23:34:00'),
(33, 'active-status', b'0', NULL, 1, 0, 'active-status', 1, 27, 1, '2018-12-20 23:34:00', '2018-12-20 23:34:00'),
(34, 'configurations', b'0', NULL, 1, 0, 'configurations', 1, 15, 1, '2018-12-20 23:34:00', '2018-12-20 23:34:00'),
(35, 'reviewed stories', b'0', NULL, 1, 0, 'reviewed-stories', 1, 27, 1, '2018-12-20 23:34:00', '2018-12-20 23:34:00');

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
  `onAccessId` int(11) NOT NULL,
  `onUniqueAccessKey` text NOT NULL,
  `onUniqueAccessSecret` text NOT NULL,
  `onType` tinyint(4) NOT NULL COMMENT '1-College,\r\n2- School,\r\n3-Both',
  `onIsStatus` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `olSubOrgId` int(11) NOT NULL COMMENT '0 - Main Branch Details,\r\nOthers - Sub Organizations',
  `olName` varchar(255) NOT NULL,
  `olAddressId` int(11) NOT NULL,
  `olContactId` int(11) NOT NULL,
  `olEmailId` int(11) NOT NULL,
  `olOrgClassType` int(11) NOT NULL COMMENT 'This is for class mode. It would be either "1-class" or "2-grade"',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `countryid` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `countryid`, `status`, `created_at`, `updated_at`) VALUES
(1, 'TamilNadu', 1, 1, '2022-02-28 03:33:18', '2022-02-28 03:33:18');

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
  `stuMiddleNale` varchar(255) NOT NULL,
  `stuLastName` varchar(255) NOT NULL,
  `stuGender` int(11) NOT NULL COMMENT '1-Male,\r\n2-Female,\r\n3-Others',
  `stuDOB` date NOT NULL,
  `stuIsStatus` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `studentsclasses`
--

CREATE TABLE `studentsclasses` (
  `stuclId` int(11) NOT NULL,
  `stuclOrgStuMasterId` int(11) NOT NULL,
  `stuclClsMasterId` int(11) NOT NULL,
  `stuclAcademicYear` date NOT NULL,
  `stuclIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `subjIsStatus` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
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

INSERT INTO `users` (`id`, `username`, `password`, `usertype`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', '37a6259cc0c1dae299a7866489dff0bd', 2, 1, '2022-03-05 13:41:24', '2022-03-05 13:41:24');

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
  ADD PRIMARY KEY (`evntId`);

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
-- Indexes for table `timetables`
--
ALTER TABLE `timetables`
  ADD PRIMARY KEY (`ttId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

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
  MODIFY `clssId` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `cnId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `configurations`
--
ALTER TABLE `configurations`
  MODIFY `cfnId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contactdetails`
--
ALTER TABLE `contactdetails`
  MODIFY `condId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `cnId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emailaddresses`
--
ALTER TABLE `emailaddresses`
  MODIFY `emlId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employeeleaves`
--
ALTER TABLE `employeeleaves`
  MODIFY `emplvId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `evntId` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `fmId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `familyconnections`
--
ALTER TABLE `familyconnections`
  MODIFY `fmlcId` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `mediumlanguages`
--
ALTER TABLE `mediumlanguages`
  MODIFY `mlgId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mediums`
--
ALTER TABLE `mediums`
  MODIFY `mmId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meetingparticipants`
--
ALTER TABLE `meetingparticipants`
  MODIFY `mtptId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `orgadmissions`
--
ALTER TABLE `orgadmissions`
  MODIFY `ogamId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `onId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orgclassstaffs`
--
ALTER TABLE `orgclassstaffs`
  MODIFY `ogcstffId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orgdetails`
--
ALTER TABLE `orgdetails`
  MODIFY `olId` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `orstId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `preferencelanguages`
--
ALTER TABLE `preferencelanguages`
  MODIFY `plgId` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `reviewstatus`
--
ALTER TABLE `reviewstatus`
  MODIFY `rvwsId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `secnId` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `studentdetails`
--
ALTER TABLE `studentdetails`
  MODIFY `stulId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `stuId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `studentsclasses`
--
ALTER TABLE `studentsclasses`
  MODIFY `stuclId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `studentsmarks`
--
ALTER TABLE `studentsmarks`
  MODIFY `stumrkId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subjId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suggestions`
--
ALTER TABLE `suggestions`
  MODIFY `sggId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timetables`
--
ALTER TABLE `timetables`
  MODIFY `ttId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
