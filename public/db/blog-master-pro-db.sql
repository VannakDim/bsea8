-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2021 at 09:50 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog-master-pro-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publication_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `user_id`, `title`, `url`, `image`, `publication_status`, `created_at`, `updated_at`) VALUES
(2, 1, 'Falcon 20E-5', 'http://blog.clustercoding.com/demo/', '1537538765.jpg', 1, '2018-09-21 13:49:02', '2018-11-16 18:45:56'),
(3, 1, 'Falcon 20E-6', 'http://blog.clustercoding.com/demo/', '1537538772.jpg', 1, '2018-09-21 13:58:39', '2018-11-16 18:46:01'),
(4, 1, 'Falcon 20E-7', 'http://blog.clustercoding.com/demo/', '1537538790.jpg', 1, '2018-09-21 13:59:18', '2018-11-16 18:46:06');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publication_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `user_id`, `title`, `url`, `image`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Blog With A Passion Or Don\'t Blog At All !', 'https://calladoctorbd.com/', '1542369443.jpg', 1, '2018-11-16 00:01:05', '2021-02-05 20:47:42');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publication_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `category_name`, `category_slug`, `meta_title`, `meta_keywords`, `meta_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(2, 1, 'Voluptatem', 'asperiores_aut', 'Voluptatem', 'porro, molestiae, fuga', 'Voluptas et autem alias. Expedita dicta soluta porro. Assumenda fugiat quaerat maiores laboriosam illo et fugiat.', 0, '2018-03-06 11:10:01', '2018-07-18 11:16:06'),
(3, 1, 'Dolores', 'explicabo_repellat', 'Dolores', 'voluptas, molestias, omnis', 'Voluptatem exercitationem qui mollitia error. Inventore sunt non dicta sit quod a. Velit commodi autem saepe.', 0, '2018-03-06 11:10:01', '2018-07-18 11:16:11'),
(4, 1, 'Consequuntur', 'quo_consequatur', 'Consequuntur', 'et, omnis, hic', 'Dicta numquam dolorum iste eum unde. Voluptas voluptatem dolorem voluptatibus unde. Rerum ad maiores non et.', 0, '2018-03-06 11:10:01', '2018-06-23 03:08:18'),
(5, 1, 'Magni', 'sed_eligendi', 'Magni', 'qui, minima, corrupti', 'Velit et laboriosam delectus molestias amet porro. Fuga voluptate cum neque amet. Quos molestiae animi eveniet accusantium non.', 0, '2018-03-06 11:10:01', '2018-07-30 14:14:15'),
(6, 1, 'Expedita', 'exercitationem_molestiae', 'Expedita', 'in, omnis, delectus', 'Suscipit aut facilis saepe voluptatibus quos et animi. Consequatur illo asperiores exercitationem ullam id esse officiis.', 1, '2018-03-06 11:10:01', '2018-03-06 11:10:01'),
(7, 1, 'Voluptatem', 'eveniet_vitae', 'Voluptatem', 'voluptatibus, voluptatem, recusandae', 'Ipsum qui iste necessitatibus vel corporis. Odit sequi aut dolor aut nisi. Soluta illum perspiciatis aut atque magni in nemo.', 1, '2018-03-06 11:10:01', '2018-06-20 07:19:05'),
(8, 1, 'Sapiente', 'temporibus_laudantium', 'Sapiente', 'delectus, velit, quia', 'Odio expedita consequuntur sint. Officiis enim fuga dolor quas rerum. Ut hic quo minus explicabo consequatur voluptate.', 1, '2018-03-06 11:10:01', '2018-03-06 11:10:01'),
(9, 1, 'Corporis', 'aliquam_veritatis', 'Corporis', 'dolorem, omnis, non', 'Esse et quibusdam qui voluptatem. Accusamus dolores voluptatem rerum vel id aperiam.', 1, '2018-03-06 11:10:01', '2018-04-29 13:32:52'),
(10, 1, 'In', 'provident_asperiores', 'In', 'eos, fuga, aliquam', 'Molestiae sed sint molestias magni ad cum ducimus aut. Quo non eos ratione. Aperiam sunt quia eveniet et vitae voluptate neque.', 0, '2018-03-06 11:10:01', '2018-07-29 10:34:36'),
(11, 1, 'Ea', 'sint_accusamus', 'Ea', 'autem, commodi, eveniet', 'Cum et voluptas illo ea veniam tempore. Architecto accusantium maiores sint consequatur est animi aut. Voluptatem ex quod quod.', 1, '2018-03-06 11:10:02', '2018-03-06 11:10:02'),
(12, 1, 'Impedit', 'id_enim', 'Impedit', 'sunt, velit, nostrum', 'Sint voluptas molestiae dolorem quia. Adipisci aperiam ducimus neque vel. Maiores velit consequatur voluptate repudiandae enim.', 1, '2018-03-06 11:10:02', '2018-06-21 12:04:57'),
(13, 1, 'Consequatur', 'et_aut', 'Consequatur', 'aliquam, dignissimos, quo', 'Non rerum sed consequuntur vitae. Blanditiis debitis similique eum itaque. Quos suscipit ut odio quisquam sed rerum quibusdam voluptatum.', 1, '2018-03-06 11:10:02', '2018-03-06 11:10:02'),
(14, 1, 'Et', 'eum_quod', 'Et', 'doloremque, vel, eum', 'Harum rerum et laboriosam occaecati. Inventore impedit perferendis occaecati voluptatem facere. Officiis iste qui similique numquam saepe.', 0, '2018-03-06 11:10:02', '2018-03-06 11:10:02'),
(15, 1, 'Voluptate', 'voluptatibus_eos', 'Voluptate', 'quos, tempore, ipsam', 'Facere rerum odit ut sit. Non veniam laborum odit dolorum aut eligendi. Autem numquam est quis sit fugiat perspiciatis soluta pariatur.', 0, '2018-03-06 11:10:02', '2018-03-08 13:06:20'),
(16, 1, 'كومبيوتر وانترنت', 'كومبيوتروانترنت', 'تعرف على افضل التريكات لزيادة سرعة مومبيوترك وتحسين الانترنت على جهازك', 'كومبيوتر ، انترنت', 'تعرف على افضل التريكات لزيادة سرعة مومبيوترك وتحسين الانترنت على جهازك', 1, '2018-08-07 15:52:31', '2018-08-07 15:52:31');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `parent_comment_id` int(10) UNSIGNED DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `parent_comment_id`, `comment`, `publication_status`, `created_at`, `updated_at`) VALUES
(4, 5, 15, NULL, 'Et quia et exercitationem officia.', 1, '2018-03-14 11:19:54', '2018-06-20 07:54:20'),
(5, 10, 2, NULL, 'Aliquam sed ea rem qui rerum ut.', 0, '2018-03-14 11:19:54', '2018-03-14 11:19:54'),
(10, 20, 11, NULL, 'Explicabo at totam ullam voluptatibus quis unde.', 1, '2018-03-14 11:19:54', '2018-03-14 11:19:54'),
(11, 20, 10, NULL, 'Sed voluptas sequi maiores.', 0, '2018-03-14 11:19:54', '2018-03-14 11:19:54'),
(12, 1, 4, NULL, 'Consequatur a esse nihil illum.', 0, '2018-03-14 11:19:54', '2018-03-14 11:19:54'),
(15, 13, 16, NULL, 'Quam ad libero architecto facere sit corrupti placeat.', 1, '2018-03-14 11:19:54', '2018-05-19 20:11:26'),
(16, 12, 13, NULL, 'Necessitatibus debitis aut facilis aut nam temporibus.', 1, '2018-03-14 11:19:54', '2018-06-20 07:54:19'),
(18, 13, 8, NULL, 'Nemo qui quisquam ea.', 0, '2018-03-14 11:19:54', '2018-05-19 13:10:30'),
(20, 13, 8, NULL, 'Quod quos maiores accusamus quidem sed culpa culpa.', 1, '2018-03-14 11:19:54', '2018-06-20 07:54:21'),
(34, 30, 2, NULL, '<p>LMAO!</p>', 1, '2018-05-10 20:56:25', '2018-06-20 07:54:19'),
(38, 33, 2, NULL, '<p>Very good</p>', 1, '2018-05-19 20:09:18', '2018-05-19 20:11:21'),
(39, 4, 15, NULL, '<p>jkjkj</p>', 1, '2018-05-20 18:37:35', '2018-06-23 16:38:52'),
(51, 37, 2, NULL, '<p>e31</p>', 0, '2018-06-20 06:05:42', '2018-06-20 06:05:42'),
(54, 4, 7, NULL, '<p>прпар</p>', 0, '2018-06-20 07:50:51', '2018-06-20 07:50:51'),
(58, 41, 4, NULL, '<p>32432</p>', 1, '2018-06-21 12:12:43', '2018-07-18 04:47:12'),
(66, 46, 4, NULL, '<p>hi</p>', 0, '2018-07-10 10:37:36', '2018-07-10 10:37:36'),
(68, 1, 7, NULL, '<p>ok</p>', 1, '2018-07-17 04:31:45', '2018-08-09 09:52:49'),
(69, 1, 4, NULL, '<p>vhvhvhvjvhjhj</p>', 1, '2018-07-22 07:57:28', '2018-08-16 06:23:38'),
(78, 50, 4, NULL, '<p>1212</p>', 0, '2018-07-28 18:17:28', '2018-09-15 14:08:25'),
(80, 52, 2, NULL, '<p>yyuuyyuyuyuyuy</p>', 0, '2018-08-09 09:51:18', '2018-08-09 09:51:18'),
(81, 52, 2, 38, '<p>uyyyyyuuyyu</p>', 0, '2018-08-09 09:51:38', '2018-08-09 09:51:38'),
(83, 1, 3, NULL, '<p>, nkjnc</p>', 0, '2018-08-10 22:07:12', '2018-08-10 22:07:12'),
(84, 1, 3, NULL, '<p>c ,mc ,ms c</p>', 0, '2018-08-10 22:07:22', '2018-08-10 22:07:22'),
(85, 1, 3, NULL, '<p>csmdn cs,m</p>', 0, '2018-08-10 22:07:51', '2018-08-10 22:07:51'),
(86, 1, 2, NULL, '<p>ddss</p>', 0, '2018-08-15 15:05:58', '2018-08-15 15:05:58'),
(88, 1, 2, NULL, '<p>bb</p>', 0, '2018-08-17 23:10:20', '2018-08-17 23:10:20'),
(91, 4, 10, NULL, '<p>th</p>', 0, '2018-09-06 22:34:17', '2018-09-06 22:34:17'),
(92, 1, 2, NULL, '<p>deaeda</p>', 0, '2018-09-19 20:37:27', '2018-09-19 20:37:27');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publication_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `user_id`, `caption`, `image`, `publication_status`, `created_at`, `updated_at`) VALUES
(3, 1, 'Distinctio amet quia asperiores nam.', '3.jpg', 1, '2018-03-14 11:24:17', '2018-07-23 17:37:56'),
(4, 1, 'Aut maxime error perferendis odit error repellendus cupiditate error.', '4.jpg', 1, '2018-03-14 11:24:17', '2018-03-14 13:28:42'),
(5, 1, 'Architecto animi tempore magnam ab ipsam perferendis cumque.1', '5.jpg', 1, '2018-03-14 11:24:17', '2018-07-23 15:47:19'),
(6, 1, 'Vitae in atque error ut doloribus.', '6.jpg', 1, '2018-03-14 11:24:17', '2018-07-23 15:47:24'),
(7, 1, 'Fugit quidem sed odit qui sunt porro.', '7.jpg', 1, '2018-03-14 11:24:17', '2018-03-14 13:29:11'),
(8, 1, 'Cumque temporibus inventore soluta laborum et.', '8.jpg', 1, '2018-03-14 11:24:17', '2018-03-14 13:28:51'),
(9, 1, 'Perferendis commodi tempora ut ut quia nesciunt.', '9.jpg', 1, '2018-03-14 11:24:17', '2018-06-20 12:25:21'),
(10, 1, 'Id soluta quia est non optio.', '10.jpg', 1, '2018-03-14 11:24:17', '2018-03-14 13:29:25'),
(11, 1, 'Voluptas perspiciatis saepe sed qui voluptatibus eum.', '11.jpg', 1, '2018-03-14 11:24:17', '2018-03-14 13:31:17'),
(12, 1, 'Recusandae voluptatum consequuntur omnis facilis et maiores provident et.', '12.jpg', 1, '2018-03-14 11:24:17', '2018-07-23 15:47:36'),
(13, 1, 'Quo rerum id at.', '13.jpg', 1, '2018-03-14 11:24:17', '2018-03-14 13:30:02'),
(14, 1, 'Autem repellat deserunt doloremque consequatur quo quaerat sunt.', '14.jpg', 1, '2018-03-14 11:24:17', '2018-07-23 15:47:45'),
(15, 1, 'Autem et aperiam est non.', '15.jpg', 1, '2018-03-14 11:24:17', '2018-07-23 15:47:52'),
(16, 1, 'Nawaz', '16.jpg', 1, '2018-03-14 13:20:10', '2018-03-25 05:12:40'),
(17, 1, 'sdfsdf', '17.jpg', 1, '2018-03-14 13:22:34', '2018-07-23 15:47:58'),
(18, 1, 'fgdfgdfg', '18.jpg', 1, '2018-04-08 14:45:42', '2018-04-08 14:45:42'),
(19, 1, 'sdfsdf', '19.jpg', 1, '2018-09-21 13:12:08', '2018-09-21 13:12:08');

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
(3, '2018_02_26_172534_create_categories_table', 1),
(4, '2018_03_06_095213_create_tags_table', 1),
(5, '2018_03_06_103250_create_posts_table', 1),
(6, '2018_03_07_081755_create_post_tag_table', 2),
(7, '2018_03_11_091823_create_subscribers_table', 3),
(8, '2018_03_11_095148_create_settings_table', 3),
(9, '2018_03_14_081014_create_comments_table', 4),
(10, '2018_03_14_100742_create_pages_table', 4),
(11, '2018_03_14_101657_create_galleries_table', 4),
(12, '2018_09_21_164110_create_advertisements_table', 5),
(13, '2018_10_11_013301_create_banners_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_slug` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publication_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `user_id`, `page_name`, `page_slug`, `page_content`, `page_featured_image`, `meta_title`, `meta_keywords`, `meta_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(3, 1, 'Quod', 'minus_dignissimos', 'Nisi omnis reiciendis dolore corrupti magni. Vitae neque minima voluptatem ullam rem quod architecto. Quam maxime consequatur labore vero rerum qui. Aspernatur aspernatur aut enim sint et.', '3.jpg', 'Quod', 'et, officia, eos', 'Ea aut unde distinctio aut non. Dicta nemo velit ut velit a veritatis officiis. Sed vel iure aliquid illo eum ab.', 1, '2018-03-14 11:24:17', '2018-07-17 04:34:43'),
(5, 1, 'Et', 'provident_a', '<p>Perferendis nemo tempore iure voluptatem rerum dolorum accusantium ad. Incidunt incidunt non sapiente temporibus. Voluptates voluptatem voluptas dolores est dolores perspiciatis saepe.</p><p><span style=\"color: rgb(118, 57, 2); font-family: verdana, geneva, lucida, &quot;lucida grande&quot;, arial, helvetica, sans-serif; font-size: 11.0011px; background-color: rgb(241, 232, 211);\">Обоз: походная кухня (моторизованная), 1 грузовик с боеприпасами, 1 грузовик с запчастями и походной мастерской, 1 бензовоз, 1 мотоцикл с коляской для перевозки оружия и оснащения. Унтер-офицер и помощник оружейника, продовольственный обоз (1 грузовик), обоз с имуществом (1 грузовик), один мотоцикл без коляски для гауптфельдфебеля и казначея.</span><br></p>', '5.jpg', 'Et', 'officiis, laborum, numquam', 'Ea vero qui sint numquam rerum nostrum. Consequatur pariatur fugiat ad. Ea consequatur cum cumque rerum. Omnis dolorum ab perferendis.', 1, '2018-03-14 11:24:17', '2018-06-21 12:57:42'),
(9, 1, 'Sobre Nosotros', 'sobre-nosotros', '<p>Ejemplo de una pagina estatica&nbsp;&nbsp;&nbsp;&nbsp;<br></p>', NULL, 'Quienes Somos', 'about, quienes somos, nosotros', 'Pagina estatica sobre quienen somos', 1, '2018-06-21 00:03:00', '2018-09-15 06:14:56'),
(11, 1, 'halo', 'halo_halo', '<p>halo<br></p>', NULL, 'halo', 'halo', 'halo', 0, '2018-07-26 06:36:35', '2018-08-14 11:06:44'),
(12, 1, 'test', 'testing', '<p>setest</p>', NULL, 'test', 'test', 'dd', 1, '2018-07-26 12:48:52', '2018-09-15 06:14:59');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('n5fd4@sfamo.com', '$2y$10$2zyHhN3xMjzKr4g383AEn.1vvCvNWHWXkyqMnfZQiAJoaFC94ReXi', '2018-06-03 16:39:24'),
('admin@mail.com', '$2y$10$fcEE8C4LsDgxPJubuiw/buZYOxdbVi6oly3JrMvaeMpWb7tCbxmrm', '2018-09-05 18:04:51');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_date` date NOT NULL,
  `post_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publication_status` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `post_date`, `post_title`, `post_slug`, `post_details`, `featured_image`, `youtube_video_url`, `publication_status`, `is_featured`, `view_count`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(2, 1, 8, '2014-02-05', 'Suscipit sapiente natus et asperiores rerum quas iste.', 'neque_a', '<p>Et ut autem non quia voluptates. Et adipisci aut voluptate officiis est eos. A doloremque asperiores quod.</p>', '1.jpg', NULL, 1, 1, 491, 'Veritatis', 'quisquam, aliquid, saepe', '<p>Neque quasi ducimus provident aut ipsum. Numquam consequatur explicabo sit perferendis. Adipisci distinctio sed id. Eos dolorum rerum voluptatem.</p>', '2018-03-06 11:10:03', '2018-11-16 19:04:01'),
