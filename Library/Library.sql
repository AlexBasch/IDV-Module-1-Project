-- phpMyAdmin SQL Dump
-- version 4.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 24, 2015 at 04:50 AM
-- Server version: 5.6.23
-- PHP Version: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Library`
--

-- --------------------------------------------------------

--
-- Table structure for table `Books`
--

CREATE TABLE IF NOT EXISTS `Books` (
  `bID` int(11) NOT NULL,
  `bName` text NOT NULL,
  `bCata` text NOT NULL,
  `bSource` text NOT NULL,
  `bDescript` text NOT NULL,
  `bAuthor` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Books`
--

INSERT INTO `Books` (`bID`, `bName`, `bCata`, `bSource`, `bDescript`, `bAuthor`) VALUES
(1, 'Physics 202 2012', 'past', 'blah/past/physics', 'The Half year paper on physics 202', 'Mr. Rhodes'),
(2, 'Algebra 249 2012', 'past', 'blah/past/algebra', 'Thefinal paper on algebra 249', 'Miss Stewards'),
(3, 'Working with evolution', 'book', 'blah/book/evo', 'A book on the theories of evolution', 'Darwin, C'),
(4, 'Science of Ants', 'article', 'blah/article/ants', 'An article on the ways of life of ants and their behavior, from World Science Journal', 'Dr. Barnes'),
(5, 'A study of everything', 'article', 'blah/article/everything', 'An article from Science Journal, about all the multiple fields of study one can explore in science.\r\n', 'Dr. Bob'),
(6, 'Gang of Four', 'book', 'blah/book/gof', 'The gang of four programming book', 'N/A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Books`
--
ALTER TABLE `Books`
  ADD PRIMARY KEY (`bID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Books`
--
ALTER TABLE `Books`
  MODIFY `bID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
