-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 24 يونيو 2022 الساعة 16:11
-- إصدار الخادم: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sinyar-db`
--

-- --------------------------------------------------------

--
-- بنية الجدول `about_us`
--

CREATE TABLE `about_us` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `background_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(2, NULL, 1, 'Category 2', 'category-2', '2022-06-15 18:23:30', '2022-06-15 18:23:30');

-- --------------------------------------------------------

--
-- بنية الجدول `content`
--

CREATE TABLE `content` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `content`
--

INSERT INTO `content` (`id`, `title`, `subtitle`, `description`, `img`, `created_at`, `updated_at`, `page_id`, `section`) VALUES
(1, 'hello', 'hello', 'dfadf', 'fdafdf', NULL, NULL, NULL, 'fwefwef');

-- --------------------------------------------------------

--
-- بنية الجدول `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 9, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 9, 'author_id', 'text', 'Author Id', 1, 0, 0, 0, 0, 0, '{}', 2),
(58, 9, 'category_id', 'text', 'Category Id', 0, 0, 0, 0, 0, 0, '{}', 3),
(59, 9, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 4),
(60, 9, 'seo_title', 'text', 'Seo Title', 0, 1, 1, 1, 1, 1, '{}', 5),
(61, 9, 'excerpt', 'text', 'Excerpt', 0, 1, 1, 1, 1, 1, '{}', 6),
(62, 9, 'body', 'rich_text_box', 'Body', 1, 1, 1, 1, 1, 1, '{}', 7),
(63, 9, 'image', 'text', 'image', 0, 1, 1, 1, 1, 1, '{}', 8),
(64, 9, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 9),
(65, 9, 'meta_description', 'text', 'Meta Description', 0, 1, 1, 1, 1, 1, '{}', 10),
(66, 9, 'meta_keywords', 'text', 'Meta Keywords', 0, 1, 1, 1, 1, 1, '{}', 11),
(67, 9, 'featured', 'text', 'Featured', 1, 0, 0, 0, 0, 0, '{}', 12),
(68, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 13),
(69, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(70, 9, 'description', 'text', 'Description', 1, 0, 0, 0, 0, 0, '{}', 15),
(71, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(72, 13, 'logo', 'text', 'Logo', 1, 1, 1, 1, 1, 1, '{}', 2),
(73, 13, 'description', 'text', 'Description', 1, 1, 1, 1, 1, 1, '{}', 3),
(74, 13, 'address', 'text', 'Address', 1, 1, 1, 1, 1, 1, '{}', 4),
(75, 13, 'phone_number', 'text', 'Phone Number', 1, 1, 1, 1, 1, 1, '{}', 5),
(76, 13, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 6),
(77, 13, 'facebook_url', 'text', 'Facebook Url', 0, 1, 1, 1, 1, 1, '{}', 7),
(78, 13, 'instagram_url', 'text', 'Instagram Url', 0, 1, 1, 1, 1, 1, '{}', 8),
(79, 13, 'tiwtter_url', 'text', 'Tiwtter Url', 0, 1, 1, 1, 1, 1, '{}', 9),
(80, 13, 'youtube_url', 'text', 'Youtube Url', 0, 1, 1, 1, 1, 1, '{}', 10),
(81, 13, 'copy_right_img', 'text', 'Copy Right Img', 0, 1, 1, 1, 1, 1, '{}', 11),
(82, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 12),
(83, 13, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, '{}', 13),
(84, 13, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 14),
(85, 13, 'map_url', 'text', 'Map Url', 1, 1, 1, 1, 1, 1, '{}', 15),
(86, 13, 'fax', 'text', 'Fax', 0, 1, 1, 1, 1, 1, '{}', 16),
(87, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(88, 18, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(89, 18, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(90, 18, 'button_title', 'text', 'Button Title', 0, 1, 1, 1, 1, 1, '{}', 4),
(91, 18, 'img', 'text', 'Img', 0, 1, 1, 1, 1, 1, '{}', 5),
(92, 18, 'section', 'select_dropdown', 'Section', 0, 1, 1, 1, 1, 1, '{\"checked\":true,\"options\":{\"hero_section\":\"hero_section\",\"who_we_are\":\"who_we_are\",\"projects\":\"projects\",\"what_clients_say\":\"what_clients_say\",\"our_clients\":\"our_clients\"}}', 6),
(93, 18, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 0, 0, 0, '{}', 7),
(94, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 8),
(95, 18, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, '{}', 9),
(96, 9, 'section', 'select_dropdown', 'Section', 1, 1, 1, 1, 1, 1, '{\"checked\":true,\"options\":{\"about_us\":\"about_us\",\"our_story\":\"our_story\",\"vision\":\"vision\",\"mission\":\"mission\"}}', 16),
(97, 21, 'id', 'text', 'Id', 1, 1, 1, 1, 1, 1, '{}', 1),
(98, 21, 'author_id', 'text', 'Author Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(99, 21, 'category_id', 'text', 'Category Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(100, 21, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 4),
(101, 21, 'seo_title', 'text', 'Seo Title', 0, 1, 1, 1, 1, 1, '{}', 5),
(102, 21, 'excerpt', 'text', 'Excerpt', 0, 1, 1, 1, 1, 1, '{}', 6),
(103, 21, 'body', 'text', 'Body', 1, 1, 1, 1, 1, 1, '{}', 7),
(104, 21, 'image', 'text', 'Image', 0, 1, 1, 1, 1, 1, '{}', 8),
(105, 21, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 9),
(106, 21, 'meta_description', 'text', 'Meta Description', 0, 1, 1, 1, 1, 1, '{}', 10),
(107, 21, 'meta_keywords', 'text', 'Meta Keywords', 0, 1, 1, 1, 1, 1, '{}', 11),
(108, 21, 'featured', 'text', 'Featured', 1, 1, 1, 1, 1, 1, '{}', 12),
(109, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 13),
(110, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(111, 21, 'description', 'text', 'Description', 1, 1, 1, 1, 1, 1, '{}', 15),
(112, 21, 'section', 'select_dropdown', 'Section', 1, 1, 1, 1, 1, 1, '{\"checked\":true,\"options\":{\"about_us\":\"about_us\",\"our_story\":\"our_story\",\"mission\":\"mission\",\"vision\":\"vision\"}}', 16),
(113, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(114, 22, 'clients_count', 'text', 'Clients Count', 0, 1, 1, 1, 1, 1, '{}', 2),
(115, 22, 'implemented_projects_count', 'text', 'Implemented Projects Count', 0, 1, 1, 1, 1, 1, '{}', 3),
(116, 22, 'years_of_experience_count', 'text', 'Years Of Experience Count', 0, 1, 1, 1, 1, 1, '{}', 4),
(117, 22, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 5),
(118, 22, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 0, 0, 0, '{}', 6),
(120, 26, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(121, 26, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(122, 26, 'sub_title', 'text', 'Sub Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(123, 26, 'img', 'text', 'Img', 0, 1, 1, 1, 1, 1, '{}', 4),
(124, 26, 'img2', 'text', 'Img2', 0, 1, 1, 1, 1, 1, '{}', 5),
(125, 26, 'img3', 'text', 'Img3', 0, 1, 1, 1, 1, 1, '{}', 6),
(126, 26, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 7),
(127, 26, 'section', 'select_dropdown', 'Section', 0, 1, 1, 1, 1, 1, '{\"checked\":\"true\",\"options\":{\"hero_section\":\"hero_section\",\"about_us\":\"about_us\",\"slider\":\"slider\",\"vision\":\"vision\",\"mission\":\"mission\",\"offer\":\"offer\"}}', 8),
(128, 26, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(129, 26, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(130, 26, 'section_belongsto_home_page_section_relationship', 'relationship', 'home_page_sections', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\HomePageSection\",\"table\":\"home_page_sections\",\"type\":\"belongsTo\",\"column\":\"page_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"about_us\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(132, 26, 'page_id', 'select_dropdown', 'Page Id', 0, 1, 1, 1, 1, 1, '{}', 11),
(133, 26, 'page_title', 'select_dropdown', 'Page Title', 0, 1, 1, 1, 1, 1, '{\"checked\":\"true\",\"options\":{\"home\":\"home\",\"about\":\"about\",\"services\":\"services\",\"projects\":\"projects\"}}', 12),
(134, 22, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 7),
(135, 22, 'section', 'text', 'Section', 0, 1, 1, 1, 1, 1, '{}', 8);

-- --------------------------------------------------------

--
-- بنية الجدول `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2022-06-15 18:23:29', '2022-06-15 18:23:29'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-06-15 18:23:29', '2022-06-15 18:23:29'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-06-15 18:23:29', '2022-06-15 18:23:29'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(9, 'home_sections', 'home-sections', 'Home Section', 'Home Sections', 'voyager-file-text', 'App\\Models\\HomeSection', NULL, NULL, 'home sections', 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-06-15 19:05:54', '2022-06-22 17:16:52'),
(11, 'footer_section', 'footer-section', 'Footer Section', 'Footer Section', NULL, 'App\\Models\\FooterSection', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-06-18 16:05:38', '2022-06-18 16:10:59'),
(13, 'footer_sections', 'footer-sections', 'Footer Section', 'Footer Sections', 'voyager-browser', 'App\\Models\\FooterSection', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-06-18 16:13:37', '2022-06-18 16:53:38'),
(15, 'home_projects', 'home-projects', 'Home Project', 'Projects Home', 'voyager-file-text', 'App\\Models\\ProjectsHome', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-06-22 11:54:52', '2022-06-22 12:02:08'),
(16, 'projects_home', 'projets-home', 'Projects Home', 'Projects Homes', 'voyager-file-text', 'App\\Models\\ProjectsHome', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-06-22 15:23:44', '2022-06-22 15:27:54'),
(18, 'home_page_projects', 'home-page-projects', 'Home Page Project', 'Home Page Projects', NULL, 'App\\Models\\HomePageProject', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-06-22 15:32:15', '2022-06-23 20:17:28'),
(19, 'home_section', 'home-section', 'Home Section', 'Home Sections', 'voyager-file-text', 'App\\Models\\HomeSection', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-06-22 18:03:15', '2022-06-22 18:03:15'),
(21, 'main_home_sections', 'main-home-sections', 'Main Home Section', 'Main Home Sections', 'voyager-file-text', 'App\\Models\\MainHomeSection', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-06-22 18:10:18', '2022-06-22 18:18:27'),
(22, 'home_page_sections', 'home-page-sections', 'Home Page Section', 'Home Page Sections', 'voyager-file-text', 'App\\Models\\HomePageSection', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-06-23 18:00:01', '2022-06-23 21:59:50'),
(26, 'sections', 'sections', 'Section', 'Sections', 'voyager-file-text', 'App\\Models\\Section', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-06-23 20:39:07', '2022-06-23 21:57:49');

-- --------------------------------------------------------

--
-- بنية الجدول `failed_jobs`
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
-- بنية الجدول `footer_sections`
--

CREATE TABLE `footer_sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tiwtter_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copy_right_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `map_url` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `footer_sections`
--

INSERT INTO `footer_sections` (`id`, `logo`, `description`, `address`, `phone_number`, `email`, `facebook_url`, `instagram_url`, `tiwtter_url`, `youtube_url`, `copy_right_img`, `created_at`, `updated_at`, `deleted_at`, `map_url`, `fax`) VALUES
(1, 'http://localhost:8000/storage/logo/Sinyarlogo05.png', 'Lorem ipsum dolor sit amet consectetur adipisic Excepturi cupiditate illum accusantium adipisci, tium reiciendis', 'Al Khobar, Shamaliya Business Center', '+96650945768892147890', 'info@syniar.com', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.twitter.com/', 'https://www.youtube.com/', 'http://localhost:8000/storage/logo/copyright2022-02.png', '2022-06-18 16:26:00', '2022-06-20 18:39:49', NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d387190.2799012646!2d-73.69949071459597!3d40.69767006593221!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2z2YbZitmI2YrZiNix2YPYjCDYp9mE2YjZhNin2YrYp9iqINin2YTZhdiq2K3Yr9ip!5e0!3m2!1sar!2s!4v1654869916185!5m2!1sar!2s', 2147890);

-- --------------------------------------------------------

--
-- بنية الجدول `home_page`
--

CREATE TABLE `home_page` (
  `id` int(10) UNSIGNED NOT NULL,
  `about_us_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_us_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_us_background_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `our_story_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `our_story_question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `our_story_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vision_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vision_dexription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vision_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mission_titile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mission_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mission_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `leave_us_message_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `home_page_projects`
--

CREATE TABLE `home_page_projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `home_page_projects`
--

INSERT INTO `home_page_projects` (`id`, `title`, `description`, `button_title`, `img`, `section`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Creating Spaces For Living', 'We believe in implementing a collaborative approach taking the client on journey from start to finish', 'Learn More', 'http://localhost:8000/storage/projects/F33.jpg', 'hero_section', NULL, '2022-06-22 15:40:29', '2022-06-22 15:40:29');

-- --------------------------------------------------------

--
-- بنية الجدول `home_page_sections`
--

CREATE TABLE `home_page_sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `clients_count` int(11) DEFAULT NULL,
  `implemented_projects_count` int(11) DEFAULT NULL,
  `years_of_experience_count` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `home_page_sections`
--

INSERT INTO `home_page_sections` (`id`, `clients_count`, `implemented_projects_count`, `years_of_experience_count`, `created_at`, `updated_at`, `title`, `section`) VALUES
(1, 390, 226, 10, '2022-06-23 20:47:05', '2022-06-24 10:35:49', 'home', NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `main_home_sections`
--

CREATE TABLE `main_home_sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `main_home_sections`
--

INSERT INTO `main_home_sections` (`id`, `author_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `created_at`, `updated_at`, `description`, `section`) VALUES
(1, 0, 'About Siynar', NULL, 'We aim to be successful leading interior fit-out business that provide solutions for quality life', '<p>We aim to be successful leading interior fit-out<br />business that provide solutions for quality life</p>', 'http://localhost:8000/storage/projects/5.jpg', 'lorem-ipsum-post', '2022-06-15 15:23:00', '2022-06-22 14:17:42', 'We aim to be successful leading interior fit-out business that provide solutions for quality life', 'about_us'),
(2, 0, 'Our Story', 'Who are we ?', 'This is the excerpt for the sample Post', '<p>Sinyar is Saudi leading company in the field of interior design, engineering, and creative solutions.<br />We work with high standards of quality and aim to meet our client\'s needs in design &amp; execution of resdintail, commercial, and industrial projects since 2008 to raise the quality of life.&nbsp;&nbsp;</p>', 'http://localhost:8000/storage/projects/14.JPEG', 'my-sample-post', '2022-06-15 15:23:00', '2022-06-22 18:19:07', 'hello', 'our_story'),
(3, 0, 'Vision', NULL, 'This is the excerpt for the latest post', '<p>We provide creative designs and execution of project to our clients, with highest level of quality.&nbsp;</p>', 'http://localhost:8000/storage/projects/44.JPEG', 'latest-post', '2022-06-15 15:23:00', '2022-06-22 18:14:25', 'hello', 'vision'),
(4, 0, 'Mission', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Provide engineering and creative solutions in the field of interior design for the well-being of the client.</p>', 'http://localhost:8000/storage/projects/1111.JPEG', 'yarr-post', '2022-06-15 15:23:00', '2022-06-22 14:18:18', '', 'mission');

-- --------------------------------------------------------

--
-- بنية الجدول `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-06-15 18:23:29', '2022-06-15 18:23:29');

-- --------------------------------------------------------

--
-- بنية الجدول `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2022-06-15 18:23:29', '2022-06-15 18:23:29', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 8, '2022-06-15 18:23:29', '2022-06-22 18:12:58', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2022-06-15 18:23:29', '2022-06-15 18:23:29', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2022-06-15 18:23:29', '2022-06-15 18:23:29', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 11, '2022-06-15 18:23:29', '2022-06-22 18:12:58', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2022-06-15 18:23:29', '2022-06-15 19:08:38', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2022-06-15 18:23:29', '2022-06-15 19:08:38', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2022-06-15 18:23:29', '2022-06-15 19:08:38', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2022-06-15 18:23:29', '2022-06-15 19:08:38', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 12, '2022-06-15 18:23:29', '2022-06-22 18:12:58', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 10, '2022-06-15 18:23:30', '2022-06-22 18:12:58', 'voyager.categories.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 9, '2022-06-15 18:23:30', '2022-06-22 18:12:58', 'voyager.pages.index', NULL),
(17, 1, 'Footer Sections', '', '_self', 'voyager-browser', '#000000', NULL, 6, '2022-06-18 16:13:37', '2022-06-22 18:12:58', 'voyager.footer-sections.index', 'null'),
(25, 1, 'Home Page Projects', '', '_self', 'voyager-file-text', '#000000', NULL, 7, '2022-06-22 15:32:15', '2022-06-22 18:12:58', 'voyager.home-page-projects.index', 'null'),
(28, 1, 'About-us Sections', '', '_self', 'voyager-file-text', '#000000', NULL, 4, '2022-06-22 18:10:18', '2022-06-23 17:34:22', 'voyager.main-home-sections.index', 'null'),
(29, 1, 'Home Page Sections', '', '_self', 'voyager-file-text', NULL, NULL, 13, '2022-06-23 18:00:01', '2022-06-23 18:00:01', 'voyager.home-page-sections.index', NULL),
(33, 1, 'Sections', '', '_self', 'voyager-file-text', NULL, NULL, 15, '2022-06-23 20:39:07', '2022-06-23 20:39:07', 'voyager.sections.index', NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- بنية الجدول `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2022-06-15 18:23:30', '2022-06-15 18:23:30');

-- --------------------------------------------------------

--
-- بنية الجدول `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-06-15 18:23:29', '2022-06-15 18:23:29'),
(2, 'browse_bread', NULL, '2022-06-15 18:23:29', '2022-06-15 18:23:29'),
(3, 'browse_database', NULL, '2022-06-15 18:23:29', '2022-06-15 18:23:29'),
(4, 'browse_media', NULL, '2022-06-15 18:23:29', '2022-06-15 18:23:29'),
(5, 'browse_compass', NULL, '2022-06-15 18:23:29', '2022-06-15 18:23:29'),
(6, 'browse_menus', 'menus', '2022-06-15 18:23:29', '2022-06-15 18:23:29'),
(7, 'read_menus', 'menus', '2022-06-15 18:23:29', '2022-06-15 18:23:29'),
(8, 'edit_menus', 'menus', '2022-06-15 18:23:29', '2022-06-15 18:23:29'),
(9, 'add_menus', 'menus', '2022-06-15 18:23:29', '2022-06-15 18:23:29'),
(10, 'delete_menus', 'menus', '2022-06-15 18:23:29', '2022-06-15 18:23:29'),
(11, 'browse_roles', 'roles', '2022-06-15 18:23:29', '2022-06-15 18:23:29'),
(12, 'read_roles', 'roles', '2022-06-15 18:23:29', '2022-06-15 18:23:29'),
(13, 'edit_roles', 'roles', '2022-06-15 18:23:29', '2022-06-15 18:23:29'),
(14, 'add_roles', 'roles', '2022-06-15 18:23:29', '2022-06-15 18:23:29'),
(15, 'delete_roles', 'roles', '2022-06-15 18:23:29', '2022-06-15 18:23:29'),
(16, 'browse_users', 'users', '2022-06-15 18:23:29', '2022-06-15 18:23:29'),
(17, 'read_users', 'users', '2022-06-15 18:23:29', '2022-06-15 18:23:29'),
(18, 'edit_users', 'users', '2022-06-15 18:23:29', '2022-06-15 18:23:29'),
(19, 'add_users', 'users', '2022-06-15 18:23:29', '2022-06-15 18:23:29'),
(20, 'delete_users', 'users', '2022-06-15 18:23:29', '2022-06-15 18:23:29'),
(21, 'browse_settings', 'settings', '2022-06-15 18:23:29', '2022-06-15 18:23:29'),
(22, 'read_settings', 'settings', '2022-06-15 18:23:29', '2022-06-15 18:23:29'),
(23, 'edit_settings', 'settings', '2022-06-15 18:23:29', '2022-06-15 18:23:29'),
(24, 'add_settings', 'settings', '2022-06-15 18:23:29', '2022-06-15 18:23:29'),
(25, 'delete_settings', 'settings', '2022-06-15 18:23:29', '2022-06-15 18:23:29'),
(26, 'browse_categories', 'categories', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(27, 'read_categories', 'categories', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(28, 'edit_categories', 'categories', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(29, 'add_categories', 'categories', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(30, 'delete_categories', 'categories', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(31, 'browse_posts', 'posts', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(32, 'read_posts', 'posts', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(33, 'edit_posts', 'posts', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(34, 'add_posts', 'posts', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(35, 'delete_posts', 'posts', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(36, 'browse_pages', 'pages', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(37, 'read_pages', 'pages', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(38, 'edit_pages', 'pages', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(39, 'add_pages', 'pages', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(40, 'delete_pages', 'pages', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(41, 'browse_home_sections', 'home_sections', '2022-06-15 19:05:54', '2022-06-15 19:05:54'),
(42, 'read_home_sections', 'home_sections', '2022-06-15 19:05:54', '2022-06-15 19:05:54'),
(43, 'edit_home_sections', 'home_sections', '2022-06-15 19:05:54', '2022-06-15 19:05:54'),
(44, 'add_home_sections', 'home_sections', '2022-06-15 19:05:54', '2022-06-15 19:05:54'),
(45, 'delete_home_sections', 'home_sections', '2022-06-15 19:05:54', '2022-06-15 19:05:54'),
(46, 'browse_footer_section', 'footer_section', '2022-06-18 16:05:38', '2022-06-18 16:05:38'),
(47, 'read_footer_section', 'footer_section', '2022-06-18 16:05:38', '2022-06-18 16:05:38'),
(48, 'edit_footer_section', 'footer_section', '2022-06-18 16:05:38', '2022-06-18 16:05:38'),
(49, 'add_footer_section', 'footer_section', '2022-06-18 16:05:38', '2022-06-18 16:05:38'),
(50, 'delete_footer_section', 'footer_section', '2022-06-18 16:05:38', '2022-06-18 16:05:38'),
(51, 'browse_footer_sections', 'footer_sections', '2022-06-18 16:13:37', '2022-06-18 16:13:37'),
(52, 'read_footer_sections', 'footer_sections', '2022-06-18 16:13:37', '2022-06-18 16:13:37'),
(53, 'edit_footer_sections', 'footer_sections', '2022-06-18 16:13:37', '2022-06-18 16:13:37'),
(54, 'add_footer_sections', 'footer_sections', '2022-06-18 16:13:37', '2022-06-18 16:13:37'),
(55, 'delete_footer_sections', 'footer_sections', '2022-06-18 16:13:37', '2022-06-18 16:13:37'),
(61, 'browse_home_projects', 'home_projects', '2022-06-22 11:54:52', '2022-06-22 11:54:52'),
(62, 'read_home_projects', 'home_projects', '2022-06-22 11:54:52', '2022-06-22 11:54:52'),
(63, 'edit_home_projects', 'home_projects', '2022-06-22 11:54:52', '2022-06-22 11:54:52'),
(64, 'add_home_projects', 'home_projects', '2022-06-22 11:54:52', '2022-06-22 11:54:52'),
(65, 'delete_home_projects', 'home_projects', '2022-06-22 11:54:52', '2022-06-22 11:54:52'),
(66, 'browse_projects_home', 'projects_home', '2022-06-22 15:23:44', '2022-06-22 15:23:44'),
(67, 'read_projects_home', 'projects_home', '2022-06-22 15:23:44', '2022-06-22 15:23:44'),
(68, 'edit_projects_home', 'projects_home', '2022-06-22 15:23:44', '2022-06-22 15:23:44'),
(69, 'add_projects_home', 'projects_home', '2022-06-22 15:23:44', '2022-06-22 15:23:44'),
(70, 'delete_projects_home', 'projects_home', '2022-06-22 15:23:44', '2022-06-22 15:23:44'),
(71, 'browse_home_page_projects', 'home_page_projects', '2022-06-22 15:32:15', '2022-06-22 15:32:15'),
(72, 'read_home_page_projects', 'home_page_projects', '2022-06-22 15:32:15', '2022-06-22 15:32:15'),
(73, 'edit_home_page_projects', 'home_page_projects', '2022-06-22 15:32:15', '2022-06-22 15:32:15'),
(74, 'add_home_page_projects', 'home_page_projects', '2022-06-22 15:32:15', '2022-06-22 15:32:15'),
(75, 'delete_home_page_projects', 'home_page_projects', '2022-06-22 15:32:15', '2022-06-22 15:32:15'),
(76, 'browse_home_section', 'home_section', '2022-06-22 18:03:15', '2022-06-22 18:03:15'),
(77, 'read_home_section', 'home_section', '2022-06-22 18:03:15', '2022-06-22 18:03:15'),
(78, 'edit_home_section', 'home_section', '2022-06-22 18:03:15', '2022-06-22 18:03:15'),
(79, 'add_home_section', 'home_section', '2022-06-22 18:03:15', '2022-06-22 18:03:15'),
(80, 'delete_home_section', 'home_section', '2022-06-22 18:03:15', '2022-06-22 18:03:15'),
(81, 'browse_main_home_sections', 'main_home_sections', '2022-06-22 18:10:18', '2022-06-22 18:10:18'),
(82, 'read_main_home_sections', 'main_home_sections', '2022-06-22 18:10:18', '2022-06-22 18:10:18'),
(83, 'edit_main_home_sections', 'main_home_sections', '2022-06-22 18:10:18', '2022-06-22 18:10:18'),
(84, 'add_main_home_sections', 'main_home_sections', '2022-06-22 18:10:18', '2022-06-22 18:10:18'),
(85, 'delete_main_home_sections', 'main_home_sections', '2022-06-22 18:10:18', '2022-06-22 18:10:18'),
(86, 'browse_home_page_sections', 'home_page_sections', '2022-06-23 18:00:01', '2022-06-23 18:00:01'),
(87, 'read_home_page_sections', 'home_page_sections', '2022-06-23 18:00:01', '2022-06-23 18:00:01'),
(88, 'edit_home_page_sections', 'home_page_sections', '2022-06-23 18:00:01', '2022-06-23 18:00:01'),
(89, 'add_home_page_sections', 'home_page_sections', '2022-06-23 18:00:01', '2022-06-23 18:00:01'),
(90, 'delete_home_page_sections', 'home_page_sections', '2022-06-23 18:00:01', '2022-06-23 18:00:01'),
(106, 'browse_sections', 'sections', '2022-06-23 20:39:07', '2022-06-23 20:39:07'),
(107, 'read_sections', 'sections', '2022-06-23 20:39:07', '2022-06-23 20:39:07'),
(108, 'edit_sections', 'sections', '2022-06-23 20:39:07', '2022-06-23 20:39:07'),
(109, 'add_sections', 'sections', '2022-06-23 20:39:07', '2022-06-23 20:39:07'),
(110, 'delete_sections', 'sections', '2022-06-23 20:39:07', '2022-06-23 20:39:07');

-- --------------------------------------------------------

--
-- بنية الجدول `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(2, 3),
(3, 1),
(3, 3),
(4, 1),
(4, 3),
(5, 1),
(5, 3),
(6, 1),
(6, 3),
(7, 1),
(7, 3),
(8, 1),
(8, 4),
(9, 1),
(10, 1),
(11, 1),
(11, 3),
(12, 1),
(12, 3),
(13, 1),
(13, 4),
(14, 1),
(15, 1),
(16, 1),
(16, 3),
(17, 1),
(17, 3),
(18, 1),
(18, 4),
(19, 1),
(20, 1),
(21, 1),
(21, 3),
(22, 1),
(22, 3),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(26, 3),
(27, 1),
(27, 3),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(31, 3),
(32, 1),
(32, 3),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(41, 3),
(42, 1),
(42, 3),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(51, 3),
(52, 1),
(52, 3),
(53, 1),
(54, 1),
(55, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1);

-- --------------------------------------------------------

--
-- بنية الجدول `personal_access_tokens`
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
-- بنية الجدول `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-06-15 18:23:29', '2022-06-15 18:23:29'),
(2, 'user', 'Normal User', '2022-06-15 18:23:29', '2022-06-15 18:23:29'),
(3, 'read-roles', 'browsing', '2022-06-18 18:54:18', '2022-06-18 18:54:18'),
(4, 'editing', 'editing', '2022-06-19 10:34:15', '2022-06-19 10:34:15');

-- --------------------------------------------------------

--
-- بنية الجدول `sections`
--

CREATE TABLE `sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `sections`
--

INSERT INTO `sections` (`id`, `title`, `sub_title`, `img`, `img2`, `img3`, `description`, `section`, `created_at`, `updated_at`, `page_id`, `page_title`) VALUES
(1, 'Creating Spaces', 'Learn More', 'http://localhost:8000/storage/landing_page/landing-img.jpg', 'http://localhost:8000/storage/landing_page/IMG-7549.jpg', 'http://localhost:8000/storage/landing_page/FENCE%20DESIGN.jpg', 'We believe in implementing a collaborative approach taking the client on journey from start to finish', 'hero_section', '2022-06-23 20:51:00', '2022-06-24 10:26:49', 1, 'home'),
(2, 'Who we are', NULL, 'http://localhost:8000/storage/landing_page/8.jpg', NULL, NULL, 'We believe in implementing a collaborative approach taking the client on journey from start to finish. The aim is to help businesses growing by offering innovative ideas and impeccable results through our full turnkey interior fit-out solutions.', 'about_us', '2022-06-23 21:44:47', '2022-06-23 21:44:47', 1, 'home'),
(3, 'projects', NULL, NULL, NULL, NULL, 'Explore All the projects done by us and find what you like.', 'hero_section', '2022-06-23 21:55:10', '2022-06-23 21:55:10', NULL, 'home'),
(4, 'projects', NULL, 'http://localhost:8000/storage/sliders/F22.jpg', 'http://localhost:8000/storage/landing_page/8.jpg', 'http://localhost:8000/storage/sliders/4.jpg', 'Explore All the projects done by us and find what you like. Our team will help you find your dream apartment.', 'offer', '2022-06-23 21:56:00', '2022-06-23 22:12:30', 1, 'home');

-- --------------------------------------------------------

--
-- بنية الجدول `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\June2022\\YSVBmWyXPiUalb4TCBap.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Dashboard', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- بنية الجدول `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2022-06-15 18:23:30', '2022-06-15 18:23:30'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2022-06-15 18:23:30', '2022-06-15 18:23:30');

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users\\June2022\\9W5htUPc0598NmuUH40F.jpg', NULL, '$2y$10$RxIxY.HqdNusnkZWi3k5iuUjMGMUsNraY22yZbihhL233EUXgMG6a', '2SkC9hDCjmo8vKJpyQisWLfrCWCzvfU45js4AmD4jHgGAPfacS9B1Nid6WTC', '{\"locale\":\"en\"}', '2022-06-15 18:23:30', '2022-06-18 18:38:02'),
(2, 2, 'hadi', 'hadi@gmail.com', 'users/default.png', NULL, '$2y$10$DRmoJvILQXn4nvNjTq7yKu1fot49GaeF9rwKB4636RMSpgN.sa5WW', NULL, '{\"locale\":\"ar\"}', '2022-06-15 20:59:03', '2022-06-15 20:59:03'),
(4, 3, 'bood', 'abood@gmail.com', 'users/default.png', NULL, '$2y$10$W6nzZAI3iF962tWv5U0mF.eFi6N.XQAI2a6Wc9/FgdIOm6zVc9vUK', NULL, '{\"locale\":\"en\"}', '2022-06-18 18:54:52', '2022-06-18 18:54:52'),
(5, 2, 'ali', 'abdulrahmanalsuhiabi2017@gmail.com', 'users/default.png', NULL, '$2y$10$udYXw3qVg8pCHwvABc4FJe8wOTJOYYZmcirhz/vkBl9jhIOmE5yTy', NULL, '{\"locale\":\"en\"}', '2022-06-18 18:58:17', '2022-06-18 18:58:17'),
(6, 4, 'user', 'user@gmail.com', 'users\\June2022\\ivQVgHiBkdyDkC6DiP3L.jpg', NULL, '$2y$10$PSq4eVOLN9w8/7mkKU6AXeOyPsQUIiXdGLPiNFpwRsUVtBKOE82K.', NULL, '{\"locale\":\"en\"}', '2022-06-19 10:35:21', '2022-06-19 10:36:54');

-- --------------------------------------------------------

--
-- بنية الجدول `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `footer_sections`
--
ALTER TABLE `footer_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_page`
--
ALTER TABLE `home_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_page_projects`
--
ALTER TABLE `home_page_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_page_sections`
--
ALTER TABLE `home_page_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

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
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

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
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footer_sections`
--
ALTER TABLE `footer_sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_page`
--
ALTER TABLE `home_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_page_projects`
--
ALTER TABLE `home_page_projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_page_sections`
--
ALTER TABLE `home_page_sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- قيود الجداول المحفوظة
--

--
-- القيود للجدول `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- القيود للجدول `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- القيود للجدول `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- القيود للجدول `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- القيود للجدول `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- القيود للجدول `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