(3, 1, 3, '2012-01-11', 'Ut exercitationem sit quaerat saepe quaerat voluptas consequatur.', 'eius_consectetur', '<p>Fugit enim odio cupiditate quo laborum dolorem. Alias eum laudantium ut consectetur. Recusandae aliquid ut consectetur amet.</p>', '2.jpg', NULL, 1, 0, 304, 'Quia', 'quia, quisquam, excepturi', '<p>Debitis ullam deserunt odio in quis. Est aut fuga et odit sit sapiente earum. A id ullam asperiores est modi non.</p>', '2018-03-06 11:10:03', '2018-11-16 19:04:26'),
(4, 1, 8, '2008-04-12', 'Odio cumque nesciunt cupiditate ut.', 'impedit_autem', '<p>Beatae unde dolores deleniti ut rem sunt. Nostrum recusandae cupiditate enim sint fugit id odio. Vero id neque modi sit occaecati deleniti dolores.</p>', '3.jpg', NULL, 1, 1, 338, 'Quas', 'autem, natus, et', '<p>Est corrupti consectetur doloremque et et veritatis. Sit et facilis itaque. Id a tempore labore.</p>', '2018-03-06 11:10:03', '2018-11-16 19:04:27'),
(6, 1, 9, '1977-07-12', 'Magni officia repellat sed rerum in officia.', 'consectetur_suscipit', '<p>Et aliquid eligendi in pariatur libero incidunt. Autem quos laudantium quaerat velit aut tempora. Quis repellat quia quod et.</p>', '4.jpg', NULL, 1, 0, 130, 'Iure', 'voluptate, consequatur, sit', '<p>Et eaque dolor eius optio. Officia perferendis exercitationem sapiente occaecati. Dolore ipsam tenetur dolores optio optio et.</p>', '2018-03-06 11:10:03', '2018-11-16 16:06:20'),
(7, 1, 3, '2002-07-01', 'Vero assumenda quod illo reprehenderit cupiditate.', 'ipsa_ut', '<p>Assumenda excepturi repellendus sit laborum. Cumque harum vero laborum. Vel ad rem earum suscipit.</p>', '5.jpg', NULL, 1, 1, 259, 'Magni', 'magnam, deleniti, eum', '<p>Molestias nisi est deserunt ut sit sint ut. Libero voluptatum a suscipit cupiditate. Et fugiat consequatur fugit sed dolorum.</p>', '2018-03-06 11:10:03', '2018-11-16 19:04:30'),
(8, 1, 3, '1982-11-25', 'Ab velit distinctio id architecto cupiditate doloribus quis sit.', 'vero_deleniti', '<p>Voluptate maiores ut voluptate ipsam quam. Numquam numquam est qui nisi nisi officiis. Deleniti esse cupiditate at accusamus quos sequi possimus. <a href=\"https://prothomalo.com\">Prothomalo</a> </p>', '6.jpg', NULL, 1, 0, 119, 'Tempore', 'ipsam, tempore, impedit', '<p>Aut odio et assumenda iste. Qui inventore omnis labore vel est ut sed. Labore atque earum est mollitia et molestias c</p>', '2018-03-06 11:10:03', '2018-11-16 19:04:34'),
(10, 4, 9, '1982-11-04', 'Harum ut inventore eaque molestias ut.', 'sunt_et', '<p>Minus labore aut id officia consectetur nihil unde. Consequatur id modi est. Laboriosam expedita in quis quidem sint repudiandae.</p>', '7.jpg', NULL, 1, 0, 203, 'Quo', 'perferendis, optio, et', '<p>Nobis deleniti itaque culpa dolorem dolores sed. Quis voluptates omnis aut nulla molestias qui. Veritatis sit ut magnam eos ad dignissimos.</p>', '2018-03-06 11:10:04', '2018-11-16 19:04:35'),
(11, 4, 2, '1993-04-14', 'Aliquid vitae itaque id dignissimos reiciendis et.', 'maiores_necessitatibus', '<p>Doloremque sit et et aut. Sapiente dolorem enim eum est numquam aut aut. Ut pariatur ipsum temporibus et. <a href=\"http://www.pornzam.com\">porn</a><br></p>', '8.jpg', NULL, 1, 1, 210, 'Illum', 'dolores, et, sit', '<p>Maxime ullam dignissimos quasi voluptates. Suscipit dolorem accusantium et in molestiae. Accusantium eaque quia rem. Ut ut nisi in nemo culpa.</p>', '2018-03-06 11:10:04', '2018-11-16 19:04:33'),
(13, 4, 2, '2006-02-10', 'In natus dolorem neque atque adipisci ut.', 'voluptatem_ut', '<p>Perferendis iure magni debitis unde. Voluptate aspernatur velit dignissimos sit in et. Voluptatum ab nulla nostrum expedita nesciunt.</p>', '9.jpg', NULL, 1, 1, 320, 'Corporis', 'deleniti, quasi, vel', '<p>Sint hic ab eum. Voluptas voluptas et omnis hic provident. Reprehenderit neque aut architecto sit.</p>', '2018-03-06 11:10:04', '2018-11-16 19:04:29'),
(14, 4, 6, '1976-09-04', 'Nobis voluptates iusto quaerat ut voluptate est.', 'porro_quos', '<p>Fugiat officia nobis error non laboriosam aspernatur ut. Incidunt eveniet omnis nostrum ut. Qui minus adipisci incidunt dolor unde minus aut.</p>', '10.jpg', NULL, 1, 1, 118, 'Error', 'adipisci, qui, impedit', '<p>Alias accusamus sit adipisci ipsam aut nulla earum. Voluptatibus esse consequatur eius eligendi voluptatibus aperiam. Dolore eos et quia cum.</p>', '2018-03-06 11:10:04', '2018-11-16 16:13:35'),
(15, 4, 7, '1972-07-19', 'Nihil ducimus consectetur sunt ratione nihil ipsam voluptatem.', 'modi_ut', '<p>Qui voluptatem odit animi ut quia. Sunt iste et facere sit corrupti maiores quia. Eos eos sapiente magni corrupti.</p>', '11.jpg', NULL, 1, 0, 107, 'Minus', 'autem, repellat, qui', '<p>Est minima quia numquam nobis. Ipsam quia quisquam sequi dicta neque optio. Aperiam nemo occaecati possimus animi amet provident.</p>', '2018-03-06 11:10:04', '2018-09-19 12:22:14'),
(16, 1, 13, '1994-05-26', 'Dolores in sunt debitis eum et sint.', 'sed_officiis', '<p>Consequatur blanditiis at dicta iusto. Accusamus nihil et quod. Provident molestiae expedita amet quia libero.</p>', '12.jpg', NULL, 1, 0, 268, 'Voluptas', 'non, eius, rerum', '<p>Quis nam tempore sed id ab aut minima. Eaque blanditiis rem fugiat dolor. Dolore maxime omnis modi veritatis.</p>', '2018-03-06 11:10:04', '2018-11-16 19:04:32'),
(44, 4, 6, '2018-09-12', 'Giảm béo với ớt', 'giam-beo-voi-ot', '<p style=\"color:rgb(54,43,33);font-family:Montserrat;font-size:13px;\"><strong><span style=\"font-family:\'times new roman\', times, serif;font-size:14pt;\">Ớt và công dụng giảm béo của nó.</span></strong></p>\r\n\r\n<p style=\"color:rgb(54,43,33);font-family:Montserrat;font-size:13px;\"><span style=\"font-family:\'times new roman\', times, serif;font-size:14pt;\"><strong>Công dụng giảm béo:</strong> Nâng cao nhiệt độ cơ thể, tăng năng lượng.</span></p>\r\n\r\n<p style=\"color:rgb(54,43,33);font-family:Montserrat;font-size:13px;\"><span style=\"font-family:\'times new roman\', times, serif;font-size:14pt;\"> Ớt vừa dùng để ăn vừa để làm thuốc, được trồng rộng rãi ở châu Phi, vùng nhiệt đới châu Mỹ, Châu Á… có lịch sử hơn 7000 năm. Ớt được chia làm hai loại: ớt ngọt và ớt cay. Còn hạt tiêu đen không thuộc loại ớt, đó là do những người khai thác ở Tây Ban Nha đã gọi nhầm ớt là hạt tiêu, nhưng cũng chính là họ đã đem ớt truyền đi. Ớt không chỉ làm cho người ta ăn ngon miệng, mà trong ớt có chứa nhiều vitamin A, B, C, can xi, phốt pho, sắt và vitamin E, có thể tăng cường sự khoẻ mạnh cho tim. Trong ớt đỏ tươi còn chứa một chất chống ôxy quan trọng cần thiết cho cơ thể đó là – caroten, có thể nâng cao khả năng miễn dịch của cơ thể. Ớt còn làm cho giảm đau (nhất là đau khớp), kháng khuẩn và kích thích tiêu hoá. </span><span style=\"font-family:\'times new roman\', times, serif;font-size:14pt;\">Đương nhiên, ớt là một loại hương liệu bốc mùi. Chất cay của ớt là một loại chất có thể thúc đẩy tuần hoàn máu trong cơ thể, nâng cao hiệu suất trao đổi chất, loại khử chất béo trong động mạch.</span></p>\r\n\r\n<p style=\"color:rgb(54,43,33);font-family:Montserrat;font-size:13px;\"><img src=\"http://mommyvn.com/wp-content/uploads/2018/09/nhungcongdungitbiettutraiotkhienbanbatngo.jpg\" alt=\"\" width=\"525\" height=\"394\"></p>\r\n\r\n<p style=\"color:rgb(54,43,33);font-family:Montserrat;font-size:13px;\"><span style=\"font-family:\'times new roman\', times, serif;font-size:14pt;\"> Một công trình nghiên cứu của Trường đại học khoa học kỹ thuật Oxford đã chứng minh: ớt có thể nâng cao 20% tỉ lệ trao </span><span style=\"font-family:\'times new roman\', times, serif;font-size:14pt;\">đổi chất trong cơ thể, thúc đẩy ôxy vận chuyển (chuyển hoá) trong cơ thể.</span></p>\r\n\r\n<p style=\"color:rgb(54,43,33);font-family:Montserrat;font-size:13px;\"><span style=\"font-family:\'times new roman\', times, serif;font-size:14pt;\"><strong>Liều lượng dùng:</strong> Ăn cách ngày, số lượng tuỳ thích. </span></p>\r\n\r\n<p style=\"color:rgb(54,43,33);font-family:Montserrat;font-size:13px;\"><strong><span style=\"font-family:\'times new roman\', times, serif;font-size:14pt;\">Thông tin thêm: </span></strong><span style=\"font-family:\'times new roman\', times, serif;font-size:14pt;\"> Chất cay của ớt là một loại chất không màu, có thể làm nóng người. Mấy năm gần đây, trên tạp chí y học đã có đăng hơn 1300 bài phát biểu nghiên cứu về ớt. </span><span style=\"font-family:\'times new roman\', times, serif;font-size:14pt;\"> Sau khi ăn ớt mọi người thường toát mồ hôi.</span></p>\r\n\r\n<p style=\"color:rgb(54,43,33);font-family:Montserrat;font-size:13px;\"><span style=\"font-family:\'times new roman\', times, serif;font-size:14pt;\">+ Cầm 1 chút ớt nhỏ trong tay, 2 bàn tay của bạn sẽ giữ được ẩm trong buổi sáng sớm giá lạnh.</span></p>\r\n\r\n<p style=\"color:rgb(54,43,33);font-family:Montserrat;font-size:13px;\"><span style=\"font-family:\'times new roman\', times, serif;font-size:14pt;\"><strong>Bí quyết nhỏ:</strong>  Màu sắc của ớt từ đỏ sẫm đến vàng cam, có nhiều chủng loại. </span></p>\r\n\r\n<p style=\"color:rgb(54,43,33);font-family:Montserrat;font-size:13px;\"><span style=\"font-family:\'times new roman\', times, serif;font-size:14pt;\">+ Ớt bán có cả loại quả tươi, cả ớt bột.</span></p>\r\n\r\n<p style=\"color:rgb(54,43,33);font-family:Montserrat;font-size:13px;\"><span style=\"font-family:\'times new roman\', times, serif;font-size:14pt;\">+ Ớt bột phải được để vào trong lọ thuỷ tinh đậy kín tránh nắng chiếu thẳng vào, có thể đến được 1 năm.</span></p>\r\n\r\n<p style=\"color:rgb(54,43,33);font-family:Montserrat;font-size:13px;\"><strong><span style=\"font-family:\'times new roman\', times, serif;font-size:14pt;\">Cách chế biến:</span></strong></p>\r\n\r\n<p style=\"color:rgb(54,43,33);font-family:Montserrat;font-size:13px;\"><span style=\"font-family:\'times new roman\', times, serif;font-size:14pt;\">+ Ớt có thể làm nóng lên các món ăn bất kỳ.</span></p>\r\n\r\n<p style=\"color:rgb(54,43,33);font-family:Montserrat;font-size:13px;\"><span style=\"font-family:\'times new roman\', times, serif;font-size:14pt;\">+ Cho thêm ít ớt bột vào trong cà phê là cách ăn truyền thống của người Mêhycô.</span></p>\r\n\r\n<p style=\"color:rgb(54,43,33);font-family:Montserrat;font-size:13px;\"><span style=\"font-family:\'times new roman\', times, serif;font-size:14pt;\">+ Những sau khi đun nấu có vị đắng như cải xoong, cho thêm ít ớt và chanh vào có thể làm bớt đắng.</span></p>\r\n\r\n<p style=\"color:rgb(54,43,33);font-family:Montserrat;font-size:13px;\"><span style=\"font-family:\'times new roman\', times, serif;font-size:14pt;\">+ Ớt chỉ nên ăn vừa phải.</span></p>\r\n\r\n<p style=\"color:rgb(54,43,33);font-family:Montserrat;font-size:13px;\"><span style=\"font-family:\'times new roman\', times, serif;font-size:14pt;\">+ Ớt sau khi để lạnh, nhiệt lượng tăng lên cho nên khi làm các món ăn lạnh phải chú ý dùng ớt vừa phải.</span></p>\r\n\r\n<p style=\"color:rgb(54,43,33);font-family:Montserrat;font-size:13px;\"><strong><span style=\"font-family:\'times new roman\', times, serif;font-size:14pt;\">Chú ý:</span></strong></p>\r\n\r\n<p style=\"color:rgb(54,43,33);font-family:Montserrat;font-size:13px;\"><span style=\"font-family:\'times new roman\', times, serif;font-size:14pt;\">Mắt và niêm mạc bị đau phải tránh xa ớt.</span></p>\r\n\r\n<p style=\"color:rgb(54,43,33);font-family:Montserrat;font-size:13px;\"><strong><span style=\"font-family:\'times new roman\', times, serif;font-size:14pt;\">Kinh nghiệm:</span></strong></p>\r\n\r\n<p style=\"color:rgb(54,43,33);font-family:Montserrat;font-size:13px;\"><span style=\"font-family:\'times new roman\', times, serif;font-size:14pt;\">Trên bàn ăn, ngoài lọ muối và hạt tiêu ra nên có thêm lọ ớt dùng thêm mỗi bữa để nâng cao sự chuyển hoá chất trong cơ thể.</span></p>', '13.jpg', NULL, 0, 0, 12, 'Giảm béo với ớt', 'Giảm béo với ớt', '<p>Ớt và công dụng giảm béo của nó. Công dụng giảm béo: Nâng cao nhiệt độ cơ thể, tăng năng lượng. Ớt vừa dùng để ăn vừa để làm thuốc, được trồng rộng rãi ở châu Phi, vùng nhiệt đới châu Mỹ, Châu Á…</p>', '2018-09-12 15:11:56', '2021-02-05 20:17:38');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`) VALUES
(8, 8, 6),
(9, 8, 9),
(10, 8, 13),
(13, 11, 14),
(14, 11, 15),
(20, 16, 12),
(34, 10, 9),
(35, 10, 10),
(38, 13, 14),
(43, 6, 6),
(44, 6, 7),
(45, 6, 8),
(46, 6, 9),
(47, 6, 10),
(49, 6, 12),
(50, 6, 13),
(51, 6, 14),
(52, 6, 15),
(58, 14, 13),
(61, 4, 6),
(74, 3, 14),
(77, 7, 10),
(95, 44, 9);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `website_title` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_us` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_iframe` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `website_title`, `logo`, `favicon`, `about_us`, `copyright`, `email`, `phone`, `mobile`, `fax`, `address_line_one`, `address_line_two`, `state`, `city`, `zip`, `country`, `map_iframe`, `facebook`, `twitter`, `google_plus`, `linkedin`, `meta_title`, `meta_keywords`, `meta_description`, `gallery_meta_title`, `gallery_meta_keywords`, `gallery_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Blog Master Pro', 'logo.png', 'favicon.png', 'ClusterCoding is among the pioneers in the Bangladesh to offer quality web services to medium and large sized businesses to compete in today’s digital world. We possess the experience and expertise to help web entrepreneurs reach their customers across the digital space.', 'Copyright 2019 <a href=\"http://www.motherbabe.com\" target=\"_blank\">Clustercoding</a>, All rights reserved.', 'clustercoding@gmail.com', '+8801717888465', '+8801761913331', '808080', 'House# 83, Road# 16, Sector# 11', 'Uttara 2', 'Uttara 2', 'Dhaka', '1230', 'Bangladesh', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d555880.9507608943!2d90.53634894984002!3d23.75231038682481!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b8b087026b81%3A0x8fa563bbdd5904c2!2sDhaka!5e0!3m2!1sen!2sbd!4v1542392490718\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'https://facebook.com/clustercoding', 'https://twitter.com/cluster_coding', 'https://plus.google.com/+ClusterCoding', 'https://www.linkedin.com/company/clustercoding/', 'Blog Master Pro', 'ClusterCoding Blog, Cluster, Coding, Blog', 'ClusterCoding is among the pioneers in the Bangladesh to offer quality web services to medium and large sized businesses to compete in today’s digital world. We possess the experience and expertise to help web entrepreneurs reach their customers across the digital space.', 'Cluster Coding Gallery', 'Cluster, Coding, Gallery', 'Cluster Coding Gallery Cluster Coding Gallery', '2018-03-11 10:37:29', '2018-11-16 19:34:32');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'labshire@example.net', '2018-03-11 10:37:27', '2018-03-11 10:37:27'),
(2, 'gkunze@example.org', '2018-03-11 10:37:27', '2018-03-11 10:37:27'),
(3, 'rhea12@example.com', '2018-03-11 10:37:27', '2018-03-11 10:37:27'),
(4, 'bergstrom.melyna@example.com', '2018-03-11 10:37:27', '2018-03-11 10:37:27'),
(5, 'brandt.greenfelder@example.org', '2018-03-11 10:37:27', '2018-03-11 10:37:27'),
(6, 'timothy44@example.com', '2018-03-11 10:37:27', '2018-03-11 10:37:27'),
(7, 'twelch@example.org', '2018-03-11 10:37:27', '2018-03-11 10:37:27'),
(8, 'ophelia77@example.org', '2018-03-11 10:37:27', '2018-03-11 10:37:27'),
(9, 'lind.raul@example.com', '2018-03-11 10:37:27', '2018-03-11 10:37:27'),
(10, 'lurline34@example.net', '2018-03-11 10:37:27', '2018-03-11 10:37:27'),
(11, 'heaven94@example.org', '2018-03-11 10:37:27', '2018-03-11 10:37:27'),
(12, 'rveum@example.com', '2018-03-11 10:37:27', '2018-03-11 10:37:27'),
(13, 'maye21@example.com', '2018-03-11 10:37:27', '2018-03-11 10:37:27'),
(14, 'brekke.ivah@example.com', '2018-03-11 10:37:27', '2018-03-11 10:37:27'),
(15, 'bernier.dominic@example.net', '2018-03-11 10:37:27', '2018-03-11 10:37:27'),
(16, 'shaylee67@example.org', '2018-03-11 10:37:27', '2018-03-11 10:37:27'),
(17, 'kaleb.padberg@example.org', '2018-03-11 10:37:27', '2018-03-11 10:37:27'),
(18, 'will.rex@example.org', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(19, 'mbaumbach@example.net', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(20, 'margie47@example.com', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(21, 'leannon.burdette@example.org', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(22, 'larkin.trenton@example.org', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(23, 'waters.mathilde@example.com', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(24, 'josefa.goyette@example.net', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(25, 'hlemke@example.com', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(26, 'myles.reichel@example.com', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(27, 'schinner.keara@example.com', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(28, 'leopoldo92@example.org', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(29, 'ydaugherty@example.org', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(30, 'prudence23@example.com', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(31, 'padberg.ford@example.net', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(32, 'desmond.bednar@example.org', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(33, 'gcollier@example.net', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(34, 'nschiller@example.org', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(35, 'vena.wyman@example.com', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(36, 'nolan.maggio@example.com', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(37, 'amely.bradtke@example.org', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(38, 'yklein@example.com', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(39, 'pierce70@example.org', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(40, 'becker.roosevelt@example.com', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(41, 'rogahn.elvera@example.org', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(42, 'walter.lilian@example.net', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(43, 'amy.stiedemann@example.com', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(44, 'elittle@example.net', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(45, 'wmarks@example.com', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(46, 'vella65@example.com', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(47, 'hellen.mills@example.com', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(48, 'gladyce.beier@example.net', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(49, 'rframi@example.com', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(50, 'hailee.mccullough@example.net', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(51, 'wlakin@example.com', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(52, 'kertzmann.zita@example.com', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(53, 'wanderson@example.org', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(54, 'gabriel64@example.com', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(55, 'gideon.larson@example.net', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(56, 'rwilkinson@example.net', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(57, 'lubowitz.kiel@example.org', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(58, 'gusikowski.dax@example.org', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(59, 'aubree.blick@example.org', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(60, 'grant.mills@example.com', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(61, 'caleb.koepp@example.org', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(62, 'goyette.tatum@example.org', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(63, 'weissnat.rosalinda@example.net', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(64, 'malachi63@example.com', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(65, 'kuhn.michele@example.net', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(66, 'rosalia29@example.com', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(67, 'xjohnson@example.org', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(68, 'osinski.claude@example.com', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(69, 'cindy.gaylord@example.net', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(71, 'sandy15@example.com', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(72, 'jake.schneider@example.com', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(73, 'flo.jones@example.org', '2018-03-11 10:37:28', '2018-03-11 10:37:28'),
(75, 'rosina66@example.com', '2018-03-11 10:37:29', '2018-03-11 10:37:29'),
(76, 'eudora.rice@example.com', '2018-03-11 10:37:29', '2018-03-11 10:37:29'),
(77, 'aisha76@example.net', '2018-03-11 10:37:29', '2018-03-11 10:37:29'),
(78, 'jerad00@example.net', '2018-03-11 10:37:29', '2018-03-11 10:37:29'),
(79, 'twila.mcglynn@example.net', '2018-03-11 10:37:29', '2018-03-11 10:37:29'),
(80, 'ddaugherty@example.org', '2018-03-11 10:37:29', '2018-03-11 10:37:29'),
(81, 'moshe56@example.net', '2018-03-11 10:37:29', '2018-03-11 10:37:29'),
(82, 'juanita33@example.com', '2018-03-11 10:37:29', '2018-03-11 10:37:29'),
(83, 'rturner@example.org', '2018-03-11 10:37:29', '2018-03-11 10:37:29'),
(84, 'mohr.cristina@example.com', '2018-03-11 10:37:29', '2018-03-11 10:37:29'),
(85, 'hermiston.jo@example.com', '2018-03-11 10:37:29', '2018-03-11 10:37:29'),
(86, 'hamill.jacky@example.net', '2018-03-11 10:37:29', '2018-03-11 10:37:29'),
(87, 'tcorwin@example.org', '2018-03-11 10:37:29', '2018-03-11 10:37:29'),
(88, 'parker.hintz@example.com', '2018-03-11 10:37:29', '2018-03-11 10:37:29'),
(89, 'christiansen.iliana@example.com', '2018-03-11 10:37:29', '2018-03-11 10:37:29'),
(90, 'pollich.brandon@example.net', '2018-03-11 10:37:29', '2018-03-11 10:37:29'),
(91, 'kamryn56@example.org', '2018-03-11 10:37:29', '2018-03-11 10:37:29'),
(92, 'bkutch@example.org', '2018-03-11 10:37:29', '2018-03-11 10:37:29'),
(93, 'sonya91@example.net', '2018-03-11 10:37:29', '2018-03-11 10:37:29'),
(94, 'amie81@example.org', '2018-03-11 10:37:29', '2018-03-11 10:37:29'),
(95, 'aidan.christiansen@example.org', '2018-03-11 10:37:29', '2018-03-11 10:37:29'),
(96, 'becker.weston@example.com', '2018-03-11 10:37:29', '2018-03-11 10:37:29'),
(97, 'nthiel@example.org', '2018-03-11 10:37:29', '2018-03-11 10:37:29'),
(98, 'ghermiston@example.org', '2018-03-11 10:37:29', '2018-03-11 10:37:29'),
(99, 'tania10@example.com', '2018-03-11 10:37:29', '2018-03-11 10:37:29'),
(100, 'mhilll@example.com', '2018-03-11 10:37:29', '2018-03-11 10:37:29'),
(103, 'tlc@mail.com', '2018-03-17 12:48:10', '2018-03-17 12:48:10'),
(104, 'mdmahmud@gmail.com', '2018-03-17 12:48:21', '2018-03-17 12:48:21'),
(105, 'shahid2mailbd@gmail.com', '2018-03-17 12:50:25', '2018-03-17 12:50:25'),
(109, 'lawyersconsortium@gmail.com', '2018-04-03 18:24:50', '2018-04-03 18:24:50'),
(111, 'gnurfiedj@gmail.com', '2018-05-10 20:55:50', '2018-05-10 20:55:50'),
(112, 'gnurfieytrdj@gmail.com', '2018-05-10 20:55:54', '2018-05-10 20:55:54'),
(116, 'dgbxf@gmail.com', '2018-06-23 15:43:58', '2018-06-23 15:43:58'),
(117, 'vijayrocker13@gmail.com', '2018-07-17 16:25:27', '2018-07-17 16:25:27'),
(119, 'orerer@mail.ru', '2018-08-04 04:32:26', '2018-08-04 04:32:26'),
(120, 'admin@admin.com', '2018-08-04 11:09:19', '2018-08-04 11:09:19'),
(121, 'robi@gmail.com', '2018-08-17 23:07:27', '2018-08-17 23:07:27'),
(122, 'jaans0070@gmail.com', '2018-09-16 15:24:29', '2018-09-16 15:24:29'),
(123, 'secdelhi9@gmail.com', '2018-09-18 02:21:41', '2018-09-18 02:21:41');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `tag_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_slug` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publication_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `user_id`, `tag_name`, `tag_slug`, `meta_title`, `meta_keywords`, `meta_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(6, 1, 'Itaque', 'quia_saepe', 'Itaque', 'aspernatur, odio, vero', 'Sint doloremque soluta et dicta quo quis consequuntur. Iste quo laboriosam voluptate.', 1, '2018-03-06 11:10:02', '2018-08-11 10:14:18'),
(7, 1, 'Consequatur', 'accusantium_sequi', 'Consequatur', 'consequatur, ab, laborum', 'Consectetur illo ut modi ut quisquam nostrum facere voluptas. Eaque ipsum eos dolor veniam. Est quia quisquam repudiandae et qui facere.', 0, '2018-03-06 11:10:02', '2018-04-30 20:34:32'),
(8, 1, 'Fugit', 'expedita_omnis', 'Fugit', 'dolore, veniam, impedit', 'Modi eum reprehenderit et illo. Voluptatem odio quidem necessitatibus voluptate eum quidem et.', 1, '2018-03-06 11:10:02', '2018-06-21 11:48:53'),
(9, 1, 'Est', 'qui_consequuntur', 'Est', 'maiores, autem, dicta', 'Ad sed perferendis non aut. Labore modi enim sequi a et. Ex molestias praesentium ipsam sint. Quo porro in assumenda distinctio.', 1, '2018-03-06 11:10:02', '2018-06-20 06:55:09'),
(10, 1, 'Commodi', 'minima_minus', 'Commodi', 'officia, fuga, inventore', 'Dicta facere non tenetur culpa non dolorum unde qui. Sed laboriosam voluptatem soluta eaque. Dicta culpa quaerat sed omnis modi vero.', 1, '2018-03-06 11:10:02', '2018-05-20 22:37:45'),
(12, 1, 'Hic', 'reiciendis_aut', 'Hic', 'architecto, molestias, reiciendis', 'Quas ad ipsum aliquam. Quis dolorem consequatur et ipsam. Voluptatum minima ut ut eligendi expedita veniam non.', 1, '2018-03-06 11:10:03', '2018-03-17 04:37:47'),
(13, 1, 'Et', 'repellat_neque', 'Et', 'expedita, error, omnis', 'Praesentium reiciendis et voluptatum reiciendis neque porro quia. In sit saepe odio nesciunt voluptatem. Labore ut numquam eaque in porro.', 0, '2018-03-06 11:10:03', '2018-06-23 03:08:32'),
(14, 1, 'Et', 'fuga_sint', 'Et', 'earum, veritatis, quod', 'Ea similique excepturi ex nesciunt quam. Totam qui provident quam consectetur corporis. Assumenda voluptatem a ut vitae a ut.', 1, '2018-03-06 11:10:03', '2018-03-17 04:37:45'),
(15, 1, 'Quidem', 'ut_qui', 'Quidem', 'perferendis, sed, aut', 'Aspernatur aut et dolores quis assumenda. Ipsum eum nam qui ipsam. Ut nemo ab sed. Sunt omnis sunt est.', 1, '2018-03-06 11:10:03', '2018-07-02 16:13:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activation_status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `avatar`, `gender`, `phone`, `address`, `facebook`, `twitter`, `google_plus`, `linkedin`, `about`, `role`, `activation_status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Tony', 'admin', 'admin@mail.com', '$2y$10$oWeLVANkG.dkOCsbqynHyue3KL1MUXw6JEnQf2vpaaL.0gCBlYDei', '1.png', 'f', '7030513714', 'uttar, dhaka 1230', 'https://www.facebook.com/msnawazbd', 'https://twitter.com/mr_ms_nawaz', 'https://plus.google.com/107488120575807747172', 'https://www.linkedin.com/in/mr-ms-nawaz/', NULL, 'admin', 1, 'k5rEDo7CXmrRHCTbuNOAnfo4BwdrJjiYVJ3GE2h9B3CItVxSQhhEfKOQbN0G', '2018-03-06 11:10:00', '2018-08-19 06:07:55'),
(3, 'Alva Nienow', 'doloribus_laboriosam', 'atrantow@example.net', '$2y$10$oWeLVANkG.dkOCsbqynHyue3KL1MUXw6JEnQf2vpaaL.0gCBlYDei', '3.png', NULL, NULL, NULL, NULL, 'https://twitter.com/', 'https://plus.google.com/', NULL, NULL, 'user', 1, 'yWrPMI32lWwQXPmP8bzuhcB3Ki7rNbXwdna4j77Gm9vaWs1Ee1UvA9wygMjr', '2018-03-06 11:10:00', '2018-03-13 12:00:37'),
(4, 'Dr. Tracy Bayer DDS', 'author', 'author@mail.com', '$2y$10$oWeLVANkG.dkOCsbqynHyue3KL1MUXw6JEnQf2vpaaL.0gCBlYDei', '4.png', 'm', '23456234567', '34sdasdasdasdas', 'https://www.facebook.com/', NULL, 'https://plus.google.com/', NULL, 'asdasdasd sdafasdf', 'author', 1, 'Er09pqVX6uJN98HeOX7dfg4hQCRfUVu4IjqLiwYUS1NKDaogNSYvrLsrV7cr', '2018-03-06 11:10:00', '2018-06-05 19:00:13'),
(5, 'Ms. Joelle Sporer V', 'reprehenderit_et', 'sherman65@example.com', '$2y$10$oWeLVANkG.dkOCsbqynHyue3KL1MUXw6JEnQf2vpaaL.0gCBlYDei', NULL, NULL, NULL, NULL, NULL, 'https://twitter.com/', NULL, 'https://www.linkedin.com/', NULL, 'user', 1, 'NQdjpzW3dq', '2018-03-06 11:10:01', '2018-03-06 11:10:01'),
(7, 'Magdalena Dickens', 'maiores_placeat', 'ydurgan@example.org', '$2y$10$oWeLVANkG.dkOCsbqynHyue3KL1MUXw6JEnQf2vpaaL.0gCBlYDei', '7.png', NULL, NULL, NULL, NULL, 'https://twitter.com/', 'https://plus.google.com/', NULL, NULL, 'user', 1, 'lRernN87pqqZpPn7yaG3vAtWQAPKoVINjOnkpUgEhjvcHBRZNj0ZDqLU4gDT', '2018-03-06 11:10:01', '2018-03-13 12:03:23'),
(8, 'Karli Bergstrom', 'inventore_assumenda', 'isabella.osinski@example.org', '$2y$10$oWeLVANkG.dkOCsbqynHyue3KL1MUXw6JEnQf2vpaaL.0gCBlYDei', NULL, NULL, NULL, NULL, 'https://www.facebook.com/', NULL, NULL, 'https://www.linkedin.com/', NULL, 'user', 1, 'Vic9xqudhs', '2018-03-06 11:10:01', '2018-03-06 11:10:01'),
(9, 'Grover Keeling', 'voluptas_asperiores', 'streich.antonia@example.net', '$2y$10$oWeLVANkG.dkOCsbqynHyue3KL1MUXw6JEnQf2vpaaL.0gCBlYDei', '9.png', NULL, NULL, NULL, NULL, 'https://twitter.com/', 'https://plus.google.com/', NULL, NULL, 'user', 1, 'dS4nuhyWClGMAmBlaY7yiTsCAWdm0HYqCnLfi8f1Gp50PelE9t5SEIIVlKVc', '2018-03-06 11:10:01', '2018-03-13 12:04:10'),
(10, 'Jacynthe Wehner III', 'molestiae_natus', 'janie34@example.org', '$2y$10$oWeLVANkG.dkOCsbqynHyue3KL1MUXw6JEnQf2vpaaL.0gCBlYDei', NULL, NULL, NULL, NULL, 'https://www.facebook.com/', NULL, NULL, 'https://www.linkedin.com/', NULL, 'user', 1, 'f9z5YbjVqN', '2018-03-06 11:10:01', '2018-03-06 11:10:01'),
(11, 'Prof. Michaela Ruecker PhD', 'dolore_delectus', 'federico82@example.org', '$2y$10$oWeLVANkG.dkOCsbqynHyue3KL1MUXw6JEnQf2vpaaL.0gCBlYDei', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', 1, 'TWX78y7w9Q', '2018-03-13 12:10:03', '2018-03-13 12:10:03'),
(12, 'Heath Johns IV', 'voluptas_et', 'ryan.nigel@example.org', '$2y$10$oWeLVANkG.dkOCsbqynHyue3KL1MUXw6JEnQf2vpaaL.0gCBlYDei', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', 1, 'Hfp97nd7b0', '2018-03-13 12:10:03', '2018-03-13 12:10:03'),
(13, 'Edwardo Hackett MD', 'omnis_saepe', 'adan.batz@example.net', '$2y$10$oWeLVANkG.dkOCsbqynHyue3KL1MUXw6JEnQf2vpaaL.0gCBlYDei', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', 1, 'GdaixI6MpK', '2018-03-13 12:10:03', '2018-03-13 12:10:03'),
(14, 'Caterina Steuber', 'et_aut', 'neil21@example.org', '$2y$10$oWeLVANkG.dkOCsbqynHyue3KL1MUXw6JEnQf2vpaaL.0gCBlYDei', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', 1, 'cdzFOEcCYn', '2018-03-13 12:10:03', '2018-03-13 12:10:03'),
(17, 'Karli Fahey', 'possimus_eaque', 'bartoletti.alexane@example.net', '$2y$10$oWeLVANkG.dkOCsbqynHyue3KL1MUXw6JEnQf2vpaaL.0gCBlYDei', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', 1, 'sYwdt1Z5FS', '2018-03-13 12:10:04', '2018-03-13 12:10:04'),
(19, 'Susana Schuster', 'nobis_asperiores', 'jennie56@example.net', '$2y$10$oWeLVANkG.dkOCsbqynHyue3KL1MUXw6JEnQf2vpaaL.0gCBlYDei', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', 1, 'ULoCNsWCo0', '2018-03-13 12:10:04', '2018-03-13 12:10:04'),
(20, 'Mr. Alexander Rutherford', 'fugit_aut', 'eborer@example.net', '$2y$10$oWeLVANkG.dkOCsbqynHyue3KL1MUXw6JEnQf2vpaaL.0gCBlYDei', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', 1, '8VLD0MejQs', '2018-03-13 12:10:04', '2018-03-13 12:10:04'),
(21, 'lord', 'lord', 'lord@gmail.com', '$2y$10$RhlFRL0UmqLc6avDa0FowetOkYMt5aISW42s8rKlXxoe7vwU5jKt.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'author', 1, NULL, '2018-04-20 02:56:12', '2018-04-20 03:49:53'),
(22, 'thomasjr05@comcast.net', 'tHOMASJR05', 'thomasjr05@comcast.net', '$2y$10$nn2GfAxt2oUS30ZDdLRnlO8nXm7DPDiJYXyu2X2NHUdHgT3FJxd7i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', 1, NULL, '2018-04-21 04:30:35', '2018-04-21 04:30:35'),
(24, 'Towfik Hossain', 'towfikhossain', 'towfikhossain@mail.com', '$2y$10$yQsb74jm5g9aiU2y9TKtDOgqdkwe6yanL6STc.eLetAmqFBL59Dlm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', 1, 'yniAqsaIJ6HJYbijDNeX5qcx3tfVxIgkRX7Y0cqJ0oVlar1BpZXZ0KNguXFa', '2018-04-23 19:44:55', '2018-04-23 19:45:27'),
(30, 'yoyoyooy', 'dogsusggsgaa', 'hjfdigojgvio@gmail.com', '$2y$10$LKZTfSlzDiANTeFGrqL0yuaqaHaexXTYBDE4LKxUFcbD1Hyz4bc9W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'author', 1, 'rYlCJx9Tf1AKlW5WBy2LPtP8l1Ze6QMSzp3C6kXxGP2p9p30QfmIVxPy54rR', '2018-05-10 20:55:25', '2018-05-10 20:57:44'),
(33, 'Catalin', 'demo', 'mtatars@mail.ru', '$2y$10$hv/lp3FKWDuGviUWfvNhO.vu7iZfyEX5KcILukssVSco6gUukeDUO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', 1, '5U5JYQeuihygr8sv8fYCbzgn5h8I2YZvQj4J9xwR1NFfltKUgr8Zmu7GirHh', '2018-05-19 20:08:57', '2018-05-19 20:08:57'),
(37, 'serverux5@gmail.com', 'Serverux', 'serverux5@gmail.com', '$2y$10$1vPZs/L01VBarF9mcmxkg.O2zawB0/GIT3szfy/vxQsUMZ0crBDH6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', 1, NULL, '2018-06-20 06:05:22', '2018-06-20 06:05:22'),
(41, 'vova', 'vova', 'vova.symonchuk@gmail.com', '$2y$10$GeEO5QzEu29AxRKITn/lCuEuMEccsAemjXfodwx/nOVpOuzmYZeem', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', 1, NULL, '2018-06-21 08:25:22', '2018-06-21 08:25:22'),
(42, 'anime', 'shubhamhacker94', 'darkdogs123@gmail.com', '$2y$10$EmEuloL7/JEUTvXumaVHGO5mRr9MMeXj8wY5qgCYWHVcW95tCne76', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', 1, 'rggQ8a8Qpb56pXiRhu3tLROLITVv8cZTJFDu01YfhO3jWthx3YvSs278kasF', '2018-06-22 03:05:46', '2018-06-22 03:05:46'),
(43, 'Mr. Jony', 'mr.jony', 'user@mail.com', '$2y$10$oWeLVANkG.dkOCsbqynHyue3KL1MUXw6JEnQf2vpaaL.0gCBlYDei', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', 1, 's001LdGZyR3m8WgagKl9REb5Zzt8jeEQ7ScMYpNzamJNi1WWSJVhXcrUth38', '2018-06-22 12:04:49', '2018-06-22 12:04:49'),
(45, 'jfjj', 'jfk', 'jfk@yahoo.com', '$2y$10$iFkNBr17EhlXIUHuksOMs.EToKEi59Qf4lJrpb7rs1f4AN/Vq7Y3K', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', 0, '1MoplhIHwgCHDwIl1fz0VwtNqgEQB4mDpGH6ambL7fjGcycXo10yP22rUiIH', '2018-07-08 20:26:36', '2018-07-17 18:05:36'),
(46, 'iux', 'iux', 'irfanullah73@gmail.com', '$2y$10$k6g09laPNe9V/t2NxvWoCeaozKkuQQIHas9bCtfuewawiVNtXUnnW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', 1, 'tU3MOKmbSD5jBHkpsLyxKqX8MnsgnJ7YBzc9qzZT50QmczWOyWkeA4GxhO4y', '2018-07-10 10:35:57', '2018-07-10 10:35:57'),
(48, 'emanuele timpanaro', 'timpa73', 'e.timpanaro@tiscali.it', '$2y$10$jgIfJD9frZZuvAGIJgFOt.NWO9vdrnTrS.kt6u6rbIThqJYz6TlsS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', 0, NULL, '2018-07-17 12:10:53', '2018-07-27 20:40:48'),
(50, 'Akshay', 'akshayvijayshinde', 'akshayvijayshinde@gmail.com', '$2y$10$/YDC7jhCV10fGRrvjAFKOexbCumguWlIPvVH/iJcRfLwid7/8.6UC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', 1, NULL, '2018-07-28 18:17:07', '2018-07-28 18:17:07'),
(51, 'Hemant Kumar', 'cosmosg9', 'cosmosg9@gmail.com', '$2y$10$ZMYTak/TRpVtWia0psNAe.fEoa1VejFZWyoVbOVsukkHX/vnYTlpK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', 1, 'mG9kL09wXDjiEjyeA0TaisTsriiicGCPQyNgpXhneATbKOyfjvvTGUngBhLO', '2018-08-06 11:34:52', '2018-08-06 11:34:52'),
(52, 'Thilam', 'thilam1', 'thilam1@gmail.com', '$2y$10$TVzjSL27LlSiBl0XRhSZaOLFoJlZF0bzqhXxXlcGqEw8XI/Hb1eAe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', 1, 'Tqrr9pIv2S0qB06OcWDmKO3wQ4dGHyzaqTQmHzJNXe3afQhfo1XyS4jiXHOZ', '2018-08-09 09:50:57', '2018-08-09 09:50:57'),
(53, 'nima', 'nima', 'nima.lalzad@yahoo.com', '$2y$10$zlVq/062LM/oDY5zwbhugOvZFsKQNhxyHAJVCuDTXnCMCQ/NTtGjy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', 0, 'Nz5ATThwxfP5Cg5vFvOkTi1E2pAbPsUyj9nynBeNwGBppiVi2niIVppH6004', '2018-08-12 20:26:38', '2018-08-17 23:09:27'),
(54, 'Sample', 'Sample', 'sample@gmail.com', '$2y$10$PRollOgCVc4hyRdqcD0KJOil3jHFtM9Ywbiek0auYI.ucr5LMJVwy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', 1, 'JxJR8EZd8zmM7SYNKOk4G9b3a80QTWcj0C5oCDrFbfEpb9lPpEjBp2xBEBen', '2018-08-17 04:19:46', '2018-08-17 04:19:46'),
(55, 'nabin', 'nabin', 'rnabin20@gmail.com', '$2y$10$BuPdXqkW3XKELYaR7S2qEO4QpdH.m/03VRe.PZDuruAFY38tRuk3m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', 1, 'tYIzNSDEubnTrbjBN9x2PVStOWvIo2nJTJCjkmnEHK5LGsWhWMhijQL5MlVP', '2018-08-19 19:03:21', '2018-08-19 19:03:21'),
(56, 'unyun', 'unyun', 'info.champotrack@gmail.com', '$2y$10$B77LYPe4akVWHPtKpVqV6OGsWboFgZNBoDYf3DOBJkh/Dmh5htxye', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', 1, '3nTE169AJSFmE4GS2a7Ko9MsVxe3ucu4lP8aMLSVE5jvtah8wELXlqgJlUKi', '2018-08-20 13:35:26', '2018-08-20 13:35:26'),
(57, 'raplife.uz@bk.ru', 'StyleUz', 'raplife.uz@bk.ru', '$2y$10$l/3QbHXOs4LeIzLIHkrqveKQYxvx.apd0AD1reJJF3kXwzLAM/7r6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', 1, NULL, '2018-08-21 05:08:48', '2018-08-21 05:08:48'),
(58, 'Sanjay', 'Sanjay', 'sanjaydhoom333@gmail.com', '$2y$10$IR951kC418aBn2/70Narb.qe.hPd6/3YWEsxq0po93NOmbJKzHx4S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', 1, NULL, '2018-08-22 06:03:26', '2018-08-22 06:03:26'),
(59, 'Antonio Silva', 'hickdez', 'hickdez@gmail.com', '$2y$10$eFG0AqYrmwnmytCibteq9OmZHuQ9vHMahiQZKL1Eyz0/ICXEA3n5y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', 1, NULL, '2018-08-24 01:23:32', '2018-08-24 01:23:32'),
(60, 'Yousef Tarek', 'youseft666', 'youseft666@gmail.com', '$2y$10$mKta9wfENrDQoyOZYqKLauwWtcSzODMr0s13VOjg4M6RGUDK4TuRS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', 1, NULL, '2018-08-25 13:34:26', '2018-08-25 13:34:26'),
(61, 'eee', 'eee', 'sss@jjj.ll', '$2y$10$zvM1ytI9lPMx/4BcAQUxve8W9iNIwNkguan.UqW7hR3f2jTdSKZwW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', 1, 'TD5B4Ym3O9foJwsRX1e5xUvgzxXoY8PSdtm6a16NM7CVgBaqpoDgaCQh924a', '2018-08-26 16:47:32', '2018-08-26 16:47:32'),
(62, 'fzdsdf', 'com', 'nopyejr@gmail.com', '$2y$10$IBk.YxmIsrjA/.JtQvaH4.FH6PvoasYGRSrIV2XebNPJGnkd7tFxq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', 1, 'koz5K9EEwa9MG9STMmj1SBArZHL5hIopO9QaVIWxcQYu81c5QsBFEVB7TmWb', '2018-09-08 20:20:43', '2018-09-08 20:20:43'),
(63, 'Jyotpreet Singh', 'jyotpreet110', 'jyotpreet110@gmail.com', '$2y$10$CHctt4HIAW0.JqKOYtkpueTjhfWpp2XT3Yr18eULSGUjiZRKLa2NG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 1, '9c7X3ulTRZHSUgIn0i6OBjNQHPg8FQAvO1d9dcmRRtmO7RbPWvR6985wb8He', '2018-09-15 03:18:45', '2018-09-15 14:09:39'),
(64, 'webagi', 'webagi', 'webagi.net@gmail.com', '$2y$10$Lf81T5Ws0k92OQmE3rtsyO0Bk8JKiQhC0AttRDnekETh4gxX65.RC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', 1, NULL, '2018-09-18 20:49:06', '2018-09-18 20:49:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advertisements_user_id_index` (`user_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banners_user_id_index` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_category_slug_unique` (`category_slug`),
  ADD KEY `categories_user_id_index` (`user_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_index` (`user_id`),
  ADD KEY `comments_post_id_index` (`post_id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_user_id_index` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_page_slug_unique` (`page_slug`),
  ADD KEY `pages_user_id_index` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_index` (`user_id`),
  ADD KEY `posts_category_id_index` (`category_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_id_foreign` (`post_id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_unique` (`email`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_tag_slug_unique` (`tag_slug`),
  ADD KEY `tags_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD CONSTRAINT `advertisements_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `banners_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
