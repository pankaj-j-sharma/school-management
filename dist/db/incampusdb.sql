-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2020 at 01:48 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `incampusit`
--
CREATE DATABASE IF NOT EXISTS `incampusit` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `incampusit`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `index_number` bigint(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `i_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `reg_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `admin`
--

TRUNCATE TABLE `admin`;
--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `index_number`, `full_name`, `i_name`, `gender`, `address`, `phone`, `email`, `image_name`, `reg_date`) VALUES
(1, 100, 'Incampus IT Admin', 'Incampus IT', 'NA', 'India', '9768739439', 'incampusit@gmail.com', 'uploads/images/profile/incampus_it_admin.jpg', '2023-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conversation_id` int(11) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `sender_index` bigint(11) NOT NULL,
  `sender_type` varchar(255) NOT NULL,
  `receiver_index` bigint(11) NOT NULL,
  `receiver_type` varchar(255) NOT NULL,
  `msg` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `_isread` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `chat`
--

TRUNCATE TABLE `chat`;
-- --------------------------------------------------------

--
-- Table structure for table `class_room`
--

DROP TABLE IF EXISTS `class_room`;
CREATE TABLE IF NOT EXISTS `class_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `student_count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `class_room`
--

TRUNCATE TABLE `class_room`;
--
-- Dumping data for table `class_room`
--

INSERT INTO `class_room` (`id`, `name`, `student_count`) VALUES
(18, 'Class A', 750),
(19, 'Class B', 500),
(20, 'Class C', 850),
(21, 'Class D', 1000),
(22, 'Class E', 1200);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `grade_id` varchar(255) NOT NULL,
  `create_by` bigint(11) NOT NULL,
  `creator_type` varchar(255) NOT NULL,
  `start_date_time` datetime NOT NULL,
  `end_date_time` datetime NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `events`
--

TRUNCATE TABLE `events`;
--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `note`, `color`, `category_id`, `grade_id`, `create_by`, `creator_type`, `start_date_time`, `end_date_time`, `year`, `month`) VALUES
(1, 'notify', 'all are welcomed', '#601c1c', 1, '', 100, 'Admin', '2020-05-29 00:00:00', '2020-05-30 23:59:00', 2020, 4);

-- --------------------------------------------------------

--
-- Table structure for table `event_category`
--

DROP TABLE IF EXISTS `event_category`;
CREATE TABLE IF NOT EXISTS `event_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `event_category`
--

TRUNCATE TABLE `event_category`;
-- --------------------------------------------------------

--
-- Table structure for table `event_category_type`
--

DROP TABLE IF EXISTS `event_category_type`;
CREATE TABLE IF NOT EXISTS `event_category_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `event_category_type`
--

