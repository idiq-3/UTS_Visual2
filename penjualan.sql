-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jul 2024 pada 04.33
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kustomer`
--

CREATE TABLE `kustomer` (
  `id` int(8) NOT NULL,
  `nik` int(16) DEFAULT NULL,
  `nama` char(100) DEFAULT NULL,
  `telp` char(20) DEFAULT NULL,
  `email` char(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `member` char(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kustomer`
--

INSERT INTO `kustomer` (`id`, `nik`, `nama`, `telp`, `email`, `alamat`, `member`) VALUES
(1, 2147483647, 'Ahmad Haidar Shidiq', '0857xxxxx', 'Shidiq@mail.com', 'BJM', 'yes'),
(2, 2004, 'Idiq', '123456789', 'idiq@mail.com', 'BJB', 'no');

-- --------------------------------------------------------

--
-- Struktur dari tabel `satuan`
--

CREATE TABLE `satuan` (
  `id` int(8) NOT NULL,
  `nama` char(100) NOT NULL,
  `diskripsi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `satuan`
--

INSERT INTO `satuan` (`id`, `nama`, `diskripsi`) VALUES
(2, 'lusin', 'abcd');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kustomer`
--
ALTER TABLE `kustomer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kustomer`
--
ALTER TABLE `kustomer`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `satuan`
--
ALTER TABLE `satuan`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
