-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 05, 2023 at 06:03 AM
-- Server version: 5.7.42-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog-db`
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
  `publication_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `user_id`, `title`, `url`, `image`, `publication_status`, `created_at`, `updated_at`) VALUES
(2, 1, 'Falcon 20E-5', 'http://blog.clustercoding.com/demo/', '1537538765.jpg', 0, '2018-09-21 13:49:02', '2023-06-02 08:50:12'),
(3, 1, 'Falcon 20E-6', 'http://blog.clustercoding.com/demo/', '1537538772.jpg', 0, '2018-09-21 13:58:39', '2023-06-02 08:50:10'),
(4, 1, 'Falcon 20E-7', 'http://blog.clustercoding.com/demo/', '1537538790.jpg', 0, '2018-09-21 13:59:18', '2023-06-02 08:50:07');

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
  `publication_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `user_id`, `title`, `url`, `image`, `publication_status`, `created_at`, `updated_at`) VALUES
(2, 1, 'BSEA - CAMBODIA\'S BAGS, SHOES AND ELECTRONICS ASSOCIATION', NULL, '1685687561.jpg', 1, '2023-06-02 19:27:50', '2023-06-17 22:01:04'),
(6, 65, 'Photo at Ministry of Industry', NULL, '1687781105.jpg', 1, '2023-06-27 01:05:05', '2023-07-28 04:42:22');

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
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `publication_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `category_name`, `category_slug`, `meta_title`, `meta_keywords`, `meta_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(17, 1, 'news', 'bsea_news', 'bsea news', 'bsea_news', 'bsea news', 1, '2023-06-02 18:20:15', '2023-06-02 18:20:15');

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
  `publication_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `parent_comment_id`, `comment`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 66, 45, NULL, '<p>គេហទំព័រមានមុខងារបញ្ចេញមតិបាន</p>', 1, '2023-06-06 05:03:14', '2023-06-06 05:57:20'),
