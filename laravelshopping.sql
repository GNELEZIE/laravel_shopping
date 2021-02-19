-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 19, 2021 at 06:43 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelshopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'dolores ut update', 'dolores-ut-update', '2021-02-17 09:54:14', '2021-02-19 11:30:59'),
(9, 'Full texts id name slug created_at', 'full-texts-id-name-slug-created-at', '2021-02-19 11:46:17', '2021-02-19 11:46:17'),
(10, 'Programmation laravel', 'programmation-laravel', '2021-02-19 11:46:22', '2021-02-19 11:46:22'),
(11, 'Full texts id name slug created_atp', 'full-texts-id-name-slug-created-atp', '2021-02-19 11:46:30', '2021-02-19 11:46:30'),
(13, 'dolores ut updatepp', 'dolores-ut-updatepp', '2021-02-19 11:46:55', '2021-02-19 11:46:55'),
(14, 'Programmation laravelrtt', 'programmation-laravelrtt', '2021-02-19 11:47:16', '2021-02-19 11:47:16'),
(16, 'C\'est ça pubienpopppppp', 'cest-ca-pubienpopppppp', '2021-02-19 11:47:37', '2021-02-19 11:47:37');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(12, '2019_08_19_000000_create_failed_jobs_table', 1),
(13, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(14, '2021_02_16_150853_create_sessions_table', 1),
(15, '2021_02_17_090122_create_categories_table', 1),
(16, '2021_02_17_090148_create_products_table', 1);

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '10',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'qui aut sint sed', 'qui-aut-sint-sed', 'Velit eius voluptatem iure ratione ut architecto cumque. Inventore suscipit ipsa corporis corrupti porro eaque quis. Voluptatibus reiciendis sunt repellat quis. Consequatur qui earum vel quo.', 'Rerum magni culpa tempora soluta nostrum ducimus aut voluptas. Cumque ipsa quibusdam ipsam occaecati. Nihil possimus modi ut suscipit sed rem. Nisi ipsa dicta voluptas magnam. Eligendi et illo nobis debitis et aut. Rem in ut cum voluptatibus cupiditate qui enim similique. Qui aliquid praesentium aliquid ut sed. Dolorem eligendi sunt eaque soluta amet. Accusamus odit sint eum doloribus. Autem consequatur id magni mollitia mollitia labore repudiandae. Autem quos dolorem rerum sed.', '488.00', NULL, 'DIGI170', 'instock', 0, 132, 'digital_18.jpg', NULL, 1, '2021-02-17 09:54:14', '2021-02-17 09:54:14'),
(5, 'rerum ex autem et', 'rerum-ex-autem-et', 'Et in officia nisi dolor veniam eligendi eum commodi. Est et ex excepturi iure eveniet. Voluptatibus dolores itaque possimus aut ipsam dolor saepe.', 'Et sunt hic eum maxime. Aut suscipit sed enim distinctio. Consectetur ut deleniti ut. Vitae quo quidem quia dignissimos amet. Tenetur accusamus eveniet corporis enim ut doloremque aperiam. Tempora magnam reprehenderit exercitationem distinctio velit ut numquam. Vero debitis doloribus iusto doloremque. Sed est et quia aut nesciunt tempore quia.', '473.00', NULL, 'DIGI237', 'instock', 0, 197, 'digital_8.jpg', NULL, 1, '2021-02-17 09:54:14', '2021-02-17 09:54:14'),
(6, 'et nostrum id est', 'et-nostrum-id-est', 'Soluta et commodi earum voluptatem. Ab ea soluta nihil. Fugit ducimus quos vitae nobis quia sed tenetur. Quae debitis odio porro impedit.', 'Commodi iure consequatur non suscipit ex. Ipsum quis ut quas explicabo est rerum at eligendi. Quis et perferendis quis suscipit voluptatum praesentium exercitationem. Vel velit repellendus accusantium. Alias corporis saepe saepe est culpa. Provident id ut sapiente expedita veritatis.', '484.00', NULL, 'DIGI411', 'instock', 0, 170, 'digital_6.jpg', NULL, 1, '2021-02-17 09:54:14', '2021-02-17 09:54:14'),
(8, 'qui et accusamus qui', 'qui-et-accusamus-qui', 'Veritatis maxime labore nobis amet earum est. Non porro rerum officia ipsa adipisci eligendi ratione. Fugiat mollitia at at non non quia in placeat.', 'Aliquam dignissimos qui consequatur maiores. Dolores non voluptatem accusamus architecto vitae soluta. Sit tempore occaecati dolor neque officia et. Odio hic qui omnis omnis libero omnis. Facilis veniam id officia recusandae. Veniam occaecati ea quas. Dolor velit voluptatem molestias. Magnam beatae cupiditate id qui. Ipsam autem autem rerum occaecati magni tenetur error magni. Soluta qui quae odio sunt beatae libero.', '320.00', NULL, 'DIGI171', 'instock', 0, 117, 'digital_22.jpg', NULL, 1, '2021-02-17 09:54:14', '2021-02-17 09:54:14'),
(10, 'nulla quam ea recusandae', 'nulla-quam-ea-recusandae', 'Ut et repellendus quo ea. Commodi culpa quia placeat blanditiis. Porro nostrum quos ea rerum. Fugit qui id voluptas omnis.', 'Ut pariatur sequi perferendis recusandae et fugiat. Illo officiis eum voluptatum ipsam omnis odio quia. Architecto voluptas non qui officia quisquam voluptas. Similique nostrum id at quod. Autem natus itaque nam sit vero. Labore optio voluptatem expedita ut vel ut eum doloribus. Quas voluptas in veritatis laudantium architecto cumque voluptatem.', '474.00', NULL, 'DIGI114', 'instock', 0, 122, 'digital_13.jpg', NULL, 1, '2021-02-17 09:54:14', '2021-02-17 09:54:14'),
(16, 'veritatis aut et tenetur', 'veritatis-aut-et-tenetur', 'Aperiam amet enim et esse dolorum. Cum optio omnis necessitatibus nostrum adipisci iusto reprehenderit. Quaerat aspernatur ipsum hic sunt sit possimus. Pariatur velit et dolorem quod accusantium.', 'Voluptas sit iusto ex. Facilis excepturi pariatur voluptatibus perspiciatis. Eos nihil soluta similique totam. Et culpa est eveniet magnam voluptas. Dicta distinctio qui ut et. Consequuntur dolore qui accusantium quae rerum. Nam quo exercitationem at sint atque aut nobis sint. Architecto expedita et expedita earum qui dolorem assumenda harum. Quae ullam facere tempora quo qui possimus. Expedita quo eum nihil fugiat nam illo.', '230.00', NULL, 'DIGI499', 'instock', 0, 162, 'digital_21.jpg', NULL, 1, '2021-02-17 09:54:14', '2021-02-17 09:54:14'),
(22, 'aut voluptates tempore enim', 'aut-voluptates-tempore-enim', 'Commodi quaerat in voluptatem ab laudantium quasi. Officia expedita rem ea nam sunt soluta. Voluptatibus culpa cumque dignissimos sequi assumenda. Eius non est officia itaque.', 'Excepturi officiis assumenda et porro doloribus assumenda autem. Sunt reiciendis quasi velit eius quasi. Quo suscipit nihil nesciunt. Hic ratione dolore placeat iure ut quis repudiandae quasi. Sed a tempore impedit alias. Et quis aliquam eligendi blanditiis. Ea optio delectus optio velit in ipsam. Consequatur sed adipisci culpa perferendis illo ex doloremque voluptate. Ipsam animi natus voluptatem ipsa voluptatibus in ut. Quasi sunt perferendis quia rerum sint amet non velit.', '493.00', NULL, 'DIGI215', 'instock', 0, 113, 'digital_12.jpg', NULL, 1, '2021-02-17 09:54:14', '2021-02-17 09:54:14');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('bzEZnMWX21GJfXFTAKD6UheYxQSOiuUHmgkTDBXs', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoidk1oMUd3Z1Z1YmVHUjBodHJDdTBkSlNEakQ2bnljdFlEZldyQm1XbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly9sYXJhdmVsc2hvcHBpbmcudGVzdC9hZG1pbi9wcm9kdWN0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo1OiJ1dHlwZSI7czozOiJBRE0iO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkUUExVHNMN1Y1R01qMlUzUi4uZTZJTy9VNVNQZ05HdGphck1Ya1FmUXM4bTA4a1lzN21QWTIiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJFFBMVRzTDdWNUdNajJVM1IuLmU2SU8vVTVTUGdOR3RqYXJNWGtRZlFzOG0wOGtZczdtUFkyIjt9', 1613758581),
('cmHjHH9jZ3WMkYmvhAhP6WsfnJjVvom0XibVWzcq', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieVRRRUZ5TFdETEZVN3pxZnM0ZzZqUXFiS0hpcVJiTTV4QlVxZUZFYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1613744391),
('fVMUz6aEXBm4KHbydC1RjWjepU06Il5naKcLnuWq', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN05yVUxucUNOOWFHODY5UGhEN0VmeVl6RUZaOVdpNDlmNmx6WXpHZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1613756223),
('M2K4Pdk5QddunFSPE0ua5kqNqBvBgSCGKo3QkfqM', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiTnNXQjREU2Fnbkk2aDU4b2ZDekR0Z09IMm9yRHJpV2FPZUdSQjdLUCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly9sYXJhdmVsc2hvcHBpbmcudGVzdC9hZG1pbi9wcm9kdWN0cyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo1OiJ1dHlwZSI7czozOiJBRE0iO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkUUExVHNMN1Y1R01qMlUzUi4uZTZJTy9VNVNQZ05HdGphck1Ya1FmUXM4bTA4a1lzN21QWTIiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJFFBMVRzTDdWNUdNajJVM1IuLmU2SU8vVTVTUGdOR3RqYXJNWGtRZlFzOG0wOGtZczdtUFkyIjt9', 1613744427);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for admin and USR for user customers',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@cinnove.ci', NULL, '$2y$10$QA1TsL7V5GMj2U3R..e6IO/U5SPgNGtjarMXkQfQs8m08kYs7mPY2', NULL, NULL, NULL, NULL, NULL, 'ADM', '2021-02-19 09:38:03', '2021-02-19 09:38:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
