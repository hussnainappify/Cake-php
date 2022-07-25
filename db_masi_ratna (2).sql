-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2022 at 05:29 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_masi_ratna`
--

-- --------------------------------------------------------

--
-- Table structure for table `accommodations`
--

CREATE TABLE `accommodations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `add_students_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accommodation_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placement_fee` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accommodation_fee` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arrival_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `airport_pickup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `airport_pickup_fee` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accommodations`
--

INSERT INTO `accommodations` (`id`, `add_students_id`, `accommodation_type`, `placement_fee`, `accommodation_fee`, `arrival_date`, `airport_pickup`, `airport_pickup_fee`, `status`, `created_at`, `updated_at`) VALUES
(3, '4', '57', '11', '11', '2005-10-04', 'on', '11', '58', '2022-01-05 19:53:51', '2022-01-05 19:53:51'),
(5, '21', '56', '10000', '1000', '2020-11-05', 'on', '123123', '59', '2022-01-06 19:52:37', '2022-01-06 19:52:37'),
(8, '59', '57', '11', '22', '1996-05-26', 'on', '33', '59', '2022-02-11 18:19:59', '2022-02-11 18:19:59');

-- --------------------------------------------------------

--
-- Table structure for table `add_students`
--

CREATE TABLE `add_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `office` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counsellor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admission_officer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `users_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visa_stu` tinyint(1) NOT NULL DEFAULT 0,
  `mark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Incomplete',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_students`
--

INSERT INTO `add_students` (`id`, `office`, `counsellor`, `admission_officer`, `users_id`, `visa_stu`, `mark`, `created_at`, `updated_at`) VALUES
(1, '122', '7', '21', '1', 0, 'Incomplete', '2022-05-23 04:03:27', '2022-05-23 07:50:07'),
(2, NULL, NULL, NULL, '1', 1, 'Incomplete', '2022-05-23 04:09:24', '2022-05-23 07:50:06'),
(3, '122', '2', '20', '7', 0, 'Incomplete', '2022-07-19 07:20:54', '2022-07-19 07:27:34'),
(4, '28', '7', '14', '7', 0, 'Incomplete', '2022-07-19 08:01:22', '2022-07-19 08:01:22'),
(5, '27', '18', '14', '1', 0, 'Incomplete', '2022-07-19 08:55:39', '2022-07-19 08:55:39'),
(6, '29', '17', '15', '1', 0, 'Incomplete', '2022-07-19 11:11:30', '2022-07-19 11:11:30'),
(7, '27', '7', '15', '1', 0, 'Incomplete', '2022-07-19 11:51:22', '2022-07-19 11:51:22'),
(8, '122', '7', '14', '1', 0, 'Incomplete', '2022-07-19 12:01:13', '2022-07-20 03:12:06'),
(10, '27', '2', '9', '1', 0, 'Incomplete', '2022-07-20 03:18:12', '2022-07-20 03:18:12'),
(11, '122', '17', '14', '1', 0, 'Incomplete', '2022-07-20 03:22:10', '2022-07-20 03:22:10'),
(12, '28', '7', '14', '1', 0, 'Incomplete', '2022-07-20 03:22:45', '2022-07-20 03:22:45'),
(13, '122', '2', '22', '1', 0, 'Incomplete', '2022-07-20 03:24:37', '2022-07-20 03:24:37'),
(14, '27', '17', '15', '1', 0, 'Incomplete', '2022-07-20 03:46:29', '2022-07-20 03:46:29'),
(15, '29', '17', '23', '1', 0, 'Incomplete', '2022-07-20 04:21:33', '2022-07-20 04:21:33'),
(16, '29', '17', '15', '1', 0, 'Incomplete', '2022-07-20 04:27:20', '2022-07-20 04:27:20'),
(17, '29', '18', '14', '1', 0, 'Incomplete', '2022-07-20 04:45:32', '2022-07-20 04:45:32'),
(18, '27', '7', '9', '1', 0, 'Incomplete', '2022-07-20 06:19:02', '2022-07-20 06:19:02'),
(19, '29', '7', '14', '1', 0, 'Incomplete', '2022-07-20 06:22:34', '2022-07-20 06:22:34'),
(20, '28', '18', '21', '1', 0, 'Incomplete', '2022-07-20 06:26:12', '2022-07-20 06:26:12');

-- --------------------------------------------------------

--
-- Table structure for table `add_student_dropdown_type`
--

CREATE TABLE `add_student_dropdown_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `add_student_id` bigint(20) UNSIGNED NOT NULL,
  `dropdown_type_id` bigint(20) UNSIGNED NOT NULL,
  `course_accepted` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Not Accepted',
  `course_complete` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'UnComplete',
  `course_complete_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_start_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `add_students_id` bigint(20) UNSIGNED DEFAULT NULL,
  `study_dest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inst_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rejected_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `declined_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Submitted',
  `tuition_fee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `add_students_id`, `study_dest`, `inst_name`, `app_type`, `duration`, `start_date`, `rejected_reason`, `declined_reason`, `status`, `tuition_fee`, `created_at`, `updated_at`) VALUES
(3, 4, '36', '39', NULL, '17:10', '2022-02-15', NULL, NULL, 'Acceptance Information Requested', NULL, '2022-01-05 19:48:33', '2022-02-07 13:40:13'),
(5, 21, '35', '38', NULL, '04:05', '27-12-2021', NULL, NULL, 'Acceptance Information Requested', NULL, '2022-01-06 19:49:55', '2022-02-20 13:12:12'),
(10, 4, '35', '38', NULL, NULL, NULL, NULL, NULL, 'Accepted', NULL, '2022-01-12 15:40:15', '2022-02-08 20:06:34'),
(11, 34, '35', '38', NULL, NULL, NULL, NULL, NULL, 'Submitted', NULL, '2022-01-15 01:26:35', '2022-01-15 01:26:35'),
(12, 4, '35', '39', NULL, NULL, '2022-01-20', NULL, NULL, 'Rejected', NULL, '2022-01-27 18:07:25', '2022-02-08 20:06:50'),
(13, 4, '35', '38', NULL, NULL, NULL, NULL, NULL, 'Declined', NULL, '2022-01-27 19:36:22', '2022-02-02 00:35:50'),
(14, 47, '36', '38', NULL, '55', '04-03-2022', NULL, NULL, 'Acceptance Information provided', NULL, '2022-02-08 19:42:57', '2022-02-08 19:44:13'),
(15, 55, '37', '38', NULL, '12', '16-03-1979', 'this is test rejection reasons.', 'this is test declined reasons.', 'Declined', NULL, '2022-02-09 01:03:46', '2022-02-09 01:06:31'),
(16, 59, '37', '38', NULL, '69', '2022-02-02', NULL, NULL, 'Declined', '$10000', '2022-02-11 18:16:35', '2022-02-15 00:54:42'),
(17, 59, '35', '40', NULL, '73', '2022-02-01', NULL, NULL, 'Offered', NULL, '2022-02-11 18:17:04', '2022-02-15 00:54:33'),
(18, 53, '35', '39', NULL, '66', '22-02-2022', NULL, NULL, 'Accepted', NULL, '2022-02-14 13:18:29', '2022-02-14 13:18:58'),
(21, 66, '37', '38', NULL, '61', '2022-02-20', NULL, NULL, 'Accepted', '$10000', '2022-02-18 23:00:20', '2022-02-18 23:01:07'),
(22, 47, '35', '38', NULL, '25', '20-02-2024', NULL, NULL, 'Submitted', NULL, '2022-02-20 13:21:28', '2022-02-20 13:21:28'),
(26, 92, '76', '86', NULL, NULL, NULL, NULL, NULL, 'Offered', NULL, '2022-03-23 12:08:46', '2022-04-07 16:10:35'),
(27, 100, '134', '103', NULL, '6', '05-01-2007', NULL, NULL, 'Submitted', NULL, '2022-04-02 00:48:56', '2022-04-02 00:50:48'),
(28, 110, '76', '86', NULL, '52', '19-04-2022', NULL, NULL, 'Information Requested', NULL, '2022-04-07 16:04:04', '2022-04-07 16:04:13'),
(29, 78, '77', '107', NULL, NULL, NULL, NULL, NULL, 'Submitted', NULL, '2022-04-26 01:00:19', '2022-04-26 01:00:19'),
(30, 1, '78', '92', NULL, '76', '31-08-2014', NULL, NULL, 'Submitted', NULL, '2022-05-20 01:50:07', '2022-05-20 01:50:07'),
(31, 2, '134', '87', NULL, NULL, '2022-05-20', NULL, NULL, 'Information Provided', '$100', '2022-05-20 03:49:07', '2022-05-20 04:47:37'),
(32, 7, '76', '92', NULL, NULL, NULL, NULL, NULL, 'Submitted', NULL, '2022-05-20 05:12:14', '2022-05-20 05:12:14'),
(33, 20, '76', '86', NULL, NULL, NULL, NULL, NULL, 'Declined', NULL, '2022-07-21 06:32:44', '2022-07-21 06:36:58'),
(34, 20, '78', '88', NULL, NULL, NULL, NULL, NULL, 'Submitted', NULL, '2022-07-21 07:10:32', '2022-07-21 07:10:32'),
(35, 20, '78', '94', NULL, NULL, NULL, NULL, NULL, 'Submitted', NULL, '2022-07-21 07:11:56', '2022-07-21 07:11:56');

-- --------------------------------------------------------

--
-- Table structure for table `birthdays`
--

CREATE TABLE `birthdays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `birthday_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quotation` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `watermark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `birthdays`
--

INSERT INTO `birthdays` (`id`, `birthday_title`, `quotation`, `footer_note`, `watermark`, `created_at`, `updated_at`) VALUES
(1, 'HAPPY BIRTHDAY', '“Hope all your birthday wishes come true. It\'s your special day — get out there and celebrate. Wishing you the biggest slice of happy today.”', 'have a nice day', 'http://masiratna.leadconcept.info/storage/birthday/71oarFJRzFL._AC_SL1000__2022-02-25_13_19_37.jpg', '2022-02-10 18:53:11', '2022-02-25 21:19:37');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `add_student_id` int(10) UNSIGNED NOT NULL,
  `comment_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `add_student_id`, `comment_text`, `task_id`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 2, 59, 'this is first comment', '10', NULL, '2022-02-11 18:41:43', '2022-02-11 18:41:43'),
