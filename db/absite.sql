-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2022 at 11:14 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absite`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `aktif` varchar(5) NOT NULL,
  `foto` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama_lengkap`, `username`, `password`, `aktif`, `foto`) VALUES
(1, 'Kelompok 3 5AB', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Y', '33.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_guru`
--

CREATE TABLE `tb_guru` (
  `id_guru` int(11) NOT NULL,
  `nip` varchar(15) NOT NULL,
  `nama_guru` varchar(120) NOT NULL,
  `email` varchar(65) NOT NULL,
  `password` varchar(100) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_guru`
--

INSERT INTO `tb_guru` (`id_guru`, `nip`, `nama_guru`, `email`, `password`, `foto`, `status`) VALUES
(1, '200631100027', 'Jamiatus Sholihah', 'jamiatussholihah.24@gmail.com', '49eb055a83d080c91c7755cea1a6d550390c9dcb', 'Jamiatus.png', 'Y'),
(2, '200631100029', 'Dianatin Nisak', 'dianatinnisak@gmail.com', '790c351402fec29c8588aae5de728aa212382dd1', 'Dianatin.png', 'Y'),
(3, '200631100020', 'Rabiatul Fitria Sulistina Putri', 'rabiatul@gmail.com', 'd7986684d0cb083184f0356e846e21198a55f1be', 'Rabiatul.png', 'Y'),
(4, '200631100002', 'Alif Dziki Setiyawan  ', 'alif@gmail.com', '64e3bfc2c59a3b3a3663e3bbba1b18c885c555e8', 'aaaa.png', 'Y'),
(5, '200631100005', 'Shevia Ilfa Melia ', 'shevia@gmail.com', 'e67f4397b80f75e94db79c1805336db62d16e74d', 'aaa.png', 'Y'),
(6, '200631100006', 'Fitria Wahyuningsih', 'fitria@gmail.com', '72b2c64eef7ac69776fcf7273a1f0f280d825ef7', 'aaa.png', 'Y'),
(7, '200631100007', 'Sisca Heprilla ', 'sisca@gmail.com', '68d273b6ecc64adadc26e1279956a237be19de1a', 'aaa.png', 'Y'),
(8, '200631100008', 'Zhunanda Ayu Regita  ', 'zhunanda@gmail.com', '010c004fc9c536aecbf65e53e96c4ee05c7b0588', 'aaa.png', 'Y'),
(21, '200631100017', 'Ach. Nur Chalis ', 'ach@gmail.com', '7d48f5c53a41450e88e499012a3ed5595d011eb5', 'aaaa.png', 'Y'),
(22, '200631100018', 'Wardhana Agus Nasution', 'wardhana@gmail.com', '14e151bf35b89bda281cf7329649350239af8198', 'aaaa.png', 'Y'),
(23, '200631100021', 'Ita Uliyah Sari ', 'ita@gmail.com', '030ecd6cc907cc9ca0d547a249b1185439b41100', 'aaa.png', 'Y'),
(24, '200631100032', 'Luki Hermawan ', 'luki@gmail.com', '5262752e8be81f9fe16b5f3d41ac4f445deed7b3', 'aaaa.png', 'Y'),
(25, '200631100033', 'Ahmad Jumadi', 'jumadi@gmail.com', 'de2c506acb5f78890e39bf4cf46e0316fe952fd1', 'aaaa.png', 'Y'),
(26, '200631100037', 'Zalsa Maulina Widodo', 'zalsa@gmail.com', '29fbba5fefd215ad50d3661b9420efa0534545ce', 'aaa.png', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mapel`
--

CREATE TABLE `tb_mapel` (
  `id_mapel` int(11) NOT NULL,
  `kode_mapel` varchar(40) NOT NULL,
  `mapel` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mapel`
--

INSERT INTO `tb_mapel` (`id_mapel`, `kode_mapel`, `mapel`) VALUES
(1, 'MP-1669901100', 'Quran Hadits'),
(2, 'MP-1669901234', 'Aqidah Akhlaq'),
(3, 'MP-1669901244', 'Fiqih'),
(4, 'MP-1669901254', 'SKI'),
(5, 'MP-1669901261', 'Bahasa Arab'),
(6, 'MP-1669901271', 'PKn'),
(7, 'MP-1669901281', 'Bahasa Indonesia'),
(8, 'MP-1669901290', 'Bahasa Inggris'),
(10, 'MP-1669901307', 'Sejarah Indonesia'),
(11, 'MP-1669901315', 'Matematika'),
(12, 'MP-1669901324', 'Matematika Peminatan'),
(13, 'MP-1669901336', 'Fisika'),
(14, 'MP-1669901343', 'Biologi'),
(15, 'MP-1669901351', 'Kimia');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mengajar`
--

CREATE TABLE `tb_mengajar` (
  `id_mengajar` int(11) NOT NULL,
  `kode_pelajaran` varchar(30) NOT NULL,
  `hari` varchar(40) NOT NULL,
  `jam_mengajar` varchar(60) NOT NULL,
  `jamke` varchar(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_mkelas` int(11) NOT NULL,
  `id_semester` int(11) NOT NULL,
  `id_thajaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mengajar`
--

INSERT INTO `tb_mengajar` (`id_mengajar`, `kode_pelajaran`, `hari`, `jam_mengajar`, `jamke`, `id_guru`, `id_mapel`, `id_mkelas`, `id_semester`, `id_thajaran`) VALUES
(16, 'MPL-1670307919', 'Senin', '07.00-08.30', '1-2', 1, 1, 1, 1, 2),
(17, 'MPL-1670307978', 'Senin', '07.00-08.30', '1-2', 2, 2, 2, 1, 2),
(18, 'MPL-1670308028', 'Senin', '07.00-08.30', '1-2', 3, 3, 3, 1, 2),
(19, 'MPL-1670308053', 'Senin', '07.00-08.30', '1-2', 4, 4, 4, 1, 2),
(20, 'MPL-1670308076', 'Senin', '07.00-08.30', '1-2', 5, 5, 5, 1, 2),
(21, 'MPL-1670308102', 'Senin', '07.00-08.30', '1-2', 6, 6, 6, 1, 2),
(22, 'MPL-1670308126', 'Selasa', '07.00-08.30', '1-2', 7, 7, 1, 1, 2),
(23, 'MPL-1670308259', 'Selasa', '07.00-08.30', '1-2', 8, 8, 2, 1, 2),
(24, 'MPL-1670308305', 'Selasa', '07.00-08.30', '1-2', 21, 11, 3, 1, 2),
(25, 'MPL-1670308354', 'Selasa', '07.00-08.30', '1-2', 22, 12, 4, 1, 2),
(26, 'MPL-1670308379', 'Selasa', '07.00-08.30', '1-2', 23, 13, 5, 1, 2),
(27, 'MPL-1670308406', 'Selasa', '07.00-08.30', '1-2', 24, 14, 6, 1, 2),
(28, 'MPL-1670308433', 'Rabu', '07.00-08.30', '1-2', 25, 15, 1, 1, 2),
(29, 'MPL-1670308477', 'Rabu', '07.00-08.30', '1-2', 26, 10, 2, 1, 2),
(30, 'MPL-1670308607', 'Rabu', '07.00-08.30', '1-2', 1, 1, 3, 1, 2),
(31, 'MPL-1670308629', 'Rabu', '07.00-08.30', '1-2', 2, 2, 4, 1, 2),
(32, 'MPL-1670308664', 'Rabu', '07.00-08.30', '1-2', 3, 3, 5, 1, 2),
(33, 'MPL-1670308686', 'Rabu', '07.00-08.30', '1-2', 4, 4, 6, 1, 2),
(34, 'MPL-1670308729', 'Kamis', '07.00-08.30', '1-2', 5, 5, 1, 1, 2),
(35, 'MPL-1670308754', 'Kamis', '07.00-08.30', '1-2', 6, 6, 2, 1, 2),
(36, 'MPL-1670308853', 'Kamis', '07.00-08.30', '1-2', 7, 7, 3, 1, 2),
(37, 'MPL-1670308902', 'Kamis', '07.00-08.30', '1-2', 8, 8, 4, 1, 2),
(38, 'MPL-1670308926', 'Kamis', '07.00-08.30', '1-2', 21, 11, 5, 1, 2),
(39, 'MPL-1670308950', 'Kamis', '07.00-08.30', '1-2', 22, 12, 6, 1, 2),
(40, 'MPL-1670309368', 'Jumat', '07.00-08.30', '1-2', 23, 13, 1, 1, 2),
(41, 'MPL-1670309495', 'Kamis', '07.00-08.30', '1-2', 24, 14, 2, 1, 2),
(42, 'MPL-1670309543', 'Jumat', '07.00-08.30', '1-2', 24, 14, 2, 1, 2),
(43, 'MPL-1670309572', 'Jumat', '07.00-08.30', '1-2', 25, 15, 3, 1, 2),
(44, 'MPL-1670309593', 'Jumat', '07.00-08.30', '1-2', 26, 10, 4, 1, 2),
(45, 'MPL-1670309616', 'Jumat', '07.00-08.30', '1-2', 1, 1, 5, 1, 2),
(46, 'MPL-1670309653', 'Jumat', '07.00-08.30', '1-2', 2, 2, 6, 1, 2),
(47, 'MPL-1670309674', 'Sabtu', '07.00-08.30', '1-2', 3, 3, 2, 1, 2),
(48, 'MPL-1670309719', 'Sabtu', '07.00-08.30', '1-2', 4, 4, 2, 1, 2),
(49, 'MPL-1670309742', 'Sabtu', '07.00-08.30', '1-2', 5, 5, 3, 1, 2),
(50, 'MPL-1670309766', 'Sabtu', '07.00-08.30', '1-2', 6, 6, 4, 1, 2),
(51, 'MPL-1670309787', 'Sabtu', '07.00-08.30', '1-2', 7, 7, 5, 1, 2),
(52, 'MPL-1670309808', 'Sabtu', '07.00-08.30', '1-2', 8, 8, 6, 1, 2),
(53, 'MPL-1670310071', 'Senin', '08.31-10.00', '3-4', 21, 11, 1, 1, 2),
(54, 'MPL-1670310104', 'Senin', '08.31-10.00', '3-4', 22, 12, 2, 1, 2),
(55, 'MPL-1670310121', 'Senin', '08.31-10.00', '3-4', 23, 13, 3, 1, 2),
(56, 'MPL-1670310142', 'Senin', '08.31-10.00', '3-4', 24, 14, 4, 1, 2),
(57, 'MPL-1670310159', 'Senin', '08.31-10.00', '3-4', 25, 15, 5, 1, 2),
(58, 'MPL-1670310188', 'Senin', '08.31-10.00', '3-4', 26, 10, 6, 1, 2),
(59, 'MPL-1670310366', 'Selasa', '08.31-10.00', '3-4', 6, 6, 1, 1, 2),
(60, 'MPL-1670310393', 'Selasa', '08.31-10.00', '3-4', 5, 5, 2, 1, 2),
(61, 'MPL-1670310425', 'Selasa', '08.31-10.00', '3-4', 4, 4, 3, 1, 2),
(62, 'MPL-1670310446', 'Selasa', '08.31-10.00', '3-4', 3, 3, 4, 1, 2),
(63, 'MPL-1670310472', 'Selasa', '08.31-10.00', '3-4', 2, 2, 5, 1, 2),
(64, 'MPL-1670310486', 'Selasa', '08.31-10.00', '3-4', 1, 1, 6, 1, 2),
(65, 'MPL-1670310521', 'Rabu', '08.31-10.00', '3-4', 24, 14, 1, 1, 2),
(66, 'MPL-1670310540', 'Rabu', '08.31-10.00', '3-4', 23, 13, 2, 1, 2),
(67, 'MPL-1670310558', 'Rabu', '08.31-10.00', '3-4', 22, 12, 3, 1, 2),
(68, 'MPL-1670310578', 'Rabu', '08.31-10.00', '3-4', 21, 11, 4, 1, 2),
(70, 'MPL-1670310656', 'Rabu', '08.31-10.00', '3-4', 8, 8, 5, 1, 2),
(71, 'MPL-1670310679', 'Rabu', '08.31-10.00', '3-4', 7, 7, 6, 1, 2),
(72, 'MPL-1670310737', 'Kamis', '08.31-10.00', '3-4', 4, 4, 1, 1, 2),
(73, 'MPL-1670310762', 'Kamis', '08.31-10.00', '3-4', 3, 3, 2, 1, 2),
(74, 'MPL-1670310784', 'Kamis', '08.31-10.00', '3-4', 2, 2, 3, 1, 2),
(75, 'MPL-1670310802', 'Kamis', '08.31-10.00', '3-4', 1, 1, 4, 1, 2),
(76, 'MPL-1670310836', 'Kamis', '08.31-10.00', '3-4', 26, 10, 5, 1, 2),
(77, 'MPL-1670310849', 'Kamis', '08.31-10.00', '3-4', 25, 15, 6, 1, 2),
(78, 'MPL-1670310875', 'Jumat', '08.31-10.00', '3-4', 22, 12, 1, 1, 2),
(79, 'MPL-1670310897', 'Jumat', '08.31-10.00', '3-4', 21, 11, 2, 1, 2),
(80, 'MPL-1670310916', 'Jumat', '08.31-10.00', '3-4', 8, 8, 3, 1, 2),
(81, 'MPL-1670310936', 'Jumat', '08.31-10.00', '3-4', 7, 7, 4, 1, 2),
(82, 'MPL-1670310956', 'Jumat', '08.31-10.00', '3-4', 6, 6, 5, 1, 2),
(83, 'MPL-1670311004', 'Jumat', '08.31-10.00', '3-4', 5, 5, 6, 1, 2),
(84, 'MPL-1670311034', 'Sabtu', '08.31-10.00', '3-4', 2, 2, 1, 1, 2),
(85, 'MPL-1670311055', 'Sabtu', '08.31-10.00', '3-4', 1, 1, 2, 1, 2),
(86, 'MPL-1670311127', 'Sabtu', '08.31-10.00', '3-4', 26, 10, 3, 1, 2),
(87, 'MPL-1670311143', 'Sabtu', '08.31-10.00', '3-4', 25, 15, 4, 1, 2),
(88, 'MPL-1670311166', 'Sabtu', '08.31-10.00', '3-4', 24, 14, 5, 1, 2),
(89, 'MPL-1670311182', 'Sabtu', '08.31-10.00', '3-4', 23, 13, 6, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_mkelas`
--

CREATE TABLE `tb_mkelas` (
  `id_mkelas` int(11) NOT NULL,
  `kd_kelas` varchar(40) NOT NULL,
  `nama_kelas` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mkelas`
--

INSERT INTO `tb_mkelas` (`id_mkelas`, `kd_kelas`, `nama_kelas`) VALUES
(1, 'KL-1669946421', 'X IPA 1'),
(2, 'KL-1669903382', 'X IPA 2'),
(3, 'KL-1669900993', 'XI IPA 1'),
(4, 'KL-1669903393', 'XI IPA 2'),
(5, 'KL-1669901003', 'XII IPA 1'),
(6, 'KL-1669946398', 'XII IPA 2');

-- --------------------------------------------------------

--
-- Table structure for table `tb_semester`
--

CREATE TABLE `tb_semester` (
  `id_semester` int(11) NOT NULL,
  `semester` varchar(45) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_semester`
--

INSERT INTO `tb_semester` (`id_semester`, `semester`, `status`) VALUES
(1, 'Ganjil', 1),
(2, 'Genap', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` varchar(60) NOT NULL,
  `nama_siswa` varchar(120) NOT NULL,
  `jk` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` varchar(15) NOT NULL,
  `th_angkatan` year(4) NOT NULL,
  `id_mkelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `nis`, `nama_siswa`, `jk`, `alamat`, `password`, `foto`, `status`, `th_angkatan`, `id_mkelas`) VALUES
(1, '0044823372', 'Abul Hasan Umar', 'L', 'Tanjung Bumi', '66d147bfe7fc5b5da49a75bccf8b2c8c8dc0ce8b', 'pp.png', '1', 2022, 1),
(2, '0042711619', 'Cholilur Rohman', 'L', 'Banyuates', '77346ca4ea941b260e0d36fcf01e690332dc5896', 'pp.png', '1', 2022, 1),
(3, '0038814542', 'Fajrul Qomar', 'L', 'Tanjung Bumi\r\n', '000c94f5d719e8e079bc49c3f8a2a315b4ebf45d', 'pp.png', '1', 2022, 1),
(6, '0038418991', 'Afidatul Aini', 'P', 'Banyuates', '635ec36e21448c97b4003ec172aa56db6132843f', 'ppp.png', '1', 2022, 2),
(7, '0011536022', 'Anis Mahdudeh', 'P', 'Banyuates', '125104c6f5141015e28fe30377f997331c7424ce', 'ppp.png', '1', 2022, 2),
(11, '0033552757', 'Afi Fuddin', 'L', 'Banyuates', '49a3327c3968fc8ab6dcead38877db7345792297', 'pp.png', '1', 2021, 3),
(12, '0021260117', 'Ahmadi', 'L', 'Tanjung Bumi', '76cdd1e289ef736b90d6fbcda02932488537c3b0', 'pp.png', '1', 2021, 3),
(16, '0033555887', 'Aminatus Sahroh', 'P', 'Banyuates ', '442bb3867fbe0a48331578b9e509227d7d7a33a1', 'ppp.png', '1', 2021, 4),
(17, '0026050912', 'Atiqatul Maula', 'P', 'Banyuates ', '0a0c2984f64943a3ad95beb4941bd5fa39544114', 'ppp.png', '1', 2021, 4),
(21, '0014354168', 'Achmad Rofie ', 'L', 'Banyuates', 'fb332eab6d910c6d1fbb974b357cb61a08ebf79a', 'pp.png', '1', 2020, 5),
(22, '0029564735', 'Ahmad Afief ', 'L', 'Tanjung Bumi', '8d23a5a3a8d7b1619e7b351e3ad5516a256708fb', 'pp.png', '1', 2020, 5),
(26, '0015934114', 'Afiyah', 'P', 'Tanjungbumi ', '4904ff4d83c037db5d8322d9ba67fb0af6999e3f', 'ppp.png', '1', 2020, 6),
(27, '0017552887', 'Alfa Zahroh ', 'P', 'Banyuates ', '4a231ce7c539deb82a5f8f1231e8c23c6543004c', 'ppp.png', '1', 2020, 6),
(38, '0047394336', 'Habibur Rohman', 'L', 'Banyuates', '79566d5d703c7724a113a8152eaba7f0161c457a', 'pp.png', '1', 2022, 1),
(39, '0042711625', 'Holil Muhammad', 'L', 'Banyuates', '0270b122fc543c355217ef76086c18349b681b20', 'pp.png', '1', 2022, 1),
(40, '0023962719', 'Kholid Mohammad Aldio', 'L', 'Banyuates', 'f9b144fbdaebf5e1428b05654d4b1d77e1a25c6e', 'pp.png', '1', 2022, 1),
(41, '0045751573', 'Anisatul Husna', 'P', 'Banyuates', '12a1035f0c3c1440bbeb3b775d2116123be5e37c', 'ppp.png', '1', 2022, 2),
(42, '0045780747', 'Ayu Andira', 'P', 'Banyuates', '8d1e06b94347ecbdbb225306390d7d0c07686f39', 'ppp.png', '1', 2022, 2),
(43, '0059236422', 'Diana', 'P', 'Banyuates', '87422943fce1ca9216796e8f5d2a04af5e6274e4', 'ppp.png', '1', 2022, 2),
(44, '0014159687', 'Fadlus Suud', 'L', 'Banyuates', '9b4ebceff9c8dad77e9e2cbcdfeb08a5372cef98', 'pp.png', '1', 2021, 3),
(45, '0027192176', 'Faruk Fajar', 'L', 'Sungai Kakap\r\n', '8b490b6a33072940bf8fc3a36d7e53760d7b7744', 'pp.png', '1', 2021, 3),
(46, '0024745079', 'Iklilus Sulton', 'L', 'Tanjung Bumi\r\n', '57e30cb4641438ec2757216e22dbed37aa9d1866', 'pp.png', '1', 2021, 3),
(47, '0024550196', 'Miftahul Ulum', 'L', 'Tanjung Bumi\r\n', 'c3e2fdef20581e6d2f01f5d6ba24286b025d9df9', 'pp.png', '1', 2021, 3),
(48, '0032679722', 'Dian Milika Wahyuni', 'P', 'Tanjungbumi\r\n', '7dd8a0d2bb6b8b5c6a4388aa98617d556e6e51ce', 'ppp.png', '1', 2021, 4),
(49, '0039001109', 'Farhatin', 'P', 'Tanjungbumi\r\n', '57c2e76b0cc3f87a43c404374d5364af9bab7755', 'ppp.png', '1', 2021, 4),
(50, '0040250286', 'Indi Zulfa Karimah', 'P', 'Banyuates', '99d4b9e2180a77fde9c51d42a2154a0b5f74546d', 'ppp.png', '1', 2021, 4),
(51, '0017480491', 'Insiyah', 'P', 'Banyuates', '7d8286c4a7ebdedda18523c96f4562a05b9d5fac', 'ppp.png', '1', 2021, 4),
(52, '0001925359', 'Ahmad Fauji', 'L', 'Arut Selatan\r\n', '9c607acddbaeea8cdb8e32cd8ffb184124f6a0fd', 'pp.png', '1', 2020, 5),
(53, '0012929448', 'Ahmad Rozi', 'L', 'Tanjung Bumi\r\n', 'dac45618ce9b0b263e7108318bdf53b71d35bc23', 'pp.png', '1', 2020, 5),
(54, '0009935126', 'Ali Topan', 'L', 'Banyuates', '392084eebd95cc0c4afc41d2cb61be21359fedc8', 'pp.png', '1', 2020, 5),
(55, '0023955816', 'Arjul Kamal', 'L', 'Banyuates\r\n', 'e738e0936f13786131f610c633b5ea075e07e6db', 'pp.png', '1', 2020, 5),
(56, '0017550802', 'Khoirul Anam', 'L', 'Banyuates \r\n', '844baae1bb183d6a1694a9a33e37cec9a25a787b', 'pp.png', '1', 2020, 5),
(57, '0021307609', 'Moh. Hozin', 'L', 'Tanjung Bumi\r\n', '43e275088c540ce3684cff7db5b92066b0bdd867', 'pp.png', '1', 2020, 5),
(58, '0029154372', 'Moh. Rifki Mustaan ', 'L', 'Banyuates\r\n', '9bd893f2477e0268edcf901354929a6dcde1dd53', 'pp.png', '1', 2020, 5),
(59, '0001863674', 'Akh. Rinaldi', 'L', 'Banyuates\r\n', 'a344d70c3362f8bece04d51d0982008dbd2ba2a1', 'pp.png', '1', 2020, 5),
(60, '0014352766', 'Mufizul Ikhwan', 'L', 'Banyuates\r\n', 'becaed85f49d38e478f4a88d0715f2c3f6c6c309', 'pp.png', '1', 2020, 5),
(61, '0029278670', 'Anisa', 'P', 'Kumai\r\n', 'd6a2263f8d0740af1de8527b9de141d9ca889627', 'ppp.png', '1', 2020, 6),
(62, '0021998028', 'Dewi Sartika', 'P', 'Cempaga\r\n', '56be90fbcfd480f650c979de7c2c23bdb0486921', 'ppp.png', '1', 2020, 6),
(63, '0023957772', 'Hilawatut Tilawah', 'P', 'Banyuates\r\n', '0d40155d383893bc5e67da7de41ea644d3011672', 'ppp.png', '1', 2020, 6),
(64, '0020406707', 'Hizbiyah', 'P', 'Banyuates\r\n', '26d361fdd892ec2d5be0f5591e449c23a8a87318', 'ppp.png', '1', 2020, 6),
(65, '0017552556', 'Homsatun Hamroh', 'P', 'Banyuates\r\n', '32d7b31178d6b91f66ec9ec7040abc77a1df85ee', 'ppp.png', '1', 2020, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tb_thajaran`
--

CREATE TABLE `tb_thajaran` (
  `id_thajaran` int(11) NOT NULL,
  `tahun_ajaran` varchar(30) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_thajaran`
--

INSERT INTO `tb_thajaran` (`id_thajaran`, `tahun_ajaran`, `status`) VALUES
(1, '2021/2022', 0),
(2, '2022/2023', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_walikelas`
--

CREATE TABLE `tb_walikelas` (
  `id_walikelas` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_mkelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_walikelas`
--

INSERT INTO `tb_walikelas` (`id_walikelas`, `id_guru`, `id_mkelas`) VALUES
(13, 4, 1),
(14, 1, 2),
(15, 21, 3),
(16, 3, 4),
(17, 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `_logabsensi`
--

CREATE TABLE `_logabsensi` (
  `id_presensi` int(11) NOT NULL,
  `id_mengajar` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `tgl_absen` date NOT NULL,
  `ket` enum('H','I','S','A') NOT NULL,
  `pertemuan_ke` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_logabsensi`
--

INSERT INTO `_logabsensi` (`id_presensi`, `id_mengajar`, `id_siswa`, `tgl_absen`, `ket`, `pertemuan_ke`) VALUES
(1, 14, 9, '2022-12-02', 'H', '1'),
(25, 15, 24, '2022-12-05', 'S', '1'),
(26, 15, 26, '2022-12-05', 'H', '1'),
(27, 23, 6, '2022-12-06', 'H', '1'),
(28, 23, 7, '2022-12-06', 'I', '1'),
(29, 23, 41, '2022-12-06', 'H', '1'),
(30, 23, 42, '2022-12-06', 'S', '1'),
(31, 23, 43, '2022-12-06', 'A', '1'),
(32, 32, 21, '2022-12-06', 'H', '1'),
(33, 32, 22, '2022-12-06', 'H', '1'),
(34, 32, 52, '2022-12-06', 'I', '1'),
(35, 32, 53, '2022-12-06', 'S', '1'),
(36, 32, 54, '2022-12-06', 'A', '1'),
(37, 32, 55, '2022-12-06', 'I', '1'),
(38, 32, 56, '2022-12-06', 'H', '1'),
(39, 32, 57, '2022-12-06', 'H', '1'),
(40, 32, 58, '2022-12-06', 'H', '1'),
(41, 32, 59, '2022-12-06', 'S', '1'),
(42, 32, 60, '2022-12-06', 'H', '1'),
(43, 24, 11, '2022-12-06', 'H', '1'),
(44, 24, 12, '2022-12-06', 'A', '1'),
(45, 24, 44, '2022-12-06', 'I', '1'),
(46, 24, 45, '2022-12-06', 'S', '1'),
(47, 24, 47, '2022-12-06', 'A', '1'),
(48, 25, 16, '2022-12-06', 'H', '1'),
(49, 25, 17, '2022-12-06', 'S', '1'),
(50, 25, 48, '2022-12-06', 'A', '1'),
(51, 25, 49, '2022-12-06', 'I', '1'),
(52, 25, 50, '2022-12-06', 'H', '1'),
(53, 25, 51, '2022-12-06', 'H', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `tb_mengajar`
--
ALTER TABLE `tb_mengajar`
  ADD PRIMARY KEY (`id_mengajar`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indexes for table `tb_mkelas`
--
ALTER TABLE `tb_mkelas`
  ADD PRIMARY KEY (`id_mkelas`);

--
-- Indexes for table `tb_semester`
--
ALTER TABLE `tb_semester`
  ADD PRIMARY KEY (`id_semester`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `tb_thajaran`
--
ALTER TABLE `tb_thajaran`
  ADD PRIMARY KEY (`id_thajaran`);

--
-- Indexes for table `tb_walikelas`
--
ALTER TABLE `tb_walikelas`
  ADD PRIMARY KEY (`id_walikelas`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indexes for table `_logabsensi`
--
ALTER TABLE `_logabsensi`
  ADD PRIMARY KEY (`id_presensi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_guru`
--
ALTER TABLE `tb_guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tb_mapel`
--
ALTER TABLE `tb_mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tb_mengajar`
--
ALTER TABLE `tb_mengajar`
  MODIFY `id_mengajar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `tb_mkelas`
--
ALTER TABLE `tb_mkelas`
  MODIFY `id_mkelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tb_semester`
--
ALTER TABLE `tb_semester`
  MODIFY `id_semester` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `tb_thajaran`
--
ALTER TABLE `tb_thajaran`
  MODIFY `id_thajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_walikelas`
--
ALTER TABLE `tb_walikelas`
  MODIFY `id_walikelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `_logabsensi`
--
ALTER TABLE `_logabsensi`
  MODIFY `id_presensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
