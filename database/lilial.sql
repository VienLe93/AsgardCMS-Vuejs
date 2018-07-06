-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 06, 2018 at 08:45 AM
-- Server version: 10.1.26-MariaDB-0+deb9u1
-- PHP Version: 7.2.6-1+0~20180611145758.22+stretch~1.gbpe20e8b

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lilial`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'GrDr9TjEDsNsFFLi2XIyxS53297AWTwj', 1, '2018-07-01 19:55:17', '2018-07-01 19:55:17', '2018-07-01 19:55:17'),
(5, 5, 'MrYwQUnhayj665PUqq4Xjurg8P8fIL14', 1, '2018-07-01 20:46:23', '2018-07-01 20:46:14', '2018-07-01 20:46:23');

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
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People\'s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People\'s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'VI', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'ZR', 'Zaire'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard__widgets`
--

CREATE TABLE `dashboard__widgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widgets` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media__files`
--

CREATE TABLE `media__files` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_folder` tinyint(1) NOT NULL DEFAULT '0',
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mimetype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filesize` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media__file_translations`
--

CREATE TABLE `media__file_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_attribute` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media__imageables`
--

CREATE TABLE `media__imageables` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(11) NOT NULL,
  `imageable_id` int(11) NOT NULL,
  `imageable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu__menuitems`
--

CREATE TABLE `menu__menuitems` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'page',
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `module_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_root` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu__menuitem_translations`
--

CREATE TABLE `menu__menuitem_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `menuitem_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uri` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu__menus`
--

CREATE TABLE `menu__menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `primary` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu__menu_translations`
--

CREATE TABLE `menu__menu_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_07_02_230147_migration_cartalyst_sentinel', 1),
(2, '2016_06_24_193447_create_user_tokens_table', 1),
(3, '2014_10_14_200250_create_settings_table', 2),
(4, '2014_10_15_191204_create_setting_translations_table', 2),
(5, '2015_06_18_170048_make_settings_value_text_field', 2),
(6, '2015_10_22_130947_make_settings_name_unique', 2),
(7, '2017_09_17_164631_make_setting_value_nullable', 2),
(8, '2014_11_03_160015_create_menus_table', 3),
(9, '2014_11_03_160138_create_menu-translations_table', 3),
(10, '2014_11_03_160753_create_menuitems_table', 3),
(11, '2014_11_03_160804_create_menuitem_translation_table', 3),
(12, '2014_12_17_185301_add_root_column_to_menus_table', 3),
(13, '2015_09_05_100142_add_icon_column_to_menuitems_table', 3),
(14, '2016_01_26_102307_update_icon_column_on_menuitems_table', 3),
(15, '2016_08_01_142345_add_link_type_colymn_to_menuitems_table', 3),
(16, '2016_08_01_143130_add_class_column_to_menuitems_table', 3),
(17, '2017_09_18_192639_make_title_field_nullable_menu_table', 3),
(18, '2014_10_26_162751_create_files_table', 4),
(19, '2014_10_26_162811_create_file_translations_table', 4),
(20, '2015_02_27_105241_create_image_links_table', 4),
(21, '2015_12_19_143643_add_sortable', 4),
(22, '2017_09_20_144631_add_folders_columns_on_files_table', 4),
(23, '2014_11_30_191858_create_pages_tables', 5),
(24, '2017_10_13_103344_make_status_field_nullable_on_page_translations_table', 5),
(25, '2015_04_02_184200_create_widgets_table', 6),
(26, '2013_04_09_062329_create_revisions_table', 7),
(27, '2015_11_20_184604486385_create_translation_translations_table', 7),
(28, '2015_11_20_184604743083_create_translation_translation_translations_table', 7),
(29, '2015_12_01_094031_update_translation_translations_table_with_index', 7),
(30, '2016_07_12_181155032011_create_tag_tags_table', 8),
(31, '2016_07_12_181155289444_create_tag_tag_translations_table', 8),
(32, '2018_07_02_093557322319_create_profile_profiles_table', 9),
(33, '2018_07_02_093557572726_create_profile_profile_translations_table', 9),
(40, '2018_07_03_032940_alter_user_table', 10),
(41, '2018_07_04_021409_add_user_name_to_users_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `page__pages`
--

CREATE TABLE `page__pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_home` tinyint(1) NOT NULL DEFAULT '0',
  `template` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page__pages`
--

INSERT INTO `page__pages` (`id`, `is_home`, `template`, `created_at`, `updated_at`) VALUES
(1, 1, 'home', '2018-07-01 19:55:51', '2018-07-01 19:55:51'),
(2, 0, 'default', '2018-07-01 23:56:10', '2018-07-01 23:56:10'),
(3, 0, 'default', '2018-07-01 23:56:18', '2018-07-01 23:56:18'),
(4, 0, 'default', '2018-07-01 23:56:31', '2018-07-01 23:56:31'),
(5, 0, 'default', '2018-07-01 23:56:40', '2018-07-01 23:56:40'),
(6, 0, 'default', '2018-07-01 23:56:46', '2018-07-01 23:56:46'),
(7, 0, 'default', '2018-07-01 23:56:55', '2018-07-01 23:56:55'),
(8, 0, 'default', '2018-07-01 23:57:05', '2018-07-01 23:57:05'),
(9, 0, 'default', '2018-07-01 23:57:13', '2018-07-01 23:57:13'),
(10, 0, 'default', '2018-07-01 23:57:23', '2018-07-01 23:57:23'),
(11, 0, 'default', '2018-07-01 23:57:30', '2018-07-01 23:57:30');

-- --------------------------------------------------------

--
-- Table structure for table `page__page_translations`
--

CREATE TABLE `page__page_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page__page_translations`
--

