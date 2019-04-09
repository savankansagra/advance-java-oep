-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2019 at 12:21 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oep_advance_java`
--

-- --------------------------------------------------------

--
-- Table structure for table `resto`
--

CREATE TABLE `resto` (
  `Table_No` int(11) NOT NULL,
  `Bread` int(11) NOT NULL,
  `Chapati` int(11) NOT NULL,
  `Butter_Chapati` int(11) NOT NULL,
  `Tandoori_Roti` int(11) NOT NULL,
  `Cheese_Butter_Masala` int(11) NOT NULL,
  `Panner_Rajwadi` int(11) NOT NULL,
  `Veg_Handi` int(11) NOT NULL,
  `Bhindi_Masala` int(11) NOT NULL,
  `Paneer_Kadai` int(11) NOT NULL,
  `Kaju_Paneer` int(11) NOT NULL,
  `Butter_Milk` int(11) NOT NULL,
  `Coca_Cola` int(11) NOT NULL,
  `Sprite` int(11) NOT NULL,
  `Pepsi` int(11) NOT NULL,
  `Mazza` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
