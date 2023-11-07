-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2023 at 06:57 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wad`
--

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko_elektronik` (
  `id_elektronik` int(11) NOT NULL,
  `nama_elektronik` varchar(100) DEFAULT NULL,
  `kode_elektronik` varchar(100) DEFAULT NULL,
  `harga_elektronik` int(255) DEFAULT NULL,
  `gambar_elektronik` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `toko_elektronik`
--

INSERT INTO `toko_elektronik` (`id_elektronik`, `nama_elektronik`, `kode_elektronik`, `harga_elektronik`, `gambar_elektronik`) VALUES
(1, 'Laptop Asus', '111', 20000, 'Asus.jpg'),
(2, 'Laptop Acer', '222', 21000, 'Acer.jpg'),
(3, 'Laptop Omen', '333', 23000, 'Omen.jpg'),
(4, 'Mackbook', '666', 25000, 'Mackbook.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `toko_elektronik`
--
ALTER TABLE `toko_elektronik`
  ADD PRIMARY KEY (`id_elektronik`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `toko_elektronik`
--
ALTER TABLE `toko_elektronik`
  MODIFY `id_elektronik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