INSERT INTO `page__page_translations` (`id`, `page_id`, `locale`, `title`, `slug`, `status`, `body`, `meta_title`, `meta_description`, `og_title`, `og_description`, `og_image`, `og_type`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Home page', 'home', '1', '<p><strong>You made it!</strong></p>\n<p>You&#39;ve installed AsgardCMS and are ready to proceed to the <a href=\"/en/backend\">administration area</a>.</p>\n<h2>What&#39;s next ?</h2>\n<p>Learn how you can develop modules for AsgardCMS by reading our <a href=\"https://github.com/AsgardCms/Documentation\">documentation</a>.</p>\n', 'Home page', NULL, NULL, NULL, NULL, NULL, '2018-07-01 19:55:51', '2018-07-01 19:55:51'),
(2, 2, 'en', '123', '123', '1', '<p>123</p>', NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-01 23:56:10', '2018-07-01 23:56:10'),
(3, 3, 'en', '234', '234', '1', '<p>234</p>', NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-01 23:56:18', '2018-07-01 23:56:18'),
(4, 4, 'en', 'abc', 'abc', '1', '<p>abc</p>', NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-01 23:56:31', '2018-07-01 23:56:31'),
(5, 5, 'en', 'asdsa', 'asdsa', '1', '<p>adsdas</p>', NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-01 23:56:40', '2018-07-01 23:56:40'),
(6, 6, 'en', 'dadad', 'dadad', '1', '<p>dadad</p>', NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-01 23:56:46', '2018-07-01 23:56:46'),
(7, 7, 'en', 'vcb', 'vcb', '1', '<p>vcbcv</p>', NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-01 23:56:55', '2018-07-01 23:56:55'),
(8, 8, 'en', 'vbcbcv', 'vbcbcv', '1', '<p>vcxc</p>', NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-01 23:57:05', '2018-07-01 23:57:05'),
(9, 9, 'en', 'bnn egdf', 'bnn-egdf', '1', '<p>&nbsp;gfdgdf</p>', NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-01 23:57:13', '2018-07-01 23:57:13'),
(10, 10, 'en', '3r4fg df', '3r4fg-df', '1', '<p>dsa jhe</p>', NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-01 23:57:23', '2018-07-01 23:57:23'),
(11, 11, 'en', 'hhwae', 'hhwae', '1', '<p>atex</p>', NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-01 23:57:31', '2018-07-01 23:57:31');

-- --------------------------------------------------------

--
-- Table structure for table `persistences`
--

CREATE TABLE `persistences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `persistences`
--

INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(4, 1, 'ytNxf94Xzq8hd4Nh9fobEmOHM781MrGY', '2018-07-01 20:22:02', '2018-07-01 20:22:02'),
(5, 1, '4TU4uFvBOMSlMXgEfcuor6wDRgRo9Yzs', '2018-07-01 20:22:05', '2018-07-01 20:22:05'),
(6, 1, 'UNpY15dunGA6nqZS1nSDre6olPcAwvaB', '2018-07-01 20:22:05', '2018-07-01 20:22:05'),
(7, 1, 'tNwNB4qg6lcPBfnVaGmyXAopTcfui6nN', '2018-07-01 20:22:05', '2018-07-01 20:22:05'),
(8, 1, 'toqbb4Y1BsEIZ5EXDQZfqIsCIwXTvFIr', '2018-07-01 20:22:25', '2018-07-01 20:22:25'),
(9, 1, 'Xln9aiGsunpCb82SraknDNShH5JunEZh', '2018-07-01 20:22:26', '2018-07-01 20:22:26'),
(10, 1, 'XWhlxd4VYRDDHLoLlEzRkF61gXC98e1H', '2018-07-01 20:22:27', '2018-07-01 20:22:27'),
(11, 1, 'jLhZQ92ho82xXpCUe5pfhF2VlQrhmFxI', '2018-07-01 20:22:27', '2018-07-01 20:22:27'),
(12, 1, 'YUwULLxHLVc7f1x5LGnikp66279ZsMAo', '2018-07-01 20:22:27', '2018-07-01 20:22:27'),
(14, 1, '8cDqFhYJzFPhefRzouRA6JoJElKMabgi', '2018-07-01 20:47:47', '2018-07-01 20:47:47'),
(15, 1, 'HtzKfm13yZcjYeVMtIEtHMEbTGp9kYCa', '2018-07-01 20:47:52', '2018-07-01 20:47:52'),
(16, 1, '1MAeBiS0jJia3TX8XGuLL3AFlN0FoQm6', '2018-07-01 20:47:54', '2018-07-01 20:47:54'),
(17, 1, 'td4ujcNQyluDRgl5z2j4SqVP6zs2J5TS', '2018-07-01 20:47:54', '2018-07-01 20:47:54'),
(18, 1, 'naiOKJDJrFoGBOHgPPjPEubspwIUCurw', '2018-07-01 20:47:54', '2018-07-01 20:47:54'),
(19, 1, 'JHa6khIhJxwwuVI83A8UiqbUue8KWEYu', '2018-07-01 20:48:08', '2018-07-01 20:48:08'),
(20, 1, '5RRnsyuSspW1wJmDjv2HpOfKN8gTv3Xr', '2018-07-01 20:48:08', '2018-07-01 20:48:08'),
(25, 1, 'QckG5ZfxLBCpzuOUC1zLbdIv5CgPociG', '2018-07-01 20:52:41', '2018-07-01 20:52:41'),
(26, 1, 'CWlAAcPVM47YkZIYqFqXOC2J9bBKT1xq', '2018-07-01 20:52:55', '2018-07-01 20:52:55'),
(27, 1, 'oS1MecUAmIeKNhiTMy4uhMyoJdzrmuqM', '2018-07-01 20:52:55', '2018-07-01 20:52:55'),
(28, 1, 'pNZGJHlVGou4pecMcgeoqbsx8UIkzLzu', '2018-07-01 20:52:55', '2018-07-01 20:52:55'),
(29, 1, 'wyohfko4IuxJxvXgaA1AAQKcJfE1MsJj', '2018-07-01 20:53:07', '2018-07-01 20:53:07'),
(31, 1, 'RB9VXgOLQst8YBuJkvi0sBwOupqpLOpk', '2018-07-01 20:53:22', '2018-07-01 20:53:22'),
(32, 1, 'WyMHedghfi2Z7DIERpXUpiZoXmx7Unat', '2018-07-01 20:53:31', '2018-07-01 20:53:31'),
(33, 1, 'ocq3mAzlVtprYhVGwhENgOLFI7T4Bvur', '2018-07-01 20:53:31', '2018-07-01 20:53:31'),
(34, 1, 'RAnF4kbS6TcF9ZoFgDd0kk0fdA4B73rH', '2018-07-01 20:53:31', '2018-07-01 20:53:31'),
(35, 1, 'B71ccFPBv8TfjOYPIbPuov3Zu1MWyQ2F', '2018-07-01 20:53:45', '2018-07-01 20:53:45'),
(36, 1, 'jVXcvFB5oy5kF4ylE4tbooq0J97SN42S', '2018-07-01 20:57:43', '2018-07-01 20:57:43'),
(37, 1, 'DikxQGKm55kRlQIHKE70JUCgYE5yxaQ3', '2018-07-01 20:57:54', '2018-07-01 20:57:54'),
(38, 1, '6S8hHXXIhe5kVEoB1ToX57TRpTOXBqWp', '2018-07-01 20:58:05', '2018-07-01 20:58:05'),
(39, 1, 'Q2RfaPwWNLmXcVw4CxoTdOjRRVCdkngb', '2018-07-01 20:58:33', '2018-07-01 20:58:33'),
(40, 1, 'oTArYPcFq7lIcVPKFBIHfWxUiOoiXbTD', '2018-07-01 20:58:46', '2018-07-01 20:58:46'),
(41, 1, 'trNHKltiWQaXTFNic6J64K8qneSlN4zz', '2018-07-01 20:58:59', '2018-07-01 20:58:59'),
(42, 1, 'JFK2XbhGIvIlgYoOnErzKSexVSCkJdxA', '2018-07-01 20:59:01', '2018-07-01 20:59:01'),
(43, 1, 'iu75DxdnFQXrQVjAlrv4uTdUfJwJlPSa', '2018-07-01 20:59:01', '2018-07-01 20:59:01'),
(44, 1, 'dVnBFHEr05r94xEnouyjAcQQLXfuk40k', '2018-07-01 20:59:01', '2018-07-01 20:59:01'),
(45, 1, 'lYMjYLJALO0Cpc4Q7DhUxZUQdYDwcNoy', '2018-07-01 20:59:15', '2018-07-01 20:59:15'),
(46, 1, '0dukXfMK6Nz7y6qMxjTVgCpCXbBYo8Me', '2018-07-01 20:59:15', '2018-07-01 20:59:15'),
(47, 1, 'cvbsTbeDUn2wTvub7zLohfFrpO1T7eQ9', '2018-07-01 20:59:15', '2018-07-01 20:59:15'),
(48, 1, 'ATvjDV0w0DdogTfJJOX4ThKKRq5u5N1l', '2018-07-01 20:59:21', '2018-07-01 20:59:21'),
(49, 1, 'FVR5zc2u4KMnRERbA894Zy2rctPRgR8T', '2018-07-01 20:59:30', '2018-07-01 20:59:30'),
(50, 1, 'ORMPG9S1j5OUuwIGbgpD3G89wk9OUMQ0', '2018-07-01 21:01:00', '2018-07-01 21:01:00'),
(51, 1, 's7Dv5KOTZvHhepMgyE8C9EWNM1q22JXy', '2018-07-01 21:01:06', '2018-07-01 21:01:06'),
(52, 1, 'oAMfxjzakMMYHd6ljwmX0tBnL373N31W', '2018-07-01 21:15:51', '2018-07-01 21:15:51'),
(53, 1, 'FGiwgUOc5r1nuUwvHTTbYF5ROt6D3vlR', '2018-07-01 21:15:54', '2018-07-01 21:15:54'),
(54, 1, 'NqQh3beeUDHpjNrnMt6gtXh25M4Sjf6f', '2018-07-01 21:15:54', '2018-07-01 21:15:54'),
(55, 1, 'NWe7SNuB0MDbte28sCPZsRyuIsqier5e', '2018-07-01 21:15:54', '2018-07-01 21:15:54'),
(56, 1, 'wrHcTYj326In5ocLplyD19HfIGOeer8C', '2018-07-01 21:15:55', '2018-07-01 21:15:55'),
(57, 1, 'xo5nnDSiJDFJoKPZGEF2o43D1ESVxVKF', '2018-07-01 21:16:05', '2018-07-01 21:16:05'),
(58, 1, 'Z0BWYUbog7QcphebGQACNyzXfT22qLB1', '2018-07-01 21:16:28', '2018-07-01 21:16:28'),
(59, 1, 'PyG8JGNehxZKYHOl1aVe6wIAJdNmgH9H', '2018-07-01 21:16:45', '2018-07-01 21:16:45'),
(60, 1, 'IORHyQ4NlhOHofx1wFvGu9ZRvFpTaqYx', '2018-07-01 21:16:50', '2018-07-01 21:16:50'),
(61, 1, 'TB1yN3KST2h8g9zashvvtu95s0GVhgL5', '2018-07-01 21:16:59', '2018-07-01 21:16:59'),
(62, 1, 'sUqMycp1XCWxgWxSmdVOnRmhVd62yqxk', '2018-07-01 21:17:03', '2018-07-01 21:17:03'),
(63, 1, 'j5Xxmmz3GdVrek3z51gUXI58oKH35dym', '2018-07-01 21:17:03', '2018-07-01 21:17:03'),
(64, 1, 'UCrrNjOdDtlhPYaqKUClCUEiypznpL7e', '2018-07-01 21:17:03', '2018-07-01 21:17:03'),
(65, 1, 'hkjzZJXjWVUuy1o3ky3ygfbwrcnrRT4w', '2018-07-01 21:17:17', '2018-07-01 21:17:17'),
(66, 1, 'dMQq0CSAoNJV4VKiqdc9f8XHeEVGFmRb', '2018-07-01 21:17:17', '2018-07-01 21:17:17'),
(67, 1, 'dtqd1YgjykSZwNUCLL4WFqOJXXb7Nw9C', '2018-07-01 21:17:17', '2018-07-01 21:17:17'),
(68, 1, 'lhFGQ8Xo2XNTbBPK4NArrOnhsYH8A2xl', '2018-07-01 21:17:19', '2018-07-01 21:17:19'),
(69, 1, 'WnynxS7udtgGcZLCLzD8fQ3NrY8IfuQ8', '2018-07-01 21:17:19', '2018-07-01 21:17:19'),
(70, 1, 'OWWCIjaP5BQoukN6OSdHBmQTFffrkuAr', '2018-07-01 21:17:19', '2018-07-01 21:17:19'),
(71, 1, '4164FlUO4QK64F1rT5LKdnUuCEzw8Xyr', '2018-07-01 21:17:21', '2018-07-01 21:17:21'),
(72, 1, 'vP1jGZn5AIKCv3rsPJeEb51KVZLq282b', '2018-07-01 21:17:45', '2018-07-01 21:17:45'),
(73, 1, '5aXmGwIgTH1faqiTxYyh0suDhxMNJ6ix', '2018-07-01 21:17:46', '2018-07-01 21:17:46'),
(74, 1, 'szDWAPJoXXaOeXIg4Hvjy6XFpBu8aDjL', '2018-07-01 21:17:47', '2018-07-01 21:17:47'),
(75, 1, 'otTHWyXPFEOnQRpkkFWsGqkMOYqXu2MK', '2018-07-01 21:21:15', '2018-07-01 21:21:15'),
(76, 1, 'i3tfiUz4IjoW5mq1KTqlondEsVk3SdcA', '2018-07-01 21:25:55', '2018-07-01 21:25:55'),
(77, 1, 'rLEAoX0zjTD09vMRegu5bR6gFwQhFVbA', '2018-07-01 21:25:57', '2018-07-01 21:25:57'),
(78, 1, 'GLIWPmqfide8gSNryqZvbnE3jPB8BA1r', '2018-07-01 21:25:57', '2018-07-01 21:25:57'),
(79, 1, 'izM8RUnB5iZtuh9g9qnLdRbZLdaX2ONM', '2018-07-01 21:25:57', '2018-07-01 21:25:57'),
(80, 1, 'Z5HRDWxJdpnNQU1ZZ8Hr1deDdoCyEEIf', '2018-07-01 21:33:01', '2018-07-01 21:33:01'),
(81, 1, 'n4uGBFrofpBp2XMVczAOItAooaOQMMPj', '2018-07-01 21:34:45', '2018-07-01 21:34:45'),
(82, 1, 'rXkBq6pEm2vxI66uHNxmGKkxpzGvnW2s', '2018-07-01 21:35:01', '2018-07-01 21:35:01'),
(83, 1, 'Qq88wlD95mgnoXdwBCv4O5qfMhvCvFoo', '2018-07-01 21:35:02', '2018-07-01 21:35:02'),
(84, 1, 'PuSctfcvewArpV14awpZOuTLbVTQDLZc', '2018-07-01 21:35:02', '2018-07-01 21:35:02'),
(85, 1, 'h0yYAoKysSUNo6CzHcatcwYN9j1p1cOG', '2018-07-01 21:35:03', '2018-07-01 21:35:03'),
(86, 1, 'WIVoulEfCqnYhMyacqVuRQ6GWlXqsFoE', '2018-07-01 21:35:04', '2018-07-01 21:35:04'),
(87, 1, 'PwH0sjQieOgzf40DOMJvdGnmPLK1UCXx', '2018-07-01 21:35:09', '2018-07-01 21:35:09'),
(88, 1, 'zq384Xr6jk50eLBNt9EzwW2cEaW8dSxC', '2018-07-01 21:35:11', '2018-07-01 21:35:11'),
(89, 1, 'T6A7Tys6bYdo0KcwtDFqNxKqMM2JTPJ6', '2018-07-01 21:35:13', '2018-07-01 21:35:13'),
(90, 1, '4yq23KtN47CylPmZIoVYM4bKiZ9ihIAg', '2018-07-01 21:42:03', '2018-07-01 21:42:03'),
(91, 1, 'ADPEx4CVeBHvbjG2EjmsCaBMp85EfEKf', '2018-07-01 21:45:30', '2018-07-01 21:45:30'),
(92, 1, 'sVzSk8imHTiLL6EVZCVLyjbqDoCn6YYz', '2018-07-01 21:45:41', '2018-07-01 21:45:41'),
(93, 1, 'hRv0yXNolUHxpGPhG6jh2967vBIIHZf9', '2018-07-01 21:45:42', '2018-07-01 21:45:42'),
(94, 1, 'hfhLVVk38NPCwdyMzCeX2NQ0gyHWFIv5', '2018-07-01 21:45:44', '2018-07-01 21:45:44'),
(95, 1, 'A67EQ1wAMJ2kVzgNopZNywPJVu0FjoPt', '2018-07-01 21:45:45', '2018-07-01 21:45:45'),
(96, 1, 'pZq90qJ79G02odDQsGKj3ZAojJ5Vu5CJ', '2018-07-01 21:45:46', '2018-07-01 21:45:46'),
(97, 1, 'D9V8RBY2eP3xBYtxOlM9CfPn7BtcYcbk', '2018-07-01 21:46:04', '2018-07-01 21:46:04'),
(98, 1, 'cOC4q8NfaHLVmOOv8vb5PU6BgxnCcPM9', '2018-07-01 21:50:23', '2018-07-01 21:50:23'),
(99, 1, 'tSc9b7Qjkwt6u8ccDrQFGcZ1Fxs8GiQR', '2018-07-01 21:50:44', '2018-07-01 21:50:44'),
(100, 1, 'BGxjZwIXfOFZuWbFhN4ggoWIdqjVkPFh', '2018-07-01 21:55:29', '2018-07-01 21:55:29'),
(101, 1, 'fiKqPQ4779VtSf7lGMzYEpXwpsQ08nrf', '2018-07-01 21:55:48', '2018-07-01 21:55:48'),
(102, 1, 'kBiGYj6MsOxveQB5OgDN3qfpGFKvtbS6', '2018-07-01 21:55:51', '2018-07-01 21:55:51'),
(103, 1, 'x4DcubPI0gxVgXzGkfLoET1ahWu8Nvxw', '2018-07-01 21:56:02', '2018-07-01 21:56:02'),
(104, 1, 'ArNk5abQknBlwLN8DvSrOwZ5lLstAGJb', '2018-07-01 21:57:26', '2018-07-01 21:57:26'),
(105, 1, '6u1tVpqPKoa6Ux2E7QU17L8dqcjcWLfU', '2018-07-01 21:57:26', '2018-07-01 21:57:26'),
(106, 1, '8a128a4i6xZ282ltHRrfxJIhabW2zgV4', '2018-07-01 21:57:26', '2018-07-01 21:57:26'),
(107, 1, 'Zl7B0B19LjpUNIQmR4e5ptfZYdzmiG4A', '2018-07-01 21:57:32', '2018-07-01 21:57:32'),
(108, 1, 'VxXga0m2OnlPIYmcl5m6dxez6NVeGrAW', '2018-07-01 21:57:49', '2018-07-01 21:57:49'),
(109, 1, 'KDiHwNrYlN2RriycLnBPbketDcUG0YUh', '2018-07-01 21:59:45', '2018-07-01 21:59:45'),
(110, 1, '8zf6OAMwNI7wTvVrXl47lHywYhMQryCx', '2018-07-01 23:14:22', '2018-07-01 23:14:22'),
(111, 1, 'P9NWGdMmZspdDF0m7Cumd7F7r00ug8bo', '2018-07-01 23:14:27', '2018-07-01 23:14:27'),
(112, 1, 'aI9ptbDcaHZ8c6egidpGMoMleCfS9gHT', '2018-07-01 23:14:27', '2018-07-01 23:14:27'),
(113, 1, 'XCvSntbQghwElNZhAkSS4r5FVFhRCZPq', '2018-07-01 23:14:27', '2018-07-01 23:14:27'),
(114, 1, '84MKbKSuGHfomNdwz55lwPUNv28i4qGW', '2018-07-01 23:14:29', '2018-07-01 23:14:29'),
(115, 1, 'KcAZ50HYPDzBzYsCCkUtYyJoI6NOHfTv', '2018-07-01 23:14:31', '2018-07-01 23:14:31'),
(116, 1, 'GMiizp2jWKhlzfj55WnkkFZS0EOZruZV', '2018-07-01 23:14:31', '2018-07-01 23:14:31'),
(117, 1, 'Z9gCWF3gMZtlvzTmWMqpDHfsNHTTC6eE', '2018-07-01 23:14:31', '2018-07-01 23:14:31'),
(118, 1, 'MqTDYNb5HXoDygHuLfTKWeWChcve6gsX', '2018-07-01 23:14:32', '2018-07-01 23:14:32'),
(119, 1, 'ELt5P39s2PVJx488nrR0dp5THOFH2mbQ', '2018-07-01 23:14:33', '2018-07-01 23:14:33'),
(120, 1, 'Tv1W4ecrIx1VGYTw74T2kUtLQN4tmXR2', '2018-07-01 23:14:33', '2018-07-01 23:14:33'),
(121, 1, 'E4b6UNhJHJLQy1M5zcCNHgO3YpXC31LX', '2018-07-01 23:14:33', '2018-07-01 23:14:33'),
(122, 1, 'D4luLY3QQzJrMfD4FKOi9NFkgtFO8lMG', '2018-07-01 23:14:34', '2018-07-01 23:14:34'),
(123, 1, '5De19AkmqMayjPH0wfV3747Gh8xqKVtp', '2018-07-01 23:14:56', '2018-07-01 23:14:56'),
(124, 1, 'zUnaHMVCyj9rUweUaIno2HrnbJVVL3bv', '2018-07-01 23:16:23', '2018-07-01 23:16:23'),
(125, 1, 'rACock1uatTmPcG0BOFxNeJ8j0QNVRaP', '2018-07-01 23:16:23', '2018-07-01 23:16:23'),
(126, 1, 'obAUN0V7FlR55cD5cj88Wf5M2Rbrjqrt', '2018-07-01 23:16:23', '2018-07-01 23:16:23'),
(127, 1, 'gTwz0gZeGosswBOzOjdK0PA8us3Bp8Ue', '2018-07-01 23:16:28', '2018-07-01 23:16:28'),
(128, 1, '7QZeJ1ChCHwpCaPIaE4O7j2n3LmFmgdg', '2018-07-01 23:18:14', '2018-07-01 23:18:14'),
(129, 1, 'eeaPXS5jUB4tZWyA0r7mRLto75GxCaii', '2018-07-01 23:18:23', '2018-07-01 23:18:23'),
(130, 1, 'YxY5MTWhGrEIdnHGrvyeCswI709y8xe7', '2018-07-01 23:18:30', '2018-07-01 23:18:30'),
(131, 1, 'XSamJ9skuHML3eEQI7ElHLhhdJV2LBPQ', '2018-07-01 23:18:31', '2018-07-01 23:18:31'),
(132, 1, 'aZ5Fh4OFimjcyZvuFg5Nvh3JrOKBUhgS', '2018-07-01 23:18:46', '2018-07-01 23:18:46'),
(133, 1, 'c7RJhfLstPuCpHIJOlk9f9y1VrvK7cGI', '2018-07-01 23:18:58', '2018-07-01 23:18:58'),
(134, 1, 'Dx9T8I33SR1e0f5AnOb8SnFrqd68RZxm', '2018-07-01 23:19:52', '2018-07-01 23:19:52'),
(135, 1, 'UpxKSCvC5ooDTiVJtsgXgnKbpRlMH0Fa', '2018-07-01 23:21:46', '2018-07-01 23:21:46'),
(136, 1, 'tOrHpz3bCczGhNna5nqEvchQ56oQrK2I', '2018-07-01 23:21:51', '2018-07-01 23:21:51'),
(137, 1, 'X3B4UInhPSp16KXnp45QUmLl6PJiE6Vu', '2018-07-01 23:21:55', '2018-07-01 23:21:55'),
(138, 1, 'hxtTv8AtbCwJI7Ga9o7XIrxhqn2StS63', '2018-07-01 23:22:02', '2018-07-01 23:22:02'),
(139, 1, 'GX2pWyWvqg0fVxdxP4St5bAhFTlR6vv3', '2018-07-01 23:22:54', '2018-07-01 23:22:54'),
(140, 1, 'f4kfuIhHk4D5MhVPTRqTlvfKruM1Eo56', '2018-07-01 23:41:45', '2018-07-01 23:41:45'),
(141, 1, 'BokQb06FLTHawRnT8LGDpgjwwkTdgOBA', '2018-07-01 23:42:01', '2018-07-01 23:42:01'),
(142, 1, 'R5RcKXWUtqCNhmyng7zzpP2pVCsW4JDe', '2018-07-01 23:42:02', '2018-07-01 23:42:02'),
(143, 1, 'qN8lZlSf1U6rueldfaPkevH3vv0VA5sS', '2018-07-01 23:42:03', '2018-07-01 23:42:03'),
(144, 1, 'CAFYiVwwhfIetk9rLwDBp9Pe4tg6ZyBp', '2018-07-01 23:42:04', '2018-07-01 23:42:04'),
(145, 1, 'GnIdnZ0dAKbyt9EiQRVfeEshEJckWn8Q', '2018-07-01 23:42:06', '2018-07-01 23:42:06'),
(146, 1, '29ExTWic9BiI9tQOB2rErBjQJAEgESLV', '2018-07-01 23:42:07', '2018-07-01 23:42:07'),
(147, 1, 'Uy3YZcprdzTeaVMO44vl938eD4KgqKyZ', '2018-07-01 23:42:34', '2018-07-01 23:42:34'),
(148, 1, 'KXvdVmHhhlygHVDxjLKiXeuO02FcH7j9', '2018-07-01 23:42:38', '2018-07-01 23:42:38'),
(149, 1, 'fEyemhkrYUs13v1FJP5xVhrNU3RvTqTw', '2018-07-01 23:42:38', '2018-07-01 23:42:38'),
(150, 1, 'hyZllqcYvvKug2vXBciYMjlTqZPQYxon', '2018-07-01 23:42:38', '2018-07-01 23:42:38'),
(151, 1, 'lK31BVIwbF6NSQXl7JLKBaVEgTvPYFHT', '2018-07-01 23:42:41', '2018-07-01 23:42:41'),
(152, 1, 'pr1BRigeuZocOQzg7mB19CfyoONe6800', '2018-07-01 23:42:49', '2018-07-01 23:42:49'),
(153, 1, 'PnHasIgUlqH04aZaYr4f94TkxMQsSinf', '2018-07-01 23:42:49', '2018-07-01 23:42:49'),
(154, 1, 'EMC7gGRiPcu9P9OiPTnADqgZdPcg1WJs', '2018-07-01 23:42:49', '2018-07-01 23:42:49'),
(155, 1, 'xvXvSCA3E3S8Ly6IFbBspmaLaslvz3Ez', '2018-07-01 23:42:51', '2018-07-01 23:42:51'),
(156, 1, 'LOrjGld3C1arBNhh4Nv0T59Zdp7vyFlT', '2018-07-01 23:42:53', '2018-07-01 23:42:53'),
(157, 1, 'EKtAq1kBKpM4JXXkPUMmT2YW29p79w1W', '2018-07-01 23:42:53', '2018-07-01 23:42:53'),
(158, 1, 'OW5Xv9FEAJp3cqGIgoX9ZwBje30tz3Wx', '2018-07-01 23:42:53', '2018-07-01 23:42:53'),
(159, 1, 'LUtYECkHYA15q5NxZIelvgLk8EQbjBU1', '2018-07-01 23:42:55', '2018-07-01 23:42:55'),
(160, 1, 'P4AV1HiPw0XZ0jkaYfYGzxcbt3jVTS29', '2018-07-01 23:43:48', '2018-07-01 23:43:48'),
(161, 1, 'ULVBeorMlEK5gkIUFdgTHW5hKjQ4RNZh', '2018-07-01 23:55:31', '2018-07-01 23:55:31'),
(162, 1, '4Kqz5PhXjV1ifR3rNAeN3yelE5Sm1loN', '2018-07-01 23:55:51', '2018-07-01 23:55:51'),
(163, 1, 'rgtEVrPKixII13OgCUtV5jahyEdvJqO1', '2018-07-01 23:56:10', '2018-07-01 23:56:10'),
(164, 1, 'VDny2T4T2qfB0FPWGQ0MTiH42YLL9ndN', '2018-07-01 23:56:11', '2018-07-01 23:56:11'),
(165, 1, 'WjKpDfqdi6S4rZQ6p0Ie0bjwAVuY2rKw', '2018-07-01 23:56:12', '2018-07-01 23:56:12'),
(166, 1, 'nQ1ytfRnjhuL5U8BZTUOK3a1JdndnIxV', '2018-07-01 23:56:18', '2018-07-01 23:56:18'),
(167, 1, 'fKl7V1v3khjMdhCmVbEw0V1xlkire5I7', '2018-07-01 23:56:18', '2018-07-01 23:56:18'),
(168, 1, '4X9ZPYBTXRjbzyQ8DpS3oTHcp6H48t88', '2018-07-01 23:56:19', '2018-07-01 23:56:19'),
(169, 1, 'ZeEEbLBHBCWMSWTjwBSBm5pU3xUhEOcN', '2018-07-01 23:56:31', '2018-07-01 23:56:31'),
(170, 1, 'Q78GmMM5qeuvqlkjf7dLQxVtZuhs2zAf', '2018-07-01 23:56:31', '2018-07-01 23:56:31'),
(171, 1, 'tVWHMwOPAC80y02PI36uAsLEbcOYRJ86', '2018-07-01 23:56:32', '2018-07-01 23:56:32'),
(172, 1, 'IUpJP0z5Voefb4YOvNZ0eGMXSWxFixRu', '2018-07-01 23:56:37', '2018-07-01 23:56:37'),
(173, 1, 'Wz7oOShnYgtE8pLnkQFSW4w145TyoRdg', '2018-07-01 23:56:40', '2018-07-01 23:56:40'),
(174, 1, 'h62uvVaFvGtTMNxU1mBnGPhx0EktDE8r', '2018-07-01 23:56:40', '2018-07-01 23:56:40'),
(175, 1, 'ei9oo2jSkJq2mvkcd0rP2akn71VXPpiZ', '2018-07-01 23:56:41', '2018-07-01 23:56:41'),
(176, 1, 'bxUObzttiqKbyAbJVnNlB2sqMPNiBuCX', '2018-07-01 23:56:46', '2018-07-01 23:56:46'),
(177, 1, 'iPeRzqkvD0eieZmLFD44PuwWkObKD4Ap', '2018-07-01 23:56:47', '2018-07-01 23:56:47'),
(178, 1, 'pOlQJ0cB9dNwcefakqDHn1IdHNJ89W5Q', '2018-07-01 23:56:48', '2018-07-01 23:56:48'),
(179, 1, 'LNkyj17f0MpljfvgbLzNkBeeGBuy2yrW', '2018-07-01 23:56:55', '2018-07-01 23:56:55'),
(180, 1, '6UWCzDhrNdGGnkkcDWjrGZRqKWUhACkD', '2018-07-01 23:56:55', '2018-07-01 23:56:55'),
(181, 1, 'Jrp4zKf86LoRVcw563W02BWGvOf6vSyh', '2018-07-01 23:56:59', '2018-07-01 23:56:59'),
(182, 1, 'lbcl2CbfS9k0hm4ZMTaJr7RaQbiD9Crx', '2018-07-01 23:57:04', '2018-07-01 23:57:04'),
(183, 1, 'VyFeRqC185zT2iYpVXfreslacvUzeFOt', '2018-07-01 23:57:05', '2018-07-01 23:57:05'),
(184, 1, 'DafXpj31QfOQOfjrJaaaCb7gXxiJsK3R', '2018-07-01 23:57:06', '2018-07-01 23:57:06'),
(185, 1, 'Yij0hYRBE57J4aTTGFYOuf47OkWXioYY', '2018-07-01 23:57:13', '2018-07-01 23:57:13'),
(186, 1, 'EtecOL72eKSzplhYoujHevixSMg9cYO6', '2018-07-01 23:57:13', '2018-07-01 23:57:13'),
(187, 1, 'EeljrppIauAgXad7Xb7HGwYaZHsVcgL9', '2018-07-01 23:57:15', '2018-07-01 23:57:15'),
(188, 1, 'g5JVoBCsPckYSxXRAAM8zNMGaBGMGEzr', '2018-07-01 23:57:23', '2018-07-01 23:57:23'),
(189, 1, 'cdrkR5dwymZrlTRbacL26hP791wnaRlG', '2018-07-01 23:57:23', '2018-07-01 23:57:23'),
(190, 1, 'rlwEGKpxHfNBjTPAoGAWXwZz3Jz9cwxs', '2018-07-01 23:57:24', '2018-07-01 23:57:24'),
(191, 1, 'ir3dpns2FUEoAK3oqMMPGiqRPdiQDuyY', '2018-07-01 23:57:30', '2018-07-01 23:57:30'),
(192, 1, 'sR0EVTQRhE4rj3G53Fqj1fQY2vuNL6h7', '2018-07-01 23:57:31', '2018-07-01 23:57:31'),
(193, 1, 'alCLbtdTPzcwbcSkXHqgXH1M2Squykz2', '2018-07-01 23:57:33', '2018-07-01 23:57:33'),
(194, 1, 'O6nxi40xluRqxaXOXbHkJhc86O8CkbWU', '2018-07-01 23:57:34', '2018-07-01 23:57:34'),
(195, 1, '1vcc1JMYkktEeJmmhAcQUhqobdB7mufi', '2018-07-01 23:57:37', '2018-07-01 23:57:37'),
(196, 1, 'x09wzwbvkVlxbtzEqJEzA7p7mMJ9tWez', '2018-07-01 23:57:38', '2018-07-01 23:57:38'),
(197, 1, 'nEj0CJKNsaQzCLY6SKsDuxaIjegfXEcD', '2018-07-01 23:57:40', '2018-07-01 23:57:40'),
(198, 1, 'Nr7BxZUwGSKea1kA4WWok6tg5g3VSAcR', '2018-07-01 23:57:41', '2018-07-01 23:57:41'),
(199, 1, 'vfqdRZqLpYiCGkrmniFqPzQ3Xo6KyJss', '2018-07-01 23:57:55', '2018-07-01 23:57:55'),
(200, 1, 'ZYGdSGLdAFROmHmdhAK4Mz3VTy7NlOLe', '2018-07-01 23:58:01', '2018-07-01 23:58:01'),
(201, 1, 'u3FdgVUgSyjjWWRm6M1afEORsr9ZURg8', '2018-07-01 23:58:25', '2018-07-01 23:58:25'),
(202, 1, '7NmnnY66esjun2tHbp6syPPIWUSCBaCT', '2018-07-01 23:58:28', '2018-07-01 23:58:28'),
(203, 1, 'VozquWg72aokE8SzDljSYk34kk0Kg3Me', '2018-07-01 23:59:54', '2018-07-01 23:59:54'),
(204, 1, 'DCyljq39nzW6CZqTlcprRRjAm9QxYvCF', '2018-07-02 00:00:08', '2018-07-02 00:00:08'),
(205, 1, 'X4Lc6BhQjClLtkuttk86MWHu8AqHmnWt', '2018-07-02 00:02:13', '2018-07-02 00:02:13'),
(206, 1, 'ZBphlCUF3gGVm4HJ7xnCuY5NTvAkjxDb', '2018-07-02 00:02:15', '2018-07-02 00:02:15'),
(207, 1, 'cNOl7sfBlTpAPqx71LqgDarp6DVELyDK', '2018-07-02 00:02:17', '2018-07-02 00:02:17'),
(208, 1, 'yNKdAlwFE7QvTkLl0ZOOHKMn5olXeeAf', '2018-07-02 00:02:18', '2018-07-02 00:02:18'),
(209, 1, 'lxfeUbJ7Iky6PVvWrMjT6gWXoUFwe5yL', '2018-07-02 00:02:20', '2018-07-02 00:02:20'),
(210, 1, 'TW7MZ500W8jyRo2mdQW4FMyVtOePnfkY', '2018-07-02 00:02:21', '2018-07-02 00:02:21'),
(211, 1, '3MgOtJx2d16kahsIxDvhUDOMbM4JaPd7', '2018-07-02 00:02:30', '2018-07-02 00:02:30'),
(212, 1, 'UKLH0JRxs7zZTFhoZ6KULJGDpEFT712C', '2018-07-02 00:03:46', '2018-07-02 00:03:46'),
(213, 1, 'DOAHIFZ4To15J8UIucrEqFXb1n9LVvFf', '2018-07-02 00:04:47', '2018-07-02 00:04:47'),
(214, 1, 'AuWcvREB32VWlmULd912CqIKxLNjii6J', '2018-07-02 00:07:14', '2018-07-02 00:07:14'),
(215, 1, 'hs7sNNQ8UJ75YLtOzjFPoTCRuscKURCB', '2018-07-02 00:07:17', '2018-07-02 00:07:17'),
(216, 1, 'sHkA4gl2CTMfH34KLqD2etseMQuL4PVV', '2018-07-02 00:08:40', '2018-07-02 00:08:40'),
(217, 1, 'ycSGt9jiqBQ5obETQBp0iRieQ7oyIc1i', '2018-07-02 00:14:19', '2018-07-02 00:14:19'),
(218, 1, 'tYgwQaFGcicjp428VBCdsQM3gYQtzoBQ', '2018-07-02 00:16:15', '2018-07-02 00:16:15'),
(219, 1, 'boeVBIbUKhgvakStq2QwkHXzcKuaCO64', '2018-07-02 00:16:39', '2018-07-02 00:16:39'),
(220, 1, 'g51u6V8nI7zgPROBQAaKICZ702fT3h8h', '2018-07-02 00:18:01', '2018-07-02 00:18:01'),
(221, 1, 'nId7ch8MVBGiqQ6GjPRmj0GsyrE0NQOy', '2018-07-02 00:22:18', '2018-07-02 00:22:18'),
(222, 1, 'gXMmsQvZAuFpxOcJPzrmkBXjFIoTHqjH', '2018-07-02 00:24:14', '2018-07-02 00:24:14'),
(223, 1, 'vxa5asUAtIau2FsNpVl5NconH29BCICT', '2018-07-02 00:26:02', '2018-07-02 00:26:02'),
(224, 1, 'GBwnPb3GRfIoPrRTfZ6Gcjppw9P4XOhR', '2018-07-02 00:26:19', '2018-07-02 00:26:19'),
(225, 1, 'rORUpocH3qUUKO0pcFIfmM3uB99yYGPd', '2018-07-02 00:26:26', '2018-07-02 00:26:26'),
(226, 1, 'locwSojvb8BeYmpBtusO0qA2KB4e3HHg', '2018-07-02 00:29:45', '2018-07-02 00:29:45'),
(227, 1, 'MulAtvvfR3MoDmCVPuyVuF4Jr6Ayh6Bj', '2018-07-02 00:30:55', '2018-07-02 00:30:55'),
(228, 1, 'cTJ5KmMLPiGmWtN8IK9ycN9QCXV1BrZd', '2018-07-02 00:33:05', '2018-07-02 00:33:05'),
(229, 1, 'XRqM72FFxy1WclzmeA7oOZ5GGafFBnCs', '2018-07-02 00:33:08', '2018-07-02 00:33:08'),
(230, 1, 'DQNI2va284tHJxZPUM1tT1ezgoZACoD2', '2018-07-02 00:33:10', '2018-07-02 00:33:10'),
(231, 1, 'aCYDqPBXo62mgYtAveStgsSUVAQSElK4', '2018-07-02 00:33:10', '2018-07-02 00:33:10'),
(232, 1, '4EyNdYLIQlEviNCtsNMnDZEhERwaHRmV', '2018-07-02 00:33:10', '2018-07-02 00:33:10'),
(233, 1, 'geib9CPqocNQybOydOoAJoguGD3c60ZV', '2018-07-02 00:33:20', '2018-07-02 00:33:20'),
(234, 1, 'ZeqRZcFfAVRgbPzcaYz1mrczZM9Q5WJG', '2018-07-02 00:33:21', '2018-07-02 00:33:21'),
(235, 1, 'bDeDEHu0u5ESfU5MXcBMD5l4NgBFu7J4', '2018-07-02 00:33:21', '2018-07-02 00:33:21'),
(236, 1, 'mdFpyxad42xauh6vy7DHCllosONlL9xc', '2018-07-02 00:33:21', '2018-07-02 00:33:21'),
(237, 1, 'NwQbpYdB4zndTHDK3lsgDDGC8FxneAmc', '2018-07-02 00:33:28', '2018-07-02 00:33:28'),
(238, 1, '7yDe3oqu4Bd70PdJOZV9D5AW4Zbzz9b2', '2018-07-02 00:33:30', '2018-07-02 00:33:30'),
(239, 1, 'Au22z1JDuDIGNXXTdHHaX97tQ4ZJ9UIg', '2018-07-02 00:33:30', '2018-07-02 00:33:30'),
(240, 1, '0OnOirAZfqAkYDqtX0myHbybwaUZHAGY', '2018-07-02 00:33:30', '2018-07-02 00:33:30'),
(241, 1, 'rmTZGWVwIzyfm42B6UvqNjOa5BKHPkKD', '2018-07-02 00:33:42', '2018-07-02 00:33:42'),
(242, 1, 'G2oiH4K24lYs7z1FbawDLtHYe8CY2TX3', '2018-07-02 00:33:57', '2018-07-02 00:33:57'),
(243, 1, '0SqptAMzmQsuAAx6C8vuhyKnGDqJa2qK', '2018-07-02 00:33:59', '2018-07-02 00:33:59'),
(244, 1, 'qkYAFKJnTf3oEyzeaqISU2GdVb6rblnm', '2018-07-02 00:33:59', '2018-07-02 00:33:59'),
(245, 1, 'gh2f7XoL8BCtvAGtiB6IBPKwaOyS45bT', '2018-07-02 00:33:59', '2018-07-02 00:33:59'),
(246, 1, '9sslWOEpKnYl1L6yoA67nMlLb3XdICYq', '2018-07-02 00:34:02', '2018-07-02 00:34:02'),
(247, 1, 'yoc8IHB9pVNykXVaKMkCkAYXJbmfCL8I', '2018-07-02 01:47:28', '2018-07-02 01:47:28'),
(248, 1, 'jwGcCY4FmzxcZu0mM3GLqNjfRrua87MY', '2018-07-02 01:47:57', '2018-07-02 01:47:57'),
(249, 1, 'GHj1Bgxo5r6MjXYK86RpslZpXoAODDak', '2018-07-02 01:48:05', '2018-07-02 01:48:05'),
(250, 1, 'tRL3CoZd2D9xuKVpYVc4IrWpoakqdW8t', '2018-07-02 01:48:05', '2018-07-02 01:48:05'),
(251, 1, 'Fy702U3mSnaoJi4WqTgHY937GC1yf6Sn', '2018-07-02 01:48:05', '2018-07-02 01:48:05'),
(252, 1, 'kCAwVg9PAhkbjgAP3DvpWy6F90k4XCNW', '2018-07-02 01:48:08', '2018-07-02 01:48:08'),
(253, 1, 'hoZbs9yfmY3xhpvXjHIw9M2GBPDz2QFh', '2018-07-02 01:53:17', '2018-07-02 01:53:17'),
(254, 1, 'LL03dy1zNUqf3RRApNP5OqyYAlMeba5W', '2018-07-02 01:53:29', '2018-07-02 01:53:29'),
(255, 1, 'Ey848HmaKuD9IaIbmGg6iCjA5lrKRGXV', '2018-07-02 01:53:31', '2018-07-02 01:53:31'),
(256, 1, '537m0u72MRblC8r0H96eHTQ9beSe6O2a', '2018-07-02 01:53:31', '2018-07-02 01:53:31'),
(257, 1, 'YT5LjsmUtsTbyeDSXXHdVE1aYxhfZHGj', '2018-07-02 01:53:31', '2018-07-02 01:53:31'),
(258, 1, 'E1oAzxjJ2G3FJ84PH4z3ESJa0wvAj6jO', '2018-07-02 02:25:35', '2018-07-02 02:25:35'),
(259, 1, 'pNAbRlBSTw4wi3jL7L64tGQHZCTDLwKy', '2018-07-02 02:27:03', '2018-07-02 02:27:03'),
(260, 1, 'GM3QMVdvxBRLW1n5DPmrYkdZ9OcBr2My', '2018-07-02 02:27:07', '2018-07-02 02:27:07'),
(261, 1, 'PypTmWKaLE2XX711W2yIHmrcuL4AV0ET', '2018-07-02 02:27:13', '2018-07-02 02:27:13'),
(262, 1, 'clyxFRfJQI98ECqHM1DT0heQP1QRaaRZ', '2018-07-02 02:27:17', '2018-07-02 02:27:17'),
(263, 1, 'chYtfvIBbiZ05jUaD06REBKmze8UqcP6', '2018-07-02 02:27:19', '2018-07-02 02:27:19'),
(264, 1, 'igaU7wvnalXglhCL3l5VIrSDG0Kn2pgQ', '2018-07-02 02:27:19', '2018-07-02 02:27:19'),
(265, 1, 'GOcfEzBr80aUGEGQ9BeS0fUeeBvRi1EU', '2018-07-02 02:27:19', '2018-07-02 02:27:19'),
(266, 1, 'UNvq7nCIQ7AXNhGwh889XfQYOgIToPp1', '2018-07-02 02:27:23', '2018-07-02 02:27:23'),
(267, 1, 'WHFMBFsoq1PoVE0ZyujpAAeQWVeGth5S', '2018-07-02 02:27:31', '2018-07-02 02:27:31'),
(268, 1, 'D63OkjHOBnJId9qhyfqHwwGNShol091e', '2018-07-02 02:27:33', '2018-07-02 02:27:33'),
(269, 1, 'tG96EG8l6ohIJzCt8NYueLsF8n5MM3vw', '2018-07-02 02:39:03', '2018-07-02 02:39:03'),
(270, 1, 'WCqPk1mdF2d82v0KOmF9V0hBgbhWNgM0', '2018-07-02 02:39:05', '2018-07-02 02:39:05'),
(271, 1, '3uPn3a4I4v5i1mSJjSseKlpominDwMGk', '2018-07-02 02:39:24', '2018-07-02 02:39:24'),
(272, 1, 'tqSECXddcudm9TZSuusbkVVmECkKvoel', '2018-07-02 02:39:45', '2018-07-02 02:39:45'),
(273, 1, 'fUtIPlOUAgJVtvHfhv7CeRkg5cVF8aR6', '2018-07-02 02:39:52', '2018-07-02 02:39:52'),
(274, 1, 'AFLQkvH10wbzQlAOihsjlvh66YGENc2V', '2018-07-02 02:39:54', '2018-07-02 02:39:54'),
(275, 1, 'k1JnPcDvwugsDzU9b9VgqPhQ7fFxTDaF', '2018-07-02 02:41:14', '2018-07-02 02:41:14'),
(276, 1, 'Aqd0hTrrLiB46AznDm8hRqB4CLZTgFfC', '2018-07-02 02:41:17', '2018-07-02 02:41:17'),
(277, 1, 'HtvURPhGdrx0GTQxa2icpkPrM3fzC5OY', '2018-07-02 02:41:19', '2018-07-02 02:41:19'),
(278, 1, 'crKdPGXWbW5YZrqhY0fxr3jddivni1XX', '2018-07-02 02:41:58', '2018-07-02 02:41:58'),
(279, 1, '6zllN6xftjIL45PltGyThfJpfXL5xsSB', '2018-07-02 02:43:36', '2018-07-02 02:43:36'),
(280, 1, '06mBvhe4CHqfrqIE60oYWzQGSx7VYgtw', '2018-07-02 02:43:48', '2018-07-02 02:43:48'),
(281, 1, 'UeppWXHp94fNKA7qqdgdkF8U9KgQK4Q0', '2018-07-02 02:43:49', '2018-07-02 02:43:49'),
(282, 1, 'DAeCQLQxc0opNHAE8Klb6yf36vyeKvK5', '2018-07-02 02:43:51', '2018-07-02 02:43:51'),
(283, 1, 'ZwWz8t7msfAELnOkGGXiNnsRbulOekdm', '2018-07-02 02:43:52', '2018-07-02 02:43:52'),
(284, 1, 'ZHa0ktfV2W2oVActoxPADedleM2JmhiP', '2018-07-02 02:50:42', '2018-07-02 02:50:42'),
(285, 1, 'UL1j230LFeQMDnCcIGJOpD54tIomFjjr', '2018-07-02 03:06:42', '2018-07-02 03:06:42'),
(286, 1, '2RaLJNR6TuaPG1BS75ORcFo3QBBhBHYn', '2018-07-02 03:06:55', '2018-07-02 03:06:55'),
(287, 1, 'yPbJZCKQ79V5T1SWWf2el93dAcZyNCUS', '2018-07-02 03:06:57', '2018-07-02 03:06:57'),
(288, 1, 'huB8hstDSud7pGWPtB0SHni35oRzM040', '2018-07-02 03:07:02', '2018-07-02 03:07:02'),
(289, 1, 'NWoJ9fAnTa02ik2FGpVzhJ59jb4Ju0Qp', '2018-07-02 03:07:09', '2018-07-02 03:07:09'),
(290, 1, 'T9R6y5dZT8mDX8S9hEGNc1Y1WqZlZibc', '2018-07-02 03:07:11', '2018-07-02 03:07:11'),
(291, 1, '3aSYz0bbd26kJUR8A8yIRhQjtYMS2yre', '2018-07-02 03:08:04', '2018-07-02 03:08:04'),
(292, 1, 'aYFZaPPbtRHcTHPqROVHrOjpOBZam0bF', '2018-07-02 03:08:24', '2018-07-02 03:08:24'),
(293, 1, 'JDPTgPXRRzquAGUcxHyYk3i5XBkyCmQn', '2018-07-02 03:14:24', '2018-07-02 03:14:24'),
(294, 1, 'X83SOHUqqKVZT9yRFOScrnD9eaAKPTAd', '2018-07-02 03:14:25', '2018-07-02 03:14:25'),
(295, 1, 'zSkHeEhFZ0ffdymUcacYpO7nqsBkGWUf', '2018-07-02 03:14:25', '2018-07-02 03:14:25'),
(296, 1, '47OLuGbOeYTCoqhmuqlXZHLcP33abznC', '2018-07-02 03:14:25', '2018-07-02 03:14:25'),
(297, 1, 'jliWo1eH12rAmuRrl7jliJxxmyJaODBL', '2018-07-02 03:14:26', '2018-07-02 03:14:26'),
(298, 1, 'eFYpC1ykN6prDnt88qlf5AuLW271XMTe', '2018-07-02 03:14:26', '2018-07-02 03:14:26'),
(299, 1, '6xIwYjKmB9zIaf8zgfcBkEVzg4RBA6um', '2018-07-02 03:14:26', '2018-07-02 03:14:26'),
(300, 1, '4D7T0173NkxWS9c92CxE4ICL9nmLBoPo', '2018-07-02 03:14:26', '2018-07-02 03:14:26'),
(301, 1, '0aGuh3kyuh680aj61B2cKMbflSZstH61', '2018-07-02 03:14:26', '2018-07-02 03:14:26'),
(302, 1, 'mmDUUurWp0bkRGNSt2QNcQUQfx4lUK1J', '2018-07-02 03:14:26', '2018-07-02 03:14:26'),
(303, 1, 'hE9yNfhhpK2kuwOxNCQkyUiKfBqDzEfU', '2018-07-02 03:14:41', '2018-07-02 03:14:41'),
(304, 1, '5c3eJFdtgy0jle7cCuXaWKx7asJE1vKS', '2018-07-02 03:16:43', '2018-07-02 03:16:43'),
(305, 1, 'lJNe5CtGuLijzQd9vkvgS8VN0MHtuzSH', '2018-07-02 03:16:44', '2018-07-02 03:16:44'),
(306, 1, 'IOEJqDY4OT0QRf0o1EWJ5rmdCWBfIEkD', '2018-07-02 03:33:15', '2018-07-02 03:33:15'),
(307, 1, 'o4qfifTcrIoBpuZ3iyrXiq21lUaI0caa', '2018-07-02 03:37:32', '2018-07-02 03:37:32'),
(309, 1, 'QypBTCS9Qo9IMyp0Y13MZxMsAjQwZl50', '2018-07-02 19:54:57', '2018-07-02 19:54:57'),
(310, 1, 'd7TJweBKG2HOLF44s3cYN7IpUPKhyAZe', '2018-07-02 21:27:43', '2018-07-02 21:27:43'),
(311, 1, 'PMdXQiKP5VZKk7QlcHjPDmjQzbXZ6Alc', '2018-07-02 21:28:02', '2018-07-02 21:28:02'),
(312, 1, 'Va1NajTfZUB8orHwseJ6agUsU9OdJ7zn', '2018-07-02 21:28:02', '2018-07-02 21:28:02'),
(313, 1, 'iqrJaQGLAP52Q2SjtPxBemDB9PsJEHLi', '2018-07-02 21:28:02', '2018-07-02 21:28:02'),
(314, 1, '3PZBHLL9B5pPlsqhiPDFuaqZCfwrZ5Fp', '2018-07-02 21:29:12', '2018-07-02 21:29:12'),
(315, 1, 'shtnBPQIPXUYYFKb9TBkzZftruLoGtIN', '2018-07-02 21:29:33', '2018-07-02 21:29:33'),
(316, 1, 'h9yQ6Psg31vfhmHPoCsPS7C0x7FEyCsg', '2018-07-02 21:29:33', '2018-07-02 21:29:33'),
(317, 1, 'jrMvpE6GjNMyfD3ZaDvU3ntQFUzOh0bd', '2018-07-02 21:29:34', '2018-07-02 21:29:34'),
(318, 1, 'y0BlK6dRAHrMOlr5pqofz18pBaxU7v8p', '2018-07-02 21:29:34', '2018-07-02 21:29:34'),
(319, 1, 'edNccx1exa0hZ89FQVg7qAZeP8udunw4', '2018-07-02 21:29:35', '2018-07-02 21:29:35'),
(320, 1, 'RF499Xu7uKFnzvbHX62XJYEXsiuGZjzz', '2018-07-02 21:29:37', '2018-07-02 21:29:37'),
(321, 1, 'XIUslYgZ7JhhxZFYpjgo2WyviVLREo5M', '2018-07-02 21:29:38', '2018-07-02 21:29:38'),
(322, 1, 'NHjbAlwuaV09qSiXagBE7UNnXrm4Fa4Y', '2018-07-02 21:29:39', '2018-07-02 21:29:39'),
(323, 1, 'VPif4Q1O0jF2LHbvXxY1wOXJ8ohN0C2l', '2018-07-02 21:29:40', '2018-07-02 21:29:40'),
(324, 1, 'BBx4RtwRTRfhpSM6KQugKN3FTr4HyQJq', '2018-07-02 21:29:41', '2018-07-02 21:29:41'),
(325, 1, 'Hj2sqsLtjp0V1tNkYTkpDOf4OoRPaVRu', '2018-07-02 21:29:41', '2018-07-02 21:29:41'),
(326, 1, '082euQHf9RM1ol7TurtGLZIEX3giFKUd', '2018-07-02 21:29:41', '2018-07-02 21:29:41'),
(327, 1, 'UPJM70JL49kiP7vZ58Yjjg4xTVO3w9xp', '2018-07-02 21:29:43', '2018-07-02 21:29:43'),
(328, 1, '74ssaLnAsdIG3hFAyVeLkaFE54DjtR0F', '2018-07-02 21:29:44', '2018-07-02 21:29:44'),
(329, 1, 'LuvgZfH2Tt7HuTc6vmXFFuYv68KclCad', '2018-07-02 21:29:45', '2018-07-02 21:29:45'),
(330, 1, '4VCEeyrUuOhfSy8sjlnOGoHHJlmpXpPR', '2018-07-02 21:29:46', '2018-07-02 21:29:46'),
(331, 1, '67EMQr3tJwOVvfTNJcjLHqYRgSPa22oo', '2018-07-02 21:29:47', '2018-07-02 21:29:47'),
(332, 1, 'adOndR5sX3R6jzXF4p5N7BuWTKTqad46', '2018-07-02 21:29:48', '2018-07-02 21:29:48'),
(333, 1, 'acnfxw9AvYSpqrfQGPAl7lGpW2fFie4r', '2018-07-02 21:29:50', '2018-07-02 21:29:50'),
(334, 1, '1cMr2zvODfszn2DhMFVL83RvsvSLLWIH', '2018-07-02 21:29:51', '2018-07-02 21:29:51'),
(335, 1, '5tlLLnRjf5NW8i251OwEgFj29HWQTUwx', '2018-07-02 21:29:53', '2018-07-02 21:29:53'),
(336, 1, 'Yaq8JQqsQRrLE3U6JDVciIixLKve5gpy', '2018-07-02 21:29:54', '2018-07-02 21:29:54'),
(337, 1, 'r8rsgiTUOrsUA6Ov8fCf06bHb7kER6sL', '2018-07-02 21:29:56', '2018-07-02 21:29:56'),
(338, 1, 'UIzpBDRiAIfD3O1cjM8tEGElwNBqKtd8', '2018-07-02 21:29:57', '2018-07-02 21:29:57'),
(339, 1, 'R7F9y7lv5rQ1Y2qDu1KMn1j18w04ZIT1', '2018-07-02 21:30:04', '2018-07-02 21:30:04'),
(340, 1, 'ltA3lnTIr1x7y36bj9YiJ6dDsj2Q6YnK', '2018-07-02 21:30:05', '2018-07-02 21:30:05'),
(341, 1, 'AtI5SI6NY3IPdWMVvkPGVIsVlpF7re1F', '2018-07-02 21:35:54', '2018-07-02 21:35:54'),
(342, 1, '3KQVfwRXDPRs13lGQ7oozwAk2oHRQZ79', '2018-07-02 21:35:58', '2018-07-02 21:35:58'),
(343, 1, 'qZHQxZXPPF1Oc466WozkJOCH3kW7DKaP', '2018-07-02 21:35:58', '2018-07-02 21:35:58'),
(344, 1, 'mTnZsLmnMs9fForHzbbXj3J932iHirrh', '2018-07-02 21:35:58', '2018-07-02 21:35:58'),
(345, 1, 'AJOKrRJZM6w6mmphNGJE6CYnR7UM3Fnz', '2018-07-02 21:36:00', '2018-07-02 21:36:00'),
(346, 1, 'Bc3Py2h3MCf0yc9tTvfO3BFvQ4pGI8Qz', '2018-07-02 21:36:02', '2018-07-02 21:36:02'),
(347, 1, 'AfEwZAVqn0aKRmfftQpOh2qvR4ayk7NI', '2018-07-02 21:36:02', '2018-07-02 21:36:02'),
(348, 1, 'OkqUNZLrO4b6FFaO4X2jNakA2oM0gNGa', '2018-07-02 21:36:02', '2018-07-02 21:36:02'),
(349, 1, 'UP59s6WsrYBH2IrRmCGYSL6pK4UkVDWo', '2018-07-02 21:36:32', '2018-07-02 21:36:32'),
(350, 1, 'bb6H768nIj78lJzpBFKPXmI6lVyd1QWa', '2018-07-02 21:37:06', '2018-07-02 21:37:06'),
(351, 1, 'YNVpXFS7ZqEQCvI1s8hNhPM2KzKVF44x', '2018-07-02 21:37:07', '2018-07-02 21:37:07'),
(352, 1, 'glMoC4saNxIlmJOAOuxcW82QQ0xQ2Wt6', '2018-07-02 21:37:07', '2018-07-02 21:37:07'),
(353, 1, 'f4D413z0UeZ686otvQhUEpN22FPQIYXu', '2018-07-02 21:37:07', '2018-07-02 21:37:07'),
(354, 1, 'gG7Ox2YzkIydTGS1I0KBp98M3mkzSjD2', '2018-07-02 21:37:09', '2018-07-02 21:37:09'),
(355, 1, 'c2lVzcSwvQCsODvSKmE4rNWcH7ES5hjo', '2018-07-02 21:37:16', '2018-07-02 21:37:16'),
(356, 1, '5rH5114Xg97A7DyCFTOI4mbO5uv75zWl', '2018-07-02 21:37:18', '2018-07-02 21:37:18'),
(357, 1, 'o2NPB26kiQZ0lWJt2TVvsCoGBCSoJ9To', '2018-07-02 21:37:20', '2018-07-02 21:37:20'),
(358, 1, '7yPpk7PWuOKOmHJRzNwQaujsUeWbsJLv', '2018-07-02 21:37:22', '2018-07-02 21:37:22'),
(359, 1, 'G6Pxg9JMwWpEydFhljgmtL4JwbedEVS7', '2018-07-02 21:37:23', '2018-07-02 21:37:23'),
(360, 1, 'X5IH5Mc7Ho6XufoDTAmFsqC1o3YyyWKu', '2018-07-02 21:37:24', '2018-07-02 21:37:24'),
(361, 1, '1EMxxIgCCBZ3iXYuBrILL0Jz08hvwCkC', '2018-07-02 21:37:25', '2018-07-02 21:37:25'),
(362, 1, 'PqW6x4IuTre4OZdEbHwL46R7LX2IiKag', '2018-07-02 21:37:26', '2018-07-02 21:37:26'),
(363, 1, 'sBpDR9x6HwdHaYLxbHZpasRC6MPVf1Jj', '2018-07-02 21:37:26', '2018-07-02 21:37:26'),
(364, 1, 'jA7W6EnSHyohizc89RoJ9oZmHS0vGuM8', '2018-07-02 21:37:27', '2018-07-02 21:37:27'),
(365, 1, 'hTgBVWDneSuZeeVLFtlUGp3lmff3AwVl', '2018-07-02 21:37:27', '2018-07-02 21:37:27'),
(366, 1, 'dSkbRVLWJvYbR8Tt8DC2Osle5pmWQ4Wh', '2018-07-02 21:37:58', '2018-07-02 21:37:58'),
(367, 1, '14GSEIzXWblxliWYKxZ2dS44BrojSgLi', '2018-07-02 21:38:43', '2018-07-02 21:38:43'),
(368, 1, '7rhrzRceftIIvivArqAC9i605qt9OnPS', '2018-07-02 23:13:15', '2018-07-02 23:13:15'),
(369, 1, 'rnS4mUcbFJEAdJaYalbpXX5y59OA23Ca', '2018-07-02 23:13:15', '2018-07-02 23:13:15'),
(370, 1, 'tIc4ZRRJKrGG33qJQHfoEa6uY3l8SFr1', '2018-07-02 23:13:15', '2018-07-02 23:13:15'),
(371, 1, 'Kw8P25ZNpIzMr1XDMrxT6xZz1ZqH6Zfi', '2018-07-02 23:19:36', '2018-07-02 23:19:36'),
(372, 1, 'ay7MlnG5pZbhqzlUv22IoSGtbgFgWDGX', '2018-07-02 23:19:36', '2018-07-02 23:19:36'),
(373, 1, 'UTALa06GsPdn8j3J1t4X36j7NdsMZRlL', '2018-07-02 23:19:36', '2018-07-02 23:19:36'),
(374, 1, 'rRj865L6aCHcB6iPNYHY2r9TzG30veC8', '2018-07-02 23:19:52', '2018-07-02 23:19:52'),
(375, 1, 'ARtV6OB2yI1vVCf6lczHXCXSqZtHpEEw', '2018-07-02 23:21:10', '2018-07-02 23:21:10'),
(376, 1, 'K34W6zZbeF0TQLXmcJu394GFHlwuaOF4', '2018-07-02 23:23:14', '2018-07-02 23:23:14'),
(377, 1, 'IrSt18kUnaCfNxTpYSxUWSq01pzhjXrc', '2018-07-02 23:23:16', '2018-07-02 23:23:16'),
(378, 1, 'wW6wcl9SkExfngZeSMmhFEKpfeU4o23k', '2018-07-02 23:23:16', '2018-07-02 23:23:16'),
(379, 1, 'kPLP6JcIXS36h5FNulF62eCLc4G0C93s', '2018-07-02 23:23:16', '2018-07-02 23:23:16'),
(380, 1, 'uMscdgpn53OY9zbcfSMiETmxpCf9S7km', '2018-07-02 23:25:22', '2018-07-02 23:25:22'),
(381, 1, 'cES87Ws5CTE4UXJ8WHFfp4lBIQTkdSIn', '2018-07-02 23:25:22', '2018-07-02 23:25:22'),
(382, 1, 'AcouOieZbmB3h8ntvunAoMeV2JMg5ZLz', '2018-07-02 23:25:22', '2018-07-02 23:25:22'),
(383, 1, 'mM7PlWMyyVr5RbIPF8OtJtmpIBMs2ilg', '2018-07-02 23:27:15', '2018-07-02 23:27:15'),
(384, 1, 'DNztWdVKL3zsJ3TsE2lZGG39ecN5T9lJ', '2018-07-02 23:27:15', '2018-07-02 23:27:15'),
(385, 1, 'Ea2Xng81jUZndVm2X4piUNFE85KdapDk', '2018-07-02 23:27:15', '2018-07-02 23:27:15'),
(386, 1, 'BMW3PQRdVjv8AehEe4g46j02lAM6EkMn', '2018-07-02 23:27:52', '2018-07-02 23:27:52'),
(387, 1, 'YDsXSzhbu9jWuiIouHsstNd0nL02Vv2h', '2018-07-02 23:27:52', '2018-07-02 23:27:52'),
(388, 1, 'Tj5iDb4QDcHVju6Y6YOg99JvHclV8qsq', '2018-07-02 23:27:52', '2018-07-02 23:27:52'),
(389, 1, 'tq8FYeyXLOSNA8Z3hM76WYsMpbbcEgoL', '2018-07-02 23:28:46', '2018-07-02 23:28:46'),
(390, 1, 'IkjoZorzeaM5pfz5BYudQ8un6ISvLnUz', '2018-07-02 23:28:46', '2018-07-02 23:28:46'),
(391, 1, 'bMHVOYgFdDZWVu8PWtKzqvd0cpAakcY9', '2018-07-02 23:28:46', '2018-07-02 23:28:46'),
(392, 1, '6PmoOR0lpkgPpX7As01XH51UCdKvZ3VT', '2018-07-02 23:29:49', '2018-07-02 23:29:49'),
(393, 1, 'z3eixLu6ihoQwvRCz3wKYOPBYOjPSBWt', '2018-07-02 23:29:50', '2018-07-02 23:29:50'),
(394, 1, 'NkipL64Xrnsw70P6upPrYAJzyExu3HL7', '2018-07-02 23:29:50', '2018-07-02 23:29:50'),
(395, 1, 'zQRG0yqfglUaZBAEWrpiAbIHbRoTrkA6', '2018-07-02 23:30:12', '2018-07-02 23:30:12'),
(396, 1, 'UUeDf2oSbaSfhh0QUWTSRtGN63Bms2vU', '2018-07-02 23:30:12', '2018-07-02 23:30:12'),
(397, 1, 'QoC1i5hui5glyx4FYyY4VFkbbHqVBJ8i', '2018-07-02 23:30:12', '2018-07-02 23:30:12'),
(398, 1, '7JFkUfKcXakfzgMcxFtfSxgI2OTVpCFx', '2018-07-02 23:30:26', '2018-07-02 23:30:26'),
(399, 1, 'pAx2E7v4OHkUUgBh3LwkKc9JxjMcXcYH', '2018-07-02 23:30:26', '2018-07-02 23:30:26'),
(400, 1, 'UfL3S02abaO3SfX3wH4gLAXVQw8EoPVB', '2018-07-02 23:30:26', '2018-07-02 23:30:26'),
(401, 1, '2GZ1vxQAALAG3M2iIFflHK1Yq2kxQjTG', '2018-07-02 23:30:28', '2018-07-02 23:30:28'),
(402, 1, 'gKJ9uZ1jftiwSlYTz2Z47AXdHXKEBylZ', '2018-07-02 23:30:28', '2018-07-02 23:30:28'),
(403, 1, '8kKWYthiQCdCt3QfXsl6Rn7eYLCsMYJv', '2018-07-02 23:30:28', '2018-07-02 23:30:28'),
(404, 1, 'DruItqOYx7Y3gYosVOHWQRi0wDmDPKWC', '2018-07-02 23:33:52', '2018-07-02 23:33:52'),
(405, 1, 'Karo5X8Mkm284nicCG2zE0ht2ulitTxg', '2018-07-02 23:33:52', '2018-07-02 23:33:52'),
(406, 1, 'aFouhvs0v4Haq2gAIk33JDrUoBmAkKyz', '2018-07-02 23:33:52', '2018-07-02 23:33:52'),
(407, 1, 'nvnUKnjdFbLblWhTEQKtOPKP6Hoxt47a', '2018-07-02 23:35:20', '2018-07-02 23:35:20'),
(408, 1, 'ER2ZX9arVuoo74leMJkQabq40cDQhNHG', '2018-07-02 23:35:20', '2018-07-02 23:35:20'),
(409, 1, 'KxHt2D2AhQosxxmt6eM7fiFS08B9KOcZ', '2018-07-02 23:35:20', '2018-07-02 23:35:20'),
(410, 1, 'Es41eQmzdFor0cIcpQP9zgQEqziiXLol', '2018-07-02 23:36:55', '2018-07-02 23:36:55'),
(411, 1, 'aUvaAcvuq2L9towpr4JlB3HKBz7ciMzk', '2018-07-02 23:36:55', '2018-07-02 23:36:55'),
(412, 1, 'nTBqIIngvxFLTUEfFgEKVBIqSOUcrt4V', '2018-07-02 23:36:55', '2018-07-02 23:36:55'),
(413, 1, 'CzPOogSe7vU4HMnKcOT8n3wRPLQZs1eH', '2018-07-02 23:37:58', '2018-07-02 23:37:58'),
(414, 1, 'm0xqPq12Y1cQBxRq1VQ4jC7ngAVdWEW5', '2018-07-02 23:37:58', '2018-07-02 23:37:58'),
(415, 1, 'X6xoYLNkLfgUImKd8NWRvvFcv8q5fBMI', '2018-07-02 23:37:58', '2018-07-02 23:37:58'),
(416, 1, 'oMNv1eDz43Y39hAHMFFp4xCYCBzsh4Zk', '2018-07-02 23:38:28', '2018-07-02 23:38:28'),
(417, 1, 'Hkc0WLn0GmHmMpw8ehxMp8afMr2XSlmY', '2018-07-02 23:38:28', '2018-07-02 23:38:28'),
(418, 1, 'KJ4h5O9Y2aQz5fU4aMOavRkQmGLn0YAr', '2018-07-02 23:38:28', '2018-07-02 23:38:28'),
(419, 1, 'ngOpFpXklJkMYLvBUcVPGROtKLw3h25z', '2018-07-02 23:41:41', '2018-07-02 23:41:41'),
(420, 1, 'rSq3AZtG5wGx9qmk5a1SPy7XjPcxSPCv', '2018-07-02 23:41:41', '2018-07-02 23:41:41'),
(421, 1, 'taqwTlQI6mUPTC39oo0oeNXPwfwy9C7L', '2018-07-02 23:41:41', '2018-07-02 23:41:41'),
(422, 1, 'oalluhvuJmLw0yoI89n0vew39Z2N0KT2', '2018-07-02 23:57:19', '2018-07-02 23:57:19'),
(423, 1, 'NFNXZA2lWcogSpoLlicAaMtUgoAMtal2', '2018-07-02 23:57:25', '2018-07-02 23:57:25'),
(424, 1, 'i12ZbKDS236OQwO734KqRq7t4mAZOQD8', '2018-07-02 23:57:29', '2018-07-02 23:57:29'),
(425, 1, 'JsEPIPJM2gRnsT3FiE8WIKXOuMdEYRZF', '2018-07-02 23:57:29', '2018-07-02 23:57:29'),
(426, 1, 'LlDhvrILlQR5vcdtMcsX2Q7Bjp1Vv1HP', '2018-07-02 23:57:29', '2018-07-02 23:57:29'),
(427, 1, 'L2kWFPp3XJnC4wfQ45pfuv0mUNnbkoso', '2018-07-02 23:57:55', '2018-07-02 23:57:55'),
(428, 1, 'bbG7FZ3oxC6WfZFQj7hexXspBT9OlKuj', '2018-07-03 00:15:25', '2018-07-03 00:15:25'),
(429, 1, '1zrEYcaUzA8twuxtgRB9DQ9Ok24Cnk3M', '2018-07-03 00:18:52', '2018-07-03 00:18:52'),
(430, 1, 'msNSwLBj8jfFBy1Ne5fmsvDzAHATznAn', '2018-07-03 00:19:04', '2018-07-03 00:19:04'),
(431, 1, 'agoFhG0mPgDYeE1Pe3jjVKBkXOLjn2Ld', '2018-07-03 01:02:12', '2018-07-03 01:02:12'),
(432, 1, 'RpgPfiliL2HV17IAcFH40rnRWFbLc3BO', '2018-07-03 01:04:27', '2018-07-03 01:04:27'),
(433, 1, 'uikInLHuXCq3VWGAA04DU6QaoEtJ3q7O', '2018-07-03 01:04:27', '2018-07-03 01:04:27'),
(434, 1, 'ZwxkrE18DNLH1VrklxXzj4iFZKzyvLUs', '2018-07-03 01:04:27', '2018-07-03 01:04:27'),
(435, 1, 'RTeiK28q2nmC8VBNCCi4O0AmMnIuNr4U', '2018-07-03 01:04:32', '2018-07-03 01:04:32'),
(436, 1, '02NmISbP0NfRleTMIYxuiMa0WkxaOjTy', '2018-07-03 02:08:40', '2018-07-03 02:08:40'),
(437, 1, 'xPXpEGC0IeoAaYwqdx2J0rDbJP5yS1nw', '2018-07-03 02:08:40', '2018-07-03 02:08:40'),
(438, 1, 'ZLLytdwWq15RIwIsK7Mrf8ptEZkt2tiv', '2018-07-03 02:08:40', '2018-07-03 02:08:40'),
(439, 1, 'ficQfjZpYCxNVjsih3BUq367DtPLiYen', '2018-07-03 02:09:51', '2018-07-03 02:09:51'),
(440, 1, '3E3Yy7hK8NsLn4D3jPtzi8CQsN0g66Bs', '2018-07-03 02:09:53', '2018-07-03 02:09:53'),
(441, 1, 'oEY81zeGWYFHXsLhH5I4L2mcgJrswMmx', '2018-07-03 02:09:53', '2018-07-03 02:09:53'),
(442, 1, 'rOzwNFXPIErgIwNJrSZtg0V8yA0UFEDb', '2018-07-03 02:09:53', '2018-07-03 02:09:53'),
(443, 1, 'WB68l08JSpmt4fy6VHANhkDHcB4F7uaV', '2018-07-03 02:10:51', '2018-07-03 02:10:51'),
(444, 1, 'W85kyOeZ1xnjrwJuheX9y9MF1H1dw7NX', '2018-07-03 02:10:51', '2018-07-03 02:10:51'),
(445, 1, 'yCiYvi0Xom7lePCT1KNEzzXKPXzaT60w', '2018-07-03 02:10:51', '2018-07-03 02:10:51'),
(446, 1, 'qedfQ46wCvxT5zLmZb5qhE9sXqONSCH4', '2018-07-03 02:11:28', '2018-07-03 02:11:28'),
(447, 1, 'qfSbfAQqEbrqS2EgMxfJN9KOLQlk5I2o', '2018-07-03 02:11:28', '2018-07-03 02:11:28'),
(448, 1, '5YPl0bmzdf0ERR49zGakKMz0OSkCMObS', '2018-07-03 02:11:28', '2018-07-03 02:11:28'),
(449, 1, 'tyLQJwkjyNflJybcIiImfCaK5sKo9mnG', '2018-07-03 02:11:32', '2018-07-03 02:11:32'),
(450, 1, 'sB9H8ryE1RPpNrhe8aSn2VwltX3s88Vb', '2018-07-03 02:11:32', '2018-07-03 02:11:32'),
(451, 1, 'wZ4pAdsPGBlOWepVndPQUmLXYlICpwZE', '2018-07-03 02:11:32', '2018-07-03 02:11:32'),
(452, 1, 'vZ11nL9ahLCzd71gdbxEbgQ01I0vX9aO', '2018-07-03 02:12:00', '2018-07-03 02:12:00'),
(453, 1, 'rsD0ioGpdH3dnal0vb9Pj3jRUXHQ7vWl', '2018-07-03 02:12:00', '2018-07-03 02:12:00'),
(454, 1, 'NGO42pDFlruP45cQBN5iRvdutVo3ONaN', '2018-07-03 02:12:00', '2018-07-03 02:12:00'),
(455, 1, 'p9liPNgtYpLR2g0wYbZ4Puz5xZU6yfEU', '2018-07-03 02:12:53', '2018-07-03 02:12:53'),
(456, 1, '7RQqKiA1BiGJQfobA9dDpaEZ6znPqEqK', '2018-07-03 02:12:53', '2018-07-03 02:12:53'),
(457, 1, 'Rb1LVujsp2fDUhI4wzv64YZf9i7sLBCN', '2018-07-03 02:12:53', '2018-07-03 02:12:53'),
(458, 1, 'sQPwV4QufDG0C9nbTYTDCaOwmDYkfgrO', '2018-07-03 02:13:34', '2018-07-03 02:13:34'),
(459, 1, 'ty5WbHj4dPdfii2Y02OrsMevAqDfleZL', '2018-07-03 02:13:34', '2018-07-03 02:13:34'),
(460, 1, '4x5ExW3iyDNHAoBHmx0Ixpe9IgoqpVCF', '2018-07-03 02:13:34', '2018-07-03 02:13:34'),
(461, 1, 'PeNDJctyoCLp37qC0gh4CCTWFEduWmSS', '2018-07-03 02:16:35', '2018-07-03 02:16:35'),
(462, 1, 'u1Y56gixFuwZ79BBArhFrvlgBOOM7byZ', '2018-07-03 02:16:35', '2018-07-03 02:16:35'),
(463, 1, 'fDthx9OCQ8S5d2mkx1i2crSRQiM23uS9', '2018-07-03 02:16:35', '2018-07-03 02:16:35'),
(464, 1, '8Hn5QRUKXfHgiIn30fqrPPO6QOGZzeqK', '2018-07-03 02:16:49', '2018-07-03 02:16:49'),
(465, 1, 'rOdKTuEW0Yb4XEjaGVzsA87sp0y5MlmE', '2018-07-03 02:16:49', '2018-07-03 02:16:49'),
(466, 1, 'G7IvaMLkFQTLZXuM1GgkqQCOHD9kPh6W', '2018-07-03 02:16:49', '2018-07-03 02:16:49'),
(467, 1, 'XwCICoBPPpbWAVsDDiRWgQ42HXwVCXzS', '2018-07-03 02:17:13', '2018-07-03 02:17:13'),
(468, 1, 'YE1nCC4q2MONvgid8iwNdGnyLwISSYd6', '2018-07-03 02:17:13', '2018-07-03 02:17:13'),
(469, 1, 'DsvTaVd1MEb99eif1x1QFWS4hTyyp2So', '2018-07-03 02:17:13', '2018-07-03 02:17:13'),
(470, 1, '6sTWsaWyqGu6L87S8xHOsdsPheil4MXV', '2018-07-03 02:17:28', '2018-07-03 02:17:28'),
(471, 1, '7Q8kaoJNFlENmE7wAzFiovCDA8wF0HmD', '2018-07-03 02:17:28', '2018-07-03 02:17:28'),
(472, 1, 'CjmXSrAs8pFEjWQjInqCtKX7xuGYeUYu', '2018-07-03 02:17:28', '2018-07-03 02:17:28'),
(473, 1, 'tm0KTlLFRPM9ZxLGlkr9dDPt7FLaACSO', '2018-07-03 02:18:22', '2018-07-03 02:18:22'),
(474, 1, 'DS3hF0vzHJrzSLupK4mKpmOa0SWjOWnD', '2018-07-03 02:18:22', '2018-07-03 02:18:22'),
(475, 1, 'MBFrePnjAxCuusHIGQNBUf6kEPUQ1G9k', '2018-07-03 02:18:22', '2018-07-03 02:18:22'),
(476, 1, '3r91PMVXdXuSS93yAkDARcCnHuC51aNC', '2018-07-03 02:22:03', '2018-07-03 02:22:03'),
(477, 1, 'oeXJ1o2cJL4PLDuLhjX8WsoeuX9XI5VB', '2018-07-03 02:22:03', '2018-07-03 02:22:03'),
(478, 1, 'NeTE6EgQdYoeUNfnQ56IE5Vo9Hcg1vnV', '2018-07-03 02:22:03', '2018-07-03 02:22:03'),
(479, 1, 'iCHtEWx4AxaQ336Vey7u8bYnscItGnJe', '2018-07-03 02:22:41', '2018-07-03 02:22:41'),
(480, 1, 'WMN4GoSVQuSAM8zy5IvXSAWxPCkkNIcM', '2018-07-03 02:22:41', '2018-07-03 02:22:41'),
(481, 1, '8Isn3HvO0KW8W7WsHzwcJW1qjDLnFkwK', '2018-07-03 02:22:41', '2018-07-03 02:22:41'),
(482, 1, 'h8SsWv1iEsRn5pX52rNxoITPJr7q1AxO', '2018-07-03 02:22:55', '2018-07-03 02:22:55'),
(483, 1, 'ziLRp9xU47TmtFwZBLROwEedCoDbHSnu', '2018-07-03 02:22:55', '2018-07-03 02:22:55'),
(484, 1, 'kjY3hgYkfFdvo4F5hwZ3NwW9smau9nYr', '2018-07-03 02:22:55', '2018-07-03 02:22:55'),
(485, 1, 'MHQeKxDhGF2gkGhkF2HE9XNXWfvzYxGK', '2018-07-03 02:23:13', '2018-07-03 02:23:13'),
(486, 1, 'zhi4MWSREqruurXhts7aNMqfMEPFFCcA', '2018-07-03 02:23:14', '2018-07-03 02:23:14'),
(487, 1, 'vkehkzzBfHvLiWML4STnOWtByohO9wgM', '2018-07-03 02:23:14', '2018-07-03 02:23:14'),
(488, 1, '9Str1TuU2HecF7uPm71fG2wxH1K8R719', '2018-07-03 02:25:48', '2018-07-03 02:25:48'),
(489, 1, '9Jieq9jF4yOiuImg2IMGbsJ9VwlxPQ0U', '2018-07-03 02:25:48', '2018-07-03 02:25:48'),
(490, 1, 'BeK3slTvNuktTeklkhsVHBQ1DvyZwbcW', '2018-07-03 02:25:48', '2018-07-03 02:25:48'),
(491, 1, 'mX852YCRTxbx160f5POngvH5IsGVznl8', '2018-07-03 02:26:32', '2018-07-03 02:26:32'),
(492, 1, '40zG1suv3N4VNZPvugsSanO91PdOk6mG', '2018-07-03 02:26:32', '2018-07-03 02:26:32'),
(493, 1, 'DQsDezFKAvjtmVFBqeNWwbXSWOTWFzFD', '2018-07-03 02:26:32', '2018-07-03 02:26:32'),
(494, 1, '9eZsfwEAI8zlVJdZzkrz9aiyGc8Pptcv', '2018-07-03 02:26:58', '2018-07-03 02:26:58'),
(495, 1, '9b9Z1MHjUHoE6UTnWZzWBfS6Ph65DAUQ', '2018-07-03 02:26:58', '2018-07-03 02:26:58'),
(496, 1, 'v1bLe6WVxy8xf0sUbzLuWDBBnHJUF2sa', '2018-07-03 02:26:58', '2018-07-03 02:26:58'),
(497, 1, 'Vc3RTHT7BU6N4aYSR2BNVhA2puBalpxT', '2018-07-03 02:27:08', '2018-07-03 02:27:08'),
(498, 1, 'xNDJnmmXdc2Idirr7qiloKcBjn9r9knJ', '2018-07-03 02:27:08', '2018-07-03 02:27:08'),
(499, 1, 'ngxLxG2L8o8go1aq3m4eVqLdnTSWb7Lm', '2018-07-03 02:27:08', '2018-07-03 02:27:08'),
(500, 1, 'wwx99Y3daqWEC092tvjsfFM4CdERX1M0', '2018-07-03 02:27:19', '2018-07-03 02:27:19'),
(501, 1, 'lTtUcEIwQ81QdqdJ87Jv7eDc3F4eNcZU', '2018-07-03 02:27:19', '2018-07-03 02:27:19'),
(502, 1, 'zRXO36mgoi2uzMcuaLdMvUnLvVu613kX', '2018-07-03 02:27:19', '2018-07-03 02:27:19'),
(503, 1, 'CodX19LfojigbANVq5It5eBN78Kp8zRs', '2018-07-03 02:27:44', '2018-07-03 02:27:44'),
(504, 1, '2fAqv8jD05viDFT48JQoaUwDJTROStRm', '2018-07-03 02:27:44', '2018-07-03 02:27:44'),
(505, 1, 'Mpz9xrTbUWFouAGHnThqoYLSoeXIHDmJ', '2018-07-03 02:27:44', '2018-07-03 02:27:44'),
(506, 1, 'tWZAvxcpGrj9fsVJy0KO1S42VxfFDRAd', '2018-07-03 02:27:48', '2018-07-03 02:27:48'),
(507, 1, '13qhBGZPsv8l4nrl3Shb30SdnMZQ9ouG', '2018-07-03 02:27:48', '2018-07-03 02:27:48'),
(508, 1, 'OOkUCHCi56eDFowfnv9wYQCIor4vJLn2', '2018-07-03 02:27:48', '2018-07-03 02:27:48'),
(509, 1, 'xGG7drwV3UtBK98ylSvkOmxkACPov9YY', '2018-07-03 02:28:22', '2018-07-03 02:28:22'),
(510, 1, 'oWxx28KRGQ5PsfbsLJisOjF1U4GkuNvW', '2018-07-03 02:28:22', '2018-07-03 02:28:22'),
(511, 1, '230dsIPl0mMxn4PjdS1eXwffOZhkNhtk', '2018-07-03 02:28:22', '2018-07-03 02:28:22'),
(512, 1, '4dbB4KBudxsmu298zd2NnMgVWqoZuw5C', '2018-07-03 02:29:35', '2018-07-03 02:29:35'),
(513, 1, '8FDgeLUOiNFsiAbpZdgyXzwuAq1RgeDq', '2018-07-03 02:29:35', '2018-07-03 02:29:35'),
(514, 1, 'JDquqOdYpcx1riQUtzQFEKKljqnbkYG2', '2018-07-03 02:29:35', '2018-07-03 02:29:35'),
(515, 1, 'Fto1UKRnKn3dGZUbWkebwYIUZ3hNHD70', '2018-07-03 02:30:58', '2018-07-03 02:30:58'),
(516, 1, 'D9Edav6ZxaJBmCW8ze6j5Av9wV0nFRQv', '2018-07-03 02:30:58', '2018-07-03 02:30:58'),
(517, 1, 'DUx1fSr9za3sSGB6lojJ3bOOucYnuFKa', '2018-07-03 02:30:58', '2018-07-03 02:30:58'),
(518, 1, 'y4d2YdkCo2Hxys6d18MxqK7sHJKbP2Sn', '2018-07-03 02:31:59', '2018-07-03 02:31:59'),
(519, 1, '5I6VfwOEM1b3veYlSj4jjjq37u99ibpN', '2018-07-03 02:32:02', '2018-07-03 02:32:02'),
(520, 1, '2687v0Iq6PC92P58Ujtj153V65Ecqas9', '2018-07-03 02:32:04', '2018-07-03 02:32:04'),
(521, 1, 'JN22couSc5DNSE8ra5MuycXjBAy0ErxM', '2018-07-03 02:33:37', '2018-07-03 02:33:37'),
(522, 1, 'fyLFZz4KWTYosvPQgRgyBycplCSPBLlQ', '2018-07-03 02:33:40', '2018-07-03 02:33:40'),
(523, 1, '7NAVuo5rUYkDfbNi5hU1G8gwZIgl4WLQ', '2018-07-03 02:33:40', '2018-07-03 02:33:40'),
(524, 1, 'GISmxI7d5HghVhNhX8aE4m3CaLwiwxKa', '2018-07-03 02:33:40', '2018-07-03 02:33:40'),
(525, 1, 'TqZF8FDWGCFS5BHB8mgFtrSstnmTYuFP', '2018-07-03 02:34:08', '2018-07-03 02:34:08'),
(526, 1, 'TBMyB6q6ByK7JQjQIGQD8xiqfqVNVxKM', '2018-07-03 02:34:08', '2018-07-03 02:34:08'),
(527, 1, 'qJVz9cGzLUECxwFVOJbpIlBZBLWwnZvQ', '2018-07-03 02:34:08', '2018-07-03 02:34:08'),
(528, 1, 'Odfprald1x1gNVx8BxGTVu2dXHVOZspp', '2018-07-03 02:34:48', '2018-07-03 02:34:48'),
(529, 1, 'IyT8Tb1je8cGtybuaaydEF6vqqj1K6TK', '2018-07-03 02:34:48', '2018-07-03 02:34:48'),
(530, 1, 'VJvZ6Z2dTUQBSyFDQibpPlsChXLsALAh', '2018-07-03 02:34:48', '2018-07-03 02:34:48'),
(531, 1, 'V6neSnUe9iX9hcp9peeeTdvU6hMn2nHM', '2018-07-03 02:36:54', '2018-07-03 02:36:54'),
(532, 1, 'UmNXyW6X28qndQej9kcKnz9YjW4GCg3F', '2018-07-03 02:36:54', '2018-07-03 02:36:54'),
(533, 1, '6m4jldeMKNCVEnG5SECeRZ9rYDB8sA9V', '2018-07-03 02:36:54', '2018-07-03 02:36:54'),
(534, 1, 'ssfYgS0Suxs5TSU5f3aJSVrpsRnU1L0K', '2018-07-03 02:37:33', '2018-07-03 02:37:33'),
(535, 1, 'LB8axtjvCkQRR2qzb67rCxQ1dT5PrIph', '2018-07-03 02:37:33', '2018-07-03 02:37:33'),
(536, 1, 'vsbnRe55oLEinfbgBVdWUBExb22j0MaM', '2018-07-03 02:37:33', '2018-07-03 02:37:33'),
(537, 1, 'AP2QjFS8VHlUOl5HB5lx9iOnUwQhzprL', '2018-07-03 02:37:47', '2018-07-03 02:37:47'),
(538, 1, 'DjmWetCeVOrzlBjqlia3FFexhRqtDgQl', '2018-07-03 02:37:47', '2018-07-03 02:37:47'),
(539, 1, 'vc0ABHGbGrSRSfBTXHnJ7X3bDiWhWsSl', '2018-07-03 02:37:47', '2018-07-03 02:37:47'),
(540, 1, '4XjUSNMAunhjyZoVHRoIbWmR83EhWylg', '2018-07-03 02:41:26', '2018-07-03 02:41:26'),
(541, 1, 'eWNhTxraAvhcqrsWIUcLOxP5JOGAm7JI', '2018-07-03 02:41:26', '2018-07-03 02:41:26'),
(542, 1, 'L4NSAxTNGNEauo5CknPcAPgLwJVb6JBZ', '2018-07-03 02:41:26', '2018-07-03 02:41:26'),
(543, 1, 'ZBVjc5Z4e3kkHCFRqhC85hBFu1yHdDV2', '2018-07-03 02:43:24', '2018-07-03 02:43:24'),
(544, 1, '1ZnWEN9UfsNJZ5vVirgrAdwynku8RAZW', '2018-07-03 02:43:24', '2018-07-03 02:43:24'),
(545, 1, 'blWP8FNXPkW3BuesacLuA3i2nguGt4G9', '2018-07-03 02:43:24', '2018-07-03 02:43:24'),
(546, 1, '6gEtz2YQ2saAHtDRmSYzNyPJV7PWozMQ', '2018-07-03 02:43:34', '2018-07-03 02:43:34'),
(547, 1, 'nGtHcJifmAZhgoUM3W8uuJBvuMrB1cb7', '2018-07-03 02:43:34', '2018-07-03 02:43:34'),
(548, 1, 'TthOhx2jBrCcMhMUk85WyXzXAlBIP12s', '2018-07-03 02:43:34', '2018-07-03 02:43:34'),
(549, 1, 'n4egKyHb4WD0DMTn0buDc5f2cgHJzG33', '2018-07-03 02:43:56', '2018-07-03 02:43:56'),
(550, 1, '2v6Hni6Ru30UaX5yooJHz6yDdkgBo7Hd', '2018-07-03 02:43:56', '2018-07-03 02:43:56'),
(551, 1, 'QnvzJRfwctLwW3uhgjSuZbSvBmMlUTqw', '2018-07-03 02:43:56', '2018-07-03 02:43:56'),
(552, 1, 'J0yh2oh5Tvrm4zIYUb59quhgRtD6JAuc', '2018-07-03 02:44:36', '2018-07-03 02:44:36'),
(553, 1, 'kptcqXYpiZdnrIQLvrO5WeAl5NxZ59z5', '2018-07-03 02:44:36', '2018-07-03 02:44:36'),
(554, 1, 'NJgnQV3aQuWspZg2EaGxXwXadKJtikG5', '2018-07-03 02:44:36', '2018-07-03 02:44:36'),
(555, 1, '6bpwE1js63IxKOcnFf288rq3NCDZK4At', '2018-07-03 02:45:58', '2018-07-03 02:45:58'),
(556, 1, 'Q9zRP8113eMYF9U9gLZhFNkI2MGAf3Ne', '2018-07-03 02:45:58', '2018-07-03 02:45:58'),
(557, 1, 'HP0dBnQcfL6JoL59xcmlquSq12AmCmAx', '2018-07-03 02:45:58', '2018-07-03 02:45:58'),
(558, 1, 'mDNL1CvYrzTTgPGmMEG9UT3mHI5n9wOE', '2018-07-03 02:47:54', '2018-07-03 02:47:54'),
(559, 1, 'Kthf429sJQHiD05TtaN8zGKCANfju6oZ', '2018-07-03 02:47:54', '2018-07-03 02:47:54'),
(560, 1, 'IVQ7bTdcdgyo0aFC8Nm6FVmOGZltRy7h', '2018-07-03 02:47:54', '2018-07-03 02:47:54'),
(561, 1, '7LOdDuZLYZ0TMsOcRMHO5J54yDBkmoK2', '2018-07-03 02:49:13', '2018-07-03 02:49:13'),
(562, 1, '5XuzViOmZcUWuFZeTQ3y9FZg9cCFB3PC', '2018-07-03 02:49:13', '2018-07-03 02:49:13'),
(563, 1, 'EWsBtP7AoAKLlaFsZR2SUq8W6QMkht6E', '2018-07-03 02:49:13', '2018-07-03 02:49:13'),
(564, 1, 'iuaJ9q19ONLLW7YygjW4GBWIqowFJoLc', '2018-07-03 02:49:24', '2018-07-03 02:49:24'),
(565, 1, 'DCMMSVXyr8w3CWI397jY5LYYLggMHYKD', '2018-07-03 02:49:24', '2018-07-03 02:49:24');
INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(566, 1, 'K2ID9V2INwNx7C8AADY6qtFcEviNNQpi', '2018-07-03 02:49:24', '2018-07-03 02:49:24'),
(567, 1, 'IrMHYnDhRZMd6CzCb3NcTomk94DUgfcX', '2018-07-03 02:49:47', '2018-07-03 02:49:47'),
(568, 1, 'TaSluZ9OmZ8PVJ6t3yHbqL7xvhQBudPR', '2018-07-03 02:49:47', '2018-07-03 02:49:47'),
(569, 1, '9Q2qROMhYzPTCjY6LocmULdRSVR1Ya4w', '2018-07-03 02:49:47', '2018-07-03 02:49:47'),
(570, 1, '4E9VKmI3cBjQyF7VhVQyk5Fl8gHu9vvX', '2018-07-03 02:51:59', '2018-07-03 02:51:59'),
(571, 1, 'BdYmtVlbtWYw9Y9WPfmAEePpXVwyubN5', '2018-07-03 02:51:59', '2018-07-03 02:51:59'),
(572, 1, '0N8wfRoRucYTqM265k6YWWtBjQuY6EsN', '2018-07-03 02:51:59', '2018-07-03 02:51:59'),
(573, 1, 'd3WVXvTbXSndoJ3awNLWhkhQWoaBWsRi', '2018-07-03 02:53:17', '2018-07-03 02:53:17'),
(574, 1, 'BMtu2XAXkUGkhHVzZGXz5CijC8fkfZsH', '2018-07-03 02:53:17', '2018-07-03 02:53:17'),
(575, 1, 'ONMgia8s4uPVGNrPGmz3hXUEiTwVA3Bf', '2018-07-03 02:53:17', '2018-07-03 02:53:17'),
(576, 1, '9eEjRncrQjsebHCjiSqmFCBEcGNop533', '2018-07-03 02:53:24', '2018-07-03 02:53:24'),
(577, 1, 'nxJjHb9VvApTNWgh74XMrH16eCl4faH3', '2018-07-03 02:53:24', '2018-07-03 02:53:24'),
(578, 1, '3kcCD8k5vHWhuzzOX9npzUdvZpr9ajmn', '2018-07-03 02:53:24', '2018-07-03 02:53:24'),
(579, 1, 'VqQT0wVSBR8WqYiBJlyolgj1XQ9IaHii', '2018-07-03 02:56:29', '2018-07-03 02:56:29'),
(580, 1, 'jOMmOMBNgJ5k63H17PqQ4B2MDupDhCdy', '2018-07-03 02:56:29', '2018-07-03 02:56:29'),
(581, 1, 'SHecackIwE14mXGMqBUjWWwO3Cm1u6qn', '2018-07-03 02:56:29', '2018-07-03 02:56:29'),
(582, 1, 'o2P4rcD6gLpLHOrF9wgLsWQhLlVJWqqV', '2018-07-03 02:56:35', '2018-07-03 02:56:35'),
(583, 1, 'nS5T1LAQ2S96pXDRshvewilOMpSdd1qc', '2018-07-03 02:56:35', '2018-07-03 02:56:35'),
(584, 1, 'jxU2MciGe7p8R17pkPkTzrWVZpWe3jVl', '2018-07-03 02:56:35', '2018-07-03 02:56:35'),
(585, 1, 'LAeMwGW18tgAIroseRId7r3JaqFH4sQf', '2018-07-03 02:57:05', '2018-07-03 02:57:05'),
(586, 1, 'QhXJ7X2kyW8TFd8RIX5nZXlaHyhHEtDx', '2018-07-03 02:57:05', '2018-07-03 02:57:05'),
(587, 1, 'tQxSf2qhY0Yi9ckuMevglYnqbg568TgS', '2018-07-03 02:57:05', '2018-07-03 02:57:05'),
(588, 1, 'KGThsBIoMuXZo31VYVwvwbGGbLSYZSNd', '2018-07-03 02:57:24', '2018-07-03 02:57:24'),
(589, 1, '5KJXrcZPN5rcgUZntzulpMtwNQc5u983', '2018-07-03 02:57:24', '2018-07-03 02:57:24'),
(590, 1, 'HIn6l0ZTeqSkyGgfexmb6kdHuqoPOaKU', '2018-07-03 02:57:24', '2018-07-03 02:57:24'),
(591, 1, 'CYJUFmci3FJbEPgknC9uDkWuLe3hVqgT', '2018-07-03 02:57:31', '2018-07-03 02:57:31'),
(592, 1, 'ThOh30pIMEQ7VjocGt2D8DDWQrgVBQ2k', '2018-07-03 02:57:31', '2018-07-03 02:57:31'),
(593, 1, 'BDpQ3Ns6DOIzkqe2NLV1sPdI6IG5YRTX', '2018-07-03 02:57:31', '2018-07-03 02:57:31'),
(594, 1, '518TiVddQBwOJHv6M19VRS94vneMzVU2', '2018-07-03 03:00:07', '2018-07-03 03:00:07'),
(595, 1, '5XBwIwLcx0RKL8iupZOKhuW2jv3yZP5h', '2018-07-03 03:00:07', '2018-07-03 03:00:07'),
(596, 1, '4cVHYGB69XNrJMdpd1z6uHIcTcJZUpVZ', '2018-07-03 03:00:07', '2018-07-03 03:00:07'),
(597, 1, '9fUfDkKmeSGegf4ghl6zrBEA3Agl13Zt', '2018-07-03 03:00:36', '2018-07-03 03:00:36'),
(598, 1, 'BfFltyC9AdwFepNiX7omB07Jjuhjxp2k', '2018-07-03 03:00:36', '2018-07-03 03:00:36'),
(599, 1, 'zAt4uufPDLYwJ9hvMAKscxdEcypvPhoV', '2018-07-03 03:00:36', '2018-07-03 03:00:36'),
(600, 1, 'JdJrNGqObSi1JY3EnP2A97S9YUR4L4ZZ', '2018-07-03 03:00:53', '2018-07-03 03:00:53'),
(601, 1, '5T7kqfwsuTHEHNgqvaCpRGiSvv3wxJdt', '2018-07-03 03:00:53', '2018-07-03 03:00:53'),
(602, 1, 'RUQYH7nKDHPJUiG3ucmirOmuEd7J0AEP', '2018-07-03 03:00:53', '2018-07-03 03:00:53'),
(603, 1, 'nZCWQhvVqLVtiTCxvFENxlOFfD4yA2En', '2018-07-03 03:01:06', '2018-07-03 03:01:06'),
(604, 1, 'WusDXSObFTkqhgVByUkI3btdJ7SO9hlo', '2018-07-03 03:01:06', '2018-07-03 03:01:06'),
(605, 1, '7H3ocUutQ98A3gi2vevONaXwvbGkY9de', '2018-07-03 03:01:06', '2018-07-03 03:01:06'),
(606, 1, 'yLOwxyOkVpX3SihbNsxrIkbxxiyfl47q', '2018-07-03 03:01:51', '2018-07-03 03:01:51'),
(607, 1, 'ajFP7GSCZbt2kM27P5ZCgMPMNdJnjyVe', '2018-07-03 03:01:51', '2018-07-03 03:01:51'),
(608, 1, 'AihTUsYtf2ANCKPKPwZeLPyfkCPjbRiG', '2018-07-03 03:01:51', '2018-07-03 03:01:51'),
(609, 1, 'tvbCtx0Qe4y9jUx3Cy1VWcMsO6iuM8dj', '2018-07-03 03:02:08', '2018-07-03 03:02:08'),
(610, 1, 'VqpyxwZhMoltri9ezxcnNy1rKIY2GhAh', '2018-07-03 03:02:08', '2018-07-03 03:02:08'),
(611, 1, 'Ca5yB6yZ1HstU1bOq8dx3tK6lPKL1xTW', '2018-07-03 03:02:08', '2018-07-03 03:02:08'),
(612, 1, '9xXYCNHCR4AR5eZCDKUcJNM1M7eQtgZQ', '2018-07-03 03:02:49', '2018-07-03 03:02:49'),
(613, 1, 'etBGslDKZZNV6bbcyM6AtfNE9nj2WgWe', '2018-07-03 03:02:49', '2018-07-03 03:02:49'),
(614, 1, 'jXzoPn0sEQPyaqgqLblaZZaOgfSwubPk', '2018-07-03 03:02:49', '2018-07-03 03:02:49'),
(615, 1, '4qsYF0uYSCqafq5R7MLKLslzYmRC413W', '2018-07-03 03:02:55', '2018-07-03 03:02:55'),
(616, 1, '2FXwgvThW0EM2kPEvSrWvQVa8Cv5aBNL', '2018-07-03 03:02:55', '2018-07-03 03:02:55'),
(617, 1, 'qL0gEnBIQMR48g1uFCuDUzAJuxCX8OX8', '2018-07-03 03:02:55', '2018-07-03 03:02:55'),
(618, 1, 'WxAq8KEVqpj20Pbah3OdMXLHob3yNkL4', '2018-07-03 03:03:04', '2018-07-03 03:03:04'),
(619, 1, 'PIs5w8ba6X6hJQ6OmkaP6YzwyIKAHa4D', '2018-07-03 03:03:04', '2018-07-03 03:03:04'),
(620, 1, 'I2Ojthzf67yDRmsqLAVaKMWGL2ddgKUh', '2018-07-03 03:03:04', '2018-07-03 03:03:04'),
(621, 1, '7F4EDKhJgRgRxPDGDftntWxMp2HgL21v', '2018-07-03 03:03:22', '2018-07-03 03:03:22'),
(622, 1, '1fsdsyGH2tCwy67Z4hpkTxCfjywTsLxy', '2018-07-03 03:03:22', '2018-07-03 03:03:22'),
(623, 1, 'jBKNRjxuPDbLBUMKcJZBVC9HAufEWhe3', '2018-07-03 03:03:22', '2018-07-03 03:03:22'),
(624, 1, 'lsvlzaoxrZBvcMQPRlh5Izw3e1wTCqj7', '2018-07-03 03:04:01', '2018-07-03 03:04:01'),
(625, 1, '7lLwkb1JuB8aKtw6Viyx7SaqgQg5beUt', '2018-07-03 03:04:01', '2018-07-03 03:04:01'),
(626, 1, '3o5jJlVc8sateya6Y2LTsHXHJPd8GvtL', '2018-07-03 03:04:01', '2018-07-03 03:04:01'),
(627, 1, 'DZBZzoZ7Kcq2XUJzQMYtfdMSzPnCZVdP', '2018-07-03 03:05:24', '2018-07-03 03:05:24'),
(628, 1, '9NCaW7YuKUr1lRAxDKaeMeQBzUqwQ0kJ', '2018-07-03 03:05:24', '2018-07-03 03:05:24'),
(629, 1, 'esvB2O2ps0pbCiCeCJgroZNWGt4aphTU', '2018-07-03 03:05:24', '2018-07-03 03:05:24'),
(630, 1, '5HaWH347mjVNES9uiN88l46evBL5EG1m', '2018-07-03 03:06:03', '2018-07-03 03:06:03'),
(631, 1, 'prf4FBDpIZDLcjyfz1vDRmlUsJZHYdf1', '2018-07-03 03:06:03', '2018-07-03 03:06:03'),
(632, 1, 'DmkWfSVdpGtWc7il2Or1NMBOQ69VJZ14', '2018-07-03 03:06:03', '2018-07-03 03:06:03'),
(633, 1, 'LvlXtJus18igekrkHCiijlEzrRtmpQjX', '2018-07-03 03:11:22', '2018-07-03 03:11:22'),
(634, 1, 'w0bzTMyqQX9zRBepwAgnIS5K6SfjWcI4', '2018-07-03 03:11:22', '2018-07-03 03:11:22'),
(635, 1, 'IPgwl6t95EGUEijTBbeJCwnqbZ595cB9', '2018-07-03 03:11:22', '2018-07-03 03:11:22'),
(636, 1, 'W3x6E3wtfA3yBAnppEoGX6pvYxKNRdM0', '2018-07-03 03:14:22', '2018-07-03 03:14:22'),
(637, 1, 'sQU64lGC23G1QV8sUmL79hzeFvgUHYsE', '2018-07-03 03:14:22', '2018-07-03 03:14:22'),
(638, 1, 'I6KCWUkeqy5AdCPFork1Gmx1Zl2Tw6kN', '2018-07-03 03:14:22', '2018-07-03 03:14:22'),
(639, 1, 'ZTHmUlcjlSAAsl2MmBgqyWOZP7Kb0Y15', '2018-07-03 03:15:53', '2018-07-03 03:15:53'),
(640, 1, 'psMgCOKRSLFKqfKCWUt834005EebFSh0', '2018-07-03 03:15:53', '2018-07-03 03:15:53'),
(641, 1, 'Dg9OdR6Rlo3yo4lNJi8kjeri4etwMkgz', '2018-07-03 03:15:53', '2018-07-03 03:15:53'),
(642, 1, 'SupkRHsYvMSiaGjNqpVT0sVE1xMAO1gI', '2018-07-03 03:16:14', '2018-07-03 03:16:14'),
(643, 1, 'e5Yh9LKIwZYMJj4eOYRIJBXcQgrqrJwo', '2018-07-03 03:16:14', '2018-07-03 03:16:14'),
(644, 1, 'mhaPSPRhHO7RIJQiA13zMumhIXeV0BW3', '2018-07-03 03:16:14', '2018-07-03 03:16:14'),
(645, 1, 'QzYpOtYtpbzsmBH4gc7NgVKp8FatuR7Q', '2018-07-03 03:16:58', '2018-07-03 03:16:58'),
(646, 1, 'AIBhC0w3rVcad0XudHJB9MDfBKH9o4z2', '2018-07-03 03:16:58', '2018-07-03 03:16:58'),
(647, 1, '0opeseLsWMCSCAgsonUHymN7R3hztGpi', '2018-07-03 03:16:58', '2018-07-03 03:16:58'),
(648, 1, 'tgeSunJK6GSNDBVRproMBYehkWlKa3yt', '2018-07-03 03:17:11', '2018-07-03 03:17:11'),
(649, 1, 'EOuj5Hf3plGpjZ5dZM8UKUp9wBH5gfmf', '2018-07-03 03:17:11', '2018-07-03 03:17:11'),
(650, 1, 'rhOTpJ7SnAiEGBTL1eriI6QvjzEdgJXE', '2018-07-03 03:17:11', '2018-07-03 03:17:11'),
(651, 1, 'HgD8oqgWHZHUGxUn7STAznEdoRJvMXw1', '2018-07-03 03:17:28', '2018-07-03 03:17:28'),
(652, 1, 'YTKLYapinsUcG0ASzsY4GYIPHV1TzkXG', '2018-07-03 03:17:28', '2018-07-03 03:17:28'),
(653, 1, '8l72XDk9ZryIan8QpReEUfi2oYaYCi3F', '2018-07-03 03:17:28', '2018-07-03 03:17:28'),
(654, 1, 'jr4aZl5wyrbeFblJbOwwOf6gwnNWmQh0', '2018-07-03 03:18:56', '2018-07-03 03:18:56'),
(655, 1, 'A39pH2HgZtESkEP2VfWmxPCpKewrSZKx', '2018-07-03 03:18:56', '2018-07-03 03:18:56'),
(656, 1, 'qy8UAwnimM5TWdRQRqQRbMOhp4yg2mLu', '2018-07-03 03:18:56', '2018-07-03 03:18:56'),
(657, 1, 'oGCumn8sIwGsMEAAEm8Fa4PBGmssm5UD', '2018-07-03 03:20:16', '2018-07-03 03:20:16'),
(658, 1, 'lyPihOUcA0NNplZdKePsdYxInbOfdx5V', '2018-07-03 03:20:16', '2018-07-03 03:20:16'),
(659, 1, '6kf6Dy0d1Tymd8JYUGBCM6mZzw6Hr6hR', '2018-07-03 03:20:16', '2018-07-03 03:20:16'),
(660, 1, 'FBTutTGCnpypubw1bqXTrrRinxSoDOtS', '2018-07-03 03:21:21', '2018-07-03 03:21:21'),
(661, 1, 'Ozbr2e3I2Z8iIzet8KZuCdTyxxI3HynC', '2018-07-03 03:21:21', '2018-07-03 03:21:21'),
(662, 1, 'kO33ReGe1NZb9K26kQ9wtHpgo6ZXxpXh', '2018-07-03 03:21:21', '2018-07-03 03:21:21'),
(663, 1, 'FymlOp5bAsTp8tzdSm32W8HXsluErvQ4', '2018-07-03 03:22:24', '2018-07-03 03:22:24'),
(664, 1, 'P3fptmtrb7e2ggPLCHhCHBrHWkfOQL3L', '2018-07-03 03:22:24', '2018-07-03 03:22:24'),
(665, 1, 'yR52euFdsh9623ui6sACkgLzkfaSFS7x', '2018-07-03 03:22:24', '2018-07-03 03:22:24'),
(666, 1, 'NtG7scCWklyQZ6T2DambhhDrYAEYjJBb', '2018-07-03 03:23:54', '2018-07-03 03:23:54'),
(667, 1, 'y992f4t16jBa6Q2dZmxZfZ3KZGpAL8AP', '2018-07-03 03:23:54', '2018-07-03 03:23:54'),
(668, 1, 'yjbDG7s90W5v8LgYg0X8Jhj9VoG4FU7u', '2018-07-03 03:23:54', '2018-07-03 03:23:54'),
(669, 1, 'wlRFC4ADUnk7M1BEktqOZdwTFpgukq8h', '2018-07-03 03:24:10', '2018-07-03 03:24:10'),
(670, 1, '96k2ZCaEO0R8m0MrgbQ7QVCzVfR3ziP8', '2018-07-03 03:24:10', '2018-07-03 03:24:10'),
(671, 1, 'OM67xIMh8gHA9DI0LuycFoYGHmGVZ4Ql', '2018-07-03 03:24:10', '2018-07-03 03:24:10'),
(672, 1, 'Ab4Cmzh8MdqiP1mNUvsKf6RDztNpjT7J', '2018-07-03 03:24:26', '2018-07-03 03:24:26'),
(673, 1, 'JQeREJcET4jSexYar54ItD3bt6s9U5m6', '2018-07-03 03:24:26', '2018-07-03 03:24:26'),
(674, 1, '57N7q5pBSkKv3nvMvGHKyUZ4ZabYI0q0', '2018-07-03 03:24:26', '2018-07-03 03:24:26'),
(675, 1, 'qgAsLt7SGH68xP63NDoi7xsO0UMU7vHl', '2018-07-03 03:24:48', '2018-07-03 03:24:48'),
(676, 1, 'lEDS0ZOj7CdBe3tBraEMv4jK9rJPJMYW', '2018-07-03 03:24:48', '2018-07-03 03:24:48'),
(677, 1, '2bb7ctnAhzH95WNKDRdnNmxenPeBlXBl', '2018-07-03 03:24:49', '2018-07-03 03:24:49'),
(678, 1, 'PLkdL0WXOFCsA3gmTF9axOGWXyLcyqo9', '2018-07-03 03:25:07', '2018-07-03 03:25:07'),
(679, 1, 'TfKc2HuH0pTG3YcAw4p6nlZkZn4rKQo3', '2018-07-03 03:25:07', '2018-07-03 03:25:07'),
(680, 1, 'JAZXBj00XW4ji2BfcFzjoo5TVy70PIci', '2018-07-03 03:25:07', '2018-07-03 03:25:07'),
(681, 1, 'EFP8Wq30Fm3BlheEdfvMuLGm0hchspOU', '2018-07-03 03:25:13', '2018-07-03 03:25:13'),
(682, 1, 'TPLjUREYvBe9TUI0olMdbs50KnAAr9so', '2018-07-03 03:25:13', '2018-07-03 03:25:13'),
(683, 1, '55nMDtFscIVXEePK6XxuVAmXJVXCoKpi', '2018-07-03 03:25:13', '2018-07-03 03:25:13'),
(684, 1, 'AjX3ZNdXl6PeeMN6rK77QYRgYdLrQNta', '2018-07-03 03:55:57', '2018-07-03 03:55:57'),
(685, 1, 'rbO0aQITCG6OFUAXeDX0h7K0zGd2ZTmF', '2018-07-03 03:56:04', '2018-07-03 03:56:04'),
(686, 1, 'XBIq0MnjHA3raWfOvXHH0tX38fP1O0XV', '2018-07-03 03:56:10', '2018-07-03 03:56:10'),
(687, 1, 'ja3Ygj5XQKycgQsyuKWsdkguSG1BESKe', '2018-07-03 03:56:10', '2018-07-03 03:56:10'),
(688, 1, '5uxhd25dOSLKufW5niFqKd4AzmyXhgWD', '2018-07-03 03:56:10', '2018-07-03 03:56:10'),
(689, 1, 'y7DudJtOKcFLOhvAO0FaTjQganMo7ySM', '2018-07-03 03:56:48', '2018-07-03 03:56:48'),
(690, 1, '0bLd5WPx3BnVkBacROPxzU4EV1fx9cmP', '2018-07-03 03:56:48', '2018-07-03 03:56:48'),
(691, 1, 'v7VVR90w9OWCVvR3VcxUPWhk59jCoBCC', '2018-07-03 03:56:48', '2018-07-03 03:56:48'),
(693, 1, 'qBtv77s9GqgoDIcTXxnc94w2szMsvHcb', '2018-07-03 18:53:23', '2018-07-03 18:53:23'),
(694, 1, 'q0nVcolmHjJAbFmDtzIbuWd0AjBG9KPH', '2018-07-03 18:55:00', '2018-07-03 18:55:00'),
(695, 1, 'OvYzZdc3CovcLXRInhY94cUCotHucpBg', '2018-07-03 18:55:06', '2018-07-03 18:55:06'),
(696, 1, 'KUhfNdIahEb6TvExVpq9vmeIQWeFuLD8', '2018-07-03 18:55:13', '2018-07-03 18:55:13'),
(697, 1, 'LIl6iSnf1lpurjrPWqPKVncC7Bnv9jYs', '2018-07-03 18:55:15', '2018-07-03 18:55:15'),
(698, 1, '2WhGfAbPysS7xAoQg3SySG8Ki5eiJMWC', '2018-07-03 18:57:15', '2018-07-03 18:57:15'),
(699, 1, 'ZGlz9vewxnF78KIPHkQBUgAOivVyyusm', '2018-07-03 19:01:11', '2018-07-03 19:01:11'),
(700, 1, '6AFL5RZR6mp0fTGxHuCMZazf9RxwDDAt', '2018-07-03 19:02:03', '2018-07-03 19:02:03'),
(701, 1, 'B4tc53psTX2piL8d3Qz74jFdpNrfINkd', '2018-07-03 19:02:16', '2018-07-03 19:02:16'),
(702, 1, 'NqdUEEysYktHQulwD7XC2Wz7vXHEJxEb', '2018-07-03 19:05:34', '2018-07-03 19:05:34'),
(703, 1, 'gGn8TnpA6t3TUb5nSF0Xt7mgs8eyaYqg', '2018-07-03 19:05:38', '2018-07-03 19:05:38'),
(704, 1, 'UfCfNFeTri3BApaPa9sBuNvZszqS87Zt', '2018-07-03 19:05:38', '2018-07-03 19:05:38'),
(705, 1, 'P8HODA2tQYEGbpkp6IlBPVhhUk8UsS91', '2018-07-03 19:05:38', '2018-07-03 19:05:38'),
(706, 1, '1Rvo1oL3VpVyM7fJ1dPrNuGiYzHGqk8v', '2018-07-03 19:06:01', '2018-07-03 19:06:01'),
(707, 1, '6a1bIBTFFgw084sbjFhDvPLDTychHQ1b', '2018-07-03 19:06:03', '2018-07-03 19:06:03'),
(708, 1, 'eRRK2lRDGaBwyGRpEjHyEzKWzIkSd9CM', '2018-07-03 19:06:03', '2018-07-03 19:06:03'),
(709, 1, 'gu75Px8UxkTOvlsf1hbXeGwFU7reHV72', '2018-07-03 19:06:14', '2018-07-03 19:06:14'),
(710, 1, 'NWsSV3z2BuVGK4BOLgbSIqv2a9o5T4dG', '2018-07-03 19:06:16', '2018-07-03 19:06:16'),
(711, 1, 'McBRKV0buzYq3JktrifCW9iZRxG6V5vx', '2018-07-03 19:06:16', '2018-07-03 19:06:16'),
(712, 1, 'htxJ8q6hoD92sbwZ7aTL5MXHrJkOkeSG', '2018-07-03 19:06:16', '2018-07-03 19:06:16'),
(713, 1, 'qgqOcXQdqcm9ekOpQ3DSbarEkn4OTYAt', '2018-07-03 19:06:47', '2018-07-03 19:06:47'),
(714, 1, 'FssbZs34jYbHVMnQJZAZZj5Ksj8F7vVC', '2018-07-03 19:06:50', '2018-07-03 19:06:50'),
(715, 1, '78nC6x0u1cZ698PEJAehMUOtuEpxT473', '2018-07-03 19:06:52', '2018-07-03 19:06:52'),
(716, 1, 'AY0GEmyy4w6NguYkVIEVcJ4dP2tYNWFa', '2018-07-03 19:06:52', '2018-07-03 19:06:52'),
(717, 1, 'aPJZYU9uVi2o9bFPs2MHKXu7YuolzDc7', '2018-07-03 19:06:52', '2018-07-03 19:06:52'),
(718, 1, 'zZ5GAo5cYrfL2DVrL6sj9ZPvX7v8XiHN', '2018-07-03 19:07:21', '2018-07-03 19:07:21'),
(719, 1, 'zB4ZHkbBfNw2D4PPNFvFLFiIvf9pYQKH', '2018-07-03 19:07:36', '2018-07-03 19:07:36'),
(720, 1, 'vYQ8ymdAtZYW3fdcWkYlwoyRRa236fBu', '2018-07-03 19:07:37', '2018-07-03 19:07:37'),
(721, 1, '2Koe2gigysZhMKmuL89HvBPZmVKrW6me', '2018-07-03 19:07:39', '2018-07-03 19:07:39'),
(722, 1, 'rXQLAifMochywHirN5mWH2mXdAL2L2zT', '2018-07-03 19:07:39', '2018-07-03 19:07:39'),
(723, 1, 'uJ1uEtEaMGuBsTBq42eINfXS56gI3mos', '2018-07-03 19:07:39', '2018-07-03 19:07:39'),
(724, 1, 'kP9X4NPuMmKIzDNloE0jj3CAFdi2kX4l', '2018-07-03 19:07:56', '2018-07-03 19:07:56'),
(725, 1, 'OAiXt173MbQoxUJq0E4L4CAJSWrGjTlB', '2018-07-03 19:08:11', '2018-07-03 19:08:11'),
(726, 1, 'IYEibApKyM1qI0f5JnrkPwwQnn2Kzru9', '2018-07-03 19:13:27', '2018-07-03 19:13:27'),
(730, 1, 'CX27Bz1LMlY1HNDS1ukDYSAwv9gNSpjr', '2018-07-03 20:04:28', '2018-07-03 20:04:28'),
(731, 1, 't8JabzORm44q7qyzkNs15q9YXJUl902u', '2018-07-03 20:04:39', '2018-07-03 20:04:39'),
(741, 1, 'xpDlk2IHGAwcpey0fwf4APe02S8OhKCO', '2018-07-03 21:21:10', '2018-07-03 21:21:10'),
(742, 1, 'dqQVAurcQ4QaglHhBOKNup98z0DN3vAI', '2018-07-03 21:21:10', '2018-07-03 21:21:10'),
(743, 1, '51VCf7WmhnnI9FWyPzMyQSrcxZYrg62g', '2018-07-03 21:21:19', '2018-07-03 21:21:19'),
(744, 1, '5pDU9AhQZEWT43d0EsBDVBLMQY1ikBjR', '2018-07-03 21:21:19', '2018-07-03 21:21:19'),
(746, 1, 'QQIjSvHMQtq8haZyIuSab8n3oxX8UZGH', '2018-07-03 21:23:43', '2018-07-03 21:23:43'),
(748, 1, '6X58fWZGpqRdLOKzqgkkeOBJQEp7CT2s', '2018-07-03 21:27:12', '2018-07-03 21:27:12'),
(749, 1, 'JdraBZI27HlUpvnZtfoWPVRosQ4Ua5Oj', '2018-07-03 21:27:12', '2018-07-03 21:27:12'),
(753, 1, 'hKIJvurK36k3Up4Ai6kzbvg5pFnkQ1gs', '2018-07-03 21:30:07', '2018-07-03 21:30:07'),
(754, 1, 'LgygmBj3j2onEk9EkunrsiKB6088AtP5', '2018-07-03 21:30:07', '2018-07-03 21:30:07'),
(755, 1, 'yNNZ6ZoULjPzfzyf1tWiKRkLjmK5ionz', '2018-07-03 21:30:15', '2018-07-03 21:30:15'),
(756, 1, 'zXzbeHiM5P1bVx7YGb9by7SZWKfXWmRd', '2018-07-03 21:30:15', '2018-07-03 21:30:15'),
(759, 1, '8RIBfIdMe2pctzQyTbHGkBtlqsYXmzMt', '2018-07-03 21:55:54', '2018-07-03 21:55:54'),
(760, 1, 'oDqndbwccwbD1qgDNnuYm3K2YQswzxug', '2018-07-03 21:55:54', '2018-07-03 21:55:54'),
(761, 1, 'H6h82alWRaFkRGUOBJXl8ry7nZb0PHsr', '2018-07-03 21:56:05', '2018-07-03 21:56:05'),
(762, 1, '51v1Ouw3JP6CjhdNAZtI70jrRS9HRCA4', '2018-07-03 21:56:05', '2018-07-03 21:56:05'),
(763, 1, 'yyIrl2mPBQempyTdRbZKVNrlQbR5xSfc', '2018-07-03 21:57:31', '2018-07-03 21:57:31'),
(764, 1, 'qf3jExeDun67kLuEB1kQW7ZGn7pcHPeZ', '2018-07-03 21:58:16', '2018-07-03 21:58:16'),
(765, 1, 'TO7oPEwAPmjnqUP58BXLMsmysUrqYMUq', '2018-07-03 21:59:02', '2018-07-03 21:59:02'),
(766, 1, 'KWz2Q7OLm6bLZFzzr8SCFeA0qTpfkJy4', '2018-07-03 23:12:53', '2018-07-03 23:12:53'),
(767, 1, '1rM2rPQCN9BcEST7SRJ132GIoe5sKlXy', '2018-07-03 23:13:28', '2018-07-03 23:13:28'),
(768, 1, 'TitxiWfzY1LfOijckqZa9hE942pJZabT', '2018-07-03 23:14:05', '2018-07-03 23:14:05'),
(769, 1, '3kouni1I5mQAfqZkjhGQ1gZusxJSsXkB', '2018-07-03 23:15:02', '2018-07-03 23:15:02'),
(770, 1, '0E0zyGJSqgC8cGa6ty2uaPyY26NbixfS', '2018-07-03 23:15:22', '2018-07-03 23:15:22'),
(771, 1, 'G152eIFMCxgNW8w0Btu4P5mowPXUflWw', '2018-07-03 23:18:47', '2018-07-03 23:18:47'),
(772, 1, 'wvAo8XW4V9M9nyfwy1NOaE61LM2Pc3JC', '2018-07-03 23:22:04', '2018-07-03 23:22:04'),
(773, 1, 'd9KQRByYkKW4oCwTUbNyX4xNQcB5ygkY', '2018-07-03 23:22:19', '2018-07-03 23:22:19'),
(774, 1, 'vCcH1FNS6wzxuY6UvTl0Uca9ACsKOLwb', '2018-07-03 23:23:22', '2018-07-03 23:23:22'),
(775, 1, 'Q0Xfw7gCp1mKuq8W6Zfw10Y5qB40uEJc', '2018-07-03 23:23:25', '2018-07-03 23:23:25'),
(776, 1, 'iOb6PwNedbP2rgLZheNVc52hg8jvLlYY', '2018-07-03 23:23:29', '2018-07-03 23:23:29'),
(777, 1, 'YXlhacm4dDVYIgkOavEaq4SXqlYgqjzf', '2018-07-03 23:23:36', '2018-07-03 23:23:36'),
(778, 1, 'thaZdkvUJJ0GSz7OY9VWRqeR6rxgljES', '2018-07-03 23:23:42', '2018-07-03 23:23:42'),
(779, 1, 'cYybAEclTnzHHPfoK8MWzsQR9Tejq4zt', '2018-07-03 23:23:42', '2018-07-03 23:23:42'),
(780, 1, 'IgrhdmSny6krCEkIskHJta1wHAAbRNpJ', '2018-07-03 23:23:42', '2018-07-03 23:23:42'),
(781, 1, 'w63j7GG7ayVwh0ryoJavu3ErKjXPIutm', '2018-07-03 23:24:16', '2018-07-03 23:24:16'),
(782, 1, 'w4O6NyPkzVVmGvFqYooP1TqzKmPnlDv3', '2018-07-03 23:24:17', '2018-07-03 23:24:17'),
(783, 1, 'G6fj3U2u4dzz5ORv2cGEeRSbZsfe1UXW', '2018-07-03 23:24:17', '2018-07-03 23:24:17'),
(784, 1, 'LlUEYTQowCbaH0z5nH0pAiU0XutktxQE', '2018-07-03 23:24:24', '2018-07-03 23:24:24'),
(785, 1, '4tqGPaZhYTtmd02lNrqGHi9l4xNIEsg8', '2018-07-03 23:24:26', '2018-07-03 23:24:26'),
(786, 1, 'bgjRiYUZrATe04bmQPleZQUD7MRCzBAk', '2018-07-03 23:24:26', '2018-07-03 23:24:26'),
(787, 1, 'Pcm35oLJyZRY4UsMWHpdY6pdGCdxuULC', '2018-07-03 23:24:26', '2018-07-03 23:24:26'),
(788, 1, 'Tcuazz9KRGh4ns83uWXbeqrQbBCyNrnm', '2018-07-03 23:24:30', '2018-07-03 23:24:30'),
(789, 1, 'xhI2zuvXjBksfxkcqLnLTvMjdcVqpa9U', '2018-07-03 23:24:32', '2018-07-03 23:24:32'),
(790, 1, 'nWQQOa9L7WhdY2JDcVCgcohMO2UJcKpk', '2018-07-03 23:24:32', '2018-07-03 23:24:32'),
(791, 1, '5QDsmpkHh06uAqcK8jDyG72dMnBoCV4T', '2018-07-03 23:24:32', '2018-07-03 23:24:32'),
(792, 1, 'DsddirLLndMVaUU2a6x9qqQk3LVQekr8', '2018-07-03 23:24:36', '2018-07-03 23:24:36'),
(793, 1, 'LmoRcdCswFTqBYClbsair9HtACVV8Dh0', '2018-07-03 23:24:36', '2018-07-03 23:24:36'),
(794, 1, 'u0z9Nc1yE2C2laGFqM79t1ZrxsUFkQtE', '2018-07-03 23:24:36', '2018-07-03 23:24:36'),
(795, 1, '9XKhuHH8sSvJGk38OUOhVfhF3wkrCZGs', '2018-07-03 23:24:40', '2018-07-03 23:24:40'),
(796, 1, 'Cy0Xcr4WHuyS3F0Yhk0VMH8tJEVkYgD1', '2018-07-03 23:24:43', '2018-07-03 23:24:43'),
(797, 1, 'PMdERaDeCudZiKS0RQQh4EsNz3v87Bg3', '2018-07-03 23:24:43', '2018-07-03 23:24:43'),
(798, 1, 'TpMXrMgkLoedrWvQo3CQlAwHNZ2NGitV', '2018-07-03 23:24:43', '2018-07-03 23:24:43'),
(799, 1, 'xpvPRMwCBT9iQ9Dhaz2L0SDclvQirbFj', '2018-07-03 23:24:45', '2018-07-03 23:24:45'),
(800, 1, 'sylyw5X20ODVhRNGnISs2ZPu9oIH4HGE', '2018-07-03 23:24:49', '2018-07-03 23:24:49'),
(801, 1, 'layVEdpl3rQALM9pr6ygW1b0rPx4byn1', '2018-07-03 23:24:50', '2018-07-03 23:24:50'),
(802, 1, 'D5jvp6yJ7nnX8F6ScqtOLExszyKkl6Ya', '2018-07-03 23:25:57', '2018-07-03 23:25:57'),
(803, 1, 'sMXY3fg6FAJOR1JKZB6puHNUjx6xObDq', '2018-07-03 23:26:12', '2018-07-03 23:26:12'),
(804, 1, '7iGRrfGhJm2kHJiATWCPsoBr2dOvyPNX', '2018-07-03 23:27:32', '2018-07-03 23:27:32'),
(805, 1, 'SjGADkwcJjgoe73pvuCZMMwNP92whWuQ', '2018-07-03 23:27:34', '2018-07-03 23:27:34'),
(806, 1, '8shnasvyHH8WLrrkb43CItEyTnlwXzGX', '2018-07-03 23:27:34', '2018-07-03 23:27:34'),
(807, 1, '5k3x8f6MKePx6eBfWZEk4qd54lRNuLz5', '2018-07-03 23:27:34', '2018-07-03 23:27:34'),
(808, 1, 'xjSvhcQgwZcy01EmnUiMBVwHD1HLRHTK', '2018-07-03 23:27:46', '2018-07-03 23:27:46'),
(809, 1, 't0cblKWPTjSvwj8pU8bcH9QQx1SEVn4S', '2018-07-03 23:27:48', '2018-07-03 23:27:48'),
(810, 1, 'McoWe4qhh05MhTDSghB6GJqez6fuDhIr', '2018-07-03 23:27:50', '2018-07-03 23:27:50'),
(811, 1, '9ICd33ZVOzqxPHXW3yxE2KPlQvlTV2vC', '2018-07-03 23:27:50', '2018-07-03 23:27:50'),
(812, 1, 'iRpZNBqWGSJ6CiBJEbXJkTRBY7e4TQRF', '2018-07-03 23:27:50', '2018-07-03 23:27:50'),
(813, 1, '6VVGKcew8E81VX7QM0ZOqq5MHH6Ehkez', '2018-07-03 23:28:10', '2018-07-03 23:28:10'),
(814, 1, 'W1O9FjF8EqsW1LWGvLX4yFf5WBtJN143', '2018-07-03 23:28:10', '2018-07-03 23:28:10'),
(815, 1, 'IACUFdfma1m0dSSWKkkOK9lDlgm9MG5o', '2018-07-03 23:28:10', '2018-07-03 23:28:10'),
(816, 1, '6XejBQZblCgDj4aJjcrKeVSJqA4oE0o5', '2018-07-03 23:34:42', '2018-07-03 23:34:42'),
(817, 1, 'Qm7g0YQPhCJmx6E390uKw23OnKDVNczl', '2018-07-03 23:34:44', '2018-07-03 23:34:44'),
(818, 1, 'duI9iOV6gW5QhdUYwo7nfZkDtQh4Xbv9', '2018-07-03 23:37:43', '2018-07-03 23:37:43'),
(820, 1, 'ArKBPJHo7r60OznTHHHhyb19v05QRV4g', '2018-07-04 19:21:39', '2018-07-04 19:21:39'),
(821, 1, '8SdU6S6ojpDTIApQMk0RiLgtKdtZcuZF', '2018-07-04 19:21:41', '2018-07-04 19:21:41'),
(822, 1, 'MOY4uvylqS8u6vJgBtz4419mNF7C4tZp', '2018-07-04 19:21:55', '2018-07-04 19:21:55'),
(823, 1, 'yYztgMQDjVBpvcnrAi8yvfEvMRPRpJMe', '2018-07-04 19:22:29', '2018-07-04 19:22:29'),
(824, 1, '817NMsrjdDTK3OB2BlafGGmA5GpGVDW4', '2018-07-04 19:22:45', '2018-07-04 19:22:45'),
(825, 1, 'jjZJql4NB5X7PPr8D3bjGMNmPcSQDeX4', '2018-07-04 19:22:51', '2018-07-04 19:22:51'),
(826, 1, 'pOwLNpc9g1oGulT4RCPB10191K8TAcnP', '2018-07-04 19:22:52', '2018-07-04 19:22:52'),
(827, 1, 'imSLVLRW5WLtLeOob3Ge5cEkegHw8kCE', '2018-07-04 19:34:43', '2018-07-04 19:34:43'),
(828, 1, 'tX1zsu13GVWvA78Gt9It730xYqlQfuUm', '2018-07-04 19:34:46', '2018-07-04 19:34:46'),
(829, 1, '6b8IZGzFhfIium9EALwvsnSNr4Po9jTR', '2018-07-04 19:35:04', '2018-07-04 19:35:04'),
(830, 1, '0NcFDGxsRsqno2BeJnM2FjreBAXmIWwn', '2018-07-04 19:35:07', '2018-07-04 19:35:07'),
(831, 1, 'qm55ZsxrrendxhcRIQ9F5U9mdUkjLH9S', '2018-07-04 19:35:46', '2018-07-04 19:35:46'),
(832, 1, 'zJIgx9dZKYp0KOhtWydXH965szNHhM5z', '2018-07-04 19:35:52', '2018-07-04 19:35:52'),
(833, 1, 'dU9ifIHXgFwefPCSgjuWxZ02w22WXJL1', '2018-07-04 19:36:13', '2018-07-04 19:36:13'),
(834, 1, 'oUUWwNl4QDlyKEfdth39KJMI9KU9fpKr', '2018-07-04 19:36:17', '2018-07-04 19:36:17'),
(835, 1, '98cORobG3JWwcYhEs8WyNPq1RyNeQzXu', '2018-07-04 19:36:45', '2018-07-04 19:36:45'),
(836, 1, 'jcysTFF4bP24VE6btOAoj6aHILkTDXiC', '2018-07-04 19:51:01', '2018-07-04 19:51:01'),
(837, 1, 'sPrI28EImtm6q9H0NcZeMGYYq3M6ujux', '2018-07-04 19:51:07', '2018-07-04 19:51:07'),
(838, 1, 'APa81MgYOJTFMBoEfX0Q5L3fQFZpFPtQ', '2018-07-04 19:51:27', '2018-07-04 19:51:27'),
(839, 1, 'Uv6xFxqLTZ0dEIge00cvXZEvfksVtkNz', '2018-07-04 19:51:27', '2018-07-04 19:51:27'),
(840, 1, 'l4MNzFiOrwH17TsMlhoqL0fRjqq8b0EP', '2018-07-04 19:51:27', '2018-07-04 19:51:27'),
(841, 1, 'pz9WGYFiwqeanhIZ04hCg9nJzmagvagz', '2018-07-04 19:51:41', '2018-07-04 19:51:41'),
(842, 1, 'CeR74kroeKhgmSJRxutLMFR7JUKIsp3N', '2018-07-04 19:51:44', '2018-07-04 19:51:44'),
(843, 1, 'vAl5K8tKcU7ILhOskY2N3swgSBQ382AH', '2018-07-04 19:51:44', '2018-07-04 19:51:44'),
(844, 1, '4i58foeSHy5xeflsflw4aTuVS7Ic98dY', '2018-07-04 19:51:54', '2018-07-04 19:51:54'),
(845, 1, 'zrNNRspG6gtD1QrY3CnSHG7jQ4R4dDkN', '2018-07-04 19:52:07', '2018-07-04 19:52:07'),
(846, 1, 'es5OsUGs0mEtIAwRuoTquStLxsIWle6U', '2018-07-04 19:52:15', '2018-07-04 19:52:15'),
(847, 1, 'dju5LMg239JCTIwZuQAhCKH7w6Uc7ucG', '2018-07-04 19:52:57', '2018-07-04 19:52:57'),
(848, 1, 'DVaTZGwnBWsdosld0bSC8fjAKLavwSym', '2018-07-04 19:53:01', '2018-07-04 19:53:01'),
(849, 1, 'YuauO1PcUYs3oflt62pJheWZo5SuP7Dj', '2018-07-04 19:53:01', '2018-07-04 19:53:01'),
(850, 1, 'Rowjj9JzYA7qXgF6RdmveGyDcVv0yFRr', '2018-07-04 19:53:01', '2018-07-04 19:53:01'),
(851, 1, '3LNJLgJmqgILFFPHdEKuwDfXhlwYWfOn', '2018-07-04 19:53:31', '2018-07-04 19:53:31'),
(852, 1, 'sfIEfV12mIpsR1BJXmy9mpAbGVErc2nk', '2018-07-04 19:53:43', '2018-07-04 19:53:43'),
(853, 1, 'u28ImBMn805h7wSxFID1zO6lXkqTK1xh', '2018-07-04 19:53:48', '2018-07-04 19:53:48'),
(854, 1, '3SFX63YySgNqjaDiNsod5r9b3QJSDcSI', '2018-07-04 19:55:52', '2018-07-04 19:55:52'),
(855, 1, 'nXRurJUF1YEtatEQg9R3ZX3GDbYzKFcM', '2018-07-04 19:56:38', '2018-07-04 19:56:38'),
(856, 1, '5m6TpYqELRSaWs8A2xUWIOSmBjuMvQQ7', '2018-07-04 19:57:11', '2018-07-04 19:57:11'),
(857, 1, 'X3cmIfgPT1mMAeiOAONFCeY7UGZtzHCR', '2018-07-04 19:58:55', '2018-07-04 19:58:55'),
(858, 1, 'ci86fdBGKxvoLmPBuUPPsfeaH7RJETHf', '2018-07-04 19:59:45', '2018-07-04 19:59:45'),
(859, 1, 'uHlcICQLPlLuj0Xhj1G61ASvISZStYiy', '2018-07-04 20:01:13', '2018-07-04 20:01:13'),
(860, 1, 'C09qH2I8CsnXL14rVzgW4G7isMLrBmtu', '2018-07-04 20:02:32', '2018-07-04 20:02:32'),
(861, 1, 'nMzHCi6DPxNiYL6pwZMzIskDiQXB3o9T', '2018-07-04 20:04:05', '2018-07-04 20:04:05'),
(862, 1, 'ZmlNGVmkuWhnQPS1EEhvdwSsZlyOR4mb', '2018-07-04 20:04:07', '2018-07-04 20:04:07'),
(863, 1, 'tMEuZlJ7yiVNf81xU3EVs6zoQRetjNsh', '2018-07-04 20:04:07', '2018-07-04 20:04:07'),
(864, 1, 'BmSBFdc440pbRFuc9Pro1sP5nMnkJOpI', '2018-07-04 20:04:07', '2018-07-04 20:04:07'),
(865, 1, 'yCxjqQPe9oWSgzSyuKZZWJF9J6BM21dU', '2018-07-04 20:07:33', '2018-07-04 20:07:33'),
(866, 1, '4zx1Y7N1zpBH3llnDXfLce06bI3hMhWH', '2018-07-04 20:07:37', '2018-07-04 20:07:37'),
(867, 1, 'FOsNEEH27uyoC3D4E7Um2jAzeAA9KGUk', '2018-07-04 20:10:31', '2018-07-04 20:10:31'),
(868, 1, 'SsYKn0hOWI69i2JsiiSfRUD8qLsrcHnm', '2018-07-04 20:11:05', '2018-07-04 20:11:05'),
(869, 1, 'OMLFhGGJea0hT2v1GVVVqbTTDak9s3QM', '2018-07-04 20:14:10', '2018-07-04 20:14:10'),
(870, 1, 'wQbmsDJPlvc61FXtaftxnlw6Jc383qJd', '2018-07-04 20:14:26', '2018-07-04 20:14:26'),
(871, 1, 'sxFEOpnRPNzPyh0wKzLB7fnsiQqLRj2O', '2018-07-04 20:14:28', '2018-07-04 20:14:28'),
(872, 1, '6wcrKiZSyzsJ0goIXbT8ESiOAUZfXAOA', '2018-07-04 20:17:58', '2018-07-04 20:17:58'),
(873, 1, 'YECZXR6caElmIuxMRgKl4XfkdaUNS2RZ', '2018-07-04 20:18:07', '2018-07-04 20:18:07'),
(874, 1, 'ku1bE5z7uP95pSgcFhaDHvkifXWCtAoc', '2018-07-04 20:20:31', '2018-07-04 20:20:31'),
(875, 1, 'HJDlJekGVs9GHB65UzUyhd4Y2UIDnTbV', '2018-07-04 20:24:43', '2018-07-04 20:24:43'),
(876, 1, '0nxJDgB3hCP8jG8Fxc9CF52NCLeVj3Dk', '2018-07-04 20:25:22', '2018-07-04 20:25:22'),
(877, 1, 'bJGt1YlUPRJovFRd3zdRYeVJrfKXTe5c', '2018-07-04 20:25:23', '2018-07-04 20:25:23'),
(878, 1, '9AmlymJBKIhrXOjgum2hFk9dSDR2O9de', '2018-07-04 20:26:34', '2018-07-04 20:26:34'),
(879, 1, 'VfPwu12UNMaUULxqv476nbqZnzlL4tGi', '2018-07-04 20:27:24', '2018-07-04 20:27:24'),
(880, 1, 'ZJzWmUO31IN7v902lBlQxJb3Rd8toBdl', '2018-07-04 20:28:03', '2018-07-04 20:28:03'),
(881, 1, 'zLKgYcpACkoHjArlng6WC4eZy9TV8ncq', '2018-07-04 20:28:15', '2018-07-04 20:28:15'),
(882, 1, '3xP6qaRgKNpW7ozbpmxWVA95Mn8Pxaiy', '2018-07-04 20:29:32', '2018-07-04 20:29:32'),
(883, 1, 'KigLepzSVEqmZLptrA2HSGAqVBl1f6v6', '2018-07-04 20:30:27', '2018-07-04 20:30:27'),
(884, 1, 'rMKURu0SSA9VlT1GCSIJAZLv277rYtg3', '2018-07-04 20:30:51', '2018-07-04 20:30:51'),
(885, 1, '9vG7aALsRUK88suEeBjy392z6Lmxjk48', '2018-07-04 20:32:04', '2018-07-04 20:32:04'),
(886, 1, 'hRyuxgGi5p4IAVJ6WvsPuytiHP8WnQY3', '2018-07-04 20:33:24', '2018-07-04 20:33:24'),
(887, 1, 'lSc35GLg2USpcyHUBjlrprfSFd4HcMaz', '2018-07-04 20:34:03', '2018-07-04 20:34:03'),
(888, 1, 'Vnw5xLdMiwME4mckBvky09hJ2KRzGGwe', '2018-07-04 20:35:08', '2018-07-04 20:35:08'),
(889, 1, '3mcWEy7TuAL5PeXwCKqZukDjYpnKGVjc', '2018-07-04 20:35:38', '2018-07-04 20:35:38'),
(890, 1, 'e3xNa0SxcblgqqgkqcVbWPaJVsvGPsjo', '2018-07-04 20:36:40', '2018-07-04 20:36:40'),
(891, 1, 'GghRPpIdOcloAQ5Td4cBKJYh5U8Vi7fh', '2018-07-04 20:36:59', '2018-07-04 20:36:59'),
(892, 1, 'q1QzArgrvA5pGrviQVWnxJILJKZcfUgx', '2018-07-04 20:38:58', '2018-07-04 20:38:58'),
(893, 1, 'kMQEoKFHu6HnwhUzkZL3e1P2rnD2wCrF', '2018-07-05 00:57:08', '2018-07-05 00:57:08'),
(894, 1, 'sc60Bjmtc0D9p95ILljmsGXP4yqxgDb4', '2018-07-05 00:57:16', '2018-07-05 00:57:16'),
(895, 1, 'NV4yCTj5OKKAdSGcemsRwJYgrPpDice4', '2018-07-05 00:58:05', '2018-07-05 00:58:05'),
(896, 1, 'bFiQ0IQZbQ9a7PH2gcOib8XF7yqnkfCu', '2018-07-05 00:58:07', '2018-07-05 00:58:07'),
(897, 1, 'a8MFzVB44kXJcZcwErJmZyqseOl462T0', '2018-07-05 00:58:07', '2018-07-05 00:58:07'),
(898, 1, 'HWTKa18A0fzi7CgxU01HKnSD7ilJmAqj', '2018-07-05 00:58:07', '2018-07-05 00:58:07'),
(899, 1, 'ynMaJDJEn0fgEAqfHMXDJhos9nwxTZA8', '2018-07-05 00:58:14', '2018-07-05 00:58:14'),
(900, 1, 'NHL54qhpQeinp2YVWcFmYnOSjvgUUvHy', '2018-07-05 00:58:19', '2018-07-05 00:58:19'),
(901, 1, 'FRIRfN9iY1o2vAVwKNa0vQLkapvmgMwk', '2018-07-05 00:58:41', '2018-07-05 00:58:41'),
(902, 1, 'wEq0UR8Ti7reKMhY73cj5BFbs4sgbF52', '2018-07-05 00:58:42', '2018-07-05 00:58:42'),
(903, 1, 'g4kYpmA0otAiQyzegcaFhPDB3fdEYcgu', '2018-07-05 00:58:44', '2018-07-05 00:58:44'),
(904, 1, 'FVAqv3rnxDsIgOqo8mnYo23djdW0Hv0M', '2018-07-05 00:58:44', '2018-07-05 00:58:44'),
(905, 1, '8bGzGPcKrDp4hi6c0UIjMVicGYTGYwub', '2018-07-05 00:58:44', '2018-07-05 00:58:44'),
(906, 1, 'mOBicg6iS3Z68W43kVWMhWhMJWyGeHMH', '2018-07-05 00:59:15', '2018-07-05 00:59:15'),
(907, 1, 'm4Flq8t4BNt1l91J1nc5w4NTv9AvtA6I', '2018-07-05 00:59:18', '2018-07-05 00:59:18'),
(908, 1, 'OWDjjiLxpoXip5IIop2Cw9urLbNE3Wt4', '2018-07-05 00:59:18', '2018-07-05 00:59:18'),
(909, 1, 'kaioFCdTPHmlTkAw8w1YHWVrSFOGIiDl', '2018-07-05 00:59:18', '2018-07-05 00:59:18'),
(910, 1, '0Hi6HYroDfTUa0mNUm46ejAiTl797GZX', '2018-07-05 00:59:21', '2018-07-05 00:59:21'),
(911, 1, 'wxVCQiXl0xWMpN6lZtVSvSxJF2c7IQTN', '2018-07-05 00:59:23', '2018-07-05 00:59:23'),
(912, 1, 'TExOciIIs1EI30qjHUYUdKuplcnmVLgn', '2018-07-05 00:59:25', '2018-07-05 00:59:25'),
(913, 1, '02chXAFId99FHDDNqDluRE9t7yhwgG6h', '2018-07-05 00:59:26', '2018-07-05 00:59:26'),
(914, 1, 'tCnWSlEtj7dnnNvnJ038o2CPEeGrEizP', '2018-07-05 00:59:28', '2018-07-05 00:59:28'),
(915, 1, 'o6GnwcnbZ3IMWxDMgeYNT3aDvqRyYipn', '2018-07-05 00:59:31', '2018-07-05 00:59:31'),
(916, 1, 'Cc4GQNxhxOvauktHgAYiQdTcSJZ29gOV', '2018-07-05 00:59:32', '2018-07-05 00:59:32'),
(917, 1, 'hasZ0tUGZYIrOqXk12YSG9vCTCrwlIxO', '2018-07-05 00:59:38', '2018-07-05 00:59:38'),
(918, 1, 'evQk12fAAQqtWX5Gz3jDbiPQl9AXhSOd', '2018-07-05 01:00:46', '2018-07-05 01:00:46'),
(919, 1, 's9b102XMpFGcN9yVHT9Jnochfj48pTT5', '2018-07-05 01:00:48', '2018-07-05 01:00:48'),
(920, 1, 'YIwYxGYcmycvzoMGkgKQTriNVJljYaZ3', '2018-07-05 01:00:48', '2018-07-05 01:00:48'),
(921, 1, 'b8Kx4FgCRVld9g61bjDgheE4vWMvvxhJ', '2018-07-05 01:00:51', '2018-07-05 01:00:51'),
(922, 1, 'qr6FutET7XqmbmQxOJuIhuOzVtwVchi5', '2018-07-05 01:00:52', '2018-07-05 01:00:52'),
(923, 1, 'Ltx4wtVdUggq6CbgPNZvYduHzKFzvFT8', '2018-07-05 01:00:52', '2018-07-05 01:00:52'),
(924, 1, 'eBmcoTYMbRXAvv7rp66mbPKUhSqEmizM', '2018-07-05 01:00:52', '2018-07-05 01:00:52'),
(925, 1, 'lQSY4gOdVVsqFcnxyS9IoCcoo8fWf7Wm', '2018-07-05 01:00:54', '2018-07-05 01:00:54'),
(926, 1, '7vF3UjpCRNsQZokxHeqXqJuaLGkMALze', '2018-07-05 01:00:59', '2018-07-05 01:00:59'),
(927, 1, 'Zj9e3LMX3swIzbWztGUdQZ9OHXN9dWJp', '2018-07-05 01:06:59', '2018-07-05 01:06:59'),
(928, 1, 'EioKBPgiMA6wHWZDoGAfmT9teJ7cEI68', '2018-07-05 01:23:36', '2018-07-05 01:23:36'),
(929, 1, 'YCjXX7nikNbpKhLE6197jgUhK1k6YRCZ', '2018-07-05 01:24:14', '2018-07-05 01:24:14'),
(930, 1, 'Of5Qdry1Fq6Vz7xw1dzNprUSCgQtrmMV', '2018-07-05 01:25:01', '2018-07-05 01:25:01'),
(931, 1, 'gch8nDyYp5rdactZ2ap2btBbDreKpc8j', '2018-07-05 01:25:15', '2018-07-05 01:25:15'),
(932, 1, 'HkaqCIpIrlrLcMdk99Br2uu4Er1fePWJ', '2018-07-05 01:25:52', '2018-07-05 01:25:52'),
(933, 1, 'lqgsqDR4YzspxmZboC3hI8PjRZViR8A2', '2018-07-05 01:26:12', '2018-07-05 01:26:12'),
(934, 1, 'VLYxFmePz43zeb9AqCbRxzHiErEN6nFA', '2018-07-05 01:26:53', '2018-07-05 01:26:53'),
(935, 1, 'DoWasN5BFMZQ5eRN8DQWluUCpZrWdQ2z', '2018-07-05 01:27:18', '2018-07-05 01:27:18'),
(936, 1, '4tbQWMEJW5gRJ32j0zLIVgfGvGrRn3R8', '2018-07-05 01:27:55', '2018-07-05 01:27:55'),
(937, 1, 'pvtrgnUeBj65a3Jp0Ic4jubOHq5WifYf', '2018-07-05 01:29:43', '2018-07-05 01:29:43'),
(938, 1, 'j6erbH1pnBo2znrKBLlXpEDkRJmMSZLV', '2018-07-05 01:29:46', '2018-07-05 01:29:46'),
(939, 1, 'wjXxPIdszkzjn40ru7F10g0R5w4CgZwV', '2018-07-05 01:30:03', '2018-07-05 01:30:03'),
(940, 1, 'uL5wgloXbIiUVGLy2H9uM0Wbj2unrC1R', '2018-07-05 01:30:38', '2018-07-05 01:30:38'),
(941, 1, 'SLhTE0euUctPEWlAOGqFy2O4RTMWaXMV', '2018-07-05 01:30:56', '2018-07-05 01:30:56'),
(942, 1, 'Qo4RghBdMiNqjJc8iIsGkCswaJzs4XiZ', '2018-07-05 01:36:40', '2018-07-05 01:36:40'),
(943, 1, '1EGApli93cnjBCyQvOy4R7plSA7eetSr', '2018-07-05 01:36:59', '2018-07-05 01:36:59'),
(944, 1, 'wC4gxl7Swi4cu7oBXmUJ5BGTq0m25s1j', '2018-07-05 01:37:46', '2018-07-05 01:37:46'),
(945, 1, 'uJaOv5D6jlXhreatll7XQVb0lHmW1uVW', '2018-07-05 01:37:52', '2018-07-05 01:37:52'),
(946, 1, 'z5HPOLekDvsPsmoBNs4va6efbRRD5mEa', '2018-07-05 01:39:37', '2018-07-05 01:39:37'),
(947, 1, '5faIRJ0KFuRPIzvgSNfeUbbPSjVmr6uv', '2018-07-05 01:40:09', '2018-07-05 01:40:09'),
(948, 1, 'O1xQgrYQNa1SV70f3AcfKe6AivyiSKOD', '2018-07-05 01:40:15', '2018-07-05 01:40:15'),
(949, 1, '4ZcACSQSyJEfZEcmNFfllo0PgwmqqFta', '2018-07-05 01:40:26', '2018-07-05 01:40:26'),
(950, 1, '0gUhOYE77DSCHrN6EA9bX1lYerKS4yrY', '2018-07-05 01:40:39', '2018-07-05 01:40:39');

-- --------------------------------------------------------

--
-- Table structure for table `profile__profiles`
--

CREATE TABLE `profile__profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `tel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profile__profile_translations`
--

CREATE TABLE `profile__profile_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `tel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reminders`
--

INSERT INTO `reminders` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 5, '6lHt7DbBTQZhOuDdAz2z9GVUZVjJBzkp', 1, '2018-07-01 20:52:03', '2018-07-01 20:51:43', '2018-07-01 20:52:03'),
(2, 5, '5ObZYmnGcH7pHOTBR8P12uYGiZkfAGY0', 1, '2018-07-03 20:33:17', '2018-07-03 20:32:56', '2018-07-03 20:33:17');

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `revisionable_type`, `revisionable_id`, `user_id`, `key`, `old_value`, `new_value`, `created_at`, `updated_at`) VALUES
(1, 'Modules\\Translation\\Entities\\TranslationTranslation', 1, 1, 'created_at', NULL, NULL, '2018-07-03 21:21:11', '2018-07-03 21:21:11'),
(2, 'Modules\\Translation\\Entities\\TranslationTranslation', 2, 1, 'created_at', NULL, NULL, '2018-07-03 21:21:19', '2018-07-03 21:21:19'),
(3, 'Modules\\Translation\\Entities\\TranslationTranslation', 3, 1, 'created_at', NULL, NULL, '2018-07-03 21:27:12', '2018-07-03 21:27:12'),
(4, 'Modules\\Translation\\Entities\\TranslationTranslation', 4, 1, 'created_at', NULL, NULL, '2018-07-03 21:30:07', '2018-07-03 21:30:07'),
(5, 'Modules\\Translation\\Entities\\TranslationTranslation', 4, 1, 'value', 'Se conecter', 'Se connecter', '2018-07-03 21:30:15', '2018-07-03 21:30:15'),
(6, 'Modules\\Translation\\Entities\\TranslationTranslation', 5, 1, 'created_at', NULL, NULL, '2018-07-03 21:55:54', '2018-07-03 21:55:54'),
(7, 'Modules\\Translation\\Entities\\TranslationTranslation', 6, 1, 'created_at', NULL, NULL, '2018-07-03 21:56:05', '2018-07-03 21:56:05');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', '{\"core.sidebar.group\":true,\"dashboard.index\":true,\"dashboard.update\":true,\"dashboard.reset\":true,\"workshop.sidebar.group\":true,\"workshop.modules.index\":true,\"workshop.modules.show\":true,\"workshop.modules.update\":true,\"workshop.modules.disable\":true,\"workshop.modules.enable\":true,\"workshop.modules.publish\":true,\"workshop.themes.index\":true,\"workshop.themes.show\":true,\"workshop.themes.publish\":true,\"user.roles.index\":true,\"user.roles.create\":true,\"user.roles.edit\":true,\"user.roles.destroy\":true,\"user.users.index\":true,\"user.users.create\":true,\"user.users.edit\":true,\"user.users.destroy\":true,\"account.api-keys.index\":true,\"account.api-keys.create\":true,\"account.api-keys.destroy\":true,\"menu.menus.index\":true,\"menu.menus.create\":true,\"menu.menus.edit\":true,\"menu.menus.destroy\":true,\"menu.menuitems.index\":true,\"menu.menuitems.create\":true,\"menu.menuitems.edit\":true,\"menu.menuitems.destroy\":true,\"media.medias.index\":true,\"media.medias.create\":true,\"media.medias.edit\":true,\"media.medias.destroy\":true,\"media.folders.index\":true,\"media.folders.create\":true,\"media.folders.edit\":true,\"media.folders.destroy\":true,\"setting.settings.index\":true,\"setting.settings.edit\":true,\"page.pages.index\":true,\"page.pages.create\":true,\"page.pages.edit\":true,\"page.pages.destroy\":true,\"translation.translations.index\":true,\"translation.translations.edit\":true,\"translation.translations.export\":true,\"translation.translations.import\":true,\"tag.tags.index\":true,\"tag.tags.create\":true,\"tag.tags.edit\":true,\"tag.tags.destroy\":true}', '2018-07-01 19:54:49', '2018-07-01 19:54:49'),
(2, 'user', 'User', NULL, '2018-07-01 19:54:49', '2018-07-01 19:54:49');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-07-01 19:55:17', '2018-07-01 19:55:17'),
(2, 2, '2018-07-01 20:23:20', '2018-07-01 20:23:20'),
(3, 2, '2018-07-01 20:25:59', '2018-07-01 20:25:59'),
(4, 2, '2018-07-01 20:29:22', '2018-07-01 20:29:22'),
(5, 1, '2018-07-01 20:48:08', '2018-07-01 20:48:08'),
(5, 2, '2018-07-01 20:46:14', '2018-07-01 20:46:14');

-- --------------------------------------------------------

--
-- Table structure for table `setting__settings`
--

CREATE TABLE `setting__settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plainValue` text COLLATE utf8mb4_unicode_ci,
  `isTranslatable` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting__settings`
--

INSERT INTO `setting__settings` (`id`, `name`, `plainValue`, `isTranslatable`, `created_at`, `updated_at`) VALUES
(1, 'core::template', 'Flatly', 0, '2018-07-01 19:55:51', '2018-07-01 19:55:51'),
(2, 'core::locales', '[\"en\",\"fr\"]', 0, '2018-07-01 19:55:51', '2018-07-02 00:33:02'),
(3, 'core::site-name', NULL, 1, '2018-07-01 20:10:00', '2018-07-01 20:10:00'),
(4, 'core::site-name-mini', NULL, 1, '2018-07-01 20:10:01', '2018-07-01 20:10:01'),
(5, 'core::site-description', NULL, 1, '2018-07-01 20:10:01', '2018-07-01 20:10:01'),
(6, 'core::analytics-script', NULL, 0, '2018-07-01 20:10:01', '2018-07-01 20:10:01');

-- --------------------------------------------------------

--
-- Table structure for table `setting__setting_translations`
--

CREATE TABLE `setting__setting_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `setting_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting__setting_translations`
--

INSERT INTO `setting__setting_translations` (`id`, `setting_id`, `locale`, `value`, `description`) VALUES
(1, 3, 'en', NULL, NULL),
(2, 4, 'en', NULL, NULL),
(3, 5, 'en', NULL, NULL),
(4, 3, 'fr', NULL, NULL),
(5, 4, 'fr', NULL, NULL),
(6, 5, 'fr', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tag__tagged`
--

CREATE TABLE `tag__tagged` (
  `id` int(10) UNSIGNED NOT NULL,
  `taggable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tag__tags`
--

CREATE TABLE `tag__tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tag__tag_translations`
--

CREATE TABLE `tag__tag_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
(1, NULL, 'global', NULL, '2018-07-01 20:07:37', '2018-07-01 20:07:37'),
(2, NULL, 'ip', '127.0.0.1', '2018-07-01 20:07:37', '2018-07-01 20:07:37'),
(3, NULL, 'global', NULL, '2018-07-03 19:46:07', '2018-07-03 19:46:07'),
(4, NULL, 'ip', '127.0.0.1', '2018-07-03 19:46:07', '2018-07-03 19:46:07'),
(5, NULL, 'global', NULL, '2018-07-03 19:46:12', '2018-07-03 19:46:12'),
(6, NULL, 'ip', '127.0.0.1', '2018-07-03 19:46:12', '2018-07-03 19:46:12'),
(7, NULL, 'global', NULL, '2018-07-03 19:46:33', '2018-07-03 19:46:33'),
(8, NULL, 'ip', '127.0.0.1', '2018-07-03 19:46:33', '2018-07-03 19:46:33'),
(9, NULL, 'global', NULL, '2018-07-03 19:46:43', '2018-07-03 19:46:43'),
(10, NULL, 'ip', '127.0.0.1', '2018-07-03 19:46:43', '2018-07-03 19:46:43'),
(11, NULL, 'global', NULL, '2018-07-03 19:48:33', '2018-07-03 19:48:33'),
(12, NULL, 'ip', '127.0.0.1', '2018-07-03 19:48:33', '2018-07-03 19:48:33'),
(13, NULL, 'global', NULL, '2018-07-03 19:53:25', '2018-07-03 19:53:25'),
(14, NULL, 'ip', '127.0.0.1', '2018-07-03 19:53:25', '2018-07-03 19:53:25'),
(15, NULL, 'global', NULL, '2018-07-03 20:01:24', '2018-07-03 20:01:24'),
(16, NULL, 'ip', '127.0.0.1', '2018-07-03 20:01:24', '2018-07-03 20:01:24'),
(17, NULL, 'global', NULL, '2018-07-03 20:01:43', '2018-07-03 20:01:43'),
(18, NULL, 'ip', '127.0.0.1', '2018-07-03 20:01:43', '2018-07-03 20:01:43'),
(19, NULL, 'global', NULL, '2018-07-03 20:02:20', '2018-07-03 20:02:20'),
(20, NULL, 'ip', '127.0.0.1', '2018-07-03 20:02:20', '2018-07-03 20:02:20'),
(21, NULL, 'global', NULL, '2018-07-03 20:05:31', '2018-07-03 20:05:31'),
(22, NULL, 'ip', '127.0.0.1', '2018-07-03 20:05:31', '2018-07-03 20:05:31'),
(23, NULL, 'global', NULL, '2018-07-03 20:08:42', '2018-07-03 20:08:42'),
(24, NULL, 'ip', '127.0.0.1', '2018-07-03 20:08:42', '2018-07-03 20:08:42'),
(25, NULL, 'global', NULL, '2018-07-03 20:08:44', '2018-07-03 20:08:44'),
(26, NULL, 'ip', '127.0.0.1', '2018-07-03 20:08:44', '2018-07-03 20:08:44'),
(27, NULL, 'global', NULL, '2018-07-03 20:16:45', '2018-07-03 20:16:45'),
(28, NULL, 'ip', '127.0.0.1', '2018-07-03 20:16:45', '2018-07-03 20:16:45'),
(29, NULL, 'global', NULL, '2018-07-03 20:17:37', '2018-07-03 20:17:37'),
(30, NULL, 'ip', '127.0.0.1', '2018-07-03 20:17:37', '2018-07-03 20:17:37'),
(31, NULL, 'global', NULL, '2018-07-03 20:18:51', '2018-07-03 20:18:51'),
(32, NULL, 'ip', '127.0.0.1', '2018-07-03 20:18:52', '2018-07-03 20:18:52'),
(33, NULL, 'global', NULL, '2018-07-03 20:18:52', '2018-07-03 20:18:52'),
(34, NULL, 'ip', '127.0.0.1', '2018-07-03 20:18:52', '2018-07-03 20:18:52'),
(35, NULL, 'global', NULL, '2018-07-03 20:25:58', '2018-07-03 20:25:58'),
(36, NULL, 'ip', '127.0.0.1', '2018-07-03 20:25:58', '2018-07-03 20:25:58'),
(37, NULL, 'global', NULL, '2018-07-03 20:26:00', '2018-07-03 20:26:00'),
(38, NULL, 'ip', '127.0.0.1', '2018-07-03 20:26:00', '2018-07-03 20:26:00'),
(39, NULL, 'global', NULL, '2018-07-03 20:31:47', '2018-07-03 20:31:47'),
(40, NULL, 'ip', '127.0.0.1', '2018-07-03 20:31:48', '2018-07-03 20:31:48'),
(41, NULL, 'global', NULL, '2018-07-03 20:32:40', '2018-07-03 20:32:40'),
(42, NULL, 'ip', '127.0.0.1', '2018-07-03 20:32:40', '2018-07-03 20:32:40'),
(43, NULL, 'global', NULL, '2018-07-03 20:34:57', '2018-07-03 20:34:57'),
(44, NULL, 'ip', '127.0.0.1', '2018-07-03 20:34:58', '2018-07-03 20:34:58'),
(45, NULL, 'global', NULL, '2018-07-03 20:35:39', '2018-07-03 20:35:39'),
(46, NULL, 'ip', '127.0.0.1', '2018-07-03 20:35:39', '2018-07-03 20:35:39'),
(47, NULL, 'global', NULL, '2018-07-03 21:07:15', '2018-07-03 21:07:15'),
(48, NULL, 'ip', '127.0.0.1', '2018-07-03 21:07:15', '2018-07-03 21:07:15'),
(49, 5, 'user', NULL, '2018-07-03 21:07:15', '2018-07-03 21:07:15'),
(50, NULL, 'global', NULL, '2018-07-03 21:07:38', '2018-07-03 21:07:38'),
(51, NULL, 'ip', '127.0.0.1', '2018-07-03 21:07:38', '2018-07-03 21:07:38'),
(52, 5, 'user', NULL, '2018-07-03 21:07:38', '2018-07-03 21:07:38'),
(53, NULL, 'global', NULL, '2018-07-03 21:07:40', '2018-07-03 21:07:40'),
(54, NULL, 'ip', '127.0.0.1', '2018-07-03 21:07:40', '2018-07-03 21:07:40'),
(55, 5, 'user', NULL, '2018-07-03 21:07:40', '2018-07-03 21:07:40'),
(56, NULL, 'global', NULL, '2018-07-03 21:07:53', '2018-07-03 21:07:53'),
(57, NULL, 'ip', '127.0.0.1', '2018-07-03 21:07:53', '2018-07-03 21:07:53'),
(58, NULL, 'global', NULL, '2018-07-03 21:12:25', '2018-07-03 21:12:25'),
(59, NULL, 'ip', '127.0.0.1', '2018-07-03 21:12:25', '2018-07-03 21:12:25');

-- --------------------------------------------------------

--
-- Table structure for table `translation__translations`
--

CREATE TABLE `translation__translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translation__translations`
--

INSERT INTO `translation__translations` (`id`, `key`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user::auth.sign in welcome message', '2018-07-03 21:21:11', '2018-07-03 21:21:11', NULL),
(2, 'user::auth.forgot password', '2018-07-03 21:27:12', '2018-07-03 21:27:12', NULL),
(3, 'user::auth.login', '2018-07-03 21:30:07', '2018-07-03 21:30:07', NULL),
(4, 'user::auth.to reset password complete this form', '2018-07-03 21:55:54', '2018-07-03 21:55:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `translation__translation_translations`
--

CREATE TABLE `translation__translation_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `translation_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translation__translation_translations`
--

INSERT INTO `translation__translation_translations` (`id`, `value`, `translation_id`, `locale`) VALUES
(1, 'Conection', 1, 'en'),
(2, 'Conexion', 1, 'fr'),
(3, 'Mot de passe oublié', 2, 'fr'),
(4, 'Se connecter', 3, 'fr'),
(5, 'Merci d\'entrer votre login, un-email vous sera envoyé de resinitaliser votre mot de passe', 4, 'fr'),
(6, 'Please enter your login, an email will be sent to resynthesize your password', 4, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_code` int(11) DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ambassador` tinyint(1) DEFAULT '0',
  `club` tinyint(1) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  `type` enum('1','2') COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `newsletter` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `email`, `password`, `permissions`, `last_login`, `first_name`, `last_name`, `avatar`, `address`, `post_code`, `phone`, `ambassador`, `club`, `status`, `type`, `newsletter`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$Et90kggfZdrMAmk4y1/0A.YdtKmbo5YuaIkefq2.SR9qKYq5WdMyC', NULL, '2018-07-05 01:40:39', 'Vien', 'Le', NULL, NULL, NULL, NULL, 0, 0, 1, '1', NULL, '2018-07-01 19:55:17', '2018-07-05 01:40:39'),
(5, 'vienlc', 'lecongvien.dct@gmail.com', '$2y$10$xYowE0oPJuaytws4cQKgseRXGSoujj7yGjy.Plvh.w1qBQq31YR0m', '{\"core.sidebar.group\":true,\"dashboard.index\":true,\"dashboard.update\":true,\"dashboard.reset\":true,\"media.medias.index\":true,\"media.medias.create\":true,\"media.medias.edit\":true,\"media.medias.destroy\":true,\"media.folders.index\":true,\"media.folders.create\":true,\"media.folders.edit\":true,\"media.folders.destroy\":true,\"menu.menus.index\":true,\"menu.menus.create\":true,\"menu.menus.edit\":true,\"menu.menus.destroy\":true,\"menu.menuitems.index\":true,\"menu.menuitems.create\":true,\"menu.menuitems.edit\":true,\"menu.menuitems.destroy\":true,\"page.pages.index\":true,\"page.pages.create\":true,\"page.pages.edit\":true,\"page.pages.destroy\":true,\"setting.settings.index\":true,\"setting.settings.edit\":true,\"tag.tags.index\":true,\"tag.tags.create\":true,\"tag.tags.edit\":true,\"tag.tags.destroy\":true,\"translation.translations.index\":true,\"translation.translations.edit\":true,\"translation.translations.import\":true,\"translation.translations.export\":true,\"user.users.index\":true,\"user.users.create\":true,\"user.users.edit\":true,\"user.users.destroy\":true,\"user.roles.index\":true,\"user.roles.create\":true,\"user.roles.edit\":true,\"user.roles.destroy\":true,\"account.api-keys.index\":true,\"account.api-keys.create\":true,\"account.api-keys.destroy\":true,\"workshop.sidebar.group\":true,\"workshop.modules.index\":true,\"workshop.modules.show\":true,\"workshop.modules.update\":true,\"workshop.modules.disable\":true,\"workshop.modules.enable\":true,\"workshop.modules.publish\":true,\"workshop.themes.index\":true,\"workshop.themes.show\":true,\"workshop.themes.publish\":true}', '2018-07-03 20:42:06', 'Vien', 'Le', NULL, NULL, NULL, NULL, 0, 0, 0, '2', NULL, '2018-07-01 20:46:14', '2018-07-03 20:42:06');

-- --------------------------------------------------------

--
-- Table structure for table `user_tokens`
--

CREATE TABLE `user_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `access_token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_tokens`
--

INSERT INTO `user_tokens` (`id`, `user_id`, `access_token`, `created_at`, `updated_at`) VALUES
(1, 1, '1fd5ea9f-687a-467d-acc0-776520acb492', '2018-07-01 19:55:17', '2018-07-01 19:55:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard__widgets`
--
ALTER TABLE `dashboard__widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard__widgets_user_id_foreign` (`user_id`);

--
-- Indexes for table `media__files`
--
ALTER TABLE `media__files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media__file_translations`
--
ALTER TABLE `media__file_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media__file_translations_file_id_locale_unique` (`file_id`,`locale`),
  ADD KEY `media__file_translations_locale_index` (`locale`);

--
-- Indexes for table `media__imageables`
--
ALTER TABLE `media__imageables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu__menuitems`
--
ALTER TABLE `menu__menuitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu__menuitems_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `menu__menuitem_translations`
--
ALTER TABLE `menu__menuitem_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu__menuitem_translations_menuitem_id_locale_unique` (`menuitem_id`,`locale`),
  ADD KEY `menu__menuitem_translations_locale_index` (`locale`);

--
-- Indexes for table `menu__menus`
--
ALTER TABLE `menu__menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu__menu_translations`
--
ALTER TABLE `menu__menu_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu__menu_translations_menu_id_locale_unique` (`menu_id`,`locale`),
  ADD KEY `menu__menu_translations_locale_index` (`locale`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page__pages`
--
ALTER TABLE `page__pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page__page_translations`
--
ALTER TABLE `page__page_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page__page_translations_page_id_locale_unique` (`page_id`,`locale`),
  ADD KEY `page__page_translations_locale_index` (`locale`);

--
-- Indexes for table `persistences`
--
ALTER TABLE `persistences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `persistences_code_unique` (`code`);

--
-- Indexes for table `profile__profiles`
--
ALTER TABLE `profile__profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile__profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `profile__profile_translations`
--
ALTER TABLE `profile__profile_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profile__profile_translations_profile_id_locale_unique` (`profile_id`,`locale`),
  ADD KEY `profile__profile_translations_user_id_foreign` (`user_id`),
  ADD KEY `profile__profile_translations_locale_index` (`locale`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`);

--
-- Indexes for table `setting__settings`
--
ALTER TABLE `setting__settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting__settings_name_unique` (`name`),
  ADD KEY `setting__settings_name_index` (`name`);

--
-- Indexes for table `setting__setting_translations`
--
ALTER TABLE `setting__setting_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting__setting_translations_setting_id_locale_unique` (`setting_id`,`locale`),
  ADD KEY `setting__setting_translations_locale_index` (`locale`);

--
-- Indexes for table `tag__tagged`
--
ALTER TABLE `tag__tagged`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag__tagged_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`);

--
-- Indexes for table `tag__tags`
--
ALTER TABLE `tag__tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag__tag_translations`
--
ALTER TABLE `tag__tag_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tag__tag_translations_tag_id_locale_unique` (`tag_id`,`locale`),
  ADD KEY `tag__tag_translations_locale_index` (`locale`);

--
-- Indexes for table `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_index` (`user_id`);

--
-- Indexes for table `translation__translations`
--
ALTER TABLE `translation__translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translation__translations_key_index` (`key`);

--
-- Indexes for table `translation__translation_translations`
--
ALTER TABLE `translation__translation_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_trans_id_locale_unique` (`translation_id`,`locale`),
  ADD KEY `translation__translation_translations_locale_index` (`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_tokens`
--
ALTER TABLE `user_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_tokens_access_token_unique` (`access_token`),
  ADD KEY `user_tokens_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;
--
-- AUTO_INCREMENT for table `dashboard__widgets`
--
ALTER TABLE `dashboard__widgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `media__files`
--
ALTER TABLE `media__files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `media__file_translations`
--
ALTER TABLE `media__file_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `media__imageables`
--
ALTER TABLE `media__imageables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menu__menuitems`
--
ALTER TABLE `menu__menuitems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menu__menuitem_translations`
--
ALTER TABLE `menu__menuitem_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menu__menus`
--
ALTER TABLE `menu__menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menu__menu_translations`
--
ALTER TABLE `menu__menu_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `page__pages`
--
ALTER TABLE `page__pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `page__page_translations`
--
ALTER TABLE `page__page_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `persistences`
--
ALTER TABLE `persistences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=951;
--
-- AUTO_INCREMENT for table `profile__profiles`
--
ALTER TABLE `profile__profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `profile__profile_translations`
--
ALTER TABLE `profile__profile_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `setting__settings`
--
ALTER TABLE `setting__settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `setting__setting_translations`
--
ALTER TABLE `setting__setting_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tag__tagged`
--
ALTER TABLE `tag__tagged`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tag__tags`
--
ALTER TABLE `tag__tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tag__tag_translations`
--
ALTER TABLE `tag__tag_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `translation__translations`
--
ALTER TABLE `translation__translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `translation__translation_translations`
--
ALTER TABLE `translation__translation_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user_tokens`
--
ALTER TABLE `user_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `dashboard__widgets`
--
ALTER TABLE `dashboard__widgets`
  ADD CONSTRAINT `dashboard__widgets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `media__file_translations`
--
ALTER TABLE `media__file_translations`
  ADD CONSTRAINT `media__file_translations_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `media__files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu__menuitems`
--
ALTER TABLE `menu__menuitems`
  ADD CONSTRAINT `menu__menuitems_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menu__menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu__menuitem_translations`
--
ALTER TABLE `menu__menuitem_translations`
  ADD CONSTRAINT `menu__menuitem_translations_menuitem_id_foreign` FOREIGN KEY (`menuitem_id`) REFERENCES `menu__menuitems` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu__menu_translations`
--
ALTER TABLE `menu__menu_translations`
  ADD CONSTRAINT `menu__menu_translations_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menu__menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page__page_translations`
--
ALTER TABLE `page__page_translations`
  ADD CONSTRAINT `page__page_translations_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `page__pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profile__profiles`
--
ALTER TABLE `profile__profiles`
  ADD CONSTRAINT `profile__profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profile__profile_translations`
--
ALTER TABLE `profile__profile_translations`
  ADD CONSTRAINT `profile__profile_translations_profile_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `profile__profiles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `profile__profile_translations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `setting__setting_translations`
--
ALTER TABLE `setting__setting_translations`
  ADD CONSTRAINT `setting__setting_translations_setting_id_foreign` FOREIGN KEY (`setting_id`) REFERENCES `setting__settings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tag__tag_translations`
--
ALTER TABLE `tag__tag_translations`
  ADD CONSTRAINT `tag__tag_translations_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tag__tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `translation__translation_translations`
--
ALTER TABLE `translation__translation_translations`
  ADD CONSTRAINT `translation__translation_translations_translation_id_foreign` FOREIGN KEY (`translation_id`) REFERENCES `translation__translations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_tokens`
--
ALTER TABLE `user_tokens`
  ADD CONSTRAINT `user_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
