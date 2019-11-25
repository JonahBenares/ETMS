-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2019 at 02:39 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_etms_testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `asset_series`
--

CREATE TABLE IF NOT EXISTS `asset_series` (
`asset_id` int(11) NOT NULL,
  `subcat_prefix` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `series` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=660 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_series`
--

INSERT INTO `asset_series` (`asset_id`, `subcat_prefix`, `location`, `series`) VALUES
(1, 'FFE- COMP', 'CPGC', 1123),
(2, 'FFE-EQU', 'CPGC', 1009),
(3, 'TE-MT', 'CPGC', 1001),
(4, 'TE-EIC', 'CPGC', 1008),
(5, 'FFE-FUR', 'CPGC', 1028),
(6, 'TE-CT', 'CPGC', 1021),
(653, 'FFE-FUR', 'CPGC', 1029),
(654, 'FFE-TRA', 'CPGC', 1001),
(655, 'FFE-TRA', 'CPGC', 1002),
(656, 'FFE-TRA', 'CPGC', 1003),
(657, 'FFE-TRA', 'CPGC', 1002),
(658, 'FFE-TRA', 'CPGC', 1003),
(659, 'FFE-TRA', 'CPGC', 1004);

-- --------------------------------------------------------

--
-- Table structure for table `atf_series`
--

CREATE TABLE IF NOT EXISTS `atf_series` (
`atf_id` int(11) NOT NULL,
  `atf_prefix` varchar(255) DEFAULT NULL,
  `series` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `atf_series`
--

INSERT INTO `atf_series` (`atf_id`, `atf_prefix`, `series`) VALUES
(1, 'CPGC-2019', 1001),
(2, 'CPGC-2019', 1002),
(3, 'CPGC-2019', 1003);

-- --------------------------------------------------------

--
-- Table structure for table `borrow_details`
--

CREATE TABLE IF NOT EXISTS `borrow_details` (
`bd_id` int(11) NOT NULL,
  `bh_id` int(11) NOT NULL DEFAULT '0',
  `et_id` int(11) NOT NULL DEFAULT '0',
  `ed_id` int(11) NOT NULL DEFAULT '0',
  `qty` int(11) NOT NULL DEFAULT '0',
  `returned` int(11) NOT NULL DEFAULT '0',
  `returned_date` varchar(20) DEFAULT NULL,
  `returned_by` int(11) NOT NULL DEFAULT '0',
  `return_qty` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrow_details`
--

INSERT INTO `borrow_details` (`bd_id`, `bh_id`, `et_id`, `ed_id`, `qty`, `returned`, `returned_date`, `returned_by`, `return_qty`) VALUES
(1, 1, 2, 1, 1, 1, '2019-11-14 06:28:58', 27, '1.00'),
(2, 1, 235, 164, 1, 1, '2019-10-17 02:31:18', 5, '1.00'),
(3, 1, 236, 172, 1, 1, '2019-10-17 02:31:18', 5, '1.00'),
(4, 1, 165, 213, 1, 1, '2019-10-17 02:31:19', 5, '1.00'),
(5, 1, 165, 213, 1, 1, '2019-10-17 02:31:19', 5, '1.00'),
(6, 1, 2, 1, 1, 1, '2019-11-14 06:28:58', 27, '1.00'),
(7, 1, 131, 164, 1, 1, '2019-10-17 02:31:19', 5, '1.00'),
(8, 1, 138, 172, 1, 1, '2019-11-12 13:23:14', 19, '1.00'),
(9, 1, 165, 213, 1, 1, '2019-10-17 02:31:19', 5, '1.00'),
(10, 2, 238, 274, 1, 1, '2019-10-31 05:06:05', 63, '1.00'),
(11, 4, 32, 61, 1, 1, '2019-10-21 09:15:40', 39, '1.00'),
(12, 5, 53, 81, 1, 1, '2019-10-22 19:38:26', 3, '1.00'),
(13, 6, 276, 28, 1, 1, '2019-10-25 15:46:23', 45, '1.00'),
(14, 7, 2, 1, 1, 1, '2019-11-14 06:28:58', 27, '1.00'),
(15, 7, 277, 2, 1, 1, '2019-10-25 15:47:43', 22, '1.00'),
(16, 8, 45, 73, 1, 1, '2019-10-28 16:02:57', 39, '1.00'),
(17, 9, 18, 47, 1, 1, '2019-10-29 11:55:55', 3, '1.00'),
(18, 9, 2, 1, 1, 1, '2019-11-14 06:28:58', 27, '1.00'),
(19, 10, 33, 62, 1, 1, '2019-10-29 11:58:02', 5, '1.00'),
(20, 10, 3, 3, 1, 1, '2019-10-29 11:58:02', 5, '1.00'),
(21, 11, 30, 59, 1, 1, '2019-10-29 13:52:48', 22, '1.00'),
(22, 12, 2, 1, 1, 1, '2019-11-14 06:28:58', 27, '1.00'),
(23, 13, 238, 274, 1, 1, '2019-10-31 05:06:05', 63, '1.00'),
(24, 14, 15, 44, 1, 1, '2019-11-08 07:59:44', 22, '1.00'),
(25, 15, 17, 46, 1, 1, '2019-11-11 15:46:08', 56, '1.00'),
(26, 16, 347, 442, 1, 1, '2019-11-08 08:00:36', 5, '1.00'),
(27, 16, 348, 442, 1, 1, '2019-11-08 08:00:36', 5, '1.00'),
(28, 17, 294, 404, 1, 1, '2019-11-11 22:56:30', 45, '1.00'),
(29, 17, 293, 403, 1, 1, '2019-11-11 22:56:31', 45, '1.00'),
(30, 17, 73, 102, 1, 1, '2019-11-11 22:56:31', 45, '1.00'),
(31, 18, 17, 46, 1, 1, '2019-11-11 15:46:08', 56, '1.00'),
(32, 18, 7, 27, 1, 1, '2019-11-11 15:46:08', 56, '1.00'),
(33, 19, 430, 427, 1, 1, '2019-11-12 05:15:30', 57, '1.00'),
(34, 19, 311, 430, 1, 1, '2019-11-12 05:15:30', 57, '1.00'),
(35, 19, 308, 420, 1, 1, '2019-11-12 05:15:30', 57, '1.00'),
(36, 20, 431, 62, 0, 0, NULL, 0, '0.00'),
(37, 21, 432, 503, 1, 1, '2019-11-12 13:23:14', 19, '1.00'),
(38, 21, 433, 506, 1, 1, '2019-11-12 13:23:14', 19, '1.00'),
(39, 21, 402, 583, 1, 1, '2019-11-12 13:23:14', 19, '1.00'),
(40, 21, 138, 173, 1, 1, '2019-11-12 13:23:14', 19, '1.00'),
(41, 23, 266, 365, 1, 1, '2019-11-13 01:04:05', 63, '1.00'),
(42, 23, 449, 160, 1, 1, '2019-11-13 01:04:05', 63, '1.00'),
(43, 23, 2, 1, 1, 1, '2019-11-14 06:28:58', 27, '1.00'),
(44, 23, 450, 370, 1, 1, '2019-11-13 01:04:06', 63, '1.00'),
(45, 24, 2, 1, 1, 1, '2019-11-14 06:28:58', 27, '1.00'),
(46, 24, 2, 1, 1, 1, '2019-11-14 06:28:58', 27, '1.00');

-- --------------------------------------------------------

--
-- Table structure for table `borrow_head`
--

CREATE TABLE IF NOT EXISTS `borrow_head` (
`bh_id` int(11) NOT NULL,
  `borrowed_by` int(11) NOT NULL DEFAULT '0',
  `borrowed_date` varchar(20) DEFAULT NULL,
  `borrow_series` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `create_date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrow_head`
--

INSERT INTO `borrow_head` (`bh_id`, `borrowed_by`, `borrowed_date`, `borrow_series`, `user_id`, `create_date`) VALUES
(1, 5, '2019-10-17', 'CPGC-2019-10-1001', 9, '2019-10-17 02:17:21'),
(2, 46, '2019-10-19', 'CPGC-2019-10-1002', 6, '2019-10-19 15:54:34'),
(3, 44, '2019-10-21', 'CPGC-2019-10-1003', 6, '2019-10-21 09:01:31'),
(4, 39, '2019-10-21', 'CPGC-2019-10-1004', 6, '2019-10-21 09:07:43'),
(5, 3, '2019-10-22', 'CPGC-2019-10-1005', 6, '2019-10-22 15:30:43'),
(6, 45, '2019-10-25', 'CPGC-2019-10-1006', 6, '2019-10-25 13:38:22'),
(7, 22, '2019-10-25', 'CPGC-2019-10-1007', 6, '2019-10-25 13:42:35'),
(8, 39, '2019-10-28', 'CPGC-2019-10-1008', 6, '2019-10-28 11:05:49'),
(9, 3, '2019-10-28', 'CPGC-2019-10-1009', 6, '2019-10-28 11:11:16'),
(10, 5, '2019-10-28', 'CPGC-2019-10-1010', 6, '2019-10-28 11:14:14'),
(11, 22, '2019-10-29', 'CPGC-2019-10-1011', 9, '2019-10-29 13:51:06'),
(12, 57, '2019-10-30', 'CPGC-2019-10-1012', 9, '2019-10-30 05:42:00'),
(13, 63, '2019-10-31', 'CPGC-2019-10-1013', 9, '2019-10-31 03:40:32'),
(14, 22, '2019-11-05', 'CPGC-2019-11-1001', 14, '2019-11-05 09:00:59'),
(15, 3, '2019-11-05', 'CPGC-2019-11-1014', 14, '2019-11-05 09:03:04'),
(16, 5, '2019-11-05', 'CPGC-2019-11-1015', 6, '2019-11-05 09:15:07'),
(17, 45, '2019-11-11', 'CPGC-2019-11-1016', 6, '2019-11-11 14:45:41'),
(18, 56, '2019-11-11', 'CPGC-2019-11-1017', 6, '2019-11-11 14:47:50'),
(19, 57, '2019-11-12', 'CPGC-2019-11-1018', 9, '2019-11-12 02:38:41'),
(20, 20, '2019-11-12', 'CPGC-2019-11-1019', 6, '2019-11-12 10:31:51'),
(21, 19, '2019-11-12', 'CPGC-2019-11-1020', 6, '2019-11-12 10:33:09'),
(22, 63, '2019-11-12', 'CPGC-2019-11-1021', 9, '2019-11-12 23:44:26'),
(23, 63, '2019-11-12', 'CPGC-2019-11-1022', 9, '2019-11-12 23:46:57'),
(24, 27, '2019-11-14', 'CPGC-2019-11-1023', 9, '2019-11-14 06:26:28');

-- --------------------------------------------------------

--
-- Table structure for table `borrow_series`
--

CREATE TABLE IF NOT EXISTS `borrow_series` (
`bseries_id` int(11) NOT NULL,
  `borrow_prefix` varchar(50) DEFAULT NULL,
  `series` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrow_series`
--

INSERT INTO `borrow_series` (`bseries_id`, `borrow_prefix`, `series`) VALUES
(1, 'CPGC-2019-10', '1001'),
(2, 'CPGC-2019-10', '1002'),
(3, 'CPGC-2019-10', '1003'),
(4, 'CPGC-2019-10', '1004'),
(5, 'CPGC-2019-10', '1005'),
(6, 'CPGC-2019-10', '1006'),
(7, 'CPGC-2019-10', '1007'),
(8, 'CPGC-2019-10', '1008'),
(9, 'CPGC-2019-10', '1009'),
(10, 'CPGC-2019-10', '1010'),
(11, 'CPGC-2019-10', '1011'),
(12, 'CPGC-2019-10', '1012'),
(13, 'CPGC-2019-10', '1013'),
(14, 'CPGC-2019-11', '1001'),
(15, 'CPGC-2019-11', '1014'),
(16, 'CPGC-2019-11', '1015'),
(17, 'CPGC-2019-11', '1016'),
(18, 'CPGC-2019-11', '1017'),
(19, 'CPGC-2019-11', '1018'),
(20, 'CPGC-2019-11', '1019'),
(21, 'CPGC-2019-11', '1020'),
(22, 'CPGC-2019-11', '1021'),
(23, 'CPGC-2019-11', '1022'),
(24, 'CPGC-2019-11', '1023');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`category_id` int(11) NOT NULL,
  `category_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Furniture, Fixtures and Equipment-CPGC'),
(2, 'Tools and Equipment-CPGC'),
(4, 'Furniture, Fixtures and Equipment-SIPC'),
(5, 'Furniture, Fixtures and Equipment-MHEC'),
(6, 'Tools and Equipment-MHEC'),
(7, 'Tools and Equipment-SIPC');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
`company_id` int(11) NOT NULL,
  `company_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE IF NOT EXISTS `currency` (
`currency_id` int(11) NOT NULL,
  `currency_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currency_id`, `currency_name`) VALUES
(1, 'PHP');

-- --------------------------------------------------------

--
-- Table structure for table `damage_info`
--

CREATE TABLE IF NOT EXISTS `damage_info` (
`damage_id` int(11) NOT NULL,
  `incident_date` varchar(20) DEFAULT NULL,
  `etdr_no` varchar(50) DEFAULT NULL,
  `activity` text,
  `et_id` int(11) NOT NULL DEFAULT '0',
  `ed_id` int(11) NOT NULL DEFAULT '0',
  `damage_location` text,
  `accountability` varchar(100) DEFAULT NULL,
  `incident_description` text,
  `equip_damage` text,
  `recommendation` text,
  `submitted_by` int(11) NOT NULL DEFAULT '0',
  `checked_by` int(11) NOT NULL DEFAULT '0',
  `noted_by` int(11) NOT NULL DEFAULT '0',
  `create_date` varchar(20) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `damage_series`
--

CREATE TABLE IF NOT EXISTS `damage_series` (
`ds_id` int(11) NOT NULL,
  `damage_prefix` varchar(100) DEFAULT NULL,
  `series` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
`department_id` int(11) NOT NULL,
  `department_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`) VALUES
(1, 'Operations'),
(2, 'Admin'),
(3, 'Operations-EIC'),
(4, 'Admin-Accounting'),
(5, 'Maintenance'),
(6, 'Purchasing'),
(7, 'Warehouse'),
(8, 'Admin-Finance');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
`employee_id` int(11) NOT NULL,
  `employee_name` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `location_id` int(11) NOT NULL DEFAULT '0',
  `aaf_no` varchar(100) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `employee_name`, `department`, `location_id`, `aaf_no`, `position`, `contact_no`, `email`, `type`, `status`) VALUES
(1, 'Paul Rodolph Bautista Abaca', 'Operations', 2, 'SIPC-1001', 'Auxillary  Operator', NULL, NULL, 0, 0),
(2, 'Eugene Ong Abas', 'Operations', 2, 'SIPC-1002', 'Engine Operator', NULL, NULL, 0, 0),
(3, 'Jashper Nil  Lacheca Abrio', 'Operations-EIC', 2, 'SIPC-1003', 'EIC Technician', NULL, NULL, 0, 0),
(4, 'Melquisedec Lagunday Andaya', 'Operations', 2, 'SIPC-1004', 'Auxiliary/ Engine Operator', NULL, NULL, 0, 0),
(5, 'Efren Baloloy Beato', 'Maintenance', 2, 'SIPC-1005', 'Plant Mechanic', NULL, NULL, 0, 0),
(6, 'Michael Florendo Caeg', 'Maintenance', 2, 'SIPC-1006', 'Pipe Fitter', NULL, NULL, 0, 0),
(7, 'Marietta Catada Celis', 'Admin-Finance', 2, 'SIPC-1007', 'HR Asst/Finance-OIC', NULL, NULL, 0, 0),
(9, 'Aristotle Yumang Del Rosario', 'Operations', 2, 'SIPC-1009', 'Engine Operator', NULL, NULL, 0, 0),
(10, 'Almar Andaya Garcia ', 'Operations', 2, 'SIPC-1010', 'Control Room Operator', NULL, NULL, 0, 0),
(11, 'William III Banuelos Garcia ', 'Warehouse', 2, 'SIPC-1011', 'Warehouseman ', NULL, NULL, 0, 0),
(12, 'Rochelle Joy Abiul Laya', 'Purchasing', 2, 'SIPC-1012', 'Purchasing Asst', NULL, NULL, 0, 0),
(13, 'Alberto Jr. Jabiniar Limuran ', 'Operations', 2, 'SIPC-1013', 'EIC Supt./ Asst. Plant Mngr.', NULL, NULL, 0, 0),
(14, 'Mark Jayson Quinton Liwag', 'Operations', 2, 'SIPC-1014', 'Auxillary  Operator', NULL, NULL, 0, 0),
(15, 'Jonathan Aga-in Llait', 'Operations', 2, 'SIPC-1015', 'Auxillary  Operator', NULL, NULL, 0, 0),
(16, 'Jan Lester Mercene Madriaga', 'Operations', 2, 'SIPC-1016', 'Data Encoder', NULL, NULL, 1, 0),
(17, 'Roleo Ilagan Malimban', 'Operations', 2, 'SIPC-1017', 'Control Room Operator', NULL, NULL, 0, 0),
(18, 'Ryan Menor Manuel', 'Admin', 2, 'SIPC-1018', 'Facility In-Charge Asst.', NULL, NULL, 0, 0),
(19, 'Ian Chris  Ubos Marco', 'Maintenance', 2, 'SIPC-1019', 'Plant Mechanic', NULL, NULL, 0, 0),
(20, 'Alejandro Tanay Matubis', 'Maintenance', 2, 'SIPC-1020', 'Plant Mechanic', NULL, NULL, 0, 0),
(21, 'Cyrus Nepomuceno Mendoza', 'Operations', 2, 'SIPC-1021', 'Auxillary  Operator', NULL, NULL, 0, 0),
(22, 'Jake Edison Pacal Ocenar', 'Operations-EIC', 2, 'SIPC-1022', 'EIC Technician', NULL, NULL, 0, 0),
(23, 'Domingo De Castro Panganiban', 'Maintenance', 2, 'SIPC-1023', 'Welder', NULL, NULL, 0, 0),
(24, 'Alexander Magleo Paningbatan', 'Operations', 2, 'SIPC-1024', 'Control Room Operator', NULL, NULL, 0, 0),
(25, 'Jinby Fetisanan Pederio', 'Admin-Accounting', 2, 'SIPC-1025', 'Bookkeeper', NULL, NULL, 0, 0),
(26, 'Arnold Tome Rogelio', 'Operations', 2, 'SIPC-1026', 'Fuel Tender/PCO', NULL, NULL, 0, 0),
(27, 'Christer Jon Apolinar Victorio', 'Operations', 2, 'SIPC-1027', 'Shift Supervisor', NULL, NULL, 0, 0),
(28, 'Jerry Bianzon Abel', 'Maintenance', 1, 'CPGC-1001', 'Plant Mechanic', NULL, NULL, 0, 0),
(29, 'Myra Abaca Aceveda', 'Purchasing', 1, 'CPGC-1002', 'Purchaser', NULL, NULL, 0, 0),
(30, 'Norwell Valdrez Acuzar', 'Operations', 1, 'CPGC-1003', 'Fuel Tender', NULL, NULL, 0, 0),
(31, 'John Rio Marasigan Adarlo', 'Operations', 1, 'CPGC-1004', ' Engine Operator', NULL, NULL, 0, 0),
(32, 'John Mistal Agoncillo ', 'Operations', 1, 'CPGC-1005', 'Operations Superintendent', NULL, NULL, 0, 0),
(33, 'Allan Tagsip Amoguis', 'Maintenance', 1, 'CPGC-1006', 'Maintenance Manager', NULL, NULL, 0, 0),
(34, 'Rogelio Jr. Aplacador Arita ', 'Operations-EIC', 1, 'CPGC-1007', 'Sr. Electrician', NULL, NULL, 0, 0),
(35, 'Jennilyn Magtibay Bagon', 'Admin-Accounting', 1, 'CPGC-1008', 'Senior Bookkeeper', NULL, NULL, 0, 0),
(36, 'John Bryan Gabuna Baja', 'Operations', 1, 'CPGC-1009', 'Auxiliary Operator', NULL, NULL, 0, 0),
(37, 'Gerry Marasigan Bantulo', 'Purchasing', 1, 'CPGC-1010', 'Purchasing Assistant', NULL, NULL, 0, 0),
(38, 'Dhen Mark Oblefias Belmonte', 'Warehouse', 1, 'CPGC-1011', 'Warehouseman', NULL, NULL, 0, 0),
(39, 'Claro Lazaga Bolarde', 'Operations', 1, 'CPGC-1012', 'Plant Manager', NULL, NULL, 0, 0),
(40, 'Gerald Mercado Castillo', 'Operations', 1, 'CPGC-1013', 'Auxiliary Operator', NULL, NULL, 0, 0),
(41, 'Eugenio Jr. Gabriel Cruz', 'Warehouse', 1, 'CPGC-1014', 'Warehouse Supervisor', NULL, NULL, 0, 0),
(42, 'Ricardo Jr. Sandico Del Mundo', 'Admin', 1, 'CPGC-1015', 'Utility/ Driver', NULL, NULL, 0, 0),
(43, 'Marlon Gealon Gealon', 'Maintenance', 1, 'CPGC-1016', 'Plant Mechanic', NULL, NULL, 0, 0),
(44, 'Elso Hernandez Gervero', 'Maintenance', 1, 'CPGC-1017', 'Mechanic Helper', NULL, NULL, 0, 0),
(45, 'Marlon Ginhawa Gunday', 'Admin', 1, 'CPGC-1018', 'Project Foreman/Driver', NULL, NULL, 0, 0),
(46, 'Reynaldo Blazo Lita', 'Operations', 1, 'CPGC-1019', 'Shift Supervisor', NULL, NULL, 0, 0),
(47, 'Ray Anthony Perez Lopez', 'Operations', 1, 'CPGC-1020', ' Engine Operator', NULL, NULL, 0, 0),
(48, 'Rogelito Pornela Luna', 'Admin', 1, 'CPGC-1021', 'Security Officer', NULL, NULL, 0, 0),
(49, 'Argiliza Olarte Maneja', 'Operations', 1, 'CPGC-1022', 'Data Encoder', NULL, NULL, 0, 0),
(50, 'Delian Mariel Bartulay Marasigan', 'Operations', 1, 'CPGC-1023', 'Fuel Management Assistant ', NULL, NULL, 0, 0),
(51, 'Eulalio Jr. Baculo Mendoza', 'Operations', 1, 'CPGC-1024', 'Engine Operator', NULL, NULL, 0, 0),
(52, 'Mariela Mahia Merciales', 'Operations', 1, 'CPGC-1025', 'Records Custodian', NULL, NULL, 0, 0),
(53, 'Melvin Dinglasan Mutiangpili', 'Operations', 1, 'CPGC-1026', 'Auxiliary Operator ', NULL, NULL, 0, 0),
(54, 'Joy Falcatan Najito', 'Admin', 1, 'CPGC-1027', 'Admin  Manager', NULL, NULL, 0, 0),
(55, 'Manolo Villao Najito', 'Operations', 1, 'CPGC-1028', 'Contract Manager', NULL, NULL, 0, 0),
(56, 'Jan Jhevic Pasiga Noble', 'Operations-EIC', 1, 'CPGC-1029', 'EIC Technician', NULL, NULL, 0, 0),
(57, 'Jediton Evangelista Palma', 'Maintenance', 1, 'CPGC-1030', 'Plant Mechanic', NULL, NULL, 0, 0),
(58, 'Lyan Kimberly Familara Palomera', 'Admin-Finance', 1, 'CPGC-1031', 'Finance Assistant', NULL, NULL, 0, 0),
(59, 'Jojo Lico Valdez', 'Operations', 1, 'CPGC-1032', 'Control Room Operator', NULL, NULL, 0, 0),
(60, 'Michael Cajumban Vidal', 'Operations', 1, 'CPGC-1033', 'Control Room Operator', NULL, NULL, 0, 0),
(61, 'Rodell Carpio Zamora', 'Operations', 1, 'CPGC-1034', 'Control Room Operator', NULL, NULL, 0, 0),
(62, 'Enrico Brian Alfanta Ani', 'Operations', 3, 'MHEC-1001', 'Asst. Technical Director', NULL, NULL, 0, 0),
(63, 'Rudy Nolasco Agraviador', 'Operations', 3, 'MHEC-1002', 'Engine Mechanic', NULL, NULL, 0, 0),
(64, 'Airelito Tolentino Bagon', 'Admin', 3, 'MHEC-1003', 'Facility-in-charge Officer', NULL, NULL, 1, 0),
(65, 'Nestor Baloloy Beato', 'Operations', 3, 'MHEC-1004', 'Engine Mechanic', NULL, NULL, 0, 0),
(66, 'Jubert Ciervo Corteza', 'Operations', 3, 'MHEC-1005', 'Engine Mechanic', NULL, NULL, 0, 0),
(67, 'Joy Canada Ecal', 'Operations', 3, 'MHEC-1006', 'Engine Mechanic', NULL, NULL, 0, 0),
(68, 'Rogelio Pornela Luna Jr.', 'Admin', 3, 'MHEC-1007', 'Security Officer', NULL, NULL, 0, 0),
(69, 'Joel Bautista Manibo', 'Operations', 3, 'MHEC-1008', 'Utility/Driver', NULL, NULL, 0, 0),
(70, 'Danilo Natal Masculino', 'Operations', 3, 'MHEC-1009', 'Engine Mechanic', NULL, NULL, 0, 0),
(71, 'Ian Maglunog Medora', 'Operations-EIC', 3, 'MHEC-1010', 'EIC Technician', NULL, NULL, 0, 0),
(72, 'Jamaica Vergara Noble', 'Admin', 3, 'MHEC-1011', 'Fuel Management Asst.', NULL, NULL, 0, 0),
(73, 'Veverly Bacay Ramos', 'Admin-Accounting', 3, 'MHEC-1012', 'Bookkeeper', NULL, NULL, 0, 0),
(74, 'Admin Office', NULL, 1, 'CPGC-1035', NULL, NULL, NULL, 2, 0),
(75, 'Operation Office', NULL, 1, 'CPGC-1036', NULL, NULL, NULL, 2, 0),
(76, 'Purchasing Office', NULL, 2, 'SIPC-1028', NULL, NULL, NULL, 2, 0),
(77, 'Batangas Project', '', 0, '', '', NULL, NULL, 1, 0),
(78, 'Elaine Anne Yumang Dela Cruz', 'Purchasing', 2, 'SIPC-1029', 'Data Encoder', NULL, NULL, 1, 0),
(79, 'Albert Manjares Macandog', 'Admin', 2, 'SIPC-1030', 'Utility', NULL, NULL, 1, 0),
(80, 'Gilbert Aala Ligaya', 'Operations', 1, 'CPGC-1037', 'Auxiliary Operator', NULL, NULL, 1, 0),
(81, 'Patrick Jun Luarca Pineda', 'Warehouse', 2, 'SIPC-1031', 'Data Encoder', NULL, NULL, 1, 0),
(82, 'Restituto Najito Cuasay', 'Admin', 3, 'MHEC-1015', 'Project Coordinator', NULL, NULL, 1, 0),
(83, 'Edenelle Fabreag De Guzman', 'Operations', 3, 'MHEC-1013', 'Construction QA Engineer Trainee', NULL, NULL, 1, 0),
(84, 'Hazel Marie Aligan Laderas', 'Operations', 3, 'MHEC-1014', 'Project Researcher Trainee', NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `employee_inclusion`
--

CREATE TABLE IF NOT EXISTS `employee_inclusion` (
`ei_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `child_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_inclusion`
--

INSERT INTO `employee_inclusion` (`ei_id`, `parent_id`, `child_id`) VALUES
(1, 74, 0),
(2, 74, 16);

-- --------------------------------------------------------

--
-- Table structure for table `employee_series`
--

CREATE TABLE IF NOT EXISTS `employee_series` (
`empser_id` int(11) NOT NULL,
  `aaf_prefix` varchar(100) DEFAULT NULL,
  `series` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_series`
--

INSERT INTO `employee_series` (`empser_id`, `aaf_prefix`, `series`) VALUES
(1, 'SIPC', 1001),
(2, 'SIPC', 1002),
(3, 'SIPC', 1003),
(4, 'SIPC', 1004),
(5, 'SIPC', 1005),
(6, 'SIPC', 1006),
(7, 'SIPC', 1007),
(8, 'SIPC', 1008),
(9, 'SIPC', 1009),
(10, 'SIPC', 1010),
(11, 'SIPC', 1011),
(12, 'SIPC', 1012),
(13, 'SIPC', 1013),
(14, 'SIPC', 1014),
(15, 'SIPC', 1015),
(16, 'SIPC', 1016),
(17, 'SIPC', 1017),
(18, 'SIPC', 1018),
(19, 'SIPC', 1019),
(20, 'SIPC', 1020),
(21, 'SIPC', 1021),
(22, 'SIPC', 1022),
(23, 'SIPC', 1023),
(24, 'SIPC', 1024),
(25, 'SIPC', 1025),
(26, 'SIPC', 1026),
(27, 'SIPC', 1027),
(28, 'CPGC', 1001),
(29, 'CPGC', 1002),
(30, 'CPGC', 1003),
(31, 'CPGC', 1004),
(32, 'CPGC', 1005),
(33, 'CPGC', 1006),
(34, 'CPGC', 1007),
(35, 'CPGC', 1008),
(36, 'CPGC', 1009),
(37, 'CPGC', 1010),
(38, 'CPGC', 1011),
(39, 'CPGC', 1012),
(40, 'CPGC', 1013),
(41, 'CPGC', 1014),
(42, 'CPGC', 1015),
(43, 'CPGC', 1016),
(44, 'CPGC', 1017),
(45, 'CPGC', 1018),
(46, 'CPGC', 1019),
(47, 'CPGC', 1020),
(48, 'CPGC', 1021),
(49, 'CPGC', 1022),
(50, 'CPGC', 1023),
(51, 'CPGC', 1024),
(52, 'CPGC', 1025),
(53, 'CPGC', 1026),
(54, 'CPGC', 1027),
(55, 'CPGC', 1028),
(56, 'CPGC', 1029),
(57, 'CPGC', 1030),
(58, 'CPGC', 1031),
(59, 'CPGC', 1032),
(60, 'CPGC', 1033),
(61, 'CPGC', 1034),
(62, 'MHEC', 1001),
(63, 'MHEC', 1002),
(64, 'MHEC', 1003),
(65, 'MHEC', 1004),
(66, 'MHEC', 1005),
(67, 'MHEC', 1006),
(68, 'MHEC', 1007),
(69, 'MHEC', 1008),
(70, 'MHEC', 1009),
(71, 'MHEC', 1010),
(72, 'MHEC', 1011),
(73, 'MHEC', 1012),
(74, 'CPGC', 1035),
(75, 'CPGC', 1036),
(76, 'SIPC', 1028),
(77, 'SIPC', 1029),
(78, 'SIPC', 1030),
(79, 'CPGC', 1037),
(80, 'MHEC', 1013),
(81, 'MHEC', 1014),
(82, 'MHEC', 1015);

-- --------------------------------------------------------

--
-- Table structure for table `et_details`
--

CREATE TABLE IF NOT EXISTS `et_details` (
`ed_id` int(11) NOT NULL,
  `et_id` int(11) NOT NULL DEFAULT '0',
  `set_id` int(11) NOT NULL DEFAULT '0',
  `physical_condition` text,
  `rack_id` int(11) NOT NULL DEFAULT '0',
  `company_id` int(11) NOT NULL DEFAULT '0',
  `placement_id` int(11) NOT NULL DEFAULT '0',
  `serial_no` varchar(50) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `unit_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(50) DEFAULT NULL,
  `currency_id` int(11) NOT NULL DEFAULT '0',
  `acquisition_date` varchar(20) DEFAULT NULL,
  `date_issued` varchar(20) DEFAULT NULL,
  `remarks` text,
  `asset_control_no` varchar(50) DEFAULT NULL,
  `damage` int(11) NOT NULL DEFAULT '0',
  `lost` int(11) NOT NULL DEFAULT '0',
  `beyond_repair` int(11) NOT NULL DEFAULT '0',
  `borrowed` int(11) NOT NULL DEFAULT '0',
  `acquired_by` varchar(50) DEFAULT NULL,
  `picture1` varchar(255) DEFAULT NULL,
  `picture2` varchar(255) DEFAULT NULL,
  `picture3` varchar(255) DEFAULT NULL,
  `change_location` int(11) NOT NULL DEFAULT '0',
  `location_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=661 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `et_details`
--

INSERT INTO `et_details` (`ed_id`, `et_id`, `set_id`, `physical_condition`, `rack_id`, `company_id`, `placement_id`, `serial_no`, `brand`, `model`, `type`, `unit_price`, `currency`, `currency_id`, `acquisition_date`, `date_issued`, `remarks`, `asset_control_no`, `damage`, `lost`, `beyond_repair`, `borrowed`, `acquired_by`, `picture1`, `picture2`, `picture3`, `change_location`, `location_id`) VALUES
(48, 19, 0, '2', 0, 0, 8, '', 'Klein', '', '', '0.00', NULL, 0, '', '', '', 'TE-EIC-CPGC-1001', 0, 0, 0, 0, '', '', '', '', 0, 0),
(62, 431, 0, '2', 49, 0, 6, '', 'Mitutoyo', '', '', '0.00', NULL, 0, '', NULL, '', 'TE-MT-CPGC-1001', 0, 0, 0, 1, '', '', '', '', 0, 0),
(70, 42, 1, '2', 67, 0, 1, 'ELPC81A002093', 'AOC', '156LM00001', 'MONITOR', '0.00', NULL, 0, '', '2012-11-07', '', 'FFE- COMP-CPGC-1001', 0, 0, 0, 0, '', '', '', '', 0, 0),
(71, 43, 3, '2', 67, 0, 3, 'GRCDB1A003604', 'AOC', 'E1670SWU', 'MONITOR', '0.00', NULL, 0, '', '2015-06-18', '', 'FFE- COMP-CPGC-1002', 0, 0, 0, 0, '', '', '', '', 0, 0),
(72, 44, 4, '2', 67, 0, 5, 'AKXH31A007949', 'AOC', 'E1670SWU', 'MONITOR', '0.00', NULL, 0, '', '2019-03-18', '', 'FFE- COMP-CPGC-1003', 0, 0, 0, 0, '', '', '', '', 0, 0),
(75, 46, 5, '2', 67, 0, 3, 'HND31A005355', 'AOC', 'E970SW', 'MONITOR', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1004', 0, 0, 0, 0, '', '', '', '', 0, 0),
(76, 48, 6, '2', 67, 0, 1, 'GPYE41A002402', 'AOC', 'E1670SWU', 'MONITOR', '0.00', NULL, 0, '', '2014-06-25', '', 'FFE- COMP-CPGC-1005', 0, 0, 0, 0, '', '', '', '', 0, 0),
(77, 49, 7, '2', 67, 0, 3, 'ELPCB1A002484', 'AOC', '156LM00001', 'MONITOR', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1006', 0, 0, 0, 0, '', '', '', '', 0, 0),
(78, 50, 8, '2', 67, 0, 1, 'DRQCB1A000062', 'AOC', '156LM00001', 'MONITOR', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1007', 0, 0, 0, 0, '', '', '', '', 0, 0),
(80, 52, 9, '2', 32, 0, 2, 'GCRE81A010082', 'AOC', 'E1670SWU', 'MONITOR', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1008', 0, 0, 0, 0, '', '', '', '', 0, 0),
(82, 54, 10, '2', 32, 0, 2, 'GPYE41A002398', 'AOC', 'E1670SWU', 'MONITOR', '0.00', NULL, 0, '', '2014-06-25', '', 'FFE- COMP-CPGC-1009', 0, 0, 0, 0, '', '', '', '', 0, 0),
(83, 55, 11, '2', 32, 0, 2, 'GCRE61A001473', 'AOC', 'E1670SWU', 'MONITOR', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1010', 0, 1, 0, 0, '', '', '', '', 0, 0),
(86, 58, 12, '2', 37, 0, 6, 'DRQCB1A000048', 'AOC', '156LM00001', 'MONITOR', '0.00', NULL, 0, '', '2013-04-23', '', 'FFE- COMP-CPGC-1011', 0, 0, 0, 0, '', '', '', '', 0, 0),
(91, 63, 13, '2', 37, 0, 7, 'ERUD91A007892', 'AOC', '156LM00004', 'MONITOR', '0.00', NULL, 0, '', '2014-02-27', '', 'FFE- COMP-CPGC-1012', 0, 0, 0, 0, '', '', '', '', 0, 0),
(92, 64, 14, '2', 31, 0, 2, 'DRQC81A000021', 'AOC', '156LM00001', 'MONITOR', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1013', 0, 0, 0, 0, '', '', '', '', 0, 0),
(93, 66, 15, '2', 68, 0, 4, 'GPYD91A000547', 'AOC', 'E1670SWU', 'MONITOR', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1014', 0, 0, 0, 0, '', '', '', '', 0, 0),
(94, 67, 16, '1', 68, 0, 2, '905003076321', 'AOPEN', '20CH1Q', 'MONITOR', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1015', 0, 0, 0, 0, 'MINDEUS ENTERPRISES', '', '', '', 0, 0),
(95, 68, 17, '2', 68, 0, 2, 'ZT1EH9NB802004Z', 'SAMSUNG', 'S19A10N', 'MONITOR', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1016', 0, 0, 0, 0, '', '', '', '', 0, 0),
(110, 78, 0, '2', 67, 0, 2, '', 'Unit-T', 'UT353', '', '0.00', NULL, 0, '2016-09-04', '', '', 'TE-EIC-CPGC-1002', 0, 0, 0, 0, '', '', '', '', 0, 0),
(116, 84, 18, '1', 67, 0, 1, '708NTMX6T203', 'LG', '19M38A', 'MONITOR', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1017', 0, 1, 0, 0, '', '', '', '', 0, 0),
(117, 85, 19, '2', 24, 0, 1, 'KCYG21A010975', 'AOC', 'E970SW', 'MONITOR', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1018', 0, 0, 0, 0, '', '', '', '', 0, 0),
(118, 86, 20, '2', 15, 0, 4, 'HHKE61A001076', 'AOC', 'E1670SWU', 'MONITOR', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1019', 0, 0, 0, 0, '', '', '', '', 0, 0),
(119, 87, 22, '1', 32, 0, 4, '3CQ750154K', 'HP', 'V5E94AA V5E94A9 W5D78AV', 'MONITOR', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1020', 0, 1, 0, 0, '', '', '', '', 0, 0),
(120, 88, 23, '2', 14, 0, 2, 'ERUD91A008071', 'AOC', '156LM00004', 'MONITOR', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1021', 0, 0, 0, 0, '', '', '', '', 0, 0),
(121, 89, 24, '2', 14, 0, 2, '3CQ72514YZ', 'HP', 'V5E94AA V5E94A9 W5D78AV', 'MONITOR', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1022', 0, 0, 0, 0, '', '', '', '', 0, 0),
(122, 90, 25, '2', 14, 0, 2, 'GPYD91A000588', 'AOC', 'E1670SWU', 'MONITOR', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1023', 0, 0, 0, 0, '', '', '', '', 0, 0),
(123, 91, 26, '2', 14, 0, 2, 'N477HVEY412383W', 'SAMSUNG', 'CX701N', 'MONITOR', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1024', 0, 0, 0, 0, '', '', '', '', 0, 0),
(124, 92, 27, '1', 14, 0, 2, 'ZT1EH9NB801928M', 'SAMSUNG', 'S19A10N', 'MONITOR', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1025', 0, 0, 0, 0, '', '', '', '', 0, 0),
(125, 93, 28, '1', 14, 0, 2, 'ZT1EH9NB705288N', 'SAMSUNG', 'S19A10N', 'MONITOR', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1026', 0, 0, 0, 0, '', '', '', '', 0, 0),
(126, 94, 29, '1', 15, 0, 4, 'MMLY0SS0039230C18C8507', 'ACER', 'V196HQL', 'MONITOR', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1027', 0, 0, 0, 0, '', '', '', '', 0, 0),
(127, 95, 30, '1', 15, 0, 4, 'ARZ1CA006965', 'AOC', 'E970SW', 'MONITOR', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1028', 0, 0, 0, 0, 'MINDEUS ENTERPRISES', '', '', '', 0, 0),
(128, 96, 21, '2', 67, 0, 5, 'MMLY0SS0039230C0838507', 'ACER', 'V196HQL', 'MONITOR', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1029', 0, 1, 0, 0, '', '', '', '', 0, 0),
(129, 97, 2, '1', 67, 0, 5, 'M6986JA004418', 'AOC', 'TFT19W80PS', 'MONITOR', '0.00', NULL, 0, '2019-08-22', '2019-08-22', '', 'FFE- COMP-CPGC-1030', 0, 0, 0, 0, 'MINDEUS ENTERPRISES', '', '', '', 0, 0),
(130, 98, 0, '2', 67, 0, 2, 'NXVE6SP0047342AD657600', 'ACER', 'N16Q1', 'LAPTOP WITH CHARGER', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1031', 0, 0, 0, 0, '', '', '', '', 0, 0),
(131, 99, 0, '2', 32, 0, 2, 'K1N0GR057422036', 'ASUS', 'X407U', 'LAPTOP WITH CHARGER', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1032', 0, 0, 0, 0, '', '', '', '', 0, 0),
(132, 100, 0, '2', 32, 0, 2, 'NXVE6SP0047342AD5B7600', 'ACER', 'N16Q1', 'LAPTOP WITH CHARGER', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1033', 0, 0, 0, 0, '', '', '', '', 0, 0),
(135, 103, 0, '2', 32, 0, 2, 'NXG0HSP005538051773400', 'ACER', 'N15C1', 'LAPTOP WITH CHARGER', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1034', 0, 0, 0, 0, '', '', '', '', 0, 0),
(136, 104, 0, '2', 32, 0, 2, 'E4N0CX03195618D', 'ASUS', 'F450L', 'LAPTOP WITH CHARGER', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1035', 0, 0, 0, 0, '', '', '', '', 0, 0),
(137, 105, 0, '2', 32, 0, 2, 'JFV291FD7', 'SAMSUNG', 'NP905S3G', 'LAPTOP WITH CHARGER', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1036', 0, 0, 0, 0, '', '', '', '', 0, 0),
(138, 106, 0, '2', 67, 0, 1, 'MRJG611007338015EF5910', 'ACER', 'DSV0008', 'PROJECTOR', '0.00', NULL, 0, '', '', '', 'FFE-EQU-CPGC-1001', 0, 0, 0, 0, '', '', '', '', 0, 0),
(139, 107, 0, '1', 67, 0, 1, 'CN853A10DJ', 'HP', 'SHNGD-1402', 'SCANNER', '0.00', NULL, 0, '', '', '', 'FFE-EQU-CPGC-1002', 0, 0, 0, 0, '', '', '', '', 0, 0),
(140, 108, 0, '1', 67, 0, 1, 'X5DY159086', 'EPSON', 'C634D', 'PRINTER', '0.00', NULL, 0, '', '', '', 'FFE-EQU-CPGC-1003', 0, 0, 0, 0, '', '', '', '', 0, 0),
(141, 109, 0, '2', 32, 0, 2, 'UE8K010188', 'EPSON', 'C462R', 'PRINTER', '0.00', NULL, 0, '', '', '', 'FFE-EQU-CPGC-1004', 0, 0, 0, 0, '', '', '', '', 0, 0),
(142, 110, 0, '2', 68, 0, 2, 'UE9K000498', 'EPSON', 'C462R', 'PRINTER', '0.00', NULL, 0, '', '', '', 'FFE-EQU-CPGC-1005', 0, 0, 0, 0, '', '', '', '', 0, 0),
(143, 111, 0, '2', 37, 0, 1, 'SMXK214704', 'EPSON', 'C462H', 'PRINTER', '0.00', NULL, 0, '', '', '', 'FFE-EQU-CPGC-1006', 0, 0, 0, 0, '', '', '', '', 0, 0),
(144, 112, 0, '1', 67, 0, 5, 'X5DY248823', 'EPSON', '', 'PRINTER', '7900.00', NULL, 1, '2019-08-22', '', '', 'FFE-EQU-CPGC-1007', 0, 0, 0, 0, 'MINDEUS ENTERPRISES', '', '', '', 0, 0),
(145, 113, 0, '1', 14, 0, 2, 'VCHY060377', 'EPSON', 'J371A', 'SCANNER', '0.00', NULL, 0, '', '', '', 'FFE-EQU-CPGC-1008', 0, 0, 0, 0, '', '', '', '', 0, 0),
(146, 114, 0, '1', 32, 0, 4, 'VCHY060364', 'EPSON', 'J371A', 'SCANNER', '0.00', NULL, 0, '', '', '', 'FFE-EQU-CPGC-1009', 0, 0, 0, 0, '', '', '', '', 0, 0),
(147, 115, 1, '2', 67, 0, 1, 'CPU-006', 'TRENDSONIC', '', 'CPU', '0.00', NULL, 0, '', '2012-11-07', '', 'FFE- COMP-CPGC-1037', 0, 0, 0, 0, '', '', '', '', 0, 0),
(148, 116, 3, '2', 67, 0, 3, 'CPU-024', 'HIP', '', 'CPU', '0.00', NULL, 0, '', '2015-06-18', '', 'FFE- COMP-CPGC-1038', 0, 0, 0, 0, '', '', '', '', 0, 0),
(149, 117, 4, '2', 67, 0, 5, 'CPU-026', 'POWERLOGIC', '', 'CPU', '0.00', NULL, 0, '', '2019-03-18', '', 'FFE- COMP-CPGC-1039', 0, 0, 0, 0, '', '', '', '', 0, 0),
(150, 118, 5, '2', 67, 0, 3, 'CPU-017', 'POWERLOGIC', '', 'CPU', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1040', 0, 0, 0, 0, '', '', '', '', 0, 0),
(151, 119, 6, '2', 67, 0, 1, 'CPU-020', 'HIP', '', 'CPU', '0.00', NULL, 0, '', '2014-06-25', '', 'FFE- COMP-CPGC-1041', 0, 0, 0, 0, '', '', '', '', 0, 0),
(152, 120, 7, '2', 67, 0, 3, 'CPU-009', 'CORE ELITE', '', 'CPU', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1042', 0, 0, 0, 0, '', '', '', '', 0, 0),
(153, 121, 8, '2', 67, 0, 1, 'CPU-023', 'SAMSUNG', '', 'CPU', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1043', 0, 0, 0, 0, '', '', '', '', 0, 0),
(154, 122, 9, '2', 32, 0, 2, 'CPU-019', 'HIP', '', 'CPU', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1044', 0, 0, 0, 0, '', '', '', '', 0, 0),
(155, 123, 10, '2', 32, 0, 2, 'CPU-016', 'HIP', '', 'CPU', '0.00', NULL, 0, '', '2014-06-25', '', 'FFE- COMP-CPGC-1045', 0, 0, 0, 0, '', '', '', '', 0, 0),
(156, 124, 11, '2', 32, 0, 2, 'CPU-015', 'POWERLOGIC', '', 'CPU', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1046', 0, 0, 0, 0, '', '', '', '', 0, 0),
(157, 125, 12, '2', 37, 0, 1, 'CPU-010', 'SAMSUNG', '', 'CPU', '0.00', NULL, 0, '', '2013-04-23', '', 'FFE- COMP-CPGC-1047', 0, 0, 0, 0, '', '', '', '', 0, 0),
(158, 126, 13, '2', 37, 0, 6, 'CPU-011', 'HIP', '', 'CPU', '0.00', NULL, 0, '', '2014-02-27', '', 'FFE- COMP-CPGC-1048', 0, 0, 0, 0, '', '', '', '', 0, 0),
(159, 128, 14, '2', 31, 0, 2, 'CPU-018', 'SAMSUNG', '', 'CPU', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1049', 0, 0, 0, 0, '', '', '', '', 0, 0),
(162, 129, 15, '2', 68, 0, 4, 'CPU-012', 'POWERLOGIC', '', 'CPU', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1050', 0, 0, 0, 0, '', '', '', '', 0, 0),
(163, 130, 16, '1', 68, 0, 2, 'CPU-001', 'NEUTRON I-ON', '', 'CPU', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1051', 0, 0, 0, 0, 'MINDEUS ENTERPRISES', '', '', '', 0, 0),
(166, 132, 17, '2', 68, 0, 2, 'CPU-007', 'SAMSUNG', '', 'CPU', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1052', 0, 0, 0, 0, '', '', '', '', 0, 0),
(167, 133, 18, '1', 67, 0, 1, 'CPU-027', 'NEUTRONLEGACY', '', 'CPU', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1053', 0, 0, 0, 0, '', '', '', '', 0, 0),
(169, 135, 21, '2', 67, 0, 5, 'CPU-005', 'ASPIRE 850', '', 'CPU', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1054', 0, 1, 0, 0, '', '', '', '', 0, 0),
(170, 136, 2, '1', 67, 0, 5, 'CPU-022', '', '', 'CPU', '0.00', NULL, 0, '2019-08-22', '2019-08-22', '', 'FFE- COMP-CPGC-1055', 0, 0, 0, 0, 'MINDEUS ENTERPRISES', '', '', '', 0, 0),
(171, 137, 20, '2', 15, 0, 4, 'CPU-036', 'POWERLOGIC', '', 'CPU', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1056', 0, 0, 0, 0, '', '', '', '', 0, 0),
(174, 139, 23, '2', 14, 0, 2, 'CPU-028', 'HIP', '', 'CPU', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1057', 0, 0, 0, 0, '', '', '', '', 0, 0),
(175, 140, 24, '2', 14, 0, 2, 'CPU-029', 'POWERLOGIC', '', 'CPU', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1058', 0, 0, 0, 0, '', '', '', '', 0, 0),
(177, 142, 26, '2', 14, 0, 2, 'CPU-031', 'SAMSUNG', '', 'CPU', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1059', 0, 0, 0, 0, '', '', '', '', 0, 0),
(178, 143, 22, '2', 32, 0, 4, 'CPU-037', 'FORTRESS', '', 'CPU', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1060', 0, 0, 0, 0, '', '', '', '', 0, 0),
(179, 144, 25, '2', 14, 0, 2, 'CPU-030', 'SAMSUNG', '', 'CPU', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1061', 0, 0, 0, 0, '', '', '', '', 0, 0),
(180, 145, 27, '2', 14, 0, 2, 'CPU-032', 'SAMSUNG', '', 'CPU', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1062', 0, 0, 0, 0, '', '', '', '', 0, 0),
(181, 146, 28, '2', 14, 0, 2, 'CPU-033', 'HIP', '', 'CPU', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1063', 0, 0, 0, 0, '', '', '', '', 0, 0),
(182, 147, 29, '1', 15, 0, 4, 'CPU-034', '', '', 'CPU', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1064', 0, 0, 0, 0, 'MINDEUS ENTERPRISES', '', '', '', 0, 0),
(183, 148, 30, '1', 15, 0, 4, 'CPU-035', 'ASUS', '', 'CPU', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1065', 0, 0, 0, 0, 'MINDEUS ENTERPRISES', '', '', '', 0, 0),
(184, 149, 1, '2', 67, 0, 1, 'KEYBOARD-006', 'A4TECH', '', 'KEYBOARD', '0.00', NULL, 0, '', '2012-11-07', '', 'FFE- COMP-CPGC-1066', 0, 0, 0, 0, '', '', '', '', 0, 0),
(185, 150, 3, '2', 67, 0, 3, 'KEYBOARD-024', 'A4TECH', '', 'KEYBOARD', '0.00', NULL, 0, '', '2015-06-18', '', 'FFE- COMP-CPGC-1067', 0, 0, 0, 0, '', '', '', '', 0, 0),
(186, 151, 4, '2', 67, 0, 5, 'KEYBOARD-026', 'A4TECH', '', 'KEYBOARD', '0.00', NULL, 0, '', '2019-03-18', '', 'FFE- COMP-CPGC-1068', 0, 0, 0, 0, '', '', '', '', 0, 0),
(187, 152, 5, '2', 67, 0, 3, 'KEYBOARD-017', 'A4TECH', '', 'KEYBOARD', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1069', 0, 0, 0, 0, '', '', '', '', 0, 0),
(188, 153, 6, '2', 67, 0, 1, 'KEYBOARD-020', 'A4TECH', '', 'KEYBOARD', '0.00', NULL, 0, '', '2014-06-25', '', 'FFE- COMP-CPGC-1070', 0, 0, 0, 0, '', '', '', '', 0, 0),
(189, 154, 7, '2', 67, 0, 3, 'KEYBOARD-009', 'A4TECH', '', 'KEYBOARD', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1071', 0, 0, 0, 0, '', '', '', '', 0, 0),
(190, 155, 8, '2', 67, 0, 1, 'KEYBOARD-023', 'A4TECH', '', 'KEYBOARD', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1072', 0, 0, 0, 0, '', '', '', '', 0, 0),
(191, 156, 9, '2', 32, 0, 2, 'KEYBOARD-019', 'A4TECH', '', 'KEYBOARD', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1073', 0, 0, 0, 0, '', '', '', '', 0, 0),
(192, 157, 10, '2', 32, 0, 2, 'KEYBOARD-016', 'A4TECH', '', 'KEYBOARD', '0.00', NULL, 0, '', '2014-06-25', '', 'FFE- COMP-CPGC-1074', 0, 0, 0, 0, '', '', '', '', 0, 0),
(193, 158, 11, '2', 32, 0, 2, 'KEYBOARD-015', 'A4TECH', '', 'KEYBOARD', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1075', 0, 0, 0, 0, '', '', '', '', 0, 0),
(194, 159, 12, '2', 37, 0, 6, 'KEYBOARD-010', 'A4TECH', '', 'KEYBOARD', '0.00', NULL, 0, '', '2013-04-23', '', 'FFE- COMP-CPGC-1076', 0, 0, 0, 0, '', '', '', '', 0, 0),
(195, 160, 13, '2', 37, 0, 7, 'KEYBOARD-011', 'A4TECH', '', 'KEYBOARD', '0.00', NULL, 0, '', '2014-02-27', '', 'FFE- COMP-CPGC-1077', 0, 0, 0, 0, '', '', '', '', 0, 0),
(196, 161, 14, '2', 31, 0, 2, 'KEYBOARD-018', 'A4TECH', '', 'KEYBOARD', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1078', 0, 0, 0, 0, '', '', '', '', 0, 0),
(197, 162, 15, '2', 68, 0, 4, 'KEYBOARD-012', 'A4TECH', '', 'KEYBOARD', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1079', 0, 0, 0, 0, '', '', '', '', 0, 0),
(198, 163, 16, '1', 68, 0, 2, 'KEYBOARD-001', 'LOGITECH', '', 'KEYBOARD', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1080', 0, 0, 0, 0, 'MINDEUS ENTERPRISES', '', '', '', 0, 0),
(199, 164, 17, '2', 68, 0, 2, 'KEYBOARD-007', 'A4TECH', '', 'KEYBOARD', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1081', 0, 0, 0, 0, '', '', '', '', 0, 0),
(200, 166, 18, '1', 67, 0, 1, 'KEYBOARD-027', 'A4TECH', '', 'KEYBOARD', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1082', 0, 0, 0, 0, '', '', '', '', 0, 0),
(201, 167, 21, '2', 67, 0, 5, 'KEYBOARD-005', 'A4TECH', '', 'KEYBOARD', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1083', 0, 0, 0, 0, '', '', '', '', 0, 0),
(202, 168, 2, '1', 67, 0, 5, 'KEYBOARD-022', 'MANHATTAN', '', 'KEYBOARD', '0.00', NULL, 0, '2019-08-22', '2019-08-22', '', 'FFE- COMP-CPGC-1084', 0, 0, 0, 0, 'MINDEUS ENTERPRISES', '', '', '', 0, 0),
(203, 169, 20, '2', 15, 0, 4, 'KEYBOARD-036', 'A4TECH', '', 'KEYBOARD', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1085', 0, 0, 0, 0, '', '', '', '', 0, 0),
(204, 170, 23, '2', 14, 0, 2, 'KEYBOARD-028', 'A4TECH', '', 'KEYBOARD', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1086', 0, 0, 0, 0, '', '', '', '', 0, 0),
(205, 171, 26, '2', 14, 0, 2, 'KEYBOARD-031', 'A4TECH', '', 'KEYBOARD', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1087', 0, 0, 0, 0, '', '', '', '', 0, 0),
(206, 172, 22, '2', 32, 0, 4, 'KEYBOARD-037', 'A4TECH', '', 'KEYBOARD', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1088', 0, 0, 0, 0, '', '', '', '', 0, 0),
(207, 173, 25, '2', 14, 0, 2, 'KEYBOARD-030', 'A4TECH', '', 'KEYBOARD', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1089', 0, 0, 0, 0, '', '', '', '', 0, 0),
(208, 174, 28, '2', 14, 0, 2, 'KEYBOARD-033', 'A4TECH', '', 'KEYBOARD', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1090', 0, 0, 0, 0, '', '', '', '', 0, 0),
(209, 175, 31, '1', 15, 0, 4, 'KEYBOARD-034', 'MANHATTAN', '', 'KEYBOARD', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1091', 0, 0, 0, 0, 'MINDEUS ENTERPRISES', '', '', '', 0, 0),
(210, 176, 30, '1', 15, 0, 4, 'KEYBOARD-035', 'MANHATTAN', '', 'KEYBOARD', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1092', 0, 0, 0, 0, 'MINDEUS ENTERPRISES', '', '', '', 0, 0),
(211, 177, 1, '2', 67, 0, 1, 'MOUSE-006', 'A4TECH', '', 'MOUSE', '0.00', NULL, 0, '', '2012-11-07', '', 'FFE- COMP-CPGC-1093', 0, 0, 0, 0, '', '', '', '', 0, 0),
(212, 178, 3, '2', 67, 0, 3, 'MOUSE-024', 'A4TECH', '', 'MOUSE', '0.00', NULL, 0, '', '2015-06-18', '', 'FFE- COMP-CPGC-1094', 0, 0, 0, 0, '', '', '', '', 0, 0),
(214, 179, 4, '2', 67, 0, 5, 'MOUSE-026', 'RTM019', '', 'MOUSE', '0.00', NULL, 0, '', '2019-03-18', '', 'FFE- COMP-CPGC-1095', 0, 0, 0, 0, '', '', '', '', 0, 0),
(216, 181, 5, '2', 67, 0, 3, 'MOUSE-017', 'A4TECH', '', 'MOUSE', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1096', 0, 0, 0, 0, '', '', '', '', 0, 0),
(217, 182, 6, '2', 67, 0, 1, 'MOUSE-020', 'A4TECH', '', 'MOUSE', '0.00', NULL, 0, '', '2014-06-25', '', 'FFE- COMP-CPGC-1097', 0, 0, 0, 0, '', '', '', '', 0, 0),
(218, 184, 7, '2', 67, 0, 3, 'MOUSE-009', 'RAPOO', '', 'MOUSE', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1098', 0, 0, 0, 0, '', '', '', '', 0, 0),
(219, 185, 8, '2', 67, 0, 1, 'MOUSE-023', 'A4TECH', '', 'MOUSE', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1099', 0, 0, 0, 0, '', '', '', '', 0, 0),
(220, 186, 9, '2', 32, 0, 2, 'MOUSE-019', 'A4TECH', '', 'MOUSE', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1100', 0, 0, 0, 0, '', '', '', '', 0, 0),
(222, 187, 10, '2', 32, 0, 2, 'MOUSE-016', 'A4TECH', '', 'MOUSE', '0.00', NULL, 0, '', '2014-06-25', '', 'FFE- COMP-CPGC-1101', 0, 0, 0, 0, '', '', '', '', 0, 0),
(223, 189, 11, '2', 32, 0, 2, 'MOUSE-015', 'A4TECH', '', 'MOUSE', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1102', 0, 0, 0, 0, '', '', '', '', 0, 0),
(226, 190, 12, '2', 37, 0, 6, 'MOUSE-010', 'A4TECH', '', 'MOUSE', '0.00', NULL, 0, '', '2013-04-23', '', 'FFE- COMP-CPGC-1103', 0, 0, 0, 0, '', '', '', '', 0, 0),
(227, 191, 13, '2', 37, 0, 6, 'MOUSE-011', 'A4TECH', '', 'MOUSE', '0.00', NULL, 0, '', '2014-02-27', '', 'FFE- COMP-CPGC-1104', 0, 0, 0, 0, '', '', '', '', 0, 0),
(228, 193, 14, '2', 31, 0, 2, 'MOUSE-018', 'A4TECH', '', 'MOUSE', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1105', 0, 0, 0, 0, '', '', '', '', 0, 0),
(229, 194, 15, '2', 68, 0, 4, 'MOUSE-012', 'A4TECH', '', 'MOUSE', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1106', 0, 0, 0, 0, '', '', '', '', 0, 0),
(230, 195, 16, '1', 68, 0, 2, 'MOUSE-001', 'LOGITECH', '', 'MOUSE', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1107', 0, 0, 0, 0, 'MINDEUS ENTERPRISES', '', '', '', 0, 0),
(231, 196, 17, '2', 68, 0, 2, 'MOUSE-007', 'A4TECH', '', 'MOUSE', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1108', 0, 0, 0, 0, '', '', '', '', 0, 0),
(232, 197, 18, '1', 67, 0, 1, 'MOUSE-027', 'A4TECH', '', 'MOUSE', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1109', 0, 0, 0, 0, '', '', '', '', 0, 0),
(233, 198, 19, '2', 24, 0, 1, 'MOUSE-014', '3D OPTICAL', '', 'MOUSE', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1110', 0, 0, 0, 0, '', '', '', '', 0, 0),
(234, 199, 21, '2', 67, 0, 5, 'MOUSE-005', 'A4TECH', '', 'MOUSE', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1111', 0, 0, 0, 0, '', '', '', '', 0, 0),
(237, 200, 2, '1', 67, 0, 5, 'MOUSE-022', 'MANHATTAN', '', 'MOUSE', '0.00', NULL, 0, '2019-08-22', '2019-08-22', '', 'FFE- COMP-CPGC-1112', 0, 0, 0, 0, 'MINDEUS ENTERPRISES', '', '', '', 0, 0),
(238, 201, 20, '2', 15, 0, 4, 'MOUSE-036', 'EVOLVE', '', 'MOUSE', '0.00', NULL, 0, '', '', '', 'FFE-COM-BCD-1001', 0, 0, 0, 0, '', '', '', '', 0, 0),
(239, 202, 23, '2', 14, 0, 2, 'MOUSE-028', 'A4TECH', '', 'MOUSE', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1113', 0, 0, 0, 0, '', '', '', '', 0, 0),
(240, 203, 26, '2', 14, 0, 2, 'MOUSE-031', 'A4TECH', '', 'MOUSE', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1114', 0, 0, 0, 0, '', '', '', '', 0, 0),
(241, 204, 22, '2', 32, 0, 4, 'MOUSE-037', 'A4TECH', '', 'MOUSE', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1115', 0, 0, 0, 0, '', '', '', '', 0, 0),
(242, 205, 25, '2', 14, 0, 2, 'MOUSE-030', 'A4TECH', '', 'MOUSE', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1116', 0, 0, 0, 0, '', '', '', '', 0, 0),
(243, 206, 28, '2', 14, 0, 2, 'MOUSE-033', 'A4TECH', '', 'MOUSE', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1117', 0, 0, 0, 0, '', '', '', '', 0, 0),
(244, 207, 29, '1', 15, 0, 4, 'MOUSE-034', 'MANHATTAN', '', 'MOUSE', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1118', 0, 0, 0, 0, 'MINDEUS ENTERPRISES', '', '', '', 0, 0),
(245, 208, 30, '1', 15, 0, 4, 'MOUSE-035', 'MANHATTAN', '', 'MOUSE', '0.00', NULL, 0, '', '', '', 'FFE- COMP-CPGC-1119', 0, 0, 0, 0, 'MINDEUS ENTERPRISES', '', '', '', 0, 0),
(246, 209, 0, '2', 67, 0, 2, 'AD00006', '', '', 'TABLE', '0.00', NULL, 0, '', '', '', 'FFE-FUR-CPGC-1001', 0, 0, 0, 0, '', '', '', '', 0, 0),
(247, 209, 0, '2', 67, 0, 2, 'AD00006', '', '', 'TABLE', '0.00', NULL, 0, '', '', '', 'FFE-FUR-CPGC-1002', 0, 0, 0, 0, '', '', '', '', 0, 0),
(248, 210, 0, '2', 67, 0, 3, 'AD00024', '', '', 'TABLE', '0.00', NULL, 0, '', '', '', 'FFE-FUR-CPGC-1003', 0, 0, 0, 0, '', '', '', '', 0, 0),
(249, 211, 0, '2', 67, 0, 5, 'AD00025', '', '', 'TABLE', '0.00', NULL, 0, '', '', '', 'FFE-FUR-CPGC-1004', 0, 0, 0, 0, '', '', '', '', 0, 0),
(250, 212, 0, '2', 67, 0, 3, 'AD00017', '', '', 'TABLE', '0.00', NULL, 0, '', '', '', 'FFE-FUR-CPGC-1005', 0, 0, 0, 0, '', '', '', '', 0, 0),
(251, 213, 0, '2', 67, 0, 1, 'AD00020', '', '', 'TABLE', '0.00', NULL, 0, '', '', '', 'FFE-FUR-CPGC-1006', 0, 0, 0, 0, '', '', '', '', 0, 0),
(252, 214, 0, '2', 67, 0, 3, 'AD00009', '', '', 'TABLE', '0.00', NULL, 0, '', '', '', 'FFE-FUR-CPGC-1007', 0, 0, 0, 0, '', '', '', '', 0, 0),
(253, 215, 0, '2', 67, 0, 1, 'AD00023', '', '', 'TABLE', '0.00', NULL, 0, '', '', '', 'FFE-FUR-CPGC-1008', 0, 0, 0, 0, '', '', '', '', 0, 0),
(254, 216, 0, '2', 32, 0, 2, 'OP00019', '', '', 'TABLE', '0.00', NULL, 0, '', '', '', 'FFE-FUR-CPGC-1009', 0, 0, 0, 0, '', '', '', '', 0, 0),
(255, 217, 0, '2', 32, 0, 2, 'OP00016', '', '', 'TABLE', '0.00', NULL, 0, '', '', '', 'FFE-FUR-CPGC-1010', 0, 0, 0, 0, '', '', '', '', 0, 0),
(256, 218, 0, '2', 67, 0, 1, 'AD00021', '', '', 'TABLE', '0.00', NULL, 0, '', '', '', 'FFE-FUR-CPGC-1011', 0, 0, 0, 0, '', '', '', '', 0, 0),
(257, 219, 0, '2', 32, 0, 2, 'OP00015', '', '', 'TABLE', '0.00', NULL, 0, '', '', '', 'FFE-FUR-CPGC-1012', 0, 0, 0, 0, '', '', '', '', 0, 0),
(258, 220, 0, '2', 37, 0, 6, 'AD00010', '', '', 'TABLE', '0.00', NULL, 0, '', '', '', 'FFE-FUR-CPGC-1013', 0, 0, 0, 0, '', '', '', '', 0, 0),
(259, 221, 0, '4', 37, 0, 6, 'AD00011', '', '', 'TABLE', '0.00', NULL, 0, '', '', '', 'FFE-FUR-CPGC-1014', 0, 0, 0, 0, '', '', '', '', 0, 0),
(260, 222, 0, '2', 31, 0, 2, 'OP00018', '', '', 'TABLE', '0.00', NULL, 0, '', '', '', 'FFE-FUR-CPGC-1015', 0, 0, 0, 0, '', '', '', '', 0, 0),
(261, 223, 0, '2', 68, 0, 4, 'OP00012', '', '', 'TABLE', '0.00', NULL, 0, '', '', '', 'FFE-FUR-CPGC-1016', 0, 0, 0, 0, '', '', '', '', 0, 0),
(262, 224, 0, '2', 68, 0, 2, 'OP00001', '', '', 'TABLE', '0.00', NULL, 0, '', '', '', 'FFE-FUR-CPGC-1017', 0, 0, 0, 0, '', '', '', '', 0, 0),
(263, 225, 0, '2', 68, 0, 2, 'OP00007', '', '', 'TABLE', '0.00', NULL, 0, '', '', '', 'FFE-FUR-CPGC-1018', 0, 0, 0, 0, '', '', '', '', 0, 0),
(264, 226, 0, '2', 67, 0, 5, 'AD00005', '', '', 'TABLE', '0.00', NULL, 0, '', '', '', 'FFE-FUR-CPGC-1019', 0, 0, 0, 0, '', '', '', '', 0, 0),
(265, 227, 0, '2', 67, 0, 5, 'AD00022', '', '', 'TABLE', '0.00', NULL, 0, '', '', '', 'FFE-FUR-CPGC-1020', 0, 0, 0, 0, '', '', '', '', 0, 0),
(266, 228, 0, '2', 32, 0, 2, 'OP00002', '', '', 'TABLE', '0.00', NULL, 0, '', '', '', 'FFE-FUR-CPGC-1021', 0, 0, 0, 0, '', '', '', '', 0, 0),
(267, 229, 0, '2', 32, 0, 2, 'OP00008', '', '', 'TABLE', '0.00', NULL, 0, '', '', '', 'FFE-FUR-CPGC-1022', 0, 0, 0, 0, '', '', '', '', 0, 0),
(268, 230, 0, '2', 32, 0, 2, 'OP00013', '', '', 'TABLE', '0.00', NULL, 0, '', '', '', 'FFE-FUR-CPGC-1023', 0, 0, 0, 0, '', '', '', '', 0, 0),
(269, 231, 0, '2', 32, 0, 2, 'OP00004', '', '', 'TABLE', '0.00', NULL, 0, '', '', '', 'FFE-FUR-CPGC-1024', 0, 0, 0, 0, '', '', '', '', 0, 0),
(270, 232, 0, '2', 32, 0, 2, 'OP00003', '', '', 'TABLE', '0.00', NULL, 0, '', '', '', 'FFE-FUR-CPGC-1025', 0, 0, 0, 0, '', '', '', '', 0, 0),
(271, 233, 0, '2', 32, 0, 4, 'OP00027', '', '', 'TABLE', '0.00', NULL, 0, '', '', '', 'FFE-FUR-CPGC-1026', 0, 0, 0, 0, '', '', '', '', 0, 0),
(272, 234, 0, '2', 14, 0, 2, 'OP00026', '', '', 'TABLE', '0.00', NULL, 0, '', '', '', 'FFE-FUR-CPGC-1027', 0, 0, 0, 0, '', '', '', '', 0, 0),
(338, 248, 0, '2', 0, 0, 0, '', 'Stanley', '', '', '0.00', NULL, 0, '2014-06-10', '', '', 'TE-CT-CPGC-1001', 0, 0, 0, 0, '', '', '', '', 0, 0),
(347, 253, 0, '2', 0, 0, 8, '', 'Nicholson', '', '', '0.00', NULL, 0, '2017-03-27', '2017-04-02', '', 'TE-CT-CPGC-1002', 0, 0, 0, 0, '', '', '', '', 0, 0),
(348, 254, 0, '2', 0, 0, 8, '', 'Stanley', '', '', '0.00', NULL, 0, '', '', '', 'TE-CT-CPGC-1003', 0, 0, 0, 0, '', '', '', '', 0, 0),
(349, 255, 0, '2', 0, 0, 2, '', 'Stanley', '', '', '0.00', NULL, 0, '', '', '', 'TE-CT-CPGC-1004', 0, 0, 0, 0, '', '', '', '', 0, 0),
(350, 255, 0, '0', 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '', '', '', 'TE-CT-CPGC-1005', 0, 0, 0, 0, '', '', '', '', 0, 0),
(374, 272, 32, '1', 68, 0, 4, 'MMLY0SS0039230C07F8507', 'ACER', 'V196HQL', 'MONITOR', '0.00', NULL, 0, '2019-10-18', '2019-10-18', '', 'FFE- COMP-CPGC-1120', 0, 0, 0, 0, 'MINDEUS ENTERPRISES', '', '', '', 0, 0),
(375, 273, 32, '1', 68, 0, 4, 'CPU-038', '', '', 'CPU', '0.00', NULL, 0, '2019-10-18', '2019-10-18', '', 'FFE- COMP-CPGC-1121', 0, 0, 0, 0, 'MINDEUS ENTERPRISES', '', '', '', 0, 0),
(376, 274, 32, '1', 68, 0, 4, 'KEYBOARD-038', 'A4TECH', '', 'KEYBOARD', '0.00', NULL, 0, '2019-10-18', '2019-10-18', '', 'FFE- COMP-CPGC-1122', 0, 0, 0, 0, 'MINDEUS ENTERPRISES', '', '', '', 0, 0),
(377, 275, 32, '1', 68, 0, 4, 'MOUSE-038', 'A4TECH', '', 'MOUSE', '0.00', NULL, 0, '2019-10-18', '2019-10-18', '', 'FFE- COMP-CPGC-1123', 0, 0, 0, 0, 'MINDEUS ENTERPRISES', '', '', '', 0, 0),
(468, 332, 0, '2', 0, 0, 0, '', 'Stanley', '', '', '0.00', NULL, 0, '', '2017-05-15', '', 'TE-CT-CPGC-1006', 0, 0, 0, 0, '', '', '', '', 0, 0),
(469, 333, 0, '2', 0, 0, 0, '', 'Stanley', '', '', '0.00', NULL, 0, '2017-05-15', '', '', 'TE-CT-CPGC-1007', 0, 0, 0, 0, '', '', '', '', 0, 0),
(471, 335, 0, '2', 0, 0, 0, '', 'Stanley', '', '', '0.00', NULL, 0, '2017-05-15', '', '', 'TE-CT-CPGC-1008', 0, 0, 0, 0, '', '', '', '', 0, 0),
(472, 336, 0, '2', 0, 0, 0, '', 'Stanley', '', '', '0.00', NULL, 0, '2017-05-15', '', '', 'TE-CT-CPGC-1009', 0, 0, 0, 0, '', '', '', '', 0, 0),
(474, 338, 0, '2', 0, 0, 0, '', 'Stanley', '', '', '0.00', NULL, 0, '2017-05-15', '', '', 'TE-CT-CPGC-1010', 0, 0, 0, 0, '', '', '', '', 0, 0),
(475, 339, 0, '2', 0, 0, 0, '', 'Stanley', '', '', '0.00', NULL, 0, '2017-05-15', '', '', 'TE-CT-CPGC-1011', 0, 0, 0, 0, '', '', '', '', 0, 0),
(476, 340, 0, '2', 0, 0, 0, '', 'Stanley', '', '', '0.00', NULL, 0, '2017-05-15', '', '', 'TE-CT-CPGC-1012', 0, 0, 0, 0, '', '', '', '', 0, 0),
(477, 341, 0, '2', 0, 0, 0, '', 'Stanley', '', '', '0.00', NULL, 0, '2017-05-15', '', '', 'TE-CT-CPGC-1013', 0, 0, 0, 0, '', '', '', '', 0, 0),
(479, 343, 0, '2', 0, 0, 0, '', 'Omni', '', '', '0.00', NULL, 0, '', '', '', 'TE-EIC-CPGC-1003', 0, 0, 0, 0, '', '', '', '', 0, 0),
(519, 367, 0, '2', 0, 0, 0, '', 'Stanley', '', '', '0.00', NULL, 0, '2017-05-15', '2017-05-15', '', 'TE-CT-CPGC-1014', 0, 0, 0, 0, '', '', '', '', 0, 0),
(520, 368, 0, '2', 0, 0, 0, '', 'Stanley', '', '', '0.00', NULL, 0, '2017-05-15', '2017-05-15', '', 'TE-CT-CPGC-1015', 0, 0, 0, 0, '', '', '', '', 0, 0),
(608, 414, 0, '2', 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '', '', '', 'TE-EIC-CPGC-1004', 0, 0, 0, 0, '', '', '', '', 0, 0),
(609, 415, 0, '2', 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '2017-05-15', '', '', 'TE-EIC-CPGC-1005', 0, 0, 0, 0, '', '', '', '', 0, 0),
(610, 416, 0, '2', 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '2017-05-15', '', '', 'TE-EIC-CPGC-1006', 0, 0, 0, 0, '', '', '', '', 0, 0),
(612, 418, 0, '2', 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '2016-01-23', '', '', 'TE-CT-CPGC-1016', 0, 0, 0, 0, '', '', '', '', 0, 0),
(614, 420, 0, '2', 37, 0, 6, '', '', '', '', '0.00', NULL, 0, '', '', '', 'TE-CT-CPGC-1017', 0, 0, 0, 0, '', '', '', '', 0, 0),
(615, 421, 0, '2', 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '', '', '', 'TE-CT-CPGC-1018', 0, 0, 0, 0, '', '', '', '', 0, 0),
(617, 423, 0, '2', 0, 0, 0, '', 'Stanley', '', '', '0.00', NULL, 0, '2017-03-27', '', '1 pc corables turnover to Noble', 'TE-CT-CPGC-1019', 0, 0, 0, 0, '', '', '', '', 0, 0),
(618, 423, 0, '0', 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '', '', '', 'TE-CT-CPGC-1015', 0, 0, 0, 0, '', '', '', '', 0, 0),
(619, 424, 0, '2', 0, 0, 0, '', 'Stanley', '', '', '0.00', NULL, 0, '2017-05-15', '', '', 'TE-CT-CPGC-1020', 0, 0, 0, 0, '', '', '', '', 0, 0),
(620, 425, 0, '2', 0, 0, 0, '', 'Stanley', '', '', '0.00', NULL, 0, '2017-03-27', '', '', 'TE-CT-CPGC-1021', 0, 0, 0, 0, '', '', '', '', 0, 0),
(621, 426, 0, '2', 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '2017-03-27', '', '', 'TE-EIC-CPGC-1007', 0, 0, 0, 0, '', '', '', '', 0, 0),
(622, 427, 0, '2', 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '2017-03-27', '', '', 'TE-EIC-CPGC-1008', 0, 0, 0, 0, '', '', '', '', 0, 0),
(653, 455, 0, '', 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '2019-03-25', '', '', 'FFE-FUR-CPGC-1028', 0, 0, 0, 0, '', '', '', '', 0, 0),
(654, 456, 0, '', 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE-FUR-CPGC-1029', 0, 0, 0, 0, '', '', '', '', 0, 0),
(655, 457, 0, '', 0, 0, 0, 'dsfaasgadfsa', '', '', '', '0.00', NULL, 0, '', '2019-11-23', '', 'FFE-TRA-CPGC-1001', 0, 0, 0, 0, '', '', '', '', 0, 0),
(656, 458, 0, '', 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE-FUR-CPGC-1030', 0, 0, 0, 0, '', '', '', '', 0, 0),
(657, 459, 0, '', 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE-TRA-CPGC-1002', 0, 0, 0, 0, '', '', '', '', 0, 0),
(658, 461, 0, '', 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE-TRA-CPGC-1002', 0, 0, 0, 0, '', '', '', '', 0, 0),
(659, 462, 0, '', 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE-TRA-CPGC-1003', 0, 0, 0, 0, '', '', '', '', 0, 0),
(660, 463, 0, '', 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE-TRA-CPGC-1004', 0, 0, 0, 0, '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `et_head`
--

CREATE TABLE IF NOT EXISTS `et_head` (
`et_id` int(11) NOT NULL,
  `accountability_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `subcat_id` int(11) NOT NULL DEFAULT '0',
  `create_date` varchar(100) DEFAULT NULL,
  `et_desc` varchar(255) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT '0',
  `unit_id` int(11) NOT NULL DEFAULT '0',
  `department` varchar(50) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `save_temp` int(11) NOT NULL DEFAULT '0',
  `cancelled` int(11) NOT NULL DEFAULT '0',
  `cancel_reason` text,
  `cancelled_by` int(11) NOT NULL DEFAULT '0',
  `cancel_date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=464 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `et_head`
--

INSERT INTO `et_head` (`et_id`, `accountability_id`, `category_id`, `subcat_id`, `create_date`, `et_desc`, `qty`, `unit_id`, `department`, `user_id`, `save_temp`, `cancelled`, `cancel_reason`, `cancelled_by`, `cancel_date`) VALUES
(1, 3, 2, 13, '2019-10-10 11:57:10', 'Adjustable wrench 6"', 1, 21, 'Operations-EIC', 6, 0, 0, NULL, 0, NULL),
(19, 34, 2, 14, '2019-10-11 09:07:34', 'Electrical tools holster', 1, 21, 'Operations-EIC', 6, 0, 0, NULL, 0, NULL),
(39, 0, 1, 11, '2019-10-11 10:42:37', 'LCD MONITOR - JMB', 1, 21, '', 12, 0, 0, NULL, 0, NULL),
(42, 35, 1, 11, '2019-10-11 10:45:08', 'LCD MONITOR - JMB', 1, 21, 'Admin Office', 12, 0, 0, NULL, 0, NULL),
(43, 25, 1, 11, '2019-10-11 10:46:13', 'LCD MONITOR - JFP', 1, 21, 'Admin Office', 12, 0, 0, NULL, 0, NULL),
(44, 73, 1, 11, '2019-10-11 10:47:29', 'LCD MONITOR - VBR', 1, 21, 'Admin Office', 12, 0, 0, NULL, 0, NULL),
(46, 18, 1, 11, '2019-10-11 10:49:45', 'LCD MONITOR - RMM', 1, 21, 'Admin Office', 12, 0, 0, NULL, 0, NULL),
(48, 54, 1, 11, '2019-10-11 10:52:36', 'LCD MONITOR - JFN', 1, 21, 'Admin Office', 12, 0, 0, NULL, 0, NULL),
(49, 7, 1, 11, '2019-10-11 11:00:58', 'LCD MONITOR - MCC', 1, 21, 'Admin Office', 12, 0, 0, NULL, 0, NULL),
(50, 58, 1, 11, '2019-10-11 11:01:47', 'LCD MONITOR - LFP', 1, 21, 'Admin Office', 12, 0, 0, NULL, 0, NULL),
(52, 52, 1, 11, '2019-10-11 11:05:17', 'LCD MONITOR -  MMM', 1, 21, 'Operation Office', 12, 0, 0, NULL, 0, NULL),
(54, 49, 1, 11, '2019-10-11 11:07:25', 'LCD MONITOR - AOM', 1, 21, 'Operation Office', 12, 0, 0, NULL, 0, NULL),
(55, 16, 1, 11, '2019-10-11 11:12:24', 'LCD MONITOR - JMM', 1, 21, 'Operation Office', 12, 0, 0, NULL, 0, NULL),
(58, 41, 1, 11, '2019-10-11 11:18:07', 'LCD MONITOR - EGC', 1, 21, 'Admin Office', 12, 0, 0, NULL, 0, NULL),
(63, 11, 1, 11, '2019-10-11 16:14:50', 'LCD MONITOR - WBG', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(64, 50, 1, 11, '2019-10-11 16:17:28', 'LCD MONITOR - DBM', 1, 21, 'Fuel Management', 12, 0, 0, NULL, 0, NULL),
(65, 0, 1, 11, '2019-10-11 16:19:22', 'LCD MONITOR - RAL', 1, 21, 'Operation', 12, 0, 0, NULL, 0, NULL),
(66, 12, 1, 11, '2019-10-11 16:24:06', 'LCD MONITOR -RAL', 1, 21, 'Operation', 12, 0, 0, NULL, 0, NULL),
(67, 29, 1, 11, '2019-10-11 16:24:50', 'LCD MONITOR - MAA', 1, 21, 'Operation', 12, 0, 0, NULL, 0, NULL),
(68, 37, 1, 11, '2019-10-11 16:26:57', 'LCD MONITOR - GMB', 1, 21, 'Operation', 12, 0, 0, NULL, 0, NULL),
(78, 55, 2, 14, '2019-10-14 11:03:09', 'Mini Sound Meter', 1, 29, 'Operations', 6, 0, 0, NULL, 0, NULL),
(84, 0, 1, 11, '2019-10-15 09:27:43', 'LCD MONITOR - ADMIN SERVER', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(85, 16, 1, 11, '2019-10-15 09:30:40', 'LCD MONITOR - CCTV', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(86, 16, 1, 11, '2019-10-15 09:32:53', 'LCD MONITOR - SIPC CRO', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(87, 0, 1, 11, '2019-10-15 09:34:10', 'V194 MONITOR - SIPC LOGBOOK', 1, 21, 'Operation', 12, 0, 0, NULL, 0, NULL),
(88, 0, 1, 11, '2019-10-15 09:35:39', 'LCD MONITOR - CPGC CRO1', 1, 21, '', 12, 0, 0, NULL, 0, NULL),
(89, 0, 1, 11, '2019-10-15 09:37:14', 'V194 MONITOR - CPGC CRO2', 1, 21, 'Operation', 12, 0, 0, NULL, 0, NULL),
(90, 0, 1, 11, '2019-10-15 09:39:10', 'LCD MONITOR - CPGC LOGBOOK', 1, 21, 'Operation', 12, 0, 0, NULL, 0, NULL),
(91, 0, 1, 11, '2019-10-15 09:41:22', 'LCD MONITOR - SHIFT SUPERVISOR', 1, 21, 'Operation', 12, 0, 0, NULL, 0, NULL),
(92, 0, 1, 11, '2019-10-15 09:42:32', 'LCD MONITOR - DG1', 1, 21, 'Operation', 12, 0, 0, NULL, 0, NULL),
(93, 0, 1, 11, '2019-10-15 09:44:04', 'LCD MONITOR - DG2', 1, 21, 'Operation', 12, 0, 0, NULL, 0, NULL),
(94, 0, 1, 11, '2019-10-15 09:51:01', 'LCD MONITOR - DG3', 1, 21, 'Operation', 12, 0, 0, NULL, 0, NULL),
(95, 0, 1, 11, '2019-10-15 09:53:37', 'LCD MONITOR - DG5', 1, 21, 'Operation', 12, 0, 0, NULL, 0, NULL),
(96, 64, 1, 11, '2019-10-15 09:54:54', 'LCD MONITOR - ATB', 1, 21, 'MHEC', 12, 0, 0, NULL, 0, NULL),
(97, 72, 1, 11, '2019-10-15 10:00:46', 'LCD MONITOR - JVN', 1, 21, 'MHEC', 12, 0, 0, NULL, 0, NULL),
(98, 55, 1, 11, '2019-10-15 10:03:10', 'ACER TRAVELMATE P249 SERIES WITH CHARGER- MVN', 1, 20, 'Operation', 12, 0, 0, NULL, 0, NULL),
(99, 13, 1, 11, '2019-10-15 10:05:06', 'ASUS NOTEBOOK PC WITH CHARGER- AJL', 1, 20, 'Operations', 12, 0, 0, NULL, 0, NULL),
(100, 62, 1, 11, '2019-10-15 12:02:03', 'ACER TRAVELMATE P249 SERIES WITH CHARGER - EBA', 1, 20, 'Operations', 12, 0, 0, NULL, 0, NULL),
(103, 39, 1, 11, '2019-10-15 13:28:40', 'ACER ASPIRE E5-473 SERIES WITH CHARGER - CLB', 1, 20, 'Operations', 12, 0, 0, NULL, 0, NULL),
(104, 32, 1, 11, '2019-10-15 13:30:06', 'ASUS NOTEBOOK PC WITH CHARGER - JMA', 1, 20, 'Operations', 12, 0, 0, NULL, 0, NULL),
(105, 33, 1, 11, '2019-10-15 13:32:25', 'SAMSUNG NOTEBOOK WITH CHARGER - ATA', 1, 20, 'Maintenance', 12, 0, 0, NULL, 0, NULL),
(106, 0, 1, 4, '2019-10-15 13:34:32', 'ACER DLP PROJECTOR - ADMIN CONFERENCE', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(107, 0, 1, 4, '2019-10-15 13:36:17', 'SCANJET PRO 2550F1 - SERVER SCANNER', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(108, 0, 1, 4, '2019-10-15 13:37:33', 'EPSON L3110 - ADMIN', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(109, 0, 1, 4, '2019-10-15 13:39:02', 'EPSON L455 - OPERATION', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(110, 0, 1, 4, '2019-10-15 13:40:14', 'EPSON L455 - PURCHASING', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(111, 0, 1, 4, '2019-10-15 13:41:41', 'EPSON L210 - WAREHOUSE', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(112, 0, 1, 4, '2019-10-15 13:43:30', 'EPSON L3110 - MHEC', 1, 21, 'MHEC', 12, 0, 0, NULL, 0, NULL),
(113, 0, 1, 4, '2019-10-15 13:44:34', 'EPSON PERFECTION V39 - CPGC LOGBOOK', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(114, 0, 1, 4, '2019-10-15 13:45:38', 'EPSON PERFECTION V39 - SIPC LOGBOOK', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(115, 35, 1, 11, '2019-10-15 13:47:35', 'TRENDSONIC CPU - JMB', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(116, 25, 1, 11, '2019-10-15 13:48:26', 'HIP CPU - JFP', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(117, 73, 1, 11, '2019-10-15 13:49:23', 'POWERLOGIC CPU - VBR', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(118, 18, 1, 11, '2019-10-15 13:50:18', 'POWERLOGIC CPU - RMM', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(119, 54, 1, 11, '2019-10-15 13:51:00', 'HIP CPU - JFN', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(120, 7, 1, 11, '2019-10-15 13:51:59', 'CORE ELITE CPU - MCC', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(121, 58, 1, 11, '2019-10-15 13:52:49', 'SAMSUNG CPU - LFP', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(122, 52, 1, 11, '2019-10-15 13:53:42', 'HIP CPU -MMM', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(123, 49, 1, 11, '2019-10-15 13:54:37', 'HIP CPU - AOM', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(124, 16, 1, 11, '2019-10-15 13:55:24', 'POWERLOGIC CPU - JMM', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(125, 41, 1, 11, '2019-10-15 13:56:07', 'SAMSUNG CPU -EGC', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(126, 11, 1, 11, '2019-10-15 13:57:01', 'HIP CPU - WBG', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(128, 50, 1, 11, '2019-10-15 13:59:11', 'SAMSUNG CPU - DBM', 1, 21, 'Fuel Management', 12, 0, 0, NULL, 0, NULL),
(129, 12, 1, 11, '2019-10-15 13:59:58', 'POWERLOGIC CPU - RAL', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(130, 29, 1, 11, '2019-10-15 14:01:13', 'NEUTRON ION CPU -MAA', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(132, 37, 1, 11, '2019-10-15 14:02:12', 'SAMSUNG CPU - GMB', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(133, 0, 1, 11, '2019-10-15 14:03:24', 'NEUTRONLEGACY CPU - ADMIN SERVER', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(135, 64, 1, 11, '2019-10-15 14:04:39', 'ASPIRE 850 CPU -ATB', 1, 21, 'MHEC', 12, 0, 0, NULL, 0, NULL),
(136, 72, 1, 11, '2019-10-15 14:05:29', 'CPU -JVN', 1, 21, 'MHEC', 12, 0, 0, NULL, 0, NULL),
(137, 0, 1, 11, '2019-10-15 14:06:25', 'POWERLOGIC CPU - SIPC CRO', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(139, 0, 1, 11, '2019-10-15 14:07:21', 'HIP CPU - CPGC CRO1', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(140, 0, 1, 11, '2019-10-15 14:08:20', 'POWERLOGIC CPU - CPGC CRO2', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(142, 0, 1, 11, '2019-10-15 14:09:28', 'SAMSUNG CPU - SHIFT SUPERVISOR', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(143, 0, 1, 11, '2019-10-15 14:11:04', 'FORTRESS CPU - SIPC LOGBOOK', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(144, 0, 1, 11, '2019-10-15 14:11:59', 'SAMSUNG CPU - CPGC LOGBOOK', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(145, 0, 1, 11, '2019-10-15 14:14:13', 'SAMSUNG CPU - DG1', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(146, 0, 1, 11, '2019-10-15 14:15:17', 'HIP CPU - DG2', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(147, 0, 1, 11, '2019-10-15 14:16:04', 'CPU - DG3', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(148, 0, 1, 11, '2019-10-15 14:17:16', 'ASUS CPU - DG5', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(149, 35, 1, 11, '2019-10-15 14:19:35', 'A4TECH KEYBOARD - JMB', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(150, 25, 1, 11, '2019-10-15 14:20:26', 'A4TECH KEYBOARD - JFP', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(151, 73, 1, 11, '2019-10-15 14:21:14', 'A4TECH KEYBOARD - VBR', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(152, 18, 1, 11, '2019-10-15 14:21:59', 'A4TECH KEYBOARD - RMM', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(153, 54, 1, 11, '2019-10-15 14:22:40', 'A4TECH KEYBOARD - JFN', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(154, 7, 1, 11, '2019-10-15 14:23:18', 'A4TECH KEYBOARD - MCC', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(155, 58, 1, 11, '2019-10-15 14:24:03', 'A4TECH KEYBOARD - LFP', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(156, 52, 1, 11, '2019-10-15 14:25:01', 'A4TECH KEYBOARD - MMM', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(157, 49, 1, 11, '2019-10-15 14:25:39', 'A4TECH KEYBOARD - AOM', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(158, 16, 1, 11, '2019-10-15 14:26:25', 'A4TECH KEYBOARD - JMM', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(159, 41, 1, 11, '2019-10-15 14:28:24', 'A4TECH KEYBOARD - EGB', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(160, 11, 1, 11, '2019-10-15 14:29:25', 'A4TECH KEYBOARD - WBG', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(161, 50, 1, 11, '2019-10-15 14:30:20', 'A4TECH KEYBOARD - DBM', 1, 21, 'Fuel Management', 12, 0, 0, NULL, 0, NULL),
(162, 12, 1, 11, '2019-10-15 14:31:02', 'A4TECH KEYBOARD - RAL', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(163, 29, 1, 11, '2019-10-15 14:31:50', 'LOGITECH KEYBOARD - MAA', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(164, 37, 1, 11, '2019-10-15 14:32:30', 'A4TECH KEYBOARD - GMB', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(166, 0, 1, 11, '2019-10-15 14:33:33', 'A4TECH KEYBOARD - ADMIN SERVER', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(167, 64, 1, 11, '2019-10-15 14:34:24', 'A4TECH KEYBOARD - ATB', 1, 21, 'MHEC', 12, 0, 0, NULL, 0, NULL),
(168, 72, 1, 11, '2019-10-15 14:35:09', 'MANHATTAN KEYBOARD - JVN', 1, 21, 'MHEC', 12, 0, 0, NULL, 0, NULL),
(169, 0, 1, 11, '2019-10-15 14:36:11', 'A4TECH KEYBOARD - SIPC CRO', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(170, 0, 1, 11, '2019-10-15 14:37:46', 'A4TECH KEYBOARD - CPGC CRO1', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(171, 0, 1, 11, '2019-10-15 14:38:47', 'A4TECH KEYBOARD - SHIFT SUPERVISOR', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(172, 0, 1, 11, '2019-10-15 14:39:39', 'A4TECH KEYBOARD - SIPC LOGBOOK', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(173, 0, 1, 11, '2019-10-15 14:40:38', 'A4TECH KEYBOARD - CPGC LOGBOOK', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(174, 0, 1, 11, '2019-10-15 14:42:12', 'A4TECH KEYBOARD - DG2', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(175, 0, 1, 11, '2019-10-15 14:43:03', 'MANHATTAN KEYBOARD - DG3', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(176, 0, 1, 11, '2019-10-15 14:43:58', 'MANHATTAN KEYBOARD - DG5', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(177, 35, 1, 11, '2019-10-15 14:56:24', 'A4TECH MOUSE - JMB', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(178, 25, 1, 11, '2019-10-15 15:04:07', 'A4TECH MOUSE - JFP', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(179, 73, 1, 11, '2019-10-15 15:29:55', 'RTM019 MOUSE - VBR', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(181, 18, 1, 11, '2019-10-15 15:31:57', 'A4TECH MOUSE - RMM', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(182, 54, 1, 11, '2019-10-15 15:33:01', 'A4TECH MOUSE - JFN', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(184, 7, 1, 11, '2019-10-15 15:34:29', 'RAPOO MOUSE - MCC', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(185, 58, 1, 11, '2019-10-15 15:38:06', 'A4TECH MOUSE - LFP', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(186, 52, 1, 11, '2019-10-15 15:39:00', 'A4TECH MOUSE - MMM', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(187, 49, 1, 11, '2019-10-15 15:43:35', 'A4TECH MOUSE - AOM', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(189, 16, 1, 11, '2019-10-15 15:44:20', 'A4TECH MOUSE - JMM', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(190, 41, 1, 11, '2019-10-15 15:45:09', 'A4TECH MOUSE - EGC', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(191, 11, 1, 11, '2019-10-15 15:46:19', 'A4TECH MOUSE - WBG', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(193, 50, 1, 11, '2019-10-15 15:47:32', 'A4TECH MOUSE - DBM', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(194, 12, 1, 11, '2019-10-15 15:48:22', 'A4TECH MOUSE - RAL', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(195, 29, 1, 11, '2019-10-15 15:49:02', 'LOGITECH MOUSE - MAA', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(196, 37, 1, 11, '2019-10-15 15:49:52', 'A4TECH MOUSE - GMB', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(197, 0, 1, 11, '2019-10-15 15:50:48', 'A4TECH MOUSE - ADMIN SERVER', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(198, 0, 1, 11, '2019-10-15 15:51:50', '3D OPTICAL MOUSE - CCTV', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(199, 64, 1, 11, '2019-10-15 15:52:52', 'A4TECH MOUSE - ATB', 1, 21, 'MHEC', 12, 0, 0, NULL, 0, NULL),
(200, 72, 1, 11, '2019-10-15 15:53:44', 'MANHATTAN MOUSE - JVN', 1, 21, 'MHEC', 12, 0, 0, NULL, 0, NULL),
(201, 0, 1, 2, '2019-10-15 15:57:24', 'EVOLVE MOUSE - SIPC CRO', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(202, 0, 1, 11, '2019-10-15 15:58:07', 'A4TECH MOUSE - CPGC CRO1', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(203, 0, 1, 11, '2019-10-15 15:59:01', 'A4TECH MOUSE - SHIFT SUPERVISOR', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(204, 0, 1, 11, '2019-10-15 15:59:53', 'A4TECH MOUSE - SIPC LOGBOOK', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(205, 0, 1, 11, '2019-10-15 16:01:27', 'A4TECH MOUSE - CPGC LOGBOOK', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(206, 0, 1, 11, '2019-10-15 16:04:11', 'A4TECH MOUSE - DG2', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(207, 0, 1, 11, '2019-10-15 16:05:01', 'MANHATTAN MOUSE - DG3', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(208, 0, 1, 11, '2019-10-15 16:05:53', 'MANHATTAN MOUSE -  DG5', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(209, 35, 1, 3, '2019-10-15 16:09:51', 'TABLE -JMB', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(210, 25, 1, 3, '2019-10-15 16:11:36', 'TABLE - JFP', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(211, 73, 1, 3, '2019-10-15 16:14:28', 'TABLE - VBR', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(212, 18, 1, 3, '2019-10-15 16:17:24', 'TABLE - RMM', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(213, 54, 1, 3, '2019-10-15 16:18:17', 'TABLE - JFN', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(214, 7, 1, 3, '2019-10-15 16:19:06', 'TABLE - MCC', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(215, 58, 1, 3, '2019-10-15 16:19:46', 'TABLE - LFP', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(216, 52, 1, 3, '2019-10-15 16:20:59', 'TABLE - MMM', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(217, 49, 1, 3, '2019-10-15 16:22:27', 'TABLE - AOM', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(218, 55, 1, 3, '2019-10-15 16:23:37', 'TABLE - MVN', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(219, 16, 1, 3, '2019-10-15 16:24:22', 'TABLE - JMM', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(220, 41, 1, 3, '2019-10-15 16:24:59', 'TABLE - EGC', 1, 21, 'Warehouse', 12, 0, 0, NULL, 0, NULL),
(221, 11, 1, 3, '2019-10-15 16:27:05', 'TABLE - WBG', 1, 21, 'Warehouse', 12, 0, 0, NULL, 0, NULL),
(222, 50, 1, 3, '2019-10-15 16:28:26', 'TABLE - DBM', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(223, 12, 1, 3, '2019-10-15 16:29:02', 'TABLE - RAL', 1, 21, 'Purchasing', 12, 0, 0, NULL, 0, NULL),
(224, 29, 1, 3, '2019-10-15 16:29:41', 'TABLE - MAA', 1, 21, 'Purchasing', 12, 0, 0, NULL, 0, NULL),
(225, 37, 1, 3, '2019-10-15 16:30:20', 'TABLE - GMB', 1, 21, 'Purchasing', 12, 0, 0, NULL, 0, NULL),
(226, 64, 1, 3, '2019-10-15 16:31:18', 'TABLE - ATB', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(227, 72, 1, 3, '2019-10-15 16:31:53', 'TABLE - JVN', 1, 21, 'Admin', 12, 0, 0, NULL, 0, NULL),
(228, 32, 1, 3, '2019-10-15 16:32:42', 'TABLE - JMA', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(229, 39, 1, 3, '2019-10-15 16:33:15', 'TABLE - CLB', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(230, 13, 1, 3, '2019-10-15 16:33:55', 'TABLE - AJL', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(231, 62, 1, 3, '2019-10-15 16:34:32', 'TABLE - EBA', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(232, 33, 1, 3, '2019-10-15 16:35:14', 'TABLE - ATA', 1, 21, 'Maintenance', 12, 0, 0, NULL, 0, NULL),
(233, 0, 1, 3, '2019-10-15 16:35:58', 'TABLE - SIPC LOGBOOK', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(234, 0, 1, 3, '2019-10-15 16:37:03', 'TABLE - CPGC LOGBOOK/SHIFT SUPERVISOR', 1, 21, 'Operations', 12, 0, 0, NULL, 0, NULL),
(248, 77, 2, 13, '2019-10-17 15:22:14', 'Adjustable wrench 8"', 1, 21, '', 6, 0, 0, NULL, 0, NULL),
(253, 3, 2, 13, '2019-10-19 11:31:29', 'Adjustable wrench 10"', 1, 21, 'Operations-EIC', 6, 0, 0, NULL, 0, NULL),
(254, 34, 2, 13, '2019-10-19 11:34:40', 'Adjustable wrench 12"', 1, 21, 'Operations-EIC', 6, 0, 0, NULL, 0, NULL),
(255, 62, 2, 13, '2019-10-19 11:36:49', 'Adjustable wrench 12"', 2, 21, 'Operations', 6, 0, 0, NULL, 0, NULL),
(272, 78, 1, 11, '2019-10-25 09:29:08', 'LCD MONITOR - EYD', 1, 21, '', 12, 0, 0, NULL, 0, NULL),
(273, 78, 1, 11, '2019-10-25 09:33:38', 'CPU - EYD', 1, 21, '', 12, 0, 0, NULL, 0, NULL),
(274, 78, 1, 11, '2019-10-25 09:39:54', 'A4TECH KEYBOARD - EYD', 1, 21, '', 12, 0, 0, NULL, 0, NULL),
(275, 78, 1, 11, '2019-10-25 09:42:23', 'A4TECH MOUSE - EYD', 1, 21, '', 12, 0, 0, NULL, 0, NULL),
(332, 56, 2, 13, '2019-11-04 14:38:59', 'Screw Driver Flat- 10"', 1, 21, 'Operations-EIC', 14, 0, 0, NULL, 0, NULL),
(333, 13, 2, 13, '2019-11-04 14:43:44', 'Screw Driver Flat- 10"', 1, 21, 'Operations', 14, 0, 0, NULL, 0, NULL),
(335, 3, 2, 13, '2019-11-04 14:48:47', 'Screw Driver Philips 10"', 1, 21, 'Operations-EIC', 14, 0, 0, NULL, 0, NULL),
(336, 56, 2, 13, '2019-11-04 14:50:25', 'Screw Driver Phillips 10"', 1, 21, 'Operations-EIC', 14, 0, 0, NULL, 0, NULL),
(338, 13, 2, 13, '2019-11-04 14:52:43', 'Screw Driver 10"', 1, 21, 'Operations', 14, 0, 0, NULL, 0, NULL),
(339, 3, 2, 13, '2019-11-04 14:54:05', 'Long nose 8"', 1, 21, 'Operations-EIC', 14, 0, 0, NULL, 0, NULL),
(340, 34, 2, 13, '2019-11-04 14:55:17', 'Long Nose 8"', 1, 21, 'Operations-EIC', 14, 0, 0, NULL, 0, NULL),
(341, 13, 2, 13, '2019-11-04 14:56:04', 'Long Nose 8"', 1, 21, 'Operations', 14, 0, 0, NULL, 0, NULL),
(343, 34, 2, 14, '2019-11-04 14:59:15', 'Test Light ', 1, 21, 'Operations-EIC', 14, 0, 0, NULL, 0, NULL),
(367, 3, 2, 13, '2019-11-05 11:59:37', 'Allen wrench', 1, 25, 'Operations-EIC', 6, 0, 0, NULL, 0, NULL),
(368, 13, 2, 13, '2019-11-05 12:01:12', 'Allen wrench', 1, 25, 'Operations', 6, 0, 0, NULL, 0, NULL),
(414, 18, 2, 14, '2019-11-06 11:45:04', 'Crimping Tool', 1, 21, 'Admin', 14, 0, 0, NULL, 0, NULL),
(415, 3, 2, 14, '2019-11-06 11:47:14', 'Clip-on Electrical Skinning Knife ', 1, 21, 'Operations-EIC', 14, 0, 0, NULL, 0, NULL),
(416, 34, 2, 14, '2019-11-06 11:48:36', 'Clip-on Electrical Skinning Knife', 1, 21, 'Operations-EIC', 14, 0, 0, NULL, 0, NULL),
(418, 55, 2, 13, '2019-11-06 11:56:30', 'BW Technologies BWC2-H BW Clip Single Gas H2S Monitor', 1, 29, 'Operations', 14, 0, 0, NULL, 0, NULL),
(420, 34, 2, 13, '2019-11-06 13:03:30', 'Carpentry Hammer ', 1, 21, 'CPGC-Warehouse', 14, 0, 0, NULL, 0, NULL),
(421, 34, 2, 13, '2019-11-06 13:04:46', 'Long Nose', 1, 21, 'Operations-EIC', 14, 0, 0, NULL, 0, NULL),
(423, 56, 2, 13, '2019-11-06 13:06:40', 'Plier', 2, 21, 'Operations-EIC', 14, 0, 0, NULL, 0, NULL),
(424, 3, 2, 13, '2019-11-06 13:10:37', 'Plier 8"', 1, 21, 'Operations-EIC', 14, 0, 0, NULL, 0, NULL),
(425, 13, 2, 13, '2019-11-06 13:11:59', 'Plier 8"', 1, 21, 'Operations', 14, 0, 0, NULL, 0, NULL),
(426, 56, 2, 14, '2019-11-06 13:13:35', 'Prescision Screw Driver 6pcs /set', 1, 25, 'Operations-EIC', 14, 0, 0, NULL, 0, NULL),
(427, 3, 2, 14, '2019-11-06 13:14:28', 'Prescision Screw Driver 6pcs /set', 1, 25, 'Operations-EIC', 14, 0, 0, NULL, 0, NULL),
(431, 20, 2, 16, '2019-11-12 10:32:20', 'Micrometer Bow Range 150-300mm', 0, 25, 'CPGC-Whse', 6, 0, 0, NULL, 0, NULL),
(455, 0, 1, 3, '2019-11-16 11:39:58', 'TABLE-RNC', 1, 21, 'MHEC', 12, 1, 0, NULL, 0, NULL),
(456, 0, 1, 3, '2019-11-21 16:46:16', 'Testing', 1, 21, '', 1, 0, 0, NULL, 0, NULL),
(457, 64, 1, 1, '2019-11-22 13:26:55', 'REPLACE ITEM', 1, 21, 'Admin', 1, 0, 0, NULL, 0, NULL),
(458, 16, 1, 3, '2019-11-22 15:19:33', 'ste', 1, 10, 'Operations', 1, 1, 0, NULL, 0, NULL),
(459, 16, 1, 1, '2019-11-23 10:51:14', 'testst', 1, 10, 'Operations', 1, 0, 0, NULL, 0, NULL),
(460, 16, 1, 1, '2019-11-23 10:51:37', 'asdd', 1, 10, 'Operations', 1, 0, 0, NULL, 0, NULL),
(461, 16, 1, 1, '2019-11-23 10:54:03', 'dsa', 1, 10, 'Operations', 1, 1, 0, NULL, 0, NULL),
(462, 16, 1, 1, '2019-11-23 10:54:20', 'sad', 1, 11, 'Operations', 1, 0, 0, NULL, 0, NULL),
(463, 0, 1, 1, '2019-11-25 08:46:00', 'ste', 1, 10, '', 1, 0, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `et_info`
--

CREATE TABLE IF NOT EXISTS `et_info` (
`et_id` int(11) NOT NULL,
  `accountability_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcat_id` int(11) NOT NULL,
  `model` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `serial_no` varchar(100) DEFAULT NULL,
  `acquisition_date` varchar(100) DEFAULT NULL,
  `create_date` varchar(100) DEFAULT NULL,
  `date_issued` varchar(100) DEFAULT NULL,
  `et_desc` varchar(255) DEFAULT NULL,
  `qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `unit_id` int(11) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `location_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `remarks` text,
  `damaged` int(11) DEFAULT '0',
  `damaged_remarks` text,
  `damaged_of_unit` text,
  `aaf_no` varchar(100) DEFAULT NULL,
  `asset_control_no` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `et_set`
--

CREATE TABLE IF NOT EXISTS `et_set` (
`set_id` int(11) NOT NULL,
  `set_name` varchar(50) DEFAULT NULL,
  `set_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `set_serial_no` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `et_set`
--

INSERT INTO `et_set` (`set_id`, `set_name`, `set_price`, `set_serial_no`) VALUES
(1, 'DESKTOP - JMB', '0.00', 'OE-006'),
(2, 'DESKTOP - JVN', '0.00', 'OE-022'),
(3, 'DESKTOP - JFP', '0.00', 'OE-024'),
(4, 'DESKTOP - VBR', '0.00', 'OE-025'),
(5, 'DESKTOP - RMM', '0.00', 'OE-017'),
(6, 'DESKTOP - JFN', '0.00', 'OE-020'),
(7, 'DESKTOP - MCC', '0.00', 'OE-009'),
(8, 'DESKTOP - LFP', '0.00', 'OE-023'),
(9, 'DESKTOP - MMM', '0.00', 'OE-019'),
(10, 'DESKTOP - AOM', '0.00', 'OE-016'),
(11, 'DESKTOP -JMM', '0.00', 'OE-015'),
(12, 'DESKTOP - EGC', '0.00', 'OE-010'),
(13, 'DESKTOP - WBG', '0.00', 'OE-011'),
(14, 'DESKTOP - DBM', '0.00', 'OE-018'),
(15, 'DESKTOP - RAL', '0.00', 'OE-012'),
(16, 'DESKTOP - MAA', '0.00', 'OE-001'),
(17, 'DESKTOP - GMB', '0.00', 'OE-007'),
(18, 'DESKTOP - ADMIN SERVER', '0.00', 'OE-027'),
(19, 'DESKTOP - CCTV', '0.00', 'OE-014'),
(20, 'DESKTOP - SIPC CRO', '0.00', 'OE-036'),
(21, 'DESKTOP - ATB', '0.00', 'OE-005'),
(22, 'DESKTOP - SIPC LOGBOOK', '0.00', 'OE-037'),
(23, 'DESKTOP - CPGC CRO1', '0.00', 'OE-028'),
(24, 'DESKTOP - CPGC CRO2', '0.00', 'OE-029'),
(25, 'DESKTOP - CPGC LOGBOOK', '0.00', 'OE-030'),
(26, 'DESKTOP - SHIFT SUPERVISOR', '0.00', 'OE-031'),
(27, 'DESKTOP - DG1', '0.00', 'OE-032'),
(28, 'DESKTOP - DG2', '0.00', 'OE-033'),
(29, 'DESKTOP - DG3', '0.00', 'OE-034'),
(30, 'DESKTOP - DG5', '0.00', 'OE-035'),
(31, 'DESKTOP - DG3', '0.00', 'OE-034'),
(32, 'DESKTOP - EYD', '0.00', 'OE-046');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
`location_id` int(11) NOT NULL,
  `location_name` varchar(100) DEFAULT NULL,
  `location_prefix` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `location_name`, `location_prefix`) VALUES
(1, 'CPGC', 'CPGC'),
(2, 'SIPC', 'SIPC'),
(3, 'MHEC', 'MHEC');

-- --------------------------------------------------------

--
-- Table structure for table `lost_items`
--

CREATE TABLE IF NOT EXISTS `lost_items` (
`lost_id` int(11) NOT NULL,
  `ed_id` int(11) NOT NULL DEFAULT '0',
  `lost_date` varchar(20) DEFAULT NULL,
  `employee_id` int(11) NOT NULL DEFAULT '0',
  `remarks` text,
  `replacement` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lost_items`
--

INSERT INTO `lost_items` (`lost_id`, `ed_id`, `lost_date`, `employee_id`, `remarks`, `replacement`) VALUES
(2, 128, '2019-11-22', 64, 'TESTING EST', 655),
(3, 116, '2019-11-22', 16, 'TESTING', 117),
(4, 83, '2019-11-22', 16, 'TEST@!', 118),
(5, 656, '2019-11-22', 16, 'sad', 0),
(6, 169, '2019-11-23', 64, 'asdasdf', 0),
(7, 119, '2019-11-25', 0, 'asdasd', 120);

-- --------------------------------------------------------

--
-- Table structure for table `physical_condition`
--

CREATE TABLE IF NOT EXISTS `physical_condition` (
`physical_id` int(11) NOT NULL,
  `condition_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `physical_condition`
--

INSERT INTO `physical_condition` (`physical_id`, `condition_name`) VALUES
(1, 'NEW'),
(2, 'GOOD'),
(3, 'DAMAGED, NEED TO REPAIR'),
(4, 'REPAIRED'),
(5, 'DAMAGED, NEED TO CHANGE');

-- --------------------------------------------------------

--
-- Table structure for table `placement`
--

CREATE TABLE IF NOT EXISTS `placement` (
`placement_id` int(11) NOT NULL,
  `placement_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `placement`
--

INSERT INTO `placement` (`placement_id`, `placement_name`) VALUES
(1, 'CPGC-ADMIN'),
(2, 'CPGC-OPERATION'),
(3, 'SIPC-ADMIN'),
(4, 'SIPC-OPERATION'),
(5, 'MHEC-ADMIN'),
(6, 'CPGC-WHSE'),
(7, 'SIPC-WHSE'),
(8, 'Operation EIC');

-- --------------------------------------------------------

--
-- Table structure for table `rack`
--

CREATE TABLE IF NOT EXISTS `rack` (
`rack_id` int(11) NOT NULL,
  `rack_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rack`
--

INSERT INTO `rack` (`rack_id`, `rack_name`) VALUES
(2, 'SIPC Whse'),
(3, 'SIPC'),
(4, 'Operation office'),
(6, 'Mechanical Shop'),
(7, 'Laboratory/Fuel Management office'),
(8, 'Ground floor-Security Area'),
(9, 'Fuel Management Office'),
(11, 'Engine Operators/SIPC'),
(14, 'Control Room CPGC'),
(15, 'Control Room SIPC'),
(22, 'Operation Office/admin office'),
(24, 'Security Area'),
(25, 'Electrical Room'),
(26, 'Engine Area'),
(27, 'Operation Room'),
(28, 'New Locker Room'),
(30, 'CPGC Ground Floor/Black Start'),
(31, 'Fuel Management'),
(32, 'Operation'),
(35, 'Engine Operators CPGC'),
(37, 'CPGC Warehouse'),
(38, 'Warehouse #1'),
(39, 'Warehouse #2'),
(43, 'CPGC Control Room'),
(46, 'Cabinet 1 D1'),
(47, 'Board 1'),
(48, 'Cabinet 1 D2'),
(49, 'Cabinet 1-D2'),
(50, 'Cabinet 1 D-2'),
(51, 'Cabinet 1D2'),
(52, 'Cabinet 1 D3'),
(53, 'Cabinet 1D3'),
(54, 'Cabinet 1 D-3'),
(55, 'Cabinet 1-D3'),
(56, 'Drum-1'),
(57, 'Drum-2'),
(59, 'Besides Whse room'),
(60, 'CPGC Plant ground floor'),
(61, 'Engine Vicinity'),
(66, 'Control Room Operation - CRO'),
(67, 'Admin Office'),
(68, 'Purchasing Office'),
(69, 'CPGC Auxiliary Area'),
(70, 'CPGC Warehouse Extension');

-- --------------------------------------------------------

--
-- Table structure for table `repair_details`
--

CREATE TABLE IF NOT EXISTS `repair_details` (
`repair_id` int(11) NOT NULL,
  `ed_id` int(11) NOT NULL DEFAULT '0',
  `repair_date` varchar(20) DEFAULT NULL,
  `repair_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `jo_no` varchar(50) DEFAULT NULL,
  `supplier` varchar(100) DEFAULT NULL,
  `assessment` int(11) NOT NULL DEFAULT '0',
  `received_by` int(11) NOT NULL DEFAULT '0',
  `remarks` text,
  `create_date` varchar(20) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `saved` int(11) NOT NULL DEFAULT '0',
  `unsaved` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `returned_et`
--

CREATE TABLE IF NOT EXISTS `returned_et` (
`return_id` int(11) NOT NULL,
  `et_id` int(11) NOT NULL DEFAULT '0',
  `accountability_id` int(11) NOT NULL DEFAULT '0',
  `receive_by` int(11) NOT NULL DEFAULT '0',
  `quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `ars_no` varchar(255) DEFAULT NULL,
  `return_date` varchar(20) DEFAULT NULL,
  `date_issued` varchar(20) DEFAULT NULL,
  `create_date` varchar(100) DEFAULT NULL,
  `return_remarks` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `returned_series`
--

CREATE TABLE IF NOT EXISTS `returned_series` (
`series_id` int(11) NOT NULL,
  `prefix` varchar(100) DEFAULT NULL,
  `series` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returned_series`
--

INSERT INTO `returned_series` (`series_id`, `prefix`, `series`) VALUES
(1, 'CPGC-2019-11', 1001),
(2, 'CPGC-2019-11', 1002),
(3, 'CPGC-2019-11', 1003);

-- --------------------------------------------------------

--
-- Table structure for table `return_details`
--

CREATE TABLE IF NOT EXISTS `return_details` (
`rd_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL DEFAULT '0',
  `et_id` int(11) NOT NULL DEFAULT '0',
  `ed_id` int(11) NOT NULL DEFAULT '0',
  `date_issued` varchar(20) DEFAULT NULL,
  `return_remarks` text
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `return_details`
--

INSERT INTO `return_details` (`rd_id`, `return_id`, `et_id`, `ed_id`, `date_issued`, `return_remarks`) VALUES
(1, 1, 73, 102, '', NULL),
(2, 1, 284, 386, '', NULL),
(3, 1, 293, 403, NULL, NULL),
(4, 1, 294, 404, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `return_head`
--

CREATE TABLE IF NOT EXISTS `return_head` (
`return_id` int(11) NOT NULL,
  `ars_no` varchar(255) DEFAULT NULL,
  `atf_no` varchar(255) DEFAULT NULL,
  `return_date` varchar(20) DEFAULT NULL,
  `accountability_id` int(11) NOT NULL DEFAULT '0',
  `received_by` int(11) NOT NULL DEFAULT '0',
  `return_remarks` text,
  `create_date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `return_head`
--

INSERT INTO `return_head` (`return_id`, `ars_no`, `atf_no`, `return_date`, `accountability_id`, `received_by`, `return_remarks`, `create_date`) VALUES
(1, 'CPGC-2019-11-1001', 'CPGC-2019-1001', '2019-11-11', 45, 11, '', '2019-11-11 18:49:38'),
(2, 'CPGC-2019-11-1002', 'CPGC-2019-1002', '2019-11-12', 20, 41, '', '2019-11-12 13:30:33'),
(3, 'CPGC-2019-11-1003', 'CPGC-2019-1003', '2019-11-12', 20, 41, '', '2019-11-12 13:33:49');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
`subcat_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `subcat_name` varchar(100) DEFAULT NULL,
  `subcat_prefix` varchar(100) DEFAULT NULL,
  `location` varchar(11) DEFAULT NULL,
  `subcat_desc` text
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`subcat_id`, `category_id`, `subcat_name`, `subcat_prefix`, `location`, `subcat_desc`) VALUES
(1, 1, 'Transportation Equipment-CPGC', 'FFE-TRA', 'CPGC', 'Vehicles (Innova, Crosswind, Pickup, Fortuner, etc), Forklift, Boomtruck.'),
(2, 1, 'Communication Equipment-CPGC', 'FFE-COM', 'CPGC', 'Radio Handset, Radio Power Supply, Radio Repeater, Radio Antenna, Microphone with Cord for ICOM Motorola Radius'),
(3, 1, 'Office Furnitures-CPGC', 'FFE-FUR', 'CPGC', 'Office Chair, Office Table, Book Shelves, Filing Cabinets, Computer Table, Conference Table and Chairs, Table Top Glass, Cubicle, Office Partitions, Office Drawers'),
(4, 1, 'Office Equipment-CPGC', 'FFE-EQU', 'CPGC', 'Cellphones, Telephones, Printers, Scanners, Fax Machine, Overhead Projector,  Projector Screen, Photocopier, Hard Disk, USB, External Hard Drive, Recorder, Safety Vault, Standby Generator, Digital and Video Camera, Audio System for the Board Room, Microphone w/ Speaker,  Telephone System (PABX), Air Conditioning Unit, CCTV Camera, IP/Surveillance Camera, Industrial Fan, Air Cooler, Ceiling Fan, Electric Fan, Exhaust Fan, Television'),
(5, 1, 'Personal Protective Equipment-CPGC', 'FFE-PPE', 'CPGC', 'Hard Hat, Electrical Gloves, Goggles, Harness, Safety Shoes, Boots, Chemical Mask, Welding Mask'),
(6, 1, 'Safety & Security Equipment-CPGC', 'FFE-SSE', 'CPGC', 'Data Cabinet, Fire Extinguisher, Eye Wash and Face Shower, Emergency Light, Flash Light, Alarms, Caution Board, Warning Triangle or Cone, Biometric, Automatic Lock Door (Door Access),  Fire Hose,  Illuminated Fire Exit Sign'),
(7, 1, 'Appliance-CPGC', 'FFE-APP', 'CPGC', 'Gas Stove, Refrigirator,  CD/DVD Player, Blender & Juicers, Coffee Maker,  Rice Cooker, Toaster, Electric Airpot, Electric Kettle, Electric Stove, Electric/Gas Oven, Food Warmer/Steamer, Gas Stove, Microwave Oven, Water Dispenser, Dryer, Flat Iron, Hair Dryer, Steam Iron, Vacuum Cleaner, Washing Machine,'),
(8, 1, 'Staffhouse Furnitures and Supplies-CPGC', 'FFE-STA', 'CPGC', 'Dining Table and Chairs, Sofa, Beds, Clothes Cabinet, Mattress, Pillows, Pillow Case, Bed Sheets, Blanket'),
(9, 1, 'Housewares-CPGC', 'FFE-HOU', 'CPGC', 'Bowl, Cups and Saucers, Drinking Glass, Mug, Pitcher, Plate, Spoon and Fork, Food Keeper, Dipper, Pail, Trash Bin'),
(10, 1, 'Medical Equipment-CPGC', 'FFE-MED', 'CPGC', 'Glucometer, ( Glucose Meter, One Touch Ultra 2 ), Digital Blood Pressure Apparatus, Aneroid Blood Pressure Apparatus, Stechoscope, Weighing Scale, First Aid Equipment, Oxygen for First Aid'),
(11, 1, 'Computer Equipment-CPGC', 'FFE- COMP', 'CPGC', 'Routers, PCs, Laptops, UPS, Wifi Adapter'),
(12, 1, 'Office Supplies-CPGC', 'FFE- SUP', 'CPGC', 'Staplers, Calculators, Punchers, Scissor, Tape Dispenser, Filing Tray, Document Keeper, Clip Board, Binders, Books,'),
(13, 2, 'Common tools-CPGC', 'TE-CT', 'CPGC', 'Plier,Combination wrench,Hacksaw,Snip cutter,Ball hammer, adjustable'),
(14, 2, 'EIC Tools-CPGC', 'TE-EIC', 'CPGC', 'Multi Tester,Flat screw.Philip screw'),
(16, 2, 'Mechanical Tools-CPGC', 'TE-MT', 'CPGC', 'Bore gauge 250-400mm'),
(17, 2, 'Special tools-CPGC', 'TE-ST1', 'CPGC', 'Special Cap for fitting bearing shell'),
(18, 2, 'Purifier-CPGC', 'TE-PUR', 'CPGC', 'LOPX 1 & 2. MAPX 207, MAPX 309, MAPX 510'),
(19, 2, 'Turbo Charger-CPGC', 'TE-TUR', 'CPGC', 'Tool box for T/C'),
(39, 4, 'Transportation Equipment-SIPC', 'FFE-TRA', 'SIPC', 'Vehicles (Innova, Crosswind, Pickup, Fortuner, etc), Forklift, Boomtruck.'),
(40, 5, 'Transportation Equipment-MHEC', 'FFE-TRA', 'MHEC', 'Vehicles (Innova, Crosswind, Pickup, Fortuner, etc), Forklift, Boomtruck.'),
(41, 4, 'Communication Equipment-SIPC', 'FFE-COM', 'SIPC', 'Radio Handset, Radio Power Supply, Radio Repeater, Radio Antenna, Microphone with Cord for ICOM Motorola Radius'),
(42, 5, 'Communication Equipment-MHEC', 'FFE-COM', 'MHEC', 'Radio Handset, Radio Power Supply, Radio Repeater, Radio Antenna, Microphone with Cord for ICOM Motorola Radius'),
(43, 4, 'Office Furnitures-SIPC', 'FFE-FUR', 'SIPC', 'Office Chair, Office Table, Book Shelves, Filing Cabinets, Computer Table, Conference Table and Chairs, Table Top Glass, Cubicle, Office Partitions, Office Drawers'),
(44, 5, 'Office Furnitures-MHEC', 'FFE-FUR', 'MHEC', 'Office Chair, Office Table, Book Shelves, Filing Cabinets, Computer Table, Conference Table and Chairs, Table Top Glass, Cubicle, Office Partitions, Office Drawers'),
(45, 4, 'Office Equipment-SIPC', 'FFE-EQU', 'SIPC', 'Cellphones, Telephones, Printers, Scanners, Fax Machine, Overhead Projector, Projector Screen, Photocopier, Hard Disk, USB, External Hard Drive, Recorder, Safety Vault, Standby Generator, Digital and Video Camera, Audio System for the Board Room, Microphone w/ Speaker, Telephone System (PABX), Air Conditioning Unit, CCTV Camera, IP/Surveillance Camera, Industrial Fan, Air Cooler, Ceiling Fan, Electric Fan, Exhaust Fan, Television'),
(46, 5, 'Office Equipment-MHEC', 'FFE-EQU', 'MHEC', 'Cellphones, Telephones, Printers, Scanners, Fax Machine, Overhead Projector, Projector Screen, Photocopier, Hard Disk, USB, External Hard Drive, Recorder, Safety Vault, Standby Generator, Digital and Video Camera, Audio System for the Board Room, Microphone w/ Speaker, Telephone System (PABX), Air Conditioning Unit, CCTV Camera, IP/Surveillance Camera, Industrial Fan, Air Cooler, Ceiling Fan, Electric Fan, Exhaust Fan, Television'),
(47, 4, 'Personal Protective Equipment-SIPC', 'FFE-PPE', 'SIPC', 'Hard Hat, Electrical Gloves, Goggles, Harness, Safety Shoes, Boots, Chemical Mask, Welding Mask'),
(48, 5, 'Personal Protective Equipment-MHEC', 'FFE-PPE', 'MHEC', 'Hard Hat, Electrical Gloves, Goggles, Harness, Safety Shoes, Boots, Chemical Mask, Welding Mask'),
(49, 4, 'Safety & Security Equipment-SIPC', 'FFE-SSE', 'SIPC', 'Data Cabinet, Fire Extinguisher, Eye Wash and Face Shower, Emergency Light, Flash Light, Alarms, Caution Board, Warning Triangle or Cone, Biometric, Automatic Lock Door (Door Access), Fire Hose, Illuminated Fire Exit Sign'),
(50, 5, 'Safety & Security Equipment-MHEC', 'FFE-SSE', 'MHEC', 'Data Cabinet, Fire Extinguisher, Eye Wash and Face Shower, Emergency Light, Flash Light, Alarms, Caution Board, Warning Triangle or Cone, Biometric, Automatic Lock Door (Door Access), Fire Hose, Illuminated Fire Exit Sign'),
(51, 4, 'Appliance-SIPC', 'FFE-APP', 'SIPC', 'Gas Stove, Refrigirator, CD/DVD Player, Blender & Juicers, Coffee Maker, Rice Cooker, Toaster, Electric Airpot, Electric Kettle, Electric Stove, Electric/Gas Oven, Food Warmer/Steamer, Gas Stove, Microwave Oven, Water Dispenser, Dryer, Flat Iron, Hair Dryer, Steam Iron, Vacuum Cleaner, Washing Machine,'),
(52, 5, 'Appliance-MHEC', 'FFE-APP', 'MHEC', 'Gas Stove, Refrigirator, CD/DVD Player, Blender & Juicers, Coffee Maker, Rice Cooker, Toaster, Electric Airpot, Electric Kettle, Electric Stove, Electric/Gas Oven, Food Warmer/Steamer, Gas Stove, Microwave Oven, Water Dispenser, Dryer, Flat Iron, Hair Dryer, Steam Iron, Vacuum Cleaner, Washing Machine,'),
(53, 4, 'Staffhouse Furnitures and Supplies-SIPC', 'FFE-STA', 'SIPC', 'Dining Table and Chairs, Sofa, Beds, Clothes Cabinet, Mattress, Pillows, Pillow Case, Bed Sheets, Blanket'),
(54, 5, 'Staffhouse Furnitures and Supplies-MHEC', 'FFE-STA', 'MHEC', 'Dining Table and Chairs, Sofa, Beds, Clothes Cabinet, Mattress, Pillows, Pillow Case, Bed Sheets, Blanket'),
(55, 4, 'Housewares-SIPC', 'FFE-HOU', 'SIPC', 'Bowl, Cups and Saucers, Drinking Glass, Mug, Pitcher, Plate, Spoon and Fork, Food Keeper, Dipper, Pail, Trash Bin'),
(56, 5, 'Housewares-MHEC', 'FFE-HOU', 'MHEC', 'Bowl, Cups and Saucers, Drinking Glass, Mug, Pitcher, Plate, Spoon and Fork, Food Keeper, Dipper, Pail, Trash Bin'),
(57, 4, 'Medical Equipment-SIPC', 'FFE-MED', 'SIPC', 'Glucometer, ( Glucose Meter, One Touch Ultra 2 ), Digital Blood Pressure Apparatus, Aneroid Blood Pressure Apparatus, Stechoscope, Weighing Scale, First Aid Equipment, Oxygen for First Aid'),
(58, 5, 'Medical Equipment-MHEC', 'FFE-MED', 'MHEC', 'Glucometer, ( Glucose Meter, One Touch Ultra 2 ), Digital Blood Pressure Apparatus, Aneroid Blood Pressure Apparatus, Stechoscope, Weighing Scale, First Aid Equipment, Oxygen for First Aid'),
(59, 4, 'Computer Equipment-SIPC', 'FFE-COMP', 'SIPC', 'Routers, PCs, Laptops, UPS, Wifi Adapter'),
(60, 5, 'Computer Equipment-MHEC', 'FFE-COMP', 'MHEC', 'Routers, PCs, Laptops, UPS, Wifi Adapter'),
(61, 4, 'Office Supplies-SIPC', 'FFE-SUP', 'SIPC', 'Staplers, Calculators, Punchers, Scissor, Tape Dispenser, Filing Tray, Document Keeper, Clip Board, Binders, Books,'),
(62, 5, 'Office Supplies-MHEC', 'FFE-SUP', 'MHEC', 'Staplers, Calculators, Punchers, Scissor, Tape Dispenser, Filing Tray, Document Keeper, Clip Board, Binders, Books,'),
(63, 6, 'Common Tools-MHEC', 'TE-CT', 'MHEC', 'Plier,Combination wrench,Hacksaw,Snip cutter,Ball hammer, adjustable'),
(64, 6, 'EIC Tools-MHEC', 'TE-EIC', 'MHEC', 'Multi Tester,Flat screw.Philip screw'),
(65, 6, 'Mechanical Tools-MHEC', 'TE-MT', 'MHEC', 'Bore gauge 250-400mm'),
(66, 6, 'Special Tools-MHEC', 'TE-STI', 'MHEC', 'Special Cap for fitting bearing shell'),
(67, 6, 'Purifier-MHEC', 'TE-PUR', 'MHEC', 'LOPX 1 & 2. MAPX 207, MAPX 309, MAPX 510'),
(68, 6, 'Turbo Charger-MHEC', 'TE-TUR', 'MHEC', 'Tool box for T/C'),
(69, 7, 'Common Tools-SIPC', 'TE-CT', 'SIPC', 'Plier,Combination wrench,Hacksaw,Snip cutter,Ball hammer, adjustable'),
(70, 7, 'EIC Tools-SIPC', 'TE-EIC', 'SIPC', 'Multi Tester,Flat screw.Philip screw'),
(71, 7, 'Mechanical Tools-SIPC', 'TE-MT', 'SIPC', 'Bore gauge 250-400mm'),
(72, 7, 'Special Tools-SIPC', 'TE-STI', 'SIPC', 'Special Cap for fitting bearing shell'),
(73, 7, 'Purifier-SIPC', 'TE-PUR', 'SIPC', 'LOPX 1 & 2. MAPX 207, MAPX 309, MAPX 510'),
(74, 7, 'Turbo Charger-SIPC', 'TE-TUR', 'SIPC', 'Tool box for T/C');

-- --------------------------------------------------------

--
-- Table structure for table `transfer_details`
--

CREATE TABLE IF NOT EXISTS `transfer_details` (
`td_id` int(11) NOT NULL,
  `transfer_id` int(11) NOT NULL DEFAULT '0',
  `et_id` int(11) NOT NULL DEFAULT '0',
  `ed_id` int(11) NOT NULL DEFAULT '0',
  `date_issued` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_head`
--

CREATE TABLE IF NOT EXISTS `transfer_head` (
`transfer_id` int(11) NOT NULL,
  `accountability_id` int(11) NOT NULL DEFAULT '0',
  `transfer_to` int(11) NOT NULL DEFAULT '0',
  `transfer_date` varchar(20) DEFAULT NULL,
  `create_date` varchar(100) DEFAULT NULL,
  `transfer_remarks` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE IF NOT EXISTS `unit` (
`unit_id` int(11) NOT NULL,
  `unit_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`unit_id`, `unit_name`) VALUES
(1, 'bag/s'),
(2, 'bar/s'),
(3, 'bot/s'),
(4, 'box/s'),
(5, 'can/s'),
(6, 'cart/s'),
(7, 'cont/s'),
(8, 'cu.m'),
(9, 'cyl/s'),
(10, 'drum/s'),
(11, 'feet'),
(12, 'gal/s'),
(13, 'kg/s'),
(14, 'lgth/s'),
(15, 'ltr/s'),
(16, 'mtr/s'),
(17, 'pack/s'),
(18, 'pad/s'),
(19, 'pail/s'),
(20, 'pair/s'),
(21, 'pc/s'),
(22, 'ream/s'),
(23, 'roll/s'),
(24, 'sack/s'),
(25, 'set/s'),
(26, 'sht/s'),
(27, 'tab/s'),
(28, 'tube/s'),
(29, 'unit/s'),
(30, 'grm/s'),
(31, 'assy/s'),
(32, 'lot/s'),
(33, 'Kit/s');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`user_id` int(11) NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `usertype` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `fullname`, `username`, `password`, `usertype`) VALUES
(1, 'admin', 'admin', 'admin', 1),
(6, 'Eugene Cruz', 'eugeneetms', 'etms1234', 1),
(8, 'William Garcia', 'willliametms', 'etms1234', 1),
(9, 'Dhen Mark Belmonte', 'marketms', 'etms1234', 1),
(12, 'Jinby Pederio', 'jinby', 'jinby1234', 1),
(13, 'Jennilyn Bagon', 'jen', 'jen1234', 1),
(14, 'Patrick Jun Pineda', 'patrick', 'patrick123', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asset_series`
--
ALTER TABLE `asset_series`
 ADD PRIMARY KEY (`asset_id`);

--
-- Indexes for table `atf_series`
--
ALTER TABLE `atf_series`
 ADD PRIMARY KEY (`atf_id`);

--
-- Indexes for table `borrow_details`
--
ALTER TABLE `borrow_details`
 ADD PRIMARY KEY (`bd_id`);

--
-- Indexes for table `borrow_head`
--
ALTER TABLE `borrow_head`
 ADD PRIMARY KEY (`bh_id`);

--
-- Indexes for table `borrow_series`
--
ALTER TABLE `borrow_series`
 ADD PRIMARY KEY (`bseries_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
 ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
 ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `damage_info`
--
ALTER TABLE `damage_info`
 ADD PRIMARY KEY (`damage_id`);

--
-- Indexes for table `damage_series`
--
ALTER TABLE `damage_series`
 ADD PRIMARY KEY (`ds_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
 ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
 ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `employee_inclusion`
--
ALTER TABLE `employee_inclusion`
 ADD PRIMARY KEY (`ei_id`);

--
-- Indexes for table `employee_series`
--
ALTER TABLE `employee_series`
 ADD PRIMARY KEY (`empser_id`);

--
-- Indexes for table `et_details`
--
ALTER TABLE `et_details`
 ADD PRIMARY KEY (`ed_id`);

--
-- Indexes for table `et_head`
--
ALTER TABLE `et_head`
 ADD PRIMARY KEY (`et_id`);

--
-- Indexes for table `et_info`
--
ALTER TABLE `et_info`
 ADD PRIMARY KEY (`et_id`);

--
-- Indexes for table `et_set`
--
ALTER TABLE `et_set`
 ADD PRIMARY KEY (`set_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
 ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `lost_items`
--
ALTER TABLE `lost_items`
 ADD PRIMARY KEY (`lost_id`);

--
-- Indexes for table `physical_condition`
--
ALTER TABLE `physical_condition`
 ADD PRIMARY KEY (`physical_id`);

--
-- Indexes for table `placement`
--
ALTER TABLE `placement`
 ADD PRIMARY KEY (`placement_id`);

--
-- Indexes for table `rack`
--
ALTER TABLE `rack`
 ADD PRIMARY KEY (`rack_id`);

--
-- Indexes for table `repair_details`
--
ALTER TABLE `repair_details`
 ADD PRIMARY KEY (`repair_id`);

--
-- Indexes for table `returned_et`
--
ALTER TABLE `returned_et`
 ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `returned_series`
--
ALTER TABLE `returned_series`
 ADD PRIMARY KEY (`series_id`);

--
-- Indexes for table `return_details`
--
ALTER TABLE `return_details`
 ADD PRIMARY KEY (`rd_id`);

--
-- Indexes for table `return_head`
--
ALTER TABLE `return_head`
 ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
 ADD PRIMARY KEY (`subcat_id`);

--
-- Indexes for table `transfer_details`
--
ALTER TABLE `transfer_details`
 ADD PRIMARY KEY (`td_id`);

--
-- Indexes for table `transfer_head`
--
ALTER TABLE `transfer_head`
 ADD PRIMARY KEY (`transfer_id`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
 ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asset_series`
--
ALTER TABLE `asset_series`
MODIFY `asset_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=660;
--
-- AUTO_INCREMENT for table `atf_series`
--
ALTER TABLE `atf_series`
MODIFY `atf_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `borrow_details`
--
ALTER TABLE `borrow_details`
MODIFY `bd_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `borrow_head`
--
ALTER TABLE `borrow_head`
MODIFY `bh_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `borrow_series`
--
ALTER TABLE `borrow_series`
MODIFY `bseries_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `damage_info`
--
ALTER TABLE `damage_info`
MODIFY `damage_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `damage_series`
--
ALTER TABLE `damage_series`
MODIFY `ds_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `employee_inclusion`
--
ALTER TABLE `employee_inclusion`
MODIFY `ei_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `employee_series`
--
ALTER TABLE `employee_series`
MODIFY `empser_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `et_details`
--
ALTER TABLE `et_details`
MODIFY `ed_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=661;
--
-- AUTO_INCREMENT for table `et_head`
--
ALTER TABLE `et_head`
MODIFY `et_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=464;
--
-- AUTO_INCREMENT for table `et_info`
--
ALTER TABLE `et_info`
MODIFY `et_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `et_set`
--
ALTER TABLE `et_set`
MODIFY `set_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `lost_items`
--
ALTER TABLE `lost_items`
MODIFY `lost_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `physical_condition`
--
ALTER TABLE `physical_condition`
MODIFY `physical_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `placement`
--
ALTER TABLE `placement`
MODIFY `placement_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `rack`
--
ALTER TABLE `rack`
MODIFY `rack_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `repair_details`
--
ALTER TABLE `repair_details`
MODIFY `repair_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `returned_et`
--
ALTER TABLE `returned_et`
MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `returned_series`
--
ALTER TABLE `returned_series`
MODIFY `series_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `return_details`
--
ALTER TABLE `return_details`
MODIFY `rd_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `return_head`
--
ALTER TABLE `return_head`
MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
MODIFY `subcat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `transfer_details`
--
ALTER TABLE `transfer_details`
MODIFY `td_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transfer_head`
--
ALTER TABLE `transfer_head`
MODIFY `transfer_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
