-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 03, 2025 at 12:22 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `render`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint UNSIGNED NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maps` text COLLATE utf8mb4_unicode_ci,
  `facebook` text COLLATE utf8mb4_unicode_ci,
  `twitter` text COLLATE utf8mb4_unicode_ci,
  `instagram` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `desc`, `phone`, `email`, `maps`, `facebook`, `twitter`, `instagram`, `created_at`, `updated_at`) VALUES
(1, 'Render adalah perusahaan yang bergerak di bidang digital printing, didirikan pada tahun 2006. Sejak awal berdirinya, perusahaan ini dipimpin oleh Bapak Rampi Yusuf S,Kom.,M.T. Dengan komitmen untuk menyediakan layanan cetak digital berkualitas tinggi, Render telah melayani berbagai kebutuhan pelanggan, mulai dari kebutuhan personal hingga bisnis. \r\n\r\nCV. Render Tech Production memulai langkah usahanya pada tanggal 31 September 2006, dengan nama awal Render Studio. Pada masa itu, perusahaan fokus pada layanan cetak foto dan perekaman video, menggunakan peralatan sederhana dan operasional pertama dilakukan di sebuah ruangan kecil berukuran 4x5 meter, namun dengan semangat yang besar langkah ini menjadi awal untuk berkembang dan telah menjadi pondasi utama perusahaan. Memasuki tahun 2010, perusahaan melakukan langkah besar dengan mengganti nama menjadi Render Digital Printing, sebagai simbol transformasi layanan menuju industri percetakan digital.', '085394482010', 'renderstudiogto@gmail.com', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3958.456543210!2d110.4145656789!3d-7.315432156!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e708b1234567890%3A0xa1b2c3d4e5f6g7h8!2sRENDER%20Digital%20Printing!5e0!3m2!1sid!2sid!4v1708001234567!5m2!1sid!2sid', 'Render Printing Gorontalo', 'render', 'render.production__', '2024-12-17 00:55:29', '2024-12-17 01:49:03');

-- --------------------------------------------------------

--
-- Table structure for table `catalogs`
--

CREATE TABLE `catalogs` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `fabric` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catalogs`
--

