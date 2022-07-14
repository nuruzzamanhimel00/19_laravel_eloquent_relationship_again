-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2022 at 05:26 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `19_laravel_eloquent_relationship_again`
--

-- --------------------------------------------------------

--
-- Table structure for table `abcs`
--

CREATE TABLE `abcs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `abc_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `country`, `created_at`, `updated_at`) VALUES
(1, 3, 'Niger', '2022-07-13 10:51:12', '2022-07-13 10:51:12'),
(2, 6, 'Nicaragua', '2022-07-13 10:51:12', '2022-07-13 10:51:12'),
(3, 8, 'El Salvador', '2022-07-13 10:51:13', '2022-07-13 10:51:13'),
(4, 3, 'Ethiopia', '2022-07-13 10:51:13', '2022-07-13 10:51:13'),
(5, 7, 'Bhutan', '2022-07-13 10:51:13', '2022-07-13 10:51:13'),
(6, 7, 'Namibia', '2022-07-13 10:51:13', '2022-07-13 10:51:13'),
(7, 4, 'Georgia', '2022-07-13 10:51:13', '2022-07-13 10:51:13'),
(8, 1, 'Korea', '2022-07-13 10:51:13', '2022-07-13 10:51:13'),
(9, 5, 'Qatar', '2022-07-13 10:51:13', '2022-07-13 10:51:13'),
(10, 1, 'British Virgin Islands', '2022-07-13 10:51:13', '2022-07-13 10:51:13'),
(11, 2, 'Cape Verde', '2022-07-13 10:51:13', '2022-07-13 10:51:13'),
(12, 8, 'Ukraine', '2022-07-13 10:51:13', '2022-07-13 10:51:13'),
(13, 8, 'Qatar', '2022-07-13 10:51:13', '2022-07-13 10:51:13'),
(14, 3, 'Sierra Leone', '2022-07-13 10:51:13', '2022-07-13 10:51:13'),
(15, 10, 'Christmas Island', '2022-07-13 10:51:13', '2022-07-13 10:51:13'),
(16, 10, 'El Salvador', '2022-07-13 10:51:13', '2022-07-13 10:51:13'),
(17, 9, 'Indonesia', '2022-07-13 10:51:13', '2022-07-13 10:51:13'),
(18, 10, 'El Salvador', '2022-07-13 10:51:13', '2022-07-13 10:51:13'),
(19, 5, 'Latvia', '2022-07-13 10:51:13', '2022-07-13 10:51:13'),
(20, 1, 'Brunei Darussalam', '2022-07-13 10:51:14', '2022-07-13 10:51:14'),
(21, 13, 'Greece', '2022-07-13 10:51:35', '2022-07-13 10:51:35'),
(22, 13, 'Finland', '2022-07-13 10:51:35', '2022-07-13 10:51:35'),
(23, 5, 'Ukraine', '2022-07-13 10:51:35', '2022-07-13 10:51:35'),
(24, 13, 'Guyana', '2022-07-13 10:51:35', '2022-07-13 10:51:35'),
(25, 15, 'Saint Martin', '2022-07-13 10:51:35', '2022-07-13 10:51:35'),
(26, 7, 'Italy', '2022-07-13 10:51:35', '2022-07-13 10:51:35'),
(27, 13, 'Moldova', '2022-07-13 10:51:35', '2022-07-13 10:51:35'),
(28, 12, 'Cayman Islands', '2022-07-13 10:51:35', '2022-07-13 10:51:35'),
(29, 1, 'Dominican Republic', '2022-07-13 10:51:35', '2022-07-13 10:51:35'),
(30, 13, 'Micronesia', '2022-07-13 10:51:35', '2022-07-13 10:51:35'),
(31, 11, 'Lesotho', '2022-07-13 10:51:35', '2022-07-13 10:51:35'),
(32, 10, 'Tuvalu', '2022-07-13 10:51:35', '2022-07-13 10:51:35'),
(33, 7, 'Cayman Islands', '2022-07-13 10:51:35', '2022-07-13 10:51:35'),
(34, 9, 'Netherlands', '2022-07-13 10:51:35', '2022-07-13 10:51:35'),
(35, 2, 'Sao Tome and Principe', '2022-07-13 10:51:35', '2022-07-13 10:51:35'),
(36, 17, 'Swaziland', '2022-07-13 10:51:35', '2022-07-13 10:51:35'),
(37, 19, 'Palau', '2022-07-13 10:51:36', '2022-07-13 10:51:36'),
(38, 1, 'Ghana', '2022-07-13 10:51:36', '2022-07-13 10:51:36'),
(39, 20, 'Myanmar', '2022-07-13 10:51:36', '2022-07-13 10:51:36'),
(40, 13, 'Madagascar', '2022-07-13 10:51:36', '2022-07-13 10:51:36');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `countries_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `countries_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 2, 'Johannafort', '2022-07-13 10:51:18', '2022-07-13 10:51:18'),
(2, 3, 'Lake Lourdes', '2022-07-13 10:51:19', '2022-07-13 10:51:19'),
(3, 4, 'East Einarberg', '2022-07-13 10:51:19', '2022-07-13 10:51:19'),
(4, 2, 'Zariaville', '2022-07-13 10:51:19', '2022-07-13 10:51:19'),
(5, 4, 'West Christine', '2022-07-13 10:51:19', '2022-07-13 10:51:19'),
(6, 2, 'South Milantown', '2022-07-13 10:51:19', '2022-07-13 10:51:19'),
(7, 5, 'Bruenport', '2022-07-13 10:51:19', '2022-07-13 10:51:19'),
(8, 3, 'East Theresechester', '2022-07-13 10:51:19', '2022-07-13 10:51:19'),
(9, 1, 'Dejuanstad', '2022-07-13 10:51:19', '2022-07-13 10:51:19'),
(10, 1, 'New Ilafurt', '2022-07-13 10:51:19', '2022-07-13 10:51:19'),
(11, 3, 'East Willis', '2022-07-13 10:51:19', '2022-07-13 10:51:19'),
(12, 3, 'West Elvie', '2022-07-13 10:51:19', '2022-07-13 10:51:19'),
(13, 2, 'South Hebermouth', '2022-07-13 10:51:19', '2022-07-13 10:51:19'),
(14, 1, 'Jaunitamouth', '2022-07-13 10:51:20', '2022-07-13 10:51:20'),
(15, 5, 'South Saraibury', '2022-07-13 10:51:20', '2022-07-13 10:51:20'),
(16, 2, 'Cruickshankfort', '2022-07-13 10:51:20', '2022-07-13 10:51:20'),
(17, 1, 'Port Bernard', '2022-07-13 10:51:20', '2022-07-13 10:51:20'),
(18, 4, 'South Eugenia', '2022-07-13 10:51:20', '2022-07-13 10:51:20'),
(19, 3, 'Labadieborough', '2022-07-13 10:51:20', '2022-07-13 10:51:20'),
(20, 5, 'Beckerside', '2022-07-13 10:51:20', '2022-07-13 10:51:20'),
(21, 6, 'Mervinmouth', '2022-07-13 10:51:39', '2022-07-13 10:51:39'),
(22, 3, 'South Wilfridland', '2022-07-13 10:51:39', '2022-07-13 10:51:39'),
(23, 9, 'Arnulfomouth', '2022-07-13 10:51:39', '2022-07-13 10:51:39'),
(24, 4, 'New Alexandre', '2022-07-13 10:51:39', '2022-07-13 10:51:39'),
(25, 3, 'Annabelmouth', '2022-07-13 10:51:39', '2022-07-13 10:51:39'),
(26, 7, 'Lesterland', '2022-07-13 10:51:39', '2022-07-13 10:51:39'),
(27, 2, 'Kyleemouth', '2022-07-13 10:51:39', '2022-07-13 10:51:39'),
(28, 4, 'Santinaview', '2022-07-13 10:51:39', '2022-07-13 10:51:39'),
(29, 2, 'Hilarioville', '2022-07-13 10:51:40', '2022-07-13 10:51:40'),
(30, 9, 'Strosinmouth', '2022-07-13 10:51:40', '2022-07-13 10:51:40'),
(31, 7, 'Keatonborough', '2022-07-13 10:51:40', '2022-07-13 10:51:40'),
(32, 2, 'Alysonmouth', '2022-07-13 10:51:40', '2022-07-13 10:51:40'),
(33, 9, 'East Lester', '2022-07-13 10:51:40', '2022-07-13 10:51:40'),
(34, 10, 'Pfeffermouth', '2022-07-13 10:51:40', '2022-07-13 10:51:40'),
(35, 7, 'Jonesmouth', '2022-07-13 10:51:40', '2022-07-13 10:51:40'),
(36, 10, 'Burdettestad', '2022-07-13 10:51:40', '2022-07-13 10:51:40'),
(37, 4, 'Lake Herbert', '2022-07-13 10:51:40', '2022-07-13 10:51:40'),
(38, 1, 'Funkton', '2022-07-13 10:51:40', '2022-07-13 10:51:40'),
(39, 7, 'Careyfort', '2022-07-13 10:51:40', '2022-07-13 10:51:40'),
(40, 5, 'Stephenside', '2022-07-13 10:51:40', '2022-07-13 10:51:40');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `body`, `commentable_type`, `commentable_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'This is comment modya', 'App\\Models\\Post', 3, '2022-07-14 04:45:41', '2022-07-14 04:45:41'),
(2, 14, 'This is comment modya', 'App\\Models\\Post', 28, '2022-07-14 04:45:57', '2022-07-14 04:45:57'),
(3, 2, 'This is comment Video', 'App\\Models\\Video', 31, '2022-07-14 04:46:28', '2022-07-14 04:46:28'),
(4, 4, 'This is comment Video', 'App\\Models\\Video', 7, '2022-07-14 04:55:41', '2022-07-14 04:55:41');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Colombia', '2022-07-13 10:51:17', '2022-07-13 10:51:17'),
(2, 'Saint Helena', '2022-07-13 10:51:17', '2022-07-13 10:51:17'),
(3, 'South Africa', '2022-07-13 10:51:18', '2022-07-13 10:51:18'),
(4, 'Namibia', '2022-07-13 10:51:18', '2022-07-13 10:51:18'),
(5, 'Georgia', '2022-07-13 10:51:18', '2022-07-13 10:51:18'),
(6, 'United States Virgin Islands', '2022-07-13 10:51:39', '2022-07-13 10:51:39'),
(7, 'Nauru', '2022-07-13 10:51:39', '2022-07-13 10:51:39'),
(8, 'Swaziland', '2022-07-13 10:51:39', '2022-07-13 10:51:39'),
(9, 'Brunei Darussalam', '2022-07-13 10:51:39', '2022-07-13 10:51:39'),
(10, 'Benin', '2022-07-13 10:51:39', '2022-07-13 10:51:39');

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
(134, '2022_07_13_063945_create_cities_table', 2),
(135, '2022_07_13_071410_create_counties_table', 2),
(136, '2022_07_13_074825_create_shops_table', 3),
(137, '2022_07_13_093325_create_abcs_table', 4),
(141, '2014_10_12_000000_create_users_table', 5),
(142, '2014_10_12_100000_create_password_resets_table', 5),
(143, '2019_08_19_000000_create_failed_jobs_table', 5),
(144, '2019_12_14_000001_create_personal_access_tokens_table', 5),
(145, '2022_06_20_101721_create_addresses_table', 5),
(146, '2022_06_20_102717_refresh', 5),
(147, '2022_06_20_102752_rollback', 5),
(148, '2022_06_20_123246_create_posts_table', 5),
(149, '2022_06_20_152214_create_tags_table', 5),
(150, '2022_06_20_160709_create_post_tag_table', 5),
(151, '2022_06_21_104302_create_projects_table', 5),
(152, '2022_06_21_104448_create_tasks_table', 5),
(153, '2022_06_21_122050_create_project_ones_table', 5),
(154, '2022_06_21_122320_create_user_ones_table', 5),
(155, '2022_06_21_122637_create_task_ones_table', 5),
(156, '2022_06_21_143650_create_projectone_userones_table', 5),
(157, '2022_06_21_162826_create_comments_table', 5),
(158, '2022_06_21_164634_create_videos_table', 5),
(159, '2022_06_22_045158_create_taggables_table', 5),
(160, '2022_07_13_161735_create_countries_table', 5),
(161, '2022_07_13_162101_create_cities_table', 5),
(162, '2022_07_13_163747_create_shops_table', 5);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 4, 'Et dolore ipsa eveniet eaque at.', '2022-07-13 10:51:14', '2022-07-13 10:51:14'),
(2, 2, 'Neque omnis et voluptas.', '2022-07-13 10:51:14', '2022-07-13 10:51:14'),
(3, NULL, 'Voluptatem vel cumque fugiat non debitis.', '2022-07-13 10:51:14', '2022-07-13 10:51:14'),
(4, 2, 'Qui sit beatae accusamus quam error ut sequi asperiores.', '2022-07-13 10:51:14', '2022-07-13 10:51:14'),
(5, 9, 'Et non rerum illum maiores est quod odit.', '2022-07-13 10:51:14', '2022-07-13 10:51:14'),
(6, 2, 'Eos vel et molestiae est eos eaque suscipit.', '2022-07-13 10:51:14', '2022-07-13 10:51:14'),
(7, 9, 'Perferendis sed porro facere architecto et est rerum occaecati.', '2022-07-13 10:51:14', '2022-07-13 10:51:14'),
(8, 8, 'Accusantium rerum consequatur nostrum expedita commodi reiciendis accusamus.', '2022-07-13 10:51:14', '2022-07-13 10:51:14'),
(9, 6, 'Nihil vel impedit porro dignissimos ipsum error.', '2022-07-13 10:51:14', '2022-07-13 10:51:14'),
(10, 2, 'Quaerat quo aut alias.', '2022-07-13 10:51:14', '2022-07-13 10:51:14'),
(11, NULL, 'Voluptatum totam et et exercitationem aut nulla.', '2022-07-13 10:51:14', '2022-07-13 10:51:14'),
(12, 4, 'Ducimus tempora similique omnis architecto ea alias necessitatibus.', '2022-07-13 10:51:14', '2022-07-13 10:51:14'),
(13, NULL, 'Minus consequatur qui velit et voluptatem aspernatur repellendus.', '2022-07-13 10:51:14', '2022-07-13 10:51:14'),
(14, 7, 'Eos rem est qui laudantium.', '2022-07-13 10:51:14', '2022-07-13 10:51:14'),
(15, 6, 'Qui ut dolores esse.', '2022-07-13 10:51:14', '2022-07-13 10:51:14'),
(16, NULL, 'Et facere aliquam qui sit deserunt sed.', '2022-07-13 10:51:14', '2022-07-13 10:51:14'),
(17, 7, 'Animi eos aut libero autem optio ipsa.', '2022-07-13 10:51:14', '2022-07-13 10:51:14'),
(18, 7, 'Sint eos quod nihil sunt ut.', '2022-07-13 10:51:14', '2022-07-13 10:51:14'),
(19, NULL, 'Rerum dicta iusto dolores qui et qui ut est.', '2022-07-13 10:51:14', '2022-07-13 10:51:14'),
(20, NULL, 'Quis sint blanditiis nobis beatae a voluptas nisi.', '2022-07-13 10:51:15', '2022-07-13 10:51:15'),
(21, NULL, 'Debitis ut unde est vero aspernatur qui sed.', '2022-07-13 10:51:36', '2022-07-13 10:51:36'),
(22, 17, 'Ut voluptatum et autem ut iusto perspiciatis voluptatem.', '2022-07-13 10:51:36', '2022-07-13 10:51:36'),
(23, 14, 'Culpa voluptates enim commodi veritatis totam quod ea et.', '2022-07-13 10:51:36', '2022-07-13 10:51:36'),
(24, 16, 'Soluta aliquid unde voluptatem recusandae libero laboriosam.', '2022-07-13 10:51:36', '2022-07-13 10:51:36'),
(25, NULL, 'Sequi commodi itaque voluptatem adipisci voluptas qui numquam iusto.', '2022-07-13 10:51:36', '2022-07-13 10:51:36'),
(26, 2, 'Hic eum qui rem quasi.', '2022-07-13 10:51:36', '2022-07-13 10:51:36'),
(27, 12, 'Cumque pariatur autem consequatur neque ut voluptatum beatae.', '2022-07-13 10:51:36', '2022-07-13 10:51:36'),
(28, NULL, 'Dolores iure laborum odio sint quidem consequatur.', '2022-07-13 10:51:36', '2022-07-13 10:51:36'),
(29, NULL, 'Vitae repellendus saepe molestiae voluptas qui.', '2022-07-13 10:51:36', '2022-07-13 10:51:36'),
(30, 17, 'Aut laborum omnis laboriosam soluta illo quidem ullam.', '2022-07-13 10:51:36', '2022-07-13 10:51:36'),
(31, NULL, 'Dolor molestiae culpa earum qui eos et occaecati.', '2022-07-13 10:51:36', '2022-07-13 10:51:36'),
(32, 20, 'Minima sapiente fugiat omnis ea beatae.', '2022-07-13 10:51:36', '2022-07-13 10:51:36'),
(33, NULL, 'Doloremque est nostrum eos qui nobis soluta.', '2022-07-13 10:51:37', '2022-07-13 10:51:37'),
(34, NULL, 'Eveniet saepe dolorem illo aut beatae maiores totam.', '2022-07-13 10:51:37', '2022-07-13 10:51:37'),
(35, 2, 'Eaque quo cum praesentium.', '2022-07-13 10:51:37', '2022-07-13 10:51:37'),
(36, NULL, 'Et quam voluptatibus ducimus voluptatibus.', '2022-07-13 10:51:37', '2022-07-13 10:51:37'),
(37, NULL, 'Quia id sit illum alias vero.', '2022-07-13 10:51:37', '2022-07-13 10:51:37'),
(38, NULL, 'Laudantium et voluptates accusamus.', '2022-07-13 10:51:37', '2022-07-13 10:51:37'),
(39, NULL, 'Nihil quod tenetur dolores molestiae voluptatem saepe cupiditate laboriosam.', '2022-07-13 10:51:37', '2022-07-13 10:51:37'),
(40, 18, 'Cum id voluptates quia ratione labore quos.', '2022-07-13 10:51:37', '2022-07-13 10:51:37');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projectone_userones`
--

