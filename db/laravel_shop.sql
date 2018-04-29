-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2018 at 01:47 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

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
(2, 1, 'SHIPPING', 'Ahsan', 'Adam', 'House #a', NULL, NULL, 'Karachi', 'Sindh', 77, '111', '2018-03-28 20:53:19', '2018-03-28 20:53:19'),
(3, 2, 'BILLING', 'Admin', 'Admin', 'H1,32, gulshan, karachi', 'wasda', '75300', 'karachi', 'sindh', 69, '012315465', '2018-03-29 02:14:27', '2018-03-29 02:14:27'),
(4, 2, 'SHIPPING', 'Admin', 'Admin', 'H1,32, gulshan, karachi', 'wasda', '75300', 'karachi', 'sindh', 69, '012315465', '2018-03-29 02:14:27', '2018-03-29 02:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `avored_admin_password_resets`
--

CREATE TABLE `avored_admin_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avored_admin_password_resets`
--

INSERT INTO `avored_admin_password_resets` (`email`, `token`, `created_at`) VALUES
('admin@pb.com', '$2y$10$0g1jfADj/mqAk75/FmOk9.v3xcOkZ/nrVF1SG/GtpjydAJqkdLv96', '2018-04-18 04:53:07');

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
(2, NULL, 2, 'Gardener', 'Gardener', 'gardener@pb.com', '$2y$10$rUGab7UZLfMdlM2InGoqg.oIETKippF3vNhZQ4.Yd8xiRpFIbpTTO', 'en', NULL, NULL, '2018-03-28 21:12:13', '2018-03-28 21:12:13'),
(3, 1, 1, 'Ahsan', 'Adam', 'admin@pb.com', '$2y$10$gwY/K5IPYxR33B4huJZ/keRb67g9VfZMfMwaMmOwaTE5eM1g.6UhG', 'en', NULL, NULL, '2018-04-18 05:26:46', '2018-04-18 05:26:46');

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
(1, NULL, 'Plant', 'Product', NULL, NULL, '2018-03-28 20:50:25', '2018-03-29 00:45:01'),
(2, NULL, 'Tools', 'Tool', NULL, NULL, '2018-03-28 20:50:25', '2018-03-29 01:52:39'),
(3, NULL, 'Fertilizer', 'fertilizer', NULL, NULL, '2018-03-28 20:50:25', '2018-04-25 06:25:18'),
(4, 1, 'Flowering', 'Flowers', NULL, NULL, '2018-03-29 00:45:26', '2018-03-29 00:45:26'),
(5, 1, 'Cactus', 'cactus', NULL, NULL, '2018-03-29 01:42:34', '2018-03-29 01:42:34'),
(6, 1, 'Indoor Plant', 'plant', NULL, NULL, '2018-03-29 01:42:54', '2018-03-29 01:42:54'),
(7, NULL, 'Kitchen Garden', 'kitchen-garden', NULL, NULL, '2018-04-27 12:57:37', '2018-04-27 12:57:37');

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
(16, 1, 22, NULL, NULL),
(17, 4, 23, NULL, NULL),
(18, 4, 24, NULL, NULL),
(19, 4, 25, NULL, NULL),
(20, 5, 26, NULL, NULL),
(21, 5, 27, NULL, NULL),
(22, 5, 28, NULL, NULL),
(23, 6, 29, NULL, NULL),
(24, 6, 30, NULL, NULL),
(25, 6, 31, NULL, NULL),
(26, 2, 32, NULL, NULL),
(27, 2, 33, NULL, NULL),
(28, 2, 34, NULL, NULL),
(29, 2, 35, NULL, NULL),
(30, 3, 38, NULL, NULL),
(31, 7, 40, NULL, NULL);

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
(1, 'freeshipping', 'pickup', 4, '2018-03-28 20:53:19', '2018-03-28 20:54:39', 1, 2, 1),
(2, 'freeshipping', 'pickup', 1, '2018-03-29 02:14:27', '2018-03-29 02:14:27', 2, 4, 3);

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
(2, 22, 2, 1, '1.000000', '0.000000', NULL, NULL);

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
(22, 'BASIC', 'aaa', 'aaa', '1', '<p>11&nbsp; &nbsp; 1&nbsp;&nbsp;&nbsp;&nbsp;</p>', 1, 1, 1, '0.000000', 1, 1.00, 1.00, 1.00, 11.00, NULL, NULL, '2018-03-29 01:33:35', '2018-03-29 02:14:27'),
(23, 'BASIC', 'Sunflower', 'sunflower-1', 'A-001', '<h6>Full Sun</h6><p>Water Regulalry</p>', 1, 1, 1, '100.000000', 1, 1.00, 1.00, 3.00, 1.00, NULL, NULL, '2018-03-29 01:36:08', '2018-04-25 09:51:04'),
(24, 'BASIC', 'MariGold', 'marigold-1', 'A-0002', 'ff', 1, 1, 1, '1.000000', 1, 1.00, 1.00, 1.00, 1.00, NULL, NULL, '2018-03-29 01:38:59', '2018-03-29 01:40:49'),
(25, 'BASIC', 'Hibiscus', 'hibiscus', 'A-0003', '<p>tree</p>', 1, 1, 0, '100.000000', 1, 1.00, 1.00, 1.00, 1.00, NULL, NULL, '2018-03-29 01:41:29', '2018-03-29 01:42:07'),
(26, 'BASIC', 'Ariocarpus confusus', 'ariocarpus-confusus', 'A-0004', '<p>cactus&nbsp;&nbsp;&nbsp;&nbsp;</p>', 1, 1, 1, '50.000000', 1, 1.00, 1.00, 1.00, 1.00, NULL, NULL, '2018-03-29 01:43:21', '2018-03-29 01:44:06'),
(27, 'BASIC', 'Ariocarpus Lloydii', 'ariocarpus-lloydii', 'A-0005', '<p>Cactus</p>', 1, 1, 1, '12.000000', 1, 1.00, 5.00, 6.00, 5.00, NULL, NULL, '2018-03-29 01:44:21', '2018-03-29 01:45:09'),
(28, 'BASIC', 'Armatocereus oligogonu', 'armatocereus-oligogonu', 'A-0006', '<p>cactus</p>', 1, 1, 1, '30.000000', 1, 23.00, 12.00, 6.00, 1.00, NULL, NULL, '2018-03-29 01:45:27', '2018-03-29 01:46:20'),
(29, 'BASIC', 'Spider Plant', 'spider-plant', 'A-0007', '<p>indoor</p>', 1, 1, 1, '100.000000', 1, 12.00, 2.00, 5.00, 2.00, NULL, NULL, '2018-03-29 01:46:41', '2018-03-29 01:47:40'),
(30, 'BASIC', 'Jade plant', 'jade-plant', 'A-0007', '<p>Indoor</p>', 1, 1, 1, '522.000000', 1, 6.00, 8.00, 5.00, 85.00, NULL, NULL, '2018-03-29 01:48:04', '2018-03-29 01:50:02'),
(31, 'BASIC', 'Heart Leaf', 'heart-leaf', 'A-0008', '<p>Indoor</p>', 1, 1, 1, '200.000000', 1, 5.00, 56.00, 1.00, 3.00, NULL, NULL, '2018-03-29 01:50:12', '2018-03-29 01:51:00'),
(32, 'BASIC', 'spade', 'spade', 'B-0001', '<p>Tools</p>', 1, 1, 1, '2.000000', 1, 2.00, NULL, 4.00, 6.00, NULL, NULL, '2018-03-29 01:53:04', '2018-03-29 01:54:23'),
(33, 'BASIC', 'Rake', 'rake', 'B-0002', '<p>Tools</p>', 1, 1, 1, '6.000000', 1, 3.00, 10.00, 6.00, 4.00, NULL, NULL, '2018-03-29 01:56:45', '2018-03-29 01:57:34'),
(34, 'BASIC', 'Shovel', 'shovel', 'B-0003', '<p>Tools</p>', 0, 0, 0, NULL, 0, 1.00, 1.00, 2.00, 6.00, NULL, NULL, '2018-03-29 01:58:05', '2018-03-29 01:59:06'),
(35, 'BASIC', 'Watering Can', 'watering-can', 'B-0004', '<p>tool</p>', 1, 1, 1, '6.000000', 1, 1.00, 3.00, 4.00, 6.00, NULL, NULL, '2018-03-29 02:00:31', '2018-03-29 02:01:31'),
(38, 'BASIC', 'Lawn Fertilizer', 'lawn-fertilizer', 'A-038', '<p>LF</p>', 1, 1, 1, '20.000000', 1, 5.00, 4.00, 6.00, 6.00, NULL, NULL, '2018-04-25 06:37:06', '2018-04-25 06:41:17'),
(40, 'BASIC', 'Apple', 'apple-1', 'H-001', '<p>Seeds</p>', 1, 1, 1, '20.000000', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-27 13:05:22', '2018-04-27 13:06:52'),
(41, 'BASIC', 'aloe vera', 'aloe-vera', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-28 02:27:00', '2018-04-28 02:27:00');

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
(15, 22, '/uploads/catalog/images/g/3/t/Ariocarpus confusus.jpg', 1, '2018-03-29 01:34:08', '2018-03-29 01:34:08'),
(16, 23, '/uploads/catalog/images/2/2/w/sunflower.jpg', 1, '2018-03-29 01:38:18', '2018-03-29 01:38:18'),
(17, 24, '/uploads/catalog/images/c/t/g/marigold.jpg', 1, '2018-03-29 01:40:49', '2018-03-29 01:40:49'),
(18, 25, '/uploads/catalog/images/x/i/2/Hibiscus.jpg', 1, '2018-03-29 01:42:07', '2018-03-29 01:42:07'),
(19, 26, '/uploads/catalog/images/r/q/u/Ariocarpus confusus.jpg', 1, '2018-03-29 01:44:06', '2018-03-29 01:44:06'),
(20, 27, '/uploads/catalog/images/m/c/r/Ariocarpus Lloydii.jpg', 1, '2018-03-29 01:45:09', '2018-03-29 01:45:09'),
(21, 28, '/uploads/catalog/images/h/i/6/Armatocereus oligogonu.jpg', 1, '2018-03-29 01:46:20', '2018-03-29 01:46:20'),
(22, 29, '/uploads/catalog/images/t/z/o/Spider Plant.jpg', 1, '2018-03-29 01:47:40', '2018-03-29 01:47:40'),
(23, 30, '/uploads/catalog/images/g/x/5/jade plant.jpg', 1, '2018-03-29 01:50:02', '2018-03-29 01:50:02'),
(24, 31, '/uploads/catalog/images/x/y/t/heart leaf.jpeg', 1, '2018-03-29 01:51:01', '2018-03-29 01:51:01'),
(25, 32, '/uploads/catalog/images/8/m/k/29748429_1870928279597245_310865850_o.jpg', 1, '2018-03-29 01:54:23', '2018-03-29 01:54:23'),
(26, 33, '/uploads/catalog/images/d/t/a/29750875_1870946792928727_963385946_n.jpg', 1, '2018-03-29 01:57:35', '2018-03-29 01:57:35'),
(27, 34, '/uploads/catalog/images/g/n/e/29550701_1870947112928695_562962355_n.jpg', 1, '2018-03-29 01:59:06', '2018-03-29 01:59:06'),
(28, 35, '/uploads/catalog/images/j/k/m/29665951_1870948819595191_2077837264_n.jpg', 1, '2018-03-29 02:01:31', '2018-03-29 02:01:31'),
(29, 38, '/uploads/catalog/images/x/e/o/021496002644.jpg', 1, '2018-04-25 06:41:17', '2018-04-25 06:41:17'),
(30, 40, '/uploads/catalog/images/b/p/b/925871679_883.jpg', 1, '2018-04-27 13:06:52', '2018-04-27 13:06:52');

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
(16, 22, '1.000000', '2018-03-29 01:34:08', '2018-03-29 01:34:08'),
(17, 23, '50.000000', '2018-03-29 01:38:18', '2018-03-29 01:38:18'),
(18, 24, '100.000000', '2018-03-29 01:40:49', '2018-03-29 01:40:49'),
(19, 25, '100.000000', '2018-03-29 01:42:07', '2018-03-29 01:42:07'),
(20, 26, '100.000000', '2018-03-29 01:44:06', '2018-03-29 01:44:06'),
(21, 27, '200.000000', '2018-03-29 01:45:09', '2018-03-29 01:45:09'),
(22, 28, '50.000000', '2018-03-29 01:46:20', '2018-03-29 01:46:20'),
(23, 29, '100.000000', '2018-03-29 01:47:40', '2018-03-29 01:47:40'),
(24, 30, '80.000000', '2018-03-29 01:50:02', '2018-03-29 01:50:02'),
(25, 31, '200.000000', '2018-03-29 01:51:01', '2018-03-29 01:51:01'),
(26, 32, '800.000000', '2018-03-29 01:54:23', '2018-03-29 01:54:23'),
(27, 33, '300.000000', '2018-03-29 01:57:35', '2018-03-29 01:57:35'),
(28, 34, '300.000000', '2018-03-29 01:59:06', '2018-03-29 01:59:06'),
(29, 35, '500.000000', '2018-03-29 02:01:31', '2018-03-29 02:01:31'),
(30, 38, '250.000000', '2018-04-25 06:41:17', '2018-04-25 06:41:17'),
(31, 40, '100.000000', '2018-04-27 13:06:52', '2018-04-27 13:06:52');

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
(1, 2, 22, '17', '2018-04-25 09:43:20', '2018-04-25 09:43:20'),
(2, 2, 23, '16', '2018-04-25 09:44:58', '2018-04-25 09:44:58'),
(3, 3, 23, '30', '2018-04-25 09:44:58', '2018-04-25 09:44:58'),
(4, 4, 23, '25', '2018-04-25 09:44:58', '2018-04-25 09:44:58'),
(5, 6, 23, '31', '2018-04-25 09:44:58', '2018-04-25 09:44:58');

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
(2, 'Water Requirement', 'WaterRequirement', 'VARCHAR', 'SELECT', 1, '2018-03-29 02:25:40', '2018-03-29 02:29:18'),
(3, 'Plant Life', 'PlantLife', 'VARCHAR', 'SELECT', 2, '2018-03-29 02:34:04', '2018-03-29 04:45:03'),
(4, 'Sun Requirement', 'sunrequirement', 'VARCHAR', 'SELECT', 3, '2018-03-29 02:35:22', '2018-03-29 04:44:54'),
(6, 'Plant Type', 'plantType', 'VARCHAR', 'SELECT', 10, '2018-04-25 06:20:09', '2018-04-25 10:44:05');

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
(16, 2, '1-2 Days', '2018-03-29 02:31:48', '2018-03-29 02:31:48'),
(17, 2, '2-5 days', '2018-03-29 02:31:48', '2018-03-29 02:31:48'),
(18, 2, 'week', '2018-03-29 02:31:48', '2018-03-29 02:31:48'),
(25, 4, 'Full', '2018-03-29 04:44:54', '2018-03-29 04:44:54'),
(26, 4, 'Partial', '2018-03-29 04:44:55', '2018-03-29 04:44:55'),
(27, 4, 'No Sunlight', '2018-03-29 04:44:55', '2018-03-29 04:44:55'),
(28, 3, 'evergreen', '2018-03-29 04:45:03', '2018-03-29 04:45:03'),
(29, 3, 'Annual', '2018-03-29 04:45:03', '2018-03-29 04:45:03'),
(30, 3, 'seasonal', '2018-03-29 04:45:03', '2018-03-29 04:45:03'),
(59, 6, 'Shrubs', '2018-04-27 12:41:47', '2018-04-27 12:41:47'),
(60, 6, 'Trees', '2018-04-27 12:41:47', '2018-04-27 12:41:47'),
(61, 6, 'Herb/Forb', '2018-04-27 12:41:47', '2018-04-27 12:41:47'),
(62, 6, 'Cactus/Succulent', '2018-04-27 12:41:47', '2018-04-27 12:41:47'),
(63, 6, 'Grass/Grass-like', '2018-04-27 12:41:47', '2018-04-27 12:41:47'),
(64, 6, 'Fern', '2018-04-27 12:41:47', '2018-04-27 12:41:47'),
(65, 6, 'Vine', '2018-04-27 12:41:47', '2018-04-27 12:41:47');

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
(1, 'Ahsan', 'Adam', 'ahsan@gmail.com', '$2y$10$Gl3.UjVRM05qOUGVU9ViCe4rtiAOp3.qc0JY/WKfIyLgpg2MdBDee', NULL, NULL, NULL, 'LIVE', NULL, NULL, '2018-03-28 20:53:19', '2018-03-28 20:53:19'),
(2, 'Admin', 'Admin', 'admin@hotmail.com', '$2y$10$xp79lX/wXAxMnYCarQrGOO7Bd5r4m5Kx84o5.MbVLxbychWxbfuRy', NULL, NULL, NULL, 'LIVE', NULL, NULL, '2018-03-29 02:14:27', '2018-03-29 02:14:27'),
(3, 'User', 'User', 'user@pb.com', '$2y$10$ezzx3kPZCC2CMvGfBBUfjOXBVKdemXq5Dipi6DGViFyIuWgD1vKQO', NULL, NULL, NULL, 'LIVE', NULL, NULL, '2018-03-29 04:33:41', '2018-03-29 04:33:41');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `avored_admin_users`
--
ALTER TABLE `avored_admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `avored_categories`
--
ALTER TABLE `avored_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `avored_category_product`
--
ALTER TABLE `avored_category_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `avored_order_product`
--
ALTER TABLE `avored_order_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `avored_product_attribute_integer_values`
--
ALTER TABLE `avored_product_attribute_integer_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `avored_product_images`
--
ALTER TABLE `avored_product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `avored_product_prices`
--
ALTER TABLE `avored_product_prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `avored_product_variations`
--
ALTER TABLE `avored_product_variations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `avored_properties`
--
ALTER TABLE `avored_properties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `avored_property_dropdown_options`
--
ALTER TABLE `avored_property_dropdown_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
