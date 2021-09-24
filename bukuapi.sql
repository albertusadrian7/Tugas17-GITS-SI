-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2021 at 05:43 AM
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
  `penerbit` varchar(100) NOT NULL,
  `tgl_terbit` date NOT NULL,
  `rating` double NOT NULL,
  `gambar` text NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul`, `penulis`, `penerbit`, `tgl_terbit`, `rating`, `gambar`, `harga`) VALUES
(1, 'Sebuah Seni untuk Bersikap Bodo Amat', 'Mark Manson', 'Gramedia Widiasarana Indonesia', '2005-02-20', 3.92, 'https://cdn.gramedia.com/uploads/items/9786024526986_Sebuah-Seni-Untuk-Bersikap-Bodo-Amat.jpg', 67000),
(2, 'Terimakasih Sudah Mengatakannya', 'KIM YU-JIN', 'Aria Media', '2009-07-20', 4.25, 'https://cdn.gramedia.com/uploads/items/Terimakasih_Sudah_Mengatakannya.jpg', 99000),
(3, 'Insecurity Is My Middle Name', 'Alvi Syahrin', 'Alvi Ardhi Publishing', '2021-08-27', 4.49, 'https://cdn.gramedia.com/uploads/items/Cover_Depan_Insecurity_Is_My_Middle_Name.jpg', 93000),
(4, 'The Art Of Solitude Ed. Inggris', 'Desi Anwar', 'Gramedia Pustaka Utama', '2021-06-30', 3.86, 'https://cdn.gramedia.com/uploads/items/9786020648330.jpg', 88000),
(5, 'Milea Suara Dari Dilan', 'Pidi Baiq', 'Mizan Publishing', '2021-08-20', 4.1, 'https://cdn.gramedia.com/uploads/items/9786020851563_milea_suara_dari_dilan_1.jpg', 89000),
(6, 'The Extincts', 'VERONICA COSSANTELI', 'Bhuana Ilmu Populer', '2021-09-29', 0, 'https://cdn.gramedia.com/uploads/items/9786230406263.jpeg', 82000),
(7, 'Summer Shadows', 'Joss Stirling', 'Bhuana Ilmu Populer', '2021-09-29', 0, 'https://cdn.gramedia.com/uploads/items/9786230405853_Summer_Shadow.jpg', 92000),
(8, 'FS Perhaps Love', 'Dian Mariani', 'Bhuana Ilmu Populer', '2021-06-19', 3, 'https://cdn.gramedia.com/uploads/items/9786232163331_Cover-Perhaps_EHPwrwO.jpg', 84000),
(9, 'Harry Potter and The Cursed Child', 'J.k. Rowling', 'Gramedia Pustaka Utama', '2018-09-17', 3.57, 'https://cdn.gramedia.com/uploads/items/9786020386201_Harry-Potter-.jpg', 127000),
(10, 'Harry Potter and the Prisoner of Azkaban', 'J.k. Rowling', 'Gramedia Pustaka Utama', '2018-08-27', 4.57, 'https://cdn.gramedia.com/uploads/items/9786020383637_Harry-Potter-.jpg', 535000),
(11, 'Harry Potter #5: The Order Of The Phoenix', 'J.k. Rowling', 'Sinar Star Book', '2013-09-19', 4.5, 'https://cdn.gramedia.com/uploads/items/9780545582971.jpg', 260000),
(12, 'Harry Potter #4: The Goblet Of Fire', 'J.k. Rowling', 'Sinar Star Book', '2019-03-25', 4.56, 'https://cdn.gramedia.com/uploads/items/9780545582957.jpg', 208000),
(14, 'Percy Jackson #4: The Battle Of The Labyrinth', 'Rick Riordan', 'Noura Books Publishing', '2021-06-08', 0, 'https://cdn.gramedia.com/uploads/items/Percy_Jackson_4__The_Battle_Of_The_Labyrinth_Republish.jpg', 79000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
