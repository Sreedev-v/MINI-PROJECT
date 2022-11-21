-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2022 at 04:46 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hire_driver`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add driver', 7, 'add_driver'),
(26, 'Can change driver', 7, 'change_driver'),
(27, 'Can delete driver', 7, 'delete_driver'),
(28, 'Can view driver', 7, 'view_driver'),
(29, 'Can add login', 8, 'add_login'),
(30, 'Can change login', 8, 'change_login'),
(31, 'Can delete login', 8, 'delete_login'),
(32, 'Can view login', 8, 'view_login'),
(33, 'Can add notification', 9, 'add_notification'),
(34, 'Can change notification', 9, 'change_notification'),
(35, 'Can delete notification', 9, 'delete_notification'),
(36, 'Can view notification', 9, 'view_notification'),
(37, 'Can add payment', 10, 'add_payment'),
(38, 'Can change payment', 10, 'change_payment'),
(39, 'Can delete payment', 10, 'delete_payment'),
(40, 'Can view payment', 10, 'view_payment'),
(41, 'Can add rating', 11, 'add_rating'),
(42, 'Can change rating', 11, 'change_rating'),
(43, 'Can delete rating', 11, 'delete_rating'),
(44, 'Can view rating', 11, 'view_rating'),
(45, 'Can add schedule ride', 12, 'add_scheduleride'),
(46, 'Can change schedule ride', 12, 'change_scheduleride'),
(47, 'Can delete schedule ride', 12, 'delete_scheduleride'),
(48, 'Can view schedule ride', 12, 'view_scheduleride'),
(49, 'Can add trip history', 13, 'add_triphistory'),
(50, 'Can change trip history', 13, 'change_triphistory'),
(51, 'Can delete trip history', 13, 'delete_triphistory'),
(52, 'Can view trip history', 13, 'view_triphistory'),
(53, 'Can add user', 14, 'add_user'),
(54, 'Can change user', 14, 'change_user'),
(55, 'Can delete user', 14, 'delete_user'),
(56, 'Can view user', 14, 'view_user');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'driver', 'driver'),
(8, 'login', 'login'),
(9, 'notification', 'notification'),
(10, 'payment', 'payment'),
(11, 'rating', 'rating'),
(12, 'schedule', 'scheduleride'),
(6, 'sessions', 'session'),
(13, 'trip_history', 'triphistory'),
(14, 'user', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-10-30 04:44:40.172669'),
(2, 'auth', '0001_initial', '2022-10-30 04:44:45.817625'),
(3, 'admin', '0001_initial', '2022-10-30 04:44:47.510727'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-10-30 04:44:47.526299'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-10-30 04:44:47.557554'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-10-30 04:44:47.925012'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-10-30 04:44:48.530317'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-10-30 04:44:48.577182'),
(9, 'auth', '0004_alter_user_username_opts', '2022-10-30 04:44:48.592804'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-10-30 04:44:48.928047'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-10-30 04:44:48.943766'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-10-30 04:44:48.959291'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-10-30 04:44:49.013206'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-10-30 04:44:49.076214'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-10-30 04:44:49.138707'),
(16, 'auth', '0011_update_proxy_permissions', '2022-10-30 04:44:49.185582'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-10-30 04:44:49.296219'),
(18, 'driver', '0001_initial', '2022-10-30 04:44:49.509701'),
(19, 'login', '0001_initial', '2022-10-30 04:44:50.299727'),
(20, 'notification', '0001_initial', '2022-10-30 04:44:50.541064'),
(21, 'payment', '0001_initial', '2022-10-30 04:44:50.759933'),
(22, 'rating', '0001_initial', '2022-10-30 04:44:50.902479'),
(23, 'schedule', '0001_initial', '2022-10-30 04:44:51.043280'),
(24, 'sessions', '0001_initial', '2022-10-30 04:44:51.646448'),
(25, 'trip_history', '0001_initial', '2022-10-30 04:44:51.755807'),
(26, 'user', '0001_initial', '2022-10-30 04:44:52.282662');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('7q1xj1utvazkd1xwifn3by1zagy804im', 'eyJ1aWQiOjExfQ:1ouUrI:FjUXEGWV5QNczwLKesEb9wfF8tVGScQdPlZT-WgOxfg', '2022-11-28 08:30:24.161957'),
('jyhy1uiar0annkzmpebyoibbpb5rdsv5', 'eyJ1aWQiOjE0fQ:1ovyyS:ywvDYwI9YKCx2QhCrzWFX9P_PMRQFKN5c5zG6Y6851Y', '2022-12-02 10:51:56.968138');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `driver_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `location` varchar(30) NOT NULL,
  `vehicle_type` varchar(30) NOT NULL,
  `vehicle_number` varchar(20) NOT NULL,
  `licence_number` varchar(20) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driver_id`, `name`, `gender`, `location`, `vehicle_type`, `vehicle_number`, `licence_number`, `phone_no`, `email`, `password`, `status`) VALUES
(5, 'Nidhin', 'Male', 'MAAHI', 'Bike', 'KL-34D-4545', 'KL-JK20223445', '7845961253', 'nidhin@gmail.com', '', 'approve'),
(8, 'Anamika', 'Male', 'Kollam', 'Scooter', 'KL-13G-2323', 'KL-J20304050', '9525752686', 'anu@gmail.com', '', 'approve'),
(11, 'Vinu', 'Male', 'Palakkad', 'Bus', 'KL-56J-5656', 'KL-54J676767', '7845784578', 'vinu@gmail.com', '147', 'approve'),
(12, 'Bhanu', 'Male', 'palakkad', 'car', '8976', '9876456764', '9876543234', 'bhanuuu@gmail.com', '', 'approve'),
(13, 'ammu', 'Female', 'trivandrum', 'car', '2818', 'kl576162', '5643217854', 'ammu@gmail.com', 'ammu123', ''),
(14, 'jaan', 'Male', 'ktpm', 'suv', 'kl 55 x 9098', '55/6456/2006', '8790987878', 'jaan@gmail.com', 'jaan', 'approve'),
(15, 'jann', 'Male', 'ktpm', 'suv', 'kl33f4345', '44/545/456', '6787879809', 'jann@gmail.com', 'jann', 'approve');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `uid` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `username`, `password`, `type`, `uid`, `status`) VALUES
(1, 'admin', 'admin', 'admin', 3, 'open'),
(2, 'abhi', '456', 'driver', 6, ''),
(3, 'anju', '9845', 'user', 4, 'open'),
(4, 'Thanu', '1234', 'driver', 7, ''),
(6, 'Anamika', '1212', 'driver', 9, ''),
(8, 'Vinu', '147', 'driver', 11, ''),
(9, 'Anjana', 'anjana', 'user', 5, 'open'),
(10, 'Ravi', 'ravi', 'user', 6, 'open'),
(11, 'Bhanu', 'bhanu', 'driver', 12, ''),
(12, 'Anu', 'anu', 'user', 7, 'open'),
(13, 'appu', 'appu123', 'user', 8, 'open'),
(14, 'ammu', 'ammu123', 'driver', 13, ''),
(15, 'arnav', 'arnav123', 'user', 9, 'open'),
(16, 'devn', 'devn', 'user', 10, 'open'),
(17, 'jaan', 'jaan', 'driver', 14, ''),
(18, 'devnn', 'devnn', 'user', 11, 'open'),
(19, 'jann', 'jann', 'driver', 15, ''),
(20, 'peter', 'peter', 'user', 12, 'block');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL,
  `notification` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `status` varchar(15) NOT NULL,
  `schedule_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `notification`, `date`, `time`, `status`, `schedule_id`) VALUES
