-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2016 at 06:02 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookingsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `id` int(5) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `age` int(10) DEFAULT NULL,
  `phone` varchar(15) NOT NULL,
  `job_title` varchar(50) DEFAULT NULL,
  `skills` varchar(200) DEFAULT NULL,
  `section` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `address`, `email`, `age`, `phone`, `job_title`, `skills`, `section`, `description`) VALUES
(1, 'Nimal Fernando', 'No 23,Colombo', 'nimal@gmail.com', 34, '0771234567', 'Lathe  machine operator, engine repairer', 'Repairing', 'Lathe machine section', 'Good'),
(2, 'Kamal Senanayaka', 'No 200,Galle', 'kamal@gmail.com', 45, '0771111111', 'Engine repairer', 'Engine repairing', 'Repairing section', 'Bla Bla Bla'),
(3, 'Bimal Kumara', 'No 23,Matara', 'bimal@gmail.com', 45, '0712222222', 'Welder', 'Welding', 'Welding', 'Good'),
(4, 'Oshada Deemantha', 'No 12,Matara', 'oshada@gmail.com', 29, '0712223334', 'service technician', ' transmission', 'service section', ' transmission'),
(5, 'Isuru Chandrasiri', 'No 45,Nittambuwa', 'isuru@gmail.com', 24, '0771111111', 'testing mechanic', 'testing ', 'repairing section', ' automotive vehicles');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