(2, 7, 59, 'this is test comment from this counsellor', NULL, '64', '2022-02-15 00:42:14', '2022-02-15 00:42:14'),
(3, 7, 47, 'this is test.', NULL, '65', '2022-02-15 21:36:12', '2022-02-15 21:36:12'),
(4, 7, 47, 'this is also test comment.', NULL, '64', '2022-02-15 21:37:03', '2022-02-15 21:37:03'),
(5, 7, 92, 'this is test comment.', NULL, '64', '2022-03-25 18:03:05', '2022-03-25 18:03:05'),
(6, 7, 92, 'adsf asdf asdf asf asdf asdf saf', NULL, '64', '2022-03-25 22:35:07', '2022-03-25 22:35:07');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'SA', 'Saudi Arabia', NULL, NULL),
(2, 'AF', 'Afghanistan', NULL, NULL),
(3, 'AX', 'Åland Islands', NULL, NULL),
(4, 'AL', 'Albania', NULL, NULL),
(5, 'DZ', 'Algeria', NULL, NULL),
(6, 'AS', 'American Samoa', NULL, NULL),
(7, 'AD', 'Andorra', NULL, NULL),
(8, 'AO', 'Angola', NULL, NULL),
(9, 'AI', 'Anguilla', NULL, NULL),
(10, 'AQ', 'Antarctica', NULL, NULL),
(11, 'AG', 'Antigua and Barbuda', NULL, NULL),
(12, 'AR', 'Argentina', NULL, NULL),
(13, 'AM', 'Armenia', NULL, NULL),
(14, 'AW', 'Aruba', NULL, NULL),
(15, 'AU', 'Australia', NULL, NULL),
(16, 'AT', 'Austria', NULL, NULL),
(17, 'AZ', 'Azerbaijan', NULL, NULL),
(18, 'BS', 'Bahamas', NULL, NULL),
(19, 'BH', 'Bahrain', NULL, NULL),
(20, 'BD', 'Bangladesh', NULL, NULL),
(21, 'BB', 'Barbados', NULL, NULL),
(22, 'BY', 'Belarus', NULL, NULL),
(23, 'BE', 'Belgium', NULL, NULL),
(24, 'BZ', 'Belize', NULL, NULL),
(25, 'BJ', 'Benin', NULL, NULL),
(26, 'BM', 'Bermuda', NULL, NULL),
(27, 'BT', 'Bhutan', NULL, NULL),
(28, 'BO', 'Bolivia, Plurinational State of', NULL, NULL),
(29, 'BQ', 'Bonaire, Sint Eustatius and Saba', NULL, NULL),
(30, 'BA', 'Bosnia and Herzegovina', NULL, NULL),
(31, 'BW', 'Botswana', NULL, NULL),
(32, 'BV', 'Bouvet Island', NULL, NULL),
(33, 'BR', 'Brazil', NULL, NULL),
(34, 'IO', 'British Indian Ocean Territory', NULL, NULL),
(35, 'BN', 'Brunei Darussalam', NULL, NULL),
(36, 'BG', 'Bulgaria', NULL, NULL),
(37, 'BF', 'Burkina Faso', NULL, NULL),
(38, 'BI', 'Burundi', NULL, NULL),
(39, 'KH', 'Cambodia', NULL, NULL),
(40, 'CM', 'Cameroon', NULL, NULL),
(41, 'CA', 'Canada', NULL, NULL),
(42, 'CV', 'Cape Verde', NULL, NULL),
(43, 'KY', 'Cayman Islands', NULL, NULL),
(44, 'CF', 'Central African Republic', NULL, NULL),
(45, 'TD', 'Chad', NULL, NULL),
(46, 'CL', 'Chile', NULL, NULL),
(47, 'CN', 'China', NULL, NULL),
(48, 'CX', 'Christmas Island', NULL, NULL),
(49, 'CC', 'Cocos (Keeling) Islands', NULL, NULL),
(50, 'CO', 'Colombia', NULL, NULL),
(51, 'KM', 'Comoros', NULL, NULL),
(52, 'CG', 'Congo', NULL, NULL),
(53, 'CD', 'Congo, the Democratic Republic of the', NULL, NULL),
(54, 'CK', 'Cook Islands', NULL, NULL),
(55, 'CR', 'Costa Rica', NULL, NULL),
(56, 'CI', 'Côte d\'Ivoire', NULL, NULL),
(57, 'HR', 'Croatia', NULL, NULL),
(58, 'CU', 'Cuba', NULL, NULL),
(59, 'CW', 'Curaçao', NULL, NULL),
(60, 'CY', 'Cyprus', NULL, NULL),
(61, 'CZ', 'Czech Republic', NULL, NULL),
(62, 'DK', 'Denmark', NULL, NULL),
(63, 'DJ', 'Djibouti', NULL, NULL),
(64, 'DM', 'Dominica', NULL, NULL),
(65, 'DO', 'Dominican Republic', NULL, NULL),
(66, 'EC', 'Ecuador', NULL, NULL),
(67, 'EG', 'Egypt', NULL, NULL),
(68, 'SV', 'El Salvador', NULL, NULL),
(69, 'GQ', 'Equatorial Guinea', NULL, NULL),
(70, 'ER', 'Eritrea', NULL, NULL),
(71, 'EE', 'Estonia', NULL, NULL),
(72, 'ET', 'Ethiopia', NULL, NULL),
(73, 'FK', 'Falkland Islands (Malvinas)', NULL, NULL),
(74, 'FO', 'Faroe Islands', NULL, NULL),
(75, 'FJ', 'Fiji', NULL, NULL),
(76, 'FI', 'Finland', NULL, NULL),
(77, 'FR', 'France', NULL, NULL),
(78, 'GF', 'French Guiana', NULL, NULL),
(79, 'PF', 'French Polynesia', NULL, NULL),
(80, 'TF', 'French Southern Territories', NULL, NULL),
(81, 'GA', 'Gabon', NULL, NULL),
(82, 'GM', 'Gambia', NULL, NULL),
(83, 'GE', 'Georgia', NULL, NULL),
(84, 'DE', 'Germany', NULL, NULL),
(85, 'GH', 'Ghana', NULL, NULL),
(86, 'GI', 'Gibraltar', NULL, NULL),
(87, 'GR', 'Greece', NULL, NULL),
(88, 'GL', 'Greenland', NULL, NULL),
(89, 'GD', 'Grenada', NULL, NULL),
(90, 'GP', 'Guadeloupe', NULL, NULL),
(91, 'GU', 'Guam', NULL, NULL),
(92, 'GT', 'Guatemala', NULL, NULL),
(93, 'GG', 'Guernsey', NULL, NULL),
(94, 'GN', 'Guinea', NULL, NULL),
(95, 'GW', 'Guinea-Bissau', NULL, NULL),
(96, 'GY', 'Guyana', NULL, NULL),
(97, 'HT', 'Haiti', NULL, NULL),
(98, 'HM', 'Heard Island and McDonald Mcdonald Islands', NULL, NULL),
(99, 'VA', 'Holy See (Vatican City State)', NULL, NULL),
(100, 'HN', 'Honduras', NULL, NULL),
(101, 'HK', 'Hong Kong', NULL, NULL),
(102, 'HU', 'Hungary', NULL, NULL),
(103, 'IS', 'Iceland', NULL, NULL),
(104, 'IN', 'India', NULL, NULL),
(105, 'ID', 'Indonesia', NULL, NULL),
(106, 'IR', 'Iran, Islamic Republic of', NULL, NULL),
(107, 'IQ', 'Iraq', NULL, NULL),
(108, 'IE', 'Ireland', NULL, NULL),
(109, 'IM', 'Isle of Man', NULL, NULL),
(110, 'IL', 'Israel', NULL, NULL),
(111, 'IT', 'Italy', NULL, NULL),
(112, 'JM', 'Jamaica', NULL, NULL),
(113, 'JP', 'Japan', NULL, NULL),
(114, 'JE', 'Jersey', NULL, NULL),
(115, 'JO', 'Jordan', NULL, NULL),
(116, 'KZ', 'Kazakhstan', NULL, NULL),
(117, 'KE', 'Kenya', NULL, NULL),
(118, 'KI', 'Kiribati', NULL, NULL),
(119, 'KP', 'Korea, Democratic People\'s Republic of', NULL, NULL),
(120, 'KR', 'Korea, Republic of', NULL, NULL),
(121, 'KW', 'Kuwait', NULL, NULL),
(122, 'KG', 'Kyrgyzstan', NULL, NULL),
(123, 'LA', 'Lao People\'s Democratic Republic', NULL, NULL),
(124, 'LV', 'Latvia', NULL, NULL),
(125, 'LB', 'Lebanon', NULL, NULL),
(126, 'LS', 'Lesotho', NULL, NULL),
(127, 'LR', 'Liberia', NULL, NULL),
(128, 'LY', 'Libya', NULL, NULL),
(129, 'LI', 'Liechtenstein', NULL, NULL),
(130, 'LT', 'Lithuania', NULL, NULL),
(131, 'LU', 'Luxembourg', NULL, NULL),
(132, 'MO', 'Macao', NULL, NULL),
(133, 'MK', 'Macedonia, the Former Yugoslav Republic of', NULL, NULL),
(134, 'MG', 'Madagascar', NULL, NULL),
(135, 'MW', 'Malawi', NULL, NULL),
(136, 'MY', 'Malaysia', NULL, NULL),
(137, 'MV', 'Maldives', NULL, NULL),
(138, 'ML', 'Mali', NULL, NULL),
(139, 'MT', 'Malta', NULL, NULL),
(140, 'MH', 'Marshall Islands', NULL, NULL),
(141, 'MQ', 'Martinique', NULL, NULL),
(142, 'MR', 'Mauritania', NULL, NULL),
(143, 'MU', 'Mauritius', NULL, NULL),
(144, 'YT', 'Mayotte', NULL, NULL),
(145, 'MX', 'Mexico', NULL, NULL),
(146, 'FM', 'Micronesia, Federated States of', NULL, NULL),
(147, 'MD', 'Moldova, Republic of', NULL, NULL),
(148, 'MC', 'Monaco', NULL, NULL),
(149, 'MN', 'Mongolia', NULL, NULL),
(150, 'ME', 'Montenegro', NULL, NULL),
(151, 'MS', 'Montserrat', NULL, NULL),
(152, 'MA', 'Morocco', NULL, NULL),
(153, 'MZ', 'Mozambique', NULL, NULL),
(154, 'MM', 'Myanmar', NULL, NULL),
(155, 'NA', 'Namibia', NULL, NULL),
(156, 'NR', 'Nauru', NULL, NULL),
(157, 'NP', 'Nepal', NULL, NULL),
(158, 'NL', 'Netherlands', NULL, NULL),
(159, 'NC', 'New Caledonia', NULL, NULL),
(160, 'NZ', 'New Zealand', NULL, NULL),
(161, 'NI', 'Nicaragua', NULL, NULL),
(162, 'NE', 'Niger', NULL, NULL),
(163, 'NG', 'Nigeria', NULL, NULL),
(164, 'NU', 'Niue', NULL, NULL),
(165, 'NF', 'Norfolk Island', NULL, NULL),
(166, 'MP', 'Northern Mariana Islands', NULL, NULL),
(167, 'NO', 'Norway', NULL, NULL),
(168, 'OM', 'Oman', NULL, NULL),
(169, 'PK', 'Pakistan', NULL, NULL),
(170, 'PW', 'Palau', NULL, NULL),
(171, 'PS', 'Palestine, State of', NULL, NULL),
(172, 'PA', 'Panama', NULL, NULL),
(173, 'PG', 'Papua New Guinea', NULL, NULL),
(174, 'PY', 'Paraguay', NULL, NULL),
(175, 'PE', 'Peru', NULL, NULL),
(176, 'PH', 'Philippines', NULL, NULL),
(177, 'PN', 'Pitcairn', NULL, NULL),
(178, 'PL', 'Poland', NULL, NULL),
(179, 'PT', 'Portugal', NULL, NULL),
(180, 'PR', 'Puerto Rico', NULL, NULL),
(181, 'QA', 'Qatar', NULL, NULL),
(182, 'RE', 'Réunion', NULL, NULL),
(183, 'RO', 'Romania', NULL, NULL),
(184, 'RU', 'Russian Federation', NULL, NULL),
(185, 'RW', 'Rwanda', NULL, NULL),
(186, 'BL', 'Saint Barthélemy', NULL, NULL),
(187, 'SH', 'Saint Helena, Ascension and Tristan da Cunha', NULL, NULL),
(188, 'KN', 'Saint Kitts and Nevis', NULL, NULL),
(189, 'LC', 'Saint Lucia', NULL, NULL),
(190, 'MF', 'Saint Martin (French part)', NULL, NULL),
(191, 'PM', 'Saint Pierre and Miquelon', NULL, NULL),
(192, 'VC', 'Saint Vincent and the Grenadines', NULL, NULL),
(193, 'WS', 'Samoa', NULL, NULL),
(194, 'SM', 'San Marino', NULL, NULL),
(195, 'ST', 'Sao Tome and Principe', NULL, NULL),
(196, 'SN', 'Senegal', NULL, NULL),
(197, 'RS', 'Serbia', NULL, NULL),
(198, 'SC', 'Seychelles', NULL, NULL),
(199, 'SL', 'Sierra Leone', NULL, NULL),
(200, 'SG', 'Singapore', NULL, NULL),
(201, 'SX', 'Sint Maarten (Dutch part)', NULL, NULL),
(202, 'SK', 'Slovakia', NULL, NULL),
(203, 'SI', 'Slovenia', NULL, NULL),
(204, 'SB', 'Solomon Islands', NULL, NULL),
(205, 'SO', 'Somalia', NULL, NULL),
(206, 'ZA', 'South Africa', NULL, NULL),
(207, 'GS', 'South Georgia and the South Sandwich Islands', NULL, NULL),
(208, 'SS', 'South Sudan', NULL, NULL),
(209, 'ES', 'Spain', NULL, NULL),
(210, 'LK', 'Sri Lanka', NULL, NULL),
(211, 'SD', 'Sudan', NULL, NULL),
(212, 'SR', 'Suriname', NULL, NULL),
(213, 'SJ', 'Svalbard and Jan Mayen', NULL, NULL),
(214, 'SZ', 'Swaziland', NULL, NULL),
(215, 'SE', 'Sweden', NULL, NULL),
(216, 'CH', 'Switzerland', NULL, NULL),
(217, 'SY', 'Syrian Arab Republic', NULL, NULL),
(218, 'TW', 'Taiwan', NULL, NULL),
(219, 'TJ', 'Tajikistan', NULL, NULL),
(220, 'TZ', 'Tanzania, United Republic of', NULL, NULL),
(221, 'TH', 'Thailand', NULL, NULL),
(222, 'TL', 'Timor-Leste', NULL, NULL),
(223, 'TG', 'Togo', NULL, NULL),
(224, 'TK', 'Tokelau', NULL, NULL),
(225, 'TO', 'Tonga', NULL, NULL),
(226, 'TT', 'Trinidad and Tobago', NULL, NULL),
(227, 'TN', 'Tunisia', NULL, NULL),
(228, 'TR', 'Turkey', NULL, NULL),
(229, 'TM', 'Turkmenistan', NULL, NULL),
(230, 'TC', 'Turks and Caicos Islands', NULL, NULL),
(231, 'TV', 'Tuvalu', NULL, NULL),
(232, 'UG', 'Uganda', NULL, NULL),
(233, 'UA', 'Ukraine', NULL, NULL),
(234, 'AE', 'United Arab Emirates', NULL, NULL),
(235, 'GB', 'United Kingdom', NULL, NULL),
(236, 'US', 'United States', NULL, NULL),
(237, 'UM', 'United States Minor Outlying Islands', NULL, NULL),
(238, 'UY', 'Uruguay', NULL, NULL),
(239, 'UZ', 'Uzbekistan', NULL, NULL),
(240, 'VU', 'Vanuatu', NULL, NULL),
(241, 'VE', 'Venezuela, Bolivarian Republic of', NULL, NULL),
(242, 'VN', 'Viet Nam', NULL, NULL),
(243, 'VG', 'Virgin Islands, British', NULL, NULL),
(244, 'VI', 'Virgin Islands, U.S.', NULL, NULL),
(245, 'WF', 'Wallis and Futuna', NULL, NULL),
(246, 'EH', 'Western Sahara', NULL, NULL),
(247, 'YE', 'Yemen', NULL, NULL),
(248, 'ZM', 'Zambia', NULL, NULL),
(249, 'ZW', 'Zimbabwe', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dropdowns`
--

CREATE TABLE `dropdowns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dropdowns`
--

INSERT INTO `dropdowns` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Office', '2021-12-04 01:41:28', '2021-12-09 21:28:35'),
(2, 'Type of Funding', '2021-12-04 01:41:40', '2022-03-09 18:14:55'),
(3, 'Name of sponsor', '2021-12-04 01:41:46', '2021-12-09 17:52:11'),
(4, 'Student source', '2021-12-04 01:42:15', '2021-12-04 01:42:15'),
(5, 'Name of cohort', '2021-12-04 01:42:20', '2021-12-09 17:35:56'),
(6, 'Study Destination', '2021-12-14 23:51:14', '2022-07-20 07:18:50'),
(7, 'Institution Name', '2022-01-05 17:40:42', '2022-01-05 17:40:42'),
(8, 'Case Officer', '2022-01-05 17:40:53', '2022-01-05 17:40:53'),
(9, 'Visa Type', '2022-01-05 17:41:21', '2022-01-05 17:41:21'),
(10, 'Status', '2022-01-05 17:41:25', '2022-01-05 17:41:25'),
(11, 'Immigration Payment Method', '2022-01-05 17:41:35', '2022-01-05 17:41:35'),
(12, 'Service Payment Method', '2022-01-05 17:42:04', '2022-01-05 17:42:04'),
(13, 'Accommodation Type', '2022-01-05 17:42:10', '2022-01-05 17:42:10'),
(14, 'Accomodation Status', '2022-01-05 17:42:16', '2022-01-05 17:42:16'),
(15, 'Course', '2022-01-05 17:42:16', '2022-01-05 17:42:16'),
(16, 'City', '2022-02-02 00:21:27', '2022-02-02 00:21:27'),
(17, 'Admission Officer', '2022-03-23 14:36:42', '2022-03-23 14:36:42'),
(18, 'partner', '2022-07-20 06:10:40', '2022-07-20 06:10:40');

-- --------------------------------------------------------

--
-- Table structure for table `dropdown_types`
--

CREATE TABLE `dropdown_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dropdowns_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dropdown_types`
--

INSERT INTO `dropdown_types` (`id`, `dropdowns_id`, `name`, `created_at`, `updated_at`) VALUES
(5, 2, 'type 1', '2021-12-04 01:44:11', '2021-12-04 01:44:11'),
(6, 2, 'type 2', '2021-12-04 01:44:19', '2021-12-04 01:44:19'),
(8, 3, 'Sponsor 1', '2021-12-04 01:44:39', '2021-12-04 01:44:39'),
(9, 3, 'Sponsor 2', '2021-12-04 01:44:47', '2021-12-04 01:44:47'),
(11, 4, 'Source 1', '2021-12-04 01:45:03', '2021-12-04 01:45:03'),
(12, 4, 'Source 2', '2021-12-04 01:45:16', '2021-12-04 01:45:16'),
(15, 5, 'Test 1', '2021-12-04 01:45:42', '2021-12-04 01:45:42'),
(16, 5, 'Test 2', '2021-12-04 01:45:51', '2021-12-04 01:45:51'),
(17, 5, 'Test 3', '2021-12-04 01:45:58', '2021-12-04 01:45:58'),
(18, 2, 'type 3', '2021-12-09 01:39:00', '2022-02-15 21:53:33'),
(24, 4, 'Test 4', '2021-12-09 17:48:53', '2021-12-09 17:48:53'),
(27, 1, '<input class=', '2021-12-09 21:11:47', '2022-07-20 07:19:01'),
(28, 1, 'Office 2', '2021-12-09 21:11:47', '2022-07-20 07:19:16'),
(29, 1, 'Office 3', '2021-12-09 21:11:49', '2022-07-20 07:19:22'),
(44, 9, 'Student 5001', '2022-03-17 22:23:27', '2022-03-17 22:23:27'),
(47, 10, 'Status 1', '2022-01-05 17:44:18', '2022-01-05 17:44:18'),
(48, 10, 'Status 2', '2022-01-05 17:44:21', '2022-01-05 17:44:21'),
(49, 10, 'Status 3', '2022-01-05 17:44:23', '2022-01-05 17:44:23'),
(50, 11, 'Immigration Payment Method 1', '2022-01-05 17:44:37', '2022-01-05 17:44:37'),
(51, 11, 'Immigration Payment Method 2', '2022-01-05 17:44:38', '2022-01-05 17:44:38'),
(52, 11, 'Immigration Payment Method 3', '2022-01-05 17:44:41', '2022-01-05 17:44:41'),
(53, 12, 'Service Payment Method 1', '2022-01-05 17:45:04', '2022-01-05 17:45:04'),
(54, 12, 'Service Payment Method 2', '2022-01-05 17:45:05', '2022-01-05 17:45:05'),
(55, 12, 'Service Payment Method 3', '2022-01-05 17:45:08', '2022-01-05 17:45:08'),
(56, 13, 'Accommodation Type 1', '2022-01-05 17:45:16', '2022-01-05 17:45:16'),
(57, 13, 'Accommodation Type 2', '2022-01-05 17:45:18', '2022-01-05 17:45:18'),
(58, 14, 'Accomodation Status 1', '2022-01-05 17:45:25', '2022-01-05 17:45:25'),
(59, 14, 'Accomodation Status 2', '2022-01-05 17:45:26', '2022-01-05 17:45:26'),
(64, 15, 'Programming Fundamentals', '2022-01-14 22:53:18', '2022-01-14 22:53:18'),
(65, 15, 'Object Oriented Programming', '2022-01-14 22:53:29', '2022-01-14 22:53:29'),
(66, 15, 'Data Structure', '2022-01-14 22:53:35', '2022-01-14 22:53:35'),
(67, 15, 'Analysis and Algorithms', '2022-01-14 22:53:48', '2022-01-14 22:53:48'),
(68, 15, 'Website Development', '2022-01-14 22:54:02', '2022-01-14 22:54:02'),
(69, 15, 'Android Development', '2022-01-14 22:54:07', '2022-01-14 22:54:07'),
(70, 16, 'Riyadh', '2022-02-02 00:22:13', '2022-02-02 00:22:13'),
(71, 16, 'Melbourne', '2022-02-02 00:22:29', '2022-02-02 00:22:29'),
(72, 16, 'Perth', '2022-02-02 00:22:38', '2022-02-02 00:22:38'),
(73, 16, 'New Delhi', '2022-02-02 00:22:45', '2022-02-02 00:22:45'),
(74, 16, 'Jakarta', '2022-02-02 00:22:54', '2022-02-02 00:22:54'),
(76, 6, 'Australia', '2022-03-17 13:37:36', '2022-03-17 13:37:36'),
(77, 6, 'USA', '2022-03-17 13:37:45', '2022-03-17 13:37:45'),
(78, 6, 'UK', '2022-03-17 13:37:51', '2022-03-17 13:37:51'),
(79, 8, 'Kutiba Nussirat', '2022-03-17 13:39:43', '2022-03-17 13:39:43'),
(83, 9, 'Student 500', '2022-03-17 13:40:53', '2022-03-17 13:40:53'),
(86, 7, 'University of Melbourne', '2022-03-17 13:41:49', '2022-03-17 13:41:49'),
(87, 7, 'Hawthorn', '2022-03-17 13:41:54', '2022-03-17 13:41:54'),
(88, 7, 'Monash University', '2022-03-17 13:42:04', '2022-03-17 13:42:04'),
(89, 7, 'Monash College', '2022-03-17 13:42:10', '2022-03-17 13:42:10'),
(90, 7, 'La Trobe University', '2022-03-17 13:42:29', '2022-03-17 13:42:29'),
(91, 7, 'Latrobe Melbourne', '2022-03-17 13:42:34', '2022-03-17 13:42:34'),
(92, 7, 'RMIT University', '2022-03-17 13:42:39', '2022-03-17 13:42:39'),
(93, 7, 'REW', '2022-03-17 13:42:46', '2022-03-17 13:42:46'),
(94, 7, 'Federation University', '2022-03-17 13:42:53', '2022-03-17 13:42:53'),
(95, 7, 'Deakin University', '2022-03-17 13:42:59', '2022-03-17 13:42:59'),
(96, 7, 'Deakin College', '2022-03-17 13:43:08', '2022-03-17 13:43:08'),
(97, 7, 'DUELI', '2022-03-17 13:43:21', '2022-03-17 13:43:21'),
(98, 7, 'Victoria University', '2022-03-17 13:43:26', '2022-03-17 13:43:26'),
(99, 7, 'VU English', '2022-03-17 13:43:31', '2022-03-17 13:43:31'),
(100, 7, 'Swinburne University', '2022-03-17 13:43:35', '2022-03-17 13:43:35'),
(101, 7, 'Flinders University', '2022-03-17 13:43:45', '2022-03-17 13:43:45'),
(102, 7, 'Adelaide University', '2022-03-17 13:43:56', '2022-03-17 13:43:56'),
(103, 7, 'The University of Adelaide College', '2022-03-17 13:44:09', '2022-03-17 13:44:09'),
(104, 7, 'Equals International', '2022-03-17 13:44:16', '2022-03-17 13:44:16'),
(105, 7, 'TafeSA', '2022-03-17 13:44:20', '2022-03-17 13:44:20'),
(106, 7, 'Eynesbury', '2022-03-17 13:44:25', '2022-03-17 13:44:25'),
(107, 7, 'University of South Australia', '2022-03-17 13:44:34', '2022-03-17 13:44:34'),
(108, 4, '9-	Word of Mouth', '2022-03-17 13:45:36', '2022-03-17 13:45:36'),
(109, 4, 'Twitter', '2022-03-17 13:45:49', '2022-03-17 13:45:49'),
(110, 4, 'Facebook', '2022-03-17 13:45:53', '2022-03-17 13:45:53'),
(111, 4, 'Instagram', '2022-03-17 13:45:55', '2022-03-17 13:45:55'),
(112, 4, 'Google Add', '2022-03-17 13:46:01', '2022-03-17 13:46:01'),
(113, 4, 'Adds', '2022-03-17 13:46:15', '2022-03-17 13:46:15'),
(115, 3, 'MOHE', '2022-03-17 13:46:39', '2022-03-17 13:46:39'),
(116, 3, 'Ministry of Defiance', '2022-03-17 13:46:45', '2022-03-17 13:46:45'),
(117, 3, 'Ministry of Health', '2022-03-17 13:46:49', '2022-03-17 13:46:49'),
(118, 3, 'Ministry of Interior', '2022-03-17 13:46:54', '2022-03-17 13:46:54'),
(119, 3, 'Ministry of Finance', '2022-03-17 13:46:59', '2022-03-17 13:46:59'),
(120, 2, '', '2022-03-17 13:47:19', '2022-07-20 07:17:01'),
(121, 2, 'Sponsored', '2022-03-17 13:47:29', '2022-07-20 07:16:55'),
(122, 1, 'Office 4', '2022-03-17 18:43:33', '2022-03-17 18:43:33'),
(124, 9, 'Student 5001', '2022-03-17 22:23:27', '2022-03-17 22:23:27'),
(126, 1, 'Riyadh', '2022-03-23 13:40:58', '2022-07-20 07:12:47'),
(129, 3, 'MOFE', '2022-03-23 13:43:06', '2022-03-23 13:43:06'),
(130, 4, 'MOFE', '2022-03-23 13:43:15', '2022-03-23 13:43:15'),
(131, 10, 'MOFE', '2022-03-23 13:43:23', '2022-03-23 13:43:23'),
(132, 9, 'MOFE', '2022-03-23 13:43:30', '2022-03-23 13:43:30'),
(133, 8, 'MOFE', '2022-03-23 13:43:37', '2022-03-23 13:43:37'),
(134, 6, 'MOFE', '2022-03-23 13:43:44', '2022-03-23 13:43:44'),
(135, 17, 'Francis Lopez', '2022-03-23 14:37:04', '2022-03-23 14:37:04'),
(136, 18, 'partner 1', '2022-07-20 06:11:00', '2022-07-20 06:11:00'),
(137, 18, 'partner 2', '2022-07-20 06:11:08', '2022-07-20 06:11:08'),
(138, 18, 'partner 3', '2022-07-20 06:11:12', '2022-07-20 06:11:12');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `applications_id` bigint(20) UNSIGNED DEFAULT NULL,
  `diploma` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d_start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `advance_diploma` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bachelor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b_start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bachelor_hons` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bh_start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `graduate_diploma` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gd_start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `masters_degree` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `md_start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctoral_degree` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dd_start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_school` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `high_school` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `applications_id`, `diploma`, `d_start_date`, `advance_diploma`, `ad_start_date`, `bachelor`, `b_start_date`, `bachelor_hons`, `bh_start_date`, `graduate_diploma`, `gd_start_date`, `masters_degree`, `md_start_date`, `doctoral_degree`, `dd_start_date`, `primary_school`, `high_school`, `created_at`, `updated_at`) VALUES
(3, 3, 'aa', '2022-02-15', 'bb', '2022-02-15', 'cc', '2022-02-15', 'dd', '2022-02-15', 'ee', '2022-02-15', 'ff', '2022-02-15', 'gg', '2022-02-15', '05-07-2021', '05-06-2021', '2022-01-05 19:48:33', '2022-02-02 00:35:42'),
(5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-06 19:49:55', '2022-01-06 19:49:55'),
(10, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-12 15:40:15', '2022-01-12 15:40:15'),
(11, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-15 01:26:35', '2022-01-15 01:26:35'),
(12, 12, 'sdfsf', '2022-01-20', NULL, '2022-01-20', NULL, NULL, 'df', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '27-02-2022', '2022-01-27 18:07:25', '2022-01-27 21:23:18'),
(13, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-27 19:36:22', '2022-01-27 19:36:22'),
(14, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-08 19:42:57', '2022-02-08 19:42:57'),
(15, 15, 'Mark Forbes', '13-08-1984', 'Grant Benson', '17-05-2000', 'Zachary Singleton', '03-04-1981', 'Todd Mclean', '04-07-1970', 'Dieter Estes', '24-09-1977', NULL, NULL, 'Maite Macias', '23-05-2002', '28-06-2012', NULL, '2022-02-09 01:03:46', '2022-02-09 01:03:46'),
(16, 16, 'Raven Sharp', '2022-02-02', 'Neil Todd', '2022-02-02', 'Mannix Hughes', '2022-02-02', 'Len Atkins', '2022-02-02', 'Ferris Taylor', '2022-02-02', 'Alisa Morris', '2022-02-02', 'Brianna Salinas', '2022-02-02', '08-04-2017', '21-09-2010', '2022-02-11 18:16:35', '2022-02-15 00:54:23'),
(17, 17, 'aa', '2022-02-01', 'bb', '2022-02-01', 'cc', '2022-02-01', 'dd', '2022-02-01', 'ee', '2022-02-01', 'ff', '2022-02-01', 'gg', '2022-02-01', '11-07-2021', '11-07-2021', '2022-02-11 18:17:04', '2022-02-15 00:54:33'),
(18, 18, 'sdfsf', '03-03-2022', 'nursing', '22-02-2022', 'nursing', '19-03-2026', 'nursing', '02-02-2022', 'nursing', '25-02-2022', 'nursing', '23-02-2022', 'nursing', '16-02-2022', '10-02-2022', '06-09-2030', '2022-02-14 13:18:30', '2022-02-14 13:18:30'),
(21, 21, 'Francesca Ball', '2022-02-20', 'Lenore Osborne', '2022-02-20', 'Quemby George', '2022-02-20', 'MacKensie Jackson', '2022-02-20', 'Cheryl Fernandez', '2022-02-20', 'Shana Reeves', '2022-02-20', 'Katell Douglas', '2022-02-20', '23-07-1983', '06-11-2010', '2022-02-18 23:00:20', '2022-02-18 23:01:07'),
(22, 22, 'sdfsf', '23-02-2022', 'nursing', NULL, 'nursing', '10-06-2025', 'nursing', '22-02-2022', 'nursing', '01-03-2022', 'nursing', '16-02-2022', 'nursing', '28-01-2022', '14-02-2022', '18-02-2022', '2022-02-20 13:21:28', '2022-02-20 13:21:28'),
(26, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'nursing', '11-08-2022', NULL, NULL, NULL, NULL, '2022-03-23 12:08:46', '2022-04-07 16:10:35'),
(27, 27, 'Quinn Potter', '28-01-2011', 'Abraham Briggs', '06-08-1985', 'Owen Holt', '18-10-1974', 'MacKensie Nash', '18-07-1998', 'Ivana Richardson', '16-02-2014', 'Britanney Lowe', '21-06-1991', 'Shana Frost', '16-10-2021', '28-09-2002', '18-04-1989', '2022-04-02 00:48:56', '2022-04-02 00:48:56'),
(28, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'nursing', '12-04-2022', NULL, NULL, NULL, NULL, '2022-04-07 16:04:04', '2022-04-07 16:04:04'),
(29, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-26 01:00:19', '2022-04-26 01:00:19'),
(30, 30, 'Yen Peterson', '02-03-2010', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 01:50:07', '2022-05-20 01:50:07'),
(31, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 03:49:07', '2022-05-20 03:49:07'),
(32, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 05:12:14', '2022-05-20 05:12:14'),
(33, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-21 06:32:44', '2022-07-21 06:32:44'),
(34, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-21 07:10:32', '2022-07-21 07:10:32'),
(35, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-21 07:11:56', '2022-07-21 07:11:56');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `portal_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `portal_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`id`, `portal_name`, `portal_link`, `password`, `show_password`, `user_name`, `created_at`, `updated_at`) VALUES
(10, 'waseem', 'https://www.uet.edu.pk/', '$2y$10$cbe030hsKEokVlKkJpEoP.bFwMJG3onhqLuSSd7YqbcgQ0nNoDexu', '123456789', '', '2022-03-09 17:41:41', '2022-03-09 17:47:46');

-- --------------------------------------------------------

--
-- Table structure for table `log_activities`
--

CREATE TABLE `log_activities` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log_activities`
--

INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip`, `agent`, `user_id`, `created_at`, `updated_at`) VALUES
(3106, 'update student information tab, name:Mian Waseem Asghar', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-02-10 23:47:09', '2022-02-10 23:47:09'),
(3107, 'update student contact detail, name:Mian Waseem Asghar', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-02-10 23:47:59', '2022-02-10 23:47:59'),
(3108, 'add student other information, name:Mian Waseem Asghar', 'http://masiratna.leadconcept.info/studentotherinformation', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-02-10 23:48:08', '2022-02-10 23:48:08'),
(3110, 'update student information tab, name:Mr. Muhammad Ahsan Qureshi', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-11 18:07:45', '2022-02-11 18:07:45'),
(3111, 'update student contact detail, name:Mr. Muhammad Ahsan Qureshi', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-11 18:08:47', '2022-02-11 18:08:47'),
(3112, 'add student other information, name:Mr. Muhammad Ahsan Qureshi', 'http://masiratna.leadconcept.info/studentotherinformation', 'POST', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-11 18:08:49', '2022-02-11 18:08:49'),
(3113, 'add appliction of a student, name:59', 'http://masiratna.leadconcept.info/users/save_application', 'POST', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-11 18:16:35', '2022-02-11 18:16:35'),
(3114, 'add appliction of a student, name:59', 'http://masiratna.leadconcept.info/users/save_application', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 1, '2022-02-11 18:17:04', '2022-02-11 18:17:04'),
(3115, 'Save Accomodation', 'http://masiratna.leadconcept.info/accommodation', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 1, '2022-02-11 18:19:59', '2022-02-11 18:19:59'),
(3116, 'Accomodation Edit8', 'http://masiratna.leadconcept.info/edit_accommodation/8', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 1, '2022-02-11 18:24:16', '2022-02-11 18:24:16'),
(3117, 'Save Task', 'http://masiratna.leadconcept.info/save_task', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 1, '2022-02-11 18:29:00', '2022-02-11 18:29:00'),
(3118, 'Edit Task : 9', 'http://masiratna.leadconcept.info/edit_task?edit_id=9', 'GET', '101.53.242.27', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Mobile Safari/537.36', 1, '2022-02-11 18:30:30', '2022-02-11 18:30:30'),
(3119, 'edit user name:Counselor', 'http://masiratna.leadconcept.info/users/edit/2', 'GET', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-11 18:33:48', '2022-02-11 18:33:48'),
(3120, 'Save Task', 'http://masiratna.leadconcept.info/save_task', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 2, '2022-02-11 18:38:53', '2022-02-11 18:38:53'),
(3121, 'Update That Task: 10', 'http://masiratna.leadconcept.info/update_task_status', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 2, '2022-02-11 18:39:10', '2022-02-11 18:39:10'),
(3122, 'Update That Task: 10', 'http://masiratna.leadconcept.info/update_task_status', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 2, '2022-02-11 18:39:19', '2022-02-11 18:39:19'),
(3123, 'Update That Task: 10', 'http://masiratna.leadconcept.info/update_task_status', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 2, '2022-02-11 18:39:39', '2022-02-11 18:39:39'),
(3124, 'Update That Task: 10', 'http://masiratna.leadconcept.info/update_task_status', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 2, '2022-02-11 18:41:29', '2022-02-11 18:41:29'),
(3125, 'Update That Task: 10', 'http://masiratna.leadconcept.info/update_task_status', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 2, '2022-02-11 18:41:34', '2022-02-11 18:41:34'),
(3126, 'Save Comment on task', 'http://masiratna.leadconcept.info/save_task_comment', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 2, '2022-02-11 18:41:43', '2022-02-11 18:41:43'),
(3127, 'Save Course', 'http://masiratna.leadconcept.info/save_courses', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 1, '2022-02-11 18:45:22', '2022-02-11 18:45:22'),
(3128, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 1, '2022-02-11 18:47:57', '2022-02-11 18:47:57'),
(3129, 'Edit Visa14', 'http://masiratna.leadconcept.info/edit_visa/14', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 1, '2022-02-11 19:07:05', '2022-02-11 19:07:05'),
(3130, 'edit user name:Masiratna Admin', 'http://masiratna.leadconcept.info/users/edit/1', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 1, '2022-02-11 19:14:16', '2022-02-11 19:14:16'),
(3131, 'visit profile screen', 'http://masiratna.leadconcept.info/profile', 'GET', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-11 20:50:06', '2022-02-11 20:50:06'),
(3132, 'delete user profile picture, user:Masiratna Admin', 'http://masiratna.leadconcept.info/delete_profile_photo', 'GET', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-11 20:50:09', '2022-02-11 20:50:09'),
(3133, 'visit profile screen', 'http://masiratna.leadconcept.info/profile', 'GET', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-11 20:50:09', '2022-02-11 20:50:09'),
(3134, 'visit profile screen', 'http://masiratna.leadconcept.info/profile', 'GET', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-11 20:50:13', '2022-02-11 20:50:13'),
(3135, 'visit profile screen', 'http://masiratna.leadconcept.info/profile', 'GET', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-11 20:50:15', '2022-02-11 20:50:15'),
(3136, 'delete user profile picture from hosting, user:Masiratna Admin', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-11 20:50:40', '2022-02-11 20:50:40'),
(3137, 'add profile picture, user:Masiratna Admin', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-11 20:50:40', '2022-02-11 20:50:40'),
(3138, 'update user profile, user:Masiratna Admin', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-11 20:50:40', '2022-02-11 20:50:40'),
(3139, 'update user profile, user:Masiratna Admin', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-11 20:50:40', '2022-02-11 20:50:40'),
(3140, 'visit profile screen', 'http://masiratna.leadconcept.info/profile', 'GET', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-11 20:50:40', '2022-02-11 20:50:40'),
(3141, 'delete user profile picture, user:Masiratna Admin', 'http://masiratna.leadconcept.info/delete_profile_photo', 'GET', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-11 20:50:50', '2022-02-11 20:50:50'),
(3142, 'visit profile screen', 'http://masiratna.leadconcept.info/profile', 'GET', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-11 20:50:50', '2022-02-11 20:50:50'),
(3143, 'delete user profile picture from hosting, user:Masiratna Admin', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-11 20:51:06', '2022-02-11 20:51:06'),
(3144, 'add profile picture, user:Masiratna Admin', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-11 20:51:06', '2022-02-11 20:51:06'),
(3145, 'update user profile, user:Masiratna Admin', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-11 20:51:06', '2022-02-11 20:51:06'),
(3146, 'update user profile, user:Masiratna Admin', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-11 20:51:06', '2022-02-11 20:51:06'),
(3147, 'visit profile screen', 'http://masiratna.leadconcept.info/profile', 'GET', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-11 20:51:06', '2022-02-11 20:51:06'),
(3148, 'delete user profile picture from hosting, user:Masiratna Admin', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-11 20:51:28', '2022-02-11 20:51:28'),
(3149, 'add profile picture, user:Masiratna Admin', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-11 20:51:28', '2022-02-11 20:51:28'),
(3150, 'update user profile, user:Masiratna Admin', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-11 20:51:28', '2022-02-11 20:51:28'),
(3151, 'update user profile, user:Masiratna Admin', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-11 20:51:28', '2022-02-11 20:51:28'),
(3152, 'visit profile screen', 'http://masiratna.leadconcept.info/profile', 'GET', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-11 20:51:29', '2022-02-11 20:51:29'),
(3153, 'visit profile screen', 'http://masiratna.leadconcept.info/profile', 'GET', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-11 22:42:07', '2022-02-11 22:42:07'),
(3154, 'visit profile screen', 'http://masiratna.leadconcept.info/profile', 'GET', '156.146.59.37', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Mobile Safari/537.36', 1, '2022-02-11 22:42:17', '2022-02-11 22:42:17'),
(3155, 'visit profile screen', 'http://masiratna.leadconcept.info/profile', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 1, '2022-02-12 01:32:19', '2022-02-12 01:32:19'),
(3156, 'edit student screen, student:Mr. Muhammad Ahsan Qureshi', 'http://masiratna.leadconcept.info/student/59/edit', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 1, '2022-02-12 01:39:10', '2022-02-12 01:39:10'),
(3157, 'Add Visa Form of studentKutiba Nussirat', 'http://masiratna.leadconcept.info/visa', 'POST', '129.208.124.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-13 13:09:18', '2022-02-13 13:09:18'),
(3158, 'update record of student name:ryt rtuyrt', 'http://masiratna.leadconcept.info/student', 'POST', '129.208.124.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-13 13:09:35', '2022-02-13 13:09:35'),
(3159, 'update record of studentryt rtuyrt', 'http://masiratna.leadconcept.info/student', 'POST', '129.208.124.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-13 13:09:35', '2022-02-13 13:09:35'),
(3160, 'update student information, name:ryt rtuyrt', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '129.208.124.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-13 13:09:48', '2022-02-13 13:09:48'),
(3161, 'update record of student name:ryt rtuyrt', 'http://masiratna.leadconcept.info/student', 'POST', '129.208.124.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-14 13:15:23', '2022-02-14 13:15:23'),
(3162, 'update record of studentryt rtuyrt', 'http://masiratna.leadconcept.info/student', 'POST', '129.208.124.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-14 13:15:23', '2022-02-14 13:15:23'),
(3163, 'update student information, name:Nussairat Kutiba Hussain', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '129.208.124.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-14 13:15:49', '2022-02-14 13:15:49'),
(3164, 'update student contact detail, name:Nussairat Kutiba Hussain', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '129.208.124.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-14 13:16:04', '2022-02-14 13:16:04'),
(3165, 'add student other information, name:Nussairat Kutiba Hussain', 'http://masiratna.leadconcept.info/studentotherinformation', 'POST', '129.208.124.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-14 13:16:11', '2022-02-14 13:16:11'),
(3166, 'add appliction of a student, name:53', 'http://masiratna.leadconcept.info/users/save_application', 'POST', '129.208.124.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-14 13:18:30', '2022-02-14 13:18:30'),
(3167, 'Update the application status', 'http://masiratna.leadconcept.info/users/application_status', 'POST', '129.208.124.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-14 13:18:39', '2022-02-14 13:18:39'),
(3168, 'Update the application status', 'http://masiratna.leadconcept.info/users/application_status', 'POST', '129.208.124.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-14 13:18:48', '2022-02-14 13:18:48'),
(3169, 'Update the application status', 'http://masiratna.leadconcept.info/users/application_status', 'POST', '129.208.124.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-14 13:18:50', '2022-02-14 13:18:50'),
(3170, 'Update the application status', 'http://masiratna.leadconcept.info/users/application_status', 'POST', '129.208.124.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-14 13:18:53', '2022-02-14 13:18:53'),
(3171, 'Update the application status', 'http://masiratna.leadconcept.info/users/application_status', 'POST', '129.208.124.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-14 13:18:57', '2022-02-14 13:18:57'),
(3172, 'Update the application status', 'http://masiratna.leadconcept.info/users/application_status', 'POST', '129.208.124.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-14 13:18:58', '2022-02-14 13:18:58'),
(3173, 'update student information tab, name:Samara Momen Ahmed', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '129.208.124.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-14 13:24:29', '2022-02-14 13:24:29'),
(3174, 'update student contact detail, name:Samara Momen Ahmed', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '129.208.124.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-14 13:25:05', '2022-02-14 13:25:05'),
(3175, 'add student other information, name:Samara Momen Ahmed', 'http://masiratna.leadconcept.info/studentotherinformation', 'POST', '129.208.124.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-14 13:25:09', '2022-02-14 13:25:09'),
(3176, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '129.208.124.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-14 13:26:39', '2022-02-14 13:26:39'),
(3177, 'type of resources page visit', 'http://masiratna.leadconcept.info/show_resource_type?id=1', 'GET', '129.208.124.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-14 13:26:44', '2022-02-14 13:26:44'),
(3178, 'Add Visa Form of student4', 'http://masiratna.leadconcept.info/visa', 'POST', '129.208.124.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-14 13:28:10', '2022-02-14 13:28:10'),
(3179, 'Add Visa Form of studentsameh alsayed', 'http://masiratna.leadconcept.info/visa', 'POST', '129.208.124.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-14 13:29:14', '2022-02-14 13:29:14'),
(3180, 'Edit Visa14', 'http://masiratna.leadconcept.info/edit_visa/14', 'GET', '129.208.124.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1, '2022-02-14 13:29:36', '2022-02-14 13:29:36'),
(3181, 'Add Visa Form of studentwaseem asghar', 'http://masiratna.leadconcept.info/visa', 'POST', '156.146.59.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 1, '2022-02-14 17:47:56', '2022-02-14 17:47:56'),
(3182, 'Add Visa Form of student45', 'http://masiratna.leadconcept.info/visa', 'POST', '156.146.59.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 1, '2022-02-14 17:49:38', '2022-02-14 17:49:38'),
(3183, 'Add Visa Form of student36', 'http://masiratna.leadconcept.info/visa', 'POST', '156.146.59.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 1, '2022-02-14 17:51:12', '2022-02-14 17:51:12'),
(3184, 'Add Visa Form of studentzesihek', 'http://masiratna.leadconcept.info/visa', 'POST', '156.146.59.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 1, '2022-02-14 17:53:49', '2022-02-14 17:53:49'),
(3185, 'Add Visa Form of studentabrar', 'http://masiratna.leadconcept.info/visa', 'POST', '156.146.59.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 1, '2022-02-14 17:56:58', '2022-02-14 17:56:58'),
(3186, 'edit user name:Counselor', 'http://masiratna.leadconcept.info/users/edit/2', 'GET', '156.146.59.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 1, '2022-02-14 18:26:22', '2022-02-14 18:26:22'),
(3187, 'Add Visa Form of studentquwevo@mailinator.com', 'http://masiratna.leadconcept.info/visa', 'POST', '156.146.59.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 1, '2022-02-14 18:51:57', '2022-02-14 18:51:57'),
(3188, 'Delete Visa:', 'http://masiratna.leadconcept.info/delete_visa/28', 'DELETE', '156.146.59.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 1, '2022-02-14 18:52:11', '2022-02-14 18:52:11'),
(3189, 'Add Visa Form of studentmoxofomeq@mailinator.com', 'http://masiratna.leadconcept.info/visa', 'POST', '156.146.59.43', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Mobile Safari/537.36', 1, '2022-02-14 18:56:33', '2022-02-14 18:56:33'),
(3190, 'Delete Visa:', 'http://masiratna.leadconcept.info/delete_visa/29', 'DELETE', '156.146.59.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 1, '2022-02-14 18:56:50', '2022-02-14 18:56:50'),
(3191, 'add appliction of a student, name:67', 'http://masiratna.leadconcept.info/users/save_application', 'POST', '156.146.59.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 1, '2022-02-14 19:14:52', '2022-02-14 19:14:52'),
(3192, 'Update the application status', 'http://masiratna.leadconcept.info/users/application_status', 'POST', '156.146.59.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 1, '2022-02-14 19:15:16', '2022-02-14 19:15:16'),
(3193, 'visit profile screen', 'http://masiratna.leadconcept.info/profile', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-02-14 20:05:58', '2022-02-14 20:05:58'),
(3194, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', 1, '2022-02-14 20:10:12', '2022-02-14 20:10:12'),
(3195, 'visit profile screen', 'http://masiratna.leadconcept.info/profile', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-02-14 20:16:24', '2022-02-14 20:16:24'),
(3196, 'visit profile screen', 'http://masiratna.leadconcept.info/profile', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-02-14 20:18:16', '2022-02-14 20:18:16'),
(3197, 'visit profile screen', 'http://masiratna.leadconcept.info/profile', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-02-14 20:18:47', '2022-02-14 20:18:47'),
(3198, 'visit profile screen', 'http://masiratna.leadconcept.info/profile', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 1, '2022-02-14 20:51:09', '2022-02-14 20:51:09'),
(3199, 'create new user name:Masiratna_Counsellor', 'http://masiratna.leadconcept.info/users/store', 'POST', '156.146.59.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 1, '2022-02-15 00:20:39', '2022-02-15 00:20:39'),
(3200, 'create new user name:Masiratna_Admission', 'http://masiratna.leadconcept.info/users/store', 'POST', '156.146.59.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 1, '2022-02-15 00:21:45', '2022-02-15 00:21:45'),
(3201, 'update student information tab, name:Gibson Murray', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '156.146.59.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 7, '2022-02-15 00:41:01', '2022-02-15 00:41:01'),
(3202, 'update student contact detail, name:Gibson Murray', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '156.146.59.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 7, '2022-02-15 00:41:09', '2022-02-15 00:41:09'),
(3203, 'update student contact detail, name:Gibson Murray', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '156.146.59.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 7, '2022-02-15 00:41:18', '2022-02-15 00:41:18'),
(3204, 'add student other information, name:Gibson Murray', 'http://masiratna.leadconcept.info/studentotherinformation', 'POST', '156.146.59.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 7, '2022-02-15 00:41:19', '2022-02-15 00:41:19'),
(3205, 'Update the application status', 'http://masiratna.leadconcept.info/users/application_status', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 7, '2022-02-15 00:54:23', '2022-02-15 00:54:23'),
(3206, 'Update the application status', 'http://masiratna.leadconcept.info/users/application_status', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 7, '2022-02-15 00:54:33', '2022-02-15 00:54:33'),
(3207, 'Update the application status', 'http://masiratna.leadconcept.info/users/application_status', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 7, '2022-02-15 00:54:42', '2022-02-15 00:54:42'),
(3208, 'Save Course', 'http://masiratna.leadconcept.info/save_courses', 'POST', '156.146.59.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 7, '2022-02-15 17:24:19', '2022-02-15 17:24:19'),
(3209, 'Save Course', 'http://masiratna.leadconcept.info/save_courses', 'POST', '156.146.59.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 7, '2022-02-15 17:24:20', '2022-02-15 17:24:20'),
(3210, 'Delete Course: 12', 'http://masiratna.leadconcept.info/delete_course/12', 'DELETE', '156.146.59.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 7, '2022-02-15 17:24:26', '2022-02-15 17:24:26'),
(3211, 'Delete Course: 10', 'http://masiratna.leadconcept.info/delete_course/10', 'DELETE', '156.146.59.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 7, '2022-02-15 17:24:33', '2022-02-15 17:24:33'),
(3212, 'Delete Course: 9', 'http://masiratna.leadconcept.info/delete_course/9', 'DELETE', '156.146.59.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 7, '2022-02-15 17:24:38', '2022-02-15 17:24:38'),
(3213, 'Save Course', 'http://masiratna.leadconcept.info/save_courses', 'POST', '156.146.59.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 7, '2022-02-15 17:24:43', '2022-02-15 17:24:43'),
(3214, 'Add Visa Form of studentmohammed tarek ahmed', 'http://masiratna.leadconcept.info/visa', 'POST', '129.208.124.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 1, '2022-02-15 19:51:03', '2022-02-15 19:51:03'),
(3215, 'Update the application status', 'http://masiratna.leadconcept.info/users/application_status', 'POST', '129.208.124.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 1, '2022-02-15 19:53:19', '2022-02-15 19:53:19'),
(3216, 'Update the application status', 'http://masiratna.leadconcept.info/users/application_status', 'POST', '129.208.124.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 1, '2022-02-15 19:53:54', '2022-02-15 19:53:54'),
(3217, 'Update the application status', 'http://masiratna.leadconcept.info/users/application_status', 'POST', '129.208.124.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 1, '2022-02-15 19:54:01', '2022-02-15 19:54:01'),
(3218, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '129.208.124.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 1, '2022-02-15 19:54:45', '2022-02-15 19:54:45'),
(3219, 'Add Visa Form of studentkibupipasu@mailinator.com', 'http://masiratna.leadconcept.info/visa', 'POST', '156.146.59.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 7, '2022-02-15 20:44:43', '2022-02-15 20:44:43'),
(3220, 'Edit Visa31', 'http://masiratna.leadconcept.info/edit_visa/31', 'GET', '156.146.59.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 7, '2022-02-15 20:44:48', '2022-02-15 20:44:48'),
(3221, 'Edit Visa31', 'http://masiratna.leadconcept.info/edit_visa/31', 'GET', '156.146.59.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 7, '2022-02-15 20:44:49', '2022-02-15 20:44:49'),
(3222, 'Edit Visa31', 'http://masiratna.leadconcept.info/edit_visa/31', 'GET', '156.146.59.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 7, '2022-02-15 20:45:03', '2022-02-15 20:45:03'),
(3223, 'Edit Visa31', 'http://masiratna.leadconcept.info/edit_visa/31', 'GET', '156.146.59.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 7, '2022-02-15 21:34:28', '2022-02-15 21:34:28'),
(3224, 'Delete Course: 13', 'http://masiratna.leadconcept.info/delete_course/13', 'DELETE', '156.146.59.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 7, '2022-02-15 21:34:40', '2022-02-15 21:34:40'),
(3225, 'delete user profile picture from hosting, user:Masiratna_Counsellor', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '156.146.59.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 7, '2022-02-15 21:42:36', '2022-02-15 21:42:36'),
(3226, 'add profile picture, user:Masiratna_Counsellor', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '156.146.59.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 7, '2022-02-15 21:42:36', '2022-02-15 21:42:36'),
(3227, 'update user profile, user:Masiratna_Counsellor', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '156.146.59.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 7, '2022-02-15 21:42:36', '2022-02-15 21:42:36'),
(3228, 'update user profile, user:Masiratna_Counsellor', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '156.146.59.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 7, '2022-02-15 21:42:36', '2022-02-15 21:42:36'),
(3229, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '39.59.115.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 1, '2022-02-15 21:43:27', '2022-02-15 21:43:27'),
(3230, 'delete user profile picture from hosting, user:Masiratna_Counsellor', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '156.146.59.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 7, '2022-02-15 21:45:21', '2022-02-15 21:45:21'),
(3231, 'add profile picture, user:Masiratna_Counsellor', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '156.146.59.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 7, '2022-02-15 21:45:21', '2022-02-15 21:45:21'),
(3232, 'update user profile, user:Masiratna_Counsellor', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '156.146.59.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 7, '2022-02-15 21:45:21', '2022-02-15 21:45:21'),
(3233, 'update user profile, user:Masiratna_Counsellor', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '156.146.59.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 7, '2022-02-15 21:45:21', '2022-02-15 21:45:21'),
(3234, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '156.146.59.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 7, '2022-02-15 21:52:07', '2022-02-15 21:52:07'),
(3235, 'type of resource is update of:abcdef', 'http://masiratna.leadconcept.info/update_dropdown_type', 'POST', '156.146.59.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 7, '2022-02-15 21:53:19', '2022-02-15 21:53:19'),
(3236, 'type of resource is update of:abcdef', 'http://masiratna.leadconcept.info/update_dropdown_type', 'POST', '156.146.59.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 7, '2022-02-15 21:53:23', '2022-02-15 21:53:23'),
(3237, 'type of resource is update of:type 3', 'http://masiratna.leadconcept.info/update_dropdown_type', 'POST', '156.146.59.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 7, '2022-02-15 21:53:33', '2022-02-15 21:53:33'),
(3238, 'Add Visa Form of student4', 'http://masiratna.leadconcept.info/visa', 'POST', '156.146.59.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-16 18:33:48', '2022-02-16 18:33:48'),
(3239, 'Add Visa Form of student34', 'http://masiratna.leadconcept.info/visa', 'POST', '156.146.59.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-17 17:24:39', '2022-02-17 17:24:39'),
(3240, 'Add Visa Form of studentbilal khan', 'http://masiratna.leadconcept.info/visa', 'POST', '156.146.59.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-17 17:29:40', '2022-02-17 17:29:40'),
(3241, 'edit student screen, student:kibupipasu@mailinator.com', 'http://masiratna.leadconcept.info/student/70/edit', 'GET', '156.146.59.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-17 17:30:03', '2022-02-17 17:30:03'),
(3242, 'update student information, name:Carter Atkins', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '156.146.59.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-17 17:30:25', '2022-02-17 17:30:25'),
(3243, 'add appliction of a student, name:66', 'http://masiratna.leadconcept.info/users/save_application', 'POST', '156.146.59.6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-18 22:58:11', '2022-02-18 22:58:11'),
(3244, 'Delete Application: 20', 'http://masiratna.leadconcept.info/users/delete_application/20', 'DELETE', '156.146.59.6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-18 22:59:55', '2022-02-18 22:59:55'),
(3245, 'add appliction of a student, name:66', 'http://masiratna.leadconcept.info/users/save_application', 'POST', '156.146.59.6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-18 23:00:20', '2022-02-18 23:00:20'),
(3246, 'Update the application status', 'http://masiratna.leadconcept.info/users/application_status', 'POST', '156.146.59.6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-18 23:01:07', '2022-02-18 23:01:07'),
(3247, 'Update the application status', 'http://masiratna.leadconcept.info/users/application_status', 'POST', '176.45.169.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 7, '2022-02-20 13:12:12', '2022-02-20 13:12:12'),
(3248, 'update student information tab, name:Nankuth Hunais JJ', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '176.45.169.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 7, '2022-02-20 13:13:27', '2022-02-20 13:13:27'),
(3249, 'update student contact detail, name:Nankuth Hunais JJ', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '176.45.169.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 7, '2022-02-20 13:13:36', '2022-02-20 13:13:36'),
(3250, 'add student other information, name:Nankuth Hunais JJ', 'http://masiratna.leadconcept.info/studentotherinformation', 'POST', '176.45.169.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 7, '2022-02-20 13:13:42', '2022-02-20 13:13:42'),
(3251, 'Add Visa Form of studenthunais nankoth', 'http://masiratna.leadconcept.info/visa', 'POST', '176.45.169.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 7, '2022-02-20 13:17:07', '2022-02-20 13:17:07'),
(3252, 'add appliction of a student, name:47', 'http://masiratna.leadconcept.info/users/save_application', 'POST', '176.45.169.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 7, '2022-02-20 13:21:28', '2022-02-20 13:21:28'),
(3253, 'update user profile, user:Masiratna_Admission', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '176.45.169.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 9, '2022-02-20 13:22:48', '2022-02-20 13:22:48'),
(3254, 'update user profile, user:Masiratna_Admission', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '176.45.169.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 9, '2022-02-20 13:22:48', '2022-02-20 13:22:48'),
(3255, 'update user profile, user:Masiratna_Admission', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '176.45.169.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 9, '2022-02-20 13:22:50', '2022-02-20 13:22:50'),
(3256, 'update user profile, user:Masiratna_Admission', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '176.45.169.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 9, '2022-02-20 13:22:50', '2022-02-20 13:22:50'),
(3257, 'delete user profile picture from hosting, user:Masiratna_Admission', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '176.45.169.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 9, '2022-02-20 13:23:46', '2022-02-20 13:23:46'),
(3258, 'add profile picture, user:Masiratna_Admission', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '176.45.169.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 9, '2022-02-20 13:23:46', '2022-02-20 13:23:46'),
(3259, 'update user profile, user:Masiratna_Admission', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '176.45.169.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 9, '2022-02-20 13:23:46', '2022-02-20 13:23:46'),
(3260, 'update user profile, user:Masiratna_Admission', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '176.45.169.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 9, '2022-02-20 13:23:46', '2022-02-20 13:23:46'),
(3261, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-21 21:55:28', '2022-02-21 21:55:28'),
(3262, 'create new user name:Management_User', 'http://masiratna.leadconcept.info/users/store', 'POST', '156.146.59.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-22 16:37:20', '2022-02-22 16:37:20'),
(3263, 'create new user name:Visa_Officer', 'http://masiratna.leadconcept.info/users/store', 'POST', '156.146.59.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-22 16:38:24', '2022-02-22 16:38:24'),
(3264, 'create new user name:Finanace_Officer', 'http://masiratna.leadconcept.info/users/store', 'POST', '156.146.59.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-22 16:39:13', '2022-02-22 16:39:13'),
(3265, 'create new user name:Admin', 'http://masiratna.leadconcept.info/users/store', 'POST', '156.146.59.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-22 16:40:06', '2022-02-22 16:40:06'),
(3266, 'update student information tab, name:Griffin Wilkerson', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '156.146.59.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 7, '2022-02-22 17:33:43', '2022-02-22 17:33:43'),
(3267, 'update student contact detail, name:Griffin Wilkerson', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '156.146.59.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 7, '2022-02-22 17:34:09', '2022-02-22 17:34:09'),
(3268, 'add student other information, name:Griffin Wilkerson', 'http://masiratna.leadconcept.info/studentotherinformation', 'POST', '156.146.59.39', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Mobile Safari/537.36', 7, '2022-02-22 17:34:17', '2022-02-22 17:34:17'),
(3269, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 10, '2022-02-22 17:38:59', '2022-02-22 17:38:59'),
(3270, 'update student information tab, name:Mclean Jennings', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 10, '2022-02-22 18:22:57', '2022-02-22 18:22:57'),
(3271, 'update student contact detail, name:Mclean Jennings', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 10, '2022-02-22 18:23:05', '2022-02-22 18:23:05'),
(3272, 'add student other information, name:Mclean Jennings', 'http://masiratna.leadconcept.info/studentotherinformation', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 10, '2022-02-22 18:23:09', '2022-02-22 18:23:09'),
(3273, 'Add Visa Form of studentnew student counsellor', 'http://masiratna.leadconcept.info/visa', 'POST', '156.146.59.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 7, '2022-02-22 18:25:17', '2022-02-22 18:25:17'),
(3274, 'update student information tab, name:Goodwin Lawrence', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '156.146.59.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 7, '2022-02-22 18:30:03', '2022-02-22 18:30:03'),
(3275, 'update student contact detail, name:Goodwin Lawrence', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '156.146.59.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 7, '2022-02-22 18:30:09', '2022-02-22 18:30:09'),
(3276, 'add student other information, name:Goodwin Lawrence', 'http://masiratna.leadconcept.info/studentotherinformation', 'POST', '156.146.59.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 7, '2022-02-22 18:30:12', '2022-02-22 18:30:12'),
(3277, 'Add Visa Form of studentmyne@mailinator.com', 'http://masiratna.leadconcept.info/visa', 'POST', '156.146.59.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 7, '2022-02-22 18:31:06', '2022-02-22 18:31:06'),
(3278, 'Save Task', 'http://masiratna.leadconcept.info/save_task', 'POST', '156.146.59.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 9, '2022-02-22 20:27:59', '2022-02-22 20:27:59'),
(3279, 'Update That Task: 11', 'http://masiratna.leadconcept.info/update_task_status', 'POST', '156.146.59.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 9, '2022-02-22 20:28:14', '2022-02-22 20:28:14');
INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip`, `agent`, `user_id`, `created_at`, `updated_at`) VALUES
(3280, 'Update That Task: 11', 'http://masiratna.leadconcept.info/update_task_status', 'POST', '156.146.59.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 9, '2022-02-22 20:28:15', '2022-02-22 20:28:15'),
(3281, 'Update That Task: 11', 'http://masiratna.leadconcept.info/update_task_status', 'POST', '156.146.59.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 9, '2022-02-22 20:28:15', '2022-02-22 20:28:15'),
(3282, 'Update That Task: 11', 'http://masiratna.leadconcept.info/update_task_status', 'POST', '156.146.59.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 9, '2022-02-22 20:28:19', '2022-02-22 20:28:19'),
(3283, 'Update That Task: 11', 'http://masiratna.leadconcept.info/update_task_status', 'POST', '156.146.59.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 9, '2022-02-22 20:28:22', '2022-02-22 20:28:22'),
(3284, 'Update That Task: 11', 'http://masiratna.leadconcept.info/update_task_status', 'POST', '156.146.59.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 9, '2022-02-22 20:28:27', '2022-02-22 20:28:27'),
(3285, 'Update That Task: 11', 'http://masiratna.leadconcept.info/update_task_status', 'POST', '156.146.59.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 9, '2022-02-22 20:28:30', '2022-02-22 20:28:30'),
(3286, 'Update That Task: 11', 'http://masiratna.leadconcept.info/update_task_status', 'POST', '156.146.59.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 9, '2022-02-22 20:28:41', '2022-02-22 20:28:41'),
(3287, 'Update That Task: 11', 'http://masiratna.leadconcept.info/update_task_status', 'POST', '156.146.59.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 9, '2022-02-22 20:28:43', '2022-02-22 20:28:43'),
(3288, 'Edit Task : 11', 'http://masiratna.leadconcept.info/edit_task?edit_id=11', 'GET', '156.146.59.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 9, '2022-02-22 20:31:07', '2022-02-22 20:31:07'),
(3289, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '156.146.59.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 7, '2022-02-22 20:31:48', '2022-02-22 20:31:48'),
(3290, 'Save Task', 'http://masiratna.leadconcept.info/save_task', 'POST', '156.146.59.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 7, '2022-02-22 20:32:21', '2022-02-22 20:32:21'),
(3291, 'Update That Task: 12', 'http://masiratna.leadconcept.info/update_task_status', 'POST', '156.146.59.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 7, '2022-02-22 20:32:28', '2022-02-22 20:32:28'),
(3292, 'Update That Task: 12', 'http://masiratna.leadconcept.info/update_task_status', 'POST', '156.146.59.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 7, '2022-02-22 20:32:31', '2022-02-22 20:32:31'),
(3293, 'Update That Task: 12', 'http://masiratna.leadconcept.info/update_task_status', 'POST', '156.146.59.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 7, '2022-02-22 20:32:35', '2022-02-22 20:32:35'),
(3294, 'Add Visa Form of student48', 'http://masiratna.leadconcept.info/visa', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 12, '2022-02-22 23:09:35', '2022-02-22 23:09:35'),
(3295, 'create permission, name:filter_management_table', 'http://masiratna.leadconcept.info/permissions/store', 'POST', '156.146.59.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-23 18:16:08', '2022-02-23 18:16:08'),
(3296, 'update user role, name: Management', 'http://masiratna.leadconcept.info/roles/update/1', 'POST', '156.146.59.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-23 18:16:39', '2022-02-23 18:16:39'),
(3297, 'update student information tab, name:Usman Ahmad Shaikh Usman Ahmad Shaikh', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 7, '2022-02-23 18:36:52', '2022-02-23 18:36:52'),
(3298, 'update student contact detail, name:Usman Ahmad Shaikh Usman Ahmad Shaikh', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 7, '2022-02-23 18:36:57', '2022-02-23 18:36:57'),
(3299, 'add student other information, name:Usman Ahmad Shaikh Usman Ahmad Shaikh', 'http://masiratna.leadconcept.info/studentotherinformation', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 7, '2022-02-23 18:37:02', '2022-02-23 18:37:02'),
(3300, 'add appliction of a student, name:79', 'http://masiratna.leadconcept.info/users/save_application', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-02-23 19:08:49', '2022-02-23 19:08:49'),
(3301, 'Update the application status', 'http://masiratna.leadconcept.info/users/application_status', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-02-23 19:51:37', '2022-02-23 19:51:37'),
(3302, 'create permission, name:submitted_more_information_information_provided', 'http://masiratna.leadconcept.info/permissions/store', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-02-23 21:04:15', '2022-02-23 21:04:15'),
(3303, 'update user role, name: Counsellor', 'http://masiratna.leadconcept.info/roles/update/2', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-02-23 21:05:12', '2022-02-23 21:05:12'),
(3304, 'update user role, name: Visa', 'http://masiratna.leadconcept.info/roles/update/4', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-02-23 21:05:25', '2022-02-23 21:05:25'),
(3305, 'update student information tab, name:Nicholson Bond', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-02-23 23:34:02', '2022-02-23 23:34:02'),
(3306, 'update student contact detail, name:Nicholson Bond', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-02-23 23:34:11', '2022-02-23 23:34:11'),
(3307, 'add student other information, name:Nicholson Bond', 'http://masiratna.leadconcept.info/studentotherinformation', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-02-23 23:34:27', '2022-02-23 23:34:27'),
(3308, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '156.146.59.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 12, '2022-02-24 19:12:59', '2022-02-24 19:12:59'),
(3309, 'type of resource is update of:Office', 'http://masiratna.leadconcept.info/update_dropdown_type', 'POST', '156.146.59.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 12, '2022-02-24 19:13:17', '2022-02-24 19:13:17'),
(3310, 'type of resource is update of:Office 1', 'http://masiratna.leadconcept.info/update_dropdown_type', 'POST', '156.146.59.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 12, '2022-02-24 19:13:25', '2022-02-24 19:13:25'),
(3311, 'Add type of Resource:Office 4', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '156.146.59.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 12, '2022-02-24 19:13:32', '2022-02-24 19:13:32'),
(3312, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=1&name=Office%204&proengsoft_jsvalidation=', 'GET', '156.146.59.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 12, '2022-02-24 19:13:33', '2022-02-24 19:13:33'),
(3313, 'Add University which is name:https://www.mukixaxevow.cc', 'http://masiratna.leadconcept.info/guidelines/universities', 'POST', '156.146.59.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-24 23:23:13', '2022-02-24 23:23:13'),
(3314, 'Save Accomodation', 'http://masiratna.leadconcept.info/accommodation', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-02-25 18:59:35', '2022-02-25 18:59:35'),
(3315, 'Accomodation Edit9', 'http://masiratna.leadconcept.info/edit_accommodation/9', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-02-25 18:59:54', '2022-02-25 18:59:54'),
(3316, 'Update Accomodation9', 'http://masiratna.leadconcept.info/update_accommodation', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-02-25 19:00:04', '2022-02-25 19:00:04'),
(3317, 'update student information tab, name:Roach Sweeney', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-25 23:11:47', '2022-02-25 23:11:47'),
(3318, 'update student contact detail, name:Roach Sweeney', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-25 23:11:55', '2022-02-25 23:11:55'),
(3319, 'update student contact detail, name:Roach Sweeney', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-25 23:12:05', '2022-02-25 23:12:05'),
(3320, 'add student other information, name:Roach Sweeney', 'http://masiratna.leadconcept.info/studentotherinformation', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-25 23:12:11', '2022-02-25 23:12:11'),
(3321, 'edit student screen, student:Roach Sweeney', 'http://masiratna.leadconcept.info/student/81/edit', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-25 23:13:29', '2022-02-25 23:13:29'),
(3322, 'add appliction of a student, name:81', 'http://masiratna.leadconcept.info/users/save_application', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-25 23:14:40', '2022-02-25 23:14:40'),
(3323, 'add appliction of a student, name:81', 'http://masiratna.leadconcept.info/users/save_application', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-25 23:15:26', '2022-02-25 23:15:26'),
(3324, 'Update the application status', 'http://masiratna.leadconcept.info/users/application_status', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-25 23:15:55', '2022-02-25 23:15:55'),
(3325, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-25 23:17:39', '2022-02-25 23:17:39'),
(3326, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-25 23:17:46', '2022-02-25 23:17:46'),
(3327, 'type of resource is update of:Study Destination 1', 'http://masiratna.leadconcept.info/update_dropdown_type', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-25 23:18:06', '2022-02-25 23:18:06'),
(3328, 'type of resource is update of:Study Destination 2', 'http://masiratna.leadconcept.info/update_dropdown_type', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-25 23:18:07', '2022-02-25 23:18:07'),
(3329, 'type of resource is update of:Study Destination 3', 'http://masiratna.leadconcept.info/update_dropdown_type', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-25 23:18:14', '2022-02-25 23:18:14'),
(3330, 'Save Course', 'http://masiratna.leadconcept.info/save_courses', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-25 23:18:49', '2022-02-25 23:18:49'),
(3331, 'create role, name:TestingDemo', 'http://masiratna.leadconcept.info/roles/store', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-25 23:20:11', '2022-02-25 23:20:11'),
(3332, 'create permission, name:show home', 'http://masiratna.leadconcept.info/permissions/store', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-25 23:20:35', '2022-02-25 23:20:35'),
(3333, 'update user role, name: TestingDemo', 'http://masiratna.leadconcept.info/roles/update/8', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-25 23:20:56', '2022-02-25 23:20:56'),
(3334, 'edit user name:Counsellor', 'http://masiratna.leadconcept.info/users/edit/2', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 1, '2022-02-25 23:57:26', '2022-02-25 23:57:26'),
(3335, 'Add login Detail name:Masiratna Admin', 'http://masiratna.leadconcept.info/login_details', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-03-09 17:41:41', '2022-03-09 17:41:41'),
(3336, 'delete login details of user:Counsellor', 'http://masiratna.leadconcept.info/delete_login_detail/1', 'DELETE', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-03-09 17:42:10', '2022-03-09 17:42:10'),
(3337, 'delete login details of user:Admission', 'http://masiratna.leadconcept.info/delete_login_detail/2', 'DELETE', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-03-09 17:42:14', '2022-03-09 17:42:14'),
(3338, 'delete login details of user:Admission', 'http://masiratna.leadconcept.info/delete_login_detail/3', 'DELETE', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-03-09 17:42:17', '2022-03-09 17:42:17'),
(3339, 'delete login details of user:Admission', 'http://masiratna.leadconcept.info/delete_login_detail/4', 'DELETE', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-03-09 17:42:25', '2022-03-09 17:42:25'),
(3340, 'delete login details of user:Admission', 'http://masiratna.leadconcept.info/delete_login_detail/5', 'DELETE', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-03-09 17:42:30', '2022-03-09 17:42:30'),
(3341, 'delete login details of user:Admission', 'http://masiratna.leadconcept.info/delete_login_detail/6', 'DELETE', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-03-09 17:42:37', '2022-03-09 17:42:37'),
(3342, 'delete login details of user:Admission', 'http://masiratna.leadconcept.info/delete_login_detail/7', 'DELETE', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-03-09 17:42:43', '2022-03-09 17:42:43'),
(3343, 'delete login details of user:Admission', 'http://masiratna.leadconcept.info/delete_login_detail/8', 'DELETE', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-03-09 17:42:50', '2022-03-09 17:42:50'),
(3344, 'delete login details of user:Admission', 'http://masiratna.leadconcept.info/delete_login_detail/9', 'DELETE', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-03-09 17:42:54', '2022-03-09 17:42:54'),
(3345, 'Update login Detail name:Admin', 'http://masiratna.leadconcept.info/update_login_details/10', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-03-09 17:47:46', '2022-03-09 17:47:46'),
(3346, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-03-09 18:11:53', '2022-03-09 18:11:53'),
(3347, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-03-09 18:14:23', '2022-03-09 18:14:23'),
(3348, 'Update Resource Record:Office', 'http://masiratna.leadconcept.info/update_dropdown/1', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-03-09 18:14:29', '2022-03-09 18:14:29'),
(3349, 'Update Resource Record:Office', 'http://masiratna.leadconcept.info/update_dropdown/1', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-03-09 18:14:39', '2022-03-09 18:14:39'),
(3350, 'Update Resource Record:Office', 'http://masiratna.leadconcept.info/update_dropdown/1', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-03-09 18:14:43', '2022-03-09 18:14:43'),
(3351, 'Update Resource Record:Type of Funding 1', 'http://masiratna.leadconcept.info/update_dropdown/2', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-03-09 18:14:47', '2022-03-09 18:14:47'),
(3352, 'Update Resource Record:Type of Funding', 'http://masiratna.leadconcept.info/update_dropdown/2', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-03-09 18:14:55', '2022-03-09 18:14:55'),
(3353, 'delete user profile picture from hosting, user:Masiratna Admin', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-03-09 18:21:07', '2022-03-09 18:21:07'),
(3354, 'add profile picture, user:Masiratna Admin', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-03-09 18:21:07', '2022-03-09 18:21:07'),
(3355, 'update user profile, user:Masiratna Admin', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-03-09 18:21:07', '2022-03-09 18:21:07'),
(3356, 'update user profile, user:Masiratna Admin', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 1, '2022-03-09 18:21:07', '2022-03-09 18:21:07'),
(3357, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '156.146.59.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-10 16:42:05', '2022-03-10 16:42:05'),
(3358, 'edit student screen, student:Roach Sweeney', 'http://masiratna.leadconcept.info/student/81/edit', 'GET', '188.54.253.125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 9, '2022-03-13 13:14:43', '2022-03-13 13:14:43'),
(3359, 'Update the application status', 'http://masiratna.leadconcept.info/users/application_status', 'POST', '188.54.253.125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 9, '2022-03-13 13:15:03', '2022-03-13 13:15:03'),
(3360, 'Update the application status', 'http://masiratna.leadconcept.info/users/application_status', 'POST', '188.54.253.125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 9, '2022-03-13 13:16:50', '2022-03-13 13:16:50'),
(3361, 'Add Rejected Reason for Applicatioin id is: 24', 'http://masiratna.leadconcept.info/users/rejected_reason/24', 'POST', '188.54.253.125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 9, '2022-03-13 13:16:54', '2022-03-13 13:16:54'),
(3362, 'Update the application status', 'http://masiratna.leadconcept.info/users/application_status', 'POST', '188.54.253.125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 9, '2022-03-13 13:16:58', '2022-03-13 13:16:58'),
(3363, 'Add Rejected Reason for Applicatioin id is: 25', 'http://masiratna.leadconcept.info/users/rejected_reason/25', 'POST', '188.54.253.125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 9, '2022-03-13 13:17:01', '2022-03-13 13:17:01'),
(3364, 'Add Visa Form of studentali hmad', 'http://masiratna.leadconcept.info/visa', 'POST', '188.54.253.125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 7, '2022-03-13 13:18:17', '2022-03-13 13:18:17'),
(3365, 'create role, name:kutiba Nusairat', 'http://masiratna.leadconcept.info/roles/store', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:08:16', '2022-03-17 13:08:16'),
(3366, 'create new user name:FrancisLopez', 'http://masiratna.leadconcept.info/users/store', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:15:23', '2022-03-17 13:15:23'),
(3367, 'edit user name:FrancisLopez', 'http://masiratna.leadconcept.info/users/edit/14', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:15:43', '2022-03-17 13:15:43'),
(3368, 'update user name:FrancisLopez', 'http://masiratna.leadconcept.info/users/update/14', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:15:46', '2022-03-17 13:15:46'),
(3369, 'create new user name:RaulOchavillo', 'http://masiratna.leadconcept.info/users/store', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:22:50', '2022-03-17 13:22:50'),
(3370, 'user is deleted, name:Harlan', 'http://masiratna.leadconcept.info/delete/6', 'DELETE', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:33:20', '2022-03-17 13:33:20'),
(3371, 'create new user name:MomenSamara', 'http://masiratna.leadconcept.info/users/store', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:34:35', '2022-03-17 13:34:35'),
(3372, 'edit user name:Masiratna Admin', 'http://masiratna.leadconcept.info/users/edit/1', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:36:44', '2022-03-17 13:36:44'),
(3373, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:37:19', '2022-03-17 13:37:19'),
(3374, 'Add type of Resource:Australia', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:37:36', '2022-03-17 13:37:36'),
(3375, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=6&name=Australia&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:37:36', '2022-03-17 13:37:36'),
(3376, 'type of resource deleted name:Study Destination 2', 'http://masiratna.leadconcept.info/delete_dropdowntype?dropdowns_id=6&id=35', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:37:38', '2022-03-17 13:37:38'),
(3377, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=6&name=U&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:37:44', '2022-03-17 13:37:44'),
(3378, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=6&name=USA&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:37:44', '2022-03-17 13:37:44'),
(3379, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=6&name=US&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:37:45', '2022-03-17 13:37:45'),
(3380, 'Add type of Resource:USA', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:37:45', '2022-03-17 13:37:45'),
(3381, 'type of resource deleted name:Study Destination 3', 'http://masiratna.leadconcept.info/delete_dropdowntype?dropdowns_id=6&id=36', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:37:46', '2022-03-17 13:37:46'),
(3382, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=6&name=U&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:37:50', '2022-03-17 13:37:50'),
(3383, 'Add type of Resource:UK', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:37:51', '2022-03-17 13:37:51'),
(3384, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=6&name=UK&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:37:51', '2022-03-17 13:37:51'),
(3385, 'type of resource deleted name:Australia', 'http://masiratna.leadconcept.info/delete_dropdowntype?dropdowns_id=6&id=37', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:37:52', '2022-03-17 13:37:52'),
(3386, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=1&name=Ri&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:38:02', '2022-03-17 13:38:02'),
(3387, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=1&name=Riyadh&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:38:02', '2022-03-17 13:38:02'),
(3388, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=1&name=Riya&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:38:03', '2022-03-17 13:38:03'),
(3389, 'type of resource deleted name:Office 1', 'http://masiratna.leadconcept.info/delete_dropdowntype?dropdowns_id=1&id=75', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:39:04', '2022-03-17 13:39:04'),
(3390, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=8&name=%D8%8C&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:39:37', '2022-03-17 13:39:37'),
(3391, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=8&name=%D8%8C%D8%B9%D9%81%D9%87&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:39:37', '2022-03-17 13:39:37'),
(3392, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=8&name=%D8%8C%D8%B9%D9%81%D9%87%D9%84%D8%A7%D8%B4&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:39:39', '2022-03-17 13:39:39'),
(3393, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=8&name=K&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:39:40', '2022-03-17 13:39:40'),
(3394, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=8&name=Kuti&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:39:40', '2022-03-17 13:39:40'),
(3395, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=8&name=Kutib&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:39:40', '2022-03-17 13:39:40'),
(3396, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=8&name=Kutiba&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:39:41', '2022-03-17 13:39:41'),
(3397, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=8&name=Ku&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:39:41', '2022-03-17 13:39:41'),
(3398, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=8&name=Kutiba%20Nussirat&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:39:42', '2022-03-17 13:39:42'),
(3399, 'Add type of Resource:Kutiba Nussirat', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:39:43', '2022-03-17 13:39:43'),
(3400, 'type of resource deleted name:Case Officer 2', 'http://masiratna.leadconcept.info/delete_dropdowntype?dropdowns_id=8&id=41', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:39:46', '2022-03-17 13:39:46'),
(3401, 'type of resource deleted name:Case Officer 3', 'http://masiratna.leadconcept.info/delete_dropdowntype?dropdowns_id=8&id=42', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:39:48', '2022-03-17 13:39:48'),
(3402, 'type of resource deleted name:Kutiba Nussirat', 'http://masiratna.leadconcept.info/delete_dropdowntype?dropdowns_id=8&id=43', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:39:49', '2022-03-17 13:39:49'),
(3403, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=8&name=M&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:39:51', '2022-03-17 13:39:51'),
(3404, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=8&name=Mom&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:39:51', '2022-03-17 13:39:51'),
(3405, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=8&name=Momen&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:39:52', '2022-03-17 13:39:52'),
(3406, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=8&name=Mo&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:39:52', '2022-03-17 13:39:52'),
(3407, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=8&name=Mome&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:39:53', '2022-03-17 13:39:53'),
(3408, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=8&name=Momen&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:39:53', '2022-03-17 13:39:53'),
(3409, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=8&name=Momen%20&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:39:53', '2022-03-17 13:39:53'),
(3410, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=8&name=MomenSamara&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:39:55', '2022-03-17 13:39:55'),
(3411, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=8&name=Momen%20Samara&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:39:55', '2022-03-17 13:39:55'),
(3412, 'Add type of Resource:Momen Samara', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:39:56', '2022-03-17 13:39:56'),
(3413, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=8&name=An&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:39:59', '2022-03-17 13:39:59'),
(3414, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=8&name=Angha&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:40:00', '2022-03-17 13:40:00'),
(3415, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=8&name=Angham&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:40:00', '2022-03-17 13:40:00'),
(3416, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=8&name=Angh&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:40:00', '2022-03-17 13:40:00'),
(3417, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=8&name=Angham%20&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:40:02', '2022-03-17 13:40:02'),
(3418, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=8&name=Angham%20Burghina&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:40:08', '2022-03-17 13:40:08'),
(3419, 'Add type of Resource:Angham Burghina', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:40:09', '2022-03-17 13:40:09'),
(3420, 'Add type of Resource:Valantina kharboosh', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:40:31', '2022-03-17 13:40:31'),
(3421, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=8&name=Valantina%20kharboosh%20&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:40:32', '2022-03-17 13:40:32'),
(3422, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=9&name=S&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:40:44', '2022-03-17 13:40:44'),
(3423, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=9&name=Stu&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:40:45', '2022-03-17 13:40:45'),
(3424, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=9&name=Stude&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:40:46', '2022-03-17 13:40:46'),
(3425, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=9&name=Studet&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:40:46', '2022-03-17 13:40:46'),
(3426, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=9&name=Stud&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:40:46', '2022-03-17 13:40:46'),
(3427, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=9&name=Studetn%20&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:40:46', '2022-03-17 13:40:46'),
(3428, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=9&name=Studetn&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:40:47', '2022-03-17 13:40:47'),
(3429, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=9&name=Studetn%20Visa&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:40:47', '2022-03-17 13:40:47'),
(3430, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=9&name=Studetn%20&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:40:49', '2022-03-17 13:40:49'),
(3431, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=9&name=Student%20500&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:40:53', '2022-03-17 13:40:53'),
(3432, 'Add type of Resource:Student 500', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:40:53', '2022-03-17 13:40:53'),
(3433, 'type of resource deleted name:Visa Type 2', 'http://masiratna.leadconcept.info/delete_dropdowntype?dropdowns_id=9&id=44', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:40:55', '2022-03-17 13:40:55'),
(3434, 'type of resource deleted name:Visa Type 3', 'http://masiratna.leadconcept.info/delete_dropdowntype?dropdowns_id=9&id=45', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:40:56', '2022-03-17 13:40:56'),
(3435, 'type of resource deleted name:Student 500', 'http://masiratna.leadconcept.info/delete_dropdowntype?dropdowns_id=9&id=46', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:40:56', '2022-03-17 13:40:56'),
(3436, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=9&name=V&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:02', '2022-03-17 13:41:02'),
(3437, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=9&name=Vi&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:02', '2022-03-17 13:41:02'),
(3438, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=9&name=Vis&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:02', '2022-03-17 13:41:02');
INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip`, `agent`, `user_id`, `created_at`, `updated_at`) VALUES
(3439, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=9&name=Visi&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:02', '2022-03-17 13:41:02'),
(3440, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=9&name=Visit&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:03', '2022-03-17 13:41:03'),
(3441, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=9&name=Visito&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:03', '2022-03-17 13:41:03'),
(3442, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=9&name=Visitor&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:03', '2022-03-17 13:41:03'),
(3443, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=9&name=Visitor%20&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:03', '2022-03-17 13:41:03'),
(3444, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=9&name=Visitor%206&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:04', '2022-03-17 13:41:04'),
(3445, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=9&name=Visitor%2060&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:05', '2022-03-17 13:41:05'),
(3446, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=9&name=Visitor%20600&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:05', '2022-03-17 13:41:05'),
(3447, 'Add type of Resource:Visitor 600', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:06', '2022-03-17 13:41:06'),
(3448, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=L&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:12', '2022-03-17 13:41:12'),
(3449, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=La&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:13', '2022-03-17 13:41:13'),
(3450, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=La%20&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:13', '2022-03-17 13:41:13'),
(3451, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=La%20T&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:13', '2022-03-17 13:41:13'),
(3452, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=La%20Tro&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:14', '2022-03-17 13:41:14'),
(3453, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=La%20Trob&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:14', '2022-03-17 13:41:14'),
(3454, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=La%20Trobe&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:14', '2022-03-17 13:41:14'),
(3455, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=La%20Trobe%20&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:15', '2022-03-17 13:41:15'),
(3456, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=La%20Trobe%20U&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:16', '2022-03-17 13:41:16'),
(3457, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=La%20Trobe%20Un&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:16', '2022-03-17 13:41:16'),
(3458, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=La%20Trobe%20Uni&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:16', '2022-03-17 13:41:16'),
(3459, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=La%20Trobe%20Univer&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:16', '2022-03-17 13:41:16'),
(3460, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=La%20Trobe%20Universi&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:17', '2022-03-17 13:41:17'),
(3461, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=La%20Trobe%20University&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:17', '2022-03-17 13:41:17'),
(3462, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=La%20Trobe%20Univ&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:17', '2022-03-17 13:41:17'),
(3463, 'Add type of Resource:La Trobe University', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:18', '2022-03-17 13:41:18'),
(3464, 'type of resource deleted name:Institution Name 2', 'http://masiratna.leadconcept.info/delete_dropdowntype?dropdowns_id=7&id=38', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:20', '2022-03-17 13:41:20'),
(3465, 'type of resource deleted name:Institution Name 3', 'http://masiratna.leadconcept.info/delete_dropdowntype?dropdowns_id=7&id=39', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:20', '2022-03-17 13:41:20'),
(3466, 'type of resource deleted name:La Trobe University', 'http://masiratna.leadconcept.info/delete_dropdowntype?dropdowns_id=7&id=40', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:21', '2022-03-17 13:41:21'),
(3467, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=12-%09University%20of%20Melbourne&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:47', '2022-03-17 13:41:47'),
(3468, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=University%20of%20Melbourne&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:48', '2022-03-17 13:41:48'),
(3469, 'Add type of Resource:University of Melbourne', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:49', '2022-03-17 13:41:49'),
(3470, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=Hawthorn&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:54', '2022-03-17 13:41:54'),
(3471, 'Add type of Resource:Hawthorn', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:41:54', '2022-03-17 13:41:54'),
(3472, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=Monash%20University&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:42:03', '2022-03-17 13:42:03'),
(3473, 'Add type of Resource:Monash University', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:42:04', '2022-03-17 13:42:04'),
(3474, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=Monash%20College&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:42:09', '2022-03-17 13:42:09'),
(3475, 'Add type of Resource:Monash College', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:42:10', '2022-03-17 13:42:10'),
(3476, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=La%20Trobe%20University&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:42:26', '2022-03-17 13:42:26'),
(3477, 'type of resource deleted name:University of Melbourne', 'http://masiratna.leadconcept.info/delete_dropdowntype?dropdowns_id=7&id=85', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:42:28', '2022-03-17 13:42:28'),
(3478, 'Add type of Resource:La Trobe University', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:42:29', '2022-03-17 13:42:29'),
(3479, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=Latrobe%20Melbourne&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:42:33', '2022-03-17 13:42:33'),
(3480, 'Add type of Resource:Latrobe Melbourne', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:42:34', '2022-03-17 13:42:34'),
(3481, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=RMIT%20University&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:42:39', '2022-03-17 13:42:39'),
(3482, 'Add type of Resource:RMIT University', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:42:39', '2022-03-17 13:42:39'),
(3483, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=REW&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:42:45', '2022-03-17 13:42:45'),
(3484, 'Add type of Resource:REW', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:42:46', '2022-03-17 13:42:46'),
(3485, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=Federation%20University&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:42:52', '2022-03-17 13:42:52'),
(3486, 'Add type of Resource:Federation University', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:42:53', '2022-03-17 13:42:53'),
(3487, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=Deakin%20University&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:42:59', '2022-03-17 13:42:59'),
(3488, 'Add type of Resource:Deakin University', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:42:59', '2022-03-17 13:42:59'),
(3489, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=Deakin%20College&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:43:07', '2022-03-17 13:43:07'),
(3490, 'Add type of Resource:Deakin College', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:43:08', '2022-03-17 13:43:08'),
(3491, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=DUELI&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:43:21', '2022-03-17 13:43:21'),
(3492, 'Add type of Resource:DUELI', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:43:21', '2022-03-17 13:43:21'),
(3493, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=Victoria%20University&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:43:26', '2022-03-17 13:43:26'),
(3494, 'Add type of Resource:Victoria University', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:43:26', '2022-03-17 13:43:26'),
(3495, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=VU%20English&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:43:30', '2022-03-17 13:43:30'),
(3496, 'Add type of Resource:VU English', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:43:31', '2022-03-17 13:43:31'),
(3497, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=Swinburne%20University&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:43:35', '2022-03-17 13:43:35'),
(3498, 'Add type of Resource:Swinburne University', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:43:35', '2022-03-17 13:43:35'),
(3499, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=Flinders%20University&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:43:45', '2022-03-17 13:43:45'),
(3500, 'Add type of Resource:Flinders University', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:43:45', '2022-03-17 13:43:45'),
(3501, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=Adelaide%20University&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:43:55', '2022-03-17 13:43:55'),
(3502, 'Add type of Resource:Adelaide University', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:43:56', '2022-03-17 13:43:56'),
(3503, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=The%20University%20of%20Adelaide%20College&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:44:09', '2022-03-17 13:44:09'),
(3504, 'Add type of Resource:The University of Adelaide College', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:44:09', '2022-03-17 13:44:09'),
(3505, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=Equals%20International&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:44:16', '2022-03-17 13:44:16'),
(3506, 'Add type of Resource:Equals International', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:44:16', '2022-03-17 13:44:16'),
(3507, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=TafeSA&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:44:20', '2022-03-17 13:44:20'),
(3508, 'Add type of Resource:TafeSA', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:44:20', '2022-03-17 13:44:20'),
(3509, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=Eynesbury&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:44:25', '2022-03-17 13:44:25'),
(3510, 'Add type of Resource:Eynesbury', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:44:25', '2022-03-17 13:44:25'),
(3511, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=7&name=University%20of%20South%20Australia&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:44:33', '2022-03-17 13:44:33'),
(3512, 'Add type of Resource:University of South Australia', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:44:34', '2022-03-17 13:44:34'),
(3513, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=4&name=9-%09Word%20of%20Mouth%20&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:45:36', '2022-03-17 13:45:36'),
(3514, 'Add type of Resource:9-	Word of Mouth', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:45:36', '2022-03-17 13:45:36'),
(3515, 'Add type of Resource:Twitter', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:45:49', '2022-03-17 13:45:49'),
(3516, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=4&name=Twitter%20&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:45:49', '2022-03-17 13:45:49'),
(3517, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=4&name=Facebook%20&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:45:53', '2022-03-17 13:45:53'),
(3518, 'Add type of Resource:Facebook', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:45:53', '2022-03-17 13:45:53'),
(3519, 'Add type of Resource:Instagram', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:45:55', '2022-03-17 13:45:55'),
(3520, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=4&name=Instagram%20&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:45:56', '2022-03-17 13:45:56'),
(3521, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=4&name=Google%20Add&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:46:00', '2022-03-17 13:46:00'),
(3522, 'Add type of Resource:Google Add', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:46:01', '2022-03-17 13:46:01'),
(3523, 'Add type of Resource:Adds', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:46:15', '2022-03-17 13:46:15'),
(3524, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=4&name=Adds&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:46:15', '2022-03-17 13:46:15'),
(3525, 'Add type of Resource:8-	MOHE', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:46:29', '2022-03-17 13:46:29'),
(3526, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=3&name=8-%09MOHE&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:46:29', '2022-03-17 13:46:29'),
(3527, 'type of resource deleted name:Sponsor 1', 'http://masiratna.leadconcept.info/delete_dropdowntype?dropdowns_id=3&id=114', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:46:32', '2022-03-17 13:46:32'),
(3528, 'Add type of Resource:MOHE', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:46:39', '2022-03-17 13:46:39'),
(3529, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=3&name=MOHE&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:46:40', '2022-03-17 13:46:40'),
(3530, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=3&name=Ministry%20of%20Defiance%20&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:46:44', '2022-03-17 13:46:44'),
(3531, 'Add type of Resource:Ministry of Defiance', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:46:45', '2022-03-17 13:46:45'),
(3532, 'Add type of Resource:Ministry of Health', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:46:49', '2022-03-17 13:46:49'),
(3533, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=3&name=Ministry%20of%20Health%20&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:46:50', '2022-03-17 13:46:50'),
(3534, 'Add type of Resource:Ministry of Interior', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:46:54', '2022-03-17 13:46:54'),
(3535, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=3&name=Ministry%20of%20Interior%20&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:46:55', '2022-03-17 13:46:55'),
(3536, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=3&name=Ministry%20of%20Finance&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:46:58', '2022-03-17 13:46:58'),
(3537, 'Add type of Resource:Ministry of Finance', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:46:59', '2022-03-17 13:46:59'),
(3538, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=2&name=Sp&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:47:16', '2022-03-17 13:47:16'),
(3539, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=2&name=Sponso&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:47:16', '2022-03-17 13:47:16'),
(3540, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=2&name=Spon&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:47:17', '2022-03-17 13:47:17'),
(3541, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=2&name=Spo&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:47:18', '2022-03-17 13:47:18'),
(3542, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=2&name=Sponsored&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:47:18', '2022-03-17 13:47:18'),
(3543, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=2&name=Sponsor&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:47:18', '2022-03-17 13:47:18'),
(3544, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=2&name=Sponsore&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:47:18', '2022-03-17 13:47:18'),
(3545, 'Add type of Resource:Sponsored', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:47:19', '2022-03-17 13:47:19'),
(3546, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=2&name=S&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:47:23', '2022-03-17 13:47:23'),
(3547, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=2&name=Se&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:47:23', '2022-03-17 13:47:23'),
(3548, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=2&name=Sel&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:47:24', '2022-03-17 13:47:24'),
(3549, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=2&name=Self&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:47:24', '2022-03-17 13:47:24'),
(3550, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=2&name=Self-&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:47:25', '2022-03-17 13:47:25'),
(3551, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=2&name=Self-F&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:47:26', '2022-03-17 13:47:26'),
(3552, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=2&name=Self-Fu&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:47:26', '2022-03-17 13:47:26'),
(3553, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=2&name=Self-Fun&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:47:27', '2022-03-17 13:47:27'),
(3554, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=2&name=Self-Fund&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:47:27', '2022-03-17 13:47:27'),
(3555, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=2&name=Self-Funde&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:47:27', '2022-03-17 13:47:27'),
(3556, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=2&name=Self-Funded&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:47:27', '2022-03-17 13:47:27'),
(3557, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=2&name=Self-Funded%20&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:47:27', '2022-03-17 13:47:27'),
(3558, 'Add type of Resource:Self-Funded', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:47:29', '2022-03-17 13:47:29'),
(3559, 'edit student screen, student:Roach Sweeney', 'http://masiratna.leadconcept.info/student/81/edit', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:48:21', '2022-03-17 13:48:21'),
(3560, 'Delete Application: 24', 'http://masiratna.leadconcept.info/users/delete_application/24', 'DELETE', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:48:31', '2022-03-17 13:48:31'),
(3561, 'Delete Application: 25', 'http://masiratna.leadconcept.info/users/delete_application/25', 'DELETE', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:48:35', '2022-03-17 13:48:35'),
(3562, 'Delete Course: 15', 'http://masiratna.leadconcept.info/delete_course/15', 'DELETE', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:49:13', '2022-03-17 13:49:13'),
(3563, 'Delete Application: 23', 'http://masiratna.leadconcept.info/users/delete_application/23', 'DELETE', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:49:37', '2022-03-17 13:49:37'),
(3564, 'Delete Accomodation: 9', 'http://masiratna.leadconcept.info/delete_accommodation/9', 'DELETE', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:50:35', '2022-03-17 13:50:35'),
(3565, 'Delete Application: 19', 'http://masiratna.leadconcept.info/users/delete_application/19', 'DELETE', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 13:51:16', '2022-03-17 13:51:16'),
(3566, 'create new user name:KutibaNussirat', 'http://masiratna.leadconcept.info/users/store', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 14:10:22', '2022-03-17 14:10:22'),
(3567, 'update user profile, user:KutibaNussirat', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-17 14:10:48', '2022-03-17 14:10:48'),
(3568, 'update user profile, user:KutibaNussirat', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-17 14:10:48', '2022-03-17 14:10:48'),
(3569, 'delete user profile picture from hosting, user:KutibaNussirat', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-17 14:12:56', '2022-03-17 14:12:56'),
(3570, 'add profile picture, user:KutibaNussirat', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-17 14:12:57', '2022-03-17 14:12:57'),
(3571, 'update user profile, user:KutibaNussirat', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-17 14:12:57', '2022-03-17 14:12:57'),
(3572, 'update user profile, user:KutibaNussirat', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-17 14:12:57', '2022-03-17 14:12:57'),
(3573, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-17 14:14:23', '2022-03-17 14:14:23'),
(3574, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-17 14:14:54', '2022-03-17 14:14:54'),
(3575, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 14:20:13', '2022-03-17 14:20:13'),
(3576, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=1&name=Riyadh&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 14:21:07', '2022-03-17 14:21:07'),
(3577, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=1&name=M&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 14:21:41', '2022-03-17 14:21:41'),
(3578, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=1&name=Melb&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 14:21:41', '2022-03-17 14:21:41'),
(3579, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=1&name=Mel&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 14:21:42', '2022-03-17 14:21:42'),
(3580, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=1&name=Melbourne%20&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 14:21:42', '2022-03-17 14:21:42'),
(3581, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=1&name=Melbo&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 14:21:42', '2022-03-17 14:21:42');
INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip`, `agent`, `user_id`, `created_at`, `updated_at`) VALUES
(3582, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=1&name=Melbou&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 14:21:42', '2022-03-17 14:21:42'),
(3583, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=1&name=Melbourne&proengsoft_jsvalidation=', 'GET', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 14:21:43', '2022-03-17 14:21:43'),
(3584, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '156.146.59.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 18:39:18', '2022-03-17 18:39:18'),
(3585, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '156.146.59.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 18:43:25', '2022-03-17 18:43:25'),
(3586, 'Add type of Resource:Office 4', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '156.146.59.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 18:43:33', '2022-03-17 18:43:33'),
(3587, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=1&name=Office%204&proengsoft_jsvalidation=', 'GET', '156.146.59.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 18:43:33', '2022-03-17 18:43:33'),
(3588, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=1&name=R&proengsoft_jsvalidation=', 'GET', '156.146.59.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 18:43:35', '2022-03-17 18:43:35'),
(3589, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=1&name=Ri&proengsoft_jsvalidation=', 'GET', '156.146.59.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 18:43:35', '2022-03-17 18:43:35'),
(3590, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=1&name=Riy&proengsoft_jsvalidation=', 'GET', '156.146.59.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 18:43:36', '2022-03-17 18:43:36'),
(3591, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=1&name=Riya&proengsoft_jsvalidation=', 'GET', '156.146.59.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 18:43:36', '2022-03-17 18:43:36'),
(3592, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=1&name=Riyadh&proengsoft_jsvalidation=', 'GET', '156.146.59.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 18:43:37', '2022-03-17 18:43:37'),
(3593, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 1, '2022-03-17 22:13:31', '2022-03-17 22:13:31'),
(3594, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 1, '2022-03-17 22:14:00', '2022-03-17 22:14:00'),
(3595, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 1, '2022-03-17 22:14:09', '2022-03-17 22:14:09'),
(3596, 'type of resource deleted name:Kutiba Nussirat', 'http://masiratna.leadconcept.info/delete_dropdowntype?dropdowns_id=8&id=82', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 1, '2022-03-17 22:14:26', '2022-03-17 22:14:26'),
(3597, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 1, '2022-03-17 22:14:58', '2022-03-17 22:14:58'),
(3598, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '156.146.59.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-17 22:15:12', '2022-03-17 22:15:12'),
(3599, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 1, '2022-03-17 22:18:53', '2022-03-17 22:18:53'),
(3600, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 1, '2022-03-17 22:20:50', '2022-03-17 22:20:50'),
(3601, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 1, '2022-03-17 22:21:43', '2022-03-17 22:21:43'),
(3602, 'type of resource deleted name:Student 500', 'http://masiratna.leadconcept.info/delete_dropdowntype?dropdowns_id=9&id=84', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 1, '2022-03-17 22:22:52', '2022-03-17 22:22:52'),
(3603, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=9&name=Student%205001&proengsoft_jsvalidation=', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 1, '2022-03-17 22:23:26', '2022-03-17 22:23:26'),
(3604, 'Add type of Resource:Student 5001', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 1, '2022-03-17 22:23:27', '2022-03-17 22:23:27'),
(3605, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 1, '2022-03-17 22:25:07', '2022-03-17 22:25:07'),
(3606, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 1, '2022-03-17 22:26:03', '2022-03-17 22:26:03'),
(3607, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 1, '2022-03-17 22:27:06', '2022-03-17 22:27:06'),
(3608, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 1, '2022-03-17 22:31:00', '2022-03-17 22:31:00'),
(3609, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 1, '2022-03-17 22:34:57', '2022-03-17 22:34:57'),
(3610, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 1, '2022-03-17 22:35:28', '2022-03-17 22:35:28'),
(3611, 'update student information tab, name:MAHRUQI KHALID AYMAN A', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 14, '2022-03-18 12:05:39', '2022-03-18 12:05:39'),
(3612, 'update student contact detail, name:MAHRUQI KHALID AYMAN A', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 14, '2022-03-18 12:06:08', '2022-03-18 12:06:08'),
(3613, 'add student other information, name:MAHRUQI KHALID AYMAN A', 'http://masiratna.leadconcept.info/studentotherinformation', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 14, '2022-03-18 12:06:10', '2022-03-18 12:06:10'),
(3614, 'update student information tab, name:MONA KHALAF ALSOLAMI', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 14, '2022-03-18 12:38:28', '2022-03-18 12:38:28'),
(3615, 'update student contact detail, name:MONA KHALAF ALSOLAMI', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 14, '2022-03-18 12:38:52', '2022-03-18 12:38:52'),
(3616, 'add student other information, name:MONA KHALAF ALSOLAMI', 'http://masiratna.leadconcept.info/studentotherinformation', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 14, '2022-03-18 12:39:02', '2022-03-18 12:39:02'),
(3617, 'update student information tab, name:ALMALKI ABDULLAH ALI A', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 15, '2022-03-20 16:04:41', '2022-03-20 16:04:41'),
(3618, 'update student contact detail, name:ALMALKI ABDULLAH ALI A', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 15, '2022-03-20 16:05:54', '2022-03-20 16:05:54'),
(3619, 'add student other information, name:ALMALKI ABDULLAH ALI A', 'http://masiratna.leadconcept.info/studentotherinformation', 'POST', '188.48.231.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 15, '2022-03-20 16:06:20', '2022-03-20 16:06:20'),
(3620, 'update student information tab, name:ALGHOFAILI MOHAMMED KHALID S', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 15, '2022-03-21 08:31:43', '2022-03-21 08:31:43'),
(3621, 'update student contact detail, name:ALGHOFAILI MOHAMMED KHALID S', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 15, '2022-03-21 08:32:08', '2022-03-21 08:32:08'),
(3622, 'add student other information, name:ALGHOFAILI MOHAMMED KHALID S', 'http://masiratna.leadconcept.info/studentotherinformation', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 15, '2022-03-21 08:32:26', '2022-03-21 08:32:26'),
(3623, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 1, '2022-03-21 15:07:29', '2022-03-21 15:07:29'),
(3624, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 1, '2022-03-21 15:33:11', '2022-03-21 15:33:11'),
(3625, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 1, '2022-03-21 17:26:02', '2022-03-21 17:26:02'),
(3626, 'type of resource deleted name:Kutiba Nussirat', 'http://masiratna.leadconcept.info/delete_dropdowntype?dropdowns_id=8&id=42', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 1, '2022-03-21 17:26:39', '2022-03-21 17:26:39'),
(3627, 'type of resource deleted name:Kutiba Nussirat', 'http://masiratna.leadconcept.info/delete_dropdowntype?dropdowns_id=8&id=80', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 1, '2022-03-21 17:27:02', '2022-03-21 17:27:02'),
(3628, 'open student settings', 'http://masiratna.leadconcept.info/resource/create?_jsvalidation=name&_jsvalidation_validate_all=false&dropdowns_id=1&name=office%205&proengsoft_jsvalidation=', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 1, '2022-03-21 17:27:17', '2022-03-21 17:27:17'),
(3629, 'Add type of Resource:office 5', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 1, '2022-03-21 17:27:18', '2022-03-21 17:27:18'),
(3630, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '156.146.59.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 1, '2022-03-21 17:32:33', '2022-03-21 17:32:33'),
(3631, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '156.146.59.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 1, '2022-03-21 17:40:27', '2022-03-21 17:40:27'),
(3632, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '156.146.59.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 1, '2022-03-21 17:40:46', '2022-03-21 17:40:46'),
(3633, 'type of resource deleted name:Office 1', 'http://masiratna.leadconcept.info/delete_dropdowntype?dropdowns_id=1&id=125', 'GET', '156.146.59.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 1, '2022-03-21 17:41:54', '2022-03-21 17:41:54'),
(3634, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '156.146.59.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 1, '2022-03-21 17:41:58', '2022-03-21 17:41:58'),
(3635, 'update student information tab, name:Waseem Waseem Asghar', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '156.146.59.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 7, '2022-03-21 18:08:05', '2022-03-21 18:08:05'),
(3636, 'update student contact detail, name:Waseem Waseem Asghar', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '156.146.59.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 7, '2022-03-21 18:08:22', '2022-03-21 18:08:22'),
(3637, 'update student contact detail, name:Waseem Waseem Asghar', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '156.146.59.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 7, '2022-03-21 18:08:23', '2022-03-21 18:08:23'),
(3638, 'update student contact detail, name:Waseem Waseem Asghar', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '156.146.59.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 7, '2022-03-21 18:08:28', '2022-03-21 18:08:28'),
(3639, 'add student other information, name:Waseem Waseem Asghar', 'http://masiratna.leadconcept.info/studentotherinformation', 'POST', '156.146.59.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 7, '2022-03-21 18:08:37', '2022-03-21 18:08:37'),
(3640, 'update student information tab, name:ALOTHMAN, SHAHAD SAAD A', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 14, '2022-03-22 11:52:16', '2022-03-22 11:52:16'),
(3641, 'update student contact detail, name:ALOTHMAN, SHAHAD SAAD A', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 14, '2022-03-22 11:52:38', '2022-03-22 11:52:38'),
(3642, 'add student other information, name:ALOTHMAN, SHAHAD SAAD A', 'http://masiratna.leadconcept.info/studentotherinformation', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 14, '2022-03-22 11:52:42', '2022-03-22 11:52:42'),
(3643, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-23 11:55:38', '2022-03-23 11:55:38'),
(3644, 'update student information tab, name:ABDALBR RNA MOSTAFA K', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 15, '2022-03-23 12:05:57', '2022-03-23 12:05:57'),
(3645, 'update student contact detail, name:ABDALBR RNA MOSTAFA K', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 15, '2022-03-23 12:06:33', '2022-03-23 12:06:33'),
(3646, 'update student information tab, name:Nussairat Wissam', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-23 12:06:49', '2022-03-23 12:06:49'),
(3647, 'add student other information, name:ABDALBR RNA MOSTAFA K', 'http://masiratna.leadconcept.info/studentotherinformation', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 15, '2022-03-23 12:06:49', '2022-03-23 12:06:49'),
(3648, 'update student contact detail, name:Nussairat Wissam', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-23 12:08:21', '2022-03-23 12:08:21'),
(3649, 'add student other information, name:Nussairat Wissam', 'http://masiratna.leadconcept.info/studentotherinformation', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-23 12:08:28', '2022-03-23 12:08:28'),
(3650, 'add appliction of a student, name:92', 'http://masiratna.leadconcept.info/users/save_application', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-23 12:08:46', '2022-03-23 12:08:46'),
(3651, 'Add Visa Form of studentzain momen', 'http://masiratna.leadconcept.info/visa', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-23 12:10:21', '2022-03-23 12:10:21'),
(3652, 'edit user name:KutibaNussirat', 'http://masiratna.leadconcept.info/users/edit/18', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-23 13:16:48', '2022-03-23 13:16:48'),
(3653, 'edit user name:RaulOchavillo', 'http://masiratna.leadconcept.info/users/edit/15', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 15, '2022-03-23 13:17:31', '2022-03-23 13:17:31'),
(3654, 'update user name:RaulOchavillo', 'http://masiratna.leadconcept.info/users/update/15', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 15, '2022-03-23 13:17:44', '2022-03-23 13:17:44'),
(3655, 'edit user name:RaulOchavillo', 'http://masiratna.leadconcept.info/users/edit/15', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 15, '2022-03-23 13:17:48', '2022-03-23 13:17:48'),
(3656, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 15, '2022-03-23 13:18:48', '2022-03-23 13:18:48'),
(3657, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 15, '2022-03-23 13:18:48', '2022-03-23 13:18:48'),
(3658, 'edit user name:KutibaNussirat', 'http://masiratna.leadconcept.info/users/edit/18', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-23 13:18:54', '2022-03-23 13:18:54'),
(3659, 'edit user name:RaulOchavillo', 'http://masiratna.leadconcept.info/users/edit/15', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 15, '2022-03-23 13:19:23', '2022-03-23 13:19:23'),
(3660, 'update user name:RaulOchavillo', 'http://masiratna.leadconcept.info/users/update/15', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 15, '2022-03-23 13:19:33', '2022-03-23 13:19:33'),
(3661, 'edit user name:RaulOchavillo', 'http://masiratna.leadconcept.info/users/edit/15', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 15, '2022-03-23 13:19:51', '2022-03-23 13:19:51'),
(3662, 'update user name:RaulOchavillo', 'http://masiratna.leadconcept.info/users/update/15', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 15, '2022-03-23 13:19:57', '2022-03-23 13:19:57'),
(3663, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 15, '2022-03-23 13:20:06', '2022-03-23 13:20:06'),
(3664, 'edit user name:RaulOchavillo', 'http://masiratna.leadconcept.info/users/edit/15', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 15, '2022-03-23 13:20:12', '2022-03-23 13:20:12'),
(3665, 'update user name:RaulOchavillo', 'http://masiratna.leadconcept.info/users/update/15', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 15, '2022-03-23 13:20:23', '2022-03-23 13:20:23'),
(3666, 'edit user name:RaulOchavillo', 'http://masiratna.leadconcept.info/users/edit/15', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 15, '2022-03-23 13:20:47', '2022-03-23 13:20:47'),
(3667, 'update user name:RaulOchavillo', 'http://masiratna.leadconcept.info/users/update/15', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 15, '2022-03-23 13:20:51', '2022-03-23 13:20:51'),
(3668, 'edit student screen, student:zain momen', 'http://masiratna.leadconcept.info/student/93/edit', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-23 13:35:24', '2022-03-23 13:35:24'),
(3669, 'edit student screen, student:zain momen', 'http://masiratna.leadconcept.info/student/93/edit', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-23 13:35:34', '2022-03-23 13:35:34'),
(3670, 'edit student screen, student:zain momen', 'http://masiratna.leadconcept.info/student/93/edit', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-23 13:36:02', '2022-03-23 13:36:02'),
(3671, 'update record of student name:zain momen', 'http://masiratna.leadconcept.info/student', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-23 13:36:09', '2022-03-23 13:36:09'),
(3672, 'update student information, name:zain momen', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-23 13:36:23', '2022-03-23 13:36:23'),
(3673, 'update student contact detail, name:zain momen', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-23 13:36:36', '2022-03-23 13:36:36'),
(3674, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-23 13:40:42', '2022-03-23 13:40:42'),
(3675, 'Add type of Resource:Riyadh', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-23 13:40:58', '2022-03-23 13:40:58'),
(3676, 'Add type of Resource:sss', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-23 13:42:13', '2022-03-23 13:42:13'),
(3677, 'Add type of Resource:MOHE', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-23 13:42:25', '2022-03-23 13:42:25'),
(3678, 'type of resource deleted name:type 1', 'http://masiratna.leadconcept.info/delete_dropdowntype?dropdowns_id=2&id=127', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-23 13:42:32', '2022-03-23 13:42:32'),
(3679, 'Add type of Resource:MOFE', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-23 13:43:06', '2022-03-23 13:43:06'),
(3680, 'Add type of Resource:MOFE', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-23 13:43:15', '2022-03-23 13:43:15'),
(3681, 'Add type of Resource:MOFE', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-23 13:43:23', '2022-03-23 13:43:23'),
(3682, 'Add type of Resource:MOFE', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-23 13:43:30', '2022-03-23 13:43:30'),
(3683, 'Add type of Resource:MOFE', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-23 13:43:37', '2022-03-23 13:43:37'),
(3684, 'Add type of Resource:MOFE', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-23 13:43:44', '2022-03-23 13:43:44'),
(3685, 'Edit Visa40', 'http://masiratna.leadconcept.info/edit_visa/40', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-23 13:44:25', '2022-03-23 13:44:25'),
(3686, 'edit student screen, student:Nussairat Wissam', 'http://masiratna.leadconcept.info/student/92/edit', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-23 13:44:38', '2022-03-23 13:44:38'),
(3687, 'update record of student name:Nussairat Wissam', 'http://masiratna.leadconcept.info/student', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-23 13:44:40', '2022-03-23 13:44:40'),
(3688, 'update student information, name:Nussairat Wissam', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-23 13:44:44', '2022-03-23 13:44:44'),
(3689, 'Edit Visa40', 'http://masiratna.leadconcept.info/edit_visa/40', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-23 13:46:25', '2022-03-23 13:46:25'),
(3690, 'Add University which is name:The University of Melbourne', 'http://masiratna.leadconcept.info/guidelines/universities', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-23 14:10:56', '2022-03-23 14:10:56'),
(3691, 'add school contact which is name:Manager', 'http://masiratna.leadconcept.info/guidelines/save_school_contacts', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-23 14:12:03', '2022-03-23 14:12:03'),
(3692, 'edit student screen, student:Nussairat Wissam', 'http://masiratna.leadconcept.info/student/92/edit', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-23 14:34:55', '2022-03-23 14:34:55'),
(3693, 'update record of student name:Nussairat Wissam', 'http://masiratna.leadconcept.info/student', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-23 14:34:58', '2022-03-23 14:34:58'),
(3694, 'update student information, name:Nussairat Wissam', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-23 14:35:01', '2022-03-23 14:35:01'),
(3695, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-23 14:35:19', '2022-03-23 14:35:19'),
(3696, 'edit student screen, student:zain momen', 'http://masiratna.leadconcept.info/student/93/edit', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-23 14:35:50', '2022-03-23 14:35:50'),
(3697, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-23 14:35:58', '2022-03-23 14:35:58'),
(3698, 'edit student screen, student:zain momen', 'http://masiratna.leadconcept.info/student/93/edit', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-23 14:36:34', '2022-03-23 14:36:34'),
(3699, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-23 14:36:38', '2022-03-23 14:36:38'),
(3700, 'Add Resource name: Admission Officer', 'http://masiratna.leadconcept.info/resource', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-23 14:36:42', '2022-03-23 14:36:42'),
(3701, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-23 14:36:42', '2022-03-23 14:36:42'),
(3702, 'Add type of Resource:Francis Lopez', 'http://masiratna.leadconcept.info/dropdown_type', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-23 14:37:04', '2022-03-23 14:37:04'),
(3703, 'edit student screen, student:Nussairat Wissam', 'http://masiratna.leadconcept.info/student/92/edit', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-23 14:37:17', '2022-03-23 14:37:17'),
(3704, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-23 14:37:30', '2022-03-23 14:37:30'),
(3705, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-23 14:37:32', '2022-03-23 14:37:32'),
(3706, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-23 14:37:39', '2022-03-23 14:37:39'),
(3707, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-23 14:37:40', '2022-03-23 14:37:40'),
(3708, 'edit student screen, student:Nussairat Wissam', 'http://masiratna.leadconcept.info/student/92/edit', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-23 14:38:02', '2022-03-23 14:38:02'),
(3709, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-23 14:38:05', '2022-03-23 14:38:05'),
(3710, 'edit student screen, student:Nussairat Wissam', 'http://masiratna.leadconcept.info/student/92/edit', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-23 14:38:32', '2022-03-23 14:38:32'),
(3711, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-23 14:38:52', '2022-03-23 14:38:52'),
(3712, 'edit student screen, student:Nussairat Wissam', 'http://masiratna.leadconcept.info/student/92/edit', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-23 14:40:37', '2022-03-23 14:40:37'),
(3713, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-23 14:40:48', '2022-03-23 14:40:48'),
(3714, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 18, '2022-03-23 14:42:17', '2022-03-23 14:42:17'),
(3715, 'delete user profile picture from hosting, user:FrancisLopez', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 14, '2022-03-23 14:44:18', '2022-03-23 14:44:18'),
(3716, 'add profile picture, user:FrancisLopez', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 14, '2022-03-23 14:44:24', '2022-03-23 14:44:24'),
(3717, 'update user profile, user:FrancisLopez', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 14, '2022-03-23 14:44:24', '2022-03-23 14:44:24'),
(3718, 'update user profile, user:FrancisLopez', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 14, '2022-03-23 14:44:24', '2022-03-23 14:44:24'),
(3719, 'update student information tab, name:RUZUN RASHED A ALHAMMAD', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 14, '2022-03-23 14:45:52', '2022-03-23 14:45:52'),
(3720, 'update student contact detail, name:RUZUN RASHED A ALHAMMAD', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 14, '2022-03-23 14:46:15', '2022-03-23 14:46:15'),
(3721, 'add student other information, name:RUZUN RASHED A ALHAMMAD', 'http://masiratna.leadconcept.info/studentotherinformation', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 14, '2022-03-23 14:46:21', '2022-03-23 14:46:21'),
(3722, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 9, '2022-03-23 14:47:52', '2022-03-23 14:47:52'),
(3723, 'edit student screen, student:Nussairat Wissam', 'http://masiratna.leadconcept.info/student/92/edit', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 9, '2022-03-23 14:48:09', '2022-03-23 14:48:09'),
(3724, 'create new user name:SamehAlSayed', 'http://masiratna.leadconcept.info/users/store', 'POST', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-23 14:53:23', '2022-03-23 14:53:23'),
(3725, 'edit student screen, student:Mani Hassan', 'http://masiratna.leadconcept.info/student/45/edit', 'GET', '188.53.188.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 19, '2022-03-23 14:57:49', '2022-03-23 14:57:49'),
(3726, 'edit user name:Visa_Officer', 'http://masiratna.leadconcept.info/users/edit/11', 'GET', '156.146.59.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 11, '2022-03-23 19:52:06', '2022-03-23 19:52:06'),
(3727, 'edit user name:Visa_Officer', 'http://masiratna.leadconcept.info/users/edit/11', 'GET', '156.146.59.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 11, '2022-03-23 19:57:19', '2022-03-23 19:57:19'),
(3728, 'edit user name:Visa_Officer', 'http://masiratna.leadconcept.info/users/edit/11', 'GET', '156.146.59.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 11, '2022-03-23 19:58:34', '2022-03-23 19:58:34'),
(3729, 'create permission, name:edit_roles', 'http://masiratna.leadconcept.info/permissions/store', 'POST', '156.146.59.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 1, '2022-03-23 23:49:00', '2022-03-23 23:49:00'),
(3730, 'create permission, name:student_settings', 'http://masiratna.leadconcept.info/permissions/store', 'POST', '156.146.59.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 1, '2022-03-23 23:49:22', '2022-03-23 23:49:22'),
(3731, 'update user role, name: Visa', 'http://masiratna.leadconcept.info/roles/update/4', 'POST', '156.146.59.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 1, '2022-03-23 23:49:57', '2022-03-23 23:49:57'),
(3732, 'update user role, name: Master User', 'http://masiratna.leadconcept.info/roles/update/6', 'POST', '156.146.59.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 1, '2022-03-23 23:50:40', '2022-03-23 23:50:40'),
(3733, 'update user role, name: Master User', 'http://masiratna.leadconcept.info/roles/update/6', 'POST', '156.146.59.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 1, '2022-03-23 23:50:57', '2022-03-23 23:50:57'),
(3734, 'edit user name:Counsellor', 'http://masiratna.leadconcept.info/users/edit/2', 'GET', '156.146.59.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 1, '2022-03-23 23:52:18', '2022-03-23 23:52:18'),
(3735, 'update user role, name: Counsellor', 'http://masiratna.leadconcept.info/roles/update/2', 'POST', '156.146.59.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36', 1, '2022-03-23 23:54:07', '2022-03-23 23:54:07'),
(3736, 'Add Visa Form of studentJunaid', 'http://masiratna.leadconcept.info/visa', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 11, '2022-03-24 00:03:24', '2022-03-24 00:03:24'),
(3737, 'Save Course', 'http://masiratna.leadconcept.info/save_courses', 'POST', '156.146.59.41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 7, '2022-03-25 17:54:53', '2022-03-25 17:54:53'),
(3738, 'Save Course', 'http://masiratna.leadconcept.info/save_courses', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 11, '2022-03-25 22:36:10', '2022-03-25 22:36:10'),
(3739, 'Add Visa Form of studentbusor@mailinator.com', 'http://masiratna.leadconcept.info/visa', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 11, '2022-03-25 22:43:49', '2022-03-25 22:43:49'),
(3740, 'edit user name:RaulOchavillo', 'http://masiratna.leadconcept.info/users/edit/15', 'GET', '37.104.184.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 15, '2022-03-29 07:48:17', '2022-03-29 07:48:17'),
(3741, 'update user name:RaulOchavillo', 'http://masiratna.leadconcept.info/users/update/15', 'POST', '37.104.184.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 15, '2022-03-29 07:48:22', '2022-03-29 07:48:22'),
(3742, 'edit user name:RaulOchavillo', 'http://masiratna.leadconcept.info/users/edit/15', 'GET', '37.104.184.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 15, '2022-03-29 07:48:35', '2022-03-29 07:48:35'),
(3743, 'update user name:RaulOchavillo', 'http://masiratna.leadconcept.info/users/update/15', 'POST', '37.104.184.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 15, '2022-03-29 07:48:48', '2022-03-29 07:48:48'),
(3744, 'edit user name:RaulOchavillo', 'http://masiratna.leadconcept.info/users/edit/15', 'GET', '37.104.184.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 15, '2022-03-29 07:49:08', '2022-03-29 07:49:08'),
(3745, 'update user name:RaulOchavillo', 'http://masiratna.leadconcept.info/users/update/15', 'POST', '37.104.184.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 15, '2022-03-29 07:49:14', '2022-03-29 07:49:14'),
(3746, 'edit user name:RaulOchavillo', 'http://masiratna.leadconcept.info/users/edit/15', 'GET', '37.104.184.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 15, '2022-03-29 07:50:28', '2022-03-29 07:50:28'),
(3747, 'update user name:RaulOchavillo', 'http://masiratna.leadconcept.info/users/update/15', 'POST', '37.104.184.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 15, '2022-03-29 07:50:32', '2022-03-29 07:50:32'),
(3748, 'update user name:RaulOchavillo', 'http://masiratna.leadconcept.info/users/update/15', 'POST', '37.104.184.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 15, '2022-03-29 07:50:40', '2022-03-29 07:50:40'),
(3749, 'edit user name:RaulOchavillo', 'http://masiratna.leadconcept.info/users/edit/15', 'GET', '37.104.184.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 15, '2022-03-29 07:50:53', '2022-03-29 07:50:53'),
(3750, 'update user name:RaulOchavillo', 'http://masiratna.leadconcept.info/users/update/15', 'POST', '37.104.184.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 15, '2022-03-29 07:50:58', '2022-03-29 07:50:58'),
(3751, 'Add Visa Form of studentmahmod', 'http://masiratna.leadconcept.info/visa', 'POST', '37.104.184.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 1, '2022-03-29 11:47:24', '2022-03-29 11:47:24'),
(3752, 'edit student screen, student:RUZUN RASHED A ALHAMMAD', 'http://masiratna.leadconcept.info/student/94/edit', 'GET', '37.104.184.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 1, '2022-03-29 11:47:56', '2022-03-29 11:47:56');
INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip`, `agent`, `user_id`, `created_at`, `updated_at`) VALUES
(3753, 'Add Visa Form of studentzaki', 'http://masiratna.leadconcept.info/visa', 'POST', '37.104.184.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 1, '2022-03-29 11:48:53', '2022-03-29 11:48:53'),
(3754, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '37.104.184.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 1, '2022-03-29 11:49:37', '2022-03-29 11:49:37'),
(3755, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '37.104.184.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 1, '2022-03-29 11:49:37', '2022-03-29 11:49:37'),
(3756, 'create new user name:Mohammad_Abrar', 'http://masiratna.leadconcept.info/users/store', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 1, '2022-03-29 17:54:11', '2022-03-29 17:54:11'),
(3757, 'edit user name:Mohammad_Abrar', 'http://masiratna.leadconcept.info/users/edit/20', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 20, '2022-03-29 17:58:49', '2022-03-29 17:58:49'),
(3758, 'edit user name:Mohammad_Abrar', 'http://masiratna.leadconcept.info/users/edit/20', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 20, '2022-03-29 17:59:12', '2022-03-29 17:59:12'),
(3759, 'update user name:Mohammad_Abrar', 'http://masiratna.leadconcept.info/users/update/20', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 20, '2022-03-29 17:59:17', '2022-03-29 17:59:17'),
(3760, 'edit user name:Mohammad_Abrar', 'http://masiratna.leadconcept.info/users/edit/20', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 20, '2022-03-29 17:59:23', '2022-03-29 17:59:23'),
(3761, 'edit user name:Mohammad_Abrar', 'http://masiratna.leadconcept.info/users/edit/20', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 1, '2022-03-29 18:01:31', '2022-03-29 18:01:31'),
(3762, 'edit user name:Counsellor', 'http://masiratna.leadconcept.info/users/edit/2', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 1, '2022-03-29 18:04:47', '2022-03-29 18:04:47'),
(3763, 'edit user name:Masiratna_Counsellor', 'http://masiratna.leadconcept.info/users/edit/7', 'GET', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 7, '2022-03-29 18:06:38', '2022-03-29 18:06:38'),
(3764, 'edit user name:Masiratna_Counsellor', 'http://masiratna.leadconcept.info/users/edit/7', 'GET', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 7, '2022-03-29 18:08:25', '2022-03-29 18:08:25'),
(3765, 'edit user name:Masiratna_Counsellor', 'http://masiratna.leadconcept.info/users/edit/7', 'GET', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 7, '2022-03-29 18:08:35', '2022-03-29 18:08:35'),
(3766, 'edit user name:Masiratna Admin', 'http://masiratna.leadconcept.info/users/edit/1', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 1, '2022-03-29 18:15:28', '2022-03-29 18:15:28'),
(3767, 'edit user name:Masiratna_Counsellor', 'http://masiratna.leadconcept.info/users/edit/7', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 7, '2022-03-29 18:15:56', '2022-03-29 18:15:56'),
(3768, 'edit user name:Masiratna_Counsellor', 'http://masiratna.leadconcept.info/users/edit/7', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 7, '2022-03-29 18:16:09', '2022-03-29 18:16:09'),
(3769, 'edit user name:Masiratna_Counsellor', 'http://masiratna.leadconcept.info/users/edit/7', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 7, '2022-03-29 18:16:58', '2022-03-29 18:16:58'),
(3770, 'edit user name:Masiratna_Counsellor', 'http://masiratna.leadconcept.info/users/edit/7', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 7, '2022-03-29 18:17:13', '2022-03-29 18:17:13'),
(3771, 'edit user name:Masiratna_Counsellor', 'http://masiratna.leadconcept.info/users/edit/7', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 7, '2022-03-29 18:17:52', '2022-03-29 18:17:52'),
(3772, 'edit user name:Masiratna_Counsellor', 'http://masiratna.leadconcept.info/users/edit/7', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 7, '2022-03-29 18:18:00', '2022-03-29 18:18:00'),
(3773, 'edit user name:Masiratna_Counsellor', 'http://masiratna.leadconcept.info/users/edit/7', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 7, '2022-03-29 18:19:26', '2022-03-29 18:19:26'),
(3774, 'edit user name:Masiratna_Counsellor', 'http://masiratna.leadconcept.info/users/edit/7', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 7, '2022-03-29 18:22:45', '2022-03-29 18:22:45'),
(3775, 'edit user name:Masiratna_Counsellor', 'http://masiratna.leadconcept.info/users/edit/7', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 7, '2022-03-29 18:22:56', '2022-03-29 18:22:56'),
(3776, 'edit user name:Management_User', 'http://masiratna.leadconcept.info/users/edit/10', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 1, '2022-03-29 18:23:52', '2022-03-29 18:23:52'),
(3777, 'edit user name:Management_User', 'http://masiratna.leadconcept.info/users/edit/10', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 1, '2022-03-29 18:24:35', '2022-03-29 18:24:35'),
(3778, 'edit user name:Management_User', 'http://masiratna.leadconcept.info/users/edit/10', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 1, '2022-03-29 18:24:44', '2022-03-29 18:24:44'),
(3779, 'edit user name:Management_User', 'http://masiratna.leadconcept.info/users/edit/10', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 1, '2022-03-29 18:28:55', '2022-03-29 18:28:55'),
(3780, 'edit user name:Masiratna_Counsellor', 'http://masiratna.leadconcept.info/users/edit/7', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 1, '2022-03-29 18:34:44', '2022-03-29 18:34:44'),
(3781, 'edit user name:Masiratna_Counsellor', 'http://masiratna.leadconcept.info/users/edit/7', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 7, '2022-03-29 18:35:00', '2022-03-29 18:35:00'),
(3782, 'update student information tab, name:Padilla Bowers', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 7, '2022-03-29 18:51:27', '2022-03-29 18:51:27'),
(3783, 'update student contact detail, name:Padilla Bowers', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 7, '2022-03-29 18:51:32', '2022-03-29 18:51:32'),
(3784, 'add student other information, name:Padilla Bowers', 'http://masiratna.leadconcept.info/studentotherinformation', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 7, '2022-03-29 18:51:36', '2022-03-29 18:51:36'),
(3785, 'edit user name:Masiratna_Counsellor', 'http://masiratna.leadconcept.info/users/edit/7', 'GET', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 7, '2022-03-29 19:26:43', '2022-03-29 19:26:43'),
(3786, 'update student information tab, name:Chapman Carrillo', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 7, '2022-03-29 19:30:30', '2022-03-29 19:30:30'),
(3787, 'update student contact detail, name:Chapman Carrillo', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 7, '2022-03-29 19:30:34', '2022-03-29 19:30:34'),
(3788, 'add student other information, name:Chapman Carrillo', 'http://masiratna.leadconcept.info/studentotherinformation', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 7, '2022-03-29 19:30:37', '2022-03-29 19:30:37'),
(3789, 'Add Visa Form of studentImran Khan', 'http://masiratna.leadconcept.info/visa', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 11, '2022-03-29 19:44:44', '2022-03-29 19:44:44'),
(3790, 'update student information tab, name:Guerra Haley', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 11, '2022-03-29 19:45:08', '2022-03-29 19:45:08'),
(3791, 'update student contact detail, name:Guerra Haley', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 11, '2022-03-29 19:45:13', '2022-03-29 19:45:13'),
(3792, 'add student other information, name:Guerra Haley', 'http://masiratna.leadconcept.info/studentotherinformation', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 11, '2022-03-29 19:45:16', '2022-03-29 19:45:16'),
(3793, 'update student information tab, name:Good Mcgee', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 11, '2022-03-29 19:46:25', '2022-03-29 19:46:25'),
(3794, 'update student contact detail, name:Good Mcgee', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 11, '2022-03-29 19:46:30', '2022-03-29 19:46:30'),
(3795, 'add student other information, name:Good Mcgee', 'http://masiratna.leadconcept.info/studentotherinformation', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 11, '2022-03-29 19:46:31', '2022-03-29 19:46:31'),
(3796, 'Edit Visa45', 'http://masiratna.leadconcept.info/edit_visa/45', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 11, '2022-03-29 19:49:14', '2022-03-29 19:49:14'),
(3797, 'update student information tab, name:Snow Foreman', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 10, '2022-03-29 19:55:19', '2022-03-29 19:55:19'),
(3798, 'update student contact detail, name:Snow Foreman', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 10, '2022-03-29 19:55:24', '2022-03-29 19:55:24'),
(3799, 'add student other information, name:Snow Foreman', 'http://masiratna.leadconcept.info/studentotherinformation', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 10, '2022-03-29 19:55:28', '2022-03-29 19:55:28'),
(3800, 'update student information tab, name:French Owen', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 12, '2022-03-29 19:56:15', '2022-03-29 19:56:15'),
(3801, 'update student contact detail, name:French Owen', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 12, '2022-03-29 19:56:18', '2022-03-29 19:56:18'),
(3802, 'add student other information, name:French Owen', 'http://masiratna.leadconcept.info/studentotherinformation', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 12, '2022-03-29 19:56:20', '2022-03-29 19:56:20'),
(3803, 'Add University which is name:https://www.din.mobi', 'http://masiratna.leadconcept.info/guidelines/universities', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 12, '2022-03-29 20:06:19', '2022-03-29 20:06:19'),
(3804, 'create new user name:Admission_Test', 'http://masiratna.leadconcept.info/users/store', 'POST', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 1, '2022-03-29 20:22:05', '2022-03-29 20:22:05'),
(3805, 'update student information tab, name:Waseem Waseem Asghar', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 1, '2022-03-29 20:22:59', '2022-03-29 20:22:59'),
(3806, 'update student contact detail, name:Waseem Waseem Asghar', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 1, '2022-03-29 20:23:47', '2022-03-29 20:23:47'),
(3807, 'add student other information, name:Waseem Waseem Asghar', 'http://masiratna.leadconcept.info/studentotherinformation', 'POST', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 1, '2022-03-29 20:23:50', '2022-03-29 20:23:50'),
(3808, 'create new user name:admission_officer', 'http://masiratna.leadconcept.info/users/store', 'POST', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 1, '2022-03-29 22:04:00', '2022-03-29 22:04:00'),
(3809, 'edit user name:admission_officer', 'http://masiratna.leadconcept.info/users/edit/22', 'GET', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 1, '2022-03-29 22:05:50', '2022-03-29 22:05:50'),
(3810, 'update user name:admission_officer', 'http://masiratna.leadconcept.info/users/update/22', 'POST', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 1, '2022-03-29 22:05:54', '2022-03-29 22:05:54'),
(3811, 'create new user name:Admissions_User', 'http://masiratna.leadconcept.info/users/store', 'POST', '156.146.59.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 1, '2022-03-29 22:14:32', '2022-03-29 22:14:32'),
(3812, 'edit user name:FrancisLopez', 'http://masiratna.leadconcept.info/users/edit/14', 'GET', '37.104.184.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 1, '2022-03-30 11:47:49', '2022-03-30 11:47:49'),
(3813, 'update user name:FrancisLopez', 'http://masiratna.leadconcept.info/users/update/14', 'POST', '37.104.184.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 1, '2022-03-30 11:47:52', '2022-03-30 11:47:52'),
(3814, 'edit user name:RaulOchavillo', 'http://masiratna.leadconcept.info/users/edit/15', 'GET', '37.104.184.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 1, '2022-03-30 11:48:22', '2022-03-30 11:48:22'),
(3815, 'update user name:RaulOchavillo', 'http://masiratna.leadconcept.info/users/update/15', 'POST', '37.104.184.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 1, '2022-03-30 11:48:27', '2022-03-30 11:48:27'),
(3816, 'edit student screen, student:Waseem Waseem Asghar', 'http://masiratna.leadconcept.info/student/107/edit', 'GET', '59.103.191.122', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1, '2022-03-30 12:53:45', '2022-03-30 12:53:45'),
(3817, 'update student information tab, name:Whitney Simpson', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 12, '2022-03-31 23:52:15', '2022-03-31 23:52:15'),
(3818, 'update student contact detail, name:Whitney Simpson', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 12, '2022-03-31 23:52:20', '2022-03-31 23:52:20'),
(3819, 'add student other information, name:Whitney Simpson', 'http://masiratna.leadconcept.info/studentotherinformation', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 12, '2022-03-31 23:52:22', '2022-03-31 23:52:22'),
(3820, 'edit student screen, student:Whitney Simpson', 'http://masiratna.leadconcept.info/student/109/edit', 'GET', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 12, '2022-03-31 23:59:05', '2022-03-31 23:59:05'),
(3821, 'update student information tab, name:Kirby Odom', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 12, '2022-03-31 23:59:28', '2022-03-31 23:59:28'),
(3822, 'update student contact detail, name:Kirby Odom', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 12, '2022-03-31 23:59:32', '2022-03-31 23:59:32'),
(3823, 'add student other information, name:Kirby Odom', 'http://masiratna.leadconcept.info/studentotherinformation', 'POST', '101.53.242.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 12, '2022-03-31 23:59:36', '2022-03-31 23:59:36'),
(3824, 'delete user profile picture, user:Masiratna Admin', 'http://masiratna.leadconcept.info/delete_profile_photo', 'GET', '156.146.59.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 1, '2022-04-01 21:45:29', '2022-04-01 21:45:29'),
(3825, 'delete user profile picture from hosting, user:Masiratna Admin', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '156.146.59.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 1, '2022-04-01 21:45:41', '2022-04-01 21:45:41'),
(3826, 'add profile picture, user:Masiratna Admin', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '156.146.59.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 1, '2022-04-01 21:45:41', '2022-04-01 21:45:41'),
(3827, 'update user profile, user:Masiratna Admin', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '156.146.59.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 1, '2022-04-01 21:45:41', '2022-04-01 21:45:41'),
(3828, 'update user profile, user:Masiratna Admin', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '156.146.59.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 1, '2022-04-01 21:45:41', '2022-04-01 21:45:41'),
(3829, 'delete user profile picture from hosting, user:Masiratna Admin', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '156.146.59.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 1, '2022-04-01 21:47:00', '2022-04-01 21:47:00'),
(3830, 'add profile picture, user:Masiratna Admin', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '156.146.59.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 1, '2022-04-01 21:47:00', '2022-04-01 21:47:00'),
(3831, 'update user profile, user:Masiratna Admin', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '156.146.59.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 1, '2022-04-01 21:47:00', '2022-04-01 21:47:00'),
(3832, 'update user profile, user:Masiratna Admin', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '156.146.59.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 1, '2022-04-01 21:47:00', '2022-04-01 21:47:00'),
(3833, 'delete user profile picture from hosting, user:Masiratna Admin', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '156.146.59.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 1, '2022-04-01 21:47:56', '2022-04-01 21:47:56'),
(3834, 'add profile picture, user:Masiratna Admin', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '156.146.59.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 1, '2022-04-01 21:47:56', '2022-04-01 21:47:56'),
(3835, 'update user profile, user:Masiratna Admin', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '156.146.59.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 1, '2022-04-01 21:47:56', '2022-04-01 21:47:56'),
(3836, 'update user profile, user:Masiratna Admin', 'http://masiratna.leadconcept.info/updateprofile', 'POST', '156.146.59.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 1, '2022-04-01 21:47:56', '2022-04-01 21:47:56'),
(3837, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '156.146.59.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 1, '2022-04-02 00:04:25', '2022-04-02 00:04:25'),
(3838, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '156.146.59.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 1, '2022-04-02 00:04:37', '2022-04-02 00:04:37'),
(3839, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '156.146.59.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 1, '2022-04-02 00:05:04', '2022-04-02 00:05:04'),
(3840, 'open student settings', 'http://masiratna.leadconcept.info/resource/create', 'GET', '156.146.59.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 1, '2022-04-02 00:05:26', '2022-04-02 00:05:26'),
(3841, 'Send Sms on this number:+923080411788', 'http://masiratna.leadconcept.info/sms_student', 'POST', '156.146.59.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 1, '2022-04-02 00:47:38', '2022-04-02 00:47:38'),
(3842, 'add appliction of a student, name:100', 'http://masiratna.leadconcept.info/users/save_application', 'POST', '156.146.59.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 1, '2022-04-02 00:48:56', '2022-04-02 00:48:56'),
(3843, 'update appliction of a student, name:27', 'http://masiratna.leadconcept.info/users/update_application', 'POST', '156.146.59.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 1, '2022-04-02 00:50:48', '2022-04-02 00:50:48'),
(3844, 'Add Visa Form of studentwudolog@mailinator.com', 'http://masiratna.leadconcept.info/visa', 'POST', '156.146.59.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 1, '2022-04-02 00:51:43', '2022-04-02 00:51:43'),
(3845, 'edit student screen, student:Kirby Odom', 'http://masiratna.leadconcept.info/student/110/edit', 'GET', '176.45.173.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 18, '2022-04-07 16:03:07', '2022-04-07 16:03:07'),
(3846, 'update record of student name:Kirby Odom', 'http://masiratna.leadconcept.info/student', 'POST', '176.45.173.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 18, '2022-04-07 16:03:13', '2022-04-07 16:03:13'),
(3847, 'update student information, name:Kirby Odom', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '176.45.173.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 18, '2022-04-07 16:03:15', '2022-04-07 16:03:15'),
(3848, 'update student contact detail, name:Kirby Odom', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '176.45.173.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 18, '2022-04-07 16:03:18', '2022-04-07 16:03:18'),
(3849, 'update student other information, name:Kirby Odom', 'http://masiratna.leadconcept.info/studentotherinformation', 'POST', '176.45.173.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 18, '2022-04-07 16:03:19', '2022-04-07 16:03:19'),
(3850, 'add appliction of a student, name:110', 'http://masiratna.leadconcept.info/users/save_application', 'POST', '176.45.173.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 18, '2022-04-07 16:04:04', '2022-04-07 16:04:04'),
(3851, 'Update the application status', 'http://masiratna.leadconcept.info/users/application_status', 'POST', '176.45.173.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 18, '2022-04-07 16:04:13', '2022-04-07 16:04:13'),
(3852, 'Update the application status', 'http://masiratna.leadconcept.info/users/application_status', 'POST', '176.45.173.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 18, '2022-04-07 16:06:31', '2022-04-07 16:06:31'),
(3853, 'edit student screen, student:Nussairat Wissam', 'http://masiratna.leadconcept.info/student/92/edit', 'GET', '176.45.173.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 18, '2022-04-07 16:09:41', '2022-04-07 16:09:41'),
(3854, 'update record of student name:Nussairat Wissam', 'http://masiratna.leadconcept.info/student', 'POST', '176.45.173.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 18, '2022-04-07 16:09:46', '2022-04-07 16:09:46'),
(3855, 'update student information, name:Nussairat Wissam', 'http://masiratna.leadconcept.info/studentinformation', 'POST', '176.45.173.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 18, '2022-04-07 16:09:47', '2022-04-07 16:09:47'),
(3856, 'update student contact detail, name:Nussairat Wissam', 'http://masiratna.leadconcept.info/studentcontactdetail', 'POST', '176.45.173.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 18, '2022-04-07 16:09:51', '2022-04-07 16:09:51'),
(3857, 'update student other information, name:Nussairat Wissam', 'http://masiratna.leadconcept.info/studentotherinformation', 'POST', '176.45.173.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 18, '2022-04-07 16:09:52', '2022-04-07 16:09:52'),
(3858, 'update appliction of a student, name:26', 'http://masiratna.leadconcept.info/users/update_application', 'POST', '176.45.173.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 18, '2022-04-07 16:10:35', '2022-04-07 16:10:35'),
(3859, 'Edit Visa24', 'http://masiratna.leadconcept.info/edit_visa/24', 'GET', '176.45.173.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 19, '2022-04-07 16:15:58', '2022-04-07 16:15:58'),
(3860, 'Edit Visa46', 'http://masiratna.leadconcept.info/edit_visa/46', 'GET', '119.152.154.246', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', 1, '2022-04-19 13:28:28', '2022-04-19 13:28:28'),
(3861, 'Send Sms on this number:+923080411788', 'http://localhost:8000/sms_student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', 1, '2022-04-21 03:28:29', '2022-04-21 03:28:29'),
(3862, 'Send Sms on this number:+923080411788', 'http://localhost:8000/sms_student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', 1, '2022-04-21 03:28:30', '2022-04-21 03:28:30'),
(3863, 'Send Sms on this number:+923080411788', 'http://localhost:8000/sms_student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', 1, '2022-04-21 03:34:01', '2022-04-21 03:34:01'),
(3864, 'Send Sms on this number:+923080411788', 'http://localhost:8000/sms_student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', 1, '2022-04-21 03:34:02', '2022-04-21 03:34:02'),
(3865, 'edit student screen, student:Kirby Odom', 'http://localhost:8000/student/110/edit', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', 1, '2022-04-21 03:51:32', '2022-04-21 03:51:32'),
(3866, 'update student contact detail, name:Kirby Odom', 'http://localhost:8000/studentcontactdetail', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', 1, '2022-04-21 03:51:43', '2022-04-21 03:51:43'),
(3867, 'update student other information, name:Kirby Odom', 'http://localhost:8000/studentotherinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', 1, '2022-04-21 03:51:46', '2022-04-21 03:51:46'),
(3868, 'Send Sms on this number:+966592364444', 'http://localhost:8000/sms_student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', 1, '2022-04-21 03:51:54', '2022-04-21 03:51:54'),
(3869, 'Edit Visa14', 'http://localhost:8000/edit_visa/14', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', 11, '2022-04-21 08:07:42', '2022-04-21 08:07:42'),
(3870, 'Add Visa Form of studentlimatem', 'http://localhost:8000/visa', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', 11, '2022-04-21 08:13:32', '2022-04-21 08:13:32'),
(3871, 'Edit Visa43', 'http://localhost:8000/edit_visa/43', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', 11, '2022-04-21 11:12:45', '2022-04-21 11:12:45'),
(3872, 'Edit Visa43', 'http://localhost:8000/edit_visa/43', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', 11, '2022-04-21 11:14:21', '2022-04-21 11:14:21'),
(3873, 'add appliction of a student, name:78', 'http://localhost:8000/users/save_application', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 11, '2022-04-26 01:00:19', '2022-04-26 01:00:19'),
(3874, 'Save Course', 'http://localhost:8000/save_courses', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 11, '2022-04-26 01:00:54', '2022-04-26 01:00:54'),
(3875, 'Change Status of Visa is complete', 'http://localhost:8000/visa_complete_status', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 11, '2022-04-26 03:32:13', '2022-04-26 03:32:13'),
(3876, 'Change Status of Visa is complete', 'http://localhost:8000/visa_complete_status', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 11, '2022-04-26 03:32:28', '2022-04-26 03:32:28'),
(3877, 'Change Status of Visa is complete', 'http://localhost:8000/visa_complete_status', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 11, '2022-04-26 03:32:57', '2022-04-26 03:32:57'),
(3878, 'Comment On Visa :40', 'http://localhost:8000/visa_comment/40', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 11, '2022-04-26 03:33:02', '2022-04-26 03:33:02'),
(3879, 'Change Status of Visa is complete', 'http://localhost:8000/visa_complete_status', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 11, '2022-04-26 03:33:17', '2022-04-26 03:33:17'),
(3880, 'Change Status of Visa is complete', 'http://localhost:8000/visa_complete_status', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 11, '2022-04-26 03:33:29', '2022-04-26 03:33:29'),
(3881, 'Comment On Visa :47', 'http://localhost:8000/visa_comment/47', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 11, '2022-04-26 03:33:33', '2022-04-26 03:33:33'),
(3882, 'Change Status of Visa is complete', 'http://localhost:8000/visa_complete_status', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 11, '2022-04-26 03:34:03', '2022-04-26 03:34:03'),
(3883, 'Comment On Visa :33', 'http://localhost:8000/visa_comment/33', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 11, '2022-04-26 03:34:08', '2022-04-26 03:34:08'),
(3884, 'Change Status of Visa is complete', 'http://localhost:8000/visa_complete_status', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 11, '2022-04-26 03:53:56', '2022-04-26 03:53:56'),
(3885, 'Comment On Visa :47', 'http://localhost:8000/visa_comment/47', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 11, '2022-04-26 03:54:00', '2022-04-26 03:54:00'),
(3886, 'Change Status of Visa is complete', 'http://localhost:8000/visa_complete_status', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 11, '2022-04-26 04:01:54', '2022-04-26 04:01:54'),
(3887, 'Change Status of Visa is complete', 'http://localhost:8000/visa_complete_status', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 11, '2022-04-26 04:01:58', '2022-04-26 04:01:58'),
(3888, 'Change Status of Visa is complete', 'http://localhost:8000/visa_complete_status', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 11, '2022-04-26 06:42:50', '2022-04-26 06:42:50'),
(3889, 'Comment On Visa :47', 'http://localhost:8000/visa_comment/47', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 11, '2022-04-26 06:42:54', '2022-04-26 06:42:54'),
(3890, 'Add Visa Form of studentIndigo', 'http://localhost:8000/visa', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', 11, '2022-05-17 09:09:46', '2022-05-17 09:09:46'),
(3891, 'Add Visa Form of studentsanuvaky@mailinator.com', 'http://localhost:8000/visa', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', 11, '2022-05-17 09:14:18', '2022-05-17 09:14:18'),
(3892, 'update student information tab, name:Banks Odonnell', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', 11, '2022-05-19 22:36:39', '2022-05-19 22:36:39'),
(3893, 'update student contact detail, name:Banks Odonnell', 'http://localhost:8000/studentcontactdetail', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', 11, '2022-05-19 22:36:45', '2022-05-19 22:36:45'),
(3894, 'add student other information, name:Banks Odonnell', 'http://localhost:8000/studentotherinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', 11, '2022-05-19 22:36:50', '2022-05-19 22:36:50'),
(3895, 'update student information tab, name:Thornton Manning', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', 11, '2022-05-19 22:43:58', '2022-05-19 22:43:58'),
(3896, 'update student contact detail, name:Thornton Manning', 'http://localhost:8000/studentcontactdetail', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', 11, '2022-05-19 22:44:04', '2022-05-19 22:44:04'),
(3897, 'add student other information, name:Thornton Manning', 'http://localhost:8000/studentotherinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', 11, '2022-05-19 22:44:08', '2022-05-19 22:44:08'),
(3898, 'update student information tab, name:Mcdowell Burns', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', 11, '2022-05-19 22:47:06', '2022-05-19 22:47:06'),
(3899, 'update student contact detail, name:Mcdowell Burns', 'http://localhost:8000/studentcontactdetail', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', 11, '2022-05-19 22:47:13', '2022-05-19 22:47:13'),
(3900, 'add student other information, name:Mcdowell Burns', 'http://localhost:8000/studentotherinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', 11, '2022-05-19 22:47:17', '2022-05-19 22:47:17'),
(3901, 'update student information tab, name:Sloan Rice', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', 11, '2022-05-19 22:50:46', '2022-05-19 22:50:46'),
(3902, 'update student contact detail, name:Sloan Rice', 'http://localhost:8000/studentcontactdetail', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', 11, '2022-05-19 22:50:53', '2022-05-19 22:50:53'),
(3903, 'add student other information, name:Sloan Rice', 'http://localhost:8000/studentotherinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', 11, '2022-05-19 22:50:57', '2022-05-19 22:50:57'),
(3904, 'update student information tab, name:Crawford Villarreal', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 1, '2022-05-19 23:50:31', '2022-05-19 23:50:31'),
(3905, 'update student contact detail, name:Crawford Villarreal', 'http://localhost:8000/studentcontactdetail', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 1, '2022-05-19 23:50:36', '2022-05-19 23:50:36'),
(3906, 'add student other information, name:Crawford Villarreal', 'http://localhost:8000/studentotherinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 1, '2022-05-19 23:50:37', '2022-05-19 23:50:37'),
(3907, 'add appliction of a student, name:1', 'http://localhost:8000/users/save_application', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 1, '2022-05-20 01:50:07', '2022-05-20 01:50:07'),
(3908, 'update student information tab, name:Casey Wyatt', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 1, '2022-05-20 03:37:15', '2022-05-20 03:37:15'),
(3909, 'update student contact detail, name:Casey Wyatt', 'http://localhost:8000/studentcontactdetail', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 1, '2022-05-20 03:37:20', '2022-05-20 03:37:20'),
(3910, 'add student other information, name:Casey Wyatt', 'http://localhost:8000/studentotherinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 1, '2022-05-20 03:37:22', '2022-05-20 03:37:22'),
(3911, 'add appliction of a student, name:2', 'http://localhost:8000/users/save_application', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 1, '2022-05-20 03:49:08', '2022-05-20 03:49:08'),
(3912, 'Add Visa Form of studenthowy@mailinator.com', 'http://localhost:8000/visa', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 11, '2022-05-20 04:04:38', '2022-05-20 04:04:38'),
(3913, 'Add Visa Form of studentzasezy@mailinator.com', 'http://localhost:8000/visa', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 11, '2022-05-20 04:17:31', '2022-05-20 04:17:31'),
(3914, 'Update the application status', 'http://localhost:8000/users/application_status', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 1, '2022-05-20 04:28:21', '2022-05-20 04:28:21'),
(3915, 'Update the application status', 'http://localhost:8000/users/application_status', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 1, '2022-05-20 04:47:37', '2022-05-20 04:47:37'),
(3916, 'Add Visa Form of studentqyjyfisyg@mailinator.com', 'http://localhost:8000/visa', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 11, '2022-05-20 04:54:29', '2022-05-20 04:54:29'),
(3917, 'Add Visa Form of studentlozu@mailinator.com', 'http://localhost:8000/visa', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 11, '2022-05-20 04:57:51', '2022-05-20 04:57:51'),
(3918, 'update student information tab, name:Rodriquez Andrews', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 7, '2022-05-20 05:05:05', '2022-05-20 05:05:05'),
(3919, 'update student contact detail, name:Rodriquez Andrews', 'http://localhost:8000/studentcontactdetail', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 7, '2022-05-20 05:05:10', '2022-05-20 05:05:10'),
(3920, 'add student other information, name:Rodriquez Andrews', 'http://localhost:8000/studentotherinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 7, '2022-05-20 05:05:13', '2022-05-20 05:05:13'),
(3921, 'add appliction of a student, name:7', 'http://localhost:8000/users/save_application', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 7, '2022-05-20 05:12:14', '2022-05-20 05:12:14'),
(3922, 'update student information tab, name:Mills Fox', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 1, '2022-05-23 04:03:32', '2022-05-23 04:03:32'),
(3923, 'update student contact detail, name:Mills Fox', 'http://localhost:8000/studentcontactdetail', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 1, '2022-05-23 04:03:37', '2022-05-23 04:03:37'),
(3924, 'add student other information, name:Mills Fox', 'http://localhost:8000/studentotherinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 1, '2022-05-23 04:03:46', '2022-05-23 04:03:46'),
(3925, 'Edit Visa2', 'http://localhost:8000/edit_visa/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 1, '2022-05-23 04:03:59', '2022-05-23 04:03:59'),
(3926, 'Edit Visa2', 'http://localhost:8000/edit_visa/2', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 1, '2022-05-23 04:05:06', '2022-05-23 04:05:06'),
(3927, 'Add Visa Form of studenthuxex@mailinator.com', 'http://localhost:8000/visa', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 1, '2022-05-23 04:09:24', '2022-05-23 04:09:24'),
(3928, 'create permission, name:user_tab', 'http://localhost:8000/permissions/store', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 07:10:37', '2022-07-19 07:10:37'),
(3929, 'update user role, name: Master User', 'http://localhost:8000/roles/update/6', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 07:11:27', '2022-07-19 07:11:27'),
(3930, 'update student information tab, name:ahsan aad', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:00:20', '2022-07-19 08:00:20'),
(3931, 'update student contact detail, name:ahsan aad', 'http://localhost:8000/studentcontactdetail', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:01:03', '2022-07-19 08:01:03'),
(3932, 'add student other information, name:ahsan aad', 'http://localhost:8000/studentotherinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:01:06', '2022-07-19 08:01:06'),
(3933, 'update student information tab, name:ahsan adfd', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:01:41', '2022-07-19 08:01:41'),
(3934, 'update student information, name:ahsan adfd', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:03:11', '2022-07-19 08:03:11');
INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip`, `agent`, `user_id`, `created_at`, `updated_at`) VALUES
(3935, 'update student information, name:ahsan adfd', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:05:16', '2022-07-19 08:05:16'),
(3936, 'update student information, name:ahsan adfd', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:17:26', '2022-07-19 08:17:26'),
(3937, 'update record of student name:ahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:17:38', '2022-07-19 08:17:38'),
(3938, 'update record of studentahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:17:38', '2022-07-19 08:17:38'),
(3939, 'update student information, name:ahsan adfd', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:17:52', '2022-07-19 08:17:52'),
(3940, 'update record of student name:ahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:19:44', '2022-07-19 08:19:44'),
(3941, 'update record of studentahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:19:44', '2022-07-19 08:19:44'),
(3942, 'update student information, name:ahsan adfd', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:19:52', '2022-07-19 08:19:52'),
(3943, 'update record of student name:ahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:20:37', '2022-07-19 08:20:37'),
(3944, 'update record of studentahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:20:37', '2022-07-19 08:20:37'),
(3945, 'update student information, name:ahsan adfd', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:20:41', '2022-07-19 08:20:41'),
(3946, 'update student information, name:ahsan adfd', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:21:28', '2022-07-19 08:21:28'),
(3947, 'update record of student name:ahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:23:20', '2022-07-19 08:23:20'),
(3948, 'update record of studentahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:23:20', '2022-07-19 08:23:20'),
(3949, 'update record of student name:ahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:24:56', '2022-07-19 08:24:56'),
(3950, 'update record of studentahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:24:56', '2022-07-19 08:24:56'),
(3951, 'update record of student name:ahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:25:33', '2022-07-19 08:25:33'),
(3952, 'update record of studentahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:25:33', '2022-07-19 08:25:33'),
(3953, 'update record of student name:ahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:26:03', '2022-07-19 08:26:03'),
(3954, 'update record of studentahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:26:03', '2022-07-19 08:26:03'),
(3955, 'update record of student name:ahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:26:42', '2022-07-19 08:26:42'),
(3956, 'update record of studentahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:26:42', '2022-07-19 08:26:42'),
(3957, 'update record of student name:ahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:27:34', '2022-07-19 08:27:34'),
(3958, 'update record of studentahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:27:34', '2022-07-19 08:27:34'),
(3959, 'update record of student name:ahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:28:47', '2022-07-19 08:28:47'),
(3960, 'update record of studentahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:28:47', '2022-07-19 08:28:47'),
(3961, 'update record of student name:ahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:29:10', '2022-07-19 08:29:10'),
(3962, 'update record of studentahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:29:10', '2022-07-19 08:29:10'),
(3963, 'update record of student name:ahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:30:14', '2022-07-19 08:30:14'),
(3964, 'update record of studentahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:30:14', '2022-07-19 08:30:14'),
(3965, 'update record of student name:ahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:32:07', '2022-07-19 08:32:07'),
(3966, 'update record of studentahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:32:07', '2022-07-19 08:32:07'),
(3967, 'update record of student name:ahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:33:06', '2022-07-19 08:33:06'),
(3968, 'update record of studentahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:33:06', '2022-07-19 08:33:06'),
(3969, 'update record of student name:ahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:39:49', '2022-07-19 08:39:49'),
(3970, 'update record of studentahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:39:49', '2022-07-19 08:39:49'),
(3971, 'update record of student name:ahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:40:16', '2022-07-19 08:40:16'),
(3972, 'update record of studentahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:40:16', '2022-07-19 08:40:16'),
(3973, 'update record of student name:ahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:40:57', '2022-07-19 08:40:57'),
(3974, 'update record of studentahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:40:57', '2022-07-19 08:40:57'),
(3975, 'update record of student name:ahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:41:34', '2022-07-19 08:41:34'),
(3976, 'update record of studentahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:41:34', '2022-07-19 08:41:34'),
(3977, 'update record of student name:ahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:44:36', '2022-07-19 08:44:36'),
(3978, 'update record of studentahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 08:44:36', '2022-07-19 08:44:36'),
(3979, 'update student information tab, name:ahsan ahsan', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 08:56:16', '2022-07-19 08:56:16'),
(3980, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 08:58:41', '2022-07-19 08:58:41'),
(3981, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 08:58:41', '2022-07-19 08:58:41'),
(3982, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 08:59:15', '2022-07-19 08:59:15'),
(3983, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 08:59:15', '2022-07-19 08:59:15'),
(3984, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 09:00:00', '2022-07-19 09:00:00'),
(3985, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 09:00:00', '2022-07-19 09:00:00'),
(3986, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 09:00:14', '2022-07-19 09:00:14'),
(3987, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 09:00:14', '2022-07-19 09:00:14'),
(3988, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:14:17', '2022-07-19 10:14:17'),
(3989, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:14:17', '2022-07-19 10:14:17'),
(3990, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:14:44', '2022-07-19 10:14:44'),
(3991, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:14:44', '2022-07-19 10:14:44'),
(3992, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:15:33', '2022-07-19 10:15:33'),
(3993, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:15:33', '2022-07-19 10:15:33'),
(3994, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:16:32', '2022-07-19 10:16:32'),
(3995, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:16:32', '2022-07-19 10:16:32'),
(3996, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:16:59', '2022-07-19 10:16:59'),
(3997, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:16:59', '2022-07-19 10:16:59'),
(3998, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:17:02', '2022-07-19 10:17:02'),
(3999, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:17:02', '2022-07-19 10:17:02'),
(4000, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:17:50', '2022-07-19 10:17:50'),
(4001, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:17:50', '2022-07-19 10:17:50'),
(4002, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:18:19', '2022-07-19 10:18:19'),
(4003, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:18:19', '2022-07-19 10:18:19'),
(4004, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:19:16', '2022-07-19 10:19:16'),
(4005, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:19:16', '2022-07-19 10:19:16'),
(4006, 'update student information, name:ahsan ahsan', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:19:20', '2022-07-19 10:19:20'),
(4007, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:19:50', '2022-07-19 10:19:50'),
(4008, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:19:50', '2022-07-19 10:19:50'),
(4009, 'update student information, name:ahsan ahsan', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:19:51', '2022-07-19 10:19:51'),
(4010, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:20:27', '2022-07-19 10:20:27'),
(4011, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:20:27', '2022-07-19 10:20:27'),
(4012, 'update student information, name:ahsan ahsan', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:20:28', '2022-07-19 10:20:28'),
(4013, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:28:58', '2022-07-19 10:28:58'),
(4014, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:28:58', '2022-07-19 10:28:58'),
(4015, 'update student information, name:ahsan ahsan', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:29:00', '2022-07-19 10:29:00'),
(4016, 'update student information, name:ahsan ahsan', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:39:45', '2022-07-19 10:39:45'),
(4017, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:40:04', '2022-07-19 10:40:04'),
(4018, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:40:04', '2022-07-19 10:40:04'),
(4019, 'update student information, name:ahsan ahsan', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:40:10', '2022-07-19 10:40:10'),
(4020, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:43:15', '2022-07-19 10:43:15'),
(4021, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:43:15', '2022-07-19 10:43:15'),
(4022, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:43:35', '2022-07-19 10:43:35'),
(4023, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:43:35', '2022-07-19 10:43:35'),
(4024, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:43:54', '2022-07-19 10:43:54'),
(4025, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:43:54', '2022-07-19 10:43:54'),
(4026, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:49:00', '2022-07-19 10:49:00'),
(4027, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:49:00', '2022-07-19 10:49:00'),
(4028, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:49:24', '2022-07-19 10:49:24'),
(4029, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:49:24', '2022-07-19 10:49:24'),
(4030, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:49:39', '2022-07-19 10:49:39'),
(4031, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:49:39', '2022-07-19 10:49:39'),
(4032, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:50:25', '2022-07-19 10:50:25'),
(4033, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:50:25', '2022-07-19 10:50:25'),
(4034, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:50:37', '2022-07-19 10:50:37'),
(4035, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:50:37', '2022-07-19 10:50:37'),
(4036, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:51:50', '2022-07-19 10:51:50'),
(4037, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:51:50', '2022-07-19 10:51:50'),
(4038, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:53:07', '2022-07-19 10:53:07'),
(4039, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:53:07', '2022-07-19 10:53:07'),
(4040, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:53:49', '2022-07-19 10:53:49'),
(4041, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:53:49', '2022-07-19 10:53:49'),
(4042, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:54:43', '2022-07-19 10:54:43'),
(4043, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:54:43', '2022-07-19 10:54:43'),
(4044, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:56:03', '2022-07-19 10:56:03'),
(4045, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:56:03', '2022-07-19 10:56:03'),
(4046, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:59:07', '2022-07-19 10:59:07'),
(4047, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:59:07', '2022-07-19 10:59:07'),
(4048, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:59:48', '2022-07-19 10:59:48'),
(4049, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 10:59:48', '2022-07-19 10:59:48'),
(4050, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 11:00:51', '2022-07-19 11:00:51'),
(4051, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 11:00:51', '2022-07-19 11:00:51'),
(4052, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 11:01:15', '2022-07-19 11:01:15'),
(4053, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 11:01:15', '2022-07-19 11:01:15'),
(4054, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 11:04:00', '2022-07-19 11:04:00'),
(4055, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 11:04:00', '2022-07-19 11:04:00'),
(4056, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 11:05:30', '2022-07-19 11:05:30'),
(4057, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 11:05:30', '2022-07-19 11:05:30'),
(4058, 'update record of student name:ahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 11:06:19', '2022-07-19 11:06:19'),
(4059, 'update record of studentahsan adfd', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 7, '2022-07-19 11:06:19', '2022-07-19 11:06:19'),
(4060, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 11:07:21', '2022-07-19 11:07:21'),
(4061, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 11:07:21', '2022-07-19 11:07:21'),
(4062, 'update student information, name:ahsan ahsan', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 11:07:29', '2022-07-19 11:07:29'),
(4063, 'edit student screen, student:ahsan aad', 'http://localhost:8000/student/3/edit', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 11:08:33', '2022-07-19 11:08:33'),
(4064, 'update student information tab, name:ahsan usman asghar', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:11:55', '2022-07-19 11:11:55'),
(4065, 'update record of student name:ahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:12:52', '2022-07-19 11:12:52'),
(4066, 'update record of studentahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:12:52', '2022-07-19 11:12:52'),
(4067, 'update record of student name:ahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:14:02', '2022-07-19 11:14:02'),
(4068, 'update record of studentahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:14:02', '2022-07-19 11:14:02'),
(4069, 'update record of student name:ahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:14:33', '2022-07-19 11:14:33'),
(4070, 'update record of studentahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:14:33', '2022-07-19 11:14:33'),
(4071, 'update record of student name:ahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:15:43', '2022-07-19 11:15:43'),
(4072, 'update record of studentahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:15:43', '2022-07-19 11:15:43'),
(4073, 'update record of student name:ahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:17:48', '2022-07-19 11:17:48'),
(4074, 'update record of studentahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:17:48', '2022-07-19 11:17:48'),
(4075, 'update record of student name:ahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:19:42', '2022-07-19 11:19:42'),
(4076, 'update record of studentahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:19:42', '2022-07-19 11:19:42'),
(4077, 'update record of student name:ahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:21:43', '2022-07-19 11:21:43'),
(4078, 'update record of studentahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:21:43', '2022-07-19 11:21:43'),
(4079, 'update record of student name:ahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:22:19', '2022-07-19 11:22:19'),
(4080, 'update record of studentahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:22:19', '2022-07-19 11:22:19'),
(4081, 'update record of student name:ahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:23:04', '2022-07-19 11:23:04'),
(4082, 'update record of studentahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:23:04', '2022-07-19 11:23:04'),
(4083, 'update record of student name:ahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:23:51', '2022-07-19 11:23:51'),
(4084, 'update record of studentahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:23:51', '2022-07-19 11:23:51'),
(4085, 'update record of student name:ahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:25:04', '2022-07-19 11:25:04'),
(4086, 'update record of studentahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:25:04', '2022-07-19 11:25:04'),
(4087, 'update record of student name:ahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:26:59', '2022-07-19 11:26:59'),
(4088, 'update record of studentahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:26:59', '2022-07-19 11:26:59'),
(4089, 'update record of student name:ahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:29:33', '2022-07-19 11:29:33'),
(4090, 'update record of studentahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:29:33', '2022-07-19 11:29:33'),
(4091, 'update record of student name:ahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:32:34', '2022-07-19 11:32:34'),
(4092, 'update record of studentahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:32:34', '2022-07-19 11:32:34'),
(4093, 'update record of student name:ahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:34:13', '2022-07-19 11:34:13'),
(4094, 'update record of studentahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:34:13', '2022-07-19 11:34:13'),
(4095, 'update record of student name:ahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:34:55', '2022-07-19 11:34:55'),
(4096, 'update record of studentahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:34:55', '2022-07-19 11:34:55'),
(4097, 'update record of student name:ahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:35:53', '2022-07-19 11:35:53'),
(4098, 'update record of studentahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:35:53', '2022-07-19 11:35:53'),
(4099, 'update record of student name:ahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:36:16', '2022-07-19 11:36:16'),
(4100, 'update record of studentahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:36:16', '2022-07-19 11:36:16'),
(4101, 'update record of student name:ahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:37:00', '2022-07-19 11:37:00'),
(4102, 'update record of studentahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:37:00', '2022-07-19 11:37:00'),
(4103, 'update record of student name:ahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:37:16', '2022-07-19 11:37:16'),
(4104, 'update record of studentahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:37:16', '2022-07-19 11:37:16'),
(4105, 'update record of student name:ahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:37:51', '2022-07-19 11:37:51'),
(4106, 'update record of studentahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:37:51', '2022-07-19 11:37:51'),
(4107, 'update record of student name:ahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:38:45', '2022-07-19 11:38:45'),
(4108, 'update record of studentahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:38:45', '2022-07-19 11:38:45'),
(4109, 'update record of student name:ahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:39:26', '2022-07-19 11:39:26'),
(4110, 'update record of studentahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:39:26', '2022-07-19 11:39:26'),
(4111, 'update record of student name:ahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:40:21', '2022-07-19 11:40:21'),
(4112, 'update record of studentahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:40:21', '2022-07-19 11:40:21'),
(4113, 'update record of student name:ahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:41:34', '2022-07-19 11:41:34'),
(4114, 'update record of studentahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:41:34', '2022-07-19 11:41:34'),
(4115, 'update record of student name:ahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:41:53', '2022-07-19 11:41:53'),
(4116, 'update record of studentahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:41:53', '2022-07-19 11:41:53'),
(4117, 'update record of student name:ahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 11:43:30', '2022-07-19 11:43:30'),
(4118, 'update record of studentahsan ahsan', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-19 11:43:30', '2022-07-19 11:43:30'),
(4119, 'update record of student name:ahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:45:18', '2022-07-19 11:45:18'),
(4120, 'update record of studentahsan usman asghar', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 11:45:18', '2022-07-19 11:45:18'),
(4121, 'update student information tab, name:kamran assdkfjads;', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-19 12:04:07', '2022-07-19 12:04:07'),
(4122, 'update record of student name:kamran assdkfjads;', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:12:06', '2022-07-20 03:12:06'),
(4123, 'update record of studentkamran assdkfjads;', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:12:06', '2022-07-20 03:12:06'),
(4124, 'update record of student name:kamran assdkfjads;', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:12:19', '2022-07-20 03:12:19'),
(4125, 'update record of studentkamran assdkfjads;', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:12:19', '2022-07-20 03:12:19'),
(4126, 'update student contact detail, name:kamran assdkfjads;', 'http://localhost:8000/studentcontactdetail', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:14:11', '2022-07-20 03:14:11'),
(4127, 'add student other information, name:kamran assdkfjads;', 'http://localhost:8000/studentotherinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:14:13', '2022-07-20 03:14:13'),
(4128, 'update student information tab, name:kamran kamran212', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:16:24', '2022-07-20 03:16:24');
INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip`, `agent`, `user_id`, `created_at`, `updated_at`) VALUES
(4129, 'update student contact detail, name:kamran kamran212', 'http://localhost:8000/studentcontactdetail', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:17:27', '2022-07-20 03:17:27'),
(4130, 'add student other information, name:kamran kamran212', 'http://localhost:8000/studentotherinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:17:30', '2022-07-20 03:17:30'),
(4131, 'update student information tab, name:kamran2222 kamran2222', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:18:47', '2022-07-20 03:18:47'),
(4132, 'update record of student name:kamran2222 kamran2222', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:20:09', '2022-07-20 03:20:09'),
(4133, 'update record of studentkamran2222 kamran2222', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:20:09', '2022-07-20 03:20:09'),
(4134, 'update student contact detail, name:kamran2222 kamran2222', 'http://localhost:8000/studentcontactdetail', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:20:23', '2022-07-20 03:20:23'),
(4135, 'add student other information, name:kamran2222 kamran2222', 'http://localhost:8000/studentotherinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:20:28', '2022-07-20 03:20:28'),
(4136, 'update student information tab, name:Harrell Avila', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:22:18', '2022-07-20 03:22:18'),
(4137, 'update student contact detail, name:Harrell Avila', 'http://localhost:8000/studentcontactdetail', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:22:32', '2022-07-20 03:22:32'),
(4138, 'add student other information, name:Harrell Avila', 'http://localhost:8000/studentotherinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:22:36', '2022-07-20 03:22:36'),
(4139, 'update student information tab, name:Harrell Harrell', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:23:42', '2022-07-20 03:23:42'),
(4140, 'update record of student name:Harrell Harrell', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:24:05', '2022-07-20 03:24:05'),
(4141, 'update record of studentHarrell Harrell', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:24:05', '2022-07-20 03:24:05'),
(4142, 'update student contact detail, name:Harrell Harrell', 'http://localhost:8000/studentcontactdetail', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:24:19', '2022-07-20 03:24:19'),
(4143, 'add student other information, name:Harrell Harrell', 'http://localhost:8000/studentotherinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:24:22', '2022-07-20 03:24:22'),
(4144, 'update student information tab, name:Harrell Harrell', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:35:40', '2022-07-20 03:35:40'),
(4145, 'update record of student name:Harrell Harrell', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:37:00', '2022-07-20 03:37:00'),
(4146, 'update record of studentHarrell Harrell', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:37:00', '2022-07-20 03:37:00'),
(4147, 'update record of student name:Harrell Harrell', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:37:47', '2022-07-20 03:37:47'),
(4148, 'update record of studentHarrell Harrell', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:37:47', '2022-07-20 03:37:47'),
(4149, 'update record of student name:Harrell Harrell', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:41:18', '2022-07-20 03:41:18'),
(4150, 'update record of studentHarrell Harrell', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:41:18', '2022-07-20 03:41:18'),
(4151, 'update record of student name:Harrell Harrell', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:42:50', '2022-07-20 03:42:50'),
(4152, 'update record of studentHarrell Harrell', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:42:50', '2022-07-20 03:42:50'),
(4153, 'update student contact detail, name:Harrell Harrell', 'http://localhost:8000/studentcontactdetail', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:46:17', '2022-07-20 03:46:17'),
(4154, 'add student other information, name:Harrell Harrell', 'http://localhost:8000/studentotherinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:46:20', '2022-07-20 03:46:20'),
(4155, 'update student information tab, name:Harrell Burton', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:50:18', '2022-07-20 03:50:18'),
(4156, 'update record of student name:Harrell Burton', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:51:33', '2022-07-20 03:51:33'),
(4157, 'update record of studentHarrell Burton', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:51:33', '2022-07-20 03:51:33'),
(4158, 'update record of student name:Harrell Burton', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:55:25', '2022-07-20 03:55:25'),
(4159, 'update record of studentHarrell Burton', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:55:25', '2022-07-20 03:55:25'),
(4160, 'update record of student name:Harrell Burton', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:57:19', '2022-07-20 03:57:19'),
(4161, 'update record of studentHarrell Burton', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:57:19', '2022-07-20 03:57:19'),
(4162, 'update record of student name:Harrell Burton', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:57:48', '2022-07-20 03:57:48'),
(4163, 'update record of studentHarrell Burton', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:57:48', '2022-07-20 03:57:48'),
(4164, 'update record of student name:Harrell Burton', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:58:45', '2022-07-20 03:58:45'),
(4165, 'update record of studentHarrell Burton', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 03:58:45', '2022-07-20 03:58:45'),
(4166, 'update record of student name:Harrell Burton', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 04:19:36', '2022-07-20 04:19:36'),
(4167, 'update record of studentHarrell Burton', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 04:19:36', '2022-07-20 04:19:36'),
(4168, 'update record of student name:Harrell Burton', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 04:20:27', '2022-07-20 04:20:27'),
(4169, 'update record of studentHarrell Burton', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 04:20:27', '2022-07-20 04:20:27'),
(4170, 'update student information tab, name:Harrell2222 Harrell', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 04:22:17', '2022-07-20 04:22:17'),
(4171, 'update student contact detail, name:Harrell2222 Harrell', 'http://localhost:8000/studentcontactdetail', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 04:26:59', '2022-07-20 04:26:59'),
(4172, 'add student other information, name:Harrell2222 Harrell', 'http://localhost:8000/studentotherinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 04:27:01', '2022-07-20 04:27:01'),
(4173, 'update record of student name:Harrell Burton', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 04:35:33', '2022-07-20 04:35:33'),
(4174, 'update record of studentHarrell Burton', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 04:35:33', '2022-07-20 04:35:33'),
(4175, 'update record of student name:Harrell Burton', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 04:43:57', '2022-07-20 04:43:57'),
(4176, 'update record of studentHarrell Burton', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 04:43:57', '2022-07-20 04:43:57'),
(4177, 'update record of student name:Harrell Burton', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 04:44:39', '2022-07-20 04:44:39'),
(4178, 'update record of studentHarrell Burton', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 04:44:39', '2022-07-20 04:44:39'),
(4179, 'update record of student name:Harrell Burton', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 04:45:07', '2022-07-20 04:45:07'),
(4180, 'update record of studentHarrell Burton', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 04:45:07', '2022-07-20 04:45:07'),
(4181, 'update student information, name:Harrell Burton', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 04:45:09', '2022-07-20 04:45:09'),
(4182, 'update student contact detail, name:Harrell Burton', 'http://localhost:8000/studentcontactdetail', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 04:45:18', '2022-07-20 04:45:18'),
(4183, 'add student other information, name:Harrell Burton', 'http://localhost:8000/studentotherinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 04:45:20', '2022-07-20 04:45:20'),
(4184, 'update student information tab, name:Rodriquez Rodriquez', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:01:23', '2022-07-20 05:01:23'),
(4185, 'update record of student name:Rodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:03:56', '2022-07-20 05:03:56'),
(4186, 'update record of studentRodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:03:56', '2022-07-20 05:03:56'),
(4187, 'update student information, name:Rodriquez Rodriquez', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:03:57', '2022-07-20 05:03:57'),
(4188, 'update record of student name:Rodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:09:10', '2022-07-20 05:09:10'),
(4189, 'update record of studentRodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:09:10', '2022-07-20 05:09:10'),
(4190, 'update student information, name:Rodriquez Rodriquez', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:09:12', '2022-07-20 05:09:12'),
(4191, 'update record of student name:Rodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:11:49', '2022-07-20 05:11:49'),
(4192, 'update record of studentRodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:11:49', '2022-07-20 05:11:49'),
(4193, 'update student information, name:Rodriquez Rodriquez', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:11:52', '2022-07-20 05:11:52'),
(4194, 'update record of student name:Rodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:15:17', '2022-07-20 05:15:17'),
(4195, 'update record of studentRodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:15:17', '2022-07-20 05:15:17'),
(4196, 'update student information, name:Rodriquez Rodriquez', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:15:19', '2022-07-20 05:15:19'),
(4197, 'update record of student name:Rodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:18:21', '2022-07-20 05:18:21'),
(4198, 'update record of studentRodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:18:21', '2022-07-20 05:18:21'),
(4199, 'update student information, name:Rodriquez Rodriquez', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:18:23', '2022-07-20 05:18:23'),
(4200, 'update record of student name:Rodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:18:46', '2022-07-20 05:18:46'),
(4201, 'update record of studentRodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:18:46', '2022-07-20 05:18:46'),
(4202, 'update student information, name:Rodriquez Rodriquez', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:18:47', '2022-07-20 05:18:47'),
(4203, 'update record of student name:Rodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:23:57', '2022-07-20 05:23:57'),
(4204, 'update record of studentRodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:23:57', '2022-07-20 05:23:57'),
(4205, 'update student information, name:Rodriquez Rodriquez', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:23:59', '2022-07-20 05:23:59'),
(4206, 'update record of student name:Rodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:31:01', '2022-07-20 05:31:01'),
(4207, 'update record of studentRodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:31:01', '2022-07-20 05:31:01'),
(4208, 'update student information, name:Rodriquez Rodriquez', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:31:02', '2022-07-20 05:31:02'),
(4209, 'update record of student name:Rodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:31:25', '2022-07-20 05:31:25'),
(4210, 'update record of studentRodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:31:25', '2022-07-20 05:31:25'),
(4211, 'update student information, name:Rodriquez Rodriquez', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:31:28', '2022-07-20 05:31:28'),
(4212, 'update record of student name:Rodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:34:33', '2022-07-20 05:34:33'),
(4213, 'update record of studentRodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:34:33', '2022-07-20 05:34:33'),
(4214, 'update student information, name:Rodriquez Rodriquez', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:34:35', '2022-07-20 05:34:35'),
(4215, 'update record of student name:Rodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:35:17', '2022-07-20 05:35:17'),
(4216, 'update record of studentRodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:35:17', '2022-07-20 05:35:17'),
(4217, 'update student information, name:Rodriquez Rodriquez', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:35:18', '2022-07-20 05:35:18'),
(4218, 'update record of student name:Rodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:35:42', '2022-07-20 05:35:42'),
(4219, 'update record of studentRodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:35:42', '2022-07-20 05:35:42'),
(4220, 'update student information, name:Rodriquez Rodriquez', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:35:44', '2022-07-20 05:35:44'),
(4221, 'update record of student name:Rodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:41:17', '2022-07-20 05:41:17'),
(4222, 'update record of studentRodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:41:17', '2022-07-20 05:41:17'),
(4223, 'update student information, name:Rodriquez Rodriquez', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:41:19', '2022-07-20 05:41:19'),
(4224, 'update record of student name:Rodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:42:25', '2022-07-20 05:42:25'),
(4225, 'update record of studentRodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:42:25', '2022-07-20 05:42:25'),
(4226, 'update student information, name:Rodriquez Rodriquez', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:42:27', '2022-07-20 05:42:27'),
(4227, 'update record of student name:Rodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:43:18', '2022-07-20 05:43:18'),
(4228, 'update record of studentRodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:43:18', '2022-07-20 05:43:18'),
(4229, 'update student information, name:Rodriquez Rodriquez', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:43:19', '2022-07-20 05:43:19'),
(4230, 'update record of student name:Rodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:50:58', '2022-07-20 05:50:58'),
(4231, 'update record of studentRodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:50:58', '2022-07-20 05:50:58'),
(4232, 'update student information, name:Rodriquez Rodriquez', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:50:59', '2022-07-20 05:50:59'),
(4233, 'update student contact detail, name:Rodriquez Rodriquez', 'http://localhost:8000/studentcontactdetail', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:51:10', '2022-07-20 05:51:10'),
(4234, 'update record of student name:Rodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:52:02', '2022-07-20 05:52:02'),
(4235, 'update record of studentRodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:52:02', '2022-07-20 05:52:02'),
(4236, 'update student information, name:Rodriquez Rodriquez', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:52:04', '2022-07-20 05:52:04'),
(4237, 'update student contact detail, name:Rodriquez Rodriquez', 'http://localhost:8000/studentcontactdetail', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:52:06', '2022-07-20 05:52:06'),
(4238, 'update record of student name:Rodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:52:42', '2022-07-20 05:52:42'),
(4239, 'update record of studentRodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:52:42', '2022-07-20 05:52:42'),
(4240, 'update student information, name:Rodriquez Rodriquez', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:52:44', '2022-07-20 05:52:44'),
(4241, 'update student contact detail, name:Rodriquez Rodriquez', 'http://localhost:8000/studentcontactdetail', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:52:47', '2022-07-20 05:52:47'),
(4242, 'update record of student name:Rodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:53:14', '2022-07-20 05:53:14'),
(4243, 'update record of studentRodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:53:14', '2022-07-20 05:53:14'),
(4244, 'update student information, name:Rodriquez Rodriquez', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:53:16', '2022-07-20 05:53:16'),
(4245, 'update record of student name:Rodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:53:29', '2022-07-20 05:53:29'),
(4246, 'update record of studentRodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:53:29', '2022-07-20 05:53:29'),
(4247, 'update student information, name:Rodriquez Rodriquez', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:53:31', '2022-07-20 05:53:31'),
(4248, 'update student contact detail, name:Rodriquez Rodriquez', 'http://localhost:8000/studentcontactdetail', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:53:33', '2022-07-20 05:53:33'),
(4249, 'update record of student name:Rodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:54:24', '2022-07-20 05:54:24'),
(4250, 'update record of studentRodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:54:24', '2022-07-20 05:54:24'),
(4251, 'update student information, name:Rodriquez Rodriquez', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:54:26', '2022-07-20 05:54:26'),
(4252, 'update student contact detail, name:Rodriquez Rodriquez', 'http://localhost:8000/studentcontactdetail', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:54:28', '2022-07-20 05:54:28'),
(4253, 'update record of student name:Rodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:57:03', '2022-07-20 05:57:03'),
(4254, 'update record of studentRodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:57:03', '2022-07-20 05:57:03'),
(4255, 'update student information, name:Rodriquez Rodriquez', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:57:05', '2022-07-20 05:57:05'),
(4256, 'update student contact detail, name:Rodriquez Rodriquez', 'http://localhost:8000/studentcontactdetail', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 05:57:08', '2022-07-20 05:57:08'),
(4257, 'update record of student name:Rodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:09:50', '2022-07-20 06:09:50'),
(4258, 'update record of studentRodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:09:50', '2022-07-20 06:09:50'),
(4259, 'update student information, name:Rodriquez Rodriquez', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:09:54', '2022-07-20 06:09:54'),
(4260, 'update student contact detail, name:Rodriquez Rodriquez', 'http://localhost:8000/studentcontactdetail', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:09:59', '2022-07-20 06:09:59'),
(4261, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:10:31', '2022-07-20 06:10:31'),
(4262, 'Add Resource name: partner', 'http://localhost:8000/resource', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:10:40', '2022-07-20 06:10:40'),
(4263, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:10:41', '2022-07-20 06:10:41'),
(4264, 'Add type of Resource:partner 1', 'http://localhost:8000/dropdown_type', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:11:00', '2022-07-20 06:11:00'),
(4265, 'Add type of Resource:partner 2', 'http://localhost:8000/dropdown_type', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:11:08', '2022-07-20 06:11:08'),
(4266, 'Add type of Resource:partner 3', 'http://localhost:8000/dropdown_type', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:11:12', '2022-07-20 06:11:12'),
(4267, 'update student information tab, name:as;dljf; jk;asdjfkl;', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:12:42', '2022-07-20 06:12:42'),
(4268, 'update student contact detail, name:as;dljf; jk;asdjfkl;', 'http://localhost:8000/studentcontactdetail', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:12:59', '2022-07-20 06:12:59'),
(4269, 'update record of student name:as;dljf; jk;asdjfkl;', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:14:24', '2022-07-20 06:14:24'),
(4270, 'update record of studentas;dljf; jk;asdjfkl;', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:14:24', '2022-07-20 06:14:24'),
(4271, 'update student information, name:as;dljf; jk;asdjfkl;', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:14:27', '2022-07-20 06:14:27'),
(4272, 'update student contact detail, name:as;dljf; jk;asdjfkl;', 'http://localhost:8000/studentcontactdetail', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:14:29', '2022-07-20 06:14:29'),
(4273, 'update record of student name:as;dljf; jk;asdjfkl;', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:17:45', '2022-07-20 06:17:45'),
(4274, 'update record of studentas;dljf; jk;asdjfkl;', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:17:45', '2022-07-20 06:17:45'),
(4275, 'update student information, name:as;dljf; jk;asdjfkl;', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:17:48', '2022-07-20 06:17:48'),
(4276, 'update student contact detail, name:as;dljf; jk;asdjfkl;', 'http://localhost:8000/studentcontactdetail', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:17:50', '2022-07-20 06:17:50'),
(4277, 'add student other information, name:as;dljf; jk;asdjfkl;', 'http://localhost:8000/studentotherinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:18:05', '2022-07-20 06:18:05'),
(4278, 'update student information tab, name:Harrell Harrell', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:19:17', '2022-07-20 06:19:17'),
(4279, 'update student contact detail, name:Harrell Harrell', 'http://localhost:8000/studentcontactdetail', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:19:33', '2022-07-20 06:19:33'),
(4280, 'update student contact detail, name:Harrell Harrell', 'http://localhost:8000/studentcontactdetail', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:19:46', '2022-07-20 06:19:46'),
(4281, 'update record of student name:Harrell Harrell', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:21:22', '2022-07-20 06:21:22'),
(4282, 'update record of studentHarrell Harrell', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:21:22', '2022-07-20 06:21:22'),
(4283, 'update student information, name:Harrell Harrell', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:21:24', '2022-07-20 06:21:24'),
(4284, 'update student contact detail, name:Harrell Harrell', 'http://localhost:8000/studentcontactdetail', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:21:26', '2022-07-20 06:21:26'),
(4285, 'add student other information, name:Harrell Harrell', 'http://localhost:8000/studentotherinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:21:51', '2022-07-20 06:21:51'),
(4286, 'update student information tab, name:Harrell Harrell', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:23:04', '2022-07-20 06:23:04'),
(4287, 'update student contact detail, name:Harrell Harrell', 'http://localhost:8000/studentcontactdetail', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:23:18', '2022-07-20 06:23:18'),
(4288, 'add student other information, name:Harrell Harrell', 'http://localhost:8000/studentotherinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:23:26', '2022-07-20 06:23:26'),
(4289, 'update record of student name:Rodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:24:49', '2022-07-20 06:24:49'),
(4290, 'update record of studentRodriquez Rodriquez', 'http://localhost:8000/student', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:24:49', '2022-07-20 06:24:49'),
(4291, 'update student information, name:Rodriquez Rodriquez', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:24:52', '2022-07-20 06:24:52'),
(4292, 'update student contact detail, name:Rodriquez Rodriquez', 'http://localhost:8000/studentcontactdetail', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:24:54', '2022-07-20 06:24:54'),
(4293, 'add student other information, name:Rodriquez Rodriquez', 'http://localhost:8000/studentotherinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:25:23', '2022-07-20 06:25:23'),
(4294, 'update student information tab, name:Alford Wilkerson', 'http://localhost:8000/studentinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:26:16', '2022-07-20 06:26:16'),
(4295, 'update student contact detail, name:Alford Wilkerson', 'http://localhost:8000/studentcontactdetail', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:26:22', '2022-07-20 06:26:22'),
(4296, 'add student other information, name:Alford Wilkerson', 'http://localhost:8000/studentotherinformation', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:26:31', '2022-07-20 06:26:31'),
(4297, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:28:29', '2022-07-20 06:28:29'),
(4298, 'type of resource is update of:Office 1', 'http://localhost:8000/update_dropdown_type', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:28:36', '2022-07-20 06:28:36'),
(4299, 'type of resource is update of:Office 2', 'http://localhost:8000/update_dropdown_type', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:29:21', '2022-07-20 06:29:21'),
(4300, 'type of resource is update of:Office 1', 'http://localhost:8000/update_dropdown_type', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:29:25', '2022-07-20 06:29:25'),
(4301, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:31:46', '2022-07-20 06:31:46'),
(4302, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:32:02', '2022-07-20 06:32:02'),
(4303, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:33:01', '2022-07-20 06:33:01'),
(4304, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:39:49', '2022-07-20 06:39:49'),
(4305, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:40:35', '2022-07-20 06:40:35'),
(4306, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:41:35', '2022-07-20 06:41:35');
INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip`, `agent`, `user_id`, `created_at`, `updated_at`) VALUES
(4307, 'Update Resource Record:Name of cohort', 'http://localhost:8000/update_dropdown/5', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:41:44', '2022-07-20 06:41:44'),
(4308, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:42:03', '2022-07-20 06:42:03'),
(4309, 'Update Resource Record:Visa Type', 'http://localhost:8000/update_dropdown/9', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:42:11', '2022-07-20 06:42:11'),
(4310, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:43:14', '2022-07-20 06:43:14'),
(4311, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:44:11', '2022-07-20 06:44:11'),
(4312, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:44:50', '2022-07-20 06:44:50'),
(4313, 'Update Resource Record:Study Destination', 'http://localhost:8000/update_dropdown/6', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:44:56', '2022-07-20 06:44:56'),
(4314, 'type of resource deleted name:type 1', 'http://localhost:8000/delete_dropdowntype?dropdowns_id=2&id=128', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:45:12', '2022-07-20 06:45:12'),
(4315, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:45:22', '2022-07-20 06:45:22'),
(4316, 'type of resource is update of:Office 3', 'http://localhost:8000/update_dropdown_type', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:45:46', '2022-07-20 06:45:46'),
(4317, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:45:59', '2022-07-20 06:45:59'),
(4318, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:46:29', '2022-07-20 06:46:29'),
(4319, 'Update Resource Record:Name of cohort', 'http://localhost:8000/update_dropdown/5', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:46:42', '2022-07-20 06:46:42'),
(4320, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:47:15', '2022-07-20 06:47:15'),
(4321, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:47:39', '2022-07-20 06:47:39'),
(4322, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:47:59', '2022-07-20 06:47:59'),
(4323, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:48:15', '2022-07-20 06:48:15'),
(4324, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:48:30', '2022-07-20 06:48:30'),
(4325, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:53:56', '2022-07-20 06:53:56'),
(4326, 'Update Resource Record:', 'http://localhost:8000/update_dropdown/6', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:54:06', '2022-07-20 06:54:06'),
(4327, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:54:24', '2022-07-20 06:54:24'),
(4328, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:55:56', '2022-07-20 06:55:56'),
(4329, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:58:26', '2022-07-20 06:58:26'),
(4330, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:59:16', '2022-07-20 06:59:16'),
(4331, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 06:59:49', '2022-07-20 06:59:49'),
(4332, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 07:00:44', '2022-07-20 07:00:44'),
(4333, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 07:02:36', '2022-07-20 07:02:36'),
(4334, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 07:02:56', '2022-07-20 07:02:56'),
(4335, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 07:04:09', '2022-07-20 07:04:09'),
(4336, 'type of resource is update of:Office 1', 'http://localhost:8000/update_dropdown_type', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 07:04:24', '2022-07-20 07:04:24'),
(4337, 'type of resource is update of:Office 2', 'http://localhost:8000/update_dropdown_type', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 07:04:29', '2022-07-20 07:04:29'),
(4338, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 07:06:31', '2022-07-20 07:06:31'),
(4339, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 07:10:16', '2022-07-20 07:10:16'),
(4340, 'type of resource is update of:Office 1', 'http://localhost:8000/update_dropdown_type', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 07:10:28', '2022-07-20 07:10:28'),
(4341, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 07:10:35', '2022-07-20 07:10:35'),
(4342, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 07:11:19', '2022-07-20 07:11:19'),
(4343, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 07:11:39', '2022-07-20 07:11:39'),
(4344, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 07:12:09', '2022-07-20 07:12:09'),
(4345, 'type of resource is update of:Office 1', 'http://localhost:8000/update_dropdown_type', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 07:12:24', '2022-07-20 07:12:24'),
(4346, 'type of resource is update of:Office 2', 'http://localhost:8000/update_dropdown_type', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 07:12:28', '2022-07-20 07:12:28'),
(4347, 'type of resource is update of:Riyadh 123', 'http://localhost:8000/update_dropdown_type', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 07:12:31', '2022-07-20 07:12:31'),
(4348, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 07:12:40', '2022-07-20 07:12:40'),
(4349, 'type of resource is update of:Riyadh', 'http://localhost:8000/update_dropdown_type', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 07:12:47', '2022-07-20 07:12:47'),
(4350, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 07:13:26', '2022-07-20 07:13:26'),
(4351, 'type of resource is update of:Office 1', 'http://localhost:8000/update_dropdown_type', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 07:13:36', '2022-07-20 07:13:36'),
(4352, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 07:15:55', '2022-07-20 07:15:55'),
(4353, 'open student settings', 'http://localhost:8000/resource/create', 'GET', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 07:16:13', '2022-07-20 07:16:13'),
(4354, 'type of resource is update of:type 3', 'http://localhost:8000/update_dropdown_type', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 07:16:50', '2022-07-20 07:16:50'),
(4355, 'type of resource is update of:Sponsored', 'http://localhost:8000/update_dropdown_type', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 07:16:55', '2022-07-20 07:16:55'),
(4356, 'type of resource is update of:', 'http://localhost:8000/update_dropdown_type', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 07:17:01', '2022-07-20 07:17:01'),
(4357, 'Update Resource Record:', 'http://localhost:8000/update_dropdown/6', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 07:17:12', '2022-07-20 07:17:12'),
(4358, 'Update Resource Record:Study Destination', 'http://localhost:8000/update_dropdown/6', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 07:18:50', '2022-07-20 07:18:50'),
(4359, 'type of resource is update of:<input class=', 'http://localhost:8000/update_dropdown_type', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 07:19:01', '2022-07-20 07:19:01'),
(4360, 'type of resource is update of:Office 2 99', 'http://localhost:8000/update_dropdown_type', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 07:19:08', '2022-07-20 07:19:08'),
(4361, 'type of resource is update of:Office 31', 'http://localhost:8000/update_dropdown_type', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 07:19:13', '2022-07-20 07:19:13'),
(4362, 'type of resource is update of:Office 2', 'http://localhost:8000/update_dropdown_type', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 07:19:16', '2022-07-20 07:19:16'),
(4363, 'type of resource is update of:Office 31', 'http://localhost:8000/update_dropdown_type', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 07:19:19', '2022-07-20 07:19:19'),
(4364, 'type of resource is update of:Office 3', 'http://localhost:8000/update_dropdown_type', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 07:19:22', '2022-07-20 07:19:22'),
(4365, 'add school contact which is name:filopyxod@mailinator.com', 'http://localhost:8000/guidelines/save_school_contacts', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 1, '2022-07-20 07:23:42', '2022-07-20 07:23:42'),
(4366, 'add appliction of a student, name:20', 'http://localhost:8000/users/save_application', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-21 06:32:44', '2022-07-21 06:32:44'),
(4367, 'Update the application status', 'http://localhost:8000/users/application_status', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-21 06:36:46', '2022-07-21 06:36:46'),
(4368, 'Update the application status', 'http://localhost:8000/users/application_status', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-21 06:36:49', '2022-07-21 06:36:49'),
(4369, 'Update the application status', 'http://localhost:8000/users/application_status', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-21 06:36:58', '2022-07-21 06:36:58'),
(4370, 'add appliction of a student, name:20', 'http://localhost:8000/users/save_application', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-21 07:10:32', '2022-07-21 07:10:32'),
(4371, 'add appliction of a student, name:20', 'http://localhost:8000/users/save_application', 'POST', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 1, '2022-07-21 07:11:56', '2022-07-21 07:11:56');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_09_162804_create_permission_tables', 1),
(6, '2021_11_17_120227_create_add_students_table', 1),
(7, '2021_11_17_120644_create_student_information_table', 1),
(8, '2021_11_17_123806_create_student_contact_details_table', 1),
(9, '2021_11_17_123919_create_student_other_information_table', 1),
(10, '2021_11_24_132512_create_countries_table', 1),
(11, '2021_11_29_113133_create_offices_table', 1),
(12, '2021_12_01_131315_create_dropdowns_table', 1),
(13, '2021_12_01_131336_create_dropdown_types_table', 1),
(14, '2021_12_16_121936_create_log_activities_table', 2),
(15, '2021_12_20_111400_create_school_contacts_table', 3),
(16, '2021_12_20_123425_create_applications_table', 4),
(17, '2021_12_20_123444_create_special_education_table', 4),
(18, '2021_12_20_123454_create_education_table', 4),
(19, '2021_12_22_160008_create_universities_table', 4),
(20, '2021_12_27_090702_create_accommodations_table', 5),
(21, '2021_12_27_090718_create_visas_table', 5),
(22, '2021_12_29_083726_create_login_details_table', 5),
(23, '2022_01_04_090807_create_tasks_table', 5),
(24, '2022_01_12_102815_create_add_student_dropdown_type_table', 6),
(25, '2022_01_14_102037_create_notifications_table', 7),
(26, '2022_01_18_104040_create_comments_table', 8),
(27, '2022_01_21_144319_create_visa__comments_table', 9),
(28, '2022_01_31_111251_create_timezone__cities_table', 9),
(29, '2022_01_31_111641_users_timezone__city', 9),
(30, '2022_02_03_092318_create_users_cities_table', 10),
(31, '2022_02_09_150647_create_birthdays_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 10),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 17),
(2, 'App\\Models\\User', 18),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 9),
(3, 'App\\Models\\User', 14),
(3, 'App\\Models\\User', 15),
(3, 'App\\Models\\User', 20),
(3, 'App\\Models\\User', 21),
(3, 'App\\Models\\User', 22),
(3, 'App\\Models\\User', 23),
(4, 'App\\Models\\User', 11),
(4, 'App\\Models\\User', 19),
(5, 'App\\Models\\User', 12),
(6, 'App\\Models\\User', 1),
(7, 'App\\Models\\User', 13);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Edit student', 'web', '2021-12-06 16:09:30', '2021-12-14 22:31:25'),
(2, 'Create Students', 'web', '2021-12-14 22:31:14', '2021-12-14 22:31:14'),
(3, 'show_login_detail', 'web', '2022-01-07 00:05:06', '2022-01-07 00:05:06'),
(4, 'add application', 'web', '2022-01-10 16:35:27', '2022-01-10 16:35:27'),
(5, 'delete users', 'web', '2022-01-22 01:34:08', '2022-01-22 01:34:08'),
(6, 'delete student', 'web', '2022-01-22 01:34:17', '2022-01-22 01:34:17'),
(7, 'add login detail', 'web', '2022-01-22 01:34:26', '2022-01-22 01:34:26'),
(8, 'send bulk emails', 'web', '2022-01-22 01:34:45', '2022-01-22 01:34:45'),
(9, 'add visa', 'web', '2022-01-22 01:34:57', '2022-01-22 01:34:57'),
(10, 'add_user_role_permission', 'web', '2022-01-22 01:35:04', '2022-01-22 01:35:04'),
(11, 'show comment', 'web', '2022-01-22 01:35:37', '2022-01-22 01:35:37'),
(12, 'unpaid visa fee', 'web', '2022-01-22 01:35:48', '2022-01-22 01:35:48'),
(13, 'add comment on courses', 'web', '2022-01-22 01:36:23', '2022-01-22 01:36:23'),
(14, 'add comment on tasks', 'web', '2022-01-22 01:36:38', '2022-01-22 01:36:38'),
(15, 'just_see_his_own_task', 'web', '2022-01-22 01:36:45', '2022-01-22 01:36:45'),
(16, 'expire visa within 2 months', 'web', '2022-01-22 01:42:42', '2022-01-22 01:42:42'),
(17, 'add timezone', 'web', '2022-02-02 00:38:05', '2022-02-02 00:38:05'),
(18, 'filter_management_table', 'web', '2022-02-23 18:16:08', '2022-02-23 18:16:08'),
(19, 'submitted_more_information_information_provided', 'web', '2022-02-23 21:04:15', '2022-02-23 21:04:15'),
(20, 'show home', 'web', '2022-02-25 23:20:35', '2022-02-25 23:20:35'),
(21, 'edit_roles', 'web', '2022-03-23 23:49:00', '2022-03-23 23:49:00'),
(22, 'student_settings', 'web', '2022-03-23 23:49:22', '2022-03-23 23:49:22'),
(23, 'user_tab', 'web', '2022-07-19 07:10:37', '2022-07-19 07:10:37');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Management', 'web', '2021-12-04 01:39:03', '2021-12-04 01:39:03'),
(2, 'Counsellor', 'web', '2021-12-04 01:39:15', '2021-12-04 01:39:15'),
(3, 'Admissions', 'web', '2021-12-04 01:39:23', '2021-12-04 01:39:23'),
(4, 'Visa', 'web', '2021-12-04 01:39:31', '2021-12-04 01:39:31'),
(5, 'Finance', 'web', '2021-12-04 01:39:39', '2021-12-04 01:39:39'),
(6, 'Master User', 'web', '2021-12-04 01:39:47', '2021-12-04 01:39:47'),
(7, 'Admin', 'web', '2021-12-04 01:39:54', '2021-12-04 01:39:54'),
(8, 'TestingDemo', 'web', '2022-02-25 23:20:11', '2022-02-25 23:20:11'),
(9, 'kutiba Nusairat', 'web', '2022-03-17 13:08:16', '2022-03-17 13:08:16');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 4),
(3, 2),
(3, 3),
(3, 4),
(4, 2),
(4, 3),
(4, 4),
(9, 4),
(9, 5),
(10, 6),
(11, 2),
(12, 1),
(12, 5),
(13, 2),
(13, 5),
(14, 2),
(14, 3),
(14, 5),
(15, 2),
(15, 3),
(16, 2),
(16, 4),
(17, 6),
(18, 1),
(19, 2),
(19, 4),
(20, 8),
(21, 6),
(22, 6),
(23, 6);

-- --------------------------------------------------------

--
-- Table structure for table `school_contacts`
--

CREATE TABLE `school_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staff_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institution` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `school_contacts`
--

INSERT INTO `school_contacts` (`id`, `staff_name`, `job_title`, `email`, `contact_no`, `contact_no2`, `dob`, `notes`, `institution`, `created_at`, `updated_at`) VALUES
(4, 'fali@mailinator.com', 'wugalisoby@mailinator.com', 'cotyvuved@mailinator.com', '+11812689365', '+11153969602', '2004-12-01', 'Aspernatur voluptate', '', '2022-01-06 23:50:08', '2022-01-06 23:50:08'),
(6, 'quwocisan@mailinator.com', 'myjixe@mailinator.com', 'wohukibili@mailinator.com', '+13527039447', '+15631989375', '1987-03-20', 'Sunt enim saepe nost', '', '2022-02-07 19:25:04', '2022-02-07 19:25:04'),
(7, 'Sedric', 'Manager', 'cedric@gmail.som', '+966413399280', '+966413399280', NULL, 'Uni of emlb', '', '2022-03-23 14:12:03', '2022-03-23 14:12:03'),
(8, 'qomyj@mailinator.com', 'filopyxod@mailinator.com', 'doba@mailinator.com', '+18712552449', '+15287412657', '1976-11-21', 'Sunt aliqua Sapien', 'kugumimi@mailinator.com', '2022-07-20 07:23:42', '2022-07-20 07:23:42');

-- --------------------------------------------------------

--
-- Table structure for table `special_education`
--

CREATE TABLE `special_education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `applications_id` bigint(20) UNSIGNED DEFAULT NULL,
  `certificate_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foundation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `associate_degree` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `special_education`
--

INSERT INTO `special_education` (`id`, `applications_id`, `certificate_1`, `certificate_2`, `certificate_3`, `certificate_4`, `foundation`, `associate_degree`, `created_at`, `updated_at`) VALUES
(3, 3, '2022-02-15', '2022-02-15', '2022-02-15', '2022-02-15', '2022-02-15', '2022-02-15', '2022-01-05 19:48:33', '2022-02-02 00:35:42'),
(5, 5, NULL, NULL, '26-12-2021', NULL, NULL, NULL, '2022-01-06 19:49:55', '2022-01-06 19:50:10'),
(10, 10, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-12 15:40:15', '2022-01-12 15:40:15'),
(11, 11, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-15 01:26:35', '2022-01-15 01:26:35'),
(12, 12, NULL, NULL, NULL, NULL, NULL, '2022-01-20', '2022-01-27 18:07:25', '2022-01-27 21:23:18'),
(13, 13, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-27 19:36:22', '2022-01-27 19:36:22'),
(14, 14, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-08 19:42:57', '2022-02-08 19:42:57'),
(15, 15, '23-12-2018', NULL, '02-02-2020', NULL, '17-07-1984', NULL, '2022-02-09 01:03:46', '2022-02-09 01:03:46'),
(16, 16, '2022-02-02', '2022-02-02', '2022-02-02', '2022-02-02', '2022-02-02', '2022-02-02', '2022-02-11 18:16:35', '2022-02-15 00:54:23'),
(17, 17, '2022-02-01', '2022-02-01', '2022-02-01', '2022-02-01', '2022-02-01', '2022-02-01', '2022-02-11 18:17:04', '2022-02-15 00:54:33'),
(18, 18, '22-02-2022', '22-02-2022', '23-02-2022', '25-02-2022', '16-02-2022', '01-02-2022', '2022-02-14 13:18:30', '2022-02-14 13:18:30'),
(21, 21, NULL, NULL, '2022-02-20', '2022-02-20', '2022-02-20', '2022-02-20', '2022-02-18 23:00:20', '2022-02-18 23:01:07'),
(22, 22, '24-02-2022', '26-02-2022', '24-02-2022', '17-02-2022', '24-02-2022', NULL, '2022-02-20 13:21:28', '2022-02-20 13:21:28'),
(26, 26, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-23 12:08:46', '2022-03-23 12:08:46'),
(27, 27, '21-03-2016', NULL, '06-10-1998', '29-02-2004', '02-04-1974', '25-07-1976', '2022-04-02 00:48:56', '2022-04-02 00:50:48'),
(28, 28, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-07 16:04:04', '2022-04-07 16:04:04'),
(29, 29, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-26 01:00:19', '2022-04-26 01:00:19'),
(30, 30, '14-01-2009', '12-01-1989', '09-10-1993', '15-08-1981', '04-01-1992', '30-05-2001', '2022-05-20 01:50:07', '2022-05-20 01:50:07'),
(31, 31, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 03:49:07', '2022-05-20 03:49:07'),
(32, 32, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 05:12:14', '2022-05-20 05:12:14'),
(33, 33, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-21 06:32:44', '2022-07-21 06:32:44'),
(34, 34, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-21 07:10:32', '2022-07-21 07:10:32'),
(35, 35, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-21 07:11:56', '2022-07-21 07:11:56');

-- --------------------------------------------------------

--
-- Table structure for table `student_contact_details`
--

CREATE TABLE `student_contact_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `add_students_id` bigint(20) UNSIGNED DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secondary_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secondary_contact_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suburb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_contact_details`
--

INSERT INTO `student_contact_details` (`id`, `add_students_id`, `email`, `secondary_email`, `contact_number`, `secondary_contact_number`, `address_details`, `street_address`, `suburb`, `state`, `country`, `post_code`, `created_at`, `updated_at`) VALUES
(1, 1, 'bynajocuz@mailinator.com', 'bynajocuz@mailinator.com', '+17058043131', '+12847875588', NULL, 'Mendez', 'Jarvis', 'Nielsen', '93', '958', '2022-05-23 04:03:37', '2022-05-23 04:03:37'),
(2, 2, 'voru@mailinator.com', NULL, '+1123123123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-23 04:09:24', '2022-05-23 04:09:24'),
(3, 3, 'admin@gmail.com', 'hyrafokebi@mailinator.com', '+96622222222', NULL, 'offshore', 'adsf asdf asdf asdf', 'aadsf adsf', 'adsf saf', '1', '123123123', '2022-07-19 08:01:03', '2022-07-19 08:01:03'),
(4, 8, 'masiratnaadmin@gmail.com', NULL, '+966123123123123', NULL, 'offshore', 'asdf asdf asdf', 'adf asdf safaa', 'asd fasdf af', '1', '22222', '2022-07-20 03:14:11', '2022-07-20 03:14:11'),
(6, 10, 'qygij@mailinator.com', 'qygij@mailinator.com', '+19285612213', '+18463924076', NULL, 'Savage', 'Mueller', 'Gregory', '145', '519', '2022-07-20 03:20:23', '2022-07-20 03:20:23'),
(7, 11, 'qynada@mailinator.com', 'qynada@mailinator.com', '+15744294198', '+17428257676', NULL, 'Jacobs', 'Bishop', 'Peterson', '121', '301', '2022-07-20 03:22:32', '2022-07-20 03:22:32'),
(8, 12, 'suxavosygi@mailinator.com', 'suxavosygi@mailinator.com', '+15136426228', '+12187171095', NULL, 'West', 'Holder', 'Lindsay', '222', '248', '2022-07-20 03:24:19', '2022-07-20 03:24:19'),
(9, 13, 'gelyvabu@mailinator.com', 'gelyvabu@mailinator.com', '+17614023121', '+17254656751', NULL, 'Savage', 'Bailey', 'Zimmerman', '152', '490', '2022-07-20 03:26:12', '2022-07-20 03:26:12'),
(10, 15, 'fhaslkdfhj@gmail.com', 'hjlkasdfhjkl', '+9661234254532', NULL, NULL, 'fgkhj', 'ghgjlk', 'ghjkl;', '97', NULL, '2022-07-20 04:26:59', '2022-07-20 04:26:59'),
(11, 14, 'wujenodip@mailinator.com', 'wujenodip@mailinator.com', '+11579869211', '+19249475852', NULL, 'Mccall', 'Nunez', 'Hawkins', '178', '408', '2022-07-20 04:45:18', '2022-07-20 04:45:18'),
(12, 17, 'zafahycug@mailinator.com', 'zafahycug@mailinator.com', '+16457872232', '+18944711153', 'offshore', 'Mathis', 'White', 'Manning', '1', '793', '2022-07-20 05:51:10', '2022-07-20 05:51:10'),
(13, 16, 'masiratnaadmin@gmail.com', 'qygij@mailinator.com', '+966123123123', '+6112312312', 'offshore', 'aefds', 'asdf', 'asdf', '1', NULL, '2022-07-20 06:12:59', '2022-07-20 06:12:59'),
(14, 18, 'masiratnaadmin@gmail.com', 'qygij@mailinator.com', '+966345678', '+6123456789', 'offshore', 'gh', 'gjj', 'gjj', '1', NULL, '2022-07-20 06:19:33', '2022-07-20 06:19:33'),
(15, 19, 'masiratnaadmin@gmail.com', 'qygij@mailinator.com', '+966234567', '+6156789', 'onshore', '56', '47', '57', '15', '57', '2022-07-20 06:23:18', '2022-07-20 06:23:18'),
(16, 20, 'sigagum@mailinator.com', 'sigagum@mailinator.com', '+17646597769', '+18796753209', NULL, 'Conley', 'Dunlap', 'Horne', '79', '658', '2022-07-20 06:26:22', '2022-07-20 06:26:22');

-- --------------------------------------------------------

--
-- Table structure for table `student_information`
--

CREATE TABLE `student_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `add_students_id` bigint(20) UNSIGNED DEFAULT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_information`
--

INSERT INTO `student_information` (`id`, `add_students_id`, `surname`, `name`, `dob`, `gender`, `nationality`, `visa`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Mills Fox', '1997-05-28', 'Other', '84', NULL, 'Rem nihil esse nihil', '2022-05-23 04:03:32', '2022-05-23 04:03:32'),
(2, 2, NULL, 'huxex@mailinator.com', NULL, NULL, '80', NULL, NULL, '2022-05-23 04:09:24', '2022-05-23 04:09:24'),
(3, 3, NULL, 'ahsan aad', '2022-03-08', 'Female', '3', 'yes', 'adsf asdf asdff asdf', '2022-07-19 08:00:20', '2022-07-19 08:00:20'),
(4, 4, 'ahsan', 'ahsan adfd', '1974-08-13', 'Female', '15', NULL, 'sdfvasf', '2022-07-19 08:01:41', '2022-07-19 08:05:16'),
(5, 5, NULL, 'ahsan ahsan', '1974-08-13', 'Male', '17', NULL, 'asf asf', '2022-07-19 08:56:16', '2022-07-19 10:39:45'),
(6, 6, NULL, 'ahsan usman asghar', '2022-06-29', 'Male', '14', 'no', 'asdf;j asdfasdf', '2022-07-19 11:11:55', '2022-07-19 11:11:55'),
(7, 8, NULL, 'kamran assdkfjads;', '2019-07-12', 'Male', '4', NULL, 'kamrankamrankamrankamrankamrankamrankamrankamrankamrankamrankamran', '2022-07-19 12:04:07', '2022-07-19 12:04:07'),
(9, 10, NULL, 'kamran2222 kamran2222', '2019-01-09', 'Male', '16', 'yes', '\\df asdfasdf', '2022-07-20 03:18:47', '2022-07-20 03:18:47'),
(10, 11, 'Harrell', 'Harrell Avila', '1980-12-08', 'Other', '65', NULL, 'Accusantium doloremq', '2022-07-20 03:22:18', '2022-07-20 03:22:18'),
(11, 12, 'Harrell', 'Harrell Harrell', '1980-08-12', 'Male', '12', 'yes', 'HarrellHarrellHarrellHarrellHarrellHarrellHarrellHarrellHarrellHarrellHarrellHarrellHarrellHarrellHarrellHarrellHarrellHarrellHarrellHarrellHarrellHarrellHarrellHarrellHarrellHarrellHarrellHarrellHarrellHarrellHarrell', '2022-07-20 03:23:42', '2022-07-20 03:23:42'),
(12, 13, 'Harrell', 'Harrell Harrell', '1980-08-01', 'Male', '17', 'yes', 'ads fasdf asf', '2022-07-20 03:35:40', '2022-07-20 03:35:40'),
(13, 14, 'Harrell', 'Harrell Burton', '2008-06-07', 'Female', '177', NULL, 'Cillum aut deleniti', '2022-07-20 03:50:18', '2022-07-20 03:50:18'),
(14, 15, 'Harrell2222', 'Harrell2222 Harrell', '2022-07-15', 'Male', '3', 'yes', 'dfghjkfghjk', '2022-07-20 04:22:17', '2022-07-20 04:22:17'),
(15, 17, 'Rodriquez', 'Rodriquez Rodriquez', '2022-07-11', 'Female', '9', NULL, 'RodriquezRodriquezRodriquezRodriquez', '2022-07-20 05:01:23', '2022-07-20 05:01:23'),
(16, 16, 'as;dljf;', 'as;dljf; jk;asdjfkl;', '2022-01-20', 'Female', '11', 'yes', 'asdfasdfa', '2022-07-20 06:12:42', '2022-07-20 06:12:42'),
(17, 18, 'Harrell', 'Harrell Harrell', '2022-07-03', 'Male', '14', 'no', 'dd($request->partner);dd($request->partner);', '2022-07-20 06:19:17', '2022-07-20 06:19:17'),
(18, 19, 'Harrell', 'Harrell Harrell', '1980-01-12', 'Male', '4', NULL, 'hhjk', '2022-07-20 06:23:04', '2022-07-20 06:23:04'),
(19, 20, 'Alford', 'Alford Wilkerson', '2022-05-18', 'Other', '135', NULL, 'Beatae enim sed vel', '2022-07-20 06:26:16', '2022-07-20 06:26:16');

-- --------------------------------------------------------

--
-- Table structure for table `student_other_information`
--

CREATE TABLE `student_other_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `add_students_id` bigint(20) UNSIGNED DEFAULT NULL,
  `funding_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sponsor_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cohort_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `partner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_other_information`
--

INSERT INTO `student_other_information` (`id`, `add_students_id`, `funding_type`, `sponsor_name`, `student_source`, `cohort_name`, `partner`, `created_at`, `updated_at`) VALUES
(1, 1, '18', '9', '109', NULL, NULL, '2022-05-23 04:03:46', '2022-05-23 04:03:46'),
(2, 3, NULL, NULL, NULL, NULL, NULL, '2022-07-19 08:01:06', '2022-07-19 08:01:06'),
(3, 8, NULL, NULL, NULL, NULL, NULL, '2022-07-20 03:14:13', '2022-07-20 03:14:13'),
(5, 10, '6', '118', '112', NULL, NULL, '2022-07-20 03:20:28', '2022-07-20 03:20:28'),
(6, 11, '5', '9', '111', NULL, NULL, '2022-07-20 03:22:36', '2022-07-20 03:22:36'),
(7, 12, NULL, NULL, NULL, NULL, NULL, '2022-07-20 03:24:22', '2022-07-20 03:24:22'),
(8, 13, NULL, NULL, NULL, NULL, NULL, '2022-07-20 03:46:20', '2022-07-20 03:46:20'),
(9, 15, NULL, NULL, NULL, NULL, NULL, '2022-07-20 04:27:01', '2022-07-20 04:27:01'),
(10, 14, NULL, NULL, NULL, NULL, NULL, '2022-07-20 04:45:20', '2022-07-20 04:45:20'),
(11, 16, NULL, NULL, NULL, '137', NULL, '2022-07-20 06:18:05', '2022-07-20 06:18:05'),
(12, 18, '6', '9', '11', NULL, NULL, '2022-07-20 06:21:51', '2022-07-20 06:21:51'),
(13, 19, NULL, NULL, NULL, NULL, NULL, '2022-07-20 06:23:26', '2022-07-20 06:23:26'),
(14, 17, NULL, NULL, NULL, NULL, NULL, '2022-07-20 06:25:23', '2022-07-20 06:25:23'),
(15, 20, '121', '119', '110', '15', '138', '2022-07-20 06:26:31', '2022-07-20 06:26:31');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `add_students_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_users_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `add_students_id`, `task_name`, `date`, `created_users_id`, `status`, `created_at`, `updated_at`) VALUES
(4, '4', 'photographer.bwwww', '2022-01-04', NULL, NULL, '2022-01-05 19:58:06', '2022-01-05 19:58:14'),
(6, '21', 'office 1', '2022-01-27', NULL, NULL, '2022-01-06 19:52:50', '2022-01-06 19:52:50'),
(9, '59', 'photographer.b', '2022-02-09', '1', NULL, '2022-02-11 18:29:00', '2022-02-11 18:29:00'),
(10, '59', 'photographer.b', '2022-02-09', '2', 'Complete', '2022-02-11 18:38:53', '2022-02-11 18:41:34'),
(11, '59', 'task 1', '2022-02-08', '9', 'Complete', '2022-02-22 20:27:59', '2022-02-22 20:31:10'),
(12, '78', 'task 2', '2022-02-22', '7', 'Complete', '2022-02-22 20:32:21', '2022-02-22 20:32:35');

-- --------------------------------------------------------

--
-- Table structure for table `timezone__cities`
--

CREATE TABLE `timezone__cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dropdown_types_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timezone__cities`
--

INSERT INTO `timezone__cities` (`id`, `dropdown_types_id`, `timezone`, `created_at`, `updated_at`) VALUES
(1, '70', '+03:00', '2022-02-02 00:23:16', '2022-02-02 00:23:16'),
(2, '71', '+11:00', '2022-02-02 00:23:23', '2022-02-02 00:23:23'),
(3, '72', '+08:00', '2022-02-02 00:23:31', '2022-02-02 00:23:31'),
(4, '73', '+05:50', '2022-02-02 00:23:41', '2022-02-02 00:23:41'),
(5, '74', '+07:00', '2022-02-02 00:23:50', '2022-02-02 00:23:50');

-- --------------------------------------------------------

--
-- Table structure for table `universities`
--

CREATE TABLE `universities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `en_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ar_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web_link` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uni_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doc_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ppt_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exl_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `english_summernote` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `arabic_summernote` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `universities`
--

INSERT INTO `universities` (`id`, `en_title`, `ar_title`, `web_link`, `uni_file`, `doc_file`, `ppt_file`, `exl_file`, `english_summernote`, `arabic_summernote`, `user_id`, `created_at`, `updated_at`) VALUES
(7, 'https://www.mukixaxevow.cc', 'وسيم', 'https://www.vutug.cm', 'http://masiratna.leadconcept.info/storage/university/images/4fa5a6e92b4a5e75e1977a33106a5419f1cf1921_2022-02-24_15_23_11.jpg', NULL, NULL, NULL, '<p>asdf asf sadf asdf sdf saf<u style=\"\"><i>asdf asf<b> sadf asdf sdf sa</b></i></u><b>fasdf asf sadf as</b>df sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf safasdf asf sadf asdf sdf saf</p>', '<p>&nbsp;وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم وسيم<br></p>', '1', '2022-02-24 23:23:11', '2022-02-24 23:23:11'),
(8, 'The University of Melbourne', 'جامعة ملبورن', 'https://www.unimelb.edu.au/', 'http://masiratna.leadconcept.info/storage/university/images/download_2022-03-23_07_10_55.png', NULL, NULL, NULL, '<p>number 1 uni in Australia&nbsp;</p>', '<p>الجامعه رقم 1 في استراليا&nbsp;</p>', '1', '2022-03-23 14:10:56', '2022-03-23 14:10:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '00-00-000',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 2 COMMENT '1 for admin, 2 for user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `dob`, `email_verified_at`, `password`, `profile_photo`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Masiratna Admin', 'masiratnaadmin@gmail.com', '2022-02-25', NULL, '$2y$10$Z32VxYiIzIDMngke0k1TTuumETu0m4Hd2L06kRCqyNk5MyNdToy9O', '1648824476.jpg', 6, 'DeeozdWxfRBNrDiB4D7dbtnXkbz7uNgGOqHAdBdFbYzl4Vxyp2Oc3mdN6M9T', '2021-12-04 01:28:38', '2022-04-01 21:47:56'),
(2, 'Counsellor', 'coach@gmail.com', '1971-04-27', NULL, '$2y$10$Z32VxYiIzIDMngke0k1TTuumETu0m4Hd2L06kRCqyNk5MyNdToy9O', NULL, 2, NULL, '2021-12-04 01:40:32', '2022-02-02 23:52:38'),
(4, 'Admission', 'admin@gmail.com', '2022-02-15', NULL, ' $2a$12$0dyOf6l84zaDF9/v59NYkuSVeT5uWNlR9Nrwy9ykkTyadvOeJOLG2', NULL, 3, NULL, '2021-12-04 01:43:26', '2022-02-07 21:16:54'),
(7, 'Masiratna_Counsellor', 'counsellor@gmail.com', '2020-05-07', NULL, '$2y$10$r5n.tM56ufHx/.cnKHNlju21yBu/pUp76nXCS.sQg/LASs5C5inXS', '1644932721.png', 0, 'TkEAUlNxYJGLQ7wylV2EUGpRWPXHSLfJNilpEqoWAIzylMYWubWCVZltothV', '2022-02-15 00:20:39', '2022-03-29 18:09:42'),
(9, 'Masiratna_Admission', 'admission@gmail.com', '2010-05-12', NULL, '$2y$10$3blNCZvBq3ZfhGVNBdp6Guem72bDGSjInrT8GxrXqokSyQZxs97Wu', '1645334626.jpg', 2, 'BsqfhV3WZeeYaNQhBKBu4z2NBLy7JI9UjupY1cXCQKJMz2oTMu3pU8sdXGLW', '2022-02-15 00:21:45', '2022-02-20 13:23:46'),
(10, 'Management_User', 'management@gmail.com', '1998-02-04', NULL, '$2y$10$CUDQhAo4.JDa.8msuPVGXOQQniXmbEY34i0zwQzpvt.72gvNmniGy', NULL, 2, 'FflIRqvk29Xsn2l8o2SsvqT0VXQHjSoasa77rsbMZNOGWC1FLVfDFVLMWDzp', '2022-02-22 16:37:20', '2022-02-22 16:37:20'),
(11, 'Visa_Officer', 'visa@gmail.com', '1998-02-04', NULL, '$2y$10$JNEH7FT5ABCk0ptoW82M9.D141mQKwFCDdSJVftXC/AwTONvkU7Dq', NULL, 2, '7vfCfPR3GhESGMk7O2Jlv0N9YbjT1nicExVpTBcxCQdv75FYvPC4RI6rY4cA', '2022-02-22 16:38:24', '2022-02-22 16:38:24'),
(12, 'Finanace_Officer', 'finance@gmail.com', '1998-02-04', NULL, '$2y$10$Kb/MvdkAiN0bCjzk6PGtq.Tc0RLQhp6dzyM8CROYll5yWL7FjDHwy', NULL, 2, 'Rth7QqvpP0H6IJmRK43muoiWW4nyOtfZsvQqXIpQxa0WHmE9xryK72kYuWqn', '2022-02-22 16:39:13', '2022-02-22 16:39:13'),
(13, 'Admin', 'admin1@gmail.com', '1998-02-04', NULL, '$2y$10$vR47G878jCuMuull9XQgIuhUs3.hHbBvX/p1EMY3BjLJSzMFKW16y', NULL, 2, NULL, '2022-02-22 16:40:06', '2022-02-22 16:40:06'),
(14, 'FrancisLopez', 'francis.lopez@masiratna.com', '1993-10-21', NULL, '$2y$10$KaY0ILMcfeBl5e33Vwp7X.1EuJvEiHM3DiocZfDEj/Oj7XrHk62aO', '1648021458.jpg', 3, NULL, '2022-03-17 13:15:23', '2022-03-30 11:47:52'),
(15, 'RaulOchavillo', 'raul.ochavillo@masiratna.com', '1987-01-08', NULL, '$2y$10$NsQHDEyXzlUplklNJGbTX.Z.BBEa0s1eW9AIaJMQQ3NYxuV8HDixu', NULL, 3, 'RCpWprQ1nkxOnsncjWeLfosWUyBDwWP6aSeONorCrpXUD5XvYRxDcvW0u7DJ', '2022-03-17 13:22:50', '2022-03-30 11:48:27'),
(17, 'MomenSamara', 'momen.samara@masiratna.com', '1983-04-27', NULL, '$2y$10$G6LW1IFdgDLn5fb8B8I7GuYL2Pwhh/HLOuoW3NLh6RgLOnIs1yj5y', NULL, 2, NULL, '2022-03-17 13:34:35', '2022-03-17 13:34:35'),
(18, 'KutibaNussirat', 'kutiba.nussirat@masiratna.com', '1989-09-07', NULL, '$2y$10$qrRRXN3zD2ChvqNWw1dp9euZNAaAyFEUa1lpgexLnnOR.Ib4xkNuG', '1647501176.jpg', 2, 'uMt58rGoaLEaTpZa0CqHqRRqK8RJftgH7WkkC9TH2AJsRqpqltLTEO0bmbkR', '2022-03-17 14:10:22', '2022-03-17 14:12:57'),
(19, 'SamehAlSayed', 'sameh.alsayed@masiratna.com', '1976-04-10', NULL, '$2y$10$rolF1JR/XGqNz11uV5i9b.zR78gUCNFWLov3cbNeGqcC9WI27ntLW', NULL, 2, NULL, '2022-03-23 14:53:23', '2022-03-23 14:53:23'),
(20, 'Mohammad_Abrar', 'mohammadabrar@gmail.com', '1986-07-01', NULL, '$2y$10$63EP5XsgZivZSY/Yr0LJFeWz7UMZISjH2X7hOyxvBKQCgmfMLi8.C', NULL, 3, NULL, '2022-03-29 17:54:11', '2022-03-29 17:59:17'),
(21, 'Admission_Test', 'admission_test@gmail.com', '1998-03-29', NULL, '$2y$10$grvbrRzemI.bkZ1a2QJXhe/HHpDIu9BxbmvalH/nrhQTl4xmWJv8y', NULL, 2, NULL, '2022-03-29 20:22:05', '2022-03-29 20:22:05'),
(22, 'admission_officer', 'admission_officer@mailinator.com', '1992-10-15', NULL, '$2y$10$IUXWjV8YZYWfWGP6JMJbKu0gVabaNYpvGUIljK6aBzZrpDI73d.Ae', NULL, 3, NULL, '2022-03-29 22:04:00', '2022-03-29 22:05:54'),
(23, 'Admissions_User', 'admission_user@gmail.com', '2019-02-07', NULL, '$2y$10$6BrTvGd4hTl3g8CWDYDMwepEAqMBj.whG3qjdQULeCvXj/ZzLn6HO', NULL, 2, NULL, '2022-03-29 22:14:32', '2022-03-29 22:14:32');

-- --------------------------------------------------------

--
-- Table structure for table `users_cities`
--

CREATE TABLE `users_cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dropdown_type_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_cities`
--

INSERT INTO `users_cities` (`id`, `user_id`, `dropdown_type_id`, `created_at`, `updated_at`) VALUES
(1, '1', '70', NULL, NULL),
(2, '1', '72', NULL, NULL),
(3, '1', '74', NULL, NULL),
(5, '4', '72', NULL, NULL),
(6, '4', '74', NULL, NULL),
(7, '1', '71', NULL, NULL),
(12, '2', '70', NULL, NULL),
(13, '2', '71', NULL, NULL),
(15, '13', '70', NULL, NULL),
(16, '13', '71', NULL, NULL),
(17, '13', '72', NULL, NULL),
(18, '13', '74', NULL, NULL),
(19, '1', '73', NULL, NULL),
(21, '4', '70', NULL, NULL),
(22, '4', '71', NULL, NULL),
(23, '4', '73', NULL, NULL),
(24, '11', '70', NULL, NULL),
(25, '11', '71', NULL, NULL),
(29, '20', '70', NULL, NULL),
(30, '20', '71', NULL, NULL),
(31, '20', '72', NULL, NULL),
(32, '20', '73', NULL, NULL),
(33, '20', '74', NULL, NULL),
(36, '7', '70', NULL, NULL),
(37, '7', '71', NULL, NULL),
(38, '7', '72', NULL, NULL),
(39, '7', '73', NULL, NULL),
(40, '7', '74', NULL, NULL),
(41, '14', '71', NULL, NULL),
(42, '14', '72', NULL, NULL),
(43, '14', '73', NULL, NULL),
(44, '18', '70', NULL, NULL),
(45, '18', '71', NULL, NULL),
(46, '18', '72', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_timezone_city`
--

CREATE TABLE `users_timezone_city` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dropdown_type_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_timezone_city`
--

INSERT INTO `users_timezone_city` (`id`, `user_id`, `dropdown_type_id`, `created_at`, `updated_at`) VALUES
(1, '1', '70', NULL, NULL),
(2, '1', '71', NULL, NULL),
(3, '1', '72', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `visas`
--

CREATE TABLE `visas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `case_officer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_visa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visa_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_applicants` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visa_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `immigration_fees` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `immigration_pay_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `immigration_dop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_fee` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_pay_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_dop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'UnComplete',
  `visa_expire_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `select_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Submitted',
  `approval_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visas`
--

INSERT INTO `visas` (`id`, `case_officer`, `student_id`, `date_visa`, `visa_type`, `num_applicants`, `visa_status`, `immigration_fees`, `immigration_pay_method`, `immigration_dop`, `service_fee`, `service_pay_method`, `service_dop`, `status`, `visa_expire_date`, `select_status`, `approval_date`, `created_at`, `updated_at`) VALUES
(1, '79', '2', '23/05/2022', '124', '123123123', '131', '123123', '50', '23/07/1999', '123123', '55', '21/01/1992', 'UnComplete', '2022-04-23 09:09:24', 'Submitted', NULL, '2022-05-23 04:09:24', '2022-05-23 04:09:24');

-- --------------------------------------------------------

--
-- Table structure for table `visa__comments`
--

CREATE TABLE `visa__comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visa_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visa__comments`
--

INSERT INTO `visa__comments` (`id`, `user_id`, `visa_id`, `comment_text`, `created_at`, `updated_at`) VALUES
(1, '11', '40', 'dsf asdf asdf', '2022-04-26 03:33:02', '2022-04-26 03:33:02'),
(2, '11', '47', 'fasd fasdf asdf asdf', '2022-04-26 03:33:33', '2022-04-26 03:33:33'),
(3, '11', '33', 'sfd a;sljkdf asdjf a;sdfj asf', '2022-04-26 03:34:08', '2022-04-26 03:34:08'),
(4, '11', '47', 'asdf asdf sadf', '2022-04-26 03:54:00', '2022-04-26 03:54:00'),
(5, '11', '47', 'sdfl ;jasdfasdf asdf', '2022-04-26 06:42:54', '2022-04-26 06:42:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accommodations`
--
ALTER TABLE `accommodations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_students`
--
ALTER TABLE `add_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_student_dropdown_type`
--
ALTER TABLE `add_student_dropdown_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `add_student_dropdown_type_add_student_id_foreign` (`add_student_id`),
  ADD KEY `add_student_dropdown_type_dropdown_type_id_foreign` (`dropdown_type_id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `birthdays`
--
ALTER TABLE `birthdays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_code_index` (`code`);

--
-- Indexes for table `dropdowns`
--
ALTER TABLE `dropdowns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dropdown_types`
--
ALTER TABLE `dropdown_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dropdown_types_dropdowns_id_foreign` (`dropdowns_id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `education_applications_id_foreign` (`applications_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_activities`
--
ALTER TABLE `log_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `school_contacts`
--
ALTER TABLE `school_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special_education`
--
ALTER TABLE `special_education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `special_education_applications_id_foreign` (`applications_id`);

--
-- Indexes for table `student_contact_details`
--
ALTER TABLE `student_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_contact_details_add_students_id_foreign` (`add_students_id`);

--
-- Indexes for table `student_information`
--
ALTER TABLE `student_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_information_add_students_id_foreign` (`add_students_id`);

--
-- Indexes for table `student_other_information`
--
ALTER TABLE `student_other_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_other_information_add_students_id_foreign` (`add_students_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timezone__cities`
--
ALTER TABLE `timezone__cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `universities`
--
ALTER TABLE `universities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_cities`
--
ALTER TABLE `users_cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_timezone_city`
--
ALTER TABLE `users_timezone_city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visas`
--
ALTER TABLE `visas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visa__comments`
--
ALTER TABLE `visa__comments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accommodations`
--
ALTER TABLE `accommodations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `add_students`
--
ALTER TABLE `add_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `add_student_dropdown_type`
--
ALTER TABLE `add_student_dropdown_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `birthdays`
--
ALTER TABLE `birthdays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `dropdowns`
--
ALTER TABLE `dropdowns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `dropdown_types`
--
ALTER TABLE `dropdown_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_details`
--
ALTER TABLE `login_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `log_activities`
--
ALTER TABLE `log_activities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4372;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `school_contacts`
--
ALTER TABLE `school_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `special_education`
--
ALTER TABLE `special_education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `student_contact_details`
--
ALTER TABLE `student_contact_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `student_information`
--
ALTER TABLE `student_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `student_other_information`
--
ALTER TABLE `student_other_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `timezone__cities`
--
ALTER TABLE `timezone__cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `universities`
--
ALTER TABLE `universities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users_cities`
--
ALTER TABLE `users_cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `users_timezone_city`
--
ALTER TABLE `users_timezone_city`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `visas`
--
ALTER TABLE `visas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visa__comments`
--
ALTER TABLE `visa__comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `add_student_dropdown_type`
--
ALTER TABLE `add_student_dropdown_type`
  ADD CONSTRAINT `add_student_dropdown_type_add_student_id_foreign` FOREIGN KEY (`add_student_id`) REFERENCES `add_students` (`id`),
  ADD CONSTRAINT `add_student_dropdown_type_dropdown_type_id_foreign` FOREIGN KEY (`dropdown_type_id`) REFERENCES `dropdown_types` (`id`);

--
-- Constraints for table `dropdown_types`
--
ALTER TABLE `dropdown_types`
  ADD CONSTRAINT `dropdown_types_dropdowns_id_foreign` FOREIGN KEY (`dropdowns_id`) REFERENCES `dropdowns` (`id`);

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_applications_id_foreign` FOREIGN KEY (`applications_id`) REFERENCES `applications` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `special_education`
--
ALTER TABLE `special_education`
  ADD CONSTRAINT `special_education_applications_id_foreign` FOREIGN KEY (`applications_id`) REFERENCES `applications` (`id`);

--
-- Constraints for table `student_contact_details`
--
ALTER TABLE `student_contact_details`
  ADD CONSTRAINT `student_contact_details_add_students_id_foreign` FOREIGN KEY (`add_students_id`) REFERENCES `add_students` (`id`);

--
-- Constraints for table `student_information`
--
ALTER TABLE `student_information`
  ADD CONSTRAINT `student_information_add_students_id_foreign` FOREIGN KEY (`add_students_id`) REFERENCES `add_students` (`id`);

--
-- Constraints for table `student_other_information`
--
ALTER TABLE `student_other_information`
  ADD CONSTRAINT `student_other_information_add_students_id_foreign` FOREIGN KEY (`add_students_id`) REFERENCES `add_students` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
