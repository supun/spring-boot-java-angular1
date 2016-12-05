-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 05, 2016 at 07:38 PM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `riskmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `actionmaster`
--

CREATE TABLE IF NOT EXISTS `actionmaster` (
  `id` int(11) NOT NULL,
  `actioncode` varchar(10) DEFAULT NULL,
  `actiondesc` varchar(30) DEFAULT NULL,
  `active_status` varchar(2) DEFAULT NULL,
  `cruser` varchar(10) DEFAULT NULL,
  `crdate` datetime DEFAULT NULL,
  `upduser` varchar(10) DEFAULT NULL,
  `upddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actionmaster`
--


-- --------------------------------------------------------

--
-- Table structure for table `authoritymaster`
--

CREATE TABLE IF NOT EXISTS `authoritymaster` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Authoritycode` varchar(20) DEFAULT NULL,
  `Authoritydesc` varchar(200) DEFAULT NULL,
  `active_status` varchar(2) DEFAULT NULL,
  `cruser` varchar(45) DEFAULT NULL,
  `crdate` datetime DEFAULT NULL,
  `upduser` varchar(45) DEFAULT NULL,
  `upddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `authoritymaster`
--

INSERT INTO `authoritymaster` (`id`, `Authoritycode`, `Authoritydesc`, `active_status`, `cruser`, `crdate`, `upduser`, `upddate`) VALUES
(1, 'AU001', 'AMSA', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(2, 'AU002', 'AQIS', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(3, 'AU003', 'Rightship', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(4, 'AU004', 'ENEL', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(5, 'AU005', 'USCG', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(6, 'AU006', 'USCG', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(7, 'AU007', 'CDI', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(8, 'AU008', 'Quarantine', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(9, 'AU009', 'Marpol', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(10, 'AU010', 'MoU-Black Sea', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(11, 'AU011', 'MoU-Carribean', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(12, 'AU012', 'MoU-Indian Ocean', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(13, 'AU013', 'MoU-Mediterranean', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(14, 'AU014', 'MoU-Paris', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(15, 'AU015', 'MoU-Riyadh', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(16, 'AU016', 'MoU-Tokyo', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(17, 'AU017', 'Class-ABS', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(18, 'AU018', 'Class-BV', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(19, 'AU019', 'Class-DNV-GL', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(20, 'AU020', 'Class-LR', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(21, 'AU021', 'Class-NK', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(22, 'AU022', 'FS-Bahamas', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(23, 'AU023', 'FS-Japan', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(24, 'AU024', 'FS-Liberia', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(25, 'AU025', 'FS-Malta', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(26, 'AU026', 'FS-Marshal Islands', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(27, 'AU027', 'FS-Panama', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(28, 'AU028', 'FS-Singapore', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(29, 'AU029', 'FS-Thai', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(30, 'AU030', 'FS-Vanuatu', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(31, 'AU031', 'ADNOC', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(32, 'AU032', 'BASF', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(33, 'AU033', 'BHP', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(34, 'AU034', 'BP', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(35, 'AU035', 'Cepsa', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(36, 'AU036', 'Chevron', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(37, 'AU037', 'Conoco', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(38, 'AU038', 'Eneos', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(39, 'AU039', 'Idemitsu', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(40, 'AU040', 'IMT', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(41, 'AU041', 'Koch', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(42, 'AU042', 'NLAT', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(43, 'AU043', 'P66', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(44, 'AU044', 'Petrobras', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(45, 'AU045', 'PTT', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(46, 'AU046', 'QatarGas', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(47, 'AU047', 'REPSOL', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(48, 'AU048', 'Sakhalin Tanguh ', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `casualfactormaster`
--

CREATE TABLE IF NOT EXISTS `casualfactormaster` (
  `id` int(11) NOT NULL,
  `casualcode` varchar(10) DEFAULT NULL,
  `casualtype` varchar(10) DEFAULT NULL,
  `casualdesc` varchar(100) DEFAULT NULL,
  `active_status` varchar(2) DEFAULT NULL,
  `cruser` varchar(10) DEFAULT NULL,
  `crdate` datetime DEFAULT NULL,
  `upduser` varchar(10) DEFAULT NULL,
  `upddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `casualfactormaster`
--


-- --------------------------------------------------------

--
-- Table structure for table `categorymaster`
--

CREATE TABLE IF NOT EXISTS `categorymaster` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` varchar(10) DEFAULT NULL,
  `categorydesc` varchar(45) DEFAULT NULL,
  `active_status` varchar(5) DEFAULT NULL,
  `cruser` varchar(10) DEFAULT NULL,
  `crdate` datetime DEFAULT NULL,
  `upduser` varchar(10) DEFAULT NULL,
  `upddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `categorymaster`
--


-- --------------------------------------------------------

--
-- Table structure for table `causemaster`
--

CREATE TABLE IF NOT EXISTS `causemaster` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rootid` varchar(20) DEFAULT NULL,
  `rootcause` varchar(200) DEFAULT NULL,
  `active_status` varchar(2) DEFAULT NULL,
  `cruser` varchar(10) DEFAULT NULL,
  `crdate` datetime DEFAULT NULL,
  `upduser` varchar(10) DEFAULT NULL,
  `upddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `causemaster`
--