CREATE TABLE `projectone_userones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Recusandae autem dolorem beatae eveniet molestias autem.', '2022-07-13 10:51:07', '2022-07-13 10:51:07'),
(2, 'Quidem id sunt tenetur nihil minima.', '2022-07-13 10:51:07', '2022-07-13 10:51:07'),
(3, 'Fuga nisi suscipit eaque in.', '2022-07-13 10:51:07', '2022-07-13 10:51:07'),
(4, 'Illum iure quis distinctio nobis qui inventore hic omnis.', '2022-07-13 10:51:07', '2022-07-13 10:51:07'),
(5, 'Dolor cum voluptatibus error et voluptatem quaerat voluptas.', '2022-07-13 10:51:07', '2022-07-13 10:51:07'),
(6, 'Soluta id quidem voluptate facilis eum odio.', '2022-07-13 10:51:07', '2022-07-13 10:51:07'),
(7, 'Qui earum in repudiandae ut.', '2022-07-13 10:51:08', '2022-07-13 10:51:08'),
(8, 'Excepturi cupiditate ut corrupti quia sed animi.', '2022-07-13 10:51:08', '2022-07-13 10:51:08'),
(9, 'Non voluptate aliquam qui ratione.', '2022-07-13 10:51:08', '2022-07-13 10:51:08'),
(10, 'Unde magnam inventore quia ea maxime ut beatae.', '2022-07-13 10:51:08', '2022-07-13 10:51:08'),
(11, 'Ipsum dicta quos placeat at provident optio.', '2022-07-13 10:51:30', '2022-07-13 10:51:30'),
(12, 'Nulla doloribus eum hic soluta.', '2022-07-13 10:51:30', '2022-07-13 10:51:30'),
(13, 'Sed dicta ad quibusdam modi.', '2022-07-13 10:51:30', '2022-07-13 10:51:30'),
(14, 'Et temporibus dolores quo quibusdam perferendis.', '2022-07-13 10:51:31', '2022-07-13 10:51:31'),
(15, 'Qui et optio iste non eos et tempora.', '2022-07-13 10:51:31', '2022-07-13 10:51:31'),
(16, 'Magni voluptatum voluptas dolor ut sint.', '2022-07-13 10:51:31', '2022-07-13 10:51:31'),
(17, 'Architecto dolor repellat eum quia molestiae libero qui.', '2022-07-13 10:51:31', '2022-07-13 10:51:31'),
(18, 'Quae quis dicta ullam.', '2022-07-13 10:51:31', '2022-07-13 10:51:31'),
(19, 'Maiores sit dignissimos voluptas velit.', '2022-07-13 10:51:31', '2022-07-13 10:51:31'),
(20, 'Laborum non vel voluptate illum velit sint.', '2022-07-13 10:51:31', '2022-07-13 10:51:31');

-- --------------------------------------------------------

--
-- Table structure for table `project_ones`
--

CREATE TABLE `project_ones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_ones`
--

INSERT INTO `project_ones` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Blanditiis delectus voluptas maxime tenetur.', '2022-07-13 10:51:03', '2022-07-13 10:51:03'),
(2, 'Quos odit id ut repellendus sit et ipsam.', '2022-07-13 10:51:03', '2022-07-13 10:51:03'),
(3, 'Veniam ipsam nulla est molestias.', '2022-07-13 10:51:03', '2022-07-13 10:51:03'),
(4, 'Consectetur laudantium et voluptas a dolore.', '2022-07-13 10:51:03', '2022-07-13 10:51:03'),
(5, 'Incidunt autem est numquam vitae.', '2022-07-13 10:51:03', '2022-07-13 10:51:03'),
(6, 'Dolorem iste eaque quasi delectus tenetur.', '2022-07-13 10:51:03', '2022-07-13 10:51:03'),
(7, 'Omnis ea quidem quo tenetur nisi commodi.', '2022-07-13 10:51:03', '2022-07-13 10:51:03'),
(8, 'Et perferendis assumenda dolorem possimus adipisci nisi illo deserunt.', '2022-07-13 10:51:03', '2022-07-13 10:51:03'),
(9, 'Deserunt hic sint labore voluptatem.', '2022-07-13 10:51:03', '2022-07-13 10:51:03'),
(10, 'Placeat placeat quo ratione perspiciatis.', '2022-07-13 10:51:03', '2022-07-13 10:51:03'),
(11, 'Modi eos vel quasi velit.', '2022-07-13 10:51:26', '2022-07-13 10:51:26'),
(12, 'Minus repellendus dolorem eos.', '2022-07-13 10:51:26', '2022-07-13 10:51:26'),
(13, 'Et et enim velit provident et.', '2022-07-13 10:51:26', '2022-07-13 10:51:26'),
(14, 'Eos quia qui dolor porro ea.', '2022-07-13 10:51:26', '2022-07-13 10:51:26'),
(15, 'Quia fuga totam consequatur dolorem illum.', '2022-07-13 10:51:26', '2022-07-13 10:51:26'),
(16, 'Ea unde et quia.', '2022-07-13 10:51:26', '2022-07-13 10:51:26'),
(17, 'Ea illo quod omnis sequi.', '2022-07-13 10:51:27', '2022-07-13 10:51:27'),
(18, 'Beatae dolore voluptas ad molestias voluptatem inventore mollitia.', '2022-07-13 10:51:27', '2022-07-13 10:51:27'),
(19, 'Quae facere animi nobis ut.', '2022-07-13 10:51:27', '2022-07-13 10:51:27'),
(20, 'Iste sequi asperiores laudantium autem minima explicabo voluptatum.', '2022-07-13 10:51:27', '2022-07-13 10:51:27');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cities_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `cities_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 20, 'repellendus', '2022-07-13 10:51:20', '2022-07-13 10:51:20'),
(2, 5, 'a', '2022-07-13 10:51:20', '2022-07-13 10:51:20'),
(3, 5, 'magni', '2022-07-13 10:51:20', '2022-07-13 10:51:20'),
(4, 18, 'consequatur', '2022-07-13 10:51:20', '2022-07-13 10:51:20'),
(5, 17, 'aliquid', '2022-07-13 10:51:20', '2022-07-13 10:51:20'),
(6, 4, 'perferendis', '2022-07-13 10:51:20', '2022-07-13 10:51:20'),
(7, 18, 'et', '2022-07-13 10:51:20', '2022-07-13 10:51:20'),
(8, 9, 'blanditiis', '2022-07-13 10:51:21', '2022-07-13 10:51:21'),
(9, 4, 'perspiciatis', '2022-07-13 10:51:21', '2022-07-13 10:51:21'),
(10, 1, 'et', '2022-07-13 10:51:21', '2022-07-13 10:51:21'),
(11, 18, 'perspiciatis', '2022-07-13 10:51:21', '2022-07-13 10:51:21'),
(12, 19, 'laudantium', '2022-07-13 10:51:21', '2022-07-13 10:51:21'),
(13, 9, 'dolor', '2022-07-13 10:51:21', '2022-07-13 10:51:21'),
(14, 18, 'nihil', '2022-07-13 10:51:21', '2022-07-13 10:51:21'),
(15, 2, 'eos', '2022-07-13 10:51:21', '2022-07-13 10:51:21'),
(16, 19, 'repellat', '2022-07-13 10:51:21', '2022-07-13 10:51:21'),
(17, 4, 'quis', '2022-07-13 10:51:21', '2022-07-13 10:51:21'),
(18, 3, 'quo', '2022-07-13 10:51:21', '2022-07-13 10:51:21'),
(19, 15, 'qui', '2022-07-13 10:51:21', '2022-07-13 10:51:21'),
(20, 20, 'qui', '2022-07-13 10:51:21', '2022-07-13 10:51:21'),
(21, 6, 'sint', '2022-07-13 10:51:21', '2022-07-13 10:51:21'),
(22, 17, 'necessitatibus', '2022-07-13 10:51:21', '2022-07-13 10:51:21'),
(23, 4, 'laboriosam', '2022-07-13 10:51:21', '2022-07-13 10:51:21'),
(24, 7, 'doloribus', '2022-07-13 10:51:21', '2022-07-13 10:51:21'),
(25, 14, 'ut', '2022-07-13 10:51:22', '2022-07-13 10:51:22'),
(26, 4, 'totam', '2022-07-13 10:51:22', '2022-07-13 10:51:22'),
(27, 2, 'fugit', '2022-07-13 10:51:22', '2022-07-13 10:51:22'),
(28, 16, 'corporis', '2022-07-13 10:51:22', '2022-07-13 10:51:22'),
(29, 16, 'sequi', '2022-07-13 10:51:22', '2022-07-13 10:51:22'),
(30, 6, 'maxime', '2022-07-13 10:51:22', '2022-07-13 10:51:22'),
(31, 20, 'voluptatem', '2022-07-13 10:51:22', '2022-07-13 10:51:22'),
(32, 5, 'nobis', '2022-07-13 10:51:22', '2022-07-13 10:51:22'),
(33, 9, 'nam', '2022-07-13 10:51:22', '2022-07-13 10:51:22'),
(34, 11, 'sed', '2022-07-13 10:51:22', '2022-07-13 10:51:22'),
(35, 1, 'ullam', '2022-07-13 10:51:22', '2022-07-13 10:51:22'),
(36, 3, 'facere', '2022-07-13 10:51:22', '2022-07-13 10:51:22'),
(37, 10, 'nobis', '2022-07-13 10:51:22', '2022-07-13 10:51:22'),
(38, 11, 'facere', '2022-07-13 10:51:22', '2022-07-13 10:51:22'),
(39, 5, 'animi', '2022-07-13 10:51:22', '2022-07-13 10:51:22'),
(40, 5, 'minima', '2022-07-13 10:51:22', '2022-07-13 10:51:22'),
(41, 11, 'nihil', '2022-07-13 10:51:23', '2022-07-13 10:51:23'),
(42, 6, 'aut', '2022-07-13 10:51:23', '2022-07-13 10:51:23'),
(43, 8, 'fugit', '2022-07-13 10:51:23', '2022-07-13 10:51:23'),
(44, 13, 'rerum', '2022-07-13 10:51:23', '2022-07-13 10:51:23'),
(45, 16, 'harum', '2022-07-13 10:51:23', '2022-07-13 10:51:23'),
(46, 9, 'corporis', '2022-07-13 10:51:23', '2022-07-13 10:51:23'),
(47, 14, 'eligendi', '2022-07-13 10:51:23', '2022-07-13 10:51:23'),
(48, 12, 'tenetur', '2022-07-13 10:51:23', '2022-07-13 10:51:23'),
(49, 5, 'ullam', '2022-07-13 10:51:23', '2022-07-13 10:51:23'),
(50, 19, 'sunt', '2022-07-13 10:51:23', '2022-07-13 10:51:23'),
(51, 25, 'a', '2022-07-13 10:51:40', '2022-07-13 10:51:40'),
(52, 9, 'quia', '2022-07-13 10:51:40', '2022-07-13 10:51:40'),
(53, 2, 'animi', '2022-07-13 10:51:40', '2022-07-13 10:51:40'),
(54, 18, 'quia', '2022-07-13 10:51:40', '2022-07-13 10:51:40'),
(55, 1, 'non', '2022-07-13 10:51:41', '2022-07-13 10:51:41'),
(56, 20, 'dolores', '2022-07-13 10:51:41', '2022-07-13 10:51:41'),
(57, 19, 'unde', '2022-07-13 10:51:41', '2022-07-13 10:51:41'),
(58, 8, 'porro', '2022-07-13 10:51:41', '2022-07-13 10:51:41'),
(59, 38, 'omnis', '2022-07-13 10:51:41', '2022-07-13 10:51:41'),
(60, 5, 'cupiditate', '2022-07-13 10:51:41', '2022-07-13 10:51:41'),
(61, 35, 'molestias', '2022-07-13 10:51:41', '2022-07-13 10:51:41'),
(62, 30, 'labore', '2022-07-13 10:51:41', '2022-07-13 10:51:41'),
(63, 3, 'ullam', '2022-07-13 10:51:41', '2022-07-13 10:51:41'),
(64, 9, 'quia', '2022-07-13 10:51:41', '2022-07-13 10:51:41'),
(65, 27, 'quo', '2022-07-13 10:51:41', '2022-07-13 10:51:41'),
(66, 8, 'sint', '2022-07-13 10:51:41', '2022-07-13 10:51:41'),
(67, 8, 'ducimus', '2022-07-13 10:51:41', '2022-07-13 10:51:41'),
(68, 8, 'similique', '2022-07-13 10:51:41', '2022-07-13 10:51:41'),
(69, 5, 'rerum', '2022-07-13 10:51:41', '2022-07-13 10:51:41'),
(70, 11, 'autem', '2022-07-13 10:51:41', '2022-07-13 10:51:41'),
(71, 22, 'eius', '2022-07-13 10:51:42', '2022-07-13 10:51:42'),
(72, 10, 'nesciunt', '2022-07-13 10:51:42', '2022-07-13 10:51:42'),
(73, 8, 'quam', '2022-07-13 10:51:42', '2022-07-13 10:51:42'),
(74, 32, 'ut', '2022-07-13 10:51:42', '2022-07-13 10:51:42'),
(75, 39, 'omnis', '2022-07-13 10:51:42', '2022-07-13 10:51:42'),
(76, 40, 'mollitia', '2022-07-13 10:51:42', '2022-07-13 10:51:42'),
(77, 3, 'illum', '2022-07-13 10:51:42', '2022-07-13 10:51:42'),
(78, 17, 'maxime', '2022-07-13 10:51:42', '2022-07-13 10:51:42'),
(79, 34, 'voluptatum', '2022-07-13 10:51:42', '2022-07-13 10:51:42'),
(80, 19, 'qui', '2022-07-13 10:51:42', '2022-07-13 10:51:42'),
(81, 33, 'aut', '2022-07-13 10:51:42', '2022-07-13 10:51:42'),
(82, 11, 'aperiam', '2022-07-13 10:51:42', '2022-07-13 10:51:42'),
(83, 16, 'quaerat', '2022-07-13 10:51:42', '2022-07-13 10:51:42'),
(84, 40, 'voluptatem', '2022-07-13 10:51:42', '2022-07-13 10:51:42'),
(85, 39, 'facere', '2022-07-13 10:51:42', '2022-07-13 10:51:42'),
(86, 3, 'molestias', '2022-07-13 10:51:42', '2022-07-13 10:51:42'),
(87, 7, 'voluptatem', '2022-07-13 10:51:42', '2022-07-13 10:51:42'),
(88, 11, 'recusandae', '2022-07-13 10:51:42', '2022-07-13 10:51:42'),
(89, 24, 'eius', '2022-07-13 10:51:43', '2022-07-13 10:51:43'),
(90, 11, 'voluptates', '2022-07-13 10:51:43', '2022-07-13 10:51:43'),
(91, 38, 'id', '2022-07-13 10:51:43', '2022-07-13 10:51:43'),
(92, 24, 'voluptatem', '2022-07-13 10:51:43', '2022-07-13 10:51:43'),
(93, 13, 'deserunt', '2022-07-13 10:51:43', '2022-07-13 10:51:43'),
(94, 30, 'aut', '2022-07-13 10:51:43', '2022-07-13 10:51:43'),
(95, 24, 'nihil', '2022-07-13 10:51:43', '2022-07-13 10:51:43'),
(96, 35, 'ut', '2022-07-13 10:51:43', '2022-07-13 10:51:43'),
(97, 3, 'iste', '2022-07-13 10:51:44', '2022-07-13 10:51:44'),
(98, 30, 'voluptas', '2022-07-13 10:51:44', '2022-07-13 10:51:44'),
(99, 39, 'qui', '2022-07-13 10:51:44', '2022-07-13 10:51:44'),
(100, 29, 'dolor', '2022-07-13 10:51:44', '2022-07-13 10:51:44');

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `tag_id` int(11) NOT NULL,
  `taggable_id` int(11) NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taggables`
--

INSERT INTO `taggables` (`tag_id`, `taggable_id`, `taggable_type`) VALUES
(41, 25, 'App\\Models\\Post'),
(42, 1, 'App\\Models\\Post'),
(43, 1, 'App\\Models\\Post'),
(44, 1, 'App\\Models\\Post');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Miss Myrna McGlynn', '2022-07-13 10:51:15', '2022-07-13 10:51:15'),
(2, 'Ms. Karlie Graham', '2022-07-13 10:51:15', '2022-07-13 10:51:15'),
(3, 'Mabel Schumm', '2022-07-13 10:51:15', '2022-07-13 10:51:15'),
(4, 'Bryce O\'Kon', '2022-07-13 10:51:15', '2022-07-13 10:51:15'),
(5, 'Nathaniel Kassulke', '2022-07-13 10:51:15', '2022-07-13 10:51:15'),
(6, 'Sylvan Effertz V', '2022-07-13 10:51:15', '2022-07-13 10:51:15'),
(7, 'Fernando Cruickshank V', '2022-07-13 10:51:15', '2022-07-13 10:51:15'),
(8, 'Chesley Swaniawski', '2022-07-13 10:51:15', '2022-07-13 10:51:15'),
(9, 'Oran Eichmann Jr.', '2022-07-13 10:51:15', '2022-07-13 10:51:15'),
(10, 'Miss Arlene Davis', '2022-07-13 10:51:16', '2022-07-13 10:51:16'),
(11, 'Matilda Wiza', '2022-07-13 10:51:16', '2022-07-13 10:51:16'),
(12, 'Art Wintheiser', '2022-07-13 10:51:16', '2022-07-13 10:51:16'),
(13, 'Mr. Hayden Walter I', '2022-07-13 10:51:16', '2022-07-13 10:51:16'),
(14, 'Asa Johnston', '2022-07-13 10:51:16', '2022-07-13 10:51:16'),
(15, 'Aliya Auer', '2022-07-13 10:51:17', '2022-07-13 10:51:17'),
(16, 'Jarrod Rice', '2022-07-13 10:51:17', '2022-07-13 10:51:17'),
(17, 'Nikolas Boehm', '2022-07-13 10:51:17', '2022-07-13 10:51:17'),
(18, 'Lester Kirlin Jr.', '2022-07-13 10:51:17', '2022-07-13 10:51:17'),
(19, 'Clint Wolf', '2022-07-13 10:51:17', '2022-07-13 10:51:17'),
(20, 'Angeline Bahringer', '2022-07-13 10:51:17', '2022-07-13 10:51:17'),
(21, 'Briana Kessler', '2022-07-13 10:51:37', '2022-07-13 10:51:37'),
(22, 'Rafaela Rath', '2022-07-13 10:51:37', '2022-07-13 10:51:37'),
(23, 'Whitney Bahringer', '2022-07-13 10:51:37', '2022-07-13 10:51:37'),
(24, 'Hanna O\'Reilly', '2022-07-13 10:51:37', '2022-07-13 10:51:37'),
(25, 'Meaghan Goyette', '2022-07-13 10:51:37', '2022-07-13 10:51:37'),
(26, 'Herta Gleichner', '2022-07-13 10:51:37', '2022-07-13 10:51:37'),
(27, 'Jewel Beier MD', '2022-07-13 10:51:38', '2022-07-13 10:51:38'),
(28, 'Cayla Boehm', '2022-07-13 10:51:38', '2022-07-13 10:51:38'),
(29, 'Tianna Purdy', '2022-07-13 10:51:38', '2022-07-13 10:51:38'),
(30, 'Vada Waelchi', '2022-07-13 10:51:38', '2022-07-13 10:51:38'),
(31, 'Belle Streich II', '2022-07-13 10:51:38', '2022-07-13 10:51:38'),
(32, 'Prof. Felicita Hill III', '2022-07-13 10:51:38', '2022-07-13 10:51:38'),
(33, 'Dr. Royce Rau DVM', '2022-07-13 10:51:38', '2022-07-13 10:51:38'),
(34, 'Prof. Chandler Kutch', '2022-07-13 10:51:38', '2022-07-13 10:51:38'),
(35, 'Colt Bosco MD', '2022-07-13 10:51:38', '2022-07-13 10:51:38'),
(36, 'Reynold Bergstrom', '2022-07-13 10:51:38', '2022-07-13 10:51:38'),
(37, 'Prof. Lonzo Wunsch', '2022-07-13 10:51:38', '2022-07-13 10:51:38'),
(38, 'Fausto Auer', '2022-07-13 10:51:39', '2022-07-13 10:51:39'),
(39, 'Retha Berge', '2022-07-13 10:51:39', '2022-07-13 10:51:39'),
(40, 'Derick Rau', '2022-07-13 10:51:39', '2022-07-13 10:51:39'),
(41, 'tag 12', '2022-07-14 09:04:54', '2022-07-14 09:04:54'),
(42, 'tag 12', '2022-07-14 09:07:35', '2022-07-14 09:07:35'),
(43, 'tag 12', '2022-07-14 09:08:08', '2022-07-14 09:08:08'),
(44, 'tag 12', '2022-07-14 09:09:03', '2022-07-14 09:09:03');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `user_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 10, 'Non sunt laudantium aut ad rem et esse explicabo.', '2022-07-13 10:51:09', '2022-07-13 10:51:09'),
(2, 4, 'Ab culpa dolorem aut fugiat.', '2022-07-13 10:51:09', '2022-07-13 10:51:09'),
(3, 9, 'Animi dolores beatae similique qui expedita sint.', '2022-07-13 10:51:09', '2022-07-13 10:51:09'),
(4, 8, 'Aut quo autem sit reiciendis atque hic libero quo.', '2022-07-13 10:51:09', '2022-07-13 10:51:09'),
(5, 3, 'Soluta ut assumenda eum.', '2022-07-13 10:51:09', '2022-07-13 10:51:09'),
(6, 2, 'Tempora qui fuga doloremque.', '2022-07-13 10:51:09', '2022-07-13 10:51:09'),
(7, 3, 'Quod consequatur itaque eum aut eum temporibus.', '2022-07-13 10:51:09', '2022-07-13 10:51:09'),
(8, 5, 'Rerum qui unde et.', '2022-07-13 10:51:10', '2022-07-13 10:51:10'),
(9, 6, 'Ratione exercitationem voluptatem unde repudiandae veniam illum distinctio quae.', '2022-07-13 10:51:10', '2022-07-13 10:51:10'),
(10, 6, 'Impedit excepturi sed neque.', '2022-07-13 10:51:10', '2022-07-13 10:51:10'),
(11, 5, 'Et in voluptatem dolorem.', '2022-07-13 10:51:10', '2022-07-13 10:51:10'),
(12, 9, 'Ducimus harum beatae sit sed debitis harum at.', '2022-07-13 10:51:10', '2022-07-13 10:51:10'),
(13, 1, 'Qui facere est et.', '2022-07-13 10:51:10', '2022-07-13 10:51:10'),
(14, 8, 'Eum id aut facilis reprehenderit quam qui.', '2022-07-13 10:51:10', '2022-07-13 10:51:10'),
(15, 7, 'Nihil sequi ut ut exercitationem.', '2022-07-13 10:51:10', '2022-07-13 10:51:10'),
(16, 7, 'Sequi repudiandae nostrum harum in enim aut.', '2022-07-13 10:51:10', '2022-07-13 10:51:10'),
(17, 7, 'Eaque reprehenderit molestias ipsa non dignissimos in.', '2022-07-13 10:51:10', '2022-07-13 10:51:10'),
(18, 1, 'Ut doloribus et est voluptatibus.', '2022-07-13 10:51:10', '2022-07-13 10:51:10'),
(19, 8, 'Assumenda optio sunt et sit et.', '2022-07-13 10:51:10', '2022-07-13 10:51:10'),
(20, 3, 'Dolore aut odio et quidem.', '2022-07-13 10:51:10', '2022-07-13 10:51:10'),
(21, 1, 'Ipsam ipsum et id ab libero eos molestiae.', '2022-07-13 10:51:10', '2022-07-13 10:51:10'),
(22, 10, 'Doloremque minus natus omnis praesentium.', '2022-07-13 10:51:10', '2022-07-13 10:51:10'),
(23, 2, 'Animi minima qui aut debitis consequatur aperiam et autem.', '2022-07-13 10:51:11', '2022-07-13 10:51:11'),
(24, 7, 'Est sapiente facilis voluptatem id maiores.', '2022-07-13 10:51:11', '2022-07-13 10:51:11'),
(25, 4, 'Pariatur sit ad quis dignissimos perspiciatis.', '2022-07-13 10:51:11', '2022-07-13 10:51:11'),
(26, 3, 'Qui numquam corrupti nemo molestiae porro.', '2022-07-13 10:51:11', '2022-07-13 10:51:11'),
(27, 2, 'Fuga eos est praesentium commodi.', '2022-07-13 10:51:11', '2022-07-13 10:51:11'),
(28, 7, 'Veniam consequatur nulla aut aliquid voluptatibus cumque sint.', '2022-07-13 10:51:11', '2022-07-13 10:51:11'),
(29, 1, 'Dolores veritatis doloribus debitis minus voluptatem eos.', '2022-07-13 10:51:11', '2022-07-13 10:51:11'),
(30, 2, 'Enim sed doloremque unde rerum facere vel voluptatem.', '2022-07-13 10:51:11', '2022-07-13 10:51:11'),
(31, 9, 'Non error quia ut alias error sunt quo possimus.', '2022-07-13 10:51:11', '2022-07-13 10:51:11'),
(32, 2, 'Accusamus aut voluptas placeat et magnam consectetur quibusdam.', '2022-07-13 10:51:11', '2022-07-13 10:51:11'),
(33, 10, 'Perferendis quia sint consequatur quod totam enim soluta.', '2022-07-13 10:51:11', '2022-07-13 10:51:11'),
(34, 3, 'Veritatis et id molestiae.', '2022-07-13 10:51:11', '2022-07-13 10:51:11'),
(35, 10, 'Enim sint dolorum et odit nihil qui.', '2022-07-13 10:51:11', '2022-07-13 10:51:11'),
(36, 9, 'Sint aliquam rerum consectetur voluptates.', '2022-07-13 10:51:11', '2022-07-13 10:51:11'),
(37, 10, 'Ullam dolorum voluptatem dicta rerum pariatur iure dolore voluptatem.', '2022-07-13 10:51:11', '2022-07-13 10:51:11'),
(38, 5, 'Ut quae magnam ipsum similique placeat.', '2022-07-13 10:51:11', '2022-07-13 10:51:11'),
(39, 1, 'Optio aut rem voluptas.', '2022-07-13 10:51:11', '2022-07-13 10:51:11'),
(40, 7, 'Dolorum officiis debitis fugiat ut.', '2022-07-13 10:51:11', '2022-07-13 10:51:11'),
(41, 1, 'Quisquam accusamus et et.', '2022-07-13 10:51:11', '2022-07-13 10:51:11'),
(42, 3, 'Quos ut culpa voluptatibus doloribus.', '2022-07-13 10:51:12', '2022-07-13 10:51:12'),
(43, 3, 'Officiis illo tenetur necessitatibus illum eligendi reprehenderit molestias deserunt.', '2022-07-13 10:51:12', '2022-07-13 10:51:12'),
(44, 4, 'Est esse praesentium suscipit officiis.', '2022-07-13 10:51:12', '2022-07-13 10:51:12'),
(45, 10, 'Incidunt aut ut reprehenderit amet et tempore ab.', '2022-07-13 10:51:12', '2022-07-13 10:51:12'),
(46, 3, 'Sit at facilis et ut saepe nesciunt ea.', '2022-07-13 10:51:12', '2022-07-13 10:51:12'),
(47, 5, 'Voluptatem aspernatur recusandae aliquid sequi.', '2022-07-13 10:51:12', '2022-07-13 10:51:12'),
(48, 6, 'Et qui tempora accusamus quisquam.', '2022-07-13 10:51:12', '2022-07-13 10:51:12'),
(49, 7, 'Et totam ut quisquam vitae ipsa illo quia animi.', '2022-07-13 10:51:12', '2022-07-13 10:51:12'),
(50, 9, 'Aut officiis dolores fugit sed.', '2022-07-13 10:51:12', '2022-07-13 10:51:12'),
(51, 3, 'Sit similique nam necessitatibus placeat possimus.', '2022-07-13 10:51:32', '2022-07-13 10:51:32'),
(52, 2, 'Quidem rerum autem voluptatem eum aliquam voluptas itaque.', '2022-07-13 10:51:32', '2022-07-13 10:51:32'),
(53, 6, 'Aliquam illo dolores qui corporis.', '2022-07-13 10:51:32', '2022-07-13 10:51:32'),
(54, 19, 'Iusto natus qui sed.', '2022-07-13 10:51:32', '2022-07-13 10:51:32'),
(55, 11, 'Quo harum qui eum.', '2022-07-13 10:51:32', '2022-07-13 10:51:32'),
(56, 8, 'Accusantium quae cum voluptatibus ea necessitatibus.', '2022-07-13 10:51:32', '2022-07-13 10:51:32'),
(57, 15, 'Natus quis quia accusantium incidunt quia.', '2022-07-13 10:51:32', '2022-07-13 10:51:32'),
(58, 8, 'Occaecati voluptas nisi adipisci.', '2022-07-13 10:51:32', '2022-07-13 10:51:32'),
(59, 13, 'Recusandae sed velit ullam id quod sequi.', '2022-07-13 10:51:32', '2022-07-13 10:51:32'),
(60, 7, 'Sit est nulla libero est animi totam.', '2022-07-13 10:51:32', '2022-07-13 10:51:32'),
(61, 20, 'Voluptate hic hic non non consequatur est vel.', '2022-07-13 10:51:32', '2022-07-13 10:51:32'),
(62, 6, 'Rerum non libero rerum et.', '2022-07-13 10:51:32', '2022-07-13 10:51:32'),
(63, 12, 'Animi ea asperiores omnis sint non aut et.', '2022-07-13 10:51:33', '2022-07-13 10:51:33'),
(64, 19, 'Qui sed perspiciatis voluptatem.', '2022-07-13 10:51:33', '2022-07-13 10:51:33'),
(65, 7, 'A illum quia ut aut.', '2022-07-13 10:51:33', '2022-07-13 10:51:33'),
(66, 1, 'Repellat deleniti doloribus consequatur ut maiores.', '2022-07-13 10:51:33', '2022-07-13 10:51:33'),
(67, 19, 'Soluta aliquam sint quibusdam illum qui.', '2022-07-13 10:51:33', '2022-07-13 10:51:33'),
(68, 4, 'Autem ad et ut consequatur repellat reprehenderit.', '2022-07-13 10:51:33', '2022-07-13 10:51:33'),
(69, 15, 'Laboriosam accusamus et perspiciatis consequuntur porro tenetur.', '2022-07-13 10:51:33', '2022-07-13 10:51:33'),
(70, 6, 'Delectus ut et possimus inventore repellendus.', '2022-07-13 10:51:33', '2022-07-13 10:51:33'),
(71, 12, 'Aspernatur tempora quod sit est.', '2022-07-13 10:51:33', '2022-07-13 10:51:33'),
(72, 13, 'Corrupti unde et sint qui quaerat.', '2022-07-13 10:51:33', '2022-07-13 10:51:33'),
(73, 13, 'Neque sunt autem est cum est aliquam dolores.', '2022-07-13 10:51:33', '2022-07-13 10:51:33'),
(74, 13, 'Cupiditate et nulla voluptas et repellendus.', '2022-07-13 10:51:33', '2022-07-13 10:51:33'),
(75, 11, 'Enim fuga quia facere minus dicta et placeat.', '2022-07-13 10:51:33', '2022-07-13 10:51:33'),
(76, 18, 'Voluptatum voluptatum deleniti ipsam minima.', '2022-07-13 10:51:33', '2022-07-13 10:51:33'),
(77, 18, 'Labore voluptatem voluptas quibusdam voluptatem expedita occaecati.', '2022-07-13 10:51:33', '2022-07-13 10:51:33'),
(78, 9, 'Id at repellendus est quod.', '2022-07-13 10:51:33', '2022-07-13 10:51:33'),
(79, 1, 'Voluptates labore quam rerum.', '2022-07-13 10:51:34', '2022-07-13 10:51:34'),
(80, 5, 'Id est qui iusto dolor provident.', '2022-07-13 10:51:34', '2022-07-13 10:51:34'),
(81, 18, 'Consequuntur nesciunt eos deleniti officiis mollitia.', '2022-07-13 10:51:34', '2022-07-13 10:51:34'),
(82, 10, 'Amet ullam et ut eos et amet sunt.', '2022-07-13 10:51:34', '2022-07-13 10:51:34'),
(83, 20, 'Eos consequatur nesciunt rerum distinctio ab sapiente.', '2022-07-13 10:51:34', '2022-07-13 10:51:34'),
(84, 15, 'Enim vel cupiditate pariatur accusantium explicabo.', '2022-07-13 10:51:34', '2022-07-13 10:51:34'),
(85, 14, 'Illo a repellendus culpa odit est molestiae.', '2022-07-13 10:51:34', '2022-07-13 10:51:34'),
(86, 18, 'A laudantium pariatur et vel molestiae neque quia.', '2022-07-13 10:51:34', '2022-07-13 10:51:34'),
(87, 20, 'Expedita voluptate maxime ab adipisci quibusdam voluptas.', '2022-07-13 10:51:34', '2022-07-13 10:51:34'),
(88, 16, 'Aut amet eos inventore ipsa reiciendis fuga.', '2022-07-13 10:51:34', '2022-07-13 10:51:34'),
(89, 10, 'Earum eveniet fugiat sit ut ratione.', '2022-07-13 10:51:34', '2022-07-13 10:51:34'),
(90, 12, 'Omnis in repellendus iste cum exercitationem deleniti.', '2022-07-13 10:51:34', '2022-07-13 10:51:34'),
(91, 15, 'Rerum unde vel voluptates voluptas possimus debitis.', '2022-07-13 10:51:34', '2022-07-13 10:51:34'),
(92, 7, 'Iure occaecati atque fugiat ratione possimus aut.', '2022-07-13 10:51:34', '2022-07-13 10:51:34'),
(93, 2, 'Odit facilis itaque vel provident.', '2022-07-13 10:51:34', '2022-07-13 10:51:34'),
(94, 7, 'Ut tempore ut non molestiae.', '2022-07-13 10:51:34', '2022-07-13 10:51:34'),
(95, 11, 'Laboriosam sint repellat provident.', '2022-07-13 10:51:34', '2022-07-13 10:51:34'),
(96, 17, 'Et est recusandae dolores voluptatem.', '2022-07-13 10:51:34', '2022-07-13 10:51:34'),
(97, 9, 'Rerum et dolore sunt quos quos.', '2022-07-13 10:51:34', '2022-07-13 10:51:34'),
(98, 19, 'Ab omnis ea repellat nostrum atque et.', '2022-07-13 10:51:34', '2022-07-13 10:51:34'),
(99, 12, 'Ea ut tempora velit quae veniam.', '2022-07-13 10:51:34', '2022-07-13 10:51:34'),
(100, 13, 'Voluptas qui voluptatibus est maiores id.', '2022-07-13 10:51:35', '2022-07-13 10:51:35');

