-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2020 at 06:14 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `filepath` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `body`, `filepath`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Qui et quo accusamus quaerat fugit.', 'Blanditiis quisquam quasi totam occaecati minima facere. Nihil vitae enim nobis accusamus sed et doloribus. A vel nostrum tempore consequuntur quod eos unde. Velit dolores eius ipsa et ullam.', NULL, 0, '2020-06-24 00:58:10', '2020-06-24 00:58:10'),
(3, 'Non omnis reiciendis ut laboriosam vitae.', 'At ipsum esse provident vel. Consequatur enim consequatur dicta harum fugit. Magnam non laboriosam explicabo facere possimus consequatur voluptates hic. Laborum est quidem aliquam fugit.', NULL, 0, '2020-06-24 00:58:11', '2020-06-24 00:58:11'),
(4, 'Sample Update', 'Test Body Update', NULL, 0, '2020-06-24 00:58:11', '2020-06-24 02:18:33'),
(5, 'Suscipit animi est dolore illo et quis.', 'Voluptatem facilis autem dolorum. Aut enim quod error soluta voluptatem necessitatibus.', NULL, 0, '2020-06-24 00:58:11', '2020-06-24 00:58:11'),
(6, 'Delectus quasi necessitatibus rerum aut autem.', 'Omnis voluptatem veritatis veritatis est odit tempore quasi. Corrupti veniam expedita sed cupiditate molestiae. Ab tenetur blanditiis id deserunt id magni minima. Voluptatem soluta alias enim alias.', NULL, 0, '2020-06-24 00:58:11', '2020-06-24 00:58:11'),
(7, 'Dolorem suscipit iste vitae.', 'Voluptate dolores ea provident fugiat. Corrupti optio qui veritatis eum illum natus. Rerum illo dolorem omnis aspernatur sit qui. Aspernatur inventore tempore nulla itaque nesciunt quas qui qui.', NULL, 0, '2020-06-24 00:58:11', '2020-06-24 00:58:11'),
(8, 'Modi rerum eos aut quis.', 'Qui iure dolores repellendus consequatur voluptas aliquam. Est fuga harum voluptatem sapiente delectus. Aut ut et beatae odio. Perferendis suscipit maxime sint ut sapiente sed laboriosam sapiente.', NULL, 0, '2020-06-24 00:58:11', '2020-06-24 00:58:11'),
(9, 'Sunt cum voluptate in cumque.', 'Et blanditiis molestiae neque. Non aliquam porro voluptatem perferendis molestiae expedita consequatur est.', NULL, 0, '2020-06-24 00:58:11', '2020-06-24 00:58:11'),
(10, 'Cumque sint totam ut expedita a aspernatur qui.', 'Voluptates eos aliquam dolorem. Expedita ipsa ad distinctio aspernatur omnis qui. Est deserunt sed eveniet.', NULL, 0, '2020-06-24 00:58:11', '2020-06-24 00:58:11'),
(11, 'Quo numquam ut voluptatem illo.', 'Mollitia et ut in consequatur rerum omnis veniam. Animi aperiam nobis possimus qui repellendus. Sapiente quas sit ducimus tempore blanditiis et. Vitae et ipsam ipsum architecto.', NULL, 0, '2020-06-24 00:58:11', '2020-06-24 00:58:11'),
(12, 'Itaque excepturi sunt neque nihil.', 'Amet laboriosam necessitatibus cupiditate quo. Minima quis voluptas aperiam rerum ipsa aliquam vel. Magni quia ut qui aperiam possimus eligendi. Sed tempora qui est molestias sed.', NULL, 0, '2020-06-24 00:58:11', '2020-06-24 00:58:11'),
(13, 'In magnam assumenda repellendus sint.', 'Non impedit necessitatibus nulla ut molestias eos. Saepe perferendis occaecati porro quo eos esse velit. Blanditiis velit non omnis explicabo non ut perferendis est. Nisi modi a soluta qui.', NULL, 0, '2020-06-24 00:58:11', '2020-06-24 00:58:11'),
(14, 'Tempora et magnam harum nisi et.', 'Nihil esse sed dignissimos omnis qui totam fugit. Nihil ut incidunt ratione incidunt. Velit ad vitae nobis modi occaecati architecto.', NULL, 0, '2020-06-24 00:58:11', '2020-06-24 00:58:11'),
(15, 'Accusantium odit at accusantium fuga ab dolore.', 'Pariatur sit ad in quas voluptas. Optio eaque doloremque voluptatem quia quia. Deserunt esse perferendis soluta ex possimus eligendi perspiciatis. Officia est molestias alias qui.', NULL, 0, '2020-06-24 00:58:11', '2020-06-24 00:58:11'),
(16, 'Error at sit natus pariatur.', 'Enim dolorem eius sed. Dolorem in consequatur culpa odio fuga nulla veritatis. Necessitatibus labore nisi sit quos voluptas. Quos est dicta exercitationem dolore.', NULL, 0, '2020-06-24 00:58:11', '2020-06-24 00:58:11'),
(17, 'Cumque itaque quos molestiae facere consequuntur.', 'Corrupti est in corporis sint nam. Sit necessitatibus quas sed odio et ut voluptates deleniti. Voluptate veritatis sunt et voluptas. Veniam fugit cupiditate dolor in.', NULL, 0, '2020-06-24 00:58:11', '2020-06-24 00:58:11'),
(18, 'Animi ea vel aut aut at nemo non.', 'Omnis suscipit sit vero est corporis voluptatum explicabo consequatur. Numquam enim beatae explicabo rerum. Rerum commodi doloremque modi vitae nisi cumque possimus dolore.', NULL, 0, '2020-06-24 00:58:11', '2020-06-24 00:58:11'),
(19, 'Quibusdam saepe saepe numquam alias.', 'Et voluptas ducimus rerum blanditiis at. Velit in inventore qui est. Vel aut odio et beatae non.', NULL, 0, '2020-06-24 00:58:11', '2020-06-24 00:58:11'),
(20, 'Non saepe sit qui porro quae molestias.', 'Delectus cupiditate dolores doloremque voluptatum. Voluptas sed amet et ratione. Vero quidem hic laboriosam quia.', NULL, 0, '2020-06-24 00:58:11', '2020-06-24 00:58:11'),
(21, 'Dolore id enim atque quo porro animi at.', 'Ad vero reiciendis ipsum debitis in aut. Possimus officia corporis dignissimos ad dolorem. At ut saepe beatae harum eius reiciendis debitis quaerat. Et minima aperiam quisquam ab cum.', NULL, 0, '2020-06-24 00:58:11', '2020-06-24 00:58:11'),
(25, 'In qui enim tenetur sint. Et quo quidem aut.', 'Consequatur rerum sequi ipsa soluta adipisci quasi dolor. Deserunt pariatur qui culpa deleniti quis sit qui. Voluptatem ut sint amet est sunt excepturi illo. Aperiam non rerum eum eum iste ut.', NULL, 0, '2020-06-24 00:58:12', '2020-06-24 00:58:12'),
(26, 'Voluptas unde facilis rem aut nesciunt quisquam.', 'Eos molestiae sit deleniti sed. Vel rem culpa aut consectetur voluptatum est similique. Perferendis saepe nobis molestiae ut dicta. Quo quidem distinctio id consequuntur est.', NULL, 0, '2020-06-24 00:58:12', '2020-06-24 00:58:12'),
(27, 'Non dolor id quia est dolorem ea fugit.', 'Temporibus veniam eius deserunt eum eveniet consectetur. Voluptas fugiat harum reiciendis nobis iusto. Ab veritatis vero sequi quidem sit culpa. Qui dicta ad doloremque saepe ut.', NULL, 0, '2020-06-24 00:58:12', '2020-06-24 00:58:12'),
(28, 'Consequatur expedita odio deserunt et porro.', 'Fugit commodi et eos est. Officia dignissimos assumenda aut est accusantium ea beatae dolor. Dolorem unde alias inventore.', NULL, 0, '2020-06-24 00:58:12', '2020-06-24 00:58:12'),
(29, 'Eaque atque et delectus numquam.', 'Accusamus quibusdam quae id ducimus dolor unde. Excepturi voluptas quo esse incidunt. Ad similique cum ducimus qui quas temporibus eos.', NULL, 0, '2020-06-24 00:58:12', '2020-06-24 00:58:12'),
(30, 'Omnis assumenda ut sit occaecati recusandae quos.', 'Sint quaerat praesentium fugit et. Qui architecto et totam et voluptate eligendi. Ut enim maiores ut itaque itaque.', NULL, 0, '2020-06-24 00:58:12', '2020-06-24 00:58:12'),
(31, 'Sample', 'Test Bodydsds', NULL, 0, '2020-06-24 02:11:57', '2020-06-25 01:29:06'),
(37, 'fefeefe', 'fefe', NULL, 0, '2020-06-25 00:13:44', '2020-06-25 01:27:54'),
(42, 'testing', 'test', NULL, 0, '2020-06-25 01:01:35', '2020-06-25 07:34:15'),
(43, 'try', 'try', NULL, 0, '2020-06-25 01:35:28', '2020-06-25 07:37:55'),
(44, 'fdsf', 'dgd', NULL, 0, '2020-06-25 01:39:08', '2020-06-25 01:39:08'),
(46, 'te', 'sdfds', NULL, 1, '2020-06-25 01:44:23', '2020-06-25 07:51:29'),
(48, 'sdf', 'fsdfs', './uploads/40bcf25dc209842199f61687405779c0.jpg', 1, '2020-06-25 06:15:45', '2020-06-25 07:51:22'),
(49, 'test', 'test', './uploads/1-2-hurts-just-a-little-bit-30656847.png', 0, '2020-06-25 07:44:57', '2020-06-25 07:52:36'),
(50, 'fsdf', 'fsdf', './uploads/40bcf25dc209842199f61687405779c0.jpg', 0, '2020-06-25 07:52:16', '2020-06-25 07:52:16');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_06_24_084650_create_blogs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
