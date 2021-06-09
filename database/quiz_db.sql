-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2021 at 01:04 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `quiz_id` int(30) NOT NULL,
  `question_id` int(30) NOT NULL,
  `option_id` int(30) NOT NULL,
  `is_right` tinyint(1) NOT NULL COMMENT ' 1 = right, 0 = wrong',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `user_id`, `quiz_id`, `question_id`, `option_id`, `is_right`, `date_updated`) VALUES
(5, 12, 2, 4, 31, 1, '0000-00-00 00:00:00'),
(6, 12, 2, 5, 34, 1, '0000-00-00 00:00:00'),
(7, 18, 2, 4, 31, 1, '2021-06-09 17:17:11'),
(8, 18, 2, 5, 34, 1, '2021-06-09 17:17:11'),
(9, 18, 2, 6, 40, 0, '2021-06-09 17:17:11'),
(10, 18, 2, 7, 43, 1, '2021-06-09 17:17:11'),
(11, 18, 2, 8, 46, 1, '2021-06-09 17:17:11'),
(12, 18, 2, 9, 52, 1, '2021-06-09 17:17:11'),
(13, 18, 2, 10, 54, 1, '2021-06-09 17:17:11'),
(14, 18, 2, 11, 59, 1, '2021-06-09 17:17:11'),
(15, 18, 2, 12, 0, 0, '2021-06-09 17:17:11'),
(16, 18, 2, 13, 0, 0, '2021-06-09 17:17:11'),
(17, 17, 2, 4, 32, 0, '2021-06-09 17:41:18'),
(18, 17, 2, 5, 36, 0, '2021-06-09 17:41:18'),
(19, 17, 2, 6, 39, 0, '2021-06-09 17:41:18'),
(20, 17, 2, 7, 41, 0, '2021-06-09 17:41:18'),
(21, 17, 2, 8, 47, 0, '2021-06-09 17:41:18'),
(22, 17, 2, 9, 0, 0, '2021-06-09 17:41:18'),
(23, 17, 2, 10, 0, 0, '2021-06-09 17:41:18'),
(24, 17, 2, 11, 0, 0, '2021-06-09 17:41:18'),
(25, 17, 2, 12, 0, 0, '2021-06-09 17:41:18'),
(26, 17, 2, 13, 0, 0, '2021-06-09 17:41:18'),
(27, 16, 2, 4, 30, 0, '2021-06-09 17:46:54'),
(28, 16, 2, 5, 34, 1, '2021-06-09 17:46:54'),
(29, 16, 2, 6, 40, 0, '2021-06-09 17:46:54'),
(30, 16, 2, 7, 43, 1, '2021-06-09 17:46:54'),
(31, 16, 2, 8, 0, 0, '2021-06-09 17:46:54'),
(32, 16, 2, 9, 52, 1, '2021-06-09 17:46:54'),
(33, 16, 2, 10, 55, 0, '2021-06-09 17:46:54'),
(34, 16, 2, 11, 59, 1, '2021-06-09 17:46:54'),
(35, 16, 2, 12, 61, 1, '2021-06-09 17:46:54'),
(36, 16, 2, 13, 68, 0, '2021-06-09 17:46:54'),
(37, 15, 2, 4, 29, 0, '2021-06-09 17:49:51'),
(38, 15, 2, 5, 34, 1, '2021-06-09 17:49:51'),
(39, 15, 2, 6, 40, 0, '2021-06-09 17:49:51'),
(40, 15, 2, 7, 43, 1, '2021-06-09 17:49:51'),
(41, 15, 2, 8, 46, 1, '2021-06-09 17:49:51'),
(42, 15, 2, 9, 52, 1, '2021-06-09 17:49:51'),
(43, 15, 2, 10, 55, 0, '2021-06-09 17:49:51'),
(44, 15, 2, 11, 59, 1, '2021-06-09 17:49:51'),
(45, 15, 2, 12, 61, 1, '2021-06-09 17:49:51'),
(46, 15, 2, 13, 67, 1, '2021-06-09 17:49:51'),
(47, 15, 2, 14, 69, 1, '2021-06-09 17:49:51');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `user_id`, `subject`, `date_updated`) VALUES
(2, 6, 'Information Technology', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(30) NOT NULL,
  `quiz_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `qtime` tinyint(2) NOT NULL,
  `score` int(5) NOT NULL,
  `total_score` int(5) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `quiz_id`, `user_id`, `qtime`, `score`, `total_score`, `date_updated`) VALUES
(3, 2, 12, 5, 4, 20, '2021-06-09 13:35:40'),
(4, 2, 18, 0, 14, 20, '2021-06-09 17:17:11'),
(5, 2, 17, 0, 0, 20, '2021-06-09 17:41:18'),
(6, 2, 16, 0, 10, 20, '2021-06-09 17:46:54'),
(7, 2, 15, 0, 16, 22, '2021-06-09 17:49:51');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(30) NOT NULL,
  `question` text NOT NULL,
  `qid` int(30) NOT NULL,
  `order_by` int(11) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `qid`, `order_by`, `date_updated`) VALUES
(4, 'What does PHP stand for?', 2, 0, '0000-00-00 00:00:00'),
(5, 'Who is the father of PHP?', 2, 0, '0000-00-00 00:00:00'),
(6, 'Which one of the following function is capable of reading a file into an array?', 2, 0, '2021-06-06 23:07:00'),
(7, 'A function in PHP which starts with __ (double underscore) is know as..', 2, 0, '2021-06-06 23:08:00'),
(8, 'Which one of the following statements is used to create a table?', 2, 0, '2021-06-06 23:08:15'),
(9, 'Which of the methods are used to manage result sets using both associative and indexed arrays?', 2, 0, '2021-06-06 23:08:30'),
(10, 'Which one of the following functions can be used to concatenate array elements to form a single delimited string?', 2, 0, '2021-06-06 23:10:37'),
(11, 'Which of the following variable names are invalid?', 2, 0, '2021-06-06 23:10:50'),
(12, 'What is true regarding $a + $b where both of them are arrays?', 2, 0, '2021-06-06 23:11:10'),
(13, 'The inbuilt function to get the number of parameters passed is:', 2, 0, '2021-06-06 23:11:30'),
(14, 'sample question', 2, 0, '2021-06-09 17:48:28'),
(15, 'dfasdfs', 4, 0, '2021-06-09 17:56:23'),
(16, 'dfasdfs', 4, 0, '2021-06-09 17:56:27');

-- --------------------------------------------------------

--
-- Table structure for table `question_opt`
--

CREATE TABLE `question_opt` (
  `id` int(30) NOT NULL,
  `option_txt` text NOT NULL,
  `question_id` int(30) NOT NULL,
  `is_right` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1= right answer',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question_opt`
--

INSERT INTO `question_opt` (`id`, `option_txt`, `question_id`, `is_right`, `date_updated`) VALUES
(29, 'Personal Home Page', 4, 0, '0000-00-00 00:00:00'),
(30, 'Private Home Page', 4, 0, '0000-00-00 00:00:00'),
(31, 'Hypertext Processor', 4, 1, '0000-00-00 00:00:00'),
(32, 'Preprocessor Home Page', 4, 0, '0000-00-00 00:00:00'),
(33, 'Willam Makepiece', 5, 0, '0000-00-00 00:00:00'),
(34, 'Rasmus Lerdorf', 5, 1, '0000-00-00 00:00:00'),
(35, 'Drek Kolkevi', 5, 0, '0000-00-00 00:00:00'),
(36, 'List Barely', 5, 0, '0000-00-00 00:00:00'),
(37, 'file()', 6, 1, '2021-06-06 23:07:09'),
(38, 'arr_file()', 6, 0, '2021-06-06 23:07:19'),
(39, 'arrfile()', 6, 0, '2021-06-06 23:07:29'),
(40, 'file_arr()', 6, 0, '2021-06-06 23:07:39'),
(41, 'Inbuilt Function', 7, 0, '2021-06-06 23:08:02'),
(42, 'Default Function', 7, 0, '2021-06-06 23:08:04'),
(43, 'Magic Function', 7, 1, '2021-06-06 23:08:06'),
(44, 'User Defined Function', 7, 0, '2021-06-06 23:08:08'),
(45, 'CREATE table_name (column_type column_name);', 8, 0, '2021-06-06 23:08:15'),
(46, 'CREATE TABLE table_name (column_name column_type);', 8, 1, '2021-06-06 23:08:17'),
(47, 'CREATE table_name (column_name column_type);', 8, 0, '2021-06-06 23:08:19'),
(48, 'CREATE TABLE table_name (column_type column_name);', 8, 0, '2021-06-06 23:08:21'),
(49, 'get_array() and get_row()', 9, 0, '2021-06-06 23:08:30'),
(50, 'fetch_array() and fetch_column()', 9, 0, '2021-06-06 23:08:33'),
(51, 'get_array() and get_column()', 9, 0, '2021-06-06 23:08:35'),
(52, 'fetch_array() and fetch_row()', 9, 1, '2021-06-06 23:08:37'),
(53, 'explode()', 10, 0, '2021-06-06 23:10:37'),
(54, 'implode()', 10, 1, '2021-06-06 23:10:40'),
(55, 'concat()', 10, 0, '2021-06-06 23:10:43'),
(56, 'concatenate()', 10, 0, '2021-06-06 23:10:47'),
(57, '$var_1', 11, 0, '2021-06-06 23:10:52'),
(58, '$var1', 11, 0, '2021-06-06 23:10:55'),
(59, '$var/1', 11, 1, '2021-06-06 23:10:57'),
(60, '$v1', 11, 0, '2021-06-06 23:10:59'),
(61, 'Duplicated keys are NOT overwritten', 12, 1, '2021-06-06 23:11:12'),
(62, 'The + operator is overloaded', 12, 0, '2021-06-06 23:11:13'),
(63, 'This produces a syntax error', 12, 0, '2021-06-06 23:11:15'),
(64, '$b is not appended to $a', 12, 0, '2021-06-06 23:11:18'),
(65, 'arg_num()', 13, 0, '2021-06-06 23:11:32'),
(66, 'func_args_count()', 13, 0, '2021-06-06 23:11:33'),
(67, 'func_num_args()', 13, 1, '2021-06-06 23:11:35'),
(68, 'func_args_num()', 13, 0, '2021-06-06 23:11:39'),
(69, 'đúng', 14, 1, '2021-06-09 17:48:28'),
(70, 'sai', 14, 0, '2021-06-09 17:48:28'),
(71, 'sai', 14, 0, '2021-06-09 17:48:28'),
(72, 'sai', 14, 0, '2021-06-09 17:48:28'),
(73, 'a', 15, 1, '2021-06-09 17:56:23'),
(74, 'b', 15, 0, '2021-06-09 17:56:23'),
(75, 'c', 15, 0, '2021-06-09 17:56:23'),
(76, 'd', 15, 0, '2021-06-09 17:56:23'),
(77, 'a', 16, 1, '2021-06-09 17:56:27'),
(78, 'b', 16, 0, '2021-06-09 17:56:27'),
(79, 'c', 16, 0, '2021-06-09 17:56:27'),
(80, 'd', 16, 0, '2021-06-09 17:56:27');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_list`
--

CREATE TABLE `quiz_list` (
  `id` int(30) NOT NULL,
  `title` varchar(200) NOT NULL,
  `qpoints` int(11) NOT NULL DEFAULT 1,
  `quiz_time` tinyint(2) NOT NULL,
  `user_id` int(20) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_list`
--

INSERT INTO `quiz_list` (`id`, `title`, `qpoints`, `quiz_time`, `user_id`, `date_updated`) VALUES
(2, 'Pre-Test (Web development)', 2, 1, 6, '2021-06-09 17:07:25'),
(3, 'sample test', 1, 0, 0, '2021-06-09 17:55:19'),
(4, 'sample test', 1, 0, 0, '2021-06-09 17:56:14');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_student_list`
--

CREATE TABLE `quiz_student_list` (
  `id` int(30) NOT NULL,
  `quiz_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_student_list`
--

INSERT INTO `quiz_student_list` (`id`, `quiz_id`, `user_id`, `date_updated`) VALUES
(5, 2, 12, '0000-00-00 00:00:00'),
(6, 2, 13, '0000-00-00 00:00:00'),
(7, 2, 14, '2021-06-09 15:16:47'),
(8, 2, 15, '2021-06-09 15:16:47'),
(9, 2, 17, '2021-06-09 15:51:36'),
(10, 2, 18, '2021-06-09 15:51:41'),
(11, 2, 16, '2021-06-09 17:45:18'),
(12, 4, 12, '2021-06-09 17:56:35'),
(13, 4, 13, '2021-06-09 17:56:41'),
(14, 4, 16, '2021-06-09 17:56:41');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `level_section` varchar(100) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `level_section`, `date_updated`) VALUES
(3, 12, 'Sample subject', '0000-00-00 00:00:00'),
(4, 13, 'Sample subject', '0000-00-00 00:00:00'),
(5, 14, 'Web Development', '0000-00-00 00:00:00'),
(6, 15, 'Web Development', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(150) NOT NULL,
  `user_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = admin, 2= faculty , 3 = student',
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 = incative , 1 = active',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `college` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_type`, `username`, `password`, `status`, `date_updated`, `college`) VALUES
(1, 'Administrator', 1, 'admin', 'admin123', 1, '0000-00-00 00:00:00', 'Ho Chi Minh University of Education'),
(6, 'Vy Van', 2, 'vyvan', 'vyvan123', 1, '0000-00-00 00:00:00', 'Ho Chi Minh University of Education'),
(12, 'Sample Student 1', 3, 'student1', 'student1', 1, '0000-00-00 00:00:00', 'Ho Chi Minh University of Education'),
(13, 'Sample Student 2', 3, 'student2', 'student2', 1, '0000-00-00 00:00:00', 'Ho Chi Minh University of Education'),
(14, 'Phạm Phúc Thịnh', 3, 'thinhpham', 'thinhpham123', 1, '0000-00-00 00:00:00', 'Ho Chi Minh University of Education'),
(15, 'Lê Ái Quốc Vinh', 3, 'vinhle', 'vinhle123', 1, '0000-00-00 00:00:00', 'Ho Chi Minh University of Education'),
(16, 'Lê Vinh', 3, 'vinhle2', 'vinh321', 1, '2021-06-07 19:01:18', 'Ho Chi Minh University of Pedagogy'),
(17, 'Pham A', 3, 'user1', 'user123', 1, '2021-06-07 19:59:46', 'Ho Chi Minh University of Pedagogy'),
(18, 'Pham A', 3, 'phama', 'phama123', 1, '2021-06-09 15:50:48', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_opt`
--
ALTER TABLE `question_opt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_list`
--
ALTER TABLE `quiz_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_student_list`
--
ALTER TABLE `quiz_student_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `question_opt`
--
ALTER TABLE `question_opt`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `quiz_list`
--
ALTER TABLE `quiz_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quiz_student_list`
--
ALTER TABLE `quiz_student_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