INSERT INTO `causemaster` (`id`, `rootid`, `rootcause`, `active_status`, `cruser`, `crdate`, `upduser`, `upddate`) VALUES
(1, 'root001', 'Behavior/Attitude/ Habit', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(2, 'root002', 'Communication/ instruction', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(3, 'root003', 'Contractor & External party', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(4, 'root004', 'Engineering /Design', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(5, 'root005', 'Fatigue/ lack of rest', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(6, 'root006', 'Inadequate Equipment tools and facilities', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(7, 'root007', 'Management /Supervision/leadershiptools', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(8, 'root008', 'Mental State / Oversight/ Careless', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(9, 'root009', 'Physical Capability', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(10, 'root010', 'Physical Condition', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(11, 'root011', 'Quality of material/Purchasing, Material/Handling & Material /inadequate tools/spares', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(12, 'root012', 'Skill Level', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(13, 'root013', 'Training / Knowledge transfer', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(14, 'root014', 'Work Planning/ tool box meeting/ Management of maintenance and inspection', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(15, 'root015', 'Work Rules / Policies /Standards / Procedure', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(16, 'root016', 'Others', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `configmaster`
--

CREATE TABLE IF NOT EXISTS `configmaster` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modulename` varchar(45) DEFAULT NULL,
  `attribute` varchar(100) DEFAULT NULL,
  `value` varchar(30) DEFAULT NULL,
  `active_status` varchar(2) DEFAULT NULL,
  `cruser` varchar(10) DEFAULT NULL,
  `crdate` datetime DEFAULT NULL,
  `upduser` varchar(10) DEFAULT NULL,
  `upddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `configmaster`
--

INSERT INTO `configmaster` (`id`, `modulename`, `attribute`, `value`, `active_status`, `cruser`, `crdate`, `upduser`, `upddate`) VALUES
(1, 'safety', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'safety', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'NMR', 'formid', 'KLQSMS-Y-C-05', 'A', 'SYSTEM', '2016-11-25 00:00:00', NULL, NULL),
(4, 'NMR', 'revisionno', '2.5 date 01 April 2016', 'A', 'SYSTEM', '2016-11-25 00:00:00', NULL, NULL),
(5, 'EXI', 'formid', 'KLQSMS-Y-C-05', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL),
(6, 'EXI', 'revisionno', '2.5, Date:01 April 16', 'A', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `crewmaster`
--

CREATE TABLE IF NOT EXISTS `crewmaster` (
  `empid` varchar(25) NOT NULL,
  `empname` varchar(50) DEFAULT NULL,
  `rank` varchar(10) DEFAULT NULL,
  `familyname` varchar(50) NOT NULL,
  `dateofbirth` date DEFAULT NULL,
  `placeofbirth` varchar(25) DEFAULT NULL,
  `nationality` varchar(25) DEFAULT NULL,
  `passportnumber` varchar(25) DEFAULT NULL,
  `passportexpiry` date DEFAULT NULL,
  `vesselcode` varchar(10) DEFAULT NULL,
  `USvisaexpiry` date DEFAULT NULL,
  `medicalcertificate_issued` date DEFAULT NULL,
  `medicalcertificate_expiry` date DEFAULT NULL,
  `dateofjoining` date DEFAULT NULL,
  `flaglicense_number` varchar(20) DEFAULT NULL,
  `flaglicense_expiry` date DEFAULT NULL,
  `flagd_c_e_expiry` varchar(20) DEFAULT NULL,
  `login_expiry` date DEFAULT NULL,
  `flagseamanbook_expiry` date DEFAULT NULL,
  `flagGMDSS_GOC_issued` date DEFAULT NULL,
  `flagGMDSS_GOC_expiry` date DEFAULT NULL,
  `employeecontract_expiry` date DEFAULT NULL,
  `Remarks` date DEFAULT NULL,
  `active_status` varchar(2) DEFAULT NULL,
  `cruser` varchar(10) DEFAULT NULL,
  `crdate` datetime DEFAULT NULL,
  `upuser` varchar(10) DEFAULT NULL,
  `upddate` datetime DEFAULT NULL,
  PRIMARY KEY (`empid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crewmaster`
--

INSERT INTO `crewmaster` (`empid`, `empname`, `rank`, `familyname`, `dateofbirth`, `placeofbirth`, `nationality`, `passportnumber`, `passportexpiry`, `vesselcode`, `USvisaexpiry`, `medicalcertificate_issued`, `medicalcertificate_expiry`, `dateofjoining`, `flaglicense_number`, `flaglicense_expiry`, `flagd_c_e_expiry`, `login_expiry`, `flagseamanbook_expiry`, `flagGMDSS_GOC_issued`, `flagGMDSS_GOC_expiry`, `employeecontract_expiry`, `Remarks`, `active_status`, `cruser`, `crdate`, `upuser`, `upddate`) VALUES
('E001', 'John', 'R001', 'John Family', '1982-11-14', 'swedwn', 'US', 'AMIPG1906H', '2017-11-14', 'ATR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL),
('E002', 'Smith', 'R002', 'Smith Family', '1983-11-14', 'denmark', 'UK', 'AMIPG1955H', '2017-11-14', 'WGR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departmentmaster`
--

CREATE TABLE IF NOT EXISTS `departmentmaster` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `departmentcode` varchar(10) DEFAULT NULL,
  `departmentdesc` varchar(50) DEFAULT NULL,
  `active_status` varchar(2) DEFAULT NULL,
  `cruser` varchar(10) DEFAULT NULL,
  `crdate` datetime DEFAULT NULL,
  `upduser` varchar(10) DEFAULT NULL,
  `upddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `departmentmaster`
--

INSERT INTO `departmentmaster` (`id`, `departmentcode`, `departmentdesc`, `active_status`, `cruser`, `crdate`, `upduser`, `upddate`) VALUES
(1, 'D001', 'Deck', 'A', 'SYSTEM', '2016-11-14 00:00:00', NULL, NULL),
(2, 'D002', 'Engine', 'A', 'SYSTEM', '2016-11-14 00:00:00', NULL, NULL),
(3, 'D003', 'Gas', 'A', 'SYSTEM', '2016-11-14 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `extinsformsdoc`
--

CREATE TABLE IF NOT EXISTS `extinsformsdoc` (
  `docid` bigint(8) NOT NULL DEFAULT '0',
  `filename` varchar(100) DEFAULT NULL,
  `filetype` varchar(10) DEFAULT NULL,
  `filepath` varchar(200) DEFAULT NULL,
  `refid` int(11) DEFAULT NULL,
  PRIMARY KEY (`docid`),
  KEY `FK_ext_idx` (`refid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `extinsformsdoc`
--


-- --------------------------------------------------------

--
-- Table structure for table `extinspectdetail`
--

CREATE TABLE IF NOT EXISTS `extinspectdetail` (
  `refid` int(11) NOT NULL AUTO_INCREMENT,
  `extinsid` varchar(40) DEFAULT NULL,
  `refno` varchar(25) DEFAULT NULL,
  `actioncode` varchar(10) DEFAULT NULL,
  `activity` int(11) DEFAULT NULL,
  `deficiencynature` varchar(20) DEFAULT NULL,
  `deficiencydetail` varchar(200) DEFAULT NULL,
  `rootcause` varchar(200) DEFAULT NULL,
  `immaction` varchar(200) DEFAULT NULL,
  `longtermaction` varchar(200) DEFAULT NULL,
  `actionby` varchar(10) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `subcategory` varchar(20) DEFAULT NULL,
  `plannedcompletiondate` datetime DEFAULT NULL,
  `actualcompletiondate` datetime DEFAULT NULL,
  `findingstatus` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`refid`),
  KEY `FK_extinsid_idx` (`extinsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `extinspectdetail`
--


-- --------------------------------------------------------

--
-- Table structure for table `extinspectmaster`
--

CREATE TABLE IF NOT EXISTS `extinspectmaster` (
  `extinsid` varchar(40) NOT NULL,
  `formnumber` varchar(50) DEFAULT NULL,
  `revnumber` varchar(50) DEFAULT NULL,
  `captaincode` varchar(10) DEFAULT NULL,
  `chiefengcode` varchar(10) DEFAULT NULL,
  `vesselcode` varchar(10) DEFAULT NULL,
  `flag` varchar(20) DEFAULT NULL,
  `fleet` varchar(20) DEFAULT NULL,
  `inspectiontype` varchar(30) DEFAULT NULL,
  `authority` varchar(30) DEFAULT NULL,
  `deficiencycount` int(11) DEFAULT NULL,
  `portcode` varchar(30) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `inspectiondate` datetime DEFAULT NULL,
  `inspectorname` varchar(50) DEFAULT NULL,
  `comments` varchar(500) DEFAULT NULL,
  `active_status` varchar(5) DEFAULT NULL,
  `crdate` datetime DEFAULT NULL,
  `currrankid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`extinsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `extinspectmaster`
--


-- --------------------------------------------------------

--
-- Table structure for table `extinswfhistory`
--

CREATE TABLE IF NOT EXISTS `extinswfhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `extinsid` varchar(30) DEFAULT NULL,
  `userid` varchar(45) DEFAULT NULL,
  `rankid` varchar(10) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `upddate` datetime DEFAULT NULL,
  `formstatus` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_extinsid_idx` (`extinsid`),
  KEY `FK_extinsid_idx1` (`extinsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `extinswfhistory`
--


-- --------------------------------------------------------

--
-- Table structure for table `formsdoc`
--

CREATE TABLE IF NOT EXISTS `formsdoc` (
  `docid` bigint(8) NOT NULL DEFAULT '0',
  `filename` varchar(100) DEFAULT NULL,
  `filetype` varchar(10) DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `filepath` varchar(200) DEFAULT NULL,
  `formid` varchar(30) DEFAULT NULL,
  `moduleid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`docid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `formsdoc`
--


-- --------------------------------------------------------

--
-- Table structure for table `formstatusmaster`
--

CREATE TABLE IF NOT EXISTS `formstatusmaster` (
  `ID` int(11) NOT NULL,
  `statuscode` varchar(5) DEFAULT NULL,
  `statusdesc` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `formstatusmaster`
--

INSERT INTO `formstatusmaster` (`ID`, `statuscode`, `statusdesc`) VALUES
(1, 'I', 'Initiated'),
(2, 'S', 'Submitted'),
(3, 'AP', 'Approved'),
(4, 'C', 'Closed'),
(5, 'S', 'Shared'),
(6, 'E', 'Emailed');

-- --------------------------------------------------------

--
-- Table structure for table `inspectionmaster`
--

CREATE TABLE IF NOT EXISTS `inspectionmaster` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inspectioncode` varchar(20) DEFAULT NULL,
  `inspectiontype` varchar(20) DEFAULT NULL,
  `inspectiondesc` varchar(200) DEFAULT NULL,
  `active_status` varchar(2) DEFAULT NULL,
  `cruser` varchar(10) DEFAULT NULL,
  `crdate` datetime DEFAULT NULL,
  `upduser` varchar(10) DEFAULT NULL,
  `upddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `inspectionmaster`
--

INSERT INTO `inspectionmaster` (`id`, `inspectioncode`, `inspectiontype`, `inspectiondesc`, `active_status`, `cruser`, `crdate`, `upduser`, `upddate`) VALUES
(1, 'INS001', 'external', 'SIRE', 'A', 'SYSTEM', '2016-11-25 00:00:00', NULL, NULL),
(2, 'INS002', 'external', 'PSC', 'A', 'SYSTEM', '2016-11-25 00:00:00', NULL, NULL),
(3, 'INS003', 'external', 'NAV9000', 'A', 'SYSTEM', '2016-11-25 00:00:00', NULL, NULL),
(4, 'INS004', 'external', 'Flag State', 'A', 'SYSTEM', '2016-11-25 00:00:00', NULL, NULL),
(5, 'INS005', 'external', 'MLC', 'A', 'SYSTEM', '2016-11-25 00:00:00', NULL, NULL),
(6, 'INS006', 'external', 'CDI', 'A', 'SYSTEM', '2016-11-25 00:00:00', NULL, NULL),
(7, 'INS007', 'external', 'Rightship', 'A', 'SYSTEM', '2016-11-25 00:00:00', NULL, NULL),
(8, 'INS008', 'external', 'ENEL', 'A', 'SYSTEM', '2016-11-25 00:00:00', NULL, NULL),
(9, 'INS009', 'external', 'Water Police', 'A', 'SYSTEM', '2016-11-25 00:00:00', NULL, NULL),
(10, 'INS010', 'external', 'MARPOL', 'A', 'SYSTEM', '2016-11-25 00:00:00', NULL, NULL),
(11, 'INS011', 'external', 'Quarantine', 'A', 'SYSTEM', '2016-11-25 00:00:00', NULL, NULL),
(12, 'INS012', 'external', 'ISM Ext Audit', 'A', 'SYSTEM', '2016-11-25 00:00:00', NULL, NULL),
(13, 'INS013', 'external', 'ISPS Ext Audit', 'A', 'SYSTEM', '2016-11-25 00:00:00', NULL, NULL),
(14, 'INS014', 'external', 'EMS Ext Audit', 'A', 'SYSTEM', '2016-11-25 00:00:00', NULL, NULL),
(15, 'INS015', 'external', 'QMS Ext Audit', 'A', 'SYSTEM', '2016-11-25 00:00:00', NULL, NULL),
(16, 'INS016', 'external', 'P&I ', 'A', 'SYSTEM', '2016-11-25 00:00:00', NULL, NULL),
(17, 'INS017', 'external', 'Minor Customer Complaint', 'A', 'SYSTEM', '2016-11-25 00:00:00', NULL, NULL),
(18, 'INS018', 'external', '0thers', 'A', 'SYSTEM', '2016-11-25 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `locationmaster`
--

CREATE TABLE IF NOT EXISTS `locationmaster` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `locationcode` varchar(10) DEFAULT NULL,
  `locationdesc` varchar(100) DEFAULT NULL,
  `active_status` varchar(2) DEFAULT NULL,
  `cruser` varchar(10) DEFAULT NULL,
  `crdate` datetime DEFAULT NULL,
  `upduser` varchar(10) DEFAULT NULL,
  `upddate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `locationmaster`
--

INSERT INTO `locationmaster` (`ID`, `locationcode`, `locationdesc`, `active_status`, `cruser`, `crdate`, `upduser`, `upddate`) VALUES
(1, 'L001', 'Bridge', 'A', 'SYSTEM', '2016-11-15 00:00:00', NULL, NULL),
(2, 'L002', 'CCR/ECR/Bridge', 'A', 'SYSTEM', '2016-11-15 00:00:00', NULL, NULL),
(3, 'L003', 'Engine Room', 'A', 'SYSTEM', '2016-11-15 00:00:00', NULL, NULL),
(4, 'L004', 'Galley/Pantry/Chamber', 'A', 'SYSTEM', '2016-11-15 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mackmdlindex`
--

CREATE TABLE IF NOT EXISTS `mackmdlindex` (
  `id` int(11) NOT NULL,
  `mdlname` varchar(15) DEFAULT NULL,
  `idxvalue` int(11) DEFAULT NULL,
  `idxprefix` varchar(15) DEFAULT NULL,
  `vslcode` varchar(10) DEFAULT NULL,
  `fnyear` year(4) DEFAULT NULL,
  `active_status` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mackmdlindex`
--


-- --------------------------------------------------------

--
-- Table structure for table `messangertable`
--

CREATE TABLE IF NOT EXISTS `messangertable` (
  `referenceno` varchar(30) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `userid` varchar(10) DEFAULT NULL,
  `messagedescription` varchar(500) DEFAULT NULL,
  `messagedate` datetime DEFAULT NULL,
  `messagefrom` varchar(10) DEFAULT NULL,
  `vesselcode` varchar(10) DEFAULT NULL,
  `moduleid` varchar(10) DEFAULT NULL,
  `isRead` char(1) DEFAULT NULL,
  `status` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`referenceno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messangertable`
--


-- --------------------------------------------------------

--
-- Table structure for table `nearmisscategorymaster`
--

CREATE TABLE IF NOT EXISTS `nearmisscategorymaster` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categorycode` varchar(10) DEFAULT NULL,
  `categorydesc` varchar(50) DEFAULT NULL,
  `cruser` varchar(10) DEFAULT NULL,
  `crdate` datetime DEFAULT NULL,
  `upduser` varchar(10) DEFAULT NULL,
  `upddate` datetime DEFAULT NULL,
  `active_status` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `nearmisscategorymaster`
--

INSERT INTO `nearmisscategorymaster` (`id`, `categorycode`, `categorydesc`, `cruser`, `crdate`, `upduser`, `upddate`, `active_status`) VALUES
(1, 'CAT001', 'Main Engine', 'SYSTEM', '2016-11-15 00:00:00', NULL, NULL, 'A'),
(2, 'CAT002', 'Main Turbine', 'SYSTEM', '2016-11-15 00:00:00', NULL, NULL, 'A'),
(3, 'CAT003', 'DFDE', 'SYSTEM', '2016-11-15 00:00:00', NULL, NULL, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `nearmissinvestigate`
--

CREATE TABLE IF NOT EXISTS `nearmissinvestigate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problem` varchar(500) DEFAULT NULL,
  `details` varchar(500) DEFAULT NULL,
  `nrmid` varchar(30) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `FK_nrmid1_idx` (`nrmid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `nearmissinvestigate`
--

INSERT INTO `nearmissinvestigate` (`id`, `problem`, `details`, `nrmid`) VALUES
(1, NULL, NULL, 'NM/ATR/2016/001'),
(2, NULL, NULL, 'NM/ATR/2016/002');

-- --------------------------------------------------------

--
-- Table structure for table `nearmissjobmaster`
--

CREATE TABLE IF NOT EXISTS `nearmissjobmaster` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jobmastercode` varchar(10) DEFAULT NULL,
  `jobmasterdesc` varchar(50) DEFAULT NULL,
  `active_status` varchar(2) DEFAULT NULL,
  `cruser` varchar(10) DEFAULT NULL,
  `crdate` datetime DEFAULT NULL,
  `upduser` varchar(10) DEFAULT NULL,
  `upddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `nearmissjobmaster`
--

INSERT INTO `nearmissjobmaster` (`id`, `jobmastercode`, `jobmasterdesc`, `active_status`, `cruser`, `crdate`, `upduser`, `upddate`) VALUES
(1, 'JM001', 'During Arrival or departure port', 'A', 'SYSTEM', '2016-11-14 00:00:00', NULL, NULL),
(2, 'JM002', 'Watch Keeping', 'A', 'SYSTEM', '2016-11-14 00:00:00', NULL, NULL),
(3, 'JM003', 'Mooring/Unmooring Operations', 'A', 'SYSTEM', '2016-11-14 00:00:00', NULL, NULL),
(4, 'JM004', 'Machinery Operation', 'A', 'SYSTEM', '2016-11-14 00:00:00', NULL, NULL),
(5, 'JM005', 'Cargo Operation', 'A', 'SYSTEM', '2016-11-14 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nearmissmaster`
--

CREATE TABLE IF NOT EXISTS `nearmissmaster` (
  `nrmid` varchar(30) NOT NULL DEFAULT '1',
  `reportdate` datetime DEFAULT NULL,
  `vesselcode` varchar(25) DEFAULT NULL,
  `imono` varchar(20) DEFAULT NULL,
  `reportercode` varchar(100) DEFAULT NULL,
  `rankcode` varchar(100) DEFAULT NULL,
  `companycode` varchar(100) DEFAULT NULL,
  `shiptype` varchar(100) DEFAULT NULL,
  `shippostioncode` varchar(100) DEFAULT NULL,
  `deptcode` varchar(100) DEFAULT NULL,
  `personconcernedcode` varchar(25) DEFAULT NULL,
  `concernedrankcode` varchar(50) DEFAULT NULL,
  `yearofexp` varchar(25) DEFAULT NULL,
  `rankyr` varchar(25) DEFAULT NULL,
  `incidentdate` datetime DEFAULT NULL,
  `locationcode` varchar(100) DEFAULT NULL,
  `categorycode` varchar(100) DEFAULT NULL,
  `jobcode` varchar(100) DEFAULT NULL,
  `nearmissdetail` varchar(500) DEFAULT NULL,
  `incidentoutline` varchar(500) DEFAULT NULL,
  `incidentintent` varchar(500) DEFAULT NULL,
  `watswrong` varchar(500) DEFAULT NULL,
  `escalate` char(1) DEFAULT NULL,
  `share` varchar(100) DEFAULT NULL,
  `ismarkedsignificant` varchar(2) DEFAULT NULL,
  `crdate` datetime DEFAULT NULL,
  `active_status` varchar(5) DEFAULT NULL,
  `currankid` varchar(10) DEFAULT NULL,
  `formnumber` varchar(50) DEFAULT NULL,
  `revnumber` varchar(50) DEFAULT NULL,
  `cause1` varchar(100) DEFAULT NULL,
  `cause2` varchar(100) DEFAULT NULL,
  `casualfactor` varchar(100) DEFAULT NULL,
  `rootcause` varchar(500) DEFAULT NULL,
  `lessonlearnt` varchar(500) DEFAULT NULL,
  `advisebydhead` varchar(500) DEFAULT NULL,
  `advisebycaptain` varchar(500) DEFAULT NULL,
  `correctiveaction` varchar(500) DEFAULT NULL,
  `sicomment` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`nrmid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nearmissmaster`
--

INSERT INTO `nearmissmaster` (`nrmid`, `reportdate`, `vesselcode`, `imono`, `reportercode`, `rankcode`, `companycode`, `shiptype`, `shippostioncode`, `deptcode`, `personconcernedcode`, `concernedrankcode`, `yearofexp`, `rankyr`, `incidentdate`, `locationcode`, `categorycode`, `jobcode`, `nearmissdetail`, `incidentoutline`, `incidentintent`, `watswrong`, `escalate`, `share`, `ismarkedsignificant`, `crdate`, `active_status`, `currankid`, `formnumber`, `revnumber`, `cause1`, `cause2`, `casualfactor`, `rootcause`, `lessonlearnt`, `advisebydhead`, `advisebycaptain`, `correctiveaction`, `sicomment`) VALUES
('1', '2016-12-01 00:00:00', '', 'IMO No', 'Name', 'Rank', 'Company', 'Ship Type', 'string:At Anchorage', 'string:Deck', 'Name', 'Rank ', '', '1 Year - 2 Years', '2017-01-04 00:00:00', 'Cargo Hold', 'Deck machinery', 'Hot work', 'sample', 'what', 'was', 'have', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Following Procedures', 'N/A', 'Skill Level', 'root', 'this', 'advice', 'from', 'measure', NULL),
('2', '2016-12-01 00:00:00', '', 'TEst', 'TEst', 'TEst', 'TEst', 'TEst', 'string:STS', 'string:Deck', 'TEst', 'TEst', '', '2 Years - 3 Years', '2017-01-04 00:00:00', 'Ballast Tank', 'Cargo Equip', 'Cold work', 'TEst', 'TEst', 'TEst', 'TEst', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Following Procedures', 'Protective Systems', 'Skill Level', 'TEst', 'TEst', 'TEst', 'TEst', 'TEst', NULL),
('3', '2016-12-01 00:00:00', '', 'vasanth', 'vasanth', 'vasanth', 'vasanth', 'vasanth', 'string:Dock-yard', 'string:Deck', 'vasanth', 'vasanth', '', '2 Years - 3 Years', '2017-01-04 00:00:00', 'Bridge', 'Shafting', 'Cargo operation', 'vasanth', 'vasanth', 'vasanth', 'vasanth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Following Procedures', 'Protective Systems', 'Engineering /Design', 'vasanth', 'vasanth', 'vasanth', 'vasanth', 'vasanth', NULL),
('NM/ATR/2016/001', NULL, 'ATR', NULL, NULL, NULL, NULL, NULL, 'At Sea-Coastal/restricted waters', 'Deck', NULL, 'Master/add Master', '0 - 1 Year', '0 - 1 Year', NULL, NULL, 'Main Engine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('NM/ATR/2016/002', NULL, 'WGR', NULL, NULL, NULL, NULL, NULL, 'At Anchorage', 'Engine', NULL, 'Ch officer/1st offr/add ch.off', '1 Year - 2 Years', '1 Year - 2 Years', NULL, NULL, 'Main Turbine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nearmissmatrix`
--

CREATE TABLE IF NOT EXISTS `nearmissmatrix` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `riskfrom` varchar(5) DEFAULT NULL,
  `riskfactor` varchar(20) DEFAULT NULL,
  `consequence` int(11) DEFAULT NULL,
  `probablilty` int(11) DEFAULT NULL,
  `potentialrisk` varchar(10) DEFAULT NULL,
  `nrmid` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_nrmid_idx` (`nrmid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `nearmissmatrix`
--

INSERT INTO `nearmissmatrix` (`ID`, `riskfrom`, `riskfactor`, `consequence`, `probablilty`, `potentialrisk`, `nrmid`) VALUES
(1, 'Ship', 'Health', 1, 1, 'Very Low', 'NM/ATR/2016/001'),
(2, 'Shore', 'Health', 1, 1, 'Very Low', 'NM/ATR/2016/001'),
(3, 'Ship', 'Safety', 2, 2, 'Medium', 'NM/ATR/2016/001'),
(4, 'Shore', 'Safety', 3, 3, 'Very High', 'NM/ATR/2016/001'),
(5, 'Ship', 'Environment', 1, 1, 'Very Low', 'NM/ATR/2016/001'),
(6, 'Shore', 'Environment', 1, 1, 'Very Low', 'NM/ATR/2016/001'),
(7, 'Ship', 'Property', 3, 3, 'Very High', 'NM/ATR/2016/002'),
(8, 'Shore', 'Property', 2, 2, 'Medium', 'NM/ATR/2016/002'),
(9, 'Ship', 'Reputation', 3, 3, 'Very high', 'NM/ATR/2016/002'),
(10, 'Shore', 'Reputation', 1, 1, 'Very Low', 'NM/ATR/2016/001');

-- --------------------------------------------------------

--
-- Table structure for table `nrmwfhistory`
--

CREATE TABLE IF NOT EXISTS `nrmwfhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nrmid` varchar(30) DEFAULT NULL,
  `userid` varchar(45) DEFAULT NULL,
  `rankid` varchar(10) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `upddate` datetime DEFAULT NULL,
  `formstatus` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_nrmid3_idx` (`nrmid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `nrmwfhistory`
--


-- --------------------------------------------------------

--
-- Table structure for table `officestaffmaster`
--

CREATE TABLE IF NOT EXISTS `officestaffmaster` (
  `id` int(11) DEFAULT NULL,
  `staffcode` varchar(10) DEFAULT NULL,
  `staffname` varchar(30) DEFAULT NULL,
  `nationality` varchar(20) DEFAULT NULL,
  `emailid` varchar(30) DEFAULT NULL,
  `active_status` varchar(5) DEFAULT NULL,
  `cruser` varchar(10) DEFAULT NULL,
  `crdate` datetime DEFAULT NULL,
  `upduser` varchar(10) DEFAULT NULL,
  `upddate` datetime DEFAULT NULL,
  `rank` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `officestaffmaster`
--


-- --------------------------------------------------------

--
-- Table structure for table `portmaster`
--

CREATE TABLE IF NOT EXISTS `portmaster` (
  `PortCode` varchar(5) NOT NULL,
  `PortName` varchar(150) DEFAULT NULL,
  `CountryCode` varchar(5) DEFAULT NULL,
  `AreaCode` varchar(5) DEFAULT NULL,
  `region` varchar(5) DEFAULT NULL,
  `PortType` char(1) DEFAULT NULL,
  `Latitude` double DEFAULT NULL,
  `Longitude` double DEFAULT NULL,
  `Hemisphere` char(1) DEFAULT NULL,
  `Meridian` char(1) DEFAULT NULL,
  `CrDate` datetime DEFAULT NULL,
  `CrUsr` varchar(15) DEFAULT NULL,
  `upddate` datetime DEFAULT NULL,
  `updusr` varchar(15) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`PortCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portmaster`
--

INSERT INTO `portmaster` (`PortCode`, `PortName`, `CountryCode`, `AreaCode`, `region`, `PortType`, `Latitude`, `Longitude`, `Hemisphere`, `Meridian`, `CrDate`, `CrUsr`, `upddate`, `updusr`, `status`) VALUES
('555R5', 'chennai5656', 'QA', 'ASIA', 'INSC', 'P', 144.100006103516, 155, 'N', 'E', '2015-03-10 10:19:00', 'antony', '2015-03-23 10:19:00', 'TestUser', 'A'),
('555RT', 'sdfagd test121212', 'QA', 'CAME', 'FEST', 'P', 234, 234, 'N', 'E', '2015-03-18 11:03:00', 'TestUser', '2015-04-30 10:06:00', 'antony', 'A'),
('ABCDE', 'test port', 'qa', 'AFYU', 'CAMA', 'P', 6, 66, 'N', 'W', '2011-02-25 11:20:00', 'sankar', '2015-03-10 09:43:00', 'antony', 'A'),
('ABHJH', 'AEJEA', 'AM', 'ASIA', 'BLKS', 'P', 5, 8, 'N', 'E', '2014-12-19 16:51:00', 'antony', '2015-03-18 17:40:00', 'TestUser', 'A'),
('AD001', 'Santa Coloma, Andorra', 'AG', 'MEDT', 'WMED', 'I', 42.2999992370606, 1.29999995231628, 'N', 'E', NULL, NULL, '2015-03-19 11:12:00', 'TestUser', 'A'),
('AE002', 'MUSSAFAH,(ABU DHABI), UNITED ARAB EMIRATES', 'QA', 'MEST', 'AGLF', 'P', 24.2299995422363, 54.2999992370606, 'N', 'E', NULL, NULL, '2015-05-06 14:44:00', 'TestUser', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `rankmaster`
--

CREATE TABLE IF NOT EXISTS `rankmaster` (
  `rankcode` varchar(10) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rankdesc` varchar(100) DEFAULT NULL,
  `cruser` varchar(10) DEFAULT NULL,
  `crdate` datetime DEFAULT NULL,
  `upuser` varchar(10) DEFAULT NULL,
  `update` datetime DEFAULT NULL,
  `active_status` varchar(2) DEFAULT NULL,
  `ranktype` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `rankmaster`
--

INSERT INTO `rankmaster` (`rankcode`, `id`, `rankdesc`, `cruser`, `crdate`, `upuser`, `update`, `active_status`, `ranktype`) VALUES
('R001', 1, 'Master', 'System', '2016-11-14 00:00:00', NULL, NULL, 'A', 'ship'),
('R002', 2, 'COFF', 'System', '2016-11-14 00:00:00', NULL, NULL, 'A', 'ship'),
('R003', 3, 'ADD. CH OFF', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL, 'A', 'ship'),
('R004', 4, '2 OFF', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL, 'A', 'ship'),
('R005', 5, '3 OFF', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL, 'A', 'ship'),
('R006', 6, '4 0FF', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL, 'A', 'ship'),
('R007', 7, 'Cheif Engineer', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL, 'A', 'ship'),
('R008', 8, '1 AE', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL, 'A', 'ship'),
('R009', 9, '2 AE', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL, 'A', 'ship'),
('R010', 10, '3 AE', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL, 'A', 'ship'),
('R011', 11, '4 AE', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL, 'A', 'ship'),
('R012', 12, 'EL OFF', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL, 'A', 'ship'),
('R013', 13, 'FTR', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL, 'A', 'ship'),
('R014', 14, 'BOSUN', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL, 'A', 'ship'),
('R015', 15, 'PUMPMAN', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL, 'A', 'ship'),
('R016', 16, 'AB-1', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL, 'A', 'ship'),
('R017', 17, 'AB-2', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL, 'A', 'ship'),
('R018', 18, 'AB-3', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL, 'A', 'ship'),
('R019', 19, 'OS1', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL, 'A', 'ship'),
('R020', 20, 'OS2', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL, 'A', 'ship'),
('R021', 21, 'OS3', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL, 'A', 'ship'),
('R022', 22, 'OILER1', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL, 'A', 'ship'),
('R023', 23, 'OILER2', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL, 'A', 'ship'),
('R024', 24, 'WPR1', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL, 'A', 'ship'),
('R025', 25, 'WPR2', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL, 'A', 'ship'),
('R026', 26, 'CH COOK', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL, 'A', 'ship'),
('R027', 27, 'MSMN1', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL, 'A', 'ship'),
('R028', 28, 'MSMN2', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL, 'A', 'ship'),
('R029', 29, 'CMSMGR', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL, 'A', 'shore'),
('R030', 30, 'Guest', 'SYSTEM', '2016-11-26 00:00:00', NULL, NULL, 'A', 'ship'),
('R031', 31, 'MSI', 'SYSTEM', '2016-11-27 00:00:00', NULL, NULL, 'A', 'shore');

-- --------------------------------------------------------

--
-- Table structure for table `rskinitialrisk`
--

CREATE TABLE IF NOT EXISTS `rskinitialrisk` (
  `hazardno` int(11) NOT NULL,
  `activity` varchar(100) DEFAULT NULL,
  `hazard` varchar(100) DEFAULT NULL,
  `effectsOfHazard` varchar(250) DEFAULT NULL,
  `controlmeasure` varchar(250) DEFAULT NULL,
  `Frequency` int(11) DEFAULT NULL,
  `Consequence` int(11) DEFAULT NULL,
  `risk` varchar(10) DEFAULT NULL,
  `rskid` varchar(40) DEFAULT NULL,
  `effects_of_hazard` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hazardno`),
  KEY `fk_ramaster_id` (`rskid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rskinitialrisk`
--

INSERT INTO `rskinitialrisk` (`hazardno`, `activity`, `hazard`, `effectsOfHazard`, `controlmeasure`, `Frequency`, `Consequence`, `risk`, `rskid`, `effects_of_hazard`) VALUES
(20, 'ee', NULL, 'test', 'ssss', 1, 1, 'AA', 'RA/ELSA/2016/012', NULL),
(21, 'ee', NULL, 'test', 'ssss', 1, 1, 'AA', 'RA/ELSA/2016/012', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rskmaster`
--

CREATE TABLE IF NOT EXISTS `rskmaster` (
  `formnumber` varchar(50) DEFAULT NULL,
  `rskid` varchar(40) NOT NULL,
  `revnumber` varchar(10) DEFAULT NULL,
  `revdate` datetime DEFAULT NULL,
  `vesselcode` varchar(4) DEFAULT NULL,
  `assessmentdate` datetime DEFAULT NULL,
  `category` varchar(60) DEFAULT NULL,
  `task` varchar(100) DEFAULT NULL,
  `locationcode` varchar(75) DEFAULT NULL,
  `permits` varchar(20) DEFAULT NULL,
  `eqpused` varchar(100) DEFAULT NULL,
  `personrank` varchar(25) DEFAULT NULL,
  `headrank` varchar(25) DEFAULT NULL,
  `hazardcount` int(11) DEFAULT NULL,
  `companycomment` varchar(500) DEFAULT NULL,
  `approvername` varchar(10) DEFAULT NULL,
  `approverrank` varchar(10) DEFAULT NULL,
  `approveddate` datetime DEFAULT NULL,
  `ReviewerName` varchar(10) DEFAULT NULL,
  `ReviewerRank` varchar(10) DEFAULT NULL,
  `Revieweddate` datetime DEFAULT NULL,
  `Submittedby` varchar(10) DEFAULT NULL,
  `submitdate` datetime DEFAULT NULL,
  `crdate` datetime DEFAULT NULL,
  `jobcommencedate` datetime DEFAULT NULL,
  `jobcompleteddate` datetime DEFAULT NULL,
  `isAdequate` char(1) DEFAULT NULL,
  `jobComments` varchar(500) DEFAULT NULL,
  `istemplate` char(1) DEFAULT 'N',
  `currankid` varchar(10) DEFAULT NULL,
  `active_status` char(1) DEFAULT NULL,
  `is_adequate` varchar(255) DEFAULT NULL,
  `job_comments` varchar(255) DEFAULT NULL,
  `reviewer_name` varchar(255) DEFAULT NULL,
  `reviewer_rank` int(11) DEFAULT NULL,
  PRIMARY KEY (`rskid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rskmaster`
--

INSERT INTO `rskmaster` (`formnumber`, `rskid`, `revnumber`, `revdate`, `vesselcode`, `assessmentdate`, `category`, `task`, `locationcode`, `permits`, `eqpused`, `personrank`, `headrank`, `hazardcount`, `companycomment`, `approvername`, `approverrank`, `approveddate`, `ReviewerName`, `ReviewerRank`, `Revieweddate`, `Submittedby`, `submitdate`, `crdate`, `jobcommencedate`, `jobcompleteddate`, `isAdequate`, `jobComments`, `istemplate`, `currankid`, `active_status`, `is_adequate`, `job_comments`, `reviewer_name`, `reviewer_rank`) VALUES
('1', ' RA/ELSA/2016/001', NULL, NULL, NULL, NULL, 'insert into engine room and machinery activities', NULL, 'Bridge', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, NULL, NULL, NULL),
('10', ' RA/ELSA/2016/002', NULL, NULL, NULL, NULL, 'Takeover vessel into management', NULL, 'Cargo machine room', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, NULL, NULL, NULL),
('11', ' RA/ELSA/2016/003', NULL, NULL, NULL, NULL, 'office tasks', NULL, 'Cargo Hold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, NULL, NULL, NULL),
('12', ' RA/ELSA/2016/004', NULL, NULL, NULL, NULL, 'Critical Equipment', NULL, 'Coffer dams/ Void spaces', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, NULL, NULL, NULL),
('13', ' RA/ELSA/2016/005', NULL, NULL, NULL, NULL, 'Management of Change', NULL, 'Scavenge space', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, NULL, NULL, NULL),
('14', ' RA/ELSA/2016/006', NULL, NULL, NULL, NULL, '', NULL, 'Ballast Tank', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, NULL, NULL, NULL),
('15', ' RA/ELSA/2016/007', NULL, NULL, NULL, NULL, '', NULL, 'CCR/ ECR/ Ship Office', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, NULL, NULL, NULL),
('16', ' RA/ELSA/2016/008', NULL, NULL, NULL, NULL, 'insert into engine room and machinery activities', NULL, 'Bridge', NULL, NULL, 'MASTER', 'MASTER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, NULL, NULL, NULL),
('17', ' RA/ELSA/2016/009', NULL, NULL, NULL, NULL, 'deck maintainence', NULL, 'CCR/ ECR/ Ship Office', NULL, NULL, 'COFF', 'COFF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, NULL, NULL, NULL),
('18', ' RA/ELSA/2016/010', NULL, NULL, NULL, NULL, 'bridge and navigation', NULL, 'Engine room', NULL, NULL, 'ADD. CH OFF', 'ADD. CH OFF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, NULL, NULL, NULL),
('19', ' RA/ELSA/2016/011', NULL, NULL, NULL, NULL, 'Containers- cargo and ballast operations', NULL, 'Galley / Pantry / Chamber', NULL, NULL, '2 OFF', '2 OFF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, NULL, NULL, NULL),
('100', 'KLQSMS-Y-C-01', '', NULL, '', NULL, '', '', '', '', '', '', '', 10, '', '', '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', 0),
('KLQSMS-Y-C-01', 'RA/ELSA/2016/012', NULL, '2016-11-10 17:07:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rskriskcontrol`
--

CREATE TABLE IF NOT EXISTS `rskriskcontrol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Hazard No` int(11) DEFAULT NULL,
  `controltype` varchar(10) DEFAULT NULL,
  `controlmeasure` varchar(250) DEFAULT NULL,
  `frequency` int(11) DEFAULT NULL,
  `consequence` int(11) DEFAULT NULL,
  `risk level` varchar(10) DEFAULT NULL,
  `targetdate` date DEFAULT NULL,
  `rskid` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_new_rsk_idx` (`Hazard No`),
  KEY `FK_new_rsk1_idx` (`rskid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rskriskcontrol`
--


-- --------------------------------------------------------

--
-- Table structure for table `rskwfhistory`
--

CREATE TABLE IF NOT EXISTS `rskwfhistory` (
  `id` int(11) NOT NULL,
  `rskid` varchar(30) DEFAULT NULL,
  `userid` varchar(45) DEFAULT NULL,
  `rankid` varchar(10) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `upddate` datetime DEFAULT NULL,
  `formstatus` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_rski-Masd_idx` (`rskid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rskwfhistory`
--


-- --------------------------------------------------------

--
-- Table structure for table `safetycommittee`
--

CREATE TABLE IF NOT EXISTS `safetycommittee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `safid` varchar(40) DEFAULT NULL,
  `rankid` varchar(20) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `signpath` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_safid10_idx` (`safid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `safetycommittee`
--


-- --------------------------------------------------------

--
-- Table structure for table `safetyconcern`
--

CREATE TABLE IF NOT EXISTS `safetyconcern` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `safid` varchar(40) DEFAULT NULL,
  `action` varchar(200) DEFAULT NULL,
  `targetdate` datetime DEFAULT NULL,
  `safetyconcern` varchar(200) DEFAULT NULL,
  `concernstatus` char(1) DEFAULT NULL,
  `assigntouser` varchar(40) DEFAULT NULL,
  `assigntorank` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_safmeetingmaster_safidcon_idx` (`safid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `safetyconcern`
--


-- --------------------------------------------------------

--
-- Table structure for table `safetydrill`
--

CREATE TABLE IF NOT EXISTS `safetydrill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `safid` varchar(40) DEFAULT NULL,
  `drillname` varchar(50) DEFAULT NULL,
  `drilldate` datetime DEFAULT NULL,
  `location` varchar(20) DEFAULT NULL,
  `latlong` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_safmeetingmaster_safid_idx` (`safid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `safetydrill`
--


-- --------------------------------------------------------

--
-- Table structure for table `safetymeetingmaster`
--

CREATE TABLE IF NOT EXISTS `safetymeetingmaster` (
  `safid` varchar(40) NOT NULL,
  `formnumber` varchar(50) DEFAULT NULL,
  `revnumber` varchar(10) DEFAULT NULL,
  `revdate` datetime DEFAULT NULL,
  `vesselcode` varchar(10) DEFAULT NULL,
  `safetymeetingdate` datetime DEFAULT NULL,
  `meetingtype` char(1) DEFAULT NULL,
  `ofcattendstatus` char(1) DEFAULT NULL,
  `officeattendees` varchar(200) DEFAULT NULL,
  `nonattendees` varchar(200) DEFAULT NULL,
  `isReviewed` char(1) DEFAULT NULL,
  `hypochloritedate` datetime DEFAULT NULL,
  `PPM` float DEFAULT NULL,
  `circular` varchar(3000) DEFAULT NULL,
  `findchecklist` varchar(2000) DEFAULT NULL,
  `findaudit` varchar(2000) DEFAULT NULL,
  `newamendment` varchar(2000) DEFAULT NULL,
  `reviewhealth` varchar(2000) DEFAULT NULL,
  `reviewcomplaints` varchar(2000) DEFAULT NULL,
  `reviewrisk` varchar(2000) DEFAULT NULL,
  `active_status` varchar(5) DEFAULT NULL,
  `crdate` datetime DEFAULT NULL,
  `generalcomments` varchar(200) DEFAULT NULL,
  `portsidedate` datetime DEFAULT NULL,
  `portsideloccode` varchar(10) DEFAULT NULL,
  `starsidedate` datetime DEFAULT NULL,
  `starsideloccode` varchar(10) DEFAULT NULL,
  `crhid` varchar(40) DEFAULT NULL,
  `drrid` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`safid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `safetymeetingmaster`
--

INSERT INTO `safetymeetingmaster` (`safid`, `formnumber`, `revnumber`, `revdate`, `vesselcode`, `safetymeetingdate`, `meetingtype`, `ofcattendstatus`, `officeattendees`, `nonattendees`, `isReviewed`, `hypochloritedate`, `PPM`, `circular`, `findchecklist`, `findaudit`, `newamendment`, `reviewhealth`, `reviewcomplaints`, `reviewrisk`, `active_status`, `crdate`, `generalcomments`, `portsidedate`, `portsideloccode`, `starsidedate`, `starsideloccode`, `crhid`, `drrid`) VALUES
('SR/ATR/2016/001', 'KLQSMS-Y-C-10', NULL, NULL, 'ATR', '2016-11-10 00:00:00', 'M', 'Y', NULL, 'E001', 'Y', '2016-11-10 00:00:00', 2, 'DISCREPANCY of Location of 45L fire extinguisher on 4th deck in engine room', 'Items pointed out by Master during his inspection which will be included in vessel taking over condition report attending on priority basis.', 'NA', 'Items pointed out by Master during his inspection which will be included in vessel taking over condition report attending on priority basis.', '''On-board Health and Hygiene  and the living condition in the accommodation and working environment on board', 'NA', 'NA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `safetymeetingtopics`
--

CREATE TABLE IF NOT EXISTS `safetymeetingtopics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `safid` varchar(40) DEFAULT NULL,
  `topiccode` varchar(50) DEFAULT NULL,
  `topicdetail` varchar(3000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_safid1_idx` (`safid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `safetymeetingtopics`
--


-- --------------------------------------------------------

--
-- Table structure for table `safetyoffice`
--

CREATE TABLE IF NOT EXISTS `safetyoffice` (
  `id` int(11) NOT NULL,
  `safid` varchar(40) DEFAULT NULL,
  `generalsafety` varchar(200) DEFAULT NULL,
  `drillfeedback` varchar(200) DEFAULT NULL,
  `healthissue` varchar(200) DEFAULT NULL,
  `crewcomplaint` varchar(200) DEFAULT NULL,
  `datereviewed` datetime DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `rankid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_safmeetingmaster_safoffice_idx` (`safid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `safetyoffice`
--


-- --------------------------------------------------------

--
-- Table structure for table `safetyoutstanding`
--

CREATE TABLE IF NOT EXISTS `safetyoutstanding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `safid` varchar(40) DEFAULT NULL,
  `ossafid` varchar(40) DEFAULT NULL,
  `outstandingitems` varchar(100) DEFAULT NULL,
  `targetdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_safmeetingmaster_SO_idx` (`safid`),
  KEY `FK_safetymeetingmaster_oss_idx` (`ossafid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `safetyoutstanding`
--


-- --------------------------------------------------------

--
-- Table structure for table `safetyrecord`
--

CREATE TABLE IF NOT EXISTS `safetyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `safid` varchar(40) DEFAULT NULL,
  `recordtype` varchar(30) DEFAULT NULL,
  `injurydate` datetime DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `rankid` varchar(20) DEFAULT NULL,
  `injurydetail` varchar(200) DEFAULT NULL,
  `treatment` varchar(200) DEFAULT NULL,
  `losttimeinjury` float DEFAULT NULL,
  `islostitmeinjury` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Safetymeetingmaster_rec_idx` (`safid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `safetyrecord`
--

INSERT INTO `safetyrecord` (`id`, `safid`, `recordtype`, `injurydate`, `name`, `rankid`, `injurydetail`, `treatment`, `losttimeinjury`, `islostitmeinjury`) VALUES
(1, 'SR/ATR/2016/001', 'injuries', '2016-11-13 00:00:00', 'John', 'master', 'leg', 'fracture', 20, NULL),
(2, 'SR/ATR/2016/001', 'Dental', '2016-11-10 00:00:00', 'John', 'master', 'tooth', 'root canal', 10, NULL),
(3, 'SR/ATR/2016/001', 'illness', '2016-11-09 00:00:00', 'John', 'master', 'fever', 'viral', 30, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `safetytopicmaster`
--

CREATE TABLE IF NOT EXISTS `safetytopicmaster` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topiccode` varchar(10) DEFAULT NULL,
  `topicdetail` varchar(45) DEFAULT NULL,
  `active_status` varchar(2) DEFAULT NULL,
  `cruser` varchar(10) DEFAULT NULL,
  `crdate` datetime DEFAULT NULL,
  `upduser` varchar(10) DEFAULT NULL,
  `upddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `safetytopicmaster`
--

INSERT INTO `safetytopicmaster` (`id`, `topiccode`, `topicdetail`, `active_status`, `cruser`, `crdate`, `upduser`, `upddate`) VALUES
(1, 'T001', 'enviroment and awaremness', 'A', NULL, NULL, NULL, NULL),
(2, 'T002', 'self health', 'A', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `safetytraining`
--

CREATE TABLE IF NOT EXISTS `safetytraining` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `safid` varchar(40) DEFAULT NULL,
  `trainingtype` varchar(20) DEFAULT NULL,
  `training` varchar(200) DEFAULT NULL,
  `trainingdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_safetytraining_id` (`safid`),
  KEY `ix_safetytraining1_id` (`safid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `safetytraining`
--


-- --------------------------------------------------------

--
-- Table structure for table `safwfhistory`
--

CREATE TABLE IF NOT EXISTS `safwfhistory` (
  `id` int(11) NOT NULL,
  `safid` varchar(30) DEFAULT NULL,
  `userid` varchar(45) DEFAULT NULL,
  `rankid` varchar(10) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `upddate` datetime DEFAULT NULL,
  `formstatus` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_nrmid5_idx` (`safid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `safwfhistory`
--


-- --------------------------------------------------------

--
-- Table structure for table `shippositionmaster`
--

CREATE TABLE IF NOT EXISTS `shippositionmaster` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shippositioncode` varchar(10) DEFAULT NULL,
  `shippositiondesc` varchar(50) DEFAULT NULL,
  `active_status` varchar(2) DEFAULT NULL,
  `cruser` varchar(10) DEFAULT NULL,
  `crdate` datetime DEFAULT NULL,
  `upduser` varchar(10) DEFAULT NULL,
  `upddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `shippositionmaster`
--

INSERT INTO `shippositionmaster` (`id`, `shippositioncode`, `shippositiondesc`, `active_status`, `cruser`, `crdate`, `upduser`, `upddate`) VALUES
(1, 'SP001', 'At Sea-Coastal/restricted waters', 'A', 'User1', '2016-11-14 00:00:00', 'user2', '2016-11-15 00:00:00'),
(2, 'SP002', 'AT ANCHORAGE', 'A', 'SYSTEM', '2016-11-15 00:00:00', NULL, NULL),
(3, 'SP003', 'AT TERMINAL', 'A', 'SYSTEM', '2016-11-15 00:00:00', NULL, NULL),
(4, 'SP004', 'Dock-yard', 'A', 'SYSTEM', '2016-11-15 00:00:00', NULL, NULL),
(5, 'SP005', 'STS', 'A', 'SYSTEM', '2016-11-15 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `terminals`
--

CREATE TABLE IF NOT EXISTS `terminals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `terminalCode` varchar(10) NOT NULL,
  `terminalName` varchar(50) DEFAULT NULL,
  `PortCode` varchar(5) NOT NULL,
  `berths` int(11) DEFAULT NULL,
  `cranes` int(11) DEFAULT NULL,
  `draft` double DEFAULT NULL,
  `airdraft` double DEFAULT NULL,
  `pilotin` double DEFAULT NULL,
  `pilotout` double DEFAULT NULL,
  `cranespeed` double DEFAULT NULL,
  `vslClosing` int(11) DEFAULT NULL,
  `Not_working` double DEFAULT NULL,
  `cruser` varchar(20) DEFAULT NULL,
  `crdate` datetime DEFAULT NULL,
  `chguser` varchar(20) DEFAULT NULL,
  `chgdate` datetime DEFAULT NULL,
  `active_status` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=927 ;

--
-- Dumping data for table `terminals`
--

INSERT INTO `terminals` (`id`, `terminalCode`, `terminalName`, `PortCode`, `berths`, `cranes`, `draft`, `airdraft`, `pilotin`, `pilotout`, `cranespeed`, `vslClosing`, `Not_working`, `cruser`, `crdate`, `chguser`, `chgdate`, `active_status`) VALUES
(1, 'AEJEADPA00', 'DUBAI PORT AUTHORITY', 'AEJEA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(2, 'AEKLFGCL00', 'GULFTAINER  CO LTD', 'AEKLF', 1, 1, 1, 11, 1, 1, 1, 18, 1, NULL, NULL, 'Tamil               ', '2005-12-02 16:48:00', 'A'),
(3, 'AEAUHMNZ00', 'SEA PORT AUTHORITY -MINA ZAYED                    ', 'AEAUH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(5, 'BHBAHMNS00', 'MINA SALMAN                                       ', 'BHBAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(8, 'CNCWNCCT00', 'CHIWAN CONTAINER TERMINAL', 'CNCWN', 13, 30, 12, 12, 3, 2, 50, 18, 0, NULL, NULL, 'Stephen.Hui         ', '2006-05-17 15:17:51', 'A'),
(9, 'CNXNGCSX00', 'CSX ORIENT (TIANJIN) CONTAINER TERMINAL', 'CNXNG', 10, 12, 12, 12, 1, 1, 30, 18, 1, NULL, NULL, 'Stephen.Hui', '2006-06-09 01:41:59', 'A'),
(10, 'CNDLCDCT00', 'Dalian Container Terminal LTD.                    ', 'CNDLC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(11, 'CNXMNHTN00', 'HAI TIAN Container Terminal                       ', 'CNXMN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(13, 'CNNGBNBC00', 'NINGBO BEILUN CONTAINER TERMINAL', 'CNNGB', 10, 25, 12, 12, 2, 2, 60, 18, 0, NULL, NULL, 'Stephen.Hui         ', '2006-05-17 15:08:11', 'A'),
(14, 'CNTAOQCT00', 'QINGDAO QIANWAN CONTAINER TERMINAL (QQCT)         ', 'CNTAO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(15, 'CNSHKSCT00', 'SHEKOU CONTAINER TERMINALS LTD                    ', 'CNSHK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(16, 'CNSHAWGQ04', 'WGQ PHASE IV', 'CNSHA', 10, 30, 12, 12, 8, 5, 70, 18, 5, NULL, NULL, 'Stephen.Hui', '2006-06-02 01:46:20', 'A'),
(17, 'CNXMNXYU00', 'XIAMEN XIANGYU QUAY CO., LTD                      ', 'CNXMN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(18, 'CNYTNYCT00', 'YANTIAN INTERNATIONAL CONTAINER TERMINALS LTD     ', 'CNYTN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(22, 'EGDAMDCT00', 'DAMEITTA CONTAINER HANDLING TERMINAL              ', 'EGDAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(23, 'EGPSDPSD00', 'PORT SAID CONTAINERS AND CARGO HANDLING CO.       ', 'EGPSD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(26, 'FRFOSEFT00', 'EUROFOS TERMINAL A CONTENEURS                     ', 'FRFOS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(27, 'FRLEHGMP00', 'GENERALE DE MANUTENTION PORTUAIRE                 ', 'FRLEH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(28, 'FRLEHTDN00', 'Terminaux de Normandie ( LE HAVRE )               ', 'FRLEH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(29, 'GBFXTFDR00', 'THE FELIXSTOWE DOCK & RAILWAY CO                  ', 'GBFXT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(30, 'GBSOUSHT00', 'SOUTHAMPTON TERMINAL', 'GBSOU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(31, 'GRPIRPCT00', 'PIRAEUS CONTAINER TERMINAL                        ', 'GRPIR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(32, 'HKHKGCMC00', 'China Merchants Container Services Ltd            ', 'HKHKG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(33, 'HKHKGFLT00', 'FLOATA CONSORTIUM                                 ', 'HKHKG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(35, 'HKHKGMTL00', 'MODERN TERMINALS LTD                              ', 'HKHKG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(36, 'IDJKTUTC02', 'UTC2 JICT(JAKARTA INT CONT TERMINAL               ', 'IDJKT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(41, 'IRBNDERM00', 'EUROMIN                                           ', 'IRBND', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(42, 'ITAOIACT00', 'ANCONA CONTAINER TERMINAL                         ', 'ITAOI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(43, 'ITNAPCNT00', 'CONSORZIO NAPOLETANO TERMINAL CTRS                ', 'ITNAP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(44, 'ITSPELSC00', 'LA SPEZIA Container Terminal', 'ITSPE', 4, 7, 14, 24, 2, 2, 30, 18, 2, NULL, NULL, 'eshwaran', '2008-01-02 11:12:21', 'A'),
(45, 'ITGITMCT00', 'MEDCENTER CONTAINER TERMINAL                      ', 'ITGIT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(46, 'ITLIVTDT00', 'TERMINAL DARSENA TOSCANA SRL                      ', 'ITLIV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(47, 'ITTRSTIC00', 'TICT S.P.A                                        ', 'ITTRS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(48, 'ITVCEVCT00', 'VECON CONTAINER TERMINAL                          ', 'ITVCE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(49, 'ITGOAVTE00', 'VOLTRI TERMINAL EUROPA SPA                        ', 'ITGOA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(52, 'KRPUSKEC00', 'K.E.C. BUSAN CONTAINER TERMINAL                   ', 'KRPUS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(53, 'KRPUSKCT00', 'HANJIN SHIPPING KAMCHEON CONTAINER TERMINAL', 'KRPUS', 7, 2, 12, 54, 1, 1, 30, 18, 1, NULL, NULL, 'TestUser            ', '2006-02-14 16:58:38', 'A'),
(54, 'KRPUSHBC00', 'HUTCHISON BUSAN CONTAINER TERMINAL', 'KRPUS', 10, 12, 12, 12, 1, 1, 40, 18, 1, NULL, NULL, 'Stephen.Hui', '2006-06-23 16:35:47', 'A'),
(55, 'KWKWISWC00', 'SHUWAIKH CONTAINER TERMINAL                       ', 'KWKWI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(61, 'MYPENNBC00', 'NBCT- New Butterworth Container terminal', 'MYPEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(62, 'MYPKGNTP00', 'NORTHPORT', 'MYPKG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(65, 'OMMCTSOG00', 'Sultan Qaboos Container Terminal', 'OMMCT', 2, 6, 12, 40, 3, 2, 15, 18, 2, NULL, NULL, 'Ben.lee', '2006-08-31 01:54:36', 'A'),
(66, 'PHMNLMNH00', 'Manila North Harbour', 'PHMNL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(67, 'PKKHIETW00', 'EAST WHARF, KARACHI', 'PKKHI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(68, 'PKKHIKIC00', 'KARACHI INTERNATIONAL CONTAINER TERMINAL LTD.,    ', 'PKKHI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(69, 'PKKHIQIC00', 'QASIM INTERNATIONAL CONTAINER TERMINAL PAKISTAN LI', 'PKKHI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(70, 'SADMNDPA00', 'DAMMAM PORT AUTHORITY                             ', 'SADMN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(71, 'SAJEDJIP00', 'DP WORLD MIDDLE EAST LIMITED', 'SAJED', 4, 4, 13, 30, 2, 2, 30, 18, 1, NULL, NULL, 'y.doctor', '2008-04-10 14:21:19', 'A'),
(72, 'SGSINJRP00', 'JURONG PORT PTE LTD                               ', 'SGSIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(77, 'THBKKPAT00', 'Bangkok, PAT terminal', 'THBKK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(78, 'THLCHTIP00', 'Tips 4 (LCB 4), Laem Chabang', 'THLCH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(80, 'TWKHHHTL00', 'HANJIN TAIWAN LOGISTICS                           ', 'TWKHH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 'A'),
(408, 'QADOHDHT00', 'Doha Terminal', 'QADOH', 1, 3, 2, 3, 2, 1, 10, 18, 12, 'Tamil               ', '2005-12-21 12:10:21', NULL, NULL, 'A'),
(410, 'IDSUBTPS00', 'indonisia', 'IDSUB', 0, 0, 0, 0, 0, 0, 0, 18, 0, 'Kar-00              ', '2005-12-26 18:56:04', NULL, NULL, 'A'),
(420, 'JMKINKCT00', 'Kingston , Jama', 'JMKIN', 10, 1, 1, 1, 1, 1, 1, 18, 0, 'TestUser            ', '2006-01-03 16:25:55', NULL, NULL, 'A'),
(422, 'INMAACCT00', 'CHENNAI CONTAINER TERMINAL', 'INMAA', 1, 1, 11, 1, 1, 1, 1, 18, 11, 'TestUser            ', '2006-01-06 12:52:51', 'Stephen.Hui         ', '2006-05-15 12:05:03', 'A'),
(427, 'INNSAJNP00', 'JAWAHARAL NEHRU PORT TERMINAL', 'INNSA', 4, 8, 22, 12, 1, 1, 20, NULL, 1, 'TestUser            ', '2006-02-03 18:52:52', 'Stephen.Hui         ', '2006-05-17 15:20:33', 'A'),
(430, 'VNSGNKHT00', 'Hochimin', 'VNSGN', 3, 6, 13, 12, 1, 1, 40, NULL, 1, 'TestUser            ', '2006-02-14 16:30:09', 'W.Cheung', '2007-09-04 17:03:26', 'A'),
(433, 'KRPUSPEC00', 'Korea Express Busan Container Terminal', 'KRPUS', 4, 6, 12, 60, 1, 1, 60, NULL, 1, 'TestUser            ', '2006-02-18 16:39:55', 'debjit', '2009-06-05 14:21:52', 'A'),
(437, 'INNSANSI00', 'NHAVA SHEVA INTERNATIONAL CONTAINER TERMINAL', 'INNSA', 5, 12, 12, 12, 1, 1, 25, NULL, 1, 'TestUser            ', '2006-03-24 07:30:43', 'Stephen.Hui         ', '2006-05-17 15:19:09', 'A'),
(442, 'CNSHAWGQ02', 'WGQ PHASE II', 'CNSHA', 6, 16, 13, 6, 8, 5, 70, NULL, 1.5, 'esl                 ', '2006-04-03 17:54:06', 'Stephen.Hui         ', '2006-05-17 15:12:52', 'A'),
(443, 'CNNGBBSC00', 'NINGBO BEILUN SECOND CONTAINER TERMINAL', 'CNNGB', 6, 16, 13, 13, 2, 2, 70, NULL, 1, 'esl                 ', '2006-04-03 17:54:42', 'Stephen.Hui         ', '2006-05-17 15:08:52', 'A'),
(444, 'INTUTPST00', 'PSA SICAL Tuticorin Container Terminal', 'INTUT', 2, 5, 12, 12, 1, 1, 60, NULL, 1, 'esl                 ', '2006-04-04 12:05:30', 'Stephen.Hui         ', '2006-05-17 15:06:44', 'A'),
(450, 'LKCMBJCT00', 'JAYA CONTAINER TERMINAL', 'LKCMB', 10, 15, 14, 13, 1, 1, 55, NULL, 2, 'TestUser            ', '2006-04-18 11:21:45', 'Stephen.Hui', '2006-05-22 19:28:39', 'A'),
(452, 'INNSAGTI00', 'GATEWAY TERMINALS INDIA', 'INNSA', 10, 15, 14, 0, 2, 2, 55, NULL, 2, 'TestUser            ', '2006-04-18 11:29:13', 'Stephen.Hui         ', '2006-05-17 15:19:28', 'A'),
(455, 'ESBCNTCB00', 'TERMINAL DE CONTENIDORS DE BARCELONA', 'ESBCN', 10, 15, 14, 12, 1, 1, 65, NULL, 1, 'TestUser            ', '2006-04-18 11:50:56', 'Stephen.Hui', '2006-06-23 21:25:27', 'A'),
(456, 'USNYCRHC00', 'RED HOOK CONTAINER TERMINAL', 'USNYC', 10, 15, 14, 12, 2, 2, 85, NULL, 1, 'TestUser            ', '2006-04-18 11:54:16', 'Stephen.Hui         ', '2006-05-17 15:23:09', 'A'),
(459, 'INMUNMCT00', 'MUNDRA INTERNATIONAL CONTAINER TERMINAL', 'INMUN', 10, 15, 14, 12, 2, 2, 50, NULL, 2, 'TestUser            ', '2006-04-18 12:00:46', 'Stephen.Hui         ', '2006-05-17 15:22:45', 'A'),
(460, 'CNSHAYSH00', 'YANGSHAN TERMINAL', 'CNSHA', 10, 15, 12, 11, 1, 1, 45, NULL, 2, 'TestUser            ', '2006-04-18 18:58:50', 'Stephen.Hui', '2006-06-02 01:45:47', 'A'),
(461, 'HKHKGHIT00', 'HIT', 'HKHKG', 10, 15, 14, 12, 2, 2, 50, NULL, 1, 'TestUser            ', '2006-04-18 18:59:33', NULL, NULL, 'A'),
(462, 'SGSINPSA00', 'PSA', 'SGSIN', 10, 15, 14, 12, 2, 2, 50, NULL, 1, 'TestUser            ', '2006-04-18 18:59:48', NULL, NULL, 'A'),
(463, 'MYPKGWTP00', 'WEST PORT', 'MYPKG', 10, 15, 14, 12, 2, 2, 50, NULL, 1, 'TestUser            ', '2006-04-18 19:00:01', NULL, NULL, 'A'),
(464, 'BDCGPCGP00', 'CGP - CY', 'BDCGP', 2, 4, 12, 12, 2, 2, 20, NULL, 12, 'TestUser            ', '2006-04-19 10:48:58', 'ben.lee', '2006-08-20 15:53:48', 'A'),
(465, 'AESHJSHJ00', 'Sharjah terminal', 'AESHJ', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'TestUser            ', '2006-04-21 17:10:26', NULL, NULL, 'A'),
(466, 'INCOKRGT00', 'COCHIN CONTAINER TERMINAL', 'INCOK', 4, 7, 12, 12, 1, 1, 35, NULL, 2, 'TestUser            ', '2006-04-23 23:54:17', 'Stephen.Hui         ', '2006-05-17 16:34:09', 'A'),
(468, 'EGCANOPS00', 'CANAL OPERATIONAL', 'EGCAN', 0, 0, 14, 0, 0, 0, 0, NULL, 0, 'TestUser            ', '2006-04-24 11:40:59', NULL, NULL, 'A'),
(469, 'EGSUZSUZ00', 'SUEZ CANAL', 'EGSUZ', 0, 0, 14, 0, 0, 0, 0, NULL, 0, 'TestUser            ', '2006-04-24 11:41:19', NULL, NULL, 'A'),
(470, 'BDMGLMGL00', 'MONGLA CONTAINER TERMINAL', 'BDMGL', 2, 5, 12, 0, 1, 1, 30, NULL, 1, 'TestUser            ', '2006-04-24 16:06:47', NULL, NULL, 'A'),
(471, 'MYPENPCT00', 'PENANG CONTAINER TERMINAL', 'MYPEN', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'TestUser            ', '2006-04-24 17:42:58', NULL, NULL, 'A'),
(478, 'USORFVIT00', 'PORTSMOUTH MARINE TERMINAL', 'USORF', 10, 20, 12, 12, 4, 4, 60, NULL, 1, 'ranjit              ', '2006-05-12 09:26:01', 'Stephen.Hui         ', '2006-05-17 15:24:07', 'A'),
(479, 'USCHSNCT00', 'NORTH CHARLESTON TERMINAL', 'USCHS', 12, 20, 12, 12, 3, 3, 50, NULL, 1, 'ranjit              ', '2006-05-12 09:27:15', 'Stephen.Hui         ', '2006-05-17 15:24:49', 'A'),
(480, 'INCCUCCU00', 'PORT OF CALCUTTA', 'INCCU', 2, 5, 12, 12, 1, 1, 30, NULL, 1, 'ranjit              ', '2006-05-12 10:28:07', NULL, NULL, 'A'),
(481, 'INHALHAL00', 'PORT OF HALDIA', 'INHAL', 2, 5, 12, 12, 1, 1, 30, NULL, 1, 'ranjit              ', '2006-05-12 10:32:53', NULL, NULL, 'A'),
(482, 'INPAVPAV00', 'PIPAVAV Container Terminal', 'INPAV', 2, 5, 12, 12, 1, 0, 30, NULL, 1, 'Stephen.Hui         ', '2006-05-15 14:44:58', 'ben.lee', '2008-01-02 10:11:50', 'A'),
(483, 'CNCWNMCT00', 'MAWAN CONTAINER TERMINAL', 'CNCWN', 8, 30, 12, 12, 3, 2, 50, NULL, 0, 'Stephen.Hui         ', '2006-05-17 15:17:25', NULL, NULL, 'A'),
(499, 'MYPGUPGU00', 'PORT OF PASIR GUDANG', 'MYPGU', 2, 5, 12, 12, 1, 1, 30, NULL, 1, 'Stephen.Hui', '2006-05-18 15:32:25', NULL, NULL, 'A'),
(500, 'AEPRADPA00', 'PORT RASHID, DUBAI', 'AEPRA', 2, 5, 12, 12, 1, 1, 30, NULL, 1, 'Stephen.Hui', '2006-05-19 11:00:46', NULL, NULL, 'A'),
(503, 'INTKDICD00', 'ICD TUGKLAKABAD', 'INTKD', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'Stephen.Hui', '2006-05-19 16:51:59', 'Stephen.Hui', '2006-05-19 16:52:56', 'A'),
(505, 'INHYDICD00', 'ICD HYDERABAD', 'INHYD', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'Stephen.Hui', '2006-05-19 16:53:49', NULL, NULL, 'A'),
(514, 'INNPRICD00', 'ICD NAGAPUR', 'INNPR', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'Stephen.Hui', '2006-05-19 17:00:19', NULL, NULL, 'A'),
(515, 'INPAPICD00', 'ICD PANIPAT', 'INPAP', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'Stephen.Hui', '2006-05-19 17:00:46', NULL, NULL, 'A'),
(516, 'INPNQICD00', 'ICD PUNE', 'INPNQ', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'Stephen.Hui', '2006-05-19 17:01:08', NULL, NULL, 'A'),
(517, 'TNTUNTUN00', 'PORT OF TUNIS', 'TNTUN', 1, 1, 12, 12, 1, 1, 30, NULL, 1, 'Stephen.Hui', '2006-05-19 20:46:48', NULL, NULL, 'A'),
(523, 'INIXYIXY00', 'PORT OF KANDLA', 'INIXY', 1, 1, 12, 12, 1, 1, 1, NULL, 1, 'Stephen.Hui', '2006-05-29 12:36:36', NULL, NULL, 'A'),
(524, 'MACASCAS00', 'PORT OF CASABLANCA', 'MACAS', 1, 1, 12, 12, 1, 1, 1, NULL, 1, 'Stephen.Hui', '2006-05-29 16:49:38', NULL, NULL, 'A'),
(525, 'DZALGALG00', 'PORT of ALGER', 'DZALG', 1, 1, 12, 12, 1, 1, 1, NULL, 1, 'Stephen.Hui', '2006-05-29 16:50:34', NULL, NULL, 'A'),
(530, 'INDRIICD00', 'ICD DADRI', 'INDRI', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'Stephen.Hui', '2006-06-02 12:06:11', NULL, NULL, 'A'),
(531, 'INREAICD00', 'ICD REWARI', 'INREA', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'Stephen.Hui', '2006-06-06 09:41:06', NULL, NULL, 'A'),
(532, 'INKNUICD00', 'ICD KANPUR', 'INKNU', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'Stephen.Hui', '2006-06-06 09:41:44', NULL, NULL, 'A'),
(533, 'INMERICD00', 'ICD MEERUT', 'INMER', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'Stephen.Hui', '2006-06-06 09:42:32', NULL, NULL, 'A'),
(534, 'INVNSICD00', 'ICD VARANASI', 'INVNS', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'Stephen.Hui', '2006-06-06 09:42:55', NULL, NULL, 'A'),
(535, 'PAONXCCT00', 'COLON CONTAINER TERMINAL', 'PAONX', 10, 12, 12, 12, 3, 3, 40, NULL, 3, 'Stephen.Hui', '2006-06-06 11:58:50', NULL, NULL, 'A'),
(536, 'JMKINGCT00', 'GORDON CAY TERMINAL', 'JMKIN', 10, 12, 12, 12, 3, 3, 40, NULL, 1, 'Stephen.Hui', '2006-06-06 12:00:18', 'debjit', '2007-02-14 11:55:21', 'A'),
(538, 'USMOBASP00', 'ALABAMA STATE PORT AUTHORITY', 'USMOB', 10, 12, 12, 12, 2, 2, 40, NULL, 1, 'Stephen.Hui', '2006-06-06 12:07:28', NULL, NULL, 'A'),
(539, 'USTPATPA00', 'HOOKERS POINT CONTAINER TERMINAL', 'USTPA', 2, 2, 12, 12, 2, 2, 40, NULL, 0, 'Stephen.Hui', '2006-06-06 12:16:44', 'stephen.hui', '2006-08-17 16:05:28', 'A'),
(540, 'INBWDICD00', 'ICD BHIWADI', 'INBWD', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'Stephen.Hui', '2006-06-06 12:29:24', NULL, NULL, 'A'),
(541, 'INMPRICD00', 'ICD MALANPUR', 'INMPR', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'Stephen.Hui', '2006-06-06 12:29:54', NULL, NULL, 'A'),
(544, 'USCOLCPG00', 'CONTAINER PORT GROUP COLUMBUS OHIO', 'USCMH', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'Stephen.Hui', '2006-06-06 17:19:57', NULL, NULL, 'A'),
(548, 'USLMSCPG00', 'CONTAINER PORT GROUP LOUISVILLE', 'USLMS', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'Stephen.Hui', '2006-06-06 17:22:26', NULL, NULL, 'A'),
(551, 'USSAVLPT00', 'LANPORT SAVANNAH', 'USSAV', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'Stephen.Hui', '2006-06-06 17:28:50', NULL, NULL, 'A'),
(552, 'USSAVCMC00', 'CONTAINER MAINTENANCE CORPORATION', 'USSAV', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'Stephen.Hui', '2006-06-06 17:31:02', NULL, NULL, 'A'),
(553, 'CNSHAWGQ01', 'WGQ PHASE I', 'CNSHA', 1, 1, 12, 12, 5, 5, 70, NULL, 5, 'Stephen.Hui', '2006-06-07 17:40:14', 'debjit.sen', '2006-06-28 18:12:38', 'A'),
(554, 'INGHRICD00', 'ICD HARSARU', 'INGHR', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'Stephen.Hui', '2006-06-08 18:56:56', NULL, NULL, 'A'),
(555, 'CNSHASCT01', 'SCT', 'CNSHA', 0, 0, 11, 0, 5, 5, 25, NULL, 0, 'ben.lee', '2006-06-09 20:20:25', NULL, NULL, 'A'),
(556, 'PKKHIPIC00', 'PICT', 'PKKHI', 0, 0, 10, 0, 3, 0, 20, NULL, 0, 'ben.lee', '2006-06-09 20:33:14', NULL, NULL, 'A'),
(557, 'PACBLCBL00', 'PANAMA CANAL 1', 'PACBL', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'Stephen.Hui', '2006-06-12 09:58:48', NULL, NULL, 'A'),
(558, 'PACANCAN00', 'PANAMA CANAL 2', 'PACAN', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'Stephen.Hui', '2006-06-12 09:59:15', NULL, NULL, 'A'),
(562, 'KRPUSCLP00', 'CENTRAL PIER', 'KRPUS', 5, 5, 10, 12, 1, 1, 1, NULL, 1, 'ben.lee', '2006-06-14 18:03:55', 'Stephen.Hui', '2006-06-23 16:31:39', 'A'),
(566, 'USLUICPG00', 'Container Port Group (Louisville)', 'USLUI', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'Stephen.Hui', '2006-06-16 11:32:54', NULL, NULL, 'A'),
(567, 'CNCGUCGU00', 'Changsu container terminal', 'CNCGU', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2006-06-19 15:06:29', NULL, NULL, 'A'),
(568, 'CNJIAJIA00', 'Jiangyin container terminal', 'CNJIA', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2006-06-19 15:06:59', NULL, NULL, 'A'),
(569, 'CNNKGNKG00', 'Nanjing container terminal', 'CNNKG', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2006-06-19 15:07:24', NULL, NULL, 'A'),
(570, 'CNNTGNTG00', 'Nantong container terminal', 'CNNTG', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2006-06-19 15:07:47', NULL, NULL, 'A'),
(571, 'CNYZHYZH00', 'Yangzhou container terminal', 'CNYZH', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2006-06-19 15:08:11', NULL, NULL, 'A'),
(572, 'CNZHEZHE00', 'Zhenjiang container terminal', 'CNZHE', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2006-06-19 15:08:31', NULL, NULL, 'A'),
(573, 'CNZJGZJG00', 'Zhangjiagang container terminal', 'CNZJG', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2006-06-19 15:08:54', NULL, NULL, 'A'),
(586, 'INCCUCPY00', 'PORT OF CALCUTTA - CPY', 'INCCU', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'Stephen.Hui', '2006-06-22 18:12:41', NULL, NULL, 'A'),
(587, 'INCCUNCP00', 'PORT OF CALCUTTA - NON-CPY', 'INCCU', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'Stephen.Hui', '2006-06-22 18:13:19', NULL, NULL, 'A'),
(588, 'LYTIPTIP00', 'PORT OF TRIPOLI', 'LYTIP', 4, 4, 12, 12, 1, 1, 20, NULL, 1, 'Stephen.Hui', '2006-06-23 15:55:23', NULL, NULL, 'A'),
(589, 'KRPUSPNC00', 'PUSAN NEW PORT', 'KRPUS', 10, 12, 12, 12, 1, 1, 40, NULL, 1, 'Stephen.Hui', '2006-06-23 16:30:58', NULL, NULL, 'A'),
(590, 'ESVLCTCV00', 'TERMINAL DE CONTENIDORS DE VALENCIA', 'ESVLC', 10, 12, 12, 12, 1, 1, 50, NULL, 1, 'Stephen.Hui', '2006-06-23 21:24:10', NULL, NULL, 'A'),
(592, 'IDBLWBLW00', 'BLW Container Terminal', 'IDBLW', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2006-06-26 23:29:42', NULL, NULL, 'A'),
(593, 'IDSRGSRG00', 'Semarang Container Terminal', 'IDSRG', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2006-06-26 23:30:26', NULL, NULL, 'A'),
(594, 'INCCUMHC00', 'MHC', 'INCCU', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'Stephen.Hui', '2006-06-27 14:48:40', NULL, NULL, 'A'),
(595, 'INKTUICD00', 'ICD KOTA', 'INKTU', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'Stephen.Hui', '2006-06-29 00:40:11', NULL, NULL, 'A'),
(596, 'USBALBAL00', 'SEAGIRT MARINE TERMINAL', 'USBAL', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2006-06-29 01:46:59', 'Stephen.Hui', '2006-07-28 06:05:06', 'A'),
(597, 'INVTZVTZ00', 'PORT OF VIZAG', 'INVTZ', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'Stephen.Hui', '2006-06-29 20:42:37', NULL, NULL, 'A'),
(599, 'VNDADDAD00', 'Da Nang Container Terminal', 'VNDAD', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2006-07-06 01:03:59', NULL, NULL, 'A'),
(600, 'VNHPHHPH00', 'Haiphong Container Terminal', 'VNHPH', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2006-07-06 01:04:36', NULL, NULL, 'A'),
(601, 'CNXMNXIC00', 'XIAMEN INTERNATIONAL CONTAINER TERMINAL', 'CNXMN', 10, 12, 12, 12, 1, 1, 30, NULL, 1, 'Stephen.Hui', '2006-07-20 22:37:09', NULL, NULL, 'A'),
(602, 'LKCMBSGT00', 'SOUTH ASIA GATEWAY TERMINAL', 'LKCMB', 0, 0, 14, 6, 2, 2, 40, NULL, 2, 'pravin.melwa', '2006-07-21 18:13:25', NULL, NULL, 'A'),
(603, 'CNYNTYNT00', 'PORT OF YANTAI', 'CNYNT', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2006-07-24 16:23:38', NULL, NULL, 'A'),
(604, 'CNLYGLYG00', 'PORT OF LIANYUNGANG', 'CNLYG', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2006-07-24 16:37:43', NULL, NULL, 'A'),
(605, 'TNRDSRDS00', 'PORT OF RADES', 'TNRDS', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2006-07-24 20:06:34', NULL, NULL, 'A'),
(607, 'USDETRMP00', 'DETROIT RAMP', 'USDET', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'Stephen.Hui', '2006-07-25 03:33:09', NULL, NULL, 'A'),
(608, 'USCHIRMP00', 'CHICAGO RAMP', 'USCHI', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'Stephen.Hui', '2006-07-25 03:33:30', NULL, NULL, 'A'),
(609, 'USMKCRMP00', 'KANSAS CITY RAMP', 'USMKC', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'Stephen.Hui', '2006-07-25 03:34:46', NULL, NULL, 'A'),
(610, 'USNYCRMP00', 'NEW YORK CITY RAMP', 'USNYC', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'Stephen.Hui', '2006-07-26 03:56:51', 'Stephen.Hui', '2006-07-26 04:20:18', 'A'),
(611, 'USATLRMP00', 'ATLANTA RAMP', 'USATL', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'Stephen.Hui', '2006-07-26 03:58:37', NULL, NULL, 'A'),
(612, 'USORFRMP00', 'NORFOLK RAMP', 'USORF', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'Stephen.Hui', '2006-07-26 04:19:24', NULL, NULL, 'A'),
(613, 'USCHSRMP00', 'CHARLESTON RAMP', 'USCHS', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'Stephen.Hui', '2006-07-26 04:19:53', NULL, NULL, 'A'),
(614, 'USBOSRLK00', 'BOSTON ROAD LINK', 'USBOS', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'Stephen.Hui', '2006-07-26 04:43:36', NULL, NULL, 'A'),
(615, 'USHSVRMP00', 'HUNTSVILLE RAMP', 'USHSV', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'Stephen.Hui', '2006-07-26 07:49:51', NULL, NULL, 'A'),
(616, 'USMEMRMP00', 'MEMPHIS RAMP', 'USMEM', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'Stephen.Hui', '2006-07-26 07:56:18', NULL, NULL, 'A'),
(617, 'CNFOCFOC00', 'PORT OF FUZHOU', 'CNFOC', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2006-07-26 19:42:43', NULL, NULL, 'A'),
(618, 'IDJKTUTC01', 'UTC1 (JICT 1)', 'IDJKT', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2006-07-27 12:22:33', 'W.Cheung', '2007-03-13 09:57:52', 'A'),
(619, 'USCVGRMP00', 'CINCINNATI RAMP', 'USCVG', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'Stephen.Hui', '2006-07-28 22:51:41', NULL, NULL, 'A'),
(620, 'USCLERMP00', 'CLEVELAND RAMP', 'USCLE', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'Stephen.Hui', '2006-07-28 22:52:25', NULL, NULL, 'A'),
(621, 'USCMHRMP00', 'COLUMBUS RAMP', 'USCMH', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'Stephen.Hui', '2006-07-28 22:53:08', NULL, NULL, 'A'),
(623, 'USLUIRMP00', 'LOUISVILLE RAMP', 'USLUI', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'Stephen.Hui', '2006-07-28 22:57:35', NULL, NULL, 'A'),
(624, 'USSFYRMP00', 'SPRINGVILLE RAMP', 'USSFY', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'Stephen.Hui', '2006-07-28 22:58:52', NULL, NULL, 'A'),
(625, 'USCNKRMP00', 'CONOVER RAMP', 'USCNK', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'Stephen.Hui', '2006-07-28 23:00:48', NULL, NULL, 'A'),
(626, 'USKCKRMP00', 'KANSAS CITY RAMP', 'USKCK', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'Stephen.Hui', '2006-07-28 23:01:38', NULL, NULL, 'A'),
(627, 'USPPMRMP00', 'POMPANO BEACH RAMP', 'USPPM', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'Stephen.Hui', '2006-07-28 23:02:22', NULL, NULL, 'A'),
(628, 'USPPMDDR00', 'POMPANO BEACH DOOR', 'USPPM', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'Stephen.Hui', '2006-07-28 23:03:16', NULL, NULL, 'A'),
(629, 'USACHRMP00', 'CENTRAL FALLS RAMP', 'USACH', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'Stephen.Hui', '2006-07-28 23:04:38', NULL, NULL, 'A'),
(630, 'USACHDDR00', 'CENTRAL FALLS DOOR', 'USACH', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'Stephen.Hui', '2006-07-28 23:05:21', NULL, NULL, 'A'),
(631, 'USSTLRMP00', 'SAINT LOUIS RAMP', 'USSTL', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'Stephen.Hui', '2006-07-31 08:30:56', NULL, NULL, 'A'),
(632, 'USSFYDDR00', 'SPRINGFIELD DOOR', 'USSFY', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'Stephen.Hui', '2006-08-03 05:57:38', NULL, NULL, 'A'),
(633, 'USWOMDDR00', 'WILMINGTON DOOR', 'USWOM', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'Stephen.Hui', '2006-08-10 18:58:49', NULL, NULL, 'A'),
(634, 'US597DDR00', 'SPRINGVILLE NY DOOR', 'US597', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'Stephen.Hui', '2006-08-10 18:59:15', NULL, NULL, 'A'),
(635, 'USCNKDDR00', 'CONOVER DOOR', 'USCNK', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'Stephen.Hui', '2006-08-11 09:07:22', NULL, NULL, 'A'),
(636, 'USACHICD00', 'Central Falls ICD', 'USACH', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2006-08-17 22:50:22', NULL, NULL, 'A'),
(639, 'PKBQMQIC00', 'QICT', 'PKBQM', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2006-08-22 17:49:38', NULL, NULL, 'A'),
(640, 'SGSINKPL00', 'KEPPEL CONTAINER TERMINAL', 'SGSIN', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2006-08-24 17:15:20', NULL, NULL, 'A'),
(641, 'KWSWKSWK00', 'SHUWAIKH TEMINAL', 'KWSWK', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2006-08-29 15:22:26', NULL, NULL, 'A'),
(642, 'THLCHLCB00', 'LAEM CHABANG TERMINAL', 'THLCH', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2006-08-29 15:55:43', NULL, NULL, 'A'),
(643, 'KHKOSKOS00', 'SIHANOUKVILLE TERMINAL', 'KHKOS', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2006-08-29 16:14:13', NULL, NULL, 'A'),
(644, 'INBOMMBP00', 'MBPT', 'INBOM', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'ben.lee', '2006-09-01 20:06:41', NULL, NULL, 'A'),
(645, 'MMRGNRGN00', 'PORT OF YANGON', 'MMRGN', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2006-09-08 09:00:21', NULL, NULL, 'A'),
(646, 'CNCWNNJU00', 'nanjibu terminal', 'CNCWN', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2006-09-09 16:06:49', NULL, NULL, 'A'),
(647, 'MMYGOMIP00', 'MIP', 'MMYGO', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2006-09-11 19:12:58', NULL, NULL, 'A'),
(648, 'HKHKGYFT00', 'YUEN FAT TERMINAL', 'HKHKG', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2006-09-15 12:05:21', NULL, NULL, 'A'),
(649, 'VNSGNCLT00', 'CAT LAI TERMINAL', 'VNSGN', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2006-09-15 20:41:13', NULL, NULL, 'A'),
(650, 'SADMMDCT00', 'DAMMAM CONTAINER TERMINAL', 'SADMM', 0, 0, 0, 0, 2, 2, 45, NULL, 0, 'anant.mokash', '2006-09-18 11:26:27', NULL, NULL, 'A'),
(651, 'USNEWRMP00', 'New Orleans Ramp', 'USNEW', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'kunal', '2006-09-21 09:32:07', NULL, NULL, 'A'),
(652, 'COCTGCTG00', 'PORT OF CARTAGENA', 'COCTG', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2006-09-21 15:16:54', NULL, NULL, 'A'),
(653, 'VEPBLPBL00', 'PORT OF PUERTO CABELLO', 'VEPBL', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2006-09-21 19:21:05', NULL, NULL, 'A'),
(654, 'BBBGIBCT00', 'Bridgetown ContainerTerminal', 'BBBGI', 1, 1, 10, 12, 2, 1, 20, NULL, 0, 'debjit.sen', '2006-09-22 11:20:35', NULL, NULL, 'A'),
(656, 'COCTGCCT00', 'Cartagena Container Terminal', 'COCTG', 1, 1, 10, 12, 2, 1, 20, NULL, 0, 'debjit.sen', '2006-09-22 11:26:17', NULL, NULL, 'A'),
(657, 'VELAGLAG00', 'PORT OF LA GUAIRA', 'VELAG', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2006-09-22 17:17:51', NULL, NULL, 'A'),
(659, 'KRPUSUTC00', 'UTC', 'KRPUS', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'stephen.hui', '2006-09-26 09:54:23', NULL, NULL, 'A'),
(660, 'TTPOSTCT00', 'Port Of Spain Terminal', 'TTPOS', 2, 2, 11, 12, 2, 2, 22, NULL, 2, 'debjit.sen', '2006-09-30 01:13:46', NULL, NULL, 'A'),
(661, 'USMIARMP00', 'Miami Florida Ramp', 'USMIA', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'kunal', '2006-10-14 03:23:46', NULL, NULL, 'A'),
(662, 'MMRGNAWP00', 'Asia World Port Terminal', 'MMRGN', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2006-10-17 15:52:12', NULL, NULL, 'A'),
(663, 'MMRGNBSW00', 'Bo Aung Kyaw Terminal', 'MMRGN', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2006-10-17 15:52:58', NULL, NULL, 'A'),
(664, 'JPYOKSCT00', 'Honmoku Container Terminal', 'JPYOK', 4, 3, 12, 12, 3, 3, 30, NULL, 1, 'y.doctor', '2006-10-27 14:08:21', 'debjit', '2006-12-14 12:14:14', 'A'),
(665, 'JPOSAOSA00', 'Tatsumi Shokei', 'JPOSA', 4, 3, 12, 12, 3, 3, 30, NULL, 1, 'y.doctor', '2006-10-27 14:12:45', 'debjit', '2006-12-14 12:13:22', 'A'),
(668, 'USSAVSAV00', 'GARDEN CITY TERMINAL', 'USSAV', 3, 3, 12, 12, 3, 3, 20, NULL, 2, 'y.doctor', '2006-10-27 14:29:11', 'y.doctor', '2006-10-27 14:46:30', 'A'),
(669, 'USILMILM00', 'N. CAROLINA PORT AUTH.', 'USILM', 3, 3, 12, 12, 3, 3, 20, NULL, 2, 'y.doctor', '2006-10-27 14:33:31', NULL, NULL, 'A'),
(670, 'USSAVGCT00', 'GARDEN CITY TERMINAL', 'USSAV', 2, 3, 12, 12, 3, 3, 25, NULL, 2, 'y.doctor', '2006-10-27 14:47:44', NULL, NULL, 'A'),
(671, 'USPEFAPM00', 'APM TERMINALS', 'USPEF', 2, 3, 12, 12, 3, 3, 25, NULL, 2, 'y.doctor', '2006-10-27 14:48:31', NULL, NULL, 'A'),
(672, 'USILMPOW00', 'PORT OF WILMINGTON', 'USILM', 2, 3, 12, 12, 3, 3, 25, NULL, 2, 'y.doctor', '2006-10-27 14:49:36', NULL, NULL, 'A'),
(673, 'JMKINAPM00', 'APM Terminals Jamaica', 'JMKIN', 3, 3, 12, 100, 2, 2, 30, NULL, 3, 'ben.lee', '2006-10-27 17:51:09', NULL, NULL, 'A'),
(674, 'CNKHNKHN00', 'PORT OF NANCHANG', 'CNKHN', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2006-11-05 16:53:21', NULL, NULL, 'A'),
(677, 'JMKINKWL00', 'KINGSTON WHARVES LIMITED', 'JMKIN', 2, 2, 10, 12, 2, 2, 20, NULL, 2, 'W.Cheung', '2006-11-20 11:17:29', 'debjit.sen', '2006-12-10 11:28:50', 'A'),
(678, 'CNHUAFDR01', 'FEEDER TML', 'CNHUA', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'eddie.chan', '2006-11-22 15:17:31', NULL, NULL, 'A'),
(679, 'CNCWNMWH00', 'MA WAN HAIXING', 'CNCWN', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'eddie.chan', '2006-11-22 16:11:13', NULL, NULL, 'A'),
(680, 'CNJMNFDR01', 'CNJMN FEEDER TML', 'CNJMN', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'eddie.chan', '2006-11-22 17:34:21', NULL, NULL, 'A'),
(681, 'CNNGGFDR01', 'CNNGG FEEDER TML', 'CNNGG', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'eddie.chan', '2006-11-22 17:46:48', NULL, NULL, 'A'),
(682, 'CNZUHFDR01', 'CNZHUHAI FDR TML', 'CNZUH', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'eddie.chan', '2006-11-22 18:02:14', NULL, NULL, 'A'),
(683, 'VEPBLIPA00', 'IPAPC', 'VEPBL', 2, 2, 10, 12, 2, 2, 15, NULL, 2, 'debjit.sen', '2006-11-27 12:46:33', NULL, NULL, 'A'),
(684, 'VELAGIPA00', 'IPAPC', 'VELAG', 2, 2, 11, 12, 2, 2, 15, NULL, 2, 'debjit.sen', '2006-11-27 12:53:45', NULL, NULL, 'A'),
(685, 'VEPBLCCT00', 'Cabello container terminal', 'VEPBL', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'debjit.sen', '2006-11-27 15:30:54', NULL, NULL, 'A'),
(686, 'IQUQRUQR00', 'PORT OF UMM QASR', 'IQUQR', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2006-11-27 18:40:53', NULL, NULL, 'A'),
(687, 'VNSGNTCG00', 'TANG CANG', 'VNSGN', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2006-11-29 10:40:05', NULL, NULL, 'A'),
(688, 'IDJKTKOJA0', 'TERMINAL KOJA (JICT3)', 'IDJKT', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'eddie.chan', '2006-12-08 10:00:58', NULL, NULL, 'A'),
(689, 'IDJKTKADE9', 'KADE 009X', 'IDJKT', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'eddie.chan', '2006-12-08 10:05:09', NULL, NULL, 'A'),
(690, 'IDBLWUTPK0', 'UNIT TERMINAL PETI KEMAS BELAWAN (UTPK BELAWAN)', 'IDBLW', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'eddie.chan', '2006-12-08 10:10:47', NULL, NULL, 'A'),
(691, 'IDSRGTPKS0', 'TERMINAL PETI KEMAS SEMARANG (TPKS)', 'IDSRG', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'eddie.chan', '2006-12-08 10:12:37', NULL, NULL, 'A'),
(692, 'ESVLCMAR00', 'Maritima   Valenciana', 'ESVLC', 6, 14, 16, 12, 2, 2, 22, NULL, 2, 'debjit', '2006-12-14 17:31:53', 'eshwaran', '2008-01-02 11:34:44', 'A'),
(693, 'CNXMNDDU00', 'Dong Du Container Terminal', 'CNXMN', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2006-12-15 12:45:31', NULL, NULL, 'A'),
(694, 'CNSHAWGQ05', 'SHANGHAI MINGDONG CONTAINER TERMAINALS LTD', 'CNSHA', 4, 6, 11, 12, 5, 5, 60, NULL, 2, 'debjit', '2006-12-18 19:08:52', NULL, NULL, 'A'),
(696, 'MMRGNMIT00', 'Myanmar International Terminal Thilawa', 'MMRGN', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2006-12-22 11:26:48', NULL, NULL, 'A'),
(697, 'CNNGBDAT00', 'NINGBO DAXIE TERMINAL', 'CNNGB', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2006-12-29 15:05:58', NULL, NULL, 'A'),
(698, 'USHOUBCT00', 'Houston Terminal', 'USHOU', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'antony', '2007-01-03 00:34:13', NULL, NULL, 'A'),
(699, 'IDPNJPNJ00', 'Panjang container terminal', 'IDPNJ', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2007-01-03 18:45:35', NULL, NULL, 'A'),
(700, 'THSGZSGZ00', 'Songla Terminal', 'THSGZ', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2007-01-03 19:14:52', NULL, NULL, 'A'),
(701, 'QAUMS', 'UMM SAID', 'QAUMS', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'sajana', '2007-01-04 17:10:13', NULL, NULL, 'A'),
(702, 'THLCHLCH00', 'THAI LAEM CHABANG CNTR TERMINAL (A2)', 'THLCH', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2007-01-05 13:02:43', 'W.Cheung', '2007-01-11 11:24:53', 'A'),
(703, 'CNSHASSICT', 'SHANGHAI SHENDONG INTERNATIONAL CONTAINER TERMINAL', 'CNSHA', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'eddie.chan', '2007-01-07 19:32:14', NULL, NULL, 'A'),
(704, 'QAUMSUMS00', 'PORT OF MESAIEED', 'QAUMS', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2007-01-10 10:12:21', NULL, NULL, 'A'),
(705, 'IDJKTJKT06', 'Domestic wharf 006', 'IDJKT', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2007-01-10 14:47:21', NULL, NULL, 'A'),
(706, 'THLCHLIT00', 'LAEM CHABANG INTERNATIONAL TERMINAL CO LTD (B5)', 'THLCH', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2007-01-11 11:27:08', 'W.Cheung', '2007-01-11 11:29:32', 'A'),
(707, 'CNSHKNJB00', 'Nanjibu Terminal', 'CNSHK', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2007-01-11 20:30:01', NULL, NULL, 'A'),
(708, 'VNSGNSGN00', 'PORT OF HOCHIMIN CITY', 'VNSGN', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2007-01-18 10:22:38', NULL, NULL, 'A'),
(709, 'IDJKTJICT1', 'Jakarta International Container Terminal I', 'IDJKT', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2007-01-22 16:03:37', NULL, NULL, 'A'),
(710, 'IDJKTJICT2', 'Jakarta International Container Terminal II', 'IDJKT', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2007-01-22 16:04:21', NULL, NULL, 'A'),
(711, 'IDJKTJICT3', 'Terminal KOJA', 'IDJKT', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2007-01-22 16:05:58', NULL, NULL, 'A'),
(712, 'IDMESUTPK0', 'UNIT TERMINAL PETI KEMAS BELAWAN (UTPK BELAWAN)', 'IDMES', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2007-01-22 16:08:35', NULL, NULL, 'A'),
(713, 'CNFANFAN00', 'PORT OF FANG CHENG', 'CNFAN', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2007-01-24 14:38:32', NULL, NULL, 'A'),
(714, 'HC05C', 'hc05c', 'JPYOK', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2007-01-30 17:15:48', NULL, NULL, 'A'),
(716, 'BGVARVAR00', 'Varna Terminal', 'BGVAR', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2007-02-01 14:55:49', NULL, NULL, 'A'),
(717, 'GEPTIPTI00', 'Poti Terminal', 'GEPTI', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2007-02-01 14:57:02', NULL, NULL, 'A'),
(718, 'ROCNDCND00', 'Constanza Terminal', 'ROCND', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2007-02-01 14:58:27', NULL, NULL, 'A'),
(719, 'RUNVSNVS00', 'Novorossiysk Terminal', 'RUNVS', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2007-02-01 14:59:40', NULL, NULL, 'A'),
(720, 'TRIZMIZM00', 'Izmir Terminal', 'TRIZM', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2007-02-01 15:01:19', NULL, NULL, 'A'),
(721, 'TRMERMER00', 'Mersin Terminal', 'TRMER', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2007-02-01 15:02:41', NULL, NULL, 'A'),
(722, 'UAODSODS00', 'Odessa Terminal', 'UAODS', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2007-02-01 15:03:29', NULL, NULL, 'A'),
(723, 'EGALYALY00', 'Alexandria Terminal', 'EGALY', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2007-02-01 15:07:15', NULL, NULL, 'A'),
(724, 'GRSKGSKG00', 'Thessaloniki Terminal', 'GRSKG', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2007-02-01 15:08:30', NULL, NULL, 'A'),
(725, 'LBBEYBEY00', 'Beirut Terminal', 'LBBEY', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2007-02-01 15:09:44', NULL, NULL, 'A'),
(726, 'SYLTKLTK00', 'Latakia Terminal', 'SYLTK', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2007-02-01 15:11:00', NULL, NULL, 'A'),
(727, 'UAILKILK00', 'Illichivs Terminal', 'UAILK', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2007-02-01 15:12:18', NULL, NULL, 'A'),
(729, 'VNSGNVIC00', 'Vietnam International Container Terminal', 'VNSGN', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2007-02-12 09:19:41', NULL, NULL, 'A'),
(730, 'GYGEOGEO00', 'Georgetown Terminal', 'GYGEO', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ray.liang', '2007-03-06 16:04:12', NULL, NULL, 'A'),
(731, 'VEEGUEGU00', 'Isla Margarita Terminal', 'VEEGU', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ray.liang', '2007-03-06 16:06:21', NULL, NULL, 'A'),
(732, 'SRPBMPBM00', 'Paramaribo Terminal', 'SRPBM', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ray.liang', '2007-03-06 16:07:01', NULL, NULL, 'A'),
(733, 'AWAUAAUA00', 'Aruba Terminal', 'AWAUA', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ray.liang', '2007-03-06 17:11:17', NULL, NULL, 'A'),
(734, 'TTPTSPTS00', 'Point Lisas Terminal', 'TTPTS', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ray.liang', '2007-03-06 17:12:04', NULL, NULL, 'A'),
(735, 'ANWILWIL00', 'Willemstad (Curacao) Terminal', 'ANWIL', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ray.liang', '2007-03-06 17:20:26', NULL, NULL, 'A'),
(736, 'USEWREWR00', 'PORT OF NEWARK', 'USEWR', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2007-03-06 20:27:36', NULL, NULL, 'A'),
(737, 'AEDXBDPA00', 'DPA Dubai', 'AEDXB', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2007-03-12 14:33:49', NULL, NULL, 'A'),
(738, 'AEDXBDXB00', 'AEDXB', 'AEDXB', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2007-03-12 14:39:51', NULL, NULL, 'A'),
(739, 'PACFZCFZ00', 'Colon Free Zone', 'PACFZ', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ray.liang', '2007-03-12 14:52:17', NULL, NULL, 'A'),
(740, 'BZBZEBZE00', 'Belize City Terminal', 'BZBZE', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ray.liang', '2007-03-13 13:54:47', NULL, NULL, 'A'),
(741, 'COBAQBAQ00', 'Barbados Terminal', 'COBAQ', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ray.liang', '2007-03-13 13:56:09', NULL, NULL, 'A'),
(742, 'CRLIOLIO00', 'Puerto Limon Terminal', 'CRLIO', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ray.liang', '2007-03-13 13:56:58', NULL, NULL, 'A'),
(743, 'CUHAVHAV00', 'Havana Terminal', 'CUHAV', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ray.liang', '2007-03-13 13:58:18', 'ray.liang', '2007-03-13 14:02:52', 'A'),
(744, 'CUSCUSCU00', 'Santiago De Cuba Terminal', 'CUSCU', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ray.liang', '2007-03-13 14:02:23', NULL, NULL, 'A'),
(745, 'DO004CAU00', 'Caucedo Terminal', 'DO004', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ray.liang', '2007-03-13 14:04:28', NULL, NULL, 'A'),
(746, 'GTSTCSTC00', 'S. Tomas De Catilla Terminal', 'GTSTC', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ray.liang', '2007-03-13 14:05:33', NULL, NULL, 'A'),
(747, 'HNPCRPCR00', 'Puerto Cortez Terminal', 'HNPCR', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ray.liang', '2007-03-13 14:07:03', NULL, NULL, 'A'),
(748, 'HTPAPPAP00', 'Port Au Prince Terminal', 'HTPAP', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ray.liang', '2007-03-13 14:07:48', NULL, NULL, 'A'),
(749, 'LCSLUSLU00', 'St. Lucia Terminal', 'LCSLU', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ray.liang', '2007-03-13 14:10:45', NULL, NULL, 'A'),
(750, 'MXTAMTAM00', 'Tampico Terminal', 'MXTAM', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ray.liang', '2007-03-13 14:11:28', NULL, NULL, 'A'),
(751, 'MXVERVER00', 'Veracruz', 'MXVER', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ray.liang', '2007-03-13 14:11:57', NULL, NULL, 'A'),
(752, 'PRSJUSJU00', 'San Juan Terminal', 'PRSJU', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ray.liang', '2007-03-13 14:12:28', NULL, NULL, 'A'),
(753, 'VEGUTGUT00', 'Guanta Terminal', 'VEGUT', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ray.liang', '2007-03-13 14:13:49', NULL, NULL, 'A'),
(754, 'USNYCMTI00', 'MAHER TERMINALS, INC', 'USNYC', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'eddie.chan', '2007-03-13 16:44:19', NULL, NULL, 'A'),
(755, 'THBKKBMT00', 'Bangkok Modern Terminal', 'THBKK', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2007-03-15 12:21:56', NULL, NULL, 'A'),
(756, 'TZDARTIC00', 'TANZANIA INTERNATIONAL CONTAINER TERMINAL SERVICES', 'TZDAR', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'eddie.chan', '2007-03-21 13:09:48', NULL, NULL, 'A'),
(757, 'KEMBAMBA00', 'PORT OF MOMBASA', 'KEMBA', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'eddie.chan', '2007-03-21 13:10:33', NULL, NULL, 'A'),
(758, 'CNHUAOPT00', 'Huangpu Old Port Terminal', 'CNHUA', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2007-03-22 18:08:48', NULL, NULL, 'A'),
(759, 'MY002TCT00', 'TANJUNG PELAPAS TERMINAL', 'MY002', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'noel.rattan', '2007-03-23 14:46:29', NULL, NULL, 'A'),
(760, 'CNFANFCT00', 'Fang Cheng Container Terminal', 'CNFAN', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2007-03-26 14:56:42', NULL, NULL, 'A'),
(761, 'GIGIBGIB00', 'Gibraltar', 'GIGIB', 0, 0, 0, 0, 2, 2, 0, NULL, 0, 'debjit', '2007-03-27 10:48:01', NULL, NULL, 'A'),
(762, 'CNNGBGJCT4', 'Ningbo GangJi Terminal', 'CNNGB', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'eddie.chan', '2007-03-27 17:04:51', NULL, NULL, 'A'),
(763, 'THBKKBKK00', 'PORT OF BANGKOK', 'THBKK', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2007-03-28 09:51:58', NULL, NULL, 'A'),
(764, 'AEKLFKCT00', 'KHORFAKKAN CONTAINER TERMINAL', 'AEKLF', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'eddie.chan', '2007-04-04 10:00:32', NULL, NULL, 'A'),
(765, 'KWSAASAA00', 'Port of Shuaiba, Kuwait', 'KWSAA', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2007-04-04 14:44:05', NULL, NULL, 'A'),
(766, 'KEMBAMCT00', 'Mobasa Container Terminal', 'KEMBA', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'eddie.chan', '2007-04-13 14:24:03', NULL, NULL, 'A'),
(768, 'HKHKGHKG00', 'HONG KONG PORT', 'HKHKG', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'eddie.chan', '2007-04-25 10:54:53', NULL, NULL, 'A'),
(769, 'HKHKGRTT00', 'RIVER TRADE TERMINALS', 'HKHKG', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'eddie.chan', '2007-04-25 11:42:38', NULL, NULL, 'A'),
(772, 'KRPUSDPCT0', 'DONGBU PUSAN CONTAINER TERMINAL', 'KRPUS', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'eddie.chan', '2007-05-02 18:51:34', NULL, NULL, 'A'),
(773, 'THBKKTPT00', 'THAI PROSPERITY TERMINAL CO LTD. (TPT)', 'THBKK', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'eddie.chan', '2007-05-07 14:57:50', NULL, NULL, 'A'),
(774, 'ITSALSCT00', 'SALERNO CONTAINER TERMINAL SPA', 'ITSAL', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2007-05-08 11:57:40', NULL, NULL, 'A'),
(775, 'DJJIBPOJ00', 'PORT OF DJIBOUTI', 'DJJIB', 2, 2, 15, 12, 2, 2, 30, NULL, 1, 'ashish.arora', '2007-05-08 12:49:19', NULL, NULL, 'A'),
(776, 'GRPIRIKO00', 'IKONIO', 'GRPIR', 2, 2, 15, 12, 2, 2, 30, NULL, 1, 'ashish.arora', '2007-05-08 12:50:10', NULL, NULL, 'A'),
(777, 'TRKMXAMB00', 'AMBARLY', 'TRKMX', 2, 2, 15, 12, 2, 2, 30, NULL, 1, 'ashish.arora', '2007-05-08 12:50:56', NULL, NULL, 'A'),
(778, 'ROCNDCSC00', 'CSCT', 'ROCND', 2, 2, 15, 12, 2, 2, 30, NULL, 1, 'ashish.arora', '2007-05-08 12:51:36', NULL, NULL, 'A'),
(779, 'MYPGUJCT00', 'JOPORT CONTAINER TERMINAL', 'MYPGU', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'eddie.chan', '2007-05-08 16:54:31', NULL, NULL, 'A'),
(780, 'CNSHGSHG00', 'cnshg terminal', 'CNSHG', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2007-05-10 11:44:58', NULL, NULL, 'A'),
(781, 'THLCHESC03', 'EASTERN LAEM CHABANG TERMINAL CO (ESCO) B3', 'THLCH', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'eddie.chan', '2007-05-10 17:31:04', NULL, NULL, 'A'),
(782, 'CNNGBYDT05', 'NINGBO YUANDONG TERMINAL', 'CNNGB', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'eddie.chan', '2007-05-26 01:22:21', NULL, NULL, 'A'),
(783, 'ITGOASECH0', 'SECH TERMINAL', 'ITGOA', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'eddie.chan', '2007-06-05 14:46:13', NULL, NULL, 'A'),
(784, 'ITGOAGTS00', 'GENOA TERMINAL SPINELLI', 'ITGOA', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'eddie.chan', '2007-06-07 11:52:31', NULL, NULL, 'A'),
(785, 'INVTZVTPL0', 'Visakha Container Terminal Pvt. Ltd.', 'INVTZ', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'eddie.chan', '2007-06-09 13:29:55', NULL, NULL, 'A'),
(786, 'FRFOSSYCT0', 'seayard container terminal', 'FRFOS', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'eddie.chan', '2007-06-15 15:28:44', NULL, NULL, 'A'),
(787, 'CNFOSFOS00', 'FOSHAN TERMINAL', 'CNFOS', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2007-07-16 16:20:33', NULL, NULL, 'A'),
(788, 'CNJMNJMN00', 'Jiangmen terminal', 'CNJMN', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2007-07-16 16:21:21', NULL, NULL, 'A'),
(789, 'CNNSANSA00', 'Nansha terminal', 'CNNSA', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2007-07-16 16:21:45', NULL, NULL, 'A'),
(790, 'CNROQROQ00', 'Rongqi Terminal', 'CNROQ', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2007-07-16 16:22:06', NULL, NULL, 'A'),
(791, 'CNYQSYQS00', 'Beijiao Terminal', 'CNYQS', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2007-07-16 16:22:36', NULL, NULL, 'A'),
(792, 'CNZSNZSN00', 'Zhongshan Terminal', 'CNZSN', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'ben.lee', '2007-07-16 16:22:55', NULL, NULL, 'A'),
(794, 'CNZUHZUH00', 'Zhuhai terminal', 'CNZUH', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'jassim', '2007-07-16 16:37:21', NULL, NULL, 'A'),
(795, 'IDSUBBJT00', 'Berlian Jasa Terminal Indonesia', 'IDSUB', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2007-07-20 11:32:48', NULL, NULL, 'A'),
(796, 'ESBCNTCAT0', 'TERCAT TERMINAL', 'ESBCN', 5, 8, 16, 24, 2, 2, 30, NULL, 2, 'eddie.chan', '2007-08-03 09:37:53', 'eshwaran', '2008-01-02 11:27:31', 'A'),
(797, 'JPOSANAN00', 'NANKO R-3 CONTAINER TERMINAL', 'JPOSA', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2007-08-09 15:55:42', NULL, NULL, 'A'),
(799, 'THBKKSCT00', 'SIAM CONTAINER TRANSPORT AND TERMINALS', 'THSCT', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'kunal', '2007-08-18 15:00:18', NULL, NULL, 'A'),
(800, 'VNSGNKHA00', 'KHANH HOI TERMINAL', 'VNSGN', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2007-09-04 17:04:23', NULL, NULL, 'A'),
(801, 'PKKHIWTW00', 'West Wharf, Karachi', 'PKKHI', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2007-09-10 17:52:12', NULL, NULL, 'A'),
(802, 'TZMYWMTP00', 'Matwara Port terminal', 'TZMYW', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'kunal', '2007-09-24 19:04:07', NULL, NULL, 'A'),
(803, 'TRGEMGEM00', 'PORT OF GEMLIK, TURKEY', 'TRGEM', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2007-10-05 15:44:16', NULL, NULL, 'A'),
(804, 'RUNJKNJK00', 'NAKHODKA TERMINAL', 'RUNJK', 4, 8, 14, 16, 2, 2, 28, NULL, 0.6, 'kunal', '2007-11-08 15:35:10', NULL, NULL, 'A'),
(805, 'COBAQBAQ01', 'Barranquilla Terminal', 'COBAQ', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2007-11-09 09:31:26', NULL, NULL, 'A'),
(806, 'USNYCNCT00', 'NEW YORK CONTAINER TERMINAL', 'USNYC', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2007-11-21 10:33:59', NULL, NULL, 'A'),
(807, 'CNXMNXXT00', 'XIAMEN XIANGYU TERMINAL', 'CNXMN', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'y.doctor', '2007-12-10 14:27:44', NULL, NULL, 'A'),
(808, 'IRBNDSRT00', 'SHAHID RAJAE CONTAINER TERMINAL', 'IRBND', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'eddie.chan', '2007-12-11 17:55:46', NULL, NULL, 'A'),
(809, 'CNDCBDCB01', 'DA CHAN BAY CONTAINER TERMINAL', 'CNDCB', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'eddie.chan', '2007-12-11 18:16:50', NULL, NULL, 'A'),
(811, 'SAJEDNCT00', 'North Container Terminal', 'SAJED', 4, 7, 14, 2400, 2, 2, 30, NULL, 2, 'eddie.chan', '2008-01-02 16:20:40', NULL, NULL, 'A'),
(812, 'MTMLAVLA00', 'vALETTA CONTAINER TERMINAL', 'MTMLA', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'eshwaran', '2008-01-04 12:43:55', NULL, NULL, 'A'),
(813, 'MTMARMAR00', 'marsaxlokk', 'MTMAR', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'eshwaran', '2008-01-04 12:58:47', NULL, NULL, 'A'),
(814, 'AEQIWABR00', 'AHMED BIN RASHID PORT', 'AEQIW', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'kunal', '2008-02-11 11:44:32', NULL, NULL, 'A'),
(815, 'JPTYOHAT00', 'Hanjin Aomi Terminal', 'JPTYO', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'didi', '2008-02-18 10:29:03', NULL, NULL, 'A'),
(816, 'ITGOATSG00', 'Terminal San Giorgio', 'ITGOA', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2008-02-21 10:18:39', NULL, NULL, 'A'),
(817, 'JPUKBKIC00', 'Pc-14 KICT Kobe (MOL)', 'JPUKB', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'didi', '2008-02-21 16:40:35', NULL, NULL, 'A'),
(818, 'IDJKTTL300', 'Terminal 300', 'IDJKT', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2008-02-22 16:06:46', NULL, NULL, 'A'),
(821, 'JPOSANAN02', 'Nanko R-4 Container Terminal', 'JPOSA', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2008-04-30 18:30:27', NULL, NULL, 'A'),
(822, 'JPUKBKCT00', 'PC-18 Kobe Container Terminal', 'JPUKB', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2008-04-30 18:36:37', NULL, NULL, 'A'),
(823, 'USMIAMIA00', 'PORT OF MIAMI', 'USMIA', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'W.Cheung', '2008-05-06 13:06:44', NULL, NULL, 'A'),
(824, 'VNSGNTMX00', 'TRANSIMEX', 'VNSGN', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'w.cheung', '2008-06-06 18:48:25', 'k.natarajan', '2010-10-06 19:16:50', 'A'),
(825, 'VNSGNTTT00', 'TAN THUAN TERMINAL', 'VNSGN', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'w.cheung', '2008-06-23 16:52:00', NULL, NULL, 'A'),
(826, 'INIXZIXZ00', 'PORT OF PORT BLAIR', 'INIXZ', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'w.cheung', '2008-06-27 19:17:24', NULL, NULL, 'A'),
(827, 'EGEDKACH00', 'Alexandria Container Handling Co.', 'EGEDK', 1, 1, 10, 12, 2, 2, 20, NULL, 2, 'debjit', '2008-07-22 23:30:29', NULL, NULL, 'A'),
(828, 'CNXNGFICT0', 'Five Continents International Container Terminal', 'CNXNG', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'w.cheung', '2008-07-29 11:38:54', NULL, NULL, 'A'),
(829, 'CNFOSNPT00', 'FOSHAN NEW PORT', 'CNFOS', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'didi', '2008-08-20 09:52:31', 'w.cheung', '2008-08-25 09:24:54', 'A'),
(830, 'JOAQJACT00', 'AQABA CONTAINER TERMINAL', 'JOAQJ', 3, 5, 14.5, 12, 3, 3, 30, NULL, 2, 'y.doctor', '2008-09-01 19:59:26', NULL, NULL, 'A'),
(832, 'KRPUSBIT00', 'Busan International Container Terminal', 'KRPUS', 0, 0, 12, 0, 2, 2, 40, NULL, 0, 'y.doctor', '2008-09-11 15:08:34', NULL, NULL, 'A');
INSERT INTO `terminals` (`id`, `terminalCode`, `terminalName`, `PortCode`, `berths`, `cranes`, `draft`, `airdraft`, `pilotin`, `pilotout`, `cranespeed`, `vslClosing`, `Not_working`, `cruser`, `crdate`, `chguser`, `chgdate`, `active_status`) VALUES
(833, 'PAONXMIT00', 'MANZANILLO INTERNATIONAL TERMINAL', 'PAONX', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'kunal', '2008-09-24 10:07:50', 'kunal', '2008-09-24 10:07:56', 'A'),
(834, 'CNXNGTPPIC', 'Tianjin port pacific intermnational container term', 'CNXNG', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'bawa.singh', '2008-09-25 16:00:12', NULL, NULL, 'A'),
(835, 'CNZHAZCT00', 'ZHANJIANG CONTAINER TERMINAL', 'CNZHA', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'kunal', '2008-09-30 11:45:19', NULL, NULL, 'A'),
(836, 'PAMITMIT00', 'MANZANILLO INTERNATIONAL TERMINAL', 'PAMIT', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'kunal', '2008-10-02 09:27:05', NULL, NULL, 'A'),
(837, 'CNWUHYCT00', 'Yangluo Container Terminal', 'CNWUH', 1, 1, 10, 6, 6, 6, 12, NULL, 2, 'debjit', '2008-11-10 19:16:36', NULL, NULL, 'A'),
(838, 'CNWUHYST00', 'Yangsi Container Terminal', 'CNWUH', 1, 1, 10, 0, 6, 6, 12, NULL, 2, 'debjit', '2008-11-11 10:04:47', 'debjit', '2008-11-11 10:05:05', 'A'),
(839, 'CNFUGFCT00', 'FICT', 'CNFUG', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'selvakumar', '2008-11-11 22:35:42', NULL, NULL, 'A'),
(841, 'VNSGNBNP00', 'Ben Nghe port', 'VNSGN', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'kunal', '2008-11-20 12:18:46', NULL, NULL, 'A'),
(842, 'CNXMNXST00', 'Songyu Container Terminal limited', 'CNXMN', 4, 7, 14, 1, 2, 2, 50, NULL, 1, 'selvakumar', '2008-11-20 12:46:07', NULL, NULL, 'A'),
(844, 'INBARICD00', 'ICD BARODA', 'INBAR', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'kunal', '2008-12-12 15:59:25', NULL, NULL, 'A'),
(845, 'INPLIICD00', 'ICD PATLI TERMINAL', 'INPLI', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'kunal', '2008-12-15 17:10:06', 'kunal', '2008-12-15 17:11:16', 'A'),
(846, 'CNZUHDOU00', 'DOUMEN TERMINAL, ZUHAI', 'CNZUH', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'kunal', '2008-12-24 11:05:39', NULL, NULL, 'A'),
(847, 'CNZUHJIT00', 'JIUZHOU TERMINAL, ZHUHAI', 'CNZUH', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'kunal', '2008-12-24 11:07:44', 'kunal', '2008-12-24 11:08:02', 'A'),
(848, 'CNZSNXIT00', 'XIAOLAN TERMINAL, ZHONGSHAN', 'CNZSN', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'kunal', '2008-12-24 11:09:13', NULL, NULL, 'A'),
(849, 'JPUKBROK00', 'ROKKO C3/4/5 TERMINAL', 'JPUKB', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'kunal', '2009-01-08 10:48:29', NULL, NULL, 'A'),
(850, 'THLCHECT00', 'Evergreen Container Terminal (Thailand) Ltd', 'THLCH', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'kunal', '2009-01-08 12:54:35', NULL, NULL, 'A'),
(851, 'CNSSHSSH00', 'Sanshan terminal- Nanhai district', 'CNSSH', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'kunal', '2009-01-14 11:19:25', NULL, NULL, 'A'),
(852, 'ITCAGCCT00', 'Cagliari Container Terminal', 'ITCAG', 2, 2, 11, 2, 2, 2, 2, NULL, 1, 'debjit', '2009-01-19 16:49:17', NULL, NULL, 'A'),
(853, 'INMUNACT00', 'ADANI CONTAINER TERMINAL', 'INMUN', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'selvakumar', '2009-01-22 03:04:19', NULL, NULL, 'A'),
(854, 'THLCHHLT00', 'HUTCHISON LAEM CHABANG TERMINAL (A3)', 'THLCH', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'dhananjayan', '2009-02-02 13:10:34', NULL, NULL, 'A'),
(855, 'AEFJRFJR00', 'FUJAIRAH TERMINAL', 'AEFJR', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'kunal', '2009-02-04 14:40:10', NULL, NULL, 'A'),
(856, 'CNHUIHUI00', 'HUIZHOU TERMINAL', 'CNHUI', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'kunal', '2009-02-09 16:13:26', NULL, NULL, 'A'),
(857, 'AEJEADPA01', 'DUBAI PORT AUTHORITY TML 2', 'AEJEA', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'selvakumar', '2009-02-18 20:03:26', NULL, NULL, 'A'),
(858, 'VNSGNPHL00', 'PHUOC LONG', 'VNSGN', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'selvakumar', '2009-02-26 16:48:16', NULL, NULL, 'A'),
(859, 'TZDARTPA00', 'Tanzania Port Authority', 'TZDAR', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'selvakumar', '2009-02-26 19:35:28', NULL, NULL, 'A'),
(860, 'CNNSAOLD00', 'NANWEI / DONG FA', 'CNNSA', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'selvakumar', '2009-03-03 14:10:41', NULL, NULL, 'A'),
(861, 'CNSHKSHH00', 'SHENZHEN HAIXING HARBOR DEVELOPMENT CO. LTD', 'CNSHK', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'selvakumar', '2009-03-04 14:14:53', NULL, NULL, 'A'),
(862, 'MMRGNMIP00', 'MYANMAR INDUSTRIAL PORT', 'MMRGN', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'selvakumar', '2009-03-12 12:40:53', NULL, NULL, 'A'),
(863, 'IRASAACT00', 'Assalouyeh Container Terminal', 'IRASA', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'selvakumar', '2009-03-24 18:22:52', 'selvakumar', '2009-03-24 18:24:18', 'A'),
(864, 'BHBAHKBS00', 'Khalifa Bin Salman Port', 'BHBAH', 2, 4, 12.8, 24, 2, 1, 20, NULL, 2, 'dhananjayan', '2009-03-28 18:46:08', NULL, NULL, 'A'),
(865, 'TZTGTTAH00', 'Tanga Anchorage Handling', 'TZTGT', 0, 2, 11, 0, 2, 2, 10, NULL, 0, 'debjit', '2009-04-03 12:02:19', NULL, NULL, 'A'),
(866, 'INMAACIT00', 'CHENNAI INTERNATIONAL TERMINAL', 'INMAA', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'selvakumar', '2009-05-30 14:06:20', NULL, NULL, 'A'),
(868, 'CNSWASIC00', 'Shantou International Container Terminals', 'CNSWA', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'kunal', '2009-10-12 16:43:04', NULL, NULL, 'A'),
(869, 'HKHKGACT00', 'ACT', 'HKHKG', 2, 6, 15.5, 12, 2, 2, 50, NULL, 1, 'debjit', '2009-10-28 09:57:48', NULL, NULL, 'A'),
(870, 'KRPUSKGT00', 'Kukje Gamman Terminal', 'KRPUS', 1, 2, 10, 0, 2, 2, 40, NULL, 1, 'debjit', '2010-01-14 14:48:10', NULL, NULL, 'A'),
(871, 'IDJKTKD209', 'BIRAI TERMINAL 3', 'IDJKT', 207, 0, 8, 0, 2, 3, 0, NULL, 0, 'selvakumar', '2010-03-19 17:41:09', 'selvakumar', '2010-03-19 17:46:42', 'A'),
(872, 'MZBEWPOB00', 'CONTAINER TERMINAL OF BEIRA', 'MZBEW', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'bawa.singh', '2010-03-23 09:40:59', 'kunal', '2010-03-23 10:36:46', 'A'),
(874, 'MZMNCPON00', 'CONTAINER TERMINAL OF NACALA', 'MZMNC', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'bawa.singh', '2010-03-23 09:43:18', 'kunal', '2010-03-23 10:37:11', 'A'),
(875, 'TZZNZTPA00', 'ZANZIBAR PORT AUTHORITY', 'TZZNZ', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'kunal', '2010-03-25 12:21:02', NULL, NULL, 'A'),
(876, 'CNFOSLAS00', 'FOSHAN LANSHI TERMINAL', 'CNFOS', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'selvakumar', '2010-03-26 17:39:31', NULL, NULL, 'A'),
(877, 'VNHPHCVE00', 'Chau Ve', 'VNHPH', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'k.natarajan', '2010-04-14 18:11:25', NULL, NULL, 'A'),
(878, 'VNHPHGRP00', 'Green Port', 'VNHPH', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'k.natarajan', '2010-04-14 18:11:59', NULL, NULL, 'A'),
(879, 'VNHPHHOD00', 'Hoang Dieu', 'VNHPH', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'k.natarajan', '2010-04-14 18:12:28', NULL, NULL, 'A'),
(880, 'VNHPHDOX00', 'Doan Xa ', 'VNHPH', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'k.natarajan', '2010-04-14 18:12:52', NULL, NULL, 'A'),
(881, 'VNHPHPTS00', 'PTSC', 'VNHPH', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'k.natarajan', '2010-04-14 18:13:31', NULL, NULL, 'A'),
(882, 'VNHPHDIV00', 'Dinh Vu ', 'VNHPH', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'k.natarajan', '2010-04-14 18:13:55', NULL, NULL, 'A'),
(883, 'VNHPHTAC00', 'Tan Cang ', 'VNHPH', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'k.natarajan', '2010-04-14 18:14:19', NULL, NULL, 'A'),
(884, 'VNHPHNHI00', 'NAM HAI', 'VNHPH', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'k.natarajan', '2010-04-16 14:48:37', NULL, NULL, 'A'),
(886, 'CNJNZPOJ00', 'JINZHOU TERMINAL', 'CNJNZ', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'kunal', '2010-05-27 18:17:28', 'kunal', '2010-05-27 18:18:27', 'A'),
(887, 'CNSINSIN00', 'SHATIAN TERMINAL', 'CNSIN', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'kunal', '2010-06-08 10:02:13', 'kunal', '2010-06-08 10:02:34', 'A'),
(888, 'CNTOLPOT00', 'PORT OF TONGLING', 'CNTOL', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'kunal', '2010-07-23 13:05:01', NULL, NULL, 'A'),
(889, 'CNHSIHSI00', 'Port of Huangshi', 'CNHSI', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'kunal', '2010-08-06 15:29:44', NULL, NULL, 'A'),
(890, 'KRPUSHPNT0', 'HYUNDAI PUSAN NEWPORT TERMINAL', 'KRPUS', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'selvakumar', '2010-09-30 15:06:51', NULL, NULL, 'A'),
(891, 'CNSUDLET00', 'LELIU TERMINAL', 'CNSUD', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'kunal', '2010-10-15 16:30:23', 'kunal', '2010-10-15 16:30:28', 'A'),
(892, 'CNQZJQPA00', 'QUANZHOU PORT AUTHORITY', 'CNQZJ', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'kunal', '2010-10-27 18:10:22', NULL, NULL, 'A'),
(893, 'CNZJGZPA00', 'Zhangjiagang Port Authority', 'CNZJG', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'kunal', '2010-11-11 15:22:41', NULL, NULL, 'A'),
(894, 'CNXNGTECT0', 'Tianjin Port Euro-Asia container terminal Co. Ltd', 'CNXNG', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'selvakumar', '2011-01-03 17:46:32', NULL, NULL, 'A'),
(896, 'LKKCM', 'AsaSAsaS', 'LKKCM', 11, 1, 1, 1, 1, 1, 1, NULL, 1, 'antony', '2011-07-22 15:45:31', 'antony', '2011-07-22 15:57:56', 'A'),
(897, 'LKCMBBDDDD', 'SADASDAS', 'LKKCM', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'antony', '2011-07-22 15:55:31', 'antony', '2011-07-22 15:57:50', 'A'),
(898, 'INNNNSASD', 'innssdsadas', 'INMSS', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'antony', '2011-07-22 16:00:20', NULL, NULL, 'A'),
(899, 'LKCMVSDAS', 'sddasdadas', 'LKKCM', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'antony', '2011-07-22 16:01:08', NULL, NULL, 'A'),
(900, 'INNNNNADA', 'munbvavds', 'INNNS', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'antony', '2011-07-22 16:25:47', NULL, NULL, 'A'),
(901, 'LKSSBSDASD', 'weqwewqeqw', 'LKSSB', 1, 1, 1, 1, 1, 1, 1, NULL, 11, 'antony', '2011-07-22 16:26:29', NULL, NULL, 'A'),
(902, 'INMSADAS', 'sdsadasdsdas', 'IMMMM', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'antony', '2011-07-22 16:46:35', NULL, NULL, 'A'),
(903, 'LKSDSAFD', 'wqeqweqw', 'LKKKK', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'antony', '2011-07-22 16:47:10', NULL, NULL, 'A'),
(904, 'SDSADA', 'asdsfsafds', 'INNAA', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'antony', '2011-07-22 16:56:23', NULL, NULL, 'A'),
(905, 'SDDSDS', 'wqeqwewq', 'LLKKK', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'antony', '2011-07-22 16:57:46', NULL, NULL, 'A'),
(906, 'ASDASD', 'qewqwq', 'INSAA', 1, 1, 1, 1, 11, 1, 1, NULL, 1, 'antony', '2011-07-22 16:59:53', NULL, NULL, 'A'),
(907, 'INAAAADWE', 'sasfwqerqw', 'INAAA', 1, 1, 1, 1, 1, 1, 1, NULL, 11, 'antony', '2011-07-22 17:56:31', NULL, NULL, 'A'),
(908, 'INDAAAAAA', 'inmaaaaaaaa', 'INDAA', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'antony', '2011-07-25 10:13:08', NULL, NULL, 'A'),
(909, 'AJJ', 'dubai', 'AEJEA', 10, 1, 10, 1, 1, 1, 1, NULL, 1, 'antony', '2011-07-29 14:27:22', NULL, NULL, 'A'),
(910, 'AJJ1', 'kenyadsfdsasd', 'KEMBA', 1, 1, 10, 1, 1, 11, 1, NULL, 1, 'antony', '2011-07-29 14:29:03', 'antony', '2013-11-20 15:11:07', 'A'),
(911, 'CNNTCTOO', 'china terminal', 'CNNHN', 1, 1, 11, 1, 1, 1, 1, NULL, 1, 'antony', '2011-12-21 14:12:12', NULL, NULL, 'A'),
(912, 'CNXINMAAA', 'deqweqewq', 'CNXNG', 1, 0, 1, 1, 1, 1, 1, NULL, 1, 'antony', '2012-01-05 16:15:27', NULL, NULL, 'A'),
(913, 'KEMBAAA', '2323232', 'KENBO', 2, 2, 23, 2, 2, 2, 2, NULL, 2, 'antony', '2012-04-03 14:33:11', NULL, NULL, 'A'),
(914, 'KENBO', 'EXPRESS TERMINAL LTD', 'KENBO', 1, 10, 10, 1, 1, 1, 1, NULL, 1, 'antony', '2012-04-03 14:35:41', 'antony', '2012-04-03 14:41:15', 'A'),
(916, 'CHEBHHAAA', 'chian port', 'CNFOS', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'antony', '2012-12-14 09:22:30', NULL, NULL, 'A'),
(917, 'INDAAAAA', 'hnjhms', 'INMAA', 2, 1, 2, 2, 1, 2, 5, NULL, 2, 'antony', '2015-02-20 10:10:09', 'antony', '2015-02-20 10:11:15', 'A'),
(918, 'AAAAAAAA', 'aaaaaaaaaaaa', 'AEAJM', 1, 1, 12, 2, 2, 2, 2, NULL, 2, 'antony', '2015-02-23 15:40:16', NULL, NULL, 'A'),
(919, 'MYTPPTPOTP', 'MYTPPTPOTP', 'MYTPP', 15, 25, 25, 2, 2, 2, 3, NULL, 5, 'antony', '2015-02-25 11:50:31', NULL, NULL, 'A'),
(920, 'INAAA12', 'CHENNNAI', 'INAAA', 0, 0, 0, 0, 0, 0, 0, NULL, 0, 'antony', '2015-04-17 15:47:40', NULL, NULL, 'A'),
(921, 'INAADSDS', 'INAADSDSASS', 'INAAD', 1, 1, 1, 1, 1, 11, 11, NULL, 11, 'antony', '2015-04-17 15:48:27', NULL, NULL, 'A'),
(922, 'LIIEIR', 'chennai', 'LKINM', 1, 1, 1, 11, 11, 1, 1, NULL, 1, 'antony', '2015-04-20 17:42:18', 'antony', '2015-04-20 17:44:33', 'A'),
(923, 'SGIND', 'SGIND', 'SGIND', 11, 1, 1, 1, 1, 1, 1, NULL, 1, 'antony', '2015-04-20 17:45:30', NULL, NULL, 'A'),
(924, 'INKOCTER1', 'cochii 2 teminal', 'INKOC', 4, 7, 25, 1200, 2, 130, 14, NULL, 1, 'antony', '2015-04-27 14:13:01', NULL, NULL, 'A'),
(925, 'SVM', 'solverminds', 'TEST1', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'antony', '2015-05-16 11:59:40', 'antony', '2015-05-16 12:21:05', 'A'),
(926, 'INKOLTER12', 'kolkatta terminal 09new', 'INKOL', 0, 0, 20, 1200, 12, 24, 4, NULL, 2, 'antony', '2015-06-22 14:19:09', NULL, NULL, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `name`) VALUES
(1, 'test@mail.com', 'test'),
(2, 'supun@mail.com', 'test supun'),
(3, 'supun@gmail.com', 'supunTest123');

-- --------------------------------------------------------

--
-- Table structure for table `vesselmaster`
--

CREATE TABLE IF NOT EXISTS `vesselmaster` (
  `vesselcode` varchar(10) NOT NULL,
  `vesselname` varchar(45) DEFAULT NULL,
  `flag` varchar(10) DEFAULT NULL,
  `company` varchar(25) DEFAULT NULL,
  `fleet` varchar(25) DEFAULT NULL,
  `vesseltype` varchar(15) DEFAULT NULL,
  `nationalityrating` varchar(25) DEFAULT NULL,
  `totalcrew` varchar(25) DEFAULT NULL,
  `cba_ca` varchar(25) DEFAULT NULL,
  `formername` varchar(25) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `financialyearend` varchar(25) DEFAULT NULL,
  `nameofowner_principal` varchar(30) DEFAULT NULL,
  `nameofregisteredowner` varchar(30) DEFAULT NULL,
  `insurancehullmachineries` varchar(25) DEFAULT NULL,
  `insurancepi` varchar(25) DEFAULT NULL,
  `actualprincipal` varchar(30) DEFAULT NULL,
  `imono` varchar(25) DEFAULT NULL,
  `officialno` varchar(25) DEFAULT NULL,
  `callsign` varchar(25) DEFAULT NULL,
  `internationalgrosston` varchar(25) DEFAULT NULL,
  `internationalnetton` varchar(25) DEFAULT NULL,
  `class` varchar(25) DEFAULT NULL,
  `classno` varchar(25) DEFAULT NULL,
  `shipbulider` varchar(25) DEFAULT NULL,
  `hullno` varchar(25) DEFAULT NULL,
  `dateofbuilt` datetime DEFAULT NULL,
  `age` varchar(25) DEFAULT NULL,
  `registeredgrosston` varchar(25) DEFAULT NULL,
  `registerednetton` varchar(25) DEFAULT NULL,
  `length_loa` varchar(25) DEFAULT NULL,
  `breadth` varchar(25) DEFAULT NULL,
  `depth` varchar(25) DEFAULT NULL,
  `draft` varchar(25) DEFAULT NULL,
  `deadweight` varchar(25) DEFAULT NULL,
  `capacity` varchar(25) DEFAULT NULL,
  `lastdrydockdate` datetime DEFAULT NULL,
  `nextdrydockdate` datetime DEFAULT NULL,
  `deliverydate` datetime DEFAULT NULL,
  PRIMARY KEY (`vesselcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vesselmaster`
--


-- --------------------------------------------------------

--
-- Table structure for table `workflowdetail`
--

CREATE TABLE IF NOT EXISTS `workflowdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wfmid` int(11) DEFAULT NULL,
  `rank` varchar(10) DEFAULT NULL,
  `stage` int(11) DEFAULT NULL,
  `finalaccess` char(1) DEFAULT NULL,
  `escalate` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Mas_WFmaster_idx` (`wfmid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `workflowdetail`
--


-- --------------------------------------------------------

--
-- Table structure for table `workflowmaster`
--

CREATE TABLE IF NOT EXISTS `workflowmaster` (
  `wfmid` int(11) NOT NULL,
  `formid` varchar(20) DEFAULT NULL,
  `formname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`wfmid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workflowmaster`
--


--
-- Constraints for dumped tables
--

--
-- Constraints for table `extinsformsdoc`
--
ALTER TABLE `extinsformsdoc`
  ADD CONSTRAINT `FK_Ext` FOREIGN KEY (`refid`) REFERENCES `extinspectdetail` (`refid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `extinspectdetail`
--
ALTER TABLE `extinspectdetail`
  ADD CONSTRAINT `FK_extinsid` FOREIGN KEY (`extinsid`) REFERENCES `extinspectmaster` (`extinsid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `extinswfhistory`
--
ALTER TABLE `extinswfhistory`
  ADD CONSTRAINT `FK_extinsid_1` FOREIGN KEY (`extinsid`) REFERENCES `extinspectmaster` (`extinsid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `nearmissinvestigate`
--
ALTER TABLE `nearmissinvestigate`
  ADD CONSTRAINT `FK_nrmid1` FOREIGN KEY (`nrmid`) REFERENCES `nearmissmaster` (`nrmid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `nearmissmatrix`
--
ALTER TABLE `nearmissmatrix`
  ADD CONSTRAINT `FK_nrmid` FOREIGN KEY (`nrmid`) REFERENCES `nearmissmaster` (`nrmid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `nrmwfhistory`
--
ALTER TABLE `nrmwfhistory`
  ADD CONSTRAINT `FK_nrmid3` FOREIGN KEY (`nrmid`) REFERENCES `nearmissmaster` (`nrmid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `rskinitialrisk`
--
ALTER TABLE `rskinitialrisk`
  ADD CONSTRAINT `FK_rskid` FOREIGN KEY (`rskid`) REFERENCES `rskmaster` (`rskid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `rskriskcontrol`
--
ALTER TABLE `rskriskcontrol`
  ADD CONSTRAINT `FK_new_rsk` FOREIGN KEY (`Hazard No`) REFERENCES `rskinitialrisk` (`hazardno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_new_rsk1` FOREIGN KEY (`rskid`) REFERENCES `rskmaster` (`rskid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `rskwfhistory`
--
ALTER TABLE `rskwfhistory`
  ADD CONSTRAINT `FK_rski-Masd` FOREIGN KEY (`rskid`) REFERENCES `rskmaster` (`rskid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `safetycommittee`
--
ALTER TABLE `safetycommittee`
  ADD CONSTRAINT `FK_safid10` FOREIGN KEY (`safid`) REFERENCES `safetymeetingmaster` (`safid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `safetyconcern`
--
ALTER TABLE `safetyconcern`
  ADD CONSTRAINT `FK_safmeetingmaster_concern` FOREIGN KEY (`safid`) REFERENCES `safetymeetingmaster` (`safid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `safetydrill`
--
ALTER TABLE `safetydrill`
  ADD CONSTRAINT `FK_safmeetingmaster_safid` FOREIGN KEY (`safid`) REFERENCES `safetymeetingmaster` (`safid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `safetymeetingtopics`
--
ALTER TABLE `safetymeetingtopics`
  ADD CONSTRAINT `FK_safid1` FOREIGN KEY (`safid`) REFERENCES `safetymeetingmaster` (`safid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `safetyoffice`
--
ALTER TABLE `safetyoffice`
  ADD CONSTRAINT `FK_safmeetingmaster_safoffice` FOREIGN KEY (`safid`) REFERENCES `safetymeetingmaster` (`safid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `safetyoutstanding`
--
ALTER TABLE `safetyoutstanding`
  ADD CONSTRAINT `FK_safetymeetingmaster_oss` FOREIGN KEY (`ossafid`) REFERENCES `safetymeetingmaster` (`safid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_safmeetingmaster_SO` FOREIGN KEY (`safid`) REFERENCES `safetymeetingmaster` (`safid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `safetyrecord`
--
ALTER TABLE `safetyrecord`
  ADD CONSTRAINT `FK_Safetymeetingmaster_rec` FOREIGN KEY (`safid`) REFERENCES `safetymeetingmaster` (`safid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `safetytraining`
--
ALTER TABLE `safetytraining`
  ADD CONSTRAINT `FK_safmeetingmaster_training` FOREIGN KEY (`safid`) REFERENCES `safetymeetingmaster` (`safid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `safwfhistory`
--
ALTER TABLE `safwfhistory`
  ADD CONSTRAINT `FK_safid3` FOREIGN KEY (`safid`) REFERENCES `safetymeetingmaster` (`safid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `workflowdetail`
--
ALTER TABLE `workflowdetail`
  ADD CONSTRAINT `FK_Mas_WFmaster` FOREIGN KEY (`wfmid`) REFERENCES `masters`.`workflowmaster` (`wfmid`) ON DELETE NO ACTION ON UPDATE NO ACTION;
