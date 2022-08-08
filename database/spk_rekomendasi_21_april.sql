-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 21 Apr 2021 pada 12.23
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.7

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
  `id_nilai` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bobot_kriteria`
--

INSERT INTO `bobot_kriteria` (`id_bobot`, `id_kriteria`, `keterangan`, `id_nilai`) VALUES
(1, 2, 'Tidak Disiplin', 1),
(2, 2, 'Kurang Disiplin', 2),
(4, 2, 'Sangat Disiplin', 5),
(6, 2, 'Disiplin', 3),
(7, 5, 'Tidak Baik', 1),
(8, 5, 'Kurang Baik', 2),
(9, 5, 'Baik', 3),
(10, 5, 'Sangat Baik', 5),
(11, 4, 'Tidak Baik', 1),
(12, 4, 'Baik', 3),
(13, 4, 'Sangat Baik', 5);

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
(1, 'Sangat rendah (SR)', 1),
(2, 'Rendah (R)', 2),
(3, 'Cukup (C)', 3),
(4, 'Tinggi (T)', 4),
(5, 'Sangat Tinggi (ST)', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(3) NOT NULL,
  `kriteria` enum('C1','C2','C3','C4','C5','C6') NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `nilai` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `kriteria`, `keterangan`, `nilai`) VALUES
(1, 'C1', 'NILAI KESEHATAN PSYKOLOGI', 20),
(2, 'C2', 'NILAI DAN CATATAN DARI PIMPINAN', 15),
(3, 'C3', 'MASA DINAS', 15),
(4, 'C4', 'Sangat Disiplin', 20),
(5, 'C5', 'KETERAMPILAN BELA DIRI', 10),
(6, 'C6', 'KETERAMPILAN BAHASA ASING ATAU DAERAH', 20);

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
(4, 'ACHMAD AGUNG BRAMTIHALLEY, SE, M.M', 'IPTU', '12345678', 'Inspektur Polisi Satu', '098765', 'agung', '$2y$10$jS7uMcV1rSNbgB.2xG4CFueVzOYfwAkFHeD.NVRV3SkCQkJPzgkK.', 'personel'),
(5, 'Johansyah', 'Brigadir Polisi Dua', '12345678', 'Brigda', '09876', 'johansyah', '$2y$10$qHsNf3.LSdWWltJ.o4BB5u6iM3mH4xG0Slaoae7SnOW.NFewlNdR6', 'personel');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_bobot_nilai_kriteria`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_bobot_nilai_kriteria` (
`id_bobot` int(3)
,`kriteria` enum('C1','C2','C3','C4','C5','C6')
,`keterangan` varchar(100)
,`bobot` varchar(100)
,`nilai` int(3)
,`id_nilai` int(3)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `v_bobot_nilai_kriteria`
--
DROP TABLE IF EXISTS `v_bobot_nilai_kriteria`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_bobot_nilai_kriteria`  AS  select `bobot_kriteria`.`id_bobot` AS `id_bobot`,`kriteria`.`kriteria` AS `kriteria`,`bobot_kriteria`.`keterangan` AS `keterangan`,`bobot_nilai`.`bobot` AS `bobot`,`bobot_nilai`.`nilai` AS `nilai`,`bobot_nilai`.`id_nilai` AS `id_nilai` from ((`bobot_kriteria` join `kriteria` on(`kriteria`.`id_kriteria` = `bobot_kriteria`.`id_kriteria`)) join `bobot_nilai` on(`bobot_nilai`.`id_nilai` = `bobot_kriteria`.`id_nilai`)) order by `bobot_kriteria`.`id_bobot` ;

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
-- Indeks untuk tabel `bobot_nilai`
--
ALTER TABLE `bobot_nilai`
  ADD PRIMARY KEY (`id_nilai`);

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
  MODIFY `id_bobot` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `bobot_nilai`
--
ALTER TABLE `bobot_nilai`
  MODIFY `id_nilai` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `personel`
--
ALTER TABLE `personel`
  MODIFY `id_personel` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
