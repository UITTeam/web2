-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2019 at 06:32 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eng_online_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `PASS` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `AVATAR` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`username`, `PASS`, `role_id`, `create_date`, `AVATAR`) VALUES
('admin', 'admin', 'admin', '2019-11-19 00:00:00', 'avt.png'),
('admin2', '123456', 'admin', '2019-12-20 15:01:15', 'join-icon.png'),
('std_anhnh', '123456', 'student', '2018-02-20 00:00:00', 'avt.png'),
('std_chinhnd', '123456', 'student', '2018-01-03 00:00:00', 'icon_login.png'),
('std_colt', '123456', 'student', '2019-12-16 00:00:00', 'icon_login.png'),
('std_dungbt', '123456', 'student', '2018-01-03 00:00:00', 'icon_login.png'),
('std_duynh', '123456', 'student', '2018-04-30 00:00:00', 'icon_login.png'),
('std_haudvt', '123456', 'student', '2018-01-03 00:00:00', 'icon_login.png'),
('std_hoangtt', '123456', 'student', '2019-12-03 00:00:00', 'icon_login.png'),
('std_lamdv', '123456', 'student', '2018-01-03 00:00:00', 'icon_login.png'),
('std_lamnt', '123456', 'student', '2018-05-11 00:00:00', 'icon_login.png'),
('std_linhny', '123456', 'student', '2019-05-04 00:00:00', 'icon_login.png'),
('std_ngocmn', '123456', 'student', '2019-12-16 00:00:00', 'icon-student.jpg'),
('std_phongth', '123456', 'student', '2019-11-14 00:00:00', 'icon_login.png'),
('std_phongtv', '123456', 'student', '2018-03-11 00:00:00', 'icon_login.png'),
('std_sinhnt', '123456', 'student', '2018-05-12 00:00:00', 'icon_login.png'),
('std_thont', '123456', 'student', '2018-05-11 00:00:00', 'icon_login.png'),
('std_yennp', '123456', 'student', '2019-12-16 00:00:00', '1f40a291f3cf0a9153de.jpg'),
('teacher_chinhhd', '123456', 'teacher', '2017-01-03 00:00:00', 'icon-teacher.jpg'),
('teacher_dungnt', '123456', 'teacher', '2017-01-04 00:00:00', 'icon-teacher.jpg'),
('teacher_duylh', '123456', 'teacher', '2015-04-30 00:00:00', 'icon-teacher.jpg'),
('teacher_haudvt', '123456', 'teacher', '2017-01-04 00:00:00', 'icon-teacher.jpg'),
('teacher_lamdv', '123456', 'teacher', '2016-01-03 00:00:00', 'icon-teacher.jpg'),
('teacher_lamtt', '123456', 'teacher', '2016-05-12 00:00:00', 'icon-teacher.jpg'),
('teacher_ngocmn', '123456', 'teacher', '2019-12-20 16:46:14', 'icon-teacher.jpg'),
('teacher_sinhnt', '123456', 'teacher', '2012-05-10 00:00:00', 'icon-teacher.jpg'),
('teacher_thont', '123456', 'teacher', '2012-05-17 00:00:00', 'icon-teacher.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `CLASS_ID` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `CLASS_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEACHER` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COURSE_ID` int(11) DEFAULT NULL,
  `INFO` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BEGIN` date DEFAULT NULL,
  `END` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`CLASS_ID`, `CLASS_NAME`, `TEACHER`, `COURSE_ID`, `INFO`, `BEGIN`, `END`) VALUES
('ADVANCED_ENG01', 'English 1 - Advanced', 'teacher_haudvt', 8, 'ADVANCED_ENG01.txt', '2019-03-01', '2019-05-24'),
('ADVANCED_ENG02', 'English 2 - Advanced', 'teacher_sinhnt', 8, 'ADVANCED_ENG02.txt', '2019-03-02', '2019-05-27'),
('ADVANCED_ENG03', 'English 3 - Advanced', 'teacher_sinhnt', 8, 'ADVANCED_ENG03.txt', '2019-08-02', '2019-10-24'),
('ADVANCED_ENG04', 'English 4 - Advanced', 'teacher_lamtt', 8, 'ADVANCED_ENG04.txt', NULL, NULL),
('BASIC_ENG01', 'English 1 - Basic', 'teacher_chinhhd', 6, 'BASIC_ENG01.txt', '2019-03-01', '2019-04-26'),
('BASIC_ENG02', 'English 2 - Basic', 'teacher_dungnt', 6, 'BASIC_ENG02.txt', '2019-03-02', '2019-04-27'),
('BASIC_ENG03', 'English 3 - Basic', 'teacher_chinhhd', 6, 'BASIC_ENG03.txt', NULL, NULL),
('BASIC_ENG04', 'English 4 - Basic', 'teacher_sinhnt', 6, 'BASIC_ENG04.txt', NULL, NULL),
('INTERMEDIATE_ENG01', 'English 1 - Intermediate', 'teacher_ngocmn', 7, 'INTERMEDIATE_ENG01.txt', '2019-03-01', '2019-05-24'),
('INTERMEDIATE_ENG02', 'English 2 - Intermediate', 'teacher_ngocmn', 7, 'INTERMEDIATE_ENG02.txt', '2019-11-01', '2020-01-31'),
('INTERMEDIATE_ENG03', 'English 3 - Intermediate', 'teacher_thont', 7, 'INTERMEDIATE_ENG03.txt', '2019-05-01', '2019-07-26'),
('INTERMEDIATE_ENG04', 'English 4 - Intermediate', 'teacher_lamdv', 7, 'INTERMEDIATE_ENG04.txt', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `COURSE_ID` int(11) NOT NULL,
  `COURSE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FEE` int(11) DEFAULT NULL,
  `DESCRIPTION` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BENCHMARK` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`COURSE_ID`, `COURSE_NAME`, `FEE`, `DESCRIPTION`, `BENCHMARK`) VALUES