-- --------------------------------------------------------

--
-- Table structure for table `task_ones`
--

CREATE TABLE `task_ones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_ones`
--

INSERT INTO `task_ones` (`id`, `user_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 9, 'Nostrum sunt enim est necessitatibus aperiam ad.', '2022-07-13 10:51:04', '2022-07-13 10:51:04'),
(2, 2, 'Laudantium pariatur nulla nemo magnam magnam cum.', '2022-07-13 10:51:04', '2022-07-13 10:51:04'),
(3, 1, 'Eum quibusdam ullam sed eligendi qui.', '2022-07-13 10:51:04', '2022-07-13 10:51:04'),
(4, 8, 'Possimus aspernatur ipsum voluptatem quam.', '2022-07-13 10:51:04', '2022-07-13 10:51:04'),
(5, 9, 'Pariatur excepturi est nihil amet voluptas eum nihil.', '2022-07-13 10:51:05', '2022-07-13 10:51:05'),
(6, 3, 'Aut sunt et qui quia et.', '2022-07-13 10:51:05', '2022-07-13 10:51:05'),
(7, 6, 'Aperiam nihil aliquam et quae.', '2022-07-13 10:51:05', '2022-07-13 10:51:05'),
(8, 10, 'Consequuntur quidem beatae consequatur et placeat ut ea magnam.', '2022-07-13 10:51:05', '2022-07-13 10:51:05'),
(9, 1, 'Repellendus sequi non vel quae sint.', '2022-07-13 10:51:05', '2022-07-13 10:51:05'),
(10, 5, 'Consectetur suscipit voluptate sit ut est.', '2022-07-13 10:51:05', '2022-07-13 10:51:05'),
(11, 5, 'Cum eum sed eum.', '2022-07-13 10:51:05', '2022-07-13 10:51:05'),
(12, 8, 'Ut eligendi vel numquam quod.', '2022-07-13 10:51:05', '2022-07-13 10:51:05'),
(13, 10, 'Facere laudantium iusto aspernatur at est.', '2022-07-13 10:51:05', '2022-07-13 10:51:05'),
(14, 7, 'Accusamus eligendi consequatur quia consequuntur aut.', '2022-07-13 10:51:05', '2022-07-13 10:51:05'),
(15, 7, 'Veritatis quis consequuntur qui doloribus omnis exercitationem.', '2022-07-13 10:51:05', '2022-07-13 10:51:05'),
(16, 1, 'Dolores et illo voluptas eum cumque nihil.', '2022-07-13 10:51:06', '2022-07-13 10:51:06'),
(17, 2, 'Exercitationem perferendis tenetur officiis assumenda sunt aut sapiente.', '2022-07-13 10:51:06', '2022-07-13 10:51:06'),
(18, 1, 'Amet qui quaerat voluptatem optio.', '2022-07-13 10:51:06', '2022-07-13 10:51:06'),
(19, 10, 'Aliquid exercitationem minima porro maxime quia.', '2022-07-13 10:51:06', '2022-07-13 10:51:06'),
(20, 3, 'Consequuntur tempore quasi voluptatem magnam cumque incidunt quia.', '2022-07-13 10:51:06', '2022-07-13 10:51:06'),
(21, 3, 'Exercitationem illo numquam voluptatem enim explicabo suscipit libero.', '2022-07-13 10:51:28', '2022-07-13 10:51:28'),
(22, 4, 'Voluptatem qui atque voluptatem repellendus accusantium amet eius.', '2022-07-13 10:51:28', '2022-07-13 10:51:28'),
(23, 9, 'Architecto impedit dolorum veniam eum.', '2022-07-13 10:51:28', '2022-07-13 10:51:28'),
(24, 5, 'Aliquid quis earum inventore quo molestiae et.', '2022-07-13 10:51:28', '2022-07-13 10:51:28'),
(25, 15, 'Fuga vitae dolorem assumenda excepturi possimus voluptatum repudiandae.', '2022-07-13 10:51:28', '2022-07-13 10:51:28'),
(26, 2, 'Hic ea ab voluptatem qui sed dolorum.', '2022-07-13 10:51:28', '2022-07-13 10:51:28'),
(27, 20, 'Quam itaque in modi.', '2022-07-13 10:51:28', '2022-07-13 10:51:28'),
(28, 2, 'Et omnis temporibus in quae delectus ut id.', '2022-07-13 10:51:28', '2022-07-13 10:51:28'),
(29, 12, 'Optio tempore soluta accusamus.', '2022-07-13 10:51:28', '2022-07-13 10:51:28'),
(30, 13, 'Unde facere est aliquid quis.', '2022-07-13 10:51:28', '2022-07-13 10:51:28'),
(31, 4, 'Suscipit laudantium et vel repellat qui possimus.', '2022-07-13 10:51:28', '2022-07-13 10:51:28'),
(32, 6, 'Ut qui totam suscipit reprehenderit ducimus eum.', '2022-07-13 10:51:29', '2022-07-13 10:51:29'),
(33, 19, 'Velit voluptas voluptatem sequi perspiciatis voluptatum.', '2022-07-13 10:51:29', '2022-07-13 10:51:29'),
(34, 7, 'Unde eos ipsa voluptatum a aspernatur.', '2022-07-13 10:51:29', '2022-07-13 10:51:29'),
(35, 12, 'Tempore architecto quisquam amet enim earum.', '2022-07-13 10:51:29', '2022-07-13 10:51:29'),
(36, 10, 'Fuga dolor esse rerum accusantium eius nam.', '2022-07-13 10:51:29', '2022-07-13 10:51:29'),
(37, 2, 'Et laboriosam tempore dignissimos sapiente aut pariatur.', '2022-07-13 10:51:29', '2022-07-13 10:51:29'),
(38, 7, 'Repellendus eius culpa voluptate quo.', '2022-07-13 10:51:29', '2022-07-13 10:51:29'),
(39, 12, 'Neque nam in officiis consequuntur.', '2022-07-13 10:51:29', '2022-07-13 10:51:29'),
(40, 12, 'Sequi a rerum in molestias est deleniti.', '2022-07-13 10:51:29', '2022-07-13 10:51:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `project_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 5, 'Astrid Gorczany', 'jbartoletti@example.net', '2022-07-13 10:51:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XVfSkwAU42', '2022-07-13 10:51:08', '2022-07-13 10:51:08'),
(2, 6, 'Brady O\'Conner', 'oswaniawski@example.net', '2022-07-13 10:51:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'S3rGqaTCfH', '2022-07-13 10:51:08', '2022-07-13 10:51:08'),
(3, 10, 'Prof. Bernie Ernser II', 'santiago48@example.net', '2022-07-13 10:51:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hzIybq4m2i', '2022-07-13 10:51:08', '2022-07-13 10:51:08'),
(4, 2, 'Valentine Sipes III', 'langworth.layne@example.org', '2022-07-13 10:51:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9t1aWqImN0', '2022-07-13 10:51:08', '2022-07-13 10:51:08'),
(5, 1, 'Brando D\'Amore', 'kmayert@example.net', '2022-07-13 10:51:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XFnpsR6AvV', '2022-07-13 10:51:08', '2022-07-13 10:51:08'),
(6, 1, 'Demarco Harber III', 'ukuphal@example.org', '2022-07-13 10:51:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7XNI85xXu0', '2022-07-13 10:51:08', '2022-07-13 10:51:08'),
(7, 1, 'Brian Roberts', 'miller.melissa@example.com', '2022-07-13 10:51:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KwPPwhsPyM', '2022-07-13 10:51:08', '2022-07-13 10:51:08'),
(8, 8, 'Diego Lockman', 'dickinson.chadd@example.org', '2022-07-13 10:51:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lhp9xBXutB', '2022-07-13 10:51:09', '2022-07-13 10:51:09'),
(9, 1, 'Ms. Retha Marquardt', 'blick.flossie@example.com', '2022-07-13 10:51:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BS52tb9y28', '2022-07-13 10:51:09', '2022-07-13 10:51:09'),
(10, 6, 'Marcos Runolfsdottir', 'kassulke.marty@example.com', '2022-07-13 10:51:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BsqEKVJXSM', '2022-07-13 10:51:09', '2022-07-13 10:51:09'),
(11, 15, 'Aliza Heidenreich', 'mariela.roberts@example.org', '2022-07-13 10:51:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Byt9bnkKks', '2022-07-13 10:51:31', '2022-07-13 10:51:31'),
(12, 13, 'Natalie Greenfelder', 'schimmel.vincent@example.org', '2022-07-13 10:51:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nYXemhwi21', '2022-07-13 10:51:31', '2022-07-13 10:51:31'),
(13, 13, 'Rosetta Walter', 'nhill@example.org', '2022-07-13 10:51:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BpZeIcePQm', '2022-07-13 10:51:31', '2022-07-13 10:51:31'),
(14, 4, 'Prof. Ford Jakubowski', 'adelle.jerde@example.net', '2022-07-13 10:51:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uiAQzhCNop', '2022-07-13 10:51:31', '2022-07-13 10:51:31'),
(15, 6, 'Laverna Beer', 'aylin.blick@example.net', '2022-07-13 10:51:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'desH6yQfXJ', '2022-07-13 10:51:31', '2022-07-13 10:51:31'),
(16, 7, 'Greta Schoen', 'champlin.lemuel@example.com', '2022-07-13 10:51:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qlt9pbUbqy', '2022-07-13 10:51:31', '2022-07-13 10:51:31'),
(17, 7, 'Prof. Colin Hansen', 'christina.littel@example.net', '2022-07-13 10:51:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8v1Xo8n5P6', '2022-07-13 10:51:31', '2022-07-13 10:51:31'),
(18, 15, 'Dr. Garfield Crooks DVM', 'roob.clementine@example.org', '2022-07-13 10:51:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gxWZjHChwv', '2022-07-13 10:51:31', '2022-07-13 10:51:31'),
(19, 13, 'Kelsie Jacobi', 'austen19@example.net', '2022-07-13 10:51:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'honbmZ9bVH', '2022-07-13 10:51:32', '2022-07-13 10:51:32'),
(20, 19, 'Mrs. Damaris Harvey IV', 'ansley56@example.com', '2022-07-13 10:51:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mZWkGhZfod', '2022-07-13 10:51:32', '2022-07-13 10:51:32');

-- --------------------------------------------------------

--
-- Table structure for table `user_ones`
--

CREATE TABLE `user_ones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_ones`
--

INSERT INTO `user_ones` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Tianna Metz', 'leif00@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-13 10:51:03', '2022-07-13 10:51:03'),
(2, 'Nikki Cremin', 'royal.schinner@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-13 10:51:03', '2022-07-13 10:51:03'),
(3, 'Merl Gaylord', 'mclaughlin.terry@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-13 10:51:03', '2022-07-13 10:51:03'),
(4, 'Ilene Hammes', 'bradtke.damion@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-13 10:51:03', '2022-07-13 10:51:03'),
(5, 'Freddie Mohr DVM', 'rosalee16@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-13 10:51:03', '2022-07-13 10:51:03'),
(6, 'Ms. Yazmin Daugherty MD', 'klocko.rylee@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-13 10:51:04', '2022-07-13 10:51:04'),
(7, 'Mr. Johnnie Schmidt', 'georgianna.gleason@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-13 10:51:04', '2022-07-13 10:51:04'),
(8, 'Michale Murazik', 'joanie27@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-13 10:51:04', '2022-07-13 10:51:04'),
(9, 'Melody Hegmann IV', 'baron.rogahn@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-13 10:51:04', '2022-07-13 10:51:04'),
(10, 'Jasen Kerluke', 'zdicki@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-13 10:51:04', '2022-07-13 10:51:04'),
(11, 'Ms. Estella Goyette', 'allen.lemke@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-13 10:51:27', '2022-07-13 10:51:27'),
(12, 'Houston Howe', 'ethyl.emmerich@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-13 10:51:27', '2022-07-13 10:51:27'),
(13, 'Ms. Edwina Tremblay III', 'sally66@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-13 10:51:27', '2022-07-13 10:51:27'),
(14, 'Bo Jakubowski III', 'kboyer@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-13 10:51:27', '2022-07-13 10:51:27'),
(15, 'Prof. Sunny Emard', 'mstamm@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-13 10:51:27', '2022-07-13 10:51:27'),
(16, 'Kara Cole', 'konopelski.vivien@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-13 10:51:27', '2022-07-13 10:51:27'),
(17, 'Karianne Runolfsdottir III', 'erdman.madisyn@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-13 10:51:27', '2022-07-13 10:51:27'),
(18, 'Jacinthe Gottlieb', 'nschaefer@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-13 10:51:27', '2022-07-13 10:51:27'),
(19, 'Rickey Becker', 'flatley.abby@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-13 10:51:27', '2022-07-13 10:51:27'),
(20, 'Boyd Torphy', 'kayleigh44@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-07-13 10:51:28', '2022-07-13 10:51:28');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Modi nam soluta veniam cum.', '2022-07-13 10:51:06', '2022-07-13 10:51:06'),
(2, 'Et rerum exercitationem ipsam qui et.', '2022-07-13 10:51:06', '2022-07-13 10:51:06'),
(3, 'Voluptate sit adipisci asperiores ut consequatur sapiente id.', '2022-07-13 10:51:06', '2022-07-13 10:51:06'),
(4, 'Laudantium ut aut a ipsa a.', '2022-07-13 10:51:06', '2022-07-13 10:51:06'),
(5, 'Fuga ratione minima velit consequatur ad.', '2022-07-13 10:51:06', '2022-07-13 10:51:06'),
(6, 'Iure qui reiciendis in debitis pariatur tempore laboriosam.', '2022-07-13 10:51:06', '2022-07-13 10:51:06'),
(7, 'Perferendis dicta illum qui neque dolorem.', '2022-07-13 10:51:06', '2022-07-13 10:51:06'),
(8, 'Unde et pariatur iste.', '2022-07-13 10:51:06', '2022-07-13 10:51:06'),
(9, 'Rerum odit iusto ut non quos earum.', '2022-07-13 10:51:06', '2022-07-13 10:51:06'),
(10, 'Ducimus unde sapiente voluptatem voluptate illum dolorem laudantium.', '2022-07-13 10:51:06', '2022-07-13 10:51:06'),
(11, 'Facere inventore quisquam ad nesciunt laudantium soluta.', '2022-07-13 10:51:07', '2022-07-13 10:51:07'),
(12, 'Est velit ea quas ad accusamus.', '2022-07-13 10:51:07', '2022-07-13 10:51:07'),
(13, 'Ullam aperiam iusto fuga.', '2022-07-13 10:51:07', '2022-07-13 10:51:07'),
(14, 'Corrupti est nihil quam sit consectetur aut.', '2022-07-13 10:51:07', '2022-07-13 10:51:07'),
(15, 'Aut laboriosam sit aut ea voluptatem quasi.', '2022-07-13 10:51:07', '2022-07-13 10:51:07'),
(16, 'Labore eius molestias repudiandae sit sed ipsam.', '2022-07-13 10:51:07', '2022-07-13 10:51:07'),
(17, 'Non velit aspernatur illo ab sed.', '2022-07-13 10:51:07', '2022-07-13 10:51:07'),
(18, 'Et omnis assumenda incidunt quis unde nam.', '2022-07-13 10:51:07', '2022-07-13 10:51:07'),
(19, 'Iure et aut nulla aut magni.', '2022-07-13 10:51:07', '2022-07-13 10:51:07'),
(20, 'Consequatur excepturi rerum qui illo quis sequi.', '2022-07-13 10:51:07', '2022-07-13 10:51:07'),
(21, 'Nemo architecto quaerat ex consectetur.', '2022-07-13 10:51:29', '2022-07-13 10:51:29'),
(22, 'Iusto sed cum eos rerum dolor.', '2022-07-13 10:51:29', '2022-07-13 10:51:29'),
(23, 'Et neque beatae omnis.', '2022-07-13 10:51:29', '2022-07-13 10:51:29'),
(24, 'Quisquam qui aut sapiente rem illo illo modi.', '2022-07-13 10:51:29', '2022-07-13 10:51:29'),
(25, 'Asperiores id rem quos alias ut.', '2022-07-13 10:51:29', '2022-07-13 10:51:29'),
(26, 'Distinctio natus vero eligendi impedit corporis a est totam.', '2022-07-13 10:51:29', '2022-07-13 10:51:29'),
(27, 'Dolore amet nesciunt fugiat sapiente sed.', '2022-07-13 10:51:30', '2022-07-13 10:51:30'),
(28, 'Ut optio excepturi aspernatur consequatur.', '2022-07-13 10:51:30', '2022-07-13 10:51:30'),
(29, 'Qui doloribus dolorum quas et totam.', '2022-07-13 10:51:30', '2022-07-13 10:51:30'),
(30, 'Sapiente iure rerum autem repudiandae.', '2022-07-13 10:51:30', '2022-07-13 10:51:30'),
(31, 'Sint tenetur perferendis quam sit.', '2022-07-13 10:51:30', '2022-07-13 10:51:30'),
(32, 'Mollitia iste nihil reprehenderit et cumque distinctio fugiat.', '2022-07-13 10:51:30', '2022-07-13 10:51:30'),
(33, 'Debitis necessitatibus ea eveniet nobis et.', '2022-07-13 10:51:30', '2022-07-13 10:51:30'),
(34, 'Ea qui enim aliquam corporis ratione sint magni.', '2022-07-13 10:51:30', '2022-07-13 10:51:30'),
(35, 'Cupiditate et reiciendis delectus quas.', '2022-07-13 10:51:30', '2022-07-13 10:51:30'),
(36, 'Soluta deleniti esse voluptatem quas autem quasi.', '2022-07-13 10:51:30', '2022-07-13 10:51:30'),
(37, 'Neque numquam quisquam voluptatum consequuntur ut quod natus.', '2022-07-13 10:51:30', '2022-07-13 10:51:30'),
(38, 'Suscipit sed quis esse.', '2022-07-13 10:51:30', '2022-07-13 10:51:30'),
(39, 'Soluta soluta tempore minus nulla aliquid.', '2022-07-13 10:51:30', '2022-07-13 10:51:30'),
(40, 'Aut suscipit occaecati architecto tempore qui aliquam quis.', '2022-07-13 10:51:30', '2022-07-13 10:51:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abcs`
--
ALTER TABLE `abcs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_commentable_type_commentable_id_index` (`commentable_type`,`commentable_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectone_userones`
--
ALTER TABLE `projectone_userones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_ones`
--
ALTER TABLE `project_ones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_ones`
--
ALTER TABLE `task_ones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_ones`
--
ALTER TABLE `user_ones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_ones_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abcs`
--
ALTER TABLE `abcs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projectone_userones`
--
ALTER TABLE `projectone_userones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `project_ones`
--
ALTER TABLE `project_ones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `task_ones`
--
ALTER TABLE `task_ones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_ones`
--
ALTER TABLE `user_ones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
