-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2019 at 09:34 AM
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
  `series` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_series`
--

INSERT INTO `asset_series` (`asset_id`, `subcat_prefix`, `series`) VALUES
(1, 'FFA-BBA', 1001);

-- --------------------------------------------------------

--
-- Table structure for table `atf_series`
--

CREATE TABLE IF NOT EXISTS `atf_series` (
`atf_id` int(11) NOT NULL,
  `atf_prefix` varchar(255) DEFAULT NULL,
  `series` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `atf_series`
--

INSERT INTO `atf_series` (`atf_id`, `atf_prefix`, `series`) VALUES
(1, '2019', 1001),
(2, '2019', 1001);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`category_id` int(11) NOT NULL,
  `category_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Furniture, Fixtures and Equipment');

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
  `accountability_id` int(11) NOT NULL DEFAULT '0',
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

INSERT INTO `damage_info` (`damage_id`, `incident_date`, `etdr_no`, `activity`, `et_id`, `ed_id`, `damage_location`, `accountability_id`, `incident_description`, `equip_damage`, `recommendation`, `submitted_by`, `checked_by`, `noted_by`, `create_date`, `user_id`) VALUES
(1, '2019-02-20', '2019-02-1001', 'as', 1, 1, 'as', 14, 'as', 'as', 'as', 14, 31, 3, '2019-02-20 16:15:08', 1);

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
(1, '2019-02', 1001);

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
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `employee_name`, `department`, `location_id`, `aaf_no`, `position`, `contact_no`, `email`) VALUES
(1, 'Ma. Milagros Arana', 'Management', 0, NULL, 'General Manager', '0917-5924080', ''),
(2, 'Rhea Arsenio', 'Trading', 0, NULL, 'Trader', '0920-6398529', ''),
(3, 'Jonah Faye Benares', 'IT Department', 0, NULL, 'Software Development Supervisor', '0932-4515369', ''),
(4, 'Kervic Biñas', 'Purchasing', 0, NULL, 'Procurement Assistant', '0930-2357794', ''),
(5, 'Joemarie Calibjo', 'Admin', 0, NULL, 'Service Vehicle Driver', '0950-2900419', ''),
(6, 'Maylen Cabaylo', 'Purchasing', 0, NULL, 'Purchasing Officer', '09099491894/09234597487', ''),
(7, 'Rey  Carbaquil', 'Admin', 0, NULL, 'Service Vehicle Driver', '0912 5905319', ''),
(8, 'Cristy Cesar', 'Accounting', 0, NULL, 'Accounting Associate', '0916-3961389', ''),
(9, 'Gretchen Danoy', 'Accounting', 0, NULL, 'Accounting Supervisor', '0922-4386979', ''),
(10, 'Merry Michelle Dato', 'Special Projects', 0, NULL, 'Projects and Asset Management Assistant', '0920-5205418', ''),
(11, 'Joemar De Los Santos', 'Trading', 0, NULL, 'Lead Trader', '0923-4187139', ''),
(12, 'Imelda Espera', 'Accounting / Finance', 0, NULL, 'A/P & Credit Supervisor', '0918-6760758', ''),
(13, 'Elaisa Jane Febrio', 'HR/Admin', 0, NULL, 'HR Assistant', '0917-9941917', ''),
(14, 'Jason Flor', 'IT Department', 0, NULL, 'Software Development Assistant', '0939-6488141', ''),
(15, 'Zara Joy Gabales', 'EMG-Billing', 0, NULL, 'Billing Assistant', '0939-1159164', ''),
(16, 'Relsie Gallo', '0', 0, NULL, '0', '0', ''),
(17, 'Celina Marie Grabillo', 'EMG-Billing', 0, NULL, 'Billing & Settlement Officer', '0907-4494479', ''),
(18, 'Nazario Shyde Jr. Ibañez', 'Trading', 0, NULL, 'Trader', '0922-3271576', ''),
(19, 'Gebby Jalandoni', 'Accounting', 0, NULL, 'Accounting Assistant', '0909-9579077', ''),
(20, 'Caesariane Jo', 'Trading', 0, NULL, 'Trader', '0927-8212228', ''),
(21, 'Lloyd Jamero', 'IT Department', 0, NULL, 'IT Specialist', '0908-7636105', ''),
(22, 'Annavi Lacambra', 'Accounting', 0, NULL, 'Corporate Accountant', '0932-3649978', ''),
(23, 'Ma. Erika Oquiana', 'Trading', 0, NULL, 'Trader', '0912-4746470/09773640452', ''),
(24, 'Charmaine Rei Plaza', 'Trading', 0, NULL, 'Energy Market Analyst', '0948-9285185', ''),
(25, 'Cresilda Mae Ramirez', 'Accounting', 0, NULL, 'Internal Auditor', '0977-8215247', ''),
(26, 'Melanie Rocha', 'Admin', 0, NULL, 'Utility', '0910-4526879', ''),
(27, 'Zyndyryn Rosales', 'Finance', 0, NULL, 'Finance Supervisor', '0932-8737196', ''),
(28, 'Genie Saludo', 'HR/Admin', 0, NULL, 'HR Assistant', '09272257127/09454569188', ''),
(29, 'Daisy Jane Sanchez', 'Trading', 0, NULL, 'EMG Manager / WESM Compliance Officer', '0932-8773754', ''),
(30, 'Rosemarie Sarroza', 'Trading', 0, NULL, 'Trader', '0917-9512950', ''),
(31, 'Stephine David Severino', 'IT Department', 0, '', 'Software Development Assistant', '0977-7106914', ''),
(32, 'Henry Sia', 'Engineering Dept.', 0, NULL, 'Grid Integration Manager', '9177996939', ''),
(33, 'Syndey Sinoro', 'HR/Admin', 0, NULL, 'HR Supervisor', '0923-2802343', ''),
(34, 'Marianita Tabilla', 'Finance', 0, NULL, 'Finance Assistant', '0917-7793318', ''),
(35, 'Krystal Gayle Tagalog', 'HR/Admin', 0, NULL, 'Payroll Assistant', '0946-3348559', ''),
(36, 'Hennelen Tanan', 'IT Department', 0, NULL, 'IT Encoder ', '0945-5743745', ''),
(37, 'Teresa Tan', 'Contracts & Compliance', 0, NULL, 'Contracts & Compliance Asst.', '0923-6828813', ''),
(38, 'Dary Mae Villas', 'Trading', 0, NULL, 'Trader', '0930-7871989', ''),
(39, 'Marlon Adorio', 'Electrical & Instrumentation', 0, NULL, 'E & IC Technician', '0912-5896720', ''),
(40, 'John Ezequiel Alejandro', 'Operations', 0, NULL, 'Auxiliary Operator ', '0916-5321090', ''),
(41, 'Carlito Alevio', 'Mechanical Maintenance', 0, NULL, 'Plant Mechanic', '0926-8161359', ''),
(42, 'Regina Alova', 'Trading', 0, NULL, 'Operations Analyst', '09235607021 / 09485342153', ''),
(43, 'Rebecca Alunan ', 'Trading', 0, NULL, 'Performance Monitoring Supervisor', '0906-3425996', ''),
(44, 'Fleur de Liz Ambong', 'Fuel Management', 0, NULL, 'Fuel Management Asst.', '0909-4620177', ''),
(45, 'Beverly  Ampog', 'Operations', 0, NULL, 'Operations Analyst', '0995-3634548', ''),
(46, 'Genaro Angulo', 'Electrical & Instrumentation', 0, NULL, 'Electrical Supervisor', '09196745918', ''),
(47, 'Rey Argawanon', 'Electrical & Instrumentation', 0, NULL, 'Power Delivery & Technical Manager', '0917-8653566', ''),
(48, 'Alona Arroyo', 'Operations', 0, NULL, 'Operations Planner', '0919-3725318', ''),
(49, 'Joemillan Baculio', 'Operations', 0, NULL, 'Auxiliary Operator', '0906-8802652', ''),
(50, 'Rashelle Joy Bating', 'Special Projects', 0, NULL, 'Projects Coordinator Assistant', '0910-1980348', ''),
(51, 'Gener Bawar', 'Machine Shop and Reconditioning', 0, NULL, 'Machine Shop & Reconditioning Supervisor', '0920-2128998', ''),
(52, 'Ruel Beato', 'Mechanical Maintenance', 0, NULL, 'Plant Mechanic', '0939-2369794', ''),
(53, 'Mary Grace Bugna', 'Accounting', 0, NULL, 'Asset Management Asst.', '0930-7765706', ''),
(54, 'Vency Cababat', 'Electrical & Instrumentation', 0, NULL, ' E&IC Technician', '09267932911 / 09265638526', ''),
(55, 'Rusty Canama', 'Mechanical Maintenance', 0, NULL, 'Plant Mechanic', '0949-1547358', ''),
(56, 'Exequil Corino', 'Operations', 0, NULL, 'Engine Room Operator', '0920-6995646', ''),
(57, 'Juanito Dagupan', 'Operations', 0, NULL, 'Operation Shift Supervisor', '0918-6438993', ''),
(58, 'Julyn May Divinagracia', 'HR/Admin', 0, NULL, 'Admin Assistant', '0930-1553296/0916-6984461', ''),
(59, 'Melfa Duis', 'Purchasing', 0, NULL, 'Purchasing Assistant', '0927-4597157', ''),
(60, 'Jerson Factolerin', 'HR/Admin', 0, NULL, 'Utility', '0932-5420679', ''),
(61, 'Julius Fernandez', 'Operations', 0, NULL, 'Auxiliary Operator', '0918-2685507', ''),
(62, 'Luisito Fortuno', 'Operations', 0, NULL, 'Auxiliary Operator', '0908-3317408', ''),
(63, 'Donna Gellada', 'Warehouse', 0, NULL, 'Parts Inventory  Assistant', '0916-2779697', 'donna7.cenpri@gmail.com'),
(64, 'Felipe, III Globert', 'Warehouse', 0, NULL, 'Warehouse Assistant', '0948-7024664', ''),
(65, 'Mikko Golvio', 'Electrical & Instrumentation', 0, NULL, 'E&IC Technician', '0930-9363013', ''),
(66, 'Eric Jabiniar', 'Management', 0, NULL, 'Plant Director', '0917-8607244', ''),
(67, 'Jushkyle Jambongana', 'IT Department', 0, NULL, 'IT Assistant', '0912-3867454', ''),
(68, 'Bobby  Jardiniano', 'HR/Admin', 0, NULL, 'Service Vehicle Driver', '0933-3388374', ''),
(69, 'Stephen Jardinico', 'Warehouse', 0, NULL, 'Warehouse Assistant', '0912 922 1944', ''),
(70, 'Joey Labanon', 'Operations', 0, NULL, 'Auxiliary Operator Trainee', '0910-5787327', ''),
(71, 'Roan Renz Liao', 'Warehouse', 0, NULL, 'Parts Engineer', '0925-4887286', ''),
(72, 'Gino Lovico', 'Machine Shop and Reconditioning', 0, NULL, 'Foreman (Machine Shop & Recon)', '0999-8143307', ''),
(73, 'Ricky Madeja', 'Admin', 0, NULL, 'Safety Officer', '0918-6268028', ''),
(74, 'Danilo Maglinte', 'Operations', 0, NULL, 'Engine Room Operator', '0935-4046632', ''),
(75, 'Alex Manilla Jr.', 'Fuel Management', 0, NULL, 'Fuel Tender', '0999-7353561', ''),
(76, 'Concordio Matuod', 'Electrical Department', 0, NULL, 'Project Consultant', '0915-326-1829', ''),
(77, 'Genielyne Mondejar', 'Admin', 0, NULL, 'Pollution Control Officer  ', '0912-5356230', ''),
(78, 'Francis Montero', 'Mechanical Maintenance', 0, NULL, 'Plant Mechanic', '0918-2063492', ''),
(79, 'Andro Ortega', 'Operations', 0, NULL, 'Shift Supervisor Trainee', '0932-2400663', ''),
(80, 'Joselito Panes', 'Mechanical Maintenance', 0, NULL, 'Plant Mechanic', '0929-2629467', ''),
(81, 'Nonito Pocong', 'Operations', 0, NULL, 'Control Room Operator', '0933-6159620', ''),
(82, 'Mario Dante Purisima', 'Operations', 0, NULL, 'Shift Supervisor Trainee', '0927-1687549', ''),
(83, 'Romeo Quiocson Jr.', 'Special Projects', 0, NULL, 'Technical Assistant', '0927-6537369', ''),
(84, 'Lawrence Vincent Roiles', 'Electrical & Instrumentation', 0, NULL, 'E&IC Technician', '0936-6568781', ''),
(85, 'Roy Sabit', 'Operations', 0, NULL, 'Control Room Operator', '0947-9916563', ''),
(86, 'Robert Sabando', 'Special Projects', 0, NULL, 'Project Consultant', '0927-741-1950', ''),
(87, 'Godfrey Stephen Samano', 'Operations', 0, NULL, 'O&M Superintendent', '0908-6094932', ''),
(88, 'Kennah Sasamoto', 'Testing Group', 0, NULL, 'Test  Engineer', '0977-7842536', ''),
(89, 'Iris Sixto', 'Admin', 0, NULL, 'Site Facilities Supervisor', '0948-2732052', ''),
(90, 'Kelwin Sarcauga', 'Operations', 0, NULL, 'Engine Room Operator Trainee', '0932-1253131', ''),
(91, 'Ranie Tabanao', '0', 0, NULL, '0', '0', ''),
(92, 'Alexander Tagarda', 'Operations', 0, NULL, 'Control Room Operator', '0936-2138490', ''),
(93, 'Ariel Tandoy', 'Warehouse', 0, NULL, 'Driver', '0915-9555253', ''),
(94, 'Ryan Tignero', 'Operations', 0, NULL, 'Shift Supervisor Trainee', '0927-2885847', ''),
(95, 'Elmer Torrijos', 'Mechanical Maintenance', 0, NULL, 'Mechanical Maintenance Supervisor / Equipment & Parts Engr.', '0999 677 8341', ''),
(96, 'Democrito Urnopia', 'Mechanical Maintenance', 0, NULL, 'Plant Mechanic', '0930-8736393', ''),
(97, 'Jobelle Villarias', 'Admin', 0, NULL, 'Company Nurse', '0917-1595665', ''),
(98, 'Melinda Aquino', 'Accounting', 0, NULL, 'Accounting Assistant/ Bookkeeper', '0949-3005-813', ''),
(99, 'Irish Dawn Torres', 'Admin', 0, NULL, 'Site Admin Officer', '0932-8657926', ''),
(100, 'Vincent Jed Depasupil', 'Operations', 0, NULL, 'Auxiliary Operator', '', ''),
(101, 'William Soltes', '', 0, NULL, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `employee_inclusion`
--

CREATE TABLE IF NOT EXISTS `employee_inclusion` (
`ei_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `child_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee_series`
--

CREATE TABLE IF NOT EXISTS `employee_series` (
`empser_id` int(11) NOT NULL,
  `aaf_prefix` varchar(100) DEFAULT NULL,
  `series` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `et_details`
--

CREATE TABLE IF NOT EXISTS `et_details` (
`ed_id` int(11) NOT NULL,
  `et_id` int(11) NOT NULL DEFAULT '0',
  `serial_no` varchar(50) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `unit_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `acquisition_date` varchar(20) DEFAULT NULL,
  `date_issued` varchar(20) DEFAULT NULL,
  `remarks` text,
  `asset_control_no` varchar(50) DEFAULT NULL,
  `damage` int(11) NOT NULL DEFAULT '0',
  `acquired_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `et_details`
--

INSERT INTO `et_details` (`ed_id`, `et_id`, `serial_no`, `brand`, `model`, `type`, `unit_price`, `acquisition_date`, `date_issued`, `remarks`, `asset_control_no`, `damage`, `acquired_by`) VALUES
(1, 1, 'as', 'as', 'as', 'as', '0.00', '2019-02-20', '', '', 'FFA-BBA-1001', 1, '');

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
  `qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `unit_id` int(11) NOT NULL DEFAULT '0',
  `department` varchar(50) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `et_head`
--

INSERT INTO `et_head` (`et_id`, `accountability_id`, `category_id`, `subcat_id`, `create_date`, `et_desc`, `qty`, `unit_id`, `department`, `user_id`) VALUES
(1, 31, 1, 1, '2019-02-20 15:52:50', 'Screw Driver', '1.00', 1, 'IT Department', 1);

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
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
`location_id` int(11) NOT NULL,
  `location_name` varchar(100) DEFAULT NULL,
  `location_prefix` varchar(100) DEFAULT NULL
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returned_series`
--

INSERT INTO `returned_series` (`series_id`, `prefix`, `series`) VALUES
(1, '2019-02', 1001),
(2, '2019-02', 1001);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `return_details`
--

INSERT INTO `return_details` (`rd_id`, `return_id`, `et_id`, `ed_id`, `date_issued`, `return_remarks`) VALUES
(1, 1, 1, 1, '', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `return_head`
--

INSERT INTO `return_head` (`return_id`, `ars_no`, `atf_no`, `return_date`, `accountability_id`, `received_by`, `return_remarks`, `create_date`) VALUES
(1, '2019-02-1001', '2019-1001', '2019-02-20', 31, 31, '', '2019-02-20 16:13:52');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
`subcat_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `subcat_name` varchar(100) DEFAULT NULL,
  `subcat_prefix` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`subcat_id`, `category_id`, `subcat_name`, `subcat_prefix`) VALUES
(1, 1, 'Transportation Equipment', 'FFA-BBA');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer_details`
--

INSERT INTO `transfer_details` (`td_id`, `transfer_id`, `et_id`, `ed_id`, `date_issued`) VALUES
(1, 1, 1, 1, '');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer_head`
--

INSERT INTO `transfer_head` (`transfer_id`, `accountability_id`, `transfer_to`, `transfer_date`, `create_date`, `transfer_remarks`) VALUES
(1, 31, 14, '2019-02-20', '2019-02-20 16:14:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE IF NOT EXISTS `unit` (
`unit_id` int(11) NOT NULL,
  `unit_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`unit_id`, `unit_name`) VALUES
(1, 'pc/s');

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
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`category_id`);

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
-- Indexes for table `location`
--
ALTER TABLE `location`
 ADD PRIMARY KEY (`location_id`);

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
MODIFY `asset_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `atf_series`
--
ALTER TABLE `atf_series`
MODIFY `atf_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=122;
--
-- AUTO_INCREMENT for table `employee_inclusion`
--
ALTER TABLE `employee_inclusion`
MODIFY `ei_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee_series`
--
ALTER TABLE `employee_series`
MODIFY `empser_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `et_details`
--
ALTER TABLE `et_details`
MODIFY `ed_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `et_head`
--
ALTER TABLE `et_head`
MODIFY `et_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `et_info`
--
ALTER TABLE `et_info`
MODIFY `et_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `returned_et`
--
ALTER TABLE `returned_et`
MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `returned_series`
--
ALTER TABLE `returned_series`
MODIFY `series_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `return_details`
--
ALTER TABLE `return_details`
MODIFY `rd_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `return_head`
--
ALTER TABLE `return_head`
MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
MODIFY `subcat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `transfer_details`
--
ALTER TABLE `transfer_details`
MODIFY `td_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `transfer_head`
--
ALTER TABLE `transfer_head`
MODIFY `transfer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
