-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2021 at 09:07 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bestseller`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `type` enum('Admin','Sub Admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Admin',
  `categories_access` tinyint(4) NOT NULL DEFAULT 0,
  `products_access` tinyint(4) NOT NULL DEFAULT 0,
  `orders_access` tinyint(4) NOT NULL DEFAULT 0,
  `users_access` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `status`, `type`, `categories_access`, `products_access`, `orders_access`, `users_access`, `created_at`, `updated_at`) VALUES
(1, 'admin', '0a571f99e5667cb088dadcc9a2d1e161', 1, 'Admin', 0, 0, 0, 0, '2020-10-28 13:26:40', '2021-05-06 03:00:02'),
(4, 'subAdmin', '0a571f99e5667cb088dadcc9a2d1e161', 1, 'Admin', 0, 0, 0, 0, '2020-11-03 23:13:10', '2020-11-03 23:13:10'),
(5, 'mohsin', '0a571f99e5667cb088dadcc9a2d1e161', 1, 'Admin', 0, 0, 0, 0, '2020-11-03 23:14:21', '2020-11-03 23:14:21'),
(6, 'rahat', '25f9e794323b453885f5181f1b624d0b', 1, 'Admin', 0, 0, 0, 0, '2020-11-03 23:16:06', '2020-11-03 23:16:06'),
(7, 'mohsinsikder895@gmail.com', '25f9e794323b453885f5181f1b624d0b', 1, 'Sub Admin', 1, 1, 1, 1, '2020-12-15 23:25:56', '2020-12-15 23:25:56'),
(8, 'mohsinsikder895', '793a2fb69708b12af2ef64267ac128e0', 1, 'Sub Admin', 0, 1, 1, 0, '2020-12-15 23:28:54', '2020-12-15 23:28:54'),
(9, 'mohsins', '25f9e794323b453885f5181f1b624d0b', 0, 'Sub Admin', 0, 0, 0, 0, '2020-12-15 23:30:26', '2020-12-15 23:30:26'),
(10, 'm', '25f9e794323b453885f5181f1b624d0b', 0, 'Admin', 0, 0, 0, 0, '2020-12-16 00:26:47', '2020-12-16 00:26:47');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image`, `title`, `link`, `status`, `created_at`, `updated_at`) VALUES
(6, '36386.png', 'zxcdvfbg', 'http//mohsin', 1, '2020-10-20 01:05:36', '2020-10-20 01:05:36'),
(7, '51430.png', '123werf', 'http//mohsin', 1, '2020-10-20 01:06:45', '2020-10-20 01:16:11'),
(8, '84345.png', '123werf', 'http//mohsin', 1, '2020-10-20 01:15:20', '2020-10-20 01:19:49');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `product_name`, `product_code`, `product_color`, `size`, `price`, `quantity`, `user_email`, `session_id`, `created_at`, `updated_at`) VALUES
(126, 30, 'Half Pant', 'Hf-16', 'nay blue', NULL, '120', 1, '', 'soivku7FZidzo07B6fTrToSn5NFqpjRPypGioECY', NULL, NULL),
(127, 31, 'Half pant', 'HF12', 'White', NULL, '1200', 1, '', 'g4ED6zPzahDLA5mGCZCanQ7uelQ2z36sWbzusWb1', NULL, NULL),
(129, 19, 'styles shirt', '85', 'yellow', 'small', '12356', 1, '', '3Lwpcl1BddpLZCJ5QB73BILVRwmo4XpEI2GygD5N', NULL, NULL),
(133, 30, 'Half Pant', 'Hf-16', 'nay blue', NULL, '120', 2, '', 'iU8eGe72bZYjt2DweXEuhrTP7KfVlKS3zxMEWu8x', NULL, NULL),
(137, 31, 'Half pant', 'HF12', 'White', NULL, '1200', 1, '', 'bLxrafQJkKARhAuK18Eip8aNtUwvCUGSU88eqs5x', NULL, NULL),
(146, 34, 'sdfgh', 'b23', 'black', NULL, '5', 2, 'mohsinsikder.cse@gmail.com', 's3OldXb2QgFcetRtQ81vFeNTToDQutIPNcvFanDk', NULL, NULL),
(152, 19, 'styles shirt', '85', 'yellow', NULL, '2', 1, '', 'MMhiusNjBiuTWJMSOvdyTIJkE1bYvsVtxpf6xbDG', NULL, NULL),
(153, 31, 'Half pant', 'HF12', 'White', NULL, '1', 3, '', 'XJvWJ3wEU21LHwn2A49k0enf5gsW5JgdJN40htT7', NULL, NULL),
(154, 34, 'sdfgh', 'b23', 'black', NULL, '5', 2, '', '5XVT097TgzVYr6lHlNBmFdbCU01y5i5ehKbi1Nri', NULL, NULL),
(155, 23, 'styles shirt', 'b23', 'blue', NULL, '1', 1, '', 'paVHoFk6po0dAzitNzPzCMkRq072TBuLSHlarPkI', NULL, NULL),
(156, 31, 'Half pant', 'HF12', 'White', NULL, '1', 1, '', 'qmF1xdZDPFMpES93rNYwwbJeIy9FdLcUSxvZzNxM', NULL, NULL),
(157, 34, 'sdfgh', 'b23', 'black', 'small', '5', 1, 'mohsinsikder895@gmail.com', 'HvXJ0cMyS2qw5krvPqrYAkXkXy0Fnj2woyH3d8pE', NULL, NULL),
(161, 31, 'Half pant', 'HF12', 'White', NULL, '1', 1, 'mohsinsikder.cse@gmail.com', '6ovzK8eh1Twa4UsbQEvKBJhb4svfZLaie2GWEbyD', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `description`, `url`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 11, 'T-Shirt', NULL, 't-shirt', 1, NULL, '2020-10-02 18:32:55', '2020-11-01 08:15:22'),
(2, 11, 'casual shirt', NULL, 'casual shirt', 1, NULL, '2020-10-02 18:33:23', '2020-11-01 08:17:45'),
(3, 1, 'rahat', NULL, 'this is pant', 1, NULL, '2020-10-02 20:42:51', '2020-10-03 01:55:07'),
(4, 1, 'Pant', NULL, 'half pant', 1, NULL, '2020-10-02 20:44:44', '2020-10-02 20:44:44'),
(5, 1, 'Half T-Shirt', NULL, 'half t_shirt', 1, NULL, '2020-10-02 20:48:41', '2020-11-01 08:07:23'),
(6, 0, 'Women', NULL, 'womens products', 1, NULL, '2020-10-02 20:49:44', '2020-11-01 08:14:16'),
(7, 0, 'Bags', NULL, 'daily uses', 1, NULL, '2020-10-03 01:41:56', '2020-11-01 08:05:52'),
(9, 0, 'Kids', NULL, 'kids products', 1, NULL, '2020-10-03 02:11:09', '2020-11-01 08:14:00'),
(10, 11, 'Half dress', NULL, 'boys', 1, NULL, '2020-10-03 02:12:45', '2020-11-01 08:15:01'),
(11, 0, 'Boys', NULL, 'boys dress', 1, NULL, '2020-11-01 08:03:29', '2020-11-01 08:03:29'),
(12, 6, 'Plaju', NULL, 'fashion plauje', 1, NULL, '2020-11-01 08:23:37', '2020-11-01 08:23:37'),
(13, 9, 'Daiper', NULL, 'baby daiper', 1, NULL, '2020-11-01 08:24:24', '2020-11-01 08:24:24'),
(14, 7, 'Schoole bag', NULL, 'baby school bag', 1, NULL, '2020-11-01 08:24:53', '2020-11-01 08:24:53'),
(15, 0, 'Electronics', NULL, 'electronics', 1, NULL, '2020-11-04 07:06:37', '2020-11-04 07:06:37'),
(16, 15, 'Television', NULL, 'television', 1, NULL, '2020-11-04 07:07:13', '2020-11-04 07:07:13'),
(17, 15, 'Mobile', NULL, 'mobile', 1, NULL, '2020-11-04 07:07:34', '2020-11-04 07:07:34'),
(18, 11, 'Pant', NULL, 'pant', 1, NULL, '2020-11-04 07:17:01', '2020-11-04 07:17:01');

-- --------------------------------------------------------

--
-- Table structure for table `cms_pages`
--

CREATE TABLE `cms_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_pages`
--