(6, 'BASIC LEVEL', 100, 'basic_lv.txt', 1.2),
(7, 'INTERMEDIATE LEVEL', 150, 'intermediate_lv.txt', 4.5),
(8, 'ADVANCED LEVEL', 180, 'advanced_lv.txt', 7);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `QUESTION_ID` int(11) NOT NULL,
  `TEST_ID` int(11) NOT NULL,
  `CONTENT` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OPTION1` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OPTION2` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OPTION3` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ANSWER` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`QUESTION_ID`, `TEST_ID`, `CONTENT`, `OPTION1`, `OPTION2`, `OPTION3`, `ANSWER`) VALUES
(406, 55, 'In order to check all the telephone calls made during the month I want the account to be ........', 'detailed', 'particular', 'itemized', 3),
(407, 55, 'All the representatives are allowed to spend money for entertaining with their ....... account', 'expensive', 'expending', 'expense', 3),
(408, 55, 'To spread the cost of spending on articles you buy many big departments let you open a ........', 'credible', 'credit', 'credited', 2),
(409, 55, 'Once you are earning money and you want to keep it safe, you can always ....... an account with a bank.', 'open', 'start', 'begin', 1),
(410, 55, 'At the end of thirty days the company will ask you to ....... the account.', 'arrange', 'finish', 'settle', 3),
(411, 55, 'The finance director is responsible for ....... the accounts for the business', 'holding', 'keeping', 'taking', 3),
(412, 55, 'At the end of the financial year it is the responsibility of the chief finance officer to ....... the accounts', 'print', 'edit', 'publish', 3),
(413, 55, 'Before they got married, they decided to open a ....... account.', 'united', 'joint', 'unified', 2),
(414, 55, 'If you have saved some money, it is a good idea to put the money into a ....... account.', 'heap', 'pile', 'deposit', 3),
(415, 55, 'However hard I try, I find it impossible to account ....... this missing sum of money.', 'with', 'to', 'for', 3),
(416, 56, 'Interviewer: Perhaps you could start by telling us why you have ........', 'obtained for this job', 'applied for this job', 'intended for this job', 2),
(417, 56, 'Candidate: I think the main reason is because I like working in ........', 'the free air', 'the clear air', 'the open air', 3),
(418, 56, 'Interviewer: You mean you like the idea of an office with ........', 'air control', 'air managment', 'air conditioning', 3),
(419, 56, 'Candidate: I am sorry I do not understand what you are ........', 'in about', 'on about', 'for about', 2),
(420, 56, 'Interviewer: I should have thought this was ........', 'clear obvious', 'mostly obvious', 'pretty obvious', 3),
(421, 56, 'Candidate: Not to me, ........', 'it is not', 'it can not be', 'it will not be', 1),
(422, 56, 'Interviewer: I think there must be a mistake, I ........', 'put it you are Mr Johnson', 'take it you are Mr Johnson', 'place it you are Mr Johnson', 2),
(423, 56, 'Candidate: I am Mr Jensen. I am afraid it is a case of ........', 'mistaken personality', 'mistaken character', 'mistaken identity', 3),
(424, 56, 'Interviewer: So you are not after the job of guardian........', 'I presume', 'I pretend', 'I prefer', 1),
(425, 56, 'Candidate: No, sorry as I said I like working outside, I want to be a gardener, ........', 'if you do not care', 'if you don not agree', 'if you do not mind', 3),
(546, 57, 'It was the third time in six months that the bank had been held______', 'over', 'down', 'up', 3),
(547, 57, 'I always run ______of money before the end off the month.', 'out', 'back', 'up', 1),
(548, 57, 'It is taking me longer to get______ the operation than I thought.', 'through', 'by', 'over', 3),
(549, 57, 'I have just spent two weeks looking_______an aunt of mine who is been ill.', 'at', 'for', 'after', 3),
(550, 57, 'I have always got_______well with old people.', 'off', 'on', 'in', 2),
(551, 57, 'It is very cold in here. Do you mind if I turn _________ the heating?', 'down', 'away', 'on', 3),
(552, 57, 'They have _____ a new tower where that old building used to be.', 'put up', 'put down', 'pushed up', 1),
(553, 57, 'Stephen always wanted to be an actor when he ________ up.', 'came', 'grew', 'brought', 2),
(554, 57, 'The bus only stops here to ________ passengers.', 'alight', 'get off', 'pick up', 3),
(555, 57, 'If anything urgent comes _____, you can contact me at this number.', 'across', 'by', 'up', 3),
(556, 58, 'Your daughter is just started work, has not she? How is she getting _____?', 'by', 'on', 'out', 2),
(557, 58, 'We had to turn _______ their invitation to lunch as we had a previous engagement.', 'overestimated', 'out', 'down', 3),
(558, 58, 'While driving to work, we ran out____ gas.', 'up', 'of', 'in', 2),
(559, 58, 'He died ____ heart disease.', 'of', 'from', 'because', 1),
(560, 58, 'The elevator is not running today. It is ________ order.', 'to', 'out', 'out of', 3),
(561, 58, 'I explained ____ him what it meant', 'to', 'about', 'over', 1),
(562, 58, 'Pasteur devoted all his life _______ science', 'for', 'in ', 'to', 3),
(563, 58, 'House cats are distantly related ___ lions and tigers.', 'in', 'to ', 'of', 2),
(564, 58, 'Is this type of soil suitable ___ growing tomatoes ?', 'for', 'about', 'in', 1),
(565, 58, 'Were you aware _____ the regulations against smoking in this area ?', 'in', 'with', 'of', 3),
(566, 59, 'Her latest film_____ its object in a verty short space of time, which was to shock', 'acquired', 'got', 'attained', 3),
(567, 59, 'We were in a small rowing boat and wer terrified that the steamer had not seen us as it was bearing _____ on us', 'run', 'continue', 'persist', 2),
(568, 59, 'The film was the first to show conditions in which poor people lived and such was to ____ furture directiors', 'influence', 'hold', 'infect', 1),
(569, 59, 'The only reason for them going to the cinema on that day was to find some form of_________', 'internment', 'involvement ', 'entertainment', 3),
(570, 59, 'The diector is intention in making the film was to try and____simplicity as seen by a child.', 'report', 'reprehend', 'represent', 3),
(571, 59, 'The fans outside the cinema on the first showing of the film were unwilling to ______ until all the stars had gone home. ', 'dispose', 'displace', 'disperse', 3),
(572, 59, 'The delay in_____the film to get general puclic was because certain scenes were considered  tasteless.', 'replacing', 'repeating', 'releasing', 3),
(573, 59, 'The theme of the second film is quite simply a ________ of the first. ', 'construction', 'continuation', 'continuum', 2),
(574, 59, 'In the making of the film the direcrion is quite ________from the financing of the project.', 'separate', 'separation', 'separately', 1),
(575, 59, 'Someone will five a _____of a film and when you see it for yourself, it is quite.', 'describing', 'describes', 'description', 3),
(576, 53, 'In order to make a sensible ....... among the different vacuum cleaners available, it is important to do some research.', 'comparing', 'comparison', 'compares', 2),
(577, 53, 'The local department store has to make a sustained effort at this time of the year to ....... customer demand for summer clothing.', 'satisfy', 'satisfaction', 'satisfies', 1),
(578, 53, 'A good team leader must be able to ....... his colleagues to face the challenge of a downturn in business.', 'inspiring', 'inspiration (', 'inspire', 3),
(579, 53, 'I can strongly recommend this ....... as the best available on the market today', 'producer', 'product', 'production', 2),
(580, 53, 'The.......trend in children is desire to wear designer label clothes should be exploited.', 'currant', 'current', 'occuring', 2),
(581, 53, 'You have to ....... the public that it is in their own interest to read the instructions on all our medicines', 'convict', 'conviction', 'convince', 3),
(582, 53, 'In order to survive in this business you must adopt a ....... stance.', 'competition', 'competing', 'competitive', 3),
(583, 53, 'The ....... of alcohol is not allowed in any of the company is premises in order to present a clean image.', 'consumer', 'consumption', 'consuming', 2),
(584, 53, 'When you are setting out to ....... new customers in an advertisement, choose the right words.', 'attraction', 'attractive', 'attract', 3),
(585, 53, 'The really effective television commercial is the one that ....... you of its authenticity.', 'persuades', 'persuasion', 'persuasive', 1);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `USERNAME` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `TEST_ID` int(11) NOT NULL,
  `TIMES` int(11) NOT NULL,
  `POINT` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `ROLE_ID` char(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`ROLE_ID`) VALUES
