-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2021 at 06:36 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bukuapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_user` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_user`, `username`, `password`, `email`, `nama`, `alamat`, `gambar`) VALUES
(1, 'albertusadrian', 'albertusadrian', 'albertusadrian@yahoo.com', 'Albertus Adrian Susanto', 'Jalan Bantul KM. 5', 'IMG_20210621_103453.jpg'),
(3, 'michsonrabunto', 'michsonrabunto', 'michsonrabunto@yahoo.com', 'Michson Rabunto', 'Jalan Sisingamangaraja No. 3', 'IMG20210901161724.jpg'),
(6, 'yoelchristy', 'yoelchristy', 'yoelchristy@mail.co.id', 'Yoel Christy', 'Jalan Godean KM 4', 'FB_IMG_1627711133505.jpg'),
(7, 'admin', 'admin', 'admin@gmail.com', 'admin', 'admin', 'Screenshot_20200829-144221.jpg'),
(16, 'adriansusanto', 'adrian', 'adrian@mail.com', 'Adrian Susanto', 'Jalan Hayam Wuruk', 'IMG20210929074115.jpg'),
(17, 'efraim', 'efraim', 'efraim@gmail.com', 'Efraim Wijanarko', 'Jalan Nologaten', 'user.png'),
(18, 'albertusadriansusanto', 'yonatanadrian', 'natanadrian@mail.com', 'Albertus Adrian Susanto', 'Jalan Imogiri Barat', 'IMG_20210102_182438_977.jpg'),
(21, 'samudera', 'samudera', 'Samudera', 'Samudera', 'samudera', 'IMG_20210515_224641_384.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
