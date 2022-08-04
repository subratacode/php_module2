-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2022 at 07:34 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(10) NOT NULL,
  `city_name` varchar(50) NOT NULL,
  `state_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `state_id`) VALUES
(1, 'Kotwali', 4),
(2, 'Khalishpur', 4),
(3, 'Chittagong', 5),
(4, 'Sylhet', 5),
(5, 'Kolkata', 1),
(6, 'Burdwan', 1),
(7, 'Siliguri', 1),
(8, 'Puri', 2),
(9, 'Bhubaneswar', 2),
(10, 'Cuttak', 2),
(11, 'Patna', 3),
(12, 'Muzaffarpur', 3),
(13, 'Gaya', 3);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(10) NOT NULL,
  `country_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(2, 'Bangladesh'),
(1, 'India');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(10) NOT NULL,
  `state_name` varchar(50) NOT NULL,
  `country_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`, `country_id`) VALUES
(1, 'West Bengal', 1),
(2, 'Odissa', 1),
(3, 'Bihar', 1),
(4, 'Khulna', 2),
(5, 'Dhaka', 2);

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` bigint(15) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `zip` int(6) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`id`, `name`, `phone`, `email`, `dob`, `address`, `zip`, `city`, `state`, `country`, `image`) VALUES
(16, 'Subrata Halder', 1232131241, 'subrata.codearts@gmail.com', '2022-08-16', 'Naihati', 743166, 'Naihati', 'West Bengal', 'India', 'profile1.png'),
(18, 'sdfsdgdfg', 1232131243, 'sudf.codearts@gmail.com', '2022-08-19', 'jhkhjkhjk', 678678, 'ghjhgkghj', 'sfdsfd', 'jkljkljkl', 'profile2.png'),
(20, 'fghfgjghj', 57665867, 'sudf.codedfdarts@gmail.com', '2022-08-05', 'fghgjghj', 789789, 'ghfhgjh', 'ghkhljhkl;', 'dfghghjgh', 'profile2.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `name`, `password`, `email`, `mobile`) VALUES
(1, 'Subrata Halder', '123456', 'subrata.codearts@gmail.com', '1234567890'),
(4, 'fdgfdgdg', '0', 'sudf.codearts@gmail.com', '4567547567'),
(5, 'fdfghghj', '0', 'sudf.codearts@gmail.com', '1234567890'),
(6, 'fdfghghj', '202', 'sudf.codearts@gmail.com', '1234567890'),
(7, 'retrtertert', '202', 'sudf.codearts@gmail.com', '1234567890'),
(8, 'sfsdf', '202', 'sudf.codearts@gmail.com', '547568657876'),
(9, 'sfsdf', '202', 'sudf.codearts@gmail.com', '547568657876'),
(10, 'sfsdfsdgf', '0', 'sudf.codearts@gmail.com', '123123423453'),
(11, 'dfgdfgdfgfd', '0', 'sudf.codearts@gmail.com', '456456456456'),
(12, 'sdfsdfsdfdsfsd', '0', 'sudf.codearts@gmail.com', '46545645645'),
(13, 'sdfsdfsdfsdf', '1234567890', 'sfdfd@gmail.com', '45764575676'),
(14, 'fdfghghj', '0', 'sudf.codearts@gmail.com', '352645645645'),
(15, 'fdfghghj', '123456', 'sudf.codearts@gmail.com', '352645645645'),
(16, 'Subrata Halder', '123456', 'sudf.codearts@gmail.com', '1234567890'),
(17, 'sfdfsdf', '12345@', 'sudf.codearts@gmail.com', '547568657876');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`),
  ADD UNIQUE KEY `city_name` (`city_name`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`),
  ADD UNIQUE KEY `country_name` (`country_name`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`),
  ADD UNIQUE KEY `state_name` (`state_name`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student_details`
--
ALTER TABLE `student_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`);

--
-- Constraints for table `state`
--
ALTER TABLE `state`
  ADD CONSTRAINT `state_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
