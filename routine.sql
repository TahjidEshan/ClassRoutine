-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 25, 2017 at 11:01 PM
-- Server version: 5.5.35-1ubuntu1
-- PHP Version: 5.5.9-1ubuntu4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `routine`
--

-- --------------------------------------------------------

--
-- Table structure for table `Days`
--

CREATE TABLE IF NOT EXISTS `Days` (
  `Number` int(11) NOT NULL,
  `Day` text NOT NULL,
  PRIMARY KEY (`Number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Days`
--

INSERT INTO `Days` (`Number`, `Day`) VALUES
(1, 'Saturday'),
(2, 'Sunday'),
(3, 'Monday'),
(4, 'Tuesday'),
(5, 'Wednesday');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `Name` text NOT NULL,
  `Password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Name`, `Password`) VALUES
('Eshan', 'Eshan'),
('Hollow', 'Hollow');

-- --------------------------------------------------------

--
-- Table structure for table `Period`
--

CREATE TABLE IF NOT EXISTS `Period` (
  `StartTime` float NOT NULL,
  `EndTime` float NOT NULL,
  `Number` int(11) NOT NULL,
  PRIMARY KEY (`Number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Period`
--

INSERT INTO `Period` (`StartTime`, `EndTime`, `Number`) VALUES
(8, 8.45, 1),
(8.45, 9.25, 2),
(9.25, 10.05, 3),
(10.35, 11.2, 4),
(11.2, 12.05, 5),
(12.05, 12.5, 6),
(12.5, 1.35, 7),
(1.35, 2.2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
  `Class` int(11) NOT NULL,
  `Day` int(11) NOT NULL,
  `Period` int(11) NOT NULL,
  `Teacher` int(11) NOT NULL,
  `Subject` varchar(15) NOT NULL,
  KEY `fk_foreign_key_name` (`Teacher`),
  KEY `fk` (`Class`),
  KEY `fk_1` (`Day`),
  KEY `fk_foreign` (`Period`),
  KEY `Subject` (`Subject`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `School`
--

CREATE TABLE IF NOT EXISTS `School` (
  `class` int(11) NOT NULL,
  PRIMARY KEY (`class`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `School`
--

INSERT INTO `School` (`class`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);

-- --------------------------------------------------------

--
-- Table structure for table `Subjects`
--

CREATE TABLE IF NOT EXISTS `Subjects` (
  `Name` varchar(15) NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Subjects`
--

INSERT INTO `Subjects` (`Name`) VALUES
('Bangla'),
('Biology'),
('Chemistry'),
('Drawing'),
('English'),
('Mathematics'),
('Physics'),
('Social Science'),
('Sports');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`ID`, `Name`) VALUES
(6, 'Abdul'),
(5, 'Altaf'),
(7, 'Ariful'),
(1, 'Eshan'),
(9, 'Nasrin'),
(3, 'Rafiul'),
(4, 'Robiul'),
(2, 'Saiful'),
(10, 'Samia'),
(8, 'Samiul');

-- --------------------------------------------------------

--
-- Table structure for table `teacherSubject`
--

CREATE TABLE IF NOT EXISTS `teacherSubject` (
  `Teacher` int(11) NOT NULL,
  `Subject` varchar(15) NOT NULL,
  KEY `fk_grade` (`Subject`),
  KEY `holabola` (`Teacher`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacherSubject`
--

INSERT INTO `teacherSubject` (`Teacher`, `Subject`) VALUES
(1, 'Bangla'),
(2, 'Biology'),
(3, 'Chemistry'),
(4, 'Drawing'),
(5, 'English'),
(6, 'Mathematics'),
(7, 'Physics'),
(8, 'Social Science'),
(9, 'Sports'),
(10, 'English');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `fk` FOREIGN KEY (`Class`) REFERENCES `School` (`class`),
  ADD CONSTRAINT `fk_1` FOREIGN KEY (`Day`) REFERENCES `Days` (`Number`),
  ADD CONSTRAINT `fk_foreign` FOREIGN KEY (`Period`) REFERENCES `Period` (`Number`),
  ADD CONSTRAINT `fk_foreign_key_name` FOREIGN KEY (`Teacher`) REFERENCES `teachers` (`ID`),
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`Subject`) REFERENCES `Subjects` (`Name`),
  ADD CONSTRAINT `schedule_ibfk_2` FOREIGN KEY (`Subject`) REFERENCES `Subjects` (`Name`);

--
-- Constraints for table `teacherSubject`
--
ALTER TABLE `teacherSubject`
  ADD CONSTRAINT `fk_grade` FOREIGN KEY (`Subject`) REFERENCES `Subjects` (`Name`),
  ADD CONSTRAINT `holabola` FOREIGN KEY (`Teacher`) REFERENCES `teachers` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
