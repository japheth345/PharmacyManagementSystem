-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 05, 2022 at 03:34 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `Name` varchar(20) NOT NULL,
  `Mobile_no` bigint(20) NOT NULL DEFAULT '0',
  `No_of_purchases` int(11) DEFAULT NULL,
  `CustomerID` int(20) DEFAULT NULL,
  PRIMARY KEY (`Mobile_no`),
  UNIQUE KEY `CoustomerID` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Name`, `Mobile_no`, `No_of_purchases`, `CustomerID`) VALUES
('Shish', 234567888, 32, 2),
('Shiro kimani', 67890000000, 56, 4),
('Japho', 254741660161, 36, 1),
('Sharon kemunto', 345678898988, 45, 3);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `Sno` int(11) NOT NULL,
  `Userid` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  PRIMARY KEY (`Sno`),
  UNIQUE KEY `Sno` (`Sno`),
  UNIQUE KEY `Userid` (`Userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Sno`, `Userid`, `Password`) VALUES
(1, 'Admin001', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE IF NOT EXISTS `manufacturer` (
  `Manufacturer_ID` int(10) NOT NULL,
  `Mobile_No` bigint(20) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `No_of_Supplies` int(10) DEFAULT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `Manufacturer_name` varchar(50) DEFAULT NULL,
  `Phone_no` bigint(20) NOT NULL,
  PRIMARY KEY (`Manufacturer_ID`),
  UNIQUE KEY `Mobile_No` (`Mobile_No`),
  UNIQUE KEY `Mobile_No_2` (`Mobile_No`),
  UNIQUE KEY `Phone_no` (`Phone_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`Manufacturer_ID`, `Mobile_No`, `Address`, `No_of_Supplies`, `City`, `State`, `Manufacturer_name`, `Phone_no`) VALUES
(1, 741660161, '1460', 341, 'Nairobi', 'Kisii', 'Manufacturer1', 254741660161);

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE IF NOT EXISTS `medicines` (
  `Med_Code` int(10) NOT NULL,
  `Medicine` varchar(20) NOT NULL,
  `Quantity` int(10) DEFAULT NULL,
  `ManufacturerName` varchar(20) DEFAULT NULL,
  `Price` int(10) NOT NULL,
  `Expiry_date` date NOT NULL,
  PRIMARY KEY (`Med_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`Med_Code`, `Medicine`, `Quantity`, `ManufacturerName`, `Price`, `Expiry_date`) VALUES
(1, 'Panadol', -1350, 'Manufacturer2', 10, '2015-06-15'),
(2, 'Billton', -1739, 'Manufacturer3', 15, '2015-06-15'),
(3, 'Sporlac', -1705, 'Manufacturer3', 12, '2015-06-15'),
(7, 'Levocet', -1735, 'Manufacturer2', 25, '2015-06-15'),
(8, 'Meftal-Spas', -1739, 'Manufacturer3', 22, '2015-06-15'),
(9, 'Zanflox-Oz', -1723, 'Manufacturer4', 39, '2015-06-15'),
(10, 'Zanflox-Oz', -1156, 'Manufacurer 1', 4444, '2022-06-07'),
(11, 'Pilliton', -1720, 'Manufacturer1', 25, '2015-06-15'),
(12, 'Penicillin100', -1200, 'Manufacturer1', 50, '2022-04-03'),
(13, 'Penicilin panadol', 100, 'Manufacturer1', 40, '2022-06-08'),
(14, 'Asprin', 400, 'Manufacturer1', 3400, '2022-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE IF NOT EXISTS `purchase` (
  `Date` date NOT NULL,
  `CoustomerID` int(10) NOT NULL,
  `Medicines` varchar(50) DEFAULT NULL,
  `Quantity` int(10) NOT NULL,
  `ExpiryDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`Date`, `CoustomerID`, `Medicines`, `Quantity`, `ExpiryDate`) VALUES
('2022-03-30', 1, 'Penicilin panadol', 200, '2022-06-08'),
('2022-03-30', 1, 'Asprin', 300, '2022-05-10');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
