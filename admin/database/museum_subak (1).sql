-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 05, 2017 at 06:19 PM
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
-- Table structure for table `controls`
--

CREATE TABLE `controls` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `controls`
--

INSERT INTO `controls` (`id`, `nama`, `state`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'musik', '1', NULL, '2017-12-05 00:02:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `detail_topiks`
--

CREATE TABLE `detail_topiks` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_topik` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `media` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_media` enum('P','V','') COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_topiks`
--

INSERT INTO `detail_topiks` (`id`, `id_topik`, `description`, `media`, `kategori_media`, `order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '4', 'Detail 1 Maknyos', '1511357197bg1-sm.jpg', 'P', '2', '2017-11-21 21:26:37', '2017-11-23 21:12:02', NULL),
(2, '4', 'Bg 3', '1511357205bg2-sm.jpg', 'P', '0', '2017-11-21 21:26:45', '2017-11-21 21:27:59', '2017-11-21 21:27:59'),
(3, '4', 'Bg 5', '1511357211bg5-sm.jpg', 'P', '1', '2017-11-21 21:26:51', '2017-11-23 21:12:03', NULL),
(4, '4', 'Detail 2', '1511357355bg2-sm.jpg', 'P', '1', '2017-11-21 21:29:15', '2017-11-21 21:29:27', '2017-11-21 21:29:27'),
(5, '5', 'Setail 1', '1511483310bg1-sm.jpg', 'P', '0', '2017-11-23 08:28:30', '2017-11-23 08:28:30', NULL),
(6, '4', 'Detail ke tiga nich', '1511526544vidio.mp4', 'V', '0', '2017-11-23 20:29:04', '2017-11-23 21:12:03', NULL),
(7, '13', '<p style="margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif; text-align: justify;">Subak&nbsp;adalah organisasi kemasyarakatan yang khusus mengatur sistem pengairan sawah yang digunakan dalam cocok tanam&nbsp;<a style="text-decoration-line: none; color: #0b0080; background: none;" title="Padi" href="https://id.wikipedia.org/wiki/Padi">padi</a>&nbsp;di&nbsp;<a style="text-decoration-line: none; color: #0b0080; background: none;" title="Bali" href="https://id.wikipedia.org/wiki/Bali">Bali</a>,&nbsp;<a style="text-decoration-line: none; color: #0b0080; background: none;" title="Indonesia" href="https://id.wikipedia.org/wiki/Indonesia">Indonesia</a>. Subak ini biasanya memiliki&nbsp;<a style="text-decoration-line: none; color: #0b0080; background: none;" title="Pura" href="https://id.wikipedia.org/wiki/Pura">pura</a>&nbsp;yang dinamakan&nbsp;<a class="new" style="text-decoration-line: none; color: #a55858; background: none;" title="Pura Uluncarik (halaman belum tersedia)" href="https://id.wikipedia.org/w/index.php?title=Pura_Uluncarik&amp;action=edit&amp;redlink=1">Pura Uluncarik</a>, atau Pura Bedugul, yang khusus dibangun oleh para pemilik lahan dan petani yang diperuntukkan bagi dewi kemakmuran dan kesuburan&nbsp;<a class="mw-redirect" style="text-decoration-line: none; color: #0b0080; background: none;" title="Dewi Sri" href="https://id.wikipedia.org/wiki/Dewi_Sri">dewi Sri</a>. Sistem pengairan ini diatur oleh seorang pemuka adat yang juga adalah seorang petani di Bali.</p>\r\n<p style="margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif; text-align: justify;"><a class="mw-redirect" style="text-decoration-line: none; color: #0b0080; background: none;" title="Revolusi hijau" href="https://id.wikipedia.org/wiki/Revolusi_hijau">Revolusi hijau</a>&nbsp;telah menyebabkan perubahan pada sistem&nbsp;<a style="text-decoration-line: none; color: #0b0080; background: none;" title="Irigasi" href="https://id.wikipedia.org/wiki/Irigasi">irigasi</a>&nbsp;ini, dengan adanya&nbsp;<a class="new" style="text-decoration-line: none; color: #a55858; background: none;" title="Varietas padi (halaman belum tersedia)" href="https://id.wikipedia.org/w/index.php?title=Varietas_padi&amp;action=edit&amp;redlink=1">varietas padi</a>&nbsp;yang baru dan metode yang baru, para&nbsp;<a style="text-decoration-line: none; color: #0b0080; background: none;" title="Petani" href="https://id.wikipedia.org/wiki/Petani">petani</a>&nbsp;harus menanam padi sesering mungkin, dengan mengabaikan kebutuhan petani lainnya. Ini sangatlah berbeda dengan sistem Subak, di mana kebutuhan seluruh petani lebih diutamakan. Metode yang baru pada revolusi hijau menghasilkan pada awalnya hasil yang melimpah, tetapi kemudian diikuti dengan kendala-kendala seperti kekurangan air,&nbsp;<a style="text-decoration-line: none; color: #0b0080; background: none;" title="Hama" href="https://id.wikipedia.org/wiki/Hama">hama</a>&nbsp;dan&nbsp;<a class="mw-redirect" style="text-decoration-line: none; color: #0b0080; background: none;" title="Polusi" href="https://id.wikipedia.org/wiki/Polusi">polusi</a>&nbsp;akibat&nbsp;<a style="text-decoration-line: none; color: #0b0080; background: none;" title="Pestisida" href="https://id.wikipedia.org/wiki/Pestisida">pestisida</a>&nbsp;baik di tanah maupun di air.<sup id="cite_ref-1" class="reference" style="line-height: 1em; unicode-bidi: isolate; white-space: nowrap;"><a style="text-decoration-line: none; color: #0b0080; background: none;" href="https://id.wikipedia.org/wiki/Subak_(irigasi)#cite_note-1">[1]</a></sup>&nbsp;Akhirnya ditemukan bahwa sistem pengairan sawah secara tradisional sangatlah efektif untuk menanggulangi kendala ini.</p>', '1511700642bg1-sm.jpg', 'P', '0', '2017-11-25 20:50:42', '2017-11-30 10:28:30', NULL),
(8, '13', 'Detail 2', '1511700648bg2-sm.jpg', 'P', '1', '2017-11-25 20:50:48', '2017-11-25 20:50:48', NULL),
(9, '13', 'Detail 3', '1511700661bg4-sm.jpg', 'P', '2', '2017-11-25 20:51:01', '2017-11-25 20:51:01', NULL),
(10, '13', 'Detail 4\r\nalksdmaklsdm\r\nasdlkamd\r\nasdalksdmas\r\ndaksldmalsd\r\nasdlkamsdlkm\r\nasldkmalskm\r\nalskdmlaksmdlkamsdl\r\n;lmasldkm\r\n\r\n\r\nasldma;lskdm;la\r\n\r\naslkdmlaksdm\r\n\r\nlaksmdlkamsdlkasd\r\nsada\r\n\r\nas\r\nd\r\nas\r\nd\r\na\r\nsd\r\n\r\n\r\n\r\nasdasdasd\r\n\r\na\r\nsd\r\nas\r\nd\r\na\r\nsd\r\nasdas', '1511766012beratan.jpg', 'P', '3', '2017-11-26 15:00:12', '2017-11-26 15:00:12', NULL),
(11, '14', 'Test``', '', 'P', '0', '2017-11-28 00:44:06', '2017-11-28 00:50:30', '2017-11-28 00:50:30'),
(12, '14', 'Test', '', 'P', '0', '2017-11-28 00:44:13', '2017-11-28 00:50:32', '2017-11-28 00:50:32'),
(13, '14', '<p>Test</p>', '28112017044603beratan.jpg', 'P', '0', '2017-11-28 00:45:40', '2017-11-28 10:12:21', '2017-11-28 10:12:21'),
(14, '14', '<p>Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test</p>', '', '', '0', '2017-11-28 00:50:48', '2017-11-28 10:12:10', '2017-11-28 10:12:10'),
(15, '14', 'Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test  Test Test', '28112017050325sprout.png', 'P', '2', '2017-11-28 00:50:54', '2017-11-28 01:03:30', '2017-11-28 01:03:30'),
(16, '14', '<p>Test</p>', '29112017021231sprout.png', 'P', '0', '2017-11-28 00:51:05', '2017-11-28 10:12:36', '2017-11-28 10:12:36'),
(17, '14', 'a', '', '', '0', '2017-11-28 00:51:09', '2017-11-28 10:19:34', '2017-11-28 10:19:34'),
(18, '14', '<p>Test</p>', '', '', '1', '2017-11-28 10:08:14', '2017-11-28 10:13:43', '2017-11-28 10:13:43'),
(19, '14', '<p>Test 123</p>\r\n<p>Mantap</p>', '', '', '0', '2017-11-28 10:08:28', '2017-11-28 10:19:37', '2017-11-28 10:19:37'),
(20, '14', '<p>Testststst</p>', '', '', '0', '2017-11-28 10:10:13', '2017-11-28 10:19:40', '2017-11-28 10:19:40'),
(21, '14', '<p>Detail Subak 1</p>', '29112017022000bg5-sm.jpg', 'P', '0', '2017-11-28 10:20:00', '2017-11-28 10:20:00', NULL),
(22, '14', '<p>Detail Subak 2</p>\r\n<p>Subak adalah sistem perswahan diBali. Subak adalah sistem perswahan diBali. Subak adalah sistem perswahan diBali. Subak adalah sistem perswahan diBali. Subak adalah sistem perswahan diBali. Subak adalah sistem perswahan diBali.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Subak adalah sistem perswahan diBali. Subak adalah sistem perswahan diBali. Subak adalah sistem perswahan diBali. Subak adalah sistem perswahan diBali. Subak adalah sistem perswahan diBali. Subak adalah sistem perswahan diBali.&nbsp;</p>\r\n<p>Subak adalah sistem perswahan diBali. Subak adalah sistem perswahan diBali. Subak adalah sistem perswahan diBali. Subak adalah sistem perswahan diBali. Subak adalah sistem perswahan diBali. Subak adalah sistem perswahan diBali.&nbsp;</p>\r\n<p>Subak adalah sistem perswahan diBali. Subak adalah sistem perswahan diBali. Subak adalah sistem perswahan diBali. Subak adalah sistem perswahan diBali. Subak adalah sistem perswahan diBali. Subak adalah sistem perswahan diBali.&nbsp;</p>\r\n<p>Subak adalah sistem perswahan diBali. Subak adalah sistem perswahan diBali. Subak adalah sistem perswahan diBali. Subak adalah sistem perswahan diBali. Subak adalah sistem perswahan diBali. Subak adalah sistem perswahan diBali.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Terasering adalah ....</p>', '29112017033421bg4-sm.jpg', 'P', '1', '2017-11-28 10:22:05', '2017-11-28 11:34:21', NULL),
(23, '14', '<p>Detail 3 Subak</p>', '', '', '2', '2017-11-28 10:22:12', '2017-11-28 10:22:12', NULL),
(24, '19', '<p>Sumber Air</p>', '', '', '0', '2017-12-01 16:18:55', '2017-12-01 16:18:55', NULL),
(25, '54', '<p class="MsoListParagraphCxSpFirst" style="margin: 0cm 0cm 0.0001pt; line-height: 150%; text-align: justify;"><span style="font-family: Arial, sans-serif;"><em>Mapag Toya artinya &lsquo;menyongsong air&rsquo;.&nbsp; Upacara mapag toyo berarti upacara menyongsong/menjemput air yang akan dipergunakan untuk mengairi sawah. Jenis upakara yang dipersembahkan tergantung dari tingkatan (nistha, Madhya, uttama) upacara.</em></span></p>\r\n<p class="MsoListParagraphCxSpFirst" style="margin: 0cm 0cm 0.0001pt; line-height: 150%; text-align: justify;"><span style="font-family: Arial, sans-serif;"><em>&sect;&nbsp; Upacara pada tingkat nistha (kanistha) dipersembahkan : pejati, nasi takilan berulam (berlauk) balang (belalang).</em></span></p>\r\n<p class="MsoListParagraphCxSpFirst" style="margin: 0cm 0cm 0.0001pt; line-height: 150%; text-align: justify;"><span style="font-family: Arial, sans-serif;"><em>&sect;&nbsp; Pada tingkat Madhya dipersembahkan upakara diantaranya: pejati, pangambean, suci asoroh, nasi takilan pakelem, dan salaran alit</em></span></p>\r\n<p class="MsoListParagraphCxSpFirst" style="margin: 0cm 0cm 0.0001pt; line-height: 150%; text-align: justify;"><span style="font-family: Arial, sans-serif;"><em>&sect;&nbsp; Tingkat Uttama dipersembahkan upakara diantaranya : upakara tingkat Madhya ditambah dengan tumpeng legit agung, maguling bebangkit, mapekelem bebek dan ayam, dan caru ayam berumbun</em></span></p>\r\n<p class="MsoListParagraphCxSpFirst" style="margin: 0cm 0cm 0.0001pt; line-height: 150%; text-align: justify;"><span style="font-family: Arial, sans-serif;"><em>&nbsp;</em></span></p>\r\n<p class="MsoListParagraphCxSpFirst" style="margin: 0cm 0cm 0.0001pt; line-height: 150%; text-align: justify;"><span style="font-family: Arial, sans-serif;"><em>Upacara ini diselenggarakan menjelang karama subak turun ke sawah. Diselenggarakan di Pura Ulun Empelan&nbsp; dapat juga dilaksanakan di Pura Ulun Suwi atau di Pura Bedugul. Persembahan ini ditujukan kepada Batari Dewi Danu sebagai sakti dari Batara Wisnu yang menguasai danau sebagai sumber air, juga melakukan pakelem yang ditujukan kepada Sedahan Toya. Maksud dan tujuannya yakni menyongsong datangya air (hujan) untuk mengairi sawah. Orang Bali berkeyakinan, bahwa air yang ada di sungai-sungai yang dibendung untuk irigasi itu bersumber dari danau. Oleh karena itu pemujaan pada Dewi Danu sangat diutamakan oleh Kerama (warga) Subak.&nbsp; Pelaksanaan upacaranya dilakukan secara berkelompok oleh seluruh warga subak.</em></span></p>', '', '', '0', '2017-12-01 17:47:20', '2017-12-01 17:49:56', NULL),
(26, '54', '<p style="text-align: justify;">Mapag Toya artinya &lsquo;menyongsong air&rsquo;.&nbsp; Upacara mapag toyo berarti upacara menyongsong/menjemput air yang akan dipergunakan untuk mengairi sawah. Jenis upakara yang dipersembahkan tergantung dari tingkatan (nistha, Madhya, uttama) upacara.</p>\r\n<p style="text-align: justify;">&sect;&nbsp; Upacara pada tingkat nistha (kanistha) dipersembahkan : pejati, nasi takilan berulam (berlauk) balang (belalang).</p>\r\n<p style="text-align: justify;">&sect;&nbsp; Pada tingkat Madhya dipersembahkan upakara diantaranya: pejati, pangambean, suci asoroh, nasi takilan pakelem, dan salaran alit</p>\r\n<p style="text-align: justify;">&sect;&nbsp; Tingkat Uttama dipersembahkan upakara diantaranya : upakara tingkat Madhya ditambah dengan tumpeng legit agung, maguling bebangkit, mapekelem bebek dan ayam, dan caru ayam berumbun</p>\r\n<p style="text-align: justify;">&nbsp;</p>\r\n<p style="text-align: justify;">Upacara ini diselenggarakan menjelang karama subak turun ke sawah. Diselenggarakan di Pura Ulun Empelan&nbsp; dapat juga dilaksanakan di Pura Ulun Suwi atau di Pura Bedugul. Persembahan ini ditujukan kepada Batari Dewi Danu sebagai sakti dari Batara Wisnu yang menguasai danau sebagai sumber air, juga melakukan pakelem yang ditujukan kepada Sedahan Toya. Maksud dan tujuannya yakni menyongsong datangya air (hujan) untuk mengairi sawah. Orang Bali berkeyakinan, bahwa air yang ada di sungai-sungai yang dibendung untuk irigasi itu bersumber dari danau. Oleh karena itu pemujaan pada Dewi Danu sangat diutamakan oleh Kerama (warga) Subak.&nbsp; Pelaksanaan upacaranya dilakukan secara berkelompok oleh seluruh warga subak.</p>', '', '', '1', '2017-12-01 17:48:59', '2017-12-01 17:49:38', '2017-12-01 17:49:38'),
(27, '55', '<p style="text-align: justify;">Dalam kontek ini kata ngendagin berasal dari kata endag yang berarti &lsquo;memulai&rsquo;. Upacara Ngendagin dilaksanakan saat kerama subak memulai mengolah sawah. Upakara yang dipersembahkan diantaranya : canang raka woh-wohan (buah-buahan), base lekesan (sirih), sulakasih, kembang pahyas, lenge wangi, burat wangi, tumpeng dananan manut urip Pancawara dilengkapi dengan geti-geti. Proses upacaranya, terlebuh dahulu menghaturkan persembahan kepada Ibu Pertiwi dengan puja mantra sesuai dengan tradisi.&nbsp; Selanjutnya mencangkul tanah tiga kali atau membajak. Ngendagin bisa menggunakan cangkul (tambah) dan bisa juga menggunakan bajak (tenggala/aluku). Upacara ini bertempat di sawah garapan masing-masing karama subak. Tujuan dari upacara ini yakni untuk memohon ke hadapan Ibu Pertiwi dan Batari Dewi Sri agar dianugerahi keselamatan selama mengolah sawah. Tempat upacara di hulu sawah dekat pengalapan (inlet). Dilakukan secara indivudu oleh setiap warga subak di masing-masing sawah garapan mereka.</p>', '', '', '0', '2017-12-01 17:50:45', '2017-12-01 17:51:03', NULL),
(28, '64', '<p style="text-align: justify;">Paneduhan berasal dari kata teduh&nbsp; yang bererti &lsquo;sejuk&rsquo;. &lsquo;tenang&rsquo;. Upacara peneduhan berarti &lsquo;upacara yang diharapkan dapat menimbulkan kesejukan/keteduhan&rsquo; bagi kerana/warga subak. Upakara yang dipersembahkan antara lain : canang burat wangi, tadah sukla 1 tanding,&nbsp; blayag 6, isuh-isuh, penyeneng, lis, air klungah (klungah kasturi). Tempat pelaksanaan di hulun carik (dekat inlet).&nbsp; Upacara ini dlaksanakan dengan tujuan mohon kepada Batari Sri agar dianugerahi kesejukan/ketenangan, selain itu agar tidak tanaman terhindar dari hama penyakit.</p>\r\n<p style="text-align: justify;">Biasanya upacara ini disertai dengan upacara panyepian di sawah (Nyepi ring Carik) . Tata-cara upacara dan upakaranya manut sastra, sima, dresta lan pararem.</p>\r\n<p style="text-align: justify;">&nbsp;</p>', '', '', '0', '2017-12-01 17:51:26', '2017-12-01 17:53:48', NULL),
(29, '57', '<p style="text-align: justify;">Upacara pada saat menanam padi ( benih yang sudah tumbuh). Upakara yang dipersembahkan diantaranya : bubur putih masuyuk 11 tanding disertai segehan putih kuning, penyeneng, pabresihan, canang 1 tanding, cau petik 4 tanding setiap tanding ditaruh di keempat sudut sawah, cau mumbul 1 tanding di taruh di tengah-tengah sawah, banten danan dengan canang genten 1 tanding, kayu panyugjug 5 warna/ macam : dadap (putih), andong (merah), kayu puring (kuning), kayu sisih (hijau) dan kayu temen (berumbun) disertai dengan menancapkan sangga di samping pengalapan (inlet) dengan upakara berupa tumpeng 1 tanding, peras, rayunan, sigsig ambuh, raka geti-geti, dodol, cau mumbul berlauk ayam , lis, panyeneng, daksina,&nbsp; ketipat kelanan, ketipat dampul dan canang. Tempat upacara di dekat pengalapan (inlet) sawah yang akan ditatami padi.&nbsp;</p>\r\n<p style="text-align: justify;">&nbsp;</p>\r\n<p style="text-align: justify;">Adapun tujuan dari&nbsp; upacara tersebut yakni memohon kehadapan Batari Sri agar padi tersebut tumbuh dengan baik dan terhindar dari hama/penyakit. Dilakukan oleh masing-masing warga subak.</p>\r\n<p style="text-align: justify;">&nbsp;</p>', '', '', '0', '2017-12-01 17:52:45', '2017-12-01 17:52:45', NULL),
(30, '65', '<p class="MsoNormal" style="text-indent: 18pt; text-align: justify;"><span lang="EN-US">Upacara ini dilakukan setelah padi berumur 70 hari ( dua bulan menurut perhitungan kalender Bali) atau disebut juga &ldquo;dedinan pendo&rdquo;. Saat itu puncak padi sedang merata (<em>ratap</em>). Bila ibaratkan seperti siklus hidup manusia, saat itu masa akil balik atau masa menginjak remaja. Upakara yang dipersembahkan diantaranya : <em>c</em></span><em><span lang="FI">anang burat wangi lenga wangi, tadah sukla 1 tanding, blayag 6 bungkul, isuh-isuh, panyeneng, lis, toyo klungah dikasturi</span></em><em><span lang="EN-US">.</span></em><span lang="EN-US"> Dilaksanakan di <em>ulun carik</em> dekat <em>pengalapan (inlet)</em>. Tujuan dari upacara ini yakni memohon kepada Batari Sri agar dianugerahi keselamataan. Dilaksanakan oleh masing-masing warga subak secara individu.</span></p>', '', '', '0', '2017-12-01 17:54:22', '2017-12-01 17:54:22', NULL),
(31, '66', '<p style="text-align: justify;"><em><span lang="EN-US" style="font-size: 11.0pt; line-height: 150%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;">Biukukung</span></em><span lang="EN-US" style="font-size: 11.0pt; line-height: 150%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;"> berasal dari kata <em>beya</em> dan <em>kukung</em>. <em>Beya</em> berarti &lsquo;upakara&rsquo;. <em>Kukung</em> berasal dari kata <em>kung</em> yang berarti &lsquo;asmara&rsquo;. Jadi upacara ini dimaksudkan adalah pertemuan asmara antara kepala putik dan tepung sari, sehingga terjadinya pembuahan. Upacara ini diselenggarakan ketika padi sudak berumur 3 bulan yang saat itu bulir padi baru keluar <em>&lsquo;meikut lasan&rsquo; (</em>seperti ekor kadal)<em>. </em>&nbsp;Upakara yang dipersembahkan antara lain : <em>ketipat akelan maulam ayam pinanggang, raka-raka, wangi-wangi,&nbsp; peras, tulung, sesayut alit, panyugjug andong, pering, lawasan tebu. Ditambah dengan sega 5 warna maulam kakul, uyah areng matatakan kulit sesayut, panyeneng madaging batu bulitan, canang pabresihan, lengawangi, burat wangi, idam-idaman/rerujakan, ampo, ubag-abig, pangambean, panyugjug kayu gegirang </em>dan<em> pering penjor, pabyukukunga</em>n. <strong>Upakara yang lebih sederhana meliputi</strong>: <em>Peras, pengambean, sesayut, panyeneng, jerimpen, tulung 5, sayut katututan, asep</em>. Maksud dan tujuan upacara <em>byakukung</em> ini yakni memohon kepada Batari Dewi Gangga dan Bhatari Dewi Sri agar pembuahan berjalan dengan baik, sehingga padi akan keluar dengan bulir yang bernas. Upacara ini dilaksanakan di <em>panghulun carik</em>, oleh warga subak masing-masing.</span></p>', '', '', '0', '2017-12-01 17:54:46', '2017-12-01 17:55:01', '2017-12-01 17:55:01'),
(32, '66', '<p style="text-align: justify;"><em><span lang="EN-US" style="font-size: 11.0pt; line-height: 150%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;">Biukukung</span></em><span lang="EN-US" style="font-size: 11.0pt; line-height: 150%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;"> berasal dari kata <em>beya</em> dan <em>kukung</em>. <em>Beya</em> berarti &lsquo;upakara&rsquo;. <em>Kukung</em> berasal dari kata <em>kung</em> yang berarti &lsquo;asmara&rsquo;. Jadi upacara ini dimaksudkan adalah pertemuan asmara antara kepala putik dan tepung sari, sehingga terjadinya pembuahan. Upacara ini diselenggarakan ketika padi sudak berumur 3 bulan yang saat itu bulir padi baru keluar <em>&lsquo;meikut lasan&rsquo; (</em>seperti ekor kadal)<em>. </em>&nbsp;Upakara yang dipersembahkan antara lain : <em>ketipat akelan maulam ayam pinanggang, raka-raka, wangi-wangi,&nbsp; peras, tulung, sesayut alit, panyugjug andong, pering, lawasan tebu. Ditambah dengan sega 5 warna maulam kakul, uyah areng matatakan kulit sesayut, panyeneng madaging batu bulitan, canang pabresihan, lengawangi, burat wangi, idam-idaman/rerujakan, ampo, ubag-abig, pangambean, panyugjug kayu gegirang </em>dan<em> pering penjor, pabyukukunga</em>n. Upakara yang lebih sederhana meliputi: <em>Peras, pengambean, sesayut, panyeneng, jerimpen, tulung 5, sayut katututan, asep</em>. Maksud dan tujuan upacara <em>byakukung</em> ini yakni memohon kepada Batari Dewi Gangga dan Bhatari Dewi Sri agar pembuahan berjalan dengan baik, sehingga padi akan keluar dengan bulir yang bernas. Upacara ini dilaksanakan di <em>panghulun carik</em>, oleh warga subak masing-masing.</span></p>', '', '', '0', '2017-12-01 17:54:58', '2017-12-01 17:55:01', NULL),
(33, '67', '<p style="text-align: justify;"><span lang="FI" style="font-size: 11pt; line-height: 150%; font-family: Arial, sans-serif;">Upacara ini dilaksanakan setelah padi berbunga secara merata di hamparan sawah. Upacara yang dipersenbahkan antara lain : canang sari, sesayut, pangambean, tadah pawitra (DP.Gedong Kirtya: 25b, 110). Dilaksanakan di panghulun carik. Tujuannya memohon kepada Batari Sri agar tanaman padi tetap dapat tumbuh dengan sempurna dan menghasilan buah padi yang baik. Dilaksanakan oleh masing-masing karama subak secara individu.</span></p>', '', '', '0', '2017-12-01 17:55:24', '2017-12-01 17:55:24', NULL),
(34, '68', '<p style="text-align: justify;"><span style="font-size: 11pt; line-height: 150%; font-family: Arial, sans-serif;">U</span><span lang="EN-US" style="font-size: 11pt; line-height: 150%; font-family: Arial, sans-serif;">pacara ini dilakukan setelah padi menguning dan siap untuk dipanen. Upakara yang dipersembahkan antara lain : <em>nasi geblag manca warna maulam ayam panca warna pinanggang, banten sorohan jangkep, pras sesantun, cacahan 5 tanding, panyeneng, babuu, tepung tawar, sesarik, tatebus</em>. Banten di Surya dan di palinggih sama dengan banten <em>ngodalin alit</em>. Tempat pelaksanaan upacara di Pura Ulun Suwi atau di Pura Bedugul. Tujuannya menghaturkan persembahan ucapan terima kasih kepada Batari Dewi Sri karena berkat anugreah dan berlindungan beliau tanaman padi dapat tumbuh dengan sempurna dan mendapatkan hasil panem yangn baik. Dilaksanakan secara kolektif oleh warga subak. Kemudian dilanjutkan ke sawah masing-masing karama subak.</span></p>', '', '', '0', '2017-12-01 17:55:47', '2017-12-01 17:55:47', NULL),
(35, '69', '<p style="text-align: justify;"><span lang="EN-US" style="font-size: 11.0pt; line-height: 150%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;">Upacara ini dilakukan ketika padi akan dipanen. Tujuannya yakni menstanakan Bhatara Sri dan Bhatara Sedana secara simbolis dengan membuat Dewa Nini atau Sang Hyang Kaki Manuh ( laki-laki) dan Nini Manuh (wanita). Di samping itu juga mendirikan sanggah catu. Dewa Nini itu dibuat dari tangkai padi, yang laki 108 tangkai dan yang perempuan 54 tangkai. Disertai dengan taracara upacaranya. Upacara ini merupakan upacara syukuran kehadapan Hyang Widhi dalam manifestasinya sebagai Sri - Sedana (Dewa Kemakmuran). Keberhasilan padi menguning adalah akibat kesuburan yang diberikan oleh hutan dan gunung, melalui air sungai yang dipakai mengairi sawah. Oleh karena itu sudah sewajarnya umat menghaturkan ucapan terima kasih (<em>pangayu bagya</em>) kepada Dewa di Gunung Agung. Upakara yang dipersembahkan antara lain :&nbsp; <em>cau, sega catur warna, cau gede di tengah 1 maulam sudang taluh, cau petik 5</em> tempatkan di setiap sudut dilengkapi dengan <em>asep/dupa</em>. Upakara di Sanggah Pangalapan meliputi : <em>soda, ketipat, rantasan, pesucian, canang lengawangi &ndash; buratwangi</em>. Tempat upacara di <em>pengulun carik</em> dekat <em>pengalapan</em>. Dilaksanakan oleh kerama/warga subak dimasing-masing petakan sawah.</span></p>', '', '', '0', '2017-12-01 17:56:08', '2017-12-01 17:56:08', NULL),
(36, '70', '<p style="text-align: justify;">Upacara ini dilakukan ketika mulai mengetam padi. Upakara yang dipersembahkan meliputi sebagai berikut.</p>\r\n<p style="text-align: justify;">Upakara untuk mengawali pemotongan padi :&nbsp; pras ajuman, pejati atau nasi kuning ditempatkan pada tujuh buah tulung berlauk kuning telur, pelawa sekar kuning, dipersembahkan kepada Batari Sri dan pengiring beliau. Tempat upacara di hulun carik dekat pengalapan (inlet). Sebagai simbul Batari Sri &ndash; Sedana berupa dua ikat padi yang diketam pertama kali di sekitar tempat upacara kemudian diikat masing-masing ikatan jumlahnya tiga tangkai atau kelipatannya. Kedua ikatan itu kemudian diprosesi/diupacarai sebagai sarana banten yang kemudian disebut banten akitan. Setelah selesai panen kedia ikat padi itu yang disebut Dewa Nini dibawa pulang untuk seterusnya dinaikan ke lumbung. Tujuannya agar hasil panen berlipat ganda. Selain itu juga mohon kepada Batari Dewi Sri agar beliau berkenan menuntun Dewa Nini sampai ke temat penyimpanan (lumbung). Dilaksanakan secara individu oleh masing-masing kerama subak.</p>\r\n<p style="text-align: justify;">&nbsp;</p>', '', '', '0', '2017-12-01 17:56:35', '2017-12-01 17:56:35', NULL),
(37, '71', '<p style="text-align: justify;">Nyaag berasal dari kata saag, yang artinya &lsquo;pesta&rsquo;. Nyaagang berarti &lsquo;berpesta&rsquo;. Upacara ini juga disebut ngrasakin.&nbsp; Upakara yang dipersembahkan meliputi : Banten ayaban (tumpeng 11 atau 17) 1, Sorohan bebangkit, tebasan, Pesucian, Rantasan, Payasan, Canang, Toyo pamendak, Ajuman, Toya wangsuh pada, Perayunan putih kuning, panyeneng, suci, Prayascita, Durmanggala dan Nasi gibungan. Setiap tiga atau 5 tahun sekali tergantung situasi, disertai dengan mecaru ayam 1 ekor, mesosolan bebek putih dan banten selengkapnya</p>\r\n<p style="text-align: justify;">Upacara Nyaag ini dilaksanakan setelah musim panen atau menjelang musim tanam berikutnya. Tempat pelaksanaan di Pura Ulun Suwi (Ulun Carik). Tujuan dari pelaksanaannya yakni memohon kehadapan Batari Sri agar dianugerahi keselamatan dan kelancaran dalam pengerjaan sawah pada musim berikutnya. Upacara ini diselenggarakan oleh seluruh warga subak secara kolektif pada hari yang dianggap baik (diwasa hayu). Setelah upacara tersebut dilaksanakan, barurah warga subak berpesta (nyaagang) menyantap sisa (lungsuran) persembahan terutama nasi gibungan dan yang lainnya&nbsp; sesuai dengan tradisi.</p>\r\n<p style="text-align: justify;">&nbsp;</p>', '', '', '0', '2017-12-01 17:57:23', '2017-12-01 17:57:23', NULL),
(38, '72', '<p style="text-align: justify;">Upacara ini dilakukan ketika padi yang telah dipanen kemudian disimpan di lumbung. Demikian juga Dewa Nini juga ikut dituntun. Pada hari yang baik setelah padi dinaikkan di lumbung. Hari yang dianggap baik (diwasa) yang dipilih&nbsp; antara lain : Purnama atau Kajeng Umanus Mulu bulan terang diadakan upacara mantenin padi di lumbung. Jenis upakara yang dipersembahkan tergantung tingkatan upacaranya. Pertama-tama dilaksanakan mecaru amenca desa/genah di luar klumpu/ jineng. Di timur upakaranya nasi putih, iwak putih telor; Selatan upakaranya: nasi barak iwak kacang barak. Di barat upakaranya: nasi kuning,&nbsp; iwak pepencokan uyah lengis. Di utara upakaranya: nasi selem maulan nyali (empedu). Di tengah upakaranya : nasi brumbun maulam jejeron.</p>\r\n<p style="text-align: justify;">Upakara yang dipersembahkan di dalam Klumpu/lumbung atau jineng tergantung tingkat upacara. Pada tingkat kanistha upakaranya meliputi : canang burat wangi, lenga wangi, gati-gati, keeping biu mas, pebresihan, durmengala. Pada tingkat madhya upakaranya meliputi: canang burat wangi, lenga wangi, gati-gati, keeping biu mas, pebresihan, durmengala, suci, ayaban 1 soroh. Pada tingkat uttama upakaranya meliputi: canang burat wangi, lenga wangi, gati-gati, keeping biu mas, pebresihan, durmengala, suci, ayaban apamereman tumpeng 17, sekar taman, sesayut 5 jenis, jerimpen, tegen-tegenan, sodan putih kuning maulam bebek, rantasan, payasan, pasucian, tegteg 1. Lombung dihiasi dengan penjor dan ikatan bun sidemen dan berjenis-jenis plawa (tanaman hias).&nbsp;</p>\r\n<p style="text-align: justify;">Tujuan dari upacara ini yakni pejayan-jayan (piodalan) Ida Batari Sri &ndash; Batara Sedana agar beliau langgeng berstana di lumbung.</p>\r\n<p style="text-align: justify;">&nbsp;</p>', '', '', '0', '2017-12-01 17:57:55', '2017-12-01 17:57:55', NULL),
(39, '73', '<p style="text-align: justify;"><span lang="EN-US" style="font-size: 11pt; line-height: 150%; font-family: Arial, sans-serif;">Upacara ini dilakukan bila padi di lumbung telah habis. Upakaranya meliputi : <em>canang lengawangi &ndash; buratwangi, gati-gati, kekiping biu mas, kewangen 1.</em> Proses upacaranya, diawali dengan membakar Dewa Nini. Sebagian abunya di taman di belakang palinggih Sri &ndash; Sedana di Pura Ulun Suwi/Ulun Carik disertai dengan kewangen dan sebagian lagi abunya ditebarkan di sawah.</span></p>', '', '', '0', '2017-12-01 17:58:20', '2017-12-01 17:58:20', NULL),
(40, '74', '<p>Upacara ini dilaksanakan untuk antisipasi terhadap serangan hama tanaaman atau bila pada musim tanam padi di suatu kawasan subak (Subak Gede) terjadi serangan berbgai jenis hama yang berkepanjangan dan nyaris bahkan sampai gagal panen. Nangluk berarti &lsquo;menghalangi&rsquo; atau &lsquo;menolak&rsquo; dan mrana berarti &lsquo;hama penyakit&rsquo;. Nangluk mrana&nbsp; adalah upacara yang bertujuan untuk menghalangi/menolak hama penyakit dengan cara mengembalikan hama penyakit tenaman tersebut ke asalnya. Dilakukan dengan cara dialog spiritual (dewa sraya) dengan &ldquo;pemilik&rdquo; hama tersebut. Dialog tersebut memalui kata-kata, dengan simbul atau lambang-lambang. Mereka harus diperlakukan dengan rasa kasih sayang. Mereka dijamu dengan upacara lebih dahulu, lalu disuruh pulang. Menurut kepercayaan, hama padi tersebut juga ciptaan Tuhan dan merupakan piaraan dari batara tertenru seperti misalnya belalang sangit ciptaan dan piaraan Batara Sakenan, tikus ciptaan dan piaraan Batara Mas Ceti,wereng hijau ciptaan dan piaraan Batara Sangkara, wereng merah/api ciptaan/piaraan Batara Brahma. Bukan dengan cara mempergunakan racun, festisida dan lain-lainnya yang mengakibatkan pencemaran lingkungan. Setelah upacara Nangluk Mrana dilanjutkan dengan upacara Nyepi ( menghentikan seluruh kegiatan di sawah) selama tiga hari. Waktu pelaksanaannya pada sasih kenem (paro bulan November &ndash;Desember) Upacara yang dipersembahkan tergantung jenis hama yang menyerang diantaranya :</p>\r\n<p>a) Hama (mrana) Sasab sarana upakaranya: tatut menancapkan sangga cucuk pada setiap sudut sawah, di pengalapan (inlet) dan ditengah, sawen (bertanda) ambu (daun enau muda). Upakara selengkapnya yakni : nasi kuning berlauk telur dicampur kelapa parut satu kepel (kepal), canang lengawangi &ndash; buratwangi, canang pahyas 1 tanding, pras, daksina, segehan manca&nbsp; (lima) warna.</p>\r\n<p>b) Hama burung (mrana paksi), sarana upakaranya meliputi :&nbsp;&nbsp;</p>\r\n<p>&bull; Serana penangkal : dua buah petakut/lelakut (orang-orangan sawah) berwujud laki dan perempuan dipasang di sawah. Kedua petakut itu disembark dengan bawang putih dan jangu tiga kali. Pemasangan petakut sebaiknya bertepatan dengan hari Kajeng-Kliwon dengan upakara yakni : canang raka berisi nyahnyah gringsing 2 tanding. Penyuguhan upakara berkala setiap hari Kajeng &ndash; Kliwon sebanyak tiga kali.</p>\r\n<p>&bull; Di pangalapan (inlet) dipasang sunari atau pendekan.</p>\r\n<p>&bull; Panungkem paksi: menggunakan sarana samida dan tirta kemudian dipercikan di pinggiran sawah mulai dari pangalapan (inlet) berkeliling ke kiri dengan mantra sbb: Om kai bungkem, nini bungkem, mbuh basing manuk amangan pari nira Batara Guru, pari maka pellian, talah bungkem.</p>\r\n<p>&bull; Upakara kepada penguasa burung (paksi) : ketipat selayu 2 buah dijadikan 1 tanding berlauk capung kuning, uyah areng, canang 1 tanding.</p>\r\n<p>&nbsp;</p>', '', '', '0', '2017-12-01 17:59:17', '2017-12-01 17:59:17', NULL),
(41, '75', '<p style="text-align: justify;">Setiap tahun (sasih kenem) dilakukan di tingkat subak gede. Mohon kebelanjutan ketersediaan air Pekelem bebek.&nbsp;</p>\r\n<p style="text-align: justify;">Disamping upacara tersebut di atas, upacara rutin yang juga diselenggarakan oleh Kerama Subak secara kolektif dan perlu dipertimbangkan untuk ditampilkan di Museum Subak Gianyar diantaranya sebagai berikut.</p>\r\n<p style="text-align: justify;">&nbsp;</p>', '', '', '0', '2017-12-01 18:00:15', '2017-12-01 18:00:15', NULL),
(42, '56', '<p style="text-align: justify;"><span lang="EN-US" style="font-size: 11.0pt; line-height: 150%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;">Kata <em>ngurit </em>merupakan kata jadian yang berasal dari kata <em>gurit </em>berarti &lsquo;goretan&rsquo;. Pada goretan ini, ditaburkanlah benih padi. Dengan demikian <em>ngurit</em> juga berarti menanam benih. Benih ini juga disebut <em>bulih</em> yang berasal dari kata <em>bulir </em>juga disebut<em> binih/winih</em>, sehingga menanam benih ini disebut juga <em>mamulih</em>/<em>mabinih /mawinih</em>. Upacara ini diselenggarakan pada saat mulai ngurit (menaburkan benih padi). Upakara yang dipersembahkan yakni : <em>nasi kojongan</em>, kembang sepatu merah ditancapkan pada sudut timur laut, <em>segehan putih kuning, ulam telor dadar, udang digoreng berisi sambel kemcah, sahur kelapa gading, beras kuning, bilih sida antuk berisi sekar tiga kancu</em>. Tempat persenbahab di sudut timur laut. Upacara ini bertujuan mohon kehadapan Dewi Gangga sebagai penguasa air sungai agar mengairi sawah dan mohon kepada Batari Sri agar selalu menjaga bulir padi itu, supaya bisa tumbuh dengan sempurna. Upacara ini dilakukan oleh masing-masing warga subak di setiap lokasi sawahnya.</span></p>', '', '', '0', '2017-12-01 18:01:08', '2017-12-01 18:01:08', NULL),
(43, '58', '<p style="text-align: justify;"><span lang="FI" style="font-size: 11pt; line-height: 150%; font-family: Arial, sans-serif;">Upacara ini dilaksanakan beberapa hari setelah selesai menanam padi (<em>nandur</em>), bila ada tanaman padi yang rusak. Upakara yang dipersembahkan antara lain : <em>canang sari</em> dan <em>canang</em> <em>pengulapan</em> selengkapnya. Dilaksanakan di <em>pengalapan (inlet)</em> /<em>hulun carik</em> dengan tujuan memohon kepada Batari Sri&nbsp; agar bibit padi yang ditanam dapat tumbuh dengan baik, dan tidak mengalami kerusakan. Dilaksanakan hanya oleh warga subak yang tandurannya terkena hama atau mengalami kerusakan.</span></p>', '', '', '0', '2017-12-01 18:01:33', '2017-12-01 18:01:33', NULL),
(44, '59', '<p style="text-align: justify;"><span lang="EN-US" style="font-size: 11.0pt; line-height: 150%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;">Upacara ini dilakukan mulai dari tiga hari sampai 12 hari setelah <em>nandur</em>.&nbsp; Upakara yang dipersembahkan diantaranya : <em>sesayut, cau, panyeneng wakul</em>. Lokasi upacara di <em>pangalapan</em> (<em>inlet</em>) petak sawah. Tujuan dari upacara ini yakni mohon kehadapan Naga Raja agar beliau berkenan menjaga air dan tanaman padi dapat tumbuh dan berkembang biak dengan baik. Dilaksanakan oleh warga subak secara individu.</span></p>', '', '', '0', '2017-12-01 18:01:54', '2017-12-01 18:01:54', NULL),
(45, '60', '<p style="text-align: justify;"><span lang="EN-US" style="font-size: 11.0pt; line-height: 150%; font-family: \'Arial\',sans-serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;">Upacara ini dilaksanakan setelah padi berumur 12 hari (<em>roras lemeng</em> = 12 hari ). Upakara yang dipersembahkan yakni : <em>banten nasi</em> menurut <em>urip Pancawara</em> (: bila Umanis banten nasinya 5 <em>tanding</em>, Pahing 9 <em>tanding</em>, Pon 7 <em>tanding</em>, Wage 4 <em>tanding</em>, dan Kliwon&nbsp; bantennya 8 <em>tanding</em>), <em>canang tampelan, tumpeng 1, tulung bunga, </em>dan <em>suyuk ketututan</em> letakan pada pematang sawah di Timur, Selatan, Barat, Utara dan Tengah. Tujuan dari upacara ini, mohon kepada Batari Sri agar padi tumbuh dengan baik. Pelaksanaan upacaranya bertempat di <em>pengalapan (inlet) </em>dan dilaksanakan oleh kerama subak di sawah garapan masing-masing.</span></p>', '', '', '0', '2017-12-01 18:02:20', '2017-12-01 18:02:20', NULL),
(46, '61', '<p style="text-align: justify;">Upacara ini Dilaksanakan setelah padi berumur 15 -17 hari. Mubuhin barasal dari kata bubuh yang berarti &lsquo;bubur&rsquo;. Makna dari upacara ini adalah padi diibaratkan seperti perkembangan fisik bayi manusia. Setelah bayi berumur 15 -17 hari sudah boleh/bisa mengkonsumsi bubur. Upakara yang dipersembahkan yakni: banten bubur tabah 5 tanding letakan pada setiap sudut dan di tengah-tengah sawah. Kadangkala upacara ini dikaitkan dengan ngerahinin yang dilaksanakan pada saat pada berumur 27 hari , dengan upakara : canang meraka dan nyahnyah ngringsing.</p>\r\n<p style="text-align: justify;">Tujuan dari upacara tersebut yakni memohon kepada Bhatari Sri, agar tanaman padi dapat berkembang biak dengan sempurna. Upacara ini dilaksanakan oleh masing-masing warga subak secara individu di masing-masing sawah garapan mereka.</p>\r\n<p style="text-align: justify;">Adakalanya upacara mubuhin ini disebut ngarahinin berasal dari kata rahina yang berarti &lsquo;hari&rsquo;.&nbsp; Ngarahinin adalah upacara yang dilakukan pada hari-hari yang telah ditentukan, yakni setelah padi berumur 12 hari (ngerorasin), 17 hari dan 27 hari.</p>\r\n<p style="text-align: justify;">&nbsp;</p>', '', '', '0', '2017-12-01 18:02:45', '2017-12-01 18:02:45', NULL),
(47, '62', '<p style="text-align: justify;">Upacara ini dilaksanakan saat padi telah berumur 35 Hari atau satu bulan (bulan/asasih) menurut perhitungan Kalender Bali. Upacara ini juga disebut neduh/neduhin. Upakara yang dipersembahkan diantaranya : nancebang sanggah catu, banten ketipat dampulan, asem panca pala, kelungah dikasturi, belayag 6, ketipat sari, mesawen kayu sugih, kayu girang, labanan Sang Rare Angon diantaranya: nasi takilan, ulam balang, sambel telengis, ketipat lipet ulam sudang taluh, tetabuhan tuak, arak, berem. Dilengkapi dengan pecut (cemeti) lidi 3 batang, diisi uang kepeng 3 keping diikat dengan benang biru, dan mohon tirtha di Pura Ulun Suwi.</p>\r\n<p style="text-align: justify;">Tujuan dari upacara tersebut adalah mohon kehadapan Batari Sri agar padi dapat berkembang biak dengan baik,&nbsp; serta mohon kepada Rare Angon agar binatang piaraannya seperti tikus, belalang dan burung serta serangga tidak menganggu tanaman padi. Tempat upacara di hulu dekat pengalapan (inlet) masing-masing petak sawah. Upacara ini dilaksanakan oleh masing-masing karama subak secara individu.</p>\r\n<p style="text-align: justify;">&nbsp;</p>', '', '', '0', '2017-12-01 18:03:16', '2017-12-01 18:03:16', NULL),
(48, '63', '<p style="text-align: justify;">Upacara ini diselenggarakan setalah pada berunmur 42 Hari (: bulan pitung dina) . Upakara yang dipersembahkan diantaranya: canang lengawangi, buratwangi, bantun suyuk. Upacara dipersembahkan kepada Batari Dewi Sri dan iringan beliau para Bhuta Kala agar baliau senantiasa berkenan menjaga keselamatan pertumbuhan tanaman padi. Tempat upacara di hulu petakan sawah, dan dilaksanakan oleh masing-masing warga subak secara individu.</p>\r\n<p style="text-align: justify;">Adakalanya upacara ini dilaksanakan di Pura Bedugul oleh kerama subak secara kolektif, kemudian dilanjutkan ke petakan sawah masing-masing. Upakara yang dipersembahkan diantaranya : banten pemereman, prergembal, suci, saji, peras ajengan santun 14, caru siap brumbun 1.&nbsp;</p>\r\n<p style="text-align: justify;">&nbsp;</p>', '', '', '0', '2017-12-01 18:03:46', '2017-12-01 18:03:46', NULL),
(49, '20', '<p>qTest 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1 Test 1&nbsp;</p>\r\n<p>Yes</p>', '03122017062459bg5-sm.jpg', 'P', '0', '2017-12-02 22:24:59', '2017-12-04 08:43:32', NULL),
(50, '20', '<p>Test 2</p>', '03122017064330bg4-sm.jpg', 'P', '1', '2017-12-02 22:43:30', '2017-12-02 22:44:22', '2017-12-02 22:44:22'),
(51, '20', '<p>Test 2</p>', '03122017064536bg1-sm.jpg', 'P', '1', '2017-12-02 22:45:36', '2017-12-02 22:45:36', NULL),
(52, '20', '', '03122017071903farmer.png', 'P', '2', '2017-12-02 23:19:03', '2017-12-03 00:45:16', NULL),
(53, '20', '', '03122017084551cow.png', 'P', '3', '2017-12-03 00:45:51', '2017-12-03 00:47:54', NULL),
(54, '20', '<p>aaaa</p>', '', '', '4', '2017-12-03 00:46:09', '2017-12-03 00:50:54', NULL),
(55, '20', '<p>Abc</p>', '', '', '5', '2017-12-03 00:52:22', '2017-12-03 00:52:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_nodes`
--

CREATE TABLE `gallery_nodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_node` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_nodes`
--

INSERT INTO `gallery_nodes` (`id`, `source`, `nama`, `id_node`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '03122017120850bg5-sm.jpg', 'Poto121', '1', '2017-12-03 03:55:19', '2017-12-03 04:10:02', '2017-12-03 04:10:02'),
(2, '03122017121018bg5-sm.jpg', 'Photos', '1', '2017-12-03 04:10:18', '2017-12-04 05:55:20', '2017-12-04 05:55:20'),
(3, '03122017121056bg5-sm.jpg', 'Angga', '1', '2017-12-03 04:10:56', '2017-12-04 05:55:27', '2017-12-04 05:55:27'),
(4, '03122017121115bg3-sm.jpg', 'Photos', '1', '2017-12-03 04:11:15', '2017-12-03 04:11:43', '2017-12-03 04:11:43'),
(5, '03122017121137bg1-sm.jpg', 'Photo 4', '1', '2017-12-03 04:11:37', '2017-12-04 05:55:25', '2017-12-04 05:55:25'),
(6, '04122017014147bg5-sm.jpg', 'Test', '1', '2017-12-04 05:41:47', '2017-12-04 05:55:29', '2017-12-04 05:55:29'),
(7, '04122017014154bg5-sm.jpg', 'Test 2', '1', '2017-12-04 05:41:54', '2017-12-04 05:55:30', '2017-12-04 05:55:30'),
(8, '04122017014200bg5-sm.jpg', 'Test 3', '1', '2017-12-04 05:42:00', '2017-12-04 05:55:32', '2017-12-04 05:55:32'),
(9, '04122017014205bg5-sm.jpg', 'Test 4', '1', '2017-12-04 05:42:05', '2017-12-04 05:55:34', '2017-12-04 05:55:34'),
(10, '04122017014211bg5-sm.jpg', 'Test 5', '1', '2017-12-04 05:42:11', '2017-12-04 05:42:11', NULL),
(11, '04122017014704bg4-sm.jpg', 'A', '1', '2017-12-04 05:47:04', '2017-12-04 05:47:04', NULL),
(12, '04122017014715bg2-sm.jpg', 'Sawah 1', '1', '2017-12-04 05:47:15', '2017-12-04 05:47:15', NULL),
(13, '04122017014721bg3-sm.jpg', 'Sawah 12', '1', '2017-12-04 05:47:21', '2017-12-04 05:47:21', NULL),
(14, '04122017014735bg5-sm.jpg', 'Sawah 1', '1', '2017-12-04 05:47:35', '2017-12-04 05:47:35', NULL),
(15, '04122017014741bg5-sm.jpg', 'Sawah 1', '1', '2017-12-04 05:47:41', '2017-12-04 05:47:41', NULL),
(16, '04122017014808bg5-sm.jpg', 'test', '1', '2017-12-04 05:48:08', '2017-12-04 05:48:08', NULL),
(17, '04122017014813bg5-sm.jpg', 'a', '1', '2017-12-04 05:48:13', '2017-12-04 05:48:13', NULL),
(18, '04122017014818bg5-sm.jpg', 'b', '1', '2017-12-04 05:48:18', '2017-12-04 05:48:18', NULL),
(19, '04122017014831bg5-sm.jpg', 'Angga', '1', '2017-12-04 05:48:31', '2017-12-04 05:48:31', NULL),
(20, '04122017014838bg5-sm.jpg', 'b', '1', '2017-12-04 05:48:38', '2017-12-04 05:48:38', NULL),
(21, '04122017014844bg5-sm.jpg', 'ax', '1', '2017-12-04 05:48:44', '2017-12-04 05:48:44', NULL),
(22, '05122017084135bg2-sm.jpg', 'Poto 1', '11', '2017-12-05 00:41:35', '2017-12-05 00:41:51', '2017-12-05 00:41:51');

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
(1, '7', '1', 'Photo 1', '03122017072721bg4-sm.jpg', 'Photo 1', '0', '2017-11-24 10:01:15', '2017-12-04 08:28:00', NULL),
(2, '7', '1', 'Photo 2', '03122017072709bg5-sm.jpg', 'Photo 2', '1', '2017-11-24 10:01:26', '2017-12-04 08:28:04', NULL),
(3, '7', '1', 'Photo 3', '03122017072743bg5-sm.jpg', 'Photo 3', '2', '2017-11-24 10:01:41', '2017-12-04 08:28:16', NULL),
(4, '7', '2', 'Photo a', '03122017072902bg5-sm.jpg', 'photo a', '0', '2017-11-24 10:02:09', '2017-12-04 08:28:21', NULL),
(5, '7', '1', 'A', '04122017042432bg1-sm.jpg', '<p>1</p>', '3', '2017-12-04 08:24:32', '2017-12-04 08:40:50', NULL),
(6, '2', '1', '123456', '04122017044039beratan.jpg', '<p>123</p>', '4', '2017-12-04 08:40:39', '2017-12-04 08:42:46', NULL),
(7, '2', '1', 'AAA', '04122017044613bg4-sm.jpg', '<p>123AAA</p>', '5', '2017-12-04 08:46:13', '2017-12-04 08:46:19', NULL),
(8, '2', '1', 'AaA', '04122017044627beratan.jpg', '', '6', '2017-12-04 08:46:27', '2017-12-04 08:46:54', NULL);

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
(1, '8', '1', 'Video 123', '04122017042923vidio.mp4', 'Video', '0', '2017-11-24 11:10:09', '2017-12-04 08:40:01', NULL),
(2, '7', '1', 'Vid 2', '04122017042937vidio.mp4', 'Vid 2', '1', '2017-11-24 14:54:04', '2017-12-04 08:29:55', NULL),
(3, '2', '1', 'Vid 3', '25112017065609vidio.mp4', 'Vid 3', '2', '2017-11-24 14:56:09', '2017-12-04 08:36:09', NULL),
(4, '1', '1', 'Vid 4', '25112017065618vidio.mp4', 'Vid 4', '3', '2017-11-24 14:56:18', '2017-11-24 14:56:18', NULL),
(5, '2', '1', 'Vid 1', '04122017043823vidio.mp4', '', '4', '2017-12-04 08:38:23', '2017-12-04 08:47:06', NULL),
(6, '2', '1', 'a', '04122017043853vidio.mp4', '', '5', '2017-12-04 08:38:53', '2017-12-04 08:38:53', NULL),
(7, '2', '1', 'acss', '04122017043904vidio.mp4', '', '6', '2017-12-04 08:39:04', '2017-12-04 08:39:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kabupatens`
--

CREATE TABLE `kabupatens` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_kabupaten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kabupatens`
--

INSERT INTO `kabupatens` (`id`, `nama_kabupaten`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Denpasar', '2017-12-03 03:45:48', '2017-12-03 03:45:48', NULL),
(2, 'Gianyar', '2017-12-03 03:45:52', '2017-12-03 03:45:52', NULL),
(3, 'Karangasem', '2017-12-03 03:45:56', '2017-12-03 03:45:56', NULL),
(4, 'Bangli', '2017-12-04 04:08:12', '2017-12-04 04:08:12', NULL),
(5, 'Singaraja', '2017-12-04 04:08:18', '2017-12-04 04:08:18', NULL),
(6, 'Tabanan', '2017-12-04 04:08:29', '2017-12-04 04:08:29', NULL),
(7, 'Jembrana', '2017-12-04 04:08:32', '2017-12-04 04:08:32', NULL),
(8, 'Badung', '2017-12-04 04:08:40', '2017-12-04 04:08:40', NULL);

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
(1, 'Kategori 1', '2017-11-21 09:29:49', '2017-11-21 09:29:49', NULL),
(2, 'Kategori 2', '2017-11-21 09:29:56', '2017-11-21 09:29:56', NULL),
(3, 'Kategori 3', '2017-11-24 10:02:42', '2017-11-24 10:02:42', NULL),
(4, 'Kategori 4', '2017-11-25 15:38:06', '2017-11-25 15:38:06', NULL);

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
(17, '2017_11_22_020249_ubahTabelTopik', 2),
(18, '2017_12_01_065818_create_musiks_table', 3),
(19, '2017_12_02_074401_create_kabupatens_table', 4),
(20, '2017_12_02_074454_create_nodes_table', 4),
(21, '2017_12_02_074503_create_gallery_nodes_table', 4),
(22, '2017_12_02_080704_ubahTableNode', 5),
(23, '2017_12_03_083841_ubahTableDetailTopiks', 6),
(24, '2017_12_03_101536_create_controls_table', 6),
(25, '2017_12_03_132909_ubahTableNodes', 7);

-- --------------------------------------------------------

--
-- Table structure for table `musiks`
--

CREATE TABLE `musiks` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` enum('','background','click') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `musiks`
--

INSERT INTO `musiks` (`id`, `nama`, `source`, `state`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Musik 123', '01122017083300C_Arp_Gamelan01.wav', '', '2017-11-30 15:18:50', '2017-11-30 17:27:55', '2017-11-30 17:27:55'),
(2, 'Musik 2', '01122017072945Gamelan.WAV', '', '2017-11-30 15:29:45', '2017-11-30 15:30:48', '2017-11-30 15:30:48'),
(3, 'Gamelan 1', '01122017092906Gamelan.WAV', 'click', '2017-11-30 15:45:00', '2017-11-30 17:29:06', NULL),
(4, 'Gus Tedja', '01122017082214Gus Teja - Morning Happiness.mp3', 'background', '2017-11-30 16:22:14', '2017-12-03 02:58:27', NULL),
(5, '1', '01122017082302Gus Teja - Morning Happiness.mp3', '', '2017-11-30 16:23:02', '2017-11-30 17:27:52', '2017-11-30 17:27:52'),
(6, 'Test', '01122017082435Gus Teja - Morning Happiness.mp3', '', '2017-11-30 16:24:35', '2017-11-30 17:27:51', '2017-11-30 17:27:51'),
(7, 'Tedha', '01122017082516Gus Teja - Morning Happiness.mp3', '', '2017-11-30 16:25:16', '2017-11-30 17:27:49', '2017-11-30 17:27:49'),
(8, 'Anak Ayam', '01122017092913suara-anak-ayam-rombongan-iburung-com.mp3', '', '2017-11-30 17:29:13', '2017-11-30 17:53:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nodes`
--

CREATE TABLE `nodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_node` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kabupaten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `qr_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `primary_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `koordinat` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nodes`
--

INSERT INTO `nodes` (`id`, `nama_node`, `id_kabupaten`, `description`, `qr_code`, `primary_image`, `created_at`, `updated_at`, `deleted_at`, `koordinat`) VALUES
(1, 'Node 1', '1', '<p>Denpasar Node 1</p>', '', '03122017114650bg5-sm.jpg', '2017-12-03 03:46:50', '2017-12-04 00:34:07', NULL, '34.49292452830189,47.49536178107607'),
(2, 'Node 2', '1', '<p>Ayo</p>', '', '03122017013126bg5-sm.jpg', '2017-12-03 05:31:26', '2017-12-03 05:31:26', NULL, '61.615566037735846,74.95361781076066'),
(3, 'Node 3', '1', '<p>Node 3</p>', '', '03122017013449leftbot.png', '2017-12-03 05:34:49', '2017-12-03 05:34:49', NULL, '34.25707547169811,35.25046382189239'),
(4, 'Node 4', '1', '<p>Desc</p>', '', '03122017013537leftbot.png', '2017-12-03 05:35:37', '2017-12-03 06:34:24', NULL, '65.27122641509435,56.029684601113175'),
(5, 'Bukit Terasering', '8', '<p>Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah Bukit Terasering adalah&nbsp;</p>\r\n<p>Yes ofcourse</p>', '04122017125531bg3-sm.jpg', '04122017125531bg5-sm.jpg', '2017-12-03 05:43:53', '2017-12-05 00:19:44', '2017-12-05 00:19:44', '53.062360801781736,93.03287161463717'),
(6, 'Aaa', '1', '<p>a</p>', '', '04122017120708plant.png', '2017-12-04 04:07:08', '2017-12-04 04:07:08', NULL, '40.153301886792455,29.684601113172544'),
(7, 'ZZZ', '1', '<p>A</p>', '', '04122017120727bg5-sm.jpg', '2017-12-04 04:07:27', '2017-12-04 04:07:27', NULL, '43.69103773584906,45.26901669758813'),
(8, 'Ubud Terasering', '2', '<p>Ubud Terasering</p>', '04122017011036bg5-sm.jpg', '04122017123222bg5-sm.jpg', '2017-12-04 04:32:22', '2017-12-04 05:10:36', NULL, '65.20044543429844,56.065007376052534'),
(9, 'Sawah 1', '1', '<p>Sawah 1 Dsc</p>', '', '05122017070519bg4-sm.jpg', '2017-12-04 23:05:19', '2017-12-04 23:05:19', NULL, '73.55233853006682,30.310144612678403'),
(10, 'Hanya Tulisan', '1', '<p>Hanya Tulisan</p>', '', '', '2017-12-05 00:23:11', '2017-12-05 00:23:11', NULL, '43.04008908685969,23.302018690671837'),
(11, 'Hanya Gambar', '1', '<p>test</p>', '', '05122017082529bg1-sm.jpg', '2017-12-05 00:25:29', '2017-12-05 00:42:13', NULL, '58.29621380846325,30.660550908778735'),
(12, 'test', '1', '<p>Test</p>', '', '05122017082759bg4-sm.jpg', '2017-12-05 00:27:59', '2017-12-05 00:27:59', NULL, '47.16035634743875,37.84387997883546');

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
(1, 'Pulau Bali', '22112017021429bg1-sm.jpg', '02122017094603farmer.png', '0', '0', '2017-11-21 10:14:29', '2017-12-03 22:39:12', '2017-12-03 22:39:12'),
(2, 'Sistem Irigasi Subak', '05122017073829bg1-sm.jpg', '02122017094603farmer.png', '0', '0', '2017-11-21 10:15:03', '2017-12-04 23:38:29', NULL),
(7, 'Pencarian dan Distribusi Air Irigasi', '26112017073432bg1-sm.jpg', '02122017094603farmer.png', '0', '1', '2017-11-25 15:34:32', '2017-12-03 22:39:12', NULL),
(8, 'Pemeliharaan Saluran Irigasi', '26112017124108bg3-sm.jpg', '02122017094603farmer.png', '0', '2', '2017-11-25 20:41:08', '2017-12-03 22:39:12', NULL),
(9, 'Mobilisasi Sumber Daya', '26112017124132bg5-sm.jpg', '02122017094603farmer.png', '0', '3', '2017-11-25 20:41:32', '2017-12-03 22:39:12', NULL),
(10, 'Penanganan Konflik', '26112017124148bg4-sm.jpg', '02122017094603farmer.png', '0', '4', '2017-11-25 20:41:48', '2017-12-03 22:39:12', NULL),
(11, 'Kegiatan Upacara/Ritual', '26112017124232bg3-sm.jpg', '02122017094603farmer.png', '0', '5', '2017-11-25 20:42:32', '2017-12-03 22:39:12', NULL),
(12, 'Peralatan Warga Subak', '26112017124243bg2-sm.jpg', '02122017094603farmer.png', '0', '6', '2017-11-25 20:42:43', '2017-12-03 22:39:12', NULL),
(13, 'Sub Topik 1', '26112017124718bg1-sm.jpg', '02122017094603farmer.png', '1', '0', '2017-11-25 20:47:18', '2017-12-01 16:10:41', '2017-12-01 16:10:41'),
(14, 'Sub Topik 2', '26112017124738bg1-sm.jpg', '02122017094603farmer.png', '1', '0', '2017-11-25 20:47:38', '2017-12-01 16:10:43', '2017-12-01 16:10:43'),
(15, 'Sub Topik 3', '26112017124814bg4-sm.jpg', '02122017094603farmer.png', '1', '0', '2017-11-25 20:48:14', '2017-12-01 16:10:46', '2017-12-01 16:10:46'),
(16, 'Sub Topik 4', '26112017124928bg5-sm.jpg', '02122017094603farmer.png', '1', '0', '2017-11-25 20:49:28', '2017-12-01 16:10:49', '2017-12-01 16:10:49'),
(17, 'Sub Topik 5', '26112017124942bg4-sm.jpg', '02122017094603farmer.png', '1', '0', '2017-11-25 20:49:42', '2017-12-01 16:10:52', '2017-12-01 16:10:52'),
(18, 'Sub Topik 6', '26112017125006bg2-sm.jpg', '02122017094603farmer.png', '1', '0', '2017-11-25 20:50:06', '2017-12-01 16:10:56', '2017-12-01 16:10:56'),
(19, 'Sumber Air', '02122017081643bg1.jpg', '02122017094603farmer.png', '2', '0', '2017-12-01 16:16:43', '2017-12-01 16:20:44', '2017-12-01 16:20:44'),
(20, 'Gambaran Umum', '02122017082747bg1.jpg', '02122017094603farmer.png', '2', '0', '2017-12-01 16:27:47', '2017-12-01 16:27:47', NULL),
(21, 'Gunung/Bukit', '02122017082823bg1.jpg', '02122017094603farmer.png', '2', '2', '2017-12-01 16:28:23', '2017-12-01 16:32:56', NULL),
(22, 'Sumber Air', '02122017082859bg1.jpg', '02122017094603farmer.png', '2', '1', '2017-12-01 16:28:59', '2017-12-01 16:33:04', NULL),
(23, 'Bangunan', '02122017082924bg1.jpg', '02122017094603farmer.png', '2', '3', '2017-12-01 16:29:24', '2017-12-01 16:33:21', NULL),
(24, 'Saluran Air', '02122017082956bg1.jpg', '02122017094603farmer.png', '2', '4', '2017-12-01 16:29:56', '2017-12-01 16:33:33', NULL),
(25, 'Telabah', '02122017083352bg1.jpg', '02122017094603farmer.png', '2', '5', '2017-12-01 16:33:52', '2017-12-01 16:33:52', NULL),
(26, 'Tembuku', '02122017083416bg1.jpg', '02122017094603farmer.png', '2', '6', '2017-12-01 16:34:16', '2017-12-01 16:34:16', NULL),
(27, 'Pangkung', '02122017083435bg1.jpg', '02122017094603farmer.png', '2', '7', '2017-12-01 16:34:35', '2017-12-01 16:34:35', NULL),
(28, 'Sistem Distribusi Air Irigasi', '02122017083919bg1.jpg', '02122017094603farmer.png', '7', '0', '2017-12-01 16:39:19', '2017-12-01 16:39:19', NULL),
(29, 'Tektek Sebagai Ukuran Air Irigasi', '02122017084132bg1.jpg', '02122017094603farmer.png', '7', '1', '2017-12-01 16:41:32', '2017-12-01 16:41:32', NULL),
(30, 'Sistem One Inlet dan One Outlet', '02122017084148bg1-sm.jpg', '02122017094603farmer.png', '7', '2', '2017-12-01 16:41:48', '2017-12-01 16:41:48', NULL),
(31, 'Sistem Numbak dan Ngerirun', '02122017084207bg1.jpg', '02122017094603farmer.png', '7', '3', '2017-12-01 16:42:07', '2017-12-01 16:42:38', NULL),
(32, 'Bangunan Irigasi dan Pelengkap', '02122017084257bg1.jpg', '02122017094603farmer.png', '7', '4', '2017-12-01 16:42:57', '2017-12-01 16:42:57', NULL),
(33, 'Kempelan', '02122017085304bg1.jpg', '02122017094603farmer.png', '8', '0', '2017-12-01 16:53:04', '2017-12-01 16:53:04', NULL),
(34, 'Matelik', '02122017085600bg1.jpg', '02122017094603farmer.png', '8', '1', '2017-12-01 16:56:00', '2017-12-01 16:56:00', NULL),
(35, 'Ngampad atau Nampadin', '02122017085756bg4-sm.jpg', '02122017094603farmer.png', '8', '2', '2017-12-01 16:57:56', '2017-12-01 16:57:56', NULL),
(36, 'Nabdab Yeh', '02122017085823bg4-sm.jpg', '02122017094603farmer.png', '8', '3', '2017-12-01 16:58:23', '2017-12-01 16:58:23', NULL),
(37, 'Nyilih Yeh', '02122017085844bg4-sm.jpg', '02122017094603farmer.png', '8', '4', '2017-12-01 16:58:44', '2017-12-01 16:58:44', NULL),
(38, 'Magilihan atau Megilir', '02122017085903bg4-sm.jpg', '02122017094603farmer.png', '8', '5', '2017-12-01 16:59:03', '2017-12-01 16:59:03', NULL),
(39, 'Mobilisasi Sumberdaya Manusia', '02122017090106bg3-sm.jpg', '02122017094603farmer.png', '9', '0', '2017-12-01 17:01:06', '2017-12-01 17:01:06', NULL),
(40, 'Mobilisasi Sumber Dana', '02122017090127bg3-sm.jpg', '02122017094603farmer.png', '9', '1', '2017-12-01 17:01:27', '2017-12-01 17:01:27', NULL),
(41, 'Mobilisasi Sumberdaya Alam', '02122017090146bg3-sm.jpg', '02122017094603farmer.png', '9', '2', '2017-12-01 17:01:46', '2017-12-01 17:01:46', NULL),
(42, 'Struktur Organisasi Subak Sederhana', '02122017090754bg2-sm.jpg', '02122017094603farmer.png', '10', '0', '2017-12-01 17:07:54', '2017-12-01 17:07:54', NULL),
(43, 'Struktur Organisasi Subak Kompleks', '02122017090912bg2-sm.jpg', '02122017094603farmer.png', '10', '1', '2017-12-01 17:09:12', '2017-12-01 17:09:12', NULL),
(44, 'Sangkep', '02122017090941bg2-sm.jpg', '02122017094603farmer.png', '10', '2', '2017-12-01 17:09:41', '2017-12-01 17:09:41', NULL),
(45, 'Perlengkapan pengelolaan organisasi subak', '02122017092011bg4-sm.jpg', '02122017094603farmer.png', '12', '0', '2017-12-01 17:20:11', '2017-12-01 17:20:11', NULL),
(46, 'Peralatan untuk membuka hutan/semak untuk lahan pertanian baru', '02122017092036bg4-sm.jpg', '02122017094603farmer.png', '12', '1', '2017-12-01 17:20:36', '2017-12-01 17:20:36', NULL),
(47, 'Peralatan dan pedoman membuat terowongan (aungan) dalam upaya membangun jaringan irigasi', '02122017092053bg4-sm.jpg', '02122017094603farmer.png', '12', '2', '2017-12-01 17:20:53', '2017-12-01 17:20:53', NULL),
(48, 'Peralatan mengolah lahan pertanian', '02122017092119bg4-sm.jpg', '02122017094603farmer.png', '12', '3', '2017-12-01 17:21:19', '2017-12-01 17:21:19', NULL),
(49, 'Peralatan mulai dari pembibitan, menanam/ nandur sampai padi penjelang panen', '02122017092138bg4-sm.jpg', '02122017094603farmer.png', '12', '4', '2017-12-01 17:21:38', '2017-12-01 17:21:38', NULL),
(50, 'Peralatan untuk memanen padi sampai menyimpan ke dalam lumbung', '02122017092201bg4-sm.jpg', '02122017094603farmer.png', '12', '5', '2017-12-01 17:22:01', '2017-12-01 17:22:01', NULL),
(51, 'Peralatan menumbuk padi sampai menjadi beras', '02122017092223bg4-sm.jpg', '02122017094603farmer.png', '12', '6', '2017-12-01 17:22:23', '2017-12-01 17:22:23', NULL),
(52, 'Peralatan menangkap berbagai jenis ikan yang hidup di sawah dan sungai', '02122017092240bg4-sm.jpg', '02122017094603farmer.png', '12', '7', '2017-12-01 17:22:40', '2017-12-01 17:22:40', NULL),
(53, 'Upacara Mapag Toyo', '02122017093739bg5-sm.jpg', '02122017094603farmer.png', '0', '8', '2017-12-01 17:37:39', '2017-12-01 17:37:49', '2017-12-01 17:37:49'),
(54, 'Upacara Mapag Toyo', '02122017093802bg5-sm.jpg', '02122017094603farmer.png', '11', '0', '2017-12-01 17:38:02', '2017-12-01 17:38:02', NULL),
(55, 'Upacara Ngendagin', '02122017093833bg5-sm.jpg', '02122017094603farmer.png', '11', '1', '2017-12-01 17:38:33', '2017-12-01 17:38:33', NULL),
(56, 'Upacara Pangawiwit/Ngurit', '02122017093904bg5-sm.jpg', '02122017094603farmer.png', '11', '2', '2017-12-01 17:39:04', '2017-12-01 17:39:04', NULL),
(57, 'Upacara Nandur/Mamula', '02122017093930bg3-sm.jpg', '02122017094603farmer.png', '11', '3', '2017-12-01 17:39:30', '2017-12-01 17:39:30', NULL),
(58, 'Upacara Ngulapin', '02122017093944bg3-sm.jpg', '02122017094603farmer.png', '11', '4', '2017-12-01 17:39:44', '2017-12-01 17:39:44', NULL),
(59, 'Nuasen', '02122017093957bg3-sm.jpg', '02122017094603farmer.png', '11', '5', '2017-12-01 17:39:57', '2017-12-01 17:39:57', NULL),
(60, 'Upacara Ngerorasin', '02122017094016bg3-sm.jpg', '02122017094603farmer.png', '11', '6', '2017-12-01 17:40:16', '2017-12-01 17:40:16', NULL),
(61, 'Upacara Mubuhin', '02122017094036bg3-sm.jpg', '02122017094603farmer.png', '11', '7', '2017-12-01 17:40:36', '2017-12-01 17:40:36', NULL),
(62, 'Upacara Ngebulanin/Nyasihin/Neduh', '02122017094101bg3-sm.jpg', '02122017094603farmer.png', '11', '8', '2017-12-01 17:41:01', '2017-12-01 17:41:01', NULL),
(63, 'Upacara Tutug Kambuhan/ngelanus/Nyungsung', '02122017094120bg3-sm.jpg', '02122017094603farmer.png', '11', '9', '2017-12-01 17:41:20', '2017-12-01 17:41:20', NULL),
(64, 'Upacara Paneduhan', '02122017094136bg3-sm.jpg', '02122017094603farmer.png', '11', '10', '2017-12-01 17:41:36', '2017-12-01 17:41:36', NULL),
(65, 'Upacara miseh/ngiseh', '02122017094149bg3-sm.jpg', '02122017094603farmer.png', '11', '10', '2017-12-01 17:41:49', '2017-12-01 17:41:49', NULL),
(66, 'Upacara Biukukung', '02122017094203bg3-sm.jpg', '02122017094603farmer.png', '11', '10', '2017-12-01 17:42:03', '2017-12-01 17:42:03', NULL),
(67, 'Upacara Nyiwa Sraya', '02122017094219bg3-sm.jpg', '02122017094603farmer.png', '11', '10', '2017-12-01 17:42:19', '2017-12-01 17:42:19', NULL),
(68, 'Upacara Ngusaba, Ngusaba Nini', '02122017094237bg3-sm.jpg', '02122017094603farmer.png', '11', '10', '2017-12-01 17:42:37', '2017-12-01 17:42:37', NULL),
(69, 'Nyangket, Ngadegang Dewa Nini / Mantenin Padi di Carik', '02122017094250bg3-sm.jpg', '02122017094603farmer.png', '11', '10', '2017-12-01 17:42:50', '2017-12-01 17:42:50', NULL),
(70, 'Upacara Manyi /Ngampung', '02122017094309bg3-sm.jpg', '02122017094603farmer.png', '11', '10', '2017-12-01 17:43:09', '2017-12-01 17:43:09', NULL),
(71, 'Upacara Nyaag', '02122017094331bg3-sm.jpg', '02122017094603farmer.png', '11', '10', '2017-12-01 17:43:31', '2017-12-01 17:43:31', NULL),
(72, 'Upacara Mantenin di Lumbung', '02122017094346bg3-sm.jpg', '02122017094603farmer.png', '11', '10', '2017-12-01 17:43:46', '2017-12-01 17:43:46', NULL),
(73, 'Upacara Mralina Dewi Sri', '02122017094400bg3-sm.jpg', '02122017094603farmer.png', '11', '10', '2017-12-01 17:44:00', '2017-12-01 17:44:00', NULL),
(74, 'Nangluk Marana', '02122017094424bg3-sm.jpg', '02122017094603farmer.png', '11', '10', '2017-12-01 17:44:24', '2017-12-01 17:44:24', NULL),
(75, 'Pakelem', '02122017094440bg3-sm.jpg', '02122017094603farmer.png', '11', '10', '2017-12-01 17:44:40', '2017-12-01 17:44:40', NULL),
(76, 'Piodalan', '02122017094455bg3-sm.jpg', '02122017094603farmer.png', '11', '16', '2017-12-01 17:44:55', '2017-12-01 18:04:19', NULL),
(77, 'Aci Sarintahun', '02122017094511bg3-sm.jpg', '02122017094603farmer.png', '11', '10', '2017-12-01 17:45:11', '2017-12-01 17:45:11', NULL),
(78, 'Upacara Tingkat Petani', '02122017094529bg3-sm.jpg', '02122017094603farmer.png', '11', '10', '2017-12-01 17:45:29', '2017-12-01 18:04:29', NULL),
(79, 'Upacara Tingkat Subak dan Danau', '02122017094546bg3-sm.jpg', '02122017094603farmer.png', '11', '12', '2017-12-01 17:45:46', '2017-12-01 18:04:31', NULL),
(80, 'coba', '03122017055326bg4-sm.jpg', '03122017055326farmer.png', '0', '7', '2017-12-02 21:53:26', '2017-12-03 22:39:12', NULL),
(81, 'Tops 1', '', '', '0', '8', '2017-12-04 23:31:03', '2017-12-04 23:31:31', NULL),
(82, 'Tops 2', '', '', '2', '8', '2017-12-04 23:31:51', '2017-12-04 23:31:51', NULL),
(83, 'Tops 22', '', '', '2', '9', '2017-12-04 23:32:30', '2017-12-04 23:32:48', NULL);

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
(1, 'I Gede Angga Purnajiwa Arimbawa', 'arimbawaangga@gmail.com', '$2y$10$paOqE9tw3uE6OWStFv4FlO8z1PEF.ijiLxPW.PcJLFUvGYabfNGhO', 'g1AsV7vZUu3SafMODRz4x05boyJa2ckZhkjlPXsj5Cy9RUpC1eDNbbLrXSij', '2017-11-21 17:17:56', '2017-11-21 17:17:56', NULL),
(2, 'subak', 'subak@gmail.com', '$2y$10$R6iV8evDkKDtDJi7DQXb3Okufj1T2NcuPVVk2J7G9knkw/7j7Z0gK', '5Pf0MYmg8MCPhTXqXZ0gqAEtO7CMRNBj1zKFxiiRJTXbzqn050iU9fnXyrRA', '2017-12-04 23:10:56', '2017-12-04 23:10:56', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `controls`
--
ALTER TABLE `controls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_topiks`
--
ALTER TABLE `detail_topiks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_nodes`
--
ALTER TABLE `gallery_nodes`
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
-- Indexes for table `kabupatens`
--
ALTER TABLE `kabupatens`
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
-- Indexes for table `musiks`
--
ALTER TABLE `musiks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nodes`
--
ALTER TABLE `nodes`
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
-- AUTO_INCREMENT for table `controls`
--
ALTER TABLE `controls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `detail_topiks`
--
ALTER TABLE `detail_topiks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `gallery_nodes`
--
ALTER TABLE `gallery_nodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `gallery_photos`
--
ALTER TABLE `gallery_photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `gallery_videos`
--
ALTER TABLE `gallery_videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `kabupatens`
--
ALTER TABLE `kabupatens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `musiks`
--
ALTER TABLE `musiks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `nodes`
--
ALTER TABLE `nodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `topiks`
--
ALTER TABLE `topiks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
