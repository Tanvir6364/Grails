-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2019 at 04:49 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bitmascot_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `version` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `is_active` bit(1) NOT NULL,
  `date_created` datetime NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `identity_hash` varchar(255) DEFAULT NULL,
  `last_updated` datetime NOT NULL,
  `password` varchar(255) NOT NULL,
  `identity_hash_last_update` bigint(20) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `member_type` varchar(255) NOT NULL,
  `bdate` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `version`, `address`, `is_active`, `date_created`, `first_name`, `identity_hash`, `last_updated`, `password`, `identity_hash_last_update`, `last_name`, `member_type`, `bdate`, `email`, `phone_number`) VALUES
(1, 0, NULL, b'1', '2019-12-08 20:06:01', 'Bit Mascot', NULL, '2019-12-08 20:06:01', '21232f297a57a5a743894a0e4a801fc3', NULL, 'Administrator', 'ADMINISTRATOR', NULL, 'admin@localhost.com', NULL),
(2, 3, '77 Strand Road, Chittagong, Bangladesh', b'1', '2019-12-08 22:00:56', 'Tanvir', NULL, '2019-12-08 22:19:46', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'Khan', 'ADMINISTRATOR', '2019-12-11', 'khan@gmail.com', '345312454351254'),
(3, 1, '77 Strand Road, Chittagong, Bangladesh', b'1', '2019-12-08 22:30:51', 'Sakib', NULL, '2019-12-08 22:31:10', '14e1b600b1fd579f47433b88e8d85291', NULL, 'Hossain', 'REGULAR_MEMBER', '2019-12-11', 'sakib@gmail.com', '34531245435125455'),
(5, 0, '77 Strand Road, Chittagong, Bangladesh', b'1', '2019-12-08 22:32:49', 'Amit', NULL, '2019-12-08 22:32:49', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'Kalayen', 'REGULAR_MEMBER', '2019-12-19', 'amit@gmail.com', '34531245435125'),
(6, 0, '77 Strand Road, Chittagong, Bangladesh', b'1', '2019-12-08 22:33:59', 'Sahadat', NULL, '2019-12-08 22:33:59', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'Hossain', 'REGULAR_MEMBER', '2019-12-19', 'sahadat@gmail.com', '345312454351254'),
(7, 0, '77 Strand Road, Chittagong, Bangladesh', b'1', '2019-12-08 22:37:37', 'Saiful', NULL, '2019-12-08 22:37:37', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'Sahim', 'ADMINISTRATOR', '2019-12-19', 'saiful@gmail.com', '34531245435125');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_mbmcqelty0fbrvxp1q58dn57t` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
