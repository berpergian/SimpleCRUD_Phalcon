-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2017 at 11:25 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simple_phalcon`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int(10) UNSIGNED NOT NULL,
  `name` varchar(70) NOT NULL,
  `department` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `name`, `department`) VALUES
(141524001, 'Andre Febrianto Simanjuntak', 'Kominfo'),
(141524002, 'Anggi Nur Dhamayanti', 'PSDM'),
(141524003, 'Eki Fauzi Firdaus', 'Kominfo'),
(141524004, 'Eva Danti Rahmanita', 'Sekretaris Umum I'),
(141524005, 'Fadhlan Ridwanallah', 'PSDM'),
(141524006, 'Fahmi Ramadhan', 'Olahraga'),
(141524007, 'Fariz Aotearoa Rasyid', 'Olahraga'),
(141524008, 'Hendro Saputro', 'Kebudayaan'),
(141524009, 'Hilda Annisa Nur M', 'Luhim'),
(141524010, 'Ibnu Ali Mukhtarom', 'Kominfo'),
(141524011, 'Ifan Dhani P', 'Rohis'),
(141524012, 'M. Imam Fauzan', 'Pendidikan'),
(141524013, 'Maulana Kahfi', 'Kominfo'),
(141524014, 'Moch. Arief Febriansyah', 'Wirus'),
(141524015, 'M. Rakasiwi Makkah', 'Wirus'),
(141524016, 'M. Ganjar Imanudin', 'MPA'),
(141524017, 'M. Husain Fadhlullah', 'Pendidikan'),
(141524018, 'Muhammad Ihyaul Khair', 'Olahraga'),
(141524019, 'Muhammad Rubiyanto P', 'Kominfo'),
(141524020, 'Muhammad Saiful Islam', 'Pendidikan'),
(141524021, 'Muhammad Taufiq P', 'Wirus'),
(141524022, 'Mutiara Citra Wordstary', 'MPA'),
(141524023, 'Niko S Sibarani', 'Olahraga'),
(141524024, 'Prasetyo Trimukti S', 'Rohis'),
(141524025, 'Rahman Faruq R', 'Rohis'),
(141524028, 'Rizal Abdurrahman Firdaus', 'Pendidikan'),
(141524029, 'Tria Yuda Purnama', 'Luhim'),
(141524030, 'Waffi Faturrahman', 'MPA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
