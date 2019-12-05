-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 29, 2019 at 10:38 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `household`
--

-- --------------------------------------------------------

--
-- Table structure for table `expendition`
--

CREATE TABLE `expendition` (
  `ID` int(11) NOT NULL,
  `provinces` varchar(50) NOT NULL,
  `food` varchar(10) NOT NULL,
  `clothing` varchar(10) NOT NULL,
  `house` varchar(10) NOT NULL,
  `health` varchar(10) NOT NULL,
  `transport` varchar(10) NOT NULL,
  `communications` varchar(10) NOT NULL,
  `education` varchar(10) NOT NULL,
  `insurance` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `expendition`
--

INSERT INTO `expendition` (`ID`, `provinces`, `food`, `clothing`, `house`, `health`, `transport`, `communications`, `education`, `insurance`) VALUES
(1, 'Alberta', '15.17%', '3.07%', '23.08%', '3.33%', '11.31%', '2.01%', '7.99%', '10.44%'),
(2, 'British Colunmbia', '16.44%', '3.12%', '27.82%', '3.37%', '11.64%', '2.08%', '8.5%', '11.3%'),
(3, 'Manitoba', '15.17%', '2.95%', '22.65%', '3.27%', '11.92%', '1.99%', '8.2%', '10.06%'),
(4, 'Newfoundland and Labrador', '16.56%', '3.07%', '21.2%', '3.1%', '14.18%', '2.41%', '6.69%', '9.46%'),
(5, 'Northwest Territories', '14.01%', '2.58%', '21.18%', '1.22%', '7.24%', '1.45%', '4.92%', '5.65%'),
(6, 'Nunavut', '9.11%', '2.83%', '15.97%', '0.84%', '3.27%', '0.89%', '2.51%', '3.08%'),
(7, 'Ontario', '15.67%', '3.26%', '22.83%', '3.34%', '13.52%', '2.1%', '8.02%', '11.9%'),
(8, 'Quebec', '16.72%', '3.58%', '21.29%', '3.91%', '13.2%', '1.93%', '6.95%', '11.29%'),
(9, 'Saskatchewan', '14.8%', '3.08%', '24.09%', '3.21%', '11.88%', '2.12%', '7.99%', '9.93%'),
(10, 'Yukon', '13.08%', '1.22%', '21.7%', '1.55%', '8.07%', '1.33%', '5.07%', '5.72%');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `expendition`
--
ALTER TABLE `expendition`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `expendition`
--
ALTER TABLE `expendition`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