TRUNCATE TABLE `event_category_type`;
-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
CREATE TABLE IF NOT EXISTS `exam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `exam`
--

TRUNCATE TABLE `exam`;
--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`id`, `name`) VALUES
(4, 'Term 1'),
(5, 'Term 2'),
(6, 'Term 3');

-- --------------------------------------------------------

--
-- Table structure for table `exam_range_grade`
--

DROP TABLE IF EXISTS `exam_range_grade`;
CREATE TABLE IF NOT EXISTS `exam_range_grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade_id` int(11) NOT NULL,
  `mark_range` varchar(255) NOT NULL,
  `_from` int(11) NOT NULL,
  `_to` int(11) NOT NULL,
  `mark_grade` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `exam_range_grade`
--

TRUNCATE TABLE `exam_range_grade`;
--
-- Dumping data for table `exam_range_grade`
--

INSERT INTO `exam_range_grade` (`id`, `grade_id`, `mark_range`, `_from`, `_to`, `mark_grade`) VALUES
(51, 11, '0-35', 0, 35, 'F'),
(52, 11, '35-45', 35, 45, 'S'),
(53, 11, '45-55', 45, 55, 'C'),
(54, 11, '55-75', 55, 75, 'B'),
(55, 11, '75-85', 75, 85, 'A'),
(56, 11, '85-100', 85, 100, 'A+'),
(57, 12, '0-35', 0, 35, 'F'),
(58, 12, '35-45', 35, 45, 'S'),
(59, 12, '45-55', 45, 55, 'C'),
(60, 12, '55-75', 55, 75, 'B'),
(61, 12, '75-85', 75, 85, 'A'),
(62, 12, '85-100', 85, 100, 'A+'),
(63, 13, '0-35', 0, 35, 'F'),
(64, 13, '35-45', 35, 45, 'S'),
(65, 13, '45-55', 45, 55, 'C'),
(66, 13, '55-75', 55, 75, 'B'),
(67, 13, '75-85', 75, 85, 'A'),
(68, 13, '85-100', 85, 100, 'A+');

-- --------------------------------------------------------

--
-- Table structure for table `exam_timetable`
--

DROP TABLE IF EXISTS `exam_timetable`;
CREATE TABLE IF NOT EXISTS `exam_timetable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `day` varchar(255) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `classroom_id` int(11) NOT NULL,
  `start_time` double(11,2) NOT NULL,
  `end_time` double(11,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `exam_timetable`
--

TRUNCATE TABLE `exam_timetable`;
--
-- Dumping data for table `exam_timetable`
--

INSERT INTO `exam_timetable` (`id`, `grade_id`, `exam_id`, `day`, `subject_id`, `classroom_id`, `start_time`, `end_time`) VALUES
(1, 11, 4, '12', 17, 100, 10.00, 13.00);

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
CREATE TABLE IF NOT EXISTS `grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `admission_fee` double(11,2) NOT NULL,
  `hall_charge` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `grade`
--

TRUNCATE TABLE `grade`;
--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`id`, `name`, `admission_fee`, `hall_charge`) VALUES
(11, 'Grade 1', 1000.00, 25),
(12, 'Grade 2', 1000.00, 25),
(13, 'Grade 3', 1000.00, 25);

-- --------------------------------------------------------

--
-- Table structure for table `group_message`
--

DROP TABLE IF EXISTS `group_message`;
CREATE TABLE IF NOT EXISTS `group_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conversation_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `sender_index` bigint(11) NOT NULL,
  `sender_type` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `group_message`
--

TRUNCATE TABLE `group_message`;
-- --------------------------------------------------------

--
-- Table structure for table `main_notifications`
--

DROP TABLE IF EXISTS `main_notifications`;
CREATE TABLE IF NOT EXISTS `main_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notification_id` int(11) NOT NULL,
  `_status` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `month` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `_isread` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `main_notifications`
--

TRUNCATE TABLE `main_notifications`;
--
-- Dumping data for table `main_notifications`
--

INSERT INTO `main_notifications` (`id`, `notification_id`, `_status`, `year`, `month`, `date`, `_isread`) VALUES
(1, 1, 'Payments', 2017, 'November', '2017-11-25', 1),
(2, 1, 'Events', 2020, 'May', '2020-05-29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `my_friends`
--

DROP TABLE IF EXISTS `my_friends`;
CREATE TABLE IF NOT EXISTS `my_friends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `my_index` bigint(11) NOT NULL,
  `friend_index` bigint(11) NOT NULL,
  `_status` varchar(255) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `my_type` varchar(255) NOT NULL,
  `friend_type` varchar(255) NOT NULL,
  `_isread` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `my_friends`
--

TRUNCATE TABLE `my_friends`;
--
-- Dumping data for table `my_friends`
--

INSERT INTO `my_friends` (`id`, `my_index`, `friend_index`, `_status`, `conversation_id`, `my_type`, `friend_type`, `_isread`) VALUES
(1, 11, 1, 'Friend', 1, 'Student', 'Teacher', 1),
(2, 1, 11, 'Friend', 1, 'Teacher', 'Student', 1),
(3, 100, 11, 'Friend', 3, 'Admin', 'Student', 1),
(4, 11, 100, 'Friend', 3, 'Student', 'Admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notification_history`
--

DROP TABLE IF EXISTS `notification_history`;
CREATE TABLE IF NOT EXISTS `notification_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notification_id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `_isread` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `notification_history`
--

TRUNCATE TABLE `notification_history`;
--
-- Dumping data for table `notification_history`
--

INSERT INTO `notification_history` (`id`, `notification_id`, `index_number`, `user_type`, `_isread`) VALUES
(1, 1, 11, 'Student', 0),
(2, 1, 12, 'Student', 0),
(3, 1, 13, 'Student', 0),
(4, 1, 14, 'Student', 0),
(5, 1, 25252525, 'Student', 0),
(6, 1, 1, 'Teacher', 0),
(7, 1, 2, 'Teacher', 0),
(8, 1, 3, 'Teacher', 0),
(9, 1, 4, 'Teacher', 0),
(10, 1, 5, 'Teacher', 0),
(11, 1, 6, 'Teacher', 0),
(12, 1, 0, 'Parents', 0),
(13, 1, 0, 'Parents', 0),
(14, 1, 0, 'Parents', 0),
(15, 1, 0, 'Parents', 0),
(16, 1, 0, 'Parents', 0);

-- --------------------------------------------------------

--
-- Table structure for table `online_chat`
--

DROP TABLE IF EXISTS `online_chat`;
CREATE TABLE IF NOT EXISTS `online_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conversation_id` int(11) NOT NULL,
  `user_index` bigint(11) NOT NULL,
  `msg` longtext NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `_isread` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `online_chat`
--

TRUNCATE TABLE `online_chat`;
--
-- Dumping data for table `online_chat`
--

INSERT INTO `online_chat` (`id`, `conversation_id`, `user_index`, `msg`, `user_type`, `_isread`, `date`, `time`) VALUES
(1, 1, 1, 'hello', 'Teacher', 1, '2020-05-13', '04:32:10'),
(2, 1, 11, 'how u', 'Student', 1, '2020-05-13', '04:32:27'),
(3, 3, 100, 'hi', 'Admin', 1, '2020-10-21', '06:02:12'),
(4, 3, 11, 'hih', 'Student', 1, '2020-10-21', '06:02:39'),
(5, 3, 100, 'ok', 'Admin', 1, '2020-10-21', '06:02:47'),
(6, 3, 11, 'dasdads', 'Student', 0, '2020-10-21', '06:09:07');

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

DROP TABLE IF EXISTS `parents`;
CREATE TABLE IF NOT EXISTS `parents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `index_number` varchar(255) NOT NULL,
  `my_son_index` bigint(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `i_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `b_date` date NOT NULL,
  `reg_date` date NOT NULL,
  `reg_year` year(4) NOT NULL,
  `reg_month` varchar(255) NOT NULL,
  `_status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `parents`
--

TRUNCATE TABLE `parents`;
--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`id`, `index_number`, `my_son_index`, `full_name`, `i_name`, `gender`, `address`, `phone`, `email`, `image_name`, `b_date`, `reg_date`, `reg_year`, `reg_month`, `_status`) VALUES
(7, 'G-11', 11, 'Dad 1', 'Dad 11', 'Male', 'USA', '111-111-1112', 'dad1@gmail.com', 'uploads/20171125093360.png', '1965-08-25', '2017-11-24', 2017, 'November', ''),
(8, 'G-12', 12, 'Dad 2', 'Dad 2', 'Male', 'USA', '(222) 222-2222', 'dad2@gmail.com', 'uploads/20171125104538.png', '1968-05-10', '2017-11-24', 2017, 'November', ''),
(9, 'G-13', 13, 'Dad 3', 'Dad 3', 'Male', 'USA', '(333) 333-3333', 'dad3@gmail.com', 'uploads/20171125091460.jpg', '1965-05-28', '2017-11-24', 2017, 'November', ''),
(12, 'G-14', 14, 'Dad 4', 'Dad 4', 'Male', 'USA', '(444) 444-4444', 'dad4@gmail.com', 'uploads/20171125091724.png', '1964-08-25', '2017-11-24', 2017, 'November', ''),
(13, 'G-25252525', 25252525, 'Dad 1', 'Dad 154444444', 'Male', 'Sri Lankaklkklklkk', '555-555-5555', 'dad1hgjhjhjhj23@gmail.com', 'uploads/2018024035941.png', '0000-00-00', '2018-02-04', 2018, 'February', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment_notifications`
--

DROP TABLE IF EXISTS `payment_notifications`;
CREATE TABLE IF NOT EXISTS `payment_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `index_number` bigint(11) NOT NULL,
  `year` year(4) NOT NULL,
  `month` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `_status` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `payment_notifications`
--

TRUNCATE TABLE `payment_notifications`;
--
-- Dumping data for table `payment_notifications`
--

INSERT INTO `payment_notifications` (`id`, `index_number`, `year`, `month`, `date`, `_status`) VALUES
(1, 11, 2017, 'November', '2017-11-25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `petty_cash`
--

DROP TABLE IF EXISTS `petty_cash`;
CREATE TABLE IF NOT EXISTS `petty_cash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `received_by` bigint(11) NOT NULL,
  `approved_by` bigint(11) NOT NULL,
  `year` year(4) NOT NULL,
  `month` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `paid` double(11,2) NOT NULL,
  `received_type` varchar(255) NOT NULL,
  `_status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `petty_cash`
--

TRUNCATE TABLE `petty_cash`;
--
-- Dumping data for table `petty_cash`
--

INSERT INTO `petty_cash` (`id`, `received_by`, `approved_by`, `year`, `month`, `date`, `time`, `paid`, `received_type`, `_status`) VALUES
(1, 1, 100, 2020, 'May', '2020-05-13', '05:07:26', 200.00, 'Teacher', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `petty_cash_history`
--

DROP TABLE IF EXISTS `petty_cash_history`;
CREATE TABLE IF NOT EXISTS `petty_cash_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `_desc` varchar(255) NOT NULL,
  `received_by` bigint(11) NOT NULL,
  `approved_by` bigint(11) NOT NULL,
  `year` year(4) NOT NULL,
  `month` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `amount` double(11,2) NOT NULL,
  `total_paid` double(11,2) NOT NULL,
  `invoice_number` int(11) NOT NULL,
  `received_type` varchar(255) NOT NULL,
  `_status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `petty_cash_history`
--

TRUNCATE TABLE `petty_cash_history`;
--
-- Dumping data for table `petty_cash_history`
--

INSERT INTO `petty_cash_history` (`id`, `_desc`, `received_by`, `approved_by`, `year`, `month`, `date`, `time`, `amount`, `total_paid`, `invoice_number`, `received_type`, `_status`) VALUES
(1, 'data', 1, 100, 2020, 'May', '2020-05-13', '05:07:26', 200.00, 200.00, 1, 'Teacher', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `index_number` bigint(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `i_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `b_date` date NOT NULL,
  `_status` varchar(255) NOT NULL,
  `reg_year` year(4) NOT NULL,
  `reg_month` varchar(255) NOT NULL,
  `reg_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `student`
--

TRUNCATE TABLE `student`;
--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `index_number`, `full_name`, `i_name`, `gender`, `address`, `phone`, `email`, `image_name`, `b_date`, `_status`, `reg_year`, `reg_month`, `reg_date`) VALUES
(11, 11, 'Student 1 pankaj', 'Student 1jbjb', 'Female', 'USA', '111-111-1112', 'std1@gmail.com', 'uploads/20171125093359.png', '2010-01-01', '', 2017, 'November', '2017-11-24'),
(12, 12, 'Student 2', 'Student 20', 'Male', 'USA', '(222) 222-2222', 'std2@gmail.com', 'uploads/20171125104521.png', '2010-01-02', '', 2017, 'November', '2017-11-24'),
(13, 13, 'Student 3', 'Student 3', 'Female', 'USA', '(333) 333-3333', 'std3@gmail.com', 'uploads/20171125091459.png', '2010-01-03', '', 2017, 'November', '2017-11-24'),
(19, 14, 'Student 4', 'Student 4', 'Female', 'USA', '(444) 444-4444', 'std4@gmail.com', 'uploads/20171125091723.png', '2010-01-04', '', 2017, 'November', '2017-11-24'),
(20, 25252525, 'Sandun1111111111', 'Sandun111111111', 'Female', 'Sri Lanka11111111', '455-455-4555', 'lkforex2015111@gmail.com', 'uploads/2018024042603.jpg', '0000-00-00', '', 2018, 'February', '2018-02-04');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance`
--

DROP TABLE IF EXISTS `student_attendance`;
CREATE TABLE IF NOT EXISTS `student_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `index_number` bigint(11) NOT NULL,
  `date` date NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `time` time NOT NULL,
  `_status1` varchar(255) NOT NULL,
  `_status2` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `student_attendance`
--

TRUNCATE TABLE `student_attendance`;
--
-- Dumping data for table `student_attendance`
--

INSERT INTO `student_attendance` (`id`, `index_number`, `date`, `month`, `year`, `time`, `_status1`, `_status2`) VALUES
(1, 11, '2017-11-25', 'May', 2020, '11:30:59', 'intime', 'Present'),
(2, 11, '2017-11-25', 'May', 2020, '15:30:59', 'outtime', 'Present'),
(3, 11, '2020-05-25', 'May', 2020, '09:30:59', 'intime', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `student_exam`
--

DROP TABLE IF EXISTS `student_exam`;
CREATE TABLE IF NOT EXISTS `student_exam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `index_number` bigint(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `marks` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `student_exam`
--

TRUNCATE TABLE `student_exam`;
--
-- Dumping data for table `student_exam`
--

INSERT INTO `student_exam` (`id`, `index_number`, `grade_id`, `exam_id`, `subject_id`, `marks`, `year`, `date`) VALUES
(37, 11, 11, 4, 15, '45', 2020, '2017-11-26'),
(38, 11, 11, 4, 16, '60', 2020, '2017-11-26'),
(39, 11, 11, 4, 17, '95', 2020, '2017-11-26'),
(40, 11, 11, 4, 18, '65', 2020, '2017-11-26'),
(41, 11, 11, 4, 19, '60', 2020, '2017-11-26'),
(42, 11, 11, 4, 20, '90', 2020, '2017-11-26'),
(43, 11, 11, 5, 15, '75', 2020, '2017-11-26'),
(44, 11, 11, 5, 16, '95', 2020, '2017-11-26'),
(45, 11, 11, 5, 17, '65', 2020, '2017-11-26'),
(46, 11, 11, 5, 18, '85', 2020, '2017-11-26'),
(47, 11, 11, 5, 19, '92', 2020, '2017-11-26'),
(48, 11, 11, 5, 20, '98', 2020, '2017-11-26'),
(49, 11, 11, 6, 15, '75', 2020, '2017-11-26'),
(50, 11, 11, 6, 16, '94', 2020, '2017-11-26'),
(51, 11, 11, 6, 17, '70', 2020, '2017-11-26'),
(52, 11, 11, 6, 18, '97', 2020, '2017-11-26'),
(53, 11, 11, 6, 19, '82', 2020, '2017-11-26'),
(54, 11, 11, 6, 20, '97', 2020, '2017-11-26');

-- --------------------------------------------------------

--
-- Table structure for table `student_grade`
--

DROP TABLE IF EXISTS `student_grade`;
CREATE TABLE IF NOT EXISTS `student_grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `index_number` bigint(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `year` year(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `student_grade`
--

TRUNCATE TABLE `student_grade`;
--
-- Dumping data for table `student_grade`
--

INSERT INTO `student_grade` (`id`, `index_number`, `grade_id`, `year`) VALUES
(82, 12, 11, 2020),
(83, 13, 11, 2020),
(86, 14, 11, 2020),
(87, 25252525, 11, 2020),
(88, 11, 12, 2020);

-- --------------------------------------------------------

--
-- Table structure for table `student_payment`
--

DROP TABLE IF EXISTS `student_payment`;
CREATE TABLE IF NOT EXISTS `student_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `index_number` bigint(11) NOT NULL,
  `year` year(4) NOT NULL,
  `month` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `paid` double(11,2) NOT NULL,
  `_status` varchar(255) NOT NULL,
  `student_status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `student_payment`
--

TRUNCATE TABLE `student_payment`;
--
-- Dumping data for table `student_payment`
--

INSERT INTO `student_payment` (`id`, `index_number`, `year`, `month`, `date`, `paid`, `_status`, `student_status`) VALUES
(225, 11, 2017, 'November', '2017-11-24', 1000.00, 'Admission Fee', ''),
(226, 11, 2017, 'November', '2017-11-24', 1500.00, 'Monthly Fee1', ''),
(227, 12, 2017, 'November', '2017-11-24', 1000.00, 'Admission Fee', ''),
(228, 12, 2017, 'November', '2017-11-24', 1500.00, 'Monthly Fee1', ''),
(229, 13, 2017, 'November', '2017-11-24', 1000.00, 'Admission Fee', ''),
(230, 13, 2017, 'November', '2017-11-24', 1500.00, 'Monthly Fee1', ''),
(234, 14, 2017, 'November', '2017-11-24', 1500.00, 'Monthly Fee1', ''),
(235, 25252525, 2018, 'February', '2018-02-04', 1000.00, 'Admission Fee', ''),
(236, 25252525, 2018, 'February', '2018-02-04', 1500.00, 'Monthly Fee1', ''),
(237, 11, 2020, 'October', '2020-10-21', 1000.00, 'Admission Fee', ''),
(238, 11, 2020, 'October', '2020-10-21', 2100.00, 'Monthly Fee1', ''),
(239, 11, 2020, 'October', '2020-10-21', 1750.00, 'Monthly Fee', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_payment_history`
--

DROP TABLE IF EXISTS `student_payment_history`;
CREATE TABLE IF NOT EXISTS `student_payment_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `index_number` bigint(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `subject_fee` double(11,2) NOT NULL,
  `subtotal` double(11,2) NOT NULL,
  `_status` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `date` date NOT NULL,
  `invoice_number` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=635 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `student_payment_history`
--

TRUNCATE TABLE `student_payment_history`;
--
-- Dumping data for table `student_payment_history`
--

INSERT INTO `student_payment_history` (`id`, `index_number`, `grade_id`, `subject_id`, `teacher_id`, `subject_fee`, `subtotal`, `_status`, `month`, `year`, `date`, `invoice_number`) VALUES
(582, 11, 11, 15, 10, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 1),
(583, 11, 11, 16, 11, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 1),
(584, 11, 11, 17, 12, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 1),
(585, 11, 11, 18, 13, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 1),
(586, 11, 11, 19, 14, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 1),
(587, 11, 11, 20, 15, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 1),
(588, 12, 11, 15, 10, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 227),
(589, 12, 11, 16, 11, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 227),
(590, 12, 11, 17, 12, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 227),
(591, 12, 11, 18, 13, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 227),
(592, 12, 11, 19, 14, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 227),
(593, 12, 11, 20, 15, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 227),
(594, 13, 11, 15, 10, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 229),
(595, 13, 11, 16, 11, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 229),
(596, 13, 11, 17, 12, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 229),
(597, 13, 11, 18, 13, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 229),
(598, 13, 11, 19, 14, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 229),
(599, 13, 11, 20, 15, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 229),
(612, 14, 11, 15, 10, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 231),
(613, 14, 11, 16, 11, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 231),
(614, 14, 11, 17, 12, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 231),
(615, 14, 11, 18, 13, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 231),
(616, 14, 11, 19, 14, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 231),
(617, 14, 11, 20, 15, 250.00, 250.00, 'Monthly Fee', 'November', 2017, '2017-11-24', 231),
(618, 25252525, 11, 15, 10, 250.00, 250.00, 'Monthly Fee', 'February', 2018, '2018-02-04', 235),
(619, 25252525, 11, 16, 11, 250.00, 250.00, 'Monthly Fee', 'February', 2018, '2018-02-04', 235),
(620, 25252525, 11, 17, 12, 250.00, 250.00, 'Monthly Fee', 'February', 2018, '2018-02-04', 235),
(621, 25252525, 11, 18, 13, 250.00, 250.00, 'Monthly Fee', 'February', 2018, '2018-02-04', 235),
(622, 25252525, 11, 19, 14, 250.00, 250.00, 'Monthly Fee', 'February', 2018, '2018-02-04', 235),
(623, 25252525, 11, 20, 15, 250.00, 250.00, 'Monthly Fee', 'February', 2018, '2018-02-04', 235),
(624, 11, 12, 15, 10, 350.00, 350.00, 'Monthly Fee', 'October', 2020, '2020-10-21', 237),
(625, 11, 12, 16, 11, 350.00, 350.00, 'Monthly Fee', 'October', 2020, '2020-10-21', 237),
(626, 11, 12, 17, 12, 350.00, 350.00, 'Monthly Fee', 'October', 2020, '2020-10-21', 237),
(627, 11, 12, 18, 13, 350.00, 350.00, 'Monthly Fee', 'October', 2020, '2020-10-21', 237),
(628, 11, 12, 19, 14, 350.00, 350.00, 'Monthly Fee', 'October', 2020, '2020-10-21', 237),
(629, 11, 12, 20, 15, 350.00, 350.00, 'Monthly Fee', 'October', 2020, '2020-10-21', 237),
(630, 11, 12, 15, 10, 350.00, 350.00, 'Monthly Fee', 'October', 2020, '2020-10-21', 238),
(631, 11, 12, 17, 12, 350.00, 350.00, 'Monthly Fee', 'October', 2020, '2020-10-21', 238),
(632, 11, 12, 18, 13, 350.00, 350.00, 'Monthly Fee', 'October', 2020, '2020-10-21', 238),
(633, 11, 12, 19, 14, 350.00, 350.00, 'Monthly Fee', 'October', 2020, '2020-10-21', 238),
(634, 11, 12, 20, 15, 350.00, 350.00, 'Monthly Fee', 'October', 2020, '2020-10-21', 238);

-- --------------------------------------------------------

--
-- Table structure for table `student_subject`
--

DROP TABLE IF EXISTS `student_subject`;
CREATE TABLE IF NOT EXISTS `student_subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `index_number` bigint(11) NOT NULL,
  `_status` varchar(255) NOT NULL,
  `sr_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `reg_month` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `student_subject`
--

TRUNCATE TABLE `student_subject`;
--
-- Dumping data for table `student_subject`
--

INSERT INTO `student_subject` (`id`, `index_number`, `_status`, `sr_id`, `year`, `reg_month`) VALUES
(207, 12, '', 17, 2020, ''),
(208, 12, '', 18, 2020, ''),
(209, 12, '', 19, 2020, ''),
(210, 12, '', 20, 2020, ''),
(211, 12, '', 21, 2020, ''),
(212, 12, '', 22, 2020, ''),
(213, 13, '', 17, 2020, ''),
(214, 13, '', 18, 2020, ''),
(215, 13, '', 19, 2020, ''),
(216, 13, '', 20, 2020, ''),
(217, 13, '', 21, 2020, ''),
(218, 13, '', 22, 2020, ''),
(231, 14, '', 17, 2020, ''),
(232, 14, '', 18, 2020, ''),
(233, 14, '', 19, 2020, ''),
(234, 14, '', 20, 2020, ''),
(235, 14, '', 21, 2020, ''),
(236, 14, '', 22, 2020, ''),
(237, 25252525, '', 17, 2020, ''),
(238, 25252525, '', 18, 2020, ''),
(239, 25252525, '', 19, 2020, ''),
(240, 25252525, '', 20, 2020, ''),
(241, 25252525, '', 21, 2020, ''),
(242, 25252525, '', 22, 2020, ''),
(249, 11, '', 23, 2020, ''),
(250, 11, '', 25, 2020, ''),
(251, 11, '', 26, 2020, ''),
(252, 11, '', 27, 2020, ''),
(253, 11, '', 28, 2020, '');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `subject`
--

TRUNCATE TABLE `subject`;
--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`) VALUES
(15, 'Subject 1'),
(16, 'Subject 2'),
(17, 'Subject 3'),
(18, 'Subject 4'),
(19, 'Subject 5'),
(20, 'Subject 6');

-- --------------------------------------------------------

--
-- Table structure for table `subject_routing`
--

DROP TABLE IF EXISTS `subject_routing`;
CREATE TABLE IF NOT EXISTS `subject_routing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `fee` double(11,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `subject_routing`
--

TRUNCATE TABLE `subject_routing`;
--
-- Dumping data for table `subject_routing`
--

INSERT INTO `subject_routing` (`id`, `grade_id`, `subject_id`, `teacher_id`, `fee`) VALUES
(17, 11, 15, 10, 250.00),
(18, 11, 16, 11, 250.00),
(19, 11, 17, 12, 250.00),
(20, 11, 18, 13, 250.00),
(21, 11, 19, 14, 250.00),
(22, 11, 20, 15, 250.00),
(23, 12, 15, 10, 350.00),
(24, 12, 16, 11, 350.00),
(25, 12, 17, 12, 350.00),
(26, 12, 18, 13, 350.00),
(27, 12, 19, 14, 350.00),
(28, 12, 20, 15, 350.00),
(29, 13, 15, 10, 400.00),
(30, 13, 16, 11, 400.00),
(31, 13, 17, 12, 400.00),
(32, 13, 18, 13, 400.00),
(33, 13, 19, 14, 400.00),
(34, 13, 20, 15, 400.00);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) NOT NULL,
  `i_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `reg_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `teacher`
--

TRUNCATE TABLE `teacher`;
--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `full_name`, `i_name`, `gender`, `address`, `phone`, `email`, `image_name`, `index_number`, `reg_date`) VALUES
(10, 'Teacher 1', 'Teacher 1fdsfhdfgdh', 'Male', 'Schoolfdgsfg', '111-111-1111', 't1@gmail.com', 'uploads/20171124010228.png', 1, '2017-11-24'),
(11, 'Teacher 2', 'Teacher 2', 'Female', 'School', '222-222-2222', 't2@gmail.com', 'uploads/20171124010308.png', 2, '2017-11-24'),
(12, 'Teacher 3', 'Teacher 3', 'Female', 'School', '333-333-3333', 't3@gmail.com', 'uploads/20171124010354.png', 3, '2017-11-24'),
(13, 'Teacher 4', 'Teacher 4', 'Male', 'School', '444-444-4444', 't4@gmail.com', 'uploads/20171124010530.png', 4, '2017-11-24'),
(14, 'Teacher 5', 'Teacher 5', 'Male', 'School', '555-555-5555', 't5@gmail.com', 'uploads/20171124010613.png', 5, '2017-11-24'),
(15, 'Teacher 6', 'Teacher 6', 'Male', 'School', '666-666-6666', 't6@gmail.com', 'uploads/20171124010754.png', 6, '2017-11-24');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_attendance`
--

DROP TABLE IF EXISTS `teacher_attendance`;
CREATE TABLE IF NOT EXISTS `teacher_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `index_number` bigint(11) NOT NULL,
  `date` date NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `time` time NOT NULL,
  `_status1` varchar(255) NOT NULL,
  `_status2` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `teacher_attendance`
--

TRUNCATE TABLE `teacher_attendance`;
--
-- Dumping data for table `teacher_attendance`
--

INSERT INTO `teacher_attendance` (`id`, `index_number`, `date`, `month`, `year`, `time`, `_status1`, `_status2`) VALUES
(1, 1, '2020-05-13', 'May', 2020, '07:54:31', 'intime', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_salary`
--

DROP TABLE IF EXISTS `teacher_salary`;
CREATE TABLE IF NOT EXISTS `teacher_salary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `index_number` bigint(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `date` date NOT NULL,
  `paid` double(11,2) NOT NULL,
  `_status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `teacher_salary`
--

TRUNCATE TABLE `teacher_salary`;
-- --------------------------------------------------------

--
-- Table structure for table `teacher_salary_history`
--

DROP TABLE IF EXISTS `teacher_salary_history`;
CREATE TABLE IF NOT EXISTS `teacher_salary_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `index_number` bigint(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `subject_fee` double(11,2) NOT NULL,
  `student_count` int(11) NOT NULL,
  `hall_charge` int(11) NOT NULL,
  `subtotal` double(11,2) NOT NULL,
  `paid` double(11,2) NOT NULL,
  `_status` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `date` date NOT NULL,
  `invoice_number` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `teacher_salary_history`
--

TRUNCATE TABLE `teacher_salary_history`;
-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

DROP TABLE IF EXISTS `timetable`;
CREATE TABLE IF NOT EXISTS `timetable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade_id` int(11) NOT NULL,
  `day` varchar(255) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `classroom_id` int(11) NOT NULL,
  `start_time` double(11,2) NOT NULL,
  `end_time` double(11,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `timetable`
--

TRUNCATE TABLE `timetable`;
--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`id`, `grade_id`, `day`, `subject_id`, `teacher_id`, `classroom_id`, `start_time`, `end_time`) VALUES
(42, 11, 'Sunday', 15, 10, 18, 7.00, 8.00),
(43, 11, 'Monday', 15, 10, 18, 7.00, 8.00),
(44, 11, 'Tuesday', 15, 10, 18, 7.00, 8.00),
(45, 11, 'Wednesday', 15, 10, 18, 7.00, 8.00),
(46, 11, 'Thursday', 15, 10, 18, 7.00, 8.00),
(47, 11, 'Friday', 15, 10, 18, 7.00, 8.00),
(48, 11, 'Sunday', 16, 11, 18, 8.00, 9.00),
(49, 11, 'Monday', 16, 11, 18, 8.00, 9.00),
(50, 11, 'Tuesday', 16, 11, 18, 8.00, 9.00),
(51, 11, 'Wednesday', 16, 11, 18, 8.00, 9.00),
(52, 11, 'Thursday', 16, 11, 19, 8.00, 9.00),
(53, 11, 'Friday', 16, 11, 18, 8.00, 9.00),
(54, 11, 'Sunday', 17, 12, 18, 9.00, 10.00),
(55, 11, 'Monday', 17, 12, 18, 9.00, 10.00),
(56, 11, 'Tuesday', 17, 12, 18, 9.00, 10.00),
(57, 11, 'Wednesday', 17, 12, 18, 9.00, 10.00),
(58, 11, 'Thursday', 17, 12, 18, 9.00, 10.00),
(59, 11, 'Friday', 17, 12, 18, 9.00, 10.00),
(60, 11, 'Sunday', 18, 13, 18, 10.00, 11.00),
(61, 11, 'Monday', 18, 13, 18, 10.00, 11.00),
(62, 11, 'Tuesday', 18, 13, 18, 10.00, 11.00),
(63, 11, 'Wednesday', 18, 13, 18, 10.00, 11.00),
(64, 11, 'Thursday', 18, 13, 18, 10.00, 11.00),
(65, 11, 'Friday', 18, 13, 18, 10.00, 11.00),
(69, 11, 'Sunday', 19, 14, 18, 12.00, 13.00),
(70, 11, 'Monday', 19, 14, 18, 12.00, 13.00),
(71, 11, 'Tuesday', 19, 14, 18, 12.00, 13.00),
(72, 11, 'Wednesday', 19, 14, 18, 12.00, 13.00),
(73, 11, 'Thursday', 19, 14, 18, 12.00, 13.00),
(74, 11, 'Friday', 19, 14, 18, 12.00, 13.00),
(75, 11, 'Sunday', 20, 15, 18, 13.00, 14.00),
(76, 11, 'Monday', 20, 15, 18, 13.00, 14.00),
(77, 11, 'Tuesday', 20, 15, 18, 13.00, 14.00),
(78, 11, 'Wednesday', 20, 15, 18, 13.00, 14.00),
(79, 11, 'Thursday', 20, 15, 18, 13.00, 14.00),
(80, 11, 'Friday', 20, 15, 18, 13.00, 14.00);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `user`
--

TRUNCATE TABLE `user`;
--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `type`) VALUES
(29, 'admin@gmail.com', '12345', 'Admin'),
(47, 't1@gmail.com', '12345', 'Teacher'),
(48, 't2@gmail.com', '12345', 'Teacher'),
(49, 't3@gmail.com', '12345', 'Teacher'),
(50, 't4@gmail.com', '12345', 'Teacher'),
(51, 't5@gmail.com', '12345', 'Teacher'),
(52, 't6@gmail.com', '12345', 'Teacher'),
(53, 'std1@gmail.com', '12345', 'Student'),
(54, 'dad1@gmail.com', '12345', 'Parents'),
(55, 'std2@gmail.com', '12345', 'Student'),
(56, 'dad2@gmail.com', '12345', 'Parents'),
(57, 'std3@gmail.com', '12345', 'Student'),
(58, 'dad3@gmail.com', '12345', 'Parents'),
(59, 'std4@gmail.com', '12345', 'Student'),
(61, 'std4@gmail.com', '12345', 'Student'),
(63, 'std4@gmail.com', '12345', 'Student'),
(64, 'std4@gmail.com', '12345', 'Student'),
(66, 'std4@gmail.com', '12345', 'Student'),
(67, 'dad4@gmail.com', '12345', 'Parents'),
(69, 'dad123@gmail.com', '12345', 'Parents'),
(70, 'lkforex2015111@gmail.com', '12345', 'Student');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
