-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2019 at 10:22 AM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hiring`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE IF NOT EXISTS `account` (
`accountid` int(10) NOT NULL,
  `cid` int(10) NOT NULL,
  `serviceid` int(10) NOT NULL,
  `totalamount` float NOT NULL,
  `provideramount` float NOT NULL,
  `comamount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE IF NOT EXISTS `appointment` (
`appid` int(10) NOT NULL,
  `cid` int(10) NOT NULL,
  `spid` int(10) NOT NULL,
  `serviceid` int(10) NOT NULL,
  `location` varchar(100) NOT NULL,
  `time` date NOT NULL,
  `amount` float NOT NULL,
  `request` int(5) NOT NULL DEFAULT '0',
  `complete` int(5) NOT NULL DEFAULT '0',
  `pay` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appid`, `cid`, `spid`, `serviceid`, `location`, `time`, `amount`, `request`, `complete`, `pay`) VALUES
(11, 2, 53, 1, 'motijheel', '2019-11-06', 1266, 1, 0, 0),
(12, 2, 51, 1, 'uttara', '2019-11-18', 120000, 1, 0, 0),
(13, 2, 52, 1, 'mirpur', '2019-11-05', 123, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
`cid` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `location` varchar(100) NOT NULL,
  `promo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `userid`, `location`, `promo`) VALUES
(2, 28, 'road-2 house 3 mirpur-2', '');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
`feedbackid` int(10) NOT NULL,
  `serviceid` int(10) NOT NULL,
  `customerid` int(10) NOT NULL,
  `feedback` varchar(200) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedbackid`, `serviceid`, `customerid`, `feedback`) VALUES
(11, 51, 1111, 'nic'),
(12, 51, 88, 'good'),
(17, 52, 23, 'you should be more professional'),
(18, 53, 189, 'excellent profesionilism'),
(44, 89, 52, 'bad with payment');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `msgid` int(10) NOT NULL,
  `senderid` int(10) NOT NULL,
  `receiverid` int(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`msgid`, `senderid`, `receiverid`, `message`) VALUES
(0, 30, 7, 'final'),
(0, 29, 255, 'done'),
(0, 30, 566, 'ok'),
(0, 47, 111, 'ok'),
(12, 53, 999, 'ha 999'),
(67, 51, 66, 'okkkk'),
(13, 51, 123, 'okv go it'),
(14, 191, 52, 'message for 52'),
(19, 191, 53, 'message for 53');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE IF NOT EXISTS `notice` (
`noticeid` int(10) NOT NULL,
  `adminid` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `warning` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`noticeid`, `adminid`, `userid`, `warning`) VALUES
(1, 1, 51, 'YOU CANT POST PERSONAL THING'),
(2, 1, 52, 'KEEP THE EXCELLENT PERFORMANCE'),
(3, 1, 53, 'work more to get customer');

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

CREATE TABLE IF NOT EXISTS `offer` (
`offerid` int(10) NOT NULL,
  `offername` varchar(20) NOT NULL,
  `adminid` int(10) NOT NULL,
  `serviceid` int(10) NOT NULL,
  `offercode` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
`serviceid` int(11) NOT NULL,
  `spid` int(11) NOT NULL,
  `servicename` varchar(40) NOT NULL,
  `price` float NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`serviceid`, `spid`, `servicename`, `price`, `description`) VALUES
(1, 26, 'electrician', 500, 'abcd'),
(5, 29, 'jharu dewa', 123, 'josh'),
(6, 51, 'cleaner car', 12000, 'aaaaa'),
(7, 52, 'jkjdlfk', 1235, 'ga');

-- --------------------------------------------------------

--
-- Table structure for table `serviceprovider`
--

CREATE TABLE IF NOT EXISTS `serviceprovider` (
`spid` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `skill` varchar(60) NOT NULL,
  `revenue` float DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `serviceprovider`
--

INSERT INTO `serviceprovider` (`spid`, `userid`, `skill`, `revenue`) VALUES
(1, 26, 'electrician', 0),
(2, 39, 'cleaner', 0),
(3, 43, 'cleaner', 0),
(4, 45, 'electrician', 0),
(5, 48, 'mechanic', 0),
(6, 49, 'mechanic', 0),
(7, 54, 'mechanic', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`userid` int(10) NOT NULL,
  `username` varchar(40) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` int(15) NOT NULL,
  `password` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `city` varchar(30) NOT NULL,
  `type` int(5) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `email`, `phone`, `password`, `gender`, `city`, `type`) VALUES
(52, 'abeer', 'ab@email.com', 1234567892, '123', 'male', 'ctg', 1),
(53, 'ragib', 'rh@gmail.com', 1234567893, '123', 'male', 'tkg', 1),
(54, 'samim', 'sm@gmail.com', 1122334455, '123', 'male', 'gazipur', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
 ADD PRIMARY KEY (`accountid`), ADD KEY `fk3` (`cid`), ADD KEY `fk4` (`serviceid`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
 ADD PRIMARY KEY (`appid`), ADD KEY `fk1` (`cid`), ADD KEY `fk2` (`serviceid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
 ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
 ADD PRIMARY KEY (`feedbackid`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
 ADD PRIMARY KEY (`noticeid`);

--
-- Indexes for table `offer`
--
ALTER TABLE `offer`
 ADD PRIMARY KEY (`offerid`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
 ADD PRIMARY KEY (`serviceid`), ADD KEY `fk` (`spid`);

--
-- Indexes for table `serviceprovider`
--
ALTER TABLE `serviceprovider`
 ADD PRIMARY KEY (`spid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`userid`), ADD UNIQUE KEY `un` (`email`), ADD UNIQUE KEY `un1` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
MODIFY `accountid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
MODIFY `appid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
MODIFY `feedbackid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
MODIFY `noticeid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `offer`
--
ALTER TABLE `offer`
MODIFY `offerid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
MODIFY `serviceid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `serviceprovider`
--
ALTER TABLE `serviceprovider`
MODIFY `spid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `userid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
ADD CONSTRAINT `fk3` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk4` FOREIGN KEY (`serviceid`) REFERENCES `service` (`serviceid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
ADD CONSTRAINT `fk1` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk2` FOREIGN KEY (`serviceid`) REFERENCES `service` (`serviceid`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