('admin'),
('student'),
('teacher');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `USERNAME` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `FULLNAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DOB` date DEFAULT NULL,
  `SEX` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADDRESS` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PHONE` char(12) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`USERNAME`, `FULLNAME`, `DOB`, `SEX`, `EMAIL`, `ADDRESS`, `PHONE`) VALUES
('std_anhnh', 'Nguyen Hoang Anh', '2001-12-11', 'female', 'anhnh@gmail.com', 'HCM city', '0123546789'),
('std_chinhnd', 'Nguyen Duc Chinh', '1999-12-05', 'male', 'chinhnd@gmail.com', 'HCM city', '0123654978'),
('std_colt', 'Le Tang Co', '1999-08-16', 'male', 'colt@gmail.com', 'HCM city', '0123456798'),
('std_dungbt', 'Bui Tien Dung', '1997-11-30', 'male', 'dungbt@gmail.com', 'Binh Duong', '0123554978'),
('std_duynh', 'Nguyen Hong Duy', '2002-03-26', 'male', 'duynh@gmail.com', 'HCM city', '0123654954'),
('std_haudvt', 'Doan Van Hau', '1998-10-05', 'male', 'haudv@gmail.com', 'HCM city', '0123614978'),
('std_hoangtt', 'Tran Thanh Hoang', '2001-04-01', 'male', 'hoangtt@gmail.com', 'Dong Nai', '0123654789'),
('std_lamdv', 'Dang Van Lam', '2003-08-23', 'male', 'lamdv@gmail.com', 'HCM city', '0123600978'),
('std_lamnt', 'Nguyen Truc Lam', '1999-04-06', 'female', 'lamnt@gmail.com', 'HCM city', '0123654948'),
('std_linhny', 'Nguyen Yen Linh', '2004-08-18', 'female', 'linhny@gmail.com', 'HCM city', '0901882004'),
('std_ngocmn', 'Mai Nhu Ngoc', '1999-05-10', 'female', 'ngocmn@gmail.com', 'HCM City', '0123456789'),
('std_phongth', 'Tran Hoang Phong', '2002-09-02', 'male', 'phongth@gmail.com', 'HCM city', '0321654987'),
('std_phongtv', 'Tran Vuong Phong', '1995-06-15', 'male', 'phongtv@gmail.com', 'HCM city', '0123456788'),
('std_sinhnt', 'Nguyen Truong Sinh', '2001-09-12', 'male', 'sinhnt@gmail.com', 'Dong Nai', '0123654558'),
('std_thont', 'Nguyen Truong Tho', '1999-05-13', 'male', 'thont@gmail.com', 'HCM city', '0123654999'),
('std_yennp', 'Nguyen Phi Yen', '1999-11-07', 'female', 'yennp@gmail.com', 'HCM city', '0123456987');

