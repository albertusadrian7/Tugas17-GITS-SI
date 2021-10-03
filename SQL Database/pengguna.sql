-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2021 at 07:53 AM
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
(1, 'albertusadrian', 'albertusadrian', 'albertusadrian@yahoo.com', 'Albertus Adrian', 'Jalan Bantul KM. 5', 'IMG_20210515_225134_344.jpg'),
(3, 'michsonrabunto', 'michsonrabunto', 'michsonrabunto@yahoo.com', 'Michson Rabunto', 'Jalan Sisingamangaraja No. 3', 'IMG20210901161724.jpg'),
(6, 'yoelchristy', 'yoelchristy', 'yoelchristy@mail.co.id', 'Yoel Christy', 'Jalan Godean KM 4', 'FB_IMG_1627711133505.jpg'),
(7, 'admin', 'admin', 'admin@gmail.com', 'admin', 'admin', 'Screenshot_20200829-144221.jpg'),
(16, 'labfti', 'labfti', 'labfti@mail.com', 'Lab FTI 4', 'Jalan Palagan', 'IMG20210929074115.jpg'),
(17, 'efraim', 'efraim', 'efraim@gmail.com', 'Efraim Wijanarko', 'Jalan Nologaten', 'user.png'),
(21, 'samudera', 'samudera', 'Samudera', 'Samudera', 'samudera', 'IMG_20210515_224641_384.jpg'),
(22, 'miekita', 'miekita', 'miekita@orang.com', 'Mie Kita Orang', 'Jalan C. Simanjuntak', 'IMG_20210928_WA0019.jpeg'),
(28, 'case', 'case', 'case', 'Case Handphone', 'case', '1600150408117.jpg'),
(29, 'keyboardyamaha', 'keyboardyamaha', 'keyboard@yamaha.com', 'Keyboard Yamaha', 'keyboardyamaha', 'IMG_20210621_103453.jpg'),
(30, 'adriansusanto', 'adriansusanto', 'adriansusanto@yahoo.com', 'Adrian Susanto', 'Jalan Imogiri Timur', 'IMG_20210102_182438_977.jpg'),
(31, 'overthink', 'overthink', 'overthink', 'Overthink', 'Jalan Jendral Sudirman', 'IMG20211002213637.jpg');

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
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