INSERT INTO `catalogs` (`id`, `name`, `slug`, `category_id`, `description`, `image`, `price`, `stock`, `fabric`, `created_at`, `updated_at`) VALUES
(1, 'Rompi V2/vest lapangan 4 saku_costum', 'rompi-v2vest-lapangan-4-saku-costum', 2, 'Rompi V2/vest lapangan 4 saku_costum', '1733395743-64-rompi-v2vest-lapangan-4-saku-costum.jpg', 150000, 50, '-', '2024-12-05 03:49:03', '2024-12-05 03:49:03'),
(2, 'Rompi V2/vest lapangan 2 saku_costum', 'rompi-v2vest-lapangan-2-saku-costum', 2, 'Rompi V2/vest lapangan 2 saku_costum\r\nBeragam warna\r\nModel rompi lapangan zipper', '1733395884-2-rompi-v2vest-lapangan-2-saku-costum.jpg', 150000, 50, '-', '2024-12-05 03:51:24', '2024-12-05 03:51:24'),
(3, 'PDL pakaian dinas lapangan/kemeja kerja_costum', 'pdl-pakaian-dinas-lapangankemeja-kerja-costum', 2, 'PDL pakaian dinas lapangan/kemeja kerja_costum\r\nbanyak pilihan warna\r\nbahan american drill\r\nbisa bordir nama, logo, dll\r\ncostum chat admin', '1733396136-71-pdl-pakaian-dinas-lapangankemeja-kerja-costum.jpg', 40, 200000, 'American Drill', '2024-12-05 03:55:36', '2024-12-05 03:55:36'),
(4, 'Paket 1 SEMINAR KIT_(totebag,tumbler suhu,sertifikat,id card,notebook,pulpen)', 'paket-1-seminar-kit-totebagtumbler-suhusertifikatid-cardnotebookpulpen', 3, 'Paket 1 SEMINAR KIT_(totebag,tumbler suhu,sertifikat,id card,notebook,pulpen)\r\nsatu paket sudah berisi 6 item\r\ncostum dm admin', '1733396672-61-paket-1-seminar-kit-totebagtumbler-suhusertifikatid-cardnotebookpulpen.jpg', 0, 100, '-', '2024-12-05 04:04:32', '2024-12-05 04:04:32'),
(5, 'Totebag Canvas_Costum', 'totebag-canvas-costum', 4, 'Totebag Canvas_Costum\r\npilhan warna\r\nCostum dm admin', '1733397191-89-totebag-canvas-costum.jpg', 45000, 50, 'Canvas', '2024-12-05 04:13:11', '2024-12-05 04:13:11'),
(6, 'Paket 2 SEMINAR KIT_(totebag,tumbler set,pin costum,id card,notebook,pulpen)', 'paket-2-seminar-kit-totebagtumbler-setpin-costumid-cardnotebookpulpen', 3, 'Paket 2 SEMINAR KIT_(totebag,tumbler set,pin costum,id card,notebook,pulpen)', '1733397823-13-paket-2-seminar-kit-totebagtumbler-setpin-costumid-cardnotebookpulpen.jpg', 100000, 100, '-', '2024-12-05 04:23:43', '2024-12-05 04:23:43'),
(7, 'Paket 3 SEMINAR KIT_(totebag,tumbler cangkir,id card, sertifikat,notebook,pulpen)', 'paket-3-seminar-kit-totebagtumbler-cangkirid-card-sertifikatnotebookpulpen', 3, 'Paket 3 SEMINAR KIT_(totebag,tumbler cangkir,id card, sertifikat,notebook,pulpen)', '1733398158-98-paket-3-seminar-kit-totebagtumbler-cangkirid-card-sertifikatnotebookpulpen.jpg', 100000, 100, '-', '2024-12-05 04:24:58', '2024-12-05 04:29:18'),
(8, 'Paket 4 SEMINAR KIT_(totebag, tas costum,tumbler set,id card,sertifikat, notebook,pulpen)', 'paket-4-seminar-kit-totebag-tas-costumtumbler-setid-cardsertifikat-notebookpulpen', 3, 'Paket 4 SEMINAR KIT_(totebag, tas costum,tumbler set,id card,sertifikat, notebook,pulpen)\r\nchat admin', '1733398074-43-paket-4-seminar-kit-totebag-tas-costumtumbler-setid-cardsertifikat-notebookpulpen.jpg', 100000, 100, '-', '2024-12-05 04:27:54', '2024-12-05 04:27:54'),
(9, 'Paket 5 SEMINAR KIT_(totebag,payung,tumbler egg,buku agenda, kalender)', 'paket-5-seminar-kit-totebagpayungtumbler-eggbuku-agenda-kalender', 3, 'Paket 5 SEMINAR KIT_(totebag,payung,tumbler egg,buku agenda, kalender)', '1733398283-80-paket-5-seminar-kit-totebagpayungtumbler-eggbuku-agenda-kalender.jpg', 100000, 100, '-', '2024-12-05 04:31:23', '2024-12-05 04:31:23'),
(10, 'Paket 6 SEMINAR KIT_(kaos, totebag,tumbler egg, id card, notebook, pulpen)', 'paket-6-seminar-kit-kaos-totebagtumbler-egg-id-card-notebook-pulpen', 3, 'Paket 6 SEMINAR KIT_(kaos, totebag,tumbler egg, id card, notebook, pulpen)', '1733398386-25-paket-6-seminar-kit-kaos-totebagtumbler-egg-id-card-notebook-pulpen.jpg', 100000, 100, '-', '2024-12-05 04:33:06', '2024-12-05 04:33:06'),
(11, 'Paket 7 SEMINAR KIT_(totebag,tumbler,gantungan kunci, kipas)', 'paket-7-seminar-kit-totebagtumblergantungan-kunci-kipas', 3, 'Paket 7 SEMINAR KIT_(totebag,tumbler,gantungan kunci, kipas)', '1733398683-73-paket-7-seminar-kit-totebagtumblergantungan-kunci-kipas.jpg', 100000, 100, '-', '2024-12-05 04:38:03', '2024-12-05 04:38:03'),
(12, 'Paket 8 SEMINAR KIT_(totebag,tumbler egg)', 'paket-8-seminar-kit-totebagtumbler-egg', 3, 'Paket 8 SEMINAR KIT_(totebag,tumbler egg)', '1733398730-91-paket-8-seminar-kit-totebagtumbler-egg.jpg', 100000, 100, '-', '2024-12-05 04:38:50', '2024-12-05 04:38:50'),
(13, 'Jaket Versity_bahan cotton pleece_DTF/BORDIR_OUTDOR_PREMIUM', 'jaket-versity-bahan-cotton-pleece-dtfbordir-outdor-premium', 2, 'Jaket Versity_bahan cotton pleece_DTF/BORDIR_OUTDOR_PREMIUM', '1733398950-47-jaket-versity-bahan-cotton-pleece-dtfbordir-outdor-premium.jpg', 150000, 200, 'Cotton Pleece', '2024-12-05 04:42:30', '2024-12-05 04:42:30'),
(14, 'Kaos Costum_SABLON DESAIN SUKA-SUKA_all size, banyak warna.', 'kaos-costum-sablon-desain-suka-suka-all-size-banyak-warna', 2, 'Kaos Costum_SABLON DESAIN SUKA-SUKA_all size, banyak warna.', '1733399113-5-kaos-costum-sablon-desain-suka-suka-all-size-banyak-warna.jpg', 85000, 100, NULL, '2024-12-05 04:45:13', '2024-12-05 04:45:13'),
(15, 'Kaos Polo Costum_SABLON DESAIN SUKA-SUKA_all size, banyak warna.', 'kaos-polo-costum-sablon-desain-suka-suka-all-size-banyak-warna', 2, 'Kaos Polo Costum_SABLON DESAIN SUKA-SUKA_all size, banyak warna.', '1733399588-38-kaos-polo-costum-sablon-desain-suka-suka-all-size-banyak-warna.jpg', 100000, 100, NULL, '2024-12-05 04:53:08', '2024-12-05 04:53:08'),
(16, 'Kaos Costum lengan panjang_SABLON DESAIN SUKA-SUKA_all size, banyak warna.', 'kaos-costum-lengan-panjang-sablon-desain-suka-suka-all-size-banyak-warna', 2, NULL, '1733400005-3-kaos-costum-lengan-panjang-sablon-desain-suka-suka-all-size-banyak-warna.jpg', 85000, 0, NULL, '2024-12-05 05:00:05', '2024-12-05 05:00:05'),
(17, 'Kaos Costum lengan pendek_SABLON DESAIN SUKA-SUKA_all size, banyak warna.', 'kaos-costum-lengan-pendek-sablon-desain-suka-suka-all-size-banyak-warna', 2, 'Kaos Costum lengan pendek_SABLON DESAIN SUKA-SUKA_all size, banyak warna.', '1733400165-86-kaos-costum-lengan-pendek-sablon-desain-suka-suka-all-size-banyak-warna.jpg', 75000, 60, NULL, '2024-12-05 05:02:45', '2024-12-05 05:02:45'),
(18, 'Totebag Spunbond_Costum Desain_Sablon DTF', 'totebag-spunbond-costum-desain-sablon-dtf', 4, 'Totebag Spunbond_Costum Desain_Sablon DTF', '1733400743-84-totebag-spunbond-costum-desain-sablon-dtf.jpg', 35000, 50, 'Spunbond', '2024-12-05 05:12:23', '2024-12-05 05:12:23'),
(19, 'Totebag Spunbond Oval_Costum Desain_Sablon DTF', 'totebag-spunbond-oval-costum-desain-sablon-dtf', 4, NULL, '1733400866-4-totebag-spunbond-oval-costum-desain-sablon-dtf.jpg', 35000, 50, 'Spunbond', '2024-12-05 05:14:26', '2024-12-05 05:14:26'),
(20, 'Paper Bag_Costum Desainn', 'paper-bag-costum-desainn', 4, 'Costum desai chat admin', '1733400966-71-paper-bag-costum-desainn.jpg', 45000, 0, NULL, '2024-12-05 05:16:06', '2024-12-05 05:16:06'),
(21, 'Tas Ransel_Costum Desain_Sablon DTF', 'tas-ransel-costum-desain-sablon-dtf', 4, NULL, '1733401123-28-tas-ransel-costum-desain-sablon-dtf.jpg', 200000, 70, NULL, '2024-12-05 05:18:43', '2024-12-05 05:18:43'),
(22, 'HandBag_Costum Desain_DTF', 'handbag-costum-desain-dtf', 4, NULL, '1733401201-61-handbag-costum-desain-dtf.jpg', 100000, 0, NULL, '2024-12-05 05:20:01', '2024-12-05 05:20:01'),
(23, 'HandBag mini_Costum Desain_DTF', 'handbag-mini-costum-desain-dtf', 4, NULL, '1733401411-2-handbag-mini-costum-desain-dtf.jpg', 100000, 0, NULL, '2024-12-05 05:23:32', '2024-12-05 05:23:32'),
(24, 'Slinbag_Costum Desain_DTF', 'slinbag-costum-desain-dtf', 4, NULL, '1733401498-88-slinbag-costum-desain-dtf.jpg', 100000, 0, NULL, '2024-12-05 05:24:58', '2024-12-05 05:24:58');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_images`
--

CREATE TABLE `catalog_images` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catalog_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catalog_images`
--

