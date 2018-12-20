-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2017 at 01:36 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `highway`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `pincode` int(6) NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`pincode`, `city`) VALUES
(452002, 'Indore'),
(456006, 'Ujjain'),
(457001, 'Ratlam'),
(460001, 'Betul'),
(462001, 'Bhopal'),
(471606, 'Khajuraho'),
(473001, 'Guna'),
(474003, 'Gwalior'),
(482001, 'Jabalpur'),
(488001, 'Panna');

-- --------------------------------------------------------

--
-- Table structure for table `highways`
--

CREATE TABLE `highways` (
  `highway_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `length` int(11) NOT NULL,
  `passing_cities` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `highways`
--

INSERT INTO `highways` (`highway_no`, `length`, `passing_cities`) VALUES
('NH146', 386, 'Vidisha, Sagar'),
('NH27', 605, 'Gwalior, Ratlam'),
('NH34', 263, 'Jabalpur, Khajuraho'),
('NH347', 364, 'Jabalpur, Betul'),
('NH39', 418, 'Jhansi'),
('NH44', 717, 'Jhansi, Sagar'),
('NH46', 370, 'Hoshangabad, Itarsi'),
('NH47', 443, 'Indore, Ujjain'),
('NH52', 352, 'Ujjain, Vijaypur'),
('SH18', 294, 'Indore, Ujjain'),
('SH19', 425, 'Vidisha, Jhansi'),
('SH23', 403, 'Sagar'),
('SH27', 583, 'Ujjain'),
('SH49', 675, 'Bhopal, Ujjain, Indore');

-- --------------------------------------------------------

--
-- Table structure for table `highway_details`
--

CREATE TABLE `highway_details` (
  `highway_num` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_city` int(6) NOT NULL,
  `end_city` int(6) NOT NULL,
  `toll_price` int(6) NOT NULL,
  `toll_price2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `highway_details`
--

INSERT INTO `highway_details` (`highway_num`, `start_city`, `end_city`, `toll_price`, `toll_price2`) VALUES
('NH146', 462001, 471606, 0, 0),
('NH146', 462001, 488001, 0, 0),
('NH146', 482001, 462001, 0, 0),
('NH27', 452002, 456006, 0, 0),
('NH27', 474003, 457001, 230, 495),
('NH34', 482001, 471606, 100, 335),
('NH347', 482001, 460001, 280, 960),
('NH39', 473001, 471606, 75, 260),
('NH39', 488001, 471606, 0, 0),
('NH39', 488001, 474003, 0, 0),
('NH44', 460001, 471606, 365, 1245),
('NH44', 474003, 471606, 0, 0),
('NH44', 482001, 474003, 230, 780),
('NH46', 460001, 474003, 595, 2025),
('NH46', 462001, 460001, 0, 0),
('NH46', 473001, 460001, 0, 0),
('NH46', 473001, 474003, 0, 0),
('NH47', 452002, 460001, 0, 0),
('NH47', 460001, 456006, 0, 0),
('NH47', 460001, 457001, 0, 0),
('NH52', 473001, 452002, 75, 290),
('NH52', 473001, 456006, 15, 90),
('NH52', 473001, 457001, 15, 90),
('SH18', 452002, 457001, 0, 0),
('SH18', 452002, 471606, 60, 200),
('SH18', 456006, 471606, 0, 0),
('SH18', 457001, 456006, 0, 0),
('SH18', 457001, 471606, 0, 0),
('SH18', 462001, 452002, 60, 200),
('SH18', 462001, 456006, 0, 0),
('SH18', 462001, 457001, 0, 0),
('SH18', 482001, 452002, 60, 200),
('SH18', 482001, 456006, 0, 0),
('SH18', 482001, 457001, 0, 0),
('SH19', 462001, 474003, 0, 0),
('SH23', 473001, 462001, 0, 0),
('SH23', 482001, 473001, 0, 0),
('SH27', 452002, 474003, 230, 740),
('SH27', 474003, 456006, 150, 495),
('SH49', 452002, 488001, 60, 200),
('SH49', 473001, 488001, 0, 0),
('SH49', 482001, 488001, 0, 0),
('SH49', 488001, 456006, 0, 0),
('SH49', 488001, 457001, 0, 0),
('SH49', 488001, 460001, 265, 905);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`pincode`);

--
-- Indexes for table `highways`
--
ALTER TABLE `highways`
  ADD PRIMARY KEY (`highway_no`);

--
-- Indexes for table `highway_details`
--
ALTER TABLE `highway_details`
  ADD PRIMARY KEY (`highway_num`,`start_city`,`end_city`),
  ADD KEY `highway_details_start_city_foreign` (`start_city`),
  ADD KEY `highway_details_end_city_foreign` (`end_city`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `highway_details`
--
ALTER TABLE `highway_details`
  ADD CONSTRAINT `highway_details_end_city_foreign` FOREIGN KEY (`end_city`) REFERENCES `cities` (`pincode`),
  ADD CONSTRAINT `highway_details_highway_num_foreign` FOREIGN KEY (`highway_num`) REFERENCES `highways` (`highway_no`),
  ADD CONSTRAINT `highway_details_start_city_foreign` FOREIGN KEY (`start_city`) REFERENCES `cities` (`pincode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
