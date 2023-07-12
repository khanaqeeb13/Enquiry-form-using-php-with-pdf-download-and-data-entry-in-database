-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 06, 2023 at 03:53 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registration_form`
--

-- --------------------------------------------------------

--
-- Table structure for table `student_data`
--

CREATE TABLE `student_data` (
  `sno` int(3) NOT NULL,
  `student_name` text,
  `Birth_date` varchar(10) DEFAULT NULL,
  `mo_number` varchar(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `father_name` text,
  `Gender` text,
  `course_intrested` text,
  `last_college_attended` text,
  `Address` text,
  `Pin_code` int(6) DEFAULT NULL,
  `father_number` varchar(12) NOT NULL,
  `ssc_year` int(11) NOT NULL,
  `ssc_uni` varchar(255) NOT NULL,
  `ssc_per` int(11) NOT NULL,
  `hsc_year` int(11) NOT NULL,
  `hsc_uni` varchar(255) NOT NULL,
  `hsc_per` int(11) NOT NULL,
  `graduation_year` int(11) NOT NULL,
  `graduation_uni` varchar(255) NOT NULL,
  `graduation_per` int(11) NOT NULL,
  `reference` varchar(120) NOT NULL,
  `dt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_data`
--

INSERT INTO `student_data` (`sno`, `student_name`, `Birth_date`, `mo_number`, `email`, `father_name`, `Gender`, `course_intrested`, `last_college_attended`, `Address`, `Pin_code`, `father_number`, `ssc_year`, `ssc_uni`, `ssc_per`, `hsc_year`, `hsc_uni`, `hsc_per`, `graduation_year`, `graduation_uni`, `graduation_per`, `reference`, `dt`) VALUES
(1, 'jagmohan sarki', '17/02/2001', '8888888888', 'this@this.com', 'mohan sarki', 'male', 'b pharm', 'sn college', 'tulinj road nallasopara(east)', 401209, '', 0, '', 0, 0, '', 0, 0, '', 0, '', '2023-07-03 11:57:21'),
(2, 'jack', '17/02/2001', '9999999999', 'this@this.com', 'ibssdfjnbuisd', 'male', 'B pharm', 'viva college', 'jknksjhfvkjnedik', 401209, '', 0, '', 0, 0, '', 0, 0, '', 0, '', '2023-07-03 11:58:41'),
(3, 'jagmohan', '2023-07-06', '6666666666', 'yoursocialdost@gmail.com', 'mohan', 'Male', 'b pharm', 'sn college', 'nthrhrfed', 401209, '8595642103', 2016, 'fvesafcvewrfr3e2r', 65, 2018, 'fcsfce', 72, 2022, 'mumbai university', 80, 'friends', '2023-07-05 16:09:49'),
(4, 'jagmohan', '2023-07-06', '6666666666', 'yoursocialdost@gmail.com', 'mohan', 'Male', 'b pharm', 'sn college', 'nthrhrfed', 401209, '8595642103', 2016, 'fvesafcvewrfr3e2r', 65, 2018, 'fcsfce', 72, 2022, 'mumbai university', 80, 'friends', '2023-07-05 16:10:38'),
(5, 'jagmohan', '2023-06-28', '6666666666', 'yoursocialdost@gmail.com', 'mohan', 'Male', 'b pharm', 'sn college', 'gbrsf', 401209, '8595642103', 2016, 'fvesafcvewrfr3e2r', 65, 2018, 'fcsfce', 72, 2022, 'mumbai university', 80, 'banner', '2023-07-05 16:11:40'),
(6, 'jagmohan', '2023-06-28', '6666666666', 'yoursocialdost@gmail.com', 'mohan', 'Male', 'b pharm', 'sn college', 'gbrsf', 401209, '8595642103', 2016, 'fvesafcvewrfr3e2r', 65, 2018, 'fcsfce', 72, 2022, 'mumbai university', 80, 'fedwfc', '2023-07-05 16:24:01'),
(7, 'jagmohan', '2023-06-28', '6666666666', 'yoursocialdost@gmail.com', 'mohan', 'Male', 'b pharm', 'sn college', 'gbrsf', 401209, '8595642103', 2016, 'fvesafcvewrfr3e2r', 65, 2018, 'fcsfce', 72, 2022, 'mumbai university', 80, 'fedwfc', '2023-07-05 16:24:50'),
(8, 'jagmohan', '2023-06-28', '6666666666', 'yoursocialdost@gmail.com', 'mohan', 'Male', 'b pharm', 'sn college', 'gbrsf', 401209, '8595642103', 2016, 'fvesafcvewrfr3e2r', 65, 2018, 'fcsfce', 72, 2022, 'mumbai university', 80, 'other', '2023-07-05 16:33:36'),
(9, 'jagmohan', '2023-06-28', '6666666666', 'yoursocialdost@gmail.com', 'mohan', 'Male', 'b pharm', 'sn college', 'gvwertgbvg', 401209, '8595642103', 2016, 'fvesafcvewrfr3e2r', 65, 2018, 'fcsfce', 72, 2022, 'mumbai university', 80, 'other', '2023-07-05 16:36:43'),
(10, 'jagmohan', '2023-06-28', '6666666666', 'yoursocialdost@gmail.com', 'mohan', 'Male', 'b pharm', 'sn college', 'gvwertgbvg', 401209, '8595642103', 2016, 'fvesafcvewrfr3e2r', 65, 2018, 'fcsfce', 72, 2022, 'mumbai university', 80, 'grehr5desa', '2023-07-05 16:38:51'),
(11, 'jagmohan', '2023-06-28', '6666666666', 'yoursocialdost@gmail.com', 'mohan', 'Male', 'b pharm', 'sn college', 'gvwertgbvg', 401209, '8595642103', 2016, 'fvesafcvewrfr3e2r', 65, 2018, 'fcsfce', 72, 2022, 'mumbai university', 80, 'grehr5desa', '2023-07-05 16:39:34'),
(12, 'jagmohan', '2023-06-28', '6666666666', 'yoursocialdost@gmail.com', 'mohan', 'Male', 'b pharm', 'sn college', 'gvwertgbvg', 401209, '8595642103', 2016, 'fvesafcvewrfr3e2r', 65, 2018, 'fcsfce', 72, 2022, 'mumbai university', 80, 'grehr5desa', '2023-07-05 16:40:12'),
(13, 'jagmohan', '2023-06-28', '6666666666', 'yoursocialdost@gmail.com', 'mohan', 'Male', 'b pharm', 'sn college', 'gvwertgbvg', 401209, '8595642103', 2016, 'fvesafcvewrfr3e2r', 65, 2018, 'fcsfce', 72, 2022, 'mumbai university', 80, 'grehr5desa', '2023-07-05 16:41:22'),
(14, 'jagmohan', '2023-06-28', '6666666666', 'bwtnaresh@gmail.com', 'mohan', 'Male', 'b pharm', 'sn college', 'cdeacfs', 401209, '8595642103', 2016, 'fvesafcvewrfr3e2r', 65, 2018, 'fcsfce', 72, 2022, 'mumbai university', 80, 'banner', '2023-07-05 16:42:08'),
(15, 'jagmohan', '2023-06-28', '6666666666', 'bwtnaresh@gmail.com', 'mohan', 'Male', 'b pharm', 'sn college', 'cdeacfs', 401209, '8595642103', 2016, 'fvesafcvewrfr3e2r', 65, 2018, 'fcsfce', 72, 2022, 'mumbai university', 80, 'dcwsad', '2023-07-05 16:42:30'),
(16, 'jagmohan', '2023-06-28', '6666666666', 'bwtnaresh@gmail.com', 'mohan', 'Male', 'b pharm', 'sn college', 'cdeacfs', 401209, '8595642103', 2016, 'fvesafcvewrfr3e2r', 65, 2018, 'fcsfce', 72, 2022, 'mumbai university', 80, 'dcwsad', '2023-07-05 16:44:00'),
(17, 'jagmohan', '2023-06-28', '6666666666', 'bwtnaresh@gmail.com', 'mohan', 'Male', 'b pharm', 'sn college', 'cdeacfs', 401209, '8595642103', 2016, 'fvesafcvewrfr3e2r', 65, 2018, 'fcsfce', 72, 2022, 'mumbai university', 80, 'dcwsad', '2023-07-05 16:47:53'),
(18, 'jagmohan', '2023-06-28', '6666666666', 'bwtnaresh@gmail.com', 'mohan', 'Male', 'b pharm', 'sn college', 'cdeacfs', 401209, '8595642103', 2016, 'fvesafcvewrfr3e2r', 65, 2018, 'fcsfce', 72, 2022, 'mumbai university', 80, 'cewadws', '2023-07-05 16:48:16'),
(19, 'jagmohan', '2023-06-28', '6666666666', 'bwtnaresh@gmail.com', 'mohan', 'Male', 'b pharm', 'sn college', 'cdeacfs', 401209, '8595642103', 2016, 'fvesafcvewrfr3e2r', 65, 2018, 'fcsfce', 72, 2022, 'mumbai university', 80, 'online_platforms', '2023-07-05 16:48:29'),
(20, 'jagmohan', '2023-06-28', '6666666666', 'bwtnaresh@gmail.com', 'mohan', 'Male', 'b pharm', 'sn college', 'cdeacfs', 401209, '8595642103', 2016, 'fvesafcvewrfr3e2r', 65, 2018, 'fcsfce', 72, 2022, 'mumbai university', 80, 'friends', '2023-07-05 16:50:49'),
(21, 'jagmohan', '2023-06-28', '6666666666', 'bwtnaresh@gmail.com', 'mohan', 'Male', 'b pharm', 'sn college', 'cdeacfs', 401209, '8595642103', 2016, 'fvesafcvewrfr3e2r', 65, 2018, 'fcsfce', 72, 2022, 'mumbai university', 80, 'ghfrgds', '2023-07-05 16:51:33'),
(22, 'jagmohan', '2023-06-29', '6666666666', 'bwtnaresh@gmail.com', 'mohan dsc', 'Male', 'b pharm', 'sn college', 'vdafveas', 401209, '8595642103', 2016, 'fvesafcvewrfr3e2r', 65, 2018, 'fcsfce', 72, 2022, 'mumbai university', 80, 'banner', '2023-07-06 11:52:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_data`
--
ALTER TABLE `student_data`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_data`
--
ALTER TABLE `student_data`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
