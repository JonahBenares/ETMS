-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2019 at 08:51 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_etms`
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_series`
--

INSERT INTO `asset_series` (`asset_id`, `subcat_prefix`, `location`, `series`) VALUES
(1, 'FFE-TRA', NULL, 1001),
(2, 'FFE-TRA', NULL, 1002),
(3, 'FFE-TRA', 'BCD', 1003),
(4, 'FFE-TRA', 'BCD', 1004),
(5, 'FFE-TRA', 'BCD', 1005),
(6, 'FFE-TRA', 'BCD', 1006),
(7, 'FFE-TRA', 'BCD', 1007),
(8, 'FFE-TRA', 'BCD', 1008),
(9, 'FFE-TRA', 'BCD', 1009),
(10, 'FFE-TRA', 'BCD', 1010),
(11, 'FFE-TRA', 'BCD', 1011),
(12, 'FFE-TRA', 'BCD', 1012),
(13, 'FFE-TRA', 'BCD', 1013),
(14, 'FFE-TRA', 'BCD', 1014);

-- --------------------------------------------------------

--
-- Table structure for table `atf_series`
--

CREATE TABLE IF NOT EXISTS `atf_series` (
`atf_id` int(11) NOT NULL,
  `atf_prefix` varchar(255) DEFAULT NULL,
  `series` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `atf_series`
--

INSERT INTO `atf_series` (`atf_id`, `atf_prefix`, `series`) VALUES
(1, 'BS-2019', 1001),
(2, 'BCD-2019', 1002),
(3, 'BS-2019', 1003),
(4, 'BS-2019', 1004),
(5, 'BS-2019', 1005),
(6, 'BCD-2019', 1006);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrow_details`
--

INSERT INTO `borrow_details` (`bd_id`, `bh_id`, `et_id`, `ed_id`, `qty`, `returned`, `returned_date`, `returned_by`, `return_qty`) VALUES
(1, 2, 7, 7, 1, 0, NULL, 0, '0.00');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrow_head`
--

INSERT INTO `borrow_head` (`bh_id`, `borrowed_by`, `borrowed_date`, `borrow_series`, `user_id`, `create_date`) VALUES
(1, 31, '2019-04-23', 'BS-2019-04-1001', 1, '2019-04-23 13:18:34'),
(2, 31, '2019-04-23', 'BS-2019-04-1002', 1, '2019-04-23 13:49:16');

-- --------------------------------------------------------

--
-- Table structure for table `borrow_series`
--

CREATE TABLE IF NOT EXISTS `borrow_series` (
`bseries_id` int(11) NOT NULL,
  `borrow_prefix` varchar(50) DEFAULT NULL,
  `series` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrow_series`
--

INSERT INTO `borrow_series` (`bseries_id`, `borrow_prefix`, `series`) VALUES
(1, 'BS-2019-04', '1001'),
(2, 'BS-2019-04', '1002');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`category_id` int(11) NOT NULL,
  `category_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Furniture, Fixtures and Equipment'),
(2, 'Tools and Equipments');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE IF NOT EXISTS `currency` (
`currency_id` int(11) NOT NULL,
  `currency_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currency_id`, `currency_name`) VALUES
(3, 'USD'),
(4, 'YEN');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `damage_info`
--

INSERT INTO `damage_info` (`damage_id`, `incident_date`, `etdr_no`, `activity`, `et_id`, `ed_id`, `damage_location`, `accountability`, `incident_description`, `equip_damage`, `recommendation`, `submitted_by`, `checked_by`, `noted_by`, `create_date`, `user_id`) VALUES
(1, '2019-04-22', 'BS-2019-04-1001', 'ss', 3, 3, 'ss', 'ss', 'ss', 'ss', 's', 31, 53, 66, '2019-04-22 16:51:29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `damage_series`
--

CREATE TABLE IF NOT EXISTS `damage_series` (
`ds_id` int(11) NOT NULL,
  `damage_prefix` varchar(100) DEFAULT NULL,
  `series` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `damage_series`
--

INSERT INTO `damage_series` (`ds_id`, `damage_prefix`, `series`) VALUES
(1, 'BS-2019-04', 1001);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
`department_id` int(11) NOT NULL,
  `department_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `type` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `employee_name`, `department`, `location_id`, `aaf_no`, `position`, `contact_no`, `email`, `type`) VALUES
(1, 'Ma. Milagros Arana', 'Management', 0, NULL, 'General Manager', '0917-5924080', '', 0),
(2, 'Rhea Arsenio', 'Trading', 0, NULL, 'Trader', '0920-6398529', '', 0),
(3, 'Jonah Faye Benares', 'IT Department', 0, NULL, 'Software Development Supervisor', '0932-4515369', '', 0),
(4, 'Kervic Biñas', 'Purchasing', 0, NULL, 'Procurement Assistant', '0930-2357794', '', 0),
(5, 'Joemarie Calibjo', 'Admin', 0, NULL, 'Service Vehicle Driver', '0950-2900419', '', 0),
(6, 'Maylen Cabaylo', 'Purchasing', 0, NULL, 'Purchasing Officer', '09099491894/09234597487', '', 0),
(7, 'Rey  Carbaquil', 'Admin', 0, NULL, 'Service Vehicle Driver', '0912 5905319', '', 0),
(8, 'Cristy Cesar', 'Accounting', 0, NULL, 'Accounting Associate', '0916-3961389', '', 0),
(9, 'Gretchen Danoy', 'Accounting', 0, NULL, 'Accounting Supervisor', '0922-4386979', '', 0),
(10, 'Merry Michelle Dato', 'Special Projects', 0, NULL, 'Projects and Asset Management Assistant', '0920-5205418', '', 0),
(11, 'Joemar De Los Santos', 'Trading', 0, NULL, 'Lead Trader', '0923-4187139', '', 0),
(12, 'Imelda Espera', 'Accounting / Finance', 0, NULL, 'A/P & Credit Supervisor', '0918-6760758', '', 0),
(13, 'Elaisa Jane Febrio', 'HR/Admin', 0, NULL, 'HR Assistant', '0917-9941917', '', 0),
(14, 'Jason Flor', 'IT Department', 0, NULL, 'Software Development Assistant', '0939-6488141', '', 1),
(15, 'Zara Joy Gabales', 'EMG-Billing', 0, NULL, 'Billing Assistant', '0939-1159164', '', 0),
(16, 'Relsie Gallo', '0', 0, NULL, '0', '0', '', 0),
(17, 'Celina Marie Grabillo', 'EMG-Billing', 0, NULL, 'Billing & Settlement Officer', '0907-4494479', '', 0),
(18, 'Nazario Shyde Jr. Ibañez', 'Trading', 0, NULL, 'Trader', '0922-3271576', '', 0),
(19, 'Gebby Jalandoni', 'Accounting', 0, NULL, 'Accounting Assistant', '0909-9579077', '', 0),
(20, 'Caesariane Jo', 'Trading', 0, NULL, 'Trader', '0927-8212228', '', 0),
(21, 'Lloyd Jamero', 'IT Department', 0, NULL, 'IT Specialist', '0908-7636105', '', 0),
(22, 'Annavi Lacambra', 'Accounting', 0, NULL, 'Corporate Accountant', '0932-3649978', '', 0),
(23, 'Ma. Erika Oquiana', 'Trading', 0, NULL, 'Trader', '0912-4746470/09773640452', '', 0),
(24, 'Charmaine Rei Plaza', 'Trading', 0, NULL, 'Energy Market Analyst', '0948-9285185', '', 0),
(25, 'Cresilda Mae Ramirez', 'Accounting', 0, NULL, 'Internal Auditor', '0977-8215247', '', 0),
(26, 'Melanie Rocha', 'Admin', 0, NULL, 'Utility', '0910-4526879', '', 0),
(27, 'Zyndyryn Rosales', 'Finance', 0, NULL, 'Finance Supervisor', '0932-8737196', '', 0),
(28, 'Genie Saludo', 'HR/Admin', 0, NULL, 'HR Assistant', '09272257127/09454569188', '', 0),
(29, 'Daisy Jane Sanchez', 'Trading', 0, NULL, 'EMG Manager / WESM Compliance Officer', '0932-8773754', '', 0),
(30, 'Rosemarie Sarroza', 'Trading', 0, NULL, 'Trader', '0917-9512950', '', 0),
(31, 'Stephine David Severino', 'IT Department', 2, '', 'Software Development Assistant', '0977-7106914', '', 1),
(32, 'Henry Sia', 'Engineering Dept.', 0, NULL, 'Grid Integration Manager', '9177996939', '', 0),
(33, 'Syndey Sinoro', 'HR/Admin', 0, NULL, 'HR Supervisor', '0923-2802343', '', 0),
(34, 'Marianita Tabilla', 'Finance', 0, NULL, 'Finance Assistant', '0917-7793318', '', 0),
(35, 'Krystal Gayle Tagalog', 'HR/Admin', 0, NULL, 'Payroll Assistant', '0946-3348559', '', 0),
(36, 'Hennelen Tanan', 'IT Department', 0, NULL, 'IT Encoder ', '0945-5743745', '', 0),
(37, 'Teresa Tan', 'Contracts & Compliance', 0, NULL, 'Contracts & Compliance Asst.', '0923-6828813', '', 0),
(38, 'Dary Mae Villas', 'Trading', 0, NULL, 'Trader', '0930-7871989', '', 0),
(39, 'Marlon Adorio', 'Electrical & Instrumentation', 0, NULL, 'E & IC Technician', '0912-5896720', '', 0),
(40, 'John Ezequiel Alejandro', 'Operations', 0, NULL, 'Auxiliary Operator ', '0916-5321090', '', 0),
(41, 'Carlito Alevio', 'Mechanical Maintenance', 0, NULL, 'Plant Mechanic', '0926-8161359', '', 0),
(42, 'Regina Alova', 'Trading', 0, NULL, 'Operations Analyst', '09235607021 / 09485342153', '', 0),
(43, 'Rebecca Alunan ', 'Trading', 0, NULL, 'Performance Monitoring Supervisor', '0906-3425996', '', 0),
(44, 'Fleur de Liz Ambong', 'Fuel Management', 0, NULL, 'Fuel Management Asst.', '0909-4620177', '', 0),
(45, 'Beverly  Ampog', 'Operations', 0, NULL, 'Operations Analyst', '0995-3634548', '', 0),
(46, 'Genaro Angulo', 'Electrical & Instrumentation', 0, NULL, 'Electrical Supervisor', '09196745918', '', 0),
(47, 'Rey Argawanon', 'Electrical & Instrumentation', 0, NULL, 'Power Delivery & Technical Manager', '0917-8653566', '', 0),
(48, 'Alona Arroyo', 'Operations', 0, NULL, 'Operations Planner', '0919-3725318', '', 0),
(49, 'Joemillan Baculio', 'Operations', 0, NULL, 'Auxiliary Operator', '0906-8802652', '', 0),
(50, 'Rashelle Joy Bating', 'Special Projects', 0, NULL, 'Projects Coordinator Assistant', '0910-1980348', '', 0),
(51, 'Gener Bawar', 'Machine Shop and Reconditioning', 0, NULL, 'Machine Shop & Reconditioning Supervisor', '0920-2128998', '', 0),
(52, 'Ruel Beato', 'Mechanical Maintenance', 0, NULL, 'Plant Mechanic', '0939-2369794', '', 0),
(53, 'Mary Grace Bugna', 'Accounting', 0, NULL, 'Asset Management Asst.', '0930-7765706', '', 0),
(54, 'Vency Cababat', 'Electrical & Instrumentation', 0, NULL, ' E&IC Technician', '09267932911 / 09265638526', '', 0),
(55, 'Rusty Canama', 'Mechanical Maintenance', 0, NULL, 'Plant Mechanic', '0949-1547358', '', 0),
(56, 'Exequil Corino', 'Operations', 0, NULL, 'Engine Room Operator', '0920-6995646', '', 0),
(57, 'Juanito Dagupan', 'Operations', 0, NULL, 'Operation Shift Supervisor', '0918-6438993', '', 0),
(58, 'Julyn May Divinagracia', 'HR/Admin', 0, NULL, 'Admin Assistant', '0930-1553296/0916-6984461', '', 0),
(59, 'Melfa Duis', 'Purchasing', 0, NULL, 'Purchasing Assistant', '0927-4597157', '', 0),
(60, 'Jerson Factolerin', 'HR/Admin', 0, NULL, 'Utility', '0932-5420679', '', 0),
(61, 'Julius Fernandez', 'Operations', 0, NULL, 'Auxiliary Operator', '0918-2685507', '', 0),
(62, 'Luisito Fortuno', 'Operations', 0, NULL, 'Auxiliary Operator', '0908-3317408', '', 0),
(63, 'Donna Gellada', 'Warehouse', 0, NULL, 'Parts Inventory  Assistant', '0916-2779697', 'donna7.cenpri@gmail.com', 0),
(64, 'Felipe, III Globert', 'Warehouse', 0, NULL, 'Warehouse Assistant', '0948-7024664', '', 0),
(65, 'Mikko Golvio', 'Electrical & Instrumentation', 0, NULL, 'E&IC Technician', '0930-9363013', '', 0),
(66, 'Eric Jabiniar', 'Management', 0, NULL, 'Plant Director', '0917-8607244', '', 0),
(67, 'Jushkyle Jambongana', 'IT Department', 0, NULL, 'IT Assistant', '0912-3867454', '', 0),
(68, 'Bobby  Jardiniano', 'HR/Admin', 0, NULL, 'Service Vehicle Driver', '0933-3388374', '', 0),
(69, 'Stephen Jardinico', 'Warehouse', 0, NULL, 'Warehouse Assistant', '0912 922 1944', '', 0),
(70, 'Joey Labanon', 'Operations', 0, NULL, 'Auxiliary Operator Trainee', '0910-5787327', '', 0),
(71, 'Roan Renz Liao', 'Warehouse', 0, NULL, 'Parts Engineer', '0925-4887286', '', 0),
(72, 'Gino Lovico', 'Machine Shop and Reconditioning', 0, NULL, 'Foreman (Machine Shop & Recon)', '0999-8143307', '', 0),
(73, 'Ricky Madeja', 'Admin', 0, NULL, 'Safety Officer', '0918-6268028', '', 0),
(74, 'Danilo Maglinte', 'Operations', 0, NULL, 'Engine Room Operator', '0935-4046632', '', 0),
(75, 'Alex Manilla Jr.', 'Fuel Management', 0, NULL, 'Fuel Tender', '0999-7353561', '', 0),
(76, 'Concordio Matuod', 'Electrical Department', 0, NULL, 'Project Consultant', '0915-326-1829', '', 0),
(77, 'Genielyne Mondejar', 'Admin', 0, NULL, 'Pollution Control Officer  ', '0912-5356230', '', 0),
(78, 'Francis Montero', 'Mechanical Maintenance', 0, NULL, 'Plant Mechanic', '0918-2063492', '', 0),
(79, 'Andro Ortega', 'Operations', 0, NULL, 'Shift Supervisor Trainee', '0932-2400663', '', 0),
(80, 'Joselito Panes', 'Mechanical Maintenance', 0, NULL, 'Plant Mechanic', '0929-2629467', '', 0),
(81, 'Nonito Pocong', 'Operations', 0, NULL, 'Control Room Operator', '0933-6159620', '', 0),
(82, 'Mario Dante Purisima', 'Operations', 0, NULL, 'Shift Supervisor Trainee', '0927-1687549', '', 0),
(83, 'Romeo Quiocson Jr.', 'Special Projects', 0, NULL, 'Technical Assistant', '0927-6537369', '', 0),
(84, 'Lawrence Vincent Roiles', 'Electrical & Instrumentation', 0, NULL, 'E&IC Technician', '0936-6568781', '', 0),
(85, 'Roy Sabit', 'Operations', 0, NULL, 'Control Room Operator', '0947-9916563', '', 0),
(86, 'Robert Sabando', 'Special Projects', 0, NULL, 'Project Consultant', '0927-741-1950', '', 0),
(87, 'Godfrey Stephen Samano', 'Operations', 0, NULL, 'O&M Superintendent', '0908-6094932', '', 0),
(88, 'Kennah Sasamoto', 'Testing Group', 0, NULL, 'Test  Engineer', '0977-7842536', '', 0),
(89, 'Iris Sixto', 'Admin', 0, NULL, 'Site Facilities Supervisor', '0948-2732052', '', 0),
(90, 'Kelwin Sarcauga', 'Operations', 0, NULL, 'Engine Room Operator Trainee', '0932-1253131', '', 0),
(91, 'Ranie Tabanao', '0', 0, NULL, '0', '0', '', 0),
(92, 'Alexander Tagarda', 'Operations', 0, NULL, 'Control Room Operator', '0936-2138490', '', 0),
(93, 'Ariel Tandoy', 'Warehouse', 0, NULL, 'Driver', '0915-9555253', '', 0),
(94, 'Ryan Tignero', 'Operations', 0, NULL, 'Shift Supervisor Trainee', '0927-2885847', '', 0),
(95, 'Elmer Torrijos', 'Mechanical Maintenance', 0, NULL, 'Mechanical Maintenance Supervisor / Equipment & Parts Engr.', '0999 677 8341', '', 0),
(96, 'Democrito Urnopia', 'Mechanical Maintenance', 0, NULL, 'Plant Mechanic', '0930-8736393', '', 0),
(97, 'Jobelle Villarias', 'Admin', 0, NULL, 'Company Nurse', '0917-1595665', '', 0),
(98, 'Melinda Aquino', 'Accounting', 0, NULL, 'Accounting Assistant/ Bookkeeper', '0949-3005-813', '', 0),
(99, 'Irish Dawn Torres', 'Admin', 0, NULL, 'Site Admin Officer', '0932-8657926', '', 0),
(100, 'Vincent Jed Depasupil', 'Operations', 0, NULL, 'Auxiliary Operator', '', '', 0),
(101, 'William Soltes', '', 0, NULL, '', '', '', 0),
(105, 'TESTING', NULL, 1, 'CENPRI-B-1004', NULL, NULL, NULL, 1),
(107, 'trial', 'Testing Departmen', 1, 'CENPRI-B-1005', 'test', NULL, NULL, 1),
(112, 'Accounting Department', NULL, 1, 'CENPRI-B-1009', NULL, NULL, NULL, 2),
(113, 'Admin Department', NULL, 1, 'CENPRI-B-1010', NULL, NULL, NULL, 2),
(114, 'IT Department', NULL, 1, 'CENPRI-B-1011', NULL, NULL, NULL, 2),
(115, 'Silena Jomiller', 'Admin Department', 1, 'CENPRI-B-1012', 'Admin Assistant', NULL, NULL, 1),
(116, 'EMG-Billing', NULL, 1, 'CENPRI-B-1013', NULL, NULL, NULL, 2),
(117, 'Board Room', NULL, 1, 'CENPRI-B-1014', NULL, NULL, NULL, 2),
(118, 'Carlos Antonio Leonardia', '', 1, 'CENPRI-B-1015', 'Senior Project Engineer', NULL, NULL, 1),
(119, 'Liza Marie Tasic', 'Shoppers Guide', 1, 'CENPRI-B-1016', '', NULL, NULL, 1),
(120, 'Adrian Nemes', 'Shoppers Guide', 1, 'CENPRI-B-1017', '', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_inclusion`
--

CREATE TABLE IF NOT EXISTS `employee_inclusion` (
`ei_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `child_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_inclusion`
--

INSERT INTO `employee_inclusion` (`ei_id`, `parent_id`, `child_id`) VALUES
(5, 112, 14),
(6, 112, 31),
(7, 114, 31),
(8, 114, 14),
(10, 112, 0),
(11, 113, 31),
(12, 114, 36),
(13, 114, 3),
(14, 114, 17),
(15, 114, 24),
(16, 114, 4);

-- --------------------------------------------------------

--
-- Table structure for table `employee_series`
--

CREATE TABLE IF NOT EXISTS `employee_series` (
`empser_id` int(11) NOT NULL,
  `aaf_prefix` varchar(100) DEFAULT NULL,
  `series` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_series`
--

INSERT INTO `employee_series` (`empser_id`, `aaf_prefix`, `series`) VALUES
(1, 'CENPRI-B', 1001),
(2, 'CENPRI-B', 1002),
(3, 'CENPRI-B', 1003),
(4, 'CENPRI-B', 1004),
(5, 'CENPRI-S', 1001),
(6, 'CENPRI-S', 1001),
(7, 'CENPRI-B', 1005),
(8, 'CENPRI-B', 1005),
(9, 'CENPRI-B', 1005),
(10, 'CENPRI-B', 1006),
(11, 'CENPRI-S', 1002),
(12, 'CENPRI-B', 1007),
(13, 'CENPRI-B', 1008),
(14, 'CENPRI-B', 1009),
(15, 'CENPRI-B', 1010),
(16, 'CENPRI-B', 1011),
(17, 'CENPRI-B', 1012),
(18, 'CENPRI-B', 1013),
(19, 'CENPRI-B', 1014),
(20, 'CENPRI-B', 1015),
(21, 'CENPRI-B', 1015),
(22, 'CENPRI-B', 1016),
(23, 'CENPRI-B', 1017);

-- --------------------------------------------------------

--
-- Table structure for table `et_details`
--

CREATE TABLE IF NOT EXISTS `et_details` (
`ed_id` int(11) NOT NULL,
  `et_id` int(11) NOT NULL DEFAULT '0',
  `set_id` int(11) NOT NULL DEFAULT '0',
  `physical_id` int(11) NOT NULL DEFAULT '0',
  `rack_id` int(11) NOT NULL DEFAULT '0',
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
  `beyond_repair` int(11) NOT NULL DEFAULT '0',
  `borrowed` int(11) NOT NULL DEFAULT '0',
  `acquired_by` varchar(50) DEFAULT NULL,
  `picture1` varchar(255) DEFAULT NULL,
  `picture2` varchar(255) DEFAULT NULL,
  `picture3` varchar(255) DEFAULT NULL,
  `change_location` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `et_details`
--

INSERT INTO `et_details` (`ed_id`, `et_id`, `set_id`, `physical_id`, `rack_id`, `placement_id`, `serial_no`, `brand`, `model`, `type`, `unit_price`, `currency`, `currency_id`, `acquisition_date`, `date_issued`, `remarks`, `asset_control_no`, `damage`, `beyond_repair`, `borrowed`, `acquired_by`, `picture1`, `picture2`, `picture3`, `change_location`) VALUES
(1, 1, 0, 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE-TRA-BCD-1001', 0, 0, 0, '', '', '', '', 0),
(2, 2, 0, 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE-TRA-BCD-1002', 0, 0, 0, '', '', '', '', 0),
(3, 3, 0, 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE-TRA-BCD-1003', 1, 0, 0, '', '', '', '', 0),
(4, 4, 0, 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE-TRA-BCD-1004', 0, 0, 0, '', '', '', '', 0),
(5, 5, 0, 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '2019-04-22', '', '', 'FFE-TRA-BCD-1005', 0, 0, 0, '', '', '', '', 0),
(6, 6, 0, 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '2019-04-22', '', '', 'FFE-TRA-BCD-1006', 0, 0, 0, '', '', '', '', 0),
(7, 7, 0, 0, 0, 0, '112', '112', '1212', '1212', '12.00', NULL, 3, '', NULL, '', 'FFE-TRA-BCD-1007', 0, 0, 1, '', '', '', '', 0),
(8, 8, 0, 2, 0, 0, '123', '123', '123', '123', '12.00', NULL, 3, '2019-04-23', '2019-04-23', '', 'FFE-TRA-BCD-1008', 0, 0, 0, 'strew', '', '', '', 0),
(9, 8, 0, 3, 0, 0, '11', '11', '11', '11', '11.00', NULL, 3, '2019-04-24', '2019-04-25', '12', 'FFE-TRA-BCD-1009', 0, 0, 0, '12', '', '', '', 0),
(10, 9, 0, 2, 0, 0, 'qqqq', 'qq', 'qq', 'qq', '12.00', NULL, 3, '2019-04-23', '2019-04-23', '', 'FFE-TRA-BCD-1010', 0, 0, 0, '', '', '', '', 0),
(11, 11, 0, 0, 2, 2, '112', '121', '', '12', '12.00', NULL, 3, '2019-04-23', '2019-04-23', '', 'FFE-TRA-BCD-1011', 0, 0, 0, '', '', '', '', 0),
(12, 11, 0, 0, 0, 0, '', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE-TRA-BCD-1012', 0, 0, 0, '', '', '', '', 0),
(13, 12, 0, 0, 2, 2, '', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE-TRA-BCD-1013', 0, 0, 0, '', '', '', '', 0),
(14, 12, 0, 0, 2, 2, '', '', '', '', '0.00', NULL, 0, '', '', '', 'FFE-TRA-BCD-1014', 0, 0, 0, '', '', '', '', 0);

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
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `et_head`
--

INSERT INTO `et_head` (`et_id`, `accountability_id`, `category_id`, `subcat_id`, `create_date`, `et_desc`, `qty`, `unit_id`, `department`, `user_id`) VALUES
(1, 0, 1, 1, '2019-04-22 16:14:06', 'laptop', 1, 2, '', 1),
(2, 0, 1, 1, '2019-04-22 16:14:31', 'ste', 1, 2, 'IT Department', 1),
(3, 0, 1, 1, '2019-04-22 16:16:56', 'laptop', 1, 2, 'IT Department', 1),
(4, 0, 1, 1, '2019-04-22 16:17:50', 'ss', 1, 2, 'Warehouse', 1),
(5, 0, 1, 1, '2019-04-22 16:22:20', 'test iten', 1, 1, '', 1),
(6, 0, 1, 1, '2019-04-22 16:39:25', 'sss', 1, 2, '', 1),
(7, 31, 1, 1, '2019-04-22 16:41:29', 'test', 1, 2, 'IT Department', 1),
(8, 31, 1, 1, '2019-04-23 09:30:18', 'test item', 2, 2, 'IT Department', 1),
(9, 31, 1, 1, '2019-04-23 09:41:56', 'test', 1, 2, 'IT Department', 1),
(10, 31, 1, 1, '2019-04-23 10:37:08', 'test', 1, 2, 'IT Department', 1),
(11, 31, 1, 1, '2019-04-23 10:53:06', 'testing', 1, 2, 'IT Department', 1),
(12, 31, 1, 1, '2019-04-23 11:16:35', 'sss', 2, 2, 'IT Department', 1);

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
  `set_price` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
`location_id` int(11) NOT NULL,
  `location_name` varchar(100) DEFAULT NULL,
  `location_prefix` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `location_name`, `location_prefix`) VALUES
(1, 'Bacolod', 'CENPRI-B'),
(2, 'Bago', 'CENPRI-S');

-- --------------------------------------------------------

--
-- Table structure for table `physical_condition`
--

CREATE TABLE IF NOT EXISTS `physical_condition` (
`physical_id` int(11) NOT NULL,
  `condition_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `physical_condition`
--

INSERT INTO `physical_condition` (`physical_id`, `condition_name`) VALUES
(2, 'Partially Damaged'),
(3, 'Worn Out');

-- --------------------------------------------------------

--
-- Table structure for table `placement`
--

CREATE TABLE IF NOT EXISTS `placement` (
`placement_id` int(11) NOT NULL,
  `placement_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `placement`
--

INSERT INTO `placement` (`placement_id`, `placement_name`) VALUES
(2, 'test place');

-- --------------------------------------------------------

--
-- Table structure for table `rack`
--

CREATE TABLE IF NOT EXISTS `rack` (
`rack_id` int(11) NOT NULL,
  `rack_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rack`
--

INSERT INTO `rack` (`rack_id`, `rack_name`) VALUES
(2, 'test rack');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returned_series`
--

INSERT INTO `returned_series` (`series_id`, `prefix`, `series`) VALUES
(1, 'BS-2019-04', 1001),
(2, 'BCD-2019-04', 1002),
(3, 'BS-2019-04', 1003),
(4, 'BS-2019-04', 1004),
(5, 'BS-2019-04', 1005),
(6, 'BCD-2019-04', 1006);

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `return_details`
--

INSERT INTO `return_details` (`rd_id`, `return_id`, `et_id`, `ed_id`, `date_issued`, `return_remarks`) VALUES
(1, 1, 4, 4, '', NULL),
(2, 2, 5, 5, '2019-04-22', NULL),
(3, 3, 2, 2, '', NULL),
(4, 4, 3, 3, '', NULL),
(5, 5, 7, 7, '', NULL),
(6, 6, 6, 6, '', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `return_head`
--

INSERT INTO `return_head` (`return_id`, `ars_no`, `atf_no`, `return_date`, `accountability_id`, `received_by`, `return_remarks`, `create_date`) VALUES
(1, 'BS-2019-04-1001', 'BS-2019-1001', '2019-04-10', 69, 31, '', '2019-04-22 16:18:20'),
(2, 'BCD-2019-04-1002', 'BCD-2019-1002', '2019-04-22', 114, 31, '', '2019-04-22 16:22:50'),
(3, 'BS-2019-04-1003', 'BS-2019-1003', '2019-04-22', 31, 31, '', '2019-04-22 16:48:03'),
(4, 'BS-2019-04-1004', 'BS-2019-1004', '2019-04-22', 31, 53, 'ss', '2019-04-22 16:51:29'),
(5, 'BS-2019-04-1005', 'BS-2019-1005', '2019-04-23', 31, 31, '', '2019-04-22 17:03:01'),
(6, 'BCD-2019-04-1006', 'BCD-2019-1006', '2019-04-15', 114, 31, '', '2019-04-22 17:10:49');

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`subcat_id`, `category_id`, `subcat_name`, `subcat_prefix`, `location`, `subcat_desc`) VALUES
(1, 1, 'Transportation Equipment', 'FFE-TRA', 'BCD', 'Vehicles (Innova, Crosswind, Pickup, Fortuner, etc)'),
(2, 1, 'Heavy Equipment', 'FFE-HEA', 'BCD', 'Forklift, Boom Truck, Backhoe, Manlift'),
(3, 1, 'Communication Equipment', 'FFE-COM', NULL, 'Radio, Routers, Cellphones, Telephones, Repeaters, Audio System for the Board Room, ICOM Spare Battery, Lapel Microphone w/ Speaker, Maintenance Free Car Battery 12VDC, Microphone with Cord for ICOM Motorola Radius, Mobile Antenna, Network Communications Equipment, Outdoor Antenna (4 element Fully Folded), Paging System, Radio Base, Radio ICOM Handset, Radio Power Supply, Radio Repeater, Telephone System (PABX), Wireless Communications, Wifi Adapter,'),
(4, 1, 'Office Furnitures', 'FFE-FUR', NULL, 'Office Chair, Office Table, Book Shelves, Filing Cabinets, Computer Table, Conference Table and Chairs, Table Top Glass, Cubicle, Venetian Blinds'),
(5, 1, 'Office Equipment', 'FFE-EQU', NULL, 'PCs, Laptops, Printers, Staplers, Calculators, Punchers, Scanners, Scissor, Tape Dispenser, Filing Tray, Document Keeper, Clip Board, Binders, UPS, Books,  Fax Machine, Overhead Projector, Photocopier, Hard Disk, USB, External Hard Drive, Paper Shredder, Projector Screen, Recorder, Safety Vault, Standby Generator, Scanner, Digital and Video Camera, Barcode Scanner, Tablets, Grass Cutter'),
(6, 1, 'Personal Protective Equipment', 'FFE-PPE', NULL, 'Hard Hat, Electrical Gloves, Goggles, Harnes, Safety Shoes, Boots, Chemical Mask, Welding Mask,'),
(7, 1, 'Safety & Security Equipment', 'FFE-SSE', NULL, 'IP/Surveillance Camera, Data Cabinet, Fire Extinguisher, Eye Wash and Face Shower, Emergency Light, Flash Light, Alarms, Caution Board, Warning Triangle or Cone,. Biometric, Automotic Lock Door (Door Access),  Fire Hose,  Illuminated Fire Exit Sign3'),
(8, 1, 'Appliance', 'FFE-APP', NULL, 'Air Cooler, Airconditioner, Air Compressor, Ceiling Fan, Electric Fan, Exhaust Fan, Industrial Fans, Gas Stove, Refrigirator, Airconditioning Units, Television, CD/DVD Player, Blender & Juicers, Coffee Maker,  Rice Cooker, Toaster, Electric Airpot, Electric Kettle, Electric Stove, Electric/Gas Oven, Food Warmer/Steamer, Gas Stove, Microwave Oven, Water Dispenser, Dryer, Flat Iron, Hair Dryer, Steam Iron, Vacuum Cleaner, Washing Machine,'),
(9, 1, 'Staffhouse Furnitures and Supplies', 'FFE-STA', NULL, 'Dining Table and Chairs, Sofa, Beds, Clothes Cabinet, Mattress, Pillows, Pillow Case, Bed Sheets, Blanket'),
(10, 1, 'Housewares', 'FFE-HOU', NULL, 'Bowl, Cups and Saucers, Drinking Glass, Mug, Pitcher, Plate, Spoon and Fork, Food Keeper, Dipper, Pail, Trash Bin'),
(11, 1, 'Medical Equipment', 'FFE-MED', NULL, 'Glucometer, ( Glucose Meter, One Touch Ultra 2 ), Digital Blood Pressure Apparatus, Aneroid Blood Pressure Apparatus, Stechoscope, Weighing Scale, First Aid Equipment, Oxygen for First Aid'),
(12, 2, 'Hand Tools', 'TOO-HAN', NULL, 'Handsaw, tin snips, wood chisel, Axe, Staple Gun, Screwdriver, Hammer, Mallet, Wrecking Bar, Spring Clamp'),
(13, 2, 'Power Tools', 'TOO-POW', NULL, 'Angle Grinder, Hand Drill, Chipping Hammer, Electric Blower, Rotary Hammer, Heat Gun, Glue Gun, Concrete Nailer, Electric Planer, Cut-off Saw, Circular Saw, Chain Saw, Plate Compactor, Floor Saw, Hydraulic Lifter'),
(14, 2, 'Labelling Tools', 'TOO-LABE', NULL, 'Engraver, Letter Puncher Stamp, Number Pucher Stamp, Brady Printer'),
(15, 2, 'Laboratory Equipment', 'TOO-LABO', NULL, ''),
(16, 2, 'Lifting Tools/Equipment', 'TOO-LIFT', NULL, 'Pallet Truck, Shackle, Nylon Sling, Nylon Rope, Hydraulic Jack'),
(17, 2, 'Machineries', 'TOO-MAC', NULL, 'Welding Machine, Honing Machine, Boring Machine'),
(18, 2, 'Measuring Tools', 'TOO-MEA', NULL, 'Levelling Tool, Ruler, Meter Stick, Weighing Scale, Steel Tape'),
(19, 2, 'Special Tools', 'TOO-SPE', NULL, 'Fabricated tools'),
(20, 2, 'Testing Equipment', 'TOO-TES', NULL, 'Fluke'),
(21, 2, 'Tool Storage/Box', 'TOO-STO', NULL, 'Electrician Bag');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`unit_id`, `unit_name`) VALUES
(1, 'kg/s'),
(2, 'pc/s'),
(3, 'roll/s');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`user_id` int(11) NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `fullname`, `username`, `password`) VALUES
(1, 'admin', 'admin', 'admin');

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
MODIFY `asset_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `atf_series`
--
ALTER TABLE `atf_series`
MODIFY `atf_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `borrow_details`
--
ALTER TABLE `borrow_details`
MODIFY `bd_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `borrow_head`
--
ALTER TABLE `borrow_head`
MODIFY `bh_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `borrow_series`
--
ALTER TABLE `borrow_series`
MODIFY `bseries_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `damage_info`
--
ALTER TABLE `damage_info`
MODIFY `damage_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `damage_series`
--
ALTER TABLE `damage_series`
MODIFY `ds_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT for table `employee_inclusion`
--
ALTER TABLE `employee_inclusion`
MODIFY `ei_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `employee_series`
--
ALTER TABLE `employee_series`
MODIFY `empser_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `et_details`
--
ALTER TABLE `et_details`
MODIFY `ed_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `et_head`
--
ALTER TABLE `et_head`
MODIFY `et_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `et_info`
--
ALTER TABLE `et_info`
MODIFY `et_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `et_set`
--
ALTER TABLE `et_set`
MODIFY `set_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `physical_condition`
--
ALTER TABLE `physical_condition`
MODIFY `physical_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `placement`
--
ALTER TABLE `placement`
MODIFY `placement_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rack`
--
ALTER TABLE `rack`
MODIFY `rack_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
MODIFY `series_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `return_details`
--
ALTER TABLE `return_details`
MODIFY `rd_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `return_head`
--
ALTER TABLE `return_head`
MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
MODIFY `subcat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
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
MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
