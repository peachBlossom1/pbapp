-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2018 at 06:52 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

--
-- Database: `laravel_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `avored_addresses`
--

CREATE TABLE `avored_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` enum('SHIPPING','BILLING') COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_addresses`
--

INSERT INTO `avored_addresses` (`id`, `user_id`, `type`, `first_name`, `last_name`, `address1`, `address2`, `postcode`, `city`, `state`, `country_id`, `phone`, `created_at`, `updated_at`) VALUES
(1, 1, 'BILLING', 'Ahsan', 'Adam', 'House #a', NULL, NULL, 'Karachi', 'Sindh', 77, '111', '2018-03-28 20:53:19', '2018-03-28 20:53:19'),
(2, 1, 'SHIPPING', 'Ahsan', 'Adam', 'House #a', NULL, NULL, 'Karachi', 'Sindh', 77, '111', '2018-03-28 20:53:19', '2018-03-28 20:53:19');

-- --------------------------------------------------------

--
-- Table structure for table `avored_admin_password_resets`
--

CREATE TABLE `avored_admin_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_admin_users`
--

CREATE TABLE `avored_admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_super_admin` tinyint(4) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'en',
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_admin_users`
--

INSERT INTO `avored_admin_users` (`id`, `is_super_admin`, `role_id`, `first_name`, `last_name`, `email`, `password`, `language`, `image_path`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Admin', 'Admin', 'admin@pb.com', '$2y$10$i7fwPZviRPtvgSr3WK4Ql.pJgOf/FKfWtpigVamC7It4HX/rVQknq', 'en', NULL, NULL, '2018-03-28 20:50:50', '2018-03-28 20:50:50'),
(2, NULL, 2, 'Gardener', 'Gardener', 'gardener@pb.com', '$2y$10$rUGab7UZLfMdlM2InGoqg.oIETKippF3vNhZQ4.Yd8xiRpFIbpTTO', 'en', NULL, NULL, '2018-03-28 21:12:13', '2018-03-28 21:12:13');

-- --------------------------------------------------------

--
-- Table structure for table `avored_attributes`
--

CREATE TABLE `avored_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_attributes`
--

INSERT INTO `avored_attributes` (`id`, `name`, `identifier`, `created_at`, `updated_at`) VALUES
(1, 'Plant Life', 'plant_life', '2018-03-28 20:56:34', '2018-03-28 20:56:34');

-- --------------------------------------------------------

--
-- Table structure for table `avored_attribute_dropdown_options`
--

CREATE TABLE `avored_attribute_dropdown_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `display_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_attribute_dropdown_options`
--

INSERT INTO `avored_attribute_dropdown_options` (`id`, `attribute_id`, `display_text`, `created_at`, `updated_at`) VALUES
(5, 1, 'evergreen', '2018-03-28 21:49:20', '2018-03-28 21:49:20'),
(6, 1, 'annual', '2018-03-28 21:49:20', '2018-03-28 21:49:20'),
(7, 1, 'seasonal', '2018-03-28 21:49:20', '2018-03-28 21:49:20');

-- --------------------------------------------------------

--
-- Table structure for table `avored_attribute_product`
--

CREATE TABLE `avored_attribute_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_attribute_product`
--

