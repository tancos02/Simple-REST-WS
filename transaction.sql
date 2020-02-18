-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 26, 2019 at 05:26 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `transaction`
--

-- --------------------------------------------------------

--
-- Table structure for table `trans_history`
--

CREATE TABLE `trans_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_pengguna` int(10) UNSIGNED NOT NULL,
  `id_film` int(11) NOT NULL,
  `id_tujuan` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Pending',
  `kursi` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `waktu` datetime DEFAULT current_timestamp(),
  `isRate` int(11) DEFAULT 0,
  `jenis` varchar(20) DEFAULT 'debit'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trans_history`
--

INSERT INTO `trans_history` (`id`, `id_pengguna`, `id_film`, `id_tujuan`, `status`, `kursi`, `id_jadwal`, `waktu`, `isRate`, `jenis`) VALUES
(2, 2, 330457, 1, 'Success', 13, 58, '2019-11-26 22:51:26', 0, 'debit'),
(3, 2, 330457, 1, 'Success', 12, 58, '2019-11-26 22:51:26', 0, 'debit'),
(4, 2, 611207, 1, 'Cancelled', 26, 81, '2019-11-26 23:09:10', 0, 'debit'),
(5, 2, 611207, 1, 'Cancelled', 1, 81, '2019-11-26 23:21:43', 0, 'debit'),
(6, 2, 611207, 1, 'Cancelled', 7, 81, '2019-11-26 23:24:31', 0, 'debit'),
(7, 2, 611207, 1, 'Success', 5, 81, '2019-11-26 23:24:47', 0, 'debit');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `trans_history`
--
ALTER TABLE `trans_history`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `trans_history`
--
ALTER TABLE `trans_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
