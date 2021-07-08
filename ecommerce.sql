-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 08, 2021 at 10:53 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`, `image`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(147, 'caegory update test22', 'test loreom Epsion Text caegory update1', 'image1625681765.jpg', 10, '2021-07-07 18:25:00', '2021-07-07 22:16:05', NULL),
(148, 'Aurelia Toy', 'Dolor architecto eum laborum esse ipsum quidem autem. Repellendus et omnis explicabo quia distinctio et nemo. Eum sed perspiciatis est voluptas nihil.', '217e5302f89cd99ec785a6a93dff3c57.png', 1, '2021-07-07 18:25:00', '2021-07-07 18:25:00', NULL),
(149, 'Dr. Tyrese Mayert III', 'Et qui nam nihil tenetur. Omnis et eaque alias dolores. Ipsum et est voluptatem tempora et est necessitatibus.', '0a2ba7ceec55c9eb14def9aa87b601fd.png', 1, '2021-07-07 18:25:00', '2021-07-07 18:25:00', NULL),
(159, 'caegory 1', 'test loreom Epsion Text', 'image1625669551.png', 10, '2021-07-07 18:52:31', '2021-07-07 18:52:31', NULL),
(160, 'caegory 1', 'test loreom Epsion Text', 'image1625669731.png', 10, '2021-07-07 18:55:31', '2021-07-07 18:55:31', NULL),
(161, 'caegory 1', 'test loreom Epsion Text', 'image1625669793.png', 10, '2021-07-07 18:56:33', '2021-07-07 18:56:33', NULL),
(162, 'caegory 1', 'test loreom Epsion Text', 'image1625669939.png', 10, '2021-07-07 18:58:59', '2021-07-07 18:58:59', NULL),
(163, 'caegory 1', 'test loreom Epsion Text', 'image1625670126.png', 10, '2021-07-07 19:02:06', '2021-07-07 19:02:06', NULL),
(164, 'caegory 1', 'test loreom Epsion Text', 'image1625670441.png', 10, '2021-07-07 19:07:21', '2021-07-07 19:07:21', NULL),
(165, 'caegory 1', 'test loreom Epsion Text', 'image1625675722.png', 10, '2021-07-07 20:35:22', '2021-07-07 20:36:39', NULL),
(166, 'caegory 1', 'test loreom Epsion Text', 'image1625676158.png', 10, '2021-07-07 20:42:38', '2021-07-07 22:16:35', NULL),
(167, 'caegory 1', 'test loreom Epsion Text', 'image1625676452.png', 10, '2021-07-07 20:47:32', '2021-07-07 20:47:32', NULL),
(168, 'caegory 1', 'test loreom Epsion Text', 'image1625676836.png', 10, '2021-07-07 20:53:56', '2021-07-07 20:53:56', NULL),
(169, 'caegory 1', 'test loreom Epsion Text', 'image1625681800.png', 10, '2021-07-07 22:16:40', '2021-07-07 22:16:40', NULL),
(170, 'Lizzie Hintz', 'Eos et non maxime corporis. Praesentium sed omnis est qui minus vel.', '946947949022760314132cd2bae9f3b0.png', 1, '2021-07-07 22:37:19', '2021-07-07 22:37:19', NULL),
(171, 'Linnea Satterfield', 'Illum magnam ut neque. Sit dicta illum eligendi non. Dolor assumenda dolores dignissimos non dolore sed non doloribus. Et harum omnis quam voluptatem dolores.', '8068b5dd44f61be711a28a69af40935b.png', 1, '2021-07-07 22:37:19', '2021-07-07 22:37:19', NULL),
(172, 'Ottis Mertz', 'Repellat magni at totam vitae dicta. Autem fugit aut occaecati omnis sit voluptatem. Expedita officiis doloremque perspiciatis repellendus molestiae.', 'fe25768047847f8b4c28b021494beb20.png', 1, '2021-07-07 22:37:19', '2021-07-07 22:37:19', NULL),
(173, 'caegory update test22', 'test loreom Epsion Text caegory update1', 'image1625733501.jpg', 1, '2021-07-08 12:32:12', '2021-07-08 12:38:21', NULL),
(174, 'caegory test 1', 'test loreom Epsion Text', 'image1625733301.jpg', 1, '2021-07-08 12:35:01', '2021-07-08 12:35:01', NULL),
(175, 'caegory test 1', 'test loreom Epsion Text', 'image1625733504.jpg', 1, '2021-07-08 12:38:24', '2021-07-08 12:38:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`id`, `order_id`, `driver_id`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 1, '2021-07-08 12:13:14', '2021-07-08 12:13:14'),
(2, 11, 5, 1, '2021-07-08 12:17:04', '2021-07-08 12:17:04');

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
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2021_07_06_184908_create_categories_table', 1),
(11, '2021_07_07_113120_create_permission_tables', 2),
(13, '2019_12_14_000001_create_personal_access_tokens_table', 4),
(17, '2014_10_12_000000_create_users_table', 5),
(18, '2021_07_06_183250_create_products_table', 5),
(20, '2021_07_07_182240_create_orders_table', 6),
(21, '2021_07_07_184635_create_order_product', 7),
(22, '2019_05_03_000001_create_customer_columns', 8),
(23, '2019_05_03_000002_create_subscriptions_table', 8),
(24, '2019_05_03_000003_create_subscription_items_table', 8),
(26, '2021_07_08_071534_create_deliveries_table', 9);

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
(1, 'App\\Models\\API\\V1\\User', 6),
(1, 'App\\Models\\API\\V1\\User', 9),
(1, 'App\\Models\\API\\V1\\User', 11),
(1, 'App\\Models\\API\\V1\\User', 12),
(1, 'App\\Models\\API\\V1\\User', 13),
(2, 'App\\Models\\API\\V1\\User', 1),
(2, 'App\\Models\\API\\V1\\User', 2),
(2, 'App\\Models\\API\\V1\\User', 3),
(2, 'App\\Models\\API\\V1\\User', 10),
(3, 'App\\Models\\API\\V1\\User', 4),
(3, 'App\\Models\\API\\V1\\User', 14);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postalcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_on_card` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` int(11) NOT NULL DEFAULT 0,
  `discount_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `payment_gateway` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'paypal',
  `shipped` tinyint(1) NOT NULL DEFAULT 0,
  `error` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `email`, `name`, `address`, `city`, `province`, `postalcode`, `phone`, `name_on_card`, `discount`, `discount_code`, `subtotal`, `tax`, `total`, `payment_gateway`, `shipped`, `error`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'hanan.dev@gmail.com', NULL, 'Cairo,Egypt', 'Maadi', 'cairo', '0123', '01201611733', 'Hanan', 6, NULL, 5600, 13, 5600, 'strip', 0, NULL, '2021-07-08 02:19:17', '2021-07-08 02:19:17', NULL),
