-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 15, 2022 at 08:29 AM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `0030_Lab_Exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `Hero`
--

CREATE TABLE `Hero` (
  `Hero_id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Detail` varchar(255) NOT NULL,
  `Picture_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Hero`
--

INSERT INTO `Hero` (`Hero_id`, `Name`, `Detail`, `Picture_link`) VALUES
(1, 'The Hulk', 'As the Hulk, he possesses superhuman abilities including increased strength and durability.', 'https://f.ptcdn.info/467/036/000/nwbinw1pkKhbkfu8vUG-o.jpg'),
(2, 'Super man', 'Superman is a superhero who appears in American comic books published by DC Comics.', 'https://sites.google.com/a/rpg15.ac.th/dc-univures/_/rsrc/1501222539869/suppexr-maen-super-man/supes.png?height=300&width=400'),
(3, 'Spider man', 'Spider-Man is a superhero appearing in American comic books published by Marvel Comics.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSak2Q48DaYpdXgYdqBLovrtF9sdTJG0D1pISvq6r3931U9Wj0mbfz_Lg6i0-B2OJVloZo&usqp=CAU');

-- --------------------------------------------------------

--
-- Table structure for table `Hero_in_movie`
--

CREATE TABLE `Hero_in_movie` (
  `Hero_id` int(10) UNSIGNED NOT NULL,
  `Movie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Hero_in_movie`
--

INSERT INTO `Hero_in_movie` (`Hero_id`, `Movie_id`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `Movie`
--

CREATE TABLE `Movie` (
  `Movie_id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Trailer_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Movie`
--

INSERT INTO `Movie` (`Movie_id`, `Name`, `Trailer_link`) VALUES
(1, 'hulkMovie_1, hulkMovie_2', 'https://www.youtube.com/watch?v=pwsh4FjLavU,https://www.youtube.com/watch?v=n4tWT-Tzff0'),
(2, 'SupermanMovie_1,SupermanMovie_2', 'https://www.youtube.com/watch?v=jV-nV8pBaXM, https://www.youtube.com/watch?v=n4tWT-Tzff0'),
(3, 'Spider-Man_1, Spider-Man_2', 'https://www.youtube.com/watch?v=t06RUxPbp_c,https://www.youtube.com/watch?v=J5mOQ0wdnyA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Hero`
--
ALTER TABLE `Hero`
  ADD PRIMARY KEY (`Hero_id`);

--
-- Indexes for table `Hero_in_movie`
--
ALTER TABLE `Hero_in_movie`
  ADD PRIMARY KEY (`Hero_id`);

--
-- Indexes for table `Movie`
--
ALTER TABLE `Movie`
  ADD PRIMARY KEY (`Movie_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Hero`
--
ALTER TABLE `Hero`
  MODIFY `Hero_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Hero_in_movie`
--
ALTER TABLE `Hero_in_movie`
  MODIFY `Hero_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
