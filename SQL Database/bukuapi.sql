-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2021 at 04:15 PM
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
(11, 'Harry', 'Adrian', 4.5, 90000),
(12, 'Test 123', 'Alexia Adams', 3.81, 65000),
(15, 'Overthink', 'Michson', 3, 125000),
(17, 'Malaikat', 'Post', 3, 120000),
(20, 'Pohoo', 'Boruto', 3, 120000),
(21, 'Ada deh hayo', '2', 13213100, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_user` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_user`, `username`, `email`, `nama`, `alamat`, `gambar`) VALUES
(1, 'albertusadrian', 'albertusadrian@yahoo.com', 'Albertus Adrian Susanto', 'Jalan Gajah Mada No. 100', 'albertusadrian.jpg'),
(2, 'efraimwijanarko', 'efraimwijanarko@mail.com', 'Efraim Wijanarko', 'Jalan Nogolaten No. 8 Yogyakarta', 'efraimwijanarko.jpg'),
(3, 'michsonrabunto', 'michsonrabunto@yahoo.com', 'Michson Rabunto', 'Jalan Sisingamangaraja No. 3', 'michson.jpg'),
(4, 'susianasunjaya', 'susianasunjaya@mail.com', 'Susiana Sunjaya', 'Jalan Imogiri Timur KM 4.5', 'susi.jpg');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;