-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 26, 2022 at 09:09 PM
-- Server version: 8.0.27
-- PHP Version: 8.0.13

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

DROP TABLE IF EXISTS `achievements`;
CREATE TABLE IF NOT EXISTS `achievements` (
  `achId` int NOT NULL AUTO_INCREMENT,
  `achType` int NOT NULL COMMENT '0-Awards\r\n1-Professional,\r\n2-Non-Professional,\r\n3-Educations,\r\n4-Presentation,\r\n5-Sports,\r\n6-Games,\r\n7-Works\r\n8-Other Activities',
  `achTitle` text NOT NULL,
  `achDescription` text NOT NULL,
  `achYear` year NOT NULL,
  `achStudentId` int NOT NULL,
  `achStaffId` int NOT NULL,
  `achIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`achId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
CREATE TABLE IF NOT EXISTS `addresses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `doorflathouseno` varchar(20) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  `landmark` varchar(50) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `country` varchar(15) DEFAULT NULL,
  `addressmode` tinyint NOT NULL DEFAULT '1' COMMENT '"1. Home\r\n2. Office\r\n3. Others"',
  `isstatus` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `doorflathouseno`, `street`, `landmark`, `city`, `state`, `pincode`, `country`, `addressmode`, `isstatus`, `created_at`, `updated_at`) VALUES
(1, 'Plot no 1', 'Malligeswaran nagar 1st street', 'Near to TMP store', '1', '1', '600100', NULL, 1, 1, '2022-04-17 05:23:00', '2022-04-17 05:23:00');

-- --------------------------------------------------------

--
-- Table structure for table `annualeventdays`
--

DROP TABLE IF EXISTS `annualeventdays`;
CREATE TABLE IF NOT EXISTS `annualeventdays` (
  `anulevId` int NOT NULL AUTO_INCREMENT,
  `anulevOrgMasterId` int NOT NULL,
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
  `anulevIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`anulevId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
CREATE TABLE IF NOT EXISTS `answers` (
  `anId` int NOT NULL AUTO_INCREMENT,
  `anQusId` int NOT NULL,
  `anAnswers` text NOT NULL,
  `anIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`anId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `appdefaults`
--

DROP TABLE IF EXISTS `appdefaults`;
CREATE TABLE IF NOT EXISTS `appdefaults` (
  `defId` int NOT NULL AUTO_INCREMENT,
  `defName` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `prefix` varchar(10) NOT NULL,
  `poweredBy` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `defVersion` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT 'v1',
  `defDevRelease` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `defRelease` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '0.1.0',
  `defBaseUrl` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `defAdminUrl` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`defId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `appdefaults`
--

INSERT INTO `appdefaults` (`defId`, `defName`, `prefix`, `poweredBy`, `defVersion`, `defDevRelease`, `defRelease`, `defBaseUrl`, `defAdminUrl`, `created_at`, `updated_at`) VALUES
(1, 'Hope', 'insight', 'Hope Foundation', 'v1', '0.1.0', '1.0', 'http://localhost/hopefoundation', 'http://localhost/hopefoundation', '2022-03-05 13:09:12', '2022-03-05 13:09:12');

-- --------------------------------------------------------

--
-- Table structure for table `appprivileges`
--

DROP TABLE IF EXISTS `appprivileges`;
CREATE TABLE IF NOT EXISTS `appprivileges` (
  `aeId` int NOT NULL AUTO_INCREMENT,
  `aeName` varchar(255) NOT NULL,
  `aeRelease` decimal(10,0) NOT NULL,
  `aeIsStatus` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`aeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

DROP TABLE IF EXISTS `attendances`;
CREATE TABLE IF NOT EXISTS `attendances` (
  `atdId` int NOT NULL AUTO_INCREMENT,
  `atdOrgStfMasterId` int NOT NULL,
  `atdStuMasterId` int NOT NULL,
  `atdStartDate` int NOT NULL,
  `atdEndDate` int NOT NULL,
  `atdInTime` int NOT NULL,
  `atdOutTime` int NOT NULL,
  `atdTotalHours` int NOT NULL,
  `atdIsStatus` int NOT NULL,
  `created_at` int NOT NULL,
  `updated_at` int NOT NULL,
  PRIMARY KEY (`atdId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `authactions`
--

DROP TABLE IF EXISTS `authactions`;
CREATE TABLE IF NOT EXISTS `authactions` (
  `auctId` int NOT NULL AUTO_INCREMENT,
  `auctUserName` varchar(255) NOT NULL,
  `auctPassword` text NOT NULL,
  `auctOrgId` int NOT NULL,
  `auctTypeId` int NOT NULL COMMENT '0-SuperAdmin,\r\n1-OrgAdmin,\r\n2-EachOrgAdmin,\r\n3-Student,\r\n4-Teachers,\r\n5-Staff,\r\n6-Family,\r\n7-Others',
  `auctPrivileges` text NOT NULL,
  `auctIsStatus` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`auctId`),
  UNIQUE KEY `auctUserName` (`auctUserName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `boardtypes`
--

DROP TABLE IF EXISTS `boardtypes`;
CREATE TABLE IF NOT EXISTS `boardtypes` (
  `beId` int NOT NULL AUTO_INCREMENT,
  `beType` varchar(255) NOT NULL,
  `beIsStatus` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`beId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cityname` varchar(50) DEFAULT NULL,
  `stateid` int DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `cityname`, `stateid`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Chennai', 1, 1, '2022-03-02 07:19:24', '2022-03-02 07:19:24');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
CREATE TABLE IF NOT EXISTS `classes` (
  `clssId` int NOT NULL AUTO_INCREMENT,
  `clssName` varchar(255) NOT NULL,
  `clssIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`clssId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`clssId`, `clssName`, `clssIsStatus`, `created_at`, `updated_at`) VALUES
(1, 'I-TAM', 1, '2022-04-17 07:38:55', '2022-04-17 07:38:55'),
(2, 'I-ENG', 1, '2022-04-17 07:38:55', '2022-04-17 07:38:55'),
(3, 'II-TAM', 1, '2022-04-17 07:39:31', '2022-04-17 07:39:31'),
(4, 'II-ENG', 1, '2022-04-17 07:39:31', '2022-04-17 07:39:31'),
(5, 'III-TAM', 1, '2022-04-17 07:41:51', '2022-04-17 07:41:51'),
(6, 'III-ENG', 1, '2022-04-17 07:41:51', '2022-04-17 07:41:51'),
(7, 'IV-TAM', 1, '2022-04-17 07:41:51', '2022-04-17 07:41:51'),
(8, 'IV-ENG', 1, '2022-04-17 07:41:51', '2022-04-17 07:41:51'),
(9, 'V-TAM', 1, '2022-04-17 07:41:51', '2022-04-17 07:41:51'),
(10, 'V-ENG', 1, '2022-04-17 07:41:51', '2022-04-17 07:41:51');

-- --------------------------------------------------------

--
-- Table structure for table `classsections`
--

DROP TABLE IF EXISTS `classsections`;
CREATE TABLE IF NOT EXISTS `classsections` (
  `clsecnId` int NOT NULL AUTO_INCREMENT,
  `clsecnClassMasterId` int NOT NULL,
  `clsecnSectionMasterId` int NOT NULL,
  `clsecnOrgMasterId` int NOT NULL,
  `clsecnIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`clsecnId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `clId` int NOT NULL AUTO_INCREMENT,
  `clName` varchar(255) NOT NULL,
  `clContactNoOne` varchar(255) NOT NULL,
  `clContactNoTwo` varchar(255) NOT NULL,
  `clEmail` varchar(255) NOT NULL,
  `clTrialStart_at` date NOT NULL,
  `clTrialDateCount` int NOT NULL,
  `clAppStart_at` date NOT NULL,
  `clAMC_at` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`clId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `collegeboardtypes`
--

DROP TABLE IF EXISTS `collegeboardtypes`;
CREATE TABLE IF NOT EXISTS `collegeboardtypes` (
  `cbeId` int NOT NULL AUTO_INCREMENT,
  `cbeType` varchar(255) NOT NULL,
  `cbeIsStatus` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cbeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `collegetypes`
--

DROP TABLE IF EXISTS `collegetypes`;
CREATE TABLE IF NOT EXISTS `collegetypes` (
  `ceId` int NOT NULL AUTO_INCREMENT,
  `ceType` varchar(255) NOT NULL,
  `ceIsStatus` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

DROP TABLE IF EXISTS `complaints`;
CREATE TABLE IF NOT EXISTS `complaints` (
  `cmplId` int NOT NULL AUTO_INCREMENT,
  `cmplOrgId` int NOT NULL,
  `cmplDescription` text NOT NULL,
  `cmplComments` text NOT NULL,
  `cmplReceivedTo` int NOT NULL COMMENT '1-Principal\r\n2-Staff\r\n3-Parents\r\n4-Counceller\r\n5-Corresondent',
  `cmplReviewed` int NOT NULL,
  `cmplIsListed` tinyint NOT NULL DEFAULT '0',
  `cmplReportedBy` int NOT NULL,
  `cmplIsStatus` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`cmplId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `configurationmasters`
--

DROP TABLE IF EXISTS `configurationmasters`;
CREATE TABLE IF NOT EXISTS `configurationmasters` (
  `cnId` int NOT NULL AUTO_INCREMENT,
  `cnName` varchar(255) NOT NULL,
  `cnIsStatus` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cnId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `configurations`
--

DROP TABLE IF EXISTS `configurations`;
CREATE TABLE IF NOT EXISTS `configurations` (
  `cfnId` int NOT NULL AUTO_INCREMENT,
  `cfnMasterId` int NOT NULL,
  `cfnOrgId` int NOT NULL,
  `cfnConfNumber` int NOT NULL,
  `cfnIsOrgAvail` int NOT NULL,
  `cfnIsDisabled` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`cfnId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `contactdetails`
--

DROP TABLE IF EXISTS `contactdetails`;
CREATE TABLE IF NOT EXISTS `contactdetails` (
  `condId` int NOT NULL AUTO_INCREMENT,
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
  `condIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`condId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `cnId` int NOT NULL AUTO_INCREMENT,
  `cnName` varchar(255) NOT NULL,
  `cnCurrency` varchar(255) NOT NULL,
  `cnCode` varchar(255) NOT NULL,
  `cnIcon` varchar(255) NOT NULL,
  `cnIsStatus` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cnId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `emailaddresses`
--

DROP TABLE IF EXISTS `emailaddresses`;
CREATE TABLE IF NOT EXISTS `emailaddresses` (
  `emlId` int NOT NULL AUTO_INCREMENT,
  `emlOfficialAddress` varchar(255) NOT NULL,
  `emlPersonalAddress` varchar(255) NOT NULL,
  `emlOtherAddress1` varchar(255) NOT NULL,
  `emlOtherAddress2` varchar(255) NOT NULL,
  `emlOtherAddress3` varchar(255) NOT NULL,
  `emlIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`emlId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `employeeleaves`
--

DROP TABLE IF EXISTS `employeeleaves`;
CREATE TABLE IF NOT EXISTS `employeeleaves` (
  `emplvId` int NOT NULL AUTO_INCREMENT,
  `emplvSickLeaves` int NOT NULL,
  `emplvPaidLeaves` int NOT NULL,
  `emplvMaternityLeaves` int NOT NULL,
  `emplvOtherLeaves` int NOT NULL,
  `emplvOrgMasterId` int NOT NULL,
  `emplvStfMasterId` int NOT NULL,
  `emplvIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`emplvId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `evntId` int NOT NULL AUTO_INCREMENT,
  `evntOrgMasterId` int NOT NULL,
  `evntType` varchar(255) NOT NULL,
  `evntDescription` text NOT NULL,
  `evntComments` text NOT NULL,
  `evntSponseredBy` text NOT NULL,
  `evntOrganisedBy` int NOT NULL,
  `evntDate` date NOT NULL,
  `evntStartTime` time NOT NULL,
  `evntEndTime` time NOT NULL,
  `evntIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`evntId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `eventsschedules`
--

DROP TABLE IF EXISTS `eventsschedules`;
CREATE TABLE IF NOT EXISTS `eventsschedules` (
  `evntshId` int NOT NULL AUTO_INCREMENT,
  `evntshMasterId` int NOT NULL,
  `evntshName` varchar(255) NOT NULL,
  `evntshParticipants` varchar(255) NOT NULL,
  `evntshType` varchar(255) NOT NULL,
  `evntshStartTime` time NOT NULL,
  `evntshEndTime` time NOT NULL,
  `evntshDescription` text NOT NULL,
  `evntshComments` text NOT NULL,
  `evntshIsStatus` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`evntshId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

DROP TABLE IF EXISTS `exams`;
CREATE TABLE IF NOT EXISTS `exams` (
  `exmId` int NOT NULL AUTO_INCREMENT,
  `exmName` varchar(255) NOT NULL,
  `exmYear` year NOT NULL,
  `exmType` varchar(255) NOT NULL,
  `exmIsAssessments` tinyint NOT NULL,
  `exmPassMarks` decimal(10,2) NOT NULL,
  `exmOrgMasterId` int NOT NULL,
  `exmDescription` text NOT NULL,
  `exmComments` text NOT NULL,
  `exmIsCompleted` tinyint NOT NULL DEFAULT '0',
  `exmIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`exmId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `examsubjects`
--

DROP TABLE IF EXISTS `examsubjects`;
CREATE TABLE IF NOT EXISTS `examsubjects` (
  `exmsbjId` int NOT NULL AUTO_INCREMENT,
  `exmsbjSubjId` int NOT NULL,
  `exmsbjExmMasterId` int NOT NULL,
  `exmsbjFullMarks` varchar(255) NOT NULL,
  `exmsbjPassMarks` varchar(255) NOT NULL,
  `exmsbjHavePractical` tinyint NOT NULL DEFAULT '0',
  `exmsbjIsPractical` tinyint NOT NULL DEFAULT '0',
  `exmsbjPracticalMarks` varchar(255) NOT NULL,
  `exmsbjTheoryMarks` varchar(255) NOT NULL,
  `exmsbjIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`exmsbjId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `examtimetables`
--

DROP TABLE IF EXISTS `examtimetables`;
CREATE TABLE IF NOT EXISTS `examtimetables` (
  `exmtmtblId` int NOT NULL AUTO_INCREMENT,
  `exmtmtblOrgId` int NOT NULL,
  `exmtmtblClsId` int NOT NULL,
  `exmtmtblYear` year NOT NULL,
  `exmtmtblAnnouncedAt` date NOT NULL,
  `exmtmtblCreatedBy` int NOT NULL,
  `exmtmtblType` int NOT NULL COMMENT '1-Quartely\r\n2-Halfly\r\n3-Annually\r\n4-Monthly\r\n5-Others',
  `exmtmtblTime` int NOT NULL,
  `exmtmtblStartTime` time NOT NULL,
  `exmtmtblEndTime` time NOT NULL,
  `exmtmtblIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`exmtmtblId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
CREATE TABLE IF NOT EXISTS `expenses` (
  `exsId` int NOT NULL AUTO_INCREMENT,
  `exsOrgId` int NOT NULL,
  `exsName` varchar(255) NOT NULL,
  `exsType` varchar(255) NOT NULL,
  `exsPurchasedQty` int NOT NULL,
  `exsPurchasedFrom` date NOT NULL,
  `exsBillPath` text NOT NULL,
  `exsAmount` decimal(10,3) NOT NULL,
  `exsPurchaseDate` date NOT NULL,
  `exsComments` int NOT NULL,
  `expEmpId` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`exsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `families`
--

DROP TABLE IF EXISTS `families`;
CREATE TABLE IF NOT EXISTS `families` (
  `fmId` int NOT NULL AUTO_INCREMENT,
  `fmStudentId` int NOT NULL,
  `fmName` varchar(255) NOT NULL,
  `fmFolderPath` text NOT NULL,
  `fmContactId` int NOT NULL,
  `fmEmailId` int NOT NULL,
  `fmAddressId` int NOT NULL,
  `fmIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`fmId`),
  UNIQUE KEY `fmName` (`fmName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `familyconnections`
--

DROP TABLE IF EXISTS `familyconnections`;
CREATE TABLE IF NOT EXISTS `familyconnections` (
  `fmlcId` int NOT NULL AUTO_INCREMENT,
  `fmlcFamilyId` int NOT NULL,
  `fmlcFirstName` varchar(255) NOT NULL,
  `fmlcMiddleName` varchar(255) NOT NULL,
  `fmlcLastName` varchar(255) NOT NULL,
  `fmlcProfession` varchar(255) NOT NULL,
  `fmlcDOB` date NOT NULL,
  `fmlcGender` int NOT NULL COMMENT '1-Male,\r\n2-Female\r\n3-Others',
  `fmlcRelationship` int NOT NULL COMMENT '1-Father,\r\n2-StepFather,\r\n3-Mother,\r\n4-StepMother,\r\n5-ElderSister,\r\n6-ElderBrother,\r\n7-YoungerSister,\r\n8-YoungerBrother,\r\n9-Gardian,\r\n10-Others',
  `fmlcContactId` int NOT NULL,
  `fmlcEmailId` int NOT NULL,
  `fmlcAddressId` int NOT NULL,
  `fmlcIsStatus` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`fmlcId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

DROP TABLE IF EXISTS `feedbacks`;
CREATE TABLE IF NOT EXISTS `feedbacks` (
  `fdbId` int NOT NULL AUTO_INCREMENT,
  `fdbOrgId` int NOT NULL,
  `fdbDescription` text NOT NULL,
  `fdbComments` text NOT NULL,
  `fdbReportedBy` int NOT NULL,
  `fdbIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`fdbId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `feetypes`
--

DROP TABLE IF EXISTS `feetypes`;
CREATE TABLE IF NOT EXISTS `feetypes` (
  `fetId` int NOT NULL AUTO_INCREMENT,
  `fetName` varchar(255) NOT NULL,
  `fetIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`fetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `filequestions`
--

DROP TABLE IF EXISTS `filequestions`;
CREATE TABLE IF NOT EXISTS `filequestions` (
  `flqnsId` int NOT NULL AUTO_INCREMENT,
  `flqnsFileId` int NOT NULL,
  `flqnsQusId` int NOT NULL,
  `flqnsDuration` varchar(255) NOT NULL,
  `flqnsYear` year NOT NULL,
  `flqnsIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`flqnsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `filesystems`
--

DROP TABLE IF EXISTS `filesystems`;
CREATE TABLE IF NOT EXISTS `filesystems` (
  `flsmId` int NOT NULL AUTO_INCREMENT,
  `flsmOrgId` int NOT NULL,
  `flsmClsId` int NOT NULL,
  `flsmSubId` int NOT NULL,
  `flsmSyllabusId` int NOT NULL,
  `flsmFolderPath` varchar(255) NOT NULL,
  `flsmUploadedBy` int NOT NULL,
  `flsmIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`flsmId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `filevideos`
--

DROP TABLE IF EXISTS `filevideos`;
CREATE TABLE IF NOT EXISTS `filevideos` (
  `flvoId` int NOT NULL AUTO_INCREMENT,
  `flvoClsId` int NOT NULL,
  `flvoSubjId` int NOT NULL,
  `flvoSyllabd` int NOT NULL,
  `flvoLink` text NOT NULL,
  `flvoLink2` text NOT NULL,
  `flvoLink3` text NOT NULL,
  `flvoQuesId` int NOT NULL,
  `flvoIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `flvoOrgId` int NOT NULL,
  PRIMARY KEY (`flvoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

DROP TABLE IF EXISTS `holidays`;
CREATE TABLE IF NOT EXISTS `holidays` (
  `hldId` int NOT NULL AUTO_INCREMENT,
  `hldName` varchar(255) NOT NULL,
  `hldIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`hldId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `homeworks`
--

DROP TABLE IF EXISTS `homeworks`;
CREATE TABLE IF NOT EXISTS `homeworks` (
  `hwId` int NOT NULL AUTO_INCREMENT,
  `hwOrgStuMasterId` int NOT NULL,
  `hwClsMasterId` int NOT NULL,
  `hwOrgSubjMasterId` int NOT NULL,
  `hwContent` text NOT NULL,
  `hwStartDate` date NOT NULL,
  `hwEndDate` date NOT NULL,
  `hwComments` text NOT NULL,
  `hwIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`hwId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `imports`
--

DROP TABLE IF EXISTS `imports`;
CREATE TABLE IF NOT EXISTS `imports` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tablename` varchar(100) DEFAULT NULL,
  `columnname` varchar(50) DEFAULT NULL,
  `excelcolumn` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `indexing` int DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `infrastructures`
--

DROP TABLE IF EXISTS `infrastructures`;
CREATE TABLE IF NOT EXISTS `infrastructures` (
  `infId` int NOT NULL AUTO_INCREMENT,
  `infName` varchar(255) NOT NULL,
  `infType` varchar(255) NOT NULL,
  `infStatus` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`infId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
CREATE TABLE IF NOT EXISTS `invoices` (
  `invId` int NOT NULL AUTO_INCREMENT,
  `invOrgFeeId` int NOT NULL,
  `invStuId` int NOT NULL,
  `invPaidAmount` decimal(10,2) NOT NULL,
  `invLateAmount` decimal(10,2) NOT NULL,
  `invReceivedBy` int NOT NULL DEFAULT '0',
  `invIsStatus` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`invId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `leavehistories`
--

DROP TABLE IF EXISTS `leavehistories`;
CREATE TABLE IF NOT EXISTS `leavehistories` (
  `lvhsId` int NOT NULL AUTO_INCREMENT,
  `lvhsLvMasterId` int NOT NULL,
  `lvhsReason` text NOT NULL,
  `lvhsLeaveStatus` int NOT NULL COMMENT '1-Pending\r\n2-Waiting for Approval\r\n3-Confirmed\r\n4-Cancelled\r\n5-Completed',
  `lvhsApprovedBy` int NOT NULL,
  `lvhsIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`lvhsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `lessionplans`
--

DROP TABLE IF EXISTS `lessionplans`;
CREATE TABLE IF NOT EXISTS `lessionplans` (
  `lpId` int NOT NULL AUTO_INCREMENT,
  `lpSubMasterId` int NOT NULL,
  `lpStfMasterId` int NOT NULL,
  `lpOrgMasterId` int NOT NULL,
  `lpFilePath` text NOT NULL,
  `lpIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`lpId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

DROP TABLE IF EXISTS `lessons`;
CREATE TABLE IF NOT EXISTS `lessons` (
  `lnId` int NOT NULL AUTO_INCREMENT,
  `lnClsMasterId` int NOT NULL,
  `lnSubMasterId` int NOT NULL,
  `lnLessonName` varchar(55) NOT NULL,
  `lnLessonOrder` int NOT NULL,
  `lnIsStatus` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`lnId`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Stand-in structure for view `lessons_view`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `lessons_view`;
CREATE TABLE IF NOT EXISTS `lessons_view` (
`lessonName` varchar(55)
,`lessonOrder` int
,`lessonstatus` varchar(9)
,`lnId` int
,`standard` varchar(255)
,`subject` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `mediumlanguages`
--

DROP TABLE IF EXISTS `mediumlanguages`;
CREATE TABLE IF NOT EXISTS `mediumlanguages` (
  `mlgId` int NOT NULL AUTO_INCREMENT,
  `mlgOrgId` int NOT NULL,
  `mlgFirstLanguage` int NOT NULL,
  `mlgSecondLanguage` int NOT NULL,
  `mlgThirdLanguage` int NOT NULL,
  `mlgFourthLanguage` int NOT NULL,
  `mlgIsStatus` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mlgId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `mediums`
--

DROP TABLE IF EXISTS `mediums`;
CREATE TABLE IF NOT EXISTS `mediums` (
  `mmId` int NOT NULL AUTO_INCREMENT,
  `mmName` varchar(255) NOT NULL,
  `mmIsStatus` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mmId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `meetingparticipants`
--

DROP TABLE IF EXISTS `meetingparticipants`;
CREATE TABLE IF NOT EXISTS `meetingparticipants` (
  `mtptId` int NOT NULL AUTO_INCREMENT,
  `mtptMtMasterId` int NOT NULL,
  `mtptStfMasterId` int NOT NULL,
  `mtptInvStatus` int NOT NULL COMMENT '1-Declined\r\n2-Accepted\r\n3-Tentative',
  `mtptIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mtptId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `menuname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `isdirlink` bit(1) NOT NULL DEFAULT b'0',
  `icons` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `position` tinyint DEFAULT NULL,
  `ismain` tinyint DEFAULT NULL,
  `menuurls` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `islisted` tinyint NOT NULL DEFAULT '1',
  `mainid` tinyint DEFAULT NULL,
  `isstatus` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3;

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
(9, 'lessons', b'0', NULL, 1, 0, 'lessons', 1, 8, 1, '2018-12-20 23:32:00', '2018-12-20 23:32:00'),
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

DROP TABLE IF EXISTS `orgadmissions`;
CREATE TABLE IF NOT EXISTS `orgadmissions` (
  `ogamId` int NOT NULL AUTO_INCREMENT,
  `ogamStudId` int NOT NULL,
  `ogamClsId` int NOT NULL,
  `ogamCerificatesPath` text NOT NULL,
  `ogamMediumId` int NOT NULL,
  `ogamFatherId` int NOT NULL,
  `ogamMotherId` int NOT NULL,
  `ogamAddressId` int NOT NULL,
  `ogamContactId` int NOT NULL,
  `ogamEmailId` int NOT NULL,
  `ogamApprovedBy` int NOT NULL,
  `ogamComments` text NOT NULL,
  `ogamApplicationId` varchar(255) NOT NULL,
  `ogamIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ogamId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

DROP TABLE IF EXISTS `organizations`;
CREATE TABLE IF NOT EXISTS `organizations` (
  `onId` int NOT NULL AUTO_INCREMENT,
  `onAccessId` int NOT NULL,
  `onUniqueAccessKey` text NOT NULL,
  `onUniqueAccessSecret` text NOT NULL,
  `onType` tinyint NOT NULL COMMENT '1-College,\r\n2- School,\r\n3-Both',
  `onIsStatus` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`onId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`onId`, `onAccessId`, `onUniqueAccessKey`, `onUniqueAccessSecret`, `onType`, `onIsStatus`, `created_at`, `updated_at`) VALUES
(1, 123456, 'abcd', '#23fer4trtrt', 2, 1, '2022-04-17 05:16:14', '2022-04-17 05:16:14');

-- --------------------------------------------------------

--
-- Table structure for table `orgclassstaffs`
--

DROP TABLE IF EXISTS `orgclassstaffs`;
CREATE TABLE IF NOT EXISTS `orgclassstaffs` (
  `ogcstffId` int NOT NULL AUTO_INCREMENT,
  `ogcstffClsMasterId` int NOT NULL,
  `ogcstffStaffMasterId` int NOT NULL,
  `ogcstffSubjectId` int NOT NULL,
  `ogcstffIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ogcstffId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `orgdetails`
--

DROP TABLE IF EXISTS `orgdetails`;
CREATE TABLE IF NOT EXISTS `orgdetails` (
  `olId` int NOT NULL AUTO_INCREMENT,
  `olOrgId` int NOT NULL,
  `olSubOrgId` int NOT NULL COMMENT '0 - Main Branch Details,\r\nOthers - Sub Organizations',
  `olName` varchar(255) NOT NULL,
  `olAddressId` int NOT NULL,
  `olContactId` int NOT NULL,
  `olEmailId` int NOT NULL,
  `olOrgClassType` int NOT NULL COMMENT 'This is for class mode. It would be either "1-class" or "2-grade"',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`olId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `orgdetails`
--

INSERT INTO `orgdetails` (`olId`, `olOrgId`, `olSubOrgId`, `olName`, `olAddressId`, `olContactId`, `olEmailId`, `olOrgClassType`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'Hope Foundation', 1, 1, 1, 1, '2022-04-17 05:16:50', '2022-04-17 05:16:50');

-- --------------------------------------------------------

--
-- Table structure for table `orgfees`
--

DROP TABLE IF EXISTS `orgfees`;
CREATE TABLE IF NOT EXISTS `orgfees` (
  `ogfId` int NOT NULL AUTO_INCREMENT,
  `ogfOrgId` int NOT NULL,
  `ogfFeeId` int NOT NULL,
  `ogfClsId` int NOT NULL,
  `ogfAcYear` year NOT NULL,
  `ogfAmount` decimal(10,2) NOT NULL,
  `ogfLateFee` decimal(10,0) NOT NULL,
  `ogfDueDate` date NOT NULL,
  `ogfIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ogfId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `orgholidays`
--

DROP TABLE IF EXISTS `orgholidays`;
CREATE TABLE IF NOT EXISTS `orgholidays` (
  `orhlId` int NOT NULL AUTO_INCREMENT,
  `orhlOrgMasterId` int NOT NULL,
  `orhlHolMasterId` int NOT NULL,
  `orhlFinancialYear` year NOT NULL,
  `orhlIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`orhlId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `orginfrastructures`
--

DROP TABLE IF EXISTS `orginfrastructures`;
CREATE TABLE IF NOT EXISTS `orginfrastructures` (
  `oinfId` int NOT NULL AUTO_INCREMENT,
  `oinfOrgId` int NOT NULL,
  `oinfMasterId` int NOT NULL,
  `oinfIsStatus` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`oinfId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `orgstaffsconnections`
--

DROP TABLE IF EXISTS `orgstaffsconnections`;
CREATE TABLE IF NOT EXISTS `orgstaffsconnections` (
  `orsfId` int NOT NULL AUTO_INCREMENT,
  `orsfOrgMasterId` int NOT NULL,
  `orsfStaffMasterId` int NOT NULL,
  `orsfDateOfHiring` date NOT NULL,
  `orsfStaffType` int NOT NULL COMMENT '1-Teaching,\r\n2-Non-Teaching',
  `orsfDesignation` varchar(255) NOT NULL,
  `orsfSpeciality` varchar(255) NOT NULL,
  `orsfIdCardNo` varchar(255) NOT NULL,
  `orsfIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`orsfId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `orgstudents`
--

DROP TABLE IF EXISTS `orgstudents`;
CREATE TABLE IF NOT EXISTS `orgstudents` (
  `orstId` int NOT NULL AUTO_INCREMENT,
  `orstOrgMasterId` int NOT NULL,
  `orstStuMasterId` int NOT NULL,
  `orstIsStatus` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`orstId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `preferencelanguages`
--

DROP TABLE IF EXISTS `preferencelanguages`;
CREATE TABLE IF NOT EXISTS `preferencelanguages` (
  `plgId` int NOT NULL AUTO_INCREMENT,
  `plgName` varchar(255) NOT NULL,
  `plgIsStatus` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`plgId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `privileges`
--

DROP TABLE IF EXISTS `privileges`;
CREATE TABLE IF NOT EXISTS `privileges` (
  `id` int NOT NULL AUTO_INCREMENT,
  `menuid` int NOT NULL,
  `isedit` tinyint NOT NULL,
  `isview` tinyint NOT NULL,
  `userid` int NOT NULL,
  `isstatus` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `progressreports`
--

DROP TABLE IF EXISTS `progressreports`;
CREATE TABLE IF NOT EXISTS `progressreports` (
  `prgrId` int NOT NULL AUTO_INCREMENT,
  `prgrStuId` int NOT NULL,
  `prgrOrgId` int NOT NULL,
  `prgrResultStatus` int NOT NULL,
  `prgrIsParentsVerified` int NOT NULL,
  `prgrIsStafVerified` int NOT NULL,
  `prgrIsStatus` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`prgrId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `qaId` int NOT NULL AUTO_INCREMENT,
  `qaPreparedFor` int NOT NULL,
  `qaName` int NOT NULL,
  `qaDescription` text NOT NULL,
  `qaType` int NOT NULL COMMENT '1-Fill In the Blanks\r\n2-Choose the Best Answers\r\n3-Maching\r\n4-Boolean\r\n5-ShortMarks',
  `qaOrgId` int NOT NULL,
  `qaSubjId` int NOT NULL,
  `qaPreparedBy` int NOT NULL,
  `qaMarks` varchar(255) NOT NULL,
  `qaIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`qaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `reviewstatus`
--

DROP TABLE IF EXISTS `reviewstatus`;
CREATE TABLE IF NOT EXISTS `reviewstatus` (
  `rvwsId` int NOT NULL AUTO_INCREMENT,
  `rvwsStuId` int NOT NULL,
  `rvwsOrgId` int NOT NULL,
  `rvwsAssignedBy` int NOT NULL,
  `rvwsIsReviewed` int NOT NULL,
  `rvwsReviewTime` int NOT NULL,
  `rvwsReviewScore` int NOT NULL,
  `rvwsFilsId` int NOT NULL,
  `rvwsVideoId` int NOT NULL,
  `rvwsIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rvwsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
CREATE TABLE IF NOT EXISTS `sections` (
  `secnId` int NOT NULL AUTO_INCREMENT,
  `secnSecName` varchar(255) NOT NULL DEFAULT '''0''',
  `secnIsStatus` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`secnId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

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

DROP TABLE IF EXISTS `smssettings`;
CREATE TABLE IF NOT EXISTS `smssettings` (
  `smId` int NOT NULL AUTO_INCREMENT,
  `smPackage` varchar(255) NOT NULL,
  `smCount` int NOT NULL,
  `smIsStatus` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`smId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `staffaccounts`
--

DROP TABLE IF EXISTS `staffaccounts`;
CREATE TABLE IF NOT EXISTS `staffaccounts` (
  `stfacId` int NOT NULL AUTO_INCREMENT,
  `stfacStaffMasterId` int NOT NULL,
  `stfacOrgMasterId` int NOT NULL,
  `stfacPFNumber` varchar(255) NOT NULL,
  `stfacGrossSalary` decimal(10,3) NOT NULL,
  `stfacPeriod` int NOT NULL COMMENT '1-Monthly,\r\n2-Daily,\r\n3-Custom',
  `stfacCustomPeriod` int NOT NULL,
  `stfacUANNumber` varchar(255) NOT NULL,
  `stfacIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`stfacId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `staffmeetings`
--

DROP TABLE IF EXISTS `staffmeetings`;
CREATE TABLE IF NOT EXISTS `staffmeetings` (
  `mtId` int NOT NULL AUTO_INCREMENT,
  `mtOrgMasterId` int NOT NULL,
  `mtAgenda` text NOT NULL,
  `mtScheduledAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `mtInviteStatus` int NOT NULL,
  `mtMeetingId` text NOT NULL,
  `mtStartDuration` time NOT NULL,
  `mtEndDuration` time NOT NULL,
  `mtComments` text NOT NULL,
  `mtOrganisedBy` int NOT NULL,
  `mtGoogleMeet` text NOT NULL,
  `mtZoomMeet` text NOT NULL,
  `mtIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mtId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

DROP TABLE IF EXISTS `staffs`;
CREATE TABLE IF NOT EXISTS `staffs` (
  `stffId` int NOT NULL AUTO_INCREMENT,
  `stffUserId` int NOT NULL,
  `stffFirstName` varchar(255) NOT NULL,
  `stffMiddleName` varchar(255) NOT NULL,
  `stffLastName` varchar(255) NOT NULL,
  `stffGender` int NOT NULL COMMENT '1-Male,\r\n2-Female\r\n3-Others',
  `stffDOB` date NOT NULL,
  `stffPlaceOfBirth` varchar(255) NOT NULL,
  `stffOfficalEmailId` int NOT NULL,
  `stffOtherEmailId` int NOT NULL,
  `stffAddressId` int NOT NULL,
  `stffOfficialContactId` int NOT NULL,
  `stffPersonalContactId` int DEFAULT '0',
  `stffComments` text NOT NULL,
  `stffIsStatus` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`stffId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `staffsalaries`
--

DROP TABLE IF EXISTS `staffsalaries`;
CREATE TABLE IF NOT EXISTS `staffsalaries` (
  `stfslId` int NOT NULL AUTO_INCREMENT,
  `stfslStaffOrgMasterId` int NOT NULL,
  `stfslNoOfWorkdays` int NOT NULL,
  `stfslPayPeriod` varchar(255) NOT NULL,
  `stfslPaidDate` date NOT NULL,
  `stfslAmount` decimal(10,3) NOT NULL,
  `stfslDeductions` decimal(10,3) NOT NULL,
  `stfslIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`stfslId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `staffsdetails`
--

DROP TABLE IF EXISTS `staffsdetails`;
CREATE TABLE IF NOT EXISTS `staffsdetails` (
  `staffdId` int NOT NULL AUTO_INCREMENT,
  `staffdMasterId` int NOT NULL,
  `staffdFolderPath` text NOT NULL,
  `staffdFatherName` varchar(255) NOT NULL,
  `staffdMotherName` varchar(255) NOT NULL,
  `staffdFatherContactNoId` int NOT NULL,
  `staffdMotherContactId` int NOT NULL,
  `staffdSpouseName` varchar(255) NOT NULL,
  `staffdSpouseContactId` int NOT NULL DEFAULT '0',
  `staffdIsStatus` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`staffdId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `staffseducations`
--

DROP TABLE IF EXISTS `staffseducations`;
CREATE TABLE IF NOT EXISTS `staffseducations` (
  `stffedId` int NOT NULL AUTO_INCREMENT,
  `stffedMasterId` int NOT NULL,
  `stffedQualification` text NOT NULL,
  `stffedYearOfExp` int NOT NULL,
  `stffedIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`stffedId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `staffseduclgdetails`
--

DROP TABLE IF EXISTS `staffseduclgdetails`;
CREATE TABLE IF NOT EXISTS `staffseduclgdetails` (
  `stffedcId` int NOT NULL AUTO_INCREMENT,
  `stffedcMasterId` int NOT NULL,
  `stffedcCollegeName` varchar(255) NOT NULL,
  `stffedcPassedYear` year NOT NULL,
  `stffedcPercentage` varchar(255) NOT NULL,
  `stffedcGrade` varchar(255) NOT NULL,
  `stffedcClass` varchar(255) NOT NULL COMMENT 'First, Second Class',
  `stffedcIsStatus` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`stffedcId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
CREATE TABLE IF NOT EXISTS `states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `countryid` int DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `countryid`, `status`, `created_at`, `updated_at`) VALUES
(1, 'TamilNadu', 1, 1, '2022-02-28 03:33:18', '2022-02-28 03:33:18');

-- --------------------------------------------------------

--
-- Table structure for table `studentdetails`
--

DROP TABLE IF EXISTS `studentdetails`;
CREATE TABLE IF NOT EXISTS `studentdetails` (
  `stulId` int NOT NULL AUTO_INCREMENT,
  `stulStudentId` int NOT NULL,
  `stulReligion` int NOT NULL,
  `stulCommunity` int NOT NULL,
  `stulSubCommunity` int NOT NULL,
  `stulIsPhysicallyChallenged` tinyint NOT NULL DEFAULT '0',
  `stulPhysicallyChallengedDetailsIf` text NOT NULL,
  `stulPlaceOfBirth` varchar(255) NOT NULL,
  `stulIsStatus` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`stulId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `stuId` int NOT NULL AUTO_INCREMENT,
  `stuUserId` int NOT NULL,
  `stuFirstName` varchar(255) NOT NULL,
  `stuMiddleNale` varchar(255) NOT NULL,
  `stuLastName` varchar(255) NOT NULL,
  `stuGender` int NOT NULL COMMENT '1-Male,\r\n2-Female,\r\n3-Others',
  `stuDOB` date NOT NULL,
  `stuIsStatus` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`stuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `studentsclasses`
--

DROP TABLE IF EXISTS `studentsclasses`;
CREATE TABLE IF NOT EXISTS `studentsclasses` (
  `stuclId` int NOT NULL AUTO_INCREMENT,
  `stuclOrgStuMasterId` int NOT NULL,
  `stuclClsMasterId` int NOT NULL,
  `stuclAcademicYear` date NOT NULL,
  `stuclIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`stuclId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `studentsmarks`
--

DROP TABLE IF EXISTS `studentsmarks`;
CREATE TABLE IF NOT EXISTS `studentsmarks` (
  `stumrkId` int NOT NULL AUTO_INCREMENT,
  `stumrkSubjMasterId` int NOT NULL,
  `stumrkStlMasterId` int NOT NULL,
  `stumrkExamId` int NOT NULL,
  `stuclIdMarks` decimal(10,2) NOT NULL,
  `stuclIdIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`stumrkId`),
  KEY `stumrkStlMasterId` (`stumrkStlMasterId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Student marks based on the studentsclasses';

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
CREATE TABLE IF NOT EXISTS `subjects` (
  `subjId` int NOT NULL AUTO_INCREMENT,
  `subjName` varchar(255) NOT NULL,
  `subjIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`subjId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subjId`, `subjName`, `subjIsStatus`, `created_at`, `updated_at`) VALUES
(1, 'Tamil', 1, '2022-04-24 13:35:59', '2022-04-24 13:35:59'),
(2, 'English', 1, '2022-04-24 13:35:59', '2022-04-24 13:35:59'),
(3, 'Maths', 1, '2022-04-24 13:37:17', '2022-04-24 13:37:17'),
(4, 'Science', 1, '2022-04-24 13:37:17', '2022-04-24 13:37:17'),
(5, 'Social Science', 1, '2022-04-24 13:37:17', '2022-04-24 13:37:17');

-- --------------------------------------------------------

--
-- Table structure for table `suggestions`
--

DROP TABLE IF EXISTS `suggestions`;
CREATE TABLE IF NOT EXISTS `suggestions` (
  `sggId` int NOT NULL AUTO_INCREMENT,
  `sggOrgId` int NOT NULL,
  `sggDescription` text NOT NULL,
  `sggComments` text NOT NULL,
  `sggInformType` int NOT NULL COMMENT '1-Principal\r\n2-Staff\r\n3-Parents\r\n4-Students\r\n5-Others',
  `sggInformId` int NOT NULL,
  `sggAwards` varchar(255) NOT NULL,
  `sggIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`sggId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `timetables`
--

DROP TABLE IF EXISTS `timetables`;
CREATE TABLE IF NOT EXISTS `timetables` (
  `ttId` int NOT NULL AUTO_INCREMENT,
  `ttOrgClsStfId` int NOT NULL,
  `ttTimeSlotId` int NOT NULL,
  `ttStartDuration` time NOT NULL,
  `ttEndDuration` time NOT NULL,
  `ttDays` int NOT NULL COMMENT '1-Monday\r\n2-Tuesday\r\n3-Wednesday\r\n4-Thursday\r\n5-Friday\r\n6-Saturday\r\n7-Sunday(SpecialClasses)',
  `ttIsPETPeriod` tinyint NOT NULL DEFAULT '0',
  `ttIsSeminar` int NOT NULL,
  `ttIsStatus` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ttId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userOrgId` int NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `usertype` tinyint NOT NULL COMMENT '1. SuperAdmin\n2. Admin\n3. Children\n4. Staff\n5. Manager\n6. Others',
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `userOrgId`, `username`, `password`, `usertype`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'admin', '37a6259cc0c1dae299a7866489dff0bd', 2, 1, '2022-03-05 13:41:24', '2022-03-05 13:41:24');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_privileges`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `view_privileges`;
CREATE TABLE IF NOT EXISTS `view_privileges` (
`created_at` timestamp
,`icons` varchar(50)
,`id` int
,`isdirlink` bit(1)
,`isedit` tinyint
,`islisted` tinyint
,`ismain` tinyint
,`isstatus` tinyint
,`isview` tinyint
,`mainid` tinyint
,`menuname` varchar(30)
,`menuurls` text
,`position` tinyint
,`prvlstatus` tinyint
,`updated_at` timestamp
,`userid` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_users`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `view_users`;
CREATE TABLE IF NOT EXISTS `view_users` (
`id` int
,`stffId` int
,`stuId` int
,`username` varchar(20)
,`userstatus` varchar(9)
,`usertyperesult` varchar(11)
);

-- --------------------------------------------------------

--
-- Structure for view `lessons_view`
--
DROP TABLE IF EXISTS `lessons_view`;

DROP VIEW IF EXISTS `lessons_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `lessons_view`  AS SELECT `a`.`lnId` AS `lnId`, `a`.`lnLessonName` AS `lessonName`, `a`.`lnLessonOrder` AS `lessonOrder`, if((`a`.`lnIsStatus` = 1),'Active','In-Active') AS `lessonstatus`, `b`.`clssName` AS `standard`, `c`.`subjName` AS `subject` FROM ((`lessons` `a` left join `classes` `b` on((`a`.`lnClsMasterId` = `b`.`clssId`))) left join `subjects` `c` on((`a`.`lnSubMasterId` = `c`.`subjId`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_privileges`
--
DROP TABLE IF EXISTS `view_privileges`;

DROP VIEW IF EXISTS `view_privileges`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_privileges`  AS SELECT `a`.`id` AS `id`, `a`.`menuname` AS `menuname`, `a`.`isdirlink` AS `isdirlink`, `a`.`icons` AS `icons`, `a`.`position` AS `position`, `a`.`ismain` AS `ismain`, `a`.`menuurls` AS `menuurls`, `a`.`islisted` AS `islisted`, `a`.`mainid` AS `mainid`, `a`.`isstatus` AS `isstatus`, `a`.`created_at` AS `created_at`, `a`.`updated_at` AS `updated_at`, `b`.`isedit` AS `isedit`, `b`.`isview` AS `isview`, `b`.`userid` AS `userid`, `b`.`isstatus` AS `prvlstatus` FROM (`menus` `a` left join `privileges` `b` on((`a`.`id` = `b`.`menuid`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_users`
--
DROP TABLE IF EXISTS `view_users`;

DROP VIEW IF EXISTS `view_users`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_users`  AS SELECT `a`.`id` AS `id`, `a`.`username` AS `username`, if((`a`.`status` = 1),'Active','In-Active') AS `userstatus`, (case when (`a`.`usertype` = 1) then 'Super-Admin' when (`a`.`usertype` = 2) then 'Admin' when (`a`.`usertype` = 3) then 'Children' when (`a`.`usertype` = 4) then 'Staff' else 'Others' end) AS `usertyperesult`, `b`.`stuId` AS `stuId`, `stf`.`stffId` AS `stffId` FROM ((`users` `a` left join `students` `b` on((`a`.`id` = `b`.`stuUserId`))) left join `staffs` `stf` on((`a`.`id` = `stf`.`stffUserId`))) ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