(1, 'hello', '2022-10-30', '14:55:53.242524', 'approved', 0),
(3, 'dddd', '2022-10-30', '15:27:07.018758', 'approved', 0),
(5, 'fggf', '2022-10-30', '15:27:16.061605', 'approved', 0),
(6, 'hlooo', '2022-11-08', '16:40:48.599445', '', 0),
(7, 'your travel booking ', '2022-11-16', '12:03:58.792329', 'approved', 13),
(8, 'your travel booking ', '2022-11-18', '14:08:23.679256', 'approved', 14),
(9, 'your travel booking ', '2022-11-18', '14:11:45.265247', 'approved', 14),
(10, 'your travel booking ', '2022-11-18', '14:21:19.063311', 'approved', 14),
(11, 'your travel booking ', '2022-11-18', '14:22:15.759412', 'approved', 14),
(12, 'your travel booking ', '2022-11-18', '16:07:55.442999', 'approved', 18),
(13, 'your travel booking ', '2022-11-18', '16:12:52.468753', 'approved', 19),
(14, 'your travel booking ', '2022-11-18', '16:20:52.540785', 'approved', 20);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pay_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `status` varchar(20) NOT NULL,
  `schedule_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pay_id`, `user_id`, `amount`, `date`, `time`, `status`, `schedule_id`) VALUES
