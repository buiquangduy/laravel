-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2016 at 01:51 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_t3h`
--

-- --------------------------------------------------------

--
-- Table structure for table `cates`
--

CREATE TABLE `cates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cates`
--

INSERT INTO `cates` (`id`, `name`, `alias`, `order`, `parent_id`, `keywords`, `description`, `created_at`, `updated_at`) VALUES
(44, 'Áo', 'ao', 1, 0, 'Áo sơ mi', 'Áo sơ mi', '2016-10-24 05:56:07', '2016-10-24 05:56:07'),
(48, 'Áo sơ mi', 'ao-so-mi', 3, 44, 'áo sơ mi', '                                	\r\n                             Áo sơ mi thì sao    ', '2016-10-24 23:20:51', '2016-10-24 23:25:35'),
(49, 'Quần', 'quan', 5, 0, 'quần', 'quần đẹp', '2016-10-27 01:55:35', '2016-10-27 01:55:35'),
(50, 'Quần ngố', 'quan-ngo', 4, 49, 'quần ngố đẹp', 'quần ngố đẹp', '2016-10-27 01:56:26', '2016-10-27 01:56:26');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_08_25_015848_create_cates_table', 1),
('2016_08_25_021124_create_products_table', 2),
('2016_08_25_022145_create_product_images_table', 3),
('2016_10_25_081421_create_transactions_table', 4),
('2016_10_25_082441_create_orders_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `transaction_id`, `product_id`, `qty`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(3, 7, 2, 2, 1000000, 0, '2016-10-26 01:01:37', '2016-10-26 01:01:37'),
(4, 8, 1, 1, 200000, 0, '2016-10-26 01:04:50', '2016-10-26 01:04:50'),
(5, 8, 2, 1, 500000, 0, '2016-10-26 01:04:50', '2016-10-26 01:04:50'),
(6, 9, 3, 1, 300000, 0, '2016-10-27 02:05:29', '2016-10-27 02:05:29'),
(7, 10, 3, 2, 600000, 0, '2016-10-27 02:08:00', '2016-10-27 02:08:00'),
(8, 10, 2, 1, 500000, 0, '2016-10-27 02:08:00', '2016-10-27 02:08:00'),
(9, 11, 2, 1, 500000, 0, '2016-10-27 02:11:18', '2016-10-27 02:11:18'),
(10, 11, 3, 1, 300000, 0, '2016-10-27 02:11:18', '2016-10-27 02:11:18'),
(11, 12, 1, 1, 200000, 0, '2016-10-27 02:12:44', '2016-10-27 02:12:44'),
(12, 13, 3, 1, 300000, 0, '2016-10-27 02:15:00', '2016-10-27 02:15:00'),
(13, 14, 3, 2, 600000, 0, '2016-10-27 02:17:48', '2016-10-27 02:17:48'),
(14, 15, 3, 1, 300000, 0, '2016-10-27 02:21:38', '2016-10-27 02:21:38'),
(15, 16, 3, 1, 300000, 0, '2016-10-27 02:44:08', '2016-10-27 02:44:08'),
(16, 17, 3, 1, 300000, 0, '2016-10-27 02:45:22', '2016-10-27 02:45:22'),
(17, 18, 2, 1, 500000, 0, '2016-11-10 04:32:59', '2016-11-10 04:32:59'),
(18, 19, 2, 1, 500000, 0, '2016-11-10 06:50:05', '2016-11-10 06:50:05'),
(19, 44, 2, 1, 500000, 0, '2016-11-10 07:15:14', '2016-11-10 07:15:14'),
(20, 44, 1, 1, 200000, 0, '2016-11-10 07:15:14', '2016-11-10 07:15:14'),
(21, 45, 2, 1, 500000, 0, '2016-11-10 07:15:39', '2016-11-10 07:15:39'),
(22, 45, 1, 1, 200000, 0, '2016-11-10 07:15:39', '2016-11-10 07:15:39'),
(23, 46, 2, 1, 500000, 0, '2016-11-10 07:15:52', '2016-11-10 07:15:52'),
(24, 46, 1, 1, 200000, 0, '2016-11-10 07:15:52', '2016-11-10 07:15:52'),
(25, 47, 2, 1, 500000, 0, '2016-11-10 07:16:26', '2016-11-10 07:16:26'),
(26, 47, 1, 1, 200000, 0, '2016-11-10 07:16:26', '2016-11-10 07:16:26'),
(27, 48, 2, 1, 500000, 0, '2016-11-10 07:16:56', '2016-11-10 07:16:56'),
(28, 48, 1, 1, 200000, 0, '2016-11-10 07:16:56', '2016-11-10 07:16:56'),
(29, 49, 2, 1, 500000, 0, '2016-11-10 07:19:43', '2016-11-10 07:19:43'),
(30, 49, 1, 1, 200000, 0, '2016-11-10 07:19:43', '2016-11-10 07:19:43'),
(31, 50, 2, 1, 500000, 0, '2016-11-10 07:20:12', '2016-11-10 07:20:12'),
(32, 50, 1, 1, 200000, 0, '2016-11-10 07:20:12', '2016-11-10 07:20:12'),
(33, 51, 2, 1, 500000, 0, '2016-11-10 07:20:49', '2016-11-10 07:20:49'),
(34, 51, 1, 1, 200000, 0, '2016-11-10 07:20:49', '2016-11-10 07:20:49'),
(35, 52, 2, 1, 500000, 0, '2016-11-10 07:21:10', '2016-11-10 07:21:10'),
(36, 52, 1, 1, 200000, 0, '2016-11-10 07:21:10', '2016-11-10 07:21:10'),
(37, 53, 2, 1, 500000, 0, '2016-11-10 07:21:36', '2016-11-10 07:21:36'),
(38, 53, 1, 1, 200000, 0, '2016-11-10 07:21:36', '2016-11-10 07:21:36'),
(39, 54, 2, 1, 500000, 0, '2016-11-10 07:22:09', '2016-11-10 07:22:09'),
(40, 54, 1, 1, 200000, 0, '2016-11-10 07:22:09', '2016-11-10 07:22:09'),
(41, 55, 2, 1, 500000, 0, '2016-11-10 07:22:44', '2016-11-10 07:22:44'),
(42, 55, 1, 1, 200000, 0, '2016-11-10 07:22:44', '2016-11-10 07:22:44'),
(43, 56, 2, 1, 500000, 0, '2016-11-10 07:23:53', '2016-11-10 07:23:53'),
(44, 56, 1, 1, 200000, 0, '2016-11-10 07:23:53', '2016-11-10 07:23:53'),
(45, 57, 2, 1, 500000, 0, '2016-11-10 07:24:53', '2016-11-10 07:24:53'),
(46, 57, 1, 1, 200000, 0, '2016-11-10 07:24:53', '2016-11-10 07:24:53'),
(47, 58, 2, 1, 500000, 0, '2016-11-10 07:25:36', '2016-11-10 07:25:36'),
(48, 58, 1, 1, 200000, 0, '2016-11-10 07:25:36', '2016-11-10 07:25:36'),
(49, 59, 2, 1, 500000, 0, '2016-11-10 07:26:24', '2016-11-10 07:26:24'),
(50, 59, 1, 1, 200000, 0, '2016-11-10 07:26:24', '2016-11-10 07:26:24'),
(51, 60, 2, 1, 500000, 0, '2016-11-10 07:26:47', '2016-11-10 07:26:47'),
(52, 60, 1, 1, 200000, 0, '2016-11-10 07:26:47', '2016-11-10 07:26:47'),
(53, 61, 2, 1, 500000, 0, '2016-11-10 07:28:55', '2016-11-10 07:28:55'),
(54, 61, 1, 1, 200000, 0, '2016-11-10 07:28:55', '2016-11-10 07:28:55'),
(55, 62, 2, 1, 500000, 0, '2016-11-10 07:29:31', '2016-11-10 07:29:31'),
(56, 62, 1, 1, 200000, 0, '2016-11-10 07:29:31', '2016-11-10 07:29:31'),
(57, 63, 2, 1, 500000, 0, '2016-11-10 07:29:56', '2016-11-10 07:29:56'),
(58, 63, 1, 1, 200000, 0, '2016-11-10 07:29:56', '2016-11-10 07:29:56'),
(59, 64, 2, 1, 500000, 0, '2016-11-10 07:30:39', '2016-11-10 07:30:39'),
(60, 64, 1, 1, 200000, 0, '2016-11-10 07:30:39', '2016-11-10 07:30:39'),
(61, 65, 2, 1, 500000, 0, '2016-11-10 07:31:38', '2016-11-10 07:31:38'),
(62, 65, 1, 1, 200000, 0, '2016-11-10 07:31:38', '2016-11-10 07:31:38'),
(63, 66, 2, 1, 500000, 0, '2016-11-10 07:32:26', '2016-11-10 07:32:26'),
(64, 66, 1, 1, 200000, 0, '2016-11-10 07:32:26', '2016-11-10 07:32:26'),
(65, 67, 2, 1, 500000, 0, '2016-11-10 07:32:46', '2016-11-10 07:32:46'),
(66, 67, 1, 1, 200000, 0, '2016-11-10 07:32:46', '2016-11-10 07:32:46'),
(67, 68, 2, 1, 500000, 0, '2016-11-10 07:33:13', '2016-11-10 07:33:13'),
(68, 68, 1, 1, 200000, 0, '2016-11-10 07:33:13', '2016-11-10 07:33:13'),
(69, 69, 2, 1, 500000, 0, '2016-11-10 07:33:41', '2016-11-10 07:33:41'),
(70, 69, 1, 1, 200000, 0, '2016-11-10 07:33:41', '2016-11-10 07:33:41'),
(71, 70, 2, 1, 500000, 0, '2016-11-10 07:34:09', '2016-11-10 07:34:09'),
(72, 70, 1, 1, 200000, 0, '2016-11-10 07:34:09', '2016-11-10 07:34:09'),
(73, 71, 2, 1, 500000, 0, '2016-11-10 07:34:28', '2016-11-10 07:34:28'),
(74, 71, 1, 1, 200000, 0, '2016-11-10 07:34:28', '2016-11-10 07:34:28'),
(75, 72, 2, 1, 500000, 0, '2016-11-10 07:34:52', '2016-11-10 07:34:52'),
(76, 72, 1, 1, 200000, 0, '2016-11-10 07:34:52', '2016-11-10 07:34:52'),
(77, 73, 2, 1, 500000, 0, '2016-11-10 07:36:13', '2016-11-10 07:36:13'),
(78, 73, 1, 1, 200000, 0, '2016-11-10 07:36:13', '2016-11-10 07:36:13'),
(79, 74, 1, 2, 400000, 0, '2016-11-10 07:38:06', '2016-11-10 07:38:06'),
(80, 74, 3, 2, 600000, 0, '2016-11-10 07:38:06', '2016-11-10 07:38:06'),
(81, 75, 2, 2, 1000000, 0, '2016-11-10 07:54:57', '2016-11-10 07:54:57'),
(82, 76, 2, 2, 1000000, 0, '2016-11-10 07:56:27', '2016-11-10 07:56:27'),
(83, 77, 1, 1, 200000, 0, '2016-11-10 07:57:03', '2016-11-10 07:57:03'),
(84, 78, 1, 1, 200000, 0, '2016-11-10 07:58:45', '2016-11-10 07:58:45'),
(85, 79, 1, 1, 200000, 0, '2016-11-10 07:59:54', '2016-11-10 07:59:54'),
(86, 80, 1, 1, 200000, 0, '2016-11-10 08:00:22', '2016-11-10 08:00:22'),
(87, 81, 2, 1, 500000, 0, '2016-11-10 08:04:50', '2016-11-10 08:04:50'),
(88, 82, 2, 1, 500000, 0, '2016-11-10 08:05:26', '2016-11-10 08:05:26'),
(89, 83, 2, 2, 1000000, 0, '2016-11-10 08:08:56', '2016-11-10 08:08:56'),
(90, 84, 2, 2, 1000000, 0, '2016-11-10 08:10:16', '2016-11-10 08:10:16'),
(91, 85, 2, 2, 1000000, 0, '2016-11-10 08:10:21', '2016-11-10 08:10:21'),
(92, 86, 2, 2, 1000000, 0, '2016-11-10 08:12:34', '2016-11-10 08:12:34'),
(93, 87, 2, 2, 1000000, 0, '2016-11-10 08:13:11', '2016-11-10 08:13:11'),
(94, 88, 2, 2, 1000000, 0, '2016-11-10 08:13:54', '2016-11-10 08:13:54'),
(95, 89, 2, 2, 1000000, 0, '2016-11-10 08:14:25', '2016-11-10 08:14:25'),
(96, 90, 2, 2, 1000000, 0, '2016-11-10 08:15:11', '2016-11-10 08:15:11'),
(97, 91, 2, 2, 1000000, 0, '2016-11-10 08:16:58', '2016-11-10 08:16:58'),
(98, 92, 2, 2, 1000000, 0, '2016-11-10 08:17:34', '2016-11-10 08:17:34'),
(99, 93, 2, 3, 1500000, 0, '2016-11-10 08:22:07', '2016-11-10 08:22:07'),
(100, 94, 2, 4, 2000000, 0, '2016-11-10 08:43:53', '2016-11-10 08:43:53'),
(101, 95, 2, 1, 500000, 0, '2016-11-10 17:40:44', '2016-11-10 17:40:44'),
(102, 96, 2, 1, 500000, 0, '2016-11-10 17:41:26', '2016-11-10 17:41:26'),
(103, 96, 1, 1, 200000, 0, '2016-11-10 17:41:26', '2016-11-10 17:41:26'),
(104, 97, 2, 1, 500000, 0, '2016-11-13 07:52:55', '2016-11-13 07:52:55');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `intro` text COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `alias`, `price`, `intro`, `content`, `image`, `keywords`, `description`, `user_id`, `cate_id`, `created_at`, `updated_at`) VALUES
(1, 'Sơ mi cổ tàu', 'so-mi-co-tau', 200000, '<p>Sơ mi cổ t&agrave;u</p>\r\n', '<p>So mi cổ t&agrave;u</p>\r\n', 'asmtn1.jpg', 'ko có gì', '                            		    \r\n                                ko có gì', 2, 48, '2016-10-24 23:28:28', '2016-10-24 23:28:28'),
(2, 'sơ mi trắng', 'so-mi-trang', 500000, '<p>rất đẹp</p>\r\n', '<p>rất đẹp</p>\r\n', 'smd.jpg', 'không có gì', 'rất là đẹp                            		    \r\n                                ', 2, 48, '2016-10-25 23:38:49', '2016-10-25 23:38:49'),
(3, 'Quần ngố DG', 'quan-ngo-dg', 300000, '<p>rất đẹp</p>\r\n', '<p>rất đẹp</p>\r\n', 'qn1.jpg', 'rất đẹp', '                          rất đẹp  		    \r\n                                ', 2, 50, '2016-10-27 01:57:47', '2016-10-27 01:57:47');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'ab.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'ant.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'ant7.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'smd3.jpg', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'smd2.jpg', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'smd4.jpg', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'qs1.jpg', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `payment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `status`, `user_name`, `user_email`, `user_phone`, `message`, `amount`, `payment`, `created_at`, `updated_at`) VALUES
(7, 0, 'buiquangduy', 'duyxinhtrai@gmail.com', '01652400676', 'nam dinh                            \r\n                        ', 1800000, '1', '2016-10-26 01:01:37', '2016-10-26 01:01:37'),
(8, 0, 'Tran Quang Thuc', 'thucml@gmail.com', '33636322', 'giao den Giao Long Nam Dinh                            \r\n                        ', 700000, '1', '2016-10-26 01:04:50', '2016-10-26 01:04:50'),
(9, 0, 'buiquangduy', 'bduy1789@gmail.com', '242525', 'cầu giấy                             \r\n                        ', 300000, '1', '2016-10-27 02:05:29', '2016-10-27 02:05:29'),
(10, 0, 'Đinh văn Quảng', 'quangdt@gmail.com', '01677848375', 'gửi cho t đến quan hoa cầu giấy                            \r\n                        ', 1100000, '1', '2016-10-27 02:07:59', '2016-10-27 02:07:59'),
(11, 0, 'Nguyễn thanh vũ', 'vunguyen@gmail.com', '35399', 'gửi tới xuân mai hòa bình                            \r\n                        ', 800000, '1', '2016-10-27 02:11:18', '2016-10-27 02:11:18'),
(12, 0, 'Nông văn công', 'congnong@gmail.com', '989842', 'gửi tới nhổn                            \r\n                        ', 200000, '1', '2016-10-27 02:12:44', '2016-10-27 02:12:44'),
(13, 0, 'fsfsf', 'hoabanmai@gmail.com', '3535', 'khong có gì                            \r\n                        ', 300000, '2', '2016-10-27 02:15:00', '2016-10-27 02:15:00'),
(14, 0, 'fwgwg', 'wgwgw@gmail.com', '3353', '                  fagsgwgw          \r\n                        ', 600000, '1', '2016-10-27 02:17:48', '2016-10-27 02:17:48'),
(15, 0, 'fsfsf', 'fsfsf@gmail.com', '2525', '                           fssgsg \r\n                        ', 300000, '1', '2016-10-27 02:21:38', '2016-10-27 02:21:38'),
(16, 0, 'gegeg', 'gegegeg@gmail.com', '35363', '                            \r\ngửi đến chùa bộc                   ', 300000, '1', '2016-10-27 02:44:08', '2016-10-27 02:44:08'),
(17, 0, 'sfgwgsg', 'duyxinhtrai@gmail.com', '3535', 'knkfsfs                            \r\n                        ', 300000, '1', '2016-10-27 02:45:22', '2016-10-27 02:45:22'),
(18, 0, 'buiquangduy', 'duyxinhtrai@gmail.com', '01652400676', 'hsdihsi                            \r\n                        ', 500000, '1', '2016-11-10 04:32:59', '2016-11-10 04:32:59'),
(19, 0, 'test', 'duyxinhtrai@gmail.com', '53636', '                            \n                  sfsf      ', 500000, '1', '2016-11-10 06:50:05', '2016-11-10 06:50:05'),
(20, 0, 'test', 'duyxinhtrai@gmail.com', '53636', '                            \r\n                  sfsf      ', 0, '1', '2016-11-10 06:51:24', '2016-11-10 06:51:24'),
(21, 0, 'test', 'duyxinhtrai@gmail.com', '53636', '                            \r\n                  sfsf      ', 0, '1', '2016-11-10 06:52:35', '2016-11-10 06:52:35'),
(22, 0, 'test', 'duyxinhtrai@gmail.com', '53636', '                            \r\n                  sfsf      ', 0, '1', '2016-11-10 06:52:47', '2016-11-10 06:52:47'),
(23, 0, 'test', 'duyxinhtrai@gmail.com', '53636', '                            \r\n                  sfsf      ', 0, '1', '2016-11-10 06:53:07', '2016-11-10 06:53:07'),
(24, 0, 'test', 'duyxinhtrai@gmail.com', '53636', '                            \r\n                  sfsf      ', 0, '1', '2016-11-10 06:53:28', '2016-11-10 06:53:28'),
(25, 0, 'test', 'duyxinhtrai@gmail.com', '53636', '                            \r\n                  sfsf      ', 0, '1', '2016-11-10 06:53:37', '2016-11-10 06:53:37'),
(26, 0, 'test', 'duyxinhtrai@gmail.com', '53636', '                            \r\n                  sfsf      ', 0, '1', '2016-11-10 06:53:56', '2016-11-10 06:53:56'),
(27, 0, 'test', 'duyxinhtrai@gmail.com', '53636', '                            \r\n                  sfsf      ', 0, '1', '2016-11-10 06:54:10', '2016-11-10 06:54:10'),
(28, 0, 'test', 'duyxinhtrai@gmail.com', '53636', '                            \r\n                  sfsf      ', 0, '1', '2016-11-10 06:54:18', '2016-11-10 06:54:18'),
(29, 0, 'test', 'duyxinhtrai@gmail.com', '53636', '                            \r\n                  sfsf      ', 0, '1', '2016-11-10 06:54:36', '2016-11-10 06:54:36'),
(30, 0, 'test', 'duyxinhtrai@gmail.com', '53636', '                            \r\n                  sfsf      ', 0, '1', '2016-11-10 06:54:55', '2016-11-10 06:54:55'),
(31, 0, 'test', 'duyxinhtrai@gmail.com', '53636', '                            \r\n                  sfsf      ', 0, '1', '2016-11-10 06:55:29', '2016-11-10 06:55:29'),
(32, 0, 'test', 'duyxinhtrai@gmail.com', '53636', '                            \r\n                  sfsf      ', 0, '1', '2016-11-10 06:55:46', '2016-11-10 06:55:46'),
(33, 0, 'test', 'duyxinhtrai@gmail.com', '53636', '                            \r\n                  sfsf      ', 0, '1', '2016-11-10 06:57:45', '2016-11-10 06:57:45'),
(34, 0, 'test', 'duyxinhtrai@gmail.com', '53636', '                            \r\n                  sfsf      ', 0, '1', '2016-11-10 07:00:35', '2016-11-10 07:00:35'),
(35, 0, 'test', 'duyxinhtrai@gmail.com', '53636', '                            \r\n                  sfsf      ', 0, '1', '2016-11-10 07:01:05', '2016-11-10 07:01:05'),
(36, 0, 'test', 'duyxinhtrai@gmail.com', '53636', '                            \r\n                  sfsf      ', 0, '1', '2016-11-10 07:01:55', '2016-11-10 07:01:55'),
(37, 0, 'test', 'duyxinhtrai@gmail.com', '53636', '                            \r\n                  sfsf      ', 0, '1', '2016-11-10 07:04:50', '2016-11-10 07:04:50'),
(38, 0, 'test', 'duyxinhtrai@gmail.com', '53636', '                            \r\n                  sfsf      ', 0, '1', '2016-11-10 07:05:00', '2016-11-10 07:05:00'),
(39, 0, 'test', 'duyxinhtrai@gmail.com', '53636', '                            \r\n                  sfsf      ', 0, '1', '2016-11-10 07:07:27', '2016-11-10 07:07:27'),
(40, 0, 'test', 'duyxinhtrai@gmail.com', '53636', '                            \r\n                  sfsf      ', 0, '1', '2016-11-10 07:09:59', '2016-11-10 07:09:59'),
(41, 0, 'test', 'duyxinhtrai@gmail.com', '53636', '                            \r\n                  sfsf      ', 0, '1', '2016-11-10 07:10:09', '2016-11-10 07:10:09'),
(42, 0, 'test', 'duyxinhtrai@gmail.com', '53636', '                            \r\n                  sfsf      ', 0, '1', '2016-11-10 07:11:31', '2016-11-10 07:11:31'),
(43, 0, 'test', 'duyxinhtrai@gmail.com', '53636', '                            \r\n                  sfsf      ', 0, '1', '2016-11-10 07:12:31', '2016-11-10 07:12:31'),
(44, 0, 'buiquangduy', 'duyxinhtrai@gmail.com', '35363', 'Nam định                             \r\n                        ', 700000, '1', '2016-11-10 07:15:14', '2016-11-10 07:15:14'),
(45, 0, 'buiquangduy', 'duyxinhtrai@gmail.com', '35363', 'Nam định                             \r\n                        ', 700000, '1', '2016-11-10 07:15:39', '2016-11-10 07:15:39'),
(46, 0, 'buiquangduy', 'duyxinhtrai@gmail.com', '35363', 'Nam định                             \r\n                        ', 700000, '1', '2016-11-10 07:15:52', '2016-11-10 07:15:52'),
(47, 0, 'buiquangduy', 'duyxinhtrai@gmail.com', '35363', 'Nam định                             \r\n                        ', 700000, '1', '2016-11-10 07:16:26', '2016-11-10 07:16:26'),
(48, 0, 'buiquangduy', 'duyxinhtrai@gmail.com', '35363', 'Nam định                             \r\n                        ', 700000, '1', '2016-11-10 07:16:56', '2016-11-10 07:16:56'),
(49, 0, 'buiquangduy', 'duyxinhtrai@gmail.com', '35363', 'Nam định                             \r\n                        ', 700000, '1', '2016-11-10 07:19:43', '2016-11-10 07:19:43'),
(50, 0, 'buiquangduy', 'duyxinhtrai@gmail.com', '35363', 'Nam định                             \r\n                        ', 700000, '1', '2016-11-10 07:20:12', '2016-11-10 07:20:12'),
(51, 0, 'buiquangduy', 'duyxinhtrai@gmail.com', '35363', 'Nam định                             \r\n                        ', 700000, '1', '2016-11-10 07:20:49', '2016-11-10 07:20:49'),
(52, 0, 'buiquangduy', 'duyxinhtrai@gmail.com', '35363', 'Nam định                             \r\n                        ', 700000, '1', '2016-11-10 07:21:10', '2016-11-10 07:21:10'),
(53, 0, 'buiquangduy', 'duyxinhtrai@gmail.com', '35363', 'Nam định                             \r\n                        ', 700000, '1', '2016-11-10 07:21:36', '2016-11-10 07:21:36'),
(54, 0, 'buiquangduy', 'duyxinhtrai@gmail.com', '35363', 'Nam định                             \r\n                        ', 700000, '1', '2016-11-10 07:22:09', '2016-11-10 07:22:09'),
(55, 0, 'buiquangduy', 'duyxinhtrai@gmail.com', '35363', 'Nam định                             \r\n                        ', 700000, '1', '2016-11-10 07:22:44', '2016-11-10 07:22:44'),
(56, 0, 'buiquangduy', 'duyxinhtrai@gmail.com', '35363', 'Nam định                             \r\n                        ', 700000, '1', '2016-11-10 07:23:53', '2016-11-10 07:23:53'),
(57, 0, 'buiquangduy', 'duyxinhtrai@gmail.com', '35363', 'Nam định                             \r\n                        ', 700000, '1', '2016-11-10 07:24:53', '2016-11-10 07:24:53'),
(58, 0, 'buiquangduy', 'duyxinhtrai@gmail.com', '35363', 'Nam định                             \r\n                        ', 700000, '1', '2016-11-10 07:25:36', '2016-11-10 07:25:36'),
(59, 0, 'buiquangduy', 'duyxinhtrai@gmail.com', '35363', 'Nam định                             \r\n                        ', 700000, '1', '2016-11-10 07:26:24', '2016-11-10 07:26:24'),
(60, 0, 'buiquangduy', 'duyxinhtrai@gmail.com', '35363', 'Nam định                             \r\n                        ', 700000, '1', '2016-11-10 07:26:47', '2016-11-10 07:26:47'),
(61, 0, 'buiquangduy', 'duyxinhtrai@gmail.com', '35363', 'Nam định                             \r\n                        ', 700000, '1', '2016-11-10 07:28:55', '2016-11-10 07:28:55'),
(62, 0, 'buiquangduy', 'duyxinhtrai@gmail.com', '35363', 'Nam định                             \r\n                        ', 700000, '1', '2016-11-10 07:29:31', '2016-11-10 07:29:31'),
(63, 0, 'buiquangduy', 'duyxinhtrai@gmail.com', '35363', 'Nam định                             \r\n                        ', 700000, '1', '2016-11-10 07:29:56', '2016-11-10 07:29:56'),
(64, 0, 'buiquangduy', 'duyxinhtrai@gmail.com', '35363', 'Nam định                             \r\n                        ', 700000, '1', '2016-11-10 07:30:39', '2016-11-10 07:30:39'),
(65, 0, 'buiquangduy', 'duyxinhtrai@gmail.com', '35363', 'Nam định                             \r\n                        ', 700000, '1', '2016-11-10 07:31:38', '2016-11-10 07:31:38'),
(66, 0, 'buiquangduy', 'duyxinhtrai@gmail.com', '35363', 'Nam định                             \r\n                        ', 700000, '1', '2016-11-10 07:32:26', '2016-11-10 07:32:26'),
(67, 0, 'buiquangduy', 'duyxinhtrai@gmail.com', '35363', 'Nam định                             \r\n                        ', 700000, '1', '2016-11-10 07:32:46', '2016-11-10 07:32:46'),
(68, 0, 'buiquangduy', 'duyxinhtrai@gmail.com', '35363', 'Nam định                             \r\n                        ', 700000, '1', '2016-11-10 07:33:13', '2016-11-10 07:33:13'),
(69, 0, 'buiquangduy', 'duyxinhtrai@gmail.com', '35363', 'Nam định                             \r\n                        ', 700000, '1', '2016-11-10 07:33:41', '2016-11-10 07:33:41'),
(70, 0, 'buiquangduy', 'duyxinhtrai@gmail.com', '35363', 'Nam định                             \r\n                        ', 700000, '1', '2016-11-10 07:34:09', '2016-11-10 07:34:09'),
(71, 0, 'buiquangduy', 'duyxinhtrai@gmail.com', '35363', 'Nam định                             \r\n                        ', 700000, '1', '2016-11-10 07:34:28', '2016-11-10 07:34:28'),
(72, 0, 'buiquangduy', 'duyxinhtrai@gmail.com', '35363', 'Nam định                             \r\n                        ', 700000, '1', '2016-11-10 07:34:52', '2016-11-10 07:34:52'),
(73, 0, 'buiquangduy', 'duyxinhtrai@gmail.com', '35363', 'Nam định                             \r\n                        ', 700000, '1', '2016-11-10 07:36:13', '2016-11-10 07:36:13'),
(74, 0, 'tets thu 2', 'bduy1789@gmail.com', '83583', 'Thanh  Hóa                            \r\n                        ', 1000000, '1', '2016-11-10 07:38:06', '2016-11-10 07:38:06'),
(75, 0, 'duy văn bùi', 'bduy1789@gmail.com', '01652400676', 'Nam định                          \r\n                        ', 1000000, '1', '2016-11-10 07:54:57', '2016-11-10 07:54:57'),
(76, 0, 'duy văn bùi', 'bduy1789@gmail.com', '01652400676', 'Nam định                          \r\n                        ', 1000000, '1', '2016-11-10 07:56:27', '2016-11-10 07:56:27'),
(77, 0, 'duy văn bùi', 'bduy1789@gmail.com', '253536', '  dhdhdh                          \r\n                        ', 200000, '1', '2016-11-10 07:57:03', '2016-11-10 07:57:03'),
(78, 0, 'duy văn bùi', 'bduy1789@gmail.com', '253536', '  dhdhdh                          \r\n                        ', 200000, '1', '2016-11-10 07:58:45', '2016-11-10 07:58:45'),
(79, 0, 'duy văn bùi', 'bduy1789@gmail.com', '253536', '  dhdhdh                          \r\n                        ', 200000, '1', '2016-11-10 07:59:54', '2016-11-10 07:59:54'),
(80, 0, 'duy văn bùi', 'bduy1789@gmail.com', '253536', '  dhdhdh                          \r\n                        ', 200000, '1', '2016-11-10 08:00:22', '2016-11-10 08:00:22'),
(81, 0, 'duy văn bùi', 'bduy1789@gmail.com', '9359', 'Nam định                            \r\n                        ', 500000, '1', '2016-11-10 08:04:50', '2016-11-10 08:04:50'),
(82, 0, 'duy văn bùi', 'bduy1789@gmail.com', '9359', 'Nam định                            \r\n                        ', 500000, '1', '2016-11-10 08:05:26', '2016-11-10 08:05:26'),
(83, 0, 'Bùi Quang Duy', 'bduy1789@gmail.com', '01652400676', 'Tôi ở nam định                            \r\n                        ', 1000000, '1', '2016-11-10 08:08:56', '2016-11-10 08:08:56'),
(84, 0, 'Bùi Quang Duy', 'bduy1789@gmail.com', '01652400676', 'Tôi ở nam định                            \r\n                        ', 1000000, '1', '2016-11-10 08:10:16', '2016-11-10 08:10:16'),
(85, 0, 'Bùi Quang Duy', 'bduy1789@gmail.com', '01652400676', 'Tôi ở nam định                            \r\n                        ', 1000000, '1', '2016-11-10 08:10:21', '2016-11-10 08:10:21'),
(86, 0, 'Bùi Quang Duy', 'bduy1789@gmail.com', '01652400676', 'kkkk                            \r\n                        ', 1000000, '1', '2016-11-10 08:12:34', '2016-11-10 08:12:34'),
(87, 0, 'Bùi Quang Duy', 'bduy1789@gmail.com', '01652400676', 'kkkk                            \r\n                        ', 1000000, '1', '2016-11-10 08:13:10', '2016-11-10 08:13:10'),
(88, 0, 'Bùi Quang Duy', 'bduy1789@gmail.com', '01652400676', 'kkkk                            \r\n                        ', 1000000, '1', '2016-11-10 08:13:54', '2016-11-10 08:13:54'),
(89, 0, 'Bùi Quang Duy', 'bduy1789@gmail.com', '01652400676', 'Nghệ An                            \r\n                        ', 1000000, '2', '2016-11-10 08:14:25', '2016-11-10 08:14:25'),
(90, 0, 'Bùi Quang Duy', 'bduy1789@gmail.com', '01652400676', 'Nghệ An                            \r\n                        ', 1000000, '2', '2016-11-10 08:15:11', '2016-11-10 08:15:11'),
(91, 0, 'Bùi Quang Duy', 'bduy1789@gmail.com', '01652400676', 'Nghệ An                            \r\n                        ', 1000000, '2', '2016-11-10 08:16:58', '2016-11-10 08:16:58'),
(92, 0, 'Bùi Quang Duy', 'bduy1789@gmail.com', '01652400676', 'Nghệ An                            \r\n                        ', 1000000, '2', '2016-11-10 08:17:34', '2016-11-10 08:17:34'),
(93, 0, 'cainaykhacbiet', 'abc@gmail.com', '353535', 'hhhh                            \r\n                        ', 1500000, '1', '2016-11-10 08:22:07', '2016-11-10 08:22:07'),
(94, 0, 'hi', 'bduy1789@gmail.com', '2424', 'ko co gi                            \r\n                        ', 2000000, '1', '2016-11-10 08:43:53', '2016-11-10 08:43:53'),
(95, 0, 'hahah', 'bduy1789@gmail.com', '3536', 'nam ddinh                            \r\n                        ', 500000, '1', '2016-11-10 17:40:43', '2016-11-10 17:40:43'),
(96, 0, 'buiquangduy', 'duyxinhtrai@gmail.com', '01652400676', 'hihi                            \r\n                        ', 700000, '1', '2016-11-10 17:41:26', '2016-11-10 17:41:26'),
(97, 0, 'Duy test 3', 'bduy1789@gmail.com', '01652400676', 'không có gì                            \r\n                        ', 500000, '1', '2016-11-13 07:52:55', '2016-11-13 07:52:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'admin', '$2y$10$gfNYaW8x0WGqDGyixDXBMeaJDkz5Rx2LxMF5YQPcW7rB0G0KoXA2y', 'bduy1789@gmail.com', 1, 'L5TV1RcsoKTmP7NFkxjOlzTDJWXHcXUfT6P8Y0UZZMEyz3hslw1rVPMtY97T', '2016-09-21 07:59:56', '2016-11-04 03:02:00'),
(3, 'admin2', '$2y$10$RH2BG5fz37/r9k7gOFwm1eGArNBjNNWQMqZcNs./xFtkqE4vhLTSK', 'bduy189@gmail.com', 1, 'R6njGUV5Kn5AuqcJi1PWH2oAPqi4Hp1XSxTfVHwyjsT3TtaAL2J5bNVX0aHA', '2016-09-21 08:02:19', '2016-09-23 07:30:39'),
(4, 'member', '$2y$10$5R0TYUzZxriERAYhCH9ba.DE/RGbGKVk1eZKECYJc/XDhhFEOzWwO', 'hihi@gmail.com', 1, 'D5VnVcU8OLoPUBryofe2P8AXLTeQGPLhVUfO6gLd', '2016-09-21 08:26:27', '2016-09-21 08:26:27'),
(5, 'member3', '$2y$10$i/S.DZnbN.X/6NGXRcifYud384wfN3FU2.hqhmA8S4fTbLrgCXh/G', 'bduy17893444@gmail.com', 2, 'rGQCTZWCEcLDrCIXz4wWXweIBKKIt2HSLdru3EMY', '2016-09-23 06:57:03', '2016-09-23 07:31:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cates`
--
ALTER TABLE `cates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cates_name_unique` (`name`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_cate_id_foreign` (`cate_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cates`
--
ALTER TABLE `cates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_cate_id_foreign` FOREIGN KEY (`cate_id`) REFERENCES `cates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
