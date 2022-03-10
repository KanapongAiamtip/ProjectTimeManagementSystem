-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 10, 2022 at 08:44 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ptms`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee_list`
--

CREATE TABLE `employee_list` (
  `id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `gender` varchar(50) NOT NULL,
  `email` text NOT NULL,
  `department` text NOT NULL,
  `position` text NOT NULL,
  `password` text NOT NULL,
  `generated_password` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `avatar` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_list`
--

INSERT INTO `employee_list` (`id`, `code`, `firstname`, `middlename`, `lastname`, `gender`, `email`, `department`, `position`, `password`, `generated_password`, `status`, `avatar`, `date_created`, `date_updated`) VALUES
(7, '2022-0001', 'Anan ', 'yin', 'Wong', 'Male', 'yin@nu.ac.th', 'IT Department', 'web developer and application', 'bdd17884f5c98d2ae56dcf484fcc52f3', '', 1, 'uploads/employee-7.png?v=1646846815', '2022-03-10 00:26:55', '2022-03-10 03:57:20'),
(8, '2022-0002', 'Wanarat ', '', 'Ratsameerat', 'Male', 'war@nu.ac.th', 'IT Department', 'Web Developer', '57e285abf88de544df813c937c4c5895', 'eqgu8ol1', 1, 'uploads/employee-8.png?v=1646847615', '2022-03-10 00:35:38', '2022-03-10 03:28:43'),
(9, '2022-0003', 'Patchanon', 'billy', 'Ounsaard', 'Male', 'billy@nu.ac.th', 'IT Department', 'Web develop', 'e8832ed5b5a57c090980ca9c22a5d02f', '16k97e1c', 1, 'uploads/employee-9.png?v=1646851466', '2022-03-10 01:44:26', '2022-03-10 03:27:54'),
(10, '2022-0004', 'Wichai', 'seng', ' Saefant', 'Male', 'seng@nu.ac.th', 'IT Department', 'Web Develop', '75f6abc7ad59b60c9ff51e4aece95997', 'nrb8hzml', 1, 'uploads/employee-10.png?v=1646851963', '2022-03-10 01:52:43', '2022-03-10 03:29:44'),
(11, '2022-0005', 'Supanut', '', 'lourhaphanich', 'Male', 'nut@nu.ac.th', 'IT Department', 'Web developer', '5c07adf483aaec87b5b4a5bcb974e491', 'wh5rhhj8', 1, 'uploads/employee-11.png?v=1646856261', '2022-03-10 03:04:21', '2022-03-10 03:28:18'),
(12, '2022-0006', 'Thanawat', '', '  Kusuwan', 'Male', 'plan@nu.ac.th', '', '', 'b5826e8034589fdcba1ab978a869b166', 'v78mhrie', 1, 'uploads/employee-12.png?v=1646858206', '2022-03-10 03:07:45', '2022-03-10 03:36:46'),
(13, '2022-0007', 'Tharatorn ', '', 'Jantharaworakarn', 'Male', 'bestboom@nu.ac.th', 'IT Department', 'Web Developer', 'bdd17884f5c98d2ae56dcf484fcc52f3', '', 1, 'uploads/employee-13.png?v=1646857112', '2022-03-10 03:18:32', '2022-03-10 03:49:49'),
(14, '2022-0008', 'Pusit ', '', 'Dittapisit', 'Male', 'fluke@nu.ac.th', 'IT Department', 'Web Developer', 'e50f4b79e24879f55f6a012dc03a097b', '0n30neel', 1, 'uploads/employee-14.png?v=1646857645', '2022-03-10 03:27:25', '2022-03-10 03:27:25'),
(15, '2022-0009', 'Joong ', '', 'Aachen', 'Male', 'joong@nu.ac.th', 'IT Department', 'Web Developer', 'f323dd1706b74b6654dd0c54badf7057', 'yt2dtaea', 1, 'uploads/employee-15.png?v=1646901825', '2022-03-10 15:37:47', '2022-03-10 15:43:45'),
(16, '2022-0010', ' Natachai', '', ' Boonprasert', 'Male', 'dunk@nu.ac.th', 'IT Department', 'Web Developer', '2c428cec0e0f0bf303459db9e0b9f86c', 'izlolddq', 1, 'uploads/employee-16.png?v=1646901692', '2022-03-10 15:41:32', '2022-03-10 15:41:32');

-- --------------------------------------------------------

--
-- Table structure for table `project_list`
--

CREATE TABLE `project_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0= New, 1= In-Progress, 2= Closed',
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_list`
--

INSERT INTO `project_list` (`id`, `name`, `description`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(6, 'Grader', 'A web-based code problem grader for Java/Kotlin/Python/Swift written in Swift', 1, 0, '2022-03-08 17:34:43', '2022-03-10 03:53:23'),
(7, 'Trader application', 'application for learning trader', 0, 0, '2022-03-09 20:13:17', '2022-03-10 01:34:37'),
(8, 'imsce csit application', 'application', 1, 0, '2022-03-10 02:28:33', '2022-03-10 04:01:03');

-- --------------------------------------------------------

--
-- Table structure for table `report_list`
--

CREATE TABLE `report_list` (
  `id` int(30) NOT NULL,
  `project_id` int(30) NOT NULL,
  `employee_id` int(30) NOT NULL,
  `work_type_id` int(30) NOT NULL,
  `description` text NOT NULL,
  `datetime_from` datetime NOT NULL,
  `datetime_to` datetime NOT NULL,
  `duration` float NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `report_list`
--

INSERT INTO `report_list` (`id`, `project_id`, `employee_id`, `work_type_id`, `description`, `datetime_from`, `datetime_to`, `duration`, `date_created`, `date_updated`) VALUES
(7, 6, 13, 11, '&lt;p&gt;Create database&lt;/p&gt;', '2022-03-10 03:00:00', '2022-03-10 03:45:00', 2700, '2022-03-10 03:53:23', NULL),
(8, 8, 7, 12, '&lt;p&gt;design application&lt;/p&gt;', '2022-03-10 01:30:00', '2022-03-10 02:00:00', 1800, '2022-03-10 03:56:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Project Time Management System in CSIT'),
(2, 'short_name', 'PTMS'),
(3, 'logo', 'uploads/logo-1646841210.png'),
(4, 'user_avatar', 'uploads/user_avatar.jpg'),
(5, 'cover', 'uploads/cover-1646728147.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '0=not verified, 1 = verified',
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `status`, `date_added`, `date_updated`) VALUES
(7, 'Phuwin', NULL, 'Tangsakyuen', 'phuwin', 'bdd17884f5c98d2ae56dcf484fcc52f3', 'uploads/avatar-7.png?v=1646858801', NULL, 1, 1, '2022-03-08 15:36:14', '2022-03-10 03:46:41'),
(8, 'Naravit ', NULL, 'Lertratkosum', 'pond', 'bdd17884f5c98d2ae56dcf484fcc52f3', 'uploads/avatar-8.png?v=1646831390', NULL, 2, 1, '2022-03-08 17:27:05', '2022-03-09 20:09:50'),
(9, 'Patsapon ', NULL, 'Jansuppakitkun', 'bbverpj', 'bdd17884f5c98d2ae56dcf484fcc52f3', 'uploads/avatar-9.png?v=1646843864', NULL, 2, 1, '2022-03-09 23:37:44', '2022-03-09 23:37:44'),
(10, 'Tawinan ', NULL, 'Anukoolprasert', 'seatawinan', 'bdd17884f5c98d2ae56dcf484fcc52f3', 'uploads/avatar-10.png?v=1646844382', NULL, 2, 1, '2022-03-09 23:46:22', '2022-03-09 23:46:22'),
(11, 'Theepakon', NULL, 'Kwanboon', 'ppromxx', 'bdd17884f5c98d2ae56dcf484fcc52f3', 'uploads/avatar-11.png?v=1646844695', NULL, 2, 1, '2022-03-09 23:51:35', '2022-03-09 23:51:35'),
(12, 'Kasidet', NULL, 'Plookphol', 'kasibook', 'bdd17884f5c98d2ae56dcf484fcc52f3', 'uploads/avatar-12.png?v=1646845252', NULL, 1, 1, '2022-03-10 00:00:52', '2022-03-10 03:47:12'),
(13, 'Jiratchapong', NULL, 'Srisang', 'fforce', 'bdd17884f5c98d2ae56dcf484fcc52f3', 'uploads/avatar-13.png?v=1646845584', NULL, 1, 1, '2022-03-10 00:05:54', '2022-03-10 03:47:00'),
(14, 'Kanaphan', NULL, 'Puitrakul', 'firstkp', 'bdd17884f5c98d2ae56dcf484fcc52f3', 'uploads/avatar-14.png?v=1646846426', NULL, 2, 1, '2022-03-10 00:20:26', '2022-03-10 00:20:26'),
(15, 'Jitaraphol', NULL, 'potiwihok', ' jimmyyjp', 'bdd17884f5c98d2ae56dcf484fcc52f3', 'uploads/avatar-15.png?v=1646852891', NULL, 1, 1, '2022-03-10 02:08:11', '2022-03-10 02:08:11');

-- --------------------------------------------------------

--
-- Table structure for table `work_type_list`
--

CREATE TABLE `work_type_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `work_type_list`
--

INSERT INTO `work_type_list` (`id`, `name`, `description`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(11, 'website', 'website', 1, 0, '2022-03-08 20:10:45', '2022-03-09 20:11:20'),
(12, 'application', 'application', 1, 0, '2022-03-09 20:11:11', NULL),
(13, 'IOT', 'IOT', 0, 0, '2022-03-09 20:11:41', '2022-03-09 20:11:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee_list`
--
ALTER TABLE `employee_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_list`
--
ALTER TABLE `project_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_list`
--
ALTER TABLE `report_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `work_type_id` (`work_type_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_type_list`
--
ALTER TABLE `work_type_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee_list`
--
ALTER TABLE `employee_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `project_list`
--
ALTER TABLE `project_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `report_list`
--
ALTER TABLE `report_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `work_type_list`
--
ALTER TABLE `work_type_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `report_list`
--
ALTER TABLE `report_list`
  ADD CONSTRAINT `report_list_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `report_list_ibfk_2` FOREIGN KEY (`work_type_id`) REFERENCES `work_type_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `report_list_ibfk_3` FOREIGN KEY (`employee_id`) REFERENCES `employee_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
