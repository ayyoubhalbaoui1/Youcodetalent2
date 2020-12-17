-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Dec 17, 2020 at 03:42 PM
-- Server version: 5.7.28
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `youcodetalent`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
CREATE TABLE IF NOT EXISTS `administrator` (
  `id_user` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `adminsession`
--

DROP TABLE IF EXISTS `adminsession`;
CREATE TABLE IF NOT EXISTS `adminsession` (
  `id` bigint(20) NOT NULL,
  `id_administrator` bigint(20) DEFAULT NULL,
  `is_connected` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_administrator` (`id_administrator`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'La dance'),
(2, 'En chantant'),
(3, 'La scène'),
(4, 'La Comédie'),
(5, 'Calcul mental'),
(6, 'Le cube de Rubik');

-- --------------------------------------------------------

--
-- Table structure for table `participation`
--

DROP TABLE IF EXISTS `participation`;
CREATE TABLE IF NOT EXISTS `participation` (
  `id_user` bigint(20) NOT NULL,
  `id_category` bigint(20) NOT NULL,
  `description` varchar(50) NOT NULL,
  `show_start_time` datetime DEFAULT NULL,
  `show_end_time` datetime DEFAULT NULL,
  `attached_file` varchar(100) DEFAULT NULL,
  `is_accepted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_user`,`id_category`),
  KEY `id_category` (`id_category`),
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `participation`
--

INSERT INTO `participation` (`id_user`, `id_category`, `description`, `show_start_time`, `show_end_time`, `attached_file`, `is_accepted`) VALUES
(44715406, 2, 'gfhfgfh', '2020-12-02 14:10:01', '2020-12-02 14:10:01', 'google.com', 0),
(579640465, 1, 'makin gha derdeg ', '2020-09-01 17:09:01', '2020-10-01 17:09:01', 'www.google.com', 0),
(672026609, 1, 'this is a dis', '2020-10-11 15:10:01', '2020-10-11 15:10:01', 'google.com', 0),
(700723680, 1, 'ma kin gha derderg', '2020-09-02 21:09:01', '2020-10-02 21:09:01', 'www.google.com', 0),
(760395133, 3, 'i\'m an actor', '2020-03-02 20:20:01', '2020-04-02 20:20:01', 'google.com', 0),
(936435345, 5, 'gdhgdhdgdhdgdhdgdh', '2020-12-01 17:20:11', '2020-11-01 17:20:11', 'google.com', 0),
(995671597, 3, 'dhd', '2020-02-13 17:23:02', '2020-02-13 17:23:08', 'google.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`) VALUES
(44715406, 'ilai', 'alae', 'ale@gmail.com', '00000000'),
(93519403, 'gdhdg', 'hgshs', 'ghfgfh@gmail.com', '8089370830303'),
(146370703, 'boujamaa', 'boujammaaa', 'boujamaa@outlook.fr', '0000000'),
(163511787, 'Anelka', 'nicola', 'anelka@gamil.com', '0000000'),
(218182209, 'raid', 'maghribi', 'raid@gmail.com', '000000000'),
(222333889, 'khalid', 'khamal', 'khalid_@gmail.com', '00000000000'),
(234875728, 'Sketch', 'Pagani', 'Sketch@gmail.com', '00000000'),
(270401199, 'gamer', 'gamer2', 'gamer@gamil.com', '0000000'),
(404848854, 'karbaliii', 'karbal', 'mehdi@gmail.com', '00000000000'),
(418695816, 'Ibrahim', 'Emouissi', 'coiffeure@gmail.com', '00000000000'),
(456621508, 'messi', 'lio', 'messi@gmail.com', '0652192207'),
(566287706, 'xxxxxxxxxxx', 'xxxxxxxxxxxxxxxxx', 'xxxxxxxx@xxxgamil.com', '0652192207'),
(579640465, 'pop', 'smoke', 'popsmoke@gmail.com', '00000000000'),
(653351166, 'Mehdi', 'Kerbal', 'kerbaliii@exemple.com', '0000000000'),
(671056681, 'ibrahim', 'mouissi', '0652192207', 'ibra@exemple.com'),
(672026609, 'Poppop', 'kfk', 'nfjnfjfnj', '00000000'),
(700723680, 'idoufkir', 'Mustapha', 'ikoufkir@gamil.com', '0699011144'),
(712551681, 'Ilal', 'Stories', 'ilal@gmail.com', '0000000000'),
(745460316, 'ibm', 'ema', 'ema@gamil.com', '000000'),
(760395133, 'jfhjf', 'jhfjf', 'jfbjhfbfj', '00000000'),
(815456566, 'dizzy', 'Dross', 'mrcasafonia@gmaail.com', '00000000'),
(936435345, 'ahmed', 'ahmed', 'ahmed@exemple.com', '0000000000000'),
(941444486, 'ninja', 'fortnite', 'ninga01@gmail.com', '00000'),
(956443522, 'victor', 'finish', 'finish@gmail.com', '0000000000000'),
(995671597, 'hgdhd', 'gdhd', 'ghff@gmail.com', '0783387383');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `administrator`
--
ALTER TABLE `administrator`
  ADD CONSTRAINT `administrator_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Constraints for table `adminsession`
--
ALTER TABLE `adminsession`
  ADD CONSTRAINT `adminsession_ibfk_1` FOREIGN KEY (`id_administrator`) REFERENCES `administrator` (`id_user`);

--
-- Constraints for table `participation`
--
ALTER TABLE `participation`
  ADD CONSTRAINT `participation_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `participation_ibfk_2` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
