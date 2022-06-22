-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2022 at 08:15 AM
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
(1, 2, 'Falkland Islands (Malvinas)', '2022-06-21 10:48:58', '2022-06-21 10:48:58'),
(2, 10, 'Kiribati', '2022-06-21 10:48:58', '2022-06-21 10:48:58'),
(3, 5, 'Taiwan', '2022-06-21 10:48:58', '2022-06-21 10:48:58'),
(4, 10, 'Yemen', '2022-06-21 10:48:58', '2022-06-21 10:48:58'),
(5, 5, 'Sweden', '2022-06-21 10:48:58', '2022-06-21 10:48:58'),
(6, 8, 'Iran', '2022-06-21 10:48:58', '2022-06-21 10:48:58'),
(7, 9, 'Benin', '2022-06-21 10:48:58', '2022-06-21 10:48:58'),
(8, 1, 'Chad', '2022-06-21 10:48:58', '2022-06-21 10:48:58'),
(9, 6, 'El Salvador', '2022-06-21 10:48:58', '2022-06-21 10:48:58'),
(10, 6, 'Cook Islands', '2022-06-21 10:48:59', '2022-06-21 10:48:59'),
(11, 10, 'Colombia', '2022-06-21 10:48:59', '2022-06-21 10:48:59'),
(12, 2, 'Andorra', '2022-06-21 10:48:59', '2022-06-21 10:48:59'),
(13, 1, 'Nepal', '2022-06-21 10:48:59', '2022-06-21 10:48:59'),
(14, 3, 'United Kingdom', '2022-06-21 10:48:59', '2022-06-21 10:48:59'),
(15, 4, 'Zimbabwe', '2022-06-21 10:48:59', '2022-06-21 10:48:59'),
(16, 3, 'Guadeloupe', '2022-06-21 10:48:59', '2022-06-21 10:48:59'),
(17, 3, 'Grenada', '2022-06-21 10:48:59', '2022-06-21 10:48:59'),
(18, 4, 'Denmark', '2022-06-21 10:48:59', '2022-06-21 10:48:59'),
(19, 1, 'Norway', '2022-06-21 10:48:59', '2022-06-21 10:48:59'),
(20, 10, 'Holy See (Vatican City State)', '2022-06-21 10:48:59', '2022-06-21 10:48:59');

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
(1, 1, 'This is comment modya', 'App\\Models\\Post', 8, '2022-06-21 11:04:33', '2022-06-21 11:04:33'),
(2, 1, 'This is comment modya', 'App\\Models\\Post', 19, '2022-06-21 11:31:07', '2022-06-21 11:31:07'),
(3, 1, 'This is comment modya', 'App\\Models\\Video', 7, '2022-06-21 11:31:09', '2022-06-21 11:31:09'),
(4, 6, 'This is comment modya', 'App\\Models\\Video', 11, '2022-06-21 11:31:38', '2022-06-21 11:31:38'),
(5, 1, 'This is comment modya', 'App\\Models\\Post', 2, '2022-06-21 11:37:01', '2022-06-21 11:37:01'),
(6, 9, 'This is comment modya', 'App\\Models\\Post', 11, '2022-06-21 11:37:03', '2022-06-21 11:37:03'),
(7, 5, 'This is comment modya', 'App\\Models\\Post', 20, '2022-06-21 11:37:13', '2022-06-21 11:37:13'),
(8, 4, 'This is comment modya', 'App\\Models\\Post', 17, '2022-06-21 11:37:27', '2022-06-21 11:37:27');

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
(69, '2014_10_12_000000_create_users_table', 1),
(70, '2014_10_12_100000_create_password_resets_table', 1),
(71, '2019_08_19_000000_create_failed_jobs_table', 1),
(72, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(73, '2022_06_20_101721_create_addresses_table', 1),
(74, '2022_06_20_102717_refresh', 1),
(75, '2022_06_20_102752_rollback', 1),
(76, '2022_06_20_123246_create_posts_table', 1),
(77, '2022_06_20_152214_create_tags_table', 1),
(78, '2022_06_20_160709_create_post_tag_table', 1),
(79, '2022_06_21_104302_create_projects_table', 1),
(80, '2022_06_21_104448_create_tasks_table', 1),
(81, '2022_06_21_122050_create_project_ones_table', 1),
(82, '2022_06_21_122320_create_user_ones_table', 1),
(83, '2022_06_21_122637_create_task_ones_table', 1),
(84, '2022_06_21_143650_create_projectone_userones_table', 1),
(85, '2022_06_21_162826_create_comments_table', 1),
(86, '2022_06_21_164634_create_videos_table', 1),
(88, '2022_06_22_045158_create_taggables_table', 2);

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
(1, NULL, 'Voluptatem ut rerum mollitia officiis veniam molestiae officiis.', '2022-06-21 10:48:59', '2022-06-21 10:48:59'),
(2, NULL, 'Id provident velit delectus rerum eaque recusandae corrupti et.', '2022-06-21 10:48:59', '2022-06-21 10:48:59'),
(3, 2, 'Perspiciatis quidem dolorum suscipit dolorem deserunt.', '2022-06-21 10:48:59', '2022-06-21 10:48:59'),
(4, NULL, 'Rerum ea iste sunt.', '2022-06-21 10:48:59', '2022-06-21 10:48:59'),
(5, 8, 'Numquam dicta rerum reiciendis cum cum nisi.', '2022-06-21 10:48:59', '2022-06-21 10:48:59'),
(6, NULL, 'Et amet et nostrum non culpa consequatur incidunt.', '2022-06-21 10:48:59', '2022-06-21 10:48:59'),
(7, 7, 'Amet deserunt omnis hic iusto praesentium hic id.', '2022-06-21 10:49:00', '2022-06-21 10:49:00'),
(8, NULL, 'Doloremque dolores libero dolorem et nulla.', '2022-06-21 10:49:00', '2022-06-21 10:49:00'),
(9, NULL, 'Quisquam qui exercitationem et recusandae rerum.', '2022-06-21 10:49:00', '2022-06-21 10:49:00'),
(10, 10, 'Repudiandae quod autem quia laboriosam inventore ut.', '2022-06-21 10:49:00', '2022-06-21 10:49:00'),
(11, NULL, 'Molestiae vero similique commodi ullam.', '2022-06-21 10:49:00', '2022-06-21 10:49:00'),
(12, NULL, 'Ut dolorem doloremque dolore recusandae porro.', '2022-06-21 10:49:00', '2022-06-21 10:49:00'),
(13, 7, 'Consequatur sed sunt dolorem aperiam distinctio consequuntur delectus.', '2022-06-21 10:49:00', '2022-06-21 10:49:00'),
(14, NULL, 'Est nostrum praesentium dolor hic expedita adipisci hic.', '2022-06-21 10:49:00', '2022-06-21 10:49:00'),
(15, NULL, 'Eligendi quo a autem architecto alias nihil consequatur.', '2022-06-21 10:49:00', '2022-06-21 10:49:00'),
(16, NULL, 'Occaecati maxime quae officia dolorem officia omnis nemo.', '2022-06-21 10:49:00', '2022-06-21 10:49:00'),
(17, 3, 'Dolores vero provident nostrum et commodi magnam magnam libero.', '2022-06-21 10:49:00', '2022-06-21 10:49:00'),
(18, NULL, 'Earum aut perspiciatis eum est labore ut unde.', '2022-06-21 10:49:00', '2022-06-21 10:49:00'),
(19, 6, 'Asperiores enim rerum reprehenderit quisquam dolore.', '2022-06-21 10:49:00', '2022-06-21 10:49:00'),
(20, NULL, 'Molestiae sit qui corrupti perspiciatis perspiciatis.', '2022-06-21 10:49:00', '2022-06-21 10:49:00');

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
(1, 'Itaque numquam ratione quidem.', '2022-06-21 10:48:55', '2022-06-21 10:48:55'),
(2, 'Sint rem est aut adipisci et aut.', '2022-06-21 10:48:55', '2022-06-21 10:48:55'),
(3, 'Sint ea sunt ea.', '2022-06-21 10:48:55', '2022-06-21 10:48:55'),
(4, 'Non laudantium neque molestiae non commodi saepe fuga et.', '2022-06-21 10:48:55', '2022-06-21 10:48:55'),
(5, 'Ab atque id dicta dolore et tempore qui natus.', '2022-06-21 10:48:55', '2022-06-21 10:48:55'),
(6, 'Similique tenetur ea impedit eos.', '2022-06-21 10:48:55', '2022-06-21 10:48:55'),
(7, 'Dolorum quae error a sunt adipisci necessitatibus voluptates inventore.', '2022-06-21 10:48:55', '2022-06-21 10:48:55'),
(8, 'Dicta quae ex accusantium asperiores quas corrupti.', '2022-06-21 10:48:55', '2022-06-21 10:48:55'),
(9, 'In error et qui et magni expedita.', '2022-06-21 10:48:55', '2022-06-21 10:48:55'),
(10, 'Voluptate dolores numquam in.', '2022-06-21 10:48:55', '2022-06-21 10:48:55');

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
(1, 'Voluptatem ea quam accusamus.', '2022-06-21 10:48:52', '2022-06-21 10:48:52'),
(2, 'Veritatis tenetur nulla quasi quibusdam dolores.', '2022-06-21 10:48:52', '2022-06-21 10:48:52'),
(3, 'Repellendus ad est sed sapiente.', '2022-06-21 10:48:52', '2022-06-21 10:48:52'),
(4, 'Omnis enim ut ab accusantium.', '2022-06-21 10:48:52', '2022-06-21 10:48:52'),
(5, 'A qui voluptatem qui omnis rerum.', '2022-06-21 10:48:52', '2022-06-21 10:48:52'),
(6, 'Atque nisi et consequatur velit quis quasi.', '2022-06-21 10:48:52', '2022-06-21 10:48:52'),
(7, 'Quae vel aspernatur non voluptatibus aspernatur voluptas et.', '2022-06-21 10:48:52', '2022-06-21 10:48:52'),
(8, 'Expedita et recusandae natus laudantium.', '2022-06-21 10:48:52', '2022-06-21 10:48:52'),
(9, 'Voluptatum aspernatur et vitae laudantium excepturi harum.', '2022-06-21 10:48:52', '2022-06-21 10:48:52'),
(10, 'Saepe laborum id voluptatum voluptatum non et.', '2022-06-21 10:48:52', '2022-06-21 10:48:52');

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
(23, 14, 'App\\Models\\Post'),
(24, 6, 'App\\Models\\Post'),
(25, 2, 'App\\Models\\Post'),
(26, 8, 'App\\Models\\Video'),
(27, 16, 'App\\Models\\Video'),
(28, 2, 'App\\Models\\Video'),
(30, 14, 'App\\Models\\Post'),
(31, 2, 'App\\Models\\Video'),
(32, 2, 'App\\Models\\Video'),
(32, 21, 'App\\Models\\Video'),
(32, 22, 'App\\Models\\Video'),
(32, 23, 'App\\Models\\Video'),
(32, 24, 'App\\Models\\Video'),
(32, 25, 'App\\Models\\Video');

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
(1, 'Dr. Jerrod Grimes', '2022-06-21 10:49:00', '2022-06-21 10:49:00'),
(2, 'Mckenna Schoen', '2022-06-21 10:49:00', '2022-06-21 10:49:00'),
(3, 'Mr. Saige Kozey', '2022-06-21 10:49:00', '2022-06-21 10:49:00'),
(4, 'Emmitt Kautzer', '2022-06-21 10:49:00', '2022-06-21 10:49:00'),
(5, 'Lauriane McLaughlin', '2022-06-21 10:49:01', '2022-06-21 10:49:01'),
(6, 'Mrs. Bridgette Dooley', '2022-06-21 10:49:01', '2022-06-21 10:49:01'),
(7, 'Dr. Deangelo Roberts', '2022-06-21 10:49:01', '2022-06-21 10:49:01'),
(8, 'Mr. Vito Sanford DDS', '2022-06-21 10:49:01', '2022-06-21 10:49:01'),
(9, 'Ms. Oma Ledner DDS', '2022-06-21 10:49:01', '2022-06-21 10:49:01'),
(10, 'Edyth Senger', '2022-06-21 10:49:01', '2022-06-21 10:49:01'),
(11, 'Judge Padberg', '2022-06-21 10:49:01', '2022-06-21 10:49:01'),
(12, 'Dr. Cortez Marquardt Jr.', '2022-06-21 10:49:01', '2022-06-21 10:49:01'),
(13, 'Dario Ziemann', '2022-06-21 10:49:01', '2022-06-21 10:49:01'),
(14, 'Lexi Williamson', '2022-06-21 10:49:01', '2022-06-21 10:49:01'),
(15, 'Vicente Schuster', '2022-06-21 10:49:01', '2022-06-21 10:49:01'),
(16, 'Isabelle Koss', '2022-06-21 10:49:01', '2022-06-21 10:49:01'),
(17, 'Jewell Jacobs', '2022-06-21 10:49:01', '2022-06-21 10:49:01'),
(18, 'Federico Yundt DVM', '2022-06-21 10:49:01', '2022-06-21 10:49:01'),
(19, 'Beth Murazik', '2022-06-21 10:49:01', '2022-06-21 10:49:01'),
(20, 'Janie Blick', '2022-06-21 10:49:02', '2022-06-21 10:49:02'),
(21, 'tag 1', '2022-06-21 22:48:29', '2022-06-21 22:48:29'),
(22, 'tag 1', '2022-06-21 22:49:16', '2022-06-21 22:49:16'),
(23, 'tag 1', '2022-06-21 22:53:30', '2022-06-21 22:53:30'),
(24, 'tag 1', '2022-06-21 23:12:56', '2022-06-21 23:12:56'),
(25, 'tag 12', '2022-06-21 23:14:39', '2022-06-21 23:14:39'),
(26, 'video tag 12', '2022-06-21 23:16:30', '2022-06-21 23:16:30'),
(27, 'video tag 12', '2022-06-21 23:22:05', '2022-06-21 23:22:05'),
(28, 'video tag 12', '2022-06-21 23:22:22', '2022-06-21 23:22:22'),
(29, 'tag 12', '2022-06-21 23:22:52', '2022-06-21 23:22:52'),
(30, 'tag 12', '2022-06-21 23:23:42', '2022-06-21 23:23:42'),
(31, 'video tag 123', '2022-06-21 23:31:23', '2022-06-21 23:31:23'),
(32, 'video tag 1234', '2022-06-21 23:32:14', '2022-06-21 23:32:14');

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
(1, 4, 'Nemo aut quasi unde ducimus itaque nobis totam.', '2022-06-21 10:48:56', '2022-06-21 10:48:56'),
(2, 7, 'Possimus soluta quia delectus corporis enim.', '2022-06-21 10:48:56', '2022-06-21 10:48:56'),
(3, 10, 'Est excepturi qui dolores praesentium numquam facilis nihil.', '2022-06-21 10:48:56', '2022-06-21 10:48:56'),
(4, 10, 'Sunt cum suscipit velit eaque minus officia.', '2022-06-21 10:48:56', '2022-06-21 10:48:56'),
(5, 9, 'Doloremque voluptatibus et sunt vel dolorum itaque omnis.', '2022-06-21 10:48:56', '2022-06-21 10:48:56'),
(6, 3, 'Voluptas eius quidem voluptas dolore tenetur.', '2022-06-21 10:48:56', '2022-06-21 10:48:56'),
(7, 10, 'Sint itaque iusto quos.', '2022-06-21 10:48:56', '2022-06-21 10:48:56'),
(8, 8, 'Est eaque totam perferendis natus eum sint aut.', '2022-06-21 10:48:56', '2022-06-21 10:48:56'),
(9, 2, 'Laborum explicabo et consequatur non.', '2022-06-21 10:48:56', '2022-06-21 10:48:56'),
(10, 4, 'Et magni accusamus fugiat temporibus et.', '2022-06-21 10:48:56', '2022-06-21 10:48:56'),
(11, 7, 'Dolorem adipisci laborum distinctio optio tenetur.', '2022-06-21 10:48:56', '2022-06-21 10:48:56'),
(12, 9, 'Aut fugiat molestiae officiis repellendus.', '2022-06-21 10:48:56', '2022-06-21 10:48:56'),
(13, 2, 'Architecto nobis sed accusamus eligendi modi alias et.', '2022-06-21 10:48:56', '2022-06-21 10:48:56'),
(14, 6, 'Animi itaque enim dolor iste esse excepturi.', '2022-06-21 10:48:56', '2022-06-21 10:48:56'),
(15, 2, 'Ab consequatur quo sed illo.', '2022-06-21 10:48:57', '2022-06-21 10:48:57'),
(16, 10, 'Facere iure error repellat ducimus sed eligendi.', '2022-06-21 10:48:57', '2022-06-21 10:48:57'),
(17, 5, 'Vitae ratione error aut autem.', '2022-06-21 10:48:57', '2022-06-21 10:48:57'),
(18, 2, 'Nulla ut ea ipsa facilis quasi dolore.', '2022-06-21 10:48:57', '2022-06-21 10:48:57'),
(19, 1, 'Modi rerum eos velit ut.', '2022-06-21 10:48:57', '2022-06-21 10:48:57'),
(20, 8, 'Voluptas facere molestiae nulla est culpa fugiat veritatis natus.', '2022-06-21 10:48:57', '2022-06-21 10:48:57'),
(21, 2, 'Earum aspernatur rerum deserunt velit dignissimos recusandae magnam.', '2022-06-21 10:48:57', '2022-06-21 10:48:57'),
(22, 7, 'Fuga ipsa laborum aperiam dolores.', '2022-06-21 10:48:57', '2022-06-21 10:48:57'),
(23, 10, 'Consequatur eveniet sint exercitationem voluptas dignissimos sit qui.', '2022-06-21 10:48:57', '2022-06-21 10:48:57'),
(24, 2, 'Quis aut deleniti quae aut voluptatem quaerat cumque aspernatur.', '2022-06-21 10:48:57', '2022-06-21 10:48:57'),
(25, 2, 'Expedita in rerum eveniet sint.', '2022-06-21 10:48:57', '2022-06-21 10:48:57'),
(26, 7, 'Repellendus neque quae animi qui quo aut.', '2022-06-21 10:48:57', '2022-06-21 10:48:57'),
(27, 4, 'Ut nam laboriosam rerum consequuntur.', '2022-06-21 10:48:57', '2022-06-21 10:48:57'),
(28, 5, 'Aut omnis ea aliquid ut amet praesentium aut.', '2022-06-21 10:48:57', '2022-06-21 10:48:57'),
(29, 5, 'Doloribus eum animi est eos.', '2022-06-21 10:48:57', '2022-06-21 10:48:57'),
(30, 1, 'Iste neque excepturi et est quidem occaecati.', '2022-06-21 10:48:57', '2022-06-21 10:48:57'),
(31, 5, 'Ut consequatur velit similique repellendus dolorem voluptatem dolores.', '2022-06-21 10:48:57', '2022-06-21 10:48:57'),
(32, 9, 'Animi dolorem laboriosam asperiores id blanditiis cumque voluptatibus aspernatur.', '2022-06-21 10:48:57', '2022-06-21 10:48:57'),
(33, 7, 'Delectus beatae tempore sit vitae asperiores.', '2022-06-21 10:48:57', '2022-06-21 10:48:57'),
(34, 3, 'Provident consequuntur et pariatur veritatis odit.', '2022-06-21 10:48:57', '2022-06-21 10:48:57'),
(35, 2, 'Enim enim voluptas aut et aliquam et.', '2022-06-21 10:48:57', '2022-06-21 10:48:57'),
(36, 7, 'Vero dolores commodi omnis ut nihil dignissimos.', '2022-06-21 10:48:57', '2022-06-21 10:48:57'),
(37, 1, 'Sit saepe quibusdam dignissimos ullam molestiae rerum eaque dolorem.', '2022-06-21 10:48:57', '2022-06-21 10:48:57'),
(38, 10, 'Iste praesentium est et architecto tempore aliquam excepturi.', '2022-06-21 10:48:57', '2022-06-21 10:48:57'),
(39, 2, 'Dignissimos fuga et et numquam soluta molestiae dicta.', '2022-06-21 10:48:57', '2022-06-21 10:48:57'),
(40, 9, 'Voluptatem quia voluptatem tempora est.', '2022-06-21 10:48:58', '2022-06-21 10:48:58'),
(41, 3, 'Voluptate repellendus quis reprehenderit qui facere quo.', '2022-06-21 10:48:58', '2022-06-21 10:48:58'),
(42, 9, 'Quae asperiores aut unde quia expedita.', '2022-06-21 10:48:58', '2022-06-21 10:48:58'),
(43, 10, 'Qui dolorem eius doloribus voluptas autem.', '2022-06-21 10:48:58', '2022-06-21 10:48:58'),
(44, 3, 'Voluptatem beatae sed tempora voluptatem dolores.', '2022-06-21 10:48:58', '2022-06-21 10:48:58'),
(45, 3, 'Ea ut nobis praesentium qui quae.', '2022-06-21 10:48:58', '2022-06-21 10:48:58'),
(46, 4, 'Et voluptatem maiores qui voluptas et.', '2022-06-21 10:48:58', '2022-06-21 10:48:58'),
(47, 8, 'Minus aliquam ipsa voluptatem voluptates placeat aut aliquam.', '2022-06-21 10:48:58', '2022-06-21 10:48:58'),
(48, 6, 'Tempora assumenda laborum iusto velit ullam accusamus.', '2022-06-21 10:48:58', '2022-06-21 10:48:58'),
(49, 8, 'Et alias aspernatur recusandae repellendus at voluptatem sunt.', '2022-06-21 10:48:58', '2022-06-21 10:48:58'),
(50, 9, 'Eaque molestiae accusantium ut aliquid.', '2022-06-21 10:48:58', '2022-06-21 10:48:58');

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
(1, 6, 'In quidem fuga ratione eos illo iste placeat voluptas.', '2022-06-21 10:48:53', '2022-06-21 10:48:53'),
(2, 1, 'Fugit dolores iste ratione accusantium nihil rem pariatur.', '2022-06-21 10:48:53', '2022-06-21 10:48:53'),
(3, 2, 'Et dolor doloribus totam quam voluptas repudiandae officiis.', '2022-06-21 10:48:53', '2022-06-21 10:48:53'),
(4, 4, 'Quidem et ea nesciunt minima accusamus incidunt.', '2022-06-21 10:48:53', '2022-06-21 10:48:53'),
(5, 3, 'Laudantium iure maiores possimus ut quia.', '2022-06-21 10:48:53', '2022-06-21 10:48:53'),
(6, 10, 'Cupiditate fuga velit dolor consequatur autem.', '2022-06-21 10:48:53', '2022-06-21 10:48:53'),
(7, 6, 'Quas quas autem voluptate repellendus molestiae qui quo.', '2022-06-21 10:48:53', '2022-06-21 10:48:53'),
(8, 8, 'Dolores saepe nam iusto earum incidunt non.', '2022-06-21 10:48:53', '2022-06-21 10:48:53'),
(9, 7, 'Laboriosam molestiae animi accusamus rem voluptatem et rerum.', '2022-06-21 10:48:53', '2022-06-21 10:48:53'),
(10, 1, 'Tempora voluptatem quis enim eligendi.', '2022-06-21 10:48:53', '2022-06-21 10:48:53'),
(11, 3, 'Quasi quia mollitia voluptatem tempore consequatur corrupti.', '2022-06-21 10:48:53', '2022-06-21 10:48:53'),
(12, 9, 'Praesentium velit minima rem.', '2022-06-21 10:48:53', '2022-06-21 10:48:53'),
(13, 6, 'Qui deserunt rerum ut similique officia pariatur.', '2022-06-21 10:48:53', '2022-06-21 10:48:53'),
(14, 10, 'Et aperiam occaecati voluptas quidem.', '2022-06-21 10:48:53', '2022-06-21 10:48:53'),
(15, 4, 'Ipsa voluptatem dicta fugit omnis architecto qui.', '2022-06-21 10:48:53', '2022-06-21 10:48:53'),
(16, 10, 'Sint assumenda in voluptates.', '2022-06-21 10:48:54', '2022-06-21 10:48:54'),
(17, 2, 'Voluptas sint nemo corrupti quam et temporibus autem.', '2022-06-21 10:48:54', '2022-06-21 10:48:54'),
(18, 5, 'Rem sequi labore aliquid distinctio accusamus.', '2022-06-21 10:48:54', '2022-06-21 10:48:54'),
(19, 8, 'Quidem et et amet quam nesciunt aliquam.', '2022-06-21 10:48:54', '2022-06-21 10:48:54'),
(20, 9, 'Nisi ipsa dolorem sunt voluptas maxime officiis omnis id.', '2022-06-21 10:48:54', '2022-06-21 10:48:54');

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
(1, 4, 'Dr. Kirstin Bahringer', 'milan91@example.net', '2022-06-21 10:48:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ax5uNcofaY', '2022-06-21 10:48:55', '2022-06-21 10:48:55'),
(2, 9, 'Miss Heather Thompson PhD', 'sharon.murray@example.org', '2022-06-21 10:48:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dN1pN4jZer', '2022-06-21 10:48:55', '2022-06-21 10:48:55'),
(3, 9, 'Frederik Monahan Sr.', 'rturner@example.org', '2022-06-21 10:48:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'I0K9alh1Xi', '2022-06-21 10:48:55', '2022-06-21 10:48:55'),
(4, 4, 'Mr. Chet O\'Connell Jr.', 'whauck@example.net', '2022-06-21 10:48:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5I54KeyvFA', '2022-06-21 10:48:56', '2022-06-21 10:48:56'),
(5, 3, 'Deshawn Paucek', 'zsmitham@example.com', '2022-06-21 10:48:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'md1lpT4LrA', '2022-06-21 10:48:56', '2022-06-21 10:48:56'),
(6, 10, 'Cole Kulas', 'mitchell.cielo@example.org', '2022-06-21 10:48:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tgOk1ja0Q7', '2022-06-21 10:48:56', '2022-06-21 10:48:56'),
(7, 5, 'Jackeline Douglas II', 'juliana.mills@example.com', '2022-06-21 10:48:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SlXeX0Lb1h', '2022-06-21 10:48:56', '2022-06-21 10:48:56'),
(8, 1, 'Christy Hayes IV', 'lester.friesen@example.net', '2022-06-21 10:48:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eSObwuSJZp', '2022-06-21 10:48:56', '2022-06-21 10:48:56'),
(9, 1, 'Stevie Gutmann', 'orie.kub@example.net', '2022-06-21 10:48:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Sms8dfrYqn', '2022-06-21 10:48:56', '2022-06-21 10:48:56'),
(10, 6, 'Mr. Adriel Howell I', 'bgottlieb@example.net', '2022-06-21 10:48:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XcKE8zGaX2', '2022-06-21 10:48:56', '2022-06-21 10:48:56');

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
(1, 'Thea Gibson', 'wuckert.august@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-06-21 10:48:52', '2022-06-21 10:48:52'),
(2, 'Prof. Lawrence Fritsch', 'dicki.derick@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-06-21 10:48:52', '2022-06-21 10:48:52'),
(3, 'Sven Green', 'randall28@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-06-21 10:48:52', '2022-06-21 10:48:52'),
(4, 'Oma Hamill', 'demond.fadel@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-06-21 10:48:53', '2022-06-21 10:48:53'),
(5, 'Prof. Percival Steuber IV', 'sbarton@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-06-21 10:48:53', '2022-06-21 10:48:53'),
(6, 'Brooks Hills DDS', 'hilpert.green@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-06-21 10:48:53', '2022-06-21 10:48:53'),
(7, 'Golda Hamill', 'gschaefer@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-06-21 10:48:53', '2022-06-21 10:48:53'),
(8, 'Lauryn Goldner II', 'alfonzo.bogan@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-06-21 10:48:53', '2022-06-21 10:48:53'),
(9, 'Dr. Alison Schmitt', 'sonny34@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-06-21 10:48:53', '2022-06-21 10:48:53'),
(10, 'Tomas DuBuque', 'kautzer.manuela@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-06-21 10:48:53', '2022-06-21 10:48:53');

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
(1, 'Quo architecto est est nam sit.', '2022-06-21 10:48:54', '2022-06-21 10:48:54'),
(2, 'Laudantium eius eligendi quis.', '2022-06-21 10:48:54', '2022-06-21 10:48:54'),
(3, 'Repudiandae iure ut est hic ut.', '2022-06-21 10:48:54', '2022-06-21 10:48:54'),
(4, 'Amet enim facere deserunt rerum quo ea impedit.', '2022-06-21 10:48:54', '2022-06-21 10:48:54'),
(5, 'Sit aut rerum rem blanditiis et earum veniam.', '2022-06-21 10:48:54', '2022-06-21 10:48:54'),
(6, 'Et ad qui et quaerat repellendus.', '2022-06-21 10:48:54', '2022-06-21 10:48:54'),
(7, 'Consequatur est facere totam et autem dignissimos sed.', '2022-06-21 10:48:54', '2022-06-21 10:48:54'),
(8, 'Rerum quibusdam facere illo nobis.', '2022-06-21 10:48:54', '2022-06-21 10:48:54'),
(9, 'Illo dignissimos laboriosam et quo dolorum minima expedita.', '2022-06-21 10:48:54', '2022-06-21 10:48:54'),
(10, 'Error expedita nihil et voluptates sunt.', '2022-06-21 10:48:54', '2022-06-21 10:48:54'),
(11, 'Amet ut rerum quasi ad qui quas.', '2022-06-21 10:48:54', '2022-06-21 10:48:54'),
(12, 'Eveniet explicabo fugiat facilis velit harum modi enim.', '2022-06-21 10:48:54', '2022-06-21 10:48:54'),
(13, 'Suscipit aperiam consequatur aut omnis minus enim.', '2022-06-21 10:48:55', '2022-06-21 10:48:55'),
(14, 'Accusamus facilis magni unde maxime molestiae odit.', '2022-06-21 10:48:55', '2022-06-21 10:48:55'),
(15, 'Consectetur voluptas aut et facere autem commodi.', '2022-06-21 10:48:55', '2022-06-21 10:48:55'),
(16, 'Aliquam fugit magni officia.', '2022-06-21 10:48:55', '2022-06-21 10:48:55'),
(17, 'Dolor saepe suscipit ea a non doloremque est.', '2022-06-21 10:48:55', '2022-06-21 10:48:55'),
(18, 'Tempore dolor vitae consequatur voluptas.', '2022-06-21 10:48:55', '2022-06-21 10:48:55'),
(19, 'Earum ut ut quae odio enim.', '2022-06-21 10:48:55', '2022-06-21 10:48:55'),
(20, 'Ullam est reiciendis ipsam exercitationem.', '2022-06-21 10:48:55', '2022-06-21 10:48:55'),
(21, 'THis is video titile', '2022-06-21 23:37:02', '2022-06-21 23:37:02'),
(22, 'THis is video titile', '2022-06-21 23:37:25', '2022-06-21 23:37:25'),
(23, 'THis is video titile', '2022-06-21 23:37:31', '2022-06-21 23:37:31'),
(24, 'THis is video titile', '2022-06-21 23:39:06', '2022-06-21 23:39:06'),
(25, 'THis is video titile', '2022-06-21 23:56:13', '2022-06-21 23:56:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_commentable_type_commentable_id_index` (`commentable_type`,`commentable_id`);

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
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `project_ones`
--
ALTER TABLE `project_ones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `task_ones`
--
ALTER TABLE `task_ones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_ones`
--
ALTER TABLE `user_ones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
