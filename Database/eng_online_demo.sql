-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 20, 2019 lúc 05:42 AM
-- Phiên bản máy phục vụ: 10.1.40-MariaDB
-- Phiên bản PHP: 7.3.5

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
('std_ngocmn', '12345678', 'student', '2019-11-04 00:00:00', '51076298_2989441557748001_39945613919387648_n.png'),
('std_ngocmn1', '1235756', 'teacher', '2019-11-17 00:00:00', '1378546-lavender-flower-wallpaper-1920x1200-large-resolution.jpg'),
('std_ngocmn2', '123456', 'student', '2019-11-10 00:00:00', '53435126_3089506194408203_4628828048949510144_n.png'),
('std_ngocmn3', '0123456', 'student', '2019-11-10 00:00:00', 'Capture.PNG'),
('std_ngocmn4', '123456', 'student', '2019-11-16 00:00:00', '52823409_2366051810123882_2530041294202339328_n.jpg'),
('std_ngocmn5', '07548', 'student', '2019-10-27 00:00:00', '1378546-lavender-flower-wallpaper-1920x1200-large-resolution.jpg'),
('std_ngocmn6', '1', 'student', '2019-10-27 00:00:00', '1378546-lavender-flower-wallpaper-1920x1200-large-resolution.jpg'),
('teacher_ngocmn', '123456', 'teacher', '2019-11-03 00:00:00', '1378546-lavender-flower-wallpaper-1920x1200-large-resolution.jpg'),
('teacher_ngocmn1', '123456', 'teacher', '2019-11-20 00:00:00', 'avt.png'),
('teacher_ngocmn3', '123456', 'teacher', '2019-11-17 00:00:00', 'icon-teacher.jpg'),
('teacher_ngocmn4', '123456', 'teacher', '2019-11-17 00:00:00', 'icon3.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `class`
--

CREATE TABLE `class` (
  `CLASS_ID` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `CLASS_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEACHER` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COURSE_ID` int(11) DEFAULT NULL,
  `INFO` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `class`
--

INSERT INTO `class` (`CLASS_ID`, `CLASS_NAME`, `TEACHER`, `COURSE_ID`, `INFO`) VALUES
('ENG01', 'ENGLISH 01', 'teacher_ngocmn', 4, 'phantan_1.txt'),
('ENG02', 'ENGLISH 02', 'teacher_ngocmn4', 3, 'PhanTan_KT1.txt'),
('ENG03', 'ENGLISH 03', 'teacher_ngocmn3', 3, 'PhanTan_KT1.txt'),
('ENG04', 'ENGLISH 04', 'teacher_ngocmn', 5, 'phantan_1.txt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `course`
--

CREATE TABLE `course` (
  `COURSE_ID` int(11) NOT NULL,
  `COURSE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FEE` int(11) DEFAULT NULL,
  `DESCRIPTION` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `course`
--

INSERT INTO `course` (`COURSE_ID`, `COURSE_NAME`, `FEE`, `DESCRIPTION`) VALUES
(3, 'FOR CHILDREN', 40, 'phantan_1.txt'),
(4, 'FOR HIGH SCHOOL', 73, 'phantan_1.txt'),
(5, 'FOR CHILD', 55, '');

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
  `SEX` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADDRESS` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PHONE` char(12) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `student`
--

INSERT INTO `student` (`USERNAME`, `FULLNAME`, `DOB`, `SEX`, `EMAIL`, `ADDRESS`, `PHONE`) VALUES
('std_ngocmn', 'Mai NhÆ° Ngá»c', '2019-10-27', 'femal', 'ngoc@gmail.com', 'HCM City', '0137635'),
('std_ngocmn2', 'Mai NhÆ° Ngá»c 2', '2019-10-27', 'male', 'ngoc2@gmail.com', 'HCM City', '0762425'),
('std_ngocmn3', 'Mai NhÆ° Ngá»c 3', '1999-07-07', 'femal', 'ngoc3@gmail.com', 'HCM City', '082346359'),
('std_ngocmn4', 'MNN', '2019-10-27', 'femal', 'ngoc4@gmail.com', 'HCM City', '0762924646'),
('std_ngocmn5', 'Mai NhÆ° Ngá»c 5', '2019-05-28', 'male', 'ngoc5@gmail.com', 'HCM', '0765438587'),
('std_ngocmn6', 'Mai NhÆ° Ngá»c', '2019-10-27', 'male', 'ngoc6@gmail.com', 'HCM', '1786345683');

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
('teacher_ngocmn', 'Mai Nhu Ngoc', '2019-11-28', 'female', 'ngoc3@gmail.com', 'HCM', '95345346', 'B'),
('teacher_ngocmn3', 'NGOC 3', '2019-11-18', 'female', 'ngoc33@gmail.com', 'HCM', '087642554', 'B'),
('teacher_ngocmn4', 'NGOC 4', '2019-11-18', 'female', 't_ngoc4@gmail.com', 'HCM', '087365962', 'A');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `test`
--

CREATE TABLE `test` (
  `TEST_ID` int(11) NOT NULL,
  `TEST_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `QUESTIONS` int(10) NOT NULL,
  `IMG` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CLASS_ID` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIMELIMMIT` int(11) DEFAULT NULL,
  `USERNAME` char(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `test`
--

INSERT INTO `test` (`TEST_ID`, `TEST_NAME`, `QUESTIONS`, `IMG`, `CLASS_ID`, `TIMELIMMIT`, `USERNAME`) VALUES
(1, 'Question Tag', 5, '1.png', 'ENG03', 10, 'admin'),
(2, 'Question Tag 2', 5, '6.png', 'ENG04', 5, 'admin');

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
  MODIFY `COURSE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `test`
--
ALTER TABLE `test`
  MODIFY `TEST_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- Các ràng buộc cho bảng `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `STU_ACC_FK` FOREIGN KEY (`USERNAME`) REFERENCES `account` (`username`);

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
