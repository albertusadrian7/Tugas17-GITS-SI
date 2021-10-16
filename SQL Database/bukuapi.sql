-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2021 at 11:11 AM
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
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `rating` float NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul`, `penulis`, `rating`, `harga`) VALUES
(1, 'Sebuah Seni untuk Bersikap Bodo Amat', 'Mark Manson', 3.92, 67000),
(2, 'Terimakasih Sudah Mengatakannya', 'KIM YU-JIN', 4.25, 99000),
(3, 'Insecurity Is My Middle Name', 'Alvi Syahrin', 4.49, 93000),
(4, 'The Art Of Solitude Ed. Inggris', 'Desi Anwar', 3.86, 88000),
(5, 'Milea Suara Dari Dilan', 'Pidi Baiq', 4.1, 89000),
(6, 'FS Perhaps Love', 'Dian Mariani', 3, 84000),
(7, 'Harry Potter and The Cursed Child', 'J.k. Rowling', 3.57, 127000),
(8, 'Harry Potter and the Prisoner of Azkaban', 'J.k. Rowling', 4.57, 535000),
(9, 'Harry Potter #5: The Order Of The Phoenix', 'J.k. Rowling', 4.5, 260000),
(10, 'Harry Potter #4: The Goblet Of Fire', 'J.k. Rowling', 4.56, 208000),
(11, 'Harry', 'JK. Rowling', 4.5, 90000),
(12, 'Hello World', 'Alexia Adams', 3.81, 65000),
(17, 'Malaikat Juga Tahu', '120000', 4, 3000),
(29, 'You Are The Best', 'Raya The Last Dragon', 3.6, 120000);

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
  `gambar` text NOT NULL,
  `hardware_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_user`, `username`, `password`, `email`, `nama`, `alamat`, `gambar`, `hardware_id`) VALUES
(1, 'albertusadrian', 'albertusadrian', 'albertusadrian@yahoo.com', 'Albertus Adrian', 'Jalan Bantul KM. 5', 'IMG_20210515_225134_344.jpg', '3291f7daf199870f'),
(3, 'michsonrabunto', 'michsonrabunto', 'michsonrabunto@yahoo.com', 'Michson Rabunto', 'Jalan Sisingamangaraja No. 3', 'IMG20210901161724.jpg', '80bdaf5f02227e7f'),
(6, 'yoelchristy', 'yoelchristy', 'yoelchristy@mail.co.id', 'Yoel Christy', 'Jalan Godean KM 4', 'blackwidow.jpg', '80bdaf5f02227e7f'),
(7, 'admin', 'admin', 'admin@gmail.com', 'admin', 'admin', 'IMG20210929074115.jpg', ''),
(17, 'efraim', 'efraim', 'efraim@gmail.com', 'Efraim Wijanarko', 'Jalan Nologaten', 'IMG20210909101518.jpg', ''),
(22, 'miekita', 'miekita', 'miekita@orang.com', 'Mie Kita Orang', 'Jalan C. Simanjuntak', 'IMG_20210928_WA0019.jpeg', ''),
(29, 'keyboardyamaha', 'keyboardyamaha', 'keyboard@yamaha.com', 'Keyboard Yamaha', 'keyboardyamaha', 'IMG_20210621_103453.jpg', ''),
(30, 'adriansusanto', 'adriansusanto', 'adriansusanto@yahoo.com', 'Adrian Susanto', 'Jalan Imogiri Timur', 'IMG_20210102_182438_977.jpg', ''),
(31, 'overthink', 'overthink', 'overthink', 'Overthink', 'Jalan Jendral Sudirman', 'IMG20211002213637.jpg', ''),
(37, 'adrian', 'adrian', 'adrian@mail.com', 'Adrian', 'Jalan Bantul', 'IMG20210514165950.jpg', ''),
(38, 'captainamerica', 'captain', 'captainmarvel@mail.com', 'Captain America', 'Mars', '19CMAL.jpg', ''),
(40, 'felix', 'felix', 'felixsusanto@mail.com', 'Antonius Felix Susanto', 'Jalan Imogiri Timur', 'IMG_20170924_110820.jpg', ''),
(42, 'iot', 'iot', 'iot@mail.com', 'IoT', 'Jalan Pakuningratan', 'IMG20211006143433.jpg', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
