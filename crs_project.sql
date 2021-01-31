-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2021 at 02:49 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crs_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `carNo` int(5) NOT NULL,
  `model` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateReceived` date DEFAULT NULL,
  `rentStatus` tinyint(1) NOT NULL DEFAULT 0,
  `maintenance` tinyint(1) NOT NULL DEFAULT 0,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`carNo`, `model`, `type`, `dateReceived`, `rentStatus`, `maintenance`, `filename`, `path`) VALUES
(2, 'Perodua', 'Sedan', '2020-12-11', 1, 0, 'Axia.jpg', 'C:\\NetbeanProject\\ProjectCRS\\build\\web\\image_car\\Axia.jpg'),
(3, 'Honda', 'Sedan', '2020-12-14', 1, 0, 'Honda_Civid.jpg', 'C:\\NetbeanProject\\ProjectCRS\\build\\web\\image_car\\Honda_Civid.jpg'),
(7, 'Proton Waja', 'Sedan', '2021-01-19', 1, 1, '', ''),
(9, 'Nissan Skyline GT-R43', 'Sports', '2021-01-20', 1, 0, '', ''),
(10, 'Proton', 'Sedan', '2021-01-20', 0, 0, 'proton_wira.jpg', 'C:\\NetbeanProject\\ProjectCRS\\build\\web\\image_car\\proton_wira.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance`
--

CREATE TABLE `maintenance` (
  `mid` int(11) NOT NULL,
  `issue` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timeSent` time NOT NULL,
  `dateSent` date NOT NULL,
  `fk_carNo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `maintenance`
--

INSERT INTO `maintenance` (`mid`, `issue`, `timeSent`, `dateSent`, `fk_carNo`) VALUES
(4, 'Flat Tyres', '12:17:08', '2021-01-30', 7);

-- --------------------------------------------------------

--
-- Table structure for table `rent`
--

CREATE TABLE `rent` (
  `rentID` int(11) NOT NULL,
  `duration` decimal(5,2) NOT NULL,
  `totalPrice` decimal(5,2) NOT NULL,
  `fk_carNo` int(5) NOT NULL,
  `fk_userID` int(11) NOT NULL,
  `rentDate` date DEFAULT NULL,
  `rentTime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rent`
--

INSERT INTO `rent` (`rentID`, `duration`, `totalPrice`, `fk_carNo`, `fk_userID`, `rentDate`, `rentTime`) VALUES
(11, '2.00', '20.00', 3, 7, '2021-01-26', '19:49:35'),
(12, '3.00', '90.00', 9, 8, '2021-01-27', '02:51:25'),
(13, '2.00', '20.00', 2, 7, '2021-01-30', '06:38:29'),
(14, '2.00', '20.00', 7, 7, '2021-01-30', '11:40:36');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(12) NOT NULL,
  `lastname` varchar(12) NOT NULL,
  `password` varchar(30) NOT NULL,
  `pnum` varchar(255) DEFAULT NULL,
  `ic` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `password`, `pnum`, `ic`, `email`) VALUES
(6, 'Putera', 'Syabil', 'test123', '0123456780', '990928146177', 'putera@example.com'),
(7, 'Pharveish', 'Selvam', 'test1234', '0123456781', '992810992817', 'pharveish@example.com'),
(8, 'Taufiiq', 'Azman', 'test1234', '0123456789', '990101014433', 'taufiiq@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `useradmin`
--

CREATE TABLE `useradmin` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useradmin`
--

INSERT INTO `useradmin` (`id`, `username`, `password`) VALUES
(0, 'ALLEN', 'test1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`carNo`);

--
-- Indexes for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `fk_carNo` (`fk_carNo`);

--
-- Indexes for table `rent`
--
ALTER TABLE `rent`
  ADD PRIMARY KEY (`rentID`),
  ADD KEY `fk_carNo` (`fk_carNo`),
  ADD KEY `fk_userID` (`fk_userID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `carNo` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `maintenance`
--
ALTER TABLE `maintenance`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rent`
--
ALTER TABLE `rent`
  MODIFY `rentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD CONSTRAINT `maintenance_ibfk_1` FOREIGN KEY (`fk_carNo`) REFERENCES `car` (`carNo`);

--
-- Constraints for table `rent`
--
ALTER TABLE `rent`
  ADD CONSTRAINT `fk_carNo` FOREIGN KEY (`fk_carNo`) REFERENCES `car` (`carNo`),
  ADD CONSTRAINT `fk_userID` FOREIGN KEY (`fk_userID`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
