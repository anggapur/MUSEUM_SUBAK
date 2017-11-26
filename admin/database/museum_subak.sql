-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 26, 2017 at 10:29 PM
-- Server version: 10.0.31-MariaDB-0ubuntu0.16.04.2
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `museum_subak`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_topiks`
--

CREATE TABLE `detail_topiks` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_topik` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `media` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_media` enum('P','V') COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_topiks`
--

INSERT INTO `detail_topiks` (`id`, `id_topik`, `description`, `media`, `kategori_media`, `order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '4', 'Detail 1 Maknyos', '1511357197bg1-sm.jpg', 'P', '2', '2017-11-22 05:26:37', '2017-11-24 05:12:02', NULL),
(2, '4', 'Bg 3', '1511357205bg2-sm.jpg', 'P', '0', '2017-11-22 05:26:45', '2017-11-22 05:27:59', '2017-11-22 05:27:59'),
(3, '4', 'Bg 5', '1511357211bg5-sm.jpg', 'P', '1', '2017-11-22 05:26:51', '2017-11-24 05:12:03', NULL),
(4, '4', 'Detail 2', '1511357355bg2-sm.jpg', 'P', '1', '2017-11-22 05:29:15', '2017-11-22 05:29:27', '2017-11-22 05:29:27'),
(5, '5', 'Setail 1', '1511483310bg1-sm.jpg', 'P', '0', '2017-11-23 16:28:30', '2017-11-23 16:28:30', NULL),
(6, '4', 'Detail ke tiga nich', '1511526544vidio.mp4', 'V', '0', '2017-11-24 04:29:04', '2017-11-24 05:12:03', NULL),
(7, '13', 'Detail 1', '1511700642bg1-sm.jpg', 'P', '0', '2017-11-26 04:50:42', '2017-11-26 04:50:42', NULL),
(8, '13', 'Detail 2', '1511700648bg2-sm.jpg', 'P', '1', '2017-11-26 04:50:48', '2017-11-26 04:50:48', NULL),
(9, '13', 'Detail 3', '1511700661bg4-sm.jpg', 'P', '2', '2017-11-26 04:51:01', '2017-11-26 04:51:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_photos`
--

CREATE TABLE `gallery_photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_topik` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kategori` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_photos`
--

INSERT INTO `gallery_photos` (`id`, `id_topik`, `id_kategori`, `nama`, `source`, `description`, `order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', '1', 'Photo 1', '25112017020115bg1-sm.jpg', 'Photo 1', '0', '2017-11-24 18:01:15', '2017-11-24 18:01:15', NULL),
(2, '2', '1', 'Photo 2', '25112017020126bg2-sm.jpg', 'Photo 2', '1', '2017-11-24 18:01:26', '2017-11-24 19:06:05', NULL),
(3, '1', '1', 'Photo 3', '25112017020141bg4-sm.jpg', 'Photo 3', '2', '2017-11-24 18:01:41', '2017-11-24 18:01:41', NULL),
(4, '1', '2', 'Photo a', '25112017020209bg5-sm.jpg', 'photo a', '0', '2017-11-24 18:02:09', '2017-11-24 18:02:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_videos`
--

CREATE TABLE `gallery_videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_topik` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kategori` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_videos`
--

INSERT INTO `gallery_videos` (`id`, `id_topik`, `id_kategori`, `nama`, `source`, `description`, `order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', '1', 'Video 1', '25112017031009vidio.mp4', 'Video', '0', '2017-11-24 19:10:09', '2017-11-24 19:10:09', NULL),
(2, '1', '1', 'Vid 2', '25112017065404vidio.mp4', 'Vid 2', '1', '2017-11-24 22:54:04', '2017-11-24 22:54:04', NULL),
(3, '1', '1', 'Vid 3', '25112017065609vidio.mp4', 'Vid 3', '2', '2017-11-24 22:56:09', '2017-11-24 22:56:09', NULL),
(4, '1', '1', 'Vid 4', '25112017065618vidio.mp4', 'Vid 4', '3', '2017-11-24 22:56:18', '2017-11-24 22:56:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Kategori 1', '2017-11-21 17:29:49', '2017-11-21 17:29:49', NULL),
(2, 'Kategori 2', '2017-11-21 17:29:56', '2017-11-21 17:29:56', NULL),
(3, 'Kategori 3', '2017-11-24 18:02:42', '2017-11-24 18:02:42', NULL),
(4, 'Kategori 4', '2017-11-25 23:38:06', '2017-11-25 23:38:06', NULL);

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
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2017_11_18_055136_create_topiks_table', 1),
(12, '2017_11_18_055145_create_detail_topiks_table', 1),
(13, '2017_11_18_055202_create_kategoris_table', 1),
(14, '2017_11_18_055224_create_gallery_photos_table', 1),
(15, '2017_11_18_055236_create_gallery_videos_table', 1),
(16, '2017_11_21_122011_ubah_table_gallery', 1),
(17, '2017_11_22_020249_ubahTabelTopik', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `topiks`
--

CREATE TABLE `topiks` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `background` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_parent` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topiks`
--

INSERT INTO `topiks` (`id`, `nama`, `background`, `icon`, `id_parent`, `order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Topik 1', '22112017021429bg1-sm.jpg', '24112017024455farmer.png', '0', '0', '2017-11-21 18:14:29', '2017-11-26 04:45:22', NULL),
(2, 'Topik 2', '22112017021503bg2-sm.jpg', '22112017021503cow.png', '0', '1', '2017-11-21 18:15:03', '2017-11-23 18:37:59', NULL),
(7, 'Topik 3', '26112017073432bg1-sm.jpg', '26112017124025plant.png', '0', '2', '2017-11-25 23:34:32', '2017-11-26 04:40:54', NULL),
(8, 'Topik 4', '26112017124108bg3-sm.jpg', '26112017124108scarecrow.png', '0', '3', '2017-11-26 04:41:08', '2017-11-26 04:41:08', NULL),
(9, 'Topik 5', '26112017124132bg5-sm.jpg', '26112017124132sprout.png', '0', '4', '2017-11-26 04:41:32', '2017-11-26 04:41:32', NULL),
(10, 'Topik 6', '26112017124148bg4-sm.jpg', '26112017124148cow.png', '0', '5', '2017-11-26 04:41:48', '2017-11-26 04:41:48', NULL),
(11, 'Topik 7', '26112017124232bg3-sm.jpg', '26112017124232cow.png', '0', '6', '2017-11-26 04:42:32', '2017-11-26 04:42:32', NULL),
(12, 'Topik 8', '26112017124243bg2-sm.jpg', '26112017124243farmer.png', '0', '7', '2017-11-26 04:42:43', '2017-11-26 04:42:43', NULL),
(13, 'Sub Topik 1', '26112017124718bg1-sm.jpg', '26112017124718cow.png', '1', '0', '2017-11-26 04:47:18', '2017-11-26 04:47:18', NULL),
(14, 'Sub Topik 2', '26112017124738bg1-sm.jpg', '26112017124738farmer.png', '1', '1', '2017-11-26 04:47:38', '2017-11-26 04:47:38', NULL),
(15, 'Sub Topik 3', '26112017124814bg4-sm.jpg', '26112017124814scarecrow.png', '1', '2', '2017-11-26 04:48:14', '2017-11-26 04:49:15', NULL),
(16, 'Sub Topik 4', '26112017124928bg5-sm.jpg', '26112017124928plant.png', '1', '3', '2017-11-26 04:49:28', '2017-11-26 04:49:28', NULL),
(17, 'Sub Topik 5', '26112017124942bg4-sm.jpg', '26112017124942sprout.png', '1', '4', '2017-11-26 04:49:42', '2017-11-26 04:49:42', NULL),
(18, 'Sub Topik 6', '26112017125006bg2-sm.jpg', '26112017125006plant.png', '1', '5', '2017-11-26 04:50:06', '2017-11-26 04:50:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'I Gede Angga Purnajiwa Arimbawa', 'arimbawaangga@gmail.com', '$2y$10$paOqE9tw3uE6OWStFv4FlO8z1PEF.ijiLxPW.PcJLFUvGYabfNGhO', 'H4ZBCARZk0Y93beSxWUUjSrc5mHNXjT7MdxwVKZQObLHU3q1YKCrfdm82j5N', '2017-11-21 17:17:56', '2017-11-21 17:17:56', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_topiks`
--
ALTER TABLE `detail_topiks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_photos`
--
ALTER TABLE `gallery_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_videos`
--
ALTER TABLE `gallery_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `topiks`
--
ALTER TABLE `topiks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_topiks`
--
ALTER TABLE `detail_topiks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `gallery_photos`
--
ALTER TABLE `gallery_photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `gallery_videos`
--
ALTER TABLE `gallery_videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `topiks`
--
ALTER TABLE `topiks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
