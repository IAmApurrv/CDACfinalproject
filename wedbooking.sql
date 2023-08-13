-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2019 at 08:18 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wedbooking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `pass` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `email`, `pass`) VALUES
(1, 'Hindusthan hardware', 'provider@gmail.com', 'provider123'),
(2, 'Uniliver pvt. ltd', 'uni@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `hallid` varchar(500) NOT NULL,
  `userid` varchar(500) NOT NULL,
  `fromdate` varchar(500) NOT NULL,
  `todate` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `hallid`, `userid`, `fromdate`, `todate`) VALUES
(2, '1', '1', '2019-03-18', '2019-03-19');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `author` varchar(500) NOT NULL,
  `cover` varchar(500) NOT NULL,
  `quantity` int(11) NOT NULL,
  `department` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `author`, `cover`, `quantity`, `department`) VALUES
(1, 'The Leader In You', 'Dell Carlege', 'The Leader In You', 100, 3),
(3, 'Madame Bovary', 'Gustave Flaubert.', 'Madame Bovary', 199, 5),
(4, 'Day 1', 'Dell Carlege', 'day 1', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `components`
--

CREATE TABLE `components` (
  `id` int(11) NOT NULL,
  `item` text NOT NULL,
  `description` text NOT NULL,
  `type` int(11) NOT NULL,
  `provider` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `components`
--

INSERT INTO `components` (`id`, `item`, `description`, `type`, `provider`) VALUES
(1, 'fastners', 'Join Pipes Togather', 1, 1),
(2, 'Pipe', 'PVC Pipe', 100, 1),
(3, 'Pipe', 'PVC Pipe', 100, 1),
(4, 'Main Line PVC', 'Main Line PVC 75 mm x 4 kg/cm2 ', 200, 1),
(5, 'Fogging Machine', 'Fogging Machine', 20, 2);

-- --------------------------------------------------------

--
-- Table structure for table `costing`
--

CREATE TABLE `costing` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `cost` varchar(500) NOT NULL,
  `measure` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `costing`
--

INSERT INTO `costing` (`id`, `name`, `cost`, `measure`) VALUES
(0, 'Land and development Rs', '4, 50,000', 'Hectare'),
(1, ' Land and development ', '4, 50,000', 'Hectare'),
(2, ' Office Rooms', '3, 00,000', 'Hectare'),
(3, ' Telephone, fax and computer', '1, 00,000', 'hectare'),
(4, 'Polyhouse construction', '14, 00,000', 'hectare'),
(5, 'Planting material and planting', '30, 00,000', 'hectare'),
(6, 'Cold storage', '9, 00,000', 'hectare'),
(7, 'Refrigerated transport van', '2, 00,000', 'hectare'),
(8, 'Grading packing room', '5, 00,000', 'hectare'),
(9, 'Generator set', '2, 50,000', 'hectare'),
(10, 'Power related installations', '2, 00,000', 'hectare'),
(11, 'Water supply system, drip irrigation sprinkler system and misting liners', '8, 00,000 ', 'hectare'),
(12, 'Furniture related', '75, 000 ', 'hectare'),
(13, 'Manures and fertilizers', '1, 50,000', 'hectare'),
(13, 'Plant protection', '1, 50,000', 'hecetare'),
(14, 'Preservatives Rs.3, 00,000 Packing material', '2, 00,000', 'hectare'),
(15, 'Air freight', '1, 20,00,000', 'hectare'),
(16, 'Labor charges', '3, 00,000', 'hectare'),
(17, 'Commission Insurance', '15, 00,000', 'hectare'),
(18, 'Employee Salaries', '6, 00,000', 'hectare'),
(19, 'Electricity charges year ', '6, 00,000', 'hectare'),
(19, 'Overhead costs', '1, 00,000 ', 'hectare'),
(20, 'Maintenance cost', '1, 00,000', 'hectare'),
(21, 'Miscellaneous expenses ', '4, 00,000', 'hectare');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`) VALUES
(1, 'Computer'),
(2, 'Civil'),
(3, 'Social'),
(4, 'Env'),
(5, '19th CENTURY');

-- --------------------------------------------------------

--
-- Table structure for table `hallimages`
--

CREATE TABLE `hallimages` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `hallid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hallimages`
--

INSERT INTO `hallimages` (`id`, `name`, `hallid`) VALUES
(1, 'java.util.Hashtable$Enumerator@f0846d', '1'),
(2, 'image', '1'),
(3, 'screen5.png', '1'),
(4, 'screen4.png', '1'),
(5, 'screen4.png', '1'),
(6, 'screen4.png', '1'),
(7, 'screen4.png', '1'),
(8, 'screen4.png', '1'),
(9, 'screen7.png', '2'),
(10, 'screen4.png', '2'),
(11, 'screen5.png', '2');

-- --------------------------------------------------------

--
-- Table structure for table `halls`
--

CREATE TABLE `halls` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `costperday` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `halls`
--

INSERT INTO `halls` (`id`, `name`, `address`, `costperday`, `phone`, `email`) VALUES
(1, 'Harish Mahajan garden', 'Vrindavan, MG colony, Belgaum', '100', '09225127281', 'humahajan@rediffmail.com'),
(2, 'Saptarang', 'Vrindavan, MG colony, Belgaum', '100', '9225127281', 'saptarang@rediffmail.com'),
(3, 'Saptshrungi lawans', 'VSL Tooling Solutions, M25 & 26, Govt. Industrial estate, Belgaum', '2003', '9225127281', 'saptsh@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `hallservices`
--

CREATE TABLE `hallservices` (
  `id` int(11) NOT NULL,
  `serviceid` varchar(200) NOT NULL,
  `hallid` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hallservices`
--

INSERT INTO `hallservices` (`id`, `serviceid`, `hallid`) VALUES
(1, '1', '3'),
(2, '2', '3');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `type` varchar(300) NOT NULL,
  `note` varchar(1000) NOT NULL,
  `from` varchar(300) NOT NULL,
  `to` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `note`, `from`, `to`) VALUES
(1, 'component', 'new Component Available(Main Line PVC)', 'Hindusthan hardware', 'all'),
(2, 'component', 'new Component Available(Fogging Machine)', 'Uniliver pvt. ltd', 'all'),
(3, 'component', 'new Department Available(Computer)', 'Hindusthan hardware', 'all'),
(4, 'component', 'new Department Available(Civil)', 'Hindusthan hardware', 'all'),
(5, 'component', 'new Department Available(Social)', 'Hindusthan hardware', 'all'),
(6, 'component', 'new Department Available(Env)', 'Hindusthan hardware', 'all'),
(7, 'component', 'new Component Available(The Leader In You)', 'Hindusthan hardware', 'all'),
(8, 'component', 'new Department Available(19th CENTURY)', 'Hindusthan hardware', 'all'),
(9, 'component', 'new Component Available(Anna Karenina)', 'Hindusthan hardware', 'all'),
(10, 'component', 'new Component Available(Madame Bovary)', 'Hindusthan hardware', 'all'),
(11, 'component', 'new Component Available(Day 1)', 'Hindusthan hardware', 'all');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`) VALUES
(1, 'washing'),
(2, 'staff');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(1000) NOT NULL,
  `email` varchar(300) NOT NULL,
  `pass` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `pass`) VALUES
(1, 'admin', 'admin@gmail.com', '12345'),
(2, 'bharatbhamare', 'b3.aug95@gmail.com', 'bharat123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