INSERT INTO `catalog_images` (`id`, `image`, `catalog_id`, `created_at`, `updated_at`) VALUES
(1, '1733395743-50-rompi-v2vest-lapangan-4-saku-costum.jpg', 1, '2024-12-05 03:49:03', '2024-12-05 03:49:03'),
(2, '1733395884-1-rompi-v2vest-lapangan-2-saku-costum.jpg', 2, '2024-12-05 03:51:24', '2024-12-05 03:51:24'),
(3, '1733396136-38-pdl-pakaian-dinas-lapangankemeja-kerja-costum.jpg', 3, '2024-12-05 03:55:36', '2024-12-05 03:55:36'),
(4, '1733396672-40-paket-1-seminar-kit-totebagtumbler-suhusertifikatid-cardnotebookpulpen.jpg', 4, '2024-12-05 04:04:32', '2024-12-05 04:04:32');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'APPAREL', 'apparel', '2024-12-05 03:41:14', '2024-12-09 22:56:05'),
(3, 'SEMINAR KIT', 'seminar-kit', '2024-12-05 03:57:31', '2024-12-05 03:57:31'),
(4, 'MERCHANDISE', 'merchandise', '2024-12-05 04:05:23', '2024-12-09 22:51:12'),
(5, 'PRINTING', 'printing', '2024-12-09 22:55:49', '2024-12-09 22:55:49');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_information` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`id`, `title`, `link_image`, `link_information`, `source`, `created_at`, `updated_at`) VALUES
(2, 'Render Production Bangun Gedung Baru', 'https://lookaside.fbsbx.com/lookaside/crawler/media/?media_id=103911891722854', 'https://hargo.co.id/berita/render-tech-production-bangun-gedung-di-bone-bolango/', 'Hargo.co.id', '2025-01-03 02:21:00', '2025-01-03 02:21:00');

-- --------------------------------------------------------

--
-- Table structure for table `main_sliders`
--

CREATE TABLE `main_sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `main_sliders`
--

