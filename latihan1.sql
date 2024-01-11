-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2024 at 03:32 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `latihan1`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `no_telp` int(13) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `nama`, `no_telp`, `alamat`, `email`) VALUES
(0, 'Aning Reandito', 2147483647, 'Bekasi', 'aningreandito@gmail.com'),
(1, 'Ery Shans', 2147483647, 'Sukabumi', 'eryshandy@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `data_barang`
--

CREATE TABLE `data_barang` (
  `id_barang` int(10) NOT NULL,
  `kategori_id` int(11) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `harga_beli` decimal(10,0) DEFAULT NULL,
  `harga_jual` decimal(10,0) DEFAULT NULL,
  `stok` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_barang`
--

INSERT INTO `data_barang` (`id_barang`, `kategori_id`, `nama`, `harga_beli`, `harga_jual`, `stok`) VALUES
(1, 2, 'HP Samsung Android', 2000000, 2400000, 5),
(2, 2, 'HP Xiaomi Android', 1000000, 1400000, 5),
(3, 2, 'HP OPPO Android', 1800000, 2300000, 5),
(4, 1, 'TV 20 inci', 2000000, 2300000, 10),
(5, 2, 'Samsung X', 2500000, 2800000, 5),
(6, 2, 'Xiaomi', 1500000, 1800000, 10),
(7, 2, 'SAmsung 2', 200000, 210000, 2),
(8, 2, 'xx22', 123, 123, 2),
(9, 1, 'Kulkas', 2000000, 2500000, 5),
(10, 1, 'Kulkas ', 2000, 3000, 5),
(11, 3, 'Motor', 10000000, 15000000, 10),
(12, 2, 'Samsung J1ace', 1000000, 2000000, 5),
(13, 3, 'Supra', 12000000, 15000000, 15),
(14, 3, 'Mobil', 300000000, 350000000, 15),
(15, 3, 'Supra GTR', 10000000, 15000000, 10),
(16, 1, 'Drone', 3000000, 3500000, 10),
(17, 1, 'Kamera', 2500000, 3000000, 5),
(18, 2, 'samsung', 200000000, 300000000, 2),
(19, 2, 'oppo', 2000000, 3000000, 3),
(20, 3, 'mio', 25000000, 23000000, 10),
(21, 2, 'redmi', 1000000, 2000000, 5),
(22, 3, 'Supra Mk4', 350000000, 400000000, 5);

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id` int(11) NOT NULL,
  `transaksi_id` int(11) DEFAULT NULL,
  `barang_id` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `diskon` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id`, `transaksi_id`, `barang_id`, `jumlah`, `diskon`) VALUES
(0, 0, 13, 1, 50);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`) VALUES
(1, 'Elektronik'),
(2, 'Handphone'),
(3, 'Kendaraan');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `tanggal` datetime DEFAULT NULL,
  `customer` varchar(100) DEFAULT NULL,
  `sub_total` decimal(10,2) DEFAULT NULL,
  `diskon` int(11) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `tanggal`, `customer`, `sub_total`, `diskon`, `total`) VALUES
(0, '0000-00-00 00:00:00', 'Aning Reandito', 2000000.00, 50, 1000000.00);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(250) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `role`) VALUES
(2, '312010201', '1234567', 'Ery Shandy', 2),
(3, '312010389', '12345', 'Humam', 2),
(4, '312010387', '1234567', 'Herliyansyah', 2),
(5, '312010225', '1234567', 'Sofiyan', 2),
(6, '312010337', '1547', 'Satria', 2),
(7, '312010318', '882423', 'Hasashi Hanza', 2),
(8, '312010276', '12345', 'Alingga Reandito', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_barang`
--
ALTER TABLE `data_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transaksi_id` (`transaksi_id`,`barang_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_barang`
--
ALTER TABLE `data_barang`
  MODIFY `id_barang` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
