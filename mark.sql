-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2017 at 02:37 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mark`
--

-- --------------------------------------------------------

--
-- Table structure for table `dailystud`
--

CREATE TABLE IF NOT EXISTS `dailystud` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `classid` int(10) NOT NULL,
  `Subject` varchar(256) NOT NULL,
  `Teacher` varchar(32) NOT NULL,
  `tsap` varchar(32) NOT NULL,
  `Type` int(1) NOT NULL,
  `Time Start` time(3) NOT NULL,
  `Time End` time(3) NOT NULL,
  `location` varchar(10) NOT NULL,
  `access` tinyint(1) NOT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `dailystud`
--

INSERT INTO `dailystud` (`did`, `classid`, `Subject`, `Teacher`, `tsap`, `Type`, `Time Start`, `Time End`, `location`, `access`) VALUES
(1, 1, 'Enterprise Resource Planning', 'Amruta Patil', '70003130001', 0, '11:00:00.000', '12:00:00.000', '61', 1),
(2, 1, 'Computer Simulation and Modeling', 'Dr. Abhijit R. Joshi', '70003130002', 0, '12:00:00.000', '13:00:00.000', '61', 0),
(3, 1, 'Big Data Analytics', 'KRS', '70003130003', 0, '13:00:00.000', '14:00:00.000', '61', 0),
(4, 1, 'Storage Network Management and Retrieval', 'AV', '70003130004', 0, '14:30:00.000', '15:30:00.000', '61', 0),
(5, 1, 'Enterprise Resource Planning', 'Arjun Jaiswal', '70003130005', 1, '15:30:00.000', '17:30:00.000', 'RDBMS', 1),
(6, 1, 'STQA', 'HD', '70003130006', 3, '15:30:00.000', '17:30:00.000', 'MQ', 1),
(7, 1, 'Enterprise Resource Planning', 'Arjun Jaiswal', '70003130001', 2, '15:30:00.000', '17:30:00.000', 'OOPS', 1),
(8, 1, 'CSM', 'SC', '70003130007', 4, '15:30:00.000', '17:30:00.000', 'DSA', 1);

-- --------------------------------------------------------

--
-- Table structure for table `enterprise resource planning-amruta patil`
--

CREATE TABLE IF NOT EXISTS `enterprise resource planning-amruta patil` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `student` varchar(32) NOT NULL,
  `18-Mar-2017` varchar(10) NOT NULL,
  `19-Mar-2017` varchar(10) DEFAULT NULL,
  `11-Apr-2017` varchar(10) DEFAULT NULL,
  `12-Apr-2017` varchar(10) DEFAULT NULL,
  `16-Apr-2017` varchar(10) DEFAULT '0',
  `17-Apr-2017` varchar(10) NOT NULL DEFAULT '0',
  `21-Apr-2017` int(1) DEFAULT NULL,
  `23-Apr-2017` int(1) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `enterprise resource planning-amruta patil`
--

INSERT INTO `enterprise resource planning-amruta patil` (`pid`, `student`, `18-Mar-2017`, `19-Mar-2017`, `11-Apr-2017`, `12-Apr-2017`, `16-Apr-2017`, `17-Apr-2017`, `21-Apr-2017`, `23-Apr-2017`) VALUES
(1, '60003130010', '0', '1', '1', '1', NULL, '0', 1, NULL),
(2, '60003130011', '0', '1', '0', '0', NULL, '0', 1, NULL),
(3, '60003130012', '1', '1', '1', '1', NULL, '0', 1, NULL),
(4, '60003130013', '1', '1', '1', '1', NULL, '1', NULL, NULL),
(5, '60003130014', '1', '1', '1', '0', NULL, '1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nfc_tags`
--

CREATE TABLE IF NOT EXISTS `nfc_tags` (
  `nid` int(100) NOT NULL AUTO_INCREMENT,
  `uid` varchar(16) NOT NULL,
  `location` varchar(32) NOT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `nfc_tags`
--

INSERT INTO `nfc_tags` (`nid`, `uid`, `location`) VALUES
(1, 'C09705f7', '61'),
(2, 'C09705f1', 'RDBMS'),
(3, '04ACB452FE4A80', '61');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `classid` int(10) NOT NULL,
  `batchid` int(10) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`sid`, `username`, `classid`, `batchid`) VALUES
(1, '60003130010', 1, 1),
(2, '60003130013', 1, 1),
(4, '60003130014', 1, 1),
(5, '60003130015', 1, 1),
(6, '60003130025', 1, 2),
(7, '60003130026', 1, 2),
(8, '60003130027', 1, 2),
(9, '60003130028', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
  `tid` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `subject1` varchar(256) NOT NULL,
  `subject2` varchar(256) NOT NULL,
  `subject3` varchar(256) NOT NULL,
  `subject4` varchar(256) NOT NULL,
  `subject5` varchar(256) NOT NULL,
  `subject6` varchar(256) NOT NULL,
  `subject7` varchar(256) NOT NULL,
  `subject8` varchar(256) NOT NULL,
  `subject9` varchar(256) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`tid`, `username`, `password`, `name`, `subject1`, `subject2`, `subject3`, `subject4`, `subject5`, `subject6`, `subject7`, `subject8`, `subject9`) VALUES
(1, '70003130001', '70003130001', 'Arjun Jaiswal', 'Enterprise Resource Planning', 'Enterprise Resource Planning - Prac', '', '', '', '', '', '', ''),
(2, '70003130002', '70003130002', 'Dr. Abhijit R. Joshi', 'Computer Simulation and Modeling - Th', 'Computer Simulation and Modeling - Prac', 'Automata Theory - Th', 'Automata Theory - Prac', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `uid` int(6) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(16) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `classid` int(10) NOT NULL,
  `type` int(1) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `username`, `password`, `name`, `classid`, `type`) VALUES
(1, '60003130014', '60003130014', 'Monis Qadri', 1, 0),
(2, '60003130010', '60003130010', 'Pinnal', 1, 0),
(3, '70003130001', '70003130001', 'Arjun Jaiswal', 0, 1),
(4, '70003130002', '70003130002', 'Dr. Abhijit R. Joshi', 0, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