-- --------------------------------------------------------

--
-- Table structure for table `study`
--

CREATE TABLE `study` (
  `USERNAME` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `CLASS_ID` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `RESULT` float DEFAULT NULL,
  `RANK` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `study`
--

INSERT INTO `study` (`USERNAME`, `CLASS_ID`, `RESULT`, `RANK`) VALUES
('std_anhnh', 'ADVANCED_ENG01', 0, 'WEAK'),
('std_anhnh', 'ADVANCED_ENG03', 0, 'WEAK'),
('std_anhnh', 'BASIC_ENG01', 1.5, 'WEAK'),
('std_anhnh', 'INTERMEDIATE_ENG03', 4, 'BELOW AVERAGE'),
('std_chinhnd', 'ADVANCED_ENG03', 0, 'WEAK'),
('std_chinhnd', 'BASIC_ENG01', 9.5, 'EXCELLENT'),
('std_chinhnd', 'INTERMEDIATE_ENG03', 10, 'EXCELLENT'),
('std_colt', 'ADVANCED_ENG03', 0, 'WEAK'),
('std_colt', 'BASIC_ENG01', 0, 'WEAK'),
('std_colt', 'INTERMEDIATE_ENG02', 0, 'WEAK'),
('std_colt', 'INTERMEDIATE_ENG03', 0, 'WEAK'),
('std_colt', 'INTERMEDIATE_ENG04', 0, 'WEAK'),
('std_dungbt', 'ADVANCED_ENG03', 0, 'WEAK'),
('std_dungbt', 'BASIC_ENG01', 0, 'WEAK'),
('std_dungbt', 'INTERMEDIATE_ENG02', 0, 'WEAK'),
('std_dungbt', 'INTERMEDIATE_ENG03', 0, 'WEAK'),
('std_duynh', 'ADVANCED_ENG01', 0, 'WEAK'),
('std_duynh', 'ADVANCED_ENG03', 0, 'WEAK'),
('std_duynh', 'INTERMEDIATE_ENG03', 0, 'WEAK'),
('std_haudvt', 'ADVANCED_ENG01', 0, 'WEAK'),
('std_haudvt', 'ADVANCED_ENG03', 0, 'WEAK'),
('std_hoangtt', 'ADVANCED_ENG01', 0, 'WEAK'),
('std_lamnt', 'BASIC_ENG02', 0, 'WEAK'),
('std_linhny', 'INTERMEDIATE_ENG01', 0, 'WEAK'),
('std_linhny', 'INTERMEDIATE_ENG02', 0, 'WEAK'),
('std_ngocmn', 'BASIC_ENG01', 7.4, 'AVGRAGE'),
('std_ngocmn', 'BASIC_ENG02', 8.3, 'GOOD'),
('std_ngocmn', 'INTERMEDIATE_ENG02', 0, 'WEAK'),
('std_ngocmn', 'INTERMEDIATE_ENG03', 0, 'WEAK'),
('std_phongth', 'BASIC_ENG02', 0, 'WEAK'),
('std_phongtv', 'BASIC_ENG02', 0, 'WEAK'),
('std_sinhnt', 'BASIC_ENG02', 0, 'WEAK'),
('std_thont', 'BASIC_ENG02', 0, 'WEAK'),
('std_thont', 'INTERMEDIATE_ENG02', 0, 'WEAK'),
('std_yennp', 'ADVANCED_ENG01', 0, 'WEAK'),
('std_yennp', 'BASIC_ENG02', 0, 'WEAK'),
('std_yennp', 'INTERMEDIATE_ENG02', 0, 'WEAK');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `USERNAME` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `FULLNAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `SEX` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADDRESS` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PHONE` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CERTIFICATE` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`USERNAME`, `FULLNAME`, `DOB`, `SEX`, `EMAIL`, `ADDRESS`, `PHONE`, `CERTIFICATE`) VALUES
('teacher_chinhhd', 'Ha Duc Chinh', '1990-01-12', 'male', 'chinhhd@gmail.com', 'Binh Duong', '0987454421', 'TOEIC 800'),
('teacher_dungnt', 'Nguyen Tien Dung', '1990-08-16', 'male', 'dungnt@gmail.com', 'HCM city', '0123456700', 'IELTS 8.0'),
('teacher_duylh', 'Le Hong Duy', '1991-11-07', 'male', 'duylh@gmail.com', 'HCM city', '0124345897', 'IELTS 8.0'),
('teacher_haudvt', 'Dang Van Trung Hau', '1989-04-01', 'male', 'haudvt@gmail.com', 'Dong Nai', '0123654712', 'TOEIC 850'),
('teacher_lamdv', 'Dang Viet Lam', '1989-08-18', 'femal', 'lamdv@gmail.com', 'HCM city', '0901882013', 'IELTS 8.0'),
('teacher_lamtt', 'Tran Truc Lam', '1987-05-10', 'femal', 'lamtt@gmail.com', 'HCM city', '0123451289', 'TOEIC 850'),
('teacher_ngocmn', 'Mai Ngoc ', '1994-10-05', 'female', 'gvNgocmn@gmail.com', 'Ho Chi Minh City', '0388197156', 'IELTS 7.0'),
('teacher_sinhnt', 'Nguyen Truong Sinh', '1985-09-02', 'male', 'sinhnt@gmail.com', 'HCM city', '0321655687', 'IELTS 8.5'),
('teacher_thont', 'Nguyen Trung Tho', '1991-06-15', 'male', 'thont@gmail.com', 'HCM city', '0123457778', 'IELTS 8.5');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `TEST_ID` int(11) NOT NULL,
  `TEST_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IMG` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CLASS_ID` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `TIMELIMMIT` int(11) DEFAULT NULL,
  `USERNAME` char(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`TEST_ID`, `TEST_NAME`, `IMG`, `CLASS_ID`, `TYPE`, `TIMELIMMIT`, `USERNAME`) VALUES
(53, 'Advertising', '12.png', 'INTERMEDIATE_ENG02', 'todo', 6, 'admin'),
(55, 'Accounts', '5.png', 'BASIC_ENG02', 'free', 5, 'teacher_ngocmn'),
(56, 'Test 1 ', '5.png', 'INTERMEDIATE_ENG02', 'free', 5, 'teacher_ngocmn'),
(57, 'Pharsal Verb 1', '10.png', 'INTERMEDIATE_ENG02', 'free', 5, 'admin'),
(58, 'Pharsal Verb 2', '18.png', 'INTERMEDIATE_ENG02', 'todo', 5, 'admin'),
(59, 'Cinemas', '17.png', 'INTERMEDIATE_ENG02', 'todo', 5, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`username`),
  ADD KEY `account_role_FK` (`role_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`CLASS_ID`),
  ADD KEY `CLASS_TEACHER_FK` (`TEACHER`),
  ADD KEY `CLASS_COURSE_FK` (`COURSE_ID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`COURSE_ID`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`QUESTION_ID`,`TEST_ID`),
  ADD KEY `q_t_FK` (`TEST_ID`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`USERNAME`,`TEST_ID`,`TIMES`),
  ADD KEY `KQ_BT_FK` (`TEST_ID`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`ROLE_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`USERNAME`);