(2, 1, 'hanan.dev@gmail.com', NULL, 'Cairo,Egypt', 'Maadi', 'cairo', '0123', '01201611733', 'Hanan', 6, NULL, 5600, 13, 5600, 'strip', 0, NULL, '2021-07-08 02:21:01', '2021-07-08 02:21:01', NULL),
(3, 1, 'hanan.dev@gmail.com', NULL, 'Cairo,Egypt', 'Maadi', 'cairo', '0123', '01201611733', 'Hanan', 6, NULL, 5600, 13, 5600, 'strip', 0, NULL, '2021-07-08 02:22:42', '2021-07-08 02:22:42', NULL),
(4, 1, 'hanan.dev@gmail.com', NULL, 'Cairo,Egypt', 'Maadi', 'cairo', '0123', '01201611733', 'Hanan', 6, NULL, 5600, 13, 5600, 'strip', 0, NULL, '2021-07-08 02:23:05', '2021-07-08 02:23:05', NULL),
(5, 1, 'hanan.dev@gmail.com', NULL, 'Cairo,Egypt', 'Maadi', 'cairo', '0123', '01201611733', 'Hanan', 6, NULL, 5600, 13, 5600, 'strip', 0, NULL, '2021-07-08 02:23:37', '2021-07-08 02:23:37', NULL),
(6, 1, 'hanan.dev@gmail.com', NULL, 'Cairo,Egypt', 'Maadi', 'cairo', '0123', '01201611733', 'Hanan', 6, NULL, 5600, 13, 5600, 'strip', 0, NULL, '2021-07-08 02:24:21', '2021-07-08 02:24:21', NULL),
(7, 1, 'hanan.dev@gmail.com', NULL, 'Cairo,Egypt', 'Maadi', 'cairo', '0123', '01201611733', 'Hanan', 6, NULL, 5600, 13, 5600, 'strip', 0, NULL, '2021-07-08 02:25:15', '2021-07-08 02:25:15', NULL),
(8, 1, 'hanan.dev@gmail.com', 'Hanan Mohamed', 'Cairo,Egypt', 'Maadi', 'cairo', '0123', '01201611733', 'Hanan', 6, NULL, 5600, 13, 5600, 'strip', 0, NULL, '2021-07-08 02:26:33', '2021-07-08 02:26:33', NULL),
(9, 1, 'hanan.dev@gmail.com', 'Hanan Mohamed', 'Cairo,Egypt', 'Maadi', 'cairo', '0123', '01201611733', 'Hanan', 6, NULL, 5600, 13, 5600, 'strip', 0, NULL, '2021-07-08 09:51:11', '2021-07-08 09:51:11', NULL),
(10, 1, 'hanan.dev@gmail.com', 'Hanan Mohamed', 'Cairo,Egypt', 'Maadi', 'cairo', '0123', '01201611733', 'Hanan', 6, NULL, 5600, 13, 5600, 'strip', 0, NULL, '2021-07-08 09:51:23', '2021-07-08 09:51:23', NULL),
(11, 1, 'hanan.dev@gmail.com', 'Hanan Mohamed', 'Cairo,Egypt', 'Maadi', 'cairo', '0123', '01201611733', 'Hanan', 6, NULL, 5600, 13, 5600, 'strip', 0, NULL, '2021-07-08 09:53:37', '2021-07-08 09:53:37', NULL),
(12, 1, 'hanan.dev@gmail.com', 'Hanan Mohamed', 'Cairo,Egypt', 'Maadi', 'cairo', '0123', '01201611733', 'Hanan', 6, NULL, 5600, 13, 5600, 'strip', 0, NULL, '2021-07-08 09:53:39', '2021-07-08 09:53:39', NULL),
(13, 1, 'hanan.dev@gmail.com', 'Hanan Mohamed', 'Cairo,Egypt', 'Maadi', 'cairo', '0123', '01201611733', 'Hanan', 8, NULL, 8074, 13, 8074, 'strip', 0, NULL, '2021-07-08 10:06:08', '2021-07-08 10:06:08', NULL),
(14, 4, 'hanan.dev@gmail.com', 'Hanan Mohamed', 'Cairo,Egypt', 'Maadi', 'cairo', '0123', '01201611733', 'Hanan', 8, NULL, 8074, 13, 8074, 'paypal', 0, NULL, '2021-07-08 11:18:51', '2021-07-08 11:18:51', NULL),
(15, 6, 'hanan.dev@gmail.com', 'Hanan Mohamed', 'Cairo,Egypt', 'Maadi', 'cairo', '0123', '01201611733', 'Hanan', 8, NULL, 8074, 13, 8074, 'paypal', 0, NULL, '2021-07-08 12:20:04', '2021-07-08 12:20:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, '2021-07-08 02:19:17', '2021-07-08 02:19:17', NULL),
(2, 2, 2, 1, '2021-07-08 02:21:01', '2021-07-08 02:21:01', NULL),
(3, 3, 3, 1, '2021-07-08 02:22:42', '2021-07-08 02:22:42', NULL),
(4, 4, 4, 1, '2021-07-08 02:23:05', '2021-07-08 02:23:05', NULL),
(5, 5, 5, 1, '2021-07-08 02:23:37', '2021-07-08 02:23:37', NULL),
(6, 6, 6, 1, '2021-07-08 02:24:21', '2021-07-08 02:24:21', NULL),
(7, 7, 1, 1, '2021-07-08 02:25:15', '2021-07-08 02:25:15', NULL),
(8, 8, 1, 1, '2021-07-08 02:26:33', '2021-07-08 02:26:33', NULL),
(9, 9, 1, 1, '2021-07-08 09:51:11', '2021-07-08 09:51:11', NULL),
(10, 10, 1, 1, '2021-07-08 09:51:23', '2021-07-08 09:51:23', NULL),
(11, 11, 1, 1, '2021-07-08 09:53:37', '2021-07-08 09:53:37', NULL),
(12, 12, 1, 1, '2021-07-08 09:53:39', '2021-07-08 09:53:39', NULL),
(13, 13, 7, 1, '2021-07-08 10:06:08', '2021-07-08 10:06:08', NULL),
(14, 14, 7, 1, '2021-07-08 11:18:51', '2021-07-08 11:18:51', NULL),
(15, 15, 7, 1, '2021-07-08 12:20:04', '2021-07-08 12:20:04', NULL);

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
(1, 'index', 'api', NULL, NULL),
(2, 'store', 'api', NULL, NULL),
(3, 'show', 'api', NULL, NULL),
(4, 'update', 'api', NULL, NULL),
(5, 'destroy', 'api', NULL, NULL);

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\API\\V1\\User', 1, 'API Token', '8ae9da50b7c497bced6179e69243d7a5c4dd360f54fd4efd8a3e6232b98c476d', '[\"*\"]', NULL, '2021-07-07 16:55:46', '2021-07-07 16:55:46'),
(2, 'App\\Models\\API\\V1\\User', 2, 'auth_token', 'c1fd401405724868db43da6e29154a7713a29d89cfa31fe32be99d465465307e', '[\"*\"]', NULL, '2021-07-07 16:59:54', '2021-07-07 16:59:54'),
(3, 'App\\Models\\API\\V1\\User', 3, 'auth_token', '4b74bb985863d289dd86b860f5daab6a26aaaf2377b3527f5953d6ba1b7eaa95', '[\"*\"]', NULL, '2021-07-07 17:07:03', '2021-07-07 17:07:03'),
(4, 'App\\Models\\API\\V1\\User', 4, 'auth_token', 'e1d9077a5ebfed71bbce600c28ba5205ad89250b9c15a4b60c72f266c995e98f', '[\"*\"]', NULL, '2021-07-07 17:07:59', '2021-07-07 17:07:59'),
(5, 'App\\Models\\API\\V1\\User', 9, 'auth_token', '55abca46322395f25bb36ab1048c5186209df659b9171f74a772ae4cc8a07204', '[\"*\"]', NULL, '2021-07-07 17:16:10', '2021-07-07 17:16:10'),
(6, 'App\\Models\\API\\V1\\User', 10, 'auth_token', 'c1fdd43909694ed0b6d55173d581f2852682dba438a3c6525d7a8d00d2e88e3e', '[\"*\"]', NULL, '2021-07-07 17:17:29', '2021-07-07 17:17:29'),
(7, 'App\\Models\\API\\V1\\User', 10, 'auth_token', 'caa932d62f2e005d3122ad34bd0d72885441f1fc501fd44a2e81c82603aa21cc', '[\"*\"]', NULL, '2021-07-07 17:38:44', '2021-07-07 17:38:44'),
(10, 'App\\Models\\API\\V1\\User', 10, 'auth_token', '1dbc3c798d4d76ceb017a0410fd82e6263ef59a1429fd27de52daf9db03c9aeb', '[\"*\"]', NULL, '2021-07-07 17:59:20', '2021-07-07 17:59:20'),
(11, 'App\\Models\\API\\V1\\User', 10, 'auth_token', 'e2c702d003ed3c3716e601f0855f5e6a8fbff00783735bda486f9902566e1726', '[\"*\"]', '2021-07-07 21:11:16', '2021-07-07 17:59:59', '2021-07-07 21:11:16'),
(12, 'App\\Models\\API\\V1\\User', 10, 'auth_token', 'd960958256d955ca156d14220e33bed99474168f80fec4c5ca8d1d00939e7736', '[\"*\"]', '2021-07-07 20:40:35', '2021-07-07 18:37:30', '2021-07-07 20:40:35'),
(13, 'App\\Models\\API\\V1\\User', 5, 'auth_token', 'b137e32130e41956ce99d6eab43aea976c0d0b675133450a21c20b9969d9c4ff', '[\"*\"]', '2021-07-07 20:42:50', '2021-07-07 20:41:21', '2021-07-07 20:42:50'),
(14, 'App\\Models\\API\\V1\\User', 10, 'auth_token', '865e5a4281de4fbf250fd093a843ddf67512f263c3810a7b7a51931751ee338d', '[\"*\"]', '2021-07-07 22:16:40', '2021-07-07 20:42:22', '2021-07-07 22:16:40'),
(15, 'App\\Models\\API\\V1\\User', 5, 'auth_token', '6b22892596c68a79a18867e8bedef30dee5d2a19c542e9776e50453593522da3', '[\"*\"]', NULL, '2021-07-07 20:43:58', '2021-07-07 20:43:58'),
(16, 'App\\Models\\API\\V1\\User', 5, 'auth_token', '663a4263f9fa5d2fb1cba9a760f8f128d6247298c40431d1e0ce4c547e96699c', '[\"*\"]', '2021-07-07 21:01:55', '2021-07-07 21:01:40', '2021-07-07 21:01:55'),
(17, 'App\\Models\\API\\V1\\User', 5, 'auth_token', '277b51fbc571a9fdfe59530a07f20c1b72816ae9290953af397ccf4aa99c22d6', '[\"*\"]', NULL, '2021-07-07 21:02:37', '2021-07-07 21:02:37'),
(18, 'App\\Models\\API\\V1\\User', 13, 'auth_token', '1b813384f775f5cac10737230a4de00887ab4b771a0e971bdb3a955a05151495', '[\"*\"]', '2021-07-07 21:09:11', '2021-07-07 21:05:28', '2021-07-07 21:09:11'),
(19, 'App\\Models\\API\\V1\\User', 10, 'auth_token', '0fb0cac61e9636b7a5bf19c6307250916f904f631183f50ce5f8a75e633b53b9', '[\"*\"]', '2021-07-07 22:19:43', '2021-07-07 21:09:29', '2021-07-07 22:19:43'),
(20, 'App\\Models\\API\\V1\\User', 13, 'auth_token', 'dbef57bf03ea4f3b3713269db32eb3e3c9e4f75b726cd3face9e17d6581c965b', '[\"*\"]', '2021-07-07 21:12:02', '2021-07-07 21:11:06', '2021-07-07 21:12:02'),
(21, 'App\\Models\\API\\V1\\User', 13, 'auth_token', '5d00b04dbab7d7eedffa8327533330ef29fb56a59d9d62ffc02fc80f1388f084', '[\"*\"]', '2021-07-07 21:13:02', '2021-07-07 21:12:21', '2021-07-07 21:13:02'),
(22, 'App\\Models\\API\\V1\\User', 13, 'auth_token', '6b01f2272da9230b9738348485f4cc14b46c6d2cfbe375b91cb601f8a7ff5d35', '[\"*\"]', '2021-07-07 21:13:50', '2021-07-07 21:13:10', '2021-07-07 21:13:50'),
(23, 'App\\Models\\API\\V1\\User', 10, 'auth_token', '70d8d32889d22db01c43089fbad3ecd6a8f2363872938a998a393bf6ea6defac', '[\"*\"]', '2021-07-07 22:19:00', '2021-07-07 21:13:58', '2021-07-07 22:19:00'),
(24, 'App\\Models\\API\\V1\\User', 13, 'auth_token', 'eecfd6e827a5ae896ae04c54c6f64de382459b53e6e911f93c4c7d05733d3291', '[\"*\"]', '2021-07-07 21:15:42', '2021-07-07 21:15:31', '2021-07-07 21:15:42'),
(25, 'App\\Models\\API\\V1\\User', 10, 'auth_token', 'f61e2dd979d7dfc2d5b810c7be4ec9b8ce00fa21a0d87c906814d7d4a911634d', '[\"*\"]', '2021-07-07 22:19:03', '2021-07-07 21:15:50', '2021-07-07 22:19:03'),
(26, 'App\\Models\\API\\V1\\User', 10, 'auth_token', '4f923b10495b819ab3b1955f7fbecc2696203daac76dfad6ff24d9d4c912b699', '[\"*\"]', NULL, '2021-07-07 21:57:37', '2021-07-07 21:57:37'),
(27, 'App\\Models\\API\\V1\\User', 14, 'auth_token', '83912dcf0125983038e055585217e4d94c5dadb0f21b89fb17daf49296c45b83', '[\"*\"]', '2021-07-07 21:58:18', '2021-07-07 21:57:58', '2021-07-07 21:58:18'),
(28, 'App\\Models\\API\\V1\\User', 13, 'auth_token', 'ac85f8593655649f2db035dc850720f10ef1d44bdbce86c0ae5da354e230bc34', '[\"*\"]', '2021-07-07 21:58:41', '2021-07-07 21:58:30', '2021-07-07 21:58:41'),
(29, 'App\\Models\\API\\V1\\User', 10, 'auth_token', '125edbc649394d8c7c5acf77259cdc889c812647e7eb09bb39da22fbc447553f', '[\"*\"]', NULL, '2021-07-07 21:58:56', '2021-07-07 21:58:56'),
(30, 'App\\Models\\API\\V1\\User', 1, 'auth_token', '3ea532ebc959fa261be92e72ecb74fa1488d8e70390e246cc3726e368b7e45e2', '[\"*\"]', NULL, '2021-07-08 00:11:41', '2021-07-08 00:11:41'),
(31, 'App\\Models\\API\\V1\\User', 1, 'auth_token', 'cb8ddffd42cb902001a18c2b7b76cfd46febd80a3623527bab1fc4be9a6cbdb4', '[\"*\"]', '2021-07-08 10:24:35', '2021-07-08 00:14:17', '2021-07-08 10:24:35'),
(32, 'App\\Models\\API\\V1\\User', 2, 'auth_token', 'fb6eb275c29878fe54f55d0379da4406918a2e078373fceb59fe792d066ec8c6', '[\"*\"]', '2021-07-08 11:00:56', '2021-07-08 10:31:46', '2021-07-08 11:00:56'),
(33, 'App\\Models\\API\\V1\\User', 1, 'auth_token', 'defbab77ff50400aa98e294444b002b0c2fffb7ba0a4eac54307078c7eddef56', '[\"*\"]', '2021-07-08 12:40:20', '2021-07-08 10:45:10', '2021-07-08 12:40:20'),
(34, 'App\\Models\\API\\V1\\User', 3, 'auth_token', '9a60e6bce2e199f3db229ab792fc9f4ba468ed46bf1c7231bbd0a6012bdc6324', '[\"*\"]', '2021-07-08 11:02:03', '2021-07-08 11:01:44', '2021-07-08 11:02:03'),
(35, 'App\\Models\\API\\V1\\User', 4, 'auth_token', '975caa78d43b4c1bc9865524cbe1f7caf537bb34b7499326c7185bc84bb9092d', '[\"*\"]', '2021-07-08 11:03:33', '2021-07-08 11:03:13', '2021-07-08 11:03:33'),
(36, 'App\\Models\\API\\V1\\User', 1, 'auth_token', '6c29bc7257641fddc3e68e6f9a178ddbe74e784515e9749321d653704e0fe676', '[\"*\"]', '2021-07-08 12:25:25', '2021-07-08 11:03:48', '2021-07-08 12:25:25'),
(37, 'App\\Models\\API\\V1\\User', 1, 'auth_token', '78d8b4c0230cb75b2e92452ec031af980baf300c1c9da732f4317294319eddcc', '[\"*\"]', NULL, '2021-07-08 11:09:08', '2021-07-08 11:09:08'),
(38, 'App\\Models\\API\\V1\\User', 4, 'auth_token', 'dfe1a06e0d7f42faaa7aa842fe564c156ca1ad02ca9e1f577a85eb4b12cff839', '[\"*\"]', '2021-07-08 12:20:11', '2021-07-08 11:09:53', '2021-07-08 12:20:11'),
(39, 'App\\Models\\API\\V1\\User', 4, 'auth_token', '343c18054ef945882c7268a9584cfaaa458be5ea40e51ff505d4293d1b4ba135', '[\"*\"]', NULL, '2021-07-08 11:18:57', '2021-07-08 11:18:57'),
(40, 'App\\Models\\API\\V1\\User', 1, 'auth_token', '836c7cbcaca9fcbe4e2164f375b1edb1cba220dde80efe7af89a271a74ed5a87', '[\"*\"]', '2021-07-08 11:56:56', '2021-07-08 11:53:54', '2021-07-08 11:56:56'),
(41, 'App\\Models\\API\\V1\\User', 1, 'auth_token', '3bbc63f9a01b73ae2956f2189564e55238edc0aef07c7f674721d48c1517a691', '[\"*\"]', '2021-07-08 12:17:27', '2021-07-08 12:10:28', '2021-07-08 12:17:27'),
(42, 'App\\Models\\API\\V1\\User', 6, 'auth_token', 'c1dcd27f521e7995a0754576fc47791d42e77a9064b2f004840101705dd5ba6d', '[\"*\"]', '2021-07-08 12:20:19', '2021-07-08 12:19:50', '2021-07-08 12:20:19'),
(43, 'App\\Models\\API\\V1\\User', 1, 'auth_token', '0a333e5b10c589d1c53a1bf5392d53a79a7b4836d3379f07b135dda5c4294c51', '[\"*\"]', '2021-07-08 12:25:51', '2021-07-08 12:25:38', '2021-07-08 12:25:51'),
(44, 'App\\Models\\API\\V1\\User', 4, 'auth_token', '84c290d186f53c2505955b5860c4828b09c17d92e897a31483b81e00a0c1b379', '[\"*\"]', '2021-07-08 12:29:31', '2021-07-08 12:26:01', '2021-07-08 12:29:31'),
(45, 'App\\Models\\API\\V1\\User', 1, 'auth_token', '6c9344b237966ae04edb520b6abef6350c27752e6e4da768ba6d6581584298bb', '[\"*\"]', '2021-07-08 12:39:36', '2021-07-08 12:31:35', '2021-07-08 12:39:36'),
(46, 'App\\Models\\API\\V1\\User', 1, 'auth_token', '608125a6b071238ba657fa77de9357df2af31cfd7b79ac0b97d75569726272ef', '[\"*\"]', '2021-07-08 12:42:23', '2021-07-08 12:40:03', '2021-07-08 12:42:23'),
(47, 'App\\Models\\API\\V1\\User', 1, 'auth_token', 'fdc74aab53b9143c7d59c0611555643a431f639f18970d1f74326541b46174d3', '[\"*\"]', '2021-07-08 12:45:14', '2021-07-08 12:45:03', '2021-07-08 12:45:14');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL,
  `offer` bigint(20) DEFAULT NULL,
  `delivered` int(11) NOT NULL DEFAULT 0,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `sub_title`, `description`, `price`, `offer`, `delivered`, `image`, `category_id`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Trystan Lesch I', 'Omnis enim omnis animi.', 'Id ab aut pariatur dignissimos. Exercitationem aliquam animi nihil quaerat. Voluptates recusandae ut ullam qui.', 5957, 6, 0, '8b321ebd49a6fd2f9f9bb91f8738969c.png', 160, 1, '2021-07-07 22:37:23', '2021-07-07 22:37:23', NULL),
(2, 'Ms. Tierra Marquardt', 'Voluptas ea ea nulla aut.', 'Id voluptates quia sunt dolorem vel dolor temporibus possimus. Animi asperiores tempora cumque est perspiciatis deserunt rerum. Repellendus aut veritatis illo quaerat quia. Itaque aut soluta sint libero.', 3509, 9, 0, '5d63320096bed6cc6409e4a69f68fbc6.png', 168, 1, '2021-07-07 22:37:23', '2021-07-07 22:37:23', NULL),
(3, 'Lillian Lindgren', 'Nisi fugit quia earum eius.', 'Non non nulla delectus dolorum error sunt ad quisquam. Ab ut sint rem accusantium facere necessitatibus. Cum sequi consequuntur quaerat ad et veniam quam. Et explicabo voluptates eum animi ut fugit.', 5446, 2, 0, '2e6567c9dae64bb66eab7d8eb96df42e.png', 169, 2, '2021-07-07 22:37:23', '2021-07-07 22:37:23', NULL),
(4, 'Miss Leilani Cole III', 'Quod amet et hic est.', 'Facilis unde alias amet quo quo odio. Est sed neque adipisci. Repudiandae aut sint nihil ea aut voluptatem repudiandae porro. Ut quaerat et repudiandae quisquam quis quidem.', 7967, 6, 0, '38c42c3e8b4c2b8217b3cf252a8e0a82.png', 160, 2, '2021-07-07 22:37:23', '2021-07-07 22:37:23', NULL),
(5, 'Darrin Mohr PhD', 'Consequatur dolor eum neque.', 'Unde molestiae et eum consequatur perferendis mollitia vero natus. Exercitationem nostrum dolor sapiente quos rerum. Dicta qui qui unde cum quibusdam sed ad.', 3239, 1, 0, 'b8833b68d7330efedf8a5fc83524f0c5.png', 149, 1, '2021-07-07 22:37:23', '2021-07-07 22:37:23', NULL),
(6, 'Antonietta Haley', 'Ipsum molestias autem ut vel.', 'Cum labore sequi nihil ut sed ad. Explicabo quia soluta quo. Aut unde excepturi quis molestiae non.', 9756, 4, 0, '3546c84e3b4a9ac55ee35f72022d3d25.png', 167, 1, '2021-07-07 22:37:23', '2021-07-07 22:37:23', NULL),
(7, 'Nedra Blanda', 'Atque sed quibusdam vel qui.', 'Blanditiis velit rerum cum. Et labore debitis eum quasi. Et dolor blanditiis porro rem provident.', 8776, 8, 0, '717565fa6cd7a8babcd0e2d9fcd5cb2b.png', 159, 1, '2021-07-07 22:37:23', '2021-07-07 22:37:23', NULL),
(8, 'Green Wilkinson', 'Vel est deserunt impedit.', 'Animi vel molestiae officia accusantium. Fuga consequatur totam et rerum quidem deleniti. Eum illo cupiditate porro sunt est distinctio aliquam. Error eum nulla magni blanditiis nobis sed.', 2701, 9, 0, 'fce8d59dad5ed77f11e013b4027e4d2c.png', 172, 1, '2021-07-07 22:37:23', '2021-07-07 22:37:23', NULL),
(9, 'Caleb Stanton Sr.', 'Qui inventore sunt non.', 'Tenetur nemo eius aperiam ipsam voluptates culpa temporibus quas. Sed nobis eaque doloribus necessitatibus ex fugit. In earum officia nulla eos.', 3636, 5, 1, '86a6798e397d1931b3d7aae37d28f5df.png', 165, 1, '2021-07-07 22:37:23', '2021-07-08 12:45:14', NULL),
(10, 'Stacy Schuppe', 'Quia fugiat est quae id id.', 'Saepe eius quae mollitia. Itaque ut voluptate voluptatem voluptate exercitationem odio eveniet. Quaerat ducimus rerum nisi porro aliquam voluptatum. Ad id odit ullam autem maiores omnis soluta voluptas.', 7732, 9, 0, '7e05fab7a0554959c16a5e77b6bb2157.png', 161, 1, '2021-07-07 22:37:23', '2021-07-07 22:37:23', NULL),
(11, 'product 11 update', 'product 11 sub title', 'test loreom Epsion Text product update', 100, 10, 0, 'image1625733743.jpg', 127, 1, '2021-07-08 12:39:36', '2021-07-08 12:42:23', NULL);

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
(1, 'Client', 'api', NULL, NULL),
(2, 'Merchant', 'api', NULL, NULL),
(3, 'Driver', 'api', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pm_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pm_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`, `stripe_id`, `pm_type`, `pm_last_four`, `trial_ends_at`) VALUES
(1, 'Hanan', 'hanan.dev@gmail.com', NULL, '$2y$10$BU489ce98IdbD6Fk5oBbxOqWF9ztj6a0s0KeBYDKuVzHavJBrfbN2', 'Merchant', NULL, '2021-07-08 00:11:41', '2021-07-08 00:11:41', NULL, NULL, NULL, NULL),
(2, 'Hanan', 'hanan2.dev@gmail.com', NULL, '$2y$10$wGcBS8Mqq//gk0onT/snbedfRS6M5rd8Yos9poUXqUxx45mvwZ6N.', 'Merchant', NULL, '2021-07-08 10:31:46', '2021-07-08 10:31:46', NULL, NULL, NULL, NULL),
(4, 'Hanan', 'hanan.driver@gmail.com', NULL, '$2y$10$HN.ae8i6Ks4hVl4jzYU4f.D3UNsjHd3NQTSj8nFnzO1dDRULchxRq', 'Driver', NULL, '2021-07-08 11:03:13', '2021-07-08 11:03:13', NULL, NULL, NULL, NULL),
(5, 'Hanan', 'hanan.driver2@gmail.com', NULL, '$2y$10$HN.ae8i6Ks4hVl4jzYU4f.D3UNsjHd3NQTSj8nFnzO1dDRULchxRq', 'Driver', NULL, '2021-07-08 11:03:13', '2021-07-08 11:03:13', NULL, NULL, NULL, NULL),
(6, 'Hanan', 'hanan.client@gmail.com', NULL, '$2y$10$QOIPcLZtwoe/gJHJInN7QOiipbNRm/j22rfSXj0db2AlcTEzhKQYa', 'Client', NULL, '2021-07-08 12:19:50', '2021-07-08 12:19:50', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_created_by_index` (`created_by`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deliveries_created_by_index` (`created_by`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_index` (`user_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_product_order_id_index` (`order_id`),
  ADD KEY `order_product_product_id_index` (`product_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_index` (`category_id`),
  ADD KEY `products_created_by_index` (`created_by`);

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
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_items_subscription_id_stripe_price_unique` (`subscription_id`,`stripe_price`),
  ADD KEY `subscription_items_stripe_id_index` (`stripe_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