INSERT INTO `cms_pages` (`id`, `title`, `description`, `url`, `status`, `created_at`, `updated_at`) VALUES
(2, 'mohsin', 'cdvfbgnhjk65', 'http//Computer', 1, '2020-10-29 09:29:23', '2020-10-29 10:04:43'),
(3, 'bnghbn', 'asdfgrhyj', 'http://localhost/EasyMart/public/admin/category', 1, '2020-10-29 09:29:32', '2020-10-29 09:47:48');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CD', 'Democratic Republic of the Congo'),
(50, 'CG', 'Republic of Congo'),
(51, 'CK', 'Cook Islands'),
(52, 'CR', 'Costa Rica'),
(53, 'HR', 'Croatia (Hrvatska)'),
(54, 'CU', 'Cuba'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czech Republic'),
(57, 'DK', 'Denmark'),
(58, 'DJ', 'Djibouti'),
(59, 'DM', 'Dominica'),
(60, 'DO', 'Dominican Republic'),
(61, 'TP', 'East Timor'),
(62, 'EC', 'Ecuador'),
(63, 'EG', 'Egypt'),
(64, 'SV', 'El Salvador'),
(65, 'GQ', 'Equatorial Guinea'),
(66, 'ER', 'Eritrea'),
(67, 'EE', 'Estonia'),
(68, 'ET', 'Ethiopia'),
(69, 'FK', 'Falkland Islands (Malvinas)'),
(70, 'FO', 'Faroe Islands'),
(71, 'FJ', 'Fiji'),
(72, 'FI', 'Finland'),
(73, 'FR', 'France'),
(74, 'FX', 'France, Metropolitan'),
(75, 'GF', 'French Guiana'),
(76, 'PF', 'French Polynesia'),
(77, 'TF', 'French Southern Territories'),
(78, 'GA', 'Gabon'),
(79, 'GM', 'Gambia'),
(80, 'GE', 'Georgia'),
(81, 'DE', 'Germany'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GK', 'Guernsey'),
(85, 'GR', 'Greece'),
(86, 'GL', 'Greenland'),
(87, 'GD', 'Grenada'),
(88, 'GP', 'Guadeloupe'),
(89, 'GU', 'Guam'),
(90, 'GT', 'Guatemala'),
(91, 'GN', 'Guinea'),
(92, 'GW', 'Guinea-Bissau'),
(93, 'GY', 'Guyana'),
(94, 'HT', 'Haiti'),
(95, 'HM', 'Heard and Mc Donald Islands'),
(96, 'HN', 'Honduras'),
(97, 'HK', 'Hong Kong'),
(98, 'HU', 'Hungary'),
(99, 'IS', 'Iceland'),
(100, 'IN', 'India'),
(101, 'IM', 'Isle of Man'),
(102, 'ID', 'Indonesia'),
(103, 'IR', 'Iran (Islamic Republic of)'),
(104, 'IQ', 'Iraq'),
(105, 'IE', 'Ireland'),
(106, 'IL', 'Israel'),
(107, 'IT', 'Italy'),
(108, 'CI', 'Ivory Coast'),
(109, 'JE', 'Jersey'),
(110, 'JM', 'Jamaica'),
(111, 'JP', 'Japan'),
(112, 'JO', 'Jordan'),
(113, 'KZ', 'Kazakhstan'),
(114, 'KE', 'Kenya'),
(115, 'KI', 'Kiribati'),
(116, 'KP', 'Korea, Democratic People\'s Republic of'),
(117, 'KR', 'Korea, Republic of'),
(118, 'XK', 'Kosovo'),
(119, 'KW', 'Kuwait'),
(120, 'KG', 'Kyrgyzstan'),
(121, 'LA', 'Lao People\'s Democratic Republic'),
(122, 'LV', 'Latvia'),
(123, 'LB', 'Lebanon'),
(124, 'LS', 'Lesotho'),
(125, 'LR', 'Liberia'),
(126, 'LY', 'Libyan Arab Jamahiriya'),
(127, 'LI', 'Liechtenstein'),
(128, 'LT', 'Lithuania'),
(129, 'LU', 'Luxembourg'),
(130, 'MO', 'Macau'),
(131, 'MK', 'North Macedonia'),
(132, 'MG', 'Madagascar'),
(133, 'MW', 'Malawi'),
(134, 'MY', 'Malaysia'),
(135, 'MV', 'Maldives'),
(136, 'ML', 'Mali'),
(137, 'MT', 'Malta'),
(138, 'MH', 'Marshall Islands'),
(139, 'MQ', 'Martinique'),
(140, 'MR', 'Mauritania'),
(141, 'MU', 'Mauritius'),
(142, 'TY', 'Mayotte'),
(143, 'MX', 'Mexico'),
(144, 'FM', 'Micronesia, Federated States of'),
(145, 'MD', 'Moldova, Republic of'),
(146, 'MC', 'Monaco'),
(147, 'MN', 'Mongolia'),
(148, 'ME', 'Montenegro'),
(149, 'MS', 'Montserrat'),
(150, 'MA', 'Morocco'),
(151, 'MZ', 'Mozambique'),
(152, 'MM', 'Myanmar'),
(153, 'NA', 'Namibia'),
(154, 'NR', 'Nauru'),
(155, 'NP', 'Nepal'),
(156, 'NL', 'Netherlands'),
(157, 'AN', 'Netherlands Antilles'),
(158, 'NC', 'New Caledonia'),
(159, 'NZ', 'New Zealand'),
(160, 'NI', 'Nicaragua'),
(161, 'NE', 'Niger'),
(162, 'NG', 'Nigeria'),
(163, 'NU', 'Niue'),
(164, 'NF', 'Norfolk Island'),
(165, 'MP', 'Northern Mariana Islands'),
(166, 'NO', 'Norway'),
(167, 'OM', 'Oman'),
(168, 'PK', 'Pakistan'),
(169, 'PW', 'Palau'),
(170, 'PS', 'Palestine'),
(171, 'PA', 'Panama'),
(172, 'PG', 'Papua New Guinea'),
(173, 'PY', 'Paraguay'),
(174, 'PE', 'Peru'),
(175, 'PH', 'Philippines'),
(176, 'PN', 'Pitcairn'),
(177, 'PL', 'Poland'),
(178, 'PT', 'Portugal'),
(179, 'PR', 'Puerto Rico'),
(180, 'QA', 'Qatar'),
(181, 'RE', 'Reunion'),
(182, 'RO', 'Romania'),
(183, 'RU', 'Russian Federation'),
(184, 'RW', 'Rwanda'),
(185, 'KN', 'Saint Kitts and Nevis'),
(186, 'LC', 'Saint Lucia'),
(187, 'VC', 'Saint Vincent and the Grenadines'),
(188, 'WS', 'Samoa'),
(189, 'SM', 'San Marino'),
(190, 'ST', 'Sao Tome and Principe'),
(191, 'SA', 'Saudi Arabia'),
(192, 'SN', 'Senegal'),
(193, 'RS', 'Serbia'),
(194, 'SC', 'Seychelles'),
(195, 'SL', 'Sierra Leone'),
(196, 'SG', 'Singapore'),
(197, 'SK', 'Slovakia'),
(198, 'SI', 'Slovenia'),
(199, 'SB', 'Solomon Islands'),
(200, 'SO', 'Somalia'),
(201, 'ZA', 'South Africa'),
(202, 'GS', 'South Georgia South Sandwich Islands'),
(203, 'SS', 'South Sudan'),
(204, 'ES', 'Spain'),
(205, 'LK', 'Sri Lanka'),
(206, 'SH', 'St. Helena'),
(207, 'PM', 'St. Pierre and Miquelon'),
(208, 'SD', 'Sudan'),
(209, 'SR', 'Suriname'),
(210, 'SJ', 'Svalbard and Jan Mayen Islands'),
(211, 'SZ', 'Swaziland'),
(212, 'SE', 'Sweden'),
(213, 'CH', 'Switzerland'),
(214, 'SY', 'Syrian Arab Republic'),
(215, 'TW', 'Taiwan'),
(216, 'TJ', 'Tajikistan'),
(217, 'TZ', 'Tanzania, United Republic of'),
(218, 'TH', 'Thailand'),
(219, 'TG', 'Togo'),
(220, 'TK', 'Tokelau'),
(221, 'TO', 'Tonga'),
(222, 'TT', 'Trinidad and Tobago'),
(223, 'TN', 'Tunisia'),
(224, 'TR', 'Turkey'),
(225, 'TM', 'Turkmenistan'),
(226, 'TC', 'Turks and Caicos Islands'),
(227, 'TV', 'Tuvalu'),
(228, 'UG', 'Uganda'),
(229, 'UA', 'Ukraine'),
(230, 'AE', 'United Arab Emirates'),
(231, 'GB', 'United Kingdom'),
(232, 'US', 'United States'),
(233, 'UM', 'United States minor outlying islands'),
(234, 'UY', 'Uruguay'),
(235, 'UZ', 'Uzbekistan'),
(236, 'VU', 'Vanuatu'),
(237, 'VA', 'Vatican City State'),
(238, 'VE', 'Venezuela'),
(239, 'VN', 'Vietnam'),
(240, 'VG', 'Virgin Islands (British)'),
(241, 'VI', 'Virgin Islands (U.S.)'),
(242, 'WF', 'Wallis and Futuna Islands'),
(243, 'EH', 'Western Sahara'),
(244, 'YE', 'Yemen'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `amount_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_date` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_code`, `amount`, `amount_type`, `expiry_date`, `status`, `created_at`, `updated_at`) VALUES
(5, 'sd123', 35, 'Percentage', '2021-10-28', 1, '2020-10-18 22:08:06', '2020-12-13 08:31:24');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_addresses`
--

CREATE TABLE `delivery_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_addresses`
--

INSERT INTO `delivery_addresses` (`id`, `user_id`, `user_email`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `created_at`, `updated_at`) VALUES
(2, 5, 'admin@gmail.com', 'rahat', 'plashbari bazar', 'saver ashulia', 'dhaka', 'Bangladesh', '02128736', '027855389', '2020-10-23 11:31:45', '2020-10-23 11:31:45'),
(3, 22, 'alamin@admin.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', 'Bangladesh', '02128736', '01715486265', '2020-10-28 09:38:56', '2020-10-28 09:38:56'),
(4, 43, 'author@gmail.com', 'Sikder', 'plashbari bazar', 'saver ashulia', 'dhaka', 'Bangladesh', '02128736', '01715486265', '2020-11-02 10:35:21', '2021-07-10 23:03:39'),
(5, 56, 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', 'Bangladesh', '02128736', '01715486265', '2020-11-02 22:20:56', '2020-11-02 22:20:56'),
(6, 62, 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', 'Bangladesh', '02128736', '01715486265', '2020-11-03 07:03:50', '2020-11-03 07:03:50'),
(7, 63, 'mohsinsikder895@gmail.com', 'Mohsin', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', 'Bangladesh', '8100', '01706125400', '2020-12-13 08:21:42', '2021-07-05 22:09:21'),
(8, 1, 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', 'Bangladesh', '8100', '01706125400', '2021-05-19 02:55:02', '2021-05-19 02:55:02'),
(9, 7, 'mohsinsikder895@gmail.com', 'Mohsin', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', 'Bangladesh', '8100', '01706125400', '2021-07-05 03:19:01', '2021-07-05 03:19:01'),
(10, 4, 'mohsinsikder.cse@gmail.com', 'Sikder', 'plashbari bazar', 'saver ashulia', 'dhaka', 'Bangladesh', '02128736', '01715486265', '2021-07-05 23:25:34', '2021-07-05 23:25:34');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(1) NOT NULL,
  `name` varchar(25) NOT NULL,
  `bn_name` varchar(25) NOT NULL,
  `url` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `bn_name`, `url`) VALUES
(1, 'Chattagram', 'চট্টগ্রাম', 'www.chittagongdiv.gov.bd'),
(2, 'Rajshahi', 'রাজশাহী', 'www.rajshahidiv.gov.bd'),
(3, 'Khulna', 'খুলনা', 'www.khulnadiv.gov.bd'),
(4, 'Barisal', 'বরিশাল', 'www.barisaldiv.gov.bd'),
(5, 'Sylhet', 'সিলেট', 'www.sylhetdiv.gov.bd'),
(6, 'Dhaka', 'ঢাকা', 'www.dhakadiv.gov.bd'),
(7, 'Rangpur', 'রংপুর', 'www.rangpurdiv.gov.bd'),
(8, 'Mymensingh', 'ময়মনসিংহ', 'www.mymensinghdiv.gov.bd');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(10, '2020_09_29_161557_create_products_table', 3),
(11, '2020_10_01_054737_create_product_attributes_table', 4),
(13, '2020_09_29_120926_create_categories_table', 5),
(14, '2020_10_13_153106_create_carts_table', 6),
(15, '2020_10_18_171702_create_coupons_table', 7),
(16, '2020_10_19_161600_create_banners_table', 8),
(17, '2020_10_23_153343_create_delivery_addresses_table', 9),
(26, '2020_10_24_042603_create_orders_table', 10),
(27, '2020_10_24_043631_create_orders_products_table', 10),
(28, '2020_10_28_022436_create_admins_table', 11),
(29, '2020_10_29_091739_create_cms_pages_table', 12),
(30, '2020_11_02_175222_create_sessions_table', 13),
(31, '2021_05_20_151043_create_ratings_table', 13),
(32, '2017_06_16_140051_create_nikolag_customers_table', 14),
(33, '2017_06_16_140942_create_nikolag_customer_user_table', 14),
(34, '2017_06_16_140943_create_nikolag_transactions_table', 14),
(35, '2018_02_07_140944_create_nikolag_taxes_table', 14),
(36, '2018_02_07_140945_create_nikolag_discounts_table', 14),
(37, '2018_02_07_140946_create_nikolag_deductible_table', 14),
(38, '2018_02_07_140947_create_nikolag_products_table', 14),
(39, '2018_02_07_140948_create_nikolag_orders_table', 14),
(40, '2018_02_07_140949_create_nikolag_product_order_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `nikolag_customers`
--

CREATE TABLE `nikolag_customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_service_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_service_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nikolag_customer_user`
--

CREATE TABLE `nikolag_customer_user` (
  `owner_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nikolag_deductibles`
--

CREATE TABLE `nikolag_deductibles` (
  `deductible_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deductible_id` bigint(20) UNSIGNED NOT NULL,
  `featurable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featurable_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nikolag_discounts`
--

CREATE TABLE `nikolag_discounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` double(8,2) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `reference_id` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nikolag_orders`
--

CREATE TABLE `nikolag_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_service_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_service_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nikolag_products`
--

CREATE TABLE `nikolag_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variation_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_id` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nikolag_product_order`
--

CREATE TABLE `nikolag_product_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `order_id` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nikolag_taxes`
--

CREATE TABLE `nikolag_taxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` double(8,2) NOT NULL,
  `reference_id` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nikolag_transactions`
--

CREATE TABLE `nikolag_transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_service_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_service_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merchant_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_charges` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grand_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `user_email`, `name`, `address`, `city`, `state`, `pincode`, `country`, `mobile`, `shipping_charges`, `coupon_code`, `coupon_amount`, `order_status`, `payment_method`, `grand_total`, `invoice`, `created_at`, `updated_at`) VALUES
(7, '5', 'admin@gmail.com', 'rahat', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '027855389', '0', '', '', 'new', 'COD', '12362', NULL, '2020-10-24 07:14:19', '2020-10-24 07:14:19'),
(8, '5', 'admin@gmail.com', 'rahat', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '027855389', '0', '', '', 'new', 'COD', '12362', NULL, '2020-10-24 07:18:25', '2020-10-24 07:18:25'),
(9, '5', 'admin@gmail.com', 'rahat', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '027855389', '0', '', '', 'new', 'COD', '12362', NULL, '2020-10-24 07:19:01', '2020-10-24 07:19:01'),
(10, '5', 'admin@gmail.com', 'rahat', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '027855389', '0', 'sd123', '4326.7', 'new', 'COD', '8035.3', NULL, '2020-10-24 07:55:34', '2020-10-24 07:55:34'),
(11, '5', 'admin@gmail.com', 'rahat', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '027855389', '0', 'sd123', '4369.75', 'new', 'COD', '8115.25', NULL, '2020-10-24 07:58:39', '2020-10-24 07:58:39'),
(12, '5', 'admin@gmail.com', 'rahat', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '027855389', '0', 'sd123', '4369.75', 'new', 'COD', '8115.25', NULL, '2020-10-24 08:07:26', '2020-10-24 08:07:26'),
(13, '5', 'admin@gmail.com', 'rahat', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '027855389', '0', 'sd123', '4324.6', 'new', 'COD', '8031.4', NULL, '2020-10-24 10:22:40', '2020-10-24 10:22:40'),
(14, '5', 'admin@gmail.com', 'rahat', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '027855389', '0', '', '', 'Delivered', 'COD', '123', NULL, '2020-10-24 10:25:34', '2020-10-28 07:56:44'),
(15, '5', 'admin@gmail.com', 'rahat', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '027855389', '0', '', '', 'Delivered', 'COD', '6', NULL, '2020-10-24 18:35:50', '2020-10-27 20:14:07'),
(16, '5', 'admin@gmail.com', 'rahat', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '027855389', '0', '', '', 'Shipped', 'COD', '123', NULL, '2020-10-24 18:45:30', '2020-10-27 20:17:58'),
(17, '5', 'admin@gmail.com', 'rahat', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '027855389', '0', '', '', 'new', 'COD', '12356', NULL, '2020-10-24 21:14:43', '2020-10-24 21:14:43'),
(18, '5', 'admin@gmail.com', 'rahat', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '027855389', '0', '', '', 'new', 'COD', '12356', NULL, '2020-10-24 22:04:49', '2020-10-24 22:04:49'),
(19, '5', 'admin@gmail.com', 'rahat', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '027855389', '0', '', '', 'Paid', 'Payple', '12356', NULL, '2020-10-27 07:34:41', '2020-10-27 20:20:54'),
(20, '5', 'admin@gmail.com', 'rahat', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '027855389', '0', '', '', 'In Process', 'Payple', '12356', NULL, '2020-10-27 08:33:54', '2020-10-27 20:04:31'),
(21, '22', 'alamin@admin.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'COD', '12356', NULL, '2020-10-28 09:39:06', '2020-10-28 09:39:06'),
(22, '22', 'alamin@admin.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'COD', '12356', NULL, '2020-10-28 10:04:36', '2020-10-28 10:04:36'),
(23, '22', 'alamin@admin.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'COD', '6', NULL, '2020-10-28 10:06:16', '2020-10-28 10:06:16'),
(24, '22', 'alamin@admin.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Payple', '123', NULL, '2020-10-28 10:11:00', '2020-10-28 10:11:00'),
(25, '22', 'alamin@admin.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'COD', '12479', NULL, '2020-10-28 10:33:22', '2020-10-28 10:33:22'),
(26, '22', 'alamin@admin.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'COD', '12485', NULL, '2020-10-28 10:34:33', '2020-10-28 10:34:33'),
(27, '22', 'alamin@admin.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', 'sd123', '86.1', 'new', 'COD', '159.9', NULL, '2020-10-28 11:15:57', '2020-10-28 11:15:57'),
(28, '22', 'alamin@admin.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'COD', '24736', NULL, '2020-10-28 23:37:47', '2020-10-28 23:37:47'),
(29, '22', 'alamin@admin.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'COD', '6', NULL, '2020-10-28 23:39:34', '2020-10-28 23:39:34'),
(30, '22', 'alamin@admin.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', 'sd123', '432.25', 'new', 'Payple', '802.75', NULL, '2020-10-30 02:40:21', '2020-10-30 02:40:21'),
(31, '22', 'alamin@admin.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', 'sd123', '43.05', 'new', 'COD', '1314.95', NULL, '2020-10-30 11:26:51', '2020-10-30 11:26:51'),
(32, '22', 'alamin@admin.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'COD', '24712', NULL, '2020-10-31 07:34:21', '2020-10-31 07:34:21'),
(33, '22', 'alamin@admin.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Payple', '12356', NULL, '2020-10-31 07:44:12', '2020-10-31 07:44:12'),
(34, '22', 'alamin@admin.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', 'sd123', '8649.2', 'new', 'COD', '16062.8', NULL, '2020-10-31 09:57:49', '2020-10-31 09:57:49'),
(35, '22', 'alamin@admin.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', 'sd123', '8649.2', 'new', 'COD', '16062.8', NULL, '2020-11-01 09:00:27', '2020-11-01 09:00:27'),
(36, '22', 'alamin@admin.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', 'sd123', '420', 'Delivered', 'Payple', '780', NULL, '2020-11-01 11:09:15', '2020-11-01 11:10:19'),
(37, '43', 'author@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'COD', '24712', NULL, '2020-11-02 10:35:29', '2020-11-02 10:35:29'),
(38, '56', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'COD', '12356', NULL, '2020-11-02 22:21:04', '2020-11-02 22:21:04'),
(39, '56', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'COD', '12356', NULL, '2020-11-02 22:36:43', '2020-11-02 22:36:43'),
(40, '56', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'COD', '12356', NULL, '2020-11-02 22:39:12', '2020-11-02 22:39:12'),
(41, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'COD', '24712', NULL, '2020-11-03 07:04:01', '2020-11-03 07:04:01'),
(42, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'COD', '12356', NULL, '2020-11-03 07:13:20', '2020-11-03 07:13:20'),
(43, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', 'sd123', '4324.6', 'new', 'COD', '8031.4', NULL, '2020-11-03 07:22:53', '2020-11-03 07:22:53'),
(44, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'COD', '12356', NULL, '2020-11-03 07:43:10', '2020-11-03 07:43:10'),
(45, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'COD', '12356', NULL, '2020-11-03 07:47:06', '2020-11-03 07:47:06'),
(46, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'COD', '12356', NULL, '2020-11-03 07:54:51', '2020-11-03 07:54:51'),
(47, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Bkash', '1200', NULL, '2020-11-04 08:56:23', '2020-11-04 08:56:23'),
(48, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Bkash', '1200', NULL, '2020-11-04 08:57:26', '2020-11-04 08:57:26'),
(49, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Bkash', '1200', NULL, '2020-11-04 08:57:51', '2020-11-04 08:57:51'),
(50, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Bkash', '1200', NULL, '2020-11-04 08:58:06', '2020-11-04 08:58:06'),
(51, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Bkash', '1200', NULL, '2020-11-04 08:58:56', '2020-11-04 08:58:56'),
(52, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Paypal', '1200', NULL, '2020-11-04 08:59:11', '2020-11-04 08:59:11'),
(53, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Paypal', '1200', NULL, '2020-11-04 08:59:55', '2020-11-04 08:59:55'),
(54, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Paypal', '0', NULL, '2020-11-04 09:10:09', '2020-11-04 09:10:09'),
(55, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'bkash', '0', NULL, '2020-11-04 09:11:24', '2020-11-04 09:11:24'),
(56, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'bkash', '0', NULL, '2020-11-04 09:12:54', '2020-11-04 09:12:54'),
(57, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'COD', '12356', NULL, '2020-11-04 09:20:31', '2020-11-04 09:20:31'),
(58, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'COD', '12356', NULL, '2020-11-04 09:23:54', '2020-11-04 09:23:54'),
(59, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Paypal', '12356', NULL, '2020-11-04 09:26:49', '2020-11-04 09:26:49'),
(60, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'COD', '12356', NULL, '2020-11-04 09:27:06', '2020-11-04 09:27:06'),
(61, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'COD', '1200', NULL, '2020-11-04 11:01:59', '2020-11-04 11:01:59'),
(62, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Bkash', '1200', NULL, '2020-11-04 11:38:43', '2020-11-04 11:38:43'),
(63, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Bkash', '0', NULL, '2020-11-04 12:09:00', '2020-11-04 12:09:00'),
(64, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Bkash', '0', NULL, '2020-11-04 12:09:43', '2020-11-04 12:09:43'),
(65, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Bkash', '0', NULL, '2020-11-04 12:27:50', '2020-11-04 12:27:50'),
(66, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Bkash', '0', NULL, '2020-11-04 12:28:32', '2020-11-04 12:28:32'),
(67, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Bkash', '0', NULL, '2020-11-04 12:35:54', '2020-11-04 12:35:54'),
(68, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Bkash', '0', NULL, '2020-11-04 12:36:49', '2020-11-04 12:36:49'),
(69, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Bkash', '0', NULL, '2020-11-04 12:37:54', '2020-11-04 12:37:54'),
(70, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Bkash', '0', NULL, '2020-11-04 12:38:03', '2020-11-04 12:38:03'),
(71, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Bkash', '0', NULL, '2020-11-04 12:43:46', '2020-11-04 12:43:46'),
(72, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Bkash', '0', NULL, '2020-11-04 12:48:01', '2020-11-04 12:48:01'),
(73, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Bkash', '12356', NULL, '2020-11-06 04:03:59', '2020-11-06 04:03:59'),
(74, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Bkash', '12356', NULL, '2020-11-06 04:08:25', '2020-11-06 04:08:25'),
(75, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Bkash', '0', NULL, '2020-11-06 04:10:59', '2020-11-06 04:10:59'),
(76, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Bkash', '1200', NULL, '2020-11-06 07:14:05', '2020-11-06 07:14:05'),
(77, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Bkash', '1200', NULL, '2020-11-06 10:05:45', '2020-11-06 10:05:45'),
(78, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Bkash', '120', NULL, '2020-11-06 10:12:20', '2020-11-06 10:12:20'),
(79, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Bkash', '12356', NULL, '2020-11-06 10:18:02', '2020-11-06 10:18:02'),
(80, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Bkash', '0', NULL, '2020-11-06 10:19:17', '2020-11-06 10:19:17'),
(81, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Bkash', '1200', NULL, '2020-11-06 10:20:19', '2020-11-06 10:20:19'),
(82, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Bkash', '12356', NULL, '2020-11-06 10:24:34', '2020-11-06 10:24:34'),
(83, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Bkash', '12356', NULL, '2020-11-06 11:33:35', '2020-11-06 11:33:35'),
(84, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Bkash', '120', NULL, '2020-11-06 21:51:16', '2020-11-06 21:51:16'),
(85, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'Paypal', '12356', NULL, '2020-11-06 22:01:46', '2020-11-06 22:01:46'),
(86, '62', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'COD', '1200', NULL, '2020-11-09 22:46:44', '2020-11-09 22:46:44'),
(87, '63', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'COD', '1200', NULL, '2020-12-13 08:21:51', '2020-12-13 08:21:51'),
(88, '63', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', 'sd123', '420', 'Paid', 'COD', '780', NULL, '2020-12-13 08:33:06', '2020-12-13 09:42:15'),
(89, '63', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'Paid', 'COD', '12356', NULL, '2020-12-16 01:08:24', '2020-12-16 01:13:13'),
(90, '63', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'Paid', 'COD', '120', NULL, '2020-12-16 01:12:36', '2020-12-16 03:04:39'),
(91, '63', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', 'sd123', '42000', 'new', 'COD', '78000', NULL, '2020-12-21 07:17:12', '2020-12-21 07:17:12'),
(92, '63', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'COD', '1200', NULL, '2020-12-25 07:39:41', '2020-12-25 07:39:41'),
(93, '63', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'Pending', 'COD', '1200', NULL, '2020-12-25 07:40:51', '2021-03-26 22:39:09'),
(94, '63', 'mohsinsikder.cse@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'Paid', 'COD', '1200', NULL, '2020-12-25 07:42:35', '2021-03-26 20:48:48'),
(95, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '7200', NULL, '2021-05-20 01:37:42', '2021-05-20 01:37:42'),
(96, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '241200', NULL, '2021-05-22 03:41:03', '2021-05-22 03:41:03'),
(97, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '500', NULL, '2021-05-22 03:58:05', '2021-05-22 03:58:05'),
(98, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'COD', '500', NULL, '2021-05-22 04:23:37', '2021-05-22 04:23:37'),
(99, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Payoneer', '500', NULL, '2021-05-23 03:41:04', '2021-05-23 03:41:04'),
(100, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Square', '500', NULL, '2021-05-23 03:41:44', '2021-05-23 03:41:44'),
(101, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Bitwise', '500', NULL, '2021-05-23 03:41:58', '2021-05-23 03:41:58'),
(102, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '1700', NULL, '2021-05-23 05:05:18', '2021-05-23 05:05:18'),
(103, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '1700', NULL, '2021-05-23 05:17:40', '2021-05-23 05:17:40'),
(104, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '1700', NULL, '2021-05-23 05:26:24', '2021-05-23 05:26:24'),
(105, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '1700', NULL, '2021-05-23 05:28:24', '2021-05-23 05:28:24'),
(106, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '1700', NULL, '2021-05-23 05:28:49', '2021-05-23 05:28:49'),
(107, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '1700', NULL, '2021-05-23 05:30:43', '2021-05-23 05:30:43'),
(108, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '1700', NULL, '2021-05-23 05:32:00', '2021-05-23 05:32:00'),
(109, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '1700', NULL, '2021-05-23 05:40:30', '2021-05-23 05:40:30'),
(110, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '1700', NULL, '2021-05-23 05:45:37', '2021-05-23 05:45:37'),
(111, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '1700', NULL, '2021-05-23 05:52:37', '2021-05-23 05:52:37'),
(112, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '1700', NULL, '2021-05-23 05:57:39', '2021-05-23 05:57:39'),
(113, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '1200', NULL, '2021-05-23 05:59:31', '2021-05-23 05:59:31'),
(114, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '1200', NULL, '2021-05-23 06:03:59', '2021-05-23 06:03:59'),
(115, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '1200', NULL, '2021-05-23 06:13:24', '2021-05-23 06:13:24'),
(116, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '1200', NULL, '2021-05-23 06:17:48', '2021-05-23 06:17:48'),
(117, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '1200', NULL, '2021-05-23 06:18:55', '2021-05-23 06:18:55'),
(118, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '1200', NULL, '2021-05-23 06:19:50', '2021-05-23 06:19:50'),
(119, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '1700', NULL, '2021-05-23 08:48:31', '2021-05-23 08:48:31'),
(120, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '1700', NULL, '2021-05-23 08:49:30', '2021-05-23 08:49:30'),
(121, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '1700', NULL, '2021-05-23 08:52:37', '2021-05-23 08:52:37'),
(122, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '1700', NULL, '2021-05-23 08:53:45', '2021-05-23 08:53:45'),
(123, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '1700', NULL, '2021-05-23 08:57:16', '2021-05-23 08:57:16'),
(124, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '1700', NULL, '2021-05-23 08:58:02', '2021-05-23 08:58:02'),
(125, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '1700', NULL, '2021-05-23 08:58:52', '2021-05-23 08:58:52'),
(126, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', 'sd123', '1015', 'new', 'Paypal', '1885', NULL, '2021-05-23 09:01:38', '2021-05-23 09:01:38'),
(127, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', 'sd123', '1015', 'new', 'Paypal', '1885', NULL, '2021-05-23 09:21:31', '2021-05-23 09:21:31'),
(128, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', 'sd123', '1015', 'new', 'Paypal', '1885', NULL, '2021-05-23 09:24:52', '2021-05-23 09:24:52'),
(129, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', 'sd123', '1015', 'new', 'Paypal', '1885', NULL, '2021-05-23 09:30:02', '2021-05-23 09:30:02'),
(130, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', 'sd123', '1015', 'new', 'Paypal', '1885', NULL, '2021-05-23 09:33:17', '2021-05-23 09:33:17'),
(131, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '5', NULL, '2021-05-23 09:39:54', '2021-05-23 09:39:54'),
(132, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '5', NULL, '2021-05-23 09:42:54', '2021-05-23 09:42:54'),
(133, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '5', NULL, '2021-05-23 09:47:57', '2021-05-23 09:47:57'),
(134, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '5', NULL, '2021-05-23 10:29:14', '2021-05-23 10:29:14'),
(135, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '6', NULL, '2021-05-23 10:32:46', '2021-05-23 10:32:46'),
(136, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '6', NULL, '2021-05-23 11:22:08', '2021-05-23 11:22:08'),
(137, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '6', NULL, '2021-05-23 12:01:39', '2021-05-23 12:01:39'),
(138, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '6', NULL, '2021-05-23 12:03:30', '2021-05-23 12:03:30'),
(139, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '6', NULL, '2021-05-23 12:05:26', '2021-05-23 12:05:26'),
(140, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '6', NULL, '2021-05-23 12:15:17', '2021-05-23 12:15:17'),
(141, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Paypal', '6', NULL, '2021-05-23 12:16:08', '2021-05-23 12:16:08'),
(142, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Debit-credit', '11', NULL, '2021-05-24 00:35:57', '2021-05-24 00:35:57'),
(143, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Debit-credit', '11', NULL, '2021-05-24 00:45:34', '2021-05-24 00:45:34'),
(144, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Debit-credit', '11', NULL, '2021-05-24 00:48:22', '2021-05-24 00:48:22'),
(145, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Debit-credit', '11', NULL, '2021-05-24 00:54:22', '2021-05-24 00:54:22'),
(146, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Debit-credit', '11', NULL, '2021-05-24 01:00:46', '2021-05-24 01:00:46'),
(147, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Debit-credit', '11', NULL, '2021-05-24 01:05:17', '2021-05-24 01:05:17'),
(148, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Bitcoin', '12', NULL, '2021-05-24 03:48:12', '2021-05-24 03:48:12'),
(149, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Bitcoin', '12', NULL, '2021-05-24 03:48:57', '2021-05-24 03:48:57'),
(150, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Bitcoin', '12', NULL, '2021-05-24 03:54:17', '2021-05-24 03:54:17'),
(151, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Square', '6', NULL, '2021-05-24 09:47:07', '2021-05-24 09:47:07'),
(152, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Square', '6', NULL, '2021-05-24 09:59:47', '2021-05-24 09:59:47'),
(153, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Square', '6', NULL, '2021-05-24 10:14:51', '2021-05-24 10:14:51'),
(154, '1', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'Square', '6', NULL, '2021-05-24 10:26:28', '2021-05-24 10:26:28'),
(155, '7', 'mohsinsikder895@gmail.com', 'Mohsin', 'plashbari bazar', 'saver ashulia', 'dhaka', '02128736', 'Bangladesh', '01715486265', '0', '', '', 'new', 'COD', '5', NULL, '2021-07-05 03:19:09', '2021-07-05 03:19:09'),
(156, '4', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'Delivered', 'COD', '6', NULL, '2021-07-05 23:25:46', '2021-07-06 22:29:04'),
(157, '4', 'mohsinsikder.cse@gmail.com', 'Sikder', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', '8100', 'Bangladesh', '01706125400', '0', '', '', 'new', 'COD', '7', NULL, '2021-07-07 04:58:40', '2021-07-07 04:58:40');

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_products`
--

INSERT INTO `orders_products` (`id`, `order_id`, `user_id`, `product_id`, `product_code`, `product_name`, `product_size`, `product_color`, `product_price`, `product_qty`, `created_at`, `updated_at`) VALUES
(1, 9, 5, 20, 'b23', 'Bata', NULL, 'black', 6.00, 1, '2020-10-24 07:19:01', '2020-10-24 07:19:01'),
(2, 9, 5, 19, '85', 'styles shirt', NULL, 'yellow', 12356.00, 1, '2020-10-24 07:19:01', '2020-10-24 07:19:01'),
(3, 10, 5, 19, '85', 'styles shirt', NULL, 'yellow', 12356.00, 1, '2020-10-24 07:55:35', '2020-10-24 07:55:35'),
(4, 10, 5, 20, 'b23', 'Bata', NULL, 'black', 6.00, 1, '2020-10-24 07:55:35', '2020-10-24 07:55:35'),
(5, 11, 5, 19, '85', 'styles shirt', NULL, 'yellow', 12356.00, 1, '2020-10-24 07:58:39', '2020-10-24 07:58:39'),
(6, 11, 5, 20, 'b23', 'Bata', NULL, 'black', 6.00, 1, '2020-10-24 07:58:39', '2020-10-24 07:58:39'),
(7, 11, 5, 21, 'TB63', 'styles', NULL, 'wert', 123.00, 1, '2020-10-24 07:58:40', '2020-10-24 07:58:40'),
(8, 12, 5, 19, '85', 'styles shirt', NULL, 'yellow', 12356.00, 1, '2020-10-24 08:07:27', '2020-10-24 08:07:27'),
(9, 12, 5, 20, 'b23', 'Bata', NULL, 'black', 6.00, 1, '2020-10-24 08:07:27', '2020-10-24 08:07:27'),
(10, 12, 5, 21, 'TB63', 'styles', NULL, 'wert', 123.00, 1, '2020-10-24 08:07:27', '2020-10-24 08:07:27'),
(11, 13, 5, 19, '85', 'styles shirt', NULL, 'yellow', 12356.00, 1, '2020-10-24 10:22:40', '2020-10-24 10:22:40'),
(12, 14, 5, 21, 'TB63', 'styles', NULL, 'wert', 123.00, 1, '2020-10-24 10:25:34', '2020-10-24 10:25:34'),
(13, 15, 5, 20, 'b23', 'Bata', NULL, 'black', 6.00, 1, '2020-10-24 18:35:51', '2020-10-24 18:35:51'),
(14, 16, 5, 21, 'TB63', 'styles', NULL, 'wert', 123.00, 1, '2020-10-24 18:45:30', '2020-10-24 18:45:30'),
(15, 17, 5, 19, '85', 'styles shirt', NULL, 'yellow', 12356.00, 1, '2020-10-24 21:14:43', '2020-10-24 21:14:43'),
(16, 18, 5, 19, '85', 'styles shirt', NULL, 'yellow', 12356.00, 1, '2020-10-24 22:04:49', '2020-10-24 22:04:49'),
(17, 19, 5, 19, '85', 'styles shirt', NULL, 'yellow', 12356.00, 1, '2020-10-27 07:34:41', '2020-10-27 07:34:41'),
(18, 20, 5, 19, '85', 'styles shirt', NULL, 'yellow', 12356.00, 1, '2020-10-27 08:33:54', '2020-10-27 08:33:54'),
(19, 21, 22, 19, '85', 'styles shirt', NULL, 'yellow', 12356.00, 1, '2020-10-28 09:39:06', '2020-10-28 09:39:06'),
(20, 22, 22, 19, '85', 'styles shirt', NULL, 'yellow', 12356.00, 1, '2020-10-28 10:04:36', '2020-10-28 10:04:36'),
(21, 23, 22, 20, 'b23', 'Bata', NULL, 'black', 6.00, 1, '2020-10-28 10:06:16', '2020-10-28 10:06:16'),
(22, 24, 22, 21, 'TB63', 'styles', NULL, 'wert', 123.00, 1, '2020-10-28 10:11:00', '2020-10-28 10:11:00'),
(23, 25, 22, 21, 'TB63', 'styles', NULL, 'wert', 123.00, 1, '2020-10-28 10:33:22', '2020-10-28 10:33:22'),
(24, 25, 22, 19, '85', 'styles shirt', NULL, 'yellow', 12356.00, 1, '2020-10-28 10:33:22', '2020-10-28 10:33:22'),
(25, 26, 22, 21, 'TB63', 'styles', NULL, 'wert', 123.00, 1, '2020-10-28 10:34:33', '2020-10-28 10:34:33'),
(26, 26, 22, 19, '85', 'styles shirt', NULL, 'yellow', 12356.00, 1, '2020-10-28 10:34:33', '2020-10-28 10:34:33'),
(27, 26, 22, 20, 'b23', 'Bata', NULL, 'black', 6.00, 1, '2020-10-28 10:34:33', '2020-10-28 10:34:33'),
(28, 27, 22, 21, 'TB63', 'styles', NULL, 'wert', 123.00, 2, '2020-10-28 11:15:57', '2020-10-28 11:15:57'),
(29, 28, 22, 19, '85', 'styles shirt', NULL, 'yellow', 12356.00, 1, '2020-10-28 23:37:47', '2020-10-28 23:37:47'),
(30, 28, 22, 20, 'b23', 'Bata', NULL, 'black', 6.00, 4, '2020-10-28 23:37:47', '2020-10-28 23:37:47'),
(31, 28, 22, 19, '85', 'styles shirt', '19-small', 'yellow', 12356.00, 1, '2020-10-28 23:37:47', '2020-10-28 23:37:47'),
(32, 29, 22, 20, 'b23', 'Bata', '20-medium', 'black', 6.00, 1, '2020-10-28 23:39:34', '2020-10-28 23:39:34'),
(33, 30, 22, 29, '85', 'styles shirt', '29-small', 'rtyuio', 1235.00, 1, '2020-10-30 02:40:21', '2020-10-30 02:40:21'),
(34, 31, 22, 29, '85', 'styles shirt', NULL, 'rtyuio', 1235.00, 1, '2020-10-30 11:26:51', '2020-10-30 11:26:51'),
(35, 31, 22, 26, 'mohsin', 'styles shirt', '26-medium', 'wert', 123.00, 1, '2020-10-30 11:26:51', '2020-10-30 11:26:51'),
(36, 32, 22, 19, '85', 'styles shirt', NULL, 'yellow', 12356.00, 2, '2020-10-31 07:34:21', '2020-10-31 07:34:21'),
(37, 33, 22, 19, '85', 'styles shirt', '19-small', 'yellow', 12356.00, 1, '2020-10-31 07:44:12', '2020-10-31 07:44:12'),
(38, 34, 22, 19, '85', 'styles shirt', '19-medium', 'yellow', 12356.00, 1, '2020-10-31 09:57:50', '2020-10-31 09:57:50'),
(39, 34, 22, 19, '85', 'styles shirt', 'small', 'yellow', 12356.00, 1, '2020-10-31 09:57:50', '2020-10-31 09:57:50'),
(40, 35, 22, 19, '85', 'styles shirt', 'small', 'yellow', 12356.00, 1, '2020-11-01 09:00:27', '2020-11-01 09:00:27'),
(41, 35, 22, 19, '85', 'styles shirt', 'medium', 'yellow', 12356.00, 1, '2020-11-01 09:00:27', '2020-11-01 09:00:27'),
(42, 36, 22, 23, 'b23', 'styles shirt', 'small', 'green', 1200.00, 1, '2020-11-01 11:09:15', '2020-11-01 11:09:15'),
(43, 37, 43, 19, '85', 'styles shirt', NULL, 'yellow', 12356.00, 2, '2020-11-02 10:35:29', '2020-11-02 10:35:29'),
(44, 38, 56, 19, '85', 'styles shirt', NULL, 'yellow', 12356.00, 1, '2020-11-02 22:21:04', '2020-11-02 22:21:04'),
(45, 39, 56, 19, '85', 'styles shirt', NULL, 'yellow', 12356.00, 1, '2020-11-02 22:36:43', '2020-11-02 22:36:43'),
(46, 40, 56, 19, '85', 'styles shirt', NULL, 'yellow', 12356.00, 1, '2020-11-02 22:39:12', '2020-11-02 22:39:12'),
(47, 41, 62, 19, '85', 'styles shirt', NULL, 'yellow', 12356.00, 1, '2020-11-03 07:04:01', '2020-11-03 07:04:01'),
(48, 41, 62, 19, '85', 'styles shirt', NULL, 'yellow', 12356.00, 1, '2020-11-03 07:04:01', '2020-11-03 07:04:01'),
(49, 42, 62, 19, '85', 'styles shirt', 'small', 'yellow', 12356.00, 1, '2020-11-03 07:13:20', '2020-11-03 07:13:20'),
(50, 43, 62, 19, '85', 'styles shirt', 'medium', 'yellow', 12356.00, 1, '2020-11-03 07:22:53', '2020-11-03 07:22:53'),
(51, 44, 62, 19, '85', 'styles shirt', 'small', 'yellow', 12356.00, 1, '2020-11-03 07:43:10', '2020-11-03 07:43:10'),
(52, 45, 62, 19, '85', 'styles shirt', 'small', 'yellow', 12356.00, 1, '2020-11-03 07:47:06', '2020-11-03 07:47:06'),
(53, 46, 62, 19, '85', 'styles shirt', 'small', 'yellow', 12356.00, 1, '2020-11-03 07:54:51', '2020-11-03 07:54:51'),
(54, 47, 62, 31, 'HF12', 'Half pant', 'half', 'White', 1200.00, 1, '2020-11-04 08:56:23', '2020-11-04 08:56:23'),
(55, 48, 62, 31, 'HF12', 'Half pant', 'half', 'White', 1200.00, 1, '2020-11-04 08:57:26', '2020-11-04 08:57:26'),
(56, 49, 62, 31, 'HF12', 'Half pant', 'half', 'White', 1200.00, 1, '2020-11-04 08:57:51', '2020-11-04 08:57:51'),
(57, 50, 62, 31, 'HF12', 'Half pant', 'half', 'White', 1200.00, 1, '2020-11-04 08:58:06', '2020-11-04 08:58:06'),
(58, 51, 62, 31, 'HF12', 'Half pant', 'half', 'White', 1200.00, 1, '2020-11-04 08:58:56', '2020-11-04 08:58:56'),
(59, 52, 62, 31, 'HF12', 'Half pant', 'half', 'White', 1200.00, 1, '2020-11-04 08:59:12', '2020-11-04 08:59:12'),
(60, 53, 62, 31, 'HF12', 'Half pant', 'half', 'White', 1200.00, 1, '2020-11-04 08:59:55', '2020-11-04 08:59:55'),
(61, 57, 62, 19, '85', 'styles shirt', 'medium', 'yellow', 12356.00, 1, '2020-11-04 09:20:32', '2020-11-04 09:20:32'),
(62, 58, 62, 19, '85', 'styles shirt', 'medium', 'yellow', 12356.00, 1, '2020-11-04 09:23:55', '2020-11-04 09:23:55'),
(63, 59, 62, 19, '85', 'styles shirt', 'medium', 'yellow', 12356.00, 1, '2020-11-04 09:26:49', '2020-11-04 09:26:49'),
(64, 61, 62, 31, 'HF12', 'Half pant', 'half', 'White', 1200.00, 1, '2020-11-04 11:01:59', '2020-11-04 11:01:59'),
(65, 62, 62, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2020-11-04 11:38:43', '2020-11-04 11:38:43'),
(66, 73, 62, 19, '85', 'styles shirt', 'small', 'yellow', 12356.00, 1, '2020-11-06 04:03:59', '2020-11-06 04:03:59'),
(67, 76, 62, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2020-11-06 07:14:05', '2020-11-06 07:14:05'),
(68, 77, 62, 31, 'HF12', 'Half pant', 'half', 'White', 1200.00, 1, '2020-11-06 10:05:45', '2020-11-06 10:05:45'),
(69, 78, 62, 30, 'Hf-16', 'Half Pant', NULL, 'nay blue', 120.00, 1, '2020-11-06 10:12:20', '2020-11-06 10:12:20'),
(70, 79, 62, 19, '85', 'styles shirt', NULL, 'yellow', 12356.00, 1, '2020-11-06 10:18:02', '2020-11-06 10:18:02'),
(71, 81, 62, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2020-11-06 10:20:20', '2020-11-06 10:20:20'),
(72, 82, 62, 19, '85', 'styles shirt', NULL, 'yellow', 12356.00, 1, '2020-11-06 10:24:34', '2020-11-06 10:24:34'),
(73, 83, 62, 19, '85', 'styles shirt', NULL, 'yellow', 12356.00, 1, '2020-11-06 11:33:35', '2020-11-06 11:33:35'),
(74, 84, 62, 30, 'Hf-16', 'Half Pant', NULL, 'nay blue', 120.00, 1, '2020-11-06 21:51:17', '2020-11-06 21:51:17'),
(75, 85, 62, 19, '85', 'styles shirt', NULL, 'yellow', 12356.00, 1, '2020-11-06 22:01:47', '2020-11-06 22:01:47'),
(76, 86, 62, 31, 'HF12', 'Half pant', 'half', 'White', 1200.00, 1, '2020-11-09 22:46:44', '2020-11-09 22:46:44'),
(77, 87, 63, 31, 'HF12', 'Half pant', 'half', 'White', 1200.00, 1, '2020-12-13 08:21:52', '2020-12-13 08:21:52'),
(78, 88, 63, 31, 'HF12', 'Half pant', 'half', 'White', 1200.00, 1, '2020-12-13 08:33:06', '2020-12-13 08:33:06'),
(79, 89, 63, 19, '85', 'styles shirt', 'small', 'yellow', 12356.00, 1, '2020-12-16 01:08:24', '2020-12-16 01:08:24'),
(80, 90, 63, 30, 'Hf-16', 'Half Pant', 'half', 'nay blue', 120.00, 1, '2020-12-16 01:12:36', '2020-12-16 01:12:36'),
(81, 91, 63, 33, 'iphone12', 'Iphone 12', NULL, 'white', 120000.00, 1, '2020-12-21 07:17:12', '2020-12-21 07:17:12'),
(82, 92, 63, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2020-12-25 07:39:41', '2020-12-25 07:39:41'),
(83, 93, 63, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2020-12-25 07:40:51', '2020-12-25 07:40:51'),
(84, 94, 63, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2020-12-25 07:42:35', '2020-12-25 07:42:35'),
(85, 95, 1, 23, 'b23', 'styles shirt', NULL, 'blue', 1200.00, 4, '2021-05-20 01:37:42', '2021-05-20 01:37:42'),
(86, 95, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 2, '2021-05-20 01:37:42', '2021-05-20 01:37:42'),
(87, 96, 1, 33, 'iphone12', 'Iphone 12', NULL, 'white', 120000.00, 2, '2021-05-22 03:41:04', '2021-05-22 03:41:04'),
(88, 96, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2021-05-22 03:41:04', '2021-05-22 03:41:04'),
(89, 97, 1, 34, 'b23', 'sdfgh', NULL, 'black', 500.00, 1, '2021-05-22 03:58:05', '2021-05-22 03:58:05'),
(90, 98, 1, 34, 'b23', 'sdfgh', NULL, 'black', 500.00, 1, '2021-05-22 04:23:37', '2021-05-22 04:23:37'),
(91, 99, 1, 34, 'b23', 'sdfgh', NULL, 'black', 500.00, 1, '2021-05-23 03:41:04', '2021-05-23 03:41:04'),
(92, 100, 1, 34, 'b23', 'sdfgh', NULL, 'black', 500.00, 1, '2021-05-23 03:41:44', '2021-05-23 03:41:44'),
(93, 101, 1, 34, 'b23', 'sdfgh', NULL, 'black', 500.00, 1, '2021-05-23 03:41:59', '2021-05-23 03:41:59'),
(94, 102, 1, 34, 'b23', 'sdfgh', NULL, 'black', 500.00, 1, '2021-05-23 05:05:18', '2021-05-23 05:05:18'),
(95, 102, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2021-05-23 05:05:18', '2021-05-23 05:05:18'),
(96, 103, 1, 34, 'b23', 'sdfgh', NULL, 'black', 500.00, 1, '2021-05-23 05:17:40', '2021-05-23 05:17:40'),
(97, 103, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2021-05-23 05:17:40', '2021-05-23 05:17:40'),
(98, 104, 1, 34, 'b23', 'sdfgh', NULL, 'black', 500.00, 1, '2021-05-23 05:26:24', '2021-05-23 05:26:24'),
(99, 104, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2021-05-23 05:26:24', '2021-05-23 05:26:24'),
(100, 105, 1, 34, 'b23', 'sdfgh', NULL, 'black', 500.00, 1, '2021-05-23 05:28:24', '2021-05-23 05:28:24'),
(101, 105, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2021-05-23 05:28:24', '2021-05-23 05:28:24'),
(102, 106, 1, 34, 'b23', 'sdfgh', NULL, 'black', 500.00, 1, '2021-05-23 05:28:50', '2021-05-23 05:28:50'),
(103, 106, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2021-05-23 05:28:50', '2021-05-23 05:28:50'),
(104, 107, 1, 34, 'b23', 'sdfgh', NULL, 'black', 500.00, 1, '2021-05-23 05:30:43', '2021-05-23 05:30:43'),
(105, 107, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2021-05-23 05:30:44', '2021-05-23 05:30:44'),
(106, 108, 1, 34, 'b23', 'sdfgh', NULL, 'black', 500.00, 1, '2021-05-23 05:32:00', '2021-05-23 05:32:00'),
(107, 108, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2021-05-23 05:32:00', '2021-05-23 05:32:00'),
(108, 109, 1, 34, 'b23', 'sdfgh', NULL, 'black', 500.00, 1, '2021-05-23 05:40:30', '2021-05-23 05:40:30'),
(109, 109, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2021-05-23 05:40:30', '2021-05-23 05:40:30'),
(110, 110, 1, 34, 'b23', 'sdfgh', NULL, 'black', 500.00, 1, '2021-05-23 05:45:37', '2021-05-23 05:45:37'),
(111, 110, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2021-05-23 05:45:38', '2021-05-23 05:45:38'),
(112, 111, 1, 34, 'b23', 'sdfgh', NULL, 'black', 500.00, 1, '2021-05-23 05:52:37', '2021-05-23 05:52:37'),
(113, 111, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2021-05-23 05:52:37', '2021-05-23 05:52:37'),
(114, 112, 1, 34, 'b23', 'sdfgh', NULL, 'black', 500.00, 1, '2021-05-23 05:57:39', '2021-05-23 05:57:39'),
(115, 112, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2021-05-23 05:57:39', '2021-05-23 05:57:39'),
(116, 113, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2021-05-23 05:59:31', '2021-05-23 05:59:31'),
(117, 114, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2021-05-23 06:04:00', '2021-05-23 06:04:00'),
(118, 115, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2021-05-23 06:13:24', '2021-05-23 06:13:24'),
(119, 116, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2021-05-23 06:17:48', '2021-05-23 06:17:48'),
(120, 117, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2021-05-23 06:18:55', '2021-05-23 06:18:55'),
(121, 118, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2021-05-23 06:19:50', '2021-05-23 06:19:50'),
(122, 119, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2021-05-23 08:48:31', '2021-05-23 08:48:31'),
(123, 119, 1, 34, 'b23', 'sdfgh', NULL, 'black', 500.00, 1, '2021-05-23 08:48:31', '2021-05-23 08:48:31'),
(124, 120, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2021-05-23 08:49:30', '2021-05-23 08:49:30'),
(125, 120, 1, 34, 'b23', 'sdfgh', NULL, 'black', 500.00, 1, '2021-05-23 08:49:30', '2021-05-23 08:49:30'),
(126, 121, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2021-05-23 08:52:37', '2021-05-23 08:52:37'),
(127, 121, 1, 34, 'b23', 'sdfgh', NULL, 'black', 500.00, 1, '2021-05-23 08:52:37', '2021-05-23 08:52:37'),
(128, 122, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2021-05-23 08:53:45', '2021-05-23 08:53:45'),
(129, 122, 1, 34, 'b23', 'sdfgh', NULL, 'black', 500.00, 1, '2021-05-23 08:53:45', '2021-05-23 08:53:45'),
(130, 123, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2021-05-23 08:57:18', '2021-05-23 08:57:18'),
(131, 123, 1, 34, 'b23', 'sdfgh', NULL, 'black', 500.00, 1, '2021-05-23 08:57:18', '2021-05-23 08:57:18'),
(132, 124, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2021-05-23 08:58:02', '2021-05-23 08:58:02'),
(133, 124, 1, 34, 'b23', 'sdfgh', NULL, 'black', 500.00, 1, '2021-05-23 08:58:02', '2021-05-23 08:58:02'),
(134, 125, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2021-05-23 08:58:52', '2021-05-23 08:58:52'),
(135, 125, 1, 34, 'b23', 'sdfgh', NULL, 'black', 500.00, 1, '2021-05-23 08:58:52', '2021-05-23 08:58:52'),
(136, 126, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2021-05-23 09:01:38', '2021-05-23 09:01:38'),
(137, 126, 1, 34, 'b23', 'sdfgh', NULL, 'black', 500.00, 1, '2021-05-23 09:01:38', '2021-05-23 09:01:38'),
(138, 126, 1, 31, 'HF12', 'Half pant', 'half', 'White', 1200.00, 1, '2021-05-23 09:01:38', '2021-05-23 09:01:38'),
(139, 127, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2021-05-23 09:21:31', '2021-05-23 09:21:31'),
(140, 127, 1, 34, 'b23', 'sdfgh', NULL, 'black', 500.00, 1, '2021-05-23 09:21:31', '2021-05-23 09:21:31'),
(141, 127, 1, 31, 'HF12', 'Half pant', 'half', 'White', 1200.00, 1, '2021-05-23 09:21:31', '2021-05-23 09:21:31'),
(142, 128, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2021-05-23 09:24:52', '2021-05-23 09:24:52'),
(143, 128, 1, 34, 'b23', 'sdfgh', NULL, 'black', 500.00, 1, '2021-05-23 09:24:52', '2021-05-23 09:24:52'),
(144, 128, 1, 31, 'HF12', 'Half pant', 'half', 'White', 1200.00, 1, '2021-05-23 09:24:52', '2021-05-23 09:24:52'),
(145, 129, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2021-05-23 09:30:02', '2021-05-23 09:30:02'),
(146, 129, 1, 34, 'b23', 'sdfgh', NULL, 'black', 500.00, 1, '2021-05-23 09:30:02', '2021-05-23 09:30:02'),
(147, 129, 1, 31, 'HF12', 'Half pant', 'half', 'White', 1200.00, 1, '2021-05-23 09:30:02', '2021-05-23 09:30:02'),
(148, 130, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1200.00, 1, '2021-05-23 09:33:17', '2021-05-23 09:33:17'),
(149, 130, 1, 34, 'b23', 'sdfgh', NULL, 'black', 500.00, 1, '2021-05-23 09:33:17', '2021-05-23 09:33:17'),
(150, 130, 1, 31, 'HF12', 'Half pant', 'half', 'White', 1200.00, 1, '2021-05-23 09:33:17', '2021-05-23 09:33:17'),
(151, 131, 1, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-05-23 09:39:54', '2021-05-23 09:39:54'),
(152, 132, 1, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-05-23 09:42:54', '2021-05-23 09:42:54'),
(153, 133, 1, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-05-23 09:47:57', '2021-05-23 09:47:57'),
(154, 134, 1, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-05-23 10:29:14', '2021-05-23 10:29:14'),
(155, 135, 1, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-05-23 10:32:47', '2021-05-23 10:32:47'),
(156, 135, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1.00, 1, '2021-05-23 10:32:47', '2021-05-23 10:32:47'),
(157, 136, 1, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-05-23 11:22:08', '2021-05-23 11:22:08'),
(158, 136, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1.00, 1, '2021-05-23 11:22:08', '2021-05-23 11:22:08'),
(159, 137, 1, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-05-23 12:01:39', '2021-05-23 12:01:39'),
(160, 137, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1.00, 1, '2021-05-23 12:01:39', '2021-05-23 12:01:39'),
(161, 138, 1, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-05-23 12:03:30', '2021-05-23 12:03:30'),
(162, 138, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1.00, 1, '2021-05-23 12:03:30', '2021-05-23 12:03:30'),
(163, 139, 1, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-05-23 12:05:26', '2021-05-23 12:05:26'),
(164, 139, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1.00, 1, '2021-05-23 12:05:27', '2021-05-23 12:05:27'),
(165, 140, 1, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-05-23 12:15:18', '2021-05-23 12:15:18'),
(166, 140, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1.00, 1, '2021-05-23 12:15:18', '2021-05-23 12:15:18'),
(167, 141, 1, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-05-23 12:16:08', '2021-05-23 12:16:08'),
(168, 141, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1.00, 1, '2021-05-23 12:16:08', '2021-05-23 12:16:08'),
(169, 142, 1, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-05-24 00:36:03', '2021-05-24 00:36:03'),
(170, 142, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1.00, 1, '2021-05-24 00:36:05', '2021-05-24 00:36:05'),
(171, 142, 1, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-05-24 00:36:06', '2021-05-24 00:36:06'),
(172, 143, 1, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-05-24 00:45:34', '2021-05-24 00:45:34'),
(173, 143, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1.00, 1, '2021-05-24 00:45:34', '2021-05-24 00:45:34'),
(174, 143, 1, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-05-24 00:45:34', '2021-05-24 00:45:34'),
(175, 144, 1, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-05-24 00:48:22', '2021-05-24 00:48:22'),
(176, 144, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1.00, 1, '2021-05-24 00:48:22', '2021-05-24 00:48:22'),
(177, 144, 1, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-05-24 00:48:23', '2021-05-24 00:48:23'),
(178, 145, 1, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-05-24 00:54:23', '2021-05-24 00:54:23'),
(179, 145, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1.00, 1, '2021-05-24 00:54:24', '2021-05-24 00:54:24'),
(180, 145, 1, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-05-24 00:54:26', '2021-05-24 00:54:26'),
(181, 146, 1, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-05-24 01:00:47', '2021-05-24 01:00:47'),
(182, 146, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1.00, 1, '2021-05-24 01:00:47', '2021-05-24 01:00:47'),
(183, 146, 1, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-05-24 01:00:48', '2021-05-24 01:00:48'),
(184, 147, 1, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-05-24 01:05:17', '2021-05-24 01:05:17'),
(185, 147, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1.00, 1, '2021-05-24 01:05:17', '2021-05-24 01:05:17'),
(186, 147, 1, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-05-24 01:05:17', '2021-05-24 01:05:17'),
(187, 148, 1, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-05-24 03:48:12', '2021-05-24 03:48:12'),
(188, 148, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1.00, 1, '2021-05-24 03:48:12', '2021-05-24 03:48:12'),
(189, 148, 1, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-05-24 03:48:13', '2021-05-24 03:48:13'),
(190, 148, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1.00, 1, '2021-05-24 03:48:13', '2021-05-24 03:48:13'),
(191, 149, 1, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-05-24 03:48:57', '2021-05-24 03:48:57'),
(192, 149, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1.00, 1, '2021-05-24 03:48:57', '2021-05-24 03:48:57'),
(193, 149, 1, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-05-24 03:48:57', '2021-05-24 03:48:57'),
(194, 149, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1.00, 1, '2021-05-24 03:48:57', '2021-05-24 03:48:57'),
(195, 150, 1, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-05-24 03:54:17', '2021-05-24 03:54:17'),
(196, 150, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1.00, 1, '2021-05-24 03:54:17', '2021-05-24 03:54:17'),
(197, 150, 1, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-05-24 03:54:18', '2021-05-24 03:54:18'),
(198, 150, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1.00, 1, '2021-05-24 03:54:18', '2021-05-24 03:54:18'),
(199, 151, 1, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-05-24 09:47:07', '2021-05-24 09:47:07'),
(200, 151, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1.00, 1, '2021-05-24 09:47:07', '2021-05-24 09:47:07'),
(201, 152, 1, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-05-24 09:59:47', '2021-05-24 09:59:47'),
(202, 152, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1.00, 1, '2021-05-24 09:59:47', '2021-05-24 09:59:47'),
(203, 153, 1, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-05-24 10:14:51', '2021-05-24 10:14:51'),
(204, 153, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1.00, 1, '2021-05-24 10:14:51', '2021-05-24 10:14:51'),
(205, 154, 1, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-05-24 10:26:28', '2021-05-24 10:26:28'),
(206, 154, 1, 31, 'HF12', 'Half pant', NULL, 'White', 1.00, 1, '2021-05-24 10:26:28', '2021-05-24 10:26:28'),
(207, 155, 7, 34, 'b23', 'sdfgh', 'small', 'black', 5.00, 1, '2021-07-05 03:19:09', '2021-07-05 03:19:09'),
(208, 156, 4, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-07-05 23:25:46', '2021-07-05 23:25:46'),
(209, 156, 4, 31, 'HF12', 'Half pant', NULL, 'White', 1.00, 1, '2021-07-05 23:25:47', '2021-07-05 23:25:47'),
(210, 157, 4, 34, 'b23', 'sdfgh', NULL, 'black', 5.00, 1, '2021-07-07 04:58:40', '2021-07-07 04:58:40'),
(211, 157, 4, 31, 'HF12', 'Half pant', NULL, 'White', 1.00, 1, '2021-07-07 04:58:40', '2021-07-07 04:58:40'),
(212, 157, 4, 33, 'iphone12', 'Iphone 12', NULL, 'white', 1.00, 1, '2021-07-07 04:58:40', '2021-07-07 04:58:40');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `care` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sleeve` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_item` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_name`, `product_code`, `product_color`, `description`, `care`, `sleeve`, `price`, `image`, `feature_item`, `status`, `created_at`, `updated_at`) VALUES
(19, '2', 'styles shirt', '85', 'yellow', 'asdefrgthyju', 'ascdv', '', 2.00, '53273.jpg', 1, 1, '2020-10-03 08:23:25', '2020-10-29 01:08:44'),
(22, '2', 't_shirt', 'B26', 'red', 'wefghbhnjkilodt', 'vbnh', '', 11.00, '57801.jpg', 1, 1, '2020-10-28 22:36:27', '2020-11-01 08:22:03'),
(23, '1', 'styles shirt', 'b23', 'blue', 'wdfgthyjutgbnh', 'hyj', '', 1.00, '47018.jpg', 1, 1, '2020-10-28 22:39:48', '2020-11-01 08:21:36'),
(30, '10', 'Half Pant', 'Hf-16', 'nay blue', 'c cbn', '', '', 10.00, '52383.jpg', 1, 1, '2020-11-04 07:13:32', '2020-11-04 07:13:32'),
(31, '10', 'Half pant', 'HF12', 'White', 'cdvgh', '', '', 1.00, '29193.jpg', 1, 1, '2020-11-04 07:15:31', '2020-11-04 07:15:31'),
(32, '18', 'formal pant', 'fr12', 'white', 'defg', '', '', 2.00, '17244.jpg', 1, 1, '2020-11-04 07:18:04', '2020-11-04 07:18:04'),
(33, '17', 'Iphone 12', 'iphone12', 'white', 'dfgh', 'ddsfsfv', 'Full sleeve', 1.00, '62165.jpg', 1, 1, '2020-11-04 07:19:47', '2021-05-05 20:50:37'),
(34, '13', 'sdfgh', 'b23', 'black', 'sadfce', 'rfedcgcrg', 'Sleevless', 5.00, '72254.jpg', 1, 1, '2021-05-05 20:42:53', '2021-05-05 20:42:53');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `product_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(22, 13, 'b23-s', 'small', 12000.00, 10, '2020-10-02 11:10:53', '2020-10-02 11:10:53'),
(23, 19, 'b23-s', 'small', 1000.00, 10, '2020-10-03 09:16:20', '2020-10-03 09:16:20'),
(24, 19, 'b23-l', 'medium', 12000.00, 12, '2020-10-03 09:16:20', '2020-10-03 09:16:20'),
(25, 20, 'b24-s', 'small', 1000.00, 10, '2020-10-04 19:18:45', '2020-10-04 19:18:45'),
(26, 20, 'b24-l', 'medium', 12000.00, 12, '2020-10-04 19:18:45', '2020-10-04 19:18:45'),
(27, 21, 'b25-s', 'small', 1000.00, 10, '2020-10-04 19:22:50', '2020-10-04 19:22:50'),
(28, 21, 'b25-l', 'medium', 12000.00, 12, '2020-10-04 19:22:50', '2020-10-04 19:22:50'),
(29, 29, 'ls', 'small', 100.00, 12, NULL, NULL),
(30, 28, 'sb', 'small', 100.00, 12, NULL, NULL),
(31, 27, 'b23-lm', 'medium', 12000.00, 10, '2020-10-29 08:36:02', '2020-10-29 08:36:02'),
(32, 26, 'b25-s2', 'small', 100.00, 10, '2020-10-29 08:39:13', '2020-10-29 08:39:13'),
(33, 26, 'b25-sl', 'medium', 12000.00, 10, '2020-10-29 08:39:13', '2020-10-29 08:39:13'),
(34, 23, '221', 'small', 12000.00, 10, '2020-11-01 11:08:16', '2020-11-01 11:08:16'),
(35, 30, 'b21', 'half', 12000.00, 10, '2020-11-04 07:14:07', '2020-11-04 07:14:07'),
(36, 31, 'hf12', 'half', 12000.00, 10, '2020-11-04 07:15:50', '2020-11-04 07:15:50'),
(37, 33, 'iphone12', 'medium', 150000.00, 1, '2020-11-04 07:20:24', '2020-11-04 07:20:24'),
(38, 34, 'b23-ss', 'medium', 12.00, 100, '2021-05-21 10:03:05', '2021-05-21 10:03:05'),
(39, 34, 'b23-ss1', 'small', 150000.00, 100, '2021-05-21 10:03:47', '2021-05-21 10:03:47'),
(40, 34, 'b23-ss2', 'half', 100.00, 100, '2021-05-21 10:03:47', '2021-05-21 10:03:47');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `email`, `provider_id`, `avatar`, `email_verified_at`, `password`, `admin`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Sikder', 'plashbari bazar', 'saver ashulia', 'dhaka', 'Bangladesh', '02128736', '01715486265', 'mohsinsikder.cse@gmail.com', NULL, NULL, NULL, '$2y$10$fnro4VHVXxfqykYSYu/9mOZE7.Afv0vNtaBQdFfbc/HqNvMf6Yx7a', NULL, 1, NULL, '2021-07-04 08:35:59', '2021-07-13 02:44:38'),
(7, 'Mohsin', 'urfi charpara,Manikhar ,Gopalgonj', 'Gopalgonj', 'Dhaka', 'Bangladesh', '8100', '01706125400', 'mohsinsikder895@gmail.com', NULL, NULL, NULL, '$2y$10$koWlLtXs3GmLgKMSNo5SNusWmrhdut9wrcrWy.RlMvB3RebQ2rs8m', NULL, 1, NULL, '2021-07-05 03:17:35', '2021-07-05 22:09:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_pages`
--
ALTER TABLE `cms_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nikolag_customers`
--
ALTER TABLE `nikolag_customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nikolag_customers_email_unique` (`email`),
  ADD UNIQUE KEY `pstype_psid` (`payment_service_type`,`payment_service_id`),
  ADD KEY `nikolag_customers_email_index` (`email`);

--
-- Indexes for table `nikolag_customer_user`
--
ALTER TABLE `nikolag_customer_user`
  ADD UNIQUE KEY `oid_cid` (`owner_id`,`customer_id`);

--
-- Indexes for table `nikolag_deductibles`
--
ALTER TABLE `nikolag_deductibles`
  ADD KEY `nikolag_deductibles_index` (`deductible_type`,`deductible_id`),
  ADD KEY `nikolag_featurables_index` (`featurable_type`,`featurable_id`);

--
-- Indexes for table `nikolag_discounts`
--
ALTER TABLE `nikolag_discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nikolag_discounts_name_index` (`name`);

--
-- Indexes for table `nikolag_orders`
--
ALTER TABLE `nikolag_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nikolag_products`
--
ALTER TABLE `nikolag_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vname_name` (`name`,`variation_name`),
  ADD KEY `nikolag_products_name_index` (`name`),
  ADD KEY `nikolag_products_reference_id_index` (`reference_id`);

--
-- Indexes for table `nikolag_product_order`
--
ALTER TABLE `nikolag_product_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `prodid_ordid` (`product_id`,`order_id`);

--
-- Indexes for table `nikolag_taxes`
--
ALTER TABLE `nikolag_taxes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_type` (`name`,`type`),
  ADD KEY `nikolag_taxes_name_index` (`name`),
  ADD KEY `nikolag_taxes_type_index` (`type`);

--
-- Indexes for table `nikolag_transactions`
--
ALTER TABLE `nikolag_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nikolag_transactions_status_index` (`status`),
  ADD KEY `nikolag_transactions_payment_service_type_index` (`payment_service_type`),
  ADD KEY `cus_id` (`customer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `cms_pages`
--
ALTER TABLE `cms_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `nikolag_customers`
--
ALTER TABLE `nikolag_customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nikolag_discounts`
--
ALTER TABLE `nikolag_discounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nikolag_orders`
--
ALTER TABLE `nikolag_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nikolag_products`
--
ALTER TABLE `nikolag_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nikolag_product_order`
--
ALTER TABLE `nikolag_product_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nikolag_taxes`
--
ALTER TABLE `nikolag_taxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nikolag_transactions`
--
ALTER TABLE `nikolag_transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nikolag_product_order`
--
ALTER TABLE `nikolag_product_order`
  ADD CONSTRAINT `prod_id` FOREIGN KEY (`product_id`) REFERENCES `nikolag_products` (`id`);

--
-- Constraints for table `nikolag_transactions`
--
ALTER TABLE `nikolag_transactions`
  ADD CONSTRAINT `cus_id` FOREIGN KEY (`customer_id`) REFERENCES `nikolag_customers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