(2, 1, 45, 1, '<p>reply comment also working</p>', 1, '2023-06-06 05:58:15', '2023-06-06 05:58:33'),
(4, 1, 45, NULL, '<p>Good job</p>', 1, '2023-06-06 06:07:22', '2023-06-06 06:27:26'),
(6, 1, 45, NULL, '<p>សាកល្បងបញ្ចេញមតិ</p>', 1, '2023-06-06 06:18:26', '2023-06-06 06:27:28'),
(8, 1, 45, NULL, '<p>ថ្មីចែសហ្មង</p>', 1, '2023-06-06 06:58:08', '2023-06-06 06:58:08');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publication_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_worker` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `user_id`, `company`, `company_logo`, `owner_from`, `telephone`, `email`, `category`, `number_of_worker`, `location`, `map`, `created_at`, `updated_at`) VALUES
(8, 1, 'Hanuman Media', '1686507800.jpg', 'China', '098205499', 'vannakhannah@gmail.com', NULL, NULL, NULL, NULL, '2023-06-12 07:23:20', '2023-06-12 07:23:20');

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
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `publication_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `user_id`, `page_name`, `page_slug`, `page_content`, `page_featured_image`, `meta_title`, `meta_keywords`, `meta_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(5, 1, 'About', 'about_bsea', '<p></p><div style=\"text-align: justify;\"><span style=\"font-size: 12pt; font-family: Arial;\">The Cambodian Bags, Shoes and Electronics Association was established in 2022 (BSEA).It is an Employers Association in manufacturing industry of the bag, shoes and electronics. BSEA is formed up of 17 board members with expertise covering relevant fields. The BSEA was established to protect the rights and interests of its members. BSEA has a role to play in supporting its members by providing advice, counseling and facilitating member discussions with stakeholders to help provide solutions to problems in members\' day-to-day business operations towards growth and development.</span></div><div style=\"text-align: justify;\"><span style=\"font-size: 12pt; font-family: &quot;Khmer OS Battambang&quot;;\"><br></span></div><p></p><p></p><p style=\"text-align: justify;\"><span style=\"font-size: 12pt; font-family: &quot;Khmer OS Battambang&quot;;\">សមាគម កាបូប ស្បែកជើង និង អេឡិចត្រូនិច កម្ពុជា​</span><span lang=\"KHM\" style=\"font-size: 12pt; line-height: 107%;\">បង្កើតឡើងនៅឆ្នាំ ២០២២ ហៅកាត់ ជាភាសាអង់គ្លេស </span><span style=\"font-size: 12pt; line-height: 107%;\">BSEA<span lang=\"KHM\">។\r\nជាសមាគមន៍តំណាងនិយោជក ក្នុងវិស័យឧស្សាហកម្ម ផលិតកាបូបស្បែកជើងនិងគ្រឿងអេឡិចត្រូនិច\r\nនៅប្រទេសកម្ពុជា។ ​</span>BSEA <span lang=\"KHM\">បង្កើតឡើង\r\nដោយក្រុមប្រឹក្សាភិបាលចំនួន ១៧ រូប ដែលមានជំនាញមូលដ្ឋាន គ្របដណ្ដប់ទៅលើវិស័យដែលពាក់ព័ន្ធ។\r\n</span>BSEA <span lang=\"KHM\">ត្រូវបានបង្កើតឡើងក្នុងគោលបំណងការពារសិទ្ធិនិងប្រយោជន៍របស់សមាជិករបស់ខ្លួន។&nbsp;</span>BSEA <span lang=\"KHM\">មានតួនាទីក្នុងការទ្រទ្រង់សមាជិករបស់ខ្លួនដោយ\r\nធ្វើការផ្ដល់ប្រឹក្សា ពិគ្រោះយោបល់ និង ចូលរួមសម្របសម្រួលការពិភាក្សារបស់សមាជិកជាមួយភាគីពាក់ព័ន្ធ\r\nក្នុងការជួយផ្ដល់ទិសដៅ ដើម្បីដោះស្រាយបញ្ហានៅក្នុងប្រតិបត្តិការណ៍អាជីវកម្មប្រចាំថ្ងៃរបស់សមាជិក ក្នុងការឆ្ពោះទៅរកភាពរីកចម្រើននិងការអភិវឌ្ឍ។&nbsp;</span></span></p>', '1685984009.jpg', 'About BSEA', 'about_bsea', 'BSEA Information detail', 1, '2018-03-14 11:24:17', '2023-06-27 16:54:17');

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
  `publication_status` tinyint(4) NOT NULL DEFAULT '0',
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `view_count` int(11) NOT NULL DEFAULT '0',
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `post_date`, `post_title`, `post_slug`, `post_details`, `featured_image`, `youtube_video_url`, `publication_status`, `is_featured`, `view_count`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(45, 1, 17, '2023-06-02', 'កិច្ចប្រជុំថ្នាក់ដឹកនាំសមាគមន៍', 'bsea_meeting', '<p>កិច្ចប្រជុំថ្នាក់ដឹកនាំសមាគមន៍ ក្រោមអធិប្បតេយ្យភាពដ៏ខ្ពង់ខ្ពស់របស់ឯកឧត្តម ហេង ស៊ួ</p>', '1685683441.jpeg', '', 1, 0, 43, 'Bsea Meeting', 'bsea_news', 'Bsea Meeting', '2023-06-02 18:24:01', '2023-09-03 20:14:33'),
(46, 65, 17, '2023-06-02', 'BSEA- បានចូលរួមអបអរសាទរ ខួបអនុស្សាវរីយ៍លើកទី ១៣៧ ទិវាពលកម្មអន្តរជាតិ', 'BSEA-CAMBODIA', '<div><div>ថ្ងៃទី ១ ឧសភា ឆ្នាំ ២០២៣ ក្រុមការងារ តំណាងសមាគមកាបូប ស្បែកជើង និង អេឡិចត្រូនិច (BSEA ) បានចូលរួមអបអរសាទរ ខួបអនុស្សាវរីយ៍លើកទី ១៣៧ ទិវាពលកម្មអន្តរជាតិ - ក្រោមប្រធានបទ \"សន្តិភាព ស្ថិរភាព មុខរបរ និង ការងារ \"</div></div>\n\n<div><div>On May 1, 2023, The representative team of Bags, Shoes and Electronics Association (BSEA) has participated in the celebration of the 137th Anniversary of International Labor Day - Under the theme \"Peace, Stability, Employment and Labor\"</div></div>', '1685719778.jpg', NULL, 1, 0, 48, 'BSEA  - បានចូលរួមអបអរសាទរ ខួបអនុស្សាវរីយ៍លើកទី ១៣៧ ទិវាពលកម្មអន្តរជាតិ', 'BSEA, សមាគម កាបូបស្បែកជើង និង អេឡិចត្រូនិច កម្ពុជា, CAMBODIA’S BAGS, SHOES AND ELECTRONICS ASSOCIATION', 'BSEA  - បានចូលរួមអបអរសាទរ ខួបអនុស្សាវរីយ៍លើកទី ១៣៧ ទិវាពលកម្មអន្តរជាតិ', '2023-06-03 04:29:38', '2023-09-05 18:53:33'),
(47, 65, 17, '2023-06-02', 'ជុំនួបប្រជុំជាមួយ សភាពិណិជ្ចកម្មចិន Guong Dong', 'BSEA-GUONGDONG', '<div><div>ថ្ងៃព្រហស្បតិ៍ ទី ៣០ ខែ មីនា ឆ្នាំ ២០២៣</div></div>\n\n<div><div>សមាគម កាបូប ស្បែកជើង និងអេឡិចត្រូនិច កម្ពុជា បានទទួលស្វាគមន៍ សមាជិកសភាពាណិជ្ជកម្មចិន Guangdong ដើម្បីពិភាក្សានិងបង្កើនទំនាក់ទំនងកិច្ចសហប្រតិបត្តិការ ការផ្គូផ្គងអាជីវកម្មរវាងប្រទេសមួយចំនួននៅតំបន់អាស៊ីអាគ្នេយ៍ ដើម្បីយល់ដឹងពីបរិស្ថាននៃការវិនិយោគ និង គោលនយោបាយអនុគ្រោះ រួមជាមួយការចែករំលែកបទពិសោធន៍នៃការវិនិយោគ របស់វិនិយោគិនបរទេស នៅប្រទេសកម្ពុជា។ការពិភាក្សាត្រូវបានបញ្ចប់ដោយ ភាពរលូននិងប្រកបដោយភាពស្និទ្ធស្នាល។ សមាគមក៏បានស្នើសុំដល់សភាពាណិជ្ជកម្មចិន Guangdong ឱ្យជួយ ណែនាំបន្ថែមទៅដល់អ្នកវិនិយោគិនចិនឲ្យមកបណ្ដាក់វិនិយោគនៅក្នុងប្រទេសកម្ពុជាផងដែរ។</div></div>\n\n<div><div>Thursday, March 30, 2023  </div></div>\n\n<div><div>The Cambodias’ Bags, Shoes and Electronics Association welcomed the Guangdong Chinese Chamber of Commerce to discuss and enhance cooperation, business matching between some countries in Southeast Asia, to understand the investment environment and favorable policies, as well as to share experiences of foreign investment in Cambodia.The discussion ended smoothly and cordially. The association also requested the Guangdong Chinese Chamber of Commerce to provide additional guidance to Chinese investors to put more investment in Cambodia.</div></div>\n\n<div><div>2023年03月30日星期四</div><div>柬埔寨箱包、鞋业和电子商会会见广东商会，商议关于加强商贸配对和互动合作，并了解投资环境、优惠政策和分享外国人在柬埔寨投资的经验。商议圆满结束，BSEA恳请广东商会能向更多的中国投资者讲解来柬埔寨王国投资。</div></div>', '1685720448.jpg', '', 1, 0, 55, 'BSEA', 'Cambodias’ Bags, Shoes and Electronics Association', 'Cambodias’ Bags, Shoes and Electronics Association', '2023-06-03 04:40:48', '2023-09-05 19:46:51'),
(48, 65, 17, '2023-08-01', 'កិច្ចប្រជុំជាមួយសកលវិទ្យាល័យប្រ៉ូវាយដេនស៏  PROVIDENCE UNIVERSITY នៃប្រទេសតៃវាន', 'providence', '<p><span style=\"font-family:Tahoma;\">ងៃអង្គារ៏ ទី ០១ ខែ សីហា ឆ្នាំ ២០២៣</span></p>\n\n<p><span style=\"font-family:Tahoma;\">សមាគមការបូប ស្បែកជើង និង អេឡិកត្រូនិក បានជួប្រជុំជាមួយសកលវិទ្យាល័យប្រ៉ូវាយដេនស៏  PROVIDENCE UNIVERSITY នៃប្រទេសតៃវាន និងបានពិភាក្សាអំពីកិច្ចសហប្រតិបត្តការទៅលើ វគ្គបណ្តុះបណ្តាលជំនាញដល់ថ្នាក់ដឹកនាំក្រុមហ៊ុន និង ថ្នាក់ដឹកនាំសហគ្រាស់ក្នុងគោលបំណងបង្កើនធនធានមនុស្សនៅកម្ពុជា។</span></p>\n\n<p>On Tuesday, 01 August 2023</p>\n\n<p>The Cambodia’s Bags, Shoes and Electronic has arranged meeting with PROVIDENCE UNIVERSITY of Taiwan and discussed the cooperation on professional training for company and enterprise leaders in order to increase human resources in Cambodia.</p>', '1690875273.jpg', '', 1, 1, 14, 'BSEA', 'BSEA', 'BSEA', '2023-08-01 20:34:33', '2023-09-03 21:00:17');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `website_title` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_us` text COLLATE utf8mb4_unicode_ci,
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
  `map_iframe` text COLLATE utf8mb4_unicode_ci,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `gallery_meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `website_title`, `logo`, `favicon`, `about_us`, `copyright`, `email`, `phone`, `mobile`, `fax`, `address_line_one`, `address_line_two`, `state`, `city`, `zip`, `country`, `map_iframe`, `facebook`, `twitter`, `google_plus`, `linkedin`, `meta_title`, `meta_keywords`, `meta_description`, `gallery_meta_title`, `gallery_meta_keywords`, `gallery_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'សមាគមន៍កាបូប ស្បែកជើង និងអេឡិចត្រូនិចកម្ពុជា', 'logo.png', 'favicon.png', 'សមាគមកាបូប ស្បែកជើង និងគ្រឿងអេឡិចត្រូនិចកម្ពុជា', 'Copyright 2023 <a href=\"https://www.facebook.com/programmerkonkhmer\" target=\"_blank\">កូនខ្មែរ</a>, All rights reserved.', 'info@bseacambodia.org', '+855 69 668 788', '+855 89 255557', NULL, '#84,#86,#88 st.Betong, Borey The Varina Sen Sok', NULL, 'Krang Thnong, Sen Sok', 'Phnom Penh', '12000', 'Cambodia', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m13!1m8!1m3!1d7817.068309507269!2d104.835173!3d11.585216!3m2!1i1024!2i768!4f13.1!3m2!1m1!2zMTHCsDM1JzA2LjgiTiAxMDTCsDUwJzE0LjUiRQ!5e0!3m2!1sen!2skh!4v1675541209980!5m2!1sen!2skh\" width=\"100%\" height=\"450\" style=\"border:1px;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'https://www.facebook.com/BSEACambo', NULL, NULL, NULL, 'BSEA Cambodia', 'Cambodia Association, Cluster, Coding, Blog', 'Cambodia\'s bags, shoes and electronic association', 'BSEA Cambodia', 'Page, Coding, News, Electronic, Shoes, Boots', 'Bags, Shoes, Electronic', '2018-03-11 10:37:29', '2023-06-14 17:23:49');

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
(1, 'vannakhannah@gmail.com', '2023-06-06 04:56:45', '2023-06-06 04:56:45');

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
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `publication_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `user_id`, `tag_name`, `tag_slug`, `meta_title`, `meta_keywords`, `meta_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(16, 1, 'news', 'hot_news', 'news', 'news', 'news', 1, '2023-06-02 08:49:39', '2023-06-02 08:49:39'),
(17, 1, 'ក្រសួងការងារ', 'mltv_post', 'ក្រសួងការងារ', 'mltv', 'ក្រសួងការងារ និងបណ្តុះបណ្តាលវិជ្ជាជីវៈ', 1, '2023-06-07 19:18:41', '2023-06-07 19:18:41');

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
  `about` text COLLATE utf8mb4_unicode_ci,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activation_status` tinyint(4) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `avatar`, `gender`, `phone`, `address`, `facebook`, `twitter`, `google_plus`, `linkedin`, `about`, `role`, `activation_status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Vannak Dim', 'admin', 'vannakhannah@gmail.com', '$2y$10$MQtrOFAwsFK0T7UVuPwn0us.q1E1TGYz4Ivpgag/LGqUCUbeeOw6i', '1.png', 'm', '098205499', 'Chom Chao, Posenchey, Phnom Penh', 'https://www.facebook.com/jojo.vannak', 'https://twitter.com/mr_ms_nawaz', 'https://plus.google.com/107488120575807747172', 'https://www.linkedin.com/in/mr-ms-nawaz/', 'Code Lover', 'admin', 1, 'NGXA3ag8Y54A2S3bTWphZhAGyG60GetBYp9GvaWJpmGLwDkZ9OvcQZkiK2Sb', '2018-03-06 11:10:00', '2023-06-02 08:41:50'),
(65, 'BSEA', 'BSEA-ADMIN', 'info@bseacambodia.org', '$2y$10$sloNbDgZ6QGq7NoROw8nCu3v/PiuWy1ElKw4KNvoFv81pu7vagHAC', '65.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 1, NULL, '2023-06-02 21:29:04', '2023-06-03 04:33:09'),
(66, 'hannah', 'hannah', 'vannak.dim143@gmail.com', '$2y$10$TH6MIbSoZEJDnBOu19xR.u9YnLA2VrPFJBkSPbRPx8NvFQmk.jw0e', '66.png', 'f', '085851113', 'Phnom Penh', NULL, NULL, NULL, NULL, 'I am be I am.', 'author', 1, NULL, '2023-06-06 05:02:04', '2023-06-06 07:03:19');

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
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `members_user_id_index` (`user_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

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
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

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
