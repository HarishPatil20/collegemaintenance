-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2024 at 05:35 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clgmaintenance`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `password`) VALUES
('308', '1');

-- --------------------------------------------------------

--
-- Table structure for table `allotment`
--

CREATE TABLE `allotment` (
  `id` int(11) NOT NULL,
  `batchcode` varchar(20) NOT NULL,
  `sem` varchar(20) NOT NULL,
  `bid` varchar(20) NOT NULL,
  `scode` varchar(20) NOT NULL,
  `fid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allotment`
--

INSERT INTO `allotment` (`id`, `batchcode`, `sem`, `bid`, `scode`, `fid`) VALUES
(3, '2', '6', 'me', '20me52i', '02'),
(4, '2', '5', '308CS', '20CS52I ', 'CS104');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `bid` varchar(20) NOT NULL,
  `bname` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`bid`, `bname`) VALUES
('308CS', 'Computer Science and Engineering'),
('308CV', 'Sivil Engineering'),
('308E&E', 'Electrical & Electronics Engineering'),
('308EC', 'Electronics and Communication Engineering'),
('308ME', 'Mechanical Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `candidatelist`
--

CREATE TABLE `candidatelist` (
  `regno` varchar(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `bid` varchar(20) NOT NULL,
  `sem` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `phno` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `parentsphno` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidatelist`
--

