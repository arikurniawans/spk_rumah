-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Apr 2021 pada 07.33
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
-- Database: `spk_rekomendasi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` int(3) NOT NULL,
  `id_personel` int(3) NOT NULL,
  `id_kriteria` int(3) NOT NULL,
  `nilai` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bobot_kriteria`
--

CREATE TABLE `bobot_kriteria` (
  `id_bobot` int(3) NOT NULL,
  `id_kriteria` int(3) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `nilai` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(3) NOT NULL,
  `kriteria` enum('C1','C2','C3','C4','C5','C6') NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `kriteria`, `keterangan`) VALUES
(1, 'C1', 'NILAI KESEHATAN PSYKOLOGI'),
(2, 'C2', 'NILAI DAN CATATAN DARI PIMPINAN'),
(3, 'C3', 'MASA DINAS'),
(4, 'C4', 'KEAHLIAN PENGGUNAAN SENPI / MENEMBAK'),
(5, 'C5', 'KETERAMPILAN BELA DIRI'),
(6, 'C6', 'KETERAMPILAN BAHASA ASING ATAU DAERAH');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personel`
--

CREATE TABLE `personel` (
  `id_personel` int(3) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `pangkat` varchar(10) NOT NULL,
  `nrp` varchar(8) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `username` varchar(18) NOT NULL,
  `password` varchar(100) NOT NULL DEFAULT '$2y$10$N33og08eYBFZlPT8unPeYe7D.xxoropy2OniU3jsN3Cb0iuUIGuae',
  `user_status` enum('admin','pimpinan','personel') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `personel`
--

INSERT INTO `personel` (`id_personel`, `nama`, `pangkat`, `nrp`, `jabatan`, `no_telpon`, `username`, `password`, `user_status`) VALUES
(1, 'Admin', '-', '-', '', '-', 'admin', '$2y$10$N33og08eYBFZlPT8unPeYe7D.xxoropy2OniU3jsN3Cb0iuUIGuae', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indeks untuk tabel `bobot_kriteria`
--
ALTER TABLE `bobot_kriteria`
  ADD PRIMARY KEY (`id_bobot`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `personel`
--
ALTER TABLE `personel`
  ADD PRIMARY KEY (`id_personel`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_alternatif` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bobot_kriteria`
--
ALTER TABLE `bobot_kriteria`
  MODIFY `id_bobot` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `personel`
--
ALTER TABLE `personel`
  MODIFY `id_personel` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
