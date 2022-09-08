-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2022 at 03:31 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mac8`
--

-- --------------------------------------------------------

--
-- Table structure for table `magiamgia`
--

CREATE TABLE `magiamgia` (
  `id` int(11) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `tien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `phone` int(11) NOT NULL,
  `password` varchar(50) NOT NULL,
  `token` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `firstName`, `email`, `lastName`, `phone`, `password`, `token`) VALUES
(1, '432', 'huyhung@gmail.com', '4123', 432, '43214', '1'),
(2, '542', '13@gmail.com', '542', 5432, '43214', NULL),
(3, '413asss', '14312@gmail.com', '1234a', 341145, '4312458', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `loai` varchar(50) NOT NULL,
  `gia` int(11) NOT NULL,
  `anh` text NOT NULL,
  `soluong` int(11) NOT NULL,
  `ten` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `loai`, `gia`, `anh`, `soluong`, `ten`) VALUES
(2, '[value-2]', 1, 'https://tse1.explicit.bing.net/th?q=Girl+Xinh+GAI+Xinh&w=120&h=120&c=1&rs=1&qlt=90&cb=1&dpr=1.25&pid=InlineBlock&mkt=en-WW&cc=VN&setlang=en&adlt=moderate&t=1&mw=247', 0, '[value-6]'),
(4, '[value-2]', 0, '[value-4]', 0, '[value-6]'),
(5, '[value-2]', 0, '[value-4]', 0, '[value-6]'),
(6, '[value-2]', 0, '[value-4]', 0, '[value-6]'),
(7, '[value-2]', 0, '[value-4]', 0, '[value-6]'),
(8, '[value-2]', 0, '[value-4]', 0, '[value-6]'),
(9, '[value-2]', 0, '[value-4]', 0, '[value-6]'),
(10, '[value-2]', 0, '[value-4]', 0, '[value-6]'),
(11, '[value-2]', 0, '[value-4]', 0, '[value-6]'),
(12, '[value-2]', 0, '[value-4]', 0, '[value-6]'),
(13, '[value-2]', 0, '[value-4]', 0, '[value-6]'),
(14, '[value-2]', 0, '[value-4]', 0, '[value-6]'),
(17, 'human motion', 41, 'https://th.bing.com/th/id/OIP.kCu0dNZ1F7sLi1k_9iiqpgAAAA?w=182&h=247&c=7&r=0&o=5&dpr=1.25&pid=1.7', 1, 'fdsaf'),
(18, 'gia treo tai nghe', 14, 'https://tse1.explicit.bing.net/th?q=Girl+Xinh+GAI+Xinh&w=120&h=120&c=1&rs=1&qlt=90&cb=1&dpr=1.25&pid=InlineBlock&mkt=en-WW&cc=VN&setlang=en&adlt=moderate&t=1&mw=247', 1, 'gsfd'),
(19, 'gia treo tai nghe', 41, 'https://tse1.explicit.bing.net/th?q=Girl+Xinh+GAI+Xinh&w=120&h=120&c=1&rs=1&qlt=90&cb=1&dpr=1.25&pid=InlineBlock&mkt=en-WW&cc=VN&setlang=en&adlt=moderate&t=1&mw=247', 1, 'fa'),
(20, 'human motion', 41, 'https://tse1.explicit.bing.net/th?q=Girl+Xinh+GAI+Xinh&w=120&h=120&c=1&rs=1&qlt=90&cb=1&dpr=1.25&pid=InlineBlock&mkt=en-WW&cc=VN&setlang=en&adlt=moderate&t=1&mw=247', 1, 'fad'),
(21, 'human motion', 41, 'https://icdn.dantri.com.vn/thumb_w/770/2022/06/02/ukraine-mapmsn-1654139690646.png', 1, 'fdsaf'),
(22, 'gia treo tai nghe', 41, 'https://th.bing.com/th/id/OIP.kCu0dNZ1F7sLi1k_9iiqpgAAAA?w=182&h=247&c=7&r=0&o=5&dpr=1.25&pid=1.7', 1, '414'),
(23, 'gia do laptop', 41, 'https://icdn.dantri.com.vn/thumb_w/770/2022/06/02/ukraine-mapmsn-1654139690646.png', 1, 'fdsaf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `magiamgia`
--
ALTER TABLE `magiamgia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `magiamgia`
--
ALTER TABLE `magiamgia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