INSERT INTO `candidatelist` (`regno`, `name`, `bid`, `sem`, `dob`, `phno`, `address`, `parentsphno`) VALUES
('308CS21001', 'A CHETHANA', '308CS', 'null', '2004-05-22', '9972481467', 'SAGARA', '7022547864'),
('308CS21002', 'A S THOUFEEQ', '308CS', 'select semester', '2005-05-02', '9972481467', 'kargla', '9365214780'),
('308CS21005', 'AMULYA D A', '308CS', '3rd', '2003-02-22', '9972481467', 'ulavi', '8945671230'),
('308CS21006', 'ANUSHREE K', '308CS', '6', '2006-05-05', '9972481467', 'tuppur', '8745961230'),
('308CS21008', 'B DARSHAN', '308CS', 'select semester', '2005-05-25', '9972481467', 'kargla', '6360254178'),
('308CS21009', 'DEEKSHITH V', '308CS', 'select semester', '2006-12-19', '7019356387', 'sagara', '7894561235'),
('308CS21010', 'FATHIMA FARHANA', '308CS', '6', '2005-06-05', '9972481467', 'sagara', '8974561230'),
('308CS21011', 'FATHIMA RUWA', '308CS', '6', '2005-08-22', '9972481467', 'sagara', '7894561230'),
('308CS21012', 'FATHIMA SHIFANA', '308CS', '6', '2006-06-05', '9972481467', 'sagara', '8794561254'),
('308CS21013', 'HARISHA PATIL', '308CS', '6', '2003-04-20', '9731975121', 'Lakkavalli', '8152980093'),
('308CS21014', 'HARSHITHA M S', '308CS', '6', '2005-11-08', '9972481467', 'sagara', '8956471236'),
('308CS21015', 'KUSUM SINGH', '308CS', '6', '2005-06-06', '9972481467', 'sagara', '6360251478'),
('308CS21016', 'MANU M', '308CS', '6', '2005-09-05', '9972481467', 'alalli', '8546971230'),
('308CS21017', 'MEHEK TAJ', '308CS', '6', '2004-08-25', '9972481467', 'keladi', '9875461230'),
('308CS21018', 'MOHAMMAD SHAHID', '308CS', '6', '2004-04-08', '9972481467', 'sagara', '8974565280'),
('308CS21020', 'PAVAN G', '308CS', '6', '2006-02-25', '9972481467', 'sagara', '8974561230'),
('308CS21021', 'PRAJWAL C', '308CS', '6', '2003-08-08', '9972481467', 'sagara', '9874561232'),
('308CS21022', 'PRAVEEN S', '308CS', '6', '2005-04-25', '7760384338', 'kargle', '8974561235'),
('308CS21023', 'PRUTHVI G', '308CS', '6', '2006-01-27', '7899698083', 'Alalli', '8974561230'),
('308CS21024', 'PUNEETH KUMAR B U', '308CS', '6', '2004-05-20', '6360589745', 'Anantapura', '7894561235'),
('308CS21025', 'RAJATH KUMAR B M', '308CS', '6', '2005-08-05', '6987456122', 'sagara', '7894561235'),
('308CS21026', 'RAKESH N', '308CS', '6', '2004-04-05', '9972481467', 'Eduvani', '8945671264'),
('308CS21027', 'RITHU G', '308CS', '6', '2004-08-05', '9972481467', 'sagara', '8974561254'),
('308CS21028', 'RUDRESH A J', '308CS', '6', '2004-09-07', '9972481467', 'Anveri', '8974561230'),
('308CS21029', 'SANKETH B', '308CS', '6', '2005-08-01', '7022186128', 'sagara', '9874561236'),
('308CS21030', 'SATHISH E', '308CS', '6', '2006-04-02', '7676638801', 'Eduvani', '9972481467'),
('308CS21031', 'SHARANYA S', '308CS', '6', '2005-03-08', '9972481468', 'Shivamogga', '9978881468'),
('308CS21032', 'SHEKH DADAPEER', '308CS', '6', '2006-08-04', '8772481467', 'Anantapura', '9772481467'),
('308CS21033', 'SURAJ P M', '308CS', '6', '2004-04-27', '6360803127', 'Talaguppa', '9035216509'),
('308CS21034', 'TAMANNA M', '308CS', '6', '2004-05-22', '7972481467', 'Anantapura', '9972481467'),
('308CS21036', 'VAGEESHA G N', '308CS', '6', '2004-09-08', '9972481467', 'sagara', '7894561231'),
('308CS21037', 'VAIBHAVI V GUDIGAR', '308CS', '6', '2005-05-07', '9972481467', 'sagara', '8899774455'),
('308CS21038', 'VEERESH BASAVARAJ  MELLEGATTI', '308CS', '6', '2005-12-05', '7676413398', 'Haveri,Nagimatti', '9676413377'),
('308CS22701', 'MAYUR S R', '308CS', '6', '2004-03-22', '9482140923', 'Saiduru', '9876543210'),
('308CS22702', 'MITHUN U', '308CS', '6', '2005-04-07', '7483761308', 'kargle', '8794561230'),
('308CS22704', 'SHREYAS M E', '308CS', '6', '2005-02-08', '8217389421', 'Marturu', '6362453690'),
('308CS22705', 'SOUJANYA M', '308CS', '6', '2005-08-05', '9972481467', 'sagara', '8974587412'),
('308CS22706', 'TARUN Y M', '308CS', '6', '2005-06-25', '9901260915', 'kargle', '8974561230'),
('308CS22707', 'VIKAS V', '308CS', '6', '2000-06-05', '9972481467', 'sagara', '7894587412');

-- --------------------------------------------------------

--
-- Table structure for table `circular`
--

