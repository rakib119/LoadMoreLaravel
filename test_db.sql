-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2022 at 12:53 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_db`
--

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_09_094335_create_posts_table', 1);

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
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'This is post heading 1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL),
(2, 'This is post heading2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL),
(3, 'This is post heading3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL),
(4, 'This is post heading4', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL),
(5, 'This is post heading5', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL),
(6, 'This is post heading6', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL),
(7, 'This is post heading7', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL),
(8, 'This is post heading8', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL),
(9, 'This is post heading9', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL),
(10, 'This is post heading10', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL),
(11, 'This is post heading11', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL),
(12, 'This is post heading12', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL),
(13, 'This is post heading13', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL),
(14, 'This is post heading14', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL),
(15, 'This is post heading15', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL),
(16, 'This is post heading16', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL),
(17, 'This is post heading17', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL),
(18, 'This is post heading18', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL),
(19, 'This is post heading19', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL),
(20, 'This is post heading20', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL),
(21, 'This is post heading21', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL),
(22, 'This is post heading22', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL),
(23, 'This is post heading23', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL),
(24, 'This is post heading24', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL),
(25, 'This is post heading25', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL),
(26, 'This is post heading26', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL),
(27, 'This is post heading27', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL);

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
