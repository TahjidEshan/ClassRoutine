-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 26, 2017 at 05:35 AM
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
-- Table structure for table `exam`
--

CREATE TABLE IF NOT EXISTS `exam` (
  `Date` text NOT NULL,
  `Class` int(11) NOT NULL,
  `StartTime` text NOT NULL,
  `EndTIme` text NOT NULL,
  `Guard` int(11) DEFAULT NULL,
  `Room` int(11) NOT NULL,
  `Name` int(11) NOT NULL,
  `Subject` text NOT NULL,
  KEY `Room` (`Room`),
  KEY `Guard` (`Guard`),
  KEY `Name` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ExamName`
--

CREATE TABLE IF NOT EXISTS `ExamName` (
  `Name` int(11) NOT NULL AUTO_INCREMENT,
  `ExamName` varchar(30) NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

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
-- Table structure for table `Room`
--

CREATE TABLE IF NOT EXISTS `Room` (
  `Number` int(11) NOT NULL,
  PRIMARY KEY (`Number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Room`
--

INSERT INTO `Room` (`Number`) VALUES
(101),
(102),
(103),
(104),
(201),
(202),
(203),
(204),
(301),
(302),
(303),
(304);

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

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`Class`, `Day`, `Period`, `Teacher`, `Subject`) VALUES
(1, 1, 1, 1, 'Bangla'),
(1, 1, 2, 2, 'Biology'),
(1, 1, 3, 3, 'Chemistry'),
(1, 1, 4, 4, 'Drawing'),
(1, 1, 5, 5, 'English'),
(1, 1, 6, 6, 'Mathematics'),
(1, 1, 7, 7, 'Physics'),
(1, 1, 8, 8, 'Social Science'),
(1, 2, 1, 1, 'Bangla'),
(1, 2, 2, 2, 'Biology'),
(1, 2, 3, 3, 'Chemistry'),
(1, 2, 4, 4, 'Drawing'),
(1, 2, 5, 5, 'English'),
(1, 2, 6, 6, 'Mathematics'),
(1, 2, 7, 7, 'Physics'),
(1, 2, 8, 8, 'Social Science'),
(1, 3, 1, 1, 'Bangla'),
(1, 3, 2, 2, 'Biology'),
(1, 3, 3, 3, 'Chemistry'),
(1, 3, 4, 4, 'Drawing'),
(1, 3, 5, 5, 'English'),
(1, 3, 6, 6, 'Mathematics'),
(1, 3, 7, 7, 'Physics'),
(1, 3, 8, 8, 'Social Science'),
(1, 4, 1, 1, 'Bangla'),
(1, 4, 2, 2, 'Biology'),
(1, 4, 3, 3, 'Chemistry'),
(1, 4, 4, 4, 'Drawing'),
(1, 4, 5, 5, 'English'),
(1, 4, 6, 6, 'Mathematics'),
(1, 4, 7, 7, 'Physics'),
(1, 4, 8, 8, 'Social Science'),
(1, 5, 1, 1, 'Bangla'),
(1, 5, 2, 2, 'Biology'),
(1, 5, 3, 3, 'Chemistry'),
(1, 5, 4, 4, 'Drawing'),
(1, 5, 5, 5, 'English'),
(1, 5, 6, 6, 'Mathematics'),
(1, 5, 7, 7, 'Physics'),
(1, 5, 8, 8, 'Social Science'),
(7, 1, 1, 2, 'Biology'),
(7, 1, 2, 1, 'Bangla'),
(7, 1, 3, 4, 'Drawing'),
(7, 1, 4, 3, 'Chemistry'),
(7, 1, 5, 6, 'Mathematics'),
(7, 1, 6, 5, 'English'),
(7, 1, 7, 8, 'Social Science'),
(7, 1, 8, 7, 'Physics'),
(7, 2, 1, 2, 'Biology'),
(7, 2, 2, 1, 'Bangla'),
(7, 2, 3, 4, 'Drawing'),
(7, 2, 4, 3, 'Chemistry'),
(7, 2, 5, 6, 'Mathematics'),
(7, 2, 6, 5, 'English'),
(7, 2, 7, 8, 'Social Science'),
(7, 2, 8, 7, 'Physics'),
(7, 3, 1, 2, 'Biology'),
(7, 3, 2, 1, 'Bangla'),
(7, 3, 3, 4, 'Drawing'),
(7, 3, 4, 3, 'Chemistry'),
(7, 3, 5, 6, 'Mathematics'),
(7, 3, 6, 5, 'English'),
(7, 3, 7, 8, 'Social Science'),
(7, 3, 8, 7, 'Physics'),
(7, 4, 1, 2, 'Biology'),
(7, 4, 2, 1, 'Bangla'),
(7, 4, 3, 4, 'Drawing'),
(7, 4, 4, 3, 'Chemistry'),
(7, 4, 5, 6, 'Mathematics'),
(7, 4, 6, 5, 'English'),
(7, 4, 7, 8, 'Social Science'),
(7, 4, 8, 7, 'Physics'),
(7, 5, 1, 2, 'Biology'),
(7, 5, 2, 1, 'Bangla'),
(7, 5, 3, 4, 'Drawing'),
(7, 5, 4, 3, 'Chemistry'),
(7, 5, 5, 6, 'Mathematics'),
(7, 5, 6, 5, 'English'),
(7, 5, 7, 8, 'Social Science'),
(7, 5, 8, 7, 'Physics'),
(5, 1, 1, 3, 'Chemistry'),
(5, 1, 2, 4, 'Drawing'),
(5, 1, 3, 1, 'Bangla'),
(5, 1, 4, 2, 'Biology'),
(5, 1, 5, 7, 'Physics'),
(5, 1, 6, 8, 'Social Science'),
(5, 1, 7, 5, 'English'),
(5, 1, 8, 6, 'Mathematics'),
(5, 2, 1, 3, 'Chemistry'),
(5, 2, 2, 4, 'Drawing'),
(5, 2, 3, 1, 'Bangla'),
(5, 2, 4, 2, 'Biology'),
(5, 2, 5, 7, 'Physics'),
(5, 2, 6, 8, 'Social Science'),
(5, 2, 7, 5, 'English'),
(5, 2, 8, 6, 'Mathematics'),
(5, 3, 1, 3, 'Chemistry'),
(5, 3, 2, 4, 'Drawing'),
(5, 3, 3, 1, 'Bangla'),
(5, 3, 4, 2, 'Biology'),
(5, 3, 5, 7, 'Physics'),
(5, 3, 6, 8, 'Social Science'),
(5, 3, 7, 5, 'English'),
(5, 3, 8, 6, 'Mathematics'),
(5, 4, 1, 3, 'Chemistry'),
(5, 4, 2, 4, 'Drawing'),
(5, 4, 3, 1, 'Bangla'),
(5, 4, 4, 2, 'Biology'),
(5, 4, 5, 7, 'Physics'),
(5, 4, 6, 8, 'Social Science'),
(5, 4, 7, 5, 'English'),
(5, 4, 8, 6, 'Mathematics'),
(5, 5, 1, 3, 'Chemistry'),
(5, 5, 2, 4, 'Drawing'),
(5, 5, 3, 1, 'Bangla'),
(5, 5, 4, 2, 'Biology'),
(5, 5, 5, 7, 'Physics'),
(5, 5, 6, 8, 'Social Science'),
(5, 5, 7, 5, 'English'),
(5, 5, 8, 6, 'Mathematics'),
(9, 1, 1, 4, 'Drawing'),
(9, 1, 2, 3, 'Chemistry'),
(9, 1, 3, 2, 'Biology'),
(9, 1, 4, 1, 'Bangla'),
(9, 1, 5, 8, 'Social Science'),
(9, 1, 6, 7, 'Physics'),
(9, 1, 7, 6, 'Mathematics'),
(9, 1, 8, 5, 'English'),
(9, 2, 1, 4, 'Drawing'),
(9, 2, 2, 3, 'Chemistry'),
(9, 2, 3, 2, 'Biology'),
(9, 2, 4, 1, 'Bangla'),
(9, 2, 5, 8, 'Social Science'),
(9, 2, 6, 7, 'Physics'),
(9, 2, 7, 6, 'Mathematics'),
(9, 2, 8, 5, 'English'),
(9, 3, 1, 4, 'Drawing'),
(9, 3, 2, 3, 'Chemistry'),
(9, 3, 3, 2, 'Biology'),
(9, 3, 4, 1, 'Bangla'),
(9, 3, 5, 8, 'Social Science'),
(9, 3, 6, 7, 'Physics'),
(9, 3, 7, 6, 'Mathematics'),
(9, 3, 8, 5, 'English'),
(9, 4, 1, 4, 'Drawing'),
(9, 4, 2, 3, 'Chemistry'),
(9, 4, 3, 2, 'Biology'),
(9, 4, 4, 1, 'Bangla'),
(9, 4, 5, 8, 'Social Science'),
(9, 4, 6, 7, 'Physics'),
(9, 4, 7, 6, 'Mathematics'),
(9, 4, 8, 5, 'English'),
(9, 5, 1, 4, 'Drawing'),
(9, 5, 2, 3, 'Chemistry'),
(9, 5, 3, 2, 'Biology'),
(9, 5, 4, 1, 'Bangla'),
(9, 5, 5, 8, 'Social Science'),
(9, 5, 6, 7, 'Physics'),
(9, 5, 7, 6, 'Mathematics'),
(9, 5, 8, 5, 'English'),
(10, 1, 1, 5, 'English'),
(10, 1, 2, 6, 'Mathematics'),
(10, 1, 3, 7, 'Physics'),
(10, 1, 4, 8, 'Social Science'),
(10, 1, 5, 1, 'Bangla'),
(10, 1, 6, 2, 'Biology'),
(10, 1, 7, 3, 'Chemistry'),
(10, 1, 8, 4, 'Drawing'),
(10, 2, 1, 5, 'English'),
(10, 2, 2, 6, 'Mathematics'),
(10, 2, 3, 7, 'Physics'),
(10, 2, 4, 8, 'Social Science'),
(10, 2, 5, 1, 'Bangla'),
(10, 2, 6, 2, 'Biology'),
(10, 2, 7, 3, 'Chemistry'),
(10, 2, 8, 4, 'Drawing'),
(10, 3, 1, 5, 'English'),
(10, 3, 2, 6, 'Mathematics'),
(10, 3, 3, 7, 'Physics'),
(10, 3, 4, 8, 'Social Science'),
(10, 3, 5, 1, 'Bangla'),
(10, 3, 6, 2, 'Biology'),
(10, 3, 7, 3, 'Chemistry'),
(10, 3, 8, 4, 'Drawing'),
(10, 4, 1, 5, 'English'),
(10, 4, 2, 6, 'Mathematics'),
(10, 4, 3, 7, 'Physics'),
(10, 4, 4, 8, 'Social Science'),
(10, 4, 5, 1, 'Bangla'),
(10, 4, 6, 2, 'Biology'),
(10, 4, 7, 3, 'Chemistry'),
(10, 4, 8, 4, 'Drawing'),
(10, 5, 1, 5, 'English'),
(10, 5, 2, 6, 'Mathematics'),
(10, 5, 3, 7, 'Physics'),
(10, 5, 4, 8, 'Social Science'),
(10, 5, 5, 1, 'Bangla'),
(10, 5, 6, 2, 'Biology'),
(10, 5, 7, 3, 'Chemistry'),
(10, 5, 8, 4, 'Drawing'),
(2, 1, 1, 6, 'Mathematics'),
(2, 1, 2, 5, 'English'),
(2, 1, 3, 8, 'Social Science'),
(2, 1, 4, 7, 'Physics'),
(2, 1, 5, 2, 'Biology'),
(2, 1, 6, 1, 'Bangla'),
(2, 1, 7, 4, 'Drawing'),
(2, 1, 8, 3, 'Chemistry'),
(2, 2, 1, 6, 'Mathematics'),
(2, 2, 2, 5, 'English'),
(2, 2, 3, 8, 'Social Science'),
(2, 2, 4, 7, 'Physics'),
(2, 2, 5, 2, 'Biology'),
(2, 2, 6, 1, 'Bangla'),
(2, 2, 7, 4, 'Drawing'),
(2, 2, 8, 3, 'Chemistry'),
(2, 3, 1, 6, 'Mathematics'),
(2, 3, 2, 5, 'English'),
(2, 3, 3, 8, 'Social Science'),
(2, 3, 4, 7, 'Physics'),
(2, 3, 5, 2, 'Biology'),
(2, 3, 6, 1, 'Bangla'),
(2, 3, 7, 4, 'Drawing'),
(2, 3, 8, 3, 'Chemistry'),
(2, 4, 1, 6, 'Mathematics'),
(2, 4, 2, 5, 'English'),
(2, 4, 3, 8, 'Social Science'),
(2, 4, 4, 7, 'Physics'),
(2, 4, 5, 2, 'Biology'),
(2, 4, 6, 1, 'Bangla'),
(2, 4, 7, 4, 'Drawing'),
(2, 4, 8, 3, 'Chemistry'),
(2, 5, 1, 6, 'Mathematics'),
(2, 5, 2, 5, 'English'),
(2, 5, 3, 8, 'Social Science'),
(2, 5, 4, 7, 'Physics'),
(2, 5, 5, 2, 'Biology'),
(2, 5, 6, 1, 'Bangla'),
(2, 5, 7, 4, 'Drawing'),
(2, 5, 8, 3, 'Chemistry'),
(3, 1, 1, 7, 'Physics'),
(3, 1, 2, 8, 'Social Science'),
(3, 1, 3, 5, 'English'),
(3, 1, 4, 6, 'Mathematics'),
(3, 1, 5, 3, 'Chemistry'),
(3, 1, 6, 4, 'Drawing'),
(3, 1, 7, 1, 'Bangla'),
(3, 1, 8, 2, 'Biology'),
(3, 2, 1, 7, 'Physics'),
(3, 2, 2, 8, 'Social Science'),
(3, 2, 3, 5, 'English'),
(3, 2, 4, 6, 'Mathematics'),
(3, 2, 5, 3, 'Chemistry'),
(3, 2, 6, 4, 'Drawing'),
(3, 2, 7, 1, 'Bangla'),
(3, 2, 8, 2, 'Biology'),
(3, 3, 1, 7, 'Physics'),
(3, 3, 2, 8, 'Social Science'),
(3, 3, 3, 5, 'English'),
(3, 3, 4, 6, 'Mathematics'),
(3, 3, 5, 3, 'Chemistry'),
(3, 3, 6, 4, 'Drawing'),
(3, 3, 7, 1, 'Bangla'),
(3, 3, 8, 2, 'Biology'),
(3, 4, 1, 7, 'Physics'),
(3, 4, 2, 8, 'Social Science'),
(3, 4, 3, 5, 'English'),
(3, 4, 4, 6, 'Mathematics'),
(3, 4, 5, 3, 'Chemistry'),
(3, 4, 6, 4, 'Drawing'),
(3, 4, 7, 1, 'Bangla'),
(3, 4, 8, 2, 'Biology'),
(3, 5, 1, 7, 'Physics'),
(3, 5, 2, 8, 'Social Science'),
(3, 5, 3, 5, 'English'),
(3, 5, 4, 6, 'Mathematics'),
(3, 5, 5, 3, 'Chemistry'),
(3, 5, 6, 4, 'Drawing'),
(3, 5, 7, 1, 'Bangla'),
(3, 5, 8, 2, 'Biology'),
(4, 1, 1, 8, 'Social Science'),
(4, 1, 2, 7, 'Physics'),
(4, 1, 3, 6, 'Mathematics'),
(4, 1, 4, 5, 'English'),
(4, 1, 5, 4, 'Drawing'),
(4, 1, 6, 3, 'Chemistry'),
(4, 1, 7, 2, 'Biology'),
(4, 1, 8, 1, 'Bangla'),
(4, 2, 1, 8, 'Social Science'),
(4, 2, 2, 7, 'Physics'),
(4, 2, 3, 6, 'Mathematics'),
(4, 2, 4, 5, 'English'),
(4, 2, 5, 4, 'Drawing'),
(4, 2, 6, 3, 'Chemistry'),
(4, 2, 7, 2, 'Biology'),
(4, 2, 8, 1, 'Bangla'),
(4, 3, 1, 8, 'Social Science'),
(4, 3, 2, 7, 'Physics'),
(4, 3, 3, 6, 'Mathematics'),
(4, 3, 4, 5, 'English'),
(4, 3, 5, 4, 'Drawing'),
(4, 3, 6, 3, 'Chemistry'),
(4, 3, 7, 2, 'Biology'),
(4, 3, 8, 1, 'Bangla'),
(4, 4, 1, 8, 'Social Science'),
(4, 4, 2, 7, 'Physics'),
(4, 4, 3, 6, 'Mathematics'),
(4, 4, 4, 5, 'English'),
(4, 4, 5, 4, 'Drawing'),
(4, 4, 6, 3, 'Chemistry'),
(4, 4, 7, 2, 'Biology'),
(4, 4, 8, 1, 'Bangla'),
(4, 5, 1, 8, 'Social Science'),
(4, 5, 2, 7, 'Physics'),
(4, 5, 3, 6, 'Mathematics'),
(4, 5, 4, 5, 'English'),
(4, 5, 5, 4, 'Drawing'),
(4, 5, 6, 3, 'Chemistry'),
(4, 5, 7, 2, 'Biology'),
(4, 5, 8, 1, 'Bangla'),
(6, 1, 1, 9, 'Sports'),
(6, 1, 2, 10, 'English'),
(6, 2, 1, 9, 'Sports'),
(6, 2, 2, 10, 'English'),
(6, 3, 1, 9, 'Sports'),
(6, 3, 2, 10, 'English'),
(6, 4, 1, 9, 'Sports'),
(6, 4, 2, 10, 'English'),
(6, 5, 1, 9, 'Sports'),
(6, 5, 2, 10, 'English'),
(8, 1, 1, 10, 'English'),
(8, 1, 2, 9, 'Sports'),
(8, 2, 1, 10, 'English'),
(8, 2, 2, 9, 'Sports'),
(8, 3, 1, 10, 'English'),
(8, 3, 2, 9, 'Sports'),
(8, 4, 1, 10, 'English'),
(8, 4, 2, 9, 'Sports'),
(8, 5, 1, 10, 'English'),
(8, 5, 2, 9, 'Sports');

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
  `NameTeacher` varchar(20) NOT NULL,
  `Phone` int(11) NOT NULL,
  `Email` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Name` (`NameTeacher`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`ID`, `NameTeacher`, `Phone`, `Email`) VALUES
(1, 'Eshan', 0, ''),
(2, 'Saiful', 0, ''),
(3, 'Rafiul', 0, ''),
(4, 'Robiul', 0, ''),
(5, 'Altaf', 0, ''),
(6, 'Abdul', 0, ''),
(7, 'Ariful', 0, ''),
(8, 'Samiul', 0, ''),
(9, 'Nasrin', 0, ''),
(10, 'Samia', 0, '');

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
-- Constraints for table `exam`
--
ALTER TABLE `exam`
  ADD CONSTRAINT `exam_ibfk_1` FOREIGN KEY (`Room`) REFERENCES `Room` (`Number`),
  ADD CONSTRAINT `exam_ibfk_2` FOREIGN KEY (`Guard`) REFERENCES `teachers` (`ID`),
  ADD CONSTRAINT `exam_ibfk_3` FOREIGN KEY (`Name`) REFERENCES `ExamName` (`Name`);

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