CREATE TABLE `circular` (
  `id` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `filepath` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `circular`
--

INSERT INTO `circular` (`id`, `date`, `filepath`) VALUES
(4, '2024-03-01', '20240207_172924.jpg'),
(5, '3322-03-31', 'campus21.jpg'),
(6, '3322-03-31', 'Screenshot 2024-02-13 212119.png'),
(7, '2005-02-21', 'campus21.jpg'),
(8, '2003-06-22', '20240207_172924.jpg'),
(10, '2024-03-01', 'college letter to company.docx'),
(11, '2024-04-04', 'child-with-eyes-closed-hands-together-in-prayer-clip-art-58145.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `id` int(11) NOT NULL,
  `regno` varchar(20) NOT NULL,
  `scode` varchar(20) NOT NULL,
  `maxmarks` varchar(20) NOT NULL,
  `obtainedmarks` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`id`, `regno`, `scode`, `maxmarks`, `obtainedmarks`) VALUES
(1, '308CS21013', '20SC01T', '100', '92'),
(2, '308CS21013', '20CS11T', '100', '85'),
(3, '308CS21013', '20EC01P', '100', '90'),
(4, '308CS21013', '20CS01P', '100', '78'),
(5, '308CS21009', '20CS01P', '100', '80'),
(6, '308CS21009', '20CS11T', '100', '75'),
(7, '308CS21009', '20SC01T', '100', '73'),
(8, '308CS21009', '20EC01P', '100', '93'),
(9, '308CS21013', '20PM01T', '100', '40'),
(10, '308CS21013', '20SC02P', '100', '96'),
(11, '308CS21013', '20EG01P', '100', '80'),
(12, '308CS21013', '20ME02P', '100', '50'),
(13, '308CS21013', '20CS21P', '100', '78'),
(14, '308CS21009', '20PM01T', '100', '46'),
(15, '308CS21009', '20SC02P', '100', '80'),
(16, '308CS21009', '20EG01P', '100', '89'),
(17, '308CS21013', '20ME02P', '100', '48'),
(18, '308CS21013', '20CS21P', '100', '90'),
(19, '308CS21009', '20ME02P', '100', '86'),
(20, '308CS21009', '20CS21P', '100', '80'),
(21, '308CS22706', '20CS52I', '450', '415');

-- --------------------------------------------------------

--
-- Table structure for table `examallotment`
--

CREATE TABLE `examallotment` (
  `id` int(11) NOT NULL,
  `scode` varchar(20) NOT NULL,
  `roomno` varchar(20) NOT NULL,
  `fid` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examallotment`
--

INSERT INTO `examallotment` (`id`, `scode`, `roomno`, `fid`, `date`, `time`) VALUES
(6, '20SC01T', '5', 'CS103', '2024-03-25', '21:56:00'),
(7, '20SC01T', '2', 'CS101', '2024-03-26', '09:30:00'),
(8, '20SC01T', '5', 'CS104', '2025-02-23', '10:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `fid` varchar(20) NOT NULL,
  `bid` varchar(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phno` varchar(20) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `joiningdate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`fid`, `bid`, `name`, `phno`, `designation`, `joiningdate`) VALUES
('CS101', '308CS', 'Puneeth J N', '9743682058', 'Lecture', '2010-01-25'),
('CS102', '308CS', 'LAKSHMI', '8974561235', 'Lecture', '2003-04-20'),
('CS103', '308CS', 'UMESH', '8899658741', 'Lecture', '2000-08-05'),
('CS104', '308CS', 'VISHWANATH HEGDE ', '9972481467', 'Lecture(HOD)', '1990-08-20'),
('CS105', '308CS', 'LOKESH', '9972481467', 'Lecture', '1992-08-20'),
('CS106', '308CS', 'GEERISH', '9731542165', 'Lecture', '2002-05-22'),
('CS107', '308CS', 'VASTHALAA', '8872481467', 'Lecture', '1990-05-20'),
('EC101', '308EC', 'RAJESH BAKTHAA', '9972481467', 'Lecture', '2000-05-22'),
('EC102', '308EC', 'SHIVALINGAPPA', '9972481467', 'HOD', '1998-02-15'),
('ME101', '308ME', 'RAJEEV', '9972481467', 'Lecture', '2007-08-25');

-- --------------------------------------------------------

--
-- Table structure for table `flogin`
--

CREATE TABLE `flogin` (
  `fid` varchar(11) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flogin`
--

INSERT INTO `flogin` (`fid`, `password`) VALUES
('308', '3');

-- --------------------------------------------------------

--
-- Table structure for table `iamarks`
--

CREATE TABLE `iamarks` (
  `id` int(11) NOT NULL,
  `regno` varchar(20) NOT NULL,
  `scode` varchar(20) NOT NULL,
  `maxmarks` varchar(20) NOT NULL,
  `obtainedmarks` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iamarks`
--

INSERT INTO `iamarks` (`id`, `regno`, `scode`, `maxmarks`, `obtainedmarks`) VALUES
(1, '308CS21013', '20SC01T', '100', '92'),
(2, '308CS21013', '20CS11T', '100', '80'),
(3, '308CS21013', '20EC01P', '100', '90'),
(4, '308CS21013', '20CS01P', '100', '100'),
(5, '308CS21013', '20AU01T', '100', '75'),
(6, '308CS21009', '20AU01T', '100', '98'),
(7, '308CS21009', '20SC01T', '100', '99'),
(8, '308CS21009', '20CS11T', '100', '95'),
(9, '308CS21009', '20EC01P', '100', '80'),
(10, '308CS21009', '20CS01P', '100', '89'),
(11, '308CS21013', '20PM01T', '100', '60'),
(12, '308CS21013', '20SC02P', '100', '83'),
(13, '308CS21013', '20EG01P', '100', '70'),
(14, '308CS21013', '20ME02P', '100', '45'),
(15, '308CS21013', '20CS21P', '100', '95'),
(16, '308CS21013', '20KA21T', '100', '80'),
(17, '308CS21009', '20KA21T', '100', '89'),
(18, '308CS21009', '20CS21P', '100', '86'),
(19, '308CS21009', '20ME02P', '100', '76'),
(20, '308CS21009', '20EG01P', '100', '98'),
(21, '308CS21009', '20SC02P', '100', '87'),
(22, '308CS21009', '20PM01T', '100', '86'),
(23, '308CS21013', '20CS52I', '100', '98'),
(24, '308CS22706', '20CS31P', '150', '120'),
(25, '308CS22706', '20CS41P', '150', '120'),
(26, '308CS22706', '20CS52I', '100', '100');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `sid` varchar(20) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`sid`, `password`) VALUES
('308', '2');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `scode` varchar(20) NOT NULL,
  `sname` varchar(200) NOT NULL,
  `bid` varchar(20) NOT NULL,
  `sem` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`scode`, `sname`, `bid`, `sem`) VALUES
('20AU01T', 'Environmental Sustainability', '308CS', '1'),
('20CE31P', 'Engineering Mechanics and Strenth of Materials', '308CV', '3'),
('20CE32P', 'Modren Surveying', '308CV', '3'),
('20CE33P', 'Construction Techniques', '308CV', '3'),
('20CE34P', 'Building Drawing using CADD', '308CV', '3'),
('20CE41P', 'Concrete Technology', '308CV', '4'),
('20CE42P', 'Building Estimating and Valuation', '308CV', '4'),
('20CE43P', 'Site Management', '308CV', '4'),
('20CE44P', 'Design and detailing of RCC structures', '308CV', '4'),
('20CE51 I ', 'Structural Engineering', '308CV', '5'),
('20CE52 I', 'Town Planning and  Green Building ', '308CV', '5'),
('20CE53 I ', 'Transportation  Engineering ', '308CV', '5'),
('20CE54 I ', 'Built Environment ', '308CV', '5'),
('20CE61E ', 'Entrepreneursh  ip and Start up  pathway   -   Minimum  Viable  Product  MVP/  Incubation/  Startup  proposal', '308CV', '6'),
('20CE61R ', 'Science and  Research  Pathway   -  Research  project ', '308CV', '6'),
('20CE61S ', 'Specialisation  pathway  - Internship/  project ', '308CV', '6'),
('20CN11T', 'Fundamentals of Photography', '308CV', '1'),
('20CN21P', 'Photo Sound Practical', '308CV', '1'),
('20CS01P', 'IT Skills', '308CS', '1'),
('20CS11T', 'Fundamentals of Computer', '308CS', '1'),
('20CS21P', 'Multimedia & Animation', '308CS', '2'),
('20CS31P', 'Python Programming', '308CS', '3'),
('20CS32P', 'Computer Hardware,  Maintenance and  Administration', '308CS', '3'),
('20CS33P', 'Computer Networks ', '308CS', '3'),
('20CS34P ', 'Database System Concepts and  PL/SQL', '308CS', '3'),
('20CS41P ', 'Data structures with Python ', '308CS', '4'),
('20CS42P ', 'Operating System and  Administration ', '308CS', '4'),
('20CS43P ', 'Object Oriented Programming  and Design with Java ', '308CS', '4'),
('20CS44P', 'Software Engineering  principles and practices ', '308CS', '4'),
('20CS45T ', 'Indian Constitution', '308CS', '4'),
('20CS52I', 'Full Stack  Development', '308CS', '5'),
('20CS61E ', 'Entrepreneurs  hip and Start  up pathway - Minimum  Viable Product  MVP/  Incubation/  Startup  proposal ', '308CS', '6'),
('20CS61R', 'Science and  Research  Pathway -  Research  project ', '308CS', '6'),
('20CS61S ', ' Specialisation pathway - Internship/  project', '308CS', '6'),
('20EC01P', 'Fundamentals of Electrical & Electronics Enginearing', '308CS', '1'),
('20EC11T', 'Digital Electronics', '308EC', '1'),
('20EC21P', 'Electronic Components & Devices', '308EC', '2'),
('20EC31P', 'Analog Electronics', '308EC', '3'),
('20EC32P	', 'Logic Design using Verilog	', '308EC', '3'),
('20EC33P', 'Communication	Systems	', '308EC', '3'),
('20EC34P', 'Electronic Measurements	and	 Testing	Techniques', '308EC', '3'),
('20EC41P', 'PCB Design & Fabrication	', '308EC', '4'),
('20EC42P	', 'Wireless	Communication	', '308EC', '4'),
('20EC43P', 'Embedded C	Programming	', '308EC', '4'),
('20EC44P', 'Industrial  Automation	', '308EC', '4'),
('20EC45T', 'Indian Constitution	', '308EC', '4'),
('20EC51I ', '1. Drone Technologies ', '308EC', '5'),
('20EC52I', '2. Industrial Internet of  Things (IIoT) ', '308EC', '5'),
('20EC53I', '3. Automation &  Robotics', '308EC', '5'),
('20EC61E', 'Entrepreneurs  hip and Start  up pathway -   Minimum  Viable Product  MVP/  Incubation/  Startup  proposal ', '308EC', '6'),
('20EC61R', 'Science and  Research  Pathway  -  Research  project ', '308EC', '6'),
('20EC61S', ' Specialisation pathway  -  Internship/  project ', '308EC', '6'),
('20EE11T', 'Basics of Electrical Power System', '308EE', '1'),
('20EE21P', 'REsidential Electrical Wiring Practice', '308EE', '2'),
('20EE31P', 'Transformer and	Alternators', '308EE', '3'),
('20EE32P	', 'Transmission  and  Distribution', '308EE', '3'),
('20EE33P	', 'Switchgear	and	Protection	', '308EE', '3'),
('20EE34P', 'Analog and Digital Electronics', '308EE', '3'),
('20EE41P', 'Electric	Motors	', '308EE', '4'),
('20EE42P	', 'Power Electronics	', '308EE', '4'),
('20EE43P', 'Fundamentals of Automation Technology', '308EE', '4'),
('20EE44P	', 'Computer Aided Electrical	Drafting	(CAED)	', '308EE', '4'),
('20EE51I ', 'Industrial  Automation ', '308EE', '5'),
('20EE52I ', ' Power Engineering  ', '308EE', '5'),
('20EE53I ', ' Renewable Energy', '308EE', '5'),
('20EE54I', 'Electrical Utility  Engineering   ', '308EE', '5'),
('20EE61E', 'Entrepreneu  rship and  Start up  pathway  -  Minimum  Viable Product  MVP/  Incubation/  Startup  proposal', '308EE', '6'),
('20EE61R', 'Science and  Research  Pathway  -  Research  project ', '308EE', '6'),
('20EE61S', 'Specialisatio  n pathway  - Internship/  project ', '308EE', '6'),
('20EG01P', 'Communication Skills', '308CS', '2'),
('20ET51I ', 'Entrepreneurship and  Start up', '308EC', '5'),
('20KA21T', 'Kannada-1', '308CS', '2'),
('20KA31T	', '!&#3262;#&#3236;%	&&#3202;&#3226;&#3240;-II/	&#3244;&#3251;/&#3270;	&#3221;&#3240;2&#3233;-II', '308EC', '3'),
('20KA31T ', '&#3256;&#3262;&#3257;&#3263;&#3236;&#3277;&#3247; &#3256;&#3263;&#3202;&#3226;&#3240;-II/ &#3244;&#3251;&#3221;&#3270; &#3221;&#3240;&#3240;&#3233;-II ', '308CS', '3'),
('20ME02P', 'Computer Aideed Engineering Graphics', '308CS', '2'),
('20ME11T', 'Materials for Engineering', '308ME', '1'),
('20ME21P', 'Mechanical Workshop Practice-1', '308ME', '2'),
('20ME31P	', 'Mechanics of Materials', '308ME', '3'),
('20ME32P', 'Machine	Tool Technology	', '308ME', '3'),
('20ME33P', 'Manufacturing Processes', '308ME', '3'),
('20ME34P', 'Fluid  Power	Engineering	', '308ME', '3'),
('20ME41P	', 'Operations	Management	', '308ME', '4'),
('20ME42P	', 'CNC  Programming  and  Machining	', '308ME', '4'),
('20ME43P', 'Product  Design  and  Development	', '308ME', '4'),
('20ME44P	', 'Elements  of	Industrial  Automation', '308ME', '4'),
('20ME45T', 'Indian  Constitution', '308ME', '4'),
('20ME51I ', 'Automation and  Robotics ', '308ME', '5'),
('20ME52I ', 'Heating,  Ventilation and  Air Conditioning  (HVAC) ', '308ME', '5'),
('20ME53I ', 'Advanced  Manufacturing  Technologies ', '308ME', '5'),
('20ME61E ', 'Entreprene  urship and  start up  -  Minimum Viable  Product -MVP/  Incubation/  Startup proposal', '308ME', '6'),
('20ME61R ', 'Science  and  -  Research  Pathway    Research project', '308ME', '6'),
('20ME61S ', 'Specialisa  tion  pathway -  Internship/  project', '308ME', '6'),
('20PM01T', 'Project Management Skill', '308CS', '2'),
('20SC01T', 'Engineering Mathematics', '308CS', '1'),
('20SC02P', 'StatiStics and Analytics', '308CS', '2');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `bid` varchar(20) NOT NULL,
  `sem` varchar(20) NOT NULL,
  `filepath` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`id`, `date`, `bid`, `sem`, `filepath`) VALUES
(2, '2025-03-02', 'CS', '2', 'tarun.challen.pdf'),
(4, '2003-06-22', 'CV21', '4', 'campus2.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `allotment`
--
ALTER TABLE `allotment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `candidatelist`
--
ALTER TABLE `candidatelist`
  ADD PRIMARY KEY (`regno`);

--
-- Indexes for table `circular`
--
ALTER TABLE `circular`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examallotment`
--
ALTER TABLE `examallotment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `flogin`
--
ALTER TABLE `flogin`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `iamarks`
--
ALTER TABLE `iamarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`scode`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allotment`
--
ALTER TABLE `allotment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `circular`
--
ALTER TABLE `circular`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `examallotment`
--
ALTER TABLE `examallotment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `iamarks`
--
ALTER TABLE `iamarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