--
-- Indexes for table `study`
--
ALTER TABLE `study`
  ADD PRIMARY KEY (`USERNAME`,`CLASS_ID`),
  ADD KEY `STUDY_CLASS_FK` (`CLASS_ID`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`USERNAME`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`TEST_ID`),
  ADD KEY `TEST_CLASS_FK` (`CLASS_ID`),
  ADD KEY `TEST_ACCOUNT_FK` (`USERNAME`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `COURSE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `QUESTION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=586;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `TEST_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_role_FK` FOREIGN KEY (`role_id`) REFERENCES `role` (`ROLE_ID`);

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `CLASS_COURSE_FK` FOREIGN KEY (`COURSE_ID`) REFERENCES `course` (`COURSE_ID`),
  ADD CONSTRAINT `CLASS_TEACHER_FK` FOREIGN KEY (`TEACHER`) REFERENCES `teacher` (`USERNAME`);

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `q_t_FK` FOREIGN KEY (`TEST_ID`) REFERENCES `test` (`TEST_ID`);

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `KQ_BT_FK` FOREIGN KEY (`TEST_ID`) REFERENCES `test` (`TEST_ID`),
  ADD CONSTRAINT `KQ_TK_FK` FOREIGN KEY (`USERNAME`) REFERENCES `account` (`username`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `STU_ACC_FK` FOREIGN KEY (`USERNAME`) REFERENCES `account` (`username`);

--
-- Constraints for table `study`
--
ALTER TABLE `study`
  ADD CONSTRAINT `STUDY_CLASS_FK` FOREIGN KEY (`CLASS_ID`) REFERENCES `class` (`CLASS_ID`),
  ADD CONSTRAINT `STUDY_STUDENT_FK` FOREIGN KEY (`USERNAME`) REFERENCES `student` (`USERNAME`);

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `TEACHER_ACC_FK` FOREIGN KEY (`USERNAME`) REFERENCES `account` (`username`);

--
-- Constraints for table `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `TEST_ACCOUNT_FK` FOREIGN KEY (`USERNAME`) REFERENCES `account` (`username`),
  ADD CONSTRAINT `TEST_CLASS_FK` FOREIGN KEY (`CLASS_ID`) REFERENCES `class` (`CLASS_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
