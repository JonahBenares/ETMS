-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2019 at 07:52 AM
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
-- Table structure for table `turnover_et`
--

CREATE TABLE IF NOT EXISTS `turnover_et` (
`turnover_id` int(11) NOT NULL,
  `et_id` int(11) NOT NULL DEFAULT '0',
  `accountability_id` int(11) NOT NULL DEFAULT '0',
  `turnover_to` int(11) NOT NULL DEFAULT '0',
  `turnover_date` varchar(20) DEFAULT NULL,
  `turnover_remarks` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `turnover_et`
--
ALTER TABLE `turnover_et`
 ADD PRIMARY KEY (`turnover_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `turnover_et`
--
ALTER TABLE `turnover_et`
MODIFY `turnover_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
