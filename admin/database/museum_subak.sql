-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 22, 2017 at 10:39 AM
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
(1, '3', 'Detail 2', '1511314042bg2-sm.jpg', 'P', '1', '2017-11-21 17:27:22', '2017-11-21 17:27:40', NULL),
(2, '3', 'Detail 1', '1511314050bg4-sm.jpg', 'P', '0', '2017-11-21 17:27:30', '2017-11-21 17:27:40', NULL),
(3, '3', 'Detail ayo', '22112017012805left.png', 'P', '1', '2017-11-21 17:27:53', '2017-11-21 17:28:09', '2017-11-21 17:28:09');

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
(1, '3', '1', 'Subak 1', '22112017013118bg2-sm.jpg', 'Subak Bali DI Tabanan', '0', '2017-11-21 17:31:18', '2017-11-21 17:31:47', '2017-11-21 17:31:47'),
(2, '9', '2', 'Subak Kategori 2', '22112017013140bg3-sm.jpg', 'Mantap', '0', '2017-11-21 17:31:40', '2017-11-21 17:33:06', '2017-11-21 17:33:06');

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
(2, 'Kategori 2', '2017-11-21 17:29:56', '2017-11-21 17:29:56', NULL);

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
(16, '2017_11_21_122011_ubah_table_gallery', 1);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topiks`
--

INSERT INTO `topiks` (`id`, `nama`, `background`, `icon`, `id_parent`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Topik 1', '22112017011946bg1-sm.jpg', '22112017011946cow.png', '0', '2017-11-21 17:19:46', '2017-11-21 17:19:46', NULL),
(2, 'Topik 2', '22112017012009bg2.jpg', '22112017012009plant.png', '0', '2017-11-21 17:20:09', '2017-11-21 17:20:09', NULL),
(3, 'Topik 1 1', '22112017012043bg3-sm.jpg', '22112017012043farmer.png', '1', '2017-11-21 17:20:43', '2017-11-21 17:20:43', NULL),
(4, 'Topik 2 1', '22112017012109bg3-sm.jpg', '22112017012109scarecrow.png', '2', '2017-11-21 17:21:09', '2017-11-21 17:24:18', '2017-11-21 17:24:18'),
(5, 'Topik 3', '22112017012153bg4-sm.jpg', '22112017012153farmer.png', '0', '2017-11-21 17:21:53', '2017-11-21 17:22:02', '2017-11-21 17:22:02'),
(6, 'TOPS', '22112017012308bg3-sm.jpg', '22112017012308cow.png', '0', '2017-11-21 17:23:08', '2017-11-21 17:23:25', '2017-11-21 17:23:25'),
(7, 'tops', '22112017012404bg2-sm.jpg', '22112017012404cow.png', '0', '2017-11-21 17:24:04', '2017-11-21 17:24:09', '2017-11-21 17:24:09'),
(8, 'Topik', '22112017012603cow.png', '22112017012603bg5-sm.jpg', '0', '2017-11-21 17:26:03', '2017-11-21 17:26:09', '2017-11-21 17:26:09'),
(9, 'Topik 2 1', '22112017012658bg1-sm.jpg', '22112017012658cow.png', '2', '2017-11-21 17:26:58', '2017-11-21 17:27:06', NULL);

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
(1, 'I Gede Angga Purnajiwa Arimbawa', 'arimbawaangga@gmail.com', '$2y$10$paOqE9tw3uE6OWStFv4FlO8z1PEF.ijiLxPW.PcJLFUvGYabfNGhO', NULL, '2017-11-21 17:17:56', '2017-11-21 17:17:56', NULL);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `gallery_photos`
--
ALTER TABLE `gallery_photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gallery_videos`
--
ALTER TABLE `gallery_videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `topiks`
--
ALTER TABLE `topiks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
