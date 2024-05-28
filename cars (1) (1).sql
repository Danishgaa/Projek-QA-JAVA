-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Waktu pembuatan: 17 Nov 2023 pada 15.28
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cars`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `employee`
--

INSERT INTO `employee` (`id`, `name`, `email`, `password`) VALUES
(1, 'danish', 'danish@gmail.com', '123'),
(2, 'ola', 'ola@gmail.com', '123'),
(3, 'rafik', 'rafik@gmail.com', '123'),
(4, 'tes', 'tes@gmail.com', '123'),
(5, 'ilham', 'ilham@gmail.com', 'ilham'),
(6, 'khalisa', 'khalisa@gmail.com', 'khalisa'),
(7, 'danish', 'danish@gmail.com', '123'),
(8, 'danish', 'danish@gmail.com', '123'),
(9, 'aulia', 'aulia@gmail.com', 'aulia'),
(10, 'danish', 'danish@gmail.com', '123'),
(11, 'aulia', 'aulia@gmail.com', 'aulia'),
(12, 'danish', 'danish@gmail.com', '123'),
(13, 'aulia', 'aulia@gmail.com', 'aulia'),
(14, 'danish', 'danish@gmail.com', '123'),
(15, 'aulia', 'aulia@gmail.com', 'aulia'),
(16, 'danish', 'danish@gmail.com', '123'),
(17, 'aulia', 'aulia@gmail.com', 'aulia'),
(18, 'danish', 'danish@gmail.com', '123'),
(19, 'danish', 'danish@gmail.com', '123'),
(20, 'danish', 'danish@gmail.com', '123'),
(21, 'danish', 'danish@gmail.com', '123'),
(22, 'danish', 'danish@gmail.com', '123'),
(23, 'danish', 'danish@gmail.com', '123'),
(24, 'danish', 'danish@gmail.com', '123'),
(25, 'aulia', 'aulia@gmail.com', 'aulia'),
(26, 'danish', 'danish@gmail.com', '123'),
(27, 'aulia', 'aulia@gmail.com', 'aulia'),
(28, 'danish', 'danish@gmail.com', '123'),
(29, 'aulia', 'aulia@gmail.com', 'aulia'),
(30, 'danish', 'danish@gmail.com', '123'),
(31, 'aulia', 'aulia@gmail.com', 'aulia'),
(32, 'danish', 'danish@gmail.com', '123'),
(33, 'aulia', 'aulia@gmail.com', 'aulia'),
(34, 'danish', 'danish@gmail.com', '123'),
(35, 'aulia', 'aulia@gmail.com', 'aulia'),
(36, 'dede', 'dede@gmail.com', 'dede'),
(37, 'danish', 'danish@gmail.com', '123'),
(38, 'aulia', 'aulia@gmail.com', 'aulia'),
(39, 'dede', 'dede@gmail.com', 'dede'),
(40, 'danish', 'danish@gmail.com', '123'),
(41, 'aulia', 'aulia@gmail.com', 'aulia'),
(42, 'dede', 'dede@gmail.com', 'dede'),
(43, 'danish', 'danish@gmail.com', '123'),
(44, 'aulia', 'aulia@gmail.com', 'aulia'),
(45, 'dede', 'dede@gmail.com', 'dede'),
(46, 'danish', 'danish@gmail.com', '123'),
(47, 'aulia', 'aulia@gmail.com', 'aulia'),
(48, 'dede', 'dede@gmail.com', 'dede'),
(49, 'danish', 'danish@gmail.com', '123'),
(50, 'aulia', 'aulia@gmail.com', 'aulia'),
(51, 'dede', 'dede@gmail.com', 'dede'),
(52, 'danish', 'danish@gmail.com', '123'),
(53, 'aulia', 'aulia@gmail.com', 'aulia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `namamobil` varchar(50) NOT NULL,
  `tahunkeluaran` varchar(50) NOT NULL,
  `warna` varchar(50) NOT NULL,
  `spesifikasi` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id`, `namamobil`, `tahunkeluaran`, `warna`, `spesifikasi`) VALUES
(33, 'Mazda', '2019', 'merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(34, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(35, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(36, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(37, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(38, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(39, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(40, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(41, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(42, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(43, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(44, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(45, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(46, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(47, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(48, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(49, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(50, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(51, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(52, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(53, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(54, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(55, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(56, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(57, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(58, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(59, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(60, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(61, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(62, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(63, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(64, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(65, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(66, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(67, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(68, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(69, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(70, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(71, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(72, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(73, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(74, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(75, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(76, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(77, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(78, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(79, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(80, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(81, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(82, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(83, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(84, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(85, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(86, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(87, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(88, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(89, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(90, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(91, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(92, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(93, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(94, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(95, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(96, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(97, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang'),
(98, 'Mazda', '2019', 'Merah', 'Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
