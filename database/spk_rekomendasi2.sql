-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Apr 2021 pada 07.18
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk_rekomendasi2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bobot_nilai`
--

CREATE TABLE `bobot_nilai` (
  `id_nilai` int(3) NOT NULL,
  `bobot` varchar(100) NOT NULL,
  `nilai` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bobot_nilai`
--

INSERT INTO `bobot_nilai` (`id_nilai`, `bobot`, `nilai`) VALUES
(30, 'Tidak Memenuhi Syarat (TMS)', 1),
(31, 'Memenuhi Syarat (MS)', 5),
(32, 'Sangat baik (SB)', 1),
(33, 'Baik (B)', 2),
(34, 'Cukup (C)', 3),
(35, 'Buruk (Bk)', 4),
(36, 'Sangat Buruk (SBk)', 5),
(37, 'DIBAWAH 1 TAHUN MASA DINAS', 1),
(38, '1 SAMPAI 2 TAHUN MASA DINAS', 2),
(39, '3 SAMPAI 4 TAHUN  MASA DINAS', 3),
(40, '5 TAHUN MASA DINAS', 4),
(41, '6 TAHUN ATAU LEBIH MASA DINAS', 5),
(42, 'DASAR BELADIRI POLRI', 1),
(43, 'TINGKATAN 1 - 2 PADA BELA DIRI', 2),
(44, 'TINGKATAN 3 - 4 PADA BELA DIRI', 3),
(45, 'TINGKATAN 5 PADA BELA DIRI', 4),
(46, 'TINGKATAN 6 PADA BELA DIRI', 5),
(47, 'TIDAK BISA (TB)', 1),
(48, 'PASIF (P)', 4),
(49, 'AKTIF (A)', 5),
(50, 'SKOR MENEMBAK 0 SAMPAI 10', 1),
(51, 'SKOR MENEMBAK 11 SAMPAI 19', 2),
(52, 'SKOR MENEMBAK 20 - 30', 3),
(53, 'SKOR MENEMBAK 31 - 39', 4),
(54, 'SKOR MENEMBAK 40 SAMPAI 50', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria_c1`
--

CREATE TABLE `kriteria_c1` (
  `id_kriteria` int(4) NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL,
  `sub_kriteria` varchar(100) NOT NULL,
  `bobot_kriteria` int(4) NOT NULL,
  `id_nilai` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria_c2`
--

CREATE TABLE `kriteria_c2` (
  `id_kriteria` int(4) NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL,
  `sub_kriteria` varchar(100) NOT NULL,
  `bobot_kriteria` int(4) NOT NULL,
  `id_nilai` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria_c3`
--

CREATE TABLE `kriteria_c3` (
  `id_kriteria` int(4) NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL,
  `sub_kriteria` varchar(100) NOT NULL,
  `bobot_kriteria` int(4) NOT NULL,
  `id_nilai` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria_c4`
--

CREATE TABLE `kriteria_c4` (
  `id_kriteria` int(4) NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL,
  `sub_kriteria` varchar(100) NOT NULL,
  `bobot_kriteria` int(4) NOT NULL,
  `id_nilai` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria_c5`
--

CREATE TABLE `kriteria_c5` (
  `id_kriteria` int(4) NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL,
  `sub_kriteria` varchar(100) NOT NULL,
  `bobot_kriteria` int(4) NOT NULL,
  `id_nilai` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria_c6`
--

CREATE TABLE `kriteria_c6` (
  `id_kriteria` int(4) NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL,
  `sub_kriteria` varchar(100) NOT NULL,
  `bobot_kriteria` int(4) NOT NULL,
  `id_nilai` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(4) NOT NULL,
  `id_personel` int(4) NOT NULL,
  `C1` int(4) NOT NULL,
  `C2` int(4) NOT NULL,
  `C3` int(4) NOT NULL,
  `C4` int(4) NOT NULL,
  `C5` int(4) NOT NULL,
  `C6` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personel`
--

CREATE TABLE `personel` (
  `id_personel` int(3) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `pangkat` varchar(100) NOT NULL,
  `nrp` varchar(8) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `username` varchar(18) NOT NULL,
  `password` varchar(100) NOT NULL DEFAULT '$2y$10$N33og08eYBFZlPT8unPeYe7D.xxoropy2OniU3jsN3Cb0iuUIGuae',
  `user_status` enum('admin','pimpinan','personel') NOT NULL DEFAULT 'personel'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `personel`
--

INSERT INTO `personel` (`id_personel`, `nama`, `pangkat`, `nrp`, `jabatan`, `no_telpon`, `username`, `password`, `user_status`) VALUES
(1, 'Admin', '-', '-', '', '-', 'admin', '$2y$10$N33og08eYBFZlPT8unPeYe7D.xxoropy2OniU3jsN3Cb0iuUIGuae', 'admin'),
(6, 'WILIYANTO', 'AIPTU', '76070723', 'PS PAMIN 2', '081379319303', 'WILIYANTO', '$2y$10$Lt2MB8DofmR9Ox1cXKA.tum4sIW.cHuoZhyO8ytiHXJYPs7JkVPEu', 'personel'),
(7, 'DEDY MEIDIANTARA', 'BRIPKA', '84051079', 'BAMIN SUBBAGBINOPSNAL', '0812 7232 5084', 'DEDY', '$2y$10$FLwnjDkcVfCWU8BHd.P/K.2YMKodFYU6bfdI80aHh9Ir4G4dnFIGC', 'personel'),
(8, 'M. KURNIA SUHARI', 'BRIPKA', '86090493', 'PS PAMIN 1', '0812 7979 0703', 'MKURNIA', '$2y$10$Fc4SqtaSa5iJkWO.CTCSRO3SL8beKGccnV1Ex0fERkT38KUWIYPaC', 'personel'),
(9, 'ABDUL REZA SUMUAL', 'BRIPKA', '84090383', 'KAUR KEU', '0812 7144 8199', 'ABDULREZA', '$2y$10$LYJC8bleQuf9pcJuIHU3/.7aIzYQMfZ9ZjlRiUJo1D5p.8KxYd51y', 'personel'),
(10, 'MOCH. NASSER HUSEIN, S.H', 'BRIGPOL', '91050069', 'BAMIN URKEU', '0822 5516 1179', 'NASSER', '$2y$10$XBaqhIj3gKmGmKLK0wQyh.R.95Y8lIoj4ihSZm3y9PDSaq/Narr0O', 'personel'),
(11, 'AKBAR MADYA PRATAMA', 'BRIPTU', '97020128', 'BAMIN SUBBAG ANEV', '0813 6990 9029', 'AKBAR', '$2y$10$ikG.YGtiP6D7xFi8EG5fpupIAhIQlwCsO9m5X/XgLj1QBOYe4nRKu', 'personel');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bobot_nilai`
--
ALTER TABLE `bobot_nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `kriteria_c1`
--
ALTER TABLE `kriteria_c1`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `kriteria_c2`
--
ALTER TABLE `kriteria_c2`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `kriteria_c3`
--
ALTER TABLE `kriteria_c3`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `kriteria_c4`
--
ALTER TABLE `kriteria_c4`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `kriteria_c5`
--
ALTER TABLE `kriteria_c5`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `kriteria_c6`
--
ALTER TABLE `kriteria_c6`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `personel`
--
ALTER TABLE `personel`
  ADD PRIMARY KEY (`id_personel`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bobot_nilai`
--
ALTER TABLE `bobot_nilai`
  MODIFY `id_nilai` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `kriteria_c1`
--
ALTER TABLE `kriteria_c1`
  MODIFY `id_kriteria` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kriteria_c2`
--
ALTER TABLE `kriteria_c2`
  MODIFY `id_kriteria` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kriteria_c3`
--
ALTER TABLE `kriteria_c3`
  MODIFY `id_kriteria` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kriteria_c4`
--
ALTER TABLE `kriteria_c4`
  MODIFY `id_kriteria` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kriteria_c5`
--
ALTER TABLE `kriteria_c5`
  MODIFY `id_kriteria` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kriteria_c6`
--
ALTER TABLE `kriteria_c6`
  MODIFY `id_kriteria` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personel`
--
ALTER TABLE `personel`
  MODIFY `id_personel` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
