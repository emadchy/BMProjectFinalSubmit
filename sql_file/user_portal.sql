-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2023 at 04:39 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `version` bigint(20) NOT NULL,
  `is_active` bit(1) NOT NULL,
  `date_created` datetime NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `identity_hash` varchar(255) DEFAULT NULL,
  `last_updated` datetime NOT NULL,
  `password` varchar(255) NOT NULL,
  `birth_date` varchar(255) NOT NULL,
  `identity_hash_last_update` bigint(20) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `member_type` varchar(255) NOT NULL,
  `home_address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `version`, `is_active`, `date_created`, `first_name`, `identity_hash`, `last_updated`, `password`, `birth_date`, `identity_hash_last_update`, `last_name`, `member_type`, `home_address`, `email`, `phone_number`) VALUES
(1, 0, b'1', '2023-09-10 13:51:26', 'System', NULL, '2023-09-10 13:51:26', '21232f297a57a5a743894a0e4a801fc3', '15/09/1996', NULL, 'Administrator', 'ADMINISTRATOR', 'No', 'admin@localhost.com', '01772502145'),
(2, 0, b'1', '2023-09-10 13:52:10', 'Emad', NULL, '2023-09-10 13:52:10', 'e10adc3949ba59abbe56e057f20f883e', '2023-09-27', NULL, 'Chowdhury', 'REGULAR_MEMBER', '709 Road No. 10, Bashundhara RA', 'emad.chowdhury@outlook.com', '+8801772502145'),
(3, 0, b'1', '2023-09-10 13:57:24', 'Emad', NULL, '2023-09-10 13:57:24', 'e10adc3949ba59abbe56e057f20f883e', '2023-09-22', NULL, 'Chowdhury', 'REGULAR_MEMBER', '709 Road No. 10, Bashundhara RA', 'demo@demo.com', '+8801772502145');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