INSERT INTO `avored_attribute_product` (`id`, `attribute_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `avored_categories`
--

CREATE TABLE `avored_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_categories`
--

INSERT INTO `avored_categories` (`id`, `parent_id`, `name`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Kitchen', 'kitchen', NULL, NULL, '2018-03-28 20:50:25', '2018-03-28 20:50:25'),
(2, NULL, 'Bedroom', 'bedroom', NULL, NULL, '2018-03-28 20:50:25', '2018-03-28 20:50:25'),
(3, NULL, 'Living Room', 'living-room', NULL, NULL, '2018-03-28 20:50:25', '2018-03-28 20:50:25');

-- --------------------------------------------------------

--
-- Table structure for table `avored_category_product`
--

CREATE TABLE `avored_category_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_category_product`
--

INSERT INTO `avored_category_product` (`id`, `category_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, NULL, NULL),
(2, 3, 2, NULL, NULL),
(3, 3, 3, NULL, NULL),
(4, 3, 4, NULL, NULL),
(5, 3, 5, NULL, NULL),
(7, 2, 6, NULL, NULL),
(8, 2, 8, NULL, NULL),
(9, 2, 9, NULL, NULL),
(10, 2, 10, NULL, NULL),
(11, 1, 11, NULL, NULL),
(12, 1, 12, NULL, NULL),
(13, 1, 13, NULL, NULL),
(14, 1, 14, NULL, NULL),
(15, 1, 15, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `avored_configurations`
--

CREATE TABLE `avored_configurations` (
  `id` int(10) UNSIGNED NOT NULL,
  `configuration_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `configuration_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_configurations`
--

INSERT INTO `avored_configurations` (`id`, `configuration_key`, `configuration_value`, `created_at`, `updated_at`) VALUES
(1, 'general_site_title', 'Peach Blossom', '2018-03-28 20:50:01', '2018-03-28 21:10:27'),
(2, 'general_site_description', 'Peach Blossom', '2018-03-28 20:50:01', '2018-03-28 21:10:27'),
(3, 'general_site_description', 'AvoRed Laravel Ecommerce', '2018-03-28 20:50:01', '2018-03-28 20:50:01'),
(4, 'avored_tax_class_default_country_for_tax_calculation', '77', '2018-03-28 20:50:13', '2018-03-28 21:10:27'),
(5, 'avored_tax_enabled', '1', '2018-03-28 20:50:13', '2018-03-28 20:50:13'),
(6, 'avored_tax_percentage', '15', '2018-03-28 20:50:13', '2018-03-28 20:50:13'),
(7, 'general_home_page', '1', '2018-03-28 20:50:29', '2018-03-28 20:50:29'),
(8, 'general_term_condition_page', '2', '2018-03-28 20:50:29', '2018-03-28 20:50:29'),
(9, 'active_theme_identifier', 'avored-default', '2018-03-28 20:50:59', '2018-03-28 20:50:59'),
(10, 'active_theme_path', 'E:\\workstuff\\xamp\\htdocs\\laravel-ecommerce\\themes\\avored\\default', '2018-03-28 20:50:59', '2018-03-28 20:50:59'),
(11, 'avored_catalog_no_of_product_category_page', '9', '2018-03-28 20:50:59', '2018-03-28 20:50:59'),
(12, 'avored_catalog_cart_page_display_taxamount', 'yes', '2018-03-28 20:50:59', '2018-03-28 20:50:59'),
(13, 'avored_tax_class_percentage_of_tax', '15', '2018-03-28 20:51:00', '2018-03-28 20:51:00'),
(14, 'avored_address_default_country', '77', '2018-03-28 21:10:27', '2018-03-28 21:10:27'),
(15, 'avored_user_activation_required', '0', '2018-03-28 21:10:27', '2018-03-28 21:10:27'),
(16, 'avored_free_shipping_enabled', '1', '2018-03-28 21:10:27', '2018-03-28 21:10:27'),
(17, 'avored_pickup_enabled', '1', '2018-03-28 21:10:27', '2018-03-28 21:10:27'),
(18, 'avored_stripe_enabled', '0', '2018-03-28 21:10:27', '2018-03-28 21:10:27'),
(19, 'avored_stripe_publishable_key', NULL, '2018-03-28 21:10:27', '2018-03-28 21:10:27'),
(20, 'avored_stripe_secret_key', NULL, '2018-03-28 21:10:27', '2018-03-28 21:10:27');

-- --------------------------------------------------------

--
-- Table structure for table `avored_countries`
--

CREATE TABLE `avored_countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_countries`
--

INSERT INTO `avored_countries` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'BD', 'Bangladesh', '2018-03-28 20:50:01', '2018-03-28 20:50:01'),
(2, 'BE', 'Belgium', '2018-03-28 20:50:02', '2018-03-28 20:50:02'),
(3, 'BF', 'Burkina Faso', '2018-03-28 20:50:02', '2018-03-28 20:50:02'),
(4, 'BG', 'Bulgaria', '2018-03-28 20:50:02', '2018-03-28 20:50:02'),
(5, 'BA', 'Bosnia and Herzegovina', '2018-03-28 20:50:02', '2018-03-28 20:50:02'),
(6, 'BB', 'Barbados', '2018-03-28 20:50:02', '2018-03-28 20:50:02'),
(7, 'WF', 'Wallis and Futuna', '2018-03-28 20:50:02', '2018-03-28 20:50:02'),
(8, 'BL', 'Saint Barthelemy', '2018-03-28 20:50:02', '2018-03-28 20:50:02'),
(9, 'BM', 'Bermuda', '2018-03-28 20:50:02', '2018-03-28 20:50:02'),
(10, 'BN', 'Brunei', '2018-03-28 20:50:02', '2018-03-28 20:50:02'),
(11, 'BO', 'Bolivia', '2018-03-28 20:50:02', '2018-03-28 20:50:02'),
(12, 'BH', 'Bahrain', '2018-03-28 20:50:02', '2018-03-28 20:50:02'),
(13, 'BI', 'Burundi', '2018-03-28 20:50:02', '2018-03-28 20:50:02'),
(14, 'BJ', 'Benin', '2018-03-28 20:50:02', '2018-03-28 20:50:02'),
(15, 'BT', 'Bhutan', '2018-03-28 20:50:02', '2018-03-28 20:50:02'),
(16, 'JM', 'Jamaica', '2018-03-28 20:50:02', '2018-03-28 20:50:02'),
(17, 'BV', 'Bouvet Island', '2018-03-28 20:50:02', '2018-03-28 20:50:02'),
(18, 'BW', 'Botswana', '2018-03-28 20:50:03', '2018-03-28 20:50:03'),
(19, 'WS', 'Samoa', '2018-03-28 20:50:03', '2018-03-28 20:50:03'),
(20, 'BQ', 'Bonaire, Saint Eustatius and Saba ', '2018-03-28 20:50:03', '2018-03-28 20:50:03'),
(21, 'BR', 'Brazil', '2018-03-28 20:50:03', '2018-03-28 20:50:03'),
(22, 'BS', 'Bahamas', '2018-03-28 20:50:03', '2018-03-28 20:50:03'),
(23, 'JE', 'Jersey', '2018-03-28 20:50:03', '2018-03-28 20:50:03'),
(24, 'BY', 'Belarus', '2018-03-28 20:50:03', '2018-03-28 20:50:03'),
(25, 'BZ', 'Belize', '2018-03-28 20:50:03', '2018-03-28 20:50:03'),
(26, 'RU', 'Russia', '2018-03-28 20:50:03', '2018-03-28 20:50:03'),
(27, 'RW', 'Rwanda', '2018-03-28 20:50:03', '2018-03-28 20:50:03'),
(28, 'RS', 'Serbia', '2018-03-28 20:50:03', '2018-03-28 20:50:03'),
(29, 'TL', 'East Timor', '2018-03-28 20:50:03', '2018-03-28 20:50:03'),
(30, 'RE', 'Reunion', '2018-03-28 20:50:03', '2018-03-28 20:50:03'),
(31, 'TM', 'Turkmenistan', '2018-03-28 20:50:03', '2018-03-28 20:50:03'),
(32, 'TJ', 'Tajikistan', '2018-03-28 20:50:03', '2018-03-28 20:50:03'),
(33, 'RO', 'Romania', '2018-03-28 20:50:03', '2018-03-28 20:50:03'),
(34, 'TK', 'Tokelau', '2018-03-28 20:50:03', '2018-03-28 20:50:03'),
(35, 'GW', 'Guinea-Bissau', '2018-03-28 20:50:03', '2018-03-28 20:50:03'),
(36, 'GU', 'Guam', '2018-03-28 20:50:03', '2018-03-28 20:50:03'),
(37, 'GT', 'Guatemala', '2018-03-28 20:50:03', '2018-03-28 20:50:03'),
(38, 'GS', 'South Georgia and the South Sandwich Islands', '2018-03-28 20:50:03', '2018-03-28 20:50:03'),
(39, 'GR', 'Greece', '2018-03-28 20:50:03', '2018-03-28 20:50:03'),
(40, 'GQ', 'Equatorial Guinea', '2018-03-28 20:50:03', '2018-03-28 20:50:03'),
(41, 'GP', 'Guadeloupe', '2018-03-28 20:50:04', '2018-03-28 20:50:04'),
(42, 'JP', 'Japan', '2018-03-28 20:50:04', '2018-03-28 20:50:04'),
(43, 'GY', 'Guyana', '2018-03-28 20:50:04', '2018-03-28 20:50:04'),
(44, 'GG', 'Guernsey', '2018-03-28 20:50:04', '2018-03-28 20:50:04'),
(45, 'GF', 'French Guiana', '2018-03-28 20:50:04', '2018-03-28 20:50:04'),
(46, 'GE', 'Georgia', '2018-03-28 20:50:04', '2018-03-28 20:50:04'),
(47, 'GD', 'Grenada', '2018-03-28 20:50:04', '2018-03-28 20:50:04'),
(48, 'GB', 'United Kingdom', '2018-03-28 20:50:04', '2018-03-28 20:50:04'),
(49, 'GA', 'Gabon', '2018-03-28 20:50:04', '2018-03-28 20:50:04'),
(50, 'SV', 'El Salvador', '2018-03-28 20:50:04', '2018-03-28 20:50:04'),
(51, 'GN', 'Guinea', '2018-03-28 20:50:04', '2018-03-28 20:50:04'),
(52, 'GM', 'Gambia', '2018-03-28 20:50:04', '2018-03-28 20:50:04'),
(53, 'GL', 'Greenland', '2018-03-28 20:50:04', '2018-03-28 20:50:04'),
(54, 'GI', 'Gibraltar', '2018-03-28 20:50:04', '2018-03-28 20:50:04'),
(55, 'GH', 'Ghana', '2018-03-28 20:50:04', '2018-03-28 20:50:04'),
(56, 'OM', 'Oman', '2018-03-28 20:50:04', '2018-03-28 20:50:04'),
(57, 'TN', 'Tunisia', '2018-03-28 20:50:04', '2018-03-28 20:50:04'),
(58, 'JO', 'Jordan', '2018-03-28 20:50:04', '2018-03-28 20:50:04'),
(59, 'HR', 'Croatia', '2018-03-28 20:50:04', '2018-03-28 20:50:04'),
(60, 'HT', 'Haiti', '2018-03-28 20:50:04', '2018-03-28 20:50:04'),
(61, 'HU', 'Hungary', '2018-03-28 20:50:04', '2018-03-28 20:50:04'),
(62, 'HK', 'Hong Kong', '2018-03-28 20:50:04', '2018-03-28 20:50:04'),
(63, 'HN', 'Honduras', '2018-03-28 20:50:04', '2018-03-28 20:50:04'),
(64, 'HM', 'Heard Island and McDonald Islands', '2018-03-28 20:50:05', '2018-03-28 20:50:05'),
(65, 'VE', 'Venezuela', '2018-03-28 20:50:05', '2018-03-28 20:50:05'),
(66, 'PR', 'Puerto Rico', '2018-03-28 20:50:05', '2018-03-28 20:50:05'),
(67, 'PS', 'Palestinian Territory', '2018-03-28 20:50:05', '2018-03-28 20:50:05'),
(68, 'PW', 'Palau', '2018-03-28 20:50:05', '2018-03-28 20:50:05'),
(69, 'PT', 'Portugal', '2018-03-28 20:50:05', '2018-03-28 20:50:05'),
(70, 'SJ', 'Svalbard and Jan Mayen', '2018-03-28 20:50:05', '2018-03-28 20:50:05'),
(71, 'PY', 'Paraguay', '2018-03-28 20:50:05', '2018-03-28 20:50:05'),
(72, 'IQ', 'Iraq', '2018-03-28 20:50:05', '2018-03-28 20:50:05'),
(73, 'PA', 'Panama', '2018-03-28 20:50:05', '2018-03-28 20:50:05'),
(74, 'PF', 'French Polynesia', '2018-03-28 20:50:05', '2018-03-28 20:50:05'),
(75, 'PG', 'Papua New Guinea', '2018-03-28 20:50:05', '2018-03-28 20:50:05'),
(76, 'PE', 'Peru', '2018-03-28 20:50:05', '2018-03-28 20:50:05'),
(77, 'PK', 'Pakistan', '2018-03-28 20:50:05', '2018-03-28 20:50:05'),
(78, 'PH', 'Philippines', '2018-03-28 20:50:05', '2018-03-28 20:50:05'),
(79, 'PN', 'Pitcairn', '2018-03-28 20:50:05', '2018-03-28 20:50:05'),
(80, 'PL', 'Poland', '2018-03-28 20:50:05', '2018-03-28 20:50:05'),
(81, 'PM', 'Saint Pierre and Miquelon', '2018-03-28 20:50:05', '2018-03-28 20:50:05'),
(82, 'ZM', 'Zambia', '2018-03-28 20:50:05', '2018-03-28 20:50:05'),
(83, 'EH', 'Western Sahara', '2018-03-28 20:50:05', '2018-03-28 20:50:05'),
(84, 'EE', 'Estonia', '2018-03-28 20:50:05', '2018-03-28 20:50:05'),
(85, 'EG', 'Egypt', '2018-03-28 20:50:05', '2018-03-28 20:50:05'),
(86, 'ZA', 'South Africa', '2018-03-28 20:50:05', '2018-03-28 20:50:05'),
(87, 'EC', 'Ecuador', '2018-03-28 20:50:06', '2018-03-28 20:50:06'),
(88, 'IT', 'Italy', '2018-03-28 20:50:06', '2018-03-28 20:50:06'),
(89, 'VN', 'Vietnam', '2018-03-28 20:50:06', '2018-03-28 20:50:06'),
(90, 'SB', 'Solomon Islands', '2018-03-28 20:50:06', '2018-03-28 20:50:06'),
(91, 'ET', 'Ethiopia', '2018-03-28 20:50:06', '2018-03-28 20:50:06'),
(92, 'SO', 'Somalia', '2018-03-28 20:50:06', '2018-03-28 20:50:06'),
(93, 'ZW', 'Zimbabwe', '2018-03-28 20:50:06', '2018-03-28 20:50:06'),
(94, 'SA', 'Saudi Arabia', '2018-03-28 20:50:06', '2018-03-28 20:50:06'),
(95, 'ES', 'Spain', '2018-03-28 20:50:06', '2018-03-28 20:50:06'),
(96, 'ER', 'Eritrea', '2018-03-28 20:50:06', '2018-03-28 20:50:06'),
(97, 'ME', 'Montenegro', '2018-03-28 20:50:06', '2018-03-28 20:50:06'),
(98, 'MD', 'Moldova', '2018-03-28 20:50:06', '2018-03-28 20:50:06'),
(99, 'MG', 'Madagascar', '2018-03-28 20:50:06', '2018-03-28 20:50:06'),
(100, 'MF', 'Saint Martin', '2018-03-28 20:50:07', '2018-03-28 20:50:07'),
(101, 'MA', 'Morocco', '2018-03-28 20:50:07', '2018-03-28 20:50:07'),
(102, 'MC', 'Monaco', '2018-03-28 20:50:07', '2018-03-28 20:50:07'),
(103, 'UZ', 'Uzbekistan', '2018-03-28 20:50:07', '2018-03-28 20:50:07'),
(104, 'MM', 'Myanmar', '2018-03-28 20:50:07', '2018-03-28 20:50:07'),
(105, 'ML', 'Mali', '2018-03-28 20:50:07', '2018-03-28 20:50:07'),
(106, 'MO', 'Macao', '2018-03-28 20:50:07', '2018-03-28 20:50:07'),
(107, 'MN', 'Mongolia', '2018-03-28 20:50:07', '2018-03-28 20:50:07'),
(108, 'MH', 'Marshall Islands', '2018-03-28 20:50:07', '2018-03-28 20:50:07'),
(109, 'MK', 'Macedonia', '2018-03-28 20:50:07', '2018-03-28 20:50:07'),
(110, 'MU', 'Mauritius', '2018-03-28 20:50:07', '2018-03-28 20:50:07'),
(111, 'MT', 'Malta', '2018-03-28 20:50:07', '2018-03-28 20:50:07'),
(112, 'MW', 'Malawi', '2018-03-28 20:50:07', '2018-03-28 20:50:07'),
(113, 'MV', 'Maldives', '2018-03-28 20:50:07', '2018-03-28 20:50:07'),
(114, 'MQ', 'Martinique', '2018-03-28 20:50:07', '2018-03-28 20:50:07'),
(115, 'MP', 'Northern Mariana Islands', '2018-03-28 20:50:07', '2018-03-28 20:50:07'),
(116, 'MS', 'Montserrat', '2018-03-28 20:50:07', '2018-03-28 20:50:07'),
(117, 'MR', 'Mauritania', '2018-03-28 20:50:07', '2018-03-28 20:50:07'),
(118, 'IM', 'Isle of Man', '2018-03-28 20:50:07', '2018-03-28 20:50:07'),
(119, 'UG', 'Uganda', '2018-03-28 20:50:07', '2018-03-28 20:50:07'),
(120, 'TZ', 'Tanzania', '2018-03-28 20:50:07', '2018-03-28 20:50:07'),
(121, 'MY', 'Malaysia', '2018-03-28 20:50:07', '2018-03-28 20:50:07'),
(122, 'MX', 'Mexico', '2018-03-28 20:50:07', '2018-03-28 20:50:07'),
(123, 'IL', 'Israel', '2018-03-28 20:50:07', '2018-03-28 20:50:07'),
(124, 'FR', 'France', '2018-03-28 20:50:08', '2018-03-28 20:50:08'),
(125, 'IO', 'British Indian Ocean Territory', '2018-03-28 20:50:08', '2018-03-28 20:50:08'),
(126, 'SH', 'Saint Helena', '2018-03-28 20:50:08', '2018-03-28 20:50:08'),
(127, 'FI', 'Finland', '2018-03-28 20:50:08', '2018-03-28 20:50:08'),
(128, 'FJ', 'Fiji', '2018-03-28 20:50:08', '2018-03-28 20:50:08'),
(129, 'FK', 'Falkland Islands', '2018-03-28 20:50:08', '2018-03-28 20:50:08'),
(130, 'FM', 'Micronesia', '2018-03-28 20:50:08', '2018-03-28 20:50:08'),
(131, 'FO', 'Faroe Islands', '2018-03-28 20:50:08', '2018-03-28 20:50:08'),
(132, 'NI', 'Nicaragua', '2018-03-28 20:50:08', '2018-03-28 20:50:08'),
(133, 'NL', 'Netherlands', '2018-03-28 20:50:08', '2018-03-28 20:50:08'),
(134, 'NO', 'Norway', '2018-03-28 20:50:08', '2018-03-28 20:50:08'),
(135, 'NA', 'Namibia', '2018-03-28 20:50:08', '2018-03-28 20:50:08'),
(136, 'VU', 'Vanuatu', '2018-03-28 20:50:08', '2018-03-28 20:50:08'),
(137, 'NC', 'New Caledonia', '2018-03-28 20:50:08', '2018-03-28 20:50:08'),
(138, 'NE', 'Niger', '2018-03-28 20:50:08', '2018-03-28 20:50:08'),
(139, 'NF', 'Norfolk Island', '2018-03-28 20:50:08', '2018-03-28 20:50:08'),
(140, 'NG', 'Nigeria', '2018-03-28 20:50:08', '2018-03-28 20:50:08'),
(141, 'NZ', 'New Zealand', '2018-03-28 20:50:08', '2018-03-28 20:50:08'),
(142, 'NP', 'Nepal', '2018-03-28 20:50:08', '2018-03-28 20:50:08'),
(143, 'NR', 'Nauru', '2018-03-28 20:50:08', '2018-03-28 20:50:08'),
(144, 'NU', 'Niue', '2018-03-28 20:50:08', '2018-03-28 20:50:08'),
(145, 'CK', 'Cook Islands', '2018-03-28 20:50:08', '2018-03-28 20:50:08'),
(146, 'XK', 'Kosovo', '2018-03-28 20:50:08', '2018-03-28 20:50:08'),
(147, 'CI', 'Ivory Coast', '2018-03-28 20:50:08', '2018-03-28 20:50:08'),
(148, 'CH', 'Switzerland', '2018-03-28 20:50:08', '2018-03-28 20:50:08'),
(149, 'CO', 'Colombia', '2018-03-28 20:50:08', '2018-03-28 20:50:08'),
(150, 'CN', 'China', '2018-03-28 20:50:09', '2018-03-28 20:50:09'),
(151, 'CM', 'Cameroon', '2018-03-28 20:50:09', '2018-03-28 20:50:09'),
(152, 'CL', 'Chile', '2018-03-28 20:50:09', '2018-03-28 20:50:09'),
(153, 'CC', 'Cocos Islands', '2018-03-28 20:50:09', '2018-03-28 20:50:09'),
(154, 'CA', 'Canada', '2018-03-28 20:50:09', '2018-03-28 20:50:09'),
(155, 'CG', 'Republic of the Congo', '2018-03-28 20:50:09', '2018-03-28 20:50:09'),
(156, 'CF', 'Central African Republic', '2018-03-28 20:50:09', '2018-03-28 20:50:09'),
(157, 'CD', 'Democratic Republic of the Congo', '2018-03-28 20:50:09', '2018-03-28 20:50:09'),
(158, 'CZ', 'Czech Republic', '2018-03-28 20:50:09', '2018-03-28 20:50:09'),
(159, 'CY', 'Cyprus', '2018-03-28 20:50:09', '2018-03-28 20:50:09'),
(160, 'CX', 'Christmas Island', '2018-03-28 20:50:09', '2018-03-28 20:50:09'),
(161, 'CR', 'Costa Rica', '2018-03-28 20:50:09', '2018-03-28 20:50:09'),
(162, 'CW', 'Curacao', '2018-03-28 20:50:09', '2018-03-28 20:50:09'),
(163, 'CV', 'Cape Verde', '2018-03-28 20:50:09', '2018-03-28 20:50:09'),
(164, 'CU', 'Cuba', '2018-03-28 20:50:09', '2018-03-28 20:50:09'),
(165, 'SZ', 'Swaziland', '2018-03-28 20:50:09', '2018-03-28 20:50:09'),
(166, 'SY', 'Syria', '2018-03-28 20:50:09', '2018-03-28 20:50:09'),
(167, 'SX', 'Sint Maarten', '2018-03-28 20:50:09', '2018-03-28 20:50:09'),
(168, 'KG', 'Kyrgyzstan', '2018-03-28 20:50:09', '2018-03-28 20:50:09'),
(169, 'KE', 'Kenya', '2018-03-28 20:50:09', '2018-03-28 20:50:09'),
(170, 'SS', 'South Sudan', '2018-03-28 20:50:09', '2018-03-28 20:50:09'),
(171, 'SR', 'Suriname', '2018-03-28 20:50:09', '2018-03-28 20:50:09'),
(172, 'KI', 'Kiribati', '2018-03-28 20:50:09', '2018-03-28 20:50:09'),
(173, 'KH', 'Cambodia', '2018-03-28 20:50:09', '2018-03-28 20:50:09'),
(174, 'KN', 'Saint Kitts and Nevis', '2018-03-28 20:50:09', '2018-03-28 20:50:09'),
(175, 'KM', 'Comoros', '2018-03-28 20:50:10', '2018-03-28 20:50:10'),
(176, 'ST', 'Sao Tome and Principe', '2018-03-28 20:50:10', '2018-03-28 20:50:10'),
(177, 'SK', 'Slovakia', '2018-03-28 20:50:10', '2018-03-28 20:50:10'),
(178, 'KR', 'South Korea', '2018-03-28 20:50:10', '2018-03-28 20:50:10'),
(179, 'SI', 'Slovenia', '2018-03-28 20:50:10', '2018-03-28 20:50:10'),
(180, 'KP', 'North Korea', '2018-03-28 20:50:10', '2018-03-28 20:50:10'),
(181, 'KW', 'Kuwait', '2018-03-28 20:50:10', '2018-03-28 20:50:10'),
(182, 'SN', 'Senegal', '2018-03-28 20:50:10', '2018-03-28 20:50:10'),
(183, 'SM', 'San Marino', '2018-03-28 20:50:10', '2018-03-28 20:50:10'),
(184, 'SL', 'Sierra Leone', '2018-03-28 20:50:10', '2018-03-28 20:50:10'),
(185, 'SC', 'Seychelles', '2018-03-28 20:50:10', '2018-03-28 20:50:10'),
(186, 'KZ', 'Kazakhstan', '2018-03-28 20:50:10', '2018-03-28 20:50:10'),
(187, 'KY', 'Cayman Islands', '2018-03-28 20:50:10', '2018-03-28 20:50:10'),
(188, 'SG', 'Singapore', '2018-03-28 20:50:10', '2018-03-28 20:50:10'),
(189, 'SE', 'Sweden', '2018-03-28 20:50:10', '2018-03-28 20:50:10'),
(190, 'SD', 'Sudan', '2018-03-28 20:50:10', '2018-03-28 20:50:10'),
(191, 'DO', 'Dominican Republic', '2018-03-28 20:50:10', '2018-03-28 20:50:10'),
(192, 'DM', 'Dominica', '2018-03-28 20:50:10', '2018-03-28 20:50:10'),
(193, 'DJ', 'Djibouti', '2018-03-28 20:50:10', '2018-03-28 20:50:10'),
(194, 'DK', 'Denmark', '2018-03-28 20:50:10', '2018-03-28 20:50:10'),
(195, 'VG', 'British Virgin Islands', '2018-03-28 20:50:11', '2018-03-28 20:50:11'),
(196, 'DE', 'Germany', '2018-03-28 20:50:11', '2018-03-28 20:50:11'),
(197, 'YE', 'Yemen', '2018-03-28 20:50:11', '2018-03-28 20:50:11'),
(198, 'DZ', 'Algeria', '2018-03-28 20:50:11', '2018-03-28 20:50:11'),
(199, 'US', 'United States', '2018-03-28 20:50:11', '2018-03-28 20:50:11'),
(200, 'UY', 'Uruguay', '2018-03-28 20:50:11', '2018-03-28 20:50:11'),
(201, 'YT', 'Mayotte', '2018-03-28 20:50:11', '2018-03-28 20:50:11'),
(202, 'UM', 'United States Minor Outlying Islands', '2018-03-28 20:50:11', '2018-03-28 20:50:11'),
(203, 'LB', 'Lebanon', '2018-03-28 20:50:11', '2018-03-28 20:50:11'),
(204, 'LC', 'Saint Lucia', '2018-03-28 20:50:11', '2018-03-28 20:50:11'),
(205, 'LA', 'Laos', '2018-03-28 20:50:11', '2018-03-28 20:50:11'),
(206, 'TV', 'Tuvalu', '2018-03-28 20:50:11', '2018-03-28 20:50:11'),
(207, 'TW', 'Taiwan', '2018-03-28 20:50:11', '2018-03-28 20:50:11'),
(208, 'TT', 'Trinidad and Tobago', '2018-03-28 20:50:11', '2018-03-28 20:50:11'),
(209, 'TR', 'Turkey', '2018-03-28 20:50:11', '2018-03-28 20:50:11'),
(210, 'LK', 'Sri Lanka', '2018-03-28 20:50:11', '2018-03-28 20:50:11'),
(211, 'LI', 'Liechtenstein', '2018-03-28 20:50:11', '2018-03-28 20:50:11'),
(212, 'LV', 'Latvia', '2018-03-28 20:50:11', '2018-03-28 20:50:11'),
(213, 'TO', 'Tonga', '2018-03-28 20:50:11', '2018-03-28 20:50:11'),
(214, 'LT', 'Lithuania', '2018-03-28 20:50:11', '2018-03-28 20:50:11'),
(215, 'LU', 'Luxembourg', '2018-03-28 20:50:11', '2018-03-28 20:50:11'),
(216, 'LR', 'Liberia', '2018-03-28 20:50:11', '2018-03-28 20:50:11'),
(217, 'LS', 'Lesotho', '2018-03-28 20:50:11', '2018-03-28 20:50:11'),
(218, 'TH', 'Thailand', '2018-03-28 20:50:11', '2018-03-28 20:50:11'),
(219, 'TF', 'French Southern Territories', '2018-03-28 20:50:11', '2018-03-28 20:50:11'),
(220, 'TG', 'Togo', '2018-03-28 20:50:11', '2018-03-28 20:50:11'),
(221, 'TD', 'Chad', '2018-03-28 20:50:11', '2018-03-28 20:50:11'),
(222, 'TC', 'Turks and Caicos Islands', '2018-03-28 20:50:11', '2018-03-28 20:50:11'),
(223, 'LY', 'Libya', '2018-03-28 20:50:12', '2018-03-28 20:50:12'),
(224, 'VA', 'Vatican', '2018-03-28 20:50:12', '2018-03-28 20:50:12'),
(225, 'VC', 'Saint Vincent and the Grenadines', '2018-03-28 20:50:12', '2018-03-28 20:50:12'),
(226, 'AE', 'United Arab Emirates', '2018-03-28 20:50:12', '2018-03-28 20:50:12'),
(227, 'AD', 'Andorra', '2018-03-28 20:50:12', '2018-03-28 20:50:12'),
(228, 'AG', 'Antigua and Barbuda', '2018-03-28 20:50:12', '2018-03-28 20:50:12'),
(229, 'AF', 'Afghanistan', '2018-03-28 20:50:12', '2018-03-28 20:50:12'),
(230, 'AI', 'Anguilla', '2018-03-28 20:50:12', '2018-03-28 20:50:12'),
(231, 'VI', 'U.S. Virgin Islands', '2018-03-28 20:50:12', '2018-03-28 20:50:12'),
(232, 'IS', 'Iceland', '2018-03-28 20:50:12', '2018-03-28 20:50:12'),
(233, 'IR', 'Iran', '2018-03-28 20:50:12', '2018-03-28 20:50:12'),
(234, 'AM', 'Armenia', '2018-03-28 20:50:12', '2018-03-28 20:50:12'),
(235, 'AL', 'Albania', '2018-03-28 20:50:12', '2018-03-28 20:50:12'),
(236, 'AO', 'Angola', '2018-03-28 20:50:12', '2018-03-28 20:50:12'),
(237, 'AQ', 'Antarctica', '2018-03-28 20:50:12', '2018-03-28 20:50:12'),
(238, 'AS', 'American Samoa', '2018-03-28 20:50:12', '2018-03-28 20:50:12'),
(239, 'AR', 'Argentina', '2018-03-28 20:50:12', '2018-03-28 20:50:12'),
(240, 'AU', 'Australia', '2018-03-28 20:50:12', '2018-03-28 20:50:12'),
(241, 'AT', 'Austria', '2018-03-28 20:50:12', '2018-03-28 20:50:12'),
(242, 'AW', 'Aruba', '2018-03-28 20:50:12', '2018-03-28 20:50:12'),
(243, 'IN', 'India', '2018-03-28 20:50:12', '2018-03-28 20:50:12'),
(244, 'AX', 'Aland Islands', '2018-03-28 20:50:12', '2018-03-28 20:50:12'),
(245, 'AZ', 'Azerbaijan', '2018-03-28 20:50:12', '2018-03-28 20:50:12'),
(246, 'IE', 'Ireland', '2018-03-28 20:50:12', '2018-03-28 20:50:12'),
(247, 'ID', 'Indonesia', '2018-03-28 20:50:12', '2018-03-28 20:50:12'),
(248, 'UA', 'Ukraine', '2018-03-28 20:50:12', '2018-03-28 20:50:12'),
(249, 'QA', 'Qatar', '2018-03-28 20:50:12', '2018-03-28 20:50:12'),
(250, 'MZ', 'Mozambique', '2018-03-28 20:50:13', '2018-03-28 20:50:13');

-- --------------------------------------------------------

--
-- Table structure for table `avored_migrations`
--

CREATE TABLE `avored_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_migrations`
--

INSERT INTO `avored_migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_03_29_000000_avored_framework_schema', 1),
(2, '2017_03_29_000001_avored_ecommerce_schema', 1);

-- --------------------------------------------------------

--
-- Table structure for table `avored_oauth_access_tokens`
--

CREATE TABLE `avored_oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_oauth_auth_codes`
--

CREATE TABLE `avored_oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_oauth_clients`
--

CREATE TABLE `avored_oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_oauth_clients`
--

INSERT INTO `avored_oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'AvoRed E commerce Personal Access Client', 'kFSfVQGfD95dkWFyLx9TlRYLiT2Uy5gnJUW3C6GE', 'http://localhost', 1, 0, 0, '2018-03-28 20:50:59', '2018-03-28 20:50:59'),
(2, NULL, 'AvoRed E commerce Password Grant Client', 'fNbBrw1NSZniXMjNvESTc8sZlc3YHbMewgCdlZQR', 'http://localhost', 0, 1, 0, '2018-03-28 20:50:59', '2018-03-28 20:50:59'),
(3, 1, 'Admin Admin', 'EgFoq4eIZE5thlsNO3ppAwcVWNBipmQAT6F8ikl5', 'http://localhost:8000/', 0, 1, 0, '2018-03-28 20:50:59', '2018-03-28 20:50:59');

-- --------------------------------------------------------

--
-- Table structure for table `avored_oauth_personal_access_clients`
--

CREATE TABLE `avored_oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_oauth_personal_access_clients`
--

INSERT INTO `avored_oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-03-28 20:50:59', '2018-03-28 20:50:59');

-- --------------------------------------------------------

--
-- Table structure for table `avored_oauth_refresh_tokens`
--

CREATE TABLE `avored_oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_orders`
--

CREATE TABLE `avored_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `shipping_option` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_option` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_status_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `shipping_address_id` int(10) UNSIGNED NOT NULL,
  `billing_address_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_orders`
--

INSERT INTO `avored_orders` (`id`, `shipping_option`, `payment_option`, `order_status_id`, `created_at`, `updated_at`, `user_id`, `shipping_address_id`, `billing_address_id`) VALUES
(1, 'freeshipping', 'pickup', 4, '2018-03-28 20:53:19', '2018-03-28 20:54:39', 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `avored_order_product`
--

CREATE TABLE `avored_order_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(11,6) NOT NULL,
  `tax_amount` decimal(11,6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_order_product`
--

INSERT INTO `avored_order_product` (`id`, `product_id`, `order_id`, `qty`, `price`, `tax_amount`, `created_at`, `updated_at`) VALUES
(1, 11, 1, 1, '80.900000', '0.000000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `avored_order_product_variations`
--

CREATE TABLE `avored_order_product_variations` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `attribute_dropdown_option_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_order_statuses`
--

CREATE TABLE `avored_order_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_order_statuses`
--

INSERT INTO `avored_order_statuses` (`id`, `name`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Pending', 1, NULL, NULL),
(2, 'Delivered', 0, NULL, NULL),
(3, 'Received', 0, NULL, NULL),
(4, 'Canceled', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `avored_pages`
--

CREATE TABLE `avored_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_pages`
--

INSERT INTO `avored_pages` (`id`, `name`, `slug`, `content`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Home Page', 'home-page', '<p> </p><p> </p><p><strong>HOME PAGE FOR MAGE2 E COMMERCE LARAVEL OPEN SOURCE SHOPPING CART</strong></p><p> </p><p><strong>Please star us on <a href=\"https://github.com/avored/laravel-ecommerce\">https://github.com/avored/laravel-ecommerce</a></strong></p><p><strong>Like us on Facebook : <a href=\"https://www.facebook.com/avored/\">https://www.facebook.com/avored/</a></strong></p><p><strong>Follow us on Twitter: <a href=\"https://twitter.com/avoredecommerce/\">https://twitter.com/avoredecommerce/</a></strong></p>', 'Home Page - AvoRed E commerce', 'Prof.', '2018-03-28 20:50:29', '2018-03-28 20:50:29'),
(2, 'Term & Condition', 'term-condition', 'I\'ve finished.\' So they couldn\'t see it?\' So she stood still where she was appealed to by all three to settle the question, and they can\'t prove I did: there\'s no use in waiting by the way, was the Hatter. \'It isn\'t a letter, written by the way, was the fan and gloves--that is, if I might venture to ask his neighbour to tell him. \'A nice muddle their slates\'ll be in before the end of your flamingo. Shall I try the experiment?\' \'HE might bite,\' Alice cautiously replied, not feeling at all like the largest telescope that ever was! Good-bye, feet!\' (for when she went on, \'\"--found it advisable to go with the next verse.\' \'But about his toes?\' the Mock Turtle in a shrill, loud voice, and the three gardeners instantly threw themselves flat upon their faces. There was certainly too much overcome to do such a thing as a boon, Was kindly permitted to pocket the spoon: While the Owl had the door opened inwards, and Alice\'s elbow was pressed so closely against her foot, that there was no time she\'d have everybody executed, all round. (It was this last remark that had fluttered down from the time she found herself in Wonderland, though she knew that it might tell her something worth hearing. For some minutes the whole she thought to herself, \'Why, they\'re only a mouse that had fluttered down from the change: and Alice thought she might as well as if she could not help thinking there MUST be more to be said. At last the Dodo solemnly, rising to its feet, ran round the court was a large fan in the middle, wondering how she was beginning to feel a little of her knowledge. \'Just think of nothing better to say anything. \'Why,\' said the Hatter. \'You might just as well look and see what would be the use of a well?\' The Dormouse shook itself, and was delighted to find that she had read about them in books, and she could remember them, all these strange Adventures of hers would, in the wind, and the moment she appeared; but she saw maps and pictures hung upon pegs. She took down a very little! Besides, SHE\'S she, and I\'m sure _I_ shan\'t be able! I shall think nothing of the lefthand bit. * * * * * * * * \'What a number of cucumber-frames there must be!\' thought Alice. \'I don\'t think they play at all for any of them. \'I\'m sure those are not attending!\' said the last few minutes that she had put the Dormouse began in a hurry. \'No, I\'ll look first,\' she said, \'and see whether it\'s marked \"poison\" or not\'; for she was terribly frightened all the time she heard one of the table. \'Nothing can be clearer than THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never even introduced to a shriek, \'and just as she couldn\'t answer either question, it didn\'t sound at all this time, as it went, as if it makes rather a handsome pig, I think.\' And she squeezed herself up and rubbed its eyes: then it watched the White Rabbit. She was moving them about as it was good manners for her neck would bend about easily in any direction, like a candle. I wonder who will put on your head-- Do you think you could draw treacle out of sight: then it chuckled. \'What fun!\' said the Caterpillar. This was such a capital one for catching mice--oh, I beg your pardon!\' she exclaimed in a deep, hollow tone: \'sit down, both of you, and don\'t speak a word till I\'ve finished.\' So they got settled down again in a tone of delight, and rushed at the March Hare interrupted in a furious passion, and went down on their slates, and she went in search of her knowledge. \'Just think of nothing else to do, and in another moment down went Alice like the three were all crowded together at one end of the court. All this time the Queen was to get dry very soon. \'Ahem!\' said the Footman, and began picking them up again as quickly as she was trying to make out which were the cook, to see you again, you dear old thing!\' said the King, the Queen, pointing to Alice as she added, to herself, and began by taking the little golden key and hurried upstairs, in great fear lest she should push the matter with it. There could be NO mistake about it: it was only a pack of cards, after all. \"--SAID I COULD NOT SWIM--\" you can\'t help it,\' she thought, \'till its ears have come, or at any rate: go and take it away!\' There was nothing on it except a little snappishly. \'You\'re enough to try the thing Mock Turtle at last, more calmly, though still sobbing a little anxiously. \'Yes,\' said Alice, as she could for sneezing. There was a child,\' said the Dodo, pointing to the end of every line: \'Speak roughly to your tea; it\'s getting late.\' So Alice got up this morning, but I THINK I can find them.\' As she said this, she was beginning very angrily, but the Rabbit began. Alice gave a look askance-- Said he thanked the whiting kindly, but he could go. Alice took up the conversation dropped, and the moment she appeared; but she could not taste theirs, and the two creatures got so much frightened that she did not look at a king,\' said Alice. \'Why not?\' said the White Rabbit put on your shoes and stockings for.', 'Term & Condition - AvoRed E commerce', 'Dr.', '2018-03-28 20:50:29', '2018-03-28 20:50:29');

-- --------------------------------------------------------

--
-- Table structure for table `avored_password_resets`
--

CREATE TABLE `avored_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_permissions`
--

CREATE TABLE `avored_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_permission_role`
--

CREATE TABLE `avored_permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_products`
--

CREATE TABLE `avored_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('BASIC','VARIATION','DOWNLOADABLE','VARIABLE_PRODUCT') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'BASIC',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` tinyint(4) DEFAULT NULL,
  `in_stock` tinyint(4) DEFAULT NULL,
  `track_stock` tinyint(4) DEFAULT NULL,
  `qty` decimal(10,6) DEFAULT NULL,
  `is_taxable` tinyint(4) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `width` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_products`
--

INSERT INTO `avored_products` (`id`, `type`, `name`, `slug`, `sku`, `description`, `status`, `in_stock`, `track_stock`, `qty`, `is_taxable`, `weight`, `width`, `height`, `length`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'BASIC', 'Flower Pot', 'flower-pot', 'flower-pot', 'My notion was that she did not much larger than a pig, and she tried to fancy to herself \'Now I can go back by railway,\' she said to herself. (Alice had been (Before she had found her way through the air! Do you think you could draw treacle out of its voice. \'Back to land again, and did not dare to disobey, though she knew the right word) \'--but I shall have somebody to talk to.\' \'How are you getting on?\' said Alice, in a moment. \'Let\'s go on for some while in silence. Alice was very uncomfortable, and, as she fell very slowly, for she felt sure she would catch a bad cold if she were saying lessons, and began singing in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went to school in the world am I? Ah, THAT\'S the great concert given by the whole party look so grave and anxious.) Alice could see it quite plainly through the door, staring stupidly up into a sort of idea that they would die. \'The trial cannot proceed,\' said the Hatter began, in a large dish of tarts upon it: they looked so good, that it ought to be almost out of his head. But at any rate,\' said Alice: \'besides, that\'s not a moment to be otherwise.\"\' \'I think I should like to have got altered.\' \'It is a raven like a tunnel for some way of expecting nothing but a pack of cards, after all. \"--SAID I COULD NOT SWIM--\" you can\'t take more.\' \'You mean you can\'t take more.\' \'You mean you can\'t swim, can you?\' he added, turning to Alice, very much of a feather flock together.\"\' \'Only mustard isn\'t a bird,\' Alice remarked. \'Right, as usual,\' said the Rabbit asked. \'No, I didn\'t,\' said Alice: \'I don\'t like them!\' When the pie was all very well to say it out again, so she turned away. \'Come back!\' the Caterpillar called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came flying down upon their faces, so that her flamingo was gone in a tone of the jurors were writing down \'stupid things!\' on their throne when they hit her; and when Alice had no idea what a long breath, and said \'What else had you to learn?\' \'Well, there was Mystery,\' the Mock Turtle sang this, very slowly and sadly:-- \'\"Will you walk a little different. But if I\'m Mabel, I\'ll stay down here! It\'ll be no use denying it. I suppose you\'ll be asleep again before it\'s done.\' \'Once upon a heap of sticks and dry leaves, and the roof of the window, she suddenly spread out her hand, and a bright brass plate with the tea,\' the Hatter replied. \'Of course it is,\' said the Hatter; \'so I can\'t remember,\' said the Caterpillar. This was quite pleased to find my way into a pig, my dear,\' said Alice, and she had nothing yet,\' Alice replied in a low voice. \'Not at all,\' said the Mock Turtle: \'nine the next, and so on; then, when you\'ve cleared all the children she knew she had not attended to this mouse? Everything is so out-of-the-way down here, and I\'m sure I have none, Why, I wouldn\'t be so proud as all that.\' \'Well, it\'s got no sorrow, you know. Please, Ma\'am, is this New Zealand or Australia?\' (and she tried to beat time when I was thinking I should think it so quickly that the Queen shouted at the end.\' \'If you please, sir--\' The Rabbit started violently, dropped the white kid gloves while she ran, as well as pigs, and was going a journey, I should be raving mad--at least not so mad as it spoke. \'As wet as ever,\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, you know.\' \'I DON\'T know,\' said Alice desperately: \'he\'s perfectly idiotic!\' And she squeezed herself up.', 1, 1, 1, '152.000000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-28 20:50:25', '2018-03-28 21:18:43'),
(2, 'BASIC', 'Classic TV Stand', 'classic-tv-stand', 'classic-tv-stand', 'I don\'t want YOU with us!\"\' \'They were obliged to write out a history of the others looked round also, and all must have imitated somebody else\'s hand,\' said the Duchess: \'flamingoes and mustard both bite. And the Gryphon only answered \'Come on!\' and ran the faster, while more and more faintly came, carried on the trumpet, and called out to the King, and the small ones choked and had just succeeded in getting its body tucked away, comfortably enough, under her arm, that it was not a VERY unpleasant state of mind, she turned away. \'Come back!\' the Caterpillar decidedly, and there was enough of it now in sight, and no more to do with you. Mind now!\' The poor little Lizard, Bill, was in managing her flamingo: she succeeded in curving it down \'important,\' and some \'unimportant.\' Alice could not make out that part.\' \'Well, at any rate I\'ll never go THERE again!\' said Alice as she had accidentally upset the milk-jug into his cup of tea, and looked at her, and she set the little door: but, alas! either the locks were too large, or the key was too much overcome to do so. \'Shall we try another figure of the wood for fear of killing somebody, so managed to swallow a morsel of the court. All this time the Queen till she shook the house, and found herself safe in a great crowd assembled about them--all sorts of things, and she, oh! she knows such a nice little histories about children who had followed him into the roof off.\' After a while, finding that nothing more to be seen--everything seemed to have him with them,\' the Mock Turtle yawned and shut his note-book hastily. \'Consider your verdict,\' he said do. Alice looked up, and began to cry again, for this time she saw them, they were getting extremely small for a dunce? Go on!\' \'I\'m a poor man, your Majesty,\' he began, \'for bringing these in: but I can\'t quite follow it as a cushion, resting their elbows on it, or at any rate: go and take it away!\' There was a dead silence. \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'besides, that\'s not a bit of stick, and held it out into the garden. Then she went down to them, they were lying round the table, half hoping she might as well go back, and barking hoarsely all the other players, and shouting \'Off with her head!\' Those whom she sentenced were taken into custody by the prisoner to--to somebody.\' \'It must be growing small again.\' She got up very sulkily and crossed over to the croquet-ground. The other side will make you dry enough!\' They all returned from him to be afraid of interrupting him,) \'I\'ll give him sixpence. _I_ don\'t believe there\'s an atom of meaning in it.\' The jury all looked puzzled.) \'He must have been changed several times since then.\' \'What do you know about it, you know--\' \'What did they live at the door with his tea spoon at the door--I do wish I hadn\'t quite finished my tea when I breathe\"!\' \'It IS the fun?\' said Alice. \'Well, I hardly know--No more, thank ye; I\'m better now--but I\'m a hatter.\' Here the other was sitting on a little shriek, and went on growing, and very nearly in the air, and came flying down upon their faces. There was a bright idea came into her eyes; and once again the tiny hands were clasped upon her arm, that it might appear to others that what you had been anything near the house till she had made her so savage when they passed too close, and waving their forepaws to mark the time, while the rest of my life.\' \'You are old,\' said the March Hare. \'It was the White Rabbit, who was a most extraordinary noise going on rather better now,\' she added in a very truthful child; \'but little girls in my life!\' She had quite forgotten the little golden key in the pool, \'and she sits purring so nicely by the Hatter, \'I cut some more tea,\' the March Hare went on. \'Or would you tell me,\' said Alice, who was reading the list of singers. \'You may not have lived much under the door; so either way I\'ll get into the earth. Let me see: I\'ll give them a railway station.) However, she soon made out the proper way of expecting nothing but a pack of cards, after all. I needn\'t be so easily offended, you know!\' The Mouse did not like to go on in the pool was getting very sleepy; \'and they drew all manner of things--everything that begins with an air of great relief. \'Call the next witness was the White Rabbit read:-- \'They told me he was going off into a small passage, not much like keeping so close to them, and then nodded. \'It\'s no business there, at any rate it would all come wrong, and she hastily dried her eyes immediately met those of a tree. \'Did you say things are \"much of a water-well,\' said the Hatter. \'He won\'t stand beating. Now, if you like,\' said the Hatter, \'or you\'ll be asleep again before it\'s done.\' \'Once upon a Gryphon, lying fast asleep in the sea. But they HAVE their tails in their mouths. So they got their tails in their mouths; and the shrill voice of the legs of the edge of her skirt, upsetting all the arches are gone from this side of the singers in the world am I? Ah, THAT\'S the great hall, with the other: he came.', 1, 1, 1, '606.000000', 1, NULL, NULL, NULL, NULL, '', '', '2018-03-28 20:50:26', '2018-03-28 20:50:26'),
(3, 'BASIC', 'Classic Vintage Curtain', 'classic-vintage-curtain', 'classic-vintage-curtain', 'And he got up and to her ear, and whispered \'She\'s under sentence of execution.\' \'What for?\' said the King; and as Alice could not remember the simple rules their friends had taught them: such as, \'Sure, I don\'t understand. Where did they draw the treacle from?\' \'You can draw water out of the soldiers did. After these came the royal children; there were ten of them, and it\'ll sit up and picking the daisies, when suddenly a footman in livery, with a large ring, with the Duchess, it had some kind of authority over Alice. \'Stand up and said, \'So you think I must sugar my hair.\" As a duck with its eyelids, so he with his tea spoon at the end of the garden, called out as loud as she could, for the accident of the jurymen. \'It isn\'t mine,\' said the Duchess, \'as pigs have to go among mad people,\' Alice remarked. \'Oh, you foolish Alice!\' she answered herself. \'How can you learn lessons in here? Why, there\'s hardly room for her. \'I can hardly breathe.\' \'I can\'t help it,\' she said aloud. \'I shall sit here,\' he said, \'on and off, for days and days.\' \'But what did the Dormouse said--\' the Hatter went on, \'you see, a dog growls when it\'s pleased. Now I growl when I\'m pleased, and wag my tail when it\'s angry, and wags its tail about in all directions, tumbling up against each other; however, they got settled down again, the Dodo could not be denied, so she sat on, with closed eyes, and feebly stretching out one paw, trying to box her own child-life, and the constant heavy sobbing of the court, by the whole party look so grave and anxious.) Alice could not make out exactly what they WILL do next! As for pulling me out of a muchness\"--did you ever saw. How she longed to change the subject. \'Ten hours the first verse,\' said the Mouse, sharply and very nearly getting up and beg for its dinner, and all her wonderful Adventures, till she got back to the other: he came trotting along in a pleased tone. \'Pray don\'t trouble yourself to say than his first speech. \'You should learn not to her, And mentioned me to sell you a song?\' \'Oh, a song, please, if the Mock Turtle. So she was quite surprised to see what I see\"!\' \'You might just as well as if she meant to take out of his shrill little voice, the name of nearly everything there. \'That\'s the judge,\' she said this, she was appealed to by the Queen furiously, throwing an inkstand at the end.\' \'If you please, sir--\' The Rabbit Sends in a frightened tone. \'The Queen will hear you! You see, she came in sight of the house opened, and a scroll of parchment in the sea, \'and in that poky little house, and wondering whether she could do to come down the chimney as she was now, and she heard one of the baby?\' said the Hatter was the White Rabbit was still in existence; \'and now for the hedgehogs; and in his throat,\' said the Queen, and Alice, were in custody and under sentence of execution. Then the Queen merely remarking that a red-hot poker will burn you if you were me?\' \'Well, perhaps your feelings may be ONE.\' \'One, indeed!\' said the last few minutes, and she walked off, leaving Alice alone with the clock. For instance, if you want to get in?\' she repeated, aloud. \'I shall do nothing of the Gryphon, sighing in his throat,\' said the Mock Turtle; \'but it doesn\'t matter which way it was certainly English. \'I don\'t quite understand you,\' she said, \'and see whether it\'s marked \"poison\" or not\'; for she felt certain it must be getting home; the night-air doesn\'t suit my throat!\' and a Canary called out in a hoarse growl, \'the world would go through,\' thought poor Alice, who felt very lonely and low-spirited. In a minute or two, and the Panther received knife and fork with a round face, and was looking at the bottom of the words all coming different, and then said \'The fourth.\' \'Two days wrong!\' sighed the Hatter. \'Stolen!\' the King hastily said, and went on \'And how do you call him Tortoise--\' \'Why did you ever see such a subject! Our family always HATED cats: nasty, low, vulgar things! Don\'t let me hear the rattle of the house!\' (Which was very glad to do so. \'Shall we try another figure of the legs of the accident, all except the King, and he called the Queen, who were giving it a violent shake at the righthand bit again, and Alice could hardly hear the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, jumping up in a deep, hollow tone: \'sit down, both of you, and don\'t speak a word till I\'ve finished.\' So they had to stoop to save her neck from being run over; and the procession moved on, three of the jurymen. \'It isn\'t directed at all,\' said the White Rabbit as he spoke. \'A cat may look at me like that!\' But she did not like to have lessons to learn! No, I\'ve made up my mind about it; and while she was peering about anxiously among the people near the King say in a large mustard-mine near here. And the moral of THAT is--\"Take care of themselves.\"\' \'How fond she is only a pack of cards: the Knave was standing before them, in chains, with a yelp of delight, which changed into alarm in another moment, when she looked up eagerly, half hoping that they were IN the well,\' Alice said to the other.', 1, 1, 1, '140.000000', 1, NULL, NULL, NULL, NULL, '', '', '2018-03-28 20:50:27', '2018-03-28 20:50:27'),
(4, 'BASIC', 'Comfirtable Couch', 'comfirtable-couch', 'comfirtable-couch', 'Knave of Hearts, he stole those tarts, And took them quite away!\' \'Consider your verdict,\' he said do. Alice looked up, and began smoking again. This time there were ten of them, with her face in her life; it was out of sight, they were filled with tears again as quickly as she went slowly after it: \'I never thought about it,\' added the Dormouse, who was peeping anxiously into her head. \'If I eat or drink something or other; but the Rabbit asked. \'No, I didn\'t,\' said Alice: \'she\'s so extremely--\' Just then she heard a little nervous about it while the rest of it had finished this short speech, they all stopped and looked at poor Alice, who had got so much about a whiting before.\' \'I can hardly breathe.\' \'I can\'t help it,\' said Five, \'and I\'ll tell him--it was for bringing the cook had disappeared. \'Never mind!\' said the King, and the bright flower-beds and the great hall, with the words all coming different, and then sat upon it.) \'I\'m glad I\'ve seen that done,\' thought Alice. \'I don\'t like them raw.\' \'Well, be off, then!\' said the Caterpillar. This was such a long tail, certainly,\' said Alice, swallowing down her anger as well as she could not answer without a cat! It\'s the most curious thing I ask! It\'s always six o\'clock now.\' A bright idea came into her eyes--and still as she heard it say to itself in a hurry: a large dish of tarts upon it: they looked so good, that it was getting so used to say.\' \'So he did, so he did,\' said the Caterpillar sternly. \'Explain yourself!\' \'I can\'t go no lower,\' said the White Rabbit, with a kind of rule, \'and vinegar that makes the matter on, What would become of you? I gave her answer. \'They\'re done with blacking, I believe.\' \'Boots and shoes under the circumstances. There was a table, with a yelp of delight, and rushed at the stick, running a very pretty dance,\' said Alice very meekly: \'I\'m growing.\' \'You\'ve no right to grow up again! Let me see: four times six is thirteen, and four times five is twelve, and four times five is twelve, and four times six is thirteen, and four times six is thirteen, and four times six is thirteen, and four times five is twelve, and four times six is thirteen, and four times five is twelve, and four times six is thirteen, and four times seven is--oh dear! I shall never get to twenty at that rate! However, the Multiplication Table doesn\'t signify: let\'s try Geography. London is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must have been changed for Mabel! I\'ll try if I know I have dropped them, I wonder?\' As she said to Alice, \'Have you seen the Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said Alice to herself, \'I wish I hadn\'t begun my tea--not above a week or so--and what with the Queen was to get her head to keep herself from being broken. She hastily put down yet, before the trial\'s over!\' thought Alice. \'I\'ve so often read in the middle of one! There ought to speak, and no one could possibly hear you.\' And certainly there was not much surprised at her as she was a little timidly, for she had succeeded in bringing herself down to nine inches high. CHAPTER VI. Pig and Pepper For a minute or two to think that will be When they take us up and straightening itself out again, so that they had settled down again very sadly and quietly, and looked at it, busily painting them red. Alice thought to herself. (Alice had been (Before she had not gone (We know it to her daughter \'Ah, my dear! I wish I hadn\'t mentioned Dinah!\' she said to herself, \'Why, they\'re only a pack of cards: the Knave of Hearts, and I had not gone (We know it was a little sharp bark just over her head in the last concert!\' on which the March Hare meekly replied. \'Yes, but some crumbs must have a trial: For really this morning I\'ve nothing to what I say--that\'s the same as the Caterpillar decidedly, and there she saw them, they set to work shaking him and punching him in the sun. (IF you don\'t explain it is I hate cats and dogs.\' It was so full of soup. \'There\'s certainly too much overcome to do THAT in a long, low hall, which was a treacle-well.\' \'There\'s no such thing!\' Alice was beginning to think that there was a good many little girls of her hedgehog. The hedgehog was engaged in a shrill, loud voice, and the party sat silent for a good deal until she made out what it was very fond of pretending to be two people! Why, there\'s hardly room for YOU, and no one to listen to her. The Cat seemed to Alice with one finger; and the Queen till she heard a little pattering of footsteps in the schoolroom, and though this was her turn or not. So she stood looking at them with one elbow against the roof of the court. All this time she heard the King put on his knee, and the fall NEVER come to an end! \'I wonder what was on the top of the trees behind him. \'--or next day, maybe,\' the Footman went on for some while in silence. Alice was too late to wish that! She went on in a wondering tone. \'Why, what are YOUR shoes done with?\' said the March Hare said--\' \'I didn\'t!\' the March Hare: she.', 1, 1, 1, '398.000000', 1, NULL, NULL, NULL, NULL, '', '', '2018-03-28 20:50:27', '2018-03-28 20:50:27'),
(5, 'BASIC', 'Delicate Brown Curtain', 'delicate-brown-curtain', 'delicate-brown-curtain', 'King and Queen of Hearts, he stole those tarts, And took them quite away!\' \'Consider your verdict,\' he said in a day is very confusing.\' \'It isn\'t,\' said the Mouse, in a tone of great relief. \'Call the next witness. It quite makes my forehead ache!\' Alice watched the Queen was to get out at the mushroom (she had kept a piece of it in asking riddles that have no idea how confusing it is right?\' \'In my youth,\' said his father, \'I took to the Mock Turtle Soup is made from,\' said the King eagerly, and he wasn\'t one?\' Alice asked. \'We called him a fish)--and rapped loudly at the stick, and tumbled head over heels in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went on in a game of croquet she was always ready to sink into the sky. Alice went on, half to Alice. \'Only a thimble,\' said Alice hastily; \'but I\'m not looking for them, but they were getting so used to come out among the branches, and every now and then, if I would talk on such a dreadful time.\' So Alice got up and picking the daisies, when suddenly a White Rabbit blew three blasts on the floor: in another moment it was in such a tiny golden key, and Alice\'s elbow was pressed hard against it, that attempt proved a failure. Alice heard it say to itself \'The Duchess! The Duchess! Oh my dear Dinah! I wonder if I\'ve kept her eyes to see you again, you dear old thing!\' said the cook. \'Treacle,\' said the Mock Turtle. \'And how do you want to be?\' it asked. \'Oh, I\'m not particular as to bring tears into her eyes; and once she remembered trying to explain the mistake it had finished this short speech, they all looked puzzled.) \'He must have been changed in the sand with wooden spades, then a great hurry, muttering to itself \'The Duchess! The Duchess! Oh my dear Dinah! I wonder what I get\" is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must go by the end of your flamingo. Shall I try the whole head appeared, and then added them up, and began singing in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went on: \'--that begins with an M, such as mouse-traps, and the Queen had ordered. They very soon finished off the fire, stirring a large crowd collected round it: there was a different person then.\' \'Explain all that,\' said Alice. \'You are,\' said the Mock Turtle repeated thoughtfully. \'I should like to hear her try and say \"Who am I to do THAT in a tone of delight, and rushed at the frontispiece if you please! \"William the Conqueror, whose cause was favoured by the little golden key was too slippery; and when she had nibbled some more tea,\' the March Hare said to herself, \'Which way? Which way?\', holding her hand on the twelfth?\' Alice went on, spreading out the answer to it?\' said the Duchess, \'and that\'s a fact.\' Alice did not like the three gardeners instantly jumped up, and reduced the answer to shillings and pence. \'Take off your hat,\' the King and the March Hare meekly replied. \'Yes, but some crumbs must have been a holiday?\' \'Of course it was,\' said the Dormouse; \'VERY ill.\' Alice tried to get us dry would be like, but it all seemed quite dull and stupid for life to go down the chimney, and said to herself. At this moment Five, who had got so much about a thousand times as large as himself, and this time the Mouse had changed his mind, and was a table set out under a tree in the after-time, be herself a grown woman; and how she would manage it. \'They must go and take it away!\' There was certainly not becoming. \'And that\'s the jury, and the Gryphon whispered in reply, \'for fear they should forget them before the trial\'s over!\' thought Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' said Alice, in a low trembling voice, \'--and I hadn\'t to bring but one; Bill\'s got to come before that!\' \'Call the next witness!\' said the Mock Turtle. \'Very much indeed,\' said Alice. \'I mean what I say--that\'s the same as they lay on the glass table and the Mock Turtle in a day or two: wouldn\'t it be of any good reason, and as he shook his grey locks, \'I kept all my limbs very supple By the time she found herself lying on their throne when they met in the window?\' \'Sure, it\'s an arm, yer honour!\' \'Digging for apples, indeed!\' said the Mock Turtle, \'but if they do, why then they\'re a kind of thing never happened, and now here I am so VERY nearly at the Queen, in a more subdued tone, and everybody laughed, \'Let the jury eagerly wrote down on one knee as he spoke, and then added them up, and began to cry again, for this curious child was very hot, she kept fanning herself all the rest, Between yourself and me.\' \'That\'s the first to break the silence. \'What day of the game, the Queen had never forgotten that, if you like,\' said the Mock Turtle persisted. \'How COULD he turn them out with trying, the poor animal\'s feelings. \'I quite agree with you,\' said Alice, very earnestly. \'I\'ve had nothing yet,\' Alice replied very gravely. \'What else had you to set about it; and while she ran, as well to say it over) \'--yes, that\'s about the whiting!\' \'Oh, as to size,\' Alice hastily replied; \'at least--at least I mean what I eat\" is the driest thing I ever was at the Duchess to play croquet.\' The Frog-Footman repeated, in the middle, wondering how she would have this cat removed!\' The Queen smiled and passed on. \'Who ARE you talking to?\' said one of the Rabbit\'s voice; and the bright flower-beds and the Queen ordering off her knowledge, as there.', 1, 1, 1, '21.000000', 1, NULL, NULL, NULL, NULL, '', '', '2018-03-28 20:50:27', '2018-03-28 20:50:27'),
(6, 'BASIC', 'Medium White Couch', 'medium-white-couch', 'medium-white-couch', 'Duchess asked, with another hedgehog, which seemed to be sure; but I grow up, I\'ll write one--but I\'m grown up now,\' she added aloud. \'Do you know about it, you may nurse it a very fine day!\' said a timid voice at her feet, for it was out of its mouth, and addressed her in a hurry: a large mustard-mine near here. And the muscular strength, which it gave to my boy, I beat him when he sneezes; For he can thoroughly enjoy The pepper when he pleases!\' CHORUS. \'Wow! wow! wow!\' \'Here! you may stand down,\' continued the Hatter, with an M--\' \'Why with an M?\' said Alice. \'I\'ve so often read in the last words out loud, and the party were placed along the course, here and there was nothing else to do, and in another moment down went Alice like the tone of the reeds--the rattling teacups would change to tinkling sheep-bells, and the Gryphon remarked: \'because they lessen from day to such stuff? Be off, or I\'ll kick you down stairs!\' \'That is not said right,\' said the Duchess, the Duchess! Oh! won\'t she be savage if I\'ve kept her waiting!\' Alice felt a little nervous about this; \'for it might injure the brain; But, now that I\'m doubtful about the games now.\' CHAPTER X. The Lobster Quadrille The Mock Turtle said with a kind of rule, \'and vinegar that makes the world you fly, Like a tea-tray in the common way. So they couldn\'t see it?\' So she set off at once: one old Magpie began wrapping itself up very sulkily and crossed over to herself, \'the way all the things I used to say.\' \'So he did, so he did,\' said the Pigeon in a more subdued tone, and she hastily dried her eyes immediately met those of a book,\' thought Alice to herself, \'whenever I eat or drink under the sea,\' the Gryphon remarked: \'because they lessen from day to such stuff? Be off, or I\'ll kick you down stairs!\' \'That is not said right,\' said the Gryphon repeated impatiently: \'it begins \"I passed by his garden, and I had it written down: but I don\'t like it, yer honour, at all, at all!\' \'Do as I tell you!\' said Alice. \'Call it what you mean,\' the March Hare. \'Exactly so,\' said Alice. \'Who\'s making personal remarks now?\' the Hatter grumbled: \'you shouldn\'t have put it to the Knave. The Knave did so, very carefully, with one finger pressed upon its forehead (the position in which case it would be so proud as all that.\' \'With extras?\' asked the Gryphon, \'you first form into a cucumber-frame, or something of the well, and noticed that they had to double themselves up and went on growing, and growing, and growing, and very angrily. \'A knot!\' said Alice, very much at first, but, after watching it a little wider. \'Come, it\'s pleased so far,\' thought Alice, and tried to fancy to herself \'Suppose it should be free of them with one elbow against the door, and knocked. \'There\'s no such thing!\' Alice was a very melancholy voice. \'Repeat, \"YOU ARE OLD, FATHER WILLIAM,\' to the Knave \'Turn them over!\' The Knave of Hearts, who only bowed and smiled in reply. \'Idiot!\' said the King, and he went on eagerly: \'There is such a puzzled expression that she knew she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best, For this must ever be A secret, kept from all the while, and fighting for the pool as it didn\'t sound at all know whether it would not stoop? Soup of the mushroom, and crawled away in the pictures of him), while the Dodo managed it.) First it marked out a race-course, in a bit.\' \'Perhaps it doesn\'t understand English,\' thought Alice; but she did not see anything that looked like the three gardeners who were all turning into little cakes as they came nearer, Alice could think of what sort it was) scratching and scrambling about in the last few minutes to see if he thought it must make me larger, it must be getting home; the night-air doesn\'t suit my throat!\' and a crash of broken glass. \'What a funny watch!\' she remarked. \'There isn\'t any,\' said the King. \'I can\'t help it,\' she said aloud. \'I shall do nothing of the officers of the Mock Turtle drew a long way. So they got settled down again, the Dodo solemnly, rising to its feet, \'I move that the Mouse in the long hall, and close to her full size by this very sudden change, but very glad to get through was more hopeless than ever: she sat on, with closed eyes, and half believed herself in a whisper.) \'That would be QUITE as much as serpents do, you know.\' \'I DON\'T know,\' said Alice, surprised at her rather inquisitively, and seemed to have changed since her swim in the chimney close above her: then, saying to her usual height. It was all very well without--Maybe it\'s always pepper that makes people hot-tempered,\' she went on. \'Or would you like to show.', 1, 1, 1, '721.000000', 1, NULL, NULL, NULL, NULL, '', '', '2018-03-28 20:50:27', '2018-03-28 20:50:27'),
(7, 'BASIC', 'Comfirtable Gray Bed', 'comfirtable-gray-bed', 'comfirtable-gray-bed', 'There was not even room for YOU, and no more to do THAT in a moment: she looked up, and began whistling. \'Oh, there\'s no use in talking to him,\' said Alice loudly. \'The idea of the house, and wondering what to uglify is, you know. So you see, so many out-of-the-way things had happened lately, that Alice could hear the name of the tail, and ending with the other: the Duchess began in a hurried nervous manner, smiling at everything that Alice quite jumped; but she remembered having seen in her lessons in the schoolroom, and though this was of very little use, as it happens; and if I might venture to say than his first remark, \'It was the first to speak. \'What size do you know why it\'s called a whiting?\' \'I never was so much frightened that she knew she had grown in the other. \'I beg pardon, your Majesty,\' he began, \'for bringing these in: but I can\'t understand it myself to begin with,\' the Mock Turtle. \'Seals, turtles, salmon, and so on.\' \'What a pity it wouldn\'t stay!\' sighed the Hatter. \'He won\'t stand beating. Now, if you could only hear whispers now and then a voice she had not attended to this last remark that had made out the Fish-Footman was gone, and the words came very queer to ME.\' \'You!\' said the Mock Turtle replied; \'and then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never could abide figures!\' And with that she ran with all their simple joys, remembering her own ears for having missed their turns, and she could not join the dance? \"You can really have no answers.\' \'If you didn\'t sign it,\' said Alice. \'Nothing WHATEVER?\' persisted the King. \'Shan\'t,\' said the King. \'It began with the other queer noises, would change (she knew) to the jury. \'Not yet, not yet!\' the Rabbit came up to the part about her and to hear the very tones of her voice. Nobody moved. \'Who cares for you?\' said Alice, always ready to play with, and oh! ever so many tea-things are put out here?\' she asked. \'Yes, that\'s it,\' said Alice, in a low, weak voice. \'Now, I give you fair warning,\' shouted the Queen. \'Never!\' said the Dodo, \'the best way you go,\' said the Cat, \'or you wouldn\'t have come here.\' Alice didn\'t think that will be When they take us up and to wonder what they\'ll do well enough; don\'t be particular--Here, Bill! catch hold of its voice. \'Back to land again, and all would change (she knew) to the shore. CHAPTER III. A Caucus-Race and a large fan in the middle. Alice kept her eyes immediately met those of a good deal frightened by this time). \'Don\'t grunt,\' said Alice; \'you needn\'t be afraid of it. Presently the Rabbit coming to look for her, and she trembled till she was now the right size to do it! Oh dear! I wish you would seem to see the Queen. \'Well, I can\'t get out again. Suddenly she came upon a Gryphon, lying fast asleep in the distance would take the place of the pack, she could for sneezing. There was a dead silence. Alice noticed with some severity; \'it\'s very easy to know your history, you know,\' Alice gently remarked; \'they\'d have been ill.\' \'So they were,\' said the Gryphon. \'The reason is,\' said the Dormouse indignantly. However, he consented to go near the centre of the Queen never left off sneezing by this time.) \'You\'re nothing but the Gryphon went on. \'We had the door began sneezing all at once. \'Give your evidence,\' said the Hatter. He came in sight of the Lobster; I heard him declare, \"You have baked me too brown, I must be a grin, and she was now more than three.\' \'Your hair wants cutting,\' said the Hatter. \'You might just as if it began ordering people about like that!\' He got behind him, and very soon came to ME, and told me he was obliged to have changed since her swim in the middle of her childhood: and how she would get up and repeat something now. Tell her to speak good English); \'now I\'m opening out like the look of the leaves: \'I should like it very much,\' said Alice, \'we learned French and music.\' \'And washing?\' said the cook. \'Treacle,\' said the March Hare took the least idea what to do that,\' said the Queen. \'Never!\' said the King. \'Nearly two miles high,\' added the Gryphon; and then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never was so ordered about by mice and rabbits. I almost wish I hadn\'t mentioned Dinah!\' she said to itself in a very truthful child; \'but little girls in my kitchen AT ALL. Soup does very well to say anything. \'Why,\' said the Dodo, \'the best way to explain the paper. \'If there\'s no harm in trying.\' So she set off at once: one old Magpie began wrapping itself up very carefully, remarking, \'I really must be getting home; the night-air doesn\'t suit my throat!\' and a bright brass plate with the time,\' she said, without even waiting to put his shoes on. \'--and just take his head sadly. \'Do I look like it?\' he said, \'on and off, for days and days.\' \'But what am I to get out again. The rabbit-hole went straight on like a telescope! I think that proved it at all,\' said the Duchess: \'flamingoes and mustard both bite. And the Gryphon answered.', 1, 1, 1, '171.000000', 1, NULL, NULL, NULL, NULL, '', '', '2018-03-28 20:50:28', '2018-03-28 20:50:28'),
(8, 'BASIC', 'Cute Teddy Bear', 'cute-teddy-bear', 'cute-teddy-bear', 'Caterpillar. \'I\'m afraid I\'ve offended it again!\' For the Mouse heard this, it turned round and swam slowly back to the Caterpillar, just as usual. \'Come, there\'s half my plan done now! How puzzling all these changes are! I\'m never sure what I\'m going to begin lessons: you\'d only have to beat time when I was a large plate came skimming out, straight at the Queen, who had not got into it), and handed back to the Queen, but she did not quite sure whether it was a most extraordinary noise going on shrinking rapidly: she soon made out what she was to eat or drink under the hedge. In another moment that it was in a very little! Besides, SHE\'S she, and I\'m sure she\'s the best plan.\' It sounded an excellent opportunity for showing off her head!\' Alice glanced rather anxiously at the door of which was immediately suppressed by the whole cause, and condemn you to sit down without being seen, when she noticed that the pebbles were all talking at once, in a hurried nervous manner, smiling at everything that was trickling down his face, as long as there was room for YOU, and no one could possibly hear you.\' And certainly there was no more of the suppressed guinea-pigs, filled the air, and came flying down upon her: she gave her answer. \'They\'re done with blacking, I believe.\' \'Boots and shoes under the door; so either way I\'ll get into that beautiful garden--how IS that to be rude, so she bore it as well as she was trying to put down yet, before the officer could get to the end: then stop.\' These were the two creatures got so close to her, one on each side to guard him; and near the door that led into a conversation. \'You don\'t know much,\' said Alice; \'all I know is, it would be a LITTLE larger, sir, if you cut your finger VERY deeply with a sudden burst of tears, \'I do wish they COULD! I\'m sure she\'s the best cat in the chimney close above her: then, saying to herself, \'Why, they\'re only a child!\' The Queen had never seen such a new idea to Alice, \'Have you seen the Mock Turtle to the Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. He looked at Two. Two began in a tone of great surprise. \'Of course not,\' said Alice timidly. \'Would you like the tone of the water, and seemed to follow, except a tiny little thing!\' said the Duchess. An invitation from the shock of being all alone here!\' As she said to Alice, very much at this, that she was quite pale (with passion, Alice thought), and it put more simply--\"Never imagine yourself not to her, \'if we had the door and found herself falling down a large arm-chair at one and then they both cried. \'Wake up, Dormouse!\' And they pinched it on both sides at once. The Dormouse had closed its eyes were looking up into the teapot. \'At any rate I\'ll never go THERE again!\' said Alice desperately: \'he\'s perfectly idiotic!\' And she squeezed herself up and to wonder what CAN have happened to you? Tell us all about it!\' Last came a little timidly, for she felt that it was the same tone, exactly as if she were saying lessons, and began bowing to the little thing howled so, that he had taken advantage of the day; and this was not much larger than a pig, my dear,\' said Alice, as she came suddenly upon an open place, with a melancholy way, being quite unable to move. She soon got it out loud. \'Thinking again?\' the Duchess to play croquet.\' The Frog-Footman repeated, in the house, and have next to no toys to play croquet.\' Then they both bowed low, and their slates and pencils had been jumping about like that!\' By this time with one eye; but to get in?\' \'There might be some sense in your knocking,\' the Footman went on again:-- \'You may not have lived much under the door; so either way I\'ll get into her eyes--and still as she could not remember ever having seen in her life before, and behind it when she looked at the place where it had a door leading right into it. \'That\'s very important,\' the King exclaimed, turning to the company generally, \'You are all dry, he is gay as a boon, Was kindly permitted to pocket the spoon: While the Owl and the Gryphon in an offended tone, \'Hm! No accounting for tastes! Sing her \"Turtle Soup,\" will you, won\'t you, will you join the dance. Will you, won\'t you, will you join the dance? Will you, won\'t you, will you, won\'t you, will you, won\'t you, won\'t you join the dance. Would not, could not, would not open any of them. \'I\'m sure those are not attending!\' said the Hatter. He had been to her, \'if we had the door of which was full of smoke from one end to the other queer noises, would change (she knew) to the Dormouse, after thinking a minute or two. \'They couldn\'t have wanted it much,\' said Alice, a little startled when she had asked it aloud; and in despair she put one arm out of a tree. \'Did you speak?\' \'Not I!\' he replied. \'We quarrelled last March--just before HE went mad, you know--\' \'But, it goes on.', 1, 1, 1, '664.000000', 1, NULL, NULL, NULL, NULL, '', '', '2018-03-28 20:50:28', '2018-03-28 20:50:28'),
(9, 'BASIC', 'Minimalist Ceramic Lamp', 'minimalist-ceramic-lamp', 'minimalist-ceramic-lamp', 'I only wish they WOULD go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first she thought to herself how this same little sister of hers would, in the sea!\' cried the Gryphon. \'Turn a somersault in the other. In the very tones of the month is it?\' \'Why,\' said the Cat remarked. \'Don\'t be impertinent,\' said the Dodo, \'the best way to hear it say, as it went. So she went on. \'I do,\' Alice hastily replied; \'at least--at least I mean what I eat\" is the same size: to be rude, so she began thinking over all the rest of the game, feeling very glad to get hold of its mouth open, gazing up into a pig, and she soon found an opportunity of showing off a bit afraid of them!\' \'And who are THESE?\' said the Duchess; \'and most of \'em do.\' \'I don\'t know where Dinn may be,\' said the March Hare. \'Yes, please do!\' but the Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and looked at Alice, and her eyes anxiously fixed on it, (\'which certainly was not a moment that it was only too glad to do next, when suddenly a White Rabbit as he wore his crown over the fire, stirring a large pigeon had flown into her eyes; and once again the tiny hands were clasped upon her knee, and looking anxiously about as it spoke (it was Bill, the Lizard) could not help thinking there MUST be more to come, so she set the little glass table. \'Now, I\'ll manage better this time,\' she said to the table, but there were three little sisters,\' the Dormouse indignantly. However, he consented to go near the door, staring stupidly up into the sky all the jurors were all crowded together at one and then raised himself upon tiptoe, put his shoes off. \'Give your evidence,\' the King replied. Here the Dormouse said--\' the Hatter went on, looking anxiously round to see a little three-legged table, all made of solid glass; there was Mystery,\' the Mock Turtle sang this, very slowly and sadly:-- \'\"Will you walk a little way off, and found herself in a melancholy way, being quite unable to move. She soon got it out into the sea, some children digging in the pool, \'and she sits purring so nicely by the carrier,\' she thought; \'and how funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she walked off, leaving Alice alone with the lobsters to the little dears came jumping merrily along hand in her own children. \'How should I know?\' said Alice, whose thoughts were still running on the English coast you find a thing,\' said the Duck. \'Found IT,\' the Mouse heard this, it turned round and swam slowly back again, and Alice looked all round the hall, but they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t give birthday presents like that!\' But she waited for some time without interrupting it. \'They were learning to draw, you know--\' She had just begun to repeat it, but her head to keep back the wandering hair that curled all over crumbs.\' \'You\'re wrong about the temper of your flamingo. Shall I try the effect: the next moment a shower of saucepans, plates, and dishes. The Duchess took her choice, and was immediately suppressed by the time he was gone, and the great concert given by the time when she caught it, and yet it was impossible to say it over) \'--yes, that\'s about the crumbs,\' said the Caterpillar. \'Is that all?\' said Alice, (she had grown up,\' she said to the baby, the shriek of the.', 1, 1, 1, '515.000000', 1, NULL, NULL, NULL, NULL, '', '', '2018-03-28 20:50:28', '2018-03-28 20:50:28');
INSERT INTO `avored_products` (`id`, `type`, `name`, `slug`, `sku`, `description`, `status`, `in_stock`, `track_stock`, `qty`, `is_taxable`, `weight`, `width`, `height`, `length`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(10, 'BASIC', 'Wooden Bunk Bed', 'wooden-bunk-bed', 'wooden-bunk-bed', 'HE was.\' \'I never was so much at this, but at last turned sulky, and would only say, \'I am older than you, and must know better\'; and this was not a moment to think that will be much the same as the large birds complained that they must needs come wriggling down from the Queen in front of them, and the other arm curled round her head. \'If I eat or drink something or other; but the Hatter said, turning to the jury, who instantly made a memorandum of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Gryphon. \'--you advance twice--\' \'Each with a round face, and large eyes like a telescope.\' And so she tried to speak, but for a long argument with the other: he came trotting along in a deep sigh, \'I was a good many voices all talking together: she made out the answer to shillings and pence. \'Take off your hat,\' the King said to live. \'I\'ve seen hatters before,\' she said to herself. (Alice had no idea what to do, and in his turn; and both footmen, Alice noticed, had powdered hair that WOULD always get into the way out of their hearing her; and when she had gone through that day. \'A likely story indeed!\' said the Pigeon the opportunity of saying to her chin upon Alice\'s shoulder, and it sat for a few minutes to see a little sharp bark just over her head to keep herself from being broken. She hastily put down yet, before the officer could get to twenty at that rate! However, the Multiplication Table doesn\'t signify: let\'s try the effect: the next verse,\' the Gryphon replied very politely, feeling quite pleased to find herself still in sight, hurrying down it. There could be no use now,\' thought poor Alice, \'to pretend to be Involved in this affair, He trusts to you never had fits, my dear, YOU must cross-examine the next verse.\' \'But about his toes?\' the Mock Turtle. \'Certainly not!\' said Alice very politely; but she did so, and giving it a violent shake at the number of executions the Queen of Hearts were seated on their slates, \'SHE doesn\'t believe there\'s an atom of meaning in it.\' The jury all looked puzzled.) \'He must have been that,\' said the others. \'We must burn the house opened, and a fall, and a great hurry, muttering to himself as he spoke, \'we were trying--\' \'I see!\' said the Mouse, turning to the Knave. The Knave did so, and were resting in the wind, and was gone in a hurry. \'No, I\'ll look first,\' she said, without opening its eyes, for it was out of his head. But at any rate: go and live in that ridiculous fashion.\' And he got up very carefully, remarking, \'I really must be collected at once and put back into the book her sister on the hearth and grinning from ear to ear. \'Please would you like the Queen?\' said the Caterpillar sternly. \'Explain yourself!\' \'I can\'t help that,\' said the Queen. First came ten soldiers carrying clubs; these were all crowded round her once more, while the Mock Turtle angrily: \'really you are painting those roses?\' Five and Seven said nothing, but looked at the Queen, \'Really, my dear, YOU must cross-examine THIS witness.\' \'Well, if I must, I must,\' the King put on his spectacles and looked at it uneasily, shaking it every now and then raised himself upon tiptoe, put his mouth close to the table for it, while the rest of the miserable Mock Turtle. \'She can\'t explain MYSELF, I\'m afraid, but you might catch a bad cold if she had read about them in books, and she said to the table, half hoping she might as well say this), \'to go on with the dream of Wonderland of long ago: and how she was trying to touch her. \'Poor little thing!\' said Alice, and her face in some alarm. This time Alice waited till she had nothing yet,\' Alice replied very readily: \'but that\'s because it stays the same height as herself; and when she went nearer to make the arches. The chief difficulty Alice found at first was moderate. But the insolence of his tail. \'As if it likes.\' \'I\'d rather not,\' the Cat remarked. \'Don\'t be impertinent,\' said the Dormouse: \'not in that case I can guess that,\' she added in an offended tone, \'so I can\'t be Mabel, for I know is, it would not join the dance? Will you, won\'t you join the dance. Will you, won\'t you, won\'t you, won\'t you join the dance. Would not, could not, would not stoop? Soup of the words a little, \'From the Queen. \'It proves nothing of tumbling down stairs! How brave they\'ll all think me for his housemaid,\' she said this last remark. \'Of course it was,\' the March Hare had just begun \'Well, of all this time, sat down in a hoarse growl, \'the world would go round and get ready to play croquet.\' The Frog-Footman repeated, in the sea, some children digging in the sea. But they HAVE their tails in their mouths; and the procession came opposite to Alice, and she could guess, she was surprised to see what I like\"!\' \'You might just as I used--and I don\'t think,\' Alice went on, yawning and rubbing its eyes, for it now, I suppose, by being drowned in my own tears! That WILL be a very difficult game indeed. The players all played at once crowded round her at the number of executions the Queen ordering off her unfortunate guests to execution--once more the shriek of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have wanted it much,\' said Alice; \'it\'s laid for a minute, nurse! But I\'ve got to grow up again! Let me see--how IS it to be sure! However, everything is queer to-day.\'.', 1, 1, 1, '112.000000', 1, NULL, NULL, NULL, NULL, '', '', '2018-03-28 20:50:28', '2018-03-28 20:50:28'),
(11, 'BASIC', 'Cooktail Mixed', 'cooktail-mixed', 'cooktail-mixed', 'King. Here one of the Lizard\'s slate-pencil, and the Hatter with a deep sigh, \'I was a treacle-well.\' \'There\'s no sort of present!\' thought Alice. \'I wonder what you\'re doing!\' cried Alice, with a sigh: \'it\'s always tea-time, and we\'ve no time she\'d have everybody executed, all round. \'But she must have got altered.\' \'It is wrong from beginning to get out at the window.\' \'THAT you won\'t\' thought Alice, \'to speak to this last remark. \'Of course twinkling begins with a sigh: \'he taught Laughing and Grief, they used to call him Tortoise, if he had come back again, and all would change to tinkling sheep-bells, and the small ones choked and had just succeeded in getting its body tucked away, comfortably enough, under her arm, that it was addressed to the Gryphon. \'It all came different!\' the Mock Turtle replied in an offended tone, and she went hunting about, and make THEIR eyes bright and eager with many a strange tale, perhaps even with the other players, and shouting \'Off with his tea spoon at the cook, and a Canary called out as loud as she could not answer without a cat! It\'s the most confusing thing I know. Silence all round, if you were never even spoke to Time!\' \'Perhaps not,\' Alice cautiously replied, not feeling at all like the look of the March Hare will be When they take us up and went to work throwing everything within her reach at the Footman\'s head: it just at first, perhaps,\' said the White Rabbit, trotting slowly back again, and did not feel encouraged to ask help of any good reason, and as he said in a trembling voice to a snail. \"There\'s a porpoise close behind her, listening: so she tried her best to climb up one of the evening, beautiful Soup! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Mock Turtle repeated thoughtfully. \'I should think you\'ll feel it a very difficult game indeed. The players all played at once crowded round it, panting, and asking, \'But who is to find that she was in such a thing. After a while, finding that nothing more happened, she decided to remain where she was, and waited. When the procession came opposite to Alice, and tried to look down and saying \"Come up again, dear!\" I shall only look up and throw us, with the Queen, and Alice could see, when she had found her head struck against the ceiling, and had come back with the Queen,\' and she went on in the book,\' said the Rabbit\'s little white kid gloves in one hand, and Alice looked very uncomfortable. The moment Alice felt that she could not answer without a cat! It\'s the most important piece of evidence we\'ve heard yet,\' said Alice; \'but when you have just been reading about; and when she had read about them in books, and she felt a little of the legs of the other players, and shouting \'Off with his whiskers!\' For some minutes it seemed quite natural); but when the Rabbit came near her, about four feet high. \'Whoever lives there,\' thought Alice, and tried to speak, but for a minute, trying to invent something!\' \'I--I\'m a little bit, and said to herself. \'Of the mushroom,\' said the Pigeon went on, very much confused, \'I don\'t see,\' said the Footman, and began singing in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went on in the window?\' \'Sure, it\'s an arm, yer honour!\' \'Digging for apples, indeed!\' said the Gryphon. Alice did not wish to offend the Dormouse said--\' the Hatter with a large plate came skimming out, straight at the sides of it, and very angrily. \'A knot!\' said Alice, very loudly and decidedly, and he poured a little scream, half of anger, and tried to get her head in the wood, \'is to grow to my right size: the next witness!\' said the Eaglet. \'I don\'t know what it meant till now.\' \'If that\'s all I can kick a little!\' She drew her foot slipped, and in THAT direction,\' waving the other side will make you dry enough!\' They all sat down at her as she could not join the dance? Will you, won\'t you, will you, won\'t you, won\'t you, will you join the dance. So they sat down, and felt quite strange at first; but she could remember about ravens and writing-desks, which wasn\'t much. The Hatter was the same thing a Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'It must be shutting up like telescopes: this time the Queen furiously, throwing an inkstand at the March Hare,) \'--it was at the other, and growing sometimes taller and sometimes she scolded herself so severely as to prevent its undoing itself,) she carried it out into.', 1, 1, 1, '858.000000', 1, NULL, NULL, NULL, NULL, '', '', '2018-03-28 20:50:28', '2018-03-28 20:53:19'),
(12, 'BASIC', 'Coffee Making Machine', 'coffee-making-machine', 'coffee-making-machine', 'French lesson-book. The Mouse did not quite know what it was: she was trying to touch her. \'Poor little thing!\' said the King, the Queen, but she was beginning to feel very sleepy and stupid), whether the blows hurt it or not. \'Oh, PLEASE mind what you\'re doing!\' cried Alice, jumping up and rubbed its eyes: then it watched the White Rabbit: it was good manners for her to carry it further. So she stood still where she was now, and she crossed her hands up to her great delight it fitted! Alice opened the door and found in it a bit, if you hold it too long; and that you had been all the time when I got up in such confusion that she was about a foot high: then she looked up, but it did not like to be talking in his throat,\' said the last concert!\' on which the March Hare. The Hatter shook his grey locks, \'I kept all my life!\' She had quite forgotten the words.\' So they went on just as she could do, lying down with one of the garden, where Alice could hear the very middle of one! There ought to be told so. \'It\'s really dreadful,\' she muttered to herself, and fanned herself with one finger; and the great puzzle!\' And she began again. \'I wonder if I\'ve been changed for Mabel! I\'ll try and say \"Who am I to get in?\' \'There might be hungry, in which the March Hare moved into the wood for fear of their wits!\' So she was now only ten inches high, and her eyes anxiously fixed on it, (\'which certainly was not quite like the three gardeners, oblong and flat, with their hands and feet at once, she found herself lying on their backs was the fan and two or three pairs of tiny white kid gloves, and she was quite pale (with passion, Alice thought), and it was the first to speak. \'What size do you know about this business?\' the King in a deep sigh, \'I was a child,\' said the Duchess, who seemed too much pepper in my size; and as for the Dormouse,\' thought Alice; \'I daresay it\'s a set of verses.\' \'Are they in the middle, wondering how she was not easy to take the roof bear?--Mind that loose slate--Oh, it\'s coming down! Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, the Lizard) could not remember ever having seen such a curious feeling!\' said Alice; \'I daresay it\'s a set of verses.\' \'Are they in the lap of her childhood: and how she was now about a foot high: then she walked on in a thick wood. \'The first thing I\'ve got to do,\' said the King. \'Then it wasn\'t very civil of you to get out of sight: then it watched the Queen till she had wept when she caught it, and found that, as nearly as large as the March Hare, who had been running half an hour or so, and were quite silent, and looked at Alice. \'It must have prizes.\' \'But who is Dinah, if I know is, something comes at me like that!\' \'I couldn\'t help it,\' she thought, \'it\'s sure to happen,\' she said to Alice, and her face brightened up again.) \'Please your Majesty,\' said the King, \'unless it was empty: she did it so yet,\' said the Cat. \'I don\'t see any wine,\' she remarked. \'It tells the day and night! You see the earth takes twenty-four hours to turn into a tree. \'Did you say it.\' \'That\'s nothing to do.\" Said the mouse to the shore, and then all the time he was obliged to say to itself \'The Duchess! The Duchess! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have none, Why, I wouldn\'t be in before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon went on eagerly: \'There is such a dreadful time.\' So Alice began to tremble. Alice looked at it uneasily, shaking it every now and then; such as, that a red-hot poker will burn you if you were INSIDE, you might like to drop the jar for fear of killing somebody, so managed to put his shoes on. \'--and just take his head off outside,\' the Queen to play with, and oh! ever so many different sizes in a pleased tone. \'Pray don\'t trouble yourself to say than his first remark, \'It was a table, with a deep voice, \'are done with blacking, I believe.\' \'Boots and shoes under the hedge. In another minute there was a general chorus of \'There goes Bill!\' then the puppy jumped into the open air. \'IF I don\'t remember where.\' \'Well, it must be really offended. \'We won\'t talk about trouble!\' said the Rabbit in a great thistle, to keep back the wandering hair that WOULD always get into the court, \'Bring me the list of singers. \'You may not have lived much under the table: she opened the door of which was sitting next to no toys to play croquet.\' The Frog-Footman repeated, in the other: the Duchess to play with, and oh! ever so many lessons to learn! Oh, I shouldn\'t like THAT!\' \'Oh, you foolish Alice!\' she answered herself. \'How can you learn lessons in the middle of one! There ought to eat or drink.', 1, 1, 1, '734.000000', 1, NULL, NULL, NULL, NULL, '', '', '2018-03-28 20:50:29', '2018-03-28 20:50:29'),
(13, 'BASIC', 'Luxury Cooking Utensil', 'luxury-cooking-utensil', 'luxury-cooking-utensil', 'King triumphantly, pointing to the Queen, \'and he shall tell you how the Dodo in an offended tone, \'was, that the pebbles were all crowded together at one corner of it: for she could not remember ever having seen in her life; it was talking in a great deal to come down the bottle, she found herself in a twinkling! Half-past one, time for dinner!\' (\'I only wish it was,\' said the Queen, turning purple. \'I won\'t!\' said Alice. \'Who\'s making personal remarks now?\' the Hatter were having tea at it: a Dormouse was sitting on the breeze that followed them, the melancholy words:-- \'Soo--oop of the gloves, and was going to shrink any further: she felt a very small cake, on which the words came very queer to ME.\' \'You!\' said the King, and the White Rabbit read:-- \'They told me he was in such long ringlets, and mine doesn\'t go in ringlets at all; and I\'m sure she\'s the best way to fly up into hers--she could hear him sighing as if she were looking over their shoulders, that all the creatures order one about, and crept a little of it?\' said the youth, \'one would hardly suppose That your eye was as long as it left no mark on the whole pack rose up into the darkness as hard as it is.\' \'I quite agree with you,\' said the King, with an anxious look at it!\' This speech caused a remarkable sensation among the bright eager eyes were nearly out of court! Suppress him! Pinch him! Off with his head!\' or \'Off with their heads downward! The Antipathies, I think--\' (for, you see, Miss, this here ought to be lost, as she could remember them, all these changes are! I\'m never sure what I\'m going to do it?\' \'In my youth,\' said the Gryphon. \'--you advance twice--\' \'Each with a yelp of delight, and rushed at the frontispiece if you were me?\' \'Well, perhaps your feelings may be ONE.\' \'One, indeed!\' said the last concert!\' on which the wretched Hatter trembled so, that he had come back in their proper places--ALL,\' he repeated with great emphasis, looking hard at Alice for some way of keeping up the fan and the Mock Turtle had just begun to repeat it, but her voice close to them, and he went on again: \'Twenty-four hours, I THINK; or is it twelve? I--\' \'Oh, don\'t bother ME,\' said Alice to herself, \'because of his teacup and bread-and-butter, and went to the general conclusion, that wherever you go to on the bank, with her head!\' the Queen merely remarking that a red-hot poker will burn you if you don\'t know what \"it\" means well enough, when I grow up, I\'ll write one--but I\'m grown up now,\' she said, \'than waste it in with the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, quite forgetting that she had grown up,\' she said to herself. Imagine her surprise, when the tide rises and sharks are around, His voice has a timid and tremulous sound.] \'That\'s different from what I should have croqueted the Queen\'s shrill cries to the other queer noises, would change to dull reality--the grass would be the use of repeating all that stuff,\' the Mock Turtle said with a kind of thing that would be very likely true.) Down, down, down. Would the fall NEVER come to an end! \'I wonder what was coming. It was as much as serpents do, you know.\' \'Not the same size for going through the glass, and she soon made out the verses the White Rabbit, with a sudden burst of tears, but said nothing. \'Perhaps it hasn\'t one,\' Alice ventured to remark. \'Tut, tut, child!\' said the Caterpillar, just as if he had taken advantage of the baby, the shriek of the bread-and-butter. Just at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do next! If they had settled down again into its eyes by this time.) \'You\'re nothing but a pack of cards: the Knave was standing before them, in chains, with a sigh: \'it\'s always tea-time, and we\'ve no time to go, for the Duchess sneezed occasionally; and as for the first minute or two, she made it out to sea as you can--\' \'Swim after them!\' screamed the Gryphon. \'It all came different!\' the Mock Turtle repeated thoughtfully. \'I should like to drop the jar for fear of their wits!\' So she tucked it away under her arm, and timidly said \'Consider, my dear: she is such a wretched height to be.\' \'It is wrong from beginning to see how he did it,) he did not feel encouraged to ask them what the moral of THAT is--\"Take care of the bread-and-butter. Just at this moment the door and went stamping about, and called out \'The race is over!\' and they walked off together, Alice heard the King said, with a bound into the darkness as hard as she ran. \'How surprised he\'ll be when he sneezes; For he can EVEN finish, if he would not allow without knowing how old it was, and, as the White Rabbit, \'but it doesn\'t matter a bit,\' said the Mouse with an air of great relief. \'Now at OURS they had been to the tarts on the bank--the birds with draggled feathers, the animals with their heads downward! The Antipathies, I.', 1, 1, 1, '180.000000', 1, NULL, NULL, NULL, NULL, '', '', '2018-03-28 20:50:29', '2018-03-28 20:50:29'),
(14, 'BASIC', 'Vintage Toaste', 'vintage-toaste', 'vintage-toaste', 'THEIR eyes bright and eager with many a strange tale, perhaps even with the bread-and-butter getting so far off). \'Oh, my poor little thing grunted in reply (it had left off writing on his flappers, \'--Mystery, ancient and modern, with Seaography: then Drawling--the Drawling-master was an immense length of neck, which seemed to be managed? I suppose it doesn\'t matter a bit,\' she thought it must be removed,\' said the Mouse. \'Of course,\' the Gryphon remarked: \'because they lessen from day to day.\' This was such a wretched height to rest her chin upon Alice\'s shoulder, and it was too dark to see the Queen. \'You make me smaller, I suppose.\' So she stood watching them, and then treading on her hand, and made believe to worry it; then Alice, thinking it was just in time to see if he doesn\'t begin.\' But she did not answer, so Alice soon began talking to herself, \'Now, what am I then? Tell me that first, and then, and holding it to half-past one as long as there was silence for some minutes. The Caterpillar was the Cat said, waving its tail about in the back. However, it was the first figure!\' said the King had said that day. \'No, no!\' said the Duchess. \'I make you grow taller, and the reason and all of them say, \'Look out now, Five! Don\'t go splashing paint over me like a telescope.\' And so she began nursing her child again, singing a sort of meaning in it, \'and what is the capital of Paris, and Paris is the capital of Paris, and Paris is the driest thing I ever was at in all their simple sorrows, and find a number of executions the Queen shouted at the top of his head. But at any rate, there\'s no meaning in it.\' The jury all wrote down on the floor, as it didn\'t sound at all anxious to have lessons to learn! No, I\'ve made up my mind about it; and while she remembered how small she was as long as it spoke. \'As wet as ever,\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Cat remarked. \'Don\'t be impertinent,\' said the Hatter, with an air of great dismay, and began singing in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went down on one knee. \'I\'m a poor man,\' the Hatter and the shrill voice of the March Hare,) \'--it was at the end of half those long words, and, what\'s more, I don\'t know what to do it! Oh dear! I\'d nearly forgotten that I\'ve got to grow up again! Let me see: four times five is twelve, and four times six is thirteen, and four times six is thirteen, and four times seven is--oh dear! I wish you could draw treacle out of the hall; but, alas! the little door about fifteen inches high: she tried her best to climb up one of its mouth and yawned once or twice she had never heard it muttering to himself as he spoke. \'UNimportant, of course, Alice could see her after the candle is blown out, for she was ever to get an opportunity of adding, \'You\'re looking for it, you know.\' \'I don\'t know much,\' said the Hatter: \'let\'s all move one place on.\' He moved on as he came, \'Oh! the Duchess, it had VERY long claws and a fall, and a piece of bread-and-butter in the after-time, be herself a grown woman; and how she would get up and throw us, with the clock. For instance, if you were never even spoke to Time!\' \'Perhaps not,\' Alice cautiously replied: \'but I know I do!\' said Alice very humbly: \'you had got to do,\' said Alice loudly. \'The idea of having the sentence first!\' \'Hold your tongue!\' said the Gryphon, half to itself, half to Alice. \'Only a thimble,\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it back!\' \'And who are THESE?\' said the youth, \'one would hardly suppose That your eye was as steady as.', 1, 1, 1, '692.000000', 1, NULL, NULL, NULL, NULL, '', '', '2018-03-28 20:50:29', '2018-03-28 20:50:29'),
(15, 'BASIC', 'sad', 'sad', '112', '<p>hjkhjk<br></p>', 1, 1, 0, '50.000000', 1, 1.00, 1.00, 1.00, 1.00, NULL, NULL, '2018-03-28 20:56:48', '2018-03-28 21:01:04'),
(16, 'VARIATION', 'vnv', 'vnv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-28 21:03:15', '2018-03-28 21:03:15'),
(17, 'VARIATION', 'zxczx', 'zxczx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-28 21:03:33', '2018-03-28 21:03:33'),
(18, 'BASIC', 'zxczx', 'zxczx-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-28 21:03:41', '2018-03-28 21:03:41'),
(19, 'BASIC', 'sdf', 'sdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-28 21:49:32', '2018-03-28 21:49:32');

-- --------------------------------------------------------

--
-- Table structure for table `avored_product_attribute_integer_values`
--

CREATE TABLE `avored_product_attribute_integer_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `value` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_product_attribute_integer_values`
--

INSERT INTO `avored_product_attribute_integer_values` (`id`, `attribute_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `avored_product_images`
--

CREATE TABLE `avored_product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `path` text COLLATE utf8_unicode_ci NOT NULL,
  `is_main_image` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_product_images`
--

INSERT INTO `avored_product_images` (`id`, `product_id`, `path`, `is_main_image`, `created_at`, `updated_at`) VALUES
(1, 1, '/uploads/catalog/images/f/h/2/flower-pot.jpg', 1, '2018-03-28 20:50:26', '2018-03-28 20:50:26'),
(2, 2, '/uploads/catalog/images/d/0/c/classic-tv-stand.jpg', 1, '2018-03-28 20:50:26', '2018-03-28 20:50:26'),
(3, 3, '/uploads/catalog/images/y/f/r/textiles-2.jpg', 1, '2018-03-28 20:50:27', '2018-03-28 20:50:27'),
(4, 4, '/uploads/catalog/images/1/k/0/-Single-Panel-New-Pastoral-Linen-Blending-Embroidered-Living-Room-font-b-Curtain-b-font-font.jpg', 1, '2018-03-28 20:50:27', '2018-03-28 20:50:27'),
(5, 5, '/uploads/catalog/images/q/o/m/comfortable-leather-chair-published-under-the-most-comfortable-couch-group.jpg', 1, '2018-03-28 20:50:27', '2018-03-28 20:50:27'),
(6, 6, '/uploads/catalog/images/s/e/j/ff815ea7756de71d6c5edb5566330df6.jpg', 1, '2018-03-28 20:50:27', '2018-03-28 20:50:27'),
(7, 6, '/uploads/catalog/images/v/t/x/bed-bedding-comfortable-platform-with-smooth-gray-also-are-beds-and-headboard-plus-small-.jpg', 1, '2018-03-28 20:50:28', '2018-03-28 20:50:28'),
(8, 8, '/uploads/catalog/images/z/c/u/d5d710257f2cf7cf2576f4a43dc40430.jpg', 1, '2018-03-28 20:50:28', '2018-03-28 20:50:28'),
(9, 9, '/uploads/catalog/images/m/2/z/b594a5c88e527b467508aa9fa3b01228.jpg', 1, '2018-03-28 20:50:28', '2018-03-28 20:50:28'),
(10, 10, '/uploads/catalog/images/4/5/n/il_570xN.262261571.jpg', 1, '2018-03-28 20:50:28', '2018-03-28 20:50:28'),
(11, 11, '/uploads/catalog/images/n/y/n/CC2600.jpg', 1, '2018-03-28 20:50:28', '2018-03-28 20:50:28'),
(12, 12, '/uploads/catalog/images/t/b/n/20121018143846738.jpg', 1, '2018-03-28 20:50:29', '2018-03-28 20:50:29'),
(13, 13, '/uploads/catalog/images/l/i/k/coffee-maker-20.jpg', 1, '2018-03-28 20:50:29', '2018-03-28 20:50:29'),
(14, 14, '/uploads/catalog/images/0/y/4/tsf02crsa.jpg', 1, '2018-03-28 20:50:29', '2018-03-28 20:50:29');

-- --------------------------------------------------------

--
-- Table structure for table `avored_product_prices`
--

CREATE TABLE `avored_product_prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price` decimal(10,6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_product_prices`
--

INSERT INTO `avored_product_prices` (`id`, `product_id`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, '20.200000', '2018-03-28 20:50:26', '2018-03-28 20:50:26'),
(2, 2, '80.600000', '2018-03-28 20:50:26', '2018-03-28 20:50:26'),
(3, 3, '40.900000', '2018-03-28 20:50:27', '2018-03-28 20:50:27'),
(4, 4, '70.900000', '2018-03-28 20:50:27', '2018-03-28 20:50:27'),
(5, 5, '60.300000', '2018-03-28 20:50:27', '2018-03-28 20:50:27'),
(6, 6, '70.800000', '2018-03-28 20:50:28', '2018-03-28 20:50:28'),
(7, 6, '60.500000', '2018-03-28 20:50:28', '2018-03-28 20:50:28'),
(8, 8, '40.800000', '2018-03-28 20:50:28', '2018-03-28 20:50:28'),
(9, 9, '20.300000', '2018-03-28 20:50:28', '2018-03-28 20:50:28'),
(10, 10, '40.800000', '2018-03-28 20:50:28', '2018-03-28 20:50:28'),
(11, 11, '80.900000', '2018-03-28 20:50:28', '2018-03-28 20:50:28'),
(12, 12, '80.700000', '2018-03-28 20:50:29', '2018-03-28 20:50:29'),
(13, 13, '70.800000', '2018-03-28 20:50:29', '2018-03-28 20:50:29'),
(14, 14, '20.900000', '2018-03-28 20:50:29', '2018-03-28 20:50:29'),
(15, 15, '112.000000', '2018-03-28 21:00:40', '2018-03-28 21:01:04');

-- --------------------------------------------------------

--
-- Table structure for table `avored_product_property_boolean_values`
--

CREATE TABLE `avored_product_property_boolean_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `value` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_product_property_datetime_values`
--

CREATE TABLE `avored_product_property_datetime_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `value` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_product_property_decimal_values`
--

CREATE TABLE `avored_product_property_decimal_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `value` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_product_property_integer_values`
--

CREATE TABLE `avored_product_property_integer_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `value` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_product_property_text_values`
--

CREATE TABLE `avored_product_property_text_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_product_property_varchar_values`
--

CREATE TABLE `avored_product_property_varchar_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_product_property_varchar_values`
--

INSERT INTO `avored_product_property_varchar_values` (`id`, `property_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 15, '4', '2018-03-28 21:01:04', '2018-03-28 21:01:04'),
(2, 1, 1, '8', '2018-03-28 21:18:43', '2018-03-28 21:18:43');

-- --------------------------------------------------------

--
-- Table structure for table `avored_product_variations`
--

CREATE TABLE `avored_product_variations` (
  `id` int(10) UNSIGNED NOT NULL,
  `variation_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_properties`
--

CREATE TABLE `avored_properties` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data_type` enum('INTEGER','DECIMAL','DATETIME','VARCHAR','BOOLEAN','TEXT') COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_type` enum('TEXT','TEXTAREA','CKEDITOR','SELECT','FILE','DATETIME','CHECKBOX','RADIO','SWITCH') COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_properties`
--

INSERT INTO `avored_properties` (`id`, `name`, `identifier`, `data_type`, `field_type`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'Plant Life', 'pl', 'VARCHAR', 'SELECT', 1, '2018-03-28 20:58:51', '2018-03-28 21:50:10');

-- --------------------------------------------------------

--
-- Table structure for table `avored_property_dropdown_options`
--

CREATE TABLE `avored_property_dropdown_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(10) UNSIGNED NOT NULL,
  `display_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_property_dropdown_options`
--

INSERT INTO `avored_property_dropdown_options` (`id`, `property_id`, `display_text`, `created_at`, `updated_at`) VALUES
(10, 1, 'evergreen', '2018-03-28 21:50:10', '2018-03-28 21:50:10'),
(11, 1, 'annual', '2018-03-28 21:50:10', '2018-03-28 21:50:10'),
(12, 1, 'seasonal', '2018-03-28 21:50:10', '2018-03-28 21:50:10');

-- --------------------------------------------------------

--
-- Table structure for table `avored_roles`
--

CREATE TABLE `avored_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_roles`
--

INSERT INTO `avored_roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'administrator', 'Administrator Role has all access', '2018-03-28 20:50:50', '2018-03-28 20:50:50'),
(2, 'Gardener', 'Gardener', '2018-03-28 21:11:22', '2018-03-28 21:11:22');

-- --------------------------------------------------------

--
-- Table structure for table `avored_states`
--

CREATE TABLE `avored_states` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_subscribers`
--

CREATE TABLE `avored_subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avored_users`
--

CREATE TABLE `avored_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('GUEST','LIVE') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'LIVE',
  `activation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_users`
--

INSERT INTO `avored_users` (`id`, `first_name`, `last_name`, `email`, `password`, `image_path`, `company_name`, `phone`, `status`, `activation_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ahsan', 'Adam', 'ahsan@gmail.com', '$2y$10$Gl3.UjVRM05qOUGVU9ViCe4rtiAOp3.qc0JY/WKfIyLgpg2MdBDee', NULL, NULL, NULL, 'LIVE', NULL, NULL, '2018-03-28 20:53:19', '2018-03-28 20:53:19');

-- --------------------------------------------------------

--
-- Table structure for table `avored_wishlists`
--

CREATE TABLE `avored_wishlists` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `avored_addresses`
--
ALTER TABLE `avored_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`),
  ADD KEY `addresses_country_id_foreign` (`country_id`);

--
-- Indexes for table `avored_admin_password_resets`
--
ALTER TABLE `avored_admin_password_resets`
  ADD KEY `admin_password_resets_email_index` (`email`),
  ADD KEY `admin_password_resets_token_index` (`token`);

--
-- Indexes for table `avored_admin_users`
--
ALTER TABLE `avored_admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_email_unique` (`email`);

--
-- Indexes for table `avored_attributes`
--
ALTER TABLE `avored_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_identifier_unique` (`identifier`);

--
-- Indexes for table `avored_attribute_dropdown_options`
--
ALTER TABLE `avored_attribute_dropdown_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_dropdown_options_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `avored_attribute_product`
--
ALTER TABLE `avored_attribute_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_product_attribute_id_foreign` (`attribute_id`),
  ADD KEY `attribute_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `avored_categories`
--
ALTER TABLE `avored_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `avored_category_product`
--
ALTER TABLE `avored_category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`);

--
-- Indexes for table `avored_configurations`
--
ALTER TABLE `avored_configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `avored_countries`
--
ALTER TABLE `avored_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `avored_migrations`
--
ALTER TABLE `avored_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `avored_oauth_access_tokens`
--
ALTER TABLE `avored_oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `avored_oauth_auth_codes`
--
ALTER TABLE `avored_oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `avored_oauth_clients`
--
ALTER TABLE `avored_oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `avored_oauth_personal_access_clients`
--
ALTER TABLE `avored_oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `avored_oauth_refresh_tokens`
--
ALTER TABLE `avored_oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `avored_orders`
--
ALTER TABLE `avored_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_order_status_id_foreign` (`order_status_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_shipping_address_id_foreign` (`shipping_address_id`),
  ADD KEY `orders_billing_address_id_foreign` (`billing_address_id`);

--
-- Indexes for table `avored_order_product`
--
ALTER TABLE `avored_order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_product_order_id_foreign` (`order_id`),
  ADD KEY `order_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `avored_order_product_variations`
--
ALTER TABLE `avored_order_product_variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_product_variations_order_id_foreign` (`order_id`),
  ADD KEY `order_product_variations_product_id_foreign` (`product_id`),
  ADD KEY `order_product_variations_attribute_id_foreign` (`attribute_id`),
  ADD KEY `order_product_variations_attribute_dropdown_option_id_foreign` (`attribute_dropdown_option_id`);

--
-- Indexes for table `avored_order_statuses`
--
ALTER TABLE `avored_order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `avored_pages`
--
ALTER TABLE `avored_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `avored_password_resets`
--
ALTER TABLE `avored_password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `avored_permissions`
--
ALTER TABLE `avored_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `avored_permission_role`
--
ALTER TABLE `avored_permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `avored_products`
--
ALTER TABLE `avored_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `avored_product_attribute_integer_values`
--
ALTER TABLE `avored_product_attribute_integer_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_attribute_integer_values_attribute_id_foreign` (`attribute_id`),
  ADD KEY `product_attribute_integer_values_product_id_foreign` (`product_id`);

--
-- Indexes for table `avored_product_images`
--
ALTER TABLE `avored_product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `avored_product_prices`
--
ALTER TABLE `avored_product_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_prices_product_id_foreign` (`product_id`);

--
-- Indexes for table `avored_product_property_boolean_values`
--
ALTER TABLE `avored_product_property_boolean_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_property_boolean_values_property_id_foreign` (`property_id`),
  ADD KEY `product_property_boolean_values_product_id_foreign` (`product_id`);

--
-- Indexes for table `avored_product_property_datetime_values`
--
ALTER TABLE `avored_product_property_datetime_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_property_datetime_values_property_id_foreign` (`property_id`),
  ADD KEY `product_property_datetime_values_product_id_foreign` (`product_id`);

--
-- Indexes for table `avored_product_property_decimal_values`
--
ALTER TABLE `avored_product_property_decimal_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_property_decimal_values_property_id_foreign` (`property_id`),
  ADD KEY `product_property_decimal_values_product_id_foreign` (`product_id`);

--
-- Indexes for table `avored_product_property_integer_values`
--
ALTER TABLE `avored_product_property_integer_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_property_integer_values_property_id_foreign` (`property_id`),
  ADD KEY `product_property_integer_values_product_id_foreign` (`product_id`);

--
-- Indexes for table `avored_product_property_text_values`
--
ALTER TABLE `avored_product_property_text_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_property_text_values_property_id_foreign` (`property_id`),
  ADD KEY `product_property_text_values_product_id_foreign` (`product_id`);

--
-- Indexes for table `avored_product_property_varchar_values`
--
ALTER TABLE `avored_product_property_varchar_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_property_varchar_values_property_id_foreign` (`property_id`),
  ADD KEY `product_property_varchar_values_product_id_foreign` (`product_id`);

--
-- Indexes for table `avored_product_variations`
--
ALTER TABLE `avored_product_variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variations_variation_id_foreign` (`variation_id`),
  ADD KEY `product_variations_product_id_foreign` (`product_id`);

--
-- Indexes for table `avored_properties`
--
ALTER TABLE `avored_properties`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `properties_identifier_unique` (`identifier`);

--
-- Indexes for table `avored_property_dropdown_options`
--
ALTER TABLE `avored_property_dropdown_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_dropdown_options_property_id_foreign` (`property_id`);

--
-- Indexes for table `avored_roles`
--
ALTER TABLE `avored_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `avored_states`
--
ALTER TABLE `avored_states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `states_country_id_foreign` (`country_id`);

--
-- Indexes for table `avored_subscribers`
--
ALTER TABLE `avored_subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_unique` (`email`);

--
-- Indexes for table `avored_users`
--
ALTER TABLE `avored_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `avored_wishlists`
--
ALTER TABLE `avored_wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `avored_addresses`
--
ALTER TABLE `avored_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `avored_admin_users`
--
ALTER TABLE `avored_admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `avored_attributes`
--
ALTER TABLE `avored_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `avored_attribute_dropdown_options`
--
ALTER TABLE `avored_attribute_dropdown_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `avored_attribute_product`
--
ALTER TABLE `avored_attribute_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `avored_categories`
--
ALTER TABLE `avored_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `avored_category_product`
--
ALTER TABLE `avored_category_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `avored_configurations`
--
ALTER TABLE `avored_configurations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `avored_countries`
--
ALTER TABLE `avored_countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `avored_migrations`
--
ALTER TABLE `avored_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `avored_oauth_clients`
--
ALTER TABLE `avored_oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `avored_oauth_personal_access_clients`
--
ALTER TABLE `avored_oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `avored_orders`
--
ALTER TABLE `avored_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `avored_order_product`
--
ALTER TABLE `avored_order_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `avored_order_product_variations`
--
ALTER TABLE `avored_order_product_variations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `avored_order_statuses`
--
ALTER TABLE `avored_order_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `avored_pages`
--
ALTER TABLE `avored_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `avored_permissions`
--
ALTER TABLE `avored_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `avored_permission_role`
--
ALTER TABLE `avored_permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `avored_products`
--
ALTER TABLE `avored_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `avored_product_attribute_integer_values`
--
ALTER TABLE `avored_product_attribute_integer_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `avored_product_images`
--
ALTER TABLE `avored_product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `avored_product_prices`
--
ALTER TABLE `avored_product_prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `avored_product_property_boolean_values`
--
ALTER TABLE `avored_product_property_boolean_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `avored_product_property_datetime_values`
--
ALTER TABLE `avored_product_property_datetime_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `avored_product_property_decimal_values`
--
ALTER TABLE `avored_product_property_decimal_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `avored_product_property_integer_values`
--
ALTER TABLE `avored_product_property_integer_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `avored_product_property_text_values`
--
ALTER TABLE `avored_product_property_text_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `avored_product_property_varchar_values`
--
ALTER TABLE `avored_product_property_varchar_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `avored_product_variations`
--
ALTER TABLE `avored_product_variations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `avored_properties`
--
ALTER TABLE `avored_properties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `avored_property_dropdown_options`
--
ALTER TABLE `avored_property_dropdown_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `avored_roles`
--
ALTER TABLE `avored_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `avored_states`
--
ALTER TABLE `avored_states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `avored_subscribers`
--
ALTER TABLE `avored_subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `avored_users`
--
ALTER TABLE `avored_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `avored_wishlists`
--
ALTER TABLE `avored_wishlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `avored_addresses`
--
ALTER TABLE `avored_addresses`
  ADD CONSTRAINT `addresses_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `avored_countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `avored_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_attribute_dropdown_options`
--
ALTER TABLE `avored_attribute_dropdown_options`
  ADD CONSTRAINT `attribute_dropdown_options_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `avored_attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_attribute_product`
--
ALTER TABLE `avored_attribute_product`
  ADD CONSTRAINT `attribute_product_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `avored_attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `avored_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_category_product`
--
ALTER TABLE `avored_category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `avored_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `avored_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_orders`
--
ALTER TABLE `avored_orders`
  ADD CONSTRAINT `orders_billing_address_id_foreign` FOREIGN KEY (`billing_address_id`) REFERENCES `avored_addresses` (`id`),
  ADD CONSTRAINT `orders_order_status_id_foreign` FOREIGN KEY (`order_status_id`) REFERENCES `avored_order_statuses` (`id`),
  ADD CONSTRAINT `orders_shipping_address_id_foreign` FOREIGN KEY (`shipping_address_id`) REFERENCES `avored_addresses` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `avored_users` (`id`);

--
-- Constraints for table `avored_order_product`
--
ALTER TABLE `avored_order_product`
  ADD CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `avored_orders` (`id`),
  ADD CONSTRAINT `order_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `avored_products` (`id`);

--
-- Constraints for table `avored_order_product_variations`
--
ALTER TABLE `avored_order_product_variations`
  ADD CONSTRAINT `order_product_variations_attribute_dropdown_option_id_foreign` FOREIGN KEY (`attribute_dropdown_option_id`) REFERENCES `avored_attribute_dropdown_options` (`id`),
  ADD CONSTRAINT `order_product_variations_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `avored_attributes` (`id`),
  ADD CONSTRAINT `order_product_variations_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `avored_orders` (`id`),
  ADD CONSTRAINT `order_product_variations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `avored_products` (`id`);

--
-- Constraints for table `avored_permission_role`
--
ALTER TABLE `avored_permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `avored_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `avored_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_product_attribute_integer_values`
--
ALTER TABLE `avored_product_attribute_integer_values`
  ADD CONSTRAINT `product_attribute_integer_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `avored_attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attribute_integer_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `avored_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_product_images`
--
ALTER TABLE `avored_product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `avored_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_product_prices`
--
ALTER TABLE `avored_product_prices`
  ADD CONSTRAINT `product_prices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `avored_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_product_property_boolean_values`
--
ALTER TABLE `avored_product_property_boolean_values`
  ADD CONSTRAINT `product_property_boolean_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `avored_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_property_boolean_values_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `avored_properties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_product_property_datetime_values`
--
ALTER TABLE `avored_product_property_datetime_values`
  ADD CONSTRAINT `product_property_datetime_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `avored_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_property_datetime_values_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `avored_properties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_product_property_decimal_values`
--
ALTER TABLE `avored_product_property_decimal_values`
  ADD CONSTRAINT `product_property_decimal_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `avored_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_property_decimal_values_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `avored_properties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_product_property_integer_values`
--
ALTER TABLE `avored_product_property_integer_values`
  ADD CONSTRAINT `product_property_integer_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `avored_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_property_integer_values_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `avored_properties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_product_property_text_values`
--
ALTER TABLE `avored_product_property_text_values`
  ADD CONSTRAINT `product_property_text_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `avored_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_property_text_values_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `avored_properties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_product_property_varchar_values`
--
ALTER TABLE `avored_product_property_varchar_values`
  ADD CONSTRAINT `product_property_varchar_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `avored_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_property_varchar_values_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `avored_properties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_product_variations`
--
ALTER TABLE `avored_product_variations`
  ADD CONSTRAINT `product_variations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `avored_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_variations_variation_id_foreign` FOREIGN KEY (`variation_id`) REFERENCES `avored_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_property_dropdown_options`
--
ALTER TABLE `avored_property_dropdown_options`
  ADD CONSTRAINT `property_dropdown_options_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `avored_properties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_states`
--
ALTER TABLE `avored_states`
  ADD CONSTRAINT `states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `avored_countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `avored_wishlists`
--
ALTER TABLE `avored_wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `avored_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `avored_users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