INSERT INTO `main_sliders` (`id`, `title`, `sub_title`, `image`, `link`, `created_at`, `updated_at`) VALUES
(3, 'ffvf', NULL, '1735888806.jpg', NULL, '2025-01-03 00:20:06', '2025-01-03 00:20:06'),
(4, 'render', NULL, '1735888903.jpg', NULL, '2025-01-03 00:21:43', '2025-01-03 00:21:43');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_10_14_040953_create_categories_table', 1),
(7, '2023_10_19_061632_create_catalogs_table', 1),
(8, '2023_10_19_062659_create_catalog_images_table', 1),
(9, '2023_10_22_083614_create_videos_table', 1),
(10, '2023_10_22_083629_create_information_table', 1),
(11, '2023_10_23_032111_create_main_sliders_table', 1),
(12, '2023_10_23_032132_create_review_sliders_table', 1),
(13, '2023_10_23_235603_create_about_us_table', 1),
(14, '2023_10_24_090441_create_second_review_sliders_table', 1);

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
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review_sliders`
--

CREATE TABLE `review_sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `second_review_sliders`
--

CREATE TABLE `second_review_sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$4nWjMFszimURBssGvM1.rudYGXPVa.OOzGTdysc7emMeNj8bOhGLi', NULL, '2024-12-05 03:28:15', '2024-12-05 03:28:15');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_video` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `link_video`, `created_at`, `updated_at`) VALUES
(1, 'render', 'https://www.youtube.com/embed/qGQIy5I6D3s', '2025-01-03 02:09:22', '2025-01-03 02:09:22'),
(3, 'Anniv YNCI Bonbol', 'https://www.youtube.com/embed/hwccQuEBLsA', '2025-01-03 02:12:12', '2025-01-03 02:12:12'),
(4, 'Instalasi sirine mobil samkel', 'https://www.youtube.com/embed/H2RM0SOtqZs', '2025-01-03 02:13:33', '2025-01-03 02:13:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalogs`
--
ALTER TABLE `catalogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalogs_category_id_foreign` (`category_id`);

--
-- Indexes for table `catalog_images`
--
ALTER TABLE `catalog_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalog_images_catalog_id_foreign` (`catalog_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_sliders`
--
ALTER TABLE `main_sliders`
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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `review_sliders`
--
ALTER TABLE `review_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_review_sliders`
--
ALTER TABLE `second_review_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `catalogs`
--
ALTER TABLE `catalogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `catalog_images`
--
ALTER TABLE `catalog_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `main_sliders`
--
ALTER TABLE `main_sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review_sliders`
--
ALTER TABLE `review_sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `second_review_sliders`
--
ALTER TABLE `second_review_sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `catalogs`
--
ALTER TABLE `catalogs`
  ADD CONSTRAINT `catalogs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_images`
--
ALTER TABLE `catalog_images`
  ADD CONSTRAINT `catalog_images_catalog_id_foreign` FOREIGN KEY (`catalog_id`) REFERENCES `catalogs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD CONSTRAINT `password_resets_ibfk_1` FOREIGN KEY (`email`) REFERENCES `password_reset_tokens` (`email`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
