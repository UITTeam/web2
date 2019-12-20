-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 20, 2019 lúc 08:48 AM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `eng_online_demo`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `username` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `PASS` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `AVATAR` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`username`, `PASS`, `role_id`, `create_date`, `AVATAR`) VALUES
('admin', 'admin', 'admin', '2019-11-19 00:00:00', 'avt.png'),
('std_anhnh', '123456', 'student', '2018-02-20 00:00:00', ''),
('std_chinhnd', '123456', 'student', '2018-01-03 00:00:00', NULL),
('std_colt', '123456', 'student', '2019-12-16 00:00:00', '10.png'),
('std_dungbt', '123456', 'student', '2018-01-03 00:00:00', NULL),
('std_duynh', '123456', 'student', '2018-04-30 00:00:00', NULL),
('std_haudvt', '123456', 'student', '2018-01-03 00:00:00', NULL),
('std_hoangtt', '123456', 'student', '2019-12-03 00:00:00', '5.png'),
('std_lamdv', '123456', 'student', '2018-01-03 00:00:00', NULL),
('std_lamnt', '123456', 'student', '2018-05-11 00:00:00', NULL),
('std_linhny', '123456', 'student', '2019-05-04 00:00:00', '16.png'),
('std_ngocmn', '123456', 'student', '2019-12-16 00:00:00', '52453402_3027232217302268_7206800705728806912_n.png'),
('std_phongth', '123456', 'student', '2019-11-14 00:00:00', '6.png'),
('std_phongtv', '123456', 'student', '2018-03-11 00:00:00', ''),
('std_sinhnt', '123456', 'student', '2018-05-12 00:00:00', NULL),
('std_thont', '123456', 'student', '2018-05-11 00:00:00', NULL),
('std_yennp', '123456', 'student', '2019-12-16 00:00:00', '1f40a291f3cf0a9153de.jpg'),
('teacher_chinhhd', '123456', 'teacher', '2017-01-03 00:00:00', NULL),
('teacher_dungnt', '123456', 'teacher', '2017-01-04 00:00:00', NULL),
('teacher_duylh', '123456', 'teacher', '2015-04-30 00:00:00', NULL),
('teacher_haudvt', '123456', 'teacher', '2017-01-04 00:00:00', NULL),
('teacher_lamdv', '123456', 'teacher', '2016-01-03 00:00:00', NULL),
('teacher_lamtt', '123456', 'teacher', '2016-05-12 00:00:00', NULL),
('teacher_sinhnt', '123456', 'teacher', '2012-05-10 00:00:00', NULL),
('teacher_thont', '123456', 'teacher', '2012-05-17 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `class`
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
-- Đang đổ dữ liệu cho bảng `class`
--

INSERT INTO `class` (`CLASS_ID`, `CLASS_NAME`, `TEACHER`, `COURSE_ID`, `INFO`, `BEGIN`, `END`) VALUES
('ADVANCED_ENG01', 'English 1 - Advanced', 'teacher_haudvt', 8, 'ADVANCED_ENG01.txt', '2017-03-01', '2017-05-24'),
('ADVANCED_ENG02', 'English 2 - Advanced', 'teacher_sinhnt', 8, 'ADVANCED_ENG02.txt', NULL, NULL),
('ADVANCED_ENG03', 'English 3 - Advanced', 'teacher_sinhnt', 8, 'ADVANCED_ENG03.txt', '2017-08-02', '2017-10-24'),
('ADVANCED_ENG04', 'English 4 - Advanced', 'teacher_lamtt', 8, 'ADVANCED_ENG04.txt', NULL, NULL),
('BASIC_ENG01', 'English 1 - Basic', 'teacher_chinhhd', 6, 'BASIC_ENG01.txt', '2017-03-01', '2017-04-26'),
('BASIC_ENG02', 'English 2 - Basic', 'teacher_dungnt', 6, 'BASIC_ENG02.txt', '2017-03-02', '2017-04-27'),
('BASIC_ENG03', 'English 3 - Basic', 'teacher_chinhhd', 6, 'BASIC_ENG03.txt', NULL, NULL),
('BASIC_ENG04', 'English 4 - Basic', 'teacher_sinhnt', 6, 'BASIC_ENG04.txt', NULL, NULL),
('INTERMEDIATE_ENG01', 'English 1 - Intermediate', 'teacher_dungnt', 7, 'INTERMEDIATE_ENG01.txt', '2017-03-01', '2017-05-24'),
('INTERMEDIATE_ENG02', 'English 2 - Intermediate', 'teacher_duylh', 7, 'INTERMEDIATE_ENG02.txt', NULL, NULL),
('INTERMEDIATE_ENG03', 'English 3 - Intermediate', 'teacher_thont', 7, 'INTERMEDIATE_ENG03.txt', '2017-05-01', '2017-07-26'),
('INTERMEDIATE_ENG04', 'English 4 - Intermediate', 'teacher_lamdv', 7, 'INTERMEDIATE_ENG04.txt', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `course`
--

CREATE TABLE `course` (
  `COURSE_ID` int(11) NOT NULL,
  `COURSE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FEE` int(11) DEFAULT NULL,
  `DESCRIPTION` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BENCHMARK` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `course`
--

INSERT INTO `course` (`COURSE_ID`, `COURSE_NAME`, `FEE`, `DESCRIPTION`, `BENCHMARK`) VALUES
(6, 'BASIC LEVEL', 100, 'basic_lv.txt', 1),
(7, 'INTERMEDIATE LEVEL', 150, 'intermediate_lv.txt', 4.5),
(8, 'ADVANCED LEVEL', 180, 'advanced_lv.txt', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `question`
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
-- Đang đổ dữ liệu cho bảng `question`
--

INSERT INTO `question` (`QUESTION_ID`, `TEST_ID`, `CONTENT`, `OPTION1`, `OPTION2`, `OPTION3`, `ANSWER`) VALUES
(246, 39, 'Solar energy doesn’t cause………..', 'pollution', 'polluted', 'pollute ', 1),
(247, 39, 'Tet is a festival………… occurs in late January or early February.', 'whom', 'when ', 'which', 3),
(248, 39, 'It’s raining. …………….., Mr. Nam has to go to work.', 'Although', 'So', 'however', 3),
(249, 39, 'If I ………….rich, I ……………………….around the world.', 'will be - travel ', 'am - will travel', 'were - would travel ', 3),
(250, 39, 'The girl wishes she………………… in Hue for the festival next week.', 'had stayed', 'was staying ', 'could stay', 3),
(251, 39, 'You don’t like watching this film, …………………?', 'don’t you', 'are you ', 'do you ', 3),
(252, 39, 'When he lived in the city, he …………… to the theater twice a week.', 'uses to go ', 'has gone ', 'used to go', 3),
(253, 39, 'My house………….. in 1999', 'is built ', 'was building ', 'was built', 3),
(254, 39, 'The entrance examination will be held………………….June 22nd 2012.', 'in', 'on', 'at', 2),
(255, 39, 'Hoa: I suggest going camping next Sunday.- Lan: …………………………..', 'That’s a fine day ', 'That’s a good idea', 'That’s a reason ', 2),
(256, 40, 'Solar energy doesn’t cause………..', 'pollution', 'polluted', 'pollute ', 1),
(257, 40, 'Tet is a festival………… occurs in late January or early February.', 'whom', 'when ', 'which', 3),
(258, 40, 'It’s raining. …………….., Mr. Nam has to go to work.', 'Although', 'So', 'however', 3),
(259, 40, 'If I ………….rich, I ……………………….around the world.', 'will be - travel ', 'am - will travel', 'were - would travel ', 3),
(260, 40, 'The girl wishes she………………… in Hue for the festival next week.', 'had stayed', 'was staying ', 'could stay', 3),
(261, 40, 'You don’t like watching this film, …………………?', 'don’t you', 'are you ', 'do you ', 3),
(262, 40, 'When he lived in the city, he …………… to the theater twice a week.', 'uses to go ', 'has gone ', 'used to go', 3),
(263, 40, 'My house………….. in 1999', 'is built ', 'was building ', 'was built', 3),
(264, 40, 'The entrance examination will be held………………….June 22nd 2012.', 'in', 'on', 'at', 2),
(265, 40, 'Hoa: I suggest going camping next Sunday.- Lan: …………………………..', 'That’s a fine day ', 'That’s a good idea', 'That’s a reason ', 2),
(266, 41, 'Solar energy doesn’t cause………..', 'pollution', 'polluted', 'pollute ', 1),
(267, 41, 'Tet is a festival………… occurs in late January or early February.', 'whom', 'when ', 'which', 3),
(268, 41, 'It’s raining. …………….., Mr. Nam has to go to work.', 'Although', 'So', 'however', 3),
(269, 41, 'If I ………….rich, I ……………………….around the world.', 'will be - travel ', 'am - will travel', 'were - would travel ', 3),
(270, 41, 'The girl wishes she………………… in Hue for the festival next week.', 'had stayed', 'was staying ', 'could stay', 3),
(271, 41, 'You don’t like watching this film, …………………?', 'don’t you', 'are you ', 'do you ', 3),
(272, 41, 'When he lived in the city, he …………… to the theater twice a week.', 'uses to go ', 'has gone ', 'used to go', 3),
(273, 41, 'My house………….. in 1999', 'is built ', 'was building ', 'was built', 3),
(274, 41, 'The entrance examination will be held………………….June 22nd 2012.', 'in', 'on', 'at', 2),
(275, 41, 'Hoa: I suggest going camping next Sunday.- Lan: …………………………..', 'That’s a fine day ', 'That’s a good idea', 'That’s a reason ', 2),
(276, 42, 'Solar energy doesn’t cause………..', 'pollution', 'polluted', 'pollute ', 1),
(277, 42, 'Tet is a festival………… occurs in late January or early February.', 'whom', 'when ', 'which', 3),
(278, 42, 'It’s raining. …………….., Mr. Nam has to go to work.', 'Although', 'So', 'however', 3),
(279, 42, 'If I ………….rich, I ……………………….around the world.', 'will be - travel ', 'am - will travel', 'were - would travel ', 3),
(280, 42, 'The girl wishes she………………… in Hue for the festival next week.', 'had stayed', 'was staying ', 'could stay', 3),
(281, 42, 'You don’t like watching this film, …………………?', 'don’t you', 'are you ', 'do you ', 3),
(282, 42, 'When he lived in the city, he …………… to the theater twice a week.', 'uses to go ', 'has gone ', 'used to go', 3),
(283, 42, 'My house………….. in 1999', 'is built ', 'was building ', 'was built', 3),
(284, 42, 'The entrance examination will be held………………….June 22nd 2012.', 'in', 'on', 'at', 2),
(285, 42, 'Hoa: I suggest going camping next Sunday.- Lan: …………………………..', 'That’s a fine day ', 'That’s a good idea', 'That’s a reason ', 2),
(286, 43, 'Solar energy doesn’t cause………..', 'pollution', 'polluted', 'pollute ', 1),
(287, 43, 'Tet is a festival………… occurs in late January or early February.', 'whom', 'when ', 'which', 3),
(288, 43, 'It’s raining. …………….., Mr. Nam has to go to work.', 'Although', 'So', 'however', 3),
(289, 43, 'If I ………….rich, I ……………………….around the world.', 'will be - travel ', 'am - will travel', 'were - would travel ', 3),
(290, 43, 'The girl wishes she………………… in Hue for the festival next week.', 'had stayed', 'was staying ', 'could stay', 3),
(291, 43, 'You don’t like watching this film, …………………?', 'don’t you', 'are you ', 'do you ', 3),
(292, 43, 'When he lived in the city, he …………… to the theater twice a week.', 'uses to go ', 'has gone ', 'used to go', 3),
(293, 43, 'My house………….. in 1999', 'is built ', 'was building ', 'was built', 3),
(294, 43, 'The entrance examination will be held………………….June 22nd 2012.', 'in', 'on', 'at', 2),
(295, 43, 'Hoa: I suggest going camping next Sunday.- Lan: …………………………..', 'That’s a fine day ', 'That’s a good idea', 'That’s a reason ', 2),
(296, 44, 'Solar energy doesn’t cause………..', 'pollution', 'polluted', 'pollute ', 1),
(297, 44, 'Tet is a festival………… occurs in late January or early February.', 'whom', 'when ', 'which', 3),
(298, 44, 'It’s raining. …………….., Mr. Nam has to go to work.', 'Although', 'So', 'however', 3),
(299, 44, 'If I ………….rich, I ……………………….around the world.', 'will be - travel ', 'am - will travel', 'were - would travel ', 3),
(300, 44, 'The girl wishes she………………… in Hue for the festival next week.', 'had stayed', 'was staying ', 'could stay', 3),
(301, 44, 'You don’t like watching this film, …………………?', 'don’t you', 'are you ', 'do you ', 3),
(302, 44, 'When he lived in the city, he …………… to the theater twice a week.', 'uses to go ', 'has gone ', 'used to go', 3),
(303, 44, 'My house………….. in 1999', 'is built ', 'was building ', 'was built', 3),
(304, 44, 'The entrance examination will be held………………….June 22nd 2012.', 'in', 'on', 'at', 2),
(305, 44, 'Hoa: I suggest going camping next Sunday.- Lan: …………………………..', 'That’s a fine day ', 'That’s a good idea', 'That’s a reason ', 2),
(306, 45, 'Solar energy doesn’t cause………..', 'pollution', 'polluted', 'pollute ', 1),
(307, 45, 'Tet is a festival………… occurs in late January or early February.', 'whom', 'when ', 'which', 3),
(308, 45, 'It’s raining. …………….., Mr. Nam has to go to work.', 'Although', 'So', 'however', 3),
(309, 45, 'If I ………….rich, I ……………………….around the world.', 'will be - travel ', 'am - will travel', 'were - would travel ', 3),
(310, 45, 'The girl wishes she………………… in Hue for the festival next week.', 'had stayed', 'was staying ', 'could stay', 3),
(311, 45, 'You don’t like watching this film, …………………?', 'don’t you', 'are you ', 'do you ', 3),
(312, 45, 'When he lived in the city, he …………… to the theater twice a week.', 'uses to go ', 'has gone ', 'used to go', 3),
(313, 45, 'My house………….. in 1999', 'is built ', 'was building ', 'was built', 3),
(314, 45, 'The entrance examination will be held………………….June 22nd 2012.', 'in', 'on', 'at', 2),
(315, 45, 'Hoa: I suggest going camping next Sunday.- Lan: …………………………..', 'That’s a fine day ', 'That’s a good idea', 'That’s a reason ', 2),
(316, 47, 'Captain Scott is __________ to the South Pole was marked by disappointment and tragedy.', 'excursion', 'visit', 'expedition', 3),
(317, 47, 'The teacher made a difficult question, but at last, Joe __________ a good answer', 'came up with', 'came up to', 'came up against', 1),
(318, 47, 'There are a lot of __________ buildings in the centre of the city.', 'many – floored', 'many story', 'multi – storey', 3),
(319, 47, '“ Make yourself at home.” “ ______________”', 'Yes, can I help you', 'Thanks. Same to you', 'That’ very kind. Thank you.', 3),
(320, 47, 'Olypiakos ________ 0 – 0 with Real Madrid in the first leg of the semi-final in Athens.', 'drew', 'equalled', 'equalised', 1),
(321, 47, 'The pop star _________ when the lights _________', 'sang – were going out', 'was singing - went out', 'was singing – were going out', 2),
(322, 47, ' It was not until she had arrived home ______ remembered her appointment with the doctor', 'wrong', 'flase', 'difficult', 2),
(323, 47, 'Jane will have to repeat the course because her work has been __________', 'when she', 'that she', 'she', 3),
(324, 47, 'Jane will have to repeat the course because her work has been __________', 'unpleasant', 'unnecessary', 'unsatisfactory', 3),
(325, 47, ' I do not know If _________ in my essay.', 'is there a mistake', 'there a mistake is', 'there is a mistake', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `result`
--

CREATE TABLE `result` (
  `USERNAME` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `TEST_ID` int(11) NOT NULL,
  `TIMES` int(11) NOT NULL,
  `POINT` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `result`
--

INSERT INTO `result` (`USERNAME`, `TEST_ID`, `TIMES`, `POINT`) VALUES
('std_anhnh', 39, 1, 3),
('std_anhnh', 39, 2, 0),
('std_anhnh', 42, 1, 4),
('std_chinhnd', 39, 1, 9),
('std_chinhnd', 39, 2, 10),
('std_chinhnd', 42, 1, 10),
('std_ngocmn', 39, 1, 9),
('std_ngocmn', 39, 2, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `ROLE_ID` char(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`ROLE_ID`) VALUES
('admin'),
('student'),
('teacher');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student`
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
-- Đang đổ dữ liệu cho bảng `student`
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
('std_ngocmn', 'Mai Nhu Ngoc', '1999-05-10', 'female', 'ngocmn@gmail.com', 'Da Lat ', '0123456789'),
('std_phongth', 'Tran Hoang Phong', '2002-09-02', 'male', 'phongth@gmail.com', 'HCM city', '0321654987'),
('std_phongtv', 'Tran Vuong Phong', '1995-06-15', 'male', 'phongtv@gmail.com', 'HCM city', '0123456788'),
('std_sinhnt', 'Nguyen Truong Sinh', '2001-09-12', 'male', 'sinhnt@gmail.com', 'Dong Nai', '0123654558'),
('std_thont', 'Nguyen Truong Tho', '1999-05-13', 'male', 'thont@gmail.com', 'HCM city', '0123654999'),
('std_yennp', 'Nguyen Phi Yen', '1999-11-07', 'female', 'yennp@gmail.com', 'HCM city', '0123456987');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `study`
--

CREATE TABLE `study` (
  `USERNAME` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `CLASS_ID` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `RESULT` float DEFAULT NULL,
  `RANK` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `study`
--

INSERT INTO `study` (`USERNAME`, `CLASS_ID`, `RESULT`, `RANK`) VALUES
('std_anhnh', 'ADVANCED_ENG03', 0, 'WEAK'),
('std_anhnh', 'BASIC_ENG01', 1.5, 'WEAK'),
('std_anhnh', 'INTERMEDIATE_ENG03', 4, 'BELOW AVERAGE'),
('std_chinhnd', 'ADVANCED_ENG03', 0, 'WEAK'),
('std_chinhnd', 'BASIC_ENG01', 9.5, 'EXCELLENT'),
('std_chinhnd', 'INTERMEDIATE_ENG03', 10, 'EXCELLENT'),
('std_colt', 'ADVANCED_ENG03', 0, 'WEAK'),
('std_colt', 'BASIC_ENG01', 0, 'WEAK'),
('std_colt', 'INTERMEDIATE_ENG03', 0, 'WEAK'),
('std_dungbt', 'ADVANCED_ENG03', 0, 'WEAK'),
('std_dungbt', 'BASIC_ENG01', 0, 'WEAK'),
('std_dungbt', 'INTERMEDIATE_ENG03', 0, 'WEAK'),
('std_duynh', 'ADVANCED_ENG01', 0, 'WEAK'),
('std_duynh', 'ADVANCED_ENG03', 0, 'WEAK'),
('std_duynh', 'INTERMEDIATE_ENG03', 0, 'WEAK'),
('std_haudvt', 'ADVANCED_ENG01', 0, 'WEAK'),
('std_haudvt', 'ADVANCED_ENG03', 0, 'WEAK'),
('std_hoangtt', 'ADVANCED_ENG01', 0, 'WEAK'),
('std_lamnt', 'BASIC_ENG02', 0, 'WEAK'),
('std_linhny', 'INTERMEDIATE_ENG01', 0, 'WEAK'),
('std_ngocmn', 'BASIC_ENG01', 7.5, 'GOOD'),
('std_ngocmn', 'INTERMEDIATE_ENG03', 0, 'WEAK'),
('std_phongth', 'BASIC_ENG02', 0, 'WEAK'),
('std_phongtv', 'BASIC_ENG02', 0, 'WEAK'),
('std_sinhnt', 'BASIC_ENG02', 0, 'WEAK'),
('std_thont', 'BASIC_ENG02', 0, 'WEAK'),
('std_yennp', 'BASIC_ENG02', 0, 'WEAK');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teacher`
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
-- Đang đổ dữ liệu cho bảng `teacher`
--

INSERT INTO `teacher` (`USERNAME`, `FULLNAME`, `DOB`, `SEX`, `EMAIL`, `ADDRESS`, `PHONE`, `CERTIFICATE`) VALUES
('teacher_chinhhd', 'Ha Duc Chinh', '1990-01-12', 'male', 'chinhhd@gmail.com', 'Binh Duong', '0987454421', 'TOEIC 800'),
('teacher_dungnt', 'Nguyen Tien Dung', '1990-08-16', 'male', 'dungnt@gmail.com', 'HCM city', '0123456700', 'IELTS 8.0'),
('teacher_duylh', 'Le Hong Duy', '1991-11-07', 'male', 'duylh@gmail.com', 'HCM city', '0124345897', 'IELTS 8.0'),
('teacher_haudvt', 'Dang Van Trung Hau', '1989-04-01', 'male', 'haudvt@gmail.com', 'Dong Nai', '0123654712', 'TOEIC 850'),
('teacher_lamdv', 'Dang Viet Lam', '1989-08-18', 'femal', 'lamdv@gmail.com', 'HCM city', '0901882013', 'IELTS 8.0'),
('teacher_lamtt', 'Tran Truc Lam', '1987-05-10', 'femal', 'lamtt@gmail.com', 'HCM city', '0123451289', 'TOEIC 850'),
('teacher_sinhnt', 'Nguyen Truong Sinh', '1985-09-02', 'male', 'sinhnt@gmail.com', 'HCM city', '0321655687', 'IELTS 8.5'),
('teacher_thont', 'Nguyen Trung Tho', '1991-06-15', 'male', 'thont@gmail.com', 'HCM city', '0123457778', 'IELTS 8.5');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `test`
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
-- Đang đổ dữ liệu cho bảng `test`
--

INSERT INTO `test` (`TEST_ID`, `TEST_NAME`, `IMG`, `CLASS_ID`, `TYPE`, `TIMELIMMIT`, `USERNAME`) VALUES
(39, 'basic1', '2.png', 'BASIC_ENG01', 'todo', 10, 'admin'),
(40, 'basic1', '9.png', 'BASIC_ENG02', 'todo', 10, 'admin'),
(41, 'intermediate1', '12.png', 'INTERMEDIATE_ENG01', 'todo', 10, 'admin'),
(42, 'intermediate1', '18.png', 'INTERMEDIATE_ENG03', 'todo', 10, 'admin'),
(43, 'advanced1', '16.png', 'ADVANCED_ENG01', 'todo', 10, 'admin'),
(44, 'advanced1', '19.png', 'ADVANCED_ENG03', 'todo', 10, 'admin'),
(45, 'freetest1', '2.png', 'BASIC_ENG01', 'free', 5, 'admin'),
(47, 'ft2', '1.png', 'BASIC_ENG02', 'free', 5, 'admin');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`username`),
  ADD KEY `account_role_FK` (`role_id`);

--
-- Chỉ mục cho bảng `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`CLASS_ID`),
  ADD KEY `CLASS_TEACHER_FK` (`TEACHER`),
  ADD KEY `CLASS_COURSE_FK` (`COURSE_ID`);

--
-- Chỉ mục cho bảng `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`COURSE_ID`);

--
-- Chỉ mục cho bảng `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`QUESTION_ID`,`TEST_ID`),
  ADD KEY `q_t_FK` (`TEST_ID`);

--
-- Chỉ mục cho bảng `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`USERNAME`,`TEST_ID`,`TIMES`),
  ADD KEY `KQ_BT_FK` (`TEST_ID`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`ROLE_ID`);

--
-- Chỉ mục cho bảng `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`USERNAME`);

--
-- Chỉ mục cho bảng `study`
--
ALTER TABLE `study`
  ADD PRIMARY KEY (`USERNAME`,`CLASS_ID`),
  ADD KEY `STUDY_CLASS_FK` (`CLASS_ID`);

--
-- Chỉ mục cho bảng `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`USERNAME`);

--
-- Chỉ mục cho bảng `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`TEST_ID`),
  ADD KEY `TEST_CLASS_FK` (`CLASS_ID`),
  ADD KEY `TEST_ACCOUNT_FK` (`USERNAME`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `course`
--
ALTER TABLE `course`
  MODIFY `COURSE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `question`
--
ALTER TABLE `question`
  MODIFY `QUESTION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT cho bảng `test`
--
ALTER TABLE `test`
  MODIFY `TEST_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_role_FK` FOREIGN KEY (`role_id`) REFERENCES `role` (`ROLE_ID`);

--
-- Các ràng buộc cho bảng `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `CLASS_COURSE_FK` FOREIGN KEY (`COURSE_ID`) REFERENCES `course` (`COURSE_ID`),
  ADD CONSTRAINT `CLASS_TEACHER_FK` FOREIGN KEY (`TEACHER`) REFERENCES `teacher` (`USERNAME`);

--
-- Các ràng buộc cho bảng `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `q_t_FK` FOREIGN KEY (`TEST_ID`) REFERENCES `test` (`TEST_ID`);

--
-- Các ràng buộc cho bảng `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `KQ_BT_FK` FOREIGN KEY (`TEST_ID`) REFERENCES `test` (`TEST_ID`),
  ADD CONSTRAINT `KQ_TK_FK` FOREIGN KEY (`USERNAME`) REFERENCES `account` (`username`);

--
-- Các ràng buộc cho bảng `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `STU_ACC_FK` FOREIGN KEY (`USERNAME`) REFERENCES `account` (`username`);

--
-- Các ràng buộc cho bảng `study`
--
ALTER TABLE `study`
  ADD CONSTRAINT `STUDY_CLASS_FK` FOREIGN KEY (`CLASS_ID`) REFERENCES `class` (`CLASS_ID`),
  ADD CONSTRAINT `STUDY_STUDENT_FK` FOREIGN KEY (`USERNAME`) REFERENCES `student` (`USERNAME`);

--
-- Các ràng buộc cho bảng `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `TEACHER_ACC_FK` FOREIGN KEY (`USERNAME`) REFERENCES `account` (`username`);

--
-- Các ràng buộc cho bảng `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `TEST_ACCOUNT_FK` FOREIGN KEY (`USERNAME`) REFERENCES `account` (`username`),
  ADD CONSTRAINT `TEST_CLASS_FK` FOREIGN KEY (`CLASS_ID`) REFERENCES `class` (`CLASS_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
