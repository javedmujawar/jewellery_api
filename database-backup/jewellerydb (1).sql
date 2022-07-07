-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2022 at 02:54 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jewellerydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_master`
--

CREATE TABLE `account_master` (
  `accountId` int(11) NOT NULL,
  `accountName` varchar(200) CHARACTER SET latin1 NOT NULL,
  `fkaccounttypeId` int(11) DEFAULT NULL,
  `accountopeningDate` date DEFAULT NULL,
  `fkaccountgroupId` int(11) DEFAULT NULL,
  `accountopeningBalance` int(50) DEFAULT NULL,
  `fkcustomertypeId` int(11) NOT NULL,
  `fkledgerId` int(50) NOT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account_master`
--

INSERT INTO `account_master` (`accountId`, `accountName`, `fkaccounttypeId`, `accountopeningDate`, `fkaccountgroupId`, `accountopeningBalance`, `fkcustomertypeId`, `fkledgerId`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 'Inventory', 1, '2019-04-01', 1, 1000, 2, 2, 0, 1, 1, '2019-04-27 10:20:06', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-27 08:20:06'),
(2, '', 1, '2019-04-26', 1, 1000, 2, 1, 0, 1, 1, '2019-04-27 10:58:06', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-27 08:58:06');

-- --------------------------------------------------------

--
-- Table structure for table `bank_master`
--

CREATE TABLE `bank_master` (
  `bankId` bigint(50) NOT NULL,
  `bankName` varchar(255) NOT NULL,
  `bankshortName` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank_master`
--

INSERT INTO `bank_master` (`bankId`, `bankName`, `bankshortName`, `address`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 'Bank Of Maharshtra', 'BOM', 'Nesari', 0, 1, 1, '2019-04-23 06:54:32', 1, '2019-04-25 12:40:40', 1, NULL, NULL, NULL, '2019-04-23 04:54:32'),
(2, 'Bank Of India', 'BOI', ' Gadhinglaj', 0, 1, 1, '2019-04-25 12:41:48', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-25 10:41:48'),
(3, 'syndicate bank', 'Sb', ' asdfgh', 0, 1, 1, '2019-04-26 06:19:01', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-26 04:19:01'),
(4, 'asdfghjkl', 'zxcvbn', ' zxcvbn', 0, 1, 0, '2019-04-26 06:23:33', 1, NULL, NULL, '2019-07-04 07:35:55', 26, NULL, '2019-04-26 04:23:33'),
(5, 'Bank Of Maharshtra', 'BOI', '  ', 0, 1, 0, '2019-05-28 15:26:54', NULL, '2019-07-04 07:36:13', 26, '2019-07-04 07:36:18', 26, NULL, '2019-05-28 13:26:54');

-- --------------------------------------------------------

--
-- Table structure for table `blood_master`
--

CREATE TABLE `blood_master` (
  `bloodgroupId` int(20) NOT NULL,
  `bloodgroup` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blood_master`
--

INSERT INTO `blood_master` (`bloodgroupId`, `bloodgroup`) VALUES
(1, 'A+'),
(2, 'O+'),
(3, 'B+'),
(4, 'AB+'),
(5, 'A-'),
(6, 'O-'),
(7, 'B-'),
(8, 'AB-');

-- --------------------------------------------------------

--
-- Table structure for table `category_master`
--

CREATE TABLE `category_master` (
  `categoryId` int(11) NOT NULL,
  `categoryName` varchar(200) NOT NULL,
  `description` varchar(255) NOT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category_master`
--

INSERT INTO `category_master` (`categoryId`, `categoryName`, `description`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 'metal', ' ccxcx ', 0, 1, 1, '2019-05-15 13:51:52', NULL, '2019-06-26 09:09:48', 1, NULL, NULL, NULL, '2019-05-15 11:51:52'),
(2, 'non metal', 'kalax ', 0, 1, 1, '2019-05-15 13:52:57', NULL, '2019-06-26 09:10:00', 1, '2019-05-15 13:53:20', NULL, NULL, '2019-05-15 11:52:57'),
(3, 'xzxzxzxxzxcc', ' cxc ', 0, 1, 0, '2019-05-15 14:40:04', NULL, '2019-07-04 07:52:42', 1, '2019-07-04 07:53:09', 1, NULL, '2019-05-15 12:40:04');

-- --------------------------------------------------------

--
-- Table structure for table `color_master`
--

CREATE TABLE `color_master` (
  `colorId` int(11) NOT NULL,
  `colorName` varchar(200) NOT NULL,
  `description` varchar(255) NOT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `color_master`
--

INSERT INTO `color_master` (`colorId`, `colorName`, `description`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 'red', 'ss', 0, 1, 1, '2019-05-28 08:39:57', NULL, '2019-06-10 15:10:21', NULL, NULL, NULL, NULL, '2019-05-28 06:39:57'),
(2, 'blue', '122', 0, 1, 0, '2019-05-28 08:40:06', NULL, '2019-07-04 08:03:07', 26, '2019-07-04 08:03:13', 26, NULL, '2019-05-28 06:40:06'),
(3, 'Blue', 'cxc ', 0, 1, 1, '2019-06-10 16:16:04', NULL, '2019-07-04 08:11:12', 26, NULL, NULL, NULL, '2019-06-10 14:16:04');

-- --------------------------------------------------------

--
-- Table structure for table `company_master`
--

CREATE TABLE `company_master` (
  `companyid` int(50) NOT NULL,
  `companyName` varchar(200) COLLATE utf8mb4_croatian_ci NOT NULL,
  `companyheadOffice` varchar(200) COLLATE utf8mb4_croatian_ci NOT NULL,
  `companyserviceCenter` varchar(200) COLLATE utf8mb4_croatian_ci NOT NULL,
  `companycenterName` varchar(200) COLLATE utf8mb4_croatian_ci NOT NULL,
  `companycenterAddress` varchar(200) COLLATE utf8mb4_croatian_ci NOT NULL,
  `companyNumber` int(20) NOT NULL,
  `companyservicecentermobNo` int(20) NOT NULL,
  `contactpersonName` varchar(200) COLLATE utf8mb4_croatian_ci NOT NULL,
  `contactpersonNamemobNo` int(20) NOT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) COLLATE utf8mb4_croatian_ci DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

--
-- Dumping data for table `company_master`
--

INSERT INTO `company_master` (`companyid`, `companyName`, `companyheadOffice`, `companyserviceCenter`, `companycenterName`, `companycenterAddress`, `companyNumber`, `companyservicecentermobNo`, `contactpersonName`, `contactpersonNamemobNo`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 'asd', 'dsa', 'ss', 'sss', 'erwww', 232423584, 852014796, '8555555', 258741369, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-10 09:56:15'),
(2, 'Company', 'Valivde', 'Near AVIT', 'Kolhapur', 'Kolhapur', 123456789, 987456321, 'Harsh Devane', 2147483647, 0, 1, 1, '2019-04-10 13:09:41', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-10 11:09:41'),
(3, 'infosys vanu', 'kolhapur', 'kolhapur', 'service center', 'kolhapur rankala', 2147483647, 2147483647, 'rajendra', 2147483647, 0, 1, 1, '2019-04-11 12:08:24', 1, '2019-04-18 06:54:32', 1, NULL, NULL, NULL, '2019-04-11 10:08:24'),
(4, 'comytanse technology', 'valivde', 'kolhapur', 'kolhapur ', 'CSIBER kolhapur', 2147483647, 2147483647, 'akash v', 2147483647, 0, 1, 1, '2019-04-18 06:53:36', 1, '2019-04-18 06:54:04', 1, NULL, NULL, NULL, '2019-04-18 04:53:36'),
(5, 'ars', 'kolhapur', 'kolhapur', 'kolhapur ', 'CSIBER kolhapur', 2147483647, 2147483647, 'bhalchandra', 2147483647, 0, 1, 1, '2019-04-20 06:52:51', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-20 04:52:51'),
(6, 'WIPRO', 'pune', 'pune', 'pune', 'hinjavdi pune ', 2147483647, 2147483647, 'babaso', 2147483647, 0, 1, 1, '2019-04-26 07:39:18', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-26 05:39:18'),
(7, 'Tata', 'Mumbai', 'Pune', 'Tata Servieses Mumbai', 'Vashi Mumbai', 2147483647, 2147483647, 'Rajan', 2147483647, 0, 1, 1, '2019-04-29 14:11:10', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-29 12:11:10');

-- --------------------------------------------------------

--
-- Table structure for table `counter_master`
--

CREATE TABLE `counter_master` (
  `counterId` int(20) NOT NULL,
  `counterName` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `counter_master`
--

INSERT INTO `counter_master` (`counterId`, `counterName`, `description`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 'as', ' asdfg', 0, 1, 1, '2019-06-25 21:46:47', 1, NULL, NULL, NULL, NULL, NULL, '2019-06-25 19:46:47'),
(2, 'zx', ' zxcv', 0, 1, 0, '2019-06-25 21:48:58', 1, NULL, NULL, '2019-06-25 22:05:16', 1, NULL, '2019-06-25 19:48:58'),
(3, 'qwe', ' fdsa', 0, 1, 1, '2019-06-25 22:05:05', 1, NULL, NULL, NULL, NULL, NULL, '2019-06-25 20:05:05'),
(4, 'wewe', '144', 0, 1, 1, '2019-06-25 10:09:29', 1, '2019-07-04 08:54:41', 1, NULL, NULL, NULL, '2019-06-25 08:09:29');

-- --------------------------------------------------------

--
-- Table structure for table `country_master`
--

CREATE TABLE `country_master` (
  `countryId` bigint(20) NOT NULL,
  `shortName` varchar(50) NOT NULL,
  `countryName` varchar(50) NOT NULL,
  `phoneCode` int(10) NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `is_on` tinyint(4) NOT NULL DEFAULT '1',
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country_master`
--

INSERT INTO `country_master` (`countryId`, `shortName`, `countryName`, `phoneCode`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 'IND', 'India', 91, 0, 1, 1, '2019-04-27 06:31:52', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-27 04:31:52'),
(2, 'SA', 'South Africa', 99, 0, 1, 1, '2019-05-09 13:19:15', 1, NULL, NULL, NULL, NULL, NULL, '2019-05-09 11:19:15'),
(3, 'RSA', 'Rusia', 92, 0, 1, 1, '2019-05-09 13:22:07', 1, '2019-05-09 13:22:46', 5, NULL, NULL, NULL, '2019-05-09 11:22:07'),
(4, 'ENG', 'England', 94, 0, 1, 1, '2019-05-09 13:24:51', 5, '2019-07-04 09:02:42', 26, NULL, NULL, NULL, '2019-05-09 11:24:51'),
(5, 'Shr', 'Shrilanka', 0, 0, 1, 0, '2019-05-14 08:04:37', 1, '2019-05-14 08:05:00', 1, '2019-05-14 08:05:21', 1, NULL, '2019-05-14 06:04:37');

-- --------------------------------------------------------

--
-- Table structure for table `crdr_master`
--

CREATE TABLE `crdr_master` (
  `crdrId` int(50) NOT NULL,
  `crdrName` varchar(50) NOT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crdr_master`
--

INSERT INTO `crdr_master` (`crdrId`, `crdrName`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 'Credit', 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-18 08:51:00'),
(2, 'Debit', 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-18 08:51:12');

-- --------------------------------------------------------

--
-- Table structure for table `customercategories_master`
--

CREATE TABLE `customercategories_master` (
  `customercategoriesId` int(11) NOT NULL,
  `customercategoriesName` varchar(255) CHARACTER SET latin1 NOT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customercategories_master`
--

INSERT INTO `customercategories_master` (`customercategoriesId`, `customercategoriesName`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(9, 'Comtranse', 0, 1, 1, '2019-02-25 15:56:16', 1, NULL, NULL, NULL, NULL, NULL, '2019-02-25 14:56:16'),
(10, 'Comtranse technlogyeeeeee', 0, 1, 0, '2019-02-25 15:56:32', 1, '2019-02-26 11:05:06', 1, '2019-02-26 11:05:13', 1, NULL, '2019-02-25 14:56:32'),
(11, 'Comtranseb', 0, 1, 1, '2019-02-25 17:02:35', 1, NULL, NULL, NULL, NULL, NULL, '2019-02-25 16:02:35'),
(12, 'bfbff', 0, 1, 0, '2019-02-25 17:05:43', 1, '2019-02-26 05:59:24', 1, '2019-02-26 06:01:30', 1, NULL, '2019-02-25 16:05:43'),
(13, 'e', 0, 1, 0, '2019-02-25 17:19:16', 1, NULL, NULL, '2019-02-26 06:01:24', 1, NULL, '2019-02-25 16:19:16'),
(14, 'dv', 0, 1, 0, '2019-02-26 05:48:48', 1, NULL, NULL, '2019-02-26 06:01:05', 1, NULL, '2019-02-26 04:48:48'),
(15, 'dvv', 0, 1, 0, '2019-02-26 05:48:59', 1, NULL, NULL, '2019-02-26 06:00:57', 1, NULL, '2019-02-26 04:48:59'),
(16, 'sdd', 0, 1, 0, '2019-02-26 05:50:27', 1, NULL, NULL, '2019-02-26 06:01:15', 1, NULL, '2019-02-26 04:50:27'),
(17, 's', 0, 1, 0, '2019-02-26 05:50:41', 1, NULL, NULL, '2019-02-26 06:00:47', 1, NULL, '2019-02-26 04:50:41'),
(18, 'vaibhav shiv', 0, 1, 0, '2019-02-26 06:00:15', 1, '2019-02-26 06:00:36', 1, '2019-04-23 08:51:33', 1, NULL, '2019-02-26 05:00:15');

-- --------------------------------------------------------

--
-- Table structure for table `customertype_master`
--

CREATE TABLE `customertype_master` (
  `customertypeId` int(11) NOT NULL,
  `customerType` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customertype_master`
--

INSERT INTO `customertype_master` (`customertypeId`, `customerType`) VALUES
(1, 'Credit'),
(2, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `customer_master`
--

CREATE TABLE `customer_master` (
  `customerId` int(50) NOT NULL,
  `customerName` varchar(255) DEFAULT NULL,
  `customermarathiName` varchar(200) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `primaryMobile` bigint(30) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fkcountryId` int(50) DEFAULT NULL,
  `fkstateId` int(50) DEFAULT NULL,
  `fkdistrictId` int(50) DEFAULT NULL,
  `fktalukaId` int(50) DEFAULT NULL,
  `fkvillageId` int(50) DEFAULT NULL,
  `pinCode` int(10) DEFAULT NULL,
  `fkgenderId` int(50) DEFAULT NULL,
  `secondaryMobile` int(12) DEFAULT NULL,
  `customergstNumber` int(50) DEFAULT NULL,
  `opeaningbill` int(11) DEFAULT NULL,
  `fkopeaningbillId` int(11) DEFAULT NULL,
  `creditLimit` int(50) DEFAULT NULL,
  `birthDate` date DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `fkcustomercategoriesId` int(20) DEFAULT NULL,
  `pancardNumber` varchar(20) DEFAULT NULL,
  `adharcardNumber` int(20) DEFAULT NULL,
  `sendSms` varchar(200) DEFAULT NULL,
  `sendwhatsappSms` int(4) DEFAULT NULL,
  `fkusertypeId` int(20) DEFAULT NULL,
  `registrationDate` date DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_master`
--

INSERT INTO `customer_master` (`customerId`, `customerName`, `customermarathiName`, `address`, `primaryMobile`, `email`, `fkcountryId`, `fkstateId`, `fkdistrictId`, `fktalukaId`, `fkvillageId`, `pinCode`, `fkgenderId`, `secondaryMobile`, `customergstNumber`, `opeaningbill`, `fkopeaningbillId`, `creditLimit`, `birthDate`, `photo`, `fkcustomercategoriesId`, `pancardNumber`, `adharcardNumber`, `sendSms`, `sendwhatsappSms`, `fkusertypeId`, `registrationDate`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 'Sonal kumbhar', 'सोनाल कुंभार', ' Kale', 9049049005, 'sonalkumbhar213@gmail.com', 1, 1, 1, 1, 1, 416504, 1, 2147483647, 904904, 1, 1, 1000, '1995-03-21', '3047.jpg', 2, '', 0, '1', NULL, 0, '0000-00-00', 0, 1, 1, '2019-04-27 07:57:22', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-27 05:57:22'),
(2, 'Comtranse', 'बाबासाहेब देसाई ', ' dwf ', 9874563210, 'swcs', 1, 1, 1, 1, 1, 591241, 1, 1234567890, 0, 123456, 2, 50000, '2019-04-30', '14535.png', 2, '', 0, '0', 0, 4, '0000-00-00', 0, 1, 1, '2019-05-08 13:24:05', 1, '2019-05-14 11:51:58', 1, NULL, NULL, NULL, '2019-05-08 11:24:05'),
(3, 'Sonal kumbhar', 'सोनाल कुंभार', 'Arjunwadi', 123456, 'sonal@gmail.com', 1, 1, 1, 1, 1, 416504, 1, 65456, 8888, 888, 2, 1000, '1995-08-27', '6476.jpg', 2, '', 0, '1', 1, 1, '0000-00-00', 0, 1, 1, '2019-05-12 11:34:21', 1, NULL, NULL, NULL, NULL, NULL, '2019-05-12 09:34:21'),
(4, 'chaitanya kate', 'चैतन्य काटे', ' arjunwadi   ', 9552273774, 'chaitanya27@gmail.com', 1, 1, 1, 1, 1, 416504, 2, 2147483647, 558899, 5588, 1, 1000, '2014-07-04', '14854.png', 2, '', 0, '0', 0, 1, '0000-00-00', 0, 1, 1, '2019-05-12 17:56:47', 1, '2019-05-14 11:51:32', 1, NULL, NULL, NULL, '2019-05-12 15:56:47'),
(5, 'Akash Lohar', 'आकाश लोहार ', ' Arjunwadi', 7411112360, 'akashlohar095@gmail.com', 1, 1, 1, 1, 1, 416504, 1, 2147483647, 1345, 10000, 1, 10000, '1995-07-06', '21510.png', 2, '', 0, '1', 1, 1, '0000-00-00', 0, 1, 1, '2019-05-13 07:07:43', 1, NULL, NULL, NULL, NULL, NULL, '2019-05-13 05:07:43'),
(6, 'Sonal kumbhar', 'बाबासाहेब देसाई ', 'qwerty ', 9874563210, 'comtranse@gmail.com', 1, 1, 1, 1, 1, 416504, 1, 65456, 500, 12345, 1, 12345, '2019-05-15', '26054.jpg', 2, '', 0, '0', 0, 1, '0000-00-00', 0, 1, 1, '2019-05-14 11:15:58', 1, '2019-05-15 12:15:28', 1, NULL, NULL, NULL, '2019-05-14 09:15:58'),
(7, 'Comtranse', 'Babasaheb Desai', ' 2rt55', 123456, 'sonal@gmail.com', 1, 1, 1, 1, 1, 416504, 2, 1234567890, 500, 123456, 1, 12345, '2019-05-15', '20272.JPG', 2, '234543654', 45435546, '1', 1, 1, '0000-00-00', 0, 1, 1, '2019-05-15 08:16:22', 1, NULL, NULL, NULL, NULL, NULL, '2019-05-15 06:16:22'),
(8, 'Vaibhav Shiudkar', 'वैभव शिउडकर', 'Hundewadi ', 741258963, 'vaibhav@gmail.com', 1, 1, 1, 1, 1, 591241, 1, 698521473, 123456789, 1234, 1, 1234567890, '2019-05-06', '91.jpg', 2, '123qwert', 123456789, '0', 0, 1, '0000-00-00', 0, 1, 1, '2019-05-15 11:44:46', 1, '2019-05-15 12:14:52', 1, NULL, NULL, NULL, '2019-05-15 09:44:46'),
(9, 'Suraj Shivaji More', 'सुरज शिवाजी मोरे', ' Gadhinglaj', 7894561321, 'suraj@gmail.com', 1, 1, 1, 1, 1, 416504, 1, 2147483647, 78965413, 987456, 1, 987462, '2019-05-14', '25083.jpg', 1, '35435gsg', 45435546, '1', 1, 1, '2019-05-15', 0, 1, 1, '2019-05-15 12:46:44', 1, NULL, NULL, NULL, NULL, NULL, '2019-05-15 10:46:44'),
(10, 'Comtranse', 'Comtranse', ' qwertyi', 123456, 'qwsrhjk', 1, NULL, NULL, NULL, NULL, 1111111, 1, 65456, 123456, 123456, 2, 50000, '2019-05-07', '17521.jpg', 9, '123qwert', 45435546, '1', 1, 1, '2019-05-15', 0, 1, 1, '2019-05-15 13:02:07', 1, NULL, NULL, NULL, NULL, NULL, '2019-05-15 11:02:07'),
(11, 'Comtranse', 'Vaibhav', ' 1qwsdfghnm ', 123456, 'akashlohar095@gmail.com', 2, 0, 0, 0, 0, 416504, 1, 1234567890, 8888, 494, 2, 10000, '2019-05-15', '', 10, '35435gsg', 45435546, '0', 0, 1, '2019-05-15', 0, 1, 1, '2019-05-15 13:03:49', 1, '2019-05-16 13:16:45', 1, NULL, NULL, NULL, '2019-05-15 11:03:49'),
(12, 'Trushant Ghatage', 'तृशांत घाटगे', ' Valiwade', 9874563210, 'comtranse@gmail.com', 1, 1, 1, 1, 3, 416504, 1, 1234567890, 500, 123456, 1, 1222, '2019-05-17', '6884.jpg', 10, '35435gsg', 45435546, '1', 1, 0, '2019-05-17', 0, 1, 1, '2019-05-17 08:26:22', 1, NULL, NULL, NULL, NULL, NULL, '2019-05-17 06:26:22'),
(13, 'Trushant Ghatageqwertyi', 'तृशांत घाटगे', ' valiwade    ', 9874563210, 'comtranse@gmail.comqwertyuio', 0, 0, 0, 0, 0, 416504, 1, 1234567890, 2147483647, 2147483647, 1, 2147483647, '2019-05-01', '', 10, '35435gsg123rtyjk', 2147483647, '0', 0, 1, '2019-05-17', 0, 1, 1, '2019-05-17 08:28:38', 1, '2019-05-17 12:22:03', 1, NULL, NULL, NULL, '2019-05-17 06:28:38'),
(14, 'jjj', 'sss', ' xxx', 20000, 'ghatagetrushant@gmail.com', 1, 0, 0, 0, 0, 416119, 1, 1000, 1455, 855, 2, 22, '2019-05-08', '199236932.png', 11, 'dddd', 222, '1', 1, 4, '2019-05-04', 0, 1, 1, '2019-05-17 12:25:01', 1, NULL, NULL, NULL, NULL, NULL, '2019-05-17 10:25:01'),
(15, 'dddd', 'sds', ' xxx ', 41111, 'ghatagetrushant@gmail.com', 0, 0, 0, 0, 0, 416119, 1, 11111, 1455, 855, 1, 115, '2019-05-02', '', 11, '11sssss', 11111, '0', 0, 3, '2019-05-04', 0, 1, 1, '2019-05-17 12:28:58', 1, '2019-05-19 06:24:46', 1, NULL, NULL, NULL, '2019-05-17 10:28:58'),
(16, 'dddttrrf', 'dddfdfdf', ' ccc vvv ', 22333444, 'ghatagetrushant@gmail.com', 0, 0, 0, 0, 0, 416118, 1, 566, 123, 6655, 1, 12, '2019-05-08', '', 12, '11', 222, '0', 0, 3, '2019-05-09', 0, 1, 1, '2019-05-19 06:26:03', 1, '2019-05-24 12:22:43', 1, NULL, NULL, NULL, '2019-05-19 04:26:03'),
(17, 'dddttrrf', 'sds', ' kol ', 22333444, 'ghatagetrushant@gmail.com', 0, 0, 0, 0, 0, 416119, 1, 566, 1455, 6655, 1, 23, '2019-05-01', NULL, 11, '1235', 232, '0', 0, 1, '2019-05-01', 0, 1, 1, '2019-05-24 12:26:58', 1, '2019-07-04 09:19:35', 1, NULL, NULL, NULL, '2019-05-24 10:26:58'),
(18, 'eee', 'dddfdfdf', ' gv  ', 22333444, 'ghatagetrushant@gmail.com', 1, 1, 1, 1, 1, 416119, 2, 2147483647, 123, 6655, 1, 12, '2019-05-08', NULL, 9, '11', 232, '1', 1, 3, '2019-05-15', 0, 1, 1, '2019-05-28 12:05:34', 1, '2019-07-13 08:32:08', 1, NULL, NULL, NULL, '2019-05-28 10:05:34'),
(19, 'trushant', 'trushant', 'valiwade  ', 9130616497, 'ghatagetrushant@gmail.com', 1, 1, 1, 1, 1, 122466, 1, 2147483647, 123455, 100, 1, 100, '2019-07-02', '420367605.png', 9, '14563', 11563, '1', NULL, 2, '2019-07-03', 0, 1, 1, '2019-07-04 09:22:08', 1, '2022-05-14 05:55:02', 1, NULL, NULL, NULL, '2019-07-04 07:22:08');

-- --------------------------------------------------------

--
-- Table structure for table `discount_master`
--

CREATE TABLE `discount_master` (
  `discountId` int(11) NOT NULL,
  `discountName` varchar(200) NOT NULL,
  `discountValue` int(11) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `discount_master`
--

INSERT INTO `discount_master` (`discountId`, `discountName`, `discountValue`, `description`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 'cscx', 11223, '100', 0, 1, 1, '2019-05-19 11:05:44', NULL, '2019-07-04 09:39:16', 26, NULL, NULL, NULL, '2019-05-19 09:05:44');

-- --------------------------------------------------------

--
-- Table structure for table `distric_master`
--

CREATE TABLE `distric_master` (
  `districtId` bigint(20) NOT NULL,
  `districtName` varchar(255) CHARACTER SET latin1 NOT NULL,
  `districtCode` bigint(20) NOT NULL,
  `districtshortName` varchar(20) CHARACTER SET latin1 NOT NULL,
  `fkcountryId` bigint(200) NOT NULL,
  `fkstateId` bigint(200) NOT NULL,
  `fktalukaId` bigint(200) NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `is_on` tinyint(4) NOT NULL DEFAULT '1',
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `distric_master`
--

INSERT INTO `distric_master` (`districtId`, `districtName`, `districtCode`, `districtshortName`, `fkcountryId`, `fkstateId`, `fktalukaId`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 'Kolhapur', 0, '', 1, 1, 0, 0, 1, 1, '2019-04-27 06:53:53', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-27 04:53:53'),
(2, 'Kagal', 140, 'kagal', 1, 1, 0, 0, 1, 1, '2019-05-06 12:56:01', 1, '2019-07-10 09:11:12', NULL, NULL, NULL, NULL, '2019-05-06 10:56:01'),
(3, 'hhhh', 0, '', 1, 1, 0, 0, 1, 1, '2019-05-11 10:42:40', NULL, '2019-05-11 10:46:07', NULL, NULL, NULL, NULL, '2019-05-11 08:42:40');

-- --------------------------------------------------------

--
-- Table structure for table `employee_master`
--

CREATE TABLE `employee_master` (
  `empId` int(11) NOT NULL,
  `empName` varchar(200) DEFAULT NULL,
  `employeemarathiName` varchar(200) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contact1` int(20) DEFAULT NULL,
  `contact2` int(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `fkgenderId` int(11) DEFAULT NULL,
  `fkmaritalstatusId` int(20) DEFAULT NULL,
  `dateofjoining` date DEFAULT NULL,
  `fkroleId` varchar(255) DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `fkbloodgroupId` int(50) DEFAULT NULL,
  `fkcountryId` int(11) DEFAULT NULL,
  `fkstateId` int(11) DEFAULT NULL,
  `fkdistrictId` int(11) DEFAULT NULL,
  `fktalukaId` int(11) DEFAULT NULL,
  `fkvillageId` int(50) NOT NULL,
  `pinCode` int(11) DEFAULT NULL,
  `refNumber` int(11) DEFAULT NULL,
  `verificationNum` varchar(50) DEFAULT NULL,
  `sendSms` varchar(50) DEFAULT NULL,
  `registrationDate` date NOT NULL,
  `sendwhatsappSms` int(4) DEFAULT NULL,
  `pancardNumber` varchar(20) NOT NULL,
  `adharcardNumber` int(20) NOT NULL,
  `fkusertypeId` int(20) NOT NULL,
  `is_default` int(4) DEFAULT '0',
  `is_on` int(4) DEFAULT '1',
  `is_active` int(4) DEFAULT '1',
  `created_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_master`
--

INSERT INTO `employee_master` (`empId`, `empName`, `employeemarathiName`, `address`, `contact1`, `contact2`, `email`, `fkgenderId`, `fkmaritalstatusId`, `dateofjoining`, `fkroleId`, `dateofbirth`, `photo`, `fkbloodgroupId`, `fkcountryId`, `fkstateId`, `fkdistrictId`, `fktalukaId`, `fkvillageId`, `pinCode`, `refNumber`, `verificationNum`, `sendSms`, `registrationDate`, `sendwhatsappSms`, `pancardNumber`, `adharcardNumber`, `fkusertypeId`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 'Sourabh Jadhav', 'सौरभ जाधव ', 'At Borepadale', 2147483647, 2147483647, 'abc@gmail.com', 1, 2, '2019-06-05', '1', '2019-06-05', '1299.png', 1, 1, 1, 1, 1, 1, 12345, 123455, '12345', '1', '2019-06-05', 1, '12345', 12345, 3, 0, 1, 1, NULL, NULL, '2019-07-12', 1, NULL, NULL, NULL, '2019-06-05 14:25:50'),
(2, 'Pradip Kanerkar', 'प्रदीप  कनेरकर', 'At Borepadale', 2147483647, 2147483647, 'abc@gmail.com', 1, 2, '2019-06-05', '1', '2019-06-05', '4365.png', 1, 1, 1, 1, 1, 1, 12345, 12345, '12345', '1', '2019-06-05', 1, '12345', 12345, 3, 0, 1, 1, NULL, NULL, '2019-06-05', 1, NULL, NULL, NULL, '2019-06-05 14:28:58'),
(3, 'Akshay Patil', 'अक्षय पाटील', 'At Salashi', 2147483647, 2147483647, 'abc@gmail.com', 1, 2, '2019-06-05', '1', '2019-06-05', '11456.png', 1, 1, 1, 1, 1, 1, 12345, 12345, '12345', '1', '2019-06-05', 1, '12345', 12345, 3, 0, 1, 1, NULL, NULL, '2019-07-11', 1, NULL, NULL, NULL, '2019-06-05 14:31:38'),
(4, 'Ajit Patil', 'अजित पाटील', 'At Amtewadi', 2147483647, 2147483647, 'abc@gmail.com', 1, 2, '2019-06-05', '1', '2019-06-05', '15865.png', 1, 1, 0, 0, 0, 0, 12345, 12345, '12345', '0', '2019-06-05', 0, '12345', 12345, 3, 0, 1, 1, NULL, NULL, '2019-06-19', 1, NULL, NULL, NULL, '2019-06-05 14:34:25'),
(5, 'Harshwardhan', 'Harshwardhan', 'valiwade', 111111, 1111111, 'abc@gmail.com', 1, 2, '2019-07-12', '2', '2019-07-12', '1243686959.png', 2, 1, 1, 1, 1, 2, 416119, 111, '2222', '1', '2019-07-12', 1, '11111', 10000, 3, 0, 1, 1, NULL, NULL, '2019-07-12', 1, NULL, NULL, NULL, '2019-07-12 10:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `estimationmain`
--

CREATE TABLE `estimationmain` (
  `estimationmainId` int(11) NOT NULL,
  `fkcustomerId` int(11) DEFAULT NULL,
  `totalgrossWeight` float(18,2) DEFAULT NULL,
  `estimationDate` date DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `totalproductnetWeight` float(18,2) DEFAULT NULL,
  `totalgstAmount` float(18,2) DEFAULT NULL,
  `totalDiscount` float(18,2) DEFAULT NULL,
  `totalQuantity` float(18,2) DEFAULT NULL,
  `estimationproductAmount` float(18,2) DEFAULT NULL,
  `estitotproductAmt` float(18,2) DEFAULT NULL,
  `totalstoneWeight` float(18,2) DEFAULT NULL,
  `totalstoneRate` float(18,2) DEFAULT NULL,
  `totalstoneQuantity` float(18,2) DEFAULT NULL,
  `totalstoneAmount` float(18,2) DEFAULT NULL,
  `totalmakingRate` float(18,2) DEFAULT NULL,
  `totalmodeWeight` float(18,2) DEFAULT NULL,
  `totalmodeQuantity` float(18,2) DEFAULT NULL,
  `totalmodeRate` float(18,2) DEFAULT NULL,
  `totalmodeAmount` float(18,2) DEFAULT NULL,
  `totalpaidAmount` float(18,2) DEFAULT NULL,
  `finalbillAmount` float(18,2) DEFAULT NULL,
  `totalbillbalanceAmount` float(18,2) DEFAULT NULL,
  `totaloutstandingAmount` float(18,2) DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `is_on` tinyint(4) NOT NULL DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `estimationmain`
--

INSERT INTO `estimationmain` (`estimationmainId`, `fkcustomerId`, `totalgrossWeight`, `estimationDate`, `photo`, `totalproductnetWeight`, `totalgstAmount`, `totalDiscount`, `totalQuantity`, `estimationproductAmount`, `estitotproductAmt`, `totalstoneWeight`, `totalstoneRate`, `totalstoneQuantity`, `totalstoneAmount`, `totalmakingRate`, `totalmodeWeight`, `totalmodeQuantity`, `totalmodeRate`, `totalmodeAmount`, `totalpaidAmount`, `finalbillAmount`, `totalbillbalanceAmount`, `totaloutstandingAmount`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 1, 1.00, '2019-06-03', NULL, 10.00, 6000.00, 600.00, 1.00, 100.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 2.00, 2.00, 1.00, 4.00, NULL, 0.00, 0.00, 0.00, 0, 1, 1, NULL, NULL, '2019-07-01 16:17:57', 1, NULL, NULL, NULL, '2019-06-30 12:48:42');

-- --------------------------------------------------------

--
-- Table structure for table `estimationmaking`
--

CREATE TABLE `estimationmaking` (
  `estimationmakingId` int(11) NOT NULL,
  `fkestimationmainId` int(11) DEFAULT NULL,
  `fkmakingchargesId` int(11) DEFAULT NULL,
  `makingchargesRate` float(18,2) DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `estimationmaking`
--

INSERT INTO `estimationmaking` (`estimationmakingId`, `fkestimationmainId`, `fkmakingchargesId`, `makingchargesRate`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 1, 3, 454.00, 0, 1, 0, '2019-06-30 14:48:43', 1, NULL, NULL, '2019-07-01 16:17:51', 1, NULL, '2019-06-30 12:48:43');

-- --------------------------------------------------------

--
-- Table structure for table `estimationmode`
--

CREATE TABLE `estimationmode` (
  `estimationmodeId` int(11) NOT NULL,
  `fkestimationmainId` int(11) DEFAULT NULL,
  `productDescription` varchar(200) DEFAULT NULL,
  `productWeight` float(18,2) DEFAULT NULL,
  `productQuantity` float(18,2) DEFAULT NULL,
  `productRate` float(18,2) DEFAULT NULL,
  `totalAmount` float(18,2) DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `estimationmode`
--

INSERT INTO `estimationmode` (`estimationmodeId`, `fkestimationmainId`, `productDescription`, `productWeight`, `productQuantity`, `productRate`, `totalAmount`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 1, '1', 2.00, 2.00, 1.00, 4.00, 0, 1, 1, '2019-06-30 14:48:43', 1, NULL, NULL, NULL, NULL, NULL, '2019-06-30 12:48:43');

-- --------------------------------------------------------

--
-- Table structure for table `estimationproduct`
--

CREATE TABLE `estimationproduct` (
  `estimationproductId` int(11) NOT NULL,
  `fkestimationmainId` int(11) DEFAULT NULL,
  `fkproductId` int(11) DEFAULT NULL,
  `fkcategoryId` int(11) DEFAULT NULL,
  `fksubcategoryId` int(11) DEFAULT NULL,
  `productBarcode` int(11) DEFAULT NULL,
  `fkunitId` int(11) DEFAULT NULL,
  `fkproductmaingroupId` int(11) DEFAULT NULL,
  `fkproductgroupId` int(11) DEFAULT NULL,
  `fkproductsubgroupId` int(11) DEFAULT NULL,
  `fkcolorId` int(11) DEFAULT NULL,
  `fksizeId` int(11) DEFAULT NULL,
  `fkshapeId` int(11) DEFAULT NULL,
  `fkcompanyid` int(11) DEFAULT NULL,
  `fkhsnsacId` int(11) DEFAULT NULL,
  `fkgstId` int(11) DEFAULT NULL,
  `fkpurityId` int(11) DEFAULT NULL,
  `Igst` float(18,2) DEFAULT NULL,
  `Sgst` float(18,2) DEFAULT NULL,
  `Cgst` float(18,2) DEFAULT NULL,
  `Weight` float(18,2) DEFAULT NULL,
  `grossWeight` float(18,2) DEFAULT NULL,
  `netWeight` float(18,2) DEFAULT NULL,
  `rateOne` float(18,2) DEFAULT NULL,
  `rateTen` float(18,2) DEFAULT NULL,
  `Quantity` float(18,2) DEFAULT NULL,
  `productAmount` float(18,2) DEFAULT NULL,
  `totalproductAmount` float(18,2) DEFAULT NULL,
  `discountPercentage` float(18,2) DEFAULT NULL,
  `discountAmount` float(18,2) DEFAULT NULL,
  `gstAmount` float(18,2) DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `estimationproduct`
--

INSERT INTO `estimationproduct` (`estimationproductId`, `fkestimationmainId`, `fkproductId`, `fkcategoryId`, `fksubcategoryId`, `productBarcode`, `fkunitId`, `fkproductmaingroupId`, `fkproductgroupId`, `fkproductsubgroupId`, `fkcolorId`, `fksizeId`, `fkshapeId`, `fkcompanyid`, `fkhsnsacId`, `fkgstId`, `fkpurityId`, `Igst`, `Sgst`, `Cgst`, `Weight`, `grossWeight`, `netWeight`, `rateOne`, `rateTen`, `Quantity`, `productAmount`, `totalproductAmount`, `discountPercentage`, `discountAmount`, `gstAmount`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 1, 2, 1, 1, 3232, 1, 10, 9, 4, 1, 2, 2, 2, 2, 2, 2, 3000.00, 3000.00, 6000.00, 11.00, 1.00, 10.00, 3000.00, 30000.00, 1.00, 100.00, 100.00, 2.00, 600.00, 6000.00, 0, 1, 1, '2019-06-30 14:48:43', 1, NULL, NULL, '2019-07-01 08:37:19', 1, NULL, '2019-06-30 12:48:43');

-- --------------------------------------------------------

--
-- Table structure for table `estimationstone`
--

CREATE TABLE `estimationstone` (
  `estimationstoneId` int(11) NOT NULL,
  `fkestimationmainId` int(11) DEFAULT NULL,
  `fkproductId` int(11) DEFAULT NULL,
  `stoneWeight` float(18,2) DEFAULT NULL,
  `stoneRate` float(18,2) DEFAULT NULL,
  `stoneQuantity` float(18,2) DEFAULT NULL,
  `stoneAmount` float(18,2) DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `estimationstone`
--

INSERT INTO `estimationstone` (`estimationstoneId`, `fkestimationmainId`, `fkproductId`, `stoneWeight`, `stoneRate`, `stoneQuantity`, `stoneAmount`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 1, 2, 11.00, 121.00, 1.00, 1331.00, 0, 1, 0, '2019-06-30 14:48:43', 1, NULL, NULL, '2019-07-01 16:08:20', 1, NULL, '2019-06-30 12:48:43');

-- --------------------------------------------------------

--
-- Table structure for table `fuelbrand_master`
--

CREATE TABLE `fuelbrand_master` (
  `fuelbrandId` int(11) NOT NULL,
  `fuelbrandName` varchar(255) CHARACTER SET latin1 NOT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fuelbrand_master`
--

INSERT INTO `fuelbrand_master` (`fuelbrandId`, `fuelbrandName`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 'ESSAR Ptd Ltd', 0, 1, 1, '2019-04-27 08:23:46', 1, '2019-05-24 06:54:53', 5, NULL, NULL, NULL, '2019-04-27 06:23:46'),
(2, 'Diesel', 0, 1, 1, '2019-04-27 08:24:03', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-27 06:24:03'),
(3, 'Oil', 0, 1, 1, '2019-04-27 08:24:16', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-27 06:24:16');

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `genderId` int(11) NOT NULL,
  `gender` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`genderId`, `gender`) VALUES
(1, 'Male'),
(2, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `gst_master`
--

CREATE TABLE `gst_master` (
  `gstId` bigint(20) NOT NULL,
  `gstName` varchar(255) CHARACTER SET latin1 NOT NULL,
  `gstshortName` varchar(255) CHARACTER SET latin1 NOT NULL,
  `gstpercentageValue` float(18,2) DEFAULT NULL,
  `igstValue` float(18,2) DEFAULT NULL,
  `cgstValue` float(18,2) DEFAULT NULL,
  `sgstValue` float(18,2) DEFAULT NULL,
  `description` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(1) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gst_master`
--

INSERT INTO `gst_master` (`gstId`, `gstName`, `gstshortName`, `gstpercentageValue`, `igstValue`, `cgstValue`, `sgstValue`, `description`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 'gold', 'gold', 10.00, 5.00, 5.00, 10.00, ' hiii  ', 0, 1, 1, '2019-06-11 15:08:38', NULL, '2019-06-11 15:09:19', NULL, NULL, NULL, NULL, '2019-06-11 13:08:38'),
(2, 'silver', 'silver', 20.00, 10.00, 10.00, 20.00, ' bye', 0, 1, 1, '2019-06-11 15:09:40', NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-11 13:09:40'),
(3, 'Diamond', 'Diamond', 30.00, 15.00, 15.00, 30.00, ' huh', 0, 1, 1, '2019-06-11 15:10:20', NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-11 13:10:20');

-- --------------------------------------------------------

--
-- Table structure for table `hsnsac_master`
--

CREATE TABLE `hsnsac_master` (
  `hsnsacId` int(50) NOT NULL,
  `hsnsacName` varchar(255) CHARACTER SET latin1 NOT NULL,
  `hsnsacshortName` varchar(255) CHARACTER SET latin1 NOT NULL,
  `hsnsacCode` int(50) NOT NULL,
  `hsnsacpercentageValue` varchar(255) CHARACTER SET latin1 NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `is_on` tinyint(4) NOT NULL DEFAULT '1',
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hsnsac_master`
--

INSERT INTO `hsnsac_master` (`hsnsacId`, `hsnsacName`, `hsnsacshortName`, `hsnsacCode`, `hsnsacpercentageValue`, `description`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 'Petrol Oil', 'PHSNSAC', 0, '25', ' Petrol HSN SAC ', 0, 1, 1, '2019-04-27 07:17:55', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-27 05:17:55'),
(2, 'Petrol', 'PET', 0, '25', ' ', 0, 1, 1, '2019-04-27 08:33:28', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-27 06:33:28'),
(3, 'Speed Oil', 'Oil', 0, '12', ' Speed Oil ', 0, 1, 1, '2019-04-27 12:54:18', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-27 10:54:18');

-- --------------------------------------------------------

--
-- Table structure for table `installationtype_master`
--

CREATE TABLE `installationtype_master` (
  `installationtypeId` int(11) NOT NULL,
  `installationtypeName` varchar(200) NOT NULL,
  `description` varchar(255) NOT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `installationtype_master`
--

INSERT INTO `installationtype_master` (`installationtypeId`, `installationtypeName`, `description`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 'ggg', 'lllll', 0, 1, 1, '2019-05-17 07:51:14', NULL, '2019-05-17 07:51:36', NULL, NULL, NULL, NULL, '2019-05-17 05:51:14'),
(2, 'tttt', ' gggg', 0, 1, 0, '2019-05-17 07:51:26', NULL, NULL, NULL, '2019-05-17 07:53:42', NULL, NULL, '2019-05-17 05:51:26'),
(3, 'kkkk', ' hhh', 0, 1, 0, '2019-05-17 08:06:33', NULL, NULL, NULL, '2019-05-17 08:06:41', NULL, NULL, '2019-05-17 06:06:33');

-- --------------------------------------------------------

--
-- Table structure for table `item_master`
--

CREATE TABLE `item_master` (
  `itemId` int(11) NOT NULL,
  `itemCode` varchar(200) NOT NULL,
  `itemName` varchar(200) NOT NULL,
  `itemshortName` varchar(50) NOT NULL,
  `fkfuelbrandId` int(11) DEFAULT NULL,
  `fkfueltypeId` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `fkhsnsacId` int(11) NOT NULL,
  `mrp` int(50) DEFAULT NULL,
  `vat` int(50) DEFAULT NULL,
  `rate` int(50) DEFAULT NULL,
  `salesTax` int(50) DEFAULT NULL,
  `basicRate` int(50) DEFAULT NULL,
  `salesRate` int(50) DEFAULT NULL,
  `serviceTax` int(50) DEFAULT NULL,
  `totalAmount` float NOT NULL,
  `netTotal` float NOT NULL,
  `itemDescription` varchar(200) DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_master`
--

INSERT INTO `item_master` (`itemId`, `itemCode`, `itemName`, `itemshortName`, `fkfuelbrandId`, `fkfueltypeId`, `quantity`, `fkhsnsacId`, `mrp`, `vat`, `rate`, `salesTax`, `basicRate`, `salesRate`, `serviceTax`, `totalAmount`, `netTotal`, `itemDescription`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 'P00001', 'Petrol', 'PET', 1, 1, 20000, 2, 80, 10, 79, 10, 6, 6, 3, 0, 0, 'Item for  Speed Petrol.', 0, 1, 1, '2019-04-27 08:36:22', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-27 06:36:22'),
(2, 'A00002', 'Oil', 'Oil', 3, 3, 10, 1, 20, 10, 200, 50, 25, 15, 10, 0, 0, ' Item Created', 0, 1, 1, '2019-04-27 12:55:42', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-27 10:55:42');

-- --------------------------------------------------------

--
-- Table structure for table `karigaroutmain`
--

CREATE TABLE `karigaroutmain` (
  `karigaroutmainId` int(11) NOT NULL,
  `fkkarigarId` int(11) DEFAULT NULL,
  `totalgrossWeight` float(18,2) DEFAULT NULL,
  `karigaroutDate` date DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `fkmaincategoryId` int(11) DEFAULT NULL,
  `fkmainsubcategoryId` int(11) DEFAULT NULL,
  `fkmainpurityId` int(11) DEFAULT NULL,
  `fkmainUnitId` int(11) DEFAULT NULL,
  `karigaroutWeight` float(18,2) DEFAULT NULL,
  `rate1` float(18,2) DEFAULT NULL,
  `rate10` float(18,2) DEFAULT NULL,
  `totalproductnetWeight` float(18,2) DEFAULT NULL,
  `totalgstAmount` float(18,2) DEFAULT NULL,
  `totalDiscount` float(18,2) DEFAULT NULL,
  `totalQuantity` float(18,2) DEFAULT NULL,
  `karigaroutmainprodAmt` float(18,2) DEFAULT NULL,
  `karigarouttotprodAmt` float(18,2) DEFAULT NULL,
  `totalstoneWeight` float(18,2) DEFAULT NULL,
  `totalstoneRate` float(18,2) DEFAULT NULL,
  `totalstoneQuantity` float(18,2) DEFAULT NULL,
  `totalstoneAmount` float(18,2) DEFAULT NULL,
  `totalmakingRate` float(18,2) DEFAULT NULL,
  `totalpaidAmount` float(18,2) DEFAULT NULL,
  `paidmaterialAmt` float(18,2) DEFAULT NULL,
  `finalbillAmount` float(18,2) DEFAULT NULL,
  `totalbillbalanceAmount` float(18,2) DEFAULT NULL,
  `totaloutstandingAmount` float(18,2) DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `is_on` tinyint(4) NOT NULL DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `karigaroutmain`
--

INSERT INTO `karigaroutmain` (`karigaroutmainId`, `fkkarigarId`, `totalgrossWeight`, `karigaroutDate`, `photo`, `fkmaincategoryId`, `fkmainsubcategoryId`, `fkmainpurityId`, `fkmainUnitId`, `karigaroutWeight`, `rate1`, `rate10`, `totalproductnetWeight`, `totalgstAmount`, `totalDiscount`, `totalQuantity`, `karigaroutmainprodAmt`, `karigarouttotprodAmt`, `totalstoneWeight`, `totalstoneRate`, `totalstoneQuantity`, `totalstoneAmount`, `totalmakingRate`, `totalpaidAmount`, `paidmaterialAmt`, `finalbillAmount`, `totalbillbalanceAmount`, `totaloutstandingAmount`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 1, 2.00, '2019-07-02', '304073836.', 1, 1, 1, 1, 1.00, 1.00, 10.00, 242.00, 36.30, 6.05, 3.00, 127.00, 124.79, 122.00, 12122.00, 2.00, 2957768.00, 454.00, 1.00, NULL, 0.00, 0.00, 0.00, 0, 1, 1, NULL, NULL, '2019-07-08 08:27:47', 1, NULL, NULL, NULL, '2019-07-07 11:05:13'),
(2, 2, 1.00, '2019-07-02', NULL, 1, 1, 1, 1, 1.00, 500.00, 5000.00, 121.00, 12100.00, 1210.00, 2.00, 121000.00, 119790.00, 11.00, 212.00, 1.00, 2332.00, 454.00, 100.00, NULL, 0.00, 0.00, 0.00, 0, 1, 1, NULL, NULL, '2019-07-10 12:37:45', 1, NULL, NULL, NULL, '2019-07-10 10:37:45');

-- --------------------------------------------------------

--
-- Table structure for table `karigaroutmaking`
--

CREATE TABLE `karigaroutmaking` (
  `karigaroutmakingId` int(11) NOT NULL,
  `fkkarigaroutmainId` int(11) DEFAULT NULL,
  `fkmakingchargesId` int(11) DEFAULT NULL,
  `makingchargesRate` float(18,2) DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `karigaroutmaking`
--

INSERT INTO `karigaroutmaking` (`karigaroutmakingId`, `fkkarigaroutmainId`, `fkmakingchargesId`, `makingchargesRate`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 1, 3, 454.00, 0, 1, 1, '2019-07-07 13:05:14', 1, NULL, NULL, NULL, NULL, NULL, '2019-07-07 11:05:14'),
(2, 2, 3, 454.00, 0, 1, 1, '2019-07-10 12:37:45', 1, NULL, NULL, NULL, NULL, NULL, '2019-07-10 10:37:45');

-- --------------------------------------------------------

--
-- Table structure for table `karigaroutpayment`
--

CREATE TABLE `karigaroutpayment` (
  `karigaroutpaymentId` int(11) NOT NULL,
  `fkpaymenttypeId` int(11) DEFAULT NULL,
  `fkmobileappId` int(11) DEFAULT NULL,
  `transactionId` int(11) DEFAULT NULL,
  `fkkarigaroutmainId` int(11) DEFAULT NULL,
  `paymentAmount` float(18,2) DEFAULT NULL,
  `paidDate` date DEFAULT NULL,
  `fkbankId` int(11) DEFAULT NULL,
  `chequeNumber` int(11) DEFAULT NULL,
  `chequeDate` date DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `karigaroutpayment`
--

INSERT INTO `karigaroutpayment` (`karigaroutpaymentId`, `fkpaymenttypeId`, `fkmobileappId`, `transactionId`, `fkkarigaroutmainId`, `paymentAmount`, `paidDate`, `fkbankId`, `chequeNumber`, `chequeDate`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 1, 0, 0, 1, 1.00, '2019-07-03', 0, 0, '0000-00-00', 0, 1, 1, '2019-07-07 13:05:14', 1, NULL, NULL, NULL, NULL, NULL, '2019-07-07 11:05:14'),
(2, 1, 0, 0, 2, 100.00, '2019-07-01', 0, 0, '0000-00-00', 0, 1, 1, '2019-07-10 12:37:45', 1, NULL, NULL, NULL, NULL, NULL, '2019-07-10 10:37:45');

-- --------------------------------------------------------

--
-- Table structure for table `karigaroutproduct`
--

CREATE TABLE `karigaroutproduct` (
  `karigaroutproductId` int(11) NOT NULL,
  `fkkarigaroutmainId` int(11) DEFAULT NULL,
  `fkproductId` int(11) DEFAULT NULL,
  `fkcategoryId` int(11) DEFAULT NULL,
  `fksubcategoryId` int(11) DEFAULT NULL,
  `productBarcode` int(11) DEFAULT NULL,
  `fkunitId` int(11) DEFAULT NULL,
  `fkproductmaingroupId` int(11) DEFAULT NULL,
  `fkproductgroupId` int(11) DEFAULT NULL,
  `fkproductsubgroupId` int(11) DEFAULT NULL,
  `fkcolorId` int(11) DEFAULT NULL,
  `fksizeId` int(11) DEFAULT NULL,
  `fkshapeId` int(11) DEFAULT NULL,
  `fkcompanyid` int(11) DEFAULT NULL,
  `fkhsnsacId` int(11) DEFAULT NULL,
  `fkgstId` int(11) DEFAULT NULL,
  `fkpurityId` int(11) DEFAULT NULL,
  `Igst` float(18,2) DEFAULT NULL,
  `Sgst` float(18,2) DEFAULT NULL,
  `Cgst` float(18,2) DEFAULT NULL,
  `Weight` float(18,2) DEFAULT NULL,
  `grossWeight` float(18,2) DEFAULT NULL,
  `netWeight` float(18,2) DEFAULT NULL,
  `rateOne` float(18,2) DEFAULT NULL,
  `rateTen` float(18,2) DEFAULT NULL,
  `Quantity` float(18,2) DEFAULT NULL,
  `productAmount` float(18,2) DEFAULT NULL,
  `totalproductAmount` float(18,2) DEFAULT NULL,
  `discountPercentage` float(18,2) DEFAULT NULL,
  `discountAmount` float(18,2) DEFAULT NULL,
  `gstAmount` float(18,2) DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `karigaroutproduct`
--

INSERT INTO `karigaroutproduct` (`karigaroutproductId`, `fkkarigaroutmainId`, `fkproductId`, `fkcategoryId`, `fksubcategoryId`, `productBarcode`, `fkunitId`, `fkproductmaingroupId`, `fkproductgroupId`, `fkproductsubgroupId`, `fkcolorId`, `fksizeId`, `fkshapeId`, `fkcompanyid`, `fkhsnsacId`, `fkgstId`, `fkpurityId`, `Igst`, `Sgst`, `Cgst`, `Weight`, `grossWeight`, `netWeight`, `rateOne`, `rateTen`, `Quantity`, `productAmount`, `totalproductAmount`, `discountPercentage`, `discountAmount`, `gstAmount`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 1, 2, 1, 1, 3232, 1, 10, 9, 4, 1, 2, 2, 2, 2, 2, 2, 6000.00, 6000.00, 12000.00, 11.00, 1.00, 10.00, 3000.00, 30000.00, 2.00, 60000.00, 59400.00, 1.00, 600.00, 12000.00, 0, 1, 0, '2019-07-07 13:05:14', 1, NULL, NULL, '2019-07-08 08:26:56', 1, NULL, '2019-07-07 11:05:14'),
(2, 1, 1, 1, 1, 12, 1, 10, 7, 2, 2, 1, 2, 4, 2, 1, 1, 12.10, 12.10, 24.20, 122.00, 1.00, 121.00, 1.00, 2.00, 2.00, 6.00, 5.00, 2.00, 4.84, 24.20, 0, 1, 1, '2019-07-08 08:22:59', 1, NULL, NULL, NULL, NULL, NULL, '2019-07-08 06:22:59'),
(3, 1, 1, 1, 1, 12, 1, 10, 7, 2, 2, 1, 2, 4, 2, 1, 1, 12.10, 12.10, 24.20, 122.00, 1.00, 121.00, 1.00, 2.00, 2.00, 6.00, 5.00, 2.00, 4.84, 24.20, 0, 1, 0, '2019-07-08 08:26:07', 1, NULL, NULL, '2019-07-08 08:26:34', 1, NULL, '2019-07-08 06:26:07'),
(4, 1, 1, 1, 1, 12, 1, 10, 7, 2, 2, 1, 2, 4, 2, 1, 1, 6.05, 6.05, 12.10, 122.00, 1.00, 121.00, 1.00, 2.00, 1.00, 1.00, 1.00, 1.00, 1.21, 12.10, 0, 1, 1, '2019-07-08 08:27:47', 1, NULL, NULL, NULL, NULL, NULL, '2019-07-08 06:27:47'),
(5, 2, 1, 1, 1, 12, 1, 10, 7, 2, 2, 1, 2, 4, 2, 1, 1, 6050.00, 6050.00, 12100.00, 122.00, 1.00, 121.00, 500.00, 5000.00, 2.00, 121000.00, 119790.00, 1.00, 1210.00, 12100.00, 0, 1, 1, '2019-07-10 12:37:45', 1, NULL, NULL, NULL, NULL, NULL, '2019-07-10 10:37:45');

-- --------------------------------------------------------

--
-- Table structure for table `karigaroutstone`
--

CREATE TABLE `karigaroutstone` (
  `karigaroutstoneId` int(11) NOT NULL,
  `fkkarigaroutmainId` int(11) DEFAULT NULL,
  `fkproductId` int(11) DEFAULT NULL,
  `stoneWeight` float(18,2) DEFAULT NULL,
  `stoneRate` float(18,2) DEFAULT NULL,
  `stoneQuantity` float(18,2) DEFAULT NULL,
  `stoneAmount` float(18,2) DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `karigaroutstone`
--

INSERT INTO `karigaroutstone` (`karigaroutstoneId`, `fkkarigaroutmainId`, `fkproductId`, `stoneWeight`, `stoneRate`, `stoneQuantity`, `stoneAmount`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 1, 1, 122.00, 12122.00, 2.00, 2957768.00, 0, 1, 1, '2019-07-07 13:05:14', 1, NULL, NULL, NULL, NULL, NULL, '2019-07-07 11:05:14'),
(2, 2, 3, 11.00, 212.00, 1.00, 2332.00, 0, 1, 1, '2019-07-10 12:37:45', 1, NULL, NULL, NULL, NULL, NULL, '2019-07-10 10:37:45');

-- --------------------------------------------------------

--
-- Table structure for table `karigar_master`
--

CREATE TABLE `karigar_master` (
  `karigarId` int(50) NOT NULL,
  `karigarName` varchar(255) DEFAULT NULL,
  `karigarmarathiName` varchar(200) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `primaryMobile` bigint(30) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fkcountryId` int(50) DEFAULT NULL,
  `fkstateId` int(50) DEFAULT NULL,
  `fkdistrictId` int(50) DEFAULT NULL,
  `fktalukaId` int(50) DEFAULT NULL,
  `fkvillageId` int(50) DEFAULT NULL,
  `pinCode` int(10) DEFAULT NULL,
  `fkgenderId` int(50) DEFAULT NULL,
  `secondaryMobile` int(12) DEFAULT NULL,
  `karigargstNumber` int(50) DEFAULT NULL,
  `opeaningbill` int(11) NOT NULL,
  `fkopeaningbillId` int(11) DEFAULT NULL,
  `creditLimit` int(50) DEFAULT NULL,
  `birthDate` date DEFAULT NULL,
  `photo` varchar(200) NOT NULL,
  `pancardNumber` varchar(20) NOT NULL,
  `adharcardNumber` int(20) NOT NULL,
  `userName` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `karigarregistrationDate` date DEFAULT NULL,
  `sendSms` varchar(200) DEFAULT NULL,
  `sendwhatsappSms` int(4) DEFAULT NULL,
  `fkusertypeId` int(20) NOT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `karigar_master`
--

INSERT INTO `karigar_master` (`karigarId`, `karigarName`, `karigarmarathiName`, `address`, `primaryMobile`, `email`, `fkcountryId`, `fkstateId`, `fkdistrictId`, `fktalukaId`, `fkvillageId`, `pinCode`, `fkgenderId`, `secondaryMobile`, `karigargstNumber`, `opeaningbill`, `fkopeaningbillId`, `creditLimit`, `birthDate`, `photo`, `pancardNumber`, `adharcardNumber`, `userName`, `password`, `karigarregistrationDate`, `sendSms`, `sendwhatsappSms`, `fkusertypeId`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 'trushant ghatae', 'ggggg', 'kolhapur       ', 9130616497, 'ghatagetrushant@gmail.com', 1, 1, 1, 1, 1, 416118, 1, 14562, 211, 8553, 2, 23, '1992-09-08', '$data[0]->photo', 'sd', 222, '', '', '2019-05-03', '1', 1, 2, 0, 1, 1, '2019-05-15 12:46:12', 1, '2019-07-10 07:08:00', 1, NULL, NULL, NULL, '2019-05-15 10:46:12'),
(2, 'jhj', 'klk', ' 121', 22, 'babasahebdesai27@gmail.com', 1, 1, 1, 1, 2, 122466, 1, 11, 11, 100, 1, 100, '2019-07-03', '1146856693.jpg', '111', 11563, '', '', '2019-07-11', '1', 1, 1, 0, 1, 1, '2019-07-10 11:47:33', 1, NULL, NULL, NULL, NULL, NULL, '2019-07-10 09:47:33');

-- --------------------------------------------------------

--
-- Table structure for table `mainstockin_master`
--

CREATE TABLE `mainstockin_master` (
  `mainstockinId` int(50) NOT NULL,
  `fksupplierId` int(50) DEFAULT NULL,
  `inviceNumber` int(50) DEFAULT NULL,
  `inviceDate` date DEFAULT NULL,
  `fkvehicleserialId` varchar(200) DEFAULT NULL,
  `orderDate` date DEFAULT NULL,
  `challanNumber` int(50) DEFAULT NULL,
  `challanDate` date DEFAULT NULL,
  `suppliergstno` varchar(256) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `totalQuantity` int(20) NOT NULL,
  `totalAmmount` int(50) DEFAULT NULL,
  `netTotal` int(50) DEFAULT NULL,
  `otherCharges` int(50) DEFAULT NULL,
  `paidAmmount` int(50) DEFAULT NULL,
  `tax` int(50) DEFAULT NULL,
  `totalsalesTax` int(20) NOT NULL,
  `totalserviceTax` int(20) NOT NULL,
  `balanceAmmount` int(50) NOT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mainstockin_master`
--

INSERT INTO `mainstockin_master` (`mainstockinId`, `fksupplierId`, `inviceNumber`, `inviceDate`, `fkvehicleserialId`, `orderDate`, `challanNumber`, `challanDate`, `suppliergstno`, `remark`, `totalQuantity`, `totalAmmount`, `netTotal`, `otherCharges`, `paidAmmount`, `tax`, `totalsalesTax`, `totalserviceTax`, `balanceAmmount`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 2, 2849, '2019-03-09', '1', '2019-03-30', 0, '2019-03-22', '', '', 0, 100, 100, 5444, 100, 515, 0, 0, 10000, 0, 1, 1, '2019-03-07 11:33:58', 1, NULL, NULL, NULL, NULL, NULL, '2019-03-07 10:33:58'),
(2, 2, 1234, '2019-03-01', '1', '2019-03-08', 11111, '2019-03-15', '', '', 0, 123456, 1234, 1234, 6541230, 123, 0, 0, 6541230, 0, 1, 1, '2019-03-07 11:41:21', 1, NULL, NULL, NULL, NULL, NULL, '2019-03-07 10:41:21'),
(3, 4, 111111111, '2019-03-02', '4', '2019-03-23', 0, '2019-03-20', '', '', 0, 100, 1234, 111, 100, 11, 0, 0, 6541230, 0, 1, 1, '2019-03-07 11:43:20', 1, NULL, NULL, NULL, NULL, NULL, '2019-03-07 10:43:20'),
(4, 4, 111111111, '2019-03-02', '4', '2019-03-23', 0, '2019-03-20', '', '', 0, 100, 1234, 111, 100, 11, 0, 0, 6541230, 0, 1, 1, '2019-03-07 11:43:20', 1, NULL, NULL, NULL, NULL, NULL, '2019-03-07 10:43:20'),
(5, 2, 1, '0000-00-00', NULL, NULL, NULL, '0000-00-00', '2', 'h', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, '2019-03-27 18:04:23', 1, NULL, NULL, NULL, NULL, NULL, '2019-03-27 17:04:23'),
(6, 2, 101, '2019-03-12', '1', '2019-03-24', 70, '2019-03-26', '1223yyyyyy', 'good', 0, 500, 700, 80, 200, 7, 0, 0, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-30 06:01:58'),
(7, 4, 102, '2019-03-18', '2', '2019-03-18', 71, '2019-03-28', '1234', 'nice', 0, 60, 70, 70, 50, 70, 0, 0, 70, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-30 06:15:14'),
(8, 3, 103, '2019-03-11', '2', '2019-03-12', 72, '2019-03-18', '45657`', 'ggggggggg', 0, 8989, 7, 800, 8, 8, 0, 0, 8, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-30 06:25:57'),
(9, 3, 103, '2019-03-11', '2', '2019-03-12', 72, '2019-03-18', '45657`', 'ggggggggg', 0, 8989, 7, 800, 8, 8, 0, 0, 8, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-30 06:31:26'),
(10, 2, 103, '2019-03-20', '1', '2019-03-28', 72, '2019-03-26', '8989', 'good', 0, 70, 80, 90, 80, 80, 0, 0, 809, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-30 06:51:41'),
(11, 3, 103, '2019-03-25', '2', '2019-03-27', 73, '2019-03-20', '1234567', 'yu', 0, 800, 800, 90, 500, 8, 0, 0, 300, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-30 07:01:23'),
(12, 2, 105, '2019-03-25', '1', '2019-03-28', 75, '2019-03-19', '900', 'ui', 0, 79, 90, 99, 60, 7, 0, 0, 18, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-30 07:18:11'),
(13, 4, 10, '2019-03-17', '1', '2019-03-20', 10, '2019-03-27', '1234567', 'good', 0, 700, 700, 100, 500, 7, 0, 0, 200, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-30 16:15:12'),
(14, 4, 11, '2019-03-05', '2', '2019-03-11', 190000, '2019-03-13', '898989`', 'nice', 0, 1000, 500, 60, 500, 5, 0, 0, 500, 0, 1, 1, '2019-03-30 17:21:57', 1, '2019-04-02 07:31:11', 1, NULL, NULL, NULL, '2019-03-30 16:21:57'),
(15, 2, 20, '2019-04-22', '2', '2019-04-22', 20, '2019-04-17', '787867', 'good', 0, 700, 600, 700, 600, 70, 0, 0, 80, 0, 1, 1, '2019-04-01 07:48:40', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-01 05:48:40'),
(16, 2, 21, '2019-04-08', '1', '2019-04-16', 21, '2019-04-25', '5874', 'yyyy', 0, 900, 900, 90, 500, 7, 0, 0, 400, 0, 1, 1, '2019-04-01 08:28:12', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-01 06:28:12'),
(17, 2, 35, '2019-04-16', '1', '2019-04-23', 35, '2019-04-16', '5874', 'hhhhh', 0, 10000, 800, 700, 80, 50000, 0, 0, 80, 0, 1, 1, '2019-04-02 07:36:40', 1, '2019-04-02 07:56:18', 1, NULL, NULL, NULL, '2019-04-02 05:36:40'),
(18, 2, 60, '2019-03-31', '1', '2019-04-02', 60, '2019-04-04', '5874', 'good', 0, 290, 320, 30, 0, 50007, 0, 0, 290, 0, 1, 1, '2019-04-04 17:26:46', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-04 15:26:46'),
(19, 2, 60, '2019-03-31', '1', '2019-04-02', 60, '2019-04-04', '5874', 'good', 0, 290, 320, 30, 0, 50007, 0, 0, 290, 0, 1, 1, '2019-04-04 17:32:25', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-04 15:32:25'),
(20, 2, 51, '2019-04-15', '1', '2019-04-23', 51, '2019-04-11', '5874', 'tyy', 0, 90, 100, 10, 0, 50000, 0, 0, 90, 0, 1, 1, '2019-04-04 17:56:58', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-04 15:56:58'),
(21, 3, 120, '2019-04-16', '1', '2019-04-23', 120, '2019-04-25', '5555', 'uuuuu', 0, 90, 100, 10, 0, 50000, 0, 0, 90, 0, 1, 1, '2019-04-04 18:26:07', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-04 16:26:07'),
(22, 2, 73, '2019-04-08', '2', '2019-04-23', 73, '2019-04-16', '5874', 'iiiiii', 0, 90, 100, 10, 0, 50000, 0, 0, 90, 0, 1, 1, '2019-04-04 18:37:44', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-04 16:37:44'),
(23, 2, 45, '2019-04-10', '1', '2019-04-09', 730, '2019-04-23', '5874', 'buuuu', 4, 220, 250, 30, 0, 50000, 0, 0, 220, 0, 1, 1, '2019-04-04 18:49:18', 1, '2019-04-05 07:35:40', 1, NULL, NULL, NULL, '2019-04-04 16:49:18'),
(24, 2, 23, '2019-04-16', '1', '2019-04-23', 24, '2019-04-10', '5874', 'very good', 7, 70, 80, 10, 0, 50000, 0, 0, 70, 0, 1, 1, '2019-04-05 06:22:31', 1, '2019-04-05 06:26:02', 1, NULL, NULL, NULL, '2019-04-05 04:22:31'),
(25, 4, 62, '2019-04-16', '1', '2019-04-16', 62, '2019-04-11', '5555', 'yyyy', 10, 280, 310, 30, 0, 50007, 0, 0, 280, 0, 1, 1, '2019-04-05 08:21:41', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-05 06:21:41'),
(26, 2, 111111, '2019-04-05', '1', '2019-04-04', 0, '2019-04-05', '5874', 'complete', 2, 20, 30, 10, 0, 50000, 0, 0, 20, 0, 1, 1, '2019-04-05 10:07:39', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-05 08:07:39'),
(27, 1, 13, '2019-05-07', '5', '2019-05-11', 11111, '2019-05-07', '5555', ' ', 100, 7900, 7980, 80, 7000, 10, 0, 0, 7900, 0, 1, 1, '2019-05-12 18:00:40', 5, NULL, NULL, NULL, NULL, NULL, '2019-05-12 16:00:40'),
(28, 1, 2147483647, '2019-04-19', '5', '2019-05-18', 123, '2019-05-18', '123456', ' ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '2019-05-19 06:10:01', 5, NULL, NULL, NULL, NULL, NULL, '2019-05-19 04:10:01'),
(29, 1, 12345, '2019-05-16', '5', '2019-05-09', 11111, '2019-05-07', '123456', '   ', 2, 158, 158, 80, 0, 10, 0, 0, 158, 0, 1, 1, '2019-05-19 06:22:06', 5, '2019-05-25 06:37:24', 5, NULL, NULL, NULL, '2019-05-19 04:22:06'),
(30, 1, 2222222, '2019-05-02', '5', '2019-05-10', 2147483647, '2019-05-08', '123456', '              ', 23, 506, 536, 20, 0, 7, 0, 0, 506, 0, 1, 1, '2019-05-19 06:22:56', 5, '2019-05-22 11:09:17', 5, NULL, NULL, NULL, '2019-05-19 04:22:56'),
(31, 1, 1234567890, '2019-05-24', '5', '2019-05-24', 1234567890, '2019-05-24', '123456', ' qwertyuio', 12, 948, 1051, 80, 1051, 10, 10, 3, 0, 0, 1, 1, '2019-05-25 06:01:20', 5, NULL, NULL, NULL, NULL, NULL, '2019-05-25 04:01:20'),
(32, 1, 1234567890, '2019-05-05', '1', '2019-05-05', 123, '2019-05-05', '123456', ' complete', 2, 44, 74, 20, 74, 7, 2, 1, 0, 0, 1, 1, '2019-05-25 06:17:47', 5, NULL, NULL, NULL, NULL, NULL, '2019-05-25 04:17:47'),
(33, 1, 123, '2019-05-29', '5', '2019-05-29', 123456, '2019-05-29', '123456', ' complete ', 4, 254, 346, 127, 346, 15, 10, 10, 0, 0, 1, 1, '2019-05-29 08:51:08', 25, '2019-05-29 08:52:44', 25, NULL, NULL, NULL, '2019-05-29 06:51:08'),
(34, 1, 123, '2019-05-29', '5', '2019-05-29', 123456, '2019-05-29', '123456', ' ', 0, 0, 0, 0, 346, 0, 0, 0, 0, 0, 1, 1, '2019-05-29 11:24:50', 25, NULL, NULL, NULL, NULL, NULL, '2019-05-29 09:24:50'),
(35, 1, 11, '2019-05-02', '5', '2019-05-02', 11, '2019-05-02', '5555', ' ', 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 1, '2019-05-30 06:54:49', 1, NULL, NULL, NULL, NULL, NULL, '2019-05-30 04:54:49'),
(36, 1, 11, '2019-04-30', '6', '2019-05-02', 11, '2019-05-08', '5555', ' ', 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 1, '2019-05-30 06:56:44', 1, NULL, NULL, NULL, NULL, NULL, '2019-05-30 04:56:44'),
(37, 1, 11, '2019-05-07', '5', '2019-05-17', 11, '2019-05-02', '5555', ' ', 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 1, '2019-05-30 06:58:55', 1, NULL, NULL, NULL, NULL, NULL, '2019-05-30 04:58:55'),
(38, 1, 11, '2019-05-07', '5', '2019-05-17', 11, '2019-05-02', '5555', ' ', 10, 790, 893, 80, 100, 10, 10, 3, 0, 0, 1, 1, '2019-05-30 06:59:11', 1, NULL, NULL, NULL, NULL, NULL, '2019-05-30 04:59:11'),
(39, 1, 24, '2019-05-08', '5', '2019-05-10', 11, '2019-05-08', '5555', '   ', 10, 790, 893, 80, 111, 10, 10, 3, 782, 0, 1, 1, '2019-05-30 07:01:16', 1, '2019-06-20 12:04:46', 1, NULL, NULL, NULL, '2019-05-30 05:01:16'),
(40, 1, 100, '2019-06-04', '5', '2019-05-30', 11, '2019-06-11', '5555', '  ', 23, 1938, 2131, 100, 100, 20, 60, 13, 2031, 0, 1, 1, '2019-06-20 12:05:52', 1, '2019-06-20 12:06:13', 1, NULL, NULL, NULL, '2019-06-20 10:05:52'),
(41, 2, 11, '2019-06-05', '5', '2019-06-06', 11, '2019-06-18', '0', ' ', 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 1, '2019-06-20 12:09:51', 1, NULL, NULL, NULL, NULL, NULL, '2019-06-20 10:09:51'),
(42, 1, 1, '2019-05-15', '5', '2019-05-31', 11, '2019-06-04', '5555', ' ', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, '2019-06-21 06:36:01', NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-21 04:36:01'),
(43, 2, 2, '2019-05-28', '5', '2019-06-05', 11, '2019-05-29', '0', ' ', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, '2019-06-21 06:48:26', NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-21 04:48:26'),
(44, 2, 24, '2019-06-03', '4', '2019-06-04', 100, '2019-06-04', '0', ' ', 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 1, 1, '2019-06-21 08:26:41', NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-21 06:26:41'),
(45, 2, 24, '2019-06-03', '4', '2019-06-04', 100, '2019-06-04', '0', ' ', 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 1, 1, '2019-06-21 08:26:57', NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-21 06:26:57'),
(46, 2, 24, '2019-06-03', '4', '2019-06-04', 100, '2019-06-04', '0', ' ', 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 1, 1, '2019-06-21 08:27:13', 1, NULL, NULL, NULL, NULL, NULL, '2019-06-21 06:27:13'),
(47, 1, 100, '2019-06-10', '5', '2019-06-06', 11, '2019-06-10', '5555', ' ', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, '2019-06-21 08:31:08', 1, NULL, NULL, NULL, NULL, NULL, '2019-06-21 06:31:08'),
(48, 1, 1, '2019-06-04', '5', '2019-06-11', 11, '2019-05-28', '5555', ' ', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, '2019-06-21 08:37:35', 1, NULL, NULL, NULL, NULL, NULL, '2019-06-21 06:37:35'),
(49, 2, 24, '2019-06-03', '5', '2019-06-05', 11, '2019-06-04', '0', ' ', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, '2019-06-21 08:38:28', 1, NULL, NULL, NULL, NULL, NULL, '2019-06-21 06:38:28'),
(50, 2, 24, '2019-06-09', '5', '2019-06-05', 11, '2019-06-03', '0', ' ', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 1, 1, '2019-06-21 08:40:26', 1, NULL, NULL, NULL, NULL, NULL, '2019-06-21 06:40:26'),
(51, 2, 24, '2019-06-11', '5', '2019-06-04', 11, '2019-06-05', '0', ' ', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 1, 1, '2019-06-21 08:43:48', 1, NULL, NULL, NULL, NULL, NULL, '2019-06-21 06:43:48'),
(52, 2, 24, '2019-06-04', '5', '2019-06-13', 11, '2019-06-12', '0', '  ', 2, 158, 261, 80, 1, 10, 10, 3, 260, 0, 1, 1, '2019-06-21 13:47:54', 1, '2019-06-21 13:52:16', NULL, NULL, NULL, NULL, '2019-06-21 11:47:54');

-- --------------------------------------------------------

--
-- Table structure for table `mainstockin_master_old`
--

CREATE TABLE `mainstockin_master_old` (
  `mainstockinId` int(50) NOT NULL,
  `fksupplierId` int(50) DEFAULT NULL,
  `inviceNumber` int(50) DEFAULT NULL,
  `inviceDate` date DEFAULT NULL,
  `fkvehicleserialId` varchar(200) DEFAULT NULL,
  `orderDate` date DEFAULT NULL,
  `challanNumber` int(50) DEFAULT NULL,
  `challanDate` date DEFAULT NULL,
  `suppliergstno` varchar(256) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `totalQuantity` int(20) NOT NULL,
  `totalAmmount` int(50) DEFAULT NULL,
  `netTotal` int(50) DEFAULT NULL,
  `otherCharges` int(50) DEFAULT NULL,
  `paidAmmount` int(50) DEFAULT NULL,
  `tax` int(50) DEFAULT NULL,
  `balanceAmmount` int(50) NOT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mainstockin_master_old`
--

INSERT INTO `mainstockin_master_old` (`mainstockinId`, `fksupplierId`, `inviceNumber`, `inviceDate`, `fkvehicleserialId`, `orderDate`, `challanNumber`, `challanDate`, `suppliergstno`, `remark`, `totalQuantity`, `totalAmmount`, `netTotal`, `otherCharges`, `paidAmmount`, `tax`, `balanceAmmount`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 2, 2849, '2019-03-09', '1', '2019-03-30', 0, '2019-03-22', '', '', 0, 100, 100, 5444, 100, 515, 10000, 0, 1, 1, '2019-03-07 11:33:58', 1, NULL, NULL, NULL, NULL, NULL, '2019-03-07 10:33:58'),
(2, 2, 1234, '2019-03-01', '1', '2019-03-08', 11111, '2019-03-15', '', '', 0, 123456, 1234, 1234, 6541230, 123, 6541230, 0, 1, 1, '2019-03-07 11:41:21', 1, NULL, NULL, NULL, NULL, NULL, '2019-03-07 10:41:21'),
(3, 4, 111111111, '2019-03-02', '4', '2019-03-23', 0, '2019-03-20', '', '', 0, 100, 1234, 111, 100, 11, 6541230, 0, 1, 1, '2019-03-07 11:43:20', 1, NULL, NULL, NULL, NULL, NULL, '2019-03-07 10:43:20'),
(4, 4, 111111111, '2019-03-02', '4', '2019-03-23', 0, '2019-03-20', '', '', 0, 100, 1234, 111, 100, 11, 6541230, 0, 1, 1, '2019-03-07 11:43:20', 1, NULL, NULL, NULL, NULL, NULL, '2019-03-07 10:43:20'),
(5, 2, 1, '0000-00-00', NULL, NULL, NULL, '0000-00-00', '2', 'h', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, '2019-03-27 18:04:23', 1, NULL, NULL, NULL, NULL, NULL, '2019-03-27 17:04:23'),
(6, 2, 101, '2019-03-12', '1', '2019-03-24', 70, '2019-03-26', '1223yyyyyy', 'good', 0, 500, 700, 80, 200, 7, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-30 06:01:58'),
(7, 4, 102, '2019-03-18', '2', '2019-03-18', 71, '2019-03-28', '1234', 'nice', 0, 60, 70, 70, 50, 70, 70, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-30 06:15:14'),
(8, 3, 103, '2019-03-11', '2', '2019-03-12', 72, '2019-03-18', '45657`', 'ggggggggg', 0, 8989, 7, 800, 8, 8, 8, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-30 06:25:57'),
(9, 3, 103, '2019-03-11', '2', '2019-03-12', 72, '2019-03-18', '45657`', 'ggggggggg', 0, 8989, 7, 800, 8, 8, 8, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-30 06:31:26'),
(10, 2, 103, '2019-03-20', '1', '2019-03-28', 72, '2019-03-26', '8989', 'good', 0, 70, 80, 90, 80, 80, 809, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-30 06:51:41'),
(11, 3, 103, '2019-03-25', '2', '2019-03-27', 73, '2019-03-20', '1234567', 'yu', 0, 800, 800, 90, 500, 8, 300, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-30 07:01:23'),
(12, 2, 105, '2019-03-25', '1', '2019-03-28', 75, '2019-03-19', '900', 'ui', 0, 79, 90, 99, 60, 7, 18, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-30 07:18:11'),
(13, 4, 10, '2019-03-17', '1', '2019-03-20', 10, '2019-03-27', '1234567', 'good', 0, 700, 700, 100, 500, 7, 200, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-30 16:15:12'),
(14, 4, 11, '2019-03-05', '2', '2019-03-11', 190000, '2019-03-13', '898989`', 'nice', 0, 1000, 500, 60, 500, 5, 500, 0, 1, 1, '2019-03-30 17:21:57', 1, '2019-04-02 07:31:11', 1, NULL, NULL, NULL, '2019-03-30 16:21:57'),
(15, 2, 20, '2019-04-22', '2', '2019-04-22', 20, '2019-04-17', '787867', 'good', 0, 700, 600, 700, 600, 70, 80, 0, 1, 1, '2019-04-01 07:48:40', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-01 05:48:40'),
(16, 2, 21, '2019-04-08', '1', '2019-04-16', 21, '2019-04-25', '5874', 'yyyy', 0, 900, 900, 90, 500, 7, 400, 0, 1, 1, '2019-04-01 08:28:12', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-01 06:28:12'),
(17, 2, 35, '2019-04-16', '1', '2019-04-23', 35, '2019-04-16', '5874', 'hhhhh', 0, 10000, 800, 700, 80, 50000, 80, 0, 1, 1, '2019-04-02 07:36:40', 1, '2019-04-02 07:56:18', 1, NULL, NULL, NULL, '2019-04-02 05:36:40'),
(18, 2, 60, '2019-03-31', '1', '2019-04-02', 60, '2019-04-04', '5874', 'good', 0, 290, 320, 30, 0, 50007, 290, 0, 1, 1, '2019-04-04 17:26:46', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-04 15:26:46'),
(19, 2, 60, '2019-03-31', '1', '2019-04-02', 60, '2019-04-04', '5874', 'good', 0, 290, 320, 30, 0, 50007, 290, 0, 1, 1, '2019-04-04 17:32:25', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-04 15:32:25'),
(20, 2, 51, '2019-04-15', '1', '2019-04-23', 51, '2019-04-11', '5874', 'tyy', 0, 90, 100, 10, 0, 50000, 90, 0, 1, 1, '2019-04-04 17:56:58', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-04 15:56:58'),
(21, 3, 120, '2019-04-16', '1', '2019-04-23', 120, '2019-04-25', '5555', 'uuuuu', 0, 90, 100, 10, 0, 50000, 90, 0, 1, 1, '2019-04-04 18:26:07', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-04 16:26:07'),
(22, 2, 73, '2019-04-08', '2', '2019-04-23', 73, '2019-04-16', '5874', 'iiiiii', 0, 90, 100, 10, 0, 50000, 90, 0, 1, 1, '2019-04-04 18:37:44', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-04 16:37:44'),
(23, 2, 45, '2019-04-10', '1', '2019-04-09', 730, '2019-04-23', '5874', 'buuuu', 4, 220, 250, 30, 0, 50000, 220, 0, 1, 1, '2019-04-04 18:49:18', 1, '2019-04-05 07:35:40', 1, NULL, NULL, NULL, '2019-04-04 16:49:18'),
(24, 2, 23, '2019-04-16', '1', '2019-04-23', 24, '2019-04-10', '5874', 'very good', 7, 70, 80, 10, 0, 50000, 70, 0, 1, 1, '2019-04-05 06:22:31', 1, '2019-04-05 06:26:02', 1, NULL, NULL, NULL, '2019-04-05 04:22:31'),
(25, 4, 62, '2019-04-16', '1', '2019-04-16', 62, '2019-04-11', '5555', 'yyyy', 10, 280, 310, 30, 0, 50007, 280, 0, 1, 1, '2019-04-05 08:21:41', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-05 06:21:41'),
(26, 2, 111111, '2019-04-05', '1', '2019-04-04', 0, '2019-04-05', '5874', 'complete', 2, 20, 30, 10, 0, 50000, 20, 0, 1, 1, '2019-04-05 10:07:39', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-05 08:07:39'),
(27, 2, 111, '2019-05-14', '2', '2019-05-16', 1212, '2019-04-30', '0', ' ', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '2019-05-26 15:42:27', NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-26 13:42:27'),
(28, 1, 11, '2019-05-07', '1', '2019-05-08', 11, '2019-04-30', '5555', ' ', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '2019-05-29 11:17:40', NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-29 09:17:40'),
(29, 1, 11, '2019-05-07', '1', '2019-05-08', 11, '2019-04-30', '5555', ' ', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '2019-05-29 11:18:53', 1, NULL, NULL, NULL, NULL, NULL, '2019-05-29 09:18:53'),
(30, 1, 11, '2019-05-01', '5', '2019-05-02', 11, '2019-05-02', '5555', ' ', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '2019-05-29 11:26:03', 1, NULL, NULL, NULL, NULL, NULL, '2019-05-29 09:26:03');

-- --------------------------------------------------------

--
-- Table structure for table `makingcharges_master`
--

CREATE TABLE `makingcharges_master` (
  `makingchargesId` int(11) NOT NULL,
  `makingchargesName` varchar(200) NOT NULL,
  `makingchargesRate` int(11) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `makingcharges_master`
--

INSERT INTO `makingcharges_master` (`makingchargesId`, `makingchargesName`, `makingchargesRate`, `description`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 'ffdfd', 78855, 'hfjkfkf', 0, 1, 0, '2019-05-16 08:11:47', NULL, '2019-05-16 08:12:04', NULL, '2019-05-16 08:12:31', NULL, NULL, '2019-05-16 06:11:47'),
(2, 'dllllll', 5555, ' fdvd', 0, 1, 1, '2019-05-16 08:12:20', NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-16 06:12:20'),
(3, 'jjjj', 454, ' ,lll', 0, 1, 1, '2019-05-16 08:14:41', NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-16 06:14:41');

-- --------------------------------------------------------

--
-- Table structure for table `maritalstatus_master`
--

CREATE TABLE `maritalstatus_master` (
  `maritalstatusId` int(20) NOT NULL,
  `maritalstatus` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `maritalstatus_master`
--

INSERT INTO `maritalstatus_master` (`maritalstatusId`, `maritalstatus`) VALUES
(1, 'Married'),
(2, 'Unmarried');

-- --------------------------------------------------------

--
-- Table structure for table `mobilepaymentapp_master`
--

CREATE TABLE `mobilepaymentapp_master` (
  `mobileappId` int(11) NOT NULL,
  `mobileappName` varchar(255) CHARACTER SET latin1 NOT NULL,
  `appmobileNo` int(20) NOT NULL,
  `appstartingDate` date NOT NULL,
  `Description` varchar(255) CHARACTER SET latin1 NOT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mobilepaymentapp_master`
--

INSERT INTO `mobilepaymentapp_master` (`mobileappId`, `mobileappName`, `appmobileNo`, `appstartingDate`, `Description`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 'Google Pay', 2147483647, '2019-05-27', ' Payment Completed ', 0, 1, 1, '2019-04-27 10:11:34', 1, '2019-05-27 12:50:04', 25, NULL, NULL, NULL, '2019-04-27 08:11:34'),
(2, 'Phone Pay', 2147483647, '2019-05-26', ' Phone Pay Payments ', 0, 1, 1, '2019-05-27 12:46:16', 25, '2019-05-27 12:50:13', 25, NULL, NULL, NULL, '2019-05-27 10:46:16'),
(3, 'BHIM UPI', 2147483647, '2019-05-02', ' BHIM UPI ID ', 0, 1, 1, '2019-05-27 12:47:02', 25, '2019-05-27 12:50:22', 25, NULL, NULL, NULL, '2019-05-27 10:47:02');

-- --------------------------------------------------------

--
-- Table structure for table `openingbill_master`
--

CREATE TABLE `openingbill_master` (
  `opeaningbillId` int(11) NOT NULL,
  `opeaningbill` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `openingbill_master`
--

INSERT INTO `openingbill_master` (`opeaningbillId`, `opeaningbill`) VALUES
(1, 'Credit'),
(2, 'Debit');

-- --------------------------------------------------------

--
-- Table structure for table `opening_amount`
--

CREATE TABLE `opening_amount` (
  `openingAmountId` int(11) NOT NULL,
  `openingAmount` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `opening_amount`
--

INSERT INTO `opening_amount` (`openingAmountId`, `openingAmount`) VALUES
(1, 'Credit'),
(2, 'Debit');

-- --------------------------------------------------------

--
-- Table structure for table `paymenttype_master`
--

CREATE TABLE `paymenttype_master` (
  `paymenttypeId` int(11) NOT NULL,
  `paymentType` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `paymenttype_master`
--

INSERT INTO `paymenttype_master` (`paymenttypeId`, `paymentType`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 'Cash', 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-27 07:11:15'),
(2, 'RTGS', 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-27 07:11:30'),
(3, 'NEFT', 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-27 07:11:45'),
(4, 'Check', 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-27 07:12:06'),
(5, 'DD', 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-27 07:12:19'),
(6, 'App', 0, 1, 1, '2019-06-14 10:56:12', 1, '2019-06-14 11:06:46', 1, NULL, NULL, NULL, '2019-06-14 08:56:12');

-- --------------------------------------------------------

--
-- Table structure for table `productgroup_master`
--

CREATE TABLE `productgroup_master` (
  `productgroupId` int(50) NOT NULL,
  `productgroupName` varchar(50) DEFAULT NULL,
  `fkproductmaingroupId` int(50) DEFAULT NULL,
  `productgroupshortName` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `productgroup_master`
--

INSERT INTO `productgroup_master` (`productgroupId`, `productgroupName`, `fkproductmaingroupId`, `productgroupshortName`, `description`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 'oppo', NULL, 'p', 'good', 0, 1, 0, '2019-04-09 10:26:07', 1, NULL, NULL, '2019-04-09 10:47:47', 1, NULL, '2019-04-09 08:26:07'),
(4, 'lava', NULL, 'lv', 'awesome', 0, 1, 0, '2019-04-09 10:26:43', 1, NULL, NULL, '2019-04-09 11:21:36', 1, NULL, '2019-04-09 08:26:43'),
(5, 'samsung', NULL, 'sm', 'nice', 0, 1, 0, '2019-04-09 10:27:20', 1, NULL, NULL, '2019-04-09 12:33:23', 1, NULL, '2019-04-09 08:27:20'),
(6, 'vivo', NULL, 'vvssss', 'vv', 0, 1, 1, '2019-04-09 10:32:35', 1, '2019-04-09 12:34:55', 1, NULL, NULL, NULL, '2019-04-09 08:32:35'),
(7, 'lava', NULL, 'la', 'la', 0, 1, 1, '2019-04-09 10:48:32', 1, '2019-04-09 12:38:04', 1, NULL, NULL, NULL, '2019-04-09 08:48:32'),
(8, 'redmi', NULL, 'MIx', 'MI', 0, 1, 1, '2019-04-09 10:49:19', 1, '2019-04-09 12:43:57', 1, NULL, NULL, NULL, '2019-04-09 08:49:19'),
(9, 'sads', NULL, 'sa', 'awesome products with splendidi featrurs', 0, 1, 1, '2019-04-09 12:32:48', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-09 10:32:48'),
(10, 'xx', NULL, 'gb', 'zxzX', 0, 1, 1, '2019-04-09 12:33:08', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-09 10:33:08'),
(11, 'zxzxz', NULL, 'zxz', 'zzzzzzzzz', 0, 1, 1, '2019-04-09 12:36:38', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-09 10:36:38'),
(12, 'lkj', NULL, 'jjjjj', 'jkko', 0, 1, 1, '2019-04-09 12:47:05', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-09 10:47:05'),
(13, 'asasas', NULL, 'as', 'awesome products with splendidi featrurs', 0, 1, 1, '2019-04-09 12:49:31', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-09 10:49:31'),
(14, 'lava', NULL, 'zcz', 'awesome products with splendidi featrurs', 0, 1, 1, '2019-04-09 12:52:52', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-09 10:52:52'),
(15, 'zolo', NULL, 'zl', 'nice one', 0, 1, 1, '2019-04-11 11:58:55', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-11 09:58:55'),
(16, 'sadasd', NULL, 's', 'ssssswertyuiopuyhtgrfeda', 0, 1, 1, '2019-04-19 10:29:58', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-19 08:29:58'),
(17, 'zolo', NULL, 'zl', 'splendidi', 0, 1, 1, '2019-04-26 07:42:43', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-26 05:42:43');

-- --------------------------------------------------------

--
-- Table structure for table `productmaingroup`
--

CREATE TABLE `productmaingroup` (
  `id` int(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `shortName` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createdDttm` int(12) DEFAULT NULL,
  `createdBy` int(4) DEFAULT NULL,
  `updatedDttm` int(12) DEFAULT NULL,
  `updatedBy` int(4) DEFAULT NULL,
  `isDeleted` int(1) DEFAULT '0',
  `deletedBy` int(4) DEFAULT NULL,
  `deletedDttm` int(12) NOT NULL,
  `status` varchar(3) NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `productmaingroup`
--

INSERT INTO `productmaingroup` (`id`, `name`, `shortName`, `description`, `createdDttm`, `createdBy`, `updatedDttm`, `updatedBy`, `isDeleted`, `deletedBy`, `deletedDttm`, `status`) VALUES
(1, 'AA', 'aa', 'description', NULL, NULL, NULL, NULL, 0, NULL, 0, 'A'),
(2, 'BB', 'bb', 'description', NULL, NULL, NULL, NULL, 0, NULL, 0, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `productsubgroup`
--

CREATE TABLE `productsubgroup` (
  `productsubgroupId` int(50) NOT NULL,
  `productsubgroupName` varchar(50) DEFAULT NULL,
  `productsubgroupshortName` varchar(50) DEFAULT NULL,
  `fkproductmaingroupId` int(50) DEFAULT NULL,
  `fkproductgroupId` int(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `productsubgroup`
--

INSERT INTO `productsubgroup` (`productsubgroupId`, `productsubgroupName`, `productsubgroupshortName`, `fkproductmaingroupId`, `fkproductgroupId`, `description`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 'vivo vs', 'vs', NULL, NULL, 'ghlbijnklm', 0, 1, 1, '2019-04-12 10:28:45', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-12 08:28:45'),
(2, 'A', 'S', NULL, NULL, 'v', 0, 1, 1, '2019-04-12 10:29:14', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-12 08:29:14'),
(3, 'SS', 'S', NULL, 5, 'awesome', 0, 1, 1, '2019-04-12 10:30:41', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-12 08:30:41'),
(4, 'MKOM', 'UIUVY', NULL, 5, 'awesome products with splendidi featrurs', 0, 1, 1, '2019-04-12 10:33:39', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-12 08:33:39'),
(5, 'vs', 'vv', NULL, 6, '8768686', 0, 1, 1, '2019-04-15 09:49:27', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-15 07:49:27'),
(6, 'ss', 's', NULL, 6, 'nice', 0, 1, 1, '2019-04-15 09:52:30', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-15 07:52:30'),
(7, 'ASAsa', 'scds', NULL, 5, 'ghlbijnklm', 0, 1, 1, '2019-04-19 10:29:18', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-19 08:29:18'),
(8, 'vivo', 'vv', NULL, 6, 'awesome products with splendidi featrurs', 0, 1, 1, '2019-04-26 08:01:27', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-26 06:01:27'),
(9, 'asdsa', 'sadsa', NULL, 6, 'ghlbijnklm', 0, 1, 1, '2019-04-26 08:02:25', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-26 06:02:25'),
(10, 'qwertyu', 'qwertyui', NULL, 3, '1234567890', 0, 1, 1, '2019-04-26 08:08:55', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-26 06:08:55'),
(11, 'qwerty', 'wertyo', NULL, 6, '123456789', 0, 1, 1, '2019-04-26 08:11:37', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-26 06:11:37'),
(12, 'sdsadsd', 'sdsdsdsd', NULL, 9, '2132312', 0, 1, 1, '2019-04-26 08:13:40', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-26 06:13:40'),
(13, 'wewe', 'wew', NULL, 6, '21321', 0, 1, 1, '2019-04-26 08:16:36', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-26 06:16:36'),
(14, 'AAS', 'sas', NULL, 5, 'awesome products with splendidi featrurs', 0, 1, 1, '2019-04-26 08:35:23', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-26 06:35:23'),
(15, 'aaaa', 'a', NULL, 5, 'awesome products with splendidi featrurs', 0, 1, 1, '2019-04-26 12:41:48', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-26 10:41:48'),
(16, 'dfghjk', 'hytrewasdfghuikmngf', NULL, 4, 'awesome', 0, 1, 1, '2019-04-26 12:54:38', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-26 10:54:38'),
(17, 'werh', 'sdfghj', 9, 5, 'awesome products with splendidi featrurs', 0, 1, 1, '2019-04-26 13:00:16', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-26 11:00:16'),
(18, 'ASDF', 'ASDG', 10, 3, 'awesome products with splendidi featrurs', 0, 1, 1, '2019-05-15 08:27:40', 1, NULL, NULL, NULL, NULL, NULL, '2019-05-15 06:27:40'),
(19, 'SFDSFDFDSF', 'AAAAAAAA', 11, 5, 'ghlbijnklm', 0, 1, 1, '2019-05-15 08:28:04', 1, NULL, NULL, NULL, NULL, NULL, '2019-05-15 06:28:04'),
(20, 'sfsdfsdf', 'sdfsdfsdf', 9, 3, 'sfsdfsdfsfsfsdfsdfsdfdsfsdfsdf', 0, 1, 1, '2019-05-15 09:11:10', 1, NULL, NULL, NULL, NULL, NULL, '2019-05-15 07:11:10');

-- --------------------------------------------------------

--
-- Table structure for table `product_master`
--

CREATE TABLE `product_master` (
  `productId` int(11) NOT NULL,
  `productBarcode` varchar(200) NOT NULL,
  `productName` varchar(200) NOT NULL,
  `productshortName` varchar(50) DEFAULT NULL,
  `fkcategoryId` int(11) DEFAULT NULL,
  `fksubcategoryId` int(11) DEFAULT NULL,
  `fkcolorId` int(11) DEFAULT NULL,
  `fksizeId` int(11) DEFAULT NULL,
  `fkshapeId` int(11) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `fkhsnsacId` int(11) DEFAULT NULL,
  `fkgstId` int(11) DEFAULT NULL,
  `fkunitId` int(11) DEFAULT NULL,
  `productWeight` int(11) DEFAULT NULL,
  `productHight` int(11) DEFAULT NULL,
  `storageLocation` varchar(200) DEFAULT NULL,
  `fkwarehouseId` int(11) DEFAULT NULL,
  `openingStock` int(11) DEFAULT NULL,
  `purchaseRate` int(11) DEFAULT NULL,
  `mrpRate` int(11) DEFAULT NULL,
  `minsalesRate` int(11) DEFAULT NULL,
  `minstockLevel` int(11) DEFAULT NULL,
  `maxstockLevel` int(11) DEFAULT NULL,
  `salesRate` int(11) DEFAULT NULL,
  `fkcompanyId` int(11) DEFAULT NULL,
  `fkproductmaingroupId` int(11) DEFAULT NULL,
  `fkproductsubgroupId` int(11) DEFAULT NULL,
  `fkproductgroupId` int(11) DEFAULT NULL,
  `fkpurityId` int(11) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_master`
--

INSERT INTO `product_master` (`productId`, `productBarcode`, `productName`, `productshortName`, `fkcategoryId`, `fksubcategoryId`, `fkcolorId`, `fksizeId`, `fkshapeId`, `photo`, `fkhsnsacId`, `fkgstId`, `fkunitId`, `productWeight`, `productHight`, `storageLocation`, `fkwarehouseId`, `openingStock`, `purchaseRate`, `mrpRate`, `minsalesRate`, `minstockLevel`, `maxstockLevel`, `salesRate`, `fkcompanyId`, `fkproductmaingroupId`, `fkproductsubgroupId`, `fkproductgroupId`, `fkpurityId`, `description`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, '12', 'ring', '12', 1, 1, 2, 1, 2, '$data[0]->photo', 2, 1, 1, 122, 1212, 'kol', 1, 122, 121, 12122, 121212, 12121, 1212, 12121, 4, 10, 2, 7, 1, '      ', 0, 1, 1, '2019-06-07 07:44:56', 1, '2019-06-26 09:13:19', 1, NULL, NULL, NULL, '2019-06-07 05:44:56'),
(2, '3232', 'ring one', '3232', 1, 1, 1, 2, 2, '1617932132.jpg', 2, 2, 1, 11, 121, 'kii', 2, 212, 12, 121, 1221, 21, 21, 21, 2, 10, 4, 9, 2, ' ddd      ', 0, 1, 1, '2019-06-07 07:46:14', 1, '2019-07-04 10:31:59', 1, NULL, NULL, NULL, '2019-06-07 05:46:14'),
(3, '11', 'stone', '11', 2, 2, 2, 1, 2, '$data[0]->photo', 2, 3, 1, 11, 33, 'kop', 1, 151, 21, 212, 32, 323, 32, 32, 4, 10, 2, 7, 3, ' kok  ', 0, 1, 1, '2019-06-07 07:47:53', 1, '2019-06-26 09:16:36', 1, NULL, NULL, NULL, '2019-06-07 05:47:53'),
(4, '123456789', 'diamond', '123456789', 2, 3, 2, 2, 2, '$data[0]->photo', 1, 3, 2, 12, 10, 'kop', 1, 10000000, 100000, 10000, 40000, 1000, 1000, 40000, 5, 1, 4, 7, 1, ' 121212 ', 0, 1, 1, '2019-06-25 09:34:31', 1, '2019-06-26 09:17:16', 1, NULL, NULL, NULL, '2019-06-25 07:34:31');

-- --------------------------------------------------------

--
-- Table structure for table `purchasemain`
--

CREATE TABLE `purchasemain` (
  `purchasemainId` int(11) NOT NULL,
  `fksupplierId` int(11) DEFAULT NULL,
  `totalgrossWeight` float(18,2) DEFAULT NULL,
  `purchaseDate` date DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `totalproductnetWeight` float(18,2) DEFAULT NULL,
  `totalgstAmount` float(18,2) DEFAULT NULL,
  `totalDiscount` float(18,2) DEFAULT NULL,
  `totalQuantity` float(18,2) DEFAULT NULL,
  `purchproductAmt` float(18,2) DEFAULT NULL,
  `purchasetotprodAmt` float(18,2) DEFAULT NULL,
  `totalstoneWeight` float(18,2) DEFAULT NULL,
  `totalstoneRate` float(18,2) DEFAULT NULL,
  `totalstoneQuantity` float(18,2) DEFAULT NULL,
  `totalstoneAmount` float(18,2) DEFAULT NULL,
  `totalmakingRate` float(18,2) DEFAULT NULL,
  `totalmodeWeight` float(18,2) DEFAULT NULL,
  `totalmodeQuantity` float(18,2) DEFAULT NULL,
  `totalmodeRate` float(18,2) DEFAULT NULL,
  `totalmodeAmount` float(18,2) DEFAULT NULL,
  `totalpaidAmount` float(18,2) DEFAULT NULL,
  `finalbillAmount` float(18,2) DEFAULT NULL,
  `totalbillbalanceAmount` float(18,2) DEFAULT NULL,
  `totaloutstandingAmount` float(18,2) DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `is_on` tinyint(4) NOT NULL DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchasemain`
--

INSERT INTO `purchasemain` (`purchasemainId`, `fksupplierId`, `totalgrossWeight`, `purchaseDate`, `photo`, `totalproductnetWeight`, `totalgstAmount`, `totalDiscount`, `totalQuantity`, `purchproductAmt`, `purchasetotprodAmt`, `totalstoneWeight`, `totalstoneRate`, `totalstoneQuantity`, `totalstoneAmount`, `totalmakingRate`, `totalmodeWeight`, `totalmodeQuantity`, `totalmodeRate`, `totalmodeAmount`, `totalpaidAmount`, `finalbillAmount`, `totalbillbalanceAmount`, `totaloutstandingAmount`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 1, 1.00, '2019-07-02', NULL, 10.00, 12000.00, 1800.00, 2.00, 60000.00, 58200.00, 0.00, 0.00, 0.00, 0.00, 908.00, 0.00, 0.00, 0.00, 0.00, 100.00, 59108.00, 59008.00, 0.00, 0, 1, 1, NULL, NULL, '2019-07-01 16:11:04', 1, NULL, NULL, NULL, '2019-07-01 13:16:10');

-- --------------------------------------------------------

--
-- Table structure for table `purchasemaking`
--

CREATE TABLE `purchasemaking` (
  `purchasemakingId` int(11) NOT NULL,
  `fkpurchasemainId` int(11) DEFAULT NULL,
  `fkmakingchargesId` int(11) DEFAULT NULL,
  `makingchargesRate` float(18,2) DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchasemaking`
--

INSERT INTO `purchasemaking` (`purchasemakingId`, `fkpurchasemainId`, `fkmakingchargesId`, `makingchargesRate`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 1, 3, 454.00, 0, 1, 1, '2019-07-01 15:16:10', 1, NULL, NULL, NULL, NULL, NULL, '2019-07-01 13:16:10'),
(2, 1, 3, 454.00, 0, 1, 1, '2019-07-01 16:06:39', 1, NULL, NULL, NULL, NULL, NULL, '2019-07-01 14:06:39');

-- --------------------------------------------------------

--
-- Table structure for table `purchasemode`
--

CREATE TABLE `purchasemode` (
  `purchasemodeId` int(11) NOT NULL,
  `fkpurchasemainId` int(11) DEFAULT NULL,
  `productDescription` varchar(200) DEFAULT NULL,
  `productWeight` float(18,2) DEFAULT NULL,
  `productQuantity` float(18,2) DEFAULT NULL,
  `productRate` float(18,2) DEFAULT NULL,
  `totalAmount` float(18,2) DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchasemode`
--

INSERT INTO `purchasemode` (`purchasemodeId`, `fkpurchasemainId`, `productDescription`, `productWeight`, `productQuantity`, `productRate`, `totalAmount`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 1, 'u', 12.00, 2.00, 1.00, 24.00, 0, 1, 0, '2019-07-01 15:16:11', 1, NULL, NULL, '2019-07-01 16:11:00', 1, NULL, '2019-07-01 13:16:11');

-- --------------------------------------------------------

--
-- Table structure for table `purchasepayment`
--

CREATE TABLE `purchasepayment` (
  `purchasepaymentId` int(11) NOT NULL,
  `fkpaymenttypeId` int(11) DEFAULT NULL,
  `fkmobileappId` int(11) DEFAULT NULL,
  `transactionId` int(11) DEFAULT NULL,
  `fkpurchasemainId` int(11) DEFAULT NULL,
  `paymentAmount` float(18,2) DEFAULT NULL,
  `paidDate` date DEFAULT NULL,
  `fkbankId` int(11) DEFAULT NULL,
  `chequeNumber` int(11) DEFAULT NULL,
  `chequeDate` date DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchasepayment`
--

INSERT INTO `purchasepayment` (`purchasepaymentId`, `fkpaymenttypeId`, `fkmobileappId`, `transactionId`, `fkpurchasemainId`, `paymentAmount`, `paidDate`, `fkbankId`, `chequeNumber`, `chequeDate`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 6, 1, 1, 1, 100.00, '2019-07-08', 0, 0, '0000-00-00', 0, 1, 1, '2019-07-01 15:16:11', 1, NULL, NULL, NULL, NULL, NULL, '2019-07-01 13:16:11');

-- --------------------------------------------------------

--
-- Table structure for table `purchaseproduct`
--

CREATE TABLE `purchaseproduct` (
  `purchaseproductId` int(11) NOT NULL,
  `fkpurchasemainId` int(11) DEFAULT NULL,
  `fkproductId` int(11) DEFAULT NULL,
  `fkcategoryId` int(11) DEFAULT NULL,
  `fksubcategoryId` int(11) DEFAULT NULL,
  `productBarcode` int(11) DEFAULT NULL,
  `fkunitId` int(11) DEFAULT NULL,
  `fkproductmaingroupId` int(11) DEFAULT NULL,
  `fkproductgroupId` int(11) DEFAULT NULL,
  `fkproductsubgroupId` int(11) DEFAULT NULL,
  `fkcolorId` int(11) DEFAULT NULL,
  `fksizeId` int(11) DEFAULT NULL,
  `fkshapeId` int(11) DEFAULT NULL,
  `fkcompanyid` int(11) DEFAULT NULL,
  `fkhsnsacId` int(11) DEFAULT NULL,
  `fkgstId` int(11) DEFAULT NULL,
  `fkpurityId` int(11) DEFAULT NULL,
  `Igst` float(18,2) DEFAULT NULL,
  `Sgst` float(18,2) DEFAULT NULL,
  `Cgst` float(18,2) DEFAULT NULL,
  `Weight` float(18,2) DEFAULT NULL,
  `grossWeight` float(18,2) DEFAULT NULL,
  `netWeight` float(18,2) DEFAULT NULL,
  `rateOne` float(18,2) DEFAULT NULL,
  `rateTen` float(18,2) DEFAULT NULL,
  `Quantity` float(18,2) DEFAULT NULL,
  `productAmount` float(18,2) DEFAULT NULL,
  `totalproductAmount` float(18,2) DEFAULT NULL,
  `discountPercentage` float(18,2) DEFAULT NULL,
  `discountAmount` float(18,2) DEFAULT NULL,
  `gstAmount` float(18,2) DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchaseproduct`
--

INSERT INTO `purchaseproduct` (`purchaseproductId`, `fkpurchasemainId`, `fkproductId`, `fkcategoryId`, `fksubcategoryId`, `productBarcode`, `fkunitId`, `fkproductmaingroupId`, `fkproductgroupId`, `fkproductsubgroupId`, `fkcolorId`, `fksizeId`, `fkshapeId`, `fkcompanyid`, `fkhsnsacId`, `fkgstId`, `fkpurityId`, `Igst`, `Sgst`, `Cgst`, `Weight`, `grossWeight`, `netWeight`, `rateOne`, `rateTen`, `Quantity`, `productAmount`, `totalproductAmount`, `discountPercentage`, `discountAmount`, `gstAmount`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 1, 2, 1, 1, 3232, 1, 10, 9, 4, 1, 2, 2, 2, 2, 2, 2, 6000.00, 6000.00, 12000.00, 11.00, 1.00, 10.00, 3000.00, 30000.00, 2.00, 60000.00, 58200.00, 3.00, 1800.00, 12000.00, 0, 1, 1, '2019-07-01 15:16:10', 1, NULL, NULL, NULL, NULL, NULL, '2019-07-01 13:16:10');

-- --------------------------------------------------------

--
-- Table structure for table `purchasestone`
--

CREATE TABLE `purchasestone` (
  `purchasestoneId` int(11) NOT NULL,
  `fkpurchasemainId` int(11) DEFAULT NULL,
  `fkproductId` int(11) DEFAULT NULL,
  `stoneWeight` float(18,2) DEFAULT NULL,
  `stoneRate` float(18,2) DEFAULT NULL,
  `stoneQuantity` float(18,2) DEFAULT NULL,
  `stoneAmount` float(18,2) DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchasestone`
--

INSERT INTO `purchasestone` (`purchasestoneId`, `fkpurchasemainId`, `fkproductId`, `stoneWeight`, `stoneRate`, `stoneQuantity`, `stoneAmount`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 1, 4, 12.00, 10000.00, 1.00, 120000.00, 0, 1, 0, '2019-07-01 15:16:10', 1, NULL, NULL, '2019-07-01 16:10:33', 1, NULL, '2019-07-01 13:16:10');

-- --------------------------------------------------------

--
-- Table structure for table `purity_master`
--

CREATE TABLE `purity_master` (
  `purityId` int(11) NOT NULL,
  `purityName` varchar(200) NOT NULL,
  `description` varchar(255) NOT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purity_master`
--

INSERT INTO `purity_master` (`purityId`, `purityName`, `description`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 'twenty four', ' 44444 ', 0, 1, 1, '2019-05-15 13:23:16', NULL, '2019-06-26 09:11:44', NULL, NULL, NULL, NULL, '2019-05-15 11:23:16'),
(2, 'twenty', '  vv', 0, 1, 1, '2019-06-26 08:18:29', NULL, '2019-06-26 09:11:56', NULL, NULL, NULL, NULL, '2019-06-26 06:18:29'),
(3, 'eighteen', '  dsds', 0, 1, 1, '2019-06-26 09:12:08', NULL, '2019-07-06 07:56:03', NULL, NULL, NULL, NULL, '2019-06-26 07:12:08');

-- --------------------------------------------------------

--
-- Table structure for table `rate_master`
--

CREATE TABLE `rate_master` (
  `rateId` int(11) NOT NULL,
  `fkcategoryId` int(11) DEFAULT NULL,
  `fksubcategoryId` int(11) DEFAULT NULL,
  `fkproductId` int(11) DEFAULT NULL,
  `rateOne` int(11) DEFAULT NULL,
  `rateTen` int(11) DEFAULT NULL,
  `fkpurityId` int(11) DEFAULT NULL,
  `rateDate` date DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rate_master`
--

INSERT INTO `rate_master` (`rateId`, `fkcategoryId`, `fksubcategoryId`, `fkproductId`, `rateOne`, `rateTen`, `fkpurityId`, `rateDate`, `description`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 1, 3, 1, 100000, 400000, 1, '2019-05-21', ' kkkk   ', 0, 1, 1, '2019-05-17 09:44:20', NULL, '2019-06-28 15:06:29', NULL, NULL, NULL, NULL, '2019-07-09 07:44:20'),
(2, 1, 3, 2, 3000, 30000, 3, '2019-05-03', ' jjj jj    ', 0, 1, 1, '2019-05-19 07:52:11', NULL, '2019-06-28 15:08:03', NULL, NULL, NULL, NULL, '2019-05-19 05:52:11'),
(3, 1, 1, 3, 500, 5000, 1, '2019-05-29', ' 11 ', 0, 1, 1, '2019-06-25 11:59:49', NULL, '2019-06-26 09:21:15', NULL, NULL, NULL, NULL, '2019-06-25 09:59:49'),
(4, 2, 2, 1, 1, 2, 0, '2019-06-12', ' 11', 0, 1, 1, '2019-06-25 12:01:27', NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-25 10:01:27'),
(5, 1, 3, 4, 20, 20, 1, '2019-05-29', '  ', 0, 1, 1, '2019-06-25 12:47:29', 1, '2019-06-27 08:16:10', NULL, NULL, NULL, NULL, '2019-06-25 10:47:29'),
(6, 2, 2, 3, 1000, 100000, 0, '2019-05-29', ' fdd', 0, 1, 1, '2019-06-26 09:23:13', 1, NULL, NULL, NULL, NULL, NULL, '2019-06-26 07:23:13'),
(7, 2, 2, 3, 700, 700, 0, '2019-06-04', ' dd', 0, 1, 1, '2019-06-26 10:31:33', 1, NULL, NULL, NULL, NULL, NULL, '2019-06-26 08:31:33');

-- --------------------------------------------------------

--
-- Table structure for table `role_master`
--

CREATE TABLE `role_master` (
  `roleId` int(200) NOT NULL,
  `roleName` varchar(255) CHARACTER SET latin1 NOT NULL,
  `discription` varchar(200) CHARACTER SET latin1 NOT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role_master`
--

INSERT INTO `role_master` (`roleId`, `roleName`, `discription`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 'user', ' User work', 0, 1, 1, '2019-04-27 09:37:18', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-27 07:37:18'),
(2, 'admin', ' Handdle  The  System', 0, 1, 1, '2019-04-27 09:38:06', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-27 07:38:06');

-- --------------------------------------------------------

--
-- Table structure for table `saleproduct`
--

CREATE TABLE `saleproduct` (
  `salesproductId` int(11) NOT NULL,
  `fksalesmainId` int(11) DEFAULT NULL,
  `fkproductId` int(11) DEFAULT NULL,
  `fkcategoryId` int(11) DEFAULT NULL,
  `fksubcategoryId` int(11) DEFAULT NULL,
  `productBarcode` int(11) DEFAULT NULL,
  `fkunitId` int(11) DEFAULT NULL,
  `fkproductmaingroupId` int(11) DEFAULT NULL,
  `fkproductgroupId` int(11) DEFAULT NULL,
  `fkproductsubgroupId` int(11) DEFAULT NULL,
  `fkcolorId` int(11) DEFAULT NULL,
  `fksizeId` int(11) DEFAULT NULL,
  `fkshapeId` int(11) DEFAULT NULL,
  `fkcompanyid` int(11) DEFAULT NULL,
  `fkhsnsacId` int(11) DEFAULT NULL,
  `fkgstId` int(11) DEFAULT NULL,
  `fkpurityId` int(11) DEFAULT NULL,
  `Igst` float(18,2) DEFAULT NULL,
  `Sgst` float(18,2) DEFAULT NULL,
  `Cgst` float(18,2) DEFAULT NULL,
  `Weight` float(18,2) DEFAULT NULL,
  `grossWeight` float(18,2) DEFAULT NULL,
  `netWeight` float(18,2) DEFAULT NULL,
  `rateOne` float(18,2) DEFAULT NULL,
  `rateTen` float(18,2) DEFAULT NULL,
  `Quantity` float(18,2) DEFAULT NULL,
  `productAmount` float(18,2) DEFAULT NULL,
  `totalproductAmount` float(18,2) DEFAULT NULL,
  `discountPercentage` float(18,2) DEFAULT NULL,
  `discountAmount` float(18,2) DEFAULT NULL,
  `gstAmount` float(18,2) DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `saleproduct`
--

INSERT INTO `saleproduct` (`salesproductId`, `fksalesmainId`, `fkproductId`, `fkcategoryId`, `fksubcategoryId`, `productBarcode`, `fkunitId`, `fkproductmaingroupId`, `fkproductgroupId`, `fkproductsubgroupId`, `fkcolorId`, `fksizeId`, `fkshapeId`, `fkcompanyid`, `fkhsnsacId`, `fkgstId`, `fkpurityId`, `Igst`, `Sgst`, `Cgst`, `Weight`, `grossWeight`, `netWeight`, `rateOne`, `rateTen`, `Quantity`, `productAmount`, `totalproductAmount`, `discountPercentage`, `discountAmount`, `gstAmount`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 1, 1, 1, 1, 12, 1, 10, 7, 2, 2, 1, 2, 4, 2, 1, 1, 6.05, 6.05, 12.10, 122.00, 1.00, 121.00, 1.00, 2.00, 1.00, 1.00, 118.58, 2.00, 2.42, 12.10, 0, 1, 0, '2019-06-29 16:54:20', 1, NULL, NULL, '2019-06-29 16:58:48', 1, NULL, '2019-06-29 14:54:20'),
(2, 2, 1, 1, 1, 12, 1, 10, 7, 2, 2, 1, 2, 4, 2, 1, 1, 12.10, 12.10, 24.20, 122.00, 1.00, 121.00, 1.00, 2.00, 2.00, 2.00, 239.58, 1.00, 2.42, 24.20, 0, 1, 1, '2019-07-07 12:54:24', 1, NULL, NULL, NULL, NULL, NULL, '2019-07-07 10:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `salesmain`
--

CREATE TABLE `salesmain` (
  `salesmainId` int(11) NOT NULL,
  `fkcustomerId` int(11) DEFAULT NULL,
  `totalgrossWeight` float(18,2) DEFAULT NULL,
  `salesbillDate` date DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `totalproductnetWeight` float(18,2) DEFAULT NULL,
  `totalgstAmount` float(18,2) DEFAULT NULL,
  `totalDiscount` float(18,2) DEFAULT NULL,
  `totalQuantity` float(18,2) DEFAULT NULL,
  `salesmainproductAmount` float(18,2) DEFAULT NULL,
  `saleproductAmount` float(18,2) DEFAULT NULL,
  `totalstoneWeight` float(18,2) DEFAULT NULL,
  `totalstoneRate` float(18,2) DEFAULT NULL,
  `totalstoneQuantity` float(18,2) DEFAULT NULL,
  `totalstoneAmount` float(18,2) DEFAULT NULL,
  `totalmakingRate` float(18,2) DEFAULT NULL,
  `totalmodeWeight` float(18,2) DEFAULT NULL,
  `totalmodeQuantity` float(18,2) DEFAULT NULL,
  `totalmodeRate` float(18,2) DEFAULT NULL,
  `totalmodeAmount` float(18,2) DEFAULT NULL,
  `totalpaidAmount` float(18,2) DEFAULT NULL,
  `finalbillAmount` float(18,2) DEFAULT NULL,
  `totalbillbalanceAmount` float(18,2) DEFAULT NULL,
  `totaloutstandingAmount` float(18,2) DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `is_on` tinyint(4) NOT NULL DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salesmain`
--

INSERT INTO `salesmain` (`salesmainId`, `fkcustomerId`, `totalgrossWeight`, `salesbillDate`, `photo`, `totalproductnetWeight`, `totalgstAmount`, `totalDiscount`, `totalQuantity`, `salesmainproductAmount`, `saleproductAmount`, `totalstoneWeight`, `totalstoneRate`, `totalstoneQuantity`, `totalstoneAmount`, `totalmakingRate`, `totalmodeWeight`, `totalmodeQuantity`, `totalmodeRate`, `totalmodeAmount`, `totalpaidAmount`, `finalbillAmount`, `totalbillbalanceAmount`, `totaloutstandingAmount`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 1, 0.00, '2019-06-03', NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 11.00, 121.00, 1.00, 1331.00, 454.00, 2.00, 2.00, 1.00, 4.00, 0.00, 0.00, 0.00, 0.00, 0, 1, 1, NULL, NULL, '2019-07-01 16:07:29', 1, NULL, NULL, NULL, '2019-06-29 14:54:20'),
(2, 1, 1.00, '2019-07-02', '1459691981.jpg', 121.00, 24.20, 2.42, 2.00, 242.00, 239.58, 11.00, 121.00, 1.00, 1331.00, 454.00, 1.00, 1.00, 2.00, 2.00, 1.00, 2026.58, 2025.58, 0.00, 0, 1, 1, NULL, NULL, '2019-07-07 12:54:24', 1, NULL, NULL, NULL, '2019-07-07 10:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `salesmakingcharges`
--

CREATE TABLE `salesmakingcharges` (
  `salesmakingchargesId` int(11) NOT NULL,
  `fksalesmainId` int(11) DEFAULT NULL,
  `fkmakingchargesId` int(11) DEFAULT NULL,
  `makingchargesRate` float(18,2) DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salesmakingcharges`
--

INSERT INTO `salesmakingcharges` (`salesmakingchargesId`, `fksalesmainId`, `fkmakingchargesId`, `makingchargesRate`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 1, 3, 454.00, 0, 1, 1, '2019-06-29 16:54:20', 1, NULL, NULL, NULL, NULL, NULL, '2019-06-29 14:54:20'),
(2, 2, 3, 454.00, 0, 1, 1, '2019-07-07 12:54:24', 1, NULL, NULL, NULL, NULL, NULL, '2019-07-07 10:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `salesmodeandreplace`
--

CREATE TABLE `salesmodeandreplace` (
  `salesmodeandreplaceId` int(11) NOT NULL,
  `fksalesmainId` int(11) DEFAULT NULL,
  `productDescription` varchar(200) DEFAULT NULL,
  `productWeight` float(18,2) DEFAULT NULL,
  `productQuantity` float(18,2) DEFAULT NULL,
  `productRate` float(18,2) DEFAULT NULL,
  `totalAmount` float(18,2) DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salesmodeandreplace`
--

INSERT INTO `salesmodeandreplace` (`salesmodeandreplaceId`, `fksalesmainId`, `productDescription`, `productWeight`, `productQuantity`, `productRate`, `totalAmount`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 1, '1', 12.00, 1.00, 1.00, 12.00, 0, 1, 1, '2019-06-29 16:54:20', 1, NULL, NULL, NULL, NULL, NULL, '2019-06-29 14:54:20'),
(2, 2, 'll', 1.00, 1.00, 2.00, 2.00, 0, 1, 1, '2019-07-07 12:54:24', 1, NULL, NULL, NULL, NULL, NULL, '2019-07-07 10:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `salespayment`
--

CREATE TABLE `salespayment` (
  `salespaymentId` int(11) NOT NULL,
  `fkpaymenttypeId` int(11) DEFAULT NULL,
  `fkmobileappId` int(11) DEFAULT NULL,
  `transactionId` int(11) DEFAULT NULL,
  `fksalesmainId` int(11) DEFAULT NULL,
  `paymentAmount` float(18,2) DEFAULT NULL,
  `paidDate` date DEFAULT NULL,
  `fkbankId` int(11) DEFAULT NULL,
  `chequeNumber` int(11) DEFAULT NULL,
  `chequeDate` date DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salespayment`
--

INSERT INTO `salespayment` (`salespaymentId`, `fkpaymenttypeId`, `fkmobileappId`, `transactionId`, `fksalesmainId`, `paymentAmount`, `paidDate`, `fkbankId`, `chequeNumber`, `chequeDate`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 1, 0, 0, 1, 100.00, '2019-05-28', 0, 0, '0000-00-00', 0, 1, 1, '2019-06-29 16:54:21', 1, NULL, NULL, NULL, NULL, NULL, '2019-06-29 14:54:21'),
(2, 6, 1, 11, 2, 1.00, '2019-07-01', 0, 0, '0000-00-00', 0, 1, 1, '2019-07-07 12:54:24', 1, NULL, NULL, NULL, NULL, NULL, '2019-07-07 10:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `salesstone`
--

CREATE TABLE `salesstone` (
  `salesstoneId` int(11) NOT NULL,
  `fksalesmainId` int(11) DEFAULT NULL,
  `fkproductId` int(11) DEFAULT NULL,
  `stoneWeight` float(18,2) DEFAULT NULL,
  `stoneRate` float(18,2) DEFAULT NULL,
  `stoneQuantity` float(18,2) DEFAULT NULL,
  `stoneAmount` float(18,2) DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salesstone`
--

INSERT INTO `salesstone` (`salesstoneId`, `fksalesmainId`, `fkproductId`, `stoneWeight`, `stoneRate`, `stoneQuantity`, `stoneAmount`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 1, 2, 11.00, 121.00, 1.00, 1331.00, 0, 1, 1, '2019-06-29 16:54:20', 1, NULL, NULL, NULL, NULL, NULL, '2019-06-29 14:54:20'),
(2, 2, 2, 11.00, 121.00, 1.00, 1331.00, 0, 1, 1, '2019-07-07 12:54:24', 1, NULL, NULL, NULL, NULL, NULL, '2019-07-07 10:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `schemeenrollment_master`
--

CREATE TABLE `schemeenrollment_master` (
  `schemeenrollmentId` int(11) NOT NULL,
  `fkschemeId` int(11) DEFAULT NULL,
  `fkcustomerId` int(11) DEFAULT NULL,
  `fkinstallationtypeId` int(11) DEFAULT NULL,
  `schemeMaturity` int(11) DEFAULT NULL,
  `benefits` int(11) DEFAULT NULL,
  `schemestartDate` date DEFAULT NULL,
  `schemeendDate` date DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schemeenrollment_master`
--

INSERT INTO `schemeenrollment_master` (`schemeenrollmentId`, `fkschemeId`, `fkcustomerId`, `fkinstallationtypeId`, `schemeMaturity`, `benefits`, `schemestartDate`, `schemeendDate`, `description`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 2, 3, 2, 125, 222, '2019-05-01', '2019-05-17', ' kkk', 0, 1, 1, '2019-05-17 11:02:20', 1, NULL, NULL, NULL, NULL, NULL, '2019-05-17 09:02:20'),
(2, 3, 2, 1, 10000, 1000, '2019-05-18', '2019-09-21', ' qwe', 0, 1, 1, '2019-05-18 08:54:08', 1, NULL, NULL, NULL, NULL, NULL, '2019-05-18 06:54:08'),
(3, 3, 1, 1, 10000, 111, '2019-05-01', '2019-05-23', '  ', 0, 1, 1, '2019-05-18 10:55:54', 1, '2019-05-18 10:56:11', 1, NULL, NULL, NULL, '2019-05-18 08:55:54'),
(4, 5, 1, 1, 125, 222, '2019-12-03', '2019-12-31', ' kkk', 0, 1, 1, '2019-05-29 18:31:20', 1, NULL, NULL, NULL, NULL, NULL, '2019-05-29 16:31:20');

-- --------------------------------------------------------

--
-- Table structure for table `schemeinstallment`
--

CREATE TABLE `schemeinstallment` (
  `schemeinstallmentId` int(11) NOT NULL,
  `fkcustomerId` int(11) DEFAULT NULL,
  `fkschemeId` int(11) DEFAULT NULL,
  `fkschemeenrollmentId` int(11) DEFAULT NULL,
  `installmentDate` date DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schemeinstallment`
--

INSERT INTO `schemeinstallment` (`schemeinstallmentId`, `fkcustomerId`, `fkschemeId`, `fkschemeenrollmentId`, `installmentDate`, `Amount`, `description`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 1, 3, 3, '2019-05-28', 0, ' 11', 0, 1, 1, '2019-06-25 07:40:44', 1, NULL, NULL, NULL, NULL, NULL, '2019-06-25 05:40:44'),
(2, 1, 3, 3, '2019-06-04', 0, ' 11', 0, 1, 1, '2019-06-25 07:41:02', 1, NULL, NULL, NULL, NULL, NULL, '2019-06-25 05:41:02'),
(3, 1, 3, 3, '2019-05-08', 200, ' 100', 0, 1, 1, '2019-06-25 07:42:23', 1, NULL, NULL, NULL, NULL, NULL, '2019-06-25 05:42:23');

-- --------------------------------------------------------

--
-- Table structure for table `scheme_master`
--

CREATE TABLE `scheme_master` (
  `schemeId` int(11) NOT NULL,
  `schemeName` varchar(200) NOT NULL,
  `fkinstallationtypeId` int(11) DEFAULT NULL,
  `benefits` int(11) NOT NULL,
  `schemeMaturity` int(11) NOT NULL,
  `schemecreationDate` date DEFAULT NULL,
  `schemeendDate` date DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scheme_master`
--

INSERT INTO `scheme_master` (`schemeId`, `schemeName`, `fkinstallationtypeId`, `benefits`, `schemeMaturity`, `schemecreationDate`, `schemeendDate`, `description`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 'fgg', 1, 111, 125, '2019-05-03', NULL, ' gg', 0, 1, 0, '2019-05-17 08:58:02', NULL, NULL, NULL, '2019-05-17 09:01:06', NULL, NULL, '2019-05-17 06:58:02'),
(2, 'rrrr', 3, 222, 222, '2019-05-04', NULL, 'kkk', 0, 1, 1, '2019-05-17 09:01:28', NULL, '2019-05-17 09:34:49', NULL, NULL, NULL, NULL, '2019-05-17 07:01:28'),
(3, 'fdfd', 1, 111, 10000, '2019-05-15', '2019-05-09', ' fdf', 0, 1, 1, '2019-05-28 09:41:49', NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-28 07:41:49'),
(4, 'try', 2, 222, 125, '2019-06-05', '2019-06-14', ' ', 0, 1, 1, '2019-06-01 06:43:54', NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-01 04:43:54'),
(5, 'ksk', 2, 111, 10000, '2019-06-05', '2019-06-08', ' dsc', 0, 1, 1, '2019-06-01 06:44:33', NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-01 04:44:33');

-- --------------------------------------------------------

--
-- Table structure for table `shape_master`
--

CREATE TABLE `shape_master` (
  `shapeId` int(11) NOT NULL,
  `shapeName` varchar(200) NOT NULL,
  `description` varchar(255) NOT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shape_master`
--

INSERT INTO `shape_master` (`shapeId`, `shapeName`, `description`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 'jsjsddh', ' dfddfdf', 0, 1, 0, '2019-05-16 07:33:58', NULL, NULL, NULL, '2019-05-16 07:34:29', NULL, NULL, '2019-05-16 05:33:58'),
(2, 'kjkaa', ' xzxzx', 0, 1, 1, '2019-05-16 07:34:22', NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-16 05:34:22');

-- --------------------------------------------------------

--
-- Table structure for table `size_master`
--

CREATE TABLE `size_master` (
  `sizeId` int(11) NOT NULL,
  `sizeName` varchar(200) NOT NULL,
  `description` varchar(255) NOT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `size_master`
--

INSERT INTO `size_master` (`sizeId`, `sizeName`, `description`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 'dfd', '  32323', 0, 1, 1, '2019-05-28 08:37:37', 1, '2019-07-06 10:26:58', 31, NULL, NULL, NULL, '2019-05-28 06:37:37'),
(2, 'trr', '  21212', 0, 1, 1, '2019-05-28 08:37:45', 1, '2019-07-06 10:26:19', 31, NULL, NULL, NULL, '2019-05-28 06:37:45');

-- --------------------------------------------------------

--
-- Table structure for table `state_master`
--

CREATE TABLE `state_master` (
  `stateId` bigint(20) NOT NULL,
  `stateName` varchar(50) NOT NULL,
  `shortName` varchar(50) NOT NULL,
  `stateCode` int(10) NOT NULL,
  `fkcountryId` bigint(10) DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `state_master`
--

INSERT INTO `state_master` (`stateId`, `stateName`, `shortName`, `stateCode`, `fkcountryId`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 'Maharashtra', 'MAH', 1, 1, 0, 1, 1, '2019-04-27 06:50:58', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-27 04:50:58'),
(2, 'Gujrat', 'Gj', 414, 1, 0, 1, 1, '2019-07-09 11:23:33', 31, NULL, NULL, NULL, NULL, NULL, '2019-07-09 09:23:33'),
(3, 'yorkshire', 'yorkshire', 112, 4, 0, 1, 1, '2019-07-10 08:35:01', NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-10 06:35:01');

-- --------------------------------------------------------

--
-- Table structure for table `stockinitem`
--

CREATE TABLE `stockinitem` (
  `stockInItemId` int(50) NOT NULL,
  `fkmainstockinId` int(50) DEFAULT NULL,
  `fkoilstockinId` int(50) NOT NULL,
  `itemId` int(50) DEFAULT NULL,
  `quantity` int(50) DEFAULT NULL,
  `rate` int(50) DEFAULT NULL,
  `mrp` int(50) DEFAULT NULL,
  `vat` int(50) DEFAULT NULL,
  `salesTax` int(50) DEFAULT NULL,
  `serviceTax` int(50) DEFAULT NULL,
  `totalAmount` int(60) NOT NULL,
  `netTotal` int(60) NOT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stockinitem`
--

INSERT INTO `stockinitem` (`stockInItemId`, `fkmainstockinId`, `fkoilstockinId`, `itemId`, `quantity`, `rate`, `mrp`, `vat`, `salesTax`, `serviceTax`, `totalAmount`, `netTotal`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 52, 0, 1, 2, 79, 80, 10, 10, 3, 158, 261, 0, 1, 1, '2019-06-21 13:47:54', 1, NULL, NULL, '2019-06-21 13:52:12', 1, NULL, '2019-06-21 11:47:54');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory_master`
--

CREATE TABLE `subcategory_master` (
  `subcategoryId` int(11) NOT NULL,
  `subcategoryName` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fkcategoryId` int(11) DEFAULT NULL,
  `description` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subcategory_master`
--

INSERT INTO `subcategory_master` (`subcategoryId`, `subcategoryName`, `fkcategoryId`, `description`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 'gold', 1, ' ccc ', 0, 1, 1, '2019-05-15 15:14:33', 1, '2019-06-26 09:10:45', 1, NULL, NULL, NULL, '2019-05-15 13:14:33'),
(2, 'bentex', 2, ' fvcvc  ', 0, 1, 1, '2019-05-16 06:47:06', 1, '2019-06-26 09:11:14', 1, NULL, NULL, NULL, '2019-05-16 04:47:06'),
(3, 'silver', 1, ' ff', 0, 1, 1, '2019-06-26 09:11:02', 1, NULL, NULL, NULL, NULL, NULL, '2019-06-26 07:11:02');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_master`
--

CREATE TABLE `supplier_master` (
  `supplierId` int(11) NOT NULL,
  `supplierName` varchar(200) DEFAULT NULL,
  `suppliermarathiName` varchar(200) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `primaryMobile` int(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `fkcountryId` int(11) DEFAULT NULL,
  `fkstateId` int(11) DEFAULT NULL,
  `fkdistrictId` int(11) DEFAULT NULL,
  `fktalukaId` int(11) DEFAULT NULL,
  `fkvillageId` int(11) DEFAULT NULL,
  `pinCode` int(11) DEFAULT NULL,
  `fkgenderId` varchar(20) DEFAULT NULL,
  `secondaryMobile` int(20) DEFAULT NULL,
  `suppliergstNumber` int(11) DEFAULT NULL,
  `openingAmount` int(11) DEFAULT NULL,
  `fkopeningAmountId` int(200) NOT NULL,
  `phoneNumber` int(20) DEFAULT NULL,
  `contactPerson` varchar(200) NOT NULL,
  `creditLimit` int(11) DEFAULT NULL,
  `birthDate` date DEFAULT NULL,
  `photo` varchar(200) NOT NULL,
  `fkcustomercategoriesId` int(11) NOT NULL,
  `sendSms` varchar(50) DEFAULT NULL,
  `registrationDate` date NOT NULL,
  `sendwhatsappSms` int(4) DEFAULT NULL,
  `fkusertypeId` int(20) NOT NULL,
  `pancardNumber` varchar(20) NOT NULL,
  `adharcardNumber` int(20) NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `is_on` tinyint(4) NOT NULL DEFAULT '1',
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_master`
--

INSERT INTO `supplier_master` (`supplierId`, `supplierName`, `suppliermarathiName`, `address`, `primaryMobile`, `email`, `fkcountryId`, `fkstateId`, `fkdistrictId`, `fktalukaId`, `fkvillageId`, `pinCode`, `fkgenderId`, `secondaryMobile`, `suppliergstNumber`, `openingAmount`, `fkopeningAmountId`, `phoneNumber`, `contactPerson`, `creditLimit`, `birthDate`, `photo`, `fkcustomercategoriesId`, `sendSms`, `registrationDate`, `sendwhatsappSms`, `fkusertypeId`, `pancardNumber`, `adharcardNumber`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, ' Akash lohar ', 'आकाश लोहार ', 'kolhapur  ', 2147483647, 'akashlohar095@gmail.com', 1, 0, 0, 0, 0, 1234, '1', 2147483647, 123456, 123456, 1, 2147483647, '1234567', 10000, '1995-07-14', '7550.jpg', 9, '0', '2019-05-16', 0, 2, '35435gsg', 45435546, 0, 1, 1, '2019-05-16 11:13:52', 1, '2019-07-06 14:54:08', NULL, NULL, NULL, NULL, '2019-05-16 09:13:52'),
(2, 'Trushant Ghatage', 'तृशांत घाटगे ', 'kolhapur  ', 2147483647, 'trushant@gmail.com', 1, 1, 1, 1, 1, 123456, '1', 2147483647, 123456, 321654, 2, 2147483647, '15414', 3456, '1993-07-04', '22400.jpg', 9, '0', '2019-05-27', 0, 2, '7jg u5465', 2147483647, 0, 1, 1, '2019-05-27 10:47:55', 25, '2019-05-29 05:40:21', 25, NULL, NULL, NULL, '2019-05-27 08:47:55'),
(3, 'Babasaheb desai', 'बाबासाहेब देसाई ', ' Hanamtwadi', 2147483647, 'babasahebdesai27@gmail.com', 1, 1, 1, 1, 1, 416504, '1', 2147483647, 12345, 50000, 1, 2147483647, 'sagduhagv', 50000, '1995-08-27', '32286.jpg', 9, '1', '2019-06-21', 1, 2, 'ahajfbjdv5645', 44848454, 0, 1, 1, '2019-06-21 14:02:32', 25, NULL, NULL, NULL, NULL, NULL, '2019-06-21 12:02:32');

-- --------------------------------------------------------

--
-- Table structure for table `taluka_master`
--

CREATE TABLE `taluka_master` (
  `talukaId` bigint(20) NOT NULL,
  `talukaName` varchar(255) CHARACTER SET latin1 NOT NULL,
  `talukashortName` varchar(50) CHARACTER SET latin1 NOT NULL,
  `talukaCode` int(50) NOT NULL,
  `fkcountryId` bigint(20) NOT NULL,
  `fkstateId` bigint(20) NOT NULL,
  `fkdistrictId` bigint(20) NOT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `taluka_master`
--

INSERT INTO `taluka_master` (`talukaId`, `talukaName`, `talukashortName`, `talukaCode`, `fkcountryId`, `fkstateId`, `fkdistrictId`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 'Gadhinglaj', '', 0, 1, 1, 1, 0, 1, 0, '2019-04-27 06:58:40', 1, NULL, NULL, '2019-05-16 07:52:52', NULL, NULL, '2019-04-27 04:58:40'),
(2, 'karveer', 'karveer', 10, 1, 1, 1, 0, 1, 1, '2019-05-16 07:52:41', NULL, '2019-07-10 09:13:14', NULL, NULL, NULL, NULL, '2019-05-16 05:52:41'),
(3, 'karveer', 'karveer', 1, 1, 1, 1, 0, 1, 1, '2019-07-06 14:59:58', NULL, '2019-07-06 15:03:35', NULL, NULL, NULL, NULL, '2019-07-06 12:59:58');

-- --------------------------------------------------------

--
-- Table structure for table `unit_master`
--

CREATE TABLE `unit_master` (
  `UnitId` bigint(255) NOT NULL,
  `UnitName` varchar(255) NOT NULL,
  `ShortName` varchar(50) NOT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `unit_master`
--

INSERT INTO `unit_master` (`UnitId`, `UnitName`, `ShortName`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, '1 gm', 'fdf', 0, 1, 1, '2019-05-28 08:38:58', NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-28 06:38:58'),
(9223372036854775807, '10 gm', 'cx', 0, 1, 1, '2019-05-28 08:39:07', NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-28 06:39:07');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration_master`
--

CREATE TABLE `userregistration_master` (
  `userregistrationId` int(20) NOT NULL,
  `fkusertypeId` int(20) NOT NULL,
  `fkcustomerId` int(20) DEFAULT NULL,
  `fksupplierId` int(20) DEFAULT NULL,
  `fkempId` int(20) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobileNumber` int(20) DEFAULT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `sendSms` varchar(20) DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration_master`
--

INSERT INTO `userregistration_master` (`userregistrationId`, `fkusertypeId`, `fkcustomerId`, `fksupplierId`, `fkempId`, `photo`, `email`, `mobileNumber`, `userName`, `password`, `sendSms`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 4, NULL, NULL, 1, '1069989001.png', 'comtranse@gmail.com', 2147483647, 'admin', 'XTsGZAU4UWwAaA==', '1', 0, 1, 1, '2019-05-22 07:38:31', 5, '2022-05-07 06:55:21', 1, '2019-05-27 12:26:32', 25, NULL, '2019-05-22 05:38:31'),
(24, 1, 2, 1, 1, '27239.jpg', 'babasahebdesai27@gmail.com', 955227774, 'comtranse1', '12345', '1', 0, 1, 0, '2019-05-22 07:39:49', 5, NULL, NULL, '2019-07-04 07:32:55', 26, NULL, '2019-05-22 05:39:49'),
(25, 3, 3, 1, 1, '2043481383.png', 'babasahebdesai27@gmail.com', 955227774, 'comtranse3', '8S+t1zVemufDhlGot+fE5gQQUjhfpBH/sHYFH/4s/DR60hf4oqeCpehmvDr1gRA3vpst5mc4axpU8RiBgUqS1GrSuUtIIkEguylMqM5+gjmyHRHgwf3EaRnjVvkeHEFauEH4GRRV4c0DCMWUglmEiBR0CceP0ii7N/KYQb4lO96m9ZQ9dMkGYXgUXgE2Ckmvqvp4q3Vcj0nPPwgLXtGw+cVNOAqgNWXBzRxRDyRZFOqJUv2E/EPKUlDeQTSEdf0CDzu+6Enb3Zn1PV5g6/XwlDnLcic5ie+E2WqmnEHEs7td0LLydkCI9CGF1lDyMxMuNQflvJ39sUX98nMqoj7cJgGtN5Q+0VV+dx1Mn130gSsQcU0aCDTxrzk+5eSx6GCYtZfALcZJ8hLFicb/BpEko21HmGZM6YSoce14/pWFGmB4Je7O2571lS60Fy1/GNQ0WmTlQxTnVXjaibEvWLEHiB823QEV7NEmH8lgiXikQUwhZbItcCj8', '0', 0, 1, 1, '2019-05-25 12:58:51', 24, '2019-07-12 15:27:22', 31, NULL, NULL, NULL, '2019-05-25 10:58:51'),
(31, 3, 3, 3, 2, '2033211663.png', 'babasahebdesai27@gmail.com', 1, 'comtranse', 'mhrvdwGeAfgxakEPog7RlOyxMKuiP7ReVgAHwrLQzQaQVOjX4aoAP/ZiA4KIYDyULXeXjJjzih1yaIEt7ABS0zPktTSYHSh/oyuWZ8lOxUTmhyIJujRst2Qp0NI/RSu/OMdz0DSdf1oyrsGF0zsAt1BWyaoeF6mRgGi6jXJdMN8=', '1', 0, 1, 1, '2019-07-05 07:39:36', NULL, '2019-07-13 18:24:57', 34, NULL, NULL, NULL, '2019-07-05 05:39:36'),
(32, 3, 3, 3, 3, '1955295803.jpg', '', 0, 'trushant', 'TNFNEqyfomI8PkOBJlgVvjmCGKiI+RguviYoSlbe1jyGKQqSA5w6LsyKIKSjOyHHX4ldx8GJb77FUeg8rZ7znA==', '1', 0, 1, 1, '2019-07-05 09:03:54', NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-05 07:03:54'),
(33, 3, 2, 2, 5, '291337497.png', '', 0, 'harsh', 'Bvs9ksbHQC50Spxf9oDiSoYj6KNxxhV1X6EMIDDxOA7zLlj1cY+mMVfoLmTlq+hc2pLlLeenOOgVuyij7W24/w==', '1', 0, 1, 1, '2019-07-12 07:14:58', NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-12 05:14:58'),
(34, 1, 0, 0, 0, '1159532057.', '', 0, 'comtranse', 'uVH7fIh1CpvFVlJku0VO/rrfOxZD90EWpgubHaQuohsGgKqIysyJIckitNG8Yz1seQnvIXsQG9+eu8elBYU57Q==', NULL, 0, 1, 0, '2019-07-12 15:47:21', 31, NULL, NULL, '2019-07-12 15:48:16', 31, NULL, '2019-07-12 13:47:21');

-- --------------------------------------------------------

--
-- Table structure for table `usertype_master`
--

CREATE TABLE `usertype_master` (
  `usertypeId` int(20) NOT NULL,
  `usertypeName` varchar(50) NOT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertype_master`
--

INSERT INTO `usertype_master` (`usertypeId`, `usertypeName`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 'Customer', 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-04 10:31:36'),
(2, 'Supplier', 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-04 10:31:48'),
(3, 'Employee', 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-04 10:32:05'),
(4, 'Admin', 0, 1, 1, '2019-05-08 12:17:49', 1, '2019-05-08 12:18:01', 1, NULL, NULL, NULL, '2019-05-08 10:17:49'),
(5, 'Azsxdcfghjkl;', 0, 1, 0, '2019-05-08 12:21:12', 1, NULL, NULL, '2019-05-08 12:21:20', 1, NULL, '2019-05-08 10:21:12');

-- --------------------------------------------------------

--
-- Table structure for table `user_access`
--

CREATE TABLE `user_access` (
  `useraccessId` bigint(50) NOT NULL,
  `fkuserregistrationId` int(11) DEFAULT NULL,
  `useracessForm` varchar(255) DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_access`
--

INSERT INTO `user_access` (`useraccessId`, `fkuserregistrationId`, `useracessForm`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 26, '2,4,5', 0, 1, 1, '2019-07-02 14:27:05', 1, '2019-07-02 15:46:22', 1, NULL, NULL, NULL, '2019-07-02 12:27:05'),
(2, 1, '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63', 0, 1, 1, '2019-07-03 09:55:59', 1, '2022-05-07 06:51:38', NULL, NULL, NULL, NULL, '2019-07-03 07:55:59'),
(3, 25, '3,5', 0, 1, 1, '2019-07-04 16:12:10', 1, NULL, NULL, NULL, NULL, NULL, '2019-07-04 14:12:10'),
(4, 27, '3,4', 0, 1, 1, '2019-07-04 16:16:28', 1, NULL, NULL, NULL, NULL, NULL, '2019-07-04 14:16:28'),
(5, 31, '3,4,5', 0, 1, 1, '2019-07-05 08:29:18', 1, NULL, NULL, NULL, NULL, NULL, '2019-07-05 06:29:18'),
(6, 32, '4,5', 0, 1, 1, '2019-07-05 09:04:29', 1, '2019-07-05 09:36:47', 1, NULL, NULL, NULL, '2019-07-05 07:04:29'),
(7, 33, '1,2,3,4,5', 0, 1, 1, '2019-07-12 07:15:27', 1, NULL, NULL, NULL, NULL, NULL, '2019-07-12 05:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_master`
--

CREATE TABLE `vehicle_master` (
  `vehicleserialId` int(11) NOT NULL,
  `fkcustomerId` varchar(200) NOT NULL,
  `vehicleNumber` varchar(50) NOT NULL,
  `vehicleDescription` varchar(255) NOT NULL,
  `driverName` varchar(255) NOT NULL,
  `is_default` int(4) DEFAULT '0',
  `is_on` int(4) DEFAULT '1',
  `is_active` int(4) DEFAULT '1',
  `created_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vehicle_master`
--

INSERT INTO `vehicle_master` (`vehicleserialId`, `fkcustomerId`, `vehicleNumber`, `vehicleDescription`, `driverName`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, '15', '0', 'lllllkklkl', 'Vaibhav,Akash', 0, 1, 1, '2019-02-26', 1, NULL, NULL, NULL, NULL, NULL, '2019-02-26 09:04:38'),
(2, '17', '0', 'Discover', 'Vaibhav', 0, 1, 1, '2019-02-26', 1, NULL, NULL, NULL, NULL, NULL, '2019-02-26 09:05:56'),
(3, '16', '0', 'Splender', 'Vaibhav', 0, 1, 1, '2019-03-07', 1, NULL, NULL, NULL, NULL, NULL, '2019-03-07 04:31:42'),
(4, '17', '0', 'lllllkklkl', 'Vaibhav', 0, 1, 1, '2019-03-07', 1, NULL, NULL, NULL, NULL, NULL, '2019-03-07 05:19:25'),
(5, '15', 'MH 09 ET 3115', 'Splender', 'Vaibhav', 0, 1, 1, '2019-03-07', 1, NULL, NULL, NULL, NULL, NULL, '2019-03-07 10:59:29'),
(6, '15', 'MH 09 ET 3115', 'splender', 'Vaibhav,Akash', 0, 1, 1, '2019-03-07', 1, NULL, NULL, NULL, NULL, NULL, '2019-03-07 11:01:02'),
(7, '6', 'MH 09 DU 5512', 'qqqqqqqq', 'Vaibhav', 0, 1, 1, '2019-04-17', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-17 09:35:08'),
(8, '6', 'MH 09 DU 7331', 'qwe', 'we', 0, 1, 1, '2019-04-17', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-17 09:35:38'),
(9, '1', 'MH 09 DW 2169', 'Two Wheeler.', 'Sonal Kumbhar', 0, 1, 1, '2019-04-27', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-27 06:39:42'),
(10, '1', 'MH 09 DU 7331', 'Tractor And Trailer', 'Vaibhav Shiudkar', 0, 1, 1, '2019-04-27', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-27 06:40:58');

-- --------------------------------------------------------

--
-- Table structure for table `village_master`
--

CREATE TABLE `village_master` (
  `villageId` bigint(20) NOT NULL,
  `villageName` varchar(255) CHARACTER SET latin1 NOT NULL,
  `shortName` varchar(50) CHARACTER SET latin1 NOT NULL,
  `villageCode` int(20) NOT NULL,
  `fkcountryId` int(255) NOT NULL,
  `fkstateId` varchar(255) CHARACTER SET latin1 NOT NULL,
  `fkdistrictId` varchar(255) CHARACTER SET latin1 NOT NULL,
  `fktalukaId` varchar(255) CHARACTER SET latin1 NOT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `village_master`
--

INSERT INTO `village_master` (`villageId`, `villageName`, `shortName`, `villageCode`, `fkcountryId`, `fkstateId`, `fkdistrictId`, `fktalukaId`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 'ddd', 'dssd', 12212, 1, '1', '1', '1', 0, 1, 1, '2019-05-11 11:44:11', 1, NULL, NULL, NULL, NULL, NULL, '2019-05-11 09:44:11'),
(2, 'valiwade', 'val', 416119, 1, '1', '1', '1', 0, 1, 1, '2019-05-16 07:51:56', NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-16 05:51:56');

-- --------------------------------------------------------

--
-- Table structure for table `voucherpayment_master`
--

CREATE TABLE `voucherpayment_master` (
  `voucherId` int(50) NOT NULL,
  `receiptDate` date DEFAULT NULL,
  `fkaccountId` int(50) DEFAULT NULL,
  `fkshiftId` int(20) DEFAULT NULL,
  `fkempId` int(20) DEFAULT NULL,
  `shiftDate` date DEFAULT NULL,
  `ammount` int(50) DEFAULT NULL,
  `fkpaymenttypeId` int(50) DEFAULT NULL,
  `fkbankId` int(50) DEFAULT NULL,
  `chequeNumber` varchar(200) DEFAULT NULL,
  `chequeDate` date DEFAULT NULL,
  `paymentsDetails` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `last_changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `voucherpayment_master`
--

INSERT INTO `voucherpayment_master` (`voucherId`, `receiptDate`, `fkaccountId`, `fkshiftId`, `fkempId`, `shiftDate`, `ammount`, `fkpaymenttypeId`, `fkbankId`, `chequeNumber`, `chequeDate`, `paymentsDetails`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, '2019-04-27', 1, 1, 2, '2019-04-19', 1000, 1, 1, NULL, NULL, '  Voucher Payment  received by Cash', 0, 1, 1, '2019-04-27 10:26:52', 1, NULL, NULL, NULL, NULL, NULL, '2019-04-27 08:26:52'),
(2, '2019-05-09', 1, 1, 2, '2019-04-19', 2000, 1, 1, NULL, NULL, '  ', 0, 1, 1, '2019-05-09 11:42:36', 1, NULL, NULL, NULL, NULL, NULL, '2019-05-09 09:42:36'),
(3, '2019-05-07', 1, 0, 0, '0000-00-00', 1000, 1, 1, NULL, NULL, '  234567sdfghjkl;', 0, 1, 1, '2019-05-14 12:48:02', 5, NULL, NULL, NULL, NULL, NULL, '2019-05-14 10:48:02'),
(4, '2019-05-14', 1, NULL, NULL, NULL, 1000, 1, 1, NULL, NULL, '  wertyuio', 0, 1, 1, '2019-05-14 12:51:03', 5, NULL, NULL, NULL, NULL, NULL, '2019-05-14 10:51:03'),
(5, '2019-05-14', 1, NULL, NULL, NULL, 1000, 2, 1, '65bg', '2019-05-14', '  fyoy 6r', 0, 1, 1, '2019-05-14 12:52:16', 5, NULL, NULL, NULL, NULL, NULL, '2019-05-14 10:52:16'),
(6, '2019-05-17', 1, NULL, 1, '2019-05-17', 100, 1, 1, NULL, NULL, '   qwertyuiopasdfghjkl;zxcvbnm, ', 0, 1, 1, '2019-05-17 12:29:48', 5, '2019-05-29 06:53:23', 25, NULL, NULL, NULL, '2019-05-17 10:29:48'),
(7, '2019-05-09', 1, NULL, 1, '2019-05-07', 12345, 1, 1, NULL, NULL, '   qwerjk. ', 0, 1, 1, '2019-05-17 12:33:14', 5, '2019-05-29 06:55:53', 25, NULL, NULL, NULL, '2019-05-17 10:33:14'),
(8, '2019-05-18', 1, NULL, 1, '2019-05-18', 200, 1, 1, NULL, NULL, '   Voucer ', 0, 1, 1, '2019-05-18 09:21:19', 5, '2019-05-29 07:09:40', 25, NULL, NULL, NULL, '2019-05-18 07:21:19'),
(9, '2019-05-27', 1, NULL, 3, '2019-05-27', 10, 1, 1, NULL, NULL, '  asdfghjkl', 0, 1, 1, '2019-05-27 13:29:05', 25, NULL, NULL, NULL, NULL, NULL, '2019-05-27 11:29:05'),
(10, '2019-05-29', 1, NULL, 1, '2019-05-29', 123, 1, NULL, NULL, NULL, '  ASDFGHJKL', 0, 1, 1, '2019-05-29 07:36:09', 25, NULL, NULL, NULL, NULL, NULL, '2019-05-29 05:36:09'),
(11, '2019-05-31', 1, NULL, 2, '2019-05-31', 100, 1, NULL, NULL, NULL, '   ewFF245TWETF ', 0, 1, 1, '2019-05-31 07:58:32', 25, '2019-05-31 07:58:49', 25, NULL, NULL, NULL, '2019-05-31 05:58:32'),
(12, '2019-05-24', 1, NULL, 3, '2019-05-31', 120, 1, NULL, NULL, NULL, '    Bhghsvf  ', 0, 1, 1, '2019-05-31 08:02:36', 25, '2019-05-31 08:03:25', 25, NULL, NULL, NULL, '2019-05-31 06:02:36');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_master`
--

CREATE TABLE `warehouse_master` (
  `warehouseId` int(11) NOT NULL,
  `warehouseName` varchar(200) NOT NULL,
  `description` varchar(255) NOT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `is_on` tinyint(4) DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `delete_remark` varchar(200) DEFAULT NULL,
  `last_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `warehouse_master`
--

INSERT INTO `warehouse_master` (`warehouseId`, `warehouseName`, `description`, `is_default`, `is_on`, `is_active`, `created_date`, `created_by`, `modified_date`, `modified_by`, `deleted_date`, `deleted_by`, `delete_remark`, `last_changed`) VALUES
(1, 'fdfd', ' xcx', 0, 1, 1, '2019-05-28 08:41:14', NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-28 06:41:14'),
(2, 'vcvv', ' vcv', 0, 1, 1, '2019-05-28 08:41:23', NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-28 06:41:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_master`
--
ALTER TABLE `account_master`
  ADD PRIMARY KEY (`accountId`);

--
-- Indexes for table `productmaingroup`
--
ALTER TABLE `productmaingroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration_master`
--
ALTER TABLE `userregistration_master`
  ADD PRIMARY KEY (`userregistrationId`);

--
-- Indexes for table `usertype_master`
--
ALTER TABLE `usertype_master`
  ADD PRIMARY KEY (`usertypeId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `userregistration_master`
--
ALTER TABLE `userregistration_master`
  MODIFY `userregistrationId` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `usertype_master`
--
ALTER TABLE `usertype_master`
  MODIFY `usertypeId` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
