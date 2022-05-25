-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 24, 2022 at 06:12 PM
-- Server version: 5.6.51-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xiaoyuma_WNM608`
--

-- --------------------------------------------------------

--
-- Table structure for table `track_animals`
--

CREATE TABLE `track_animals` (
  `id` int(13) NOT NULL,
  `user_id` int(13) NOT NULL,
  `name` varchar(64) NOT NULL,
  `breed` varchar(64) NOT NULL,
  `color` varchar(32) NOT NULL,
  `size` varchar(13) NOT NULL,
  `img` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_animals`
--

INSERT INTO `track_animals` (`id`, `user_id`, `name`, `breed`, `color`, `size`, `img`, `date_create`) VALUES
(1, 4, 'Mediot', 'dachshund', 'brown', 'S', 'https://via.placeholder.com/400/833/fff/?text=Mediot', '2022-02-10 01:21:21'),
(2, 1, 'Micronaut', 'dachshund', 'white', 'XL', 'https://via.placeholder.com/400/926/fff/?text=Micronaut', '2022-03-01 07:26:36'),
(3, 9, 'Danja', 'dachshund', 'brown', 'M', 'https://via.placeholder.com/400/714/fff/?text=Danja', '2022-03-06 08:01:42'),
(4, 10, 'Evidends', 'shepherd', 'black', 'S', 'https://via.placeholder.com/400/940/fff/?text=Evidends', '2022-01-22 06:11:09'),
(5, 10, 'Kozgene', 'dachshund', 'mixed', 'XS', 'https://via.placeholder.com/400/930/fff/?text=Kozgene', '2022-03-16 07:22:10'),
(6, 4, 'Buzzopia', 'shiba', 'white', 'XL', 'https://via.placeholder.com/400/921/fff/?text=Buzzopia', '2022-02-06 12:28:30'),
(7, 5, 'Medmex', 'shepherd', 'brown', 'M', 'https://via.placeholder.com/400/798/fff/?text=Medmex', '2022-01-02 11:07:21'),
(8, 2, 'Xumonk', 'shiba', 'brown', 'L', 'https://via.placeholder.com/400/986/fff/?text=Xumonk', '2022-04-04 02:57:16'),
(9, 8, 'Daido', 'shepherd', 'mixed', 'M', 'https://via.placeholder.com/400/791/fff/?text=Daido', '2022-02-20 12:51:20'),
(10, 9, 'Flyboyz', 'shiba', 'black', 'L', 'https://via.placeholder.com/400/786/fff/?text=Flyboyz', '2022-04-04 05:09:01'),
(11, 8, 'Combogene', 'dachshund', 'mixed', 'S', 'https://via.placeholder.com/400/713/fff/?text=Combogene', '2022-01-23 05:04:10'),
(12, 10, 'Naxdis', 'shiba', 'white', 'S', 'https://via.placeholder.com/400/789/fff/?text=Naxdis', '2022-02-04 03:09:20'),
(13, 8, 'Boilcat', 'dachshund', 'grey', 'L', 'https://via.placeholder.com/400/987/fff/?text=Boilcat', '2022-03-11 07:48:00'),
(14, 6, 'Cytrex', 'shiba', 'mixed', 'L', 'https://via.placeholder.com/400/958/fff/?text=Cytrex', '2022-01-29 02:48:20'),
(15, 10, 'Recognia', 'shiba', 'mixed', 'XL', 'https://via.placeholder.com/400/830/fff/?text=Recognia', '2022-03-29 05:40:39'),
(16, 8, 'Biohab', 'shepherd', 'black', 'L', 'https://via.placeholder.com/400/954/fff/?text=Biohab', '2022-03-16 02:42:26'),
(17, 2, 'Zerology', 'dachshund', 'grey', 'L', 'https://via.placeholder.com/400/813/fff/?text=Zerology', '2022-03-18 04:52:25'),
(18, 6, 'Elemantra', 'shepherd', 'grey', 'XS', 'https://via.placeholder.com/400/855/fff/?text=Elemantra', '2022-02-19 07:20:00'),
(19, 7, 'Playce', 'shepherd', 'brown', 'XS', 'https://via.placeholder.com/400/722/fff/?text=Playce', '2022-04-12 12:25:15'),
(20, 1, 'Suremax', 'shiba', 'brown', 'L', 'https://via.placeholder.com/400/847/fff/?text=Suremax', '2022-02-12 11:39:56'),
(21, 9, 'Fanfare', 'dachshund', 'white', 'M', 'https://via.placeholder.com/400/902/fff/?text=Fanfare', '2022-03-09 05:15:11'),
(22, 9, 'Zilladyne', 'shepherd', 'brown', 'L', 'https://via.placeholder.com/400/993/fff/?text=Zilladyne', '2022-02-08 07:18:01'),
(23, 4, 'Zidox', 'shepherd', 'mixed', 'S', 'https://via.placeholder.com/400/717/fff/?text=Zidox', '2022-01-21 02:34:02'),
(24, 7, 'Genekom', 'shepherd', 'white', 'XS', 'https://via.placeholder.com/400/872/fff/?text=Genekom', '2022-02-14 04:21:36'),
(25, 10, 'Coriander', 'shiba', 'white', 'S', 'https://via.placeholder.com/400/917/fff/?text=Coriander', '2022-04-12 01:34:56'),
(26, 5, 'Talae', 'shepherd', 'black', 'M', 'https://via.placeholder.com/400/722/fff/?text=Talae', '2022-04-08 09:13:13'),
(27, 8, 'Orboid', 'dachshund', 'brown', 'S', 'https://via.placeholder.com/400/729/fff/?text=Orboid', '2022-01-29 04:25:36'),
(28, 1, 'Krag', 'dachshund', 'brown', 'L', 'https://via.placeholder.com/400/883/fff/?text=Krag', '2022-03-26 07:07:48'),
(29, 7, 'Sunclipse', 'shepherd', 'mixed', 'M', 'https://via.placeholder.com/400/742/fff/?text=Sunclipse', '2022-03-25 04:57:20'),
(30, 2, 'Caxt', 'shepherd', 'black', 'XS', 'https://via.placeholder.com/400/936/fff/?text=Caxt', '2022-04-14 09:58:35'),
(31, 9, 'Phuel', 'dachshund', 'white', 'L', 'https://via.placeholder.com/400/864/fff/?text=Phuel', '2022-01-21 08:58:36'),
(33, 10, 'Cyclonica', 'dachshund', 'mixed', 'L', 'https://via.placeholder.com/400/889/fff/?text=Cyclonica', '2022-01-21 04:10:45'),
(34, 8, 'Acrodance', 'dachshund', 'brown', 'L', 'https://via.placeholder.com/400/741/fff/?text=Acrodance', '2022-01-27 01:13:11'),
(35, 1, 'Obliq', 'dachshund', 'black', 'XL', 'https://via.placeholder.com/400/883/fff/?text=Obliq', '2022-04-15 03:24:32'),
(36, 2, 'Zialactic', 'shiba', 'grey', 'XS', 'https://via.placeholder.com/400/916/fff/?text=Zialactic', '2022-03-14 07:43:44'),
(37, 1, 'Megall', 'shepherd', 'mixed', 'M', 'https://via.placeholder.com/400/987/fff/?text=Megall', '2022-01-22 04:59:15'),
(38, 9, 'Sarasonic', 'shiba', 'black', 'XS', 'https://via.placeholder.com/400/744/fff/?text=Sarasonic', '2022-01-13 02:38:32'),
(39, 5, 'Realmo', 'shepherd', 'mixed', 'XL', 'https://via.placeholder.com/400/725/fff/?text=Realmo', '2022-02-26 06:39:10'),
(40, 2, 'Unq', 'shiba', 'white', 'XL', 'https://via.placeholder.com/400/832/fff/?text=Unq', '2022-03-11 04:17:50'),
(41, 7, 'Applidec', 'shiba', 'brown', 'XS', 'https://via.placeholder.com/400/803/fff/?text=Applidec', '2022-03-02 08:18:28'),
(42, 10, 'Glukgluk', 'shepherd', 'black', 'XS', 'https://via.placeholder.com/400/778/fff/?text=Glukgluk', '2022-01-13 01:07:17'),
(43, 8, 'Sentia', 'dachshund', 'black', 'XS', 'https://via.placeholder.com/400/736/fff/?text=Sentia', '2022-01-12 06:46:05'),
(44, 8, 'Deminimum', 'shepherd', 'white', 'M', 'https://via.placeholder.com/400/987/fff/?text=Deminimum', '2022-01-07 08:29:09'),
(45, 3, 'Voratak', 'dachshund', 'brown', 'L', 'uploads/1652743279.891_dog_unicorn.png', '2022-02-20 09:25:45'),
(46, 8, 'Quailcom', 'shiba', 'black', 'L', 'https://via.placeholder.com/400/716/fff/?text=Quailcom', '2022-02-10 02:01:41'),
(47, 9, 'Miracula', 'dachshund', 'mixed', 'XL', 'https://via.placeholder.com/400/737/fff/?text=Miracula', '2022-02-23 07:53:04'),
(48, 2, 'Mixers', 'shepherd', 'brown', 'L', 'https://via.placeholder.com/400/877/fff/?text=Mixers', '2022-01-15 08:53:37'),
(49, 3, 'Harmoney', 'shiba', 'brown', 'XS', 'uploads/1652679290.4564_dog_nike.png', '2022-04-16 06:27:54'),
(50, 9, 'Paragonia', 'shiba', 'grey', 'XL', 'https://via.placeholder.com/400/906/fff/?text=Paragonia', '2022-01-21 02:49:10'),
(52, 17, 'lulu', 'Shiba inu', 'Red', 'Big', 'https:via.placeholder.com/400/?text=DOG', '2022-05-08 14:01:47'),
(53, 3, 'hdjjs', 'd', 'w', 'e', 'uploads/1652682080.7858_dog_ponzu.png', '2022-05-15 23:21:03'),
(54, 3, 'w', 's', 'q', 'r', 'uploads/1652743213.3362_dog_yoshi.png', '2022-05-16 16:20:04'),
(55, 18, 'huhulala', 'bulldog', 'dark chocolate', 'medium', 'uploads/1652744174.8937_dog_nike.png', '2022-05-16 16:36:00'),
(56, 18, 'ponzu', 'shiba inu', 'tosty', 'medium small', 'uploads/1652744298.2014_dog_ponzu.png', '2022-05-16 16:38:11'),
(57, 18, 'nike', 'beagle', 'buried marsh mello', 'medium', 'uploads/1652744464.9069_dog_unicorn.png', '2022-05-16 16:40:45'),
(58, 18, 'woow', 'Pug', 'pink', 'small', 'uploads/1652744788.0065_dog_yoshi.png', '2022-05-16 16:45:54'),
(61, 21, 'Ponzu', 'shiba inu', 'Red', 'medium', 'uploads/1653435654.6929_dog_ponzu.png', '2022-05-24 16:41:01');