(1, 4, 456, '2022-11-16', '09:57:39.778839', '', 0),
(2, 3, 485, '2022-11-08', '16:12:48.331649', '', 0),
(3, 1, 78, '2022-11-01', '16:14:29.871683', '', 0),
(4, 1, 55, '2022-10-30', '15:53:24.276854', '', 0),
(5, 1, 52, '2022-11-01', '13:43:48.796677', '', 0),
(6, 3, 20, '2022-11-10', '16:07:33.427805', '', 0),
(7, 7, 456, '2022-11-08', '16:40:59.372820', '', 0),
(8, 11, 20, '2022-11-10', '16:13:25.758770', '', 0),
(9, 12, 600, '2022-11-12', '11:35:01.157381', '', 0),
(10, 11, 526, '2022-11-14', '13:49:56.999214', '', 0),
(11, 8, 1500, '2022-11-16', '10:36:43.231398', 'paid', 0),
(12, 9, 4500, '2022-11-16', '12:09:06.505557', 'paid', 0),
(13, 8, 5000, '2022-11-18', '14:21:08.661524', 'paid', 0),
(14, 10, 5500, '2022-11-18', '16:03:35.635830', '', 18),
(15, 11, 5500, '2022-11-18', '16:12:44.890882', '', 19),
(16, 11, 25000, '2022-11-18', '16:20:49.260437', 'paid', 20);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rating_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `driver_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`rating_id`, `user_id`, `rating`, `date`, `time`, `driver_id`) VALUES
(5, 8, '3', '2022-11-16', '11:39:59.932122', 0);

-- --------------------------------------------------------

--
-- Table structure for table `schedule_ride`
--

CREATE TABLE `schedule_ride` (
  `schedule_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `place` varchar(20) NOT NULL,
  `starting_time` time(6) NOT NULL,
  `ending_time` time(6) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule_ride`
--

INSERT INTO `schedule_ride` (`schedule_id`, `user_id`, `driver_id`, `place`, `starting_time`, `ending_time`, `date`, `status`) VALUES
(2, 1, 0, 'kollam', '00:00:00.000000', '00:00:00.000000', '2022-11-14', 'rejected'),
(11, 7, 12, 'clt', '17:48:00.000000', '19:48:00.000000', '2022-11-14', 'approved'),
(12, 8, 8, 'ooty', '11:32:00.000000', '03:32:00.000000', '2022-11-16', 'approved'),
(13, 9, 13, 'wayanad', '13:03:00.000000', '16:03:00.000000', '2022-11-16', 'approved'),
(14, 8, 13, 'mysoor', '16:07:00.000000', '02:07:00.000000', '2022-11-18', 'approved'),
(18, 10, 14, 'kattapana', '15:57:00.000000', '17:56:00.000000', '2022-11-18', 'approved'),
(19, 11, 15, 'edpl', '18:13:00.000000', '18:14:00.000000', '2022-11-18', 'approved'),
(20, 11, 14, 'kashmir', '18:20:00.000000', '22:20:00.000000', '2022-11-18', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `trip_history`
--

CREATE TABLE `trip_history` (
  `trip_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `place` varchar(30) NOT NULL,
  `starting_time` time(6) NOT NULL,
  `ending_time` time(6) NOT NULL,
  `total_cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trip_history`
--

INSERT INTO `trip_history` (`trip_id`, `user_id`, `place`, `starting_time`, `ending_time`, `total_cost`) VALUES
(1, 1, 'dcxds', '11:54:00.000000', '22:56:00.000000', 45),
(2, 12, 'munnar', '11:36:00.000000', '11:39:00.000000', 699),
(3, 13, 'kashmir', '02:31:00.000000', '07:31:00.000000', 12000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `location` varchar(30) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `gender`, `age`, `location`, `phone_number`, `email`, `status`, `password`) VALUES
(1, 'anupama', 'Female', 22, 'KLM', '7878787878', 'aaa@gmail.com', 'Approved', ''),
(2, 'sanu', 'Female', 21, 'PLKD', '7412589632', 'sa@gmail.com', 'Rejected', ''),
(3, 'anjana', 'on', 24, 'kozhikode', '755800963', 'anjana@gmail.com', 'Approved', '1234'),
(4, 'anju', 'on', 24, 'tvm', '33652874', 'aa@gmail.com', 'Approved', '9845'),
(5, 'Anjana', 'on', 23, 'Kozhikode', '9876543456', 'anjana@gmail.com', 'Approved', 'anjana'),
(6, 'Ravi', 'female', 78, 'Malappuram', '9876454566', 'r@gmail.com', 'Approved', 'ravi'),
(7, 'hgj', 'Female', 23, 'jkk', '7863266666', 'aa@gmail.com', 'Approved', 'anu'),
(8, 'appu', 'male', 24, 'calicut', '5643217865', 'appu@gmail.com', 'Approved', 'appu123'),
(9, 'arnav', 'male', 23, 'kollam', '4532167543', 'arnav@gmail.com', 'Approved', 'arnav123'),
(10, 'devn', 'male', 22, 'ktpm', '8767567687', 'devn@gmail.com', 'Approved', 'devn'),
(11, 'devnn', 'male', 33, 'ktpm', '8789899989', 'devnn@gmail.com', 'Approved', 'devnn'),
(12, 'peter', 'male', 24, 'newyork', '4531278954', 'petr@gmail.com', '', 'peter');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driver_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `schedule_ride`
--
ALTER TABLE `schedule_ride`
  ADD PRIMARY KEY (`schedule_id`);

--
-- Indexes for table `trip_history`
--
ALTER TABLE `trip_history`
  ADD PRIMARY KEY (`trip_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `driver_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `schedule_ride`
--
ALTER TABLE `schedule_ride`
  MODIFY `schedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `trip_history`
--
ALTER TABLE `trip_history`
  MODIFY `trip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
