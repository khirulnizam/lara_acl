-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 05, 2018 at 01:29 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara_acl`
--

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
(11, '2018_03_27_143827_create_trainings_table', 1),
(12, '2018_08_15_093417_create_ustazs_table', 1),
(13, '2018_11_07_072555_create_registers_table', 1),
(14, '2018_11_08_005356_add_file_to_trainings', 1),
(15, '2018_11_28_081805_create_roles_table', 1),
(16, '2018_11_28_082004_create_role_user_table', 1);

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
-- Table structure for table `registers`
--

CREATE TABLE `registers` (
  `id` int(10) UNSIGNED NOT NULL,
  `matrix` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `training_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin User', '2018-11-28 16:36:57', '2018-11-28 16:36:57'),
(2, 'participant', 'Participant User', '2018-11-28 16:36:57', '2018-11-28 16:36:57');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 2, 3, NULL, NULL),
(4, 2, 4, NULL, NULL),
(5, 2, 5, NULL, NULL),
(6, 2, 8, NULL, NULL),
(7, 1, 9, NULL, NULL),
(8, 2, 10, NULL, NULL),
(9, 2, 11, NULL, NULL),
(10, 2, 12, NULL, NULL),
(11, 2, 13, NULL, NULL),
(12, 1, 14, NULL, NULL),
(13, 1, 15, NULL, NULL),
(14, 1, 16, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

CREATE TABLE `trainings` (
  `id` int(10) UNSIGNED NOT NULL,
  `trainingname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trainer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mime` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainings`
--

INSERT INTO `trainings` (`id`, `trainingname`, `desc`, `trainer`, `created_at`, `updated_at`, `filename`, `mime`, `original_filename`) VALUES
(1, 'Laravel 101', 'Web development using PHP framework Laravel', 'Khirulnizam Abd Rahman', NULL, NULL, 'sig-fstm.png', NULL, NULL),
(2, 'Android SQLite', 'Android Studio apps development with local database using SQLite', 'Khirulnizam Abd Rahman', NULL, NULL, 'android-sqlite.png', NULL, NULL),
(3, 'Video Editing Filmora', 'An easy video editing using Filmora editor ', 'Muizz Salleh', NULL, NULL, 'muiz-filmora.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Name', 'admin@example.com', '$2y$10$z6taNQ6sd8Qlz7w.sauuUOd8D./AlRIGpuTofVlWofVOFsRf0ne9G', NULL, '2018-11-28 16:36:57', '2018-11-28 16:36:57'),
(2, 'Khirulnizam Abd Rahman', 'kerul@gmail.com', '$2y$10$VOSA3xTh8ZJ8U5hOP/LEM.ASfO6a88OLq.DWspB5D3YC/ClbWUqi2', 'dAgndk8ee78Fyb5DjVVIspcMghIVAeJS8iyN29Wlf0KQi31qWGPoFH0Jv2SJ', '2018-11-28 16:36:57', '2018-11-28 16:36:57'),
(3, 'Participant Name', 'participant@example.com', '$2y$10$8wvLpefZMuIgUgpQv2enF.qsl.7771rIwyORnAm8vNWkEM4Lu9imu', 'swwaPbXDLewOChaWK7O7pCTuG6XV8FdgAOzvWRfZRYZnUGohVwpfWh5LCUsp', '2018-11-28 16:36:57', '2018-11-28 16:36:57'),
(4, 'Shaqirin', 'shaq@gmail.com', '$2y$10$lplh1B7jVxDqY0XhnGXV5Oob8ai4lC/qkYKnkLRi9NMtNYkfgPe5u', NULL, '2018-11-28 16:36:58', '2018-11-28 16:36:58'),
(5, 'Azroy', 'azroy@gmail.com', '$2y$10$w7FS.a2ECcv0pSStqMm/Zuo3LNj6f7FB3mDiN1IvgpCyg6Bdrvkli', 'nrxzZH4m1E1By9EtPU91onbw0dGeMeGCnldsVrDmsz57S0RnB24onIF5rORW', '2018-11-28 16:36:58', '2018-11-28 16:36:58'),
(8, 'Participant', 'part1@gmail.com', '$2y$10$hCuuyz9LIiK6PgctmFik9.F8WATsr7kV01zxxYDYRrdUizCMp0RO6', 'pt4RcovnEeDYXrhZApJ46ofb3gXbi9BK7mZdZWFfYR0pzcDJVHuFXS3s71bg', '2018-11-29 22:17:39', '2018-11-29 22:17:39'),
(9, 'kk', 'kk@gmail.com', '$2y$10$5LK7AjLFbztcHnSauhdBFOgx/r1N8SpJHUhc9eT2aaxjZLx4LMoWW', 'oMb2bEJQkG1XWzQiLeZCtLhH3hMykA5tAllwcO7e5oYUMNcbkX1QXx62EBw6', '2018-11-30 02:13:36', '2018-11-30 02:13:36'),
(10, 'part4', 'part4@gmail.com', '$2y$10$Muo54CGh03mdI97WwV701uJCsElvxap9poZIk1LWUXWTbFb1E71kq', 'qiL5z3h4Z4tTxk6oO9dmMZ0cDkHazvEe7XfUs0gfDepSib9Uk0tnbMXz6k3j', '2018-11-30 02:16:28', '2018-11-30 02:16:28'),
(11, 'Amir', 'amir@gmail.com', '$2y$10$DBY/6MakVfpuX7EzeTcZheB75lqZWmyqaNSGzpCMsg2diTsunE1Yq', '73uhy4c2skQb84EEYrLITUowSSO3p8XF55O9d5WEjkim5hIdqyyO5OXOQc2c', '2018-11-30 02:22:47', '2018-11-30 02:22:47'),
(12, 'part5', 'part5@gmail.com', '$2y$10$Gt8JghShe2Awe22hkGscsusrHzuamBRwiaWDlmb6WR3WY2TFFHXna', 'bLOaypQJTkzVXFJLIWlSFXH5HSFnCYanwK1ekZ50bLjuRuzOap1VgMGwYEOa', '2018-11-30 20:40:34', '2018-11-30 20:40:34'),
(13, 'part6', 'part6@gmail.com', '$2y$10$b5dWWvy0J2MyNlOwK7CZwuc8ZlxKXrE4GYkoyj1jo/oLT2zXRH5x2', 's2OwZ7aUkC3lNAyhT7NLbqPm2KRXt3rkZC9IfwH539sezWm1PZ8yJZrkJpsn', '2018-11-30 20:42:12', '2018-11-30 20:42:12'),
(14, 'admin3', 'admin3@gmail.com', '$2y$10$ED2ro8FyLck4HH.oMpHDwuIydtrPbLylYpD1atWBAuvSFH8wvJ4iu', NULL, '2018-12-01 15:50:27', '2018-12-01 15:50:27'),
(15, 'admin4', 'admin4@gmail.com', '$2y$10$dyr2VKu7EFPIGqfhqIVg/.h/QT/8fBd2Gn0jdBgVi4fPJje1Qs1Au', NULL, '2018-12-01 15:54:32', '2018-12-01 15:54:32'),
(16, 'admin5@gmail.com', 'admin5@gmail.com', '$2y$10$VmYtuDWkanTtxZ4VIPU3s.KvOKrndnPkiqpzQlu.5oU9N1khnWtEe', NULL, '2018-12-01 15:55:45', '2018-12-01 15:55:45');

-- --------------------------------------------------------

--
-- Table structure for table `ustazs`
--

CREATE TABLE `ustazs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `registers`
--
ALTER TABLE `registers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registers_training_id_foreign` (`training_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `ustazs`
--
ALTER TABLE `ustazs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `registers`
--
ALTER TABLE `registers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `ustazs`
--
ALTER TABLE `ustazs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `registers`
--
ALTER TABLE `registers`
  ADD CONSTRAINT `registers_training_id_foreign` FOREIGN KEY (`training_id`) REFERENCES `trainings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