-- --------------------------------------------------------

--
-- Table structure for table `track_locations`
--

CREATE TABLE `track_locations` (
  `id` int(13) NOT NULL,
  `animal_id` int(13) NOT NULL,
  `lat` decimal(8,6) NOT NULL,
  `lng` decimal(9,6) NOT NULL,
  `mood` varchar(64) NOT NULL,
  `img` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_locations`
--

INSERT INTO `track_locations` (`id`, `animal_id`, `lat`, `lng`, `mood`, `img`, `date_create`) VALUES
(1, 49, 37.407534, -122.124727, 'tired', 'https://via.placeholder.com/400/', '2022-01-15 07:50:44'),
(2, 9, 37.379551, -122.109693, 'calm', 'https://via.placeholder.com/400/', '2022-03-23 08:11:35'),
(3, 30, 37.364414, -122.055469, 'hyper', 'https://via.placeholder.com/400/', '2022-02-25 07:09:11'),
(4, 46, 37.395171, -122.041529, 'playful', 'https://via.placeholder.com/400/', '2022-01-24 09:40:08'),
(5, 16, 37.391476, -122.115432, 'tired', 'https://via.placeholder.com/400/', '2022-04-02 05:02:59'),
(6, 8, 37.386625, -122.072573, 'tired', 'https://via.placeholder.com/400/', '2022-02-08 11:14:19'),
(7, 41, 37.372658, -122.069980, 'tired', 'https://via.placeholder.com/400/', '2022-01-02 02:35:27'),
(8, 27, 37.364723, -122.121041, 'hyper', 'https://via.placeholder.com/400/', '2022-02-12 03:09:33'),
(9, 6, 37.357020, -122.054234, 'calm', 'https://via.placeholder.com/400/', '2022-04-13 03:10:40'),
(10, 41, 37.383475, -122.047548, 'playful', 'https://via.placeholder.com/400/', '2022-02-20 08:50:11'),
(11, 21, 37.367190, -122.061003, 'calm', 'https://via.placeholder.com/400/', '2022-04-15 12:09:05'),
(12, 22, 37.412212, -122.075036, 'calm', 'https://via.placeholder.com/400/', '2022-02-12 02:38:25'),
(13, 11, 37.391617, -122.092241, 'calm', 'https://via.placeholder.com/400/', '2022-01-05 05:56:27'),
(14, 13, 37.401609, -122.125701, 'calm', 'https://via.placeholder.com/400/', '2022-01-25 01:42:17'),
(15, 27, 37.349294, -122.063815, 'hyper', 'https://via.placeholder.com/400/', '2022-04-15 12:03:18'),
(16, 9, 37.375769, -122.050649, 'playful', 'https://via.placeholder.com/400/', '2022-02-14 10:44:43'),
(17, 12, 37.399130, -122.081281, 'playful', 'https://via.placeholder.com/400/', '2022-03-25 01:39:12'),
(18, 41, 37.387785, -122.087967, 'playful', 'https://via.placeholder.com/400/', '2022-03-25 12:36:10'),
(19, 42, 37.403037, -122.115803, 'hyper', 'https://via.placeholder.com/400/', '2022-03-23 04:31:27'),
(20, 31, 37.394994, -122.120839, 'calm', 'https://via.placeholder.com/400/', '2022-01-25 07:51:43'),
(21, 19, 37.409778, -122.083406, 'calm', 'https://via.placeholder.com/400/', '2022-03-14 10:21:31'),
(22, 45, 37.389968, -122.093182, 'tired', 'https://via.placeholder.com/400/', '2022-01-01 04:24:29'),
(23, 12, 37.381562, -122.095316, 'hyper', 'https://via.placeholder.com/400/', '2022-03-17 10:16:09'),
(24, 27, 37.355328, -122.114426, 'tired', 'https://via.placeholder.com/400/', '2022-03-26 02:23:52'),
(25, 16, 37.362949, -122.078467, 'playful', 'https://via.placeholder.com/400/', '2022-03-21 07:08:09'),
(26, 1, 37.382215, -122.127469, 'hyper', 'https://via.placeholder.com/400/', '2022-01-13 01:37:34'),
(27, 7, 37.376733, -122.129096, 'hyper', 'https://via.placeholder.com/400/', '2022-02-02 02:52:23'),
(28, 14, 37.387464, -122.106695, 'tired', 'https://via.placeholder.com/400/', '2022-02-15 11:20:41'),
(29, 15, 37.410214, -122.125947, 'tired', 'https://via.placeholder.com/400/', '2022-03-05 06:16:06'),
(30, 22, 37.404183, -122.098873, 'calm', 'https://via.placeholder.com/400/', '2022-01-22 10:17:09'),
(31, 50, 37.371240, -122.038693, 'calm', 'https://via.placeholder.com/400/', '2022-04-13 10:35:25'),
(32, 46, 37.390514, -122.087961, 'tired', 'https://via.placeholder.com/400/', '2022-01-26 05:34:04'),
(33, 6, 37.377935, -122.051359, 'playful', 'https://via.placeholder.com/400/', '2022-01-30 11:15:00'),
(34, 24, 37.397284, -122.054514, 'playful', 'https://via.placeholder.com/400/', '2022-03-01 10:52:25'),
(35, 31, 37.352229, -122.058907, 'playful', 'https://via.placeholder.com/400/', '2022-01-17 02:15:42'),
(36, 16, 37.378548, -122.087582, 'calm', 'https://via.placeholder.com/400/', '2022-02-04 10:46:48'),
(37, 11, 37.411204, -122.055196, 'calm', 'https://via.placeholder.com/400/', '2022-02-15 11:19:16'),
(38, 26, 37.361296, -122.121970, 'hyper', 'https://via.placeholder.com/400/', '2022-01-06 12:19:51'),
(39, 16, 37.365045, -122.060206, 'calm', 'https://via.placeholder.com/400/', '2022-02-26 11:35:49'),
(40, 48, 37.372469, -122.122033, 'calm', 'https://via.placeholder.com/400/', '2022-01-10 04:40:24'),
(41, 15, 37.412114, -122.076490, 'hyper', 'https://via.placeholder.com/400/', '2022-04-15 09:58:58'),
(42, 41, 37.359548, -122.130027, 'playful', 'https://via.placeholder.com/400/', '2022-02-20 11:30:15'),
(43, 50, 37.400332, -122.052517, 'calm', 'https://via.placeholder.com/400/', '2022-03-28 07:31:22'),
(44, 8, 37.351105, -122.114979, 'playful', 'https://via.placeholder.com/400/', '2022-01-05 11:27:59'),
(45, 42, 37.373363, -122.124113, 'calm', 'https://via.placeholder.com/400/', '2022-03-21 06:46:15'),
(46, 45, 37.351320, -122.127065, 'calm', 'https://via.placeholder.com/400/', '2022-01-14 10:57:24'),
(47, 27, 37.390083, -122.093065, 'hyper', 'https://via.placeholder.com/400/', '2022-04-14 09:30:08'),
(48, 28, 37.375854, -122.116277, 'calm', 'https://via.placeholder.com/400/', '2022-03-04 01:34:21'),
(49, 44, 37.410129, -122.124043, 'playful', 'https://via.placeholder.com/400/', '2022-01-04 09:04:44'),
(50, 50, 37.355005, -122.124359, 'hyper', 'https://via.placeholder.com/400/', '2022-03-04 03:47:44'),
(51, 24, 37.382004, -122.063257, 'tired', 'https://via.placeholder.com/400/', '2022-02-26 03:12:29'),
(52, 15, 37.354572, -122.064053, 'hyper', 'https://via.placeholder.com/400/', '2022-02-17 09:58:34'),
(53, 3, 37.358933, -122.076220, 'calm', 'https://via.placeholder.com/400/', '2022-01-13 07:09:29'),
(54, 24, 37.374211, -122.050081, 'playful', 'https://via.placeholder.com/400/', '2022-03-21 03:30:17'),
(55, 44, 37.356015, -122.069014, 'calm', 'https://via.placeholder.com/400/', '2022-03-01 09:39:27'),
(56, 36, 37.405153, -122.126498, 'calm', 'https://via.placeholder.com/400/', '2022-03-04 01:37:41'),
(57, 47, 37.364556, -122.107143, 'playful', 'https://via.placeholder.com/400/', '2022-04-04 02:35:34'),
(58, 8, 37.349502, -122.114100, 'hyper', 'https://via.placeholder.com/400/', '2022-03-08 10:08:56'),
(59, 19, 37.410864, -122.118838, 'calm', 'https://via.placeholder.com/400/', '2022-03-24 04:15:01'),
(60, 23, 37.383676, -122.047263, 'tired', 'https://via.placeholder.com/400/', '2022-01-07 09:40:03'),
(61, 48, 37.387163, -122.063803, 'hyper', 'https://via.placeholder.com/400/', '2022-01-10 10:59:43'),
(62, 46, 37.358743, -122.102271, 'playful', 'https://via.placeholder.com/400/', '2022-02-19 12:28:14'),
(63, 32, 37.394197, -122.053149, 'calm', 'https://via.placeholder.com/400/', '2022-04-08 04:07:48'),
(64, 27, 37.412309, -122.065019, 'hyper', 'https://via.placeholder.com/400/', '2022-02-28 06:31:38'),
(65, 21, 37.376901, -122.103317, 'calm', 'https://via.placeholder.com/400/', '2022-03-30 10:58:28'),
(66, 44, 37.408999, -122.121653, 'playful', 'https://via.placeholder.com/400/', '2022-02-07 03:41:42'),
(67, 7, 37.406778, -122.128113, 'hyper', 'https://via.placeholder.com/400/', '2022-01-25 06:01:52'),
(68, 33, 37.377399, -122.052002, 'tired', 'https://via.placeholder.com/400/', '2022-02-10 08:19:42'),
(69, 36, 37.401420, -122.078887, 'calm', 'https://via.placeholder.com/400/', '2022-04-14 01:43:59'),
(70, 43, 37.359307, -122.040075, 'hyper', 'https://via.placeholder.com/400/', '2022-03-10 03:36:53'),
(71, 48, 37.367646, -122.050313, 'playful', 'https://via.placeholder.com/400/', '2022-01-13 10:22:28'),
(72, 9, 37.354548, -122.112106, 'tired', 'https://via.placeholder.com/400/', '2022-03-13 03:20:13'),
(73, 32, 37.373828, -122.080804, 'playful', 'https://via.placeholder.com/400/', '2022-01-14 09:37:31'),
(74, 41, 37.378387, -122.043040, 'calm', 'https://via.placeholder.com/400/', '2022-02-24 08:17:43'),
(75, 23, 37.360550, -122.046956, 'hyper', 'https://via.placeholder.com/400/', '2022-01-29 08:00:24'),
(76, 47, 37.369514, -122.046038, 'calm', 'https://via.placeholder.com/400/', '2022-03-17 11:07:34'),
(77, 17, 37.412183, -122.048095, 'calm', 'https://via.placeholder.com/400/', '2022-01-12 06:43:32'),
(78, 38, 37.366101, -122.072517, 'tired', 'https://via.placeholder.com/400/', '2022-03-23 12:44:06'),
(79, 36, 37.360546, -122.062726, 'hyper', 'https://via.placeholder.com/400/', '2022-04-08 09:57:13'),
(80, 8, 37.356900, -122.110758, 'calm', 'https://via.placeholder.com/400/', '2022-02-10 09:50:10'),
(81, 20, 37.382656, -122.039672, 'tired', 'https://via.placeholder.com/400/', '2022-02-23 12:56:53'),
(82, 12, 37.402768, -122.112817, 'calm', 'https://via.placeholder.com/400/', '2022-01-08 09:57:30'),
(83, 23, 37.395658, -122.082712, 'calm', 'https://via.placeholder.com/400/', '2022-01-14 01:53:26'),
(84, 10, 37.409740, -122.059977, 'playful', 'https://via.placeholder.com/400/', '2022-04-10 12:44:33'),
(85, 13, 37.361089, -122.039776, 'calm', 'https://via.placeholder.com/400/', '2022-03-11 04:33:21'),
(86, 41, 37.392581, -122.085907, 'hyper', 'https://via.placeholder.com/400/', '2022-02-27 11:02:30'),
(87, 30, 37.360163, -122.037910, 'tired', 'https://via.placeholder.com/400/', '2022-04-04 12:21:46'),
(88, 20, 37.385466, -122.121038, 'playful', 'https://via.placeholder.com/400/', '2022-02-19 12:36:20'),
(89, 45, 37.376862, -122.086933, 'playful', 'https://via.placeholder.com/400/', '2022-01-05 02:48:40'),
(90, 35, 37.377779, -122.038610, 'hyper', 'https://via.placeholder.com/400/', '2022-01-01 08:42:16'),
(91, 22, 37.408732, -122.052639, 'calm', 'https://via.placeholder.com/400/', '2022-03-19 12:21:03'),
(92, 33, 37.363270, -122.106728, 'calm', 'https://via.placeholder.com/400/', '2022-04-11 11:04:16'),
(93, 8, 37.375347, -122.050210, 'tired', 'https://via.placeholder.com/400/', '2022-02-21 09:55:02'),
(94, 49, 37.400491, -122.125527, 'playful', 'https://via.placeholder.com/400/', '2022-02-08 09:27:41'),
(95, 19, 37.365727, -122.088515, 'tired', 'https://via.placeholder.com/400/', '2022-03-08 04:03:44'),
(96, 32, 37.360303, -122.094694, 'hyper', 'https://via.placeholder.com/400/', '2022-01-28 12:37:22'),
(97, 2, 37.406649, -122.085885, 'tired', 'https://via.placeholder.com/400/', '2022-03-05 04:04:12'),
(98, 33, 37.372806, -122.045690, 'calm', 'https://via.placeholder.com/400/', '2022-01-21 02:09:43'),
(99, 36, 37.391921, -122.107676, 'calm', 'https://via.placeholder.com/400/', '2022-03-29 12:25:41'),
(100, 39, 37.380779, -122.054928, 'tired', 'https://via.placeholder.com/400/', '2022-03-14 12:31:03'),
(101, 30, 37.395960, -122.117354, 'calm', 'https://via.placeholder.com/400/', '2022-04-07 06:44:07'),
(102, 11, 37.390667, -122.095831, 'tired', 'https://via.placeholder.com/400/', '2022-03-11 02:27:01'),
(103, 12, 37.350762, -122.051380, 'hyper', 'https://via.placeholder.com/400/', '2022-01-17 03:26:09'),
(104, 50, 37.362299, -122.042558, 'calm', 'https://via.placeholder.com/400/', '2022-02-20 10:25:18'),
(105, 33, 37.381718, -122.047087, 'hyper', 'https://via.placeholder.com/400/', '2022-02-13 06:00:59'),
(106, 7, 37.388639, -122.068897, 'playful', 'https://via.placeholder.com/400/', '2022-02-23 09:09:54'),
(107, 33, 37.399545, -122.038696, 'calm', 'https://via.placeholder.com/400/', '2022-03-24 07:35:14'),
(108, 18, 37.389571, -122.075832, 'calm', 'https://via.placeholder.com/400/', '2022-02-26 08:21:39'),
(109, 37, 37.407674, -122.049905, 'calm', 'https://via.placeholder.com/400/', '2022-01-22 01:43:31'),
(110, 7, 37.392886, -122.121578, 'tired', 'https://via.placeholder.com/400/', '2022-01-14 04:52:10'),
(111, 10, 37.376079, -122.122069, 'playful', 'https://via.placeholder.com/400/', '2022-02-13 02:54:38'),
(112, 41, 37.373212, -122.048226, 'playful', 'https://via.placeholder.com/400/', '2022-04-10 02:33:43'),
(113, 14, 37.409652, -122.079211, 'calm', 'https://via.placeholder.com/400/', '2022-02-03 11:24:47'),
(114, 25, 37.363316, -122.050792, 'hyper', 'https://via.placeholder.com/400/', '2022-01-16 04:36:17'),
(115, 43, 37.360727, -122.073768, 'calm', 'https://via.placeholder.com/400/', '2022-01-19 05:24:49'),
(116, 18, 37.390027, -122.084708, 'hyper', 'https://via.placeholder.com/400/', '2022-02-28 10:18:07'),
(117, 10, 37.407735, -122.057379, 'playful', 'https://via.placeholder.com/400/', '2022-01-07 06:46:33'),
(118, 4, 37.392742, -122.105136, 'playful', 'https://via.placeholder.com/400/', '2022-02-27 01:23:28'),
(119, 46, 37.395541, -122.040379, 'tired', 'https://via.placeholder.com/400/', '2022-04-14 12:51:45'),
(120, 13, 37.401477, -122.056832, 'tired', 'https://via.placeholder.com/400/', '2022-01-30 08:53:26'),
(121, 34, 37.395515, -122.106129, 'playful', 'https://via.placeholder.com/400/', '2022-02-27 04:50:21'),
(122, 25, 37.396440, -122.102746, 'playful', 'https://via.placeholder.com/400/', '2022-01-22 05:01:48'),
(123, 15, 37.404579, -122.048191, 'tired', 'https://via.placeholder.com/400/', '2022-02-06 05:32:38'),
(124, 5, 37.372197, -122.071924, 'tired', 'https://via.placeholder.com/400/', '2022-03-22 07:17:35'),
(125, 9, 37.385260, -122.113436, 'playful', 'https://via.placeholder.com/400/', '2022-03-25 09:48:07'),
(126, 5, 37.412035, -122.128279, 'calm', 'https://via.placeholder.com/400/', '2022-04-07 07:04:06'),
(127, 36, 37.398233, -122.055733, 'calm', 'https://via.placeholder.com/400/', '2022-02-23 06:31:37'),
(128, 7, 37.411164, -122.103961, 'calm', 'https://via.placeholder.com/400/', '2022-04-11 07:48:40'),
(129, 7, 37.377697, -122.089639, 'calm', 'https://via.placeholder.com/400/', '2022-01-19 01:12:12'),
(130, 11, 37.394763, -122.095002, 'hyper', 'https://via.placeholder.com/400/', '2022-01-05 05:16:29'),
(131, 45, 37.370133, -122.063113, 'hyper', 'https://via.placeholder.com/400/', '2022-03-12 02:07:29'),
(132, 18, 37.374822, -122.075794, 'tired', 'https://via.placeholder.com/400/', '2022-01-08 02:45:05'),
(133, 6, 37.410105, -122.120054, 'calm', 'https://via.placeholder.com/400/', '2022-02-08 10:01:48'),
(134, 22, 37.384167, -122.111553, 'calm', 'https://via.placeholder.com/400/', '2022-02-09 09:26:47'),
(135, 24, 37.373008, -122.115688, 'tired', 'https://via.placeholder.com/400/', '2022-01-04 12:47:20'),
(136, 20, 37.372971, -122.042778, 'tired', 'https://via.placeholder.com/400/', '2022-04-14 11:53:30'),
(137, 41, 37.405202, -122.051077, 'playful', 'https://via.placeholder.com/400/', '2022-03-27 02:01:58'),
(138, 20, 37.384129, -122.058410, 'hyper', 'https://via.placeholder.com/400/', '2022-04-02 05:21:09'),
(139, 22, 37.410507, -122.080367, 'playful', 'https://via.placeholder.com/400/', '2022-01-11 05:52:34'),
(140, 48, 37.374715, -122.046421, 'playful', 'https://via.placeholder.com/400/', '2022-02-23 10:02:40'),
(141, 21, 37.379120, -122.063399, 'tired', 'https://via.placeholder.com/400/', '2022-03-19 11:35:40'),
(142, 33, 37.395674, -122.058039, 'tired', 'https://via.placeholder.com/400/', '2022-02-28 01:09:40'),
(143, 50, 37.351605, -122.043399, 'hyper', 'https://via.placeholder.com/400/', '2022-02-25 04:17:04'),
(144, 38, 37.401989, -122.081415, 'calm', 'https://via.placeholder.com/400/', '2022-01-27 12:11:28'),
(145, 5, 37.378864, -122.061105, 'tired', 'https://via.placeholder.com/400/', '2022-03-14 08:10:42'),
(146, 33, 37.365909, -122.060215, 'hyper', 'https://via.placeholder.com/400/', '2022-01-23 05:45:24'),
(147, 11, 37.359679, -122.056823, 'tired', 'https://via.placeholder.com/400/', '2022-02-09 07:48:39'),
(148, 2, 37.353318, -122.095323, 'tired', 'https://via.placeholder.com/400/', '2022-01-19 09:10:15'),
(149, 25, 37.361195, -122.079430, 'tired', 'https://via.placeholder.com/400/', '2022-01-11 05:09:26'),
(150, 47, 37.403055, -122.093736, 'playful', 'https://via.placeholder.com/400/', '2022-03-29 09:14:34'),
(151, 27, 37.388766, -122.043267, 'playful', 'https://via.placeholder.com/400/', '2022-02-04 07:12:32'),
(152, 32, 37.406819, -122.120882, 'playful', 'https://via.placeholder.com/400/', '2022-02-21 09:57:35'),
(153, 18, 37.378810, -122.126726, 'hyper', 'https://via.placeholder.com/400/', '2022-04-08 04:37:08'),
(154, 32, 37.349265, -122.082324, 'hyper', 'https://via.placeholder.com/400/', '2022-01-08 12:59:53'),
(155, 17, 37.407650, -122.127065, 'calm', 'https://via.placeholder.com/400/', '2022-03-26 11:57:44'),
(156, 47, 37.402837, -122.112318, 'calm', 'https://via.placeholder.com/400/', '2022-02-08 07:57:21'),
(157, 1, 37.408666, -122.050730, 'hyper', 'https://via.placeholder.com/400/', '2022-02-04 04:53:17'),
(158, 4, 37.362671, -122.100951, 'playful', 'https://via.placeholder.com/400/', '2022-02-17 04:56:42'),
(159, 24, 37.359987, -122.106061, 'tired', 'https://via.placeholder.com/400/', '2022-02-19 05:07:22'),
(160, 22, 37.399728, -122.102793, 'playful', 'https://via.placeholder.com/400/', '2022-04-15 07:05:47'),
(161, 49, 37.405037, -122.052414, 'hyper', 'https://via.placeholder.com/400/', '2022-02-23 06:50:54'),
(162, 20, 37.353577, -122.083089, 'hyper', 'https://via.placeholder.com/400/', '2022-04-15 01:14:52'),
(163, 38, 37.401229, -122.081745, 'hyper', 'https://via.placeholder.com/400/', '2022-03-23 02:29:47'),
(164, 34, 37.368593, -122.083635, 'tired', 'https://via.placeholder.com/400/', '2022-03-17 03:33:50'),
(165, 9, 37.381048, -122.062764, 'playful', 'https://via.placeholder.com/400/', '2022-01-13 04:50:10'),
(166, 39, 37.382487, -122.120464, 'calm', 'https://via.placeholder.com/400/', '2022-02-27 09:03:50'),
(167, 26, 37.384060, -122.070338, 'calm', 'https://via.placeholder.com/400/', '2022-03-02 04:40:33'),
(168, 2, 37.411341, -122.087411, 'tired', 'https://via.placeholder.com/400/', '2022-01-09 09:11:36'),
(169, 42, 37.374765, -122.062870, 'playful', 'https://via.placeholder.com/400/', '2022-01-11 07:41:35'),
(170, 22, 37.366644, -122.066494, 'calm', 'https://via.placeholder.com/400/', '2022-02-12 04:46:05'),
(171, 42, 37.388123, -122.129827, 'playful', 'https://via.placeholder.com/400/', '2022-02-23 06:46:17'),
(172, 3, 37.350229, -122.062397, 'calm', 'https://via.placeholder.com/400/', '2022-03-11 07:40:31'),
(173, 14, 37.411317, -122.058497, 'playful', 'https://via.placeholder.com/400/', '2022-01-14 10:21:54'),
(174, 18, 37.368986, -122.109643, 'hyper', 'https://via.placeholder.com/400/', '2022-02-21 02:37:17'),
(175, 26, 37.352406, -122.043035, 'playful', 'https://via.placeholder.com/400/', '2022-01-02 01:26:32'),
(176, 13, 37.353829, -122.048880, 'playful', 'https://via.placeholder.com/400/', '2022-04-01 12:06:12'),
(177, 27, 37.392329, -122.067882, 'hyper', 'https://via.placeholder.com/400/', '2022-02-06 08:35:28'),
(178, 42, 37.358100, -122.127868, 'calm', 'https://via.placeholder.com/400/', '2022-01-17 05:12:37'),
(179, 27, 37.355863, -122.099317, 'hyper', 'https://via.placeholder.com/400/', '2022-01-03 01:07:01'),
(180, 26, 37.384464, -122.077395, 'tired', 'https://via.placeholder.com/400/', '2022-04-01 12:06:29'),
(181, 23, 37.365149, -122.099616, 'playful', 'https://via.placeholder.com/400/', '2022-03-19 08:29:28'),
(182, 41, 37.351424, -122.113303, 'hyper', 'https://via.placeholder.com/400/', '2022-03-12 12:29:09'),
(183, 18, 37.398785, -122.074301, 'hyper', 'https://via.placeholder.com/400/', '2022-03-09 12:03:22'),
(184, 48, 37.393019, -122.105296, 'playful', 'https://via.placeholder.com/400/', '2022-04-16 05:12:27'),
(185, 9, 37.395680, -122.097955, 'calm', 'https://via.placeholder.com/400/', '2022-04-07 10:16:59'),
(186, 2, 37.394181, -122.067393, 'tired', 'https://via.placeholder.com/400/', '2022-04-12 04:09:03'),
(187, 31, 37.380331, -122.103707, 'hyper', 'https://via.placeholder.com/400/', '2022-04-13 09:18:53'),
(188, 8, 37.395780, -122.064599, 'playful', 'https://via.placeholder.com/400/', '2022-02-07 06:46:47'),
(189, 15, 37.353104, -122.093727, 'hyper', 'https://via.placeholder.com/400/', '2022-02-12 11:15:31'),
(190, 39, 37.393350, -122.122190, 'calm', 'https://via.placeholder.com/400/', '2022-03-30 08:37:34'),
(191, 34, 37.385286, -122.119466, 'calm', 'https://via.placeholder.com/400/', '2022-04-13 11:00:30'),
(192, 15, 37.403654, -122.068180, 'calm', 'https://via.placeholder.com/400/', '2022-03-10 04:28:51'),
(193, 14, 37.363956, -122.061087, 'tired', 'https://via.placeholder.com/400/', '2022-04-08 04:44:25'),
(194, 8, 37.400157, -122.050351, 'playful', 'https://via.placeholder.com/400/', '2022-01-04 05:39:31'),
(195, 16, 37.358162, -122.104358, 'hyper', 'https://via.placeholder.com/400/', '2022-02-13 04:25:09'),
(196, 7, 37.350356, -122.050406, 'playful', 'https://via.placeholder.com/400/', '2022-02-17 08:27:52'),
(197, 30, 37.353260, -122.106834, 'playful', 'https://via.placeholder.com/400/', '2022-04-07 05:22:49'),
(198, 1, 37.384464, -122.083329, 'hyper', 'https://via.placeholder.com/400/', '2022-02-19 10:09:03'),
(199, 11, 37.381650, -122.047609, 'tired', 'https://via.placeholder.com/400/', '2022-02-03 07:28:01'),
(200, 34, 37.370057, -122.081658, 'hyper', 'https://via.placeholder.com/400/', '2022-03-04 06:26:17'),
(201, 14, 37.382525, -122.073012, 'hyper', 'https://via.placeholder.com/400/', '2022-03-24 09:48:14'),
(202, 19, 37.405539, -122.068702, 'tired', 'https://via.placeholder.com/400/', '2022-01-18 08:01:13'),
(203, 6, 37.369912, -122.081654, 'tired', 'https://via.placeholder.com/400/', '2022-01-03 05:33:04'),
(204, 10, 37.356347, -122.044302, 'playful', 'https://via.placeholder.com/400/', '2022-02-08 05:55:10'),
(205, 2, 37.392542, -122.038346, 'hyper', 'https://via.placeholder.com/400/', '2022-03-29 09:03:55'),
(206, 41, 37.374391, -122.119846, 'hyper', 'https://via.placeholder.com/400/', '2022-04-09 01:44:04'),
(207, 39, 37.353994, -122.067028, 'calm', 'https://via.placeholder.com/400/', '2022-03-26 05:03:12'),
(208, 36, 37.363834, -122.047749, 'calm', 'https://via.placeholder.com/400/', '2022-02-27 04:22:48'),
(209, 43, 37.411882, -122.105662, 'calm', 'https://via.placeholder.com/400/', '2022-02-14 07:17:14'),
(210, 43, 37.381155, -122.040456, 'playful', 'https://via.placeholder.com/400/', '2022-01-20 05:23:20'),
(211, 18, 37.377037, -122.077039, 'tired', 'https://via.placeholder.com/400/', '2022-03-06 11:33:03'),
(212, 46, 37.398539, -122.080110, 'hyper', 'https://via.placeholder.com/400/', '2022-03-14 11:55:04'),
(213, 48, 37.412092, -122.053217, 'calm', 'https://via.placeholder.com/400/', '2022-02-01 01:04:59'),
(214, 19, 37.394370, -122.101709, 'playful', 'https://via.placeholder.com/400/', '2022-04-07 10:27:26'),
(215, 7, 37.409838, -122.126207, 'playful', 'https://via.placeholder.com/400/', '2022-01-28 11:46:36'),
(216, 18, 37.378371, -122.059394, 'tired', 'https://via.placeholder.com/400/', '2022-02-25 08:06:38'),
(217, 30, 37.392872, -122.082425, 'calm', 'https://via.placeholder.com/400/', '2022-04-08 04:02:08'),
(218, 42, 37.392391, -122.116397, 'tired', 'https://via.placeholder.com/400/', '2022-01-11 06:02:54'),
(219, 23, 37.364165, -122.091286, 'hyper', 'https://via.placeholder.com/400/', '2022-01-02 07:43:07'),
(220, 20, 37.394119, -122.112400, 'tired', 'https://via.placeholder.com/400/', '2022-03-24 10:55:35'),
(221, 3, 37.368004, -122.060728, 'hyper', 'https://via.placeholder.com/400/', '2022-01-13 04:14:28'),
(222, 21, 37.380355, -122.117813, 'tired', 'https://via.placeholder.com/400/', '2022-04-13 09:37:07'),
(223, 11, 37.389742, -122.102890, 'calm', 'https://via.placeholder.com/400/', '2022-04-04 02:18:02'),
(224, 14, 37.354809, -122.127291, 'tired', 'https://via.placeholder.com/400/', '2022-03-25 06:40:36'),
(225, 28, 37.350102, -122.124523, 'calm', 'https://via.placeholder.com/400/', '2022-04-01 03:42:08'),
(226, 50, 37.381328, -122.115155, 'tired', 'https://via.placeholder.com/400/', '2022-01-03 03:42:49'),
(227, 8, 37.367284, -122.107582, 'playful', 'https://via.placeholder.com/400/', '2022-03-18 01:01:03'),
(228, 25, 37.402168, -122.051336, 'calm', 'https://via.placeholder.com/400/', '2022-01-13 08:17:10'),
(229, 36, 37.376250, -122.096188, 'calm', 'https://via.placeholder.com/400/', '2022-04-15 12:25:26'),
(230, 25, 37.375789, -122.120406, 'hyper', 'https://via.placeholder.com/400/', '2022-02-04 04:15:13'),
(231, 23, 37.389844, -122.128445, 'playful', 'https://via.placeholder.com/400/', '2022-02-12 04:31:47'),
(232, 29, 37.407064, -122.052716, 'hyper', 'https://via.placeholder.com/400/', '2022-01-21 08:20:10'),
(233, 2, 37.403081, -122.128614, 'playful', 'https://via.placeholder.com/400/', '2022-02-15 10:26:22'),
(234, 49, 37.405323, -122.042467, 'tired', 'https://via.placeholder.com/400/', '2022-04-15 12:49:19'),
(235, 48, 37.387495, -122.094331, 'playful', 'https://via.placeholder.com/400/', '2022-03-12 02:02:01'),
(236, 2, 37.362416, -122.053576, 'calm', 'https://via.placeholder.com/400/', '2022-01-23 09:57:13'),
(237, 34, 37.383545, -122.075140, 'calm', 'https://via.placeholder.com/400/', '2022-01-24 03:38:40'),
(238, 28, 37.403823, -122.057993, 'hyper', 'https://via.placeholder.com/400/', '2022-01-31 10:15:38'),
(239, 48, 37.404968, -122.059679, 'playful', 'https://via.placeholder.com/400/', '2022-02-03 09:14:10'),
(240, 20, 37.365448, -122.062269, 'hyper', 'https://via.placeholder.com/400/', '2022-04-07 11:45:42'),
(241, 46, 37.378347, -122.100350, 'calm', 'https://via.placeholder.com/400/', '2022-04-05 08:58:14'),
(242, 29, 37.409280, -122.086932, 'playful', 'https://via.placeholder.com/400/', '2022-01-29 02:28:26'),
(243, 13, 37.355662, -122.080702, 'tired', 'https://via.placeholder.com/400/', '2022-02-01 09:23:26'),
(244, 12, 37.354876, -122.109803, 'hyper', 'https://via.placeholder.com/400/', '2022-02-20 04:05:27'),
(245, 11, 37.370766, -122.059090, 'hyper', 'https://via.placeholder.com/400/', '2022-01-10 02:07:29'),
(246, 19, 37.389309, -122.087644, 'hyper', 'https://via.placeholder.com/400/', '2022-02-12 07:48:44'),
(247, 40, 37.352894, -122.063139, 'calm', 'https://via.placeholder.com/400/', '2022-04-03 07:24:08'),
(248, 45, 37.353497, -122.071579, 'calm', 'https://via.placeholder.com/400/', '2022-03-06 11:37:17'),
(249, 33, 37.378739, -122.083073, 'hyper', 'https://via.placeholder.com/400/', '2022-02-22 02:43:39'),
(250, 20, 37.375022, -122.122881, 'calm', 'https://via.placeholder.com/400/', '2022-03-28 03:50:02'),
(251, 49, 37.390233, -122.105717, 'test', 'https:via.placeholder.com/400/?text=IMG', '2022-05-09 22:20:13'),
(252, 51, 37.373446, -122.029103, 'testt', 'https:via.placeholder.com/400/?text=IMG', '2022-05-09 22:20:31'),
(253, 45, 37.410131, -122.122133, 'dd', 'https:via.placeholder.com/400/?text=IMG', '2022-05-09 22:23:04'),
(254, 32, 37.412524, -122.120949, 'dd', 'https:via.placeholder.com/400/?text=IMG', '2022-05-09 22:23:19'),
(255, 32, 37.422069, -122.108408, 'dd', 'https:via.placeholder.com/400/?text=IMG', '2022-05-09 22:26:24'),
(256, 45, 37.379268, -122.101950, 'happy ', 'https:via.placeholder.com/400/?text=IMG', '2022-05-16 16:33:38'),
(257, 55, 37.401454, -122.121475, 'happy ', 'https:via.placeholder.com/400/?text=IMG', '2022-05-16 16:42:54'),
(258, 55, 37.400761, -122.116820, 'happy but moody', 'https:via.placeholder.com/400/?text=IMG', '2022-05-16 16:43:16'),
(259, 56, 37.403140, -122.112870, 'happy but moody', 'https:via.placeholder.com/400/?text=IMG', '2022-05-16 16:43:27'),
(260, 57, 37.395947, -122.115857, 'hyper', 'https:via.placeholder.com/400/?text=IMG', '2022-05-16 16:43:45'),
(261, 55, 37.399319, -122.125576, 'hyper', 'https:via.placeholder.com/400/?text=IMG', '2022-05-16 16:43:55'),
(262, 58, 37.393422, -122.114966, 'chill', 'https:via.placeholder.com/400/?text=IMG', '2022-05-16 16:47:08'),
(263, 58, 37.424236, -122.117653, 'test', 'https:via.placeholder.com/400/?text=IMG', '2022-05-16 21:05:29'),
(264, 0, 0.000000, 0.000000, '', 'https:via.placeholder.com/400/?text=IMG', '2022-05-22 15:58:03'),
(265, 55, 37.423938, -122.119235, 'happy', 'https:via.placeholder.com/400/?text=IMG', '2022-05-23 20:56:37'),
(266, 0, 0.000000, 0.000000, 'happy', 'https:via.placeholder.com/400/?text=IMG', '2022-05-23 21:06:49'),
(267, 57, 37.374204, -122.131278, '', 'https:via.placeholder.com/400/?text=IMG', '2022-05-24 16:38:32'),
(268, 61, 37.420903, -122.115684, 'a little sad', 'https:via.placeholder.com/400/?text=IMG', '2022-05-24 16:42:01');

-- --------------------------------------------------------

--
-- Table structure for table `track_users`
--

CREATE TABLE `track_users` (
  `id` int(13) NOT NULL,
  `name` varchar(64) NOT NULL,
  `username` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(32) NOT NULL,
  `img` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL,
  `gender` varchar(32) NOT NULL,
  `job` varchar(32) NOT NULL,
  `age` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_users`
--

INSERT INTO `track_users` (`id`, `name`, `username`, `email`, `password`, `img`, `date_create`, `gender`, `job`, `age`) VALUES
(1, 'Wilson Humphrey', 'user1', 'user1@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/761/fff/?text=user1', '2022-02-17 09:22:16', 'male', 'Broker', 24),
(2, 'Donaldson Gallagher', 'user2', 'user2@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/730/fff/?text=user2', '2022-03-19 08:56:11', 'male', 'Professor', 24),
(3, 'Madelyn Bailey', 'user3', 'user3@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1652672972.1362_marivi-pazos-cvpk5Y4ZWUs-unsplash.jpg', '2022-03-29 03:04:48', 'female', 'Broker', 42),
(4, 'Stanton Blanchard', 'user4', 'user4@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/810/fff/?text=user4', '2022-04-07 07:57:53', 'male', 'Broker', 44),
(5, 'Nichols Rosario', 'user5', 'user5@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/973/fff/?text=user5', '2022-02-27 11:59:57', 'male', 'Professor', 33),
(6, 'Regina Battle', 'user6', 'user6@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/922/fff/?text=user6', '2022-02-26 05:20:43', 'female', 'Entrepreneur', 20),
(7, 'Bette Stewart', 'user7', 'user7@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/970/fff/?text=user7', '2022-03-16 06:37:58', 'female', 'Broker', 22),
(8, 'Salinas Herrera', 'user8', 'user8@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/742/fff/?text=user8', '2022-01-14 01:58:07', 'male', 'Engineer', 60),
(9, 'Walker Farrell', 'user9', 'user9@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/927/fff/?text=user9', '2022-02-27 02:56:43', 'male', 'Professor', 47),
(10, 'Roxanne Tanner', 'user10', 'user10@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/826/fff/?text=user10', '2022-04-03 11:31:00', 'female', 'Engineer', 40),
(11, '', 'a', 'b@c', '0cc175b9c0f1b6a831c399e269772661', 'https:via.placeholder.com/400/?text=User', '2022-05-08 09:24:01', '', '', 0),
(12, '', 'a', 'b@c', '0cc175b9c0f1b6a831c399e269772661', 'https:via.placeholder.com/400/?text=User', '2022-05-08 09:24:02', '', '', 0),
(13, '', 'a', 'b@c', '0cc175b9c0f1b6a831c399e269772661', 'https:via.placeholder.com/400/?text=User', '2022-05-08 09:27:10', '', '', 0),
(14, '', 'bc', 'b@cc', '0cc175b9c0f1b6a831c399e269772661', 'https:via.placeholder.com/400/?text=User', '2022-05-08 13:19:07', '', '', 0),
(15, '', 'cc', 'cc@cc', 'e0323a9039add2978bf5b49550572c7c', 'https:via.placeholder.com/400/?text=User', '2022-05-08 13:22:59', '', '', 0),
(16, '', 'aa', 'aa@aa', 'e0323a9039add2978bf5b49550572c7c', 'https:via.placeholder.com/400/?text=User', '2022-05-08 13:34:24', '', '', 0),
(17, 'j', 'jj', 'j@j.j', '', 'https:via.placeholder.com/400/?text=User', '2022-05-08 14:00:57', 'c', 'd', 0),
(18, 'Sam', 'user0', 'user0@user0.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1652744488.2453_marivi-pazos-cvpk5Y4ZWUs-unsplash.jpg', '2022-05-16 16:34:42', 'female', 'painter ', 34),
(19, '', 'abcd', 'abcd@abcd', '4124bc0a9335c27f086f24ba207a4912', 'https:via.placeholder.com/400/?text=User', '2022-05-23 22:41:09', '', '', 0),
(20, '', '123', 'yo@gmail.com', '202cb962ac59075b964b07152d234b70', 'https:via.placeholder.com/400/?text=User', '2022-05-24 05:05:37', '', '', 0),
(21, '', 'huhs', '345@gdhsjs', '1a1dc91c907325c69271ddf0c944bc72', 'https:via.placeholder.com/400/?text=User', '2022-05-24 16:39:47', '', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `track_animals`
--
ALTER TABLE `track_animals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_locations`
--
ALTER TABLE `track_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_users`
--
ALTER TABLE `track_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `track_animals`
--
ALTER TABLE `track_animals`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `track_locations`
--
ALTER TABLE `track_locations`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT for table `track_users`
--
ALTER TABLE `track_users`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
