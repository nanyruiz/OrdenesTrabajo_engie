-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 04-09-2021 a las 05:46:34
-- Versión del servidor: 5.7.33
-- Versión de PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `accounts`
--
CREATE DATABASE IF NOT EXISTS `accounts` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `accounts`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts`
--

CREATE TABLE `accounts` (
  `id_account` int(10) UNSIGNED NOT NULL,
  `noaccount` int(11) NOT NULL,
  `id_person` int(10) UNSIGNED NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `accounts`
--

INSERT INTO `accounts` (`id_account`, `noaccount`, `id_person`, `password`, `created_at`, `updated_at`) VALUES
(1, 54657, 1, '12345', NULL, NULL),
(3, 448890, 32, '123456', '2021-08-30 04:32:35', '2021-08-30 04:32:35'),
(4, 448890, 34, '123456', '2021-08-30 04:33:14', '2021-08-30 04:33:14'),
(5, 448890, 35, '123456', '2021-08-30 04:33:38', '2021-08-30 04:33:38'),
(6, 448890, 36, '123456', '2021-08-30 08:35:03', '2021-08-30 08:35:03'),
(7, 448890, 37, '123456', '2021-08-30 08:35:14', '2021-08-30 08:35:14'),
(8, 448890, 39, '123456', '2021-08-30 08:35:31', '2021-08-30 08:35:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(118, '2014_10_12_000000_create_users_table', 1),
(119, '2014_10_12_100000_create_password_resets_table', 1),
(120, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(121, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(122, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(123, '2016_06_01_000004_create_oauth_clients_table', 1),
(124, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(125, '2019_08_19_000000_create_failed_jobs_table', 1),
(126, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(127, '2021_08_28_215416_create_people_table', 1),
(128, '2021_08_29_174154_create_accounts_table', 2),
(129, '2021_08_29_174716_create_transactions_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('7f435eec13c5afe203e4d150fa8b75947e45616ebdce11874895ee456fcc6ae064dc60ada8d17234', 1, 1, NULL, '[]', 0, '2021-08-31 04:36:03', '2021-08-31 04:36:03', '2022-08-30 23:36:03'),
('7fdfb6e780d591b82f63e561ed38d19bfa5c8a9b2d0fa07933a9bbaaa6fdb04dab4cc4ae608ce180', 1, 1, NULL, '[]', 0, '2021-08-31 18:15:59', '2021-08-31 18:15:59', '2022-08-31 13:15:59'),
('987870823195fa22af05005fb909d92464becd1a817db3ad0742caea286f30ba8fb518a29b33a45d', 1, 1, NULL, '[]', 0, '2021-08-31 04:32:31', '2021-08-31 04:32:31', '2022-08-30 23:32:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'api', 'q7pBmUVOPcqPHPuCh6kWz7QvnzivqmFafNFAs98Q', 'users', 'http://localhost', 0, 1, 0, '2021-08-31 04:08:26', '2021-08-31 04:08:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('712e060f6f7a691bed6f3d7c00f8756ebfa8cf2a7987f50e96d826166ff70ba422b3f9addee49b98', '7fdfb6e780d591b82f63e561ed38d19bfa5c8a9b2d0fa07933a9bbaaa6fdb04dab4cc4ae608ce180', 0, '2022-08-31 13:15:59'),
('a5425414e03215171273f58ed786c1bc89c444ffe4c88e56ff30591afff50d2d71775a23e7d0509f', '7f435eec13c5afe203e4d150fa8b75947e45616ebdce11874895ee456fcc6ae064dc60ada8d17234', 0, '2022-08-30 23:36:03'),
('e0be1e1adb012f0ee421184d085c78e2e327c0bb0838d165c6f2cb93224b7af1d8f903a72b14c870', '987870823195fa22af05005fb909d92464becd1a817db3ad0742caea286f30ba8fb518a29b33a45d', 0, '2022-08-30 23:32:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `people`
--

CREATE TABLE `people` (
  `id_person` int(10) UNSIGNED NOT NULL,
  `cc_person` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `people`
--

INSERT INTO `people` (`id_person`, `cc_person`, `name`, `created_at`, `updated_at`) VALUES
(1, 1069745644, 'Nandy Molano', NULL, NULL),
(32, 106974562, 'Nandy Molano', '2021-08-30 04:32:35', '2021-08-30 04:32:35'),
(34, 10697456, 'Nandy Molano', '2021-08-30 04:33:14', '2021-08-30 04:33:14'),
(35, 10697489, 'Nandy Molano', '2021-08-30 04:33:38', '2021-08-30 04:33:38'),
(36, 803443, 'Nandy Molano', '2021-08-30 08:35:03', '2021-08-30 08:35:03'),
(37, 8034422, 'Nandy Molano', '2021-08-30 08:35:14', '2021-08-30 08:35:14'),
(39, 80344, 'Nandy Molano', '2021-08-30 08:35:31', '2021-08-30 08:35:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
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
-- Estructura de tabla para la tabla `transactions`
--

CREATE TABLE `transactions` (
  `id_transaction` int(10) UNSIGNED NOT NULL,
  `id_account` int(10) UNSIGNED NOT NULL,
  `value` double NOT NULL,
  `type` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `transactions`
--

INSERT INTO `transactions` (`id_transaction`, `id_account`, `value`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 2000, 1, NULL, NULL),
(2, 4, 33.44, 1, '2021-08-30 04:33:14', '2021-08-30 04:33:14'),
(3, 5, 33.44, 1, '2021-08-30 04:33:38', '2021-08-30 04:33:38'),
(4, 8, 33.44, 1, '2021-08-30 08:35:31', '2021-08-30 08:35:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
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
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nandy Molano', 'nandyruiz@hotmail.com', NULL, '$2y$10$jWP4jcYX9tNkIuQUvaYPDe94E5okDKeGGVEkfayF56PjGp4eRVBx.', NULL, '2021-08-31 03:59:57', '2021-08-31 03:59:57');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id_account`),
  ADD KEY `accounts_id_person_foreign` (`id_person`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id_person`),
  ADD UNIQUE KEY `people_cc_person_unique` (`cc_person`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id_transaction`),
  ADD KEY `transactions_id_account_foreign` (`id_account`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id_account` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `people`
--
ALTER TABLE `people`
  MODIFY `id_person` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id_transaction` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_id_person_foreign` FOREIGN KEY (`id_person`) REFERENCES `people` (`id_person`);

--
-- Filtros para la tabla `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_id_account_foreign` FOREIGN KEY (`id_account`) REFERENCES `accounts` (`id_account`);
--
-- Base de datos: `alfa`
--
CREATE DATABASE IF NOT EXISTS `alfa` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `alfa`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastnamefirst` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastnamesecond` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_08_14_121232_create_employees_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
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
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `bank_accounts`
--
CREATE DATABASE IF NOT EXISTS `bank_accounts` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bank_accounts`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts`
--

CREATE TABLE `accounts` (
  `id_account` int(10) UNSIGNED NOT NULL,
  `noaccount` int(11) NOT NULL,
  `cc_persona` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2021_08_28_175446_create_accounts_table', 1),
(9, '2021_08_28_191146_create_people_table', 1),
(10, '2021_08_28_191210_create_transactions_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `people`
--

CREATE TABLE `people` (
  `id_person` int(10) UNSIGNED NOT NULL,
  `cc_person` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transactions`
--

CREATE TABLE `transactions` (
  `id_transaction` int(10) UNSIGNED NOT NULL,
  `id_account` int(11) NOT NULL,
  `value` double NOT NULL,
  `type` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nandy Molano', 'nandyruiz@hotmail.com', NULL, '$2y$10$PsFeqhee.J0WsdMGnyXjGeE1QzGFlXFop.2ADw8tAbBM08BnT4.JO', NULL, '2021-08-29 01:57:51', '2021-08-29 01:57:51');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id_account`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id_person`),
  ADD UNIQUE KEY `people_cc_person_unique` (`cc_person`);

--
-- Indices de la tabla `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id_transaction`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id_account` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `people`
--
ALTER TABLE `people`
  MODIFY `id_person` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id_transaction` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Base de datos: `itop_db`
--
CREATE DATABASE IF NOT EXISTS `itop_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `itop_db`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `applicationsolution`
--

CREATE TABLE `applicationsolution` (
  `id` int(11) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `redundancy` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'disabled'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `attachment`
--

CREATE TABLE `attachment` (
  `id` int(11) NOT NULL,
  `expire` datetime DEFAULT NULL,
  `temp_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `item_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `item_id` int(11) DEFAULT '0',
  `item_org_id` int(11) DEFAULT '0',
  `contents_data` longblob,
  `contents_mimetype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contents_filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `businessprocess`
--

CREATE TABLE `businessprocess` (
  `id` int(11) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `change`
--

CREATE TABLE `change` (
  `id` int(11) NOT NULL,
  `status` enum('approved','assigned','closed','implemented','monitored','new','notapproved','plannedscheduled','rejected','validated') COLLATE utf8mb4_unicode_ci DEFAULT 'new',
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `requestor_id` int(11) DEFAULT '0',
  `creation_date` datetime DEFAULT NULL,
  `impact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `supervisor_group_id` int(11) DEFAULT '0',
  `supervisor_id` int(11) DEFAULT '0',
  `manager_group_id` int(11) DEFAULT '0',
  `manager_id` int(11) DEFAULT '0',
  `outage` enum('no','yes') COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `fallback` text COLLATE utf8mb4_unicode_ci,
  `parent_id` int(11) DEFAULT '0',
  `finalclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Change'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `change_approved`
--

CREATE TABLE `change_approved` (
  `id` int(11) NOT NULL,
  `approval_date` datetime DEFAULT NULL,
  `approval_comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `finalclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'ApprovedChange'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `change_emergency`
--

CREATE TABLE `change_emergency` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `change_normal`
--

CREATE TABLE `change_normal` (
  `id` int(11) NOT NULL,
  `acceptance_date` datetime DEFAULT NULL,
  `acceptance_comment` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `change_routine`
--

CREATE TABLE `change_routine` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `connectableci`
--

CREATE TABLE `connectableci` (
  `id` int(11) NOT NULL,
  `finalclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'ConnectableCI'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `org_id` int(11) DEFAULT '0',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `notify` enum('no','yes') COLLATE utf8mb4_unicode_ci DEFAULT 'yes',
  `function` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `finalclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Contact',
  `obsolescence_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `contact`
--

INSERT INTO `contact` (`id`, `name`, `status`, `org_id`, `email`, `phone`, `notify`, `function`, `finalclass`, `obsolescence_date`) VALUES
(1, 'My last name', 'active', 1, 'my.email@foo.org', '', 'yes', '', 'Person', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacttype`
--

CREATE TABLE `contacttype` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contract`
--

CREATE TABLE `contract` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `org_id` int(11) DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `cost` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `cost_currency` enum('dollars','euros') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contracttype_id` int(11) DEFAULT '0',
  `billing_frequency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `cost_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `provider_id` int(11) DEFAULT '0',
  `status` enum('implementation','obsolete','production') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finalclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Contract'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contracttype`
--

CREATE TABLE `contracttype` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customercontract`
--

CREATE TABLE `customercontract` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `databaseschema`
--

CREATE TABLE `databaseschema` (
  `id` int(11) NOT NULL,
  `dbserver_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datacenterdevice`
--

CREATE TABLE `datacenterdevice` (
  `id` int(11) NOT NULL,
  `rack_id` int(11) DEFAULT '0',
  `enclosure_id` int(11) DEFAULT '0',
  `nb_u` int(11) DEFAULT NULL,
  `managementip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `powera_id` int(11) DEFAULT '0',
  `powerB_id` int(11) DEFAULT '0',
  `redundancy` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `finalclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'DatacenterDevice'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dbserver`
--

CREATE TABLE `dbserver` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deliverymodel`
--

CREATE TABLE `deliverymodel` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `org_id` int(11) DEFAULT '0',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `document`
--

CREATE TABLE `document` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `org_id` int(11) DEFAULT '0',
  `documenttype_id` int(11) DEFAULT '0',
  `version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` enum('draft','obsolete','published') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finalclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Document',
  `obsolescence_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentfile`
--

CREATE TABLE `documentfile` (
  `id` int(11) NOT NULL,
  `file_data` longblob,
  `file_mimetype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentnote`
--

CREATE TABLE `documentnote` (
  `id` int(11) NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documenttype`
--

CREATE TABLE `documenttype` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentweb`
--

CREATE TABLE `documentweb` (
  `id` int(11) NOT NULL,
  `url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enclosure`
--

CREATE TABLE `enclosure` (
  `id` int(11) NOT NULL,
  `rack_id` int(11) DEFAULT '0',
  `nb_u` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `farm`
--

CREATE TABLE `farm` (
  `id` int(11) NOT NULL,
  `redundancy` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fiberchannelinterface`
--

CREATE TABLE `fiberchannelinterface` (
  `id` int(11) NOT NULL,
  `speed` decimal(6,2) DEFAULT NULL,
  `topology` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `wwn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `datacenterdevice_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `functionalci`
--

CREATE TABLE `functionalci` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `org_id` int(11) DEFAULT '0',
  `business_criticity` enum('high','low','medium') COLLATE utf8mb4_unicode_ci DEFAULT 'low',
  `move2production` date DEFAULT NULL,
  `finalclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'FunctionalCI',
  `obsolescence_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `group`
--

CREATE TABLE `group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` enum('implementation','obsolete','production') COLLATE utf8mb4_unicode_ci DEFAULT 'implementation',
  `org_id` int(11) DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `parent_id` int(11) DEFAULT '0',
  `parent_id_left` int(11) DEFAULT '0',
  `parent_id_right` int(11) DEFAULT '0',
  `obsolescence_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hypervisor`
--

CREATE TABLE `hypervisor` (
  `id` int(11) NOT NULL,
  `farm_id` int(11) DEFAULT '0',
  `server_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inline_image`
--

CREATE TABLE `inline_image` (
  `id` int(11) NOT NULL,
  `expire` datetime DEFAULT NULL,
  `temp_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `item_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `item_id` int(11) DEFAULT '0',
  `item_org_id` int(11) DEFAULT '0',
  `contents_data` longblob,
  `contents_mimetype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contents_filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `iosversion`
--

CREATE TABLE `iosversion` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ipinterface`
--

CREATE TABLE `ipinterface` (
  `id` int(11) NOT NULL,
  `ipaddress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `macaddress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `comment` text COLLATE utf8mb4_unicode_ci,
  `ipgateway` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `ipmask` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `speed` decimal(12,2) DEFAULT NULL,
  `finalclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'IPInterface'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ipphone`
--

CREATE TABLE `ipphone` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `key_value_store`
--

CREATE TABLE `key_value_store` (
  `id` int(11) NOT NULL,
  `namespace` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `key_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `licence`
--

CREATE TABLE `licence` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `org_id` int(11) DEFAULT '0',
  `usage_limit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `licence_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `perpetual` enum('no','yes') COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `finalclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Licence',
  `obsolescence_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lnkapplicationsolutiontobusinessprocess`
--

CREATE TABLE `lnkapplicationsolutiontobusinessprocess` (
  `id` int(11) NOT NULL,
  `businessprocess_id` int(11) DEFAULT '0',
  `applicationsolution_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lnkapplicationsolutiontofunctionalci`
--

CREATE TABLE `lnkapplicationsolutiontofunctionalci` (
  `id` int(11) NOT NULL,
  `applicationsolution_id` int(11) DEFAULT '0',
  `functionalci_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lnkconnectablecitonetworkdevice`
--

CREATE TABLE `lnkconnectablecitonetworkdevice` (
  `id` int(11) NOT NULL,
  `networkdevice_id` int(11) DEFAULT '0',
  `connectableci_id` int(11) DEFAULT '0',
  `network_port` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `device_port` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` enum('downlink','uplink') COLLATE utf8mb4_unicode_ci DEFAULT 'downlink'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lnkcontacttocontract`
--

CREATE TABLE `lnkcontacttocontract` (
  `id` int(11) NOT NULL,
  `contract_id` int(11) DEFAULT '0',
  `contact_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lnkcontacttofunctionalci`
--

CREATE TABLE `lnkcontacttofunctionalci` (
  `id` int(11) NOT NULL,
  `functionalci_id` int(11) DEFAULT '0',
  `contact_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lnkcontacttoservice`
--

CREATE TABLE `lnkcontacttoservice` (
  `id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT '0',
  `contact_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lnkcontacttoticket`
--

CREATE TABLE `lnkcontacttoticket` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) DEFAULT '0',
  `contact_id` int(11) DEFAULT '0',
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `impact_code` enum('computed','do_not_notify','manual') COLLATE utf8mb4_unicode_ci DEFAULT 'manual'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lnkcontracttodocument`
--

CREATE TABLE `lnkcontracttodocument` (
  `id` int(11) NOT NULL,
  `contract_id` int(11) DEFAULT '0',
  `document_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lnkcustomercontracttofunctionalci`
--

CREATE TABLE `lnkcustomercontracttofunctionalci` (
  `id` int(11) NOT NULL,
  `customercontract_id` int(11) DEFAULT '0',
  `functionalci_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lnkcustomercontracttoprovidercontract`
--

CREATE TABLE `lnkcustomercontracttoprovidercontract` (
  `id` int(11) NOT NULL,
  `customercontract_id` int(11) DEFAULT '0',
  `providercontract_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lnkcustomercontracttoservice`
--

CREATE TABLE `lnkcustomercontracttoservice` (
  `id` int(11) NOT NULL,
  `customercontract_id` int(11) DEFAULT '0',
  `service_id` int(11) DEFAULT '0',
  `sla_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lnkdatacenterdevicetosan`
--

CREATE TABLE `lnkdatacenterdevicetosan` (
  `id` int(11) NOT NULL,
  `san_id` int(11) DEFAULT '0',
  `datacenterdevice_id` int(11) DEFAULT '0',
  `san_port` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `datacenterdevice_port` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lnkdeliverymodeltocontact`
--

CREATE TABLE `lnkdeliverymodeltocontact` (
  `id` int(11) NOT NULL,
  `deliverymodel_id` int(11) DEFAULT '0',
  `contact_id` int(11) DEFAULT '0',
  `role_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lnkdocumenttofunctionalci`
--

CREATE TABLE `lnkdocumenttofunctionalci` (
  `id` int(11) NOT NULL,
  `functionalci_id` int(11) DEFAULT '0',
  `document_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lnkdocumenttolicence`
--

CREATE TABLE `lnkdocumenttolicence` (
  `id` int(11) NOT NULL,
  `licence_id` int(11) DEFAULT '0',
  `document_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lnkdocumenttopatch`
--

CREATE TABLE `lnkdocumenttopatch` (
  `id` int(11) NOT NULL,
  `patch_id` int(11) DEFAULT '0',
  `document_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lnkdocumenttoservice`
--

CREATE TABLE `lnkdocumenttoservice` (
  `id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT '0',
  `document_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lnkdocumenttosoftware`
--

CREATE TABLE `lnkdocumenttosoftware` (
  `id` int(11) NOT NULL,
  `software_id` int(11) DEFAULT '0',
  `document_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lnkfunctionalcitoospatch`
--

CREATE TABLE `lnkfunctionalcitoospatch` (
  `id` int(11) NOT NULL,
  `ospatch_id` int(11) DEFAULT '0',
  `functionalci_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lnkfunctionalcitoprovidercontract`
--

CREATE TABLE `lnkfunctionalcitoprovidercontract` (
  `id` int(11) NOT NULL,
  `providercontract_id` int(11) DEFAULT '0',
  `functionalci_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lnkfunctionalcitoticket`
--

CREATE TABLE `lnkfunctionalcitoticket` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) DEFAULT '0',
  `functionalci_id` int(11) DEFAULT '0',
  `impact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `impact_code` enum('computed','manual','not_impacted') COLLATE utf8mb4_unicode_ci DEFAULT 'manual'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lnkgrouptoci`
--

CREATE TABLE `lnkgrouptoci` (
  `id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT '0',
  `ci_id` int(11) DEFAULT '0',
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lnkpersontoteam`
--

CREATE TABLE `lnkpersontoteam` (
  `id` int(11) NOT NULL,
  `team_id` int(11) DEFAULT '0',
  `person_id` int(11) DEFAULT '0',
  `role_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lnkphysicalinterfacetovlan`
--

CREATE TABLE `lnkphysicalinterfacetovlan` (
  `id` int(11) NOT NULL,
  `physicalinterface_id` int(11) DEFAULT '0',
  `vlan_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lnkservertovolume`
--

CREATE TABLE `lnkservertovolume` (
  `id` int(11) NOT NULL,
  `volume_id` int(11) DEFAULT '0',
  `server_id` int(11) DEFAULT '0',
  `size_used` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lnkslatoslt`
--

CREATE TABLE `lnkslatoslt` (
  `id` int(11) NOT NULL,
  `sla_id` int(11) DEFAULT '0',
  `slt_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lnksoftwareinstancetosoftwarepatch`
--

CREATE TABLE `lnksoftwareinstancetosoftwarepatch` (
  `id` int(11) NOT NULL,
  `softwarepatch_id` int(11) DEFAULT '0',
  `softwareinstance_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lnksubnettovlan`
--

CREATE TABLE `lnksubnettovlan` (
  `id` int(11) NOT NULL,
  `subnet_id` int(11) DEFAULT '0',
  `vlan_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lnkvirtualdevicetovolume`
--

CREATE TABLE `lnkvirtualdevicetovolume` (
  `id` int(11) NOT NULL,
  `volume_id` int(11) DEFAULT '0',
  `virtualdevice_id` int(11) DEFAULT '0',
  `size_used` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `org_id` int(11) DEFAULT '0',
  `address` text COLLATE utf8mb4_unicode_ci,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `obsolescence_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logicalinterface`
--

CREATE TABLE `logicalinterface` (
  `id` int(11) NOT NULL,
  `virtualmachine_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logicalvolume`
--

CREATE TABLE `logicalvolume` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `lun_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `raid_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `storagesystem_id` int(11) DEFAULT '0',
  `obsolescence_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `middleware`
--

CREATE TABLE `middleware` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `middlewareinstance`
--

CREATE TABLE `middlewareinstance` (
  `id` int(11) NOT NULL,
  `middleware_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mobilephone`
--

CREATE TABLE `mobilephone` (
  `id` int(11) NOT NULL,
  `imei` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `hw_pin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model`
--

CREATE TABLE `model` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT '0',
  `type` enum('DiskArray','Enclosure','IPPhone','MobilePhone','NAS','NetworkDevice','PC','PDU','Peripheral','Phone','PowerSource','Printer','Rack','SANSwitch','Server','StorageSystem','Tablet','TapeLibrary') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nas`
--

CREATE TABLE `nas` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nasfilesystem`
--

CREATE TABLE `nasfilesystem` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `raid_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nas_id` int(11) DEFAULT '0',
  `obsolescence_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `networkdevice`
--

CREATE TABLE `networkdevice` (
  `id` int(11) NOT NULL,
  `networkdevicetype_id` int(11) DEFAULT '0',
  `iosversion_id` int(11) DEFAULT '0',
  `ram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `networkdevicetype`
--

CREATE TABLE `networkdevicetype` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `networkinterface`
--

CREATE TABLE `networkinterface` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `finalclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'NetworkInterface',
  `obsolescence_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `organization`
--

CREATE TABLE `organization` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `parent_id` int(11) DEFAULT '0',
  `parent_id_left` int(11) DEFAULT '0',
  `parent_id_right` int(11) DEFAULT '0',
  `deliverymodel_id` int(11) DEFAULT '0',
  `obsolescence_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `organization`
--

INSERT INTO `organization` (`id`, `name`, `code`, `status`, `parent_id`, `parent_id_left`, `parent_id_right`, `deliverymodel_id`, `obsolescence_date`) VALUES
(1, 'My Company/Department', 'SOMECODE', 'active', 0, 1, 2, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `osfamily`
--

CREATE TABLE `osfamily` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oslicence`
--

CREATE TABLE `oslicence` (
  `id` int(11) NOT NULL,
  `osversion_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ospatch`
--

CREATE TABLE `ospatch` (
  `id` int(11) NOT NULL,
  `osversion_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `osversion`
--

CREATE TABLE `osversion` (
  `id` int(11) NOT NULL,
  `osfamily_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `othersoftware`
--

CREATE TABLE `othersoftware` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patch`
--

CREATE TABLE `patch` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `finalclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Patch'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pc`
--

CREATE TABLE `pc` (
  `id` int(11) NOT NULL,
  `osfamily_id` int(11) DEFAULT '0',
  `osversion_id` int(11) DEFAULT '0',
  `cpu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `ram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` enum('desktop','laptop') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pcsoftware`
--

CREATE TABLE `pcsoftware` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pdu`
--

CREATE TABLE `pdu` (
  `id` int(11) NOT NULL,
  `rack_id` int(11) DEFAULT '0',
  `powerstart_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peripheral`
--

CREATE TABLE `peripheral` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `person`
--

CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `picture_data` longblob,
  `picture_mimetype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture_filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `employee_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mobile_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location_id` int(11) DEFAULT '0',
  `manager_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `person`
--

INSERT INTO `person` (`id`, `picture_data`, `picture_mimetype`, `picture_filename`, `first_name`, `employee_number`, `mobile_phone`, `location_id`, `manager_id`) VALUES
(1, '', '', '', 'My first name', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phone`
--

CREATE TABLE `phone` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `physicaldevice`
--

CREATE TABLE `physicaldevice` (
  `id` int(11) NOT NULL,
  `serialnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location_id` int(11) DEFAULT '0',
  `status` enum('implementation','obsolete','production','stock') COLLATE utf8mb4_unicode_ci DEFAULT 'production',
  `brand_id` int(11) DEFAULT '0',
  `model_id` int(11) DEFAULT '0',
  `asset_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `purchase_date` date DEFAULT NULL,
  `end_of_warranty` date DEFAULT NULL,
  `finalclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'PhysicalDevice'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `physicalinterface`
--

CREATE TABLE `physicalinterface` (
  `id` int(11) NOT NULL,
  `connectableci_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `powerconnection`
--

CREATE TABLE `powerconnection` (
  `id` int(11) NOT NULL,
  `finalclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'PowerConnection'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `powersource`
--

CREATE TABLE `powersource` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `printer`
--

CREATE TABLE `printer` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_action`
--

CREATE TABLE `priv_action` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` enum('test','enabled','disabled') COLLATE utf8mb4_unicode_ci DEFAULT 'test',
  `realclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Action'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_action_email`
--

CREATE TABLE `priv_action_email` (
  `id` int(11) NOT NULL,
  `test_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `reply_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `to` text COLLATE utf8mb4_unicode_ci,
  `cc` text COLLATE utf8mb4_unicode_ci,
  `bcc` text COLLATE utf8mb4_unicode_ci,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci,
  `importance` enum('high','low','normal') COLLATE utf8mb4_unicode_ci DEFAULT 'normal'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_action_notification`
--

CREATE TABLE `priv_action_notification` (
  `id` int(11) NOT NULL,
  `realclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'ActionNotification'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_app_dashboards`
--

CREATE TABLE `priv_app_dashboards` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT '0',
  `menu_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `contents` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_app_preferences`
--

CREATE TABLE `priv_app_preferences` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT '0',
  `preferences` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `priv_app_preferences`
--

INSERT INTO `priv_app_preferences` (`id`, `userid`, `preferences`) VALUES
(1, 1, 'a:1:{s:13:\"welcome_popup\";s:1:\"1\";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_async_send_email`
--

CREATE TABLE `priv_async_send_email` (
  `id` int(11) NOT NULL,
  `version` int(11) DEFAULT '1',
  `to` text COLLATE utf8mb4_unicode_ci,
  `subject` text COLLATE utf8mb4_unicode_ci,
  `message` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_async_task`
--

CREATE TABLE `priv_async_task` (
  `id` int(11) NOT NULL,
  `status` enum('error','idle','planned','running') COLLATE utf8mb4_unicode_ci DEFAULT 'planned',
  `created` datetime DEFAULT NULL,
  `started` datetime DEFAULT NULL,
  `planned` datetime DEFAULT NULL,
  `event_id` int(11) DEFAULT '0',
  `remaining_retries` int(11) DEFAULT '0',
  `last_error_code` int(11) DEFAULT '0',
  `last_error` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_attempt` datetime DEFAULT NULL,
  `realclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'AsyncTask'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_auditcategory`
--

CREATE TABLE `priv_auditcategory` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `definition_set` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_auditrule`
--

CREATE TABLE `priv_auditrule` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `query` text COLLATE utf8mb4_unicode_ci,
  `valid_flag` enum('false','true') COLLATE utf8mb4_unicode_ci DEFAULT 'true',
  `category_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_backgroundtask`
--

CREATE TABLE `priv_backgroundtask` (
  `id` int(11) NOT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `first_run_date` datetime DEFAULT NULL,
  `latest_run_date` datetime DEFAULT NULL,
  `next_run_date` datetime DEFAULT NULL,
  `total_exec_count` int(11) DEFAULT '0',
  `latest_run_duration` decimal(8,3) DEFAULT '0.000',
  `min_run_duration` decimal(8,3) DEFAULT '0.000',
  `max_run_duration` decimal(8,3) DEFAULT '0.000',
  `average_run_duration` decimal(8,3) DEFAULT '0.000',
  `running` tinyint(1) DEFAULT '0',
  `status` enum('active','paused') COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `system_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_bulk_export_result`
--

CREATE TABLE `priv_bulk_export_result` (
  `id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `chunk_size` int(11) DEFAULT '0',
  `format` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `temp_file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `search` longtext COLLATE utf8mb4_unicode_ci,
  `status_info` longtext COLLATE utf8mb4_unicode_ci,
  `localize_output` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_change`
--

CREATE TABLE `priv_change` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `userinfo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `origin` enum('csv-import.php','csv-interactive','custom-extension','email-processing','interactive','synchro-data-source','webservice-rest','webservice-soap') COLLATE utf8mb4_unicode_ci DEFAULT 'interactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `priv_change`
--

INSERT INTO `priv_change` (`id`, `date`, `userinfo`, `origin`) VALUES
(1, '2021-08-25 23:24:27', 'Uninstallation', 'interactive'),
(2, '2021-08-25 23:24:29', 'Initialization', 'interactive'),
(3, '2021-08-25 23:24:30', '', 'interactive');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_changeop`
--

CREATE TABLE `priv_changeop` (
  `id` int(11) NOT NULL,
  `changeid` int(11) DEFAULT '0',
  `objclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `objkey` int(11) DEFAULT '0',
  `optype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'CMDBChangeOp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `priv_changeop`
--

INSERT INTO `priv_changeop` (`id`, `changeid`, `objclass`, `objkey`, `optype`) VALUES
(1, 1, 'URP_Profiles', 1, 'CMDBChangeOpCreate'),
(2, 1, 'URP_Profiles', 1024, 'CMDBChangeOpCreate'),
(3, 1, 'URP_Profiles', 3, 'CMDBChangeOpCreate'),
(4, 1, 'URP_Profiles', 4, 'CMDBChangeOpCreate'),
(5, 1, 'URP_Profiles', 5, 'CMDBChangeOpCreate'),
(6, 1, 'URP_Profiles', 6, 'CMDBChangeOpCreate'),
(7, 1, 'URP_Profiles', 7, 'CMDBChangeOpCreate'),
(8, 1, 'URP_Profiles', 8, 'CMDBChangeOpCreate'),
(9, 1, 'URP_Profiles', 9, 'CMDBChangeOpCreate'),
(10, 1, 'URP_Profiles', 10, 'CMDBChangeOpCreate'),
(11, 1, 'URP_Profiles', 11, 'CMDBChangeOpCreate'),
(12, 1, 'URP_Profiles', 2, 'CMDBChangeOpCreate'),
(13, 1, 'URP_Profiles', 12, 'CMDBChangeOpCreate'),
(14, 1, 'Organization', 1, 'CMDBChangeOpCreate'),
(15, 1, 'Person', 1, 'CMDBChangeOpCreate'),
(17, 1, 'URP_Profiles', 1, 'CMDBChangeOpSetAttributeLinksAddRemove'),
(18, 1, 'URP_UserProfile', 1, 'CMDBChangeOpCreate'),
(19, 1, 'UserLocal', 1, 'CMDBChangeOpCreate'),
(20, 3, 'ModuleInstallation', 1, 'CMDBChangeOpCreate'),
(21, 3, 'ModuleInstallation', 2, 'CMDBChangeOpCreate'),
(22, 3, 'ModuleInstallation', 3, 'CMDBChangeOpCreate'),
(23, 3, 'ModuleInstallation', 4, 'CMDBChangeOpCreate'),
(24, 3, 'ModuleInstallation', 5, 'CMDBChangeOpCreate'),
(25, 3, 'ModuleInstallation', 6, 'CMDBChangeOpCreate'),
(26, 3, 'ModuleInstallation', 7, 'CMDBChangeOpCreate'),
(27, 3, 'ModuleInstallation', 8, 'CMDBChangeOpCreate'),
(28, 3, 'ModuleInstallation', 9, 'CMDBChangeOpCreate'),
(29, 3, 'ModuleInstallation', 10, 'CMDBChangeOpCreate'),
(30, 3, 'ModuleInstallation', 11, 'CMDBChangeOpCreate'),
(31, 3, 'ModuleInstallation', 12, 'CMDBChangeOpCreate'),
(32, 3, 'ModuleInstallation', 13, 'CMDBChangeOpCreate'),
(33, 3, 'ModuleInstallation', 14, 'CMDBChangeOpCreate'),
(34, 3, 'ModuleInstallation', 15, 'CMDBChangeOpCreate'),
(35, 3, 'ModuleInstallation', 16, 'CMDBChangeOpCreate'),
(36, 3, 'ModuleInstallation', 17, 'CMDBChangeOpCreate'),
(37, 3, 'ModuleInstallation', 18, 'CMDBChangeOpCreate'),
(38, 3, 'ModuleInstallation', 19, 'CMDBChangeOpCreate'),
(39, 3, 'ModuleInstallation', 20, 'CMDBChangeOpCreate'),
(40, 3, 'ModuleInstallation', 21, 'CMDBChangeOpCreate'),
(41, 3, 'ModuleInstallation', 22, 'CMDBChangeOpCreate'),
(42, 3, 'ModuleInstallation', 23, 'CMDBChangeOpCreate'),
(43, 3, 'ModuleInstallation', 24, 'CMDBChangeOpCreate'),
(44, 3, 'ModuleInstallation', 25, 'CMDBChangeOpCreate'),
(45, 3, 'ModuleInstallation', 26, 'CMDBChangeOpCreate'),
(46, 3, 'ModuleInstallation', 27, 'CMDBChangeOpCreate'),
(47, 3, 'ModuleInstallation', 28, 'CMDBChangeOpCreate'),
(48, 3, 'ModuleInstallation', 29, 'CMDBChangeOpCreate'),
(49, 3, 'ModuleInstallation', 30, 'CMDBChangeOpCreate'),
(50, 3, 'ExtensionInstallation', 1, 'CMDBChangeOpCreate'),
(51, 3, 'ExtensionInstallation', 2, 'CMDBChangeOpCreate'),
(52, 3, 'ExtensionInstallation', 3, 'CMDBChangeOpCreate'),
(53, 3, 'ExtensionInstallation', 4, 'CMDBChangeOpCreate'),
(54, 3, 'ExtensionInstallation', 5, 'CMDBChangeOpCreate'),
(55, 3, 'ExtensionInstallation', 6, 'CMDBChangeOpCreate'),
(56, 3, 'ExtensionInstallation', 7, 'CMDBChangeOpCreate'),
(57, 3, 'ExtensionInstallation', 8, 'CMDBChangeOpCreate'),
(58, 3, 'ExtensionInstallation', 9, 'CMDBChangeOpCreate'),
(59, 3, 'ExtensionInstallation', 10, 'CMDBChangeOpCreate'),
(60, 3, 'ExtensionInstallation', 11, 'CMDBChangeOpCreate'),
(61, 3, 'ExtensionInstallation', 12, 'CMDBChangeOpCreate');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_changeop_attachment_added`
--

CREATE TABLE `priv_changeop_attachment_added` (
  `id` int(11) NOT NULL,
  `attachment_id` int(11) DEFAULT '0',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_changeop_attachment_removed`
--

CREATE TABLE `priv_changeop_attachment_removed` (
  `id` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_changeop_create`
--

CREATE TABLE `priv_changeop_create` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `priv_changeop_create`
--

INSERT INTO `priv_changeop_create` (`id`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31),
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39),
(40),
(41),
(42),
(43),
(44),
(45),
(46),
(47),
(48),
(49),
(50),
(51),
(52),
(53),
(54),
(55),
(56),
(57),
(58),
(59),
(60),
(61);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_changeop_delete`
--

CREATE TABLE `priv_changeop_delete` (
  `id` int(11) NOT NULL,
  `fclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_changeop_links`
--

CREATE TABLE `priv_changeop_links` (
  `id` int(11) NOT NULL,
  `item_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `item_id` int(11) DEFAULT '0',
  `optype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'CMDBChangeOpSetAttributeLinks'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `priv_changeop_links`
--

INSERT INTO `priv_changeop_links` (`id`, `item_class`, `item_id`, `optype`) VALUES
(17, 'User', 1, 'CMDBChangeOpSetAttributeLinksAddRemove');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_changeop_links_addremove`
--

CREATE TABLE `priv_changeop_links_addremove` (
  `id` int(11) NOT NULL,
  `type` enum('added','removed') COLLATE utf8mb4_unicode_ci DEFAULT 'added'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `priv_changeop_links_addremove`
--

INSERT INTO `priv_changeop_links_addremove` (`id`, `type`) VALUES
(17, 'added');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_changeop_links_tune`
--

CREATE TABLE `priv_changeop_links_tune` (
  `id` int(11) NOT NULL,
  `link_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_changeop_plugin`
--

CREATE TABLE `priv_changeop_plugin` (
  `id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_changeop_setatt`
--

CREATE TABLE `priv_changeop_setatt` (
  `id` int(11) NOT NULL,
  `attcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `optype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'CMDBChangeOpSetAttribute'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `priv_changeop_setatt`
--

INSERT INTO `priv_changeop_setatt` (`id`, `attcode`, `optype`) VALUES
(17, 'user_list', 'CMDBChangeOpSetAttributeLinksAddRemove');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_changeop_setatt_custfields`
--

CREATE TABLE `priv_changeop_setatt_custfields` (
  `id` int(11) NOT NULL,
  `prevdata` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_changeop_setatt_data`
--

CREATE TABLE `priv_changeop_setatt_data` (
  `id` int(11) NOT NULL,
  `prevdata_data` longblob,
  `prevdata_mimetype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prevdata_filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_changeop_setatt_encrypted`
--

CREATE TABLE `priv_changeop_setatt_encrypted` (
  `id` int(11) NOT NULL,
  `data` tinyblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_changeop_setatt_html`
--

CREATE TABLE `priv_changeop_setatt_html` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_changeop_setatt_log`
--

CREATE TABLE `priv_changeop_setatt_log` (
  `id` int(11) NOT NULL,
  `lastentry` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_changeop_setatt_longtext`
--

CREATE TABLE `priv_changeop_setatt_longtext` (
  `id` int(11) NOT NULL,
  `prevdata` longtext COLLATE utf8mb4_unicode_ci,
  `optype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'CMDBChangeOpSetAttributeLongText'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_changeop_setatt_pwd`
--

CREATE TABLE `priv_changeop_setatt_pwd` (
  `id` int(11) NOT NULL,
  `prev_pwd_hash` tinyblob,
  `prev_pwd_salt` tinyblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_changeop_setatt_scalar`
--

CREATE TABLE `priv_changeop_setatt_scalar` (
  `id` int(11) NOT NULL,
  `oldvalue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `newvalue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_changeop_setatt_tagset`
--

CREATE TABLE `priv_changeop_setatt_tagset` (
  `id` int(11) NOT NULL,
  `oldvalue` text COLLATE utf8mb4_unicode_ci,
  `newvalue` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_changeop_setatt_text`
--

CREATE TABLE `priv_changeop_setatt_text` (
  `id` int(11) NOT NULL,
  `prevdata` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_changeop_setatt_url`
--

CREATE TABLE `priv_changeop_setatt_url` (
  `id` int(11) NOT NULL,
  `oldvalue` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `newvalue` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_db_properties`
--

CREATE TABLE `priv_db_properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `change_date` datetime DEFAULT NULL,
  `change_comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `priv_db_properties`
--

INSERT INTO `priv_db_properties` (`id`, `name`, `description`, `value`, `change_date`, `change_comment`) VALUES
(1, 'database_uuid', 'Unique ID of this iTop Database', '{0523E9BF-E7FC-6035-FFAE-CBCA577C42AD}', '2021-08-25 23:24:26', 'Installation/upgrade of iTop');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_event`
--

CREATE TABLE `priv_event` (
  `id` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `date` datetime DEFAULT NULL,
  `userinfo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `realclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Event'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_event_email`
--

CREATE TABLE `priv_event_email` (
  `id` int(11) NOT NULL,
  `to` text COLLATE utf8mb4_unicode_ci,
  `cc` text COLLATE utf8mb4_unicode_ci,
  `bcc` text COLLATE utf8mb4_unicode_ci,
  `from` text COLLATE utf8mb4_unicode_ci,
  `subject` text COLLATE utf8mb4_unicode_ci,
  `body` longtext COLLATE utf8mb4_unicode_ci,
  `attachments` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_event_issue`
--

CREATE TABLE `priv_event_issue` (
  `id` int(11) NOT NULL,
  `issue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `impact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `arguments_post` longtext COLLATE utf8mb4_unicode_ci,
  `arguments_get` longtext COLLATE utf8mb4_unicode_ci,
  `callstack` longtext COLLATE utf8mb4_unicode_ci,
  `data` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_event_loginusage`
--

CREATE TABLE `priv_event_loginusage` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_event_notification`
--

CREATE TABLE `priv_event_notification` (
  `id` int(11) NOT NULL,
  `trigger_id` int(11) DEFAULT '0',
  `action_id` int(11) DEFAULT '0',
  `object_id` int(11) DEFAULT '0',
  `realclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'EventNotification'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_event_onobject`
--

CREATE TABLE `priv_event_onobject` (
  `id` int(11) NOT NULL,
  `obj_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `obj_key` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_event_restservice`
--

CREATE TABLE `priv_event_restservice` (
  `id` int(11) NOT NULL,
  `operation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `json_input` text COLLATE utf8mb4_unicode_ci,
  `code` int(11) DEFAULT '0',
  `json_output` text COLLATE utf8mb4_unicode_ci,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_event_webservice`
--

CREATE TABLE `priv_event_webservice` (
  `id` int(11) NOT NULL,
  `verb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `result` tinyint(1) DEFAULT '0',
  `log_info` text COLLATE utf8mb4_unicode_ci,
  `log_warning` text COLLATE utf8mb4_unicode_ci,
  `log_error` text COLLATE utf8mb4_unicode_ci,
  `data` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_extension_install`
--

CREATE TABLE `priv_extension_install` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `installed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `priv_extension_install`
--

INSERT INTO `priv_extension_install` (`id`, `code`, `label`, `version`, `source`, `installed`) VALUES
(1, 'itop-config-mgmt-core', 'Configuration Management Core', '2.7.5-1', 'datamodels', '2021-08-25 23:24:30'),
(2, 'itop-config-mgmt-datacenter', 'Data Center Devices', '2.7.5-1', 'datamodels', '2021-08-25 23:24:30'),
(3, 'itop-config-mgmt-end-user', 'End-User Devices', '2.7.5-1', 'datamodels', '2021-08-25 23:24:30'),
(4, 'itop-config-mgmt-storage', 'Storage Devices', '2.7.5-1', 'datamodels', '2021-08-25 23:24:30'),
(5, 'itop-config-mgmt-virtualization', 'Virtualization', '2.7.5-1', 'datamodels', '2021-08-25 23:24:30'),
(6, 'itop-service-mgmt-service-provider', 'Service Management for Service Providers', '2.7.5-1', 'datamodels', '2021-08-25 23:24:30'),
(7, 'itop-ticket-mgmt-itil-user-request', 'User Request Management', '2.7.5-1', 'datamodels', '2021-08-25 23:24:30'),
(8, 'itop-ticket-mgmt-itil-incident', 'Incident Management', '2.7.5-1', 'datamodels', '2021-08-25 23:24:30'),
(9, 'itop-ticket-mgmt-itil-enhanced-portal', 'Customer Portal', '2.7.5-1', 'datamodels', '2021-08-25 23:24:30'),
(10, 'itop-ticket-mgmt-itil', 'ITIL Compliant Tickets Management', '2.7.5-1', 'datamodels', '2021-08-25 23:24:30'),
(11, 'itop-change-mgmt-itil', 'ITIL Change Management', '2.7.5-1', 'datamodels', '2021-08-25 23:24:30'),
(12, 'itop-problem-mgmt', 'Problem Management', '2.7.5-1', 'datamodels', '2021-08-25 23:24:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_internaluser`
--

CREATE TABLE `priv_internaluser` (
  `id` int(11) NOT NULL,
  `reset_pwd_token_hash` tinyblob,
  `reset_pwd_token_salt` tinyblob,
  `finalclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'UserInternal'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `priv_internaluser`
--

INSERT INTO `priv_internaluser` (`id`, `reset_pwd_token_hash`, `reset_pwd_token_salt`, `finalclass`) VALUES
(1, '', '', 'UserLocal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_link_action_trigger`
--

CREATE TABLE `priv_link_action_trigger` (
  `link_id` int(11) NOT NULL,
  `action_id` int(11) DEFAULT '0',
  `trigger_id` int(11) DEFAULT '0',
  `order` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_module_install`
--

CREATE TABLE `priv_module_install` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `installed` datetime DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `parent_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `priv_module_install`
--

INSERT INTO `priv_module_install` (`id`, `name`, `version`, `installed`, `comment`, `parent_id`) VALUES
(1, 'datamodel', '2.7.5', '2021-08-25 23:24:30', '{\"source_dir\":\"datamodels\\/2.x\\/\"}', 0),
(2, 'iTop', '2.7.5-1-7770', '2021-08-25 23:24:30', 'Done by the setup program\nBuilt on 2021-07-12 19:29:29', 0),
(3, 'authent-cas', '2.7.5', '2021-08-25 23:24:30', 'Done by the setup program\nMandatory\nVisible (during the setup)', 2),
(4, 'authent-external', '2.7.5', '2021-08-25 23:24:30', 'Done by the setup program\nOptional\nVisible (during the setup)', 2),
(5, 'authent-local', '2.7.5', '2021-08-25 23:24:30', 'Done by the setup program\nMandatory\nVisible (during the setup)', 2),
(6, 'itop-backup', '2.7.5', '2021-08-25 23:24:30', 'Done by the setup program\nMandatory\nHidden (selected automatically)', 2),
(7, 'itop-config', '2.7.5', '2021-08-25 23:24:30', 'Done by the setup program\nMandatory\nHidden (selected automatically)', 2),
(8, 'itop-files-information', '2.7.5', '2021-08-25 23:24:30', 'Done by the setup program\nOptional\nHidden (selected automatically)', 2),
(9, 'itop-portal-base', '2.7.5', '2021-08-25 23:24:30', 'Done by the setup program\nMandatory\nHidden (selected automatically)', 2),
(10, 'itop-profiles-itil', '2.7.5', '2021-08-25 23:24:30', 'Done by the setup program\nMandatory\nHidden (selected automatically)', 2),
(11, 'itop-sla-computation', '2.7.5', '2021-08-25 23:24:30', 'Done by the setup program\nMandatory\nHidden (selected automatically)', 2),
(12, 'itop-tickets', '2.7.5', '2021-08-25 23:24:30', 'Done by the setup program\nMandatory\nHidden (selected automatically)\nDepends on module: itop-config-mgmt/2.4.0', 2),
(13, 'itop-welcome-itil', '2.7.5', '2021-08-25 23:24:30', 'Done by the setup program\nMandatory\nHidden (selected automatically)', 2),
(14, 'itop-config-mgmt', '2.7.5', '2021-08-25 23:24:30', 'Done by the setup program\nMandatory\nVisible (during the setup)', 2),
(15, 'itop-attachments', '2.7.5', '2021-08-25 23:24:30', 'Done by the setup program\nOptional\nVisible (during the setup)', 2),
(16, 'combodo-db-tools', '2.7.5', '2021-08-25 23:24:30', 'Done by the setup program\nOptional\nVisible (during the setup)', 2),
(17, 'itop-core-update', '2.7.5', '2021-08-25 23:24:30', 'Done by the setup program\nOptional\nVisible (during the setup)\nDepends on module: itop-files-information/2.7.0\nDepends on module: combodo-db-tools/2.7.0', 2),
(18, 'itop-hub-connector', '2.7.5', '2021-08-25 23:24:30', 'Done by the setup program\nOptional\nVisible (during the setup)\nDepends on module: itop-config-mgmt/2.4.0', 2),
(19, 'itop-datacenter-mgmt', '2.7.5', '2021-08-25 23:24:30', 'Done by the setup program\nOptional\nVisible (during the setup)\nDepends on module: itop-config-mgmt/2.2.0', 2),
(20, 'itop-endusers-devices', '2.7.5', '2021-08-25 23:24:30', 'Done by the setup program\nOptional\nVisible (during the setup)\nDepends on module: itop-config-mgmt/2.2.0', 2),
(21, 'itop-storage-mgmt', '2.7.5', '2021-08-25 23:24:30', 'Done by the setup program\nOptional\nVisible (during the setup)\nDepends on module: itop-config-mgmt/2.4.0', 2),
(22, 'itop-virtualization-mgmt', '2.7.5', '2021-08-25 23:24:30', 'Done by the setup program\nOptional\nVisible (during the setup)\nDepends on module: itop-config-mgmt/2.4.0', 2),
(23, 'itop-bridge-virtualization-storage', '2.7.5', '2021-08-25 23:24:30', 'Done by the setup program\nOptional\nHidden (selected automatically)\nDepends on module: itop-storage-mgmt/2.2.0\nDepends on module: itop-virtualization-mgmt/2.2.0', 2),
(24, 'itop-service-mgmt-provider', '2.7.5', '2021-08-25 23:24:30', 'Done by the setup program\nOptional\nVisible (during the setup)\nDepends on module: itop-config-mgmt/2.2.0\nDepends on module: itop-tickets/2.0.0', 2),
(25, 'itop-request-mgmt-itil', '2.7.5', '2021-08-25 23:24:30', 'Done by the setup program\nOptional\nVisible (during the setup)\nDepends on module: itop-config-mgmt/2.4.0\nDepends on module: itop-tickets/2.4.0', 2),
(26, 'itop-incident-mgmt-itil', '2.7.5', '2021-08-25 23:24:30', 'Done by the setup program\nOptional\nVisible (during the setup)\nDepends on module: itop-config-mgmt/2.4.0\nDepends on module: itop-tickets/2.4.0\nDepends on module: itop-profiles-itil/2.3.0', 2),
(27, 'itop-portal', '2.7.5', '2021-08-25 23:24:30', 'Done by the setup program\nOptional\nVisible (during the setup)\nDepends on module: itop-portal-base/2.7.0', 2),
(28, 'itop-full-itil', '2.7.5', '2021-08-25 23:24:30', 'Done by the setup program\nOptional\nHidden (selected automatically)\nDepends on module: itop-request-mgmt-itil/2.3.0\nDepends on module: itop-incident-mgmt-itil/2.3.0', 2),
(29, 'itop-change-mgmt-itil', '2.7.5', '2021-08-25 23:24:30', 'Done by the setup program\nOptional\nVisible (during the setup)\nDepends on module: itop-config-mgmt/2.2.0\nDepends on module: itop-tickets/2.0.0', 2),
(30, 'itop-problem-mgmt', '2.7.5', '2021-08-25 23:24:30', 'Done by the setup program\nOptional\nVisible (during the setup)\nDepends on module: itop-config-mgmt/2.2.0\nDepends on module: itop-tickets/2.0.0', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_ownership_token`
--

CREATE TABLE `priv_ownership_token` (
  `id` int(11) NOT NULL,
  `acquired` datetime DEFAULT NULL,
  `last_seen` datetime DEFAULT NULL,
  `obj_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `obj_key` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `user_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_query`
--

CREATE TABLE `priv_query` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `realclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Query'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_query_oql`
--

CREATE TABLE `priv_query_oql` (
  `id` int(11) NOT NULL,
  `oql` text COLLATE utf8mb4_unicode_ci,
  `fields` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_shortcut`
--

CREATE TABLE `priv_shortcut` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `context` text COLLATE utf8mb4_unicode_ci,
  `realclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Shortcut'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_shortcut_oql`
--

CREATE TABLE `priv_shortcut_oql` (
  `id` int(11) NOT NULL,
  `oql` text COLLATE utf8mb4_unicode_ci,
  `auto_reload` enum('custom','none') COLLATE utf8mb4_unicode_ci DEFAULT 'none',
  `auto_reload_sec` int(11) DEFAULT '60'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_sync_att`
--

CREATE TABLE `priv_sync_att` (
  `id` int(11) NOT NULL,
  `sync_source_id` int(11) DEFAULT '0',
  `attcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `update` tinyint(1) DEFAULT '1',
  `reconcile` tinyint(1) DEFAULT '0',
  `update_policy` enum('master_locked','master_unlocked','write_if_empty') COLLATE utf8mb4_unicode_ci DEFAULT 'master_locked',
  `finalclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'SynchroAttribute'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_sync_att_extkey`
--

CREATE TABLE `priv_sync_att_extkey` (
  `id` int(11) NOT NULL,
  `reconciliation_attcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_sync_att_linkset`
--

CREATE TABLE `priv_sync_att_linkset` (
  `id` int(11) NOT NULL,
  `row_separator` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '|',
  `attribute_separator` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ';',
  `value_separator` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ':',
  `attribute_qualifier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_sync_datasource`
--

CREATE TABLE `priv_sync_datasource` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` enum('implementation','obsolete','production') COLLATE utf8mb4_unicode_ci DEFAULT 'implementation',
  `user_id` int(11) DEFAULT '0',
  `notify_contact_id` int(11) DEFAULT '0',
  `scope_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'CustomerContract',
  `database_table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `scope_restriction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `full_load_periodicity` int(11) UNSIGNED DEFAULT NULL,
  `reconciliation_policy` enum('use_attributes','use_primary_key') COLLATE utf8mb4_unicode_ci DEFAULT 'use_attributes',
  `action_on_zero` enum('create','error') COLLATE utf8mb4_unicode_ci DEFAULT 'create',
  `action_on_one` enum('error','update') COLLATE utf8mb4_unicode_ci DEFAULT 'update',
  `action_on_multiple` enum('create','error','take_first') COLLATE utf8mb4_unicode_ci DEFAULT 'error',
  `delete_policy` enum('delete','ignore','update','update_then_delete') COLLATE utf8mb4_unicode_ci DEFAULT 'ignore',
  `delete_policy_update` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `delete_policy_retention` int(11) UNSIGNED DEFAULT NULL,
  `user_delete_policy` enum('administrators','everybody','nobody') COLLATE utf8mb4_unicode_ci DEFAULT 'nobody',
  `url_icon` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `url_application` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_sync_log`
--

CREATE TABLE `priv_sync_log` (
  `id` int(11) NOT NULL,
  `sync_source_id` int(11) DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `status` enum('completed','error','running') COLLATE utf8mb4_unicode_ci DEFAULT 'running',
  `status_curr_job` int(11) DEFAULT '0',
  `status_curr_pos` int(11) DEFAULT '0',
  `stats_nb_replica_seen` int(11) DEFAULT '0',
  `stats_nb_replica_total` int(11) DEFAULT '0',
  `stats_nb_obj_deleted` int(11) DEFAULT '0',
  `stats_deleted_errors` int(11) DEFAULT '0',
  `stats_nb_obj_obsoleted` int(11) DEFAULT '0',
  `stats_nb_obj_obsoleted_errors` int(11) DEFAULT '0',
  `stats_nb_obj_created` int(11) DEFAULT '0',
  `stats_nb_obj_created_errors` int(11) DEFAULT '0',
  `stats_nb_obj_created_warnings` int(11) DEFAULT '0',
  `stats_nb_obj_updated` int(11) DEFAULT '0',
  `stats_nb_obj_updated_errors` int(11) DEFAULT '0',
  `stats_nb_obj_updated_warnings` int(11) DEFAULT '0',
  `stats_nb_obj_unchanged_warnings` int(11) DEFAULT '0',
  `stats_nb_replica_reconciled_errors` int(11) DEFAULT '0',
  `stats_nb_replica_disappeared_no_action` int(11) DEFAULT '0',
  `stats_nb_obj_new_updated` int(11) DEFAULT '0',
  `stats_nb_obj_new_updated_warnings` int(11) DEFAULT '0',
  `stats_nb_obj_new_unchanged` int(11) DEFAULT '0',
  `stats_nb_obj_new_unchanged_warnings` int(11) DEFAULT '0',
  `last_error` text COLLATE utf8mb4_unicode_ci,
  `traces` longtext COLLATE utf8mb4_unicode_ci,
  `memory_usage_peak` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_sync_replica`
--

CREATE TABLE `priv_sync_replica` (
  `id` int(11) NOT NULL,
  `sync_source_id` int(11) DEFAULT '0',
  `dest_id` int(11) DEFAULT '0',
  `dest_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Organization',
  `status_last_seen` datetime DEFAULT NULL,
  `status` enum('modified','new','obsolete','orphan','synchronized') COLLATE utf8mb4_unicode_ci DEFAULT 'new',
  `status_dest_creator` tinyint(1) DEFAULT '0',
  `status_last_error` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status_last_warning` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `info_creation_date` datetime DEFAULT NULL,
  `info_last_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_tagfielddata`
--

CREATE TABLE `priv_tagfielddata` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `obj_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `obj_attcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_trigger`
--

CREATE TABLE `priv_trigger` (
  `id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `realclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Trigger'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_trigger_onobjcreate`
--

CREATE TABLE `priv_trigger_onobjcreate` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_trigger_onobjdelete`
--

CREATE TABLE `priv_trigger_onobjdelete` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_trigger_onobject`
--

CREATE TABLE `priv_trigger_onobject` (
  `id` int(11) NOT NULL,
  `target_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'CustomerContract',
  `filter` text COLLATE utf8mb4_unicode_ci,
  `realclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'TriggerOnObject'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_trigger_onobjupdate`
--

CREATE TABLE `priv_trigger_onobjupdate` (
  `id` int(11) NOT NULL,
  `target_attcodes` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_trigger_onportalupdate`
--

CREATE TABLE `priv_trigger_onportalupdate` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_trigger_onstatechange`
--

CREATE TABLE `priv_trigger_onstatechange` (
  `id` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `realclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'TriggerOnStateChange'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_trigger_onstateenter`
--

CREATE TABLE `priv_trigger_onstateenter` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_trigger_onstateleave`
--

CREATE TABLE `priv_trigger_onstateleave` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_trigger_threshold`
--

CREATE TABLE `priv_trigger_threshold` (
  `id` int(11) NOT NULL,
  `stop_watch_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `threshold_index` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_urp_profiles`
--

CREATE TABLE `priv_urp_profiles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `priv_urp_profiles`
--

INSERT INTO `priv_urp_profiles` (`id`, `name`, `description`) VALUES
(1, 'Administrator', 'Has the rights on everything (bypassing any control)'),
(2, 'Portal user', 'Has the rights to access to the user portal. People having this profile will not be allowed to access the standard application, they will be automatically redirected to the user portal.'),
(3, 'Configuration Manager', 'Person in charge of the documentation of the managed CIs'),
(4, 'Service Desk Agent', 'Person in charge of creating incident reports'),
(5, 'Support Agent', 'Person analyzing and solving the current incidents'),
(6, 'Problem Manager', 'Person analyzing and solving the current problems'),
(7, 'Change Implementor', 'Person executing the changes'),
(8, 'Change Supervisor', 'Person responsible for the overall change execution'),
(9, 'Change Approver', 'Person who could be impacted by some changes'),
(10, 'Service Manager', 'Person responsible for the service delivered to the [internal] customer'),
(11, 'Document author', 'Any person who could contribute to documentation'),
(12, 'Portal power user', 'Users having this profile will have the rights to see all the tickets for a customer in the portal. Must be used in conjunction with other profiles (e.g. Portal User).'),
(1024, 'REST Services User', 'Only users having this profile are allowed to use the REST Web Services (unless \'secure_rest_services\' is set to false\n          in the configuration file).\n        ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_urp_userorg`
--

CREATE TABLE `priv_urp_userorg` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT '0',
  `allowed_org_id` int(11) DEFAULT '0',
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_urp_userprofile`
--

CREATE TABLE `priv_urp_userprofile` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT '0',
  `profileid` int(11) DEFAULT '0',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `priv_urp_userprofile`
--

INSERT INTO `priv_urp_userprofile` (`id`, `userid`, `profileid`, `description`) VALUES
(1, 1, 1, 'By definition, the administrator must have the administrator profile');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_user`
--

CREATE TABLE `priv_user` (
  `id` int(11) NOT NULL,
  `contactid` int(11) DEFAULT '0',
  `login` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'EN US',
  `status` enum('disabled','enabled') COLLATE utf8mb4_unicode_ci DEFAULT 'enabled',
  `finalclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'User'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `priv_user`
--

INSERT INTO `priv_user` (`id`, `contactid`, `login`, `language`, `status`, `finalclass`) VALUES
(1, 1, 'admin', 'ES CR', 'enabled', 'UserLocal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `priv_user_local`
--

CREATE TABLE `priv_user_local` (
  `id` int(11) NOT NULL,
  `password_hash` tinyblob,
  `password_salt` tinyblob,
  `expiration` enum('can_expire','force_expire','never_expire') COLLATE utf8mb4_unicode_ci DEFAULT 'never_expire',
  `password_renewed_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `priv_user_local`
--

INSERT INTO `priv_user_local` (`id`, `password_hash`, `password_salt`, `expiration`, `password_renewed_date`) VALUES
(1, 0x24327924313024527374626b7544757031506c654e392e2e4972453975534768456d3978757150376a59326a5a515050794147746b4c4c7a68644d75, '', 'never_expire', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `providercontract`
--

CREATE TABLE `providercontract` (
  `id` int(11) NOT NULL,
  `sla` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `coverage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rack`
--

CREATE TABLE `rack` (
  `id` int(11) NOT NULL,
  `nb_u` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sanswitch`
--

CREATE TABLE `sanswitch` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `server`
--

CREATE TABLE `server` (
  `id` int(11) NOT NULL,
  `osfamily_id` int(11) DEFAULT '0',
  `osversion_id` int(11) DEFAULT '0',
  `oslicence_id` int(11) DEFAULT '0',
  `cpu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `ram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `org_id` int(11) DEFAULT '0',
  `servicefamily_id` int(11) DEFAULT '0',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` enum('implementation','obsolete','production') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_data` longblob,
  `icon_mimetype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicefamilly`
--

CREATE TABLE `servicefamilly` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `icon_data` longblob,
  `icon_mimetype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicesubcategory`
--

CREATE TABLE `servicesubcategory` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `service_id` int(11) DEFAULT '0',
  `request_type` enum('incident','service_request') COLLATE utf8mb4_unicode_ci DEFAULT 'incident',
  `status` enum('implementation','obsolete','production') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sla`
--

CREATE TABLE `sla` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `org_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slt`
--

CREATE TABLE `slt` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `priority` enum('1','2','3','4') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_type` enum('incident','service_request') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metric` enum('tto','ttr') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `unit` enum('hours','minutes') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `software`
--

CREATE TABLE `software` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `vendor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` enum('DBServer','Middleware','OtherSoftware','PCSoftware','WebServer') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `softwareinstance`
--

CREATE TABLE `softwareinstance` (
  `id` int(11) NOT NULL,
  `functionalci_id` int(11) DEFAULT '0',
  `software_id` int(11) DEFAULT '0',
  `softwarelicence_id` int(11) DEFAULT '0',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finalclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'SoftwareInstance'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `softwarelicence`
--

CREATE TABLE `softwarelicence` (
  `id` int(11) NOT NULL,
  `software_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `softwarepatch`
--

CREATE TABLE `softwarepatch` (
  `id` int(11) NOT NULL,
  `software_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `storagesystem`
--

CREATE TABLE `storagesystem` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subnet`
--

CREATE TABLE `subnet` (
  `id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `subnet_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `org_id` int(11) DEFAULT '0',
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `ip_mask` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tablet`
--

CREATE TABLE `tablet` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tape`
--

CREATE TABLE `tape` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `tapelibrary_id` int(11) DEFAULT '0',
  `obsolescence_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tapelibrary`
--

CREATE TABLE `tapelibrary` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telephonyci`
--

CREATE TABLE `telephonyci` (
  `id` int(11) NOT NULL,
  `phonenumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `finalclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'TelephonyCI'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `operational_status` enum('closed','ongoing','resolved') COLLATE utf8mb4_unicode_ci DEFAULT 'ongoing',
  `ref` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `org_id` int(11) DEFAULT '0',
  `caller_id` int(11) DEFAULT '0',
  `team_id` int(11) DEFAULT '0',
  `agent_id` int(11) DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `description_format` enum('text','html') COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `close_date` datetime DEFAULT NULL,
  `private_log` longtext COLLATE utf8mb4_unicode_ci,
  `private_log_index` blob,
  `finalclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Ticket'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_incident`
--

CREATE TABLE `ticket_incident` (
  `id` int(11) NOT NULL,
  `status` enum('assigned','closed','escalated_tto','escalated_ttr','new','pending','resolved') COLLATE utf8mb4_unicode_ci DEFAULT 'new',
  `impact` enum('1','2','3') COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `priority` enum('1','2','3','4') COLLATE utf8mb4_unicode_ci DEFAULT '4',
  `urgency` enum('1','2','3','4') COLLATE utf8mb4_unicode_ci DEFAULT '4',
  `origin` enum('mail','monitoring','phone','portal') COLLATE utf8mb4_unicode_ci DEFAULT 'phone',
  `service_id` int(11) DEFAULT '0',
  `servicesubcategory_id` int(11) DEFAULT '0',
  `escalation_flag` enum('no','yes') COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `escalation_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `assignment_date` datetime DEFAULT NULL,
  `resolution_date` datetime DEFAULT NULL,
  `last_pending_date` datetime DEFAULT NULL,
  `cumulatedpending_timespent` int(11) UNSIGNED DEFAULT NULL,
  `cumulatedpending_started` datetime DEFAULT NULL,
  `cumulatedpending_laststart` datetime DEFAULT NULL,
  `cumulatedpending_stopped` datetime DEFAULT NULL,
  `tto_timespent` int(11) UNSIGNED DEFAULT NULL,
  `tto_started` datetime DEFAULT NULL,
  `tto_laststart` datetime DEFAULT NULL,
  `tto_stopped` datetime DEFAULT NULL,
  `tto_75_deadline` datetime DEFAULT NULL,
  `tto_75_passed` tinyint(1) UNSIGNED DEFAULT NULL,
  `tto_75_triggered` tinyint(1) DEFAULT NULL,
  `tto_75_overrun` int(11) UNSIGNED DEFAULT NULL,
  `tto_100_deadline` datetime DEFAULT NULL,
  `tto_100_passed` tinyint(1) UNSIGNED DEFAULT NULL,
  `tto_100_triggered` tinyint(1) DEFAULT NULL,
  `tto_100_overrun` int(11) UNSIGNED DEFAULT NULL,
  `ttr_timespent` int(11) UNSIGNED DEFAULT NULL,
  `ttr_started` datetime DEFAULT NULL,
  `ttr_laststart` datetime DEFAULT NULL,
  `ttr_stopped` datetime DEFAULT NULL,
  `ttr_75_deadline` datetime DEFAULT NULL,
  `ttr_75_passed` tinyint(1) UNSIGNED DEFAULT NULL,
  `ttr_75_triggered` tinyint(1) DEFAULT NULL,
  `ttr_75_overrun` int(11) UNSIGNED DEFAULT NULL,
  `ttr_100_deadline` datetime DEFAULT NULL,
  `ttr_100_passed` tinyint(1) UNSIGNED DEFAULT NULL,
  `ttr_100_triggered` tinyint(1) DEFAULT NULL,
  `ttr_100_overrun` int(11) UNSIGNED DEFAULT NULL,
  `time_spent` int(11) UNSIGNED DEFAULT NULL,
  `resolution_code` enum('assistance','bug fixed','hardware repair','other','software patch','system update','training') COLLATE utf8mb4_unicode_ci DEFAULT 'assistance',
  `solution` text COLLATE utf8mb4_unicode_ci,
  `pending_reason` text COLLATE utf8mb4_unicode_ci,
  `parent_incident_id` int(11) DEFAULT '0',
  `parent_problem_id` int(11) DEFAULT '0',
  `parent_change_id` int(11) DEFAULT '0',
  `public_log` longtext COLLATE utf8mb4_unicode_ci,
  `public_log_index` blob,
  `user_satisfaction` enum('1','2','3','4') COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `user_commment` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_problem`
--

CREATE TABLE `ticket_problem` (
  `id` int(11) NOT NULL,
  `status` enum('assigned','closed','new','resolved') COLLATE utf8mb4_unicode_ci DEFAULT 'new',
  `service_id` int(11) DEFAULT '0',
  `servicesubcategory_id` int(11) DEFAULT '0',
  `product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `impact` enum('1','2','3') COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `urgency` enum('1','2','3','4') COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `priority` enum('1','2','3','4') COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `related_change_id` int(11) DEFAULT '0',
  `assignment_date` datetime DEFAULT NULL,
  `resolution_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_request`
--

CREATE TABLE `ticket_request` (
  `id` int(11) NOT NULL,
  `status` enum('approved','assigned','closed','escalated_tto','escalated_ttr','new','pending','rejected','resolved','waiting_for_approval') COLLATE utf8mb4_unicode_ci DEFAULT 'new',
  `request_type` enum('service_request') COLLATE utf8mb4_unicode_ci DEFAULT 'service_request',
  `impact` enum('1','2','3') COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `priority` enum('1','2','3','4') COLLATE utf8mb4_unicode_ci DEFAULT '4',
  `urgency` enum('1','2','3','4') COLLATE utf8mb4_unicode_ci DEFAULT '4',
  `origin` enum('mail','phone','portal') COLLATE utf8mb4_unicode_ci DEFAULT 'phone',
  `approver_id` int(11) DEFAULT '0',
  `service_id` int(11) DEFAULT '0',
  `servicesubcategory_id` int(11) DEFAULT '0',
  `escalation_flag` enum('no','yes') COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `escalation_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `assignment_date` datetime DEFAULT NULL,
  `resolution_date` datetime DEFAULT NULL,
  `last_pending_date` datetime DEFAULT NULL,
  `cumulatedpending_timespent` int(11) UNSIGNED DEFAULT NULL,
  `cumulatedpending_started` datetime DEFAULT NULL,
  `cumulatedpending_laststart` datetime DEFAULT NULL,
  `cumulatedpending_stopped` datetime DEFAULT NULL,
  `tto_timespent` int(11) UNSIGNED DEFAULT NULL,
  `tto_started` datetime DEFAULT NULL,
  `tto_laststart` datetime DEFAULT NULL,
  `tto_stopped` datetime DEFAULT NULL,
  `tto_75_deadline` datetime DEFAULT NULL,
  `tto_75_passed` tinyint(1) UNSIGNED DEFAULT NULL,
  `tto_75_triggered` tinyint(1) DEFAULT NULL,
  `tto_75_overrun` int(11) UNSIGNED DEFAULT NULL,
  `tto_100_deadline` datetime DEFAULT NULL,
  `tto_100_passed` tinyint(1) UNSIGNED DEFAULT NULL,
  `tto_100_triggered` tinyint(1) DEFAULT NULL,
  `tto_100_overrun` int(11) UNSIGNED DEFAULT NULL,
  `ttr_timespent` int(11) UNSIGNED DEFAULT NULL,
  `ttr_started` datetime DEFAULT NULL,
  `ttr_laststart` datetime DEFAULT NULL,
  `ttr_stopped` datetime DEFAULT NULL,
  `ttr_75_deadline` datetime DEFAULT NULL,
  `ttr_75_passed` tinyint(1) UNSIGNED DEFAULT NULL,
  `ttr_75_triggered` tinyint(1) DEFAULT NULL,
  `ttr_75_overrun` int(11) UNSIGNED DEFAULT NULL,
  `ttr_100_deadline` datetime DEFAULT NULL,
  `ttr_100_passed` tinyint(1) UNSIGNED DEFAULT NULL,
  `ttr_100_triggered` tinyint(1) DEFAULT NULL,
  `ttr_100_overrun` int(11) UNSIGNED DEFAULT NULL,
  `time_spent` int(11) UNSIGNED DEFAULT NULL,
  `resolution_code` enum('assistance','bug fixed','hardware repair','other','software patch','system update','training') COLLATE utf8mb4_unicode_ci DEFAULT 'assistance',
  `solution` text COLLATE utf8mb4_unicode_ci,
  `pending_reason` text COLLATE utf8mb4_unicode_ci,
  `parent_request_id` int(11) DEFAULT '0',
  `parent_incident_id` int(11) DEFAULT '0',
  `parent_problem_id` int(11) DEFAULT '0',
  `parent_change_id` int(11) DEFAULT '0',
  `public_log` longtext COLLATE utf8mb4_unicode_ci,
  `public_log_index` blob,
  `user_satisfaction` enum('1','2','3','4') COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `user_commment` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `typology`
--

CREATE TABLE `typology` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `finalclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Typology'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_applicationsolution`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_applicationsolution` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`status` enum('active','inactive')
,`redundancy` varchar(20)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_approvedchange`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_approvedchange` (
`id` int(11)
,`operational_status` enum('closed','ongoing','resolved')
,`ref` varchar(255)
,`org_id` int(11)
,`org_name` varchar(255)
,`caller_id` int(11)
,`caller_name` varchar(255)
,`team_id` int(11)
,`team_name` varchar(255)
,`agent_id` int(11)
,`agent_name` varchar(255)
,`title` varchar(255)
,`description` text
,`start_date` datetime
,`end_date` datetime
,`last_update` datetime
,`close_date` datetime
,`private_log` longtext
,`status` enum('approved','assigned','closed','implemented','monitored','new','notapproved','plannedscheduled','rejected','validated')
,`reason` varchar(255)
,`requestor_id` int(11)
,`requestor_email` varchar(255)
,`creation_date` datetime
,`impact` varchar(255)
,`supervisor_group_id` int(11)
,`supervisor_group_name` varchar(255)
,`supervisor_id` int(11)
,`supervisor_email` varchar(255)
,`manager_group_id` int(11)
,`manager_group_name` varchar(255)
,`manager_id` int(11)
,`manager_email` varchar(255)
,`outage` enum('no','yes')
,`fallback` text
,`parent_id` int(11)
,`parent_name` varchar(255)
,`approval_date` datetime
,`approval_comment` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`caller_id_friendlyname` varchar(511)
,`caller_id_obsolescence_flag` int(1)
,`team_id_friendlyname` varchar(255)
,`team_id_obsolescence_flag` int(1)
,`agent_id_friendlyname` varchar(511)
,`agent_id_obsolescence_flag` int(1)
,`requestor_id_friendlyname` varchar(511)
,`requestor_id_obsolescence_flag` int(1)
,`supervisor_group_id_friendlyname` varchar(255)
,`supervisor_group_id_obsolescence_flag` int(1)
,`supervisor_id_friendlyname` varchar(511)
,`supervisor_id_obsolescence_flag` int(1)
,`manager_group_id_friendlyname` varchar(255)
,`manager_group_id_obsolescence_flag` int(1)
,`manager_id_friendlyname` varchar(511)
,`manager_id_obsolescence_flag` int(1)
,`parent_id_friendlyname` varchar(255)
,`parent_id_finalclass_recall` varchar(255)
,`description_format` enum('text','html')
,`private_log_index` blob
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_attachment`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_attachment` (
`id` int(11)
,`expire` datetime
,`temp_id` varchar(255)
,`item_class` varchar(255)
,`item_id` int(11)
,`item_org_id` int(11)
,`contents` varchar(255)
,`creation_date` datetime
,`user_id` int(11)
,`contact_id` int(11)
,`friendlyname` varchar(511)
,`user_id_friendlyname` varchar(255)
,`user_id_finalclass_recall` varchar(255)
,`contact_id_friendlyname` varchar(511)
,`contact_id_obsolescence_flag` int(1)
,`contents_data` longblob
,`contents_filename` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_brand`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_brand` (
`id` int(11)
,`name` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_businessprocess`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_businessprocess` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`status` enum('active','inactive')
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_change`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_change` (
`id` int(11)
,`operational_status` enum('closed','ongoing','resolved')
,`ref` varchar(255)
,`org_id` int(11)
,`org_name` varchar(255)
,`caller_id` int(11)
,`caller_name` varchar(255)
,`team_id` int(11)
,`team_name` varchar(255)
,`agent_id` int(11)
,`agent_name` varchar(255)
,`title` varchar(255)
,`description` text
,`start_date` datetime
,`end_date` datetime
,`last_update` datetime
,`close_date` datetime
,`private_log` longtext
,`status` enum('approved','assigned','closed','implemented','monitored','new','notapproved','plannedscheduled','rejected','validated')
,`reason` varchar(255)
,`requestor_id` int(11)
,`requestor_email` varchar(255)
,`creation_date` datetime
,`impact` varchar(255)
,`supervisor_group_id` int(11)
,`supervisor_group_name` varchar(255)
,`supervisor_id` int(11)
,`supervisor_email` varchar(255)
,`manager_group_id` int(11)
,`manager_group_name` varchar(255)
,`manager_id` int(11)
,`manager_email` varchar(255)
,`outage` enum('no','yes')
,`fallback` text
,`parent_id` int(11)
,`parent_name` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`caller_id_friendlyname` varchar(511)
,`caller_id_obsolescence_flag` int(1)
,`team_id_friendlyname` varchar(255)
,`team_id_obsolescence_flag` int(1)
,`agent_id_friendlyname` varchar(511)
,`agent_id_obsolescence_flag` int(1)
,`requestor_id_friendlyname` varchar(511)
,`requestor_id_obsolescence_flag` int(1)
,`supervisor_group_id_friendlyname` varchar(255)
,`supervisor_group_id_obsolescence_flag` int(1)
,`supervisor_id_friendlyname` varchar(511)
,`supervisor_id_obsolescence_flag` int(1)
,`manager_group_id_friendlyname` varchar(255)
,`manager_group_id_obsolescence_flag` int(1)
,`manager_id_friendlyname` varchar(511)
,`manager_id_obsolescence_flag` int(1)
,`parent_id_friendlyname` varchar(255)
,`parent_id_finalclass_recall` varchar(255)
,`description_format` enum('text','html')
,`private_log_index` blob
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_connectableci`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_connectableci` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`serialnumber` varchar(255)
,`location_id` int(11)
,`location_name` varchar(255)
,`status` enum('implementation','obsolete','production','stock')
,`brand_id` int(11)
,`brand_name` varchar(255)
,`model_id` int(11)
,`model_name` varchar(255)
,`asset_number` varchar(255)
,`purchase_date` date
,`end_of_warranty` date
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`location_id_friendlyname` varchar(255)
,`location_id_obsolescence_flag` int(1)
,`brand_id_friendlyname` varchar(255)
,`model_id_friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_contact`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_contact` (
`id` int(11)
,`name` varchar(255)
,`status` enum('active','inactive')
,`org_id` int(11)
,`org_name` varchar(255)
,`email` varchar(255)
,`phone` varchar(255)
,`notify` enum('no','yes')
,`function` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(511)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_contacttype`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_contacttype` (
`id` int(11)
,`name` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_contract`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_contract` (
`id` int(11)
,`name` varchar(255)
,`org_id` int(11)
,`organization_name` varchar(255)
,`description` text
,`start_date` date
,`end_date` date
,`cost` varchar(255)
,`cost_currency` enum('dollars','euros')
,`contracttype_id` int(11)
,`contracttype_name` varchar(255)
,`billing_frequency` varchar(255)
,`cost_unit` varchar(255)
,`provider_id` int(11)
,`provider_name` varchar(255)
,`status` enum('implementation','obsolete','production')
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`contracttype_id_friendlyname` varchar(255)
,`provider_id_friendlyname` varchar(255)
,`provider_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_contracttype`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_contracttype` (
`id` int(11)
,`name` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_customercontract`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_customercontract` (
`id` int(11)
,`name` varchar(255)
,`org_id` int(11)
,`organization_name` varchar(255)
,`description` text
,`start_date` date
,`end_date` date
,`cost` varchar(255)
,`cost_currency` enum('dollars','euros')
,`contracttype_id` int(11)
,`contracttype_name` varchar(255)
,`billing_frequency` varchar(255)
,`cost_unit` varchar(255)
,`provider_id` int(11)
,`provider_name` varchar(255)
,`status` enum('implementation','obsolete','production')
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`contracttype_id_friendlyname` varchar(255)
,`provider_id_friendlyname` varchar(255)
,`provider_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_databaseschema`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_databaseschema` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`dbserver_id` int(11)
,`dbserver_name` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`dbserver_id_friendlyname` varchar(511)
,`dbserver_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_datacenterdevice`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_datacenterdevice` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`serialnumber` varchar(255)
,`location_id` int(11)
,`location_name` varchar(255)
,`status` enum('implementation','obsolete','production','stock')
,`brand_id` int(11)
,`brand_name` varchar(255)
,`model_id` int(11)
,`model_name` varchar(255)
,`asset_number` varchar(255)
,`purchase_date` date
,`end_of_warranty` date
,`rack_id` int(11)
,`rack_name` varchar(255)
,`enclosure_id` int(11)
,`enclosure_name` varchar(255)
,`nb_u` int(11)
,`managementip` varchar(255)
,`powerA_id` int(11)
,`powerA_name` varchar(255)
,`powerB_id` int(11)
,`powerB_name` varchar(255)
,`redundancy` varchar(20)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`location_id_friendlyname` varchar(255)
,`location_id_obsolescence_flag` int(1)
,`brand_id_friendlyname` varchar(255)
,`model_id_friendlyname` varchar(255)
,`rack_id_friendlyname` varchar(255)
,`rack_id_obsolescence_flag` int(1)
,`enclosure_id_friendlyname` varchar(255)
,`enclosure_id_obsolescence_flag` int(1)
,`powerA_id_friendlyname` varchar(255)
,`powerA_id_finalclass_recall` varchar(255)
,`powerA_id_obsolescence_flag` int(1)
,`powerB_id_friendlyname` varchar(255)
,`powerB_id_finalclass_recall` varchar(255)
,`powerB_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_dbserver`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_dbserver` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`system_id` int(11)
,`system_name` varchar(255)
,`software_id` int(11)
,`software_name` varchar(255)
,`softwarelicence_id` int(11)
,`softwarelicence_name` varchar(255)
,`path` varchar(255)
,`status` enum('active','inactive')
,`finalclass` varchar(255)
,`friendlyname` varchar(511)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`system_id_friendlyname` varchar(511)
,`system_id_finalclass_recall` varchar(255)
,`system_id_obsolescence_flag` int(1)
,`software_id_friendlyname` varchar(511)
,`softwarelicence_id_friendlyname` varchar(255)
,`softwarelicence_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_deliverymodel`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_deliverymodel` (
`id` int(11)
,`name` varchar(255)
,`org_id` int(11)
,`organization_name` varchar(255)
,`description` varchar(255)
,`friendlyname` varchar(255)
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_document`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_document` (
`id` int(11)
,`name` varchar(255)
,`org_id` int(11)
,`org_name` varchar(255)
,`documenttype_id` int(11)
,`documenttype_name` varchar(255)
,`version` varchar(255)
,`description` text
,`status` enum('draft','obsolete','published')
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`documenttype_id_friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_documentfile`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_documentfile` (
`id` int(11)
,`name` varchar(255)
,`org_id` int(11)
,`org_name` varchar(255)
,`documenttype_id` int(11)
,`documenttype_name` varchar(255)
,`version` varchar(255)
,`description` text
,`status` enum('draft','obsolete','published')
,`file` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`documenttype_id_friendlyname` varchar(255)
,`file_data` longblob
,`file_filename` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_documentnote`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_documentnote` (
`id` int(11)
,`name` varchar(255)
,`org_id` int(11)
,`org_name` varchar(255)
,`documenttype_id` int(11)
,`documenttype_name` varchar(255)
,`version` varchar(255)
,`description` text
,`status` enum('draft','obsolete','published')
,`text` longtext
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`documenttype_id_friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_documenttype`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_documenttype` (
`id` int(11)
,`name` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_documentweb`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_documentweb` (
`id` int(11)
,`name` varchar(255)
,`org_id` int(11)
,`org_name` varchar(255)
,`documenttype_id` int(11)
,`documenttype_name` varchar(255)
,`version` varchar(255)
,`description` text
,`status` enum('draft','obsolete','published')
,`url` varchar(2048)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`documenttype_id_friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_emergencychange`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_emergencychange` (
`id` int(11)
,`operational_status` enum('closed','ongoing','resolved')
,`ref` varchar(255)
,`org_id` int(11)
,`org_name` varchar(255)
,`caller_id` int(11)
,`caller_name` varchar(255)
,`team_id` int(11)
,`team_name` varchar(255)
,`agent_id` int(11)
,`agent_name` varchar(255)
,`title` varchar(255)
,`description` text
,`start_date` datetime
,`end_date` datetime
,`last_update` datetime
,`close_date` datetime
,`private_log` longtext
,`status` enum('approved','assigned','closed','implemented','monitored','new','notapproved','plannedscheduled','rejected','validated')
,`reason` varchar(255)
,`requestor_id` int(11)
,`requestor_email` varchar(255)
,`creation_date` datetime
,`impact` varchar(255)
,`supervisor_group_id` int(11)
,`supervisor_group_name` varchar(255)
,`supervisor_id` int(11)
,`supervisor_email` varchar(255)
,`manager_group_id` int(11)
,`manager_group_name` varchar(255)
,`manager_id` int(11)
,`manager_email` varchar(255)
,`outage` enum('no','yes')
,`fallback` text
,`parent_id` int(11)
,`parent_name` varchar(255)
,`approval_date` datetime
,`approval_comment` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`caller_id_friendlyname` varchar(511)
,`caller_id_obsolescence_flag` int(1)
,`team_id_friendlyname` varchar(255)
,`team_id_obsolescence_flag` int(1)
,`agent_id_friendlyname` varchar(511)
,`agent_id_obsolescence_flag` int(1)
,`requestor_id_friendlyname` varchar(511)
,`requestor_id_obsolescence_flag` int(1)
,`supervisor_group_id_friendlyname` varchar(255)
,`supervisor_group_id_obsolescence_flag` int(1)
,`supervisor_id_friendlyname` varchar(511)
,`supervisor_id_obsolescence_flag` int(1)
,`manager_group_id_friendlyname` varchar(255)
,`manager_group_id_obsolescence_flag` int(1)
,`manager_id_friendlyname` varchar(511)
,`manager_id_obsolescence_flag` int(1)
,`parent_id_friendlyname` varchar(255)
,`parent_id_finalclass_recall` varchar(255)
,`description_format` enum('text','html')
,`private_log_index` blob
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_enclosure`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_enclosure` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`serialnumber` varchar(255)
,`location_id` int(11)
,`location_name` varchar(255)
,`status` enum('implementation','obsolete','production','stock')
,`brand_id` int(11)
,`brand_name` varchar(255)
,`model_id` int(11)
,`model_name` varchar(255)
,`asset_number` varchar(255)
,`purchase_date` date
,`end_of_warranty` date
,`rack_id` int(11)
,`rack_name` varchar(255)
,`nb_u` int(11)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`location_id_friendlyname` varchar(255)
,`location_id_obsolescence_flag` int(1)
,`brand_id_friendlyname` varchar(255)
,`model_id_friendlyname` varchar(255)
,`rack_id_friendlyname` varchar(255)
,`rack_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_farm`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_farm` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`status` enum('implementation','obsolete','production','stock')
,`redundancy` varchar(20)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_fiberchannelinterface`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_fiberchannelinterface` (
`id` int(11)
,`name` varchar(255)
,`speed` decimal(6,2)
,`topology` varchar(255)
,`wwn` varchar(255)
,`datacenterdevice_id` int(11)
,`datacenterdevice_name` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(511)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`datacenterdevice_id_friendlyname` varchar(255)
,`datacenterdevice_id_finalclass_recall` varchar(255)
,`datacenterdevice_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_functionalci`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_functionalci` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`finalclass` varchar(255)
,`friendlyname` varchar(511)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_group`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_group` (
`id` int(11)
,`name` varchar(255)
,`status` enum('implementation','obsolete','production')
,`org_id` int(11)
,`owner_name` varchar(255)
,`description` text
,`type` varchar(255)
,`parent_id` int(11)
,`parent_name` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`parent_id_friendlyname` varchar(255)
,`parent_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_hypervisor`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_hypervisor` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`status` enum('implementation','obsolete','production','stock')
,`farm_id` int(11)
,`farm_name` varchar(255)
,`server_id` int(11)
,`server_name` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`farm_id_friendlyname` varchar(255)
,`farm_id_obsolescence_flag` int(1)
,`server_id_friendlyname` varchar(255)
,`server_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_incident`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_incident` (
`id` int(11)
,`operational_status` enum('closed','ongoing','resolved')
,`ref` varchar(255)
,`org_id` int(11)
,`org_name` varchar(255)
,`caller_id` int(11)
,`caller_name` varchar(255)
,`team_id` int(11)
,`team_name` varchar(255)
,`agent_id` int(11)
,`agent_name` varchar(255)
,`title` varchar(255)
,`description` text
,`start_date` datetime
,`end_date` datetime
,`last_update` datetime
,`close_date` datetime
,`private_log` longtext
,`status` enum('assigned','closed','escalated_tto','escalated_ttr','new','pending','resolved')
,`impact` enum('1','2','3')
,`priority` enum('1','2','3','4')
,`urgency` enum('1','2','3','4')
,`origin` enum('mail','monitoring','phone','portal')
,`service_id` int(11)
,`service_name` varchar(255)
,`servicesubcategory_id` int(11)
,`servicesubcategory_name` varchar(255)
,`escalation_flag` enum('no','yes')
,`escalation_reason` varchar(255)
,`assignment_date` datetime
,`resolution_date` datetime
,`last_pending_date` datetime
,`cumulatedpending` int(11) unsigned
,`tto` int(11) unsigned
,`ttr` int(11) unsigned
,`tto_escalation_deadline` datetime
,`sla_tto_passed` tinyint(1) unsigned
,`sla_tto_over` int(11) unsigned
,`ttr_escalation_deadline` datetime
,`sla_ttr_passed` tinyint(1) unsigned
,`sla_ttr_over` int(11) unsigned
,`time_spent` int(11) unsigned
,`resolution_code` enum('assistance','bug fixed','hardware repair','other','software patch','system update','training')
,`solution` text
,`pending_reason` text
,`parent_incident_id` int(11)
,`parent_incident_ref` varchar(255)
,`parent_problem_id` int(11)
,`parent_problem_ref` varchar(255)
,`parent_change_id` int(11)
,`parent_change_ref` varchar(255)
,`public_log` longtext
,`user_satisfaction` enum('1','2','3','4')
,`user_comment` text
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`caller_id_friendlyname` varchar(511)
,`caller_id_obsolescence_flag` int(1)
,`team_id_friendlyname` varchar(255)
,`team_id_obsolescence_flag` int(1)
,`agent_id_friendlyname` varchar(511)
,`agent_id_obsolescence_flag` int(1)
,`service_id_friendlyname` varchar(255)
,`servicesubcategory_id_friendlyname` varchar(255)
,`parent_incident_id_friendlyname` varchar(255)
,`parent_problem_id_friendlyname` varchar(255)
,`parent_change_id_friendlyname` varchar(255)
,`parent_change_id_finalclass_recall` varchar(255)
,`cumulatedpending_started` datetime
,`cumulatedpending_laststart` datetime
,`cumulatedpending_stopped` datetime
,`tto_started` datetime
,`tto_laststart` datetime
,`tto_stopped` datetime
,`tto_75_deadline` datetime
,`tto_75_passed` tinyint(1) unsigned
,`tto_75_triggered` tinyint(1)
,`tto_75_overrun` int(11) unsigned
,`tto_100_deadline` datetime
,`tto_100_passed` tinyint(1) unsigned
,`tto_100_triggered` tinyint(1)
,`tto_100_overrun` int(11) unsigned
,`ttr_started` datetime
,`ttr_laststart` datetime
,`ttr_stopped` datetime
,`ttr_75_deadline` datetime
,`ttr_75_passed` tinyint(1) unsigned
,`ttr_75_triggered` tinyint(1)
,`ttr_75_overrun` int(11) unsigned
,`ttr_100_deadline` datetime
,`ttr_100_passed` tinyint(1) unsigned
,`ttr_100_triggered` tinyint(1)
,`ttr_100_overrun` int(11) unsigned
,`public_log_index` blob
,`description_format` enum('text','html')
,`private_log_index` blob
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_iosversion`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_iosversion` (
`id` int(11)
,`name` varchar(255)
,`brand_id` int(11)
,`brand_name` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(511)
,`brand_id_friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_ipinterface`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_ipinterface` (
`id` int(11)
,`name` varchar(255)
,`ipaddress` varchar(255)
,`macaddress` varchar(255)
,`comment` text
,`ipgateway` varchar(255)
,`ipmask` varchar(255)
,`speed` decimal(12,2)
,`finalclass` varchar(255)
,`friendlyname` varchar(511)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_ipphone`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_ipphone` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`serialnumber` varchar(255)
,`location_id` int(11)
,`location_name` varchar(255)
,`status` enum('implementation','obsolete','production','stock')
,`brand_id` int(11)
,`brand_name` varchar(255)
,`model_id` int(11)
,`model_name` varchar(255)
,`asset_number` varchar(255)
,`purchase_date` date
,`end_of_warranty` date
,`phonenumber` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`location_id_friendlyname` varchar(255)
,`location_id_obsolescence_flag` int(1)
,`brand_id_friendlyname` varchar(255)
,`model_id_friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_licence`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_licence` (
`id` int(11)
,`name` varchar(255)
,`org_id` int(11)
,`organization_name` varchar(255)
,`usage_limit` varchar(255)
,`description` text
,`start_date` date
,`end_date` date
,`licence_key` varchar(255)
,`perpetual` enum('no','yes')
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_lnkapplicationsolutiontobusinessprocess`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_lnkapplicationsolutiontobusinessprocess` (
`id` int(11)
,`businessprocess_id` int(11)
,`businessprocess_name` varchar(255)
,`applicationsolution_id` int(11)
,`applicationsolution_name` varchar(255)
,`friendlyname` varchar(23)
,`businessprocess_id_friendlyname` varchar(255)
,`businessprocess_id_obsolescence_flag` int(1)
,`applicationsolution_id_friendlyname` varchar(255)
,`applicationsolution_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_lnkapplicationsolutiontofunctionalci`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_lnkapplicationsolutiontofunctionalci` (
`id` int(11)
,`applicationsolution_id` int(11)
,`applicationsolution_name` varchar(255)
,`functionalci_id` int(11)
,`functionalci_name` varchar(255)
,`friendlyname` varchar(23)
,`applicationsolution_id_friendlyname` varchar(255)
,`applicationsolution_id_obsolescence_flag` int(1)
,`functionalci_id_friendlyname` varchar(511)
,`functionalci_id_finalclass_recall` varchar(255)
,`functionalci_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_lnkconnectablecitonetworkdevice`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_lnkconnectablecitonetworkdevice` (
`id` int(11)
,`networkdevice_id` int(11)
,`networkdevice_name` varchar(255)
,`connectableci_id` int(11)
,`connectableci_name` varchar(255)
,`network_port` varchar(255)
,`device_port` varchar(255)
,`connection_type` enum('downlink','uplink')
,`friendlyname` varchar(23)
,`networkdevice_id_friendlyname` varchar(255)
,`networkdevice_id_obsolescence_flag` int(1)
,`connectableci_id_friendlyname` varchar(255)
,`connectableci_id_finalclass_recall` varchar(255)
,`connectableci_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_lnkcontacttocontract`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_lnkcontacttocontract` (
`id` int(11)
,`contract_id` int(11)
,`contract_name` varchar(255)
,`contact_id` int(11)
,`contact_name` varchar(255)
,`friendlyname` varchar(23)
,`contract_id_friendlyname` varchar(255)
,`contract_id_finalclass_recall` varchar(255)
,`contact_id_friendlyname` varchar(511)
,`contact_id_finalclass_recall` varchar(255)
,`contact_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_lnkcontacttofunctionalci`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_lnkcontacttofunctionalci` (
`id` int(11)
,`functionalci_id` int(11)
,`functionalci_name` varchar(255)
,`contact_id` int(11)
,`contact_name` varchar(255)
,`friendlyname` varchar(23)
,`functionalci_id_friendlyname` varchar(511)
,`functionalci_id_finalclass_recall` varchar(255)
,`functionalci_id_obsolescence_flag` int(1)
,`contact_id_friendlyname` varchar(511)
,`contact_id_finalclass_recall` varchar(255)
,`contact_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_lnkcontacttoservice`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_lnkcontacttoservice` (
`id` int(11)
,`service_id` int(11)
,`service_name` varchar(255)
,`contact_id` int(11)
,`contact_name` varchar(255)
,`friendlyname` varchar(23)
,`service_id_friendlyname` varchar(255)
,`contact_id_friendlyname` varchar(511)
,`contact_id_finalclass_recall` varchar(255)
,`contact_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_lnkcontacttoticket`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_lnkcontacttoticket` (
`id` int(11)
,`ticket_id` int(11)
,`ticket_ref` varchar(255)
,`contact_id` int(11)
,`contact_email` varchar(255)
,`role` varchar(255)
,`role_code` enum('computed','do_not_notify','manual')
,`friendlyname` varchar(23)
,`ticket_id_friendlyname` varchar(255)
,`ticket_id_finalclass_recall` varchar(255)
,`contact_id_friendlyname` varchar(511)
,`contact_id_finalclass_recall` varchar(255)
,`contact_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_lnkcontracttodocument`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_lnkcontracttodocument` (
`id` int(11)
,`contract_id` int(11)
,`contract_name` varchar(255)
,`document_id` int(11)
,`document_name` varchar(255)
,`friendlyname` varchar(23)
,`contract_id_friendlyname` varchar(255)
,`contract_id_finalclass_recall` varchar(255)
,`document_id_friendlyname` varchar(255)
,`document_id_finalclass_recall` varchar(255)
,`document_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_lnkcustomercontracttofunctionalci`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_lnkcustomercontracttofunctionalci` (
`id` int(11)
,`customercontract_id` int(11)
,`customercontract_name` varchar(255)
,`functionalci_id` int(11)
,`functionalci_name` varchar(255)
,`friendlyname` varchar(23)
,`customercontract_id_friendlyname` varchar(255)
,`functionalci_id_friendlyname` varchar(511)
,`functionalci_id_finalclass_recall` varchar(255)
,`functionalci_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_lnkcustomercontracttoprovidercontract`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_lnkcustomercontracttoprovidercontract` (
`id` int(11)
,`customercontract_id` int(11)
,`customercontract_name` varchar(255)
,`providercontract_id` int(11)
,`providercontract_name` varchar(255)
,`friendlyname` varchar(23)
,`customercontract_id_friendlyname` varchar(255)
,`providercontract_id_friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_lnkcustomercontracttoservice`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_lnkcustomercontracttoservice` (
`id` int(11)
,`customercontract_id` int(11)
,`customercontract_name` varchar(255)
,`service_id` int(11)
,`service_name` varchar(255)
,`sla_id` int(11)
,`sla_name` varchar(255)
,`friendlyname` varchar(23)
,`customercontract_id_friendlyname` varchar(255)
,`service_id_friendlyname` varchar(255)
,`sla_id_friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_lnkdeliverymodeltocontact`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_lnkdeliverymodeltocontact` (
`id` int(11)
,`deliverymodel_id` int(11)
,`deliverymodel_name` varchar(255)
,`contact_id` int(11)
,`contact_name` varchar(255)
,`role_id` int(11)
,`role_name` varchar(255)
,`friendlyname` varchar(23)
,`deliverymodel_id_friendlyname` varchar(255)
,`contact_id_friendlyname` varchar(511)
,`contact_id_finalclass_recall` varchar(255)
,`contact_id_obsolescence_flag` int(1)
,`role_id_friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_lnkdocumenttofunctionalci`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_lnkdocumenttofunctionalci` (
`id` int(11)
,`functionalci_id` int(11)
,`functionalci_name` varchar(255)
,`document_id` int(11)
,`document_name` varchar(255)
,`friendlyname` varchar(23)
,`functionalci_id_friendlyname` varchar(511)
,`functionalci_id_finalclass_recall` varchar(255)
,`functionalci_id_obsolescence_flag` int(1)
,`document_id_friendlyname` varchar(255)
,`document_id_finalclass_recall` varchar(255)
,`document_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_lnkdocumenttolicence`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_lnkdocumenttolicence` (
`id` int(11)
,`licence_id` int(11)
,`licence_name` varchar(255)
,`document_id` int(11)
,`document_name` varchar(255)
,`friendlyname` varchar(23)
,`licence_id_friendlyname` varchar(255)
,`licence_id_finalclass_recall` varchar(255)
,`licence_id_obsolescence_flag` int(1)
,`document_id_friendlyname` varchar(255)
,`document_id_finalclass_recall` varchar(255)
,`document_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_lnkdocumenttopatch`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_lnkdocumenttopatch` (
`id` int(11)
,`patch_id` int(11)
,`patch_name` varchar(255)
,`document_id` int(11)
,`document_name` varchar(255)
,`friendlyname` varchar(23)
,`patch_id_friendlyname` varchar(255)
,`patch_id_finalclass_recall` varchar(255)
,`document_id_friendlyname` varchar(255)
,`document_id_finalclass_recall` varchar(255)
,`document_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_lnkdocumenttoservice`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_lnkdocumenttoservice` (
`id` int(11)
,`service_id` int(11)
,`service_name` varchar(255)
,`document_id` int(11)
,`document_name` varchar(255)
,`friendlyname` varchar(23)
,`service_id_friendlyname` varchar(255)
,`document_id_friendlyname` varchar(255)
,`document_id_finalclass_recall` varchar(255)
,`document_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_lnkdocumenttosoftware`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_lnkdocumenttosoftware` (
`id` int(11)
,`software_id` int(11)
,`software_name` varchar(255)
,`document_id` int(11)
,`document_name` varchar(255)
,`friendlyname` varchar(23)
,`software_id_friendlyname` varchar(511)
,`document_id_friendlyname` varchar(255)
,`document_id_finalclass_recall` varchar(255)
,`document_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_lnkfunctionalcitoospatch`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_lnkfunctionalcitoospatch` (
`id` int(11)
,`ospatch_id` int(11)
,`ospatch_name` varchar(255)
,`functionalci_id` int(11)
,`functionalci_name` varchar(255)
,`friendlyname` varchar(23)
,`ospatch_id_friendlyname` varchar(255)
,`functionalci_id_friendlyname` varchar(511)
,`functionalci_id_finalclass_recall` varchar(255)
,`functionalci_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_lnkfunctionalcitoprovidercontract`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_lnkfunctionalcitoprovidercontract` (
`id` int(11)
,`providercontract_id` int(11)
,`providercontract_name` varchar(255)
,`functionalci_id` int(11)
,`functionalci_name` varchar(255)
,`friendlyname` varchar(23)
,`providercontract_id_friendlyname` varchar(255)
,`functionalci_id_friendlyname` varchar(511)
,`functionalci_id_finalclass_recall` varchar(255)
,`functionalci_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_lnkfunctionalcitoticket`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_lnkfunctionalcitoticket` (
`id` int(11)
,`ticket_id` int(11)
,`ticket_ref` varchar(255)
,`ticket_title` varchar(255)
,`functionalci_id` int(11)
,`functionalci_name` varchar(255)
,`impact` varchar(255)
,`impact_code` enum('computed','manual','not_impacted')
,`friendlyname` varchar(23)
,`ticket_id_friendlyname` varchar(255)
,`ticket_id_finalclass_recall` varchar(255)
,`functionalci_id_friendlyname` varchar(511)
,`functionalci_id_finalclass_recall` varchar(255)
,`functionalci_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_lnkgrouptoci`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_lnkgrouptoci` (
`id` int(11)
,`group_id` int(11)
,`group_name` varchar(255)
,`ci_id` int(11)
,`ci_name` varchar(255)
,`reason` varchar(255)
,`friendlyname` varchar(11)
,`group_id_friendlyname` varchar(255)
,`group_id_obsolescence_flag` int(1)
,`ci_id_friendlyname` varchar(511)
,`ci_id_finalclass_recall` varchar(255)
,`ci_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_lnkpersontoteam`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_lnkpersontoteam` (
`id` int(11)
,`team_id` int(11)
,`team_name` varchar(255)
,`person_id` int(11)
,`person_name` varchar(255)
,`role_id` int(11)
,`role_name` varchar(255)
,`friendlyname` varchar(23)
,`team_id_friendlyname` varchar(255)
,`team_id_obsolescence_flag` int(1)
,`person_id_friendlyname` varchar(511)
,`person_id_obsolescence_flag` int(1)
,`role_id_friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_lnkphysicalinterfacetovlan`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_lnkphysicalinterfacetovlan` (
`id` int(11)
,`physicalinterface_id` int(11)
,`physicalinterface_name` varchar(255)
,`physicalinterface_device_id` int(11)
,`physicalinterface_device_name` varchar(255)
,`vlan_id` int(11)
,`vlan_tag` varchar(255)
,`friendlyname` varchar(23)
,`physicalinterface_id_friendlyname` varchar(511)
,`physicalinterface_id_obsolescence_flag` int(1)
,`physicalinterface_device_id_friendlyname` varchar(255)
,`physicalinterface_device_id_obsolescence_flag` int(1)
,`vlan_id_friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_lnksantodatacenterdevice`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_lnksantodatacenterdevice` (
`id` int(11)
,`san_id` int(11)
,`san_name` varchar(255)
,`datacenterdevice_id` int(11)
,`datacenterdevice_name` varchar(255)
,`san_port` varchar(255)
,`datacenterdevice_port` varchar(255)
,`friendlyname` varchar(11)
,`san_id_friendlyname` varchar(255)
,`san_id_obsolescence_flag` int(1)
,`datacenterdevice_id_friendlyname` varchar(255)
,`datacenterdevice_id_finalclass_recall` varchar(255)
,`datacenterdevice_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_lnkservertovolume`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_lnkservertovolume` (
`id` int(11)
,`volume_id` int(11)
,`volume_name` varchar(255)
,`server_id` int(11)
,`server_name` varchar(255)
,`size_used` varchar(255)
,`friendlyname` varchar(11)
,`volume_id_friendlyname` varchar(511)
,`volume_id_obsolescence_flag` int(1)
,`server_id_friendlyname` varchar(255)
,`server_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_lnkslatoslt`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_lnkslatoslt` (
`id` int(11)
,`sla_id` int(11)
,`sla_name` varchar(255)
,`slt_id` int(11)
,`slt_name` varchar(255)
,`slt_metric` enum('tto','ttr')
,`slt_request_type` enum('incident','service_request')
,`slt_ticket_priority` enum('1','2','3','4')
,`slt_value` int(11)
,`slt_value_unit` enum('hours','minutes')
,`friendlyname` varchar(23)
,`sla_id_friendlyname` varchar(255)
,`slt_id_friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_lnksoftwareinstancetosoftwarepatch`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_lnksoftwareinstancetosoftwarepatch` (
`id` int(11)
,`softwarepatch_id` int(11)
,`softwarepatch_name` varchar(255)
,`softwareinstance_id` int(11)
,`softwareinstance_name` varchar(255)
,`friendlyname` varchar(23)
,`softwarepatch_id_friendlyname` varchar(255)
,`softwareinstance_id_friendlyname` varchar(511)
,`softwareinstance_id_finalclass_recall` varchar(255)
,`softwareinstance_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_lnksubnettovlan`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_lnksubnettovlan` (
`id` int(11)
,`subnet_id` int(11)
,`subnet_ip` varchar(255)
,`subnet_name` varchar(255)
,`vlan_id` int(11)
,`vlan_tag` varchar(255)
,`friendlyname` varchar(23)
,`subnet_id_friendlyname` varchar(511)
,`vlan_id_friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_lnkvirtualdevicetovolume`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_lnkvirtualdevicetovolume` (
`id` int(11)
,`volume_id` int(11)
,`volume_name` varchar(255)
,`virtualdevice_id` int(11)
,`virtualdevice_name` varchar(255)
,`size_used` varchar(255)
,`friendlyname` varchar(11)
,`volume_id_friendlyname` varchar(511)
,`volume_id_obsolescence_flag` int(1)
,`virtualdevice_id_friendlyname` varchar(255)
,`virtualdevice_id_finalclass_recall` varchar(255)
,`virtualdevice_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_location`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_location` (
`id` int(11)
,`name` varchar(255)
,`status` enum('active','inactive')
,`org_id` int(11)
,`org_name` varchar(255)
,`address` text
,`postal_code` varchar(255)
,`city` varchar(255)
,`country` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_logicalinterface`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_logicalinterface` (
`id` int(11)
,`name` varchar(255)
,`ipaddress` varchar(255)
,`macaddress` varchar(255)
,`comment` text
,`ipgateway` varchar(255)
,`ipmask` varchar(255)
,`speed` decimal(12,2)
,`virtualmachine_id` int(11)
,`virtualmachine_name` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(511)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`virtualmachine_id_friendlyname` varchar(255)
,`virtualmachine_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_logicalvolume`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_logicalvolume` (
`id` int(11)
,`name` varchar(255)
,`lun_id` varchar(255)
,`description` text
,`raid_level` varchar(255)
,`size` varchar(255)
,`storagesystem_id` int(11)
,`storagesystem_name` varchar(255)
,`friendlyname` varchar(511)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`storagesystem_id_friendlyname` varchar(255)
,`storagesystem_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_middleware`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_middleware` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`system_id` int(11)
,`system_name` varchar(255)
,`software_id` int(11)
,`software_name` varchar(255)
,`softwarelicence_id` int(11)
,`softwarelicence_name` varchar(255)
,`path` varchar(255)
,`status` enum('active','inactive')
,`finalclass` varchar(255)
,`friendlyname` varchar(511)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`system_id_friendlyname` varchar(511)
,`system_id_finalclass_recall` varchar(255)
,`system_id_obsolescence_flag` int(1)
,`software_id_friendlyname` varchar(511)
,`softwarelicence_id_friendlyname` varchar(255)
,`softwarelicence_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_middlewareinstance`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_middlewareinstance` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`middleware_id` int(11)
,`middleware_name` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`middleware_id_friendlyname` varchar(511)
,`middleware_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_mobilephone`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_mobilephone` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`serialnumber` varchar(255)
,`location_id` int(11)
,`location_name` varchar(255)
,`status` enum('implementation','obsolete','production','stock')
,`brand_id` int(11)
,`brand_name` varchar(255)
,`model_id` int(11)
,`model_name` varchar(255)
,`asset_number` varchar(255)
,`purchase_date` date
,`end_of_warranty` date
,`phonenumber` varchar(255)
,`imei` varchar(255)
,`hw_pin` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`location_id_friendlyname` varchar(255)
,`location_id_obsolescence_flag` int(1)
,`brand_id_friendlyname` varchar(255)
,`model_id_friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_model`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_model` (
`id` int(11)
,`name` varchar(255)
,`brand_id` int(11)
,`brand_name` varchar(255)
,`type` enum('DiskArray','Enclosure','IPPhone','MobilePhone','NAS','NetworkDevice','PC','PDU','Peripheral','Phone','PowerSource','Printer','Rack','SANSwitch','Server','StorageSystem','Tablet','TapeLibrary')
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`brand_id_friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_nas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_nas` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`serialnumber` varchar(255)
,`location_id` int(11)
,`location_name` varchar(255)
,`status` enum('implementation','obsolete','production','stock')
,`brand_id` int(11)
,`brand_name` varchar(255)
,`model_id` int(11)
,`model_name` varchar(255)
,`asset_number` varchar(255)
,`purchase_date` date
,`end_of_warranty` date
,`rack_id` int(11)
,`rack_name` varchar(255)
,`enclosure_id` int(11)
,`enclosure_name` varchar(255)
,`nb_u` int(11)
,`managementip` varchar(255)
,`powerA_id` int(11)
,`powerA_name` varchar(255)
,`powerB_id` int(11)
,`powerB_name` varchar(255)
,`redundancy` varchar(20)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`location_id_friendlyname` varchar(255)
,`location_id_obsolescence_flag` int(1)
,`brand_id_friendlyname` varchar(255)
,`model_id_friendlyname` varchar(255)
,`rack_id_friendlyname` varchar(255)
,`rack_id_obsolescence_flag` int(1)
,`enclosure_id_friendlyname` varchar(255)
,`enclosure_id_obsolescence_flag` int(1)
,`powerA_id_friendlyname` varchar(255)
,`powerA_id_finalclass_recall` varchar(255)
,`powerA_id_obsolescence_flag` int(1)
,`powerB_id_friendlyname` varchar(255)
,`powerB_id_finalclass_recall` varchar(255)
,`powerB_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_nasfilesystem`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_nasfilesystem` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`raid_level` varchar(255)
,`size` varchar(255)
,`nas_id` int(11)
,`nas_name` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`nas_id_friendlyname` varchar(255)
,`nas_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_networkdevice`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_networkdevice` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`serialnumber` varchar(255)
,`location_id` int(11)
,`location_name` varchar(255)
,`status` enum('implementation','obsolete','production','stock')
,`brand_id` int(11)
,`brand_name` varchar(255)
,`model_id` int(11)
,`model_name` varchar(255)
,`asset_number` varchar(255)
,`purchase_date` date
,`end_of_warranty` date
,`rack_id` int(11)
,`rack_name` varchar(255)
,`enclosure_id` int(11)
,`enclosure_name` varchar(255)
,`nb_u` int(11)
,`managementip` varchar(255)
,`powerA_id` int(11)
,`powerA_name` varchar(255)
,`powerB_id` int(11)
,`powerB_name` varchar(255)
,`redundancy` varchar(20)
,`networkdevicetype_id` int(11)
,`networkdevicetype_name` varchar(255)
,`iosversion_id` int(11)
,`iosversion_name` varchar(255)
,`ram` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`location_id_friendlyname` varchar(255)
,`location_id_obsolescence_flag` int(1)
,`brand_id_friendlyname` varchar(255)
,`model_id_friendlyname` varchar(255)
,`rack_id_friendlyname` varchar(255)
,`rack_id_obsolescence_flag` int(1)
,`enclosure_id_friendlyname` varchar(255)
,`enclosure_id_obsolescence_flag` int(1)
,`powerA_id_friendlyname` varchar(255)
,`powerA_id_finalclass_recall` varchar(255)
,`powerA_id_obsolescence_flag` int(1)
,`powerB_id_friendlyname` varchar(255)
,`powerB_id_finalclass_recall` varchar(255)
,`powerB_id_obsolescence_flag` int(1)
,`networkdevicetype_id_friendlyname` varchar(255)
,`iosversion_id_friendlyname` varchar(511)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_networkdevicetype`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_networkdevicetype` (
`id` int(11)
,`name` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_networkinterface`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_networkinterface` (
`id` int(11)
,`name` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(511)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_normalchange`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_normalchange` (
`id` int(11)
,`operational_status` enum('closed','ongoing','resolved')
,`ref` varchar(255)
,`org_id` int(11)
,`org_name` varchar(255)
,`caller_id` int(11)
,`caller_name` varchar(255)
,`team_id` int(11)
,`team_name` varchar(255)
,`agent_id` int(11)
,`agent_name` varchar(255)
,`title` varchar(255)
,`description` text
,`start_date` datetime
,`end_date` datetime
,`last_update` datetime
,`close_date` datetime
,`private_log` longtext
,`status` enum('approved','assigned','closed','implemented','monitored','new','notapproved','plannedscheduled','rejected','validated')
,`reason` varchar(255)
,`requestor_id` int(11)
,`requestor_email` varchar(255)
,`creation_date` datetime
,`impact` varchar(255)
,`supervisor_group_id` int(11)
,`supervisor_group_name` varchar(255)
,`supervisor_id` int(11)
,`supervisor_email` varchar(255)
,`manager_group_id` int(11)
,`manager_group_name` varchar(255)
,`manager_id` int(11)
,`manager_email` varchar(255)
,`outage` enum('no','yes')
,`fallback` text
,`parent_id` int(11)
,`parent_name` varchar(255)
,`approval_date` datetime
,`approval_comment` varchar(255)
,`acceptance_date` datetime
,`acceptance_comment` text
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`caller_id_friendlyname` varchar(511)
,`caller_id_obsolescence_flag` int(1)
,`team_id_friendlyname` varchar(255)
,`team_id_obsolescence_flag` int(1)
,`agent_id_friendlyname` varchar(511)
,`agent_id_obsolescence_flag` int(1)
,`requestor_id_friendlyname` varchar(511)
,`requestor_id_obsolescence_flag` int(1)
,`supervisor_group_id_friendlyname` varchar(255)
,`supervisor_group_id_obsolescence_flag` int(1)
,`supervisor_id_friendlyname` varchar(511)
,`supervisor_id_obsolescence_flag` int(1)
,`manager_group_id_friendlyname` varchar(255)
,`manager_group_id_obsolescence_flag` int(1)
,`manager_id_friendlyname` varchar(511)
,`manager_id_obsolescence_flag` int(1)
,`parent_id_friendlyname` varchar(255)
,`parent_id_finalclass_recall` varchar(255)
,`description_format` enum('text','html')
,`private_log_index` blob
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_organization`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_organization` (
`id` int(11)
,`name` varchar(255)
,`code` varchar(255)
,`status` enum('active','inactive')
,`parent_id` int(11)
,`parent_name` varchar(255)
,`deliverymodel_id` int(11)
,`deliverymodel_name` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`parent_id_friendlyname` varchar(255)
,`parent_id_obsolescence_flag` int(1)
,`deliverymodel_id_friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_osfamily`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_osfamily` (
`id` int(11)
,`name` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_oslicence`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_oslicence` (
`id` int(11)
,`name` varchar(255)
,`org_id` int(11)
,`organization_name` varchar(255)
,`usage_limit` varchar(255)
,`description` text
,`start_date` date
,`end_date` date
,`licence_key` varchar(255)
,`perpetual` enum('no','yes')
,`osversion_id` int(11)
,`osversion_name` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`osversion_id_friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_ospatch`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_ospatch` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`osversion_id` int(11)
,`osversion_name` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`osversion_id_friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_osversion`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_osversion` (
`id` int(11)
,`name` varchar(255)
,`osfamily_id` int(11)
,`osfamily_name` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`osfamily_id_friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_othersoftware`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_othersoftware` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`system_id` int(11)
,`system_name` varchar(255)
,`software_id` int(11)
,`software_name` varchar(255)
,`softwarelicence_id` int(11)
,`softwarelicence_name` varchar(255)
,`path` varchar(255)
,`status` enum('active','inactive')
,`finalclass` varchar(255)
,`friendlyname` varchar(511)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`system_id_friendlyname` varchar(511)
,`system_id_finalclass_recall` varchar(255)
,`system_id_obsolescence_flag` int(1)
,`software_id_friendlyname` varchar(511)
,`softwarelicence_id_friendlyname` varchar(255)
,`softwarelicence_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_patch`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_patch` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_pc`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_pc` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`serialnumber` varchar(255)
,`location_id` int(11)
,`location_name` varchar(255)
,`status` enum('implementation','obsolete','production','stock')
,`brand_id` int(11)
,`brand_name` varchar(255)
,`model_id` int(11)
,`model_name` varchar(255)
,`asset_number` varchar(255)
,`purchase_date` date
,`end_of_warranty` date
,`osfamily_id` int(11)
,`osfamily_name` varchar(255)
,`osversion_id` int(11)
,`osversion_name` varchar(255)
,`cpu` varchar(255)
,`ram` varchar(255)
,`type` enum('desktop','laptop')
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`location_id_friendlyname` varchar(255)
,`location_id_obsolescence_flag` int(1)
,`brand_id_friendlyname` varchar(255)
,`model_id_friendlyname` varchar(255)
,`osfamily_id_friendlyname` varchar(255)
,`osversion_id_friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_pcsoftware`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_pcsoftware` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`system_id` int(11)
,`system_name` varchar(255)
,`software_id` int(11)
,`software_name` varchar(255)
,`softwarelicence_id` int(11)
,`softwarelicence_name` varchar(255)
,`path` varchar(255)
,`status` enum('active','inactive')
,`finalclass` varchar(255)
,`friendlyname` varchar(511)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`system_id_friendlyname` varchar(511)
,`system_id_finalclass_recall` varchar(255)
,`system_id_obsolescence_flag` int(1)
,`software_id_friendlyname` varchar(511)
,`softwarelicence_id_friendlyname` varchar(255)
,`softwarelicence_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_pdu`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_pdu` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`serialnumber` varchar(255)
,`location_id` int(11)
,`location_name` varchar(255)
,`status` enum('implementation','obsolete','production','stock')
,`brand_id` int(11)
,`brand_name` varchar(255)
,`model_id` int(11)
,`model_name` varchar(255)
,`asset_number` varchar(255)
,`purchase_date` date
,`end_of_warranty` date
,`rack_id` int(11)
,`rack_name` varchar(255)
,`powerstart_id` int(11)
,`powerstart_name` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`location_id_friendlyname` varchar(255)
,`location_id_obsolescence_flag` int(1)
,`brand_id_friendlyname` varchar(255)
,`model_id_friendlyname` varchar(255)
,`rack_id_friendlyname` varchar(255)
,`rack_id_obsolescence_flag` int(1)
,`powerstart_id_friendlyname` varchar(255)
,`powerstart_id_finalclass_recall` varchar(255)
,`powerstart_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_peripheral`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_peripheral` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`serialnumber` varchar(255)
,`location_id` int(11)
,`location_name` varchar(255)
,`status` enum('implementation','obsolete','production','stock')
,`brand_id` int(11)
,`brand_name` varchar(255)
,`model_id` int(11)
,`model_name` varchar(255)
,`asset_number` varchar(255)
,`purchase_date` date
,`end_of_warranty` date
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`location_id_friendlyname` varchar(255)
,`location_id_obsolescence_flag` int(1)
,`brand_id_friendlyname` varchar(255)
,`model_id_friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_person`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_person` (
`id` int(11)
,`name` varchar(255)
,`status` enum('active','inactive')
,`org_id` int(11)
,`org_name` varchar(255)
,`email` varchar(255)
,`phone` varchar(255)
,`notify` enum('no','yes')
,`function` varchar(255)
,`picture` varchar(255)
,`first_name` varchar(255)
,`employee_number` varchar(255)
,`mobile_phone` varchar(255)
,`location_id` int(11)
,`location_name` varchar(255)
,`manager_id` int(11)
,`manager_name` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(511)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`location_id_friendlyname` varchar(255)
,`location_id_obsolescence_flag` int(1)
,`manager_id_friendlyname` varchar(511)
,`manager_id_obsolescence_flag` int(1)
,`picture_data` longblob
,`picture_filename` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_phone`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_phone` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`serialnumber` varchar(255)
,`location_id` int(11)
,`location_name` varchar(255)
,`status` enum('implementation','obsolete','production','stock')
,`brand_id` int(11)
,`brand_name` varchar(255)
,`model_id` int(11)
,`model_name` varchar(255)
,`asset_number` varchar(255)
,`purchase_date` date
,`end_of_warranty` date
,`phonenumber` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`location_id_friendlyname` varchar(255)
,`location_id_obsolescence_flag` int(1)
,`brand_id_friendlyname` varchar(255)
,`model_id_friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_physicaldevice`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_physicaldevice` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`serialnumber` varchar(255)
,`location_id` int(11)
,`location_name` varchar(255)
,`status` enum('implementation','obsolete','production','stock')
,`brand_id` int(11)
,`brand_name` varchar(255)
,`model_id` int(11)
,`model_name` varchar(255)
,`asset_number` varchar(255)
,`purchase_date` date
,`end_of_warranty` date
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`location_id_friendlyname` varchar(255)
,`location_id_obsolescence_flag` int(1)
,`brand_id_friendlyname` varchar(255)
,`model_id_friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_physicalinterface`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_physicalinterface` (
`id` int(11)
,`name` varchar(255)
,`ipaddress` varchar(255)
,`macaddress` varchar(255)
,`comment` text
,`ipgateway` varchar(255)
,`ipmask` varchar(255)
,`speed` decimal(12,2)
,`connectableci_id` int(11)
,`connectableci_name` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(511)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`connectableci_id_friendlyname` varchar(255)
,`connectableci_id_finalclass_recall` varchar(255)
,`connectableci_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_powerconnection`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_powerconnection` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`serialnumber` varchar(255)
,`location_id` int(11)
,`location_name` varchar(255)
,`status` enum('implementation','obsolete','production','stock')
,`brand_id` int(11)
,`brand_name` varchar(255)
,`model_id` int(11)
,`model_name` varchar(255)
,`asset_number` varchar(255)
,`purchase_date` date
,`end_of_warranty` date
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`location_id_friendlyname` varchar(255)
,`location_id_obsolescence_flag` int(1)
,`brand_id_friendlyname` varchar(255)
,`model_id_friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_powersource`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_powersource` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`serialnumber` varchar(255)
,`location_id` int(11)
,`location_name` varchar(255)
,`status` enum('implementation','obsolete','production','stock')
,`brand_id` int(11)
,`brand_name` varchar(255)
,`model_id` int(11)
,`model_name` varchar(255)
,`asset_number` varchar(255)
,`purchase_date` date
,`end_of_warranty` date
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`location_id_friendlyname` varchar(255)
,`location_id_obsolescence_flag` int(1)
,`brand_id_friendlyname` varchar(255)
,`model_id_friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_printer`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_printer` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`serialnumber` varchar(255)
,`location_id` int(11)
,`location_name` varchar(255)
,`status` enum('implementation','obsolete','production','stock')
,`brand_id` int(11)
,`brand_name` varchar(255)
,`model_id` int(11)
,`model_name` varchar(255)
,`asset_number` varchar(255)
,`purchase_date` date
,`end_of_warranty` date
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`location_id_friendlyname` varchar(255)
,`location_id_obsolescence_flag` int(1)
,`brand_id_friendlyname` varchar(255)
,`model_id_friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_problem`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_problem` (
`id` int(11)
,`operational_status` enum('closed','ongoing','resolved')
,`ref` varchar(255)
,`org_id` int(11)
,`org_name` varchar(255)
,`caller_id` int(11)
,`caller_name` varchar(255)
,`team_id` int(11)
,`team_name` varchar(255)
,`agent_id` int(11)
,`agent_name` varchar(255)
,`title` varchar(255)
,`description` text
,`start_date` datetime
,`end_date` datetime
,`last_update` datetime
,`close_date` datetime
,`private_log` longtext
,`status` enum('assigned','closed','new','resolved')
,`service_id` int(11)
,`service_name` varchar(255)
,`servicesubcategory_id` int(11)
,`servicesubcategory_name` varchar(255)
,`product` varchar(255)
,`impact` enum('1','2','3')
,`urgency` enum('1','2','3','4')
,`priority` enum('1','2','3','4')
,`related_change_id` int(11)
,`related_change_ref` varchar(255)
,`assignment_date` datetime
,`resolution_date` datetime
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`caller_id_friendlyname` varchar(511)
,`caller_id_obsolescence_flag` int(1)
,`team_id_friendlyname` varchar(255)
,`team_id_obsolescence_flag` int(1)
,`agent_id_friendlyname` varchar(511)
,`agent_id_obsolescence_flag` int(1)
,`service_id_friendlyname` varchar(255)
,`servicesubcategory_id_friendlyname` varchar(255)
,`related_change_id_friendlyname` varchar(255)
,`related_change_id_finalclass_recall` varchar(255)
,`description_format` enum('text','html')
,`private_log_index` blob
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_providercontract`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_providercontract` (
`id` int(11)
,`name` varchar(255)
,`org_id` int(11)
,`organization_name` varchar(255)
,`description` text
,`start_date` date
,`end_date` date
,`cost` varchar(255)
,`cost_currency` enum('dollars','euros')
,`contracttype_id` int(11)
,`contracttype_name` varchar(255)
,`billing_frequency` varchar(255)
,`cost_unit` varchar(255)
,`provider_id` int(11)
,`provider_name` varchar(255)
,`status` enum('implementation','obsolete','production')
,`sla` varchar(255)
,`coverage` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`contracttype_id_friendlyname` varchar(255)
,`provider_id_friendlyname` varchar(255)
,`provider_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_rack`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_rack` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`serialnumber` varchar(255)
,`location_id` int(11)
,`location_name` varchar(255)
,`status` enum('implementation','obsolete','production','stock')
,`brand_id` int(11)
,`brand_name` varchar(255)
,`model_id` int(11)
,`model_name` varchar(255)
,`asset_number` varchar(255)
,`purchase_date` date
,`end_of_warranty` date
,`nb_u` int(11)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`location_id_friendlyname` varchar(255)
,`location_id_obsolescence_flag` int(1)
,`brand_id_friendlyname` varchar(255)
,`model_id_friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_routinechange`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_routinechange` (
`id` int(11)
,`operational_status` enum('closed','ongoing','resolved')
,`ref` varchar(255)
,`org_id` int(11)
,`org_name` varchar(255)
,`caller_id` int(11)
,`caller_name` varchar(255)
,`team_id` int(11)
,`team_name` varchar(255)
,`agent_id` int(11)
,`agent_name` varchar(255)
,`title` varchar(255)
,`description` text
,`start_date` datetime
,`end_date` datetime
,`last_update` datetime
,`close_date` datetime
,`private_log` longtext
,`status` enum('approved','assigned','closed','implemented','monitored','new','notapproved','plannedscheduled','rejected','validated')
,`reason` varchar(255)
,`requestor_id` int(11)
,`requestor_email` varchar(255)
,`creation_date` datetime
,`impact` varchar(255)
,`supervisor_group_id` int(11)
,`supervisor_group_name` varchar(255)
,`supervisor_id` int(11)
,`supervisor_email` varchar(255)
,`manager_group_id` int(11)
,`manager_group_name` varchar(255)
,`manager_id` int(11)
,`manager_email` varchar(255)
,`outage` enum('no','yes')
,`fallback` text
,`parent_id` int(11)
,`parent_name` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`caller_id_friendlyname` varchar(511)
,`caller_id_obsolescence_flag` int(1)
,`team_id_friendlyname` varchar(255)
,`team_id_obsolescence_flag` int(1)
,`agent_id_friendlyname` varchar(511)
,`agent_id_obsolescence_flag` int(1)
,`requestor_id_friendlyname` varchar(511)
,`requestor_id_obsolescence_flag` int(1)
,`supervisor_group_id_friendlyname` varchar(255)
,`supervisor_group_id_obsolescence_flag` int(1)
,`supervisor_id_friendlyname` varchar(511)
,`supervisor_id_obsolescence_flag` int(1)
,`manager_group_id_friendlyname` varchar(255)
,`manager_group_id_obsolescence_flag` int(1)
,`manager_id_friendlyname` varchar(511)
,`manager_id_obsolescence_flag` int(1)
,`parent_id_friendlyname` varchar(255)
,`parent_id_finalclass_recall` varchar(255)
,`description_format` enum('text','html')
,`private_log_index` blob
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_sanswitch`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_sanswitch` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`serialnumber` varchar(255)
,`location_id` int(11)
,`location_name` varchar(255)
,`status` enum('implementation','obsolete','production','stock')
,`brand_id` int(11)
,`brand_name` varchar(255)
,`model_id` int(11)
,`model_name` varchar(255)
,`asset_number` varchar(255)
,`purchase_date` date
,`end_of_warranty` date
,`rack_id` int(11)
,`rack_name` varchar(255)
,`enclosure_id` int(11)
,`enclosure_name` varchar(255)
,`nb_u` int(11)
,`managementip` varchar(255)
,`powerA_id` int(11)
,`powerA_name` varchar(255)
,`powerB_id` int(11)
,`powerB_name` varchar(255)
,`redundancy` varchar(20)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`location_id_friendlyname` varchar(255)
,`location_id_obsolescence_flag` int(1)
,`brand_id_friendlyname` varchar(255)
,`model_id_friendlyname` varchar(255)
,`rack_id_friendlyname` varchar(255)
,`rack_id_obsolescence_flag` int(1)
,`enclosure_id_friendlyname` varchar(255)
,`enclosure_id_obsolescence_flag` int(1)
,`powerA_id_friendlyname` varchar(255)
,`powerA_id_finalclass_recall` varchar(255)
,`powerA_id_obsolescence_flag` int(1)
,`powerB_id_friendlyname` varchar(255)
,`powerB_id_finalclass_recall` varchar(255)
,`powerB_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_server`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_server` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`serialnumber` varchar(255)
,`location_id` int(11)
,`location_name` varchar(255)
,`status` enum('implementation','obsolete','production','stock')
,`brand_id` int(11)
,`brand_name` varchar(255)
,`model_id` int(11)
,`model_name` varchar(255)
,`asset_number` varchar(255)
,`purchase_date` date
,`end_of_warranty` date
,`rack_id` int(11)
,`rack_name` varchar(255)
,`enclosure_id` int(11)
,`enclosure_name` varchar(255)
,`nb_u` int(11)
,`managementip` varchar(255)
,`powerA_id` int(11)
,`powerA_name` varchar(255)
,`powerB_id` int(11)
,`powerB_name` varchar(255)
,`redundancy` varchar(20)
,`osfamily_id` int(11)
,`osfamily_name` varchar(255)
,`osversion_id` int(11)
,`osversion_name` varchar(255)
,`oslicence_id` int(11)
,`oslicence_name` varchar(255)
,`cpu` varchar(255)
,`ram` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`location_id_friendlyname` varchar(255)
,`location_id_obsolescence_flag` int(1)
,`brand_id_friendlyname` varchar(255)
,`model_id_friendlyname` varchar(255)
,`rack_id_friendlyname` varchar(255)
,`rack_id_obsolescence_flag` int(1)
,`enclosure_id_friendlyname` varchar(255)
,`enclosure_id_obsolescence_flag` int(1)
,`powerA_id_friendlyname` varchar(255)
,`powerA_id_finalclass_recall` varchar(255)
,`powerA_id_obsolescence_flag` int(1)
,`powerB_id_friendlyname` varchar(255)
,`powerB_id_finalclass_recall` varchar(255)
,`powerB_id_obsolescence_flag` int(1)
,`osfamily_id_friendlyname` varchar(255)
,`osversion_id_friendlyname` varchar(255)
,`oslicence_id_friendlyname` varchar(255)
,`oslicence_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_service`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_service` (
`id` int(11)
,`name` varchar(255)
,`org_id` int(11)
,`organization_name` varchar(255)
,`servicefamily_id` int(11)
,`servicefamily_name` varchar(255)
,`description` varchar(255)
,`status` enum('implementation','obsolete','production')
,`icon` varchar(255)
,`friendlyname` varchar(255)
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`servicefamily_id_friendlyname` varchar(255)
,`icon_data` longblob
,`icon_filename` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_servicefamily`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_servicefamily` (
`id` int(11)
,`name` varchar(255)
,`icon` varchar(255)
,`friendlyname` varchar(255)
,`icon_data` longblob
,`icon_filename` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_servicesubcategory`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_servicesubcategory` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`service_id` int(11)
,`service_org_id` int(11)
,`service_name` varchar(255)
,`service_provider` varchar(255)
,`request_type` enum('incident','service_request')
,`status` enum('implementation','obsolete','production')
,`friendlyname` varchar(255)
,`service_id_friendlyname` varchar(255)
,`service_org_id_friendlyname` varchar(255)
,`service_org_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_sla`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_sla` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`friendlyname` varchar(255)
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_slt`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_slt` (
`id` int(11)
,`name` varchar(255)
,`priority` enum('1','2','3','4')
,`request_type` enum('incident','service_request')
,`metric` enum('tto','ttr')
,`value` int(11)
,`unit` enum('hours','minutes')
,`friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_software`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_software` (
`id` int(11)
,`name` varchar(255)
,`vendor` varchar(255)
,`version` varchar(255)
,`type` enum('DBServer','Middleware','OtherSoftware','PCSoftware','WebServer')
,`friendlyname` varchar(511)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_softwareinstance`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_softwareinstance` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`system_id` int(11)
,`system_name` varchar(255)
,`software_id` int(11)
,`software_name` varchar(255)
,`softwarelicence_id` int(11)
,`softwarelicence_name` varchar(255)
,`path` varchar(255)
,`status` enum('active','inactive')
,`finalclass` varchar(255)
,`friendlyname` varchar(511)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`system_id_friendlyname` varchar(511)
,`system_id_finalclass_recall` varchar(255)
,`system_id_obsolescence_flag` int(1)
,`software_id_friendlyname` varchar(511)
,`softwarelicence_id_friendlyname` varchar(255)
,`softwarelicence_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_softwarelicence`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_softwarelicence` (
`id` int(11)
,`name` varchar(255)
,`org_id` int(11)
,`organization_name` varchar(255)
,`usage_limit` varchar(255)
,`description` text
,`start_date` date
,`end_date` date
,`licence_key` varchar(255)
,`perpetual` enum('no','yes')
,`software_id` int(11)
,`software_name` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`software_id_friendlyname` varchar(511)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_softwarepatch`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_softwarepatch` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`software_id` int(11)
,`software_name` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`software_id_friendlyname` varchar(511)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_storagesystem`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_storagesystem` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`serialnumber` varchar(255)
,`location_id` int(11)
,`location_name` varchar(255)
,`status` enum('implementation','obsolete','production','stock')
,`brand_id` int(11)
,`brand_name` varchar(255)
,`model_id` int(11)
,`model_name` varchar(255)
,`asset_number` varchar(255)
,`purchase_date` date
,`end_of_warranty` date
,`rack_id` int(11)
,`rack_name` varchar(255)
,`enclosure_id` int(11)
,`enclosure_name` varchar(255)
,`nb_u` int(11)
,`managementip` varchar(255)
,`powerA_id` int(11)
,`powerA_name` varchar(255)
,`powerB_id` int(11)
,`powerB_name` varchar(255)
,`redundancy` varchar(20)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`location_id_friendlyname` varchar(255)
,`location_id_obsolescence_flag` int(1)
,`brand_id_friendlyname` varchar(255)
,`model_id_friendlyname` varchar(255)
,`rack_id_friendlyname` varchar(255)
,`rack_id_obsolescence_flag` int(1)
,`enclosure_id_friendlyname` varchar(255)
,`enclosure_id_obsolescence_flag` int(1)
,`powerA_id_friendlyname` varchar(255)
,`powerA_id_finalclass_recall` varchar(255)
,`powerA_id_obsolescence_flag` int(1)
,`powerB_id_friendlyname` varchar(255)
,`powerB_id_finalclass_recall` varchar(255)
,`powerB_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_subnet`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_subnet` (
`id` int(11)
,`description` text
,`subnet_name` varchar(255)
,`org_id` int(11)
,`org_name` varchar(255)
,`ip` varchar(255)
,`ip_mask` varchar(255)
,`friendlyname` varchar(511)
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_tablet`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_tablet` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`serialnumber` varchar(255)
,`location_id` int(11)
,`location_name` varchar(255)
,`status` enum('implementation','obsolete','production','stock')
,`brand_id` int(11)
,`brand_name` varchar(255)
,`model_id` int(11)
,`model_name` varchar(255)
,`asset_number` varchar(255)
,`purchase_date` date
,`end_of_warranty` date
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`location_id_friendlyname` varchar(255)
,`location_id_obsolescence_flag` int(1)
,`brand_id_friendlyname` varchar(255)
,`model_id_friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_tagsetfielddata`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_tagsetfielddata` (
`id` int(11)
,`code` varchar(255)
,`label` varchar(255)
,`description` longtext
,`obj_class` varchar(255)
,`obj_attcode` varchar(255)
,`friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_tape`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_tape` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`size` varchar(255)
,`tapelibrary_id` int(11)
,`tapelibrary_name` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`tapelibrary_id_friendlyname` varchar(255)
,`tapelibrary_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_tapelibrary`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_tapelibrary` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`serialnumber` varchar(255)
,`location_id` int(11)
,`location_name` varchar(255)
,`status` enum('implementation','obsolete','production','stock')
,`brand_id` int(11)
,`brand_name` varchar(255)
,`model_id` int(11)
,`model_name` varchar(255)
,`asset_number` varchar(255)
,`purchase_date` date
,`end_of_warranty` date
,`rack_id` int(11)
,`rack_name` varchar(255)
,`enclosure_id` int(11)
,`enclosure_name` varchar(255)
,`nb_u` int(11)
,`managementip` varchar(255)
,`powerA_id` int(11)
,`powerA_name` varchar(255)
,`powerB_id` int(11)
,`powerB_name` varchar(255)
,`redundancy` varchar(20)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`location_id_friendlyname` varchar(255)
,`location_id_obsolescence_flag` int(1)
,`brand_id_friendlyname` varchar(255)
,`model_id_friendlyname` varchar(255)
,`rack_id_friendlyname` varchar(255)
,`rack_id_obsolescence_flag` int(1)
,`enclosure_id_friendlyname` varchar(255)
,`enclosure_id_obsolescence_flag` int(1)
,`powerA_id_friendlyname` varchar(255)
,`powerA_id_finalclass_recall` varchar(255)
,`powerA_id_obsolescence_flag` int(1)
,`powerB_id_friendlyname` varchar(255)
,`powerB_id_finalclass_recall` varchar(255)
,`powerB_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_team`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_team` (
`id` int(11)
,`name` varchar(255)
,`status` enum('active','inactive')
,`org_id` int(11)
,`org_name` varchar(255)
,`email` varchar(255)
,`phone` varchar(255)
,`notify` enum('no','yes')
,`function` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_telephonyci`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_telephonyci` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`serialnumber` varchar(255)
,`location_id` int(11)
,`location_name` varchar(255)
,`status` enum('implementation','obsolete','production','stock')
,`brand_id` int(11)
,`brand_name` varchar(255)
,`model_id` int(11)
,`model_name` varchar(255)
,`asset_number` varchar(255)
,`purchase_date` date
,`end_of_warranty` date
,`phonenumber` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`location_id_friendlyname` varchar(255)
,`location_id_obsolescence_flag` int(1)
,`brand_id_friendlyname` varchar(255)
,`model_id_friendlyname` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_ticket`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_ticket` (
`id` int(11)
,`operational_status` enum('closed','ongoing','resolved')
,`ref` varchar(255)
,`org_id` int(11)
,`org_name` varchar(255)
,`caller_id` int(11)
,`caller_name` varchar(255)
,`team_id` int(11)
,`team_name` varchar(255)
,`agent_id` int(11)
,`agent_name` varchar(255)
,`title` varchar(255)
,`description` text
,`start_date` datetime
,`end_date` datetime
,`last_update` datetime
,`close_date` datetime
,`private_log` longtext
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`caller_id_friendlyname` varchar(511)
,`caller_id_obsolescence_flag` int(1)
,`team_id_friendlyname` varchar(255)
,`team_id_obsolescence_flag` int(1)
,`agent_id_friendlyname` varchar(511)
,`agent_id_obsolescence_flag` int(1)
,`description_format` enum('text','html')
,`private_log_index` blob
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_typology`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_typology` (
`id` int(11)
,`name` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(511)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_userrequest`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_userrequest` (
`id` int(11)
,`operational_status` enum('closed','ongoing','resolved')
,`ref` varchar(255)
,`org_id` int(11)
,`org_name` varchar(255)
,`caller_id` int(11)
,`caller_name` varchar(255)
,`team_id` int(11)
,`team_name` varchar(255)
,`agent_id` int(11)
,`agent_name` varchar(255)
,`title` varchar(255)
,`description` text
,`start_date` datetime
,`end_date` datetime
,`last_update` datetime
,`close_date` datetime
,`private_log` longtext
,`status` enum('approved','assigned','closed','escalated_tto','escalated_ttr','new','pending','rejected','resolved','waiting_for_approval')
,`request_type` enum('service_request')
,`impact` enum('1','2','3')
,`priority` enum('1','2','3','4')
,`urgency` enum('1','2','3','4')
,`origin` enum('mail','phone','portal')
,`approver_id` int(11)
,`approver_email` varchar(255)
,`service_id` int(11)
,`service_name` varchar(255)
,`servicesubcategory_id` int(11)
,`servicesubcategory_name` varchar(255)
,`escalation_flag` enum('no','yes')
,`escalation_reason` varchar(255)
,`assignment_date` datetime
,`resolution_date` datetime
,`last_pending_date` datetime
,`cumulatedpending` int(11) unsigned
,`tto` int(11) unsigned
,`ttr` int(11) unsigned
,`tto_escalation_deadline` datetime
,`sla_tto_passed` tinyint(1) unsigned
,`sla_tto_over` int(11) unsigned
,`ttr_escalation_deadline` datetime
,`sla_ttr_passed` tinyint(1) unsigned
,`sla_ttr_over` int(11) unsigned
,`time_spent` int(11) unsigned
,`resolution_code` enum('assistance','bug fixed','hardware repair','other','software patch','system update','training')
,`solution` text
,`pending_reason` text
,`parent_request_id` int(11)
,`parent_request_ref` varchar(255)
,`parent_incident_id` int(11)
,`parent_incident_ref` varchar(255)
,`parent_problem_id` int(11)
,`parent_problem_ref` varchar(255)
,`parent_change_id` int(11)
,`parent_change_ref` varchar(255)
,`public_log` longtext
,`user_satisfaction` enum('1','2','3','4')
,`user_comment` text
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`caller_id_friendlyname` varchar(511)
,`caller_id_obsolescence_flag` int(1)
,`team_id_friendlyname` varchar(255)
,`team_id_obsolescence_flag` int(1)
,`agent_id_friendlyname` varchar(511)
,`agent_id_obsolescence_flag` int(1)
,`approver_id_friendlyname` varchar(511)
,`approver_id_obsolescence_flag` int(1)
,`service_id_friendlyname` varchar(255)
,`servicesubcategory_id_friendlyname` varchar(255)
,`parent_request_id_friendlyname` varchar(255)
,`parent_incident_id_friendlyname` varchar(255)
,`parent_problem_id_friendlyname` varchar(255)
,`parent_change_id_friendlyname` varchar(255)
,`parent_change_id_finalclass_recall` varchar(255)
,`cumulatedpending_started` datetime
,`cumulatedpending_laststart` datetime
,`cumulatedpending_stopped` datetime
,`tto_started` datetime
,`tto_laststart` datetime
,`tto_stopped` datetime
,`tto_75_deadline` datetime
,`tto_75_passed` tinyint(1) unsigned
,`tto_75_triggered` tinyint(1)
,`tto_75_overrun` int(11) unsigned
,`tto_100_deadline` datetime
,`tto_100_passed` tinyint(1) unsigned
,`tto_100_triggered` tinyint(1)
,`tto_100_overrun` int(11) unsigned
,`ttr_started` datetime
,`ttr_laststart` datetime
,`ttr_stopped` datetime
,`ttr_75_deadline` datetime
,`ttr_75_passed` tinyint(1) unsigned
,`ttr_75_triggered` tinyint(1)
,`ttr_75_overrun` int(11) unsigned
,`ttr_100_deadline` datetime
,`ttr_100_passed` tinyint(1) unsigned
,`ttr_100_triggered` tinyint(1)
,`ttr_100_overrun` int(11) unsigned
,`public_log_index` blob
,`description_format` enum('text','html')
,`private_log_index` blob
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_virtualdevice`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_virtualdevice` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`status` enum('implementation','obsolete','production','stock')
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_virtualhost`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_virtualhost` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`status` enum('implementation','obsolete','production','stock')
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_virtualmachine`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_virtualmachine` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`status` enum('implementation','obsolete','production','stock')
,`virtualhost_id` int(11)
,`virtualhost_name` varchar(255)
,`osfamily_id` int(11)
,`osfamily_name` varchar(255)
,`osversion_id` int(11)
,`osversion_name` varchar(255)
,`oslicence_id` int(11)
,`oslicence_name` varchar(255)
,`cpu` varchar(255)
,`ram` varchar(255)
,`managementip` varchar(255)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`virtualhost_id_friendlyname` varchar(255)
,`virtualhost_id_finalclass_recall` varchar(255)
,`virtualhost_id_obsolescence_flag` int(1)
,`osfamily_id_friendlyname` varchar(255)
,`osversion_id_friendlyname` varchar(255)
,`oslicence_id_friendlyname` varchar(255)
,`oslicence_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_vlan`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_vlan` (
`id` int(11)
,`vlan_tag` varchar(255)
,`description` text
,`org_id` int(11)
,`org_name` varchar(255)
,`friendlyname` varchar(255)
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_webapplication`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_webapplication` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`webserver_id` int(11)
,`webserver_name` varchar(255)
,`url` varchar(2048)
,`finalclass` varchar(255)
,`friendlyname` varchar(255)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`webserver_id_friendlyname` varchar(511)
,`webserver_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_webserver`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_webserver` (
`id` int(11)
,`name` varchar(255)
,`description` text
,`org_id` int(11)
,`organization_name` varchar(255)
,`business_criticity` enum('high','low','medium')
,`move2production` date
,`system_id` int(11)
,`system_name` varchar(255)
,`software_id` int(11)
,`software_name` varchar(255)
,`softwarelicence_id` int(11)
,`softwarelicence_name` varchar(255)
,`path` varchar(255)
,`status` enum('active','inactive')
,`finalclass` varchar(255)
,`friendlyname` varchar(511)
,`obsolescence_flag` int(1)
,`obsolescence_date` date
,`org_id_friendlyname` varchar(255)
,`org_id_obsolescence_flag` int(1)
,`system_id_friendlyname` varchar(511)
,`system_id_finalclass_recall` varchar(255)
,`system_id_obsolescence_flag` int(1)
,`software_id_friendlyname` varchar(511)
,`softwarelicence_id_friendlyname` varchar(255)
,`softwarelicence_id_obsolescence_flag` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_workorder`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_workorder` (
`id` int(11)
,`name` varchar(255)
,`status` enum('closed','open')
,`description` text
,`ticket_id` int(11)
,`ticket_ref` varchar(255)
,`team_id` int(11)
,`team_name` varchar(255)
,`agent_id` int(11)
,`agent_email` varchar(255)
,`start_date` datetime
,`end_date` datetime
,`log` longtext
,`friendlyname` varchar(255)
,`ticket_id_friendlyname` varchar(255)
,`ticket_id_finalclass_recall` varchar(255)
,`team_id_friendlyname` varchar(255)
,`team_id_obsolescence_flag` int(1)
,`agent_id_friendlyname` varchar(511)
,`agent_id_obsolescence_flag` int(1)
,`log_index` blob
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `virtualdevice`
--

CREATE TABLE `virtualdevice` (
  `id` int(11) NOT NULL,
  `status` enum('implementation','obsolete','production','stock') COLLATE utf8mb4_unicode_ci DEFAULT 'production',
  `finalclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'VirtualDevice'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `virtualhost`
--

CREATE TABLE `virtualhost` (
  `id` int(11) NOT NULL,
  `finalclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'VirtualHost'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `virtualmachine`
--

CREATE TABLE `virtualmachine` (
  `id` int(11) NOT NULL,
  `virtualhost_id` int(11) DEFAULT '0',
  `osfamily_id` int(11) DEFAULT '0',
  `osversion_id` int(11) DEFAULT '0',
  `oslicence_id` int(11) DEFAULT '0',
  `cpu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `ram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `managementip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vlan`
--

CREATE TABLE `vlan` (
  `id` int(11) NOT NULL,
  `vlan_tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `org_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `webapplication`
--

CREATE TABLE `webapplication` (
  `id` int(11) NOT NULL,
  `webserver_id` int(11) DEFAULT '0',
  `url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `webserver`
--

CREATE TABLE `webserver` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `workorder`
--

CREATE TABLE `workorder` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` enum('closed','open') COLLATE utf8mb4_unicode_ci DEFAULT 'open',
  `description` text COLLATE utf8mb4_unicode_ci,
  `ticket_id` int(11) DEFAULT '0',
  `team_id` int(11) DEFAULT '0',
  `owner_id` int(11) DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `log` longtext COLLATE utf8mb4_unicode_ci,
  `log_index` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_applicationsolution`
--
DROP TABLE IF EXISTS `view_applicationsolution`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_applicationsolution`  AS SELECT DISTINCT `applicationsolution`.`id` AS `id`, `applicationsolution_functionalci`.`name` AS `name`, `applicationsolution_functionalci`.`description` AS `description`, `applicationsolution_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `applicationsolution_functionalci`.`business_criticity` AS `business_criticity`, `applicationsolution_functionalci`.`move2production` AS `move2production`, `applicationsolution`.`status` AS `status`, `applicationsolution`.`redundancy` AS `redundancy`, `applicationsolution_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`applicationsolution_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`applicationsolution`.`status` = 'inactive'),0) AS `obsolescence_flag`, `applicationsolution_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag` FROM (`applicationsolution` join (`functionalci` `applicationsolution_functionalci` join `organization` `organization_org_id` on((`applicationsolution_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`applicationsolution`.`id` = `applicationsolution_functionalci`.`id`))) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_approvedchange`
--
DROP TABLE IF EXISTS `view_approvedchange`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_approvedchange`  AS SELECT DISTINCT `approvedchange`.`id` AS `id`, `approvedchange_ticket`.`operational_status` AS `operational_status`, `approvedchange_ticket`.`ref` AS `ref`, `approvedchange_ticket`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `org_name`, `approvedchange_ticket`.`caller_id` AS `caller_id`, `person_caller_id_contact`.`name` AS `caller_name`, `approvedchange_ticket`.`team_id` AS `team_id`, `team_team_id_contact`.`email` AS `team_name`, `approvedchange_ticket`.`agent_id` AS `agent_id`, `person_agent_id_contact`.`name` AS `agent_name`, `approvedchange_ticket`.`title` AS `title`, `approvedchange_ticket`.`description` AS `description`, `approvedchange_ticket`.`start_date` AS `start_date`, `approvedchange_ticket`.`end_date` AS `end_date`, `approvedchange_ticket`.`last_update` AS `last_update`, `approvedchange_ticket`.`close_date` AS `close_date`, `approvedchange_ticket`.`private_log` AS `private_log`, `approvedchange_change`.`status` AS `status`, `approvedchange_change`.`reason` AS `reason`, `approvedchange_change`.`requestor_id` AS `requestor_id`, `person_requestor_id_contact`.`email` AS `requestor_email`, `approvedchange_change`.`creation_date` AS `creation_date`, `approvedchange_change`.`impact` AS `impact`, `approvedchange_change`.`supervisor_group_id` AS `supervisor_group_id`, `team_supervisor_group_id_contact`.`name` AS `supervisor_group_name`, `approvedchange_change`.`supervisor_id` AS `supervisor_id`, `person_supervisor_id_contact`.`email` AS `supervisor_email`, `approvedchange_change`.`manager_group_id` AS `manager_group_id`, `team_manager_group_id_contact`.`name` AS `manager_group_name`, `approvedchange_change`.`manager_id` AS `manager_id`, `person_manager_id_contact`.`email` AS `manager_email`, `approvedchange_change`.`outage` AS `outage`, `approvedchange_change`.`fallback` AS `fallback`, `approvedchange_change`.`parent_id` AS `parent_id`, `change_parent_id_ticket`.`ref` AS `parent_name`, `approvedchange`.`approval_date` AS `approval_date`, `approvedchange`.`approval_comment` AS `approval_comment`, `approvedchange_ticket`.`finalclass` AS `finalclass`, cast(concat(coalesce(`approvedchange_ticket`.`ref`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`person_caller_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_caller_id_contact`.`name`,'')) as char charset utf8mb4) AS `caller_id_friendlyname`, coalesce((`person_caller_id_contact`.`status` = 'inactive'),0) AS `caller_id_obsolescence_flag`, cast(concat(coalesce(`team_team_id_contact`.`name`,'')) as char charset utf8mb4) AS `team_id_friendlyname`, coalesce((`team_team_id_contact`.`status` = 'inactive'),0) AS `team_id_obsolescence_flag`, cast(concat(coalesce(`person_agent_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_agent_id_contact`.`name`,'')) as char charset utf8mb4) AS `agent_id_friendlyname`, coalesce((`person_agent_id_contact`.`status` = 'inactive'),0) AS `agent_id_obsolescence_flag`, cast(concat(coalesce(`person_requestor_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_requestor_id_contact`.`name`,'')) as char charset utf8mb4) AS `requestor_id_friendlyname`, coalesce((`person_requestor_id_contact`.`status` = 'inactive'),0) AS `requestor_id_obsolescence_flag`, cast(concat(coalesce(`team_supervisor_group_id_contact`.`name`,'')) as char charset utf8mb4) AS `supervisor_group_id_friendlyname`, coalesce((`team_supervisor_group_id_contact`.`status` = 'inactive'),0) AS `supervisor_group_id_obsolescence_flag`, cast(concat(coalesce(`person_supervisor_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_supervisor_id_contact`.`name`,'')) as char charset utf8mb4) AS `supervisor_id_friendlyname`, coalesce((`person_supervisor_id_contact`.`status` = 'inactive'),0) AS `supervisor_id_obsolescence_flag`, cast(concat(coalesce(`team_manager_group_id_contact`.`name`,'')) as char charset utf8mb4) AS `manager_group_id_friendlyname`, coalesce((`team_manager_group_id_contact`.`status` = 'inactive'),0) AS `manager_group_id_obsolescence_flag`, cast(concat(coalesce(`person_manager_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_manager_id_contact`.`name`,'')) as char charset utf8mb4) AS `manager_id_friendlyname`, coalesce((`person_manager_id_contact`.`status` = 'inactive'),0) AS `manager_id_obsolescence_flag`, cast(concat(coalesce(`change_parent_id_ticket`.`ref`,'')) as char charset utf8mb4) AS `parent_id_friendlyname`, `change_parent_id_ticket`.`finalclass` AS `parent_id_finalclass_recall`, `approvedchange_ticket`.`description_format` AS `description_format`, `approvedchange_ticket`.`private_log_index` AS `private_log_index` FROM ((`change_approved` `approvedchange` join ((((((`change` `approvedchange_change` left join (`person` `person_requestor_id` join `contact` `person_requestor_id_contact` on((`person_requestor_id`.`id` = `person_requestor_id_contact`.`id`))) on((`approvedchange_change`.`requestor_id` = `person_requestor_id`.`id`))) left join `contact` `team_supervisor_group_id_contact` on((`approvedchange_change`.`supervisor_group_id` = `team_supervisor_group_id_contact`.`id`))) left join (`person` `person_supervisor_id` join `contact` `person_supervisor_id_contact` on((`person_supervisor_id`.`id` = `person_supervisor_id_contact`.`id`))) on((`approvedchange_change`.`supervisor_id` = `person_supervisor_id`.`id`))) left join `contact` `team_manager_group_id_contact` on((`approvedchange_change`.`manager_group_id` = `team_manager_group_id_contact`.`id`))) left join (`person` `person_manager_id` join `contact` `person_manager_id_contact` on((`person_manager_id`.`id` = `person_manager_id_contact`.`id`))) on((`approvedchange_change`.`manager_id` = `person_manager_id`.`id`))) left join `ticket` `change_parent_id_ticket` on((`approvedchange_change`.`parent_id` = `change_parent_id_ticket`.`id`))) on((`approvedchange`.`id` = `approvedchange_change`.`id`))) join ((((`ticket` `approvedchange_ticket` join `organization` `organization_org_id` on((`approvedchange_ticket`.`org_id` = `organization_org_id`.`id`))) left join (`person` `person_caller_id` join `contact` `person_caller_id_contact` on((`person_caller_id`.`id` = `person_caller_id_contact`.`id`))) on((`approvedchange_ticket`.`caller_id` = `person_caller_id`.`id`))) left join `contact` `team_team_id_contact` on((`approvedchange_ticket`.`team_id` = `team_team_id_contact`.`id`))) left join (`person` `person_agent_id` join `contact` `person_agent_id_contact` on((`person_agent_id`.`id` = `person_agent_id_contact`.`id`))) on((`approvedchange_ticket`.`agent_id` = `person_agent_id`.`id`))) on((`approvedchange`.`id` = `approvedchange_ticket`.`id`))) WHERE (coalesce((`team_team_id_contact`.`finalclass` = 'Team'),1) AND coalesce((`team_supervisor_group_id_contact`.`finalclass` = 'Team'),1) AND coalesce((`team_manager_group_id_contact`.`finalclass` = 'Team'),1) AND coalesce((`change_parent_id_ticket`.`finalclass` in ('RoutineChange','ApprovedChange','NormalChange','EmergencyChange','Change')),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_attachment`
--
DROP TABLE IF EXISTS `view_attachment`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_attachment`  AS SELECT DISTINCT `attachment`.`id` AS `id`, `attachment`.`expire` AS `expire`, `attachment`.`temp_id` AS `temp_id`, `attachment`.`item_class` AS `item_class`, `attachment`.`item_id` AS `item_id`, `attachment`.`item_org_id` AS `item_org_id`, `attachment`.`contents_mimetype` AS `contents`, `attachment`.`creation_date` AS `creation_date`, `attachment`.`user_id` AS `user_id`, `user_user_id`.`contactid` AS `contact_id`, cast(concat(coalesce(`attachment`.`item_class`,''),coalesce(' ',''),coalesce(`attachment`.`temp_id`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`user_user_id`.`login`,'')) as char charset utf8mb4) AS `user_id_friendlyname`, `user_user_id`.`finalclass` AS `user_id_finalclass_recall`, cast(concat(coalesce(`person_contactid`.`first_name`,''),coalesce(' ',''),coalesce(`person_contactid_contact`.`name`,'')) as char charset utf8mb4) AS `contact_id_friendlyname`, coalesce((`person_contactid_contact`.`status` = 'inactive'),0) AS `contact_id_obsolescence_flag`, `attachment`.`contents_data` AS `contents_data`, `attachment`.`contents_filename` AS `contents_filename` FROM (`attachment` left join (`priv_user` `user_user_id` left join (`person` `person_contactid` join `contact` `person_contactid_contact` on((`person_contactid`.`id` = `person_contactid_contact`.`id`))) on((`user_user_id`.`contactid` = `person_contactid`.`id`))) on((`attachment`.`user_id` = `user_user_id`.`id`))) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_brand`
--
DROP TABLE IF EXISTS `view_brand`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_brand`  AS SELECT DISTINCT `brand_typology`.`id` AS `id`, `brand_typology`.`name` AS `name`, `brand_typology`.`finalclass` AS `finalclass`, cast(concat(coalesce(`brand_typology`.`name`,'')) as char charset utf8mb4) AS `friendlyname` FROM `typology` AS `brand_typology` WHERE coalesce((`brand_typology`.`finalclass` = 'Brand'),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_businessprocess`
--
DROP TABLE IF EXISTS `view_businessprocess`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_businessprocess`  AS SELECT DISTINCT `businessprocess`.`id` AS `id`, `businessprocess_functionalci`.`name` AS `name`, `businessprocess_functionalci`.`description` AS `description`, `businessprocess_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `businessprocess_functionalci`.`business_criticity` AS `business_criticity`, `businessprocess_functionalci`.`move2production` AS `move2production`, `businessprocess`.`status` AS `status`, `businessprocess_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`businessprocess_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`businessprocess`.`status` = 'inactive'),0) AS `obsolescence_flag`, `businessprocess_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag` FROM (`businessprocess` join (`functionalci` `businessprocess_functionalci` join `organization` `organization_org_id` on((`businessprocess_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`businessprocess`.`id` = `businessprocess_functionalci`.`id`))) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_change`
--
DROP TABLE IF EXISTS `view_change`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_change`  AS SELECT DISTINCT `change`.`id` AS `id`, `change_ticket`.`operational_status` AS `operational_status`, `change_ticket`.`ref` AS `ref`, `change_ticket`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `org_name`, `change_ticket`.`caller_id` AS `caller_id`, `person_caller_id_contact`.`name` AS `caller_name`, `change_ticket`.`team_id` AS `team_id`, `team_team_id_contact`.`email` AS `team_name`, `change_ticket`.`agent_id` AS `agent_id`, `person_agent_id_contact`.`name` AS `agent_name`, `change_ticket`.`title` AS `title`, `change_ticket`.`description` AS `description`, `change_ticket`.`start_date` AS `start_date`, `change_ticket`.`end_date` AS `end_date`, `change_ticket`.`last_update` AS `last_update`, `change_ticket`.`close_date` AS `close_date`, `change_ticket`.`private_log` AS `private_log`, `change`.`status` AS `status`, `change`.`reason` AS `reason`, `change`.`requestor_id` AS `requestor_id`, `person_requestor_id_contact`.`email` AS `requestor_email`, `change`.`creation_date` AS `creation_date`, `change`.`impact` AS `impact`, `change`.`supervisor_group_id` AS `supervisor_group_id`, `team_supervisor_group_id_contact`.`name` AS `supervisor_group_name`, `change`.`supervisor_id` AS `supervisor_id`, `person_supervisor_id_contact`.`email` AS `supervisor_email`, `change`.`manager_group_id` AS `manager_group_id`, `team_manager_group_id_contact`.`name` AS `manager_group_name`, `change`.`manager_id` AS `manager_id`, `person_manager_id_contact`.`email` AS `manager_email`, `change`.`outage` AS `outage`, `change`.`fallback` AS `fallback`, `change`.`parent_id` AS `parent_id`, `change_parent_id_ticket`.`ref` AS `parent_name`, `change_ticket`.`finalclass` AS `finalclass`, cast(concat(coalesce(`change_ticket`.`ref`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`person_caller_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_caller_id_contact`.`name`,'')) as char charset utf8mb4) AS `caller_id_friendlyname`, coalesce((`person_caller_id_contact`.`status` = 'inactive'),0) AS `caller_id_obsolescence_flag`, cast(concat(coalesce(`team_team_id_contact`.`name`,'')) as char charset utf8mb4) AS `team_id_friendlyname`, coalesce((`team_team_id_contact`.`status` = 'inactive'),0) AS `team_id_obsolescence_flag`, cast(concat(coalesce(`person_agent_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_agent_id_contact`.`name`,'')) as char charset utf8mb4) AS `agent_id_friendlyname`, coalesce((`person_agent_id_contact`.`status` = 'inactive'),0) AS `agent_id_obsolescence_flag`, cast(concat(coalesce(`person_requestor_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_requestor_id_contact`.`name`,'')) as char charset utf8mb4) AS `requestor_id_friendlyname`, coalesce((`person_requestor_id_contact`.`status` = 'inactive'),0) AS `requestor_id_obsolescence_flag`, cast(concat(coalesce(`team_supervisor_group_id_contact`.`name`,'')) as char charset utf8mb4) AS `supervisor_group_id_friendlyname`, coalesce((`team_supervisor_group_id_contact`.`status` = 'inactive'),0) AS `supervisor_group_id_obsolescence_flag`, cast(concat(coalesce(`person_supervisor_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_supervisor_id_contact`.`name`,'')) as char charset utf8mb4) AS `supervisor_id_friendlyname`, coalesce((`person_supervisor_id_contact`.`status` = 'inactive'),0) AS `supervisor_id_obsolescence_flag`, cast(concat(coalesce(`team_manager_group_id_contact`.`name`,'')) as char charset utf8mb4) AS `manager_group_id_friendlyname`, coalesce((`team_manager_group_id_contact`.`status` = 'inactive'),0) AS `manager_group_id_obsolescence_flag`, cast(concat(coalesce(`person_manager_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_manager_id_contact`.`name`,'')) as char charset utf8mb4) AS `manager_id_friendlyname`, coalesce((`person_manager_id_contact`.`status` = 'inactive'),0) AS `manager_id_obsolescence_flag`, cast(concat(coalesce(`change_parent_id_ticket`.`ref`,'')) as char charset utf8mb4) AS `parent_id_friendlyname`, `change_parent_id_ticket`.`finalclass` AS `parent_id_finalclass_recall`, `change_ticket`.`description_format` AS `description_format`, `change_ticket`.`private_log_index` AS `private_log_index` FROM (((((((`change` left join (`person` `person_requestor_id` join `contact` `person_requestor_id_contact` on((`person_requestor_id`.`id` = `person_requestor_id_contact`.`id`))) on((`change`.`requestor_id` = `person_requestor_id`.`id`))) left join `contact` `team_supervisor_group_id_contact` on((`change`.`supervisor_group_id` = `team_supervisor_group_id_contact`.`id`))) left join (`person` `person_supervisor_id` join `contact` `person_supervisor_id_contact` on((`person_supervisor_id`.`id` = `person_supervisor_id_contact`.`id`))) on((`change`.`supervisor_id` = `person_supervisor_id`.`id`))) left join `contact` `team_manager_group_id_contact` on((`change`.`manager_group_id` = `team_manager_group_id_contact`.`id`))) left join (`person` `person_manager_id` join `contact` `person_manager_id_contact` on((`person_manager_id`.`id` = `person_manager_id_contact`.`id`))) on((`change`.`manager_id` = `person_manager_id`.`id`))) left join `ticket` `change_parent_id_ticket` on((`change`.`parent_id` = `change_parent_id_ticket`.`id`))) join ((((`ticket` `change_ticket` join `organization` `organization_org_id` on((`change_ticket`.`org_id` = `organization_org_id`.`id`))) left join (`person` `person_caller_id` join `contact` `person_caller_id_contact` on((`person_caller_id`.`id` = `person_caller_id_contact`.`id`))) on((`change_ticket`.`caller_id` = `person_caller_id`.`id`))) left join `contact` `team_team_id_contact` on((`change_ticket`.`team_id` = `team_team_id_contact`.`id`))) left join (`person` `person_agent_id` join `contact` `person_agent_id_contact` on((`person_agent_id`.`id` = `person_agent_id_contact`.`id`))) on((`change_ticket`.`agent_id` = `person_agent_id`.`id`))) on((`change`.`id` = `change_ticket`.`id`))) WHERE (coalesce((`team_team_id_contact`.`finalclass` = 'Team'),1) AND coalesce((`team_supervisor_group_id_contact`.`finalclass` = 'Team'),1) AND coalesce((`team_manager_group_id_contact`.`finalclass` = 'Team'),1) AND coalesce((`change_parent_id_ticket`.`finalclass` in ('RoutineChange','ApprovedChange','NormalChange','EmergencyChange','Change')),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_connectableci`
--
DROP TABLE IF EXISTS `view_connectableci`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_connectableci`  AS SELECT DISTINCT `connectableci_physicaldevice`.`id` AS `id`, `connectableci_functionalci`.`name` AS `name`, `connectableci_functionalci`.`description` AS `description`, `connectableci_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `connectableci_functionalci`.`business_criticity` AS `business_criticity`, `connectableci_functionalci`.`move2production` AS `move2production`, `connectableci_physicaldevice`.`serialnumber` AS `serialnumber`, `connectableci_physicaldevice`.`location_id` AS `location_id`, `location_location_id`.`name` AS `location_name`, `connectableci_physicaldevice`.`status` AS `status`, `connectableci_physicaldevice`.`brand_id` AS `brand_id`, `brand_brand_id_typology`.`name` AS `brand_name`, `connectableci_physicaldevice`.`model_id` AS `model_id`, `model_model_id_typology`.`name` AS `model_name`, `connectableci_physicaldevice`.`asset_number` AS `asset_number`, `connectableci_physicaldevice`.`purchase_date` AS `purchase_date`, `connectableci_physicaldevice`.`end_of_warranty` AS `end_of_warranty`, `connectableci_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`connectableci_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`connectableci_physicaldevice`.`status` = 'obsolete'),0) AS `obsolescence_flag`, `connectableci_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`location_location_id`.`name`,'')) as char charset utf8mb4) AS `location_id_friendlyname`, coalesce((`location_location_id`.`status` = 'inactive'),0) AS `location_id_obsolescence_flag`, cast(concat(coalesce(`brand_brand_id_typology`.`name`,'')) as char charset utf8mb4) AS `brand_id_friendlyname`, cast(concat(coalesce(`model_model_id_typology`.`name`,'')) as char charset utf8mb4) AS `model_id_friendlyname` FROM ((((`physicaldevice` `connectableci_physicaldevice` left join `location` `location_location_id` on((`connectableci_physicaldevice`.`location_id` = `location_location_id`.`id`))) left join `typology` `brand_brand_id_typology` on((`connectableci_physicaldevice`.`brand_id` = `brand_brand_id_typology`.`id`))) left join `typology` `model_model_id_typology` on((`connectableci_physicaldevice`.`model_id` = `model_model_id_typology`.`id`))) join (`functionalci` `connectableci_functionalci` join `organization` `organization_org_id` on((`connectableci_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`connectableci_physicaldevice`.`id` = `connectableci_functionalci`.`id`))) WHERE (coalesce((`brand_brand_id_typology`.`finalclass` = 'Brand'),1) AND coalesce((`model_model_id_typology`.`finalclass` = 'Model'),1) AND coalesce((`connectableci_physicaldevice`.`finalclass` in ('DatacenterDevice','NetworkDevice','Server','PC','Printer','StorageSystem','SANSwitch','TapeLibrary','NAS','ConnectableCI')),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_contact`
--
DROP TABLE IF EXISTS `view_contact`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_contact`  AS SELECT DISTINCT `contact`.`id` AS `id`, `contact`.`name` AS `name`, `contact`.`status` AS `status`, `contact`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `org_name`, `contact`.`email` AS `email`, `contact`.`phone` AS `phone`, `contact`.`notify` AS `notify`, `contact`.`function` AS `function`, `contact`.`finalclass` AS `finalclass`, if((`contact`.`finalclass` in ('Team','Contact')),cast(concat(coalesce(`contact`.`name`,'')) as char charset utf8mb4),cast(concat(coalesce(`contact_poly_person`.`first_name`,''),coalesce(' ',''),coalesce(`contact`.`name`,'')) as char charset utf8mb4)) AS `friendlyname`, coalesce((`contact`.`status` = 'inactive'),0) AS `obsolescence_flag`, `contact`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag` FROM ((`contact` join `organization` `organization_org_id` on((`contact`.`org_id` = `organization_org_id`.`id`))) left join `person` `contact_poly_person` on((`contact`.`id` = `contact_poly_person`.`id`))) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_contacttype`
--
DROP TABLE IF EXISTS `view_contacttype`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_contacttype`  AS SELECT DISTINCT `contacttype_typology`.`id` AS `id`, `contacttype_typology`.`name` AS `name`, `contacttype_typology`.`finalclass` AS `finalclass`, cast(concat(coalesce(`contacttype_typology`.`name`,'')) as char charset utf8mb4) AS `friendlyname` FROM `typology` AS `contacttype_typology` WHERE coalesce((`contacttype_typology`.`finalclass` = 'ContactType'),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_contract`
--
DROP TABLE IF EXISTS `view_contract`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_contract`  AS SELECT DISTINCT `contract`.`id` AS `id`, `contract`.`name` AS `name`, `contract`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `contract`.`description` AS `description`, `contract`.`start_date` AS `start_date`, `contract`.`end_date` AS `end_date`, `contract`.`cost` AS `cost`, `contract`.`cost_currency` AS `cost_currency`, `contract`.`contracttype_id` AS `contracttype_id`, `contracttype_contracttype_id_typology`.`name` AS `contracttype_name`, `contract`.`billing_frequency` AS `billing_frequency`, `contract`.`cost_unit` AS `cost_unit`, `contract`.`provider_id` AS `provider_id`, `organization_provider_id`.`name` AS `provider_name`, `contract`.`status` AS `status`, `contract`.`finalclass` AS `finalclass`, cast(concat(coalesce(`contract`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`contracttype_contracttype_id_typology`.`name`,'')) as char charset utf8mb4) AS `contracttype_id_friendlyname`, cast(concat(coalesce(`organization_provider_id`.`name`,'')) as char charset utf8mb4) AS `provider_id_friendlyname`, coalesce((`organization_provider_id`.`status` = 'inactive'),0) AS `provider_id_obsolescence_flag` FROM (((`contract` join `organization` `organization_org_id` on((`contract`.`org_id` = `organization_org_id`.`id`))) left join `typology` `contracttype_contracttype_id_typology` on((`contract`.`contracttype_id` = `contracttype_contracttype_id_typology`.`id`))) join `organization` `organization_provider_id` on((`contract`.`provider_id` = `organization_provider_id`.`id`))) WHERE coalesce((`contracttype_contracttype_id_typology`.`finalclass` = 'ContractType'),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_contracttype`
--
DROP TABLE IF EXISTS `view_contracttype`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_contracttype`  AS SELECT DISTINCT `contracttype_typology`.`id` AS `id`, `contracttype_typology`.`name` AS `name`, `contracttype_typology`.`finalclass` AS `finalclass`, cast(concat(coalesce(`contracttype_typology`.`name`,'')) as char charset utf8mb4) AS `friendlyname` FROM `typology` AS `contracttype_typology` WHERE coalesce((`contracttype_typology`.`finalclass` = 'ContractType'),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_customercontract`
--
DROP TABLE IF EXISTS `view_customercontract`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_customercontract`  AS SELECT DISTINCT `customercontract_contract`.`id` AS `id`, `customercontract_contract`.`name` AS `name`, `customercontract_contract`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `customercontract_contract`.`description` AS `description`, `customercontract_contract`.`start_date` AS `start_date`, `customercontract_contract`.`end_date` AS `end_date`, `customercontract_contract`.`cost` AS `cost`, `customercontract_contract`.`cost_currency` AS `cost_currency`, `customercontract_contract`.`contracttype_id` AS `contracttype_id`, `contracttype_contracttype_id_typology`.`name` AS `contracttype_name`, `customercontract_contract`.`billing_frequency` AS `billing_frequency`, `customercontract_contract`.`cost_unit` AS `cost_unit`, `customercontract_contract`.`provider_id` AS `provider_id`, `organization_provider_id`.`name` AS `provider_name`, `customercontract_contract`.`status` AS `status`, `customercontract_contract`.`finalclass` AS `finalclass`, cast(concat(coalesce(`customercontract_contract`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`contracttype_contracttype_id_typology`.`name`,'')) as char charset utf8mb4) AS `contracttype_id_friendlyname`, cast(concat(coalesce(`organization_provider_id`.`name`,'')) as char charset utf8mb4) AS `provider_id_friendlyname`, coalesce((`organization_provider_id`.`status` = 'inactive'),0) AS `provider_id_obsolescence_flag` FROM (((`contract` `customercontract_contract` join `organization` `organization_org_id` on((`customercontract_contract`.`org_id` = `organization_org_id`.`id`))) left join `typology` `contracttype_contracttype_id_typology` on((`customercontract_contract`.`contracttype_id` = `contracttype_contracttype_id_typology`.`id`))) join `organization` `organization_provider_id` on((`customercontract_contract`.`provider_id` = `organization_provider_id`.`id`))) WHERE (coalesce((`contracttype_contracttype_id_typology`.`finalclass` = 'ContractType'),1) AND coalesce((`customercontract_contract`.`finalclass` = 'CustomerContract'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_databaseschema`
--
DROP TABLE IF EXISTS `view_databaseschema`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_databaseschema`  AS SELECT DISTINCT `databaseschema`.`id` AS `id`, `databaseschema_functionalci`.`name` AS `name`, `databaseschema_functionalci`.`description` AS `description`, `databaseschema_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `databaseschema_functionalci`.`business_criticity` AS `business_criticity`, `databaseschema_functionalci`.`move2production` AS `move2production`, `databaseschema`.`dbserver_id` AS `dbserver_id`, `dbserver_dbserver_id_functionalci`.`name` AS `dbserver_name`, `databaseschema_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`databaseschema_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce(coalesce((`dbserver_dbserver_id_softwareinstance`.`status` = 'inactive'),0),0) AS `obsolescence_flag`, `databaseschema_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`dbserver_dbserver_id_functionalci`.`name`,''),coalesce(' ',''),coalesce(`functionalci_system_id`.`name`,'')) as char charset utf8mb4) AS `dbserver_id_friendlyname`, coalesce((`dbserver_dbserver_id_softwareinstance`.`status` = 'inactive'),0) AS `dbserver_id_obsolescence_flag` FROM ((`databaseschema` join ((`softwareinstance` `dbserver_dbserver_id_softwareinstance` join `functionalci` `functionalci_system_id` on((`dbserver_dbserver_id_softwareinstance`.`functionalci_id` = `functionalci_system_id`.`id`))) join `functionalci` `dbserver_dbserver_id_functionalci` on((`dbserver_dbserver_id_softwareinstance`.`id` = `dbserver_dbserver_id_functionalci`.`id`))) on((`databaseschema`.`dbserver_id` = `dbserver_dbserver_id_softwareinstance`.`id`))) join (`functionalci` `databaseschema_functionalci` join `organization` `organization_org_id` on((`databaseschema_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`databaseschema`.`id` = `databaseschema_functionalci`.`id`))) WHERE coalesce((`dbserver_dbserver_id_softwareinstance`.`finalclass` = 'DBServer'),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_datacenterdevice`
--
DROP TABLE IF EXISTS `view_datacenterdevice`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_datacenterdevice`  AS SELECT DISTINCT `datacenterdevice`.`id` AS `id`, `datacenterdevice_functionalci`.`name` AS `name`, `datacenterdevice_functionalci`.`description` AS `description`, `datacenterdevice_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `datacenterdevice_functionalci`.`business_criticity` AS `business_criticity`, `datacenterdevice_functionalci`.`move2production` AS `move2production`, `datacenterdevice_physicaldevice`.`serialnumber` AS `serialnumber`, `datacenterdevice_physicaldevice`.`location_id` AS `location_id`, `location_location_id`.`name` AS `location_name`, `datacenterdevice_physicaldevice`.`status` AS `status`, `datacenterdevice_physicaldevice`.`brand_id` AS `brand_id`, `brand_brand_id_typology`.`name` AS `brand_name`, `datacenterdevice_physicaldevice`.`model_id` AS `model_id`, `model_model_id_typology`.`name` AS `model_name`, `datacenterdevice_physicaldevice`.`asset_number` AS `asset_number`, `datacenterdevice_physicaldevice`.`purchase_date` AS `purchase_date`, `datacenterdevice_physicaldevice`.`end_of_warranty` AS `end_of_warranty`, `datacenterdevice`.`rack_id` AS `rack_id`, `rack_rack_id_functionalci`.`name` AS `rack_name`, `datacenterdevice`.`enclosure_id` AS `enclosure_id`, `enclosure_enclosure_id_functionalci`.`name` AS `enclosure_name`, `datacenterdevice`.`nb_u` AS `nb_u`, `datacenterdevice`.`managementip` AS `managementip`, `datacenterdevice`.`powera_id` AS `powerA_id`, `powerconnection_powera_id_functionalci`.`name` AS `powerA_name`, `datacenterdevice`.`powerB_id` AS `powerB_id`, `powerconnection_powerb_id_functionalci`.`name` AS `powerB_name`, `datacenterdevice`.`redundancy` AS `redundancy`, `datacenterdevice_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`datacenterdevice_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`datacenterdevice_physicaldevice`.`status` = 'obsolete'),0) AS `obsolescence_flag`, `datacenterdevice_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`location_location_id`.`name`,'')) as char charset utf8mb4) AS `location_id_friendlyname`, coalesce((`location_location_id`.`status` = 'inactive'),0) AS `location_id_obsolescence_flag`, cast(concat(coalesce(`brand_brand_id_typology`.`name`,'')) as char charset utf8mb4) AS `brand_id_friendlyname`, cast(concat(coalesce(`model_model_id_typology`.`name`,'')) as char charset utf8mb4) AS `model_id_friendlyname`, cast(concat(coalesce(`rack_rack_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `rack_id_friendlyname`, coalesce((`rack_rack_id_physicaldevice`.`status` = 'obsolete'),0) AS `rack_id_obsolescence_flag`, cast(concat(coalesce(`enclosure_enclosure_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `enclosure_id_friendlyname`, coalesce((`enclosure_enclosure_id_physicaldevice`.`status` = 'obsolete'),0) AS `enclosure_id_obsolescence_flag`, cast(concat(coalesce(`powerconnection_powera_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `powerA_id_friendlyname`, `powerconnection_powera_id_functionalci`.`finalclass` AS `powerA_id_finalclass_recall`, coalesce((`powerconnection_powera_id_physicaldevice`.`status` = 'obsolete'),0) AS `powerA_id_obsolescence_flag`, cast(concat(coalesce(`powerconnection_powerb_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `powerB_id_friendlyname`, `powerconnection_powerb_id_functionalci`.`finalclass` AS `powerB_id_finalclass_recall`, coalesce((`powerconnection_powerb_id_physicaldevice`.`status` = 'obsolete'),0) AS `powerB_id_obsolescence_flag` FROM ((((((`datacenterdevice` left join (`physicaldevice` `rack_rack_id_physicaldevice` join `functionalci` `rack_rack_id_functionalci` on((`rack_rack_id_physicaldevice`.`id` = `rack_rack_id_functionalci`.`id`))) on((`datacenterdevice`.`rack_id` = `rack_rack_id_physicaldevice`.`id`))) left join (`physicaldevice` `enclosure_enclosure_id_physicaldevice` join `functionalci` `enclosure_enclosure_id_functionalci` on((`enclosure_enclosure_id_physicaldevice`.`id` = `enclosure_enclosure_id_functionalci`.`id`))) on((`datacenterdevice`.`enclosure_id` = `enclosure_enclosure_id_physicaldevice`.`id`))) left join (`physicaldevice` `powerconnection_powera_id_physicaldevice` join `functionalci` `powerconnection_powera_id_functionalci` on((`powerconnection_powera_id_physicaldevice`.`id` = `powerconnection_powera_id_functionalci`.`id`))) on((`datacenterdevice`.`powera_id` = `powerconnection_powera_id_physicaldevice`.`id`))) left join (`physicaldevice` `powerconnection_powerb_id_physicaldevice` join `functionalci` `powerconnection_powerb_id_functionalci` on((`powerconnection_powerb_id_physicaldevice`.`id` = `powerconnection_powerb_id_functionalci`.`id`))) on((`datacenterdevice`.`powerB_id` = `powerconnection_powerb_id_physicaldevice`.`id`))) join (((`physicaldevice` `datacenterdevice_physicaldevice` left join `location` `location_location_id` on((`datacenterdevice_physicaldevice`.`location_id` = `location_location_id`.`id`))) left join `typology` `brand_brand_id_typology` on((`datacenterdevice_physicaldevice`.`brand_id` = `brand_brand_id_typology`.`id`))) left join `typology` `model_model_id_typology` on((`datacenterdevice_physicaldevice`.`model_id` = `model_model_id_typology`.`id`))) on((`datacenterdevice`.`id` = `datacenterdevice_physicaldevice`.`id`))) join (`functionalci` `datacenterdevice_functionalci` join `organization` `organization_org_id` on((`datacenterdevice_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`datacenterdevice`.`id` = `datacenterdevice_functionalci`.`id`))) WHERE (coalesce((`brand_brand_id_typology`.`finalclass` = 'Brand'),1) AND coalesce((`model_model_id_typology`.`finalclass` = 'Model'),1) AND coalesce((`rack_rack_id_physicaldevice`.`finalclass` = 'Rack'),1) AND coalesce((`enclosure_enclosure_id_physicaldevice`.`finalclass` = 'Enclosure'),1) AND coalesce((`powerconnection_powera_id_physicaldevice`.`finalclass` in ('PowerSource','PDU','PowerConnection')),1) AND coalesce((`powerconnection_powerb_id_physicaldevice`.`finalclass` in ('PowerSource','PDU','PowerConnection')),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_dbserver`
--
DROP TABLE IF EXISTS `view_dbserver`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_dbserver`  AS SELECT DISTINCT `dbserver_softwareinstance`.`id` AS `id`, `dbserver_functionalci`.`name` AS `name`, `dbserver_functionalci`.`description` AS `description`, `dbserver_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `dbserver_functionalci`.`business_criticity` AS `business_criticity`, `dbserver_functionalci`.`move2production` AS `move2production`, `dbserver_softwareinstance`.`functionalci_id` AS `system_id`, `functionalci_system_id`.`name` AS `system_name`, `dbserver_softwareinstance`.`software_id` AS `software_id`, `software_software_id`.`name` AS `software_name`, `dbserver_softwareinstance`.`softwarelicence_id` AS `softwarelicence_id`, `softwarelicence_softwarelicence_id_licence`.`name` AS `softwarelicence_name`, `dbserver_softwareinstance`.`path` AS `path`, `dbserver_softwareinstance`.`status` AS `status`, `dbserver_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`dbserver_functionalci`.`name`,''),coalesce(' ',''),coalesce(`functionalci_system_id`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`dbserver_softwareinstance`.`status` = 'inactive'),0) AS `obsolescence_flag`, `dbserver_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, if((`functionalci_system_id`.`finalclass` in ('Middleware','DBServer','WebServer','PCSoftware','OtherSoftware')),cast(concat(coalesce(`functionalci_system_id`.`name`,''),coalesce(' ',''),coalesce(`functionalci_system_id1`.`name`,'')) as char charset utf8mb4),cast(concat(coalesce(`functionalci_system_id`.`name`,'')) as char charset utf8mb4)) AS `system_id_friendlyname`, `functionalci_system_id`.`finalclass` AS `system_id_finalclass_recall`, if((`functionalci_system_id`.`finalclass` = 'FunctionalCI'),coalesce(0,0),if((`functionalci_system_id`.`finalclass` in ('Hypervisor','Farm','VirtualMachine')),coalesce((`functionalci_system_id_poly_virtualdevice`.`status` = 'obsolete'),0),if((`functionalci_system_id`.`finalclass` = 'WebApplication'),coalesce(coalesce((`webserver_webserver_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_system_id`.`finalclass` = 'DatabaseSchema'),coalesce(coalesce((`dbserver_dbserver_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_system_id`.`finalclass` = 'MiddlewareInstance'),coalesce(coalesce((`middleware_middleware_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_system_id`.`finalclass` in ('Middleware','DBServer','WebServer','PCSoftware','OtherSoftware')),coalesce((`functionalci_system_id_poly_softwareinstance`.`status` = 'inactive'),0),if((`functionalci_system_id`.`finalclass` = 'BusinessProcess'),coalesce((`functionalci_system_id_poly_businessprocess`.`status` = 'inactive'),0),if((`functionalci_system_id`.`finalclass` = 'ApplicationSolution'),coalesce((`functionalci_system_id_poly_applicationsolution`.`status` = 'inactive'),0),coalesce((`functionalci_system_id_poly_physicaldevice`.`status` = 'obsolete'),0))))))))) AS `system_id_obsolescence_flag`, cast(concat(coalesce(`software_software_id`.`name`,''),coalesce(' ',''),coalesce(`software_software_id`.`version`,'')) as char charset utf8mb4) AS `software_id_friendlyname`, cast(concat(coalesce(`softwarelicence_softwarelicence_id_licence`.`name`,'')) as char charset utf8mb4) AS `softwarelicence_id_friendlyname`, coalesce(((`softwarelicence_softwarelicence_id_licence`.`perpetual` = 'no') and (isnull(`softwarelicence_softwarelicence_id_licence`.`end_date`) = 0) and (`softwarelicence_softwarelicence_id_licence`.`end_date` < date_format((now() - interval 15 month),'%Y-%m-%d 00:00:00'))),0) AS `softwarelicence_id_obsolescence_flag` FROM ((((`softwareinstance` `dbserver_softwareinstance` join ((((((((`functionalci` `functionalci_system_id` left join (`softwareinstance` `functionalci_system_id_poly_softwareinstance` join `functionalci` `functionalci_system_id1` on((`functionalci_system_id_poly_softwareinstance`.`functionalci_id` = `functionalci_system_id1`.`id`))) on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_softwareinstance`.`id`))) left join `virtualdevice` `functionalci_system_id_poly_virtualdevice` on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_virtualdevice`.`id`))) left join (`webapplication` `functionalci_system_id_poly_webapplication` join `softwareinstance` `webserver_webserver_id_softwareinstance` on((`functionalci_system_id_poly_webapplication`.`webserver_id` = `webserver_webserver_id_softwareinstance`.`id`))) on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_webapplication`.`id`))) left join (`databaseschema` `functionalci_system_id_poly_databaseschema` join `softwareinstance` `dbserver_dbserver_id_softwareinstance` on((`functionalci_system_id_poly_databaseschema`.`dbserver_id` = `dbserver_dbserver_id_softwareinstance`.`id`))) on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_databaseschema`.`id`))) left join (`middlewareinstance` `functionalci_system_id_poly_middlewareinstance` join `softwareinstance` `middleware_middleware_id_softwareinstance` on((`functionalci_system_id_poly_middlewareinstance`.`middleware_id` = `middleware_middleware_id_softwareinstance`.`id`))) on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_middlewareinstance`.`id`))) left join `businessprocess` `functionalci_system_id_poly_businessprocess` on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_businessprocess`.`id`))) left join `applicationsolution` `functionalci_system_id_poly_applicationsolution` on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_applicationsolution`.`id`))) left join `physicaldevice` `functionalci_system_id_poly_physicaldevice` on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_physicaldevice`.`id`))) on((`dbserver_softwareinstance`.`functionalci_id` = `functionalci_system_id`.`id`))) left join `software` `software_software_id` on((`dbserver_softwareinstance`.`software_id` = `software_software_id`.`id`))) left join `licence` `softwarelicence_softwarelicence_id_licence` on((`dbserver_softwareinstance`.`softwarelicence_id` = `softwarelicence_softwarelicence_id_licence`.`id`))) join (`functionalci` `dbserver_functionalci` join `organization` `organization_org_id` on((`dbserver_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`dbserver_softwareinstance`.`id` = `dbserver_functionalci`.`id`))) WHERE (coalesce((`webserver_webserver_id_softwareinstance`.`finalclass` = 'WebServer'),1) AND coalesce((`dbserver_dbserver_id_softwareinstance`.`finalclass` = 'DBServer'),1) AND coalesce((`middleware_middleware_id_softwareinstance`.`finalclass` = 'Middleware'),1) AND coalesce((`softwarelicence_softwarelicence_id_licence`.`finalclass` = 'SoftwareLicence'),1) AND coalesce((`dbserver_softwareinstance`.`finalclass` = 'DBServer'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_deliverymodel`
--
DROP TABLE IF EXISTS `view_deliverymodel`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_deliverymodel`  AS SELECT DISTINCT `deliverymodel`.`id` AS `id`, `deliverymodel`.`name` AS `name`, `deliverymodel`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `deliverymodel`.`description` AS `description`, cast(concat(coalesce(`deliverymodel`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag` FROM (`deliverymodel` join `organization` `organization_org_id` on((`deliverymodel`.`org_id` = `organization_org_id`.`id`))) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_document`
--
DROP TABLE IF EXISTS `view_document`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_document`  AS SELECT DISTINCT `document`.`id` AS `id`, `document`.`name` AS `name`, `document`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `org_name`, `document`.`documenttype_id` AS `documenttype_id`, `documenttype_documenttype_id_typology`.`name` AS `documenttype_name`, `document`.`version` AS `version`, `document`.`description` AS `description`, `document`.`status` AS `status`, `document`.`finalclass` AS `finalclass`, if((`document`.`finalclass` = 'Document'),cast(concat(coalesce('Document','')) as char charset utf8mb4),cast(concat(coalesce(`document`.`name`,'')) as char charset utf8mb4)) AS `friendlyname`, coalesce((`document`.`status` = 'obsolete'),0) AS `obsolescence_flag`, `document`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`documenttype_documenttype_id_typology`.`name`,'')) as char charset utf8mb4) AS `documenttype_id_friendlyname` FROM ((`document` join `organization` `organization_org_id` on((`document`.`org_id` = `organization_org_id`.`id`))) left join `typology` `documenttype_documenttype_id_typology` on((`document`.`documenttype_id` = `documenttype_documenttype_id_typology`.`id`))) WHERE coalesce((`documenttype_documenttype_id_typology`.`finalclass` = 'DocumentType'),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_documentfile`
--
DROP TABLE IF EXISTS `view_documentfile`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_documentfile`  AS SELECT DISTINCT `documentfile`.`id` AS `id`, `documentfile_document`.`name` AS `name`, `documentfile_document`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `org_name`, `documentfile_document`.`documenttype_id` AS `documenttype_id`, `documenttype_documenttype_id_typology`.`name` AS `documenttype_name`, `documentfile_document`.`version` AS `version`, `documentfile_document`.`description` AS `description`, `documentfile_document`.`status` AS `status`, `documentfile`.`file_mimetype` AS `file`, `documentfile_document`.`finalclass` AS `finalclass`, cast(concat(coalesce(`documentfile_document`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`documentfile_document`.`status` = 'obsolete'),0) AS `obsolescence_flag`, `documentfile_document`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`documenttype_documenttype_id_typology`.`name`,'')) as char charset utf8mb4) AS `documenttype_id_friendlyname`, `documentfile`.`file_data` AS `file_data`, `documentfile`.`file_filename` AS `file_filename` FROM (`documentfile` join ((`document` `documentfile_document` join `organization` `organization_org_id` on((`documentfile_document`.`org_id` = `organization_org_id`.`id`))) left join `typology` `documenttype_documenttype_id_typology` on((`documentfile_document`.`documenttype_id` = `documenttype_documenttype_id_typology`.`id`))) on((`documentfile`.`id` = `documentfile_document`.`id`))) WHERE coalesce((`documenttype_documenttype_id_typology`.`finalclass` = 'DocumentType'),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_documentnote`
--
DROP TABLE IF EXISTS `view_documentnote`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_documentnote`  AS SELECT DISTINCT `documentnote`.`id` AS `id`, `documentnote_document`.`name` AS `name`, `documentnote_document`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `org_name`, `documentnote_document`.`documenttype_id` AS `documenttype_id`, `documenttype_documenttype_id_typology`.`name` AS `documenttype_name`, `documentnote_document`.`version` AS `version`, `documentnote_document`.`description` AS `description`, `documentnote_document`.`status` AS `status`, `documentnote`.`text` AS `text`, `documentnote_document`.`finalclass` AS `finalclass`, cast(concat(coalesce(`documentnote_document`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`documentnote_document`.`status` = 'obsolete'),0) AS `obsolescence_flag`, `documentnote_document`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`documenttype_documenttype_id_typology`.`name`,'')) as char charset utf8mb4) AS `documenttype_id_friendlyname` FROM (`documentnote` join ((`document` `documentnote_document` join `organization` `organization_org_id` on((`documentnote_document`.`org_id` = `organization_org_id`.`id`))) left join `typology` `documenttype_documenttype_id_typology` on((`documentnote_document`.`documenttype_id` = `documenttype_documenttype_id_typology`.`id`))) on((`documentnote`.`id` = `documentnote_document`.`id`))) WHERE coalesce((`documenttype_documenttype_id_typology`.`finalclass` = 'DocumentType'),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_documenttype`
--
DROP TABLE IF EXISTS `view_documenttype`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_documenttype`  AS SELECT DISTINCT `documenttype_typology`.`id` AS `id`, `documenttype_typology`.`name` AS `name`, `documenttype_typology`.`finalclass` AS `finalclass`, cast(concat(coalesce(`documenttype_typology`.`name`,'')) as char charset utf8mb4) AS `friendlyname` FROM `typology` AS `documenttype_typology` WHERE coalesce((`documenttype_typology`.`finalclass` = 'DocumentType'),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_documentweb`
--
DROP TABLE IF EXISTS `view_documentweb`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_documentweb`  AS SELECT DISTINCT `documentweb`.`id` AS `id`, `documentweb_document`.`name` AS `name`, `documentweb_document`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `org_name`, `documentweb_document`.`documenttype_id` AS `documenttype_id`, `documenttype_documenttype_id_typology`.`name` AS `documenttype_name`, `documentweb_document`.`version` AS `version`, `documentweb_document`.`description` AS `description`, `documentweb_document`.`status` AS `status`, `documentweb`.`url` AS `url`, `documentweb_document`.`finalclass` AS `finalclass`, cast(concat(coalesce(`documentweb_document`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`documentweb_document`.`status` = 'obsolete'),0) AS `obsolescence_flag`, `documentweb_document`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`documenttype_documenttype_id_typology`.`name`,'')) as char charset utf8mb4) AS `documenttype_id_friendlyname` FROM (`documentweb` join ((`document` `documentweb_document` join `organization` `organization_org_id` on((`documentweb_document`.`org_id` = `organization_org_id`.`id`))) left join `typology` `documenttype_documenttype_id_typology` on((`documentweb_document`.`documenttype_id` = `documenttype_documenttype_id_typology`.`id`))) on((`documentweb`.`id` = `documentweb_document`.`id`))) WHERE coalesce((`documenttype_documenttype_id_typology`.`finalclass` = 'DocumentType'),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_emergencychange`
--
DROP TABLE IF EXISTS `view_emergencychange`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_emergencychange`  AS SELECT DISTINCT `emergencychange_approvedchange`.`id` AS `id`, `emergencychange_ticket`.`operational_status` AS `operational_status`, `emergencychange_ticket`.`ref` AS `ref`, `emergencychange_ticket`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `org_name`, `emergencychange_ticket`.`caller_id` AS `caller_id`, `person_caller_id_contact`.`name` AS `caller_name`, `emergencychange_ticket`.`team_id` AS `team_id`, `team_team_id_contact`.`email` AS `team_name`, `emergencychange_ticket`.`agent_id` AS `agent_id`, `person_agent_id_contact`.`name` AS `agent_name`, `emergencychange_ticket`.`title` AS `title`, `emergencychange_ticket`.`description` AS `description`, `emergencychange_ticket`.`start_date` AS `start_date`, `emergencychange_ticket`.`end_date` AS `end_date`, `emergencychange_ticket`.`last_update` AS `last_update`, `emergencychange_ticket`.`close_date` AS `close_date`, `emergencychange_ticket`.`private_log` AS `private_log`, `emergencychange_change`.`status` AS `status`, `emergencychange_change`.`reason` AS `reason`, `emergencychange_change`.`requestor_id` AS `requestor_id`, `person_requestor_id_contact`.`email` AS `requestor_email`, `emergencychange_change`.`creation_date` AS `creation_date`, `emergencychange_change`.`impact` AS `impact`, `emergencychange_change`.`supervisor_group_id` AS `supervisor_group_id`, `team_supervisor_group_id_contact`.`name` AS `supervisor_group_name`, `emergencychange_change`.`supervisor_id` AS `supervisor_id`, `person_supervisor_id_contact`.`email` AS `supervisor_email`, `emergencychange_change`.`manager_group_id` AS `manager_group_id`, `team_manager_group_id_contact`.`name` AS `manager_group_name`, `emergencychange_change`.`manager_id` AS `manager_id`, `person_manager_id_contact`.`email` AS `manager_email`, `emergencychange_change`.`outage` AS `outage`, `emergencychange_change`.`fallback` AS `fallback`, `emergencychange_change`.`parent_id` AS `parent_id`, `change_parent_id_ticket`.`ref` AS `parent_name`, `emergencychange_approvedchange`.`approval_date` AS `approval_date`, `emergencychange_approvedchange`.`approval_comment` AS `approval_comment`, `emergencychange_ticket`.`finalclass` AS `finalclass`, cast(concat(coalesce(`emergencychange_ticket`.`ref`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`person_caller_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_caller_id_contact`.`name`,'')) as char charset utf8mb4) AS `caller_id_friendlyname`, coalesce((`person_caller_id_contact`.`status` = 'inactive'),0) AS `caller_id_obsolescence_flag`, cast(concat(coalesce(`team_team_id_contact`.`name`,'')) as char charset utf8mb4) AS `team_id_friendlyname`, coalesce((`team_team_id_contact`.`status` = 'inactive'),0) AS `team_id_obsolescence_flag`, cast(concat(coalesce(`person_agent_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_agent_id_contact`.`name`,'')) as char charset utf8mb4) AS `agent_id_friendlyname`, coalesce((`person_agent_id_contact`.`status` = 'inactive'),0) AS `agent_id_obsolescence_flag`, cast(concat(coalesce(`person_requestor_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_requestor_id_contact`.`name`,'')) as char charset utf8mb4) AS `requestor_id_friendlyname`, coalesce((`person_requestor_id_contact`.`status` = 'inactive'),0) AS `requestor_id_obsolescence_flag`, cast(concat(coalesce(`team_supervisor_group_id_contact`.`name`,'')) as char charset utf8mb4) AS `supervisor_group_id_friendlyname`, coalesce((`team_supervisor_group_id_contact`.`status` = 'inactive'),0) AS `supervisor_group_id_obsolescence_flag`, cast(concat(coalesce(`person_supervisor_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_supervisor_id_contact`.`name`,'')) as char charset utf8mb4) AS `supervisor_id_friendlyname`, coalesce((`person_supervisor_id_contact`.`status` = 'inactive'),0) AS `supervisor_id_obsolescence_flag`, cast(concat(coalesce(`team_manager_group_id_contact`.`name`,'')) as char charset utf8mb4) AS `manager_group_id_friendlyname`, coalesce((`team_manager_group_id_contact`.`status` = 'inactive'),0) AS `manager_group_id_obsolescence_flag`, cast(concat(coalesce(`person_manager_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_manager_id_contact`.`name`,'')) as char charset utf8mb4) AS `manager_id_friendlyname`, coalesce((`person_manager_id_contact`.`status` = 'inactive'),0) AS `manager_id_obsolescence_flag`, cast(concat(coalesce(`change_parent_id_ticket`.`ref`,'')) as char charset utf8mb4) AS `parent_id_friendlyname`, `change_parent_id_ticket`.`finalclass` AS `parent_id_finalclass_recall`, `emergencychange_ticket`.`description_format` AS `description_format`, `emergencychange_ticket`.`private_log_index` AS `private_log_index` FROM ((`change_approved` `emergencychange_approvedchange` join ((((((`change` `emergencychange_change` left join (`person` `person_requestor_id` join `contact` `person_requestor_id_contact` on((`person_requestor_id`.`id` = `person_requestor_id_contact`.`id`))) on((`emergencychange_change`.`requestor_id` = `person_requestor_id`.`id`))) left join `contact` `team_supervisor_group_id_contact` on((`emergencychange_change`.`supervisor_group_id` = `team_supervisor_group_id_contact`.`id`))) left join (`person` `person_supervisor_id` join `contact` `person_supervisor_id_contact` on((`person_supervisor_id`.`id` = `person_supervisor_id_contact`.`id`))) on((`emergencychange_change`.`supervisor_id` = `person_supervisor_id`.`id`))) left join `contact` `team_manager_group_id_contact` on((`emergencychange_change`.`manager_group_id` = `team_manager_group_id_contact`.`id`))) left join (`person` `person_manager_id` join `contact` `person_manager_id_contact` on((`person_manager_id`.`id` = `person_manager_id_contact`.`id`))) on((`emergencychange_change`.`manager_id` = `person_manager_id`.`id`))) left join `ticket` `change_parent_id_ticket` on((`emergencychange_change`.`parent_id` = `change_parent_id_ticket`.`id`))) on((`emergencychange_approvedchange`.`id` = `emergencychange_change`.`id`))) join ((((`ticket` `emergencychange_ticket` join `organization` `organization_org_id` on((`emergencychange_ticket`.`org_id` = `organization_org_id`.`id`))) left join (`person` `person_caller_id` join `contact` `person_caller_id_contact` on((`person_caller_id`.`id` = `person_caller_id_contact`.`id`))) on((`emergencychange_ticket`.`caller_id` = `person_caller_id`.`id`))) left join `contact` `team_team_id_contact` on((`emergencychange_ticket`.`team_id` = `team_team_id_contact`.`id`))) left join (`person` `person_agent_id` join `contact` `person_agent_id_contact` on((`person_agent_id`.`id` = `person_agent_id_contact`.`id`))) on((`emergencychange_ticket`.`agent_id` = `person_agent_id`.`id`))) on((`emergencychange_approvedchange`.`id` = `emergencychange_ticket`.`id`))) WHERE (coalesce((`team_team_id_contact`.`finalclass` = 'Team'),1) AND coalesce((`team_supervisor_group_id_contact`.`finalclass` = 'Team'),1) AND coalesce((`team_manager_group_id_contact`.`finalclass` = 'Team'),1) AND coalesce((`change_parent_id_ticket`.`finalclass` in ('RoutineChange','ApprovedChange','NormalChange','EmergencyChange','Change')),1) AND coalesce((`emergencychange_approvedchange`.`finalclass` = 'EmergencyChange'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_enclosure`
--
DROP TABLE IF EXISTS `view_enclosure`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_enclosure`  AS SELECT DISTINCT `enclosure`.`id` AS `id`, `enclosure_functionalci`.`name` AS `name`, `enclosure_functionalci`.`description` AS `description`, `enclosure_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `enclosure_functionalci`.`business_criticity` AS `business_criticity`, `enclosure_functionalci`.`move2production` AS `move2production`, `enclosure_physicaldevice`.`serialnumber` AS `serialnumber`, `enclosure_physicaldevice`.`location_id` AS `location_id`, `location_location_id`.`name` AS `location_name`, `enclosure_physicaldevice`.`status` AS `status`, `enclosure_physicaldevice`.`brand_id` AS `brand_id`, `brand_brand_id_typology`.`name` AS `brand_name`, `enclosure_physicaldevice`.`model_id` AS `model_id`, `model_model_id_typology`.`name` AS `model_name`, `enclosure_physicaldevice`.`asset_number` AS `asset_number`, `enclosure_physicaldevice`.`purchase_date` AS `purchase_date`, `enclosure_physicaldevice`.`end_of_warranty` AS `end_of_warranty`, `enclosure`.`rack_id` AS `rack_id`, `rack_rack_id_functionalci`.`name` AS `rack_name`, `enclosure`.`nb_u` AS `nb_u`, `enclosure_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`enclosure_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`enclosure_physicaldevice`.`status` = 'obsolete'),0) AS `obsolescence_flag`, `enclosure_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`location_location_id`.`name`,'')) as char charset utf8mb4) AS `location_id_friendlyname`, coalesce((`location_location_id`.`status` = 'inactive'),0) AS `location_id_obsolescence_flag`, cast(concat(coalesce(`brand_brand_id_typology`.`name`,'')) as char charset utf8mb4) AS `brand_id_friendlyname`, cast(concat(coalesce(`model_model_id_typology`.`name`,'')) as char charset utf8mb4) AS `model_id_friendlyname`, cast(concat(coalesce(`rack_rack_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `rack_id_friendlyname`, coalesce((`rack_rack_id_physicaldevice`.`status` = 'obsolete'),0) AS `rack_id_obsolescence_flag` FROM (((`enclosure` join (`physicaldevice` `rack_rack_id_physicaldevice` join `functionalci` `rack_rack_id_functionalci` on((`rack_rack_id_physicaldevice`.`id` = `rack_rack_id_functionalci`.`id`))) on((`enclosure`.`rack_id` = `rack_rack_id_physicaldevice`.`id`))) join (((`physicaldevice` `enclosure_physicaldevice` left join `location` `location_location_id` on((`enclosure_physicaldevice`.`location_id` = `location_location_id`.`id`))) left join `typology` `brand_brand_id_typology` on((`enclosure_physicaldevice`.`brand_id` = `brand_brand_id_typology`.`id`))) left join `typology` `model_model_id_typology` on((`enclosure_physicaldevice`.`model_id` = `model_model_id_typology`.`id`))) on((`enclosure`.`id` = `enclosure_physicaldevice`.`id`))) join (`functionalci` `enclosure_functionalci` join `organization` `organization_org_id` on((`enclosure_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`enclosure`.`id` = `enclosure_functionalci`.`id`))) WHERE (coalesce((`brand_brand_id_typology`.`finalclass` = 'Brand'),1) AND coalesce((`model_model_id_typology`.`finalclass` = 'Model'),1) AND coalesce((`rack_rack_id_physicaldevice`.`finalclass` = 'Rack'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_farm`
--
DROP TABLE IF EXISTS `view_farm`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_farm`  AS SELECT DISTINCT `farm`.`id` AS `id`, `farm_functionalci`.`name` AS `name`, `farm_functionalci`.`description` AS `description`, `farm_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `farm_functionalci`.`business_criticity` AS `business_criticity`, `farm_functionalci`.`move2production` AS `move2production`, `farm_virtualdevice`.`status` AS `status`, `farm`.`redundancy` AS `redundancy`, `farm_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`farm_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`farm_virtualdevice`.`status` = 'obsolete'),0) AS `obsolescence_flag`, `farm_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag` FROM ((`farm` join `virtualdevice` `farm_virtualdevice` on((`farm`.`id` = `farm_virtualdevice`.`id`))) join (`functionalci` `farm_functionalci` join `organization` `organization_org_id` on((`farm_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`farm`.`id` = `farm_functionalci`.`id`))) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_fiberchannelinterface`
--
DROP TABLE IF EXISTS `view_fiberchannelinterface`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_fiberchannelinterface`  AS SELECT DISTINCT `fiberchannelinterface`.`id` AS `id`, `fiberchannelinterface_networkinterface`.`name` AS `name`, `fiberchannelinterface`.`speed` AS `speed`, `fiberchannelinterface`.`topology` AS `topology`, `fiberchannelinterface`.`wwn` AS `wwn`, `fiberchannelinterface`.`datacenterdevice_id` AS `datacenterdevice_id`, `datacenterdevice_datacenterdevice_id_functionalci`.`name` AS `datacenterdevice_name`, `fiberchannelinterface_networkinterface`.`finalclass` AS `finalclass`, cast(concat(coalesce(`fiberchannelinterface_networkinterface`.`name`,''),coalesce(' ',''),coalesce(`datacenterdevice_datacenterdevice_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce(coalesce((`datacenterdevice_datacenterdevice_id_physicaldevice`.`status` = 'obsolete'),0),0) AS `obsolescence_flag`, `fiberchannelinterface_networkinterface`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`datacenterdevice_datacenterdevice_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `datacenterdevice_id_friendlyname`, `datacenterdevice_datacenterdevice_id_functionalci`.`finalclass` AS `datacenterdevice_id_finalclass_recall`, coalesce((`datacenterdevice_datacenterdevice_id_physicaldevice`.`status` = 'obsolete'),0) AS `datacenterdevice_id_obsolescence_flag` FROM ((`fiberchannelinterface` join (`physicaldevice` `datacenterdevice_datacenterdevice_id_physicaldevice` join `functionalci` `datacenterdevice_datacenterdevice_id_functionalci` on((`datacenterdevice_datacenterdevice_id_physicaldevice`.`id` = `datacenterdevice_datacenterdevice_id_functionalci`.`id`))) on((`fiberchannelinterface`.`datacenterdevice_id` = `datacenterdevice_datacenterdevice_id_physicaldevice`.`id`))) join `networkinterface` `fiberchannelinterface_networkinterface` on((`fiberchannelinterface`.`id` = `fiberchannelinterface_networkinterface`.`id`))) WHERE coalesce((`datacenterdevice_datacenterdevice_id_physicaldevice`.`finalclass` in ('NetworkDevice','Server','StorageSystem','SANSwitch','TapeLibrary','NAS','DatacenterDevice')),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_functionalci`
--
DROP TABLE IF EXISTS `view_functionalci`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_functionalci`  AS SELECT DISTINCT `functionalci`.`id` AS `id`, `functionalci`.`name` AS `name`, `functionalci`.`description` AS `description`, `functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `functionalci`.`business_criticity` AS `business_criticity`, `functionalci`.`move2production` AS `move2production`, `functionalci`.`finalclass` AS `finalclass`, if((`functionalci`.`finalclass` in ('Middleware','DBServer','WebServer','PCSoftware','OtherSoftware')),cast(concat(coalesce(`functionalci`.`name`,''),coalesce(' ',''),coalesce(`functionalci_system_id`.`name`,'')) as char charset utf8mb4),cast(concat(coalesce(`functionalci`.`name`,'')) as char charset utf8mb4)) AS `friendlyname`, if((`functionalci`.`finalclass` = 'FunctionalCI'),coalesce(0,0),if((`functionalci`.`finalclass` in ('Hypervisor','Farm','VirtualMachine')),coalesce((`functionalci_poly_virtualdevice`.`status` = 'obsolete'),0),if((`functionalci`.`finalclass` = 'WebApplication'),coalesce(coalesce((`webserver_webserver_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci`.`finalclass` = 'DatabaseSchema'),coalesce(coalesce((`dbserver_dbserver_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci`.`finalclass` = 'MiddlewareInstance'),coalesce(coalesce((`middleware_middleware_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci`.`finalclass` in ('Middleware','DBServer','WebServer','PCSoftware','OtherSoftware')),coalesce((`functionalci_poly_softwareinstance`.`status` = 'inactive'),0),if((`functionalci`.`finalclass` = 'BusinessProcess'),coalesce((`functionalci_poly_businessprocess`.`status` = 'inactive'),0),if((`functionalci`.`finalclass` = 'ApplicationSolution'),coalesce((`functionalci_poly_applicationsolution`.`status` = 'inactive'),0),coalesce((`functionalci_poly_physicaldevice`.`status` = 'obsolete'),0))))))))) AS `obsolescence_flag`, `functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag` FROM (((((((((`functionalci` join `organization` `organization_org_id` on((`functionalci`.`org_id` = `organization_org_id`.`id`))) left join (`softwareinstance` `functionalci_poly_softwareinstance` join `functionalci` `functionalci_system_id` on((`functionalci_poly_softwareinstance`.`functionalci_id` = `functionalci_system_id`.`id`))) on((`functionalci`.`id` = `functionalci_poly_softwareinstance`.`id`))) left join `virtualdevice` `functionalci_poly_virtualdevice` on((`functionalci`.`id` = `functionalci_poly_virtualdevice`.`id`))) left join (`webapplication` `functionalci_poly_webapplication` join `softwareinstance` `webserver_webserver_id_softwareinstance` on((`functionalci_poly_webapplication`.`webserver_id` = `webserver_webserver_id_softwareinstance`.`id`))) on((`functionalci`.`id` = `functionalci_poly_webapplication`.`id`))) left join (`databaseschema` `functionalci_poly_databaseschema` join `softwareinstance` `dbserver_dbserver_id_softwareinstance` on((`functionalci_poly_databaseschema`.`dbserver_id` = `dbserver_dbserver_id_softwareinstance`.`id`))) on((`functionalci`.`id` = `functionalci_poly_databaseschema`.`id`))) left join (`middlewareinstance` `functionalci_poly_middlewareinstance` join `softwareinstance` `middleware_middleware_id_softwareinstance` on((`functionalci_poly_middlewareinstance`.`middleware_id` = `middleware_middleware_id_softwareinstance`.`id`))) on((`functionalci`.`id` = `functionalci_poly_middlewareinstance`.`id`))) left join `businessprocess` `functionalci_poly_businessprocess` on((`functionalci`.`id` = `functionalci_poly_businessprocess`.`id`))) left join `applicationsolution` `functionalci_poly_applicationsolution` on((`functionalci`.`id` = `functionalci_poly_applicationsolution`.`id`))) left join `physicaldevice` `functionalci_poly_physicaldevice` on((`functionalci`.`id` = `functionalci_poly_physicaldevice`.`id`))) WHERE (coalesce((`webserver_webserver_id_softwareinstance`.`finalclass` = 'WebServer'),1) AND coalesce((`dbserver_dbserver_id_softwareinstance`.`finalclass` = 'DBServer'),1) AND coalesce((`middleware_middleware_id_softwareinstance`.`finalclass` = 'Middleware'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_group`
--
DROP TABLE IF EXISTS `view_group`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_group`  AS SELECT DISTINCT `group`.`id` AS `id`, `group`.`name` AS `name`, `group`.`status` AS `status`, `group`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `owner_name`, `group`.`description` AS `description`, `group`.`type` AS `type`, `group`.`parent_id` AS `parent_id`, `group_parent_id`.`name` AS `parent_name`, cast(concat(coalesce(`group`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`group`.`status` = 'obsolete'),0) AS `obsolescence_flag`, `group`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`group_parent_id`.`name`,'')) as char charset utf8mb4) AS `parent_id_friendlyname`, coalesce((`group_parent_id`.`status` = 'obsolete'),0) AS `parent_id_obsolescence_flag` FROM ((`group` join `organization` `organization_org_id` on((`group`.`org_id` = `organization_org_id`.`id`))) left join `group` `group_parent_id` on((`group`.`parent_id` = `group_parent_id`.`id`))) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_hypervisor`
--
DROP TABLE IF EXISTS `view_hypervisor`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_hypervisor`  AS SELECT DISTINCT `hypervisor`.`id` AS `id`, `hypervisor_functionalci`.`name` AS `name`, `hypervisor_functionalci`.`description` AS `description`, `hypervisor_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `hypervisor_functionalci`.`business_criticity` AS `business_criticity`, `hypervisor_functionalci`.`move2production` AS `move2production`, `hypervisor_virtualdevice`.`status` AS `status`, `hypervisor`.`farm_id` AS `farm_id`, `farm_farm_id_functionalci`.`name` AS `farm_name`, `hypervisor`.`server_id` AS `server_id`, `server_server_id_functionalci`.`name` AS `server_name`, `hypervisor_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`hypervisor_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`hypervisor_virtualdevice`.`status` = 'obsolete'),0) AS `obsolescence_flag`, `hypervisor_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`farm_farm_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `farm_id_friendlyname`, coalesce((`farm_farm_id_virtualdevice`.`status` = 'obsolete'),0) AS `farm_id_obsolescence_flag`, cast(concat(coalesce(`server_server_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `server_id_friendlyname`, coalesce((`server_server_id_physicaldevice`.`status` = 'obsolete'),0) AS `server_id_obsolescence_flag` FROM ((((`hypervisor` left join (`virtualdevice` `farm_farm_id_virtualdevice` join `functionalci` `farm_farm_id_functionalci` on((`farm_farm_id_virtualdevice`.`id` = `farm_farm_id_functionalci`.`id`))) on((`hypervisor`.`farm_id` = `farm_farm_id_virtualdevice`.`id`))) left join (`physicaldevice` `server_server_id_physicaldevice` join `functionalci` `server_server_id_functionalci` on((`server_server_id_physicaldevice`.`id` = `server_server_id_functionalci`.`id`))) on((`hypervisor`.`server_id` = `server_server_id_physicaldevice`.`id`))) join `virtualdevice` `hypervisor_virtualdevice` on((`hypervisor`.`id` = `hypervisor_virtualdevice`.`id`))) join (`functionalci` `hypervisor_functionalci` join `organization` `organization_org_id` on((`hypervisor_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`hypervisor`.`id` = `hypervisor_functionalci`.`id`))) WHERE (coalesce((`farm_farm_id_virtualdevice`.`finalclass` = 'Farm'),1) AND coalesce((`server_server_id_physicaldevice`.`finalclass` = 'Server'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_incident`
--
DROP TABLE IF EXISTS `view_incident`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_incident`  AS SELECT DISTINCT `incident`.`id` AS `id`, `incident_ticket`.`operational_status` AS `operational_status`, `incident_ticket`.`ref` AS `ref`, `incident_ticket`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `org_name`, `incident_ticket`.`caller_id` AS `caller_id`, `person_caller_id_contact`.`name` AS `caller_name`, `incident_ticket`.`team_id` AS `team_id`, `team_team_id_contact`.`email` AS `team_name`, `incident_ticket`.`agent_id` AS `agent_id`, `person_agent_id_contact`.`name` AS `agent_name`, `incident_ticket`.`title` AS `title`, `incident_ticket`.`description` AS `description`, `incident_ticket`.`start_date` AS `start_date`, `incident_ticket`.`end_date` AS `end_date`, `incident_ticket`.`last_update` AS `last_update`, `incident_ticket`.`close_date` AS `close_date`, `incident_ticket`.`private_log` AS `private_log`, `incident`.`status` AS `status`, `incident`.`impact` AS `impact`, `incident`.`priority` AS `priority`, `incident`.`urgency` AS `urgency`, `incident`.`origin` AS `origin`, `incident`.`service_id` AS `service_id`, `service_service_id`.`name` AS `service_name`, `incident`.`servicesubcategory_id` AS `servicesubcategory_id`, `servicesubcategory_servicesubcategory_id`.`name` AS `servicesubcategory_name`, `incident`.`escalation_flag` AS `escalation_flag`, `incident`.`escalation_reason` AS `escalation_reason`, `incident`.`assignment_date` AS `assignment_date`, `incident`.`resolution_date` AS `resolution_date`, `incident`.`last_pending_date` AS `last_pending_date`, `incident`.`cumulatedpending_timespent` AS `cumulatedpending`, `incident`.`tto_timespent` AS `tto`, `incident`.`ttr_timespent` AS `ttr`, `incident`.`tto_100_deadline` AS `tto_escalation_deadline`, `incident`.`tto_100_passed` AS `sla_tto_passed`, `incident`.`tto_100_overrun` AS `sla_tto_over`, `incident`.`ttr_100_deadline` AS `ttr_escalation_deadline`, `incident`.`ttr_100_passed` AS `sla_ttr_passed`, `incident`.`ttr_100_overrun` AS `sla_ttr_over`, `incident`.`time_spent` AS `time_spent`, `incident`.`resolution_code` AS `resolution_code`, `incident`.`solution` AS `solution`, `incident`.`pending_reason` AS `pending_reason`, `incident`.`parent_incident_id` AS `parent_incident_id`, `incident_parent_incident_id_ticket`.`ref` AS `parent_incident_ref`, `incident`.`parent_problem_id` AS `parent_problem_id`, `problem_parent_problem_id_ticket`.`ref` AS `parent_problem_ref`, `incident`.`parent_change_id` AS `parent_change_id`, `change_parent_change_id_ticket`.`ref` AS `parent_change_ref`, `incident`.`public_log` AS `public_log`, `incident`.`user_satisfaction` AS `user_satisfaction`, `incident`.`user_commment` AS `user_comment`, `incident_ticket`.`finalclass` AS `finalclass`, cast(concat(coalesce(`incident_ticket`.`ref`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`person_caller_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_caller_id_contact`.`name`,'')) as char charset utf8mb4) AS `caller_id_friendlyname`, coalesce((`person_caller_id_contact`.`status` = 'inactive'),0) AS `caller_id_obsolescence_flag`, cast(concat(coalesce(`team_team_id_contact`.`name`,'')) as char charset utf8mb4) AS `team_id_friendlyname`, coalesce((`team_team_id_contact`.`status` = 'inactive'),0) AS `team_id_obsolescence_flag`, cast(concat(coalesce(`person_agent_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_agent_id_contact`.`name`,'')) as char charset utf8mb4) AS `agent_id_friendlyname`, coalesce((`person_agent_id_contact`.`status` = 'inactive'),0) AS `agent_id_obsolescence_flag`, cast(concat(coalesce(`service_service_id`.`name`,'')) as char charset utf8mb4) AS `service_id_friendlyname`, cast(concat(coalesce(`servicesubcategory_servicesubcategory_id`.`name`,'')) as char charset utf8mb4) AS `servicesubcategory_id_friendlyname`, cast(concat(coalesce(`incident_parent_incident_id_ticket`.`ref`,'')) as char charset utf8mb4) AS `parent_incident_id_friendlyname`, cast(concat(coalesce(`problem_parent_problem_id_ticket`.`ref`,'')) as char charset utf8mb4) AS `parent_problem_id_friendlyname`, cast(concat(coalesce(`change_parent_change_id_ticket`.`ref`,'')) as char charset utf8mb4) AS `parent_change_id_friendlyname`, `change_parent_change_id_ticket`.`finalclass` AS `parent_change_id_finalclass_recall`, `incident`.`cumulatedpending_started` AS `cumulatedpending_started`, `incident`.`cumulatedpending_laststart` AS `cumulatedpending_laststart`, `incident`.`cumulatedpending_stopped` AS `cumulatedpending_stopped`, `incident`.`tto_started` AS `tto_started`, `incident`.`tto_laststart` AS `tto_laststart`, `incident`.`tto_stopped` AS `tto_stopped`, `incident`.`tto_75_deadline` AS `tto_75_deadline`, `incident`.`tto_75_passed` AS `tto_75_passed`, `incident`.`tto_75_triggered` AS `tto_75_triggered`, `incident`.`tto_75_overrun` AS `tto_75_overrun`, `incident`.`tto_100_deadline` AS `tto_100_deadline`, `incident`.`tto_100_passed` AS `tto_100_passed`, `incident`.`tto_100_triggered` AS `tto_100_triggered`, `incident`.`tto_100_overrun` AS `tto_100_overrun`, `incident`.`ttr_started` AS `ttr_started`, `incident`.`ttr_laststart` AS `ttr_laststart`, `incident`.`ttr_stopped` AS `ttr_stopped`, `incident`.`ttr_75_deadline` AS `ttr_75_deadline`, `incident`.`ttr_75_passed` AS `ttr_75_passed`, `incident`.`ttr_75_triggered` AS `ttr_75_triggered`, `incident`.`ttr_75_overrun` AS `ttr_75_overrun`, `incident`.`ttr_100_deadline` AS `ttr_100_deadline`, `incident`.`ttr_100_passed` AS `ttr_100_passed`, `incident`.`ttr_100_triggered` AS `ttr_100_triggered`, `incident`.`ttr_100_overrun` AS `ttr_100_overrun`, `incident`.`public_log_index` AS `public_log_index`, `incident_ticket`.`description_format` AS `description_format`, `incident_ticket`.`private_log_index` AS `private_log_index` FROM ((((((`ticket_incident` `incident` left join `service` `service_service_id` on((`incident`.`service_id` = `service_service_id`.`id`))) left join `servicesubcategory` `servicesubcategory_servicesubcategory_id` on((`incident`.`servicesubcategory_id` = `servicesubcategory_servicesubcategory_id`.`id`))) left join `ticket` `incident_parent_incident_id_ticket` on((`incident`.`parent_incident_id` = `incident_parent_incident_id_ticket`.`id`))) left join `ticket` `problem_parent_problem_id_ticket` on((`incident`.`parent_problem_id` = `problem_parent_problem_id_ticket`.`id`))) left join `ticket` `change_parent_change_id_ticket` on((`incident`.`parent_change_id` = `change_parent_change_id_ticket`.`id`))) join ((((`ticket` `incident_ticket` join `organization` `organization_org_id` on((`incident_ticket`.`org_id` = `organization_org_id`.`id`))) left join (`person` `person_caller_id` join `contact` `person_caller_id_contact` on((`person_caller_id`.`id` = `person_caller_id_contact`.`id`))) on((`incident_ticket`.`caller_id` = `person_caller_id`.`id`))) left join `contact` `team_team_id_contact` on((`incident_ticket`.`team_id` = `team_team_id_contact`.`id`))) left join (`person` `person_agent_id` join `contact` `person_agent_id_contact` on((`person_agent_id`.`id` = `person_agent_id_contact`.`id`))) on((`incident_ticket`.`agent_id` = `person_agent_id`.`id`))) on((`incident`.`id` = `incident_ticket`.`id`))) WHERE (coalesce((`team_team_id_contact`.`finalclass` = 'Team'),1) AND coalesce((`incident_parent_incident_id_ticket`.`finalclass` = 'Incident'),1) AND coalesce((`problem_parent_problem_id_ticket`.`finalclass` = 'Problem'),1) AND coalesce((`change_parent_change_id_ticket`.`finalclass` in ('RoutineChange','ApprovedChange','NormalChange','EmergencyChange','Change')),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_iosversion`
--
DROP TABLE IF EXISTS `view_iosversion`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_iosversion`  AS SELECT DISTINCT `iosversion`.`id` AS `id`, `iosversion_typology`.`name` AS `name`, `iosversion`.`brand_id` AS `brand_id`, `brand_brand_id_typology`.`name` AS `brand_name`, `iosversion_typology`.`finalclass` AS `finalclass`, cast(concat(coalesce(`brand_brand_id_typology`.`name`,''),coalesce(' ',''),coalesce(`iosversion_typology`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`brand_brand_id_typology`.`name`,'')) as char charset utf8mb4) AS `brand_id_friendlyname` FROM ((`iosversion` join `typology` `brand_brand_id_typology` on((`iosversion`.`brand_id` = `brand_brand_id_typology`.`id`))) join `typology` `iosversion_typology` on((`iosversion`.`id` = `iosversion_typology`.`id`))) WHERE coalesce((`brand_brand_id_typology`.`finalclass` = 'Brand'),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_ipinterface`
--
DROP TABLE IF EXISTS `view_ipinterface`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_ipinterface`  AS SELECT DISTINCT `ipinterface`.`id` AS `id`, `ipinterface_networkinterface`.`name` AS `name`, `ipinterface`.`ipaddress` AS `ipaddress`, `ipinterface`.`macaddress` AS `macaddress`, `ipinterface`.`comment` AS `comment`, `ipinterface`.`ipgateway` AS `ipgateway`, `ipinterface`.`ipmask` AS `ipmask`, `ipinterface`.`speed` AS `speed`, `ipinterface_networkinterface`.`finalclass` AS `finalclass`, if((`ipinterface_networkinterface`.`finalclass` = 'IPInterface'),cast(concat(coalesce(`ipinterface_networkinterface`.`name`,'')) as char charset utf8mb4),if((`ipinterface_networkinterface`.`finalclass` = 'LogicalInterface'),cast(concat(coalesce(`ipinterface_networkinterface`.`name`,''),coalesce(' ',''),coalesce(`virtualmachine_virtualmachine_id_functionalci`.`name`,'')) as char charset utf8mb4),cast(concat(coalesce(`ipinterface_networkinterface`.`name`,''),coalesce(' ',''),coalesce(`connectableci_connectableci_id_functionalci`.`name`,'')) as char charset utf8mb4))) AS `friendlyname`, if((`ipinterface_networkinterface`.`finalclass` = 'IPInterface'),coalesce(0,0),if((`ipinterface_networkinterface`.`finalclass` = 'LogicalInterface'),coalesce(coalesce((`virtualmachine_virtualmachine_id_virtualdevice`.`status` = 'obsolete'),0),0),coalesce(coalesce((`connectableci_connectableci_id_physicaldevice`.`status` = 'obsolete'),0),0))) AS `obsolescence_flag`, `ipinterface_networkinterface`.`obsolescence_date` AS `obsolescence_date` FROM (((`ipinterface` join `networkinterface` `ipinterface_networkinterface` on((`ipinterface`.`id` = `ipinterface_networkinterface`.`id`))) left join (`logicalinterface` `ipinterface_poly_logicalinterface` join (`virtualdevice` `virtualmachine_virtualmachine_id_virtualdevice` join `functionalci` `virtualmachine_virtualmachine_id_functionalci` on((`virtualmachine_virtualmachine_id_virtualdevice`.`id` = `virtualmachine_virtualmachine_id_functionalci`.`id`))) on((`ipinterface_poly_logicalinterface`.`virtualmachine_id` = `virtualmachine_virtualmachine_id_virtualdevice`.`id`))) on((`ipinterface`.`id` = `ipinterface_poly_logicalinterface`.`id`))) left join (`physicalinterface` `ipinterface_poly_physicalinterface` join (`physicaldevice` `connectableci_connectableci_id_physicaldevice` join `functionalci` `connectableci_connectableci_id_functionalci` on((`connectableci_connectableci_id_physicaldevice`.`id` = `connectableci_connectableci_id_functionalci`.`id`))) on((`ipinterface_poly_physicalinterface`.`connectableci_id` = `connectableci_connectableci_id_physicaldevice`.`id`))) on((`ipinterface`.`id` = `ipinterface_poly_physicalinterface`.`id`))) WHERE (coalesce((`virtualmachine_virtualmachine_id_virtualdevice`.`finalclass` = 'VirtualMachine'),1) AND coalesce((`connectableci_connectableci_id_physicaldevice`.`finalclass` in ('DatacenterDevice','NetworkDevice','Server','PC','Printer','StorageSystem','SANSwitch','TapeLibrary','NAS','ConnectableCI')),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_ipphone`
--
DROP TABLE IF EXISTS `view_ipphone`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_ipphone`  AS SELECT DISTINCT `ipphone_telephonyci`.`id` AS `id`, `ipphone_functionalci`.`name` AS `name`, `ipphone_functionalci`.`description` AS `description`, `ipphone_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `ipphone_functionalci`.`business_criticity` AS `business_criticity`, `ipphone_functionalci`.`move2production` AS `move2production`, `ipphone_physicaldevice`.`serialnumber` AS `serialnumber`, `ipphone_physicaldevice`.`location_id` AS `location_id`, `location_location_id`.`name` AS `location_name`, `ipphone_physicaldevice`.`status` AS `status`, `ipphone_physicaldevice`.`brand_id` AS `brand_id`, `brand_brand_id_typology`.`name` AS `brand_name`, `ipphone_physicaldevice`.`model_id` AS `model_id`, `model_model_id_typology`.`name` AS `model_name`, `ipphone_physicaldevice`.`asset_number` AS `asset_number`, `ipphone_physicaldevice`.`purchase_date` AS `purchase_date`, `ipphone_physicaldevice`.`end_of_warranty` AS `end_of_warranty`, `ipphone_telephonyci`.`phonenumber` AS `phonenumber`, `ipphone_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`ipphone_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`ipphone_physicaldevice`.`status` = 'obsolete'),0) AS `obsolescence_flag`, `ipphone_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`location_location_id`.`name`,'')) as char charset utf8mb4) AS `location_id_friendlyname`, coalesce((`location_location_id`.`status` = 'inactive'),0) AS `location_id_obsolescence_flag`, cast(concat(coalesce(`brand_brand_id_typology`.`name`,'')) as char charset utf8mb4) AS `brand_id_friendlyname`, cast(concat(coalesce(`model_model_id_typology`.`name`,'')) as char charset utf8mb4) AS `model_id_friendlyname` FROM ((`telephonyci` `ipphone_telephonyci` join (((`physicaldevice` `ipphone_physicaldevice` left join `location` `location_location_id` on((`ipphone_physicaldevice`.`location_id` = `location_location_id`.`id`))) left join `typology` `brand_brand_id_typology` on((`ipphone_physicaldevice`.`brand_id` = `brand_brand_id_typology`.`id`))) left join `typology` `model_model_id_typology` on((`ipphone_physicaldevice`.`model_id` = `model_model_id_typology`.`id`))) on((`ipphone_telephonyci`.`id` = `ipphone_physicaldevice`.`id`))) join (`functionalci` `ipphone_functionalci` join `organization` `organization_org_id` on((`ipphone_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`ipphone_telephonyci`.`id` = `ipphone_functionalci`.`id`))) WHERE (coalesce((`brand_brand_id_typology`.`finalclass` = 'Brand'),1) AND coalesce((`model_model_id_typology`.`finalclass` = 'Model'),1) AND coalesce((`ipphone_telephonyci`.`finalclass` = 'IPPhone'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_licence`
--
DROP TABLE IF EXISTS `view_licence`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_licence`  AS SELECT DISTINCT `licence`.`id` AS `id`, `licence`.`name` AS `name`, `licence`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `licence`.`usage_limit` AS `usage_limit`, `licence`.`description` AS `description`, `licence`.`start_date` AS `start_date`, `licence`.`end_date` AS `end_date`, `licence`.`licence_key` AS `licence_key`, `licence`.`perpetual` AS `perpetual`, `licence`.`finalclass` AS `finalclass`, cast(concat(coalesce(`licence`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce(((`licence`.`perpetual` = 'no') and (isnull(`licence`.`end_date`) = 0) and (`licence`.`end_date` < date_format((now() - interval 15 month),'%Y-%m-%d 00:00:00'))),0) AS `obsolescence_flag`, `licence`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag` FROM (`licence` join `organization` `organization_org_id` on((`licence`.`org_id` = `organization_org_id`.`id`))) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_lnkapplicationsolutiontobusinessprocess`
--
DROP TABLE IF EXISTS `view_lnkapplicationsolutiontobusinessprocess`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_lnkapplicationsolutiontobusinessprocess`  AS SELECT DISTINCT `lnkapplicationsolutiontobusinessprocess`.`id` AS `id`, `lnkapplicationsolutiontobusinessprocess`.`businessprocess_id` AS `businessprocess_id`, `businessprocess_businessprocess_id_functionalci`.`name` AS `businessprocess_name`, `lnkapplicationsolutiontobusinessprocess`.`applicationsolution_id` AS `applicationsolution_id`, `applicationsolution_applicationsolution_id_functionalci`.`name` AS `applicationsolution_name`, cast(concat(coalesce(`lnkapplicationsolutiontobusinessprocess`.`businessprocess_id`,''),coalesce(' ',''),coalesce(`lnkapplicationsolutiontobusinessprocess`.`applicationsolution_id`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`businessprocess_businessprocess_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `businessprocess_id_friendlyname`, coalesce((`businessprocess_businessprocess_id`.`status` = 'inactive'),0) AS `businessprocess_id_obsolescence_flag`, cast(concat(coalesce(`applicationsolution_applicationsolution_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `applicationsolution_id_friendlyname`, coalesce((`applicationsolution_applicationsolution_id`.`status` = 'inactive'),0) AS `applicationsolution_id_obsolescence_flag` FROM ((`lnkapplicationsolutiontobusinessprocess` join (`businessprocess` `businessprocess_businessprocess_id` join `functionalci` `businessprocess_businessprocess_id_functionalci` on((`businessprocess_businessprocess_id`.`id` = `businessprocess_businessprocess_id_functionalci`.`id`))) on((`lnkapplicationsolutiontobusinessprocess`.`businessprocess_id` = `businessprocess_businessprocess_id`.`id`))) join (`applicationsolution` `applicationsolution_applicationsolution_id` join `functionalci` `applicationsolution_applicationsolution_id_functionalci` on((`applicationsolution_applicationsolution_id`.`id` = `applicationsolution_applicationsolution_id_functionalci`.`id`))) on((`lnkapplicationsolutiontobusinessprocess`.`applicationsolution_id` = `applicationsolution_applicationsolution_id`.`id`))) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_lnkapplicationsolutiontofunctionalci`
--
DROP TABLE IF EXISTS `view_lnkapplicationsolutiontofunctionalci`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_lnkapplicationsolutiontofunctionalci`  AS SELECT DISTINCT `lnkapplicationsolutiontofunctionalci`.`id` AS `id`, `lnkapplicationsolutiontofunctionalci`.`applicationsolution_id` AS `applicationsolution_id`, `applicationsolution_applicationsolution_id_functionalci`.`name` AS `applicationsolution_name`, `lnkapplicationsolutiontofunctionalci`.`functionalci_id` AS `functionalci_id`, `functionalci_functionalci_id`.`name` AS `functionalci_name`, cast(concat(coalesce(`lnkapplicationsolutiontofunctionalci`.`applicationsolution_id`,''),coalesce(' ',''),coalesce(`lnkapplicationsolutiontofunctionalci`.`functionalci_id`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`applicationsolution_applicationsolution_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `applicationsolution_id_friendlyname`, coalesce((`applicationsolution_applicationsolution_id`.`status` = 'inactive'),0) AS `applicationsolution_id_obsolescence_flag`, if((`functionalci_functionalci_id`.`finalclass` in ('Middleware','DBServer','WebServer','PCSoftware','OtherSoftware')),cast(concat(coalesce(`functionalci_functionalci_id`.`name`,''),coalesce(' ',''),coalesce(`functionalci_system_id`.`name`,'')) as char charset utf8mb4),cast(concat(coalesce(`functionalci_functionalci_id`.`name`,'')) as char charset utf8mb4)) AS `functionalci_id_friendlyname`, `functionalci_functionalci_id`.`finalclass` AS `functionalci_id_finalclass_recall`, if((`functionalci_functionalci_id`.`finalclass` = 'FunctionalCI'),coalesce(0,0),if((`functionalci_functionalci_id`.`finalclass` in ('Hypervisor','Farm','VirtualMachine')),coalesce((`functionalci_functionalci_id_poly_virtualdevice`.`status` = 'obsolete'),0),if((`functionalci_functionalci_id`.`finalclass` = 'WebApplication'),coalesce(coalesce((`webserver_webserver_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_functionalci_id`.`finalclass` = 'DatabaseSchema'),coalesce(coalesce((`dbserver_dbserver_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_functionalci_id`.`finalclass` = 'MiddlewareInstance'),coalesce(coalesce((`middleware_middleware_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_functionalci_id`.`finalclass` in ('Middleware','DBServer','WebServer','PCSoftware','OtherSoftware')),coalesce((`functionalci_functionalci_id_poly_softwareinstance`.`status` = 'inactive'),0),if((`functionalci_functionalci_id`.`finalclass` = 'BusinessProcess'),coalesce((`functionalci_functionalci_id_poly_businessprocess`.`status` = 'inactive'),0),if((`functionalci_functionalci_id`.`finalclass` = 'ApplicationSolution'),coalesce((`functionalci_functionalci_id_poly_applicationsolution`.`status` = 'inactive'),0),coalesce((`functionalci_functionalci_id_poly_physicaldevice`.`status` = 'obsolete'),0))))))))) AS `functionalci_id_obsolescence_flag` FROM ((`lnkapplicationsolutiontofunctionalci` join (`applicationsolution` `applicationsolution_applicationsolution_id` join `functionalci` `applicationsolution_applicationsolution_id_functionalci` on((`applicationsolution_applicationsolution_id`.`id` = `applicationsolution_applicationsolution_id_functionalci`.`id`))) on((`lnkapplicationsolutiontofunctionalci`.`applicationsolution_id` = `applicationsolution_applicationsolution_id`.`id`))) join ((((((((`functionalci` `functionalci_functionalci_id` left join (`softwareinstance` `functionalci_functionalci_id_poly_softwareinstance` join `functionalci` `functionalci_system_id` on((`functionalci_functionalci_id_poly_softwareinstance`.`functionalci_id` = `functionalci_system_id`.`id`))) on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_softwareinstance`.`id`))) left join `virtualdevice` `functionalci_functionalci_id_poly_virtualdevice` on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_virtualdevice`.`id`))) left join (`webapplication` `functionalci_functionalci_id_poly_webapplication` join `softwareinstance` `webserver_webserver_id_softwareinstance` on((`functionalci_functionalci_id_poly_webapplication`.`webserver_id` = `webserver_webserver_id_softwareinstance`.`id`))) on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_webapplication`.`id`))) left join (`databaseschema` `functionalci_functionalci_id_poly_databaseschema` join `softwareinstance` `dbserver_dbserver_id_softwareinstance` on((`functionalci_functionalci_id_poly_databaseschema`.`dbserver_id` = `dbserver_dbserver_id_softwareinstance`.`id`))) on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_databaseschema`.`id`))) left join (`middlewareinstance` `functionalci_functionalci_id_poly_middlewareinstance` join `softwareinstance` `middleware_middleware_id_softwareinstance` on((`functionalci_functionalci_id_poly_middlewareinstance`.`middleware_id` = `middleware_middleware_id_softwareinstance`.`id`))) on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_middlewareinstance`.`id`))) left join `businessprocess` `functionalci_functionalci_id_poly_businessprocess` on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_businessprocess`.`id`))) left join `applicationsolution` `functionalci_functionalci_id_poly_applicationsolution` on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_applicationsolution`.`id`))) left join `physicaldevice` `functionalci_functionalci_id_poly_physicaldevice` on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_physicaldevice`.`id`))) on((`lnkapplicationsolutiontofunctionalci`.`functionalci_id` = `functionalci_functionalci_id`.`id`))) WHERE (coalesce((`webserver_webserver_id_softwareinstance`.`finalclass` = 'WebServer'),1) AND coalesce((`dbserver_dbserver_id_softwareinstance`.`finalclass` = 'DBServer'),1) AND coalesce((`middleware_middleware_id_softwareinstance`.`finalclass` = 'Middleware'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_lnkconnectablecitonetworkdevice`
--
DROP TABLE IF EXISTS `view_lnkconnectablecitonetworkdevice`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_lnkconnectablecitonetworkdevice`  AS SELECT DISTINCT `lnkconnectablecitonetworkdevice`.`id` AS `id`, `lnkconnectablecitonetworkdevice`.`networkdevice_id` AS `networkdevice_id`, `networkdevice_networkdevice_id_functionalci`.`name` AS `networkdevice_name`, `lnkconnectablecitonetworkdevice`.`connectableci_id` AS `connectableci_id`, `connectableci_connectableci_id_functionalci`.`name` AS `connectableci_name`, `lnkconnectablecitonetworkdevice`.`network_port` AS `network_port`, `lnkconnectablecitonetworkdevice`.`device_port` AS `device_port`, `lnkconnectablecitonetworkdevice`.`type` AS `connection_type`, cast(concat(coalesce(`lnkconnectablecitonetworkdevice`.`networkdevice_id`,''),coalesce(' ',''),coalesce(`lnkconnectablecitonetworkdevice`.`connectableci_id`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`networkdevice_networkdevice_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `networkdevice_id_friendlyname`, coalesce((`networkdevice_networkdevice_id_physicaldevice`.`status` = 'obsolete'),0) AS `networkdevice_id_obsolescence_flag`, cast(concat(coalesce(`connectableci_connectableci_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `connectableci_id_friendlyname`, `connectableci_connectableci_id_functionalci`.`finalclass` AS `connectableci_id_finalclass_recall`, coalesce((`connectableci_connectableci_id_physicaldevice`.`status` = 'obsolete'),0) AS `connectableci_id_obsolescence_flag` FROM ((`lnkconnectablecitonetworkdevice` join (`physicaldevice` `networkdevice_networkdevice_id_physicaldevice` join `functionalci` `networkdevice_networkdevice_id_functionalci` on((`networkdevice_networkdevice_id_physicaldevice`.`id` = `networkdevice_networkdevice_id_functionalci`.`id`))) on((`lnkconnectablecitonetworkdevice`.`networkdevice_id` = `networkdevice_networkdevice_id_physicaldevice`.`id`))) join (`physicaldevice` `connectableci_connectableci_id_physicaldevice` join `functionalci` `connectableci_connectableci_id_functionalci` on((`connectableci_connectableci_id_physicaldevice`.`id` = `connectableci_connectableci_id_functionalci`.`id`))) on((`lnkconnectablecitonetworkdevice`.`connectableci_id` = `connectableci_connectableci_id_physicaldevice`.`id`))) WHERE (coalesce((`networkdevice_networkdevice_id_physicaldevice`.`finalclass` = 'NetworkDevice'),1) AND coalesce((`connectableci_connectableci_id_physicaldevice`.`finalclass` in ('DatacenterDevice','NetworkDevice','Server','PC','Printer','StorageSystem','SANSwitch','TapeLibrary','NAS','ConnectableCI')),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_lnkcontacttocontract`
--
DROP TABLE IF EXISTS `view_lnkcontacttocontract`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_lnkcontacttocontract`  AS SELECT DISTINCT `lnkcontacttocontract`.`id` AS `id`, `lnkcontacttocontract`.`contract_id` AS `contract_id`, `contract_contract_id`.`name` AS `contract_name`, `lnkcontacttocontract`.`contact_id` AS `contact_id`, `contact_contact_id`.`name` AS `contact_name`, cast(concat(coalesce(`lnkcontacttocontract`.`contract_id`,''),coalesce(' ',''),coalesce(`lnkcontacttocontract`.`contact_id`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`contract_contract_id`.`name`,'')) as char charset utf8mb4) AS `contract_id_friendlyname`, `contract_contract_id`.`finalclass` AS `contract_id_finalclass_recall`, if((`contact_contact_id`.`finalclass` in ('Team','Contact')),cast(concat(coalesce(`contact_contact_id`.`name`,'')) as char charset utf8mb4),cast(concat(coalesce(`contact_contact_id_poly_person`.`first_name`,''),coalesce(' ',''),coalesce(`contact_contact_id`.`name`,'')) as char charset utf8mb4)) AS `contact_id_friendlyname`, `contact_contact_id`.`finalclass` AS `contact_id_finalclass_recall`, coalesce((`contact_contact_id`.`status` = 'inactive'),0) AS `contact_id_obsolescence_flag` FROM ((`lnkcontacttocontract` join `contract` `contract_contract_id` on((`lnkcontacttocontract`.`contract_id` = `contract_contract_id`.`id`))) join (`contact` `contact_contact_id` left join `person` `contact_contact_id_poly_person` on((`contact_contact_id`.`id` = `contact_contact_id_poly_person`.`id`))) on((`lnkcontacttocontract`.`contact_id` = `contact_contact_id`.`id`))) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_lnkcontacttofunctionalci`
--
DROP TABLE IF EXISTS `view_lnkcontacttofunctionalci`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_lnkcontacttofunctionalci`  AS SELECT DISTINCT `lnkcontacttofunctionalci`.`id` AS `id`, `lnkcontacttofunctionalci`.`functionalci_id` AS `functionalci_id`, `functionalci_functionalci_id`.`name` AS `functionalci_name`, `lnkcontacttofunctionalci`.`contact_id` AS `contact_id`, `contact_contact_id`.`name` AS `contact_name`, cast(concat(coalesce(`lnkcontacttofunctionalci`.`functionalci_id`,''),coalesce(' ',''),coalesce(`lnkcontacttofunctionalci`.`contact_id`,'')) as char charset utf8mb4) AS `friendlyname`, if((`functionalci_functionalci_id`.`finalclass` in ('Middleware','DBServer','WebServer','PCSoftware','OtherSoftware')),cast(concat(coalesce(`functionalci_functionalci_id`.`name`,''),coalesce(' ',''),coalesce(`functionalci_system_id`.`name`,'')) as char charset utf8mb4),cast(concat(coalesce(`functionalci_functionalci_id`.`name`,'')) as char charset utf8mb4)) AS `functionalci_id_friendlyname`, `functionalci_functionalci_id`.`finalclass` AS `functionalci_id_finalclass_recall`, if((`functionalci_functionalci_id`.`finalclass` = 'FunctionalCI'),coalesce(0,0),if((`functionalci_functionalci_id`.`finalclass` in ('Hypervisor','Farm','VirtualMachine')),coalesce((`functionalci_functionalci_id_poly_virtualdevice`.`status` = 'obsolete'),0),if((`functionalci_functionalci_id`.`finalclass` = 'WebApplication'),coalesce(coalesce((`webserver_webserver_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_functionalci_id`.`finalclass` = 'DatabaseSchema'),coalesce(coalesce((`dbserver_dbserver_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_functionalci_id`.`finalclass` = 'MiddlewareInstance'),coalesce(coalesce((`middleware_middleware_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_functionalci_id`.`finalclass` in ('Middleware','DBServer','WebServer','PCSoftware','OtherSoftware')),coalesce((`functionalci_functionalci_id_poly_softwareinstance`.`status` = 'inactive'),0),if((`functionalci_functionalci_id`.`finalclass` = 'BusinessProcess'),coalesce((`functionalci_functionalci_id_poly_businessprocess`.`status` = 'inactive'),0),if((`functionalci_functionalci_id`.`finalclass` = 'ApplicationSolution'),coalesce((`functionalci_functionalci_id_poly_applicationsolution`.`status` = 'inactive'),0),coalesce((`functionalci_functionalci_id_poly_physicaldevice`.`status` = 'obsolete'),0))))))))) AS `functionalci_id_obsolescence_flag`, if((`contact_contact_id`.`finalclass` in ('Team','Contact')),cast(concat(coalesce(`contact_contact_id`.`name`,'')) as char charset utf8mb4),cast(concat(coalesce(`contact_contact_id_poly_person`.`first_name`,''),coalesce(' ',''),coalesce(`contact_contact_id`.`name`,'')) as char charset utf8mb4)) AS `contact_id_friendlyname`, `contact_contact_id`.`finalclass` AS `contact_id_finalclass_recall`, coalesce((`contact_contact_id`.`status` = 'inactive'),0) AS `contact_id_obsolescence_flag` FROM ((`lnkcontacttofunctionalci` join ((((((((`functionalci` `functionalci_functionalci_id` left join (`softwareinstance` `functionalci_functionalci_id_poly_softwareinstance` join `functionalci` `functionalci_system_id` on((`functionalci_functionalci_id_poly_softwareinstance`.`functionalci_id` = `functionalci_system_id`.`id`))) on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_softwareinstance`.`id`))) left join `virtualdevice` `functionalci_functionalci_id_poly_virtualdevice` on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_virtualdevice`.`id`))) left join (`webapplication` `functionalci_functionalci_id_poly_webapplication` join `softwareinstance` `webserver_webserver_id_softwareinstance` on((`functionalci_functionalci_id_poly_webapplication`.`webserver_id` = `webserver_webserver_id_softwareinstance`.`id`))) on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_webapplication`.`id`))) left join (`databaseschema` `functionalci_functionalci_id_poly_databaseschema` join `softwareinstance` `dbserver_dbserver_id_softwareinstance` on((`functionalci_functionalci_id_poly_databaseschema`.`dbserver_id` = `dbserver_dbserver_id_softwareinstance`.`id`))) on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_databaseschema`.`id`))) left join (`middlewareinstance` `functionalci_functionalci_id_poly_middlewareinstance` join `softwareinstance` `middleware_middleware_id_softwareinstance` on((`functionalci_functionalci_id_poly_middlewareinstance`.`middleware_id` = `middleware_middleware_id_softwareinstance`.`id`))) on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_middlewareinstance`.`id`))) left join `businessprocess` `functionalci_functionalci_id_poly_businessprocess` on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_businessprocess`.`id`))) left join `applicationsolution` `functionalci_functionalci_id_poly_applicationsolution` on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_applicationsolution`.`id`))) left join `physicaldevice` `functionalci_functionalci_id_poly_physicaldevice` on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_physicaldevice`.`id`))) on((`lnkcontacttofunctionalci`.`functionalci_id` = `functionalci_functionalci_id`.`id`))) join (`contact` `contact_contact_id` left join `person` `contact_contact_id_poly_person` on((`contact_contact_id`.`id` = `contact_contact_id_poly_person`.`id`))) on((`lnkcontacttofunctionalci`.`contact_id` = `contact_contact_id`.`id`))) WHERE (coalesce((`webserver_webserver_id_softwareinstance`.`finalclass` = 'WebServer'),1) AND coalesce((`dbserver_dbserver_id_softwareinstance`.`finalclass` = 'DBServer'),1) AND coalesce((`middleware_middleware_id_softwareinstance`.`finalclass` = 'Middleware'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_lnkcontacttoservice`
--
DROP TABLE IF EXISTS `view_lnkcontacttoservice`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_lnkcontacttoservice`  AS SELECT DISTINCT `lnkcontacttoservice`.`id` AS `id`, `lnkcontacttoservice`.`service_id` AS `service_id`, `service_service_id`.`name` AS `service_name`, `lnkcontacttoservice`.`contact_id` AS `contact_id`, `contact_contact_id`.`name` AS `contact_name`, cast(concat(coalesce(`lnkcontacttoservice`.`service_id`,''),coalesce(' ',''),coalesce(`lnkcontacttoservice`.`contact_id`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`service_service_id`.`name`,'')) as char charset utf8mb4) AS `service_id_friendlyname`, if((`contact_contact_id`.`finalclass` in ('Team','Contact')),cast(concat(coalesce(`contact_contact_id`.`name`,'')) as char charset utf8mb4),cast(concat(coalesce(`contact_contact_id_poly_person`.`first_name`,''),coalesce(' ',''),coalesce(`contact_contact_id`.`name`,'')) as char charset utf8mb4)) AS `contact_id_friendlyname`, `contact_contact_id`.`finalclass` AS `contact_id_finalclass_recall`, coalesce((`contact_contact_id`.`status` = 'inactive'),0) AS `contact_id_obsolescence_flag` FROM ((`lnkcontacttoservice` join `service` `service_service_id` on((`lnkcontacttoservice`.`service_id` = `service_service_id`.`id`))) join (`contact` `contact_contact_id` left join `person` `contact_contact_id_poly_person` on((`contact_contact_id`.`id` = `contact_contact_id_poly_person`.`id`))) on((`lnkcontacttoservice`.`contact_id` = `contact_contact_id`.`id`))) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_lnkcontacttoticket`
--
DROP TABLE IF EXISTS `view_lnkcontacttoticket`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_lnkcontacttoticket`  AS SELECT DISTINCT `lnkcontacttoticket`.`id` AS `id`, `lnkcontacttoticket`.`ticket_id` AS `ticket_id`, `ticket_ticket_id`.`ref` AS `ticket_ref`, `lnkcontacttoticket`.`contact_id` AS `contact_id`, `contact_contact_id`.`email` AS `contact_email`, `lnkcontacttoticket`.`role` AS `role`, `lnkcontacttoticket`.`impact_code` AS `role_code`, cast(concat(coalesce(`lnkcontacttoticket`.`ticket_id`,''),coalesce(' ',''),coalesce(`lnkcontacttoticket`.`contact_id`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`ticket_ticket_id`.`ref`,'')) as char charset utf8mb4) AS `ticket_id_friendlyname`, `ticket_ticket_id`.`finalclass` AS `ticket_id_finalclass_recall`, if((`contact_contact_id`.`finalclass` in ('Team','Contact')),cast(concat(coalesce(`contact_contact_id`.`name`,'')) as char charset utf8mb4),cast(concat(coalesce(`contact_contact_id_poly_person`.`first_name`,''),coalesce(' ',''),coalesce(`contact_contact_id`.`name`,'')) as char charset utf8mb4)) AS `contact_id_friendlyname`, `contact_contact_id`.`finalclass` AS `contact_id_finalclass_recall`, coalesce((`contact_contact_id`.`status` = 'inactive'),0) AS `contact_id_obsolescence_flag` FROM ((`lnkcontacttoticket` join `ticket` `ticket_ticket_id` on((`lnkcontacttoticket`.`ticket_id` = `ticket_ticket_id`.`id`))) join (`contact` `contact_contact_id` left join `person` `contact_contact_id_poly_person` on((`contact_contact_id`.`id` = `contact_contact_id_poly_person`.`id`))) on((`lnkcontacttoticket`.`contact_id` = `contact_contact_id`.`id`))) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_lnkcontracttodocument`
--
DROP TABLE IF EXISTS `view_lnkcontracttodocument`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_lnkcontracttodocument`  AS SELECT DISTINCT `lnkcontracttodocument`.`id` AS `id`, `lnkcontracttodocument`.`contract_id` AS `contract_id`, `contract_contract_id`.`name` AS `contract_name`, `lnkcontracttodocument`.`document_id` AS `document_id`, `document_document_id`.`name` AS `document_name`, cast(concat(coalesce(`lnkcontracttodocument`.`contract_id`,''),coalesce(' ',''),coalesce(`lnkcontracttodocument`.`document_id`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`contract_contract_id`.`name`,'')) as char charset utf8mb4) AS `contract_id_friendlyname`, `contract_contract_id`.`finalclass` AS `contract_id_finalclass_recall`, if((`document_document_id`.`finalclass` = 'Document'),cast(concat(coalesce('Document','')) as char charset utf8mb4),cast(concat(coalesce(`document_document_id`.`name`,'')) as char charset utf8mb4)) AS `document_id_friendlyname`, `document_document_id`.`finalclass` AS `document_id_finalclass_recall`, coalesce((`document_document_id`.`status` = 'obsolete'),0) AS `document_id_obsolescence_flag` FROM ((`lnkcontracttodocument` join `contract` `contract_contract_id` on((`lnkcontracttodocument`.`contract_id` = `contract_contract_id`.`id`))) join `document` `document_document_id` on((`lnkcontracttodocument`.`document_id` = `document_document_id`.`id`))) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_lnkcustomercontracttofunctionalci`
--
DROP TABLE IF EXISTS `view_lnkcustomercontracttofunctionalci`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_lnkcustomercontracttofunctionalci`  AS SELECT DISTINCT `lnkcustomercontracttofunctionalci`.`id` AS `id`, `lnkcustomercontracttofunctionalci`.`customercontract_id` AS `customercontract_id`, `customercontract_customercontract_id_contract`.`name` AS `customercontract_name`, `lnkcustomercontracttofunctionalci`.`functionalci_id` AS `functionalci_id`, `functionalci_functionalci_id`.`name` AS `functionalci_name`, cast(concat(coalesce(`lnkcustomercontracttofunctionalci`.`customercontract_id`,''),coalesce(' ',''),coalesce(`lnkcustomercontracttofunctionalci`.`functionalci_id`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`customercontract_customercontract_id_contract`.`name`,'')) as char charset utf8mb4) AS `customercontract_id_friendlyname`, if((`functionalci_functionalci_id`.`finalclass` in ('Middleware','DBServer','WebServer','PCSoftware','OtherSoftware')),cast(concat(coalesce(`functionalci_functionalci_id`.`name`,''),coalesce(' ',''),coalesce(`functionalci_system_id`.`name`,'')) as char charset utf8mb4),cast(concat(coalesce(`functionalci_functionalci_id`.`name`,'')) as char charset utf8mb4)) AS `functionalci_id_friendlyname`, `functionalci_functionalci_id`.`finalclass` AS `functionalci_id_finalclass_recall`, if((`functionalci_functionalci_id`.`finalclass` = 'FunctionalCI'),coalesce(0,0),if((`functionalci_functionalci_id`.`finalclass` in ('Hypervisor','Farm','VirtualMachine')),coalesce((`functionalci_functionalci_id_poly_virtualdevice`.`status` = 'obsolete'),0),if((`functionalci_functionalci_id`.`finalclass` = 'WebApplication'),coalesce(coalesce((`webserver_webserver_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_functionalci_id`.`finalclass` = 'DatabaseSchema'),coalesce(coalesce((`dbserver_dbserver_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_functionalci_id`.`finalclass` = 'MiddlewareInstance'),coalesce(coalesce((`middleware_middleware_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_functionalci_id`.`finalclass` in ('Middleware','DBServer','WebServer','PCSoftware','OtherSoftware')),coalesce((`functionalci_functionalci_id_poly_softwareinstance`.`status` = 'inactive'),0),if((`functionalci_functionalci_id`.`finalclass` = 'BusinessProcess'),coalesce((`functionalci_functionalci_id_poly_businessprocess`.`status` = 'inactive'),0),if((`functionalci_functionalci_id`.`finalclass` = 'ApplicationSolution'),coalesce((`functionalci_functionalci_id_poly_applicationsolution`.`status` = 'inactive'),0),coalesce((`functionalci_functionalci_id_poly_physicaldevice`.`status` = 'obsolete'),0))))))))) AS `functionalci_id_obsolescence_flag` FROM ((`lnkcustomercontracttofunctionalci` join `contract` `customercontract_customercontract_id_contract` on((`lnkcustomercontracttofunctionalci`.`customercontract_id` = `customercontract_customercontract_id_contract`.`id`))) join ((((((((`functionalci` `functionalci_functionalci_id` left join (`softwareinstance` `functionalci_functionalci_id_poly_softwareinstance` join `functionalci` `functionalci_system_id` on((`functionalci_functionalci_id_poly_softwareinstance`.`functionalci_id` = `functionalci_system_id`.`id`))) on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_softwareinstance`.`id`))) left join `virtualdevice` `functionalci_functionalci_id_poly_virtualdevice` on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_virtualdevice`.`id`))) left join (`webapplication` `functionalci_functionalci_id_poly_webapplication` join `softwareinstance` `webserver_webserver_id_softwareinstance` on((`functionalci_functionalci_id_poly_webapplication`.`webserver_id` = `webserver_webserver_id_softwareinstance`.`id`))) on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_webapplication`.`id`))) left join (`databaseschema` `functionalci_functionalci_id_poly_databaseschema` join `softwareinstance` `dbserver_dbserver_id_softwareinstance` on((`functionalci_functionalci_id_poly_databaseschema`.`dbserver_id` = `dbserver_dbserver_id_softwareinstance`.`id`))) on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_databaseschema`.`id`))) left join (`middlewareinstance` `functionalci_functionalci_id_poly_middlewareinstance` join `softwareinstance` `middleware_middleware_id_softwareinstance` on((`functionalci_functionalci_id_poly_middlewareinstance`.`middleware_id` = `middleware_middleware_id_softwareinstance`.`id`))) on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_middlewareinstance`.`id`))) left join `businessprocess` `functionalci_functionalci_id_poly_businessprocess` on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_businessprocess`.`id`))) left join `applicationsolution` `functionalci_functionalci_id_poly_applicationsolution` on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_applicationsolution`.`id`))) left join `physicaldevice` `functionalci_functionalci_id_poly_physicaldevice` on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_physicaldevice`.`id`))) on((`lnkcustomercontracttofunctionalci`.`functionalci_id` = `functionalci_functionalci_id`.`id`))) WHERE (coalesce((`customercontract_customercontract_id_contract`.`finalclass` = 'CustomerContract'),1) AND coalesce((`webserver_webserver_id_softwareinstance`.`finalclass` = 'WebServer'),1) AND coalesce((`dbserver_dbserver_id_softwareinstance`.`finalclass` = 'DBServer'),1) AND coalesce((`middleware_middleware_id_softwareinstance`.`finalclass` = 'Middleware'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_lnkcustomercontracttoprovidercontract`
--
DROP TABLE IF EXISTS `view_lnkcustomercontracttoprovidercontract`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_lnkcustomercontracttoprovidercontract`  AS SELECT DISTINCT `lnkcustomercontracttoprovidercontract`.`id` AS `id`, `lnkcustomercontracttoprovidercontract`.`customercontract_id` AS `customercontract_id`, `customercontract_customercontract_id_contract`.`name` AS `customercontract_name`, `lnkcustomercontracttoprovidercontract`.`providercontract_id` AS `providercontract_id`, `providercontract_providercontract_id_contract`.`name` AS `providercontract_name`, cast(concat(coalesce(`lnkcustomercontracttoprovidercontract`.`customercontract_id`,''),coalesce(' ',''),coalesce(`lnkcustomercontracttoprovidercontract`.`providercontract_id`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`customercontract_customercontract_id_contract`.`name`,'')) as char charset utf8mb4) AS `customercontract_id_friendlyname`, cast(concat(coalesce(`providercontract_providercontract_id_contract`.`name`,'')) as char charset utf8mb4) AS `providercontract_id_friendlyname` FROM ((`lnkcustomercontracttoprovidercontract` join `contract` `customercontract_customercontract_id_contract` on((`lnkcustomercontracttoprovidercontract`.`customercontract_id` = `customercontract_customercontract_id_contract`.`id`))) join `contract` `providercontract_providercontract_id_contract` on((`lnkcustomercontracttoprovidercontract`.`providercontract_id` = `providercontract_providercontract_id_contract`.`id`))) WHERE (coalesce((`customercontract_customercontract_id_contract`.`finalclass` = 'CustomerContract'),1) AND coalesce((`providercontract_providercontract_id_contract`.`finalclass` = 'ProviderContract'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_lnkcustomercontracttoservice`
--
DROP TABLE IF EXISTS `view_lnkcustomercontracttoservice`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_lnkcustomercontracttoservice`  AS SELECT DISTINCT `lnkcustomercontracttoservice`.`id` AS `id`, `lnkcustomercontracttoservice`.`customercontract_id` AS `customercontract_id`, `customercontract_customercontract_id_contract`.`name` AS `customercontract_name`, `lnkcustomercontracttoservice`.`service_id` AS `service_id`, `service_service_id`.`name` AS `service_name`, `lnkcustomercontracttoservice`.`sla_id` AS `sla_id`, `sla_sla_id`.`name` AS `sla_name`, cast(concat(coalesce(`lnkcustomercontracttoservice`.`customercontract_id`,''),coalesce(' ',''),coalesce(`lnkcustomercontracttoservice`.`service_id`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`customercontract_customercontract_id_contract`.`name`,'')) as char charset utf8mb4) AS `customercontract_id_friendlyname`, cast(concat(coalesce(`service_service_id`.`name`,'')) as char charset utf8mb4) AS `service_id_friendlyname`, cast(concat(coalesce(`sla_sla_id`.`name`,'')) as char charset utf8mb4) AS `sla_id_friendlyname` FROM (((`lnkcustomercontracttoservice` join `contract` `customercontract_customercontract_id_contract` on((`lnkcustomercontracttoservice`.`customercontract_id` = `customercontract_customercontract_id_contract`.`id`))) join `service` `service_service_id` on((`lnkcustomercontracttoservice`.`service_id` = `service_service_id`.`id`))) left join `sla` `sla_sla_id` on((`lnkcustomercontracttoservice`.`sla_id` = `sla_sla_id`.`id`))) WHERE coalesce((`customercontract_customercontract_id_contract`.`finalclass` = 'CustomerContract'),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_lnkdeliverymodeltocontact`
--
DROP TABLE IF EXISTS `view_lnkdeliverymodeltocontact`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_lnkdeliverymodeltocontact`  AS SELECT DISTINCT `lnkdeliverymodeltocontact`.`id` AS `id`, `lnkdeliverymodeltocontact`.`deliverymodel_id` AS `deliverymodel_id`, `deliverymodel_deliverymodel_id`.`name` AS `deliverymodel_name`, `lnkdeliverymodeltocontact`.`contact_id` AS `contact_id`, `contact_contact_id`.`name` AS `contact_name`, `lnkdeliverymodeltocontact`.`role_id` AS `role_id`, `contacttype_role_id_typology`.`name` AS `role_name`, cast(concat(coalesce(`lnkdeliverymodeltocontact`.`deliverymodel_id`,''),coalesce(' ',''),coalesce(`lnkdeliverymodeltocontact`.`contact_id`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`deliverymodel_deliverymodel_id`.`name`,'')) as char charset utf8mb4) AS `deliverymodel_id_friendlyname`, if((`contact_contact_id`.`finalclass` in ('Team','Contact')),cast(concat(coalesce(`contact_contact_id`.`name`,'')) as char charset utf8mb4),cast(concat(coalesce(`contact_contact_id_poly_person`.`first_name`,''),coalesce(' ',''),coalesce(`contact_contact_id`.`name`,'')) as char charset utf8mb4)) AS `contact_id_friendlyname`, `contact_contact_id`.`finalclass` AS `contact_id_finalclass_recall`, coalesce((`contact_contact_id`.`status` = 'inactive'),0) AS `contact_id_obsolescence_flag`, cast(concat(coalesce(`contacttype_role_id_typology`.`name`,'')) as char charset utf8mb4) AS `role_id_friendlyname` FROM (((`lnkdeliverymodeltocontact` join `deliverymodel` `deliverymodel_deliverymodel_id` on((`lnkdeliverymodeltocontact`.`deliverymodel_id` = `deliverymodel_deliverymodel_id`.`id`))) join (`contact` `contact_contact_id` left join `person` `contact_contact_id_poly_person` on((`contact_contact_id`.`id` = `contact_contact_id_poly_person`.`id`))) on((`lnkdeliverymodeltocontact`.`contact_id` = `contact_contact_id`.`id`))) left join `typology` `contacttype_role_id_typology` on((`lnkdeliverymodeltocontact`.`role_id` = `contacttype_role_id_typology`.`id`))) WHERE coalesce((`contacttype_role_id_typology`.`finalclass` = 'ContactType'),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_lnkdocumenttofunctionalci`
--
DROP TABLE IF EXISTS `view_lnkdocumenttofunctionalci`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_lnkdocumenttofunctionalci`  AS SELECT DISTINCT `lnkdocumenttofunctionalci`.`id` AS `id`, `lnkdocumenttofunctionalci`.`functionalci_id` AS `functionalci_id`, `functionalci_functionalci_id`.`name` AS `functionalci_name`, `lnkdocumenttofunctionalci`.`document_id` AS `document_id`, `document_document_id`.`name` AS `document_name`, cast(concat(coalesce(`lnkdocumenttofunctionalci`.`functionalci_id`,''),coalesce(' ',''),coalesce(`lnkdocumenttofunctionalci`.`document_id`,'')) as char charset utf8mb4) AS `friendlyname`, if((`functionalci_functionalci_id`.`finalclass` in ('Middleware','DBServer','WebServer','PCSoftware','OtherSoftware')),cast(concat(coalesce(`functionalci_functionalci_id`.`name`,''),coalesce(' ',''),coalesce(`functionalci_system_id`.`name`,'')) as char charset utf8mb4),cast(concat(coalesce(`functionalci_functionalci_id`.`name`,'')) as char charset utf8mb4)) AS `functionalci_id_friendlyname`, `functionalci_functionalci_id`.`finalclass` AS `functionalci_id_finalclass_recall`, if((`functionalci_functionalci_id`.`finalclass` = 'FunctionalCI'),coalesce(0,0),if((`functionalci_functionalci_id`.`finalclass` in ('Hypervisor','Farm','VirtualMachine')),coalesce((`functionalci_functionalci_id_poly_virtualdevice`.`status` = 'obsolete'),0),if((`functionalci_functionalci_id`.`finalclass` = 'WebApplication'),coalesce(coalesce((`webserver_webserver_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_functionalci_id`.`finalclass` = 'DatabaseSchema'),coalesce(coalesce((`dbserver_dbserver_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_functionalci_id`.`finalclass` = 'MiddlewareInstance'),coalesce(coalesce((`middleware_middleware_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_functionalci_id`.`finalclass` in ('Middleware','DBServer','WebServer','PCSoftware','OtherSoftware')),coalesce((`functionalci_functionalci_id_poly_softwareinstance`.`status` = 'inactive'),0),if((`functionalci_functionalci_id`.`finalclass` = 'BusinessProcess'),coalesce((`functionalci_functionalci_id_poly_businessprocess`.`status` = 'inactive'),0),if((`functionalci_functionalci_id`.`finalclass` = 'ApplicationSolution'),coalesce((`functionalci_functionalci_id_poly_applicationsolution`.`status` = 'inactive'),0),coalesce((`functionalci_functionalci_id_poly_physicaldevice`.`status` = 'obsolete'),0))))))))) AS `functionalci_id_obsolescence_flag`, if((`document_document_id`.`finalclass` = 'Document'),cast(concat(coalesce('Document','')) as char charset utf8mb4),cast(concat(coalesce(`document_document_id`.`name`,'')) as char charset utf8mb4)) AS `document_id_friendlyname`, `document_document_id`.`finalclass` AS `document_id_finalclass_recall`, coalesce((`document_document_id`.`status` = 'obsolete'),0) AS `document_id_obsolescence_flag` FROM ((`lnkdocumenttofunctionalci` join ((((((((`functionalci` `functionalci_functionalci_id` left join (`softwareinstance` `functionalci_functionalci_id_poly_softwareinstance` join `functionalci` `functionalci_system_id` on((`functionalci_functionalci_id_poly_softwareinstance`.`functionalci_id` = `functionalci_system_id`.`id`))) on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_softwareinstance`.`id`))) left join `virtualdevice` `functionalci_functionalci_id_poly_virtualdevice` on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_virtualdevice`.`id`))) left join (`webapplication` `functionalci_functionalci_id_poly_webapplication` join `softwareinstance` `webserver_webserver_id_softwareinstance` on((`functionalci_functionalci_id_poly_webapplication`.`webserver_id` = `webserver_webserver_id_softwareinstance`.`id`))) on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_webapplication`.`id`))) left join (`databaseschema` `functionalci_functionalci_id_poly_databaseschema` join `softwareinstance` `dbserver_dbserver_id_softwareinstance` on((`functionalci_functionalci_id_poly_databaseschema`.`dbserver_id` = `dbserver_dbserver_id_softwareinstance`.`id`))) on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_databaseschema`.`id`))) left join (`middlewareinstance` `functionalci_functionalci_id_poly_middlewareinstance` join `softwareinstance` `middleware_middleware_id_softwareinstance` on((`functionalci_functionalci_id_poly_middlewareinstance`.`middleware_id` = `middleware_middleware_id_softwareinstance`.`id`))) on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_middlewareinstance`.`id`))) left join `businessprocess` `functionalci_functionalci_id_poly_businessprocess` on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_businessprocess`.`id`))) left join `applicationsolution` `functionalci_functionalci_id_poly_applicationsolution` on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_applicationsolution`.`id`))) left join `physicaldevice` `functionalci_functionalci_id_poly_physicaldevice` on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_physicaldevice`.`id`))) on((`lnkdocumenttofunctionalci`.`functionalci_id` = `functionalci_functionalci_id`.`id`))) join `document` `document_document_id` on((`lnkdocumenttofunctionalci`.`document_id` = `document_document_id`.`id`))) WHERE (coalesce((`webserver_webserver_id_softwareinstance`.`finalclass` = 'WebServer'),1) AND coalesce((`dbserver_dbserver_id_softwareinstance`.`finalclass` = 'DBServer'),1) AND coalesce((`middleware_middleware_id_softwareinstance`.`finalclass` = 'Middleware'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_lnkdocumenttolicence`
--
DROP TABLE IF EXISTS `view_lnkdocumenttolicence`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_lnkdocumenttolicence`  AS SELECT DISTINCT `lnkdocumenttolicence`.`id` AS `id`, `lnkdocumenttolicence`.`licence_id` AS `licence_id`, `licence_licence_id`.`name` AS `licence_name`, `lnkdocumenttolicence`.`document_id` AS `document_id`, `document_document_id`.`name` AS `document_name`, cast(concat(coalesce(`lnkdocumenttolicence`.`licence_id`,''),coalesce(' ',''),coalesce(`lnkdocumenttolicence`.`document_id`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`licence_licence_id`.`name`,'')) as char charset utf8mb4) AS `licence_id_friendlyname`, `licence_licence_id`.`finalclass` AS `licence_id_finalclass_recall`, coalesce(((`licence_licence_id`.`perpetual` = 'no') and (isnull(`licence_licence_id`.`end_date`) = 0) and (`licence_licence_id`.`end_date` < date_format((now() - interval 15 month),'%Y-%m-%d 00:00:00'))),0) AS `licence_id_obsolescence_flag`, if((`document_document_id`.`finalclass` = 'Document'),cast(concat(coalesce('Document','')) as char charset utf8mb4),cast(concat(coalesce(`document_document_id`.`name`,'')) as char charset utf8mb4)) AS `document_id_friendlyname`, `document_document_id`.`finalclass` AS `document_id_finalclass_recall`, coalesce((`document_document_id`.`status` = 'obsolete'),0) AS `document_id_obsolescence_flag` FROM ((`lnkdocumenttolicence` join `licence` `licence_licence_id` on((`lnkdocumenttolicence`.`licence_id` = `licence_licence_id`.`id`))) join `document` `document_document_id` on((`lnkdocumenttolicence`.`document_id` = `document_document_id`.`id`))) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_lnkdocumenttopatch`
--
DROP TABLE IF EXISTS `view_lnkdocumenttopatch`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_lnkdocumenttopatch`  AS SELECT DISTINCT `lnkdocumenttopatch`.`id` AS `id`, `lnkdocumenttopatch`.`patch_id` AS `patch_id`, `patch_patch_id`.`name` AS `patch_name`, `lnkdocumenttopatch`.`document_id` AS `document_id`, `document_document_id`.`name` AS `document_name`, cast(concat(coalesce(`lnkdocumenttopatch`.`patch_id`,''),coalesce(' ',''),coalesce(`lnkdocumenttopatch`.`document_id`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`patch_patch_id`.`name`,'')) as char charset utf8mb4) AS `patch_id_friendlyname`, `patch_patch_id`.`finalclass` AS `patch_id_finalclass_recall`, if((`document_document_id`.`finalclass` = 'Document'),cast(concat(coalesce('Document','')) as char charset utf8mb4),cast(concat(coalesce(`document_document_id`.`name`,'')) as char charset utf8mb4)) AS `document_id_friendlyname`, `document_document_id`.`finalclass` AS `document_id_finalclass_recall`, coalesce((`document_document_id`.`status` = 'obsolete'),0) AS `document_id_obsolescence_flag` FROM ((`lnkdocumenttopatch` join `patch` `patch_patch_id` on((`lnkdocumenttopatch`.`patch_id` = `patch_patch_id`.`id`))) join `document` `document_document_id` on((`lnkdocumenttopatch`.`document_id` = `document_document_id`.`id`))) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_lnkdocumenttoservice`
--
DROP TABLE IF EXISTS `view_lnkdocumenttoservice`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_lnkdocumenttoservice`  AS SELECT DISTINCT `lnkdocumenttoservice`.`id` AS `id`, `lnkdocumenttoservice`.`service_id` AS `service_id`, `service_service_id`.`name` AS `service_name`, `lnkdocumenttoservice`.`document_id` AS `document_id`, `document_document_id`.`name` AS `document_name`, cast(concat(coalesce(`lnkdocumenttoservice`.`service_id`,''),coalesce(' ',''),coalesce(`lnkdocumenttoservice`.`document_id`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`service_service_id`.`name`,'')) as char charset utf8mb4) AS `service_id_friendlyname`, if((`document_document_id`.`finalclass` = 'Document'),cast(concat(coalesce('Document','')) as char charset utf8mb4),cast(concat(coalesce(`document_document_id`.`name`,'')) as char charset utf8mb4)) AS `document_id_friendlyname`, `document_document_id`.`finalclass` AS `document_id_finalclass_recall`, coalesce((`document_document_id`.`status` = 'obsolete'),0) AS `document_id_obsolescence_flag` FROM ((`lnkdocumenttoservice` join `service` `service_service_id` on((`lnkdocumenttoservice`.`service_id` = `service_service_id`.`id`))) join `document` `document_document_id` on((`lnkdocumenttoservice`.`document_id` = `document_document_id`.`id`))) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_lnkdocumenttosoftware`
--
DROP TABLE IF EXISTS `view_lnkdocumenttosoftware`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_lnkdocumenttosoftware`  AS SELECT DISTINCT `lnkdocumenttosoftware`.`id` AS `id`, `lnkdocumenttosoftware`.`software_id` AS `software_id`, `software_software_id`.`name` AS `software_name`, `lnkdocumenttosoftware`.`document_id` AS `document_id`, `document_document_id`.`name` AS `document_name`, cast(concat(coalesce(`lnkdocumenttosoftware`.`software_id`,''),coalesce(' ',''),coalesce(`lnkdocumenttosoftware`.`document_id`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`software_software_id`.`name`,''),coalesce(' ',''),coalesce(`software_software_id`.`version`,'')) as char charset utf8mb4) AS `software_id_friendlyname`, if((`document_document_id`.`finalclass` = 'Document'),cast(concat(coalesce('Document','')) as char charset utf8mb4),cast(concat(coalesce(`document_document_id`.`name`,'')) as char charset utf8mb4)) AS `document_id_friendlyname`, `document_document_id`.`finalclass` AS `document_id_finalclass_recall`, coalesce((`document_document_id`.`status` = 'obsolete'),0) AS `document_id_obsolescence_flag` FROM ((`lnkdocumenttosoftware` join `software` `software_software_id` on((`lnkdocumenttosoftware`.`software_id` = `software_software_id`.`id`))) join `document` `document_document_id` on((`lnkdocumenttosoftware`.`document_id` = `document_document_id`.`id`))) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_lnkfunctionalcitoospatch`
--
DROP TABLE IF EXISTS `view_lnkfunctionalcitoospatch`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_lnkfunctionalcitoospatch`  AS SELECT DISTINCT `lnkfunctionalcitoospatch`.`id` AS `id`, `lnkfunctionalcitoospatch`.`ospatch_id` AS `ospatch_id`, `ospatch_ospatch_id_patch`.`name` AS `ospatch_name`, `lnkfunctionalcitoospatch`.`functionalci_id` AS `functionalci_id`, `functionalci_functionalci_id`.`name` AS `functionalci_name`, cast(concat(coalesce(`lnkfunctionalcitoospatch`.`ospatch_id`,''),coalesce(' ',''),coalesce(`lnkfunctionalcitoospatch`.`functionalci_id`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`ospatch_ospatch_id_patch`.`name`,'')) as char charset utf8mb4) AS `ospatch_id_friendlyname`, if((`functionalci_functionalci_id`.`finalclass` in ('Middleware','DBServer','WebServer','PCSoftware','OtherSoftware')),cast(concat(coalesce(`functionalci_functionalci_id`.`name`,''),coalesce(' ',''),coalesce(`functionalci_system_id`.`name`,'')) as char charset utf8mb4),cast(concat(coalesce(`functionalci_functionalci_id`.`name`,'')) as char charset utf8mb4)) AS `functionalci_id_friendlyname`, `functionalci_functionalci_id`.`finalclass` AS `functionalci_id_finalclass_recall`, if((`functionalci_functionalci_id`.`finalclass` = 'FunctionalCI'),coalesce(0,0),if((`functionalci_functionalci_id`.`finalclass` in ('Hypervisor','Farm','VirtualMachine')),coalesce((`functionalci_functionalci_id_poly_virtualdevice`.`status` = 'obsolete'),0),if((`functionalci_functionalci_id`.`finalclass` = 'WebApplication'),coalesce(coalesce((`webserver_webserver_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_functionalci_id`.`finalclass` = 'DatabaseSchema'),coalesce(coalesce((`dbserver_dbserver_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_functionalci_id`.`finalclass` = 'MiddlewareInstance'),coalesce(coalesce((`middleware_middleware_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_functionalci_id`.`finalclass` in ('Middleware','DBServer','WebServer','PCSoftware','OtherSoftware')),coalesce((`functionalci_functionalci_id_poly_softwareinstance`.`status` = 'inactive'),0),if((`functionalci_functionalci_id`.`finalclass` = 'BusinessProcess'),coalesce((`functionalci_functionalci_id_poly_businessprocess`.`status` = 'inactive'),0),if((`functionalci_functionalci_id`.`finalclass` = 'ApplicationSolution'),coalesce((`functionalci_functionalci_id_poly_applicationsolution`.`status` = 'inactive'),0),coalesce((`functionalci_functionalci_id_poly_physicaldevice`.`status` = 'obsolete'),0))))))))) AS `functionalci_id_obsolescence_flag` FROM ((`lnkfunctionalcitoospatch` join `patch` `ospatch_ospatch_id_patch` on((`lnkfunctionalcitoospatch`.`ospatch_id` = `ospatch_ospatch_id_patch`.`id`))) join ((((((((`functionalci` `functionalci_functionalci_id` left join (`softwareinstance` `functionalci_functionalci_id_poly_softwareinstance` join `functionalci` `functionalci_system_id` on((`functionalci_functionalci_id_poly_softwareinstance`.`functionalci_id` = `functionalci_system_id`.`id`))) on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_softwareinstance`.`id`))) left join `virtualdevice` `functionalci_functionalci_id_poly_virtualdevice` on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_virtualdevice`.`id`))) left join (`webapplication` `functionalci_functionalci_id_poly_webapplication` join `softwareinstance` `webserver_webserver_id_softwareinstance` on((`functionalci_functionalci_id_poly_webapplication`.`webserver_id` = `webserver_webserver_id_softwareinstance`.`id`))) on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_webapplication`.`id`))) left join (`databaseschema` `functionalci_functionalci_id_poly_databaseschema` join `softwareinstance` `dbserver_dbserver_id_softwareinstance` on((`functionalci_functionalci_id_poly_databaseschema`.`dbserver_id` = `dbserver_dbserver_id_softwareinstance`.`id`))) on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_databaseschema`.`id`))) left join (`middlewareinstance` `functionalci_functionalci_id_poly_middlewareinstance` join `softwareinstance` `middleware_middleware_id_softwareinstance` on((`functionalci_functionalci_id_poly_middlewareinstance`.`middleware_id` = `middleware_middleware_id_softwareinstance`.`id`))) on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_middlewareinstance`.`id`))) left join `businessprocess` `functionalci_functionalci_id_poly_businessprocess` on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_businessprocess`.`id`))) left join `applicationsolution` `functionalci_functionalci_id_poly_applicationsolution` on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_applicationsolution`.`id`))) left join `physicaldevice` `functionalci_functionalci_id_poly_physicaldevice` on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_physicaldevice`.`id`))) on((`lnkfunctionalcitoospatch`.`functionalci_id` = `functionalci_functionalci_id`.`id`))) WHERE (coalesce((`ospatch_ospatch_id_patch`.`finalclass` = 'OSPatch'),1) AND coalesce((`webserver_webserver_id_softwareinstance`.`finalclass` = 'WebServer'),1) AND coalesce((`dbserver_dbserver_id_softwareinstance`.`finalclass` = 'DBServer'),1) AND coalesce((`middleware_middleware_id_softwareinstance`.`finalclass` = 'Middleware'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_lnkfunctionalcitoprovidercontract`
--
DROP TABLE IF EXISTS `view_lnkfunctionalcitoprovidercontract`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_lnkfunctionalcitoprovidercontract`  AS SELECT DISTINCT `lnkfunctionalcitoprovidercontract`.`id` AS `id`, `lnkfunctionalcitoprovidercontract`.`providercontract_id` AS `providercontract_id`, `providercontract_providercontract_id_contract`.`name` AS `providercontract_name`, `lnkfunctionalcitoprovidercontract`.`functionalci_id` AS `functionalci_id`, `functionalci_functionalci_id`.`name` AS `functionalci_name`, cast(concat(coalesce(`lnkfunctionalcitoprovidercontract`.`providercontract_id`,''),coalesce(' ',''),coalesce(`lnkfunctionalcitoprovidercontract`.`functionalci_id`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`providercontract_providercontract_id_contract`.`name`,'')) as char charset utf8mb4) AS `providercontract_id_friendlyname`, if((`functionalci_functionalci_id`.`finalclass` in ('Middleware','DBServer','WebServer','PCSoftware','OtherSoftware')),cast(concat(coalesce(`functionalci_functionalci_id`.`name`,''),coalesce(' ',''),coalesce(`functionalci_system_id`.`name`,'')) as char charset utf8mb4),cast(concat(coalesce(`functionalci_functionalci_id`.`name`,'')) as char charset utf8mb4)) AS `functionalci_id_friendlyname`, `functionalci_functionalci_id`.`finalclass` AS `functionalci_id_finalclass_recall`, if((`functionalci_functionalci_id`.`finalclass` = 'FunctionalCI'),coalesce(0,0),if((`functionalci_functionalci_id`.`finalclass` in ('Hypervisor','Farm','VirtualMachine')),coalesce((`functionalci_functionalci_id_poly_virtualdevice`.`status` = 'obsolete'),0),if((`functionalci_functionalci_id`.`finalclass` = 'WebApplication'),coalesce(coalesce((`webserver_webserver_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_functionalci_id`.`finalclass` = 'DatabaseSchema'),coalesce(coalesce((`dbserver_dbserver_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_functionalci_id`.`finalclass` = 'MiddlewareInstance'),coalesce(coalesce((`middleware_middleware_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_functionalci_id`.`finalclass` in ('Middleware','DBServer','WebServer','PCSoftware','OtherSoftware')),coalesce((`functionalci_functionalci_id_poly_softwareinstance`.`status` = 'inactive'),0),if((`functionalci_functionalci_id`.`finalclass` = 'BusinessProcess'),coalesce((`functionalci_functionalci_id_poly_businessprocess`.`status` = 'inactive'),0),if((`functionalci_functionalci_id`.`finalclass` = 'ApplicationSolution'),coalesce((`functionalci_functionalci_id_poly_applicationsolution`.`status` = 'inactive'),0),coalesce((`functionalci_functionalci_id_poly_physicaldevice`.`status` = 'obsolete'),0))))))))) AS `functionalci_id_obsolescence_flag` FROM ((`lnkfunctionalcitoprovidercontract` join `contract` `providercontract_providercontract_id_contract` on((`lnkfunctionalcitoprovidercontract`.`providercontract_id` = `providercontract_providercontract_id_contract`.`id`))) join ((((((((`functionalci` `functionalci_functionalci_id` left join (`softwareinstance` `functionalci_functionalci_id_poly_softwareinstance` join `functionalci` `functionalci_system_id` on((`functionalci_functionalci_id_poly_softwareinstance`.`functionalci_id` = `functionalci_system_id`.`id`))) on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_softwareinstance`.`id`))) left join `virtualdevice` `functionalci_functionalci_id_poly_virtualdevice` on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_virtualdevice`.`id`))) left join (`webapplication` `functionalci_functionalci_id_poly_webapplication` join `softwareinstance` `webserver_webserver_id_softwareinstance` on((`functionalci_functionalci_id_poly_webapplication`.`webserver_id` = `webserver_webserver_id_softwareinstance`.`id`))) on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_webapplication`.`id`))) left join (`databaseschema` `functionalci_functionalci_id_poly_databaseschema` join `softwareinstance` `dbserver_dbserver_id_softwareinstance` on((`functionalci_functionalci_id_poly_databaseschema`.`dbserver_id` = `dbserver_dbserver_id_softwareinstance`.`id`))) on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_databaseschema`.`id`))) left join (`middlewareinstance` `functionalci_functionalci_id_poly_middlewareinstance` join `softwareinstance` `middleware_middleware_id_softwareinstance` on((`functionalci_functionalci_id_poly_middlewareinstance`.`middleware_id` = `middleware_middleware_id_softwareinstance`.`id`))) on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_middlewareinstance`.`id`))) left join `businessprocess` `functionalci_functionalci_id_poly_businessprocess` on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_businessprocess`.`id`))) left join `applicationsolution` `functionalci_functionalci_id_poly_applicationsolution` on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_applicationsolution`.`id`))) left join `physicaldevice` `functionalci_functionalci_id_poly_physicaldevice` on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_physicaldevice`.`id`))) on((`lnkfunctionalcitoprovidercontract`.`functionalci_id` = `functionalci_functionalci_id`.`id`))) WHERE (coalesce((`providercontract_providercontract_id_contract`.`finalclass` = 'ProviderContract'),1) AND coalesce((`webserver_webserver_id_softwareinstance`.`finalclass` = 'WebServer'),1) AND coalesce((`dbserver_dbserver_id_softwareinstance`.`finalclass` = 'DBServer'),1) AND coalesce((`middleware_middleware_id_softwareinstance`.`finalclass` = 'Middleware'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_lnkfunctionalcitoticket`
--
DROP TABLE IF EXISTS `view_lnkfunctionalcitoticket`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_lnkfunctionalcitoticket`  AS SELECT DISTINCT `lnkfunctionalcitoticket`.`id` AS `id`, `lnkfunctionalcitoticket`.`ticket_id` AS `ticket_id`, `ticket_ticket_id`.`ref` AS `ticket_ref`, `ticket_ticket_id`.`title` AS `ticket_title`, `lnkfunctionalcitoticket`.`functionalci_id` AS `functionalci_id`, `functionalci_functionalci_id`.`name` AS `functionalci_name`, `lnkfunctionalcitoticket`.`impact` AS `impact`, `lnkfunctionalcitoticket`.`impact_code` AS `impact_code`, cast(concat(coalesce(`lnkfunctionalcitoticket`.`ticket_id`,''),coalesce(' ',''),coalesce(`lnkfunctionalcitoticket`.`functionalci_id`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`ticket_ticket_id`.`ref`,'')) as char charset utf8mb4) AS `ticket_id_friendlyname`, `ticket_ticket_id`.`finalclass` AS `ticket_id_finalclass_recall`, if((`functionalci_functionalci_id`.`finalclass` in ('Middleware','DBServer','WebServer','PCSoftware','OtherSoftware')),cast(concat(coalesce(`functionalci_functionalci_id`.`name`,''),coalesce(' ',''),coalesce(`functionalci_system_id`.`name`,'')) as char charset utf8mb4),cast(concat(coalesce(`functionalci_functionalci_id`.`name`,'')) as char charset utf8mb4)) AS `functionalci_id_friendlyname`, `functionalci_functionalci_id`.`finalclass` AS `functionalci_id_finalclass_recall`, if((`functionalci_functionalci_id`.`finalclass` = 'FunctionalCI'),coalesce(0,0),if((`functionalci_functionalci_id`.`finalclass` in ('Hypervisor','Farm','VirtualMachine')),coalesce((`functionalci_functionalci_id_poly_virtualdevice`.`status` = 'obsolete'),0),if((`functionalci_functionalci_id`.`finalclass` = 'WebApplication'),coalesce(coalesce((`webserver_webserver_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_functionalci_id`.`finalclass` = 'DatabaseSchema'),coalesce(coalesce((`dbserver_dbserver_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_functionalci_id`.`finalclass` = 'MiddlewareInstance'),coalesce(coalesce((`middleware_middleware_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_functionalci_id`.`finalclass` in ('Middleware','DBServer','WebServer','PCSoftware','OtherSoftware')),coalesce((`functionalci_functionalci_id_poly_softwareinstance`.`status` = 'inactive'),0),if((`functionalci_functionalci_id`.`finalclass` = 'BusinessProcess'),coalesce((`functionalci_functionalci_id_poly_businessprocess`.`status` = 'inactive'),0),if((`functionalci_functionalci_id`.`finalclass` = 'ApplicationSolution'),coalesce((`functionalci_functionalci_id_poly_applicationsolution`.`status` = 'inactive'),0),coalesce((`functionalci_functionalci_id_poly_physicaldevice`.`status` = 'obsolete'),0))))))))) AS `functionalci_id_obsolescence_flag` FROM ((`lnkfunctionalcitoticket` join `ticket` `ticket_ticket_id` on((`lnkfunctionalcitoticket`.`ticket_id` = `ticket_ticket_id`.`id`))) join ((((((((`functionalci` `functionalci_functionalci_id` left join (`softwareinstance` `functionalci_functionalci_id_poly_softwareinstance` join `functionalci` `functionalci_system_id` on((`functionalci_functionalci_id_poly_softwareinstance`.`functionalci_id` = `functionalci_system_id`.`id`))) on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_softwareinstance`.`id`))) left join `virtualdevice` `functionalci_functionalci_id_poly_virtualdevice` on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_virtualdevice`.`id`))) left join (`webapplication` `functionalci_functionalci_id_poly_webapplication` join `softwareinstance` `webserver_webserver_id_softwareinstance` on((`functionalci_functionalci_id_poly_webapplication`.`webserver_id` = `webserver_webserver_id_softwareinstance`.`id`))) on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_webapplication`.`id`))) left join (`databaseschema` `functionalci_functionalci_id_poly_databaseschema` join `softwareinstance` `dbserver_dbserver_id_softwareinstance` on((`functionalci_functionalci_id_poly_databaseschema`.`dbserver_id` = `dbserver_dbserver_id_softwareinstance`.`id`))) on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_databaseschema`.`id`))) left join (`middlewareinstance` `functionalci_functionalci_id_poly_middlewareinstance` join `softwareinstance` `middleware_middleware_id_softwareinstance` on((`functionalci_functionalci_id_poly_middlewareinstance`.`middleware_id` = `middleware_middleware_id_softwareinstance`.`id`))) on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_middlewareinstance`.`id`))) left join `businessprocess` `functionalci_functionalci_id_poly_businessprocess` on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_businessprocess`.`id`))) left join `applicationsolution` `functionalci_functionalci_id_poly_applicationsolution` on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_applicationsolution`.`id`))) left join `physicaldevice` `functionalci_functionalci_id_poly_physicaldevice` on((`functionalci_functionalci_id`.`id` = `functionalci_functionalci_id_poly_physicaldevice`.`id`))) on((`lnkfunctionalcitoticket`.`functionalci_id` = `functionalci_functionalci_id`.`id`))) WHERE (coalesce((`webserver_webserver_id_softwareinstance`.`finalclass` = 'WebServer'),1) AND coalesce((`dbserver_dbserver_id_softwareinstance`.`finalclass` = 'DBServer'),1) AND coalesce((`middleware_middleware_id_softwareinstance`.`finalclass` = 'Middleware'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_lnkgrouptoci`
--
DROP TABLE IF EXISTS `view_lnkgrouptoci`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_lnkgrouptoci`  AS SELECT DISTINCT `lnkgrouptoci`.`id` AS `id`, `lnkgrouptoci`.`group_id` AS `group_id`, `group_group_id`.`name` AS `group_name`, `lnkgrouptoci`.`ci_id` AS `ci_id`, `functionalci_ci_id`.`name` AS `ci_name`, `lnkgrouptoci`.`reason` AS `reason`, cast(concat(coalesce(`lnkgrouptoci`.`group_id`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`group_group_id`.`name`,'')) as char charset utf8mb4) AS `group_id_friendlyname`, coalesce((`group_group_id`.`status` = 'obsolete'),0) AS `group_id_obsolescence_flag`, if((`functionalci_ci_id`.`finalclass` in ('Middleware','DBServer','WebServer','PCSoftware','OtherSoftware')),cast(concat(coalesce(`functionalci_ci_id`.`name`,''),coalesce(' ',''),coalesce(`functionalci_system_id`.`name`,'')) as char charset utf8mb4),cast(concat(coalesce(`functionalci_ci_id`.`name`,'')) as char charset utf8mb4)) AS `ci_id_friendlyname`, `functionalci_ci_id`.`finalclass` AS `ci_id_finalclass_recall`, if((`functionalci_ci_id`.`finalclass` = 'FunctionalCI'),coalesce(0,0),if((`functionalci_ci_id`.`finalclass` in ('Hypervisor','Farm','VirtualMachine')),coalesce((`functionalci_ci_id_poly_virtualdevice`.`status` = 'obsolete'),0),if((`functionalci_ci_id`.`finalclass` = 'WebApplication'),coalesce(coalesce((`webserver_webserver_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_ci_id`.`finalclass` = 'DatabaseSchema'),coalesce(coalesce((`dbserver_dbserver_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_ci_id`.`finalclass` = 'MiddlewareInstance'),coalesce(coalesce((`middleware_middleware_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_ci_id`.`finalclass` in ('Middleware','DBServer','WebServer','PCSoftware','OtherSoftware')),coalesce((`functionalci_ci_id_poly_softwareinstance`.`status` = 'inactive'),0),if((`functionalci_ci_id`.`finalclass` = 'BusinessProcess'),coalesce((`functionalci_ci_id_poly_businessprocess`.`status` = 'inactive'),0),if((`functionalci_ci_id`.`finalclass` = 'ApplicationSolution'),coalesce((`functionalci_ci_id_poly_applicationsolution`.`status` = 'inactive'),0),coalesce((`functionalci_ci_id_poly_physicaldevice`.`status` = 'obsolete'),0))))))))) AS `ci_id_obsolescence_flag` FROM ((`lnkgrouptoci` join `group` `group_group_id` on((`lnkgrouptoci`.`group_id` = `group_group_id`.`id`))) join ((((((((`functionalci` `functionalci_ci_id` left join (`softwareinstance` `functionalci_ci_id_poly_softwareinstance` join `functionalci` `functionalci_system_id` on((`functionalci_ci_id_poly_softwareinstance`.`functionalci_id` = `functionalci_system_id`.`id`))) on((`functionalci_ci_id`.`id` = `functionalci_ci_id_poly_softwareinstance`.`id`))) left join `virtualdevice` `functionalci_ci_id_poly_virtualdevice` on((`functionalci_ci_id`.`id` = `functionalci_ci_id_poly_virtualdevice`.`id`))) left join (`webapplication` `functionalci_ci_id_poly_webapplication` join `softwareinstance` `webserver_webserver_id_softwareinstance` on((`functionalci_ci_id_poly_webapplication`.`webserver_id` = `webserver_webserver_id_softwareinstance`.`id`))) on((`functionalci_ci_id`.`id` = `functionalci_ci_id_poly_webapplication`.`id`))) left join (`databaseschema` `functionalci_ci_id_poly_databaseschema` join `softwareinstance` `dbserver_dbserver_id_softwareinstance` on((`functionalci_ci_id_poly_databaseschema`.`dbserver_id` = `dbserver_dbserver_id_softwareinstance`.`id`))) on((`functionalci_ci_id`.`id` = `functionalci_ci_id_poly_databaseschema`.`id`))) left join (`middlewareinstance` `functionalci_ci_id_poly_middlewareinstance` join `softwareinstance` `middleware_middleware_id_softwareinstance` on((`functionalci_ci_id_poly_middlewareinstance`.`middleware_id` = `middleware_middleware_id_softwareinstance`.`id`))) on((`functionalci_ci_id`.`id` = `functionalci_ci_id_poly_middlewareinstance`.`id`))) left join `businessprocess` `functionalci_ci_id_poly_businessprocess` on((`functionalci_ci_id`.`id` = `functionalci_ci_id_poly_businessprocess`.`id`))) left join `applicationsolution` `functionalci_ci_id_poly_applicationsolution` on((`functionalci_ci_id`.`id` = `functionalci_ci_id_poly_applicationsolution`.`id`))) left join `physicaldevice` `functionalci_ci_id_poly_physicaldevice` on((`functionalci_ci_id`.`id` = `functionalci_ci_id_poly_physicaldevice`.`id`))) on((`lnkgrouptoci`.`ci_id` = `functionalci_ci_id`.`id`))) WHERE (coalesce((`webserver_webserver_id_softwareinstance`.`finalclass` = 'WebServer'),1) AND coalesce((`dbserver_dbserver_id_softwareinstance`.`finalclass` = 'DBServer'),1) AND coalesce((`middleware_middleware_id_softwareinstance`.`finalclass` = 'Middleware'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_lnkpersontoteam`
--
DROP TABLE IF EXISTS `view_lnkpersontoteam`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_lnkpersontoteam`  AS SELECT DISTINCT `lnkpersontoteam`.`id` AS `id`, `lnkpersontoteam`.`team_id` AS `team_id`, `team_team_id_contact`.`name` AS `team_name`, `lnkpersontoteam`.`person_id` AS `person_id`, `person_person_id_contact`.`name` AS `person_name`, `lnkpersontoteam`.`role_id` AS `role_id`, `contacttype_role_id_typology`.`name` AS `role_name`, cast(concat(coalesce(`lnkpersontoteam`.`team_id`,''),coalesce(' ',''),coalesce(`lnkpersontoteam`.`person_id`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`team_team_id_contact`.`name`,'')) as char charset utf8mb4) AS `team_id_friendlyname`, coalesce((`team_team_id_contact`.`status` = 'inactive'),0) AS `team_id_obsolescence_flag`, cast(concat(coalesce(`person_person_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_person_id_contact`.`name`,'')) as char charset utf8mb4) AS `person_id_friendlyname`, coalesce((`person_person_id_contact`.`status` = 'inactive'),0) AS `person_id_obsolescence_flag`, cast(concat(coalesce(`contacttype_role_id_typology`.`name`,'')) as char charset utf8mb4) AS `role_id_friendlyname` FROM (((`lnkpersontoteam` join `contact` `team_team_id_contact` on((`lnkpersontoteam`.`team_id` = `team_team_id_contact`.`id`))) join (`person` `person_person_id` join `contact` `person_person_id_contact` on((`person_person_id`.`id` = `person_person_id_contact`.`id`))) on((`lnkpersontoteam`.`person_id` = `person_person_id`.`id`))) left join `typology` `contacttype_role_id_typology` on((`lnkpersontoteam`.`role_id` = `contacttype_role_id_typology`.`id`))) WHERE (coalesce((`team_team_id_contact`.`finalclass` = 'Team'),1) AND coalesce((`contacttype_role_id_typology`.`finalclass` = 'ContactType'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_lnkphysicalinterfacetovlan`
--
DROP TABLE IF EXISTS `view_lnkphysicalinterfacetovlan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_lnkphysicalinterfacetovlan`  AS SELECT DISTINCT `lnkphysicalinterfacetovlan`.`id` AS `id`, `lnkphysicalinterfacetovlan`.`physicalinterface_id` AS `physicalinterface_id`, `physicalinterface_physicalinterface_id_networkinterface`.`name` AS `physicalinterface_name`, `physicalinterface_physicalinterface_id`.`connectableci_id` AS `physicalinterface_device_id`, `connectableci_connectableci_id_functionalci`.`name` AS `physicalinterface_device_name`, `lnkphysicalinterfacetovlan`.`vlan_id` AS `vlan_id`, `vlan_vlan_id`.`vlan_tag` AS `vlan_tag`, cast(concat(coalesce(`lnkphysicalinterfacetovlan`.`physicalinterface_id`,''),coalesce(' ',''),coalesce(`lnkphysicalinterfacetovlan`.`vlan_id`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`physicalinterface_physicalinterface_id_networkinterface`.`name`,''),coalesce(' ',''),coalesce(`connectableci_connectableci_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `physicalinterface_id_friendlyname`, coalesce(coalesce((`connectableci_connectableci_id_physicaldevice`.`status` = 'obsolete'),0),0) AS `physicalinterface_id_obsolescence_flag`, cast(concat(coalesce(`connectableci_connectableci_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `physicalinterface_device_id_friendlyname`, coalesce((`connectableci_connectableci_id_physicaldevice`.`status` = 'obsolete'),0) AS `physicalinterface_device_id_obsolescence_flag`, cast(concat(coalesce(`vlan_vlan_id`.`vlan_tag`,'')) as char charset utf8mb4) AS `vlan_id_friendlyname` FROM ((`lnkphysicalinterfacetovlan` join ((`physicalinterface` `physicalinterface_physicalinterface_id` join (`physicaldevice` `connectableci_connectableci_id_physicaldevice` join `functionalci` `connectableci_connectableci_id_functionalci` on((`connectableci_connectableci_id_physicaldevice`.`id` = `connectableci_connectableci_id_functionalci`.`id`))) on((`physicalinterface_physicalinterface_id`.`connectableci_id` = `connectableci_connectableci_id_physicaldevice`.`id`))) join `networkinterface` `physicalinterface_physicalinterface_id_networkinterface` on((`physicalinterface_physicalinterface_id`.`id` = `physicalinterface_physicalinterface_id_networkinterface`.`id`))) on((`lnkphysicalinterfacetovlan`.`physicalinterface_id` = `physicalinterface_physicalinterface_id`.`id`))) join `vlan` `vlan_vlan_id` on((`lnkphysicalinterfacetovlan`.`vlan_id` = `vlan_vlan_id`.`id`))) WHERE coalesce((`connectableci_connectableci_id_physicaldevice`.`finalclass` in ('DatacenterDevice','NetworkDevice','Server','PC','Printer','StorageSystem','SANSwitch','TapeLibrary','NAS','ConnectableCI')),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_lnksantodatacenterdevice`
--
DROP TABLE IF EXISTS `view_lnksantodatacenterdevice`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_lnksantodatacenterdevice`  AS SELECT DISTINCT `lnksantodatacenterdevice`.`id` AS `id`, `lnksantodatacenterdevice`.`san_id` AS `san_id`, `sanswitch_san_id_functionalci`.`name` AS `san_name`, `lnksantodatacenterdevice`.`datacenterdevice_id` AS `datacenterdevice_id`, `datacenterdevice_datacenterdevice_id_functionalci`.`name` AS `datacenterdevice_name`, `lnksantodatacenterdevice`.`san_port` AS `san_port`, `lnksantodatacenterdevice`.`datacenterdevice_port` AS `datacenterdevice_port`, cast(concat(coalesce(`lnksantodatacenterdevice`.`san_id`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`sanswitch_san_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `san_id_friendlyname`, coalesce((`sanswitch_san_id_physicaldevice`.`status` = 'obsolete'),0) AS `san_id_obsolescence_flag`, cast(concat(coalesce(`datacenterdevice_datacenterdevice_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `datacenterdevice_id_friendlyname`, `datacenterdevice_datacenterdevice_id_functionalci`.`finalclass` AS `datacenterdevice_id_finalclass_recall`, coalesce((`datacenterdevice_datacenterdevice_id_physicaldevice`.`status` = 'obsolete'),0) AS `datacenterdevice_id_obsolescence_flag` FROM ((`lnkdatacenterdevicetosan` `lnksantodatacenterdevice` join (`physicaldevice` `sanswitch_san_id_physicaldevice` join `functionalci` `sanswitch_san_id_functionalci` on((`sanswitch_san_id_physicaldevice`.`id` = `sanswitch_san_id_functionalci`.`id`))) on((`lnksantodatacenterdevice`.`san_id` = `sanswitch_san_id_physicaldevice`.`id`))) join (`physicaldevice` `datacenterdevice_datacenterdevice_id_physicaldevice` join `functionalci` `datacenterdevice_datacenterdevice_id_functionalci` on((`datacenterdevice_datacenterdevice_id_physicaldevice`.`id` = `datacenterdevice_datacenterdevice_id_functionalci`.`id`))) on((`lnksantodatacenterdevice`.`datacenterdevice_id` = `datacenterdevice_datacenterdevice_id_physicaldevice`.`id`))) WHERE (coalesce((`sanswitch_san_id_physicaldevice`.`finalclass` = 'SANSwitch'),1) AND coalesce((`datacenterdevice_datacenterdevice_id_physicaldevice`.`finalclass` in ('NetworkDevice','Server','StorageSystem','SANSwitch','TapeLibrary','NAS','DatacenterDevice')),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_lnkservertovolume`
--
DROP TABLE IF EXISTS `view_lnkservertovolume`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_lnkservertovolume`  AS SELECT DISTINCT `lnkservertovolume`.`id` AS `id`, `lnkservertovolume`.`volume_id` AS `volume_id`, `logicalvolume_volume_id`.`name` AS `volume_name`, `lnkservertovolume`.`server_id` AS `server_id`, `server_server_id_functionalci`.`name` AS `server_name`, `lnkservertovolume`.`size_used` AS `size_used`, cast(concat(coalesce(`lnkservertovolume`.`volume_id`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`storagesystem_storagesystem_id_functionalci`.`name`,''),coalesce(' ',''),coalesce(`logicalvolume_volume_id`.`name`,'')) as char charset utf8mb4) AS `volume_id_friendlyname`, coalesce(coalesce((`storagesystem_storagesystem_id_physicaldevice`.`status` = 'obsolete'),0),0) AS `volume_id_obsolescence_flag`, cast(concat(coalesce(`server_server_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `server_id_friendlyname`, coalesce((`server_server_id_physicaldevice`.`status` = 'obsolete'),0) AS `server_id_obsolescence_flag` FROM ((`lnkservertovolume` join (`logicalvolume` `logicalvolume_volume_id` join (`physicaldevice` `storagesystem_storagesystem_id_physicaldevice` join `functionalci` `storagesystem_storagesystem_id_functionalci` on((`storagesystem_storagesystem_id_physicaldevice`.`id` = `storagesystem_storagesystem_id_functionalci`.`id`))) on((`logicalvolume_volume_id`.`storagesystem_id` = `storagesystem_storagesystem_id_physicaldevice`.`id`))) on((`lnkservertovolume`.`volume_id` = `logicalvolume_volume_id`.`id`))) join (`physicaldevice` `server_server_id_physicaldevice` join `functionalci` `server_server_id_functionalci` on((`server_server_id_physicaldevice`.`id` = `server_server_id_functionalci`.`id`))) on((`lnkservertovolume`.`server_id` = `server_server_id_physicaldevice`.`id`))) WHERE (coalesce((`storagesystem_storagesystem_id_physicaldevice`.`finalclass` = 'StorageSystem'),1) AND coalesce((`server_server_id_physicaldevice`.`finalclass` = 'Server'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_lnkslatoslt`
--
DROP TABLE IF EXISTS `view_lnkslatoslt`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_lnkslatoslt`  AS SELECT DISTINCT `lnkslatoslt`.`id` AS `id`, `lnkslatoslt`.`sla_id` AS `sla_id`, `sla_sla_id`.`name` AS `sla_name`, `lnkslatoslt`.`slt_id` AS `slt_id`, `slt_slt_id`.`name` AS `slt_name`, `slt_slt_id`.`metric` AS `slt_metric`, `slt_slt_id`.`request_type` AS `slt_request_type`, `slt_slt_id`.`priority` AS `slt_ticket_priority`, `slt_slt_id`.`value` AS `slt_value`, `slt_slt_id`.`unit` AS `slt_value_unit`, cast(concat(coalesce(`lnkslatoslt`.`sla_id`,''),coalesce(' ',''),coalesce(`lnkslatoslt`.`slt_id`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`sla_sla_id`.`name`,'')) as char charset utf8mb4) AS `sla_id_friendlyname`, cast(concat(coalesce(`slt_slt_id`.`name`,'')) as char charset utf8mb4) AS `slt_id_friendlyname` FROM ((`lnkslatoslt` join `sla` `sla_sla_id` on((`lnkslatoslt`.`sla_id` = `sla_sla_id`.`id`))) join `slt` `slt_slt_id` on((`lnkslatoslt`.`slt_id` = `slt_slt_id`.`id`))) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_lnksoftwareinstancetosoftwarepatch`
--
DROP TABLE IF EXISTS `view_lnksoftwareinstancetosoftwarepatch`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_lnksoftwareinstancetosoftwarepatch`  AS SELECT DISTINCT `lnksoftwareinstancetosoftwarepatch`.`id` AS `id`, `lnksoftwareinstancetosoftwarepatch`.`softwarepatch_id` AS `softwarepatch_id`, `softwarepatch_softwarepatch_id_patch`.`name` AS `softwarepatch_name`, `lnksoftwareinstancetosoftwarepatch`.`softwareinstance_id` AS `softwareinstance_id`, `softwareinstance_softwareinstance_id_functionalci`.`name` AS `softwareinstance_name`, cast(concat(coalesce(`lnksoftwareinstancetosoftwarepatch`.`softwarepatch_id`,''),coalesce(' ',''),coalesce(`lnksoftwareinstancetosoftwarepatch`.`softwareinstance_id`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`softwarepatch_softwarepatch_id_patch`.`name`,'')) as char charset utf8mb4) AS `softwarepatch_id_friendlyname`, cast(concat(coalesce(`softwareinstance_softwareinstance_id_functionalci`.`name`,''),coalesce(' ',''),coalesce(`functionalci_system_id`.`name`,'')) as char charset utf8mb4) AS `softwareinstance_id_friendlyname`, `softwareinstance_softwareinstance_id_functionalci`.`finalclass` AS `softwareinstance_id_finalclass_recall`, coalesce((`softwareinstance_softwareinstance_id`.`status` = 'inactive'),0) AS `softwareinstance_id_obsolescence_flag` FROM ((`lnksoftwareinstancetosoftwarepatch` join `patch` `softwarepatch_softwarepatch_id_patch` on((`lnksoftwareinstancetosoftwarepatch`.`softwarepatch_id` = `softwarepatch_softwarepatch_id_patch`.`id`))) join ((`softwareinstance` `softwareinstance_softwareinstance_id` join `functionalci` `functionalci_system_id` on((`softwareinstance_softwareinstance_id`.`functionalci_id` = `functionalci_system_id`.`id`))) join `functionalci` `softwareinstance_softwareinstance_id_functionalci` on((`softwareinstance_softwareinstance_id`.`id` = `softwareinstance_softwareinstance_id_functionalci`.`id`))) on((`lnksoftwareinstancetosoftwarepatch`.`softwareinstance_id` = `softwareinstance_softwareinstance_id`.`id`))) WHERE coalesce((`softwarepatch_softwarepatch_id_patch`.`finalclass` = 'SoftwarePatch'),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_lnksubnettovlan`
--
DROP TABLE IF EXISTS `view_lnksubnettovlan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_lnksubnettovlan`  AS SELECT DISTINCT `lnksubnettovlan`.`id` AS `id`, `lnksubnettovlan`.`subnet_id` AS `subnet_id`, `subnet_subnet_id`.`ip` AS `subnet_ip`, `subnet_subnet_id`.`subnet_name` AS `subnet_name`, `lnksubnettovlan`.`vlan_id` AS `vlan_id`, `vlan_vlan_id`.`vlan_tag` AS `vlan_tag`, cast(concat(coalesce(`lnksubnettovlan`.`subnet_id`,''),coalesce(' ',''),coalesce(`lnksubnettovlan`.`vlan_id`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`subnet_subnet_id`.`ip`,''),coalesce(' ',''),coalesce(`subnet_subnet_id`.`ip_mask`,'')) as char charset utf8mb4) AS `subnet_id_friendlyname`, cast(concat(coalesce(`vlan_vlan_id`.`vlan_tag`,'')) as char charset utf8mb4) AS `vlan_id_friendlyname` FROM ((`lnksubnettovlan` join `subnet` `subnet_subnet_id` on((`lnksubnettovlan`.`subnet_id` = `subnet_subnet_id`.`id`))) join `vlan` `vlan_vlan_id` on((`lnksubnettovlan`.`vlan_id` = `vlan_vlan_id`.`id`))) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_lnkvirtualdevicetovolume`
--
DROP TABLE IF EXISTS `view_lnkvirtualdevicetovolume`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_lnkvirtualdevicetovolume`  AS SELECT DISTINCT `lnkvirtualdevicetovolume`.`id` AS `id`, `lnkvirtualdevicetovolume`.`volume_id` AS `volume_id`, `logicalvolume_volume_id`.`name` AS `volume_name`, `lnkvirtualdevicetovolume`.`virtualdevice_id` AS `virtualdevice_id`, `virtualdevice_virtualdevice_id_functionalci`.`name` AS `virtualdevice_name`, `lnkvirtualdevicetovolume`.`size_used` AS `size_used`, cast(concat(coalesce(`lnkvirtualdevicetovolume`.`volume_id`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`storagesystem_storagesystem_id_functionalci`.`name`,''),coalesce(' ',''),coalesce(`logicalvolume_volume_id`.`name`,'')) as char charset utf8mb4) AS `volume_id_friendlyname`, coalesce(coalesce((`storagesystem_storagesystem_id_physicaldevice`.`status` = 'obsolete'),0),0) AS `volume_id_obsolescence_flag`, cast(concat(coalesce(`virtualdevice_virtualdevice_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `virtualdevice_id_friendlyname`, `virtualdevice_virtualdevice_id_functionalci`.`finalclass` AS `virtualdevice_id_finalclass_recall`, coalesce((`virtualdevice_virtualdevice_id`.`status` = 'obsolete'),0) AS `virtualdevice_id_obsolescence_flag` FROM ((`lnkvirtualdevicetovolume` join (`logicalvolume` `logicalvolume_volume_id` join (`physicaldevice` `storagesystem_storagesystem_id_physicaldevice` join `functionalci` `storagesystem_storagesystem_id_functionalci` on((`storagesystem_storagesystem_id_physicaldevice`.`id` = `storagesystem_storagesystem_id_functionalci`.`id`))) on((`logicalvolume_volume_id`.`storagesystem_id` = `storagesystem_storagesystem_id_physicaldevice`.`id`))) on((`lnkvirtualdevicetovolume`.`volume_id` = `logicalvolume_volume_id`.`id`))) join (`virtualdevice` `virtualdevice_virtualdevice_id` join `functionalci` `virtualdevice_virtualdevice_id_functionalci` on((`virtualdevice_virtualdevice_id`.`id` = `virtualdevice_virtualdevice_id_functionalci`.`id`))) on((`lnkvirtualdevicetovolume`.`virtualdevice_id` = `virtualdevice_virtualdevice_id`.`id`))) WHERE coalesce((`storagesystem_storagesystem_id_physicaldevice`.`finalclass` = 'StorageSystem'),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_location`
--
DROP TABLE IF EXISTS `view_location`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_location`  AS SELECT DISTINCT `location`.`id` AS `id`, `location`.`name` AS `name`, `location`.`status` AS `status`, `location`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `org_name`, `location`.`address` AS `address`, `location`.`postal_code` AS `postal_code`, `location`.`city` AS `city`, `location`.`country` AS `country`, cast(concat(coalesce(`location`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`location`.`status` = 'inactive'),0) AS `obsolescence_flag`, `location`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag` FROM (`location` join `organization` `organization_org_id` on((`location`.`org_id` = `organization_org_id`.`id`))) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_logicalinterface`
--
DROP TABLE IF EXISTS `view_logicalinterface`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_logicalinterface`  AS SELECT DISTINCT `logicalinterface`.`id` AS `id`, `logicalinterface_networkinterface`.`name` AS `name`, `logicalinterface_ipinterface`.`ipaddress` AS `ipaddress`, `logicalinterface_ipinterface`.`macaddress` AS `macaddress`, `logicalinterface_ipinterface`.`comment` AS `comment`, `logicalinterface_ipinterface`.`ipgateway` AS `ipgateway`, `logicalinterface_ipinterface`.`ipmask` AS `ipmask`, `logicalinterface_ipinterface`.`speed` AS `speed`, `logicalinterface`.`virtualmachine_id` AS `virtualmachine_id`, `virtualmachine_virtualmachine_id_functionalci`.`name` AS `virtualmachine_name`, `logicalinterface_networkinterface`.`finalclass` AS `finalclass`, cast(concat(coalesce(`logicalinterface_networkinterface`.`name`,''),coalesce(' ',''),coalesce(`virtualmachine_virtualmachine_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce(coalesce((`virtualmachine_virtualmachine_id_virtualdevice`.`status` = 'obsolete'),0),0) AS `obsolescence_flag`, `logicalinterface_networkinterface`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`virtualmachine_virtualmachine_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `virtualmachine_id_friendlyname`, coalesce((`virtualmachine_virtualmachine_id_virtualdevice`.`status` = 'obsolete'),0) AS `virtualmachine_id_obsolescence_flag` FROM (((`logicalinterface` join (`virtualdevice` `virtualmachine_virtualmachine_id_virtualdevice` join `functionalci` `virtualmachine_virtualmachine_id_functionalci` on((`virtualmachine_virtualmachine_id_virtualdevice`.`id` = `virtualmachine_virtualmachine_id_functionalci`.`id`))) on((`logicalinterface`.`virtualmachine_id` = `virtualmachine_virtualmachine_id_virtualdevice`.`id`))) join `ipinterface` `logicalinterface_ipinterface` on((`logicalinterface`.`id` = `logicalinterface_ipinterface`.`id`))) join `networkinterface` `logicalinterface_networkinterface` on((`logicalinterface`.`id` = `logicalinterface_networkinterface`.`id`))) WHERE coalesce((`virtualmachine_virtualmachine_id_virtualdevice`.`finalclass` = 'VirtualMachine'),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_logicalvolume`
--
DROP TABLE IF EXISTS `view_logicalvolume`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_logicalvolume`  AS SELECT DISTINCT `logicalvolume`.`id` AS `id`, `logicalvolume`.`name` AS `name`, `logicalvolume`.`lun_id` AS `lun_id`, `logicalvolume`.`description` AS `description`, `logicalvolume`.`raid_level` AS `raid_level`, `logicalvolume`.`size` AS `size`, `logicalvolume`.`storagesystem_id` AS `storagesystem_id`, `storagesystem_storagesystem_id_functionalci`.`name` AS `storagesystem_name`, cast(concat(coalesce(`storagesystem_storagesystem_id_functionalci`.`name`,''),coalesce(' ',''),coalesce(`logicalvolume`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce(coalesce((`storagesystem_storagesystem_id_physicaldevice`.`status` = 'obsolete'),0),0) AS `obsolescence_flag`, `logicalvolume`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`storagesystem_storagesystem_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `storagesystem_id_friendlyname`, coalesce((`storagesystem_storagesystem_id_physicaldevice`.`status` = 'obsolete'),0) AS `storagesystem_id_obsolescence_flag` FROM (`logicalvolume` join (`physicaldevice` `storagesystem_storagesystem_id_physicaldevice` join `functionalci` `storagesystem_storagesystem_id_functionalci` on((`storagesystem_storagesystem_id_physicaldevice`.`id` = `storagesystem_storagesystem_id_functionalci`.`id`))) on((`logicalvolume`.`storagesystem_id` = `storagesystem_storagesystem_id_physicaldevice`.`id`))) WHERE coalesce((`storagesystem_storagesystem_id_physicaldevice`.`finalclass` = 'StorageSystem'),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_middleware`
--
DROP TABLE IF EXISTS `view_middleware`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_middleware`  AS SELECT DISTINCT `middleware_softwareinstance`.`id` AS `id`, `middleware_functionalci`.`name` AS `name`, `middleware_functionalci`.`description` AS `description`, `middleware_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `middleware_functionalci`.`business_criticity` AS `business_criticity`, `middleware_functionalci`.`move2production` AS `move2production`, `middleware_softwareinstance`.`functionalci_id` AS `system_id`, `functionalci_system_id`.`name` AS `system_name`, `middleware_softwareinstance`.`software_id` AS `software_id`, `software_software_id`.`name` AS `software_name`, `middleware_softwareinstance`.`softwarelicence_id` AS `softwarelicence_id`, `softwarelicence_softwarelicence_id_licence`.`name` AS `softwarelicence_name`, `middleware_softwareinstance`.`path` AS `path`, `middleware_softwareinstance`.`status` AS `status`, `middleware_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`middleware_functionalci`.`name`,''),coalesce(' ',''),coalesce(`functionalci_system_id`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`middleware_softwareinstance`.`status` = 'inactive'),0) AS `obsolescence_flag`, `middleware_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, if((`functionalci_system_id`.`finalclass` in ('Middleware','DBServer','WebServer','PCSoftware','OtherSoftware')),cast(concat(coalesce(`functionalci_system_id`.`name`,''),coalesce(' ',''),coalesce(`functionalci_system_id1`.`name`,'')) as char charset utf8mb4),cast(concat(coalesce(`functionalci_system_id`.`name`,'')) as char charset utf8mb4)) AS `system_id_friendlyname`, `functionalci_system_id`.`finalclass` AS `system_id_finalclass_recall`, if((`functionalci_system_id`.`finalclass` = 'FunctionalCI'),coalesce(0,0),if((`functionalci_system_id`.`finalclass` in ('Hypervisor','Farm','VirtualMachine')),coalesce((`functionalci_system_id_poly_virtualdevice`.`status` = 'obsolete'),0),if((`functionalci_system_id`.`finalclass` = 'WebApplication'),coalesce(coalesce((`webserver_webserver_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_system_id`.`finalclass` = 'DatabaseSchema'),coalesce(coalesce((`dbserver_dbserver_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_system_id`.`finalclass` = 'MiddlewareInstance'),coalesce(coalesce((`middleware_middleware_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_system_id`.`finalclass` in ('Middleware','DBServer','WebServer','PCSoftware','OtherSoftware')),coalesce((`functionalci_system_id_poly_softwareinstance`.`status` = 'inactive'),0),if((`functionalci_system_id`.`finalclass` = 'BusinessProcess'),coalesce((`functionalci_system_id_poly_businessprocess`.`status` = 'inactive'),0),if((`functionalci_system_id`.`finalclass` = 'ApplicationSolution'),coalesce((`functionalci_system_id_poly_applicationsolution`.`status` = 'inactive'),0),coalesce((`functionalci_system_id_poly_physicaldevice`.`status` = 'obsolete'),0))))))))) AS `system_id_obsolescence_flag`, cast(concat(coalesce(`software_software_id`.`name`,''),coalesce(' ',''),coalesce(`software_software_id`.`version`,'')) as char charset utf8mb4) AS `software_id_friendlyname`, cast(concat(coalesce(`softwarelicence_softwarelicence_id_licence`.`name`,'')) as char charset utf8mb4) AS `softwarelicence_id_friendlyname`, coalesce(((`softwarelicence_softwarelicence_id_licence`.`perpetual` = 'no') and (isnull(`softwarelicence_softwarelicence_id_licence`.`end_date`) = 0) and (`softwarelicence_softwarelicence_id_licence`.`end_date` < date_format((now() - interval 15 month),'%Y-%m-%d 00:00:00'))),0) AS `softwarelicence_id_obsolescence_flag` FROM ((((`softwareinstance` `middleware_softwareinstance` join ((((((((`functionalci` `functionalci_system_id` left join (`softwareinstance` `functionalci_system_id_poly_softwareinstance` join `functionalci` `functionalci_system_id1` on((`functionalci_system_id_poly_softwareinstance`.`functionalci_id` = `functionalci_system_id1`.`id`))) on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_softwareinstance`.`id`))) left join `virtualdevice` `functionalci_system_id_poly_virtualdevice` on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_virtualdevice`.`id`))) left join (`webapplication` `functionalci_system_id_poly_webapplication` join `softwareinstance` `webserver_webserver_id_softwareinstance` on((`functionalci_system_id_poly_webapplication`.`webserver_id` = `webserver_webserver_id_softwareinstance`.`id`))) on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_webapplication`.`id`))) left join (`databaseschema` `functionalci_system_id_poly_databaseschema` join `softwareinstance` `dbserver_dbserver_id_softwareinstance` on((`functionalci_system_id_poly_databaseschema`.`dbserver_id` = `dbserver_dbserver_id_softwareinstance`.`id`))) on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_databaseschema`.`id`))) left join (`middlewareinstance` `functionalci_system_id_poly_middlewareinstance` join `softwareinstance` `middleware_middleware_id_softwareinstance` on((`functionalci_system_id_poly_middlewareinstance`.`middleware_id` = `middleware_middleware_id_softwareinstance`.`id`))) on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_middlewareinstance`.`id`))) left join `businessprocess` `functionalci_system_id_poly_businessprocess` on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_businessprocess`.`id`))) left join `applicationsolution` `functionalci_system_id_poly_applicationsolution` on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_applicationsolution`.`id`))) left join `physicaldevice` `functionalci_system_id_poly_physicaldevice` on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_physicaldevice`.`id`))) on((`middleware_softwareinstance`.`functionalci_id` = `functionalci_system_id`.`id`))) left join `software` `software_software_id` on((`middleware_softwareinstance`.`software_id` = `software_software_id`.`id`))) left join `licence` `softwarelicence_softwarelicence_id_licence` on((`middleware_softwareinstance`.`softwarelicence_id` = `softwarelicence_softwarelicence_id_licence`.`id`))) join (`functionalci` `middleware_functionalci` join `organization` `organization_org_id` on((`middleware_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`middleware_softwareinstance`.`id` = `middleware_functionalci`.`id`))) WHERE (coalesce((`webserver_webserver_id_softwareinstance`.`finalclass` = 'WebServer'),1) AND coalesce((`dbserver_dbserver_id_softwareinstance`.`finalclass` = 'DBServer'),1) AND coalesce((`middleware_middleware_id_softwareinstance`.`finalclass` = 'Middleware'),1) AND coalesce((`softwarelicence_softwarelicence_id_licence`.`finalclass` = 'SoftwareLicence'),1) AND coalesce((`middleware_softwareinstance`.`finalclass` = 'Middleware'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_middlewareinstance`
--
DROP TABLE IF EXISTS `view_middlewareinstance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_middlewareinstance`  AS SELECT DISTINCT `middlewareinstance`.`id` AS `id`, `middlewareinstance_functionalci`.`name` AS `name`, `middlewareinstance_functionalci`.`description` AS `description`, `middlewareinstance_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `middlewareinstance_functionalci`.`business_criticity` AS `business_criticity`, `middlewareinstance_functionalci`.`move2production` AS `move2production`, `middlewareinstance`.`middleware_id` AS `middleware_id`, `middleware_middleware_id_functionalci`.`name` AS `middleware_name`, `middlewareinstance_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`middlewareinstance_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce(coalesce((`middleware_middleware_id_softwareinstance`.`status` = 'inactive'),0),0) AS `obsolescence_flag`, `middlewareinstance_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`middleware_middleware_id_functionalci`.`name`,''),coalesce(' ',''),coalesce(`functionalci_system_id`.`name`,'')) as char charset utf8mb4) AS `middleware_id_friendlyname`, coalesce((`middleware_middleware_id_softwareinstance`.`status` = 'inactive'),0) AS `middleware_id_obsolescence_flag` FROM ((`middlewareinstance` join ((`softwareinstance` `middleware_middleware_id_softwareinstance` join `functionalci` `functionalci_system_id` on((`middleware_middleware_id_softwareinstance`.`functionalci_id` = `functionalci_system_id`.`id`))) join `functionalci` `middleware_middleware_id_functionalci` on((`middleware_middleware_id_softwareinstance`.`id` = `middleware_middleware_id_functionalci`.`id`))) on((`middlewareinstance`.`middleware_id` = `middleware_middleware_id_softwareinstance`.`id`))) join (`functionalci` `middlewareinstance_functionalci` join `organization` `organization_org_id` on((`middlewareinstance_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`middlewareinstance`.`id` = `middlewareinstance_functionalci`.`id`))) WHERE coalesce((`middleware_middleware_id_softwareinstance`.`finalclass` = 'Middleware'),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_mobilephone`
--
DROP TABLE IF EXISTS `view_mobilephone`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_mobilephone`  AS SELECT DISTINCT `mobilephone`.`id` AS `id`, `mobilephone_functionalci`.`name` AS `name`, `mobilephone_functionalci`.`description` AS `description`, `mobilephone_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `mobilephone_functionalci`.`business_criticity` AS `business_criticity`, `mobilephone_functionalci`.`move2production` AS `move2production`, `mobilephone_physicaldevice`.`serialnumber` AS `serialnumber`, `mobilephone_physicaldevice`.`location_id` AS `location_id`, `location_location_id`.`name` AS `location_name`, `mobilephone_physicaldevice`.`status` AS `status`, `mobilephone_physicaldevice`.`brand_id` AS `brand_id`, `brand_brand_id_typology`.`name` AS `brand_name`, `mobilephone_physicaldevice`.`model_id` AS `model_id`, `model_model_id_typology`.`name` AS `model_name`, `mobilephone_physicaldevice`.`asset_number` AS `asset_number`, `mobilephone_physicaldevice`.`purchase_date` AS `purchase_date`, `mobilephone_physicaldevice`.`end_of_warranty` AS `end_of_warranty`, `mobilephone_telephonyci`.`phonenumber` AS `phonenumber`, `mobilephone`.`imei` AS `imei`, `mobilephone`.`hw_pin` AS `hw_pin`, `mobilephone_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`mobilephone_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`mobilephone_physicaldevice`.`status` = 'obsolete'),0) AS `obsolescence_flag`, `mobilephone_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`location_location_id`.`name`,'')) as char charset utf8mb4) AS `location_id_friendlyname`, coalesce((`location_location_id`.`status` = 'inactive'),0) AS `location_id_obsolescence_flag`, cast(concat(coalesce(`brand_brand_id_typology`.`name`,'')) as char charset utf8mb4) AS `brand_id_friendlyname`, cast(concat(coalesce(`model_model_id_typology`.`name`,'')) as char charset utf8mb4) AS `model_id_friendlyname` FROM (((`mobilephone` join `telephonyci` `mobilephone_telephonyci` on((`mobilephone`.`id` = `mobilephone_telephonyci`.`id`))) join (((`physicaldevice` `mobilephone_physicaldevice` left join `location` `location_location_id` on((`mobilephone_physicaldevice`.`location_id` = `location_location_id`.`id`))) left join `typology` `brand_brand_id_typology` on((`mobilephone_physicaldevice`.`brand_id` = `brand_brand_id_typology`.`id`))) left join `typology` `model_model_id_typology` on((`mobilephone_physicaldevice`.`model_id` = `model_model_id_typology`.`id`))) on((`mobilephone`.`id` = `mobilephone_physicaldevice`.`id`))) join (`functionalci` `mobilephone_functionalci` join `organization` `organization_org_id` on((`mobilephone_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`mobilephone`.`id` = `mobilephone_functionalci`.`id`))) WHERE (coalesce((`brand_brand_id_typology`.`finalclass` = 'Brand'),1) AND coalesce((`model_model_id_typology`.`finalclass` = 'Model'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_model`
--
DROP TABLE IF EXISTS `view_model`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_model`  AS SELECT DISTINCT `model`.`id` AS `id`, `model_typology`.`name` AS `name`, `model`.`brand_id` AS `brand_id`, `brand_brand_id_typology`.`name` AS `brand_name`, `model`.`type` AS `type`, `model_typology`.`finalclass` AS `finalclass`, cast(concat(coalesce(`model_typology`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`brand_brand_id_typology`.`name`,'')) as char charset utf8mb4) AS `brand_id_friendlyname` FROM ((`model` join `typology` `brand_brand_id_typology` on((`model`.`brand_id` = `brand_brand_id_typology`.`id`))) join `typology` `model_typology` on((`model`.`id` = `model_typology`.`id`))) WHERE coalesce((`brand_brand_id_typology`.`finalclass` = 'Brand'),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_nas`
--
DROP TABLE IF EXISTS `view_nas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_nas`  AS SELECT DISTINCT `nas_datacenterdevice`.`id` AS `id`, `nas_functionalci`.`name` AS `name`, `nas_functionalci`.`description` AS `description`, `nas_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `nas_functionalci`.`business_criticity` AS `business_criticity`, `nas_functionalci`.`move2production` AS `move2production`, `nas_physicaldevice`.`serialnumber` AS `serialnumber`, `nas_physicaldevice`.`location_id` AS `location_id`, `location_location_id`.`name` AS `location_name`, `nas_physicaldevice`.`status` AS `status`, `nas_physicaldevice`.`brand_id` AS `brand_id`, `brand_brand_id_typology`.`name` AS `brand_name`, `nas_physicaldevice`.`model_id` AS `model_id`, `model_model_id_typology`.`name` AS `model_name`, `nas_physicaldevice`.`asset_number` AS `asset_number`, `nas_physicaldevice`.`purchase_date` AS `purchase_date`, `nas_physicaldevice`.`end_of_warranty` AS `end_of_warranty`, `nas_datacenterdevice`.`rack_id` AS `rack_id`, `rack_rack_id_functionalci`.`name` AS `rack_name`, `nas_datacenterdevice`.`enclosure_id` AS `enclosure_id`, `enclosure_enclosure_id_functionalci`.`name` AS `enclosure_name`, `nas_datacenterdevice`.`nb_u` AS `nb_u`, `nas_datacenterdevice`.`managementip` AS `managementip`, `nas_datacenterdevice`.`powera_id` AS `powerA_id`, `powerconnection_powera_id_functionalci`.`name` AS `powerA_name`, `nas_datacenterdevice`.`powerB_id` AS `powerB_id`, `powerconnection_powerb_id_functionalci`.`name` AS `powerB_name`, `nas_datacenterdevice`.`redundancy` AS `redundancy`, `nas_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`nas_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`nas_physicaldevice`.`status` = 'obsolete'),0) AS `obsolescence_flag`, `nas_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`location_location_id`.`name`,'')) as char charset utf8mb4) AS `location_id_friendlyname`, coalesce((`location_location_id`.`status` = 'inactive'),0) AS `location_id_obsolescence_flag`, cast(concat(coalesce(`brand_brand_id_typology`.`name`,'')) as char charset utf8mb4) AS `brand_id_friendlyname`, cast(concat(coalesce(`model_model_id_typology`.`name`,'')) as char charset utf8mb4) AS `model_id_friendlyname`, cast(concat(coalesce(`rack_rack_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `rack_id_friendlyname`, coalesce((`rack_rack_id_physicaldevice`.`status` = 'obsolete'),0) AS `rack_id_obsolescence_flag`, cast(concat(coalesce(`enclosure_enclosure_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `enclosure_id_friendlyname`, coalesce((`enclosure_enclosure_id_physicaldevice`.`status` = 'obsolete'),0) AS `enclosure_id_obsolescence_flag`, cast(concat(coalesce(`powerconnection_powera_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `powerA_id_friendlyname`, `powerconnection_powera_id_functionalci`.`finalclass` AS `powerA_id_finalclass_recall`, coalesce((`powerconnection_powera_id_physicaldevice`.`status` = 'obsolete'),0) AS `powerA_id_obsolescence_flag`, cast(concat(coalesce(`powerconnection_powerb_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `powerB_id_friendlyname`, `powerconnection_powerb_id_functionalci`.`finalclass` AS `powerB_id_finalclass_recall`, coalesce((`powerconnection_powerb_id_physicaldevice`.`status` = 'obsolete'),0) AS `powerB_id_obsolescence_flag` FROM ((((((`datacenterdevice` `nas_datacenterdevice` left join (`physicaldevice` `rack_rack_id_physicaldevice` join `functionalci` `rack_rack_id_functionalci` on((`rack_rack_id_physicaldevice`.`id` = `rack_rack_id_functionalci`.`id`))) on((`nas_datacenterdevice`.`rack_id` = `rack_rack_id_physicaldevice`.`id`))) left join (`physicaldevice` `enclosure_enclosure_id_physicaldevice` join `functionalci` `enclosure_enclosure_id_functionalci` on((`enclosure_enclosure_id_physicaldevice`.`id` = `enclosure_enclosure_id_functionalci`.`id`))) on((`nas_datacenterdevice`.`enclosure_id` = `enclosure_enclosure_id_physicaldevice`.`id`))) left join (`physicaldevice` `powerconnection_powera_id_physicaldevice` join `functionalci` `powerconnection_powera_id_functionalci` on((`powerconnection_powera_id_physicaldevice`.`id` = `powerconnection_powera_id_functionalci`.`id`))) on((`nas_datacenterdevice`.`powera_id` = `powerconnection_powera_id_physicaldevice`.`id`))) left join (`physicaldevice` `powerconnection_powerb_id_physicaldevice` join `functionalci` `powerconnection_powerb_id_functionalci` on((`powerconnection_powerb_id_physicaldevice`.`id` = `powerconnection_powerb_id_functionalci`.`id`))) on((`nas_datacenterdevice`.`powerB_id` = `powerconnection_powerb_id_physicaldevice`.`id`))) join (((`physicaldevice` `nas_physicaldevice` left join `location` `location_location_id` on((`nas_physicaldevice`.`location_id` = `location_location_id`.`id`))) left join `typology` `brand_brand_id_typology` on((`nas_physicaldevice`.`brand_id` = `brand_brand_id_typology`.`id`))) left join `typology` `model_model_id_typology` on((`nas_physicaldevice`.`model_id` = `model_model_id_typology`.`id`))) on((`nas_datacenterdevice`.`id` = `nas_physicaldevice`.`id`))) join (`functionalci` `nas_functionalci` join `organization` `organization_org_id` on((`nas_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`nas_datacenterdevice`.`id` = `nas_functionalci`.`id`))) WHERE (coalesce((`brand_brand_id_typology`.`finalclass` = 'Brand'),1) AND coalesce((`model_model_id_typology`.`finalclass` = 'Model'),1) AND coalesce((`rack_rack_id_physicaldevice`.`finalclass` = 'Rack'),1) AND coalesce((`enclosure_enclosure_id_physicaldevice`.`finalclass` = 'Enclosure'),1) AND coalesce((`powerconnection_powera_id_physicaldevice`.`finalclass` in ('PowerSource','PDU','PowerConnection')),1) AND coalesce((`powerconnection_powerb_id_physicaldevice`.`finalclass` in ('PowerSource','PDU','PowerConnection')),1) AND coalesce((`nas_datacenterdevice`.`finalclass` = 'NAS'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_nasfilesystem`
--
DROP TABLE IF EXISTS `view_nasfilesystem`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_nasfilesystem`  AS SELECT DISTINCT `nasfilesystem`.`id` AS `id`, `nasfilesystem`.`name` AS `name`, `nasfilesystem`.`description` AS `description`, `nasfilesystem`.`raid_level` AS `raid_level`, `nasfilesystem`.`size` AS `size`, `nasfilesystem`.`nas_id` AS `nas_id`, `nas_nas_id_functionalci`.`name` AS `nas_name`, cast(concat(coalesce(`nasfilesystem`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce(coalesce((`nas_nas_id_physicaldevice`.`status` = 'obsolete'),0),0) AS `obsolescence_flag`, `nasfilesystem`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`nas_nas_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `nas_id_friendlyname`, coalesce((`nas_nas_id_physicaldevice`.`status` = 'obsolete'),0) AS `nas_id_obsolescence_flag` FROM (`nasfilesystem` join (`physicaldevice` `nas_nas_id_physicaldevice` join `functionalci` `nas_nas_id_functionalci` on((`nas_nas_id_physicaldevice`.`id` = `nas_nas_id_functionalci`.`id`))) on((`nasfilesystem`.`nas_id` = `nas_nas_id_physicaldevice`.`id`))) WHERE coalesce((`nas_nas_id_physicaldevice`.`finalclass` = 'NAS'),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_networkdevice`
--
DROP TABLE IF EXISTS `view_networkdevice`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_networkdevice`  AS SELECT DISTINCT `networkdevice`.`id` AS `id`, `networkdevice_functionalci`.`name` AS `name`, `networkdevice_functionalci`.`description` AS `description`, `networkdevice_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `networkdevice_functionalci`.`business_criticity` AS `business_criticity`, `networkdevice_functionalci`.`move2production` AS `move2production`, `networkdevice_physicaldevice`.`serialnumber` AS `serialnumber`, `networkdevice_physicaldevice`.`location_id` AS `location_id`, `location_location_id`.`name` AS `location_name`, `networkdevice_physicaldevice`.`status` AS `status`, `networkdevice_physicaldevice`.`brand_id` AS `brand_id`, `brand_brand_id_typology`.`name` AS `brand_name`, `networkdevice_physicaldevice`.`model_id` AS `model_id`, `model_model_id_typology`.`name` AS `model_name`, `networkdevice_physicaldevice`.`asset_number` AS `asset_number`, `networkdevice_physicaldevice`.`purchase_date` AS `purchase_date`, `networkdevice_physicaldevice`.`end_of_warranty` AS `end_of_warranty`, `networkdevice_datacenterdevice`.`rack_id` AS `rack_id`, `rack_rack_id_functionalci`.`name` AS `rack_name`, `networkdevice_datacenterdevice`.`enclosure_id` AS `enclosure_id`, `enclosure_enclosure_id_functionalci`.`name` AS `enclosure_name`, `networkdevice_datacenterdevice`.`nb_u` AS `nb_u`, `networkdevice_datacenterdevice`.`managementip` AS `managementip`, `networkdevice_datacenterdevice`.`powera_id` AS `powerA_id`, `powerconnection_powera_id_functionalci`.`name` AS `powerA_name`, `networkdevice_datacenterdevice`.`powerB_id` AS `powerB_id`, `powerconnection_powerb_id_functionalci`.`name` AS `powerB_name`, `networkdevice_datacenterdevice`.`redundancy` AS `redundancy`, `networkdevice`.`networkdevicetype_id` AS `networkdevicetype_id`, `networkdevicetype_networkdevicetype_id_typology`.`name` AS `networkdevicetype_name`, `networkdevice`.`iosversion_id` AS `iosversion_id`, `iosversion_iosversion_id_typology`.`name` AS `iosversion_name`, `networkdevice`.`ram` AS `ram`, `networkdevice_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`networkdevice_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`networkdevice_physicaldevice`.`status` = 'obsolete'),0) AS `obsolescence_flag`, `networkdevice_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`location_location_id`.`name`,'')) as char charset utf8mb4) AS `location_id_friendlyname`, coalesce((`location_location_id`.`status` = 'inactive'),0) AS `location_id_obsolescence_flag`, cast(concat(coalesce(`brand_brand_id_typology`.`name`,'')) as char charset utf8mb4) AS `brand_id_friendlyname`, cast(concat(coalesce(`model_model_id_typology`.`name`,'')) as char charset utf8mb4) AS `model_id_friendlyname`, cast(concat(coalesce(`rack_rack_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `rack_id_friendlyname`, coalesce((`rack_rack_id_physicaldevice`.`status` = 'obsolete'),0) AS `rack_id_obsolescence_flag`, cast(concat(coalesce(`enclosure_enclosure_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `enclosure_id_friendlyname`, coalesce((`enclosure_enclosure_id_physicaldevice`.`status` = 'obsolete'),0) AS `enclosure_id_obsolescence_flag`, cast(concat(coalesce(`powerconnection_powera_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `powerA_id_friendlyname`, `powerconnection_powera_id_functionalci`.`finalclass` AS `powerA_id_finalclass_recall`, coalesce((`powerconnection_powera_id_physicaldevice`.`status` = 'obsolete'),0) AS `powerA_id_obsolescence_flag`, cast(concat(coalesce(`powerconnection_powerb_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `powerB_id_friendlyname`, `powerconnection_powerb_id_functionalci`.`finalclass` AS `powerB_id_finalclass_recall`, coalesce((`powerconnection_powerb_id_physicaldevice`.`status` = 'obsolete'),0) AS `powerB_id_obsolescence_flag`, cast(concat(coalesce(`networkdevicetype_networkdevicetype_id_typology`.`name`,'')) as char charset utf8mb4) AS `networkdevicetype_id_friendlyname`, cast(concat(coalesce(`brand_brand_id1_typology`.`name`,''),coalesce(' ',''),coalesce(`iosversion_iosversion_id_typology`.`name`,'')) as char charset utf8mb4) AS `iosversion_id_friendlyname` FROM (((((`networkdevice` join `typology` `networkdevicetype_networkdevicetype_id_typology` on((`networkdevice`.`networkdevicetype_id` = `networkdevicetype_networkdevicetype_id_typology`.`id`))) left join ((`iosversion` `iosversion_iosversion_id` join `typology` `brand_brand_id1_typology` on((`iosversion_iosversion_id`.`brand_id` = `brand_brand_id1_typology`.`id`))) join `typology` `iosversion_iosversion_id_typology` on((`iosversion_iosversion_id`.`id` = `iosversion_iosversion_id_typology`.`id`))) on((`networkdevice`.`iosversion_id` = `iosversion_iosversion_id`.`id`))) join ((((`datacenterdevice` `networkdevice_datacenterdevice` left join (`physicaldevice` `rack_rack_id_physicaldevice` join `functionalci` `rack_rack_id_functionalci` on((`rack_rack_id_physicaldevice`.`id` = `rack_rack_id_functionalci`.`id`))) on((`networkdevice_datacenterdevice`.`rack_id` = `rack_rack_id_physicaldevice`.`id`))) left join (`physicaldevice` `enclosure_enclosure_id_physicaldevice` join `functionalci` `enclosure_enclosure_id_functionalci` on((`enclosure_enclosure_id_physicaldevice`.`id` = `enclosure_enclosure_id_functionalci`.`id`))) on((`networkdevice_datacenterdevice`.`enclosure_id` = `enclosure_enclosure_id_physicaldevice`.`id`))) left join (`physicaldevice` `powerconnection_powera_id_physicaldevice` join `functionalci` `powerconnection_powera_id_functionalci` on((`powerconnection_powera_id_physicaldevice`.`id` = `powerconnection_powera_id_functionalci`.`id`))) on((`networkdevice_datacenterdevice`.`powera_id` = `powerconnection_powera_id_physicaldevice`.`id`))) left join (`physicaldevice` `powerconnection_powerb_id_physicaldevice` join `functionalci` `powerconnection_powerb_id_functionalci` on((`powerconnection_powerb_id_physicaldevice`.`id` = `powerconnection_powerb_id_functionalci`.`id`))) on((`networkdevice_datacenterdevice`.`powerB_id` = `powerconnection_powerb_id_physicaldevice`.`id`))) on((`networkdevice`.`id` = `networkdevice_datacenterdevice`.`id`))) join (((`physicaldevice` `networkdevice_physicaldevice` left join `location` `location_location_id` on((`networkdevice_physicaldevice`.`location_id` = `location_location_id`.`id`))) left join `typology` `brand_brand_id_typology` on((`networkdevice_physicaldevice`.`brand_id` = `brand_brand_id_typology`.`id`))) left join `typology` `model_model_id_typology` on((`networkdevice_physicaldevice`.`model_id` = `model_model_id_typology`.`id`))) on((`networkdevice`.`id` = `networkdevice_physicaldevice`.`id`))) join (`functionalci` `networkdevice_functionalci` join `organization` `organization_org_id` on((`networkdevice_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`networkdevice`.`id` = `networkdevice_functionalci`.`id`))) WHERE (coalesce((`brand_brand_id_typology`.`finalclass` = 'Brand'),1) AND coalesce((`model_model_id_typology`.`finalclass` = 'Model'),1) AND coalesce((`rack_rack_id_physicaldevice`.`finalclass` = 'Rack'),1) AND coalesce((`enclosure_enclosure_id_physicaldevice`.`finalclass` = 'Enclosure'),1) AND coalesce((`powerconnection_powera_id_physicaldevice`.`finalclass` in ('PowerSource','PDU','PowerConnection')),1) AND coalesce((`powerconnection_powerb_id_physicaldevice`.`finalclass` in ('PowerSource','PDU','PowerConnection')),1) AND coalesce((`networkdevicetype_networkdevicetype_id_typology`.`finalclass` = 'NetworkDeviceType'),1) AND coalesce((`brand_brand_id1_typology`.`finalclass` = 'Brand'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_networkdevicetype`
--
DROP TABLE IF EXISTS `view_networkdevicetype`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_networkdevicetype`  AS SELECT DISTINCT `networkdevicetype_typology`.`id` AS `id`, `networkdevicetype_typology`.`name` AS `name`, `networkdevicetype_typology`.`finalclass` AS `finalclass`, cast(concat(coalesce(`networkdevicetype_typology`.`name`,'')) as char charset utf8mb4) AS `friendlyname` FROM `typology` AS `networkdevicetype_typology` WHERE coalesce((`networkdevicetype_typology`.`finalclass` = 'NetworkDeviceType'),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_networkinterface`
--
DROP TABLE IF EXISTS `view_networkinterface`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_networkinterface`  AS SELECT DISTINCT `networkinterface`.`id` AS `id`, `networkinterface`.`name` AS `name`, `networkinterface`.`finalclass` AS `finalclass`, if((`networkinterface`.`finalclass` = 'NetworkInterface'),cast(concat(coalesce(`networkinterface`.`name`,'')) as char charset utf8mb4),if((`networkinterface`.`finalclass` = 'LogicalInterface'),cast(concat(coalesce(`networkinterface`.`name`,''),coalesce(' ',''),coalesce(`virtualmachine_virtualmachine_id_functionalci`.`name`,'')) as char charset utf8mb4),if((`networkinterface`.`finalclass` = 'FiberChannelInterface'),cast(concat(coalesce(`networkinterface`.`name`,''),coalesce(' ',''),coalesce(`datacenterdevice_datacenterdevice_id_functionalci`.`name`,'')) as char charset utf8mb4),cast(concat(coalesce(`networkinterface`.`name`,''),coalesce(' ',''),coalesce(`connectableci_connectableci_id_functionalci`.`name`,'')) as char charset utf8mb4)))) AS `friendlyname`, if((`networkinterface`.`finalclass` = 'NetworkInterface'),coalesce(0,0),if((`networkinterface`.`finalclass` = 'LogicalInterface'),coalesce(coalesce((`virtualmachine_virtualmachine_id_virtualdevice`.`status` = 'obsolete'),0),0),if((`networkinterface`.`finalclass` = 'FiberChannelInterface'),coalesce(coalesce((`datacenterdevice_datacenterdevice_id_physicaldevice`.`status` = 'obsolete'),0),0),coalesce(coalesce((`connectableci_connectableci_id_physicaldevice`.`status` = 'obsolete'),0),0)))) AS `obsolescence_flag`, `networkinterface`.`obsolescence_date` AS `obsolescence_date` FROM (((`networkinterface` left join (`logicalinterface` `networkinterface_poly_logicalinterface` join (`virtualdevice` `virtualmachine_virtualmachine_id_virtualdevice` join `functionalci` `virtualmachine_virtualmachine_id_functionalci` on((`virtualmachine_virtualmachine_id_virtualdevice`.`id` = `virtualmachine_virtualmachine_id_functionalci`.`id`))) on((`networkinterface_poly_logicalinterface`.`virtualmachine_id` = `virtualmachine_virtualmachine_id_virtualdevice`.`id`))) on((`networkinterface`.`id` = `networkinterface_poly_logicalinterface`.`id`))) left join (`fiberchannelinterface` `networkinterface_poly_fiberchannelinterface` join (`physicaldevice` `datacenterdevice_datacenterdevice_id_physicaldevice` join `functionalci` `datacenterdevice_datacenterdevice_id_functionalci` on((`datacenterdevice_datacenterdevice_id_physicaldevice`.`id` = `datacenterdevice_datacenterdevice_id_functionalci`.`id`))) on((`networkinterface_poly_fiberchannelinterface`.`datacenterdevice_id` = `datacenterdevice_datacenterdevice_id_physicaldevice`.`id`))) on((`networkinterface`.`id` = `networkinterface_poly_fiberchannelinterface`.`id`))) left join (`physicalinterface` `networkinterface_poly_physicalinterface` join (`physicaldevice` `connectableci_connectableci_id_physicaldevice` join `functionalci` `connectableci_connectableci_id_functionalci` on((`connectableci_connectableci_id_physicaldevice`.`id` = `connectableci_connectableci_id_functionalci`.`id`))) on((`networkinterface_poly_physicalinterface`.`connectableci_id` = `connectableci_connectableci_id_physicaldevice`.`id`))) on((`networkinterface`.`id` = `networkinterface_poly_physicalinterface`.`id`))) WHERE (coalesce((`virtualmachine_virtualmachine_id_virtualdevice`.`finalclass` = 'VirtualMachine'),1) AND coalesce((`datacenterdevice_datacenterdevice_id_physicaldevice`.`finalclass` in ('NetworkDevice','Server','StorageSystem','SANSwitch','TapeLibrary','NAS','DatacenterDevice')),1) AND coalesce((`connectableci_connectableci_id_physicaldevice`.`finalclass` in ('DatacenterDevice','NetworkDevice','Server','PC','Printer','StorageSystem','SANSwitch','TapeLibrary','NAS','ConnectableCI')),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_normalchange`
--
DROP TABLE IF EXISTS `view_normalchange`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_normalchange`  AS SELECT DISTINCT `normalchange`.`id` AS `id`, `normalchange_ticket`.`operational_status` AS `operational_status`, `normalchange_ticket`.`ref` AS `ref`, `normalchange_ticket`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `org_name`, `normalchange_ticket`.`caller_id` AS `caller_id`, `person_caller_id_contact`.`name` AS `caller_name`, `normalchange_ticket`.`team_id` AS `team_id`, `team_team_id_contact`.`email` AS `team_name`, `normalchange_ticket`.`agent_id` AS `agent_id`, `person_agent_id_contact`.`name` AS `agent_name`, `normalchange_ticket`.`title` AS `title`, `normalchange_ticket`.`description` AS `description`, `normalchange_ticket`.`start_date` AS `start_date`, `normalchange_ticket`.`end_date` AS `end_date`, `normalchange_ticket`.`last_update` AS `last_update`, `normalchange_ticket`.`close_date` AS `close_date`, `normalchange_ticket`.`private_log` AS `private_log`, `normalchange_change`.`status` AS `status`, `normalchange_change`.`reason` AS `reason`, `normalchange_change`.`requestor_id` AS `requestor_id`, `person_requestor_id_contact`.`email` AS `requestor_email`, `normalchange_change`.`creation_date` AS `creation_date`, `normalchange_change`.`impact` AS `impact`, `normalchange_change`.`supervisor_group_id` AS `supervisor_group_id`, `team_supervisor_group_id_contact`.`name` AS `supervisor_group_name`, `normalchange_change`.`supervisor_id` AS `supervisor_id`, `person_supervisor_id_contact`.`email` AS `supervisor_email`, `normalchange_change`.`manager_group_id` AS `manager_group_id`, `team_manager_group_id_contact`.`name` AS `manager_group_name`, `normalchange_change`.`manager_id` AS `manager_id`, `person_manager_id_contact`.`email` AS `manager_email`, `normalchange_change`.`outage` AS `outage`, `normalchange_change`.`fallback` AS `fallback`, `normalchange_change`.`parent_id` AS `parent_id`, `change_parent_id_ticket`.`ref` AS `parent_name`, `normalchange_approvedchange`.`approval_date` AS `approval_date`, `normalchange_approvedchange`.`approval_comment` AS `approval_comment`, `normalchange`.`acceptance_date` AS `acceptance_date`, `normalchange`.`acceptance_comment` AS `acceptance_comment`, `normalchange_ticket`.`finalclass` AS `finalclass`, cast(concat(coalesce(`normalchange_ticket`.`ref`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`person_caller_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_caller_id_contact`.`name`,'')) as char charset utf8mb4) AS `caller_id_friendlyname`, coalesce((`person_caller_id_contact`.`status` = 'inactive'),0) AS `caller_id_obsolescence_flag`, cast(concat(coalesce(`team_team_id_contact`.`name`,'')) as char charset utf8mb4) AS `team_id_friendlyname`, coalesce((`team_team_id_contact`.`status` = 'inactive'),0) AS `team_id_obsolescence_flag`, cast(concat(coalesce(`person_agent_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_agent_id_contact`.`name`,'')) as char charset utf8mb4) AS `agent_id_friendlyname`, coalesce((`person_agent_id_contact`.`status` = 'inactive'),0) AS `agent_id_obsolescence_flag`, cast(concat(coalesce(`person_requestor_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_requestor_id_contact`.`name`,'')) as char charset utf8mb4) AS `requestor_id_friendlyname`, coalesce((`person_requestor_id_contact`.`status` = 'inactive'),0) AS `requestor_id_obsolescence_flag`, cast(concat(coalesce(`team_supervisor_group_id_contact`.`name`,'')) as char charset utf8mb4) AS `supervisor_group_id_friendlyname`, coalesce((`team_supervisor_group_id_contact`.`status` = 'inactive'),0) AS `supervisor_group_id_obsolescence_flag`, cast(concat(coalesce(`person_supervisor_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_supervisor_id_contact`.`name`,'')) as char charset utf8mb4) AS `supervisor_id_friendlyname`, coalesce((`person_supervisor_id_contact`.`status` = 'inactive'),0) AS `supervisor_id_obsolescence_flag`, cast(concat(coalesce(`team_manager_group_id_contact`.`name`,'')) as char charset utf8mb4) AS `manager_group_id_friendlyname`, coalesce((`team_manager_group_id_contact`.`status` = 'inactive'),0) AS `manager_group_id_obsolescence_flag`, cast(concat(coalesce(`person_manager_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_manager_id_contact`.`name`,'')) as char charset utf8mb4) AS `manager_id_friendlyname`, coalesce((`person_manager_id_contact`.`status` = 'inactive'),0) AS `manager_id_obsolescence_flag`, cast(concat(coalesce(`change_parent_id_ticket`.`ref`,'')) as char charset utf8mb4) AS `parent_id_friendlyname`, `change_parent_id_ticket`.`finalclass` AS `parent_id_finalclass_recall`, `normalchange_ticket`.`description_format` AS `description_format`, `normalchange_ticket`.`private_log_index` AS `private_log_index` FROM (((`change_normal` `normalchange` join `change_approved` `normalchange_approvedchange` on((`normalchange`.`id` = `normalchange_approvedchange`.`id`))) join ((((((`change` `normalchange_change` left join (`person` `person_requestor_id` join `contact` `person_requestor_id_contact` on((`person_requestor_id`.`id` = `person_requestor_id_contact`.`id`))) on((`normalchange_change`.`requestor_id` = `person_requestor_id`.`id`))) left join `contact` `team_supervisor_group_id_contact` on((`normalchange_change`.`supervisor_group_id` = `team_supervisor_group_id_contact`.`id`))) left join (`person` `person_supervisor_id` join `contact` `person_supervisor_id_contact` on((`person_supervisor_id`.`id` = `person_supervisor_id_contact`.`id`))) on((`normalchange_change`.`supervisor_id` = `person_supervisor_id`.`id`))) left join `contact` `team_manager_group_id_contact` on((`normalchange_change`.`manager_group_id` = `team_manager_group_id_contact`.`id`))) left join (`person` `person_manager_id` join `contact` `person_manager_id_contact` on((`person_manager_id`.`id` = `person_manager_id_contact`.`id`))) on((`normalchange_change`.`manager_id` = `person_manager_id`.`id`))) left join `ticket` `change_parent_id_ticket` on((`normalchange_change`.`parent_id` = `change_parent_id_ticket`.`id`))) on((`normalchange`.`id` = `normalchange_change`.`id`))) join ((((`ticket` `normalchange_ticket` join `organization` `organization_org_id` on((`normalchange_ticket`.`org_id` = `organization_org_id`.`id`))) left join (`person` `person_caller_id` join `contact` `person_caller_id_contact` on((`person_caller_id`.`id` = `person_caller_id_contact`.`id`))) on((`normalchange_ticket`.`caller_id` = `person_caller_id`.`id`))) left join `contact` `team_team_id_contact` on((`normalchange_ticket`.`team_id` = `team_team_id_contact`.`id`))) left join (`person` `person_agent_id` join `contact` `person_agent_id_contact` on((`person_agent_id`.`id` = `person_agent_id_contact`.`id`))) on((`normalchange_ticket`.`agent_id` = `person_agent_id`.`id`))) on((`normalchange`.`id` = `normalchange_ticket`.`id`))) WHERE (coalesce((`team_team_id_contact`.`finalclass` = 'Team'),1) AND coalesce((`team_supervisor_group_id_contact`.`finalclass` = 'Team'),1) AND coalesce((`team_manager_group_id_contact`.`finalclass` = 'Team'),1) AND coalesce((`change_parent_id_ticket`.`finalclass` in ('RoutineChange','ApprovedChange','NormalChange','EmergencyChange','Change')),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_organization`
--
DROP TABLE IF EXISTS `view_organization`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_organization`  AS SELECT DISTINCT `organization`.`id` AS `id`, `organization`.`name` AS `name`, `organization`.`code` AS `code`, `organization`.`status` AS `status`, `organization`.`parent_id` AS `parent_id`, `organization_parent_id`.`name` AS `parent_name`, `organization`.`deliverymodel_id` AS `deliverymodel_id`, `deliverymodel_deliverymodel_id`.`name` AS `deliverymodel_name`, cast(concat(coalesce(`organization`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`organization`.`status` = 'inactive'),0) AS `obsolescence_flag`, `organization`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_parent_id`.`name`,'')) as char charset utf8mb4) AS `parent_id_friendlyname`, coalesce((`organization_parent_id`.`status` = 'inactive'),0) AS `parent_id_obsolescence_flag`, cast(concat(coalesce(`deliverymodel_deliverymodel_id`.`name`,'')) as char charset utf8mb4) AS `deliverymodel_id_friendlyname` FROM ((`organization` left join `organization` `organization_parent_id` on((`organization`.`parent_id` = `organization_parent_id`.`id`))) left join `deliverymodel` `deliverymodel_deliverymodel_id` on((`organization`.`deliverymodel_id` = `deliverymodel_deliverymodel_id`.`id`))) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_osfamily`
--
DROP TABLE IF EXISTS `view_osfamily`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_osfamily`  AS SELECT DISTINCT `osfamily_typology`.`id` AS `id`, `osfamily_typology`.`name` AS `name`, `osfamily_typology`.`finalclass` AS `finalclass`, cast(concat(coalesce(`osfamily_typology`.`name`,'')) as char charset utf8mb4) AS `friendlyname` FROM `typology` AS `osfamily_typology` WHERE coalesce((`osfamily_typology`.`finalclass` = 'OSFamily'),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_oslicence`
--
DROP TABLE IF EXISTS `view_oslicence`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_oslicence`  AS SELECT DISTINCT `oslicence`.`id` AS `id`, `oslicence_licence`.`name` AS `name`, `oslicence_licence`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `oslicence_licence`.`usage_limit` AS `usage_limit`, `oslicence_licence`.`description` AS `description`, `oslicence_licence`.`start_date` AS `start_date`, `oslicence_licence`.`end_date` AS `end_date`, `oslicence_licence`.`licence_key` AS `licence_key`, `oslicence_licence`.`perpetual` AS `perpetual`, `oslicence`.`osversion_id` AS `osversion_id`, `osversion_osversion_id_typology`.`name` AS `osversion_name`, `oslicence_licence`.`finalclass` AS `finalclass`, cast(concat(coalesce(`oslicence_licence`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce(((`oslicence_licence`.`perpetual` = 'no') and (isnull(`oslicence_licence`.`end_date`) = 0) and (`oslicence_licence`.`end_date` < date_format((now() - interval 15 month),'%Y-%m-%d 00:00:00'))),0) AS `obsolescence_flag`, `oslicence_licence`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`osversion_osversion_id_typology`.`name`,'')) as char charset utf8mb4) AS `osversion_id_friendlyname` FROM ((`oslicence` join `typology` `osversion_osversion_id_typology` on((`oslicence`.`osversion_id` = `osversion_osversion_id_typology`.`id`))) join (`licence` `oslicence_licence` join `organization` `organization_org_id` on((`oslicence_licence`.`org_id` = `organization_org_id`.`id`))) on((`oslicence`.`id` = `oslicence_licence`.`id`))) WHERE coalesce((`osversion_osversion_id_typology`.`finalclass` = 'OSVersion'),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_ospatch`
--
DROP TABLE IF EXISTS `view_ospatch`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_ospatch`  AS SELECT DISTINCT `ospatch`.`id` AS `id`, `ospatch_patch`.`name` AS `name`, `ospatch_patch`.`description` AS `description`, `ospatch`.`osversion_id` AS `osversion_id`, `osversion_osversion_id_typology`.`name` AS `osversion_name`, `ospatch_patch`.`finalclass` AS `finalclass`, cast(concat(coalesce(`ospatch_patch`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`osversion_osversion_id_typology`.`name`,'')) as char charset utf8mb4) AS `osversion_id_friendlyname` FROM ((`ospatch` join `typology` `osversion_osversion_id_typology` on((`ospatch`.`osversion_id` = `osversion_osversion_id_typology`.`id`))) join `patch` `ospatch_patch` on((`ospatch`.`id` = `ospatch_patch`.`id`))) WHERE coalesce((`osversion_osversion_id_typology`.`finalclass` = 'OSVersion'),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_osversion`
--
DROP TABLE IF EXISTS `view_osversion`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_osversion`  AS SELECT DISTINCT `osversion`.`id` AS `id`, `osversion_typology`.`name` AS `name`, `osversion`.`osfamily_id` AS `osfamily_id`, `osfamily_osfamily_id_typology`.`name` AS `osfamily_name`, `osversion_typology`.`finalclass` AS `finalclass`, cast(concat(coalesce(`osversion_typology`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`osfamily_osfamily_id_typology`.`name`,'')) as char charset utf8mb4) AS `osfamily_id_friendlyname` FROM ((`osversion` join `typology` `osfamily_osfamily_id_typology` on((`osversion`.`osfamily_id` = `osfamily_osfamily_id_typology`.`id`))) join `typology` `osversion_typology` on((`osversion`.`id` = `osversion_typology`.`id`))) WHERE coalesce((`osfamily_osfamily_id_typology`.`finalclass` = 'OSFamily'),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_othersoftware`
--
DROP TABLE IF EXISTS `view_othersoftware`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_othersoftware`  AS SELECT DISTINCT `othersoftware_softwareinstance`.`id` AS `id`, `othersoftware_functionalci`.`name` AS `name`, `othersoftware_functionalci`.`description` AS `description`, `othersoftware_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `othersoftware_functionalci`.`business_criticity` AS `business_criticity`, `othersoftware_functionalci`.`move2production` AS `move2production`, `othersoftware_softwareinstance`.`functionalci_id` AS `system_id`, `functionalci_system_id`.`name` AS `system_name`, `othersoftware_softwareinstance`.`software_id` AS `software_id`, `software_software_id`.`name` AS `software_name`, `othersoftware_softwareinstance`.`softwarelicence_id` AS `softwarelicence_id`, `softwarelicence_softwarelicence_id_licence`.`name` AS `softwarelicence_name`, `othersoftware_softwareinstance`.`path` AS `path`, `othersoftware_softwareinstance`.`status` AS `status`, `othersoftware_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`othersoftware_functionalci`.`name`,''),coalesce(' ',''),coalesce(`functionalci_system_id`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`othersoftware_softwareinstance`.`status` = 'inactive'),0) AS `obsolescence_flag`, `othersoftware_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, if((`functionalci_system_id`.`finalclass` in ('Middleware','DBServer','WebServer','PCSoftware','OtherSoftware')),cast(concat(coalesce(`functionalci_system_id`.`name`,''),coalesce(' ',''),coalesce(`functionalci_system_id1`.`name`,'')) as char charset utf8mb4),cast(concat(coalesce(`functionalci_system_id`.`name`,'')) as char charset utf8mb4)) AS `system_id_friendlyname`, `functionalci_system_id`.`finalclass` AS `system_id_finalclass_recall`, if((`functionalci_system_id`.`finalclass` = 'FunctionalCI'),coalesce(0,0),if((`functionalci_system_id`.`finalclass` in ('Hypervisor','Farm','VirtualMachine')),coalesce((`functionalci_system_id_poly_virtualdevice`.`status` = 'obsolete'),0),if((`functionalci_system_id`.`finalclass` = 'WebApplication'),coalesce(coalesce((`webserver_webserver_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_system_id`.`finalclass` = 'DatabaseSchema'),coalesce(coalesce((`dbserver_dbserver_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_system_id`.`finalclass` = 'MiddlewareInstance'),coalesce(coalesce((`middleware_middleware_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_system_id`.`finalclass` in ('Middleware','DBServer','WebServer','PCSoftware','OtherSoftware')),coalesce((`functionalci_system_id_poly_softwareinstance`.`status` = 'inactive'),0),if((`functionalci_system_id`.`finalclass` = 'BusinessProcess'),coalesce((`functionalci_system_id_poly_businessprocess`.`status` = 'inactive'),0),if((`functionalci_system_id`.`finalclass` = 'ApplicationSolution'),coalesce((`functionalci_system_id_poly_applicationsolution`.`status` = 'inactive'),0),coalesce((`functionalci_system_id_poly_physicaldevice`.`status` = 'obsolete'),0))))))))) AS `system_id_obsolescence_flag`, cast(concat(coalesce(`software_software_id`.`name`,''),coalesce(' ',''),coalesce(`software_software_id`.`version`,'')) as char charset utf8mb4) AS `software_id_friendlyname`, cast(concat(coalesce(`softwarelicence_softwarelicence_id_licence`.`name`,'')) as char charset utf8mb4) AS `softwarelicence_id_friendlyname`, coalesce(((`softwarelicence_softwarelicence_id_licence`.`perpetual` = 'no') and (isnull(`softwarelicence_softwarelicence_id_licence`.`end_date`) = 0) and (`softwarelicence_softwarelicence_id_licence`.`end_date` < date_format((now() - interval 15 month),'%Y-%m-%d 00:00:00'))),0) AS `softwarelicence_id_obsolescence_flag` FROM ((((`softwareinstance` `othersoftware_softwareinstance` join ((((((((`functionalci` `functionalci_system_id` left join (`softwareinstance` `functionalci_system_id_poly_softwareinstance` join `functionalci` `functionalci_system_id1` on((`functionalci_system_id_poly_softwareinstance`.`functionalci_id` = `functionalci_system_id1`.`id`))) on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_softwareinstance`.`id`))) left join `virtualdevice` `functionalci_system_id_poly_virtualdevice` on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_virtualdevice`.`id`))) left join (`webapplication` `functionalci_system_id_poly_webapplication` join `softwareinstance` `webserver_webserver_id_softwareinstance` on((`functionalci_system_id_poly_webapplication`.`webserver_id` = `webserver_webserver_id_softwareinstance`.`id`))) on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_webapplication`.`id`))) left join (`databaseschema` `functionalci_system_id_poly_databaseschema` join `softwareinstance` `dbserver_dbserver_id_softwareinstance` on((`functionalci_system_id_poly_databaseschema`.`dbserver_id` = `dbserver_dbserver_id_softwareinstance`.`id`))) on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_databaseschema`.`id`))) left join (`middlewareinstance` `functionalci_system_id_poly_middlewareinstance` join `softwareinstance` `middleware_middleware_id_softwareinstance` on((`functionalci_system_id_poly_middlewareinstance`.`middleware_id` = `middleware_middleware_id_softwareinstance`.`id`))) on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_middlewareinstance`.`id`))) left join `businessprocess` `functionalci_system_id_poly_businessprocess` on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_businessprocess`.`id`))) left join `applicationsolution` `functionalci_system_id_poly_applicationsolution` on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_applicationsolution`.`id`))) left join `physicaldevice` `functionalci_system_id_poly_physicaldevice` on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_physicaldevice`.`id`))) on((`othersoftware_softwareinstance`.`functionalci_id` = `functionalci_system_id`.`id`))) left join `software` `software_software_id` on((`othersoftware_softwareinstance`.`software_id` = `software_software_id`.`id`))) left join `licence` `softwarelicence_softwarelicence_id_licence` on((`othersoftware_softwareinstance`.`softwarelicence_id` = `softwarelicence_softwarelicence_id_licence`.`id`))) join (`functionalci` `othersoftware_functionalci` join `organization` `organization_org_id` on((`othersoftware_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`othersoftware_softwareinstance`.`id` = `othersoftware_functionalci`.`id`))) WHERE (coalesce((`webserver_webserver_id_softwareinstance`.`finalclass` = 'WebServer'),1) AND coalesce((`dbserver_dbserver_id_softwareinstance`.`finalclass` = 'DBServer'),1) AND coalesce((`middleware_middleware_id_softwareinstance`.`finalclass` = 'Middleware'),1) AND coalesce((`softwarelicence_softwarelicence_id_licence`.`finalclass` = 'SoftwareLicence'),1) AND coalesce((`othersoftware_softwareinstance`.`finalclass` = 'OtherSoftware'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_patch`
--
DROP TABLE IF EXISTS `view_patch`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_patch`  AS SELECT DISTINCT `patch`.`id` AS `id`, `patch`.`name` AS `name`, `patch`.`description` AS `description`, `patch`.`finalclass` AS `finalclass`, cast(concat(coalesce(`patch`.`name`,'')) as char charset utf8mb4) AS `friendlyname` FROM `patch` WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_pc`
--
DROP TABLE IF EXISTS `view_pc`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_pc`  AS SELECT DISTINCT `pc`.`id` AS `id`, `pc_functionalci`.`name` AS `name`, `pc_functionalci`.`description` AS `description`, `pc_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `pc_functionalci`.`business_criticity` AS `business_criticity`, `pc_functionalci`.`move2production` AS `move2production`, `pc_physicaldevice`.`serialnumber` AS `serialnumber`, `pc_physicaldevice`.`location_id` AS `location_id`, `location_location_id`.`name` AS `location_name`, `pc_physicaldevice`.`status` AS `status`, `pc_physicaldevice`.`brand_id` AS `brand_id`, `brand_brand_id_typology`.`name` AS `brand_name`, `pc_physicaldevice`.`model_id` AS `model_id`, `model_model_id_typology`.`name` AS `model_name`, `pc_physicaldevice`.`asset_number` AS `asset_number`, `pc_physicaldevice`.`purchase_date` AS `purchase_date`, `pc_physicaldevice`.`end_of_warranty` AS `end_of_warranty`, `pc`.`osfamily_id` AS `osfamily_id`, `osfamily_osfamily_id_typology`.`name` AS `osfamily_name`, `pc`.`osversion_id` AS `osversion_id`, `osversion_osversion_id_typology`.`name` AS `osversion_name`, `pc`.`cpu` AS `cpu`, `pc`.`ram` AS `ram`, `pc`.`type` AS `type`, `pc_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`pc_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`pc_physicaldevice`.`status` = 'obsolete'),0) AS `obsolescence_flag`, `pc_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`location_location_id`.`name`,'')) as char charset utf8mb4) AS `location_id_friendlyname`, coalesce((`location_location_id`.`status` = 'inactive'),0) AS `location_id_obsolescence_flag`, cast(concat(coalesce(`brand_brand_id_typology`.`name`,'')) as char charset utf8mb4) AS `brand_id_friendlyname`, cast(concat(coalesce(`model_model_id_typology`.`name`,'')) as char charset utf8mb4) AS `model_id_friendlyname`, cast(concat(coalesce(`osfamily_osfamily_id_typology`.`name`,'')) as char charset utf8mb4) AS `osfamily_id_friendlyname`, cast(concat(coalesce(`osversion_osversion_id_typology`.`name`,'')) as char charset utf8mb4) AS `osversion_id_friendlyname` FROM ((((`pc` left join `typology` `osfamily_osfamily_id_typology` on((`pc`.`osfamily_id` = `osfamily_osfamily_id_typology`.`id`))) left join `typology` `osversion_osversion_id_typology` on((`pc`.`osversion_id` = `osversion_osversion_id_typology`.`id`))) join (((`physicaldevice` `pc_physicaldevice` left join `location` `location_location_id` on((`pc_physicaldevice`.`location_id` = `location_location_id`.`id`))) left join `typology` `brand_brand_id_typology` on((`pc_physicaldevice`.`brand_id` = `brand_brand_id_typology`.`id`))) left join `typology` `model_model_id_typology` on((`pc_physicaldevice`.`model_id` = `model_model_id_typology`.`id`))) on((`pc`.`id` = `pc_physicaldevice`.`id`))) join (`functionalci` `pc_functionalci` join `organization` `organization_org_id` on((`pc_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`pc`.`id` = `pc_functionalci`.`id`))) WHERE (coalesce((`brand_brand_id_typology`.`finalclass` = 'Brand'),1) AND coalesce((`model_model_id_typology`.`finalclass` = 'Model'),1) AND coalesce((`osfamily_osfamily_id_typology`.`finalclass` = 'OSFamily'),1) AND coalesce((`osversion_osversion_id_typology`.`finalclass` = 'OSVersion'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_pcsoftware`
--
DROP TABLE IF EXISTS `view_pcsoftware`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_pcsoftware`  AS SELECT DISTINCT `pcsoftware_softwareinstance`.`id` AS `id`, `pcsoftware_functionalci`.`name` AS `name`, `pcsoftware_functionalci`.`description` AS `description`, `pcsoftware_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `pcsoftware_functionalci`.`business_criticity` AS `business_criticity`, `pcsoftware_functionalci`.`move2production` AS `move2production`, `pcsoftware_softwareinstance`.`functionalci_id` AS `system_id`, `functionalci_system_id`.`name` AS `system_name`, `pcsoftware_softwareinstance`.`software_id` AS `software_id`, `software_software_id`.`name` AS `software_name`, `pcsoftware_softwareinstance`.`softwarelicence_id` AS `softwarelicence_id`, `softwarelicence_softwarelicence_id_licence`.`name` AS `softwarelicence_name`, `pcsoftware_softwareinstance`.`path` AS `path`, `pcsoftware_softwareinstance`.`status` AS `status`, `pcsoftware_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`pcsoftware_functionalci`.`name`,''),coalesce(' ',''),coalesce(`functionalci_system_id`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`pcsoftware_softwareinstance`.`status` = 'inactive'),0) AS `obsolescence_flag`, `pcsoftware_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, if((`functionalci_system_id`.`finalclass` in ('Middleware','DBServer','WebServer','PCSoftware','OtherSoftware')),cast(concat(coalesce(`functionalci_system_id`.`name`,''),coalesce(' ',''),coalesce(`functionalci_system_id1`.`name`,'')) as char charset utf8mb4),cast(concat(coalesce(`functionalci_system_id`.`name`,'')) as char charset utf8mb4)) AS `system_id_friendlyname`, `functionalci_system_id`.`finalclass` AS `system_id_finalclass_recall`, if((`functionalci_system_id`.`finalclass` = 'FunctionalCI'),coalesce(0,0),if((`functionalci_system_id`.`finalclass` in ('Hypervisor','Farm','VirtualMachine')),coalesce((`functionalci_system_id_poly_virtualdevice`.`status` = 'obsolete'),0),if((`functionalci_system_id`.`finalclass` = 'WebApplication'),coalesce(coalesce((`webserver_webserver_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_system_id`.`finalclass` = 'DatabaseSchema'),coalesce(coalesce((`dbserver_dbserver_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_system_id`.`finalclass` = 'MiddlewareInstance'),coalesce(coalesce((`middleware_middleware_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_system_id`.`finalclass` in ('Middleware','DBServer','WebServer','PCSoftware','OtherSoftware')),coalesce((`functionalci_system_id_poly_softwareinstance`.`status` = 'inactive'),0),if((`functionalci_system_id`.`finalclass` = 'BusinessProcess'),coalesce((`functionalci_system_id_poly_businessprocess`.`status` = 'inactive'),0),if((`functionalci_system_id`.`finalclass` = 'ApplicationSolution'),coalesce((`functionalci_system_id_poly_applicationsolution`.`status` = 'inactive'),0),coalesce((`functionalci_system_id_poly_physicaldevice`.`status` = 'obsolete'),0))))))))) AS `system_id_obsolescence_flag`, cast(concat(coalesce(`software_software_id`.`name`,''),coalesce(' ',''),coalesce(`software_software_id`.`version`,'')) as char charset utf8mb4) AS `software_id_friendlyname`, cast(concat(coalesce(`softwarelicence_softwarelicence_id_licence`.`name`,'')) as char charset utf8mb4) AS `softwarelicence_id_friendlyname`, coalesce(((`softwarelicence_softwarelicence_id_licence`.`perpetual` = 'no') and (isnull(`softwarelicence_softwarelicence_id_licence`.`end_date`) = 0) and (`softwarelicence_softwarelicence_id_licence`.`end_date` < date_format((now() - interval 15 month),'%Y-%m-%d 00:00:00'))),0) AS `softwarelicence_id_obsolescence_flag` FROM ((((`softwareinstance` `pcsoftware_softwareinstance` join ((((((((`functionalci` `functionalci_system_id` left join (`softwareinstance` `functionalci_system_id_poly_softwareinstance` join `functionalci` `functionalci_system_id1` on((`functionalci_system_id_poly_softwareinstance`.`functionalci_id` = `functionalci_system_id1`.`id`))) on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_softwareinstance`.`id`))) left join `virtualdevice` `functionalci_system_id_poly_virtualdevice` on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_virtualdevice`.`id`))) left join (`webapplication` `functionalci_system_id_poly_webapplication` join `softwareinstance` `webserver_webserver_id_softwareinstance` on((`functionalci_system_id_poly_webapplication`.`webserver_id` = `webserver_webserver_id_softwareinstance`.`id`))) on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_webapplication`.`id`))) left join (`databaseschema` `functionalci_system_id_poly_databaseschema` join `softwareinstance` `dbserver_dbserver_id_softwareinstance` on((`functionalci_system_id_poly_databaseschema`.`dbserver_id` = `dbserver_dbserver_id_softwareinstance`.`id`))) on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_databaseschema`.`id`))) left join (`middlewareinstance` `functionalci_system_id_poly_middlewareinstance` join `softwareinstance` `middleware_middleware_id_softwareinstance` on((`functionalci_system_id_poly_middlewareinstance`.`middleware_id` = `middleware_middleware_id_softwareinstance`.`id`))) on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_middlewareinstance`.`id`))) left join `businessprocess` `functionalci_system_id_poly_businessprocess` on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_businessprocess`.`id`))) left join `applicationsolution` `functionalci_system_id_poly_applicationsolution` on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_applicationsolution`.`id`))) left join `physicaldevice` `functionalci_system_id_poly_physicaldevice` on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_physicaldevice`.`id`))) on((`pcsoftware_softwareinstance`.`functionalci_id` = `functionalci_system_id`.`id`))) left join `software` `software_software_id` on((`pcsoftware_softwareinstance`.`software_id` = `software_software_id`.`id`))) left join `licence` `softwarelicence_softwarelicence_id_licence` on((`pcsoftware_softwareinstance`.`softwarelicence_id` = `softwarelicence_softwarelicence_id_licence`.`id`))) join (`functionalci` `pcsoftware_functionalci` join `organization` `organization_org_id` on((`pcsoftware_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`pcsoftware_softwareinstance`.`id` = `pcsoftware_functionalci`.`id`))) WHERE (coalesce((`webserver_webserver_id_softwareinstance`.`finalclass` = 'WebServer'),1) AND coalesce((`dbserver_dbserver_id_softwareinstance`.`finalclass` = 'DBServer'),1) AND coalesce((`middleware_middleware_id_softwareinstance`.`finalclass` = 'Middleware'),1) AND coalesce((`softwarelicence_softwarelicence_id_licence`.`finalclass` = 'SoftwareLicence'),1) AND coalesce((`pcsoftware_softwareinstance`.`finalclass` = 'PCSoftware'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_pdu`
--
DROP TABLE IF EXISTS `view_pdu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_pdu`  AS SELECT DISTINCT `pdu`.`id` AS `id`, `pdu_functionalci`.`name` AS `name`, `pdu_functionalci`.`description` AS `description`, `pdu_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `pdu_functionalci`.`business_criticity` AS `business_criticity`, `pdu_functionalci`.`move2production` AS `move2production`, `pdu_physicaldevice`.`serialnumber` AS `serialnumber`, `pdu_physicaldevice`.`location_id` AS `location_id`, `location_location_id`.`name` AS `location_name`, `pdu_physicaldevice`.`status` AS `status`, `pdu_physicaldevice`.`brand_id` AS `brand_id`, `brand_brand_id_typology`.`name` AS `brand_name`, `pdu_physicaldevice`.`model_id` AS `model_id`, `model_model_id_typology`.`name` AS `model_name`, `pdu_physicaldevice`.`asset_number` AS `asset_number`, `pdu_physicaldevice`.`purchase_date` AS `purchase_date`, `pdu_physicaldevice`.`end_of_warranty` AS `end_of_warranty`, `pdu`.`rack_id` AS `rack_id`, `rack_rack_id_functionalci`.`name` AS `rack_name`, `pdu`.`powerstart_id` AS `powerstart_id`, `powerconnection_powerstart_id_functionalci`.`name` AS `powerstart_name`, `pdu_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`pdu_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`pdu_physicaldevice`.`status` = 'obsolete'),0) AS `obsolescence_flag`, `pdu_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`location_location_id`.`name`,'')) as char charset utf8mb4) AS `location_id_friendlyname`, coalesce((`location_location_id`.`status` = 'inactive'),0) AS `location_id_obsolescence_flag`, cast(concat(coalesce(`brand_brand_id_typology`.`name`,'')) as char charset utf8mb4) AS `brand_id_friendlyname`, cast(concat(coalesce(`model_model_id_typology`.`name`,'')) as char charset utf8mb4) AS `model_id_friendlyname`, cast(concat(coalesce(`rack_rack_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `rack_id_friendlyname`, coalesce((`rack_rack_id_physicaldevice`.`status` = 'obsolete'),0) AS `rack_id_obsolescence_flag`, cast(concat(coalesce(`powerconnection_powerstart_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `powerstart_id_friendlyname`, `powerconnection_powerstart_id_functionalci`.`finalclass` AS `powerstart_id_finalclass_recall`, coalesce((`powerconnection_powerstart_id_physicaldevice`.`status` = 'obsolete'),0) AS `powerstart_id_obsolescence_flag` FROM ((((`pdu` join (`physicaldevice` `rack_rack_id_physicaldevice` join `functionalci` `rack_rack_id_functionalci` on((`rack_rack_id_physicaldevice`.`id` = `rack_rack_id_functionalci`.`id`))) on((`pdu`.`rack_id` = `rack_rack_id_physicaldevice`.`id`))) left join (`physicaldevice` `powerconnection_powerstart_id_physicaldevice` join `functionalci` `powerconnection_powerstart_id_functionalci` on((`powerconnection_powerstart_id_physicaldevice`.`id` = `powerconnection_powerstart_id_functionalci`.`id`))) on((`pdu`.`powerstart_id` = `powerconnection_powerstart_id_physicaldevice`.`id`))) join (((`physicaldevice` `pdu_physicaldevice` left join `location` `location_location_id` on((`pdu_physicaldevice`.`location_id` = `location_location_id`.`id`))) left join `typology` `brand_brand_id_typology` on((`pdu_physicaldevice`.`brand_id` = `brand_brand_id_typology`.`id`))) left join `typology` `model_model_id_typology` on((`pdu_physicaldevice`.`model_id` = `model_model_id_typology`.`id`))) on((`pdu`.`id` = `pdu_physicaldevice`.`id`))) join (`functionalci` `pdu_functionalci` join `organization` `organization_org_id` on((`pdu_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`pdu`.`id` = `pdu_functionalci`.`id`))) WHERE (coalesce((`brand_brand_id_typology`.`finalclass` = 'Brand'),1) AND coalesce((`model_model_id_typology`.`finalclass` = 'Model'),1) AND coalesce((`rack_rack_id_physicaldevice`.`finalclass` = 'Rack'),1) AND coalesce((`powerconnection_powerstart_id_physicaldevice`.`finalclass` in ('PowerSource','PDU','PowerConnection')),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_peripheral`
--
DROP TABLE IF EXISTS `view_peripheral`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_peripheral`  AS SELECT DISTINCT `peripheral_physicaldevice`.`id` AS `id`, `peripheral_functionalci`.`name` AS `name`, `peripheral_functionalci`.`description` AS `description`, `peripheral_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `peripheral_functionalci`.`business_criticity` AS `business_criticity`, `peripheral_functionalci`.`move2production` AS `move2production`, `peripheral_physicaldevice`.`serialnumber` AS `serialnumber`, `peripheral_physicaldevice`.`location_id` AS `location_id`, `location_location_id`.`name` AS `location_name`, `peripheral_physicaldevice`.`status` AS `status`, `peripheral_physicaldevice`.`brand_id` AS `brand_id`, `brand_brand_id_typology`.`name` AS `brand_name`, `peripheral_physicaldevice`.`model_id` AS `model_id`, `model_model_id_typology`.`name` AS `model_name`, `peripheral_physicaldevice`.`asset_number` AS `asset_number`, `peripheral_physicaldevice`.`purchase_date` AS `purchase_date`, `peripheral_physicaldevice`.`end_of_warranty` AS `end_of_warranty`, `peripheral_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`peripheral_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`peripheral_physicaldevice`.`status` = 'obsolete'),0) AS `obsolescence_flag`, `peripheral_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`location_location_id`.`name`,'')) as char charset utf8mb4) AS `location_id_friendlyname`, coalesce((`location_location_id`.`status` = 'inactive'),0) AS `location_id_obsolescence_flag`, cast(concat(coalesce(`brand_brand_id_typology`.`name`,'')) as char charset utf8mb4) AS `brand_id_friendlyname`, cast(concat(coalesce(`model_model_id_typology`.`name`,'')) as char charset utf8mb4) AS `model_id_friendlyname` FROM ((((`physicaldevice` `peripheral_physicaldevice` left join `location` `location_location_id` on((`peripheral_physicaldevice`.`location_id` = `location_location_id`.`id`))) left join `typology` `brand_brand_id_typology` on((`peripheral_physicaldevice`.`brand_id` = `brand_brand_id_typology`.`id`))) left join `typology` `model_model_id_typology` on((`peripheral_physicaldevice`.`model_id` = `model_model_id_typology`.`id`))) join (`functionalci` `peripheral_functionalci` join `organization` `organization_org_id` on((`peripheral_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`peripheral_physicaldevice`.`id` = `peripheral_functionalci`.`id`))) WHERE (coalesce((`brand_brand_id_typology`.`finalclass` = 'Brand'),1) AND coalesce((`model_model_id_typology`.`finalclass` = 'Model'),1) AND coalesce((`peripheral_physicaldevice`.`finalclass` = 'Peripheral'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_person`
--
DROP TABLE IF EXISTS `view_person`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_person`  AS SELECT DISTINCT `person`.`id` AS `id`, `person_contact`.`name` AS `name`, `person_contact`.`status` AS `status`, `person_contact`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `org_name`, `person_contact`.`email` AS `email`, `person_contact`.`phone` AS `phone`, `person_contact`.`notify` AS `notify`, `person_contact`.`function` AS `function`, `person`.`picture_mimetype` AS `picture`, `person`.`first_name` AS `first_name`, `person`.`employee_number` AS `employee_number`, `person`.`mobile_phone` AS `mobile_phone`, `person`.`location_id` AS `location_id`, `location_location_id`.`name` AS `location_name`, `person`.`manager_id` AS `manager_id`, `person_manager_id_contact`.`name` AS `manager_name`, `person_contact`.`finalclass` AS `finalclass`, cast(concat(coalesce(`person`.`first_name`,''),coalesce(' ',''),coalesce(`person_contact`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`person_contact`.`status` = 'inactive'),0) AS `obsolescence_flag`, `person_contact`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`location_location_id`.`name`,'')) as char charset utf8mb4) AS `location_id_friendlyname`, coalesce((`location_location_id`.`status` = 'inactive'),0) AS `location_id_obsolescence_flag`, cast(concat(coalesce(`person_manager_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_manager_id_contact`.`name`,'')) as char charset utf8mb4) AS `manager_id_friendlyname`, coalesce((`person_manager_id_contact`.`status` = 'inactive'),0) AS `manager_id_obsolescence_flag`, `person`.`picture_data` AS `picture_data`, `person`.`picture_filename` AS `picture_filename` FROM (((`person` left join `location` `location_location_id` on((`person`.`location_id` = `location_location_id`.`id`))) left join (`person` `person_manager_id` join `contact` `person_manager_id_contact` on((`person_manager_id`.`id` = `person_manager_id_contact`.`id`))) on((`person`.`manager_id` = `person_manager_id`.`id`))) join (`contact` `person_contact` join `organization` `organization_org_id` on((`person_contact`.`org_id` = `organization_org_id`.`id`))) on((`person`.`id` = `person_contact`.`id`))) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_phone`
--
DROP TABLE IF EXISTS `view_phone`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_phone`  AS SELECT DISTINCT `phone_telephonyci`.`id` AS `id`, `phone_functionalci`.`name` AS `name`, `phone_functionalci`.`description` AS `description`, `phone_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `phone_functionalci`.`business_criticity` AS `business_criticity`, `phone_functionalci`.`move2production` AS `move2production`, `phone_physicaldevice`.`serialnumber` AS `serialnumber`, `phone_physicaldevice`.`location_id` AS `location_id`, `location_location_id`.`name` AS `location_name`, `phone_physicaldevice`.`status` AS `status`, `phone_physicaldevice`.`brand_id` AS `brand_id`, `brand_brand_id_typology`.`name` AS `brand_name`, `phone_physicaldevice`.`model_id` AS `model_id`, `model_model_id_typology`.`name` AS `model_name`, `phone_physicaldevice`.`asset_number` AS `asset_number`, `phone_physicaldevice`.`purchase_date` AS `purchase_date`, `phone_physicaldevice`.`end_of_warranty` AS `end_of_warranty`, `phone_telephonyci`.`phonenumber` AS `phonenumber`, `phone_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`phone_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`phone_physicaldevice`.`status` = 'obsolete'),0) AS `obsolescence_flag`, `phone_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`location_location_id`.`name`,'')) as char charset utf8mb4) AS `location_id_friendlyname`, coalesce((`location_location_id`.`status` = 'inactive'),0) AS `location_id_obsolescence_flag`, cast(concat(coalesce(`brand_brand_id_typology`.`name`,'')) as char charset utf8mb4) AS `brand_id_friendlyname`, cast(concat(coalesce(`model_model_id_typology`.`name`,'')) as char charset utf8mb4) AS `model_id_friendlyname` FROM ((`telephonyci` `phone_telephonyci` join (((`physicaldevice` `phone_physicaldevice` left join `location` `location_location_id` on((`phone_physicaldevice`.`location_id` = `location_location_id`.`id`))) left join `typology` `brand_brand_id_typology` on((`phone_physicaldevice`.`brand_id` = `brand_brand_id_typology`.`id`))) left join `typology` `model_model_id_typology` on((`phone_physicaldevice`.`model_id` = `model_model_id_typology`.`id`))) on((`phone_telephonyci`.`id` = `phone_physicaldevice`.`id`))) join (`functionalci` `phone_functionalci` join `organization` `organization_org_id` on((`phone_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`phone_telephonyci`.`id` = `phone_functionalci`.`id`))) WHERE (coalesce((`brand_brand_id_typology`.`finalclass` = 'Brand'),1) AND coalesce((`model_model_id_typology`.`finalclass` = 'Model'),1) AND coalesce((`phone_telephonyci`.`finalclass` = 'Phone'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_physicaldevice`
--
DROP TABLE IF EXISTS `view_physicaldevice`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_physicaldevice`  AS SELECT DISTINCT `physicaldevice`.`id` AS `id`, `physicaldevice_functionalci`.`name` AS `name`, `physicaldevice_functionalci`.`description` AS `description`, `physicaldevice_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `physicaldevice_functionalci`.`business_criticity` AS `business_criticity`, `physicaldevice_functionalci`.`move2production` AS `move2production`, `physicaldevice`.`serialnumber` AS `serialnumber`, `physicaldevice`.`location_id` AS `location_id`, `location_location_id`.`name` AS `location_name`, `physicaldevice`.`status` AS `status`, `physicaldevice`.`brand_id` AS `brand_id`, `brand_brand_id_typology`.`name` AS `brand_name`, `physicaldevice`.`model_id` AS `model_id`, `model_model_id_typology`.`name` AS `model_name`, `physicaldevice`.`asset_number` AS `asset_number`, `physicaldevice`.`purchase_date` AS `purchase_date`, `physicaldevice`.`end_of_warranty` AS `end_of_warranty`, `physicaldevice_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`physicaldevice_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`physicaldevice`.`status` = 'obsolete'),0) AS `obsolescence_flag`, `physicaldevice_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`location_location_id`.`name`,'')) as char charset utf8mb4) AS `location_id_friendlyname`, coalesce((`location_location_id`.`status` = 'inactive'),0) AS `location_id_obsolescence_flag`, cast(concat(coalesce(`brand_brand_id_typology`.`name`,'')) as char charset utf8mb4) AS `brand_id_friendlyname`, cast(concat(coalesce(`model_model_id_typology`.`name`,'')) as char charset utf8mb4) AS `model_id_friendlyname` FROM ((((`physicaldevice` left join `location` `location_location_id` on((`physicaldevice`.`location_id` = `location_location_id`.`id`))) left join `typology` `brand_brand_id_typology` on((`physicaldevice`.`brand_id` = `brand_brand_id_typology`.`id`))) left join `typology` `model_model_id_typology` on((`physicaldevice`.`model_id` = `model_model_id_typology`.`id`))) join (`functionalci` `physicaldevice_functionalci` join `organization` `organization_org_id` on((`physicaldevice_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`physicaldevice`.`id` = `physicaldevice_functionalci`.`id`))) WHERE (coalesce((`brand_brand_id_typology`.`finalclass` = 'Brand'),1) AND coalesce((`model_model_id_typology`.`finalclass` = 'Model'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_physicalinterface`
--
DROP TABLE IF EXISTS `view_physicalinterface`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_physicalinterface`  AS SELECT DISTINCT `physicalinterface`.`id` AS `id`, `physicalinterface_networkinterface`.`name` AS `name`, `physicalinterface_ipinterface`.`ipaddress` AS `ipaddress`, `physicalinterface_ipinterface`.`macaddress` AS `macaddress`, `physicalinterface_ipinterface`.`comment` AS `comment`, `physicalinterface_ipinterface`.`ipgateway` AS `ipgateway`, `physicalinterface_ipinterface`.`ipmask` AS `ipmask`, `physicalinterface_ipinterface`.`speed` AS `speed`, `physicalinterface`.`connectableci_id` AS `connectableci_id`, `connectableci_connectableci_id_functionalci`.`name` AS `connectableci_name`, `physicalinterface_networkinterface`.`finalclass` AS `finalclass`, cast(concat(coalesce(`physicalinterface_networkinterface`.`name`,''),coalesce(' ',''),coalesce(`connectableci_connectableci_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce(coalesce((`connectableci_connectableci_id_physicaldevice`.`status` = 'obsolete'),0),0) AS `obsolescence_flag`, `physicalinterface_networkinterface`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`connectableci_connectableci_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `connectableci_id_friendlyname`, `connectableci_connectableci_id_functionalci`.`finalclass` AS `connectableci_id_finalclass_recall`, coalesce((`connectableci_connectableci_id_physicaldevice`.`status` = 'obsolete'),0) AS `connectableci_id_obsolescence_flag` FROM (((`physicalinterface` join (`physicaldevice` `connectableci_connectableci_id_physicaldevice` join `functionalci` `connectableci_connectableci_id_functionalci` on((`connectableci_connectableci_id_physicaldevice`.`id` = `connectableci_connectableci_id_functionalci`.`id`))) on((`physicalinterface`.`connectableci_id` = `connectableci_connectableci_id_physicaldevice`.`id`))) join `ipinterface` `physicalinterface_ipinterface` on((`physicalinterface`.`id` = `physicalinterface_ipinterface`.`id`))) join `networkinterface` `physicalinterface_networkinterface` on((`physicalinterface`.`id` = `physicalinterface_networkinterface`.`id`))) WHERE coalesce((`connectableci_connectableci_id_physicaldevice`.`finalclass` in ('DatacenterDevice','NetworkDevice','Server','PC','Printer','StorageSystem','SANSwitch','TapeLibrary','NAS','ConnectableCI')),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_powerconnection`
--
DROP TABLE IF EXISTS `view_powerconnection`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_powerconnection`  AS SELECT DISTINCT `powerconnection_physicaldevice`.`id` AS `id`, `powerconnection_functionalci`.`name` AS `name`, `powerconnection_functionalci`.`description` AS `description`, `powerconnection_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `powerconnection_functionalci`.`business_criticity` AS `business_criticity`, `powerconnection_functionalci`.`move2production` AS `move2production`, `powerconnection_physicaldevice`.`serialnumber` AS `serialnumber`, `powerconnection_physicaldevice`.`location_id` AS `location_id`, `location_location_id`.`name` AS `location_name`, `powerconnection_physicaldevice`.`status` AS `status`, `powerconnection_physicaldevice`.`brand_id` AS `brand_id`, `brand_brand_id_typology`.`name` AS `brand_name`, `powerconnection_physicaldevice`.`model_id` AS `model_id`, `model_model_id_typology`.`name` AS `model_name`, `powerconnection_physicaldevice`.`asset_number` AS `asset_number`, `powerconnection_physicaldevice`.`purchase_date` AS `purchase_date`, `powerconnection_physicaldevice`.`end_of_warranty` AS `end_of_warranty`, `powerconnection_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`powerconnection_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`powerconnection_physicaldevice`.`status` = 'obsolete'),0) AS `obsolescence_flag`, `powerconnection_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`location_location_id`.`name`,'')) as char charset utf8mb4) AS `location_id_friendlyname`, coalesce((`location_location_id`.`status` = 'inactive'),0) AS `location_id_obsolescence_flag`, cast(concat(coalesce(`brand_brand_id_typology`.`name`,'')) as char charset utf8mb4) AS `brand_id_friendlyname`, cast(concat(coalesce(`model_model_id_typology`.`name`,'')) as char charset utf8mb4) AS `model_id_friendlyname` FROM ((((`physicaldevice` `powerconnection_physicaldevice` left join `location` `location_location_id` on((`powerconnection_physicaldevice`.`location_id` = `location_location_id`.`id`))) left join `typology` `brand_brand_id_typology` on((`powerconnection_physicaldevice`.`brand_id` = `brand_brand_id_typology`.`id`))) left join `typology` `model_model_id_typology` on((`powerconnection_physicaldevice`.`model_id` = `model_model_id_typology`.`id`))) join (`functionalci` `powerconnection_functionalci` join `organization` `organization_org_id` on((`powerconnection_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`powerconnection_physicaldevice`.`id` = `powerconnection_functionalci`.`id`))) WHERE (coalesce((`brand_brand_id_typology`.`finalclass` = 'Brand'),1) AND coalesce((`model_model_id_typology`.`finalclass` = 'Model'),1) AND coalesce((`powerconnection_physicaldevice`.`finalclass` in ('PowerSource','PDU','PowerConnection')),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_powersource`
--
DROP TABLE IF EXISTS `view_powersource`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_powersource`  AS SELECT DISTINCT `powersource_physicaldevice`.`id` AS `id`, `powersource_functionalci`.`name` AS `name`, `powersource_functionalci`.`description` AS `description`, `powersource_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `powersource_functionalci`.`business_criticity` AS `business_criticity`, `powersource_functionalci`.`move2production` AS `move2production`, `powersource_physicaldevice`.`serialnumber` AS `serialnumber`, `powersource_physicaldevice`.`location_id` AS `location_id`, `location_location_id`.`name` AS `location_name`, `powersource_physicaldevice`.`status` AS `status`, `powersource_physicaldevice`.`brand_id` AS `brand_id`, `brand_brand_id_typology`.`name` AS `brand_name`, `powersource_physicaldevice`.`model_id` AS `model_id`, `model_model_id_typology`.`name` AS `model_name`, `powersource_physicaldevice`.`asset_number` AS `asset_number`, `powersource_physicaldevice`.`purchase_date` AS `purchase_date`, `powersource_physicaldevice`.`end_of_warranty` AS `end_of_warranty`, `powersource_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`powersource_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`powersource_physicaldevice`.`status` = 'obsolete'),0) AS `obsolescence_flag`, `powersource_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`location_location_id`.`name`,'')) as char charset utf8mb4) AS `location_id_friendlyname`, coalesce((`location_location_id`.`status` = 'inactive'),0) AS `location_id_obsolescence_flag`, cast(concat(coalesce(`brand_brand_id_typology`.`name`,'')) as char charset utf8mb4) AS `brand_id_friendlyname`, cast(concat(coalesce(`model_model_id_typology`.`name`,'')) as char charset utf8mb4) AS `model_id_friendlyname` FROM ((((`physicaldevice` `powersource_physicaldevice` left join `location` `location_location_id` on((`powersource_physicaldevice`.`location_id` = `location_location_id`.`id`))) left join `typology` `brand_brand_id_typology` on((`powersource_physicaldevice`.`brand_id` = `brand_brand_id_typology`.`id`))) left join `typology` `model_model_id_typology` on((`powersource_physicaldevice`.`model_id` = `model_model_id_typology`.`id`))) join (`functionalci` `powersource_functionalci` join `organization` `organization_org_id` on((`powersource_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`powersource_physicaldevice`.`id` = `powersource_functionalci`.`id`))) WHERE (coalesce((`brand_brand_id_typology`.`finalclass` = 'Brand'),1) AND coalesce((`model_model_id_typology`.`finalclass` = 'Model'),1) AND coalesce((`powersource_physicaldevice`.`finalclass` = 'PowerSource'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_printer`
--
DROP TABLE IF EXISTS `view_printer`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_printer`  AS SELECT DISTINCT `printer_physicaldevice`.`id` AS `id`, `printer_functionalci`.`name` AS `name`, `printer_functionalci`.`description` AS `description`, `printer_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `printer_functionalci`.`business_criticity` AS `business_criticity`, `printer_functionalci`.`move2production` AS `move2production`, `printer_physicaldevice`.`serialnumber` AS `serialnumber`, `printer_physicaldevice`.`location_id` AS `location_id`, `location_location_id`.`name` AS `location_name`, `printer_physicaldevice`.`status` AS `status`, `printer_physicaldevice`.`brand_id` AS `brand_id`, `brand_brand_id_typology`.`name` AS `brand_name`, `printer_physicaldevice`.`model_id` AS `model_id`, `model_model_id_typology`.`name` AS `model_name`, `printer_physicaldevice`.`asset_number` AS `asset_number`, `printer_physicaldevice`.`purchase_date` AS `purchase_date`, `printer_physicaldevice`.`end_of_warranty` AS `end_of_warranty`, `printer_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`printer_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`printer_physicaldevice`.`status` = 'obsolete'),0) AS `obsolescence_flag`, `printer_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`location_location_id`.`name`,'')) as char charset utf8mb4) AS `location_id_friendlyname`, coalesce((`location_location_id`.`status` = 'inactive'),0) AS `location_id_obsolescence_flag`, cast(concat(coalesce(`brand_brand_id_typology`.`name`,'')) as char charset utf8mb4) AS `brand_id_friendlyname`, cast(concat(coalesce(`model_model_id_typology`.`name`,'')) as char charset utf8mb4) AS `model_id_friendlyname` FROM ((((`physicaldevice` `printer_physicaldevice` left join `location` `location_location_id` on((`printer_physicaldevice`.`location_id` = `location_location_id`.`id`))) left join `typology` `brand_brand_id_typology` on((`printer_physicaldevice`.`brand_id` = `brand_brand_id_typology`.`id`))) left join `typology` `model_model_id_typology` on((`printer_physicaldevice`.`model_id` = `model_model_id_typology`.`id`))) join (`functionalci` `printer_functionalci` join `organization` `organization_org_id` on((`printer_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`printer_physicaldevice`.`id` = `printer_functionalci`.`id`))) WHERE (coalesce((`brand_brand_id_typology`.`finalclass` = 'Brand'),1) AND coalesce((`model_model_id_typology`.`finalclass` = 'Model'),1) AND coalesce((`printer_physicaldevice`.`finalclass` = 'Printer'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_problem`
--
DROP TABLE IF EXISTS `view_problem`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_problem`  AS SELECT DISTINCT `problem`.`id` AS `id`, `problem_ticket`.`operational_status` AS `operational_status`, `problem_ticket`.`ref` AS `ref`, `problem_ticket`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `org_name`, `problem_ticket`.`caller_id` AS `caller_id`, `person_caller_id_contact`.`name` AS `caller_name`, `problem_ticket`.`team_id` AS `team_id`, `team_team_id_contact`.`email` AS `team_name`, `problem_ticket`.`agent_id` AS `agent_id`, `person_agent_id_contact`.`name` AS `agent_name`, `problem_ticket`.`title` AS `title`, `problem_ticket`.`description` AS `description`, `problem_ticket`.`start_date` AS `start_date`, `problem_ticket`.`end_date` AS `end_date`, `problem_ticket`.`last_update` AS `last_update`, `problem_ticket`.`close_date` AS `close_date`, `problem_ticket`.`private_log` AS `private_log`, `problem`.`status` AS `status`, `problem`.`service_id` AS `service_id`, `service_service_id`.`name` AS `service_name`, `problem`.`servicesubcategory_id` AS `servicesubcategory_id`, `servicesubcategory_servicesubcategory_id`.`name` AS `servicesubcategory_name`, `problem`.`product` AS `product`, `problem`.`impact` AS `impact`, `problem`.`urgency` AS `urgency`, `problem`.`priority` AS `priority`, `problem`.`related_change_id` AS `related_change_id`, `change_related_change_id_ticket`.`ref` AS `related_change_ref`, `problem`.`assignment_date` AS `assignment_date`, `problem`.`resolution_date` AS `resolution_date`, `problem_ticket`.`finalclass` AS `finalclass`, cast(concat(coalesce(`problem_ticket`.`ref`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`person_caller_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_caller_id_contact`.`name`,'')) as char charset utf8mb4) AS `caller_id_friendlyname`, coalesce((`person_caller_id_contact`.`status` = 'inactive'),0) AS `caller_id_obsolescence_flag`, cast(concat(coalesce(`team_team_id_contact`.`name`,'')) as char charset utf8mb4) AS `team_id_friendlyname`, coalesce((`team_team_id_contact`.`status` = 'inactive'),0) AS `team_id_obsolescence_flag`, cast(concat(coalesce(`person_agent_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_agent_id_contact`.`name`,'')) as char charset utf8mb4) AS `agent_id_friendlyname`, coalesce((`person_agent_id_contact`.`status` = 'inactive'),0) AS `agent_id_obsolescence_flag`, cast(concat(coalesce(`service_service_id`.`name`,'')) as char charset utf8mb4) AS `service_id_friendlyname`, cast(concat(coalesce(`servicesubcategory_servicesubcategory_id`.`name`,'')) as char charset utf8mb4) AS `servicesubcategory_id_friendlyname`, cast(concat(coalesce(`change_related_change_id_ticket`.`ref`,'')) as char charset utf8mb4) AS `related_change_id_friendlyname`, `change_related_change_id_ticket`.`finalclass` AS `related_change_id_finalclass_recall`, `problem_ticket`.`description_format` AS `description_format`, `problem_ticket`.`private_log_index` AS `private_log_index` FROM ((((`ticket_problem` `problem` left join `service` `service_service_id` on((`problem`.`service_id` = `service_service_id`.`id`))) left join `servicesubcategory` `servicesubcategory_servicesubcategory_id` on((`problem`.`servicesubcategory_id` = `servicesubcategory_servicesubcategory_id`.`id`))) left join `ticket` `change_related_change_id_ticket` on((`problem`.`related_change_id` = `change_related_change_id_ticket`.`id`))) join ((((`ticket` `problem_ticket` join `organization` `organization_org_id` on((`problem_ticket`.`org_id` = `organization_org_id`.`id`))) left join (`person` `person_caller_id` join `contact` `person_caller_id_contact` on((`person_caller_id`.`id` = `person_caller_id_contact`.`id`))) on((`problem_ticket`.`caller_id` = `person_caller_id`.`id`))) left join `contact` `team_team_id_contact` on((`problem_ticket`.`team_id` = `team_team_id_contact`.`id`))) left join (`person` `person_agent_id` join `contact` `person_agent_id_contact` on((`person_agent_id`.`id` = `person_agent_id_contact`.`id`))) on((`problem_ticket`.`agent_id` = `person_agent_id`.`id`))) on((`problem`.`id` = `problem_ticket`.`id`))) WHERE (coalesce((`team_team_id_contact`.`finalclass` = 'Team'),1) AND coalesce((`change_related_change_id_ticket`.`finalclass` in ('RoutineChange','ApprovedChange','NormalChange','EmergencyChange','Change')),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_providercontract`
--
DROP TABLE IF EXISTS `view_providercontract`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_providercontract`  AS SELECT DISTINCT `providercontract`.`id` AS `id`, `providercontract_contract`.`name` AS `name`, `providercontract_contract`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `providercontract_contract`.`description` AS `description`, `providercontract_contract`.`start_date` AS `start_date`, `providercontract_contract`.`end_date` AS `end_date`, `providercontract_contract`.`cost` AS `cost`, `providercontract_contract`.`cost_currency` AS `cost_currency`, `providercontract_contract`.`contracttype_id` AS `contracttype_id`, `contracttype_contracttype_id_typology`.`name` AS `contracttype_name`, `providercontract_contract`.`billing_frequency` AS `billing_frequency`, `providercontract_contract`.`cost_unit` AS `cost_unit`, `providercontract_contract`.`provider_id` AS `provider_id`, `organization_provider_id`.`name` AS `provider_name`, `providercontract_contract`.`status` AS `status`, `providercontract`.`sla` AS `sla`, `providercontract`.`coverage` AS `coverage`, `providercontract_contract`.`finalclass` AS `finalclass`, cast(concat(coalesce(`providercontract_contract`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`contracttype_contracttype_id_typology`.`name`,'')) as char charset utf8mb4) AS `contracttype_id_friendlyname`, cast(concat(coalesce(`organization_provider_id`.`name`,'')) as char charset utf8mb4) AS `provider_id_friendlyname`, coalesce((`organization_provider_id`.`status` = 'inactive'),0) AS `provider_id_obsolescence_flag` FROM (`providercontract` join (((`contract` `providercontract_contract` join `organization` `organization_org_id` on((`providercontract_contract`.`org_id` = `organization_org_id`.`id`))) left join `typology` `contracttype_contracttype_id_typology` on((`providercontract_contract`.`contracttype_id` = `contracttype_contracttype_id_typology`.`id`))) join `organization` `organization_provider_id` on((`providercontract_contract`.`provider_id` = `organization_provider_id`.`id`))) on((`providercontract`.`id` = `providercontract_contract`.`id`))) WHERE coalesce((`contracttype_contracttype_id_typology`.`finalclass` = 'ContractType'),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_rack`
--
DROP TABLE IF EXISTS `view_rack`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_rack`  AS SELECT DISTINCT `rack`.`id` AS `id`, `rack_functionalci`.`name` AS `name`, `rack_functionalci`.`description` AS `description`, `rack_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `rack_functionalci`.`business_criticity` AS `business_criticity`, `rack_functionalci`.`move2production` AS `move2production`, `rack_physicaldevice`.`serialnumber` AS `serialnumber`, `rack_physicaldevice`.`location_id` AS `location_id`, `location_location_id`.`name` AS `location_name`, `rack_physicaldevice`.`status` AS `status`, `rack_physicaldevice`.`brand_id` AS `brand_id`, `brand_brand_id_typology`.`name` AS `brand_name`, `rack_physicaldevice`.`model_id` AS `model_id`, `model_model_id_typology`.`name` AS `model_name`, `rack_physicaldevice`.`asset_number` AS `asset_number`, `rack_physicaldevice`.`purchase_date` AS `purchase_date`, `rack_physicaldevice`.`end_of_warranty` AS `end_of_warranty`, `rack`.`nb_u` AS `nb_u`, `rack_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`rack_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`rack_physicaldevice`.`status` = 'obsolete'),0) AS `obsolescence_flag`, `rack_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`location_location_id`.`name`,'')) as char charset utf8mb4) AS `location_id_friendlyname`, coalesce((`location_location_id`.`status` = 'inactive'),0) AS `location_id_obsolescence_flag`, cast(concat(coalesce(`brand_brand_id_typology`.`name`,'')) as char charset utf8mb4) AS `brand_id_friendlyname`, cast(concat(coalesce(`model_model_id_typology`.`name`,'')) as char charset utf8mb4) AS `model_id_friendlyname` FROM ((`rack` join (((`physicaldevice` `rack_physicaldevice` left join `location` `location_location_id` on((`rack_physicaldevice`.`location_id` = `location_location_id`.`id`))) left join `typology` `brand_brand_id_typology` on((`rack_physicaldevice`.`brand_id` = `brand_brand_id_typology`.`id`))) left join `typology` `model_model_id_typology` on((`rack_physicaldevice`.`model_id` = `model_model_id_typology`.`id`))) on((`rack`.`id` = `rack_physicaldevice`.`id`))) join (`functionalci` `rack_functionalci` join `organization` `organization_org_id` on((`rack_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`rack`.`id` = `rack_functionalci`.`id`))) WHERE (coalesce((`brand_brand_id_typology`.`finalclass` = 'Brand'),1) AND coalesce((`model_model_id_typology`.`finalclass` = 'Model'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_routinechange`
--
DROP TABLE IF EXISTS `view_routinechange`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_routinechange`  AS SELECT DISTINCT `routinechange_change`.`id` AS `id`, `routinechange_ticket`.`operational_status` AS `operational_status`, `routinechange_ticket`.`ref` AS `ref`, `routinechange_ticket`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `org_name`, `routinechange_ticket`.`caller_id` AS `caller_id`, `person_caller_id_contact`.`name` AS `caller_name`, `routinechange_ticket`.`team_id` AS `team_id`, `team_team_id_contact`.`email` AS `team_name`, `routinechange_ticket`.`agent_id` AS `agent_id`, `person_agent_id_contact`.`name` AS `agent_name`, `routinechange_ticket`.`title` AS `title`, `routinechange_ticket`.`description` AS `description`, `routinechange_ticket`.`start_date` AS `start_date`, `routinechange_ticket`.`end_date` AS `end_date`, `routinechange_ticket`.`last_update` AS `last_update`, `routinechange_ticket`.`close_date` AS `close_date`, `routinechange_ticket`.`private_log` AS `private_log`, `routinechange_change`.`status` AS `status`, `routinechange_change`.`reason` AS `reason`, `routinechange_change`.`requestor_id` AS `requestor_id`, `person_requestor_id_contact`.`email` AS `requestor_email`, `routinechange_change`.`creation_date` AS `creation_date`, `routinechange_change`.`impact` AS `impact`, `routinechange_change`.`supervisor_group_id` AS `supervisor_group_id`, `team_supervisor_group_id_contact`.`name` AS `supervisor_group_name`, `routinechange_change`.`supervisor_id` AS `supervisor_id`, `person_supervisor_id_contact`.`email` AS `supervisor_email`, `routinechange_change`.`manager_group_id` AS `manager_group_id`, `team_manager_group_id_contact`.`name` AS `manager_group_name`, `routinechange_change`.`manager_id` AS `manager_id`, `person_manager_id_contact`.`email` AS `manager_email`, `routinechange_change`.`outage` AS `outage`, `routinechange_change`.`fallback` AS `fallback`, `routinechange_change`.`parent_id` AS `parent_id`, `change_parent_id_ticket`.`ref` AS `parent_name`, `routinechange_ticket`.`finalclass` AS `finalclass`, cast(concat(coalesce(`routinechange_ticket`.`ref`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`person_caller_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_caller_id_contact`.`name`,'')) as char charset utf8mb4) AS `caller_id_friendlyname`, coalesce((`person_caller_id_contact`.`status` = 'inactive'),0) AS `caller_id_obsolescence_flag`, cast(concat(coalesce(`team_team_id_contact`.`name`,'')) as char charset utf8mb4) AS `team_id_friendlyname`, coalesce((`team_team_id_contact`.`status` = 'inactive'),0) AS `team_id_obsolescence_flag`, cast(concat(coalesce(`person_agent_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_agent_id_contact`.`name`,'')) as char charset utf8mb4) AS `agent_id_friendlyname`, coalesce((`person_agent_id_contact`.`status` = 'inactive'),0) AS `agent_id_obsolescence_flag`, cast(concat(coalesce(`person_requestor_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_requestor_id_contact`.`name`,'')) as char charset utf8mb4) AS `requestor_id_friendlyname`, coalesce((`person_requestor_id_contact`.`status` = 'inactive'),0) AS `requestor_id_obsolescence_flag`, cast(concat(coalesce(`team_supervisor_group_id_contact`.`name`,'')) as char charset utf8mb4) AS `supervisor_group_id_friendlyname`, coalesce((`team_supervisor_group_id_contact`.`status` = 'inactive'),0) AS `supervisor_group_id_obsolescence_flag`, cast(concat(coalesce(`person_supervisor_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_supervisor_id_contact`.`name`,'')) as char charset utf8mb4) AS `supervisor_id_friendlyname`, coalesce((`person_supervisor_id_contact`.`status` = 'inactive'),0) AS `supervisor_id_obsolescence_flag`, cast(concat(coalesce(`team_manager_group_id_contact`.`name`,'')) as char charset utf8mb4) AS `manager_group_id_friendlyname`, coalesce((`team_manager_group_id_contact`.`status` = 'inactive'),0) AS `manager_group_id_obsolescence_flag`, cast(concat(coalesce(`person_manager_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_manager_id_contact`.`name`,'')) as char charset utf8mb4) AS `manager_id_friendlyname`, coalesce((`person_manager_id_contact`.`status` = 'inactive'),0) AS `manager_id_obsolescence_flag`, cast(concat(coalesce(`change_parent_id_ticket`.`ref`,'')) as char charset utf8mb4) AS `parent_id_friendlyname`, `change_parent_id_ticket`.`finalclass` AS `parent_id_finalclass_recall`, `routinechange_ticket`.`description_format` AS `description_format`, `routinechange_ticket`.`private_log_index` AS `private_log_index` FROM (((((((`change` `routinechange_change` left join (`person` `person_requestor_id` join `contact` `person_requestor_id_contact` on((`person_requestor_id`.`id` = `person_requestor_id_contact`.`id`))) on((`routinechange_change`.`requestor_id` = `person_requestor_id`.`id`))) left join `contact` `team_supervisor_group_id_contact` on((`routinechange_change`.`supervisor_group_id` = `team_supervisor_group_id_contact`.`id`))) left join (`person` `person_supervisor_id` join `contact` `person_supervisor_id_contact` on((`person_supervisor_id`.`id` = `person_supervisor_id_contact`.`id`))) on((`routinechange_change`.`supervisor_id` = `person_supervisor_id`.`id`))) left join `contact` `team_manager_group_id_contact` on((`routinechange_change`.`manager_group_id` = `team_manager_group_id_contact`.`id`))) left join (`person` `person_manager_id` join `contact` `person_manager_id_contact` on((`person_manager_id`.`id` = `person_manager_id_contact`.`id`))) on((`routinechange_change`.`manager_id` = `person_manager_id`.`id`))) left join `ticket` `change_parent_id_ticket` on((`routinechange_change`.`parent_id` = `change_parent_id_ticket`.`id`))) join ((((`ticket` `routinechange_ticket` join `organization` `organization_org_id` on((`routinechange_ticket`.`org_id` = `organization_org_id`.`id`))) left join (`person` `person_caller_id` join `contact` `person_caller_id_contact` on((`person_caller_id`.`id` = `person_caller_id_contact`.`id`))) on((`routinechange_ticket`.`caller_id` = `person_caller_id`.`id`))) left join `contact` `team_team_id_contact` on((`routinechange_ticket`.`team_id` = `team_team_id_contact`.`id`))) left join (`person` `person_agent_id` join `contact` `person_agent_id_contact` on((`person_agent_id`.`id` = `person_agent_id_contact`.`id`))) on((`routinechange_ticket`.`agent_id` = `person_agent_id`.`id`))) on((`routinechange_change`.`id` = `routinechange_ticket`.`id`))) WHERE (coalesce((`team_team_id_contact`.`finalclass` = 'Team'),1) AND coalesce((`team_supervisor_group_id_contact`.`finalclass` = 'Team'),1) AND coalesce((`team_manager_group_id_contact`.`finalclass` = 'Team'),1) AND coalesce((`change_parent_id_ticket`.`finalclass` in ('RoutineChange','ApprovedChange','NormalChange','EmergencyChange','Change')),1) AND coalesce((`routinechange_change`.`finalclass` = 'RoutineChange'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_sanswitch`
--
DROP TABLE IF EXISTS `view_sanswitch`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_sanswitch`  AS SELECT DISTINCT `sanswitch_datacenterdevice`.`id` AS `id`, `sanswitch_functionalci`.`name` AS `name`, `sanswitch_functionalci`.`description` AS `description`, `sanswitch_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `sanswitch_functionalci`.`business_criticity` AS `business_criticity`, `sanswitch_functionalci`.`move2production` AS `move2production`, `sanswitch_physicaldevice`.`serialnumber` AS `serialnumber`, `sanswitch_physicaldevice`.`location_id` AS `location_id`, `location_location_id`.`name` AS `location_name`, `sanswitch_physicaldevice`.`status` AS `status`, `sanswitch_physicaldevice`.`brand_id` AS `brand_id`, `brand_brand_id_typology`.`name` AS `brand_name`, `sanswitch_physicaldevice`.`model_id` AS `model_id`, `model_model_id_typology`.`name` AS `model_name`, `sanswitch_physicaldevice`.`asset_number` AS `asset_number`, `sanswitch_physicaldevice`.`purchase_date` AS `purchase_date`, `sanswitch_physicaldevice`.`end_of_warranty` AS `end_of_warranty`, `sanswitch_datacenterdevice`.`rack_id` AS `rack_id`, `rack_rack_id_functionalci`.`name` AS `rack_name`, `sanswitch_datacenterdevice`.`enclosure_id` AS `enclosure_id`, `enclosure_enclosure_id_functionalci`.`name` AS `enclosure_name`, `sanswitch_datacenterdevice`.`nb_u` AS `nb_u`, `sanswitch_datacenterdevice`.`managementip` AS `managementip`, `sanswitch_datacenterdevice`.`powera_id` AS `powerA_id`, `powerconnection_powera_id_functionalci`.`name` AS `powerA_name`, `sanswitch_datacenterdevice`.`powerB_id` AS `powerB_id`, `powerconnection_powerb_id_functionalci`.`name` AS `powerB_name`, `sanswitch_datacenterdevice`.`redundancy` AS `redundancy`, `sanswitch_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`sanswitch_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`sanswitch_physicaldevice`.`status` = 'obsolete'),0) AS `obsolescence_flag`, `sanswitch_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`location_location_id`.`name`,'')) as char charset utf8mb4) AS `location_id_friendlyname`, coalesce((`location_location_id`.`status` = 'inactive'),0) AS `location_id_obsolescence_flag`, cast(concat(coalesce(`brand_brand_id_typology`.`name`,'')) as char charset utf8mb4) AS `brand_id_friendlyname`, cast(concat(coalesce(`model_model_id_typology`.`name`,'')) as char charset utf8mb4) AS `model_id_friendlyname`, cast(concat(coalesce(`rack_rack_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `rack_id_friendlyname`, coalesce((`rack_rack_id_physicaldevice`.`status` = 'obsolete'),0) AS `rack_id_obsolescence_flag`, cast(concat(coalesce(`enclosure_enclosure_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `enclosure_id_friendlyname`, coalesce((`enclosure_enclosure_id_physicaldevice`.`status` = 'obsolete'),0) AS `enclosure_id_obsolescence_flag`, cast(concat(coalesce(`powerconnection_powera_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `powerA_id_friendlyname`, `powerconnection_powera_id_functionalci`.`finalclass` AS `powerA_id_finalclass_recall`, coalesce((`powerconnection_powera_id_physicaldevice`.`status` = 'obsolete'),0) AS `powerA_id_obsolescence_flag`, cast(concat(coalesce(`powerconnection_powerb_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `powerB_id_friendlyname`, `powerconnection_powerb_id_functionalci`.`finalclass` AS `powerB_id_finalclass_recall`, coalesce((`powerconnection_powerb_id_physicaldevice`.`status` = 'obsolete'),0) AS `powerB_id_obsolescence_flag` FROM ((((((`datacenterdevice` `sanswitch_datacenterdevice` left join (`physicaldevice` `rack_rack_id_physicaldevice` join `functionalci` `rack_rack_id_functionalci` on((`rack_rack_id_physicaldevice`.`id` = `rack_rack_id_functionalci`.`id`))) on((`sanswitch_datacenterdevice`.`rack_id` = `rack_rack_id_physicaldevice`.`id`))) left join (`physicaldevice` `enclosure_enclosure_id_physicaldevice` join `functionalci` `enclosure_enclosure_id_functionalci` on((`enclosure_enclosure_id_physicaldevice`.`id` = `enclosure_enclosure_id_functionalci`.`id`))) on((`sanswitch_datacenterdevice`.`enclosure_id` = `enclosure_enclosure_id_physicaldevice`.`id`))) left join (`physicaldevice` `powerconnection_powera_id_physicaldevice` join `functionalci` `powerconnection_powera_id_functionalci` on((`powerconnection_powera_id_physicaldevice`.`id` = `powerconnection_powera_id_functionalci`.`id`))) on((`sanswitch_datacenterdevice`.`powera_id` = `powerconnection_powera_id_physicaldevice`.`id`))) left join (`physicaldevice` `powerconnection_powerb_id_physicaldevice` join `functionalci` `powerconnection_powerb_id_functionalci` on((`powerconnection_powerb_id_physicaldevice`.`id` = `powerconnection_powerb_id_functionalci`.`id`))) on((`sanswitch_datacenterdevice`.`powerB_id` = `powerconnection_powerb_id_physicaldevice`.`id`))) join (((`physicaldevice` `sanswitch_physicaldevice` left join `location` `location_location_id` on((`sanswitch_physicaldevice`.`location_id` = `location_location_id`.`id`))) left join `typology` `brand_brand_id_typology` on((`sanswitch_physicaldevice`.`brand_id` = `brand_brand_id_typology`.`id`))) left join `typology` `model_model_id_typology` on((`sanswitch_physicaldevice`.`model_id` = `model_model_id_typology`.`id`))) on((`sanswitch_datacenterdevice`.`id` = `sanswitch_physicaldevice`.`id`))) join (`functionalci` `sanswitch_functionalci` join `organization` `organization_org_id` on((`sanswitch_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`sanswitch_datacenterdevice`.`id` = `sanswitch_functionalci`.`id`))) WHERE (coalesce((`brand_brand_id_typology`.`finalclass` = 'Brand'),1) AND coalesce((`model_model_id_typology`.`finalclass` = 'Model'),1) AND coalesce((`rack_rack_id_physicaldevice`.`finalclass` = 'Rack'),1) AND coalesce((`enclosure_enclosure_id_physicaldevice`.`finalclass` = 'Enclosure'),1) AND coalesce((`powerconnection_powera_id_physicaldevice`.`finalclass` in ('PowerSource','PDU','PowerConnection')),1) AND coalesce((`powerconnection_powerb_id_physicaldevice`.`finalclass` in ('PowerSource','PDU','PowerConnection')),1) AND coalesce((`sanswitch_datacenterdevice`.`finalclass` = 'SANSwitch'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_server`
--
DROP TABLE IF EXISTS `view_server`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_server`  AS SELECT DISTINCT `server`.`id` AS `id`, `server_functionalci`.`name` AS `name`, `server_functionalci`.`description` AS `description`, `server_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `server_functionalci`.`business_criticity` AS `business_criticity`, `server_functionalci`.`move2production` AS `move2production`, `server_physicaldevice`.`serialnumber` AS `serialnumber`, `server_physicaldevice`.`location_id` AS `location_id`, `location_location_id`.`name` AS `location_name`, `server_physicaldevice`.`status` AS `status`, `server_physicaldevice`.`brand_id` AS `brand_id`, `brand_brand_id_typology`.`name` AS `brand_name`, `server_physicaldevice`.`model_id` AS `model_id`, `model_model_id_typology`.`name` AS `model_name`, `server_physicaldevice`.`asset_number` AS `asset_number`, `server_physicaldevice`.`purchase_date` AS `purchase_date`, `server_physicaldevice`.`end_of_warranty` AS `end_of_warranty`, `server_datacenterdevice`.`rack_id` AS `rack_id`, `rack_rack_id_functionalci`.`name` AS `rack_name`, `server_datacenterdevice`.`enclosure_id` AS `enclosure_id`, `enclosure_enclosure_id_functionalci`.`name` AS `enclosure_name`, `server_datacenterdevice`.`nb_u` AS `nb_u`, `server_datacenterdevice`.`managementip` AS `managementip`, `server_datacenterdevice`.`powera_id` AS `powerA_id`, `powerconnection_powera_id_functionalci`.`name` AS `powerA_name`, `server_datacenterdevice`.`powerB_id` AS `powerB_id`, `powerconnection_powerb_id_functionalci`.`name` AS `powerB_name`, `server_datacenterdevice`.`redundancy` AS `redundancy`, `server`.`osfamily_id` AS `osfamily_id`, `osfamily_osfamily_id_typology`.`name` AS `osfamily_name`, `server`.`osversion_id` AS `osversion_id`, `osversion_osversion_id_typology`.`name` AS `osversion_name`, `server`.`oslicence_id` AS `oslicence_id`, `oslicence_oslicence_id_licence`.`name` AS `oslicence_name`, `server`.`cpu` AS `cpu`, `server`.`ram` AS `ram`, `server_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`server_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`server_physicaldevice`.`status` = 'obsolete'),0) AS `obsolescence_flag`, `server_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`location_location_id`.`name`,'')) as char charset utf8mb4) AS `location_id_friendlyname`, coalesce((`location_location_id`.`status` = 'inactive'),0) AS `location_id_obsolescence_flag`, cast(concat(coalesce(`brand_brand_id_typology`.`name`,'')) as char charset utf8mb4) AS `brand_id_friendlyname`, cast(concat(coalesce(`model_model_id_typology`.`name`,'')) as char charset utf8mb4) AS `model_id_friendlyname`, cast(concat(coalesce(`rack_rack_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `rack_id_friendlyname`, coalesce((`rack_rack_id_physicaldevice`.`status` = 'obsolete'),0) AS `rack_id_obsolescence_flag`, cast(concat(coalesce(`enclosure_enclosure_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `enclosure_id_friendlyname`, coalesce((`enclosure_enclosure_id_physicaldevice`.`status` = 'obsolete'),0) AS `enclosure_id_obsolescence_flag`, cast(concat(coalesce(`powerconnection_powera_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `powerA_id_friendlyname`, `powerconnection_powera_id_functionalci`.`finalclass` AS `powerA_id_finalclass_recall`, coalesce((`powerconnection_powera_id_physicaldevice`.`status` = 'obsolete'),0) AS `powerA_id_obsolescence_flag`, cast(concat(coalesce(`powerconnection_powerb_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `powerB_id_friendlyname`, `powerconnection_powerb_id_functionalci`.`finalclass` AS `powerB_id_finalclass_recall`, coalesce((`powerconnection_powerb_id_physicaldevice`.`status` = 'obsolete'),0) AS `powerB_id_obsolescence_flag`, cast(concat(coalesce(`osfamily_osfamily_id_typology`.`name`,'')) as char charset utf8mb4) AS `osfamily_id_friendlyname`, cast(concat(coalesce(`osversion_osversion_id_typology`.`name`,'')) as char charset utf8mb4) AS `osversion_id_friendlyname`, cast(concat(coalesce(`oslicence_oslicence_id_licence`.`name`,'')) as char charset utf8mb4) AS `oslicence_id_friendlyname`, coalesce(((`oslicence_oslicence_id_licence`.`perpetual` = 'no') and (isnull(`oslicence_oslicence_id_licence`.`end_date`) = 0) and (`oslicence_oslicence_id_licence`.`end_date` < date_format((now() - interval 15 month),'%Y-%m-%d 00:00:00'))),0) AS `oslicence_id_obsolescence_flag` FROM ((((((`server` left join `typology` `osfamily_osfamily_id_typology` on((`server`.`osfamily_id` = `osfamily_osfamily_id_typology`.`id`))) left join `typology` `osversion_osversion_id_typology` on((`server`.`osversion_id` = `osversion_osversion_id_typology`.`id`))) left join `licence` `oslicence_oslicence_id_licence` on((`server`.`oslicence_id` = `oslicence_oslicence_id_licence`.`id`))) join ((((`datacenterdevice` `server_datacenterdevice` left join (`physicaldevice` `rack_rack_id_physicaldevice` join `functionalci` `rack_rack_id_functionalci` on((`rack_rack_id_physicaldevice`.`id` = `rack_rack_id_functionalci`.`id`))) on((`server_datacenterdevice`.`rack_id` = `rack_rack_id_physicaldevice`.`id`))) left join (`physicaldevice` `enclosure_enclosure_id_physicaldevice` join `functionalci` `enclosure_enclosure_id_functionalci` on((`enclosure_enclosure_id_physicaldevice`.`id` = `enclosure_enclosure_id_functionalci`.`id`))) on((`server_datacenterdevice`.`enclosure_id` = `enclosure_enclosure_id_physicaldevice`.`id`))) left join (`physicaldevice` `powerconnection_powera_id_physicaldevice` join `functionalci` `powerconnection_powera_id_functionalci` on((`powerconnection_powera_id_physicaldevice`.`id` = `powerconnection_powera_id_functionalci`.`id`))) on((`server_datacenterdevice`.`powera_id` = `powerconnection_powera_id_physicaldevice`.`id`))) left join (`physicaldevice` `powerconnection_powerb_id_physicaldevice` join `functionalci` `powerconnection_powerb_id_functionalci` on((`powerconnection_powerb_id_physicaldevice`.`id` = `powerconnection_powerb_id_functionalci`.`id`))) on((`server_datacenterdevice`.`powerB_id` = `powerconnection_powerb_id_physicaldevice`.`id`))) on((`server`.`id` = `server_datacenterdevice`.`id`))) join (((`physicaldevice` `server_physicaldevice` left join `location` `location_location_id` on((`server_physicaldevice`.`location_id` = `location_location_id`.`id`))) left join `typology` `brand_brand_id_typology` on((`server_physicaldevice`.`brand_id` = `brand_brand_id_typology`.`id`))) left join `typology` `model_model_id_typology` on((`server_physicaldevice`.`model_id` = `model_model_id_typology`.`id`))) on((`server`.`id` = `server_physicaldevice`.`id`))) join (`functionalci` `server_functionalci` join `organization` `organization_org_id` on((`server_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`server`.`id` = `server_functionalci`.`id`))) WHERE (coalesce((`brand_brand_id_typology`.`finalclass` = 'Brand'),1) AND coalesce((`model_model_id_typology`.`finalclass` = 'Model'),1) AND coalesce((`rack_rack_id_physicaldevice`.`finalclass` = 'Rack'),1) AND coalesce((`enclosure_enclosure_id_physicaldevice`.`finalclass` = 'Enclosure'),1) AND coalesce((`powerconnection_powera_id_physicaldevice`.`finalclass` in ('PowerSource','PDU','PowerConnection')),1) AND coalesce((`powerconnection_powerb_id_physicaldevice`.`finalclass` in ('PowerSource','PDU','PowerConnection')),1) AND coalesce((`osfamily_osfamily_id_typology`.`finalclass` = 'OSFamily'),1) AND coalesce((`osversion_osversion_id_typology`.`finalclass` = 'OSVersion'),1) AND coalesce((`oslicence_oslicence_id_licence`.`finalclass` = 'OSLicence'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_service`
--
DROP TABLE IF EXISTS `view_service`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_service`  AS SELECT DISTINCT `service`.`id` AS `id`, `service`.`name` AS `name`, `service`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `service`.`servicefamily_id` AS `servicefamily_id`, `servicefamily_servicefamily_id`.`name` AS `servicefamily_name`, `service`.`description` AS `description`, `service`.`status` AS `status`, `service`.`icon_mimetype` AS `icon`, cast(concat(coalesce(`service`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`servicefamily_servicefamily_id`.`name`,'')) as char charset utf8mb4) AS `servicefamily_id_friendlyname`, `service`.`icon_data` AS `icon_data`, `service`.`icon_filename` AS `icon_filename` FROM ((`service` join `organization` `organization_org_id` on((`service`.`org_id` = `organization_org_id`.`id`))) left join `servicefamilly` `servicefamily_servicefamily_id` on((`service`.`servicefamily_id` = `servicefamily_servicefamily_id`.`id`))) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_servicefamily`
--
DROP TABLE IF EXISTS `view_servicefamily`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_servicefamily`  AS SELECT DISTINCT `servicefamily`.`id` AS `id`, `servicefamily`.`name` AS `name`, `servicefamily`.`icon_mimetype` AS `icon`, cast(concat(coalesce(`servicefamily`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, `servicefamily`.`icon_data` AS `icon_data`, `servicefamily`.`icon_filename` AS `icon_filename` FROM `servicefamilly` AS `servicefamily` WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_servicesubcategory`
--
DROP TABLE IF EXISTS `view_servicesubcategory`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_servicesubcategory`  AS SELECT DISTINCT `servicesubcategory`.`id` AS `id`, `servicesubcategory`.`name` AS `name`, `servicesubcategory`.`description` AS `description`, `servicesubcategory`.`service_id` AS `service_id`, `service_service_id`.`org_id` AS `service_org_id`, `service_service_id`.`name` AS `service_name`, `organization_org_id`.`name` AS `service_provider`, `servicesubcategory`.`request_type` AS `request_type`, `servicesubcategory`.`status` AS `status`, cast(concat(coalesce(`servicesubcategory`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`service_service_id`.`name`,'')) as char charset utf8mb4) AS `service_id_friendlyname`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `service_org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `service_org_id_obsolescence_flag` FROM (`servicesubcategory` join (`service` `service_service_id` join `organization` `organization_org_id` on((`service_service_id`.`org_id` = `organization_org_id`.`id`))) on((`servicesubcategory`.`service_id` = `service_service_id`.`id`))) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_sla`
--
DROP TABLE IF EXISTS `view_sla`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_sla`  AS SELECT DISTINCT `sla`.`id` AS `id`, `sla`.`name` AS `name`, `sla`.`description` AS `description`, `sla`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, cast(concat(coalesce(`sla`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag` FROM (`sla` join `organization` `organization_org_id` on((`sla`.`org_id` = `organization_org_id`.`id`))) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_slt`
--
DROP TABLE IF EXISTS `view_slt`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_slt`  AS SELECT DISTINCT `slt`.`id` AS `id`, `slt`.`name` AS `name`, `slt`.`priority` AS `priority`, `slt`.`request_type` AS `request_type`, `slt`.`metric` AS `metric`, `slt`.`value` AS `value`, `slt`.`unit` AS `unit`, cast(concat(coalesce(`slt`.`name`,'')) as char charset utf8mb4) AS `friendlyname` FROM `slt` WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_software`
--
DROP TABLE IF EXISTS `view_software`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_software`  AS SELECT DISTINCT `software`.`id` AS `id`, `software`.`name` AS `name`, `software`.`vendor` AS `vendor`, `software`.`version` AS `version`, `software`.`type` AS `type`, cast(concat(coalesce(`software`.`name`,''),coalesce(' ',''),coalesce(`software`.`version`,'')) as char charset utf8mb4) AS `friendlyname` FROM `software` WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_softwareinstance`
--
DROP TABLE IF EXISTS `view_softwareinstance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_softwareinstance`  AS SELECT DISTINCT `softwareinstance`.`id` AS `id`, `softwareinstance_functionalci`.`name` AS `name`, `softwareinstance_functionalci`.`description` AS `description`, `softwareinstance_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `softwareinstance_functionalci`.`business_criticity` AS `business_criticity`, `softwareinstance_functionalci`.`move2production` AS `move2production`, `softwareinstance`.`functionalci_id` AS `system_id`, `functionalci_system_id`.`name` AS `system_name`, `softwareinstance`.`software_id` AS `software_id`, `software_software_id`.`name` AS `software_name`, `softwareinstance`.`softwarelicence_id` AS `softwarelicence_id`, `softwarelicence_softwarelicence_id_licence`.`name` AS `softwarelicence_name`, `softwareinstance`.`path` AS `path`, `softwareinstance`.`status` AS `status`, `softwareinstance_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`softwareinstance_functionalci`.`name`,''),coalesce(' ',''),coalesce(`functionalci_system_id`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`softwareinstance`.`status` = 'inactive'),0) AS `obsolescence_flag`, `softwareinstance_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, if((`functionalci_system_id`.`finalclass` in ('Middleware','DBServer','WebServer','PCSoftware','OtherSoftware')),cast(concat(coalesce(`functionalci_system_id`.`name`,''),coalesce(' ',''),coalesce(`functionalci_system_id1`.`name`,'')) as char charset utf8mb4),cast(concat(coalesce(`functionalci_system_id`.`name`,'')) as char charset utf8mb4)) AS `system_id_friendlyname`, `functionalci_system_id`.`finalclass` AS `system_id_finalclass_recall`, if((`functionalci_system_id`.`finalclass` = 'FunctionalCI'),coalesce(0,0),if((`functionalci_system_id`.`finalclass` in ('Hypervisor','Farm','VirtualMachine')),coalesce((`functionalci_system_id_poly_virtualdevice`.`status` = 'obsolete'),0),if((`functionalci_system_id`.`finalclass` = 'WebApplication'),coalesce(coalesce((`webserver_webserver_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_system_id`.`finalclass` = 'DatabaseSchema'),coalesce(coalesce((`dbserver_dbserver_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_system_id`.`finalclass` = 'MiddlewareInstance'),coalesce(coalesce((`middleware_middleware_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_system_id`.`finalclass` in ('Middleware','DBServer','WebServer','PCSoftware','OtherSoftware')),coalesce((`functionalci_system_id_poly_softwareinstance`.`status` = 'inactive'),0),if((`functionalci_system_id`.`finalclass` = 'BusinessProcess'),coalesce((`functionalci_system_id_poly_businessprocess`.`status` = 'inactive'),0),if((`functionalci_system_id`.`finalclass` = 'ApplicationSolution'),coalesce((`functionalci_system_id_poly_applicationsolution`.`status` = 'inactive'),0),coalesce((`functionalci_system_id_poly_physicaldevice`.`status` = 'obsolete'),0))))))))) AS `system_id_obsolescence_flag`, cast(concat(coalesce(`software_software_id`.`name`,''),coalesce(' ',''),coalesce(`software_software_id`.`version`,'')) as char charset utf8mb4) AS `software_id_friendlyname`, cast(concat(coalesce(`softwarelicence_softwarelicence_id_licence`.`name`,'')) as char charset utf8mb4) AS `softwarelicence_id_friendlyname`, coalesce(((`softwarelicence_softwarelicence_id_licence`.`perpetual` = 'no') and (isnull(`softwarelicence_softwarelicence_id_licence`.`end_date`) = 0) and (`softwarelicence_softwarelicence_id_licence`.`end_date` < date_format((now() - interval 15 month),'%Y-%m-%d 00:00:00'))),0) AS `softwarelicence_id_obsolescence_flag` FROM ((((`softwareinstance` join ((((((((`functionalci` `functionalci_system_id` left join (`softwareinstance` `functionalci_system_id_poly_softwareinstance` join `functionalci` `functionalci_system_id1` on((`functionalci_system_id_poly_softwareinstance`.`functionalci_id` = `functionalci_system_id1`.`id`))) on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_softwareinstance`.`id`))) left join `virtualdevice` `functionalci_system_id_poly_virtualdevice` on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_virtualdevice`.`id`))) left join (`webapplication` `functionalci_system_id_poly_webapplication` join `softwareinstance` `webserver_webserver_id_softwareinstance` on((`functionalci_system_id_poly_webapplication`.`webserver_id` = `webserver_webserver_id_softwareinstance`.`id`))) on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_webapplication`.`id`))) left join (`databaseschema` `functionalci_system_id_poly_databaseschema` join `softwareinstance` `dbserver_dbserver_id_softwareinstance` on((`functionalci_system_id_poly_databaseschema`.`dbserver_id` = `dbserver_dbserver_id_softwareinstance`.`id`))) on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_databaseschema`.`id`))) left join (`middlewareinstance` `functionalci_system_id_poly_middlewareinstance` join `softwareinstance` `middleware_middleware_id_softwareinstance` on((`functionalci_system_id_poly_middlewareinstance`.`middleware_id` = `middleware_middleware_id_softwareinstance`.`id`))) on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_middlewareinstance`.`id`))) left join `businessprocess` `functionalci_system_id_poly_businessprocess` on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_businessprocess`.`id`))) left join `applicationsolution` `functionalci_system_id_poly_applicationsolution` on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_applicationsolution`.`id`))) left join `physicaldevice` `functionalci_system_id_poly_physicaldevice` on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_physicaldevice`.`id`))) on((`softwareinstance`.`functionalci_id` = `functionalci_system_id`.`id`))) left join `software` `software_software_id` on((`softwareinstance`.`software_id` = `software_software_id`.`id`))) left join `licence` `softwarelicence_softwarelicence_id_licence` on((`softwareinstance`.`softwarelicence_id` = `softwarelicence_softwarelicence_id_licence`.`id`))) join (`functionalci` `softwareinstance_functionalci` join `organization` `organization_org_id` on((`softwareinstance_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`softwareinstance`.`id` = `softwareinstance_functionalci`.`id`))) WHERE (coalesce((`webserver_webserver_id_softwareinstance`.`finalclass` = 'WebServer'),1) AND coalesce((`dbserver_dbserver_id_softwareinstance`.`finalclass` = 'DBServer'),1) AND coalesce((`middleware_middleware_id_softwareinstance`.`finalclass` = 'Middleware'),1) AND coalesce((`softwarelicence_softwarelicence_id_licence`.`finalclass` = 'SoftwareLicence'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_softwarelicence`
--
DROP TABLE IF EXISTS `view_softwarelicence`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_softwarelicence`  AS SELECT DISTINCT `softwarelicence`.`id` AS `id`, `softwarelicence_licence`.`name` AS `name`, `softwarelicence_licence`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `softwarelicence_licence`.`usage_limit` AS `usage_limit`, `softwarelicence_licence`.`description` AS `description`, `softwarelicence_licence`.`start_date` AS `start_date`, `softwarelicence_licence`.`end_date` AS `end_date`, `softwarelicence_licence`.`licence_key` AS `licence_key`, `softwarelicence_licence`.`perpetual` AS `perpetual`, `softwarelicence`.`software_id` AS `software_id`, `software_software_id`.`name` AS `software_name`, `softwarelicence_licence`.`finalclass` AS `finalclass`, cast(concat(coalesce(`softwarelicence_licence`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce(((`softwarelicence_licence`.`perpetual` = 'no') and (isnull(`softwarelicence_licence`.`end_date`) = 0) and (`softwarelicence_licence`.`end_date` < date_format((now() - interval 15 month),'%Y-%m-%d 00:00:00'))),0) AS `obsolescence_flag`, `softwarelicence_licence`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`software_software_id`.`name`,''),coalesce(' ',''),coalesce(`software_software_id`.`version`,'')) as char charset utf8mb4) AS `software_id_friendlyname` FROM ((`softwarelicence` join `software` `software_software_id` on((`softwarelicence`.`software_id` = `software_software_id`.`id`))) join (`licence` `softwarelicence_licence` join `organization` `organization_org_id` on((`softwarelicence_licence`.`org_id` = `organization_org_id`.`id`))) on((`softwarelicence`.`id` = `softwarelicence_licence`.`id`))) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_softwarepatch`
--
DROP TABLE IF EXISTS `view_softwarepatch`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_softwarepatch`  AS SELECT DISTINCT `softwarepatch`.`id` AS `id`, `softwarepatch_patch`.`name` AS `name`, `softwarepatch_patch`.`description` AS `description`, `softwarepatch`.`software_id` AS `software_id`, `software_software_id`.`name` AS `software_name`, `softwarepatch_patch`.`finalclass` AS `finalclass`, cast(concat(coalesce(`softwarepatch_patch`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`software_software_id`.`name`,''),coalesce(' ',''),coalesce(`software_software_id`.`version`,'')) as char charset utf8mb4) AS `software_id_friendlyname` FROM ((`softwarepatch` join `software` `software_software_id` on((`softwarepatch`.`software_id` = `software_software_id`.`id`))) join `patch` `softwarepatch_patch` on((`softwarepatch`.`id` = `softwarepatch_patch`.`id`))) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_storagesystem`
--
DROP TABLE IF EXISTS `view_storagesystem`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_storagesystem`  AS SELECT DISTINCT `storagesystem_datacenterdevice`.`id` AS `id`, `storagesystem_functionalci`.`name` AS `name`, `storagesystem_functionalci`.`description` AS `description`, `storagesystem_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `storagesystem_functionalci`.`business_criticity` AS `business_criticity`, `storagesystem_functionalci`.`move2production` AS `move2production`, `storagesystem_physicaldevice`.`serialnumber` AS `serialnumber`, `storagesystem_physicaldevice`.`location_id` AS `location_id`, `location_location_id`.`name` AS `location_name`, `storagesystem_physicaldevice`.`status` AS `status`, `storagesystem_physicaldevice`.`brand_id` AS `brand_id`, `brand_brand_id_typology`.`name` AS `brand_name`, `storagesystem_physicaldevice`.`model_id` AS `model_id`, `model_model_id_typology`.`name` AS `model_name`, `storagesystem_physicaldevice`.`asset_number` AS `asset_number`, `storagesystem_physicaldevice`.`purchase_date` AS `purchase_date`, `storagesystem_physicaldevice`.`end_of_warranty` AS `end_of_warranty`, `storagesystem_datacenterdevice`.`rack_id` AS `rack_id`, `rack_rack_id_functionalci`.`name` AS `rack_name`, `storagesystem_datacenterdevice`.`enclosure_id` AS `enclosure_id`, `enclosure_enclosure_id_functionalci`.`name` AS `enclosure_name`, `storagesystem_datacenterdevice`.`nb_u` AS `nb_u`, `storagesystem_datacenterdevice`.`managementip` AS `managementip`, `storagesystem_datacenterdevice`.`powera_id` AS `powerA_id`, `powerconnection_powera_id_functionalci`.`name` AS `powerA_name`, `storagesystem_datacenterdevice`.`powerB_id` AS `powerB_id`, `powerconnection_powerb_id_functionalci`.`name` AS `powerB_name`, `storagesystem_datacenterdevice`.`redundancy` AS `redundancy`, `storagesystem_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`storagesystem_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`storagesystem_physicaldevice`.`status` = 'obsolete'),0) AS `obsolescence_flag`, `storagesystem_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`location_location_id`.`name`,'')) as char charset utf8mb4) AS `location_id_friendlyname`, coalesce((`location_location_id`.`status` = 'inactive'),0) AS `location_id_obsolescence_flag`, cast(concat(coalesce(`brand_brand_id_typology`.`name`,'')) as char charset utf8mb4) AS `brand_id_friendlyname`, cast(concat(coalesce(`model_model_id_typology`.`name`,'')) as char charset utf8mb4) AS `model_id_friendlyname`, cast(concat(coalesce(`rack_rack_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `rack_id_friendlyname`, coalesce((`rack_rack_id_physicaldevice`.`status` = 'obsolete'),0) AS `rack_id_obsolescence_flag`, cast(concat(coalesce(`enclosure_enclosure_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `enclosure_id_friendlyname`, coalesce((`enclosure_enclosure_id_physicaldevice`.`status` = 'obsolete'),0) AS `enclosure_id_obsolescence_flag`, cast(concat(coalesce(`powerconnection_powera_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `powerA_id_friendlyname`, `powerconnection_powera_id_functionalci`.`finalclass` AS `powerA_id_finalclass_recall`, coalesce((`powerconnection_powera_id_physicaldevice`.`status` = 'obsolete'),0) AS `powerA_id_obsolescence_flag`, cast(concat(coalesce(`powerconnection_powerb_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `powerB_id_friendlyname`, `powerconnection_powerb_id_functionalci`.`finalclass` AS `powerB_id_finalclass_recall`, coalesce((`powerconnection_powerb_id_physicaldevice`.`status` = 'obsolete'),0) AS `powerB_id_obsolescence_flag` FROM ((((((`datacenterdevice` `storagesystem_datacenterdevice` left join (`physicaldevice` `rack_rack_id_physicaldevice` join `functionalci` `rack_rack_id_functionalci` on((`rack_rack_id_physicaldevice`.`id` = `rack_rack_id_functionalci`.`id`))) on((`storagesystem_datacenterdevice`.`rack_id` = `rack_rack_id_physicaldevice`.`id`))) left join (`physicaldevice` `enclosure_enclosure_id_physicaldevice` join `functionalci` `enclosure_enclosure_id_functionalci` on((`enclosure_enclosure_id_physicaldevice`.`id` = `enclosure_enclosure_id_functionalci`.`id`))) on((`storagesystem_datacenterdevice`.`enclosure_id` = `enclosure_enclosure_id_physicaldevice`.`id`))) left join (`physicaldevice` `powerconnection_powera_id_physicaldevice` join `functionalci` `powerconnection_powera_id_functionalci` on((`powerconnection_powera_id_physicaldevice`.`id` = `powerconnection_powera_id_functionalci`.`id`))) on((`storagesystem_datacenterdevice`.`powera_id` = `powerconnection_powera_id_physicaldevice`.`id`))) left join (`physicaldevice` `powerconnection_powerb_id_physicaldevice` join `functionalci` `powerconnection_powerb_id_functionalci` on((`powerconnection_powerb_id_physicaldevice`.`id` = `powerconnection_powerb_id_functionalci`.`id`))) on((`storagesystem_datacenterdevice`.`powerB_id` = `powerconnection_powerb_id_physicaldevice`.`id`))) join (((`physicaldevice` `storagesystem_physicaldevice` left join `location` `location_location_id` on((`storagesystem_physicaldevice`.`location_id` = `location_location_id`.`id`))) left join `typology` `brand_brand_id_typology` on((`storagesystem_physicaldevice`.`brand_id` = `brand_brand_id_typology`.`id`))) left join `typology` `model_model_id_typology` on((`storagesystem_physicaldevice`.`model_id` = `model_model_id_typology`.`id`))) on((`storagesystem_datacenterdevice`.`id` = `storagesystem_physicaldevice`.`id`))) join (`functionalci` `storagesystem_functionalci` join `organization` `organization_org_id` on((`storagesystem_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`storagesystem_datacenterdevice`.`id` = `storagesystem_functionalci`.`id`))) WHERE (coalesce((`brand_brand_id_typology`.`finalclass` = 'Brand'),1) AND coalesce((`model_model_id_typology`.`finalclass` = 'Model'),1) AND coalesce((`rack_rack_id_physicaldevice`.`finalclass` = 'Rack'),1) AND coalesce((`enclosure_enclosure_id_physicaldevice`.`finalclass` = 'Enclosure'),1) AND coalesce((`powerconnection_powera_id_physicaldevice`.`finalclass` in ('PowerSource','PDU','PowerConnection')),1) AND coalesce((`powerconnection_powerb_id_physicaldevice`.`finalclass` in ('PowerSource','PDU','PowerConnection')),1) AND coalesce((`storagesystem_datacenterdevice`.`finalclass` = 'StorageSystem'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_subnet`
--
DROP TABLE IF EXISTS `view_subnet`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_subnet`  AS SELECT DISTINCT `subnet`.`id` AS `id`, `subnet`.`description` AS `description`, `subnet`.`subnet_name` AS `subnet_name`, `subnet`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `org_name`, `subnet`.`ip` AS `ip`, `subnet`.`ip_mask` AS `ip_mask`, cast(concat(coalesce(`subnet`.`ip`,''),coalesce(' ',''),coalesce(`subnet`.`ip_mask`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag` FROM (`subnet` join `organization` `organization_org_id` on((`subnet`.`org_id` = `organization_org_id`.`id`))) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_tablet`
--
DROP TABLE IF EXISTS `view_tablet`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_tablet`  AS SELECT DISTINCT `tablet_physicaldevice`.`id` AS `id`, `tablet_functionalci`.`name` AS `name`, `tablet_functionalci`.`description` AS `description`, `tablet_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `tablet_functionalci`.`business_criticity` AS `business_criticity`, `tablet_functionalci`.`move2production` AS `move2production`, `tablet_physicaldevice`.`serialnumber` AS `serialnumber`, `tablet_physicaldevice`.`location_id` AS `location_id`, `location_location_id`.`name` AS `location_name`, `tablet_physicaldevice`.`status` AS `status`, `tablet_physicaldevice`.`brand_id` AS `brand_id`, `brand_brand_id_typology`.`name` AS `brand_name`, `tablet_physicaldevice`.`model_id` AS `model_id`, `model_model_id_typology`.`name` AS `model_name`, `tablet_physicaldevice`.`asset_number` AS `asset_number`, `tablet_physicaldevice`.`purchase_date` AS `purchase_date`, `tablet_physicaldevice`.`end_of_warranty` AS `end_of_warranty`, `tablet_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`tablet_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`tablet_physicaldevice`.`status` = 'obsolete'),0) AS `obsolescence_flag`, `tablet_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`location_location_id`.`name`,'')) as char charset utf8mb4) AS `location_id_friendlyname`, coalesce((`location_location_id`.`status` = 'inactive'),0) AS `location_id_obsolescence_flag`, cast(concat(coalesce(`brand_brand_id_typology`.`name`,'')) as char charset utf8mb4) AS `brand_id_friendlyname`, cast(concat(coalesce(`model_model_id_typology`.`name`,'')) as char charset utf8mb4) AS `model_id_friendlyname` FROM ((((`physicaldevice` `tablet_physicaldevice` left join `location` `location_location_id` on((`tablet_physicaldevice`.`location_id` = `location_location_id`.`id`))) left join `typology` `brand_brand_id_typology` on((`tablet_physicaldevice`.`brand_id` = `brand_brand_id_typology`.`id`))) left join `typology` `model_model_id_typology` on((`tablet_physicaldevice`.`model_id` = `model_model_id_typology`.`id`))) join (`functionalci` `tablet_functionalci` join `organization` `organization_org_id` on((`tablet_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`tablet_physicaldevice`.`id` = `tablet_functionalci`.`id`))) WHERE (coalesce((`brand_brand_id_typology`.`finalclass` = 'Brand'),1) AND coalesce((`model_model_id_typology`.`finalclass` = 'Model'),1) AND coalesce((`tablet_physicaldevice`.`finalclass` = 'Tablet'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_tagsetfielddata`
--
DROP TABLE IF EXISTS `view_tagsetfielddata`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_tagsetfielddata`  AS SELECT DISTINCT `tagsetfielddata`.`id` AS `id`, `tagsetfielddata`.`code` AS `code`, `tagsetfielddata`.`label` AS `label`, `tagsetfielddata`.`description` AS `description`, `tagsetfielddata`.`obj_class` AS `obj_class`, `tagsetfielddata`.`obj_attcode` AS `obj_attcode`, cast(concat(coalesce(`tagsetfielddata`.`label`,'')) as char charset utf8mb4) AS `friendlyname` FROM `priv_tagfielddata` AS `tagsetfielddata` WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_tape`
--
DROP TABLE IF EXISTS `view_tape`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_tape`  AS SELECT DISTINCT `tape`.`id` AS `id`, `tape`.`name` AS `name`, `tape`.`description` AS `description`, `tape`.`size` AS `size`, `tape`.`tapelibrary_id` AS `tapelibrary_id`, `tapelibrary_tapelibrary_id_functionalci`.`name` AS `tapelibrary_name`, cast(concat(coalesce(`tape`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce(coalesce((`tapelibrary_tapelibrary_id_physicaldevice`.`status` = 'obsolete'),0),0) AS `obsolescence_flag`, `tape`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`tapelibrary_tapelibrary_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `tapelibrary_id_friendlyname`, coalesce((`tapelibrary_tapelibrary_id_physicaldevice`.`status` = 'obsolete'),0) AS `tapelibrary_id_obsolescence_flag` FROM (`tape` join (`physicaldevice` `tapelibrary_tapelibrary_id_physicaldevice` join `functionalci` `tapelibrary_tapelibrary_id_functionalci` on((`tapelibrary_tapelibrary_id_physicaldevice`.`id` = `tapelibrary_tapelibrary_id_functionalci`.`id`))) on((`tape`.`tapelibrary_id` = `tapelibrary_tapelibrary_id_physicaldevice`.`id`))) WHERE coalesce((`tapelibrary_tapelibrary_id_physicaldevice`.`finalclass` = 'TapeLibrary'),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_tapelibrary`
--
DROP TABLE IF EXISTS `view_tapelibrary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_tapelibrary`  AS SELECT DISTINCT `tapelibrary_datacenterdevice`.`id` AS `id`, `tapelibrary_functionalci`.`name` AS `name`, `tapelibrary_functionalci`.`description` AS `description`, `tapelibrary_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `tapelibrary_functionalci`.`business_criticity` AS `business_criticity`, `tapelibrary_functionalci`.`move2production` AS `move2production`, `tapelibrary_physicaldevice`.`serialnumber` AS `serialnumber`, `tapelibrary_physicaldevice`.`location_id` AS `location_id`, `location_location_id`.`name` AS `location_name`, `tapelibrary_physicaldevice`.`status` AS `status`, `tapelibrary_physicaldevice`.`brand_id` AS `brand_id`, `brand_brand_id_typology`.`name` AS `brand_name`, `tapelibrary_physicaldevice`.`model_id` AS `model_id`, `model_model_id_typology`.`name` AS `model_name`, `tapelibrary_physicaldevice`.`asset_number` AS `asset_number`, `tapelibrary_physicaldevice`.`purchase_date` AS `purchase_date`, `tapelibrary_physicaldevice`.`end_of_warranty` AS `end_of_warranty`, `tapelibrary_datacenterdevice`.`rack_id` AS `rack_id`, `rack_rack_id_functionalci`.`name` AS `rack_name`, `tapelibrary_datacenterdevice`.`enclosure_id` AS `enclosure_id`, `enclosure_enclosure_id_functionalci`.`name` AS `enclosure_name`, `tapelibrary_datacenterdevice`.`nb_u` AS `nb_u`, `tapelibrary_datacenterdevice`.`managementip` AS `managementip`, `tapelibrary_datacenterdevice`.`powera_id` AS `powerA_id`, `powerconnection_powera_id_functionalci`.`name` AS `powerA_name`, `tapelibrary_datacenterdevice`.`powerB_id` AS `powerB_id`, `powerconnection_powerb_id_functionalci`.`name` AS `powerB_name`, `tapelibrary_datacenterdevice`.`redundancy` AS `redundancy`, `tapelibrary_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`tapelibrary_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`tapelibrary_physicaldevice`.`status` = 'obsolete'),0) AS `obsolescence_flag`, `tapelibrary_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`location_location_id`.`name`,'')) as char charset utf8mb4) AS `location_id_friendlyname`, coalesce((`location_location_id`.`status` = 'inactive'),0) AS `location_id_obsolescence_flag`, cast(concat(coalesce(`brand_brand_id_typology`.`name`,'')) as char charset utf8mb4) AS `brand_id_friendlyname`, cast(concat(coalesce(`model_model_id_typology`.`name`,'')) as char charset utf8mb4) AS `model_id_friendlyname`, cast(concat(coalesce(`rack_rack_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `rack_id_friendlyname`, coalesce((`rack_rack_id_physicaldevice`.`status` = 'obsolete'),0) AS `rack_id_obsolescence_flag`, cast(concat(coalesce(`enclosure_enclosure_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `enclosure_id_friendlyname`, coalesce((`enclosure_enclosure_id_physicaldevice`.`status` = 'obsolete'),0) AS `enclosure_id_obsolescence_flag`, cast(concat(coalesce(`powerconnection_powera_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `powerA_id_friendlyname`, `powerconnection_powera_id_functionalci`.`finalclass` AS `powerA_id_finalclass_recall`, coalesce((`powerconnection_powera_id_physicaldevice`.`status` = 'obsolete'),0) AS `powerA_id_obsolescence_flag`, cast(concat(coalesce(`powerconnection_powerb_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `powerB_id_friendlyname`, `powerconnection_powerb_id_functionalci`.`finalclass` AS `powerB_id_finalclass_recall`, coalesce((`powerconnection_powerb_id_physicaldevice`.`status` = 'obsolete'),0) AS `powerB_id_obsolescence_flag` FROM ((((((`datacenterdevice` `tapelibrary_datacenterdevice` left join (`physicaldevice` `rack_rack_id_physicaldevice` join `functionalci` `rack_rack_id_functionalci` on((`rack_rack_id_physicaldevice`.`id` = `rack_rack_id_functionalci`.`id`))) on((`tapelibrary_datacenterdevice`.`rack_id` = `rack_rack_id_physicaldevice`.`id`))) left join (`physicaldevice` `enclosure_enclosure_id_physicaldevice` join `functionalci` `enclosure_enclosure_id_functionalci` on((`enclosure_enclosure_id_physicaldevice`.`id` = `enclosure_enclosure_id_functionalci`.`id`))) on((`tapelibrary_datacenterdevice`.`enclosure_id` = `enclosure_enclosure_id_physicaldevice`.`id`))) left join (`physicaldevice` `powerconnection_powera_id_physicaldevice` join `functionalci` `powerconnection_powera_id_functionalci` on((`powerconnection_powera_id_physicaldevice`.`id` = `powerconnection_powera_id_functionalci`.`id`))) on((`tapelibrary_datacenterdevice`.`powera_id` = `powerconnection_powera_id_physicaldevice`.`id`))) left join (`physicaldevice` `powerconnection_powerb_id_physicaldevice` join `functionalci` `powerconnection_powerb_id_functionalci` on((`powerconnection_powerb_id_physicaldevice`.`id` = `powerconnection_powerb_id_functionalci`.`id`))) on((`tapelibrary_datacenterdevice`.`powerB_id` = `powerconnection_powerb_id_physicaldevice`.`id`))) join (((`physicaldevice` `tapelibrary_physicaldevice` left join `location` `location_location_id` on((`tapelibrary_physicaldevice`.`location_id` = `location_location_id`.`id`))) left join `typology` `brand_brand_id_typology` on((`tapelibrary_physicaldevice`.`brand_id` = `brand_brand_id_typology`.`id`))) left join `typology` `model_model_id_typology` on((`tapelibrary_physicaldevice`.`model_id` = `model_model_id_typology`.`id`))) on((`tapelibrary_datacenterdevice`.`id` = `tapelibrary_physicaldevice`.`id`))) join (`functionalci` `tapelibrary_functionalci` join `organization` `organization_org_id` on((`tapelibrary_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`tapelibrary_datacenterdevice`.`id` = `tapelibrary_functionalci`.`id`))) WHERE (coalesce((`brand_brand_id_typology`.`finalclass` = 'Brand'),1) AND coalesce((`model_model_id_typology`.`finalclass` = 'Model'),1) AND coalesce((`rack_rack_id_physicaldevice`.`finalclass` = 'Rack'),1) AND coalesce((`enclosure_enclosure_id_physicaldevice`.`finalclass` = 'Enclosure'),1) AND coalesce((`powerconnection_powera_id_physicaldevice`.`finalclass` in ('PowerSource','PDU','PowerConnection')),1) AND coalesce((`powerconnection_powerb_id_physicaldevice`.`finalclass` in ('PowerSource','PDU','PowerConnection')),1) AND coalesce((`tapelibrary_datacenterdevice`.`finalclass` = 'TapeLibrary'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_team`
--
DROP TABLE IF EXISTS `view_team`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_team`  AS SELECT DISTINCT `team_contact`.`id` AS `id`, `team_contact`.`name` AS `name`, `team_contact`.`status` AS `status`, `team_contact`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `org_name`, `team_contact`.`email` AS `email`, `team_contact`.`phone` AS `phone`, `team_contact`.`notify` AS `notify`, `team_contact`.`function` AS `function`, `team_contact`.`finalclass` AS `finalclass`, cast(concat(coalesce(`team_contact`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`team_contact`.`status` = 'inactive'),0) AS `obsolescence_flag`, `team_contact`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag` FROM (`contact` `team_contact` join `organization` `organization_org_id` on((`team_contact`.`org_id` = `organization_org_id`.`id`))) WHERE coalesce((`team_contact`.`finalclass` = 'Team'),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_telephonyci`
--
DROP TABLE IF EXISTS `view_telephonyci`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_telephonyci`  AS SELECT DISTINCT `telephonyci`.`id` AS `id`, `telephonyci_functionalci`.`name` AS `name`, `telephonyci_functionalci`.`description` AS `description`, `telephonyci_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `telephonyci_functionalci`.`business_criticity` AS `business_criticity`, `telephonyci_functionalci`.`move2production` AS `move2production`, `telephonyci_physicaldevice`.`serialnumber` AS `serialnumber`, `telephonyci_physicaldevice`.`location_id` AS `location_id`, `location_location_id`.`name` AS `location_name`, `telephonyci_physicaldevice`.`status` AS `status`, `telephonyci_physicaldevice`.`brand_id` AS `brand_id`, `brand_brand_id_typology`.`name` AS `brand_name`, `telephonyci_physicaldevice`.`model_id` AS `model_id`, `model_model_id_typology`.`name` AS `model_name`, `telephonyci_physicaldevice`.`asset_number` AS `asset_number`, `telephonyci_physicaldevice`.`purchase_date` AS `purchase_date`, `telephonyci_physicaldevice`.`end_of_warranty` AS `end_of_warranty`, `telephonyci`.`phonenumber` AS `phonenumber`, `telephonyci_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`telephonyci_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`telephonyci_physicaldevice`.`status` = 'obsolete'),0) AS `obsolescence_flag`, `telephonyci_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`location_location_id`.`name`,'')) as char charset utf8mb4) AS `location_id_friendlyname`, coalesce((`location_location_id`.`status` = 'inactive'),0) AS `location_id_obsolescence_flag`, cast(concat(coalesce(`brand_brand_id_typology`.`name`,'')) as char charset utf8mb4) AS `brand_id_friendlyname`, cast(concat(coalesce(`model_model_id_typology`.`name`,'')) as char charset utf8mb4) AS `model_id_friendlyname` FROM ((`telephonyci` join (((`physicaldevice` `telephonyci_physicaldevice` left join `location` `location_location_id` on((`telephonyci_physicaldevice`.`location_id` = `location_location_id`.`id`))) left join `typology` `brand_brand_id_typology` on((`telephonyci_physicaldevice`.`brand_id` = `brand_brand_id_typology`.`id`))) left join `typology` `model_model_id_typology` on((`telephonyci_physicaldevice`.`model_id` = `model_model_id_typology`.`id`))) on((`telephonyci`.`id` = `telephonyci_physicaldevice`.`id`))) join (`functionalci` `telephonyci_functionalci` join `organization` `organization_org_id` on((`telephonyci_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`telephonyci`.`id` = `telephonyci_functionalci`.`id`))) WHERE (coalesce((`brand_brand_id_typology`.`finalclass` = 'Brand'),1) AND coalesce((`model_model_id_typology`.`finalclass` = 'Model'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_ticket`
--
DROP TABLE IF EXISTS `view_ticket`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_ticket`  AS SELECT DISTINCT `ticket`.`id` AS `id`, `ticket`.`operational_status` AS `operational_status`, `ticket`.`ref` AS `ref`, `ticket`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `org_name`, `ticket`.`caller_id` AS `caller_id`, `person_caller_id_contact`.`name` AS `caller_name`, `ticket`.`team_id` AS `team_id`, `team_team_id_contact`.`email` AS `team_name`, `ticket`.`agent_id` AS `agent_id`, `person_agent_id_contact`.`name` AS `agent_name`, `ticket`.`title` AS `title`, `ticket`.`description` AS `description`, `ticket`.`start_date` AS `start_date`, `ticket`.`end_date` AS `end_date`, `ticket`.`last_update` AS `last_update`, `ticket`.`close_date` AS `close_date`, `ticket`.`private_log` AS `private_log`, `ticket`.`finalclass` AS `finalclass`, cast(concat(coalesce(`ticket`.`ref`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`person_caller_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_caller_id_contact`.`name`,'')) as char charset utf8mb4) AS `caller_id_friendlyname`, coalesce((`person_caller_id_contact`.`status` = 'inactive'),0) AS `caller_id_obsolescence_flag`, cast(concat(coalesce(`team_team_id_contact`.`name`,'')) as char charset utf8mb4) AS `team_id_friendlyname`, coalesce((`team_team_id_contact`.`status` = 'inactive'),0) AS `team_id_obsolescence_flag`, cast(concat(coalesce(`person_agent_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_agent_id_contact`.`name`,'')) as char charset utf8mb4) AS `agent_id_friendlyname`, coalesce((`person_agent_id_contact`.`status` = 'inactive'),0) AS `agent_id_obsolescence_flag`, `ticket`.`description_format` AS `description_format`, `ticket`.`private_log_index` AS `private_log_index` FROM ((((`ticket` join `organization` `organization_org_id` on((`ticket`.`org_id` = `organization_org_id`.`id`))) left join (`person` `person_caller_id` join `contact` `person_caller_id_contact` on((`person_caller_id`.`id` = `person_caller_id_contact`.`id`))) on((`ticket`.`caller_id` = `person_caller_id`.`id`))) left join `contact` `team_team_id_contact` on((`ticket`.`team_id` = `team_team_id_contact`.`id`))) left join (`person` `person_agent_id` join `contact` `person_agent_id_contact` on((`person_agent_id`.`id` = `person_agent_id_contact`.`id`))) on((`ticket`.`agent_id` = `person_agent_id`.`id`))) WHERE coalesce((`team_team_id_contact`.`finalclass` = 'Team'),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_typology`
--
DROP TABLE IF EXISTS `view_typology`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_typology`  AS SELECT DISTINCT `typology`.`id` AS `id`, `typology`.`name` AS `name`, `typology`.`finalclass` AS `finalclass`, if((`typology`.`finalclass` = 'IOSVersion'),cast(concat(coalesce(`brand_brand_id_typology`.`name`,''),coalesce(' ',''),coalesce(`typology`.`name`,'')) as char charset utf8mb4),cast(concat(coalesce(`typology`.`name`,'')) as char charset utf8mb4)) AS `friendlyname` FROM (`typology` left join (`iosversion` `typology_poly_iosversion` join `typology` `brand_brand_id_typology` on((`typology_poly_iosversion`.`brand_id` = `brand_brand_id_typology`.`id`))) on((`typology`.`id` = `typology_poly_iosversion`.`id`))) WHERE coalesce((`brand_brand_id_typology`.`finalclass` = 'Brand'),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_userrequest`
--
DROP TABLE IF EXISTS `view_userrequest`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_userrequest`  AS SELECT DISTINCT `userrequest`.`id` AS `id`, `userrequest_ticket`.`operational_status` AS `operational_status`, `userrequest_ticket`.`ref` AS `ref`, `userrequest_ticket`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `org_name`, `userrequest_ticket`.`caller_id` AS `caller_id`, `person_caller_id_contact`.`name` AS `caller_name`, `userrequest_ticket`.`team_id` AS `team_id`, `team_team_id_contact`.`email` AS `team_name`, `userrequest_ticket`.`agent_id` AS `agent_id`, `person_agent_id_contact`.`name` AS `agent_name`, `userrequest_ticket`.`title` AS `title`, `userrequest_ticket`.`description` AS `description`, `userrequest_ticket`.`start_date` AS `start_date`, `userrequest_ticket`.`end_date` AS `end_date`, `userrequest_ticket`.`last_update` AS `last_update`, `userrequest_ticket`.`close_date` AS `close_date`, `userrequest_ticket`.`private_log` AS `private_log`, `userrequest`.`status` AS `status`, `userrequest`.`request_type` AS `request_type`, `userrequest`.`impact` AS `impact`, `userrequest`.`priority` AS `priority`, `userrequest`.`urgency` AS `urgency`, `userrequest`.`origin` AS `origin`, `userrequest`.`approver_id` AS `approver_id`, `person_approver_id_contact`.`email` AS `approver_email`, `userrequest`.`service_id` AS `service_id`, `service_service_id`.`name` AS `service_name`, `userrequest`.`servicesubcategory_id` AS `servicesubcategory_id`, `servicesubcategory_servicesubcategory_id`.`name` AS `servicesubcategory_name`, `userrequest`.`escalation_flag` AS `escalation_flag`, `userrequest`.`escalation_reason` AS `escalation_reason`, `userrequest`.`assignment_date` AS `assignment_date`, `userrequest`.`resolution_date` AS `resolution_date`, `userrequest`.`last_pending_date` AS `last_pending_date`, `userrequest`.`cumulatedpending_timespent` AS `cumulatedpending`, `userrequest`.`tto_timespent` AS `tto`, `userrequest`.`ttr_timespent` AS `ttr`, `userrequest`.`tto_100_deadline` AS `tto_escalation_deadline`, `userrequest`.`tto_100_passed` AS `sla_tto_passed`, `userrequest`.`tto_100_overrun` AS `sla_tto_over`, `userrequest`.`ttr_100_deadline` AS `ttr_escalation_deadline`, `userrequest`.`ttr_100_passed` AS `sla_ttr_passed`, `userrequest`.`ttr_100_overrun` AS `sla_ttr_over`, `userrequest`.`time_spent` AS `time_spent`, `userrequest`.`resolution_code` AS `resolution_code`, `userrequest`.`solution` AS `solution`, `userrequest`.`pending_reason` AS `pending_reason`, `userrequest`.`parent_request_id` AS `parent_request_id`, `userrequest_parent_request_id_ticket`.`ref` AS `parent_request_ref`, `userrequest`.`parent_incident_id` AS `parent_incident_id`, `incident_parent_incident_id_ticket`.`ref` AS `parent_incident_ref`, `userrequest`.`parent_problem_id` AS `parent_problem_id`, `problem_parent_problem_id_ticket`.`ref` AS `parent_problem_ref`, `userrequest`.`parent_change_id` AS `parent_change_id`, `change_parent_change_id_ticket`.`ref` AS `parent_change_ref`, `userrequest`.`public_log` AS `public_log`, `userrequest`.`user_satisfaction` AS `user_satisfaction`, `userrequest`.`user_commment` AS `user_comment`, `userrequest_ticket`.`finalclass` AS `finalclass`, cast(concat(coalesce(`userrequest_ticket`.`ref`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`person_caller_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_caller_id_contact`.`name`,'')) as char charset utf8mb4) AS `caller_id_friendlyname`, coalesce((`person_caller_id_contact`.`status` = 'inactive'),0) AS `caller_id_obsolescence_flag`, cast(concat(coalesce(`team_team_id_contact`.`name`,'')) as char charset utf8mb4) AS `team_id_friendlyname`, coalesce((`team_team_id_contact`.`status` = 'inactive'),0) AS `team_id_obsolescence_flag`, cast(concat(coalesce(`person_agent_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_agent_id_contact`.`name`,'')) as char charset utf8mb4) AS `agent_id_friendlyname`, coalesce((`person_agent_id_contact`.`status` = 'inactive'),0) AS `agent_id_obsolescence_flag`, cast(concat(coalesce(`person_approver_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_approver_id_contact`.`name`,'')) as char charset utf8mb4) AS `approver_id_friendlyname`, coalesce((`person_approver_id_contact`.`status` = 'inactive'),0) AS `approver_id_obsolescence_flag`, cast(concat(coalesce(`service_service_id`.`name`,'')) as char charset utf8mb4) AS `service_id_friendlyname`, cast(concat(coalesce(`servicesubcategory_servicesubcategory_id`.`name`,'')) as char charset utf8mb4) AS `servicesubcategory_id_friendlyname`, cast(concat(coalesce(`userrequest_parent_request_id_ticket`.`ref`,'')) as char charset utf8mb4) AS `parent_request_id_friendlyname`, cast(concat(coalesce(`incident_parent_incident_id_ticket`.`ref`,'')) as char charset utf8mb4) AS `parent_incident_id_friendlyname`, cast(concat(coalesce(`problem_parent_problem_id_ticket`.`ref`,'')) as char charset utf8mb4) AS `parent_problem_id_friendlyname`, cast(concat(coalesce(`change_parent_change_id_ticket`.`ref`,'')) as char charset utf8mb4) AS `parent_change_id_friendlyname`, `change_parent_change_id_ticket`.`finalclass` AS `parent_change_id_finalclass_recall`, `userrequest`.`cumulatedpending_started` AS `cumulatedpending_started`, `userrequest`.`cumulatedpending_laststart` AS `cumulatedpending_laststart`, `userrequest`.`cumulatedpending_stopped` AS `cumulatedpending_stopped`, `userrequest`.`tto_started` AS `tto_started`, `userrequest`.`tto_laststart` AS `tto_laststart`, `userrequest`.`tto_stopped` AS `tto_stopped`, `userrequest`.`tto_75_deadline` AS `tto_75_deadline`, `userrequest`.`tto_75_passed` AS `tto_75_passed`, `userrequest`.`tto_75_triggered` AS `tto_75_triggered`, `userrequest`.`tto_75_overrun` AS `tto_75_overrun`, `userrequest`.`tto_100_deadline` AS `tto_100_deadline`, `userrequest`.`tto_100_passed` AS `tto_100_passed`, `userrequest`.`tto_100_triggered` AS `tto_100_triggered`, `userrequest`.`tto_100_overrun` AS `tto_100_overrun`, `userrequest`.`ttr_started` AS `ttr_started`, `userrequest`.`ttr_laststart` AS `ttr_laststart`, `userrequest`.`ttr_stopped` AS `ttr_stopped`, `userrequest`.`ttr_75_deadline` AS `ttr_75_deadline`, `userrequest`.`ttr_75_passed` AS `ttr_75_passed`, `userrequest`.`ttr_75_triggered` AS `ttr_75_triggered`, `userrequest`.`ttr_75_overrun` AS `ttr_75_overrun`, `userrequest`.`ttr_100_deadline` AS `ttr_100_deadline`, `userrequest`.`ttr_100_passed` AS `ttr_100_passed`, `userrequest`.`ttr_100_triggered` AS `ttr_100_triggered`, `userrequest`.`ttr_100_overrun` AS `ttr_100_overrun`, `userrequest`.`public_log_index` AS `public_log_index`, `userrequest_ticket`.`description_format` AS `description_format`, `userrequest_ticket`.`private_log_index` AS `private_log_index` FROM ((((((((`ticket_request` `userrequest` left join (`person` `person_approver_id` join `contact` `person_approver_id_contact` on((`person_approver_id`.`id` = `person_approver_id_contact`.`id`))) on((`userrequest`.`approver_id` = `person_approver_id`.`id`))) left join `service` `service_service_id` on((`userrequest`.`service_id` = `service_service_id`.`id`))) left join `servicesubcategory` `servicesubcategory_servicesubcategory_id` on((`userrequest`.`servicesubcategory_id` = `servicesubcategory_servicesubcategory_id`.`id`))) left join `ticket` `userrequest_parent_request_id_ticket` on((`userrequest`.`parent_request_id` = `userrequest_parent_request_id_ticket`.`id`))) left join `ticket` `incident_parent_incident_id_ticket` on((`userrequest`.`parent_incident_id` = `incident_parent_incident_id_ticket`.`id`))) left join `ticket` `problem_parent_problem_id_ticket` on((`userrequest`.`parent_problem_id` = `problem_parent_problem_id_ticket`.`id`))) left join `ticket` `change_parent_change_id_ticket` on((`userrequest`.`parent_change_id` = `change_parent_change_id_ticket`.`id`))) join ((((`ticket` `userrequest_ticket` join `organization` `organization_org_id` on((`userrequest_ticket`.`org_id` = `organization_org_id`.`id`))) left join (`person` `person_caller_id` join `contact` `person_caller_id_contact` on((`person_caller_id`.`id` = `person_caller_id_contact`.`id`))) on((`userrequest_ticket`.`caller_id` = `person_caller_id`.`id`))) left join `contact` `team_team_id_contact` on((`userrequest_ticket`.`team_id` = `team_team_id_contact`.`id`))) left join (`person` `person_agent_id` join `contact` `person_agent_id_contact` on((`person_agent_id`.`id` = `person_agent_id_contact`.`id`))) on((`userrequest_ticket`.`agent_id` = `person_agent_id`.`id`))) on((`userrequest`.`id` = `userrequest_ticket`.`id`))) WHERE (coalesce((`team_team_id_contact`.`finalclass` = 'Team'),1) AND coalesce((`userrequest_parent_request_id_ticket`.`finalclass` = 'UserRequest'),1) AND coalesce((`incident_parent_incident_id_ticket`.`finalclass` = 'Incident'),1) AND coalesce((`problem_parent_problem_id_ticket`.`finalclass` = 'Problem'),1) AND coalesce((`change_parent_change_id_ticket`.`finalclass` in ('RoutineChange','ApprovedChange','NormalChange','EmergencyChange','Change')),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_virtualdevice`
--
DROP TABLE IF EXISTS `view_virtualdevice`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_virtualdevice`  AS SELECT DISTINCT `virtualdevice`.`id` AS `id`, `virtualdevice_functionalci`.`name` AS `name`, `virtualdevice_functionalci`.`description` AS `description`, `virtualdevice_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `virtualdevice_functionalci`.`business_criticity` AS `business_criticity`, `virtualdevice_functionalci`.`move2production` AS `move2production`, `virtualdevice`.`status` AS `status`, `virtualdevice_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`virtualdevice_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`virtualdevice`.`status` = 'obsolete'),0) AS `obsolescence_flag`, `virtualdevice_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag` FROM (`virtualdevice` join (`functionalci` `virtualdevice_functionalci` join `organization` `organization_org_id` on((`virtualdevice_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`virtualdevice`.`id` = `virtualdevice_functionalci`.`id`))) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_virtualhost`
--
DROP TABLE IF EXISTS `view_virtualhost`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_virtualhost`  AS SELECT DISTINCT `virtualhost_virtualdevice`.`id` AS `id`, `virtualhost_functionalci`.`name` AS `name`, `virtualhost_functionalci`.`description` AS `description`, `virtualhost_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `virtualhost_functionalci`.`business_criticity` AS `business_criticity`, `virtualhost_functionalci`.`move2production` AS `move2production`, `virtualhost_virtualdevice`.`status` AS `status`, `virtualhost_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`virtualhost_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`virtualhost_virtualdevice`.`status` = 'obsolete'),0) AS `obsolescence_flag`, `virtualhost_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag` FROM (`virtualdevice` `virtualhost_virtualdevice` join (`functionalci` `virtualhost_functionalci` join `organization` `organization_org_id` on((`virtualhost_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`virtualhost_virtualdevice`.`id` = `virtualhost_functionalci`.`id`))) WHERE coalesce((`virtualhost_virtualdevice`.`finalclass` in ('Hypervisor','Farm','VirtualHost')),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_virtualmachine`
--
DROP TABLE IF EXISTS `view_virtualmachine`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_virtualmachine`  AS SELECT DISTINCT `virtualmachine`.`id` AS `id`, `virtualmachine_functionalci`.`name` AS `name`, `virtualmachine_functionalci`.`description` AS `description`, `virtualmachine_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `virtualmachine_functionalci`.`business_criticity` AS `business_criticity`, `virtualmachine_functionalci`.`move2production` AS `move2production`, `virtualmachine_virtualdevice`.`status` AS `status`, `virtualmachine`.`virtualhost_id` AS `virtualhost_id`, `virtualhost_virtualhost_id_functionalci`.`name` AS `virtualhost_name`, `virtualmachine`.`osfamily_id` AS `osfamily_id`, `osfamily_osfamily_id_typology`.`name` AS `osfamily_name`, `virtualmachine`.`osversion_id` AS `osversion_id`, `osversion_osversion_id_typology`.`name` AS `osversion_name`, `virtualmachine`.`oslicence_id` AS `oslicence_id`, `oslicence_oslicence_id_licence`.`name` AS `oslicence_name`, `virtualmachine`.`cpu` AS `cpu`, `virtualmachine`.`ram` AS `ram`, `virtualmachine`.`managementip` AS `managementip`, `virtualmachine_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`virtualmachine_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`virtualmachine_virtualdevice`.`status` = 'obsolete'),0) AS `obsolescence_flag`, `virtualmachine_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`virtualhost_virtualhost_id_functionalci`.`name`,'')) as char charset utf8mb4) AS `virtualhost_id_friendlyname`, `virtualhost_virtualhost_id_functionalci`.`finalclass` AS `virtualhost_id_finalclass_recall`, coalesce((`virtualhost_virtualhost_id_virtualdevice`.`status` = 'obsolete'),0) AS `virtualhost_id_obsolescence_flag`, cast(concat(coalesce(`osfamily_osfamily_id_typology`.`name`,'')) as char charset utf8mb4) AS `osfamily_id_friendlyname`, cast(concat(coalesce(`osversion_osversion_id_typology`.`name`,'')) as char charset utf8mb4) AS `osversion_id_friendlyname`, cast(concat(coalesce(`oslicence_oslicence_id_licence`.`name`,'')) as char charset utf8mb4) AS `oslicence_id_friendlyname`, coalesce(((`oslicence_oslicence_id_licence`.`perpetual` = 'no') and (isnull(`oslicence_oslicence_id_licence`.`end_date`) = 0) and (`oslicence_oslicence_id_licence`.`end_date` < date_format((now() - interval 15 month),'%Y-%m-%d 00:00:00'))),0) AS `oslicence_id_obsolescence_flag` FROM ((((((`virtualmachine` join (`virtualdevice` `virtualhost_virtualhost_id_virtualdevice` join `functionalci` `virtualhost_virtualhost_id_functionalci` on((`virtualhost_virtualhost_id_virtualdevice`.`id` = `virtualhost_virtualhost_id_functionalci`.`id`))) on((`virtualmachine`.`virtualhost_id` = `virtualhost_virtualhost_id_virtualdevice`.`id`))) left join `typology` `osfamily_osfamily_id_typology` on((`virtualmachine`.`osfamily_id` = `osfamily_osfamily_id_typology`.`id`))) left join `typology` `osversion_osversion_id_typology` on((`virtualmachine`.`osversion_id` = `osversion_osversion_id_typology`.`id`))) left join `licence` `oslicence_oslicence_id_licence` on((`virtualmachine`.`oslicence_id` = `oslicence_oslicence_id_licence`.`id`))) join `virtualdevice` `virtualmachine_virtualdevice` on((`virtualmachine`.`id` = `virtualmachine_virtualdevice`.`id`))) join (`functionalci` `virtualmachine_functionalci` join `organization` `organization_org_id` on((`virtualmachine_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`virtualmachine`.`id` = `virtualmachine_functionalci`.`id`))) WHERE (coalesce((`virtualhost_virtualhost_id_virtualdevice`.`finalclass` in ('Hypervisor','Farm','VirtualHost')),1) AND coalesce((`osfamily_osfamily_id_typology`.`finalclass` = 'OSFamily'),1) AND coalesce((`osversion_osversion_id_typology`.`finalclass` = 'OSVersion'),1) AND coalesce((`oslicence_oslicence_id_licence`.`finalclass` = 'OSLicence'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_vlan`
--
DROP TABLE IF EXISTS `view_vlan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_vlan`  AS SELECT DISTINCT `vlan`.`id` AS `id`, `vlan`.`vlan_tag` AS `vlan_tag`, `vlan`.`description` AS `description`, `vlan`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `org_name`, cast(concat(coalesce(`vlan`.`vlan_tag`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag` FROM (`vlan` join `organization` `organization_org_id` on((`vlan`.`org_id` = `organization_org_id`.`id`))) WHERE 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_webapplication`
--
DROP TABLE IF EXISTS `view_webapplication`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_webapplication`  AS SELECT DISTINCT `webapplication`.`id` AS `id`, `webapplication_functionalci`.`name` AS `name`, `webapplication_functionalci`.`description` AS `description`, `webapplication_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `webapplication_functionalci`.`business_criticity` AS `business_criticity`, `webapplication_functionalci`.`move2production` AS `move2production`, `webapplication`.`webserver_id` AS `webserver_id`, `webserver_webserver_id_functionalci`.`name` AS `webserver_name`, `webapplication`.`url` AS `url`, `webapplication_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`webapplication_functionalci`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce(coalesce((`webserver_webserver_id_softwareinstance`.`status` = 'inactive'),0),0) AS `obsolescence_flag`, `webapplication_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, cast(concat(coalesce(`webserver_webserver_id_functionalci`.`name`,''),coalesce(' ',''),coalesce(`functionalci_system_id`.`name`,'')) as char charset utf8mb4) AS `webserver_id_friendlyname`, coalesce((`webserver_webserver_id_softwareinstance`.`status` = 'inactive'),0) AS `webserver_id_obsolescence_flag` FROM ((`webapplication` join ((`softwareinstance` `webserver_webserver_id_softwareinstance` join `functionalci` `functionalci_system_id` on((`webserver_webserver_id_softwareinstance`.`functionalci_id` = `functionalci_system_id`.`id`))) join `functionalci` `webserver_webserver_id_functionalci` on((`webserver_webserver_id_softwareinstance`.`id` = `webserver_webserver_id_functionalci`.`id`))) on((`webapplication`.`webserver_id` = `webserver_webserver_id_softwareinstance`.`id`))) join (`functionalci` `webapplication_functionalci` join `organization` `organization_org_id` on((`webapplication_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`webapplication`.`id` = `webapplication_functionalci`.`id`))) WHERE coalesce((`webserver_webserver_id_softwareinstance`.`finalclass` = 'WebServer'),1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_webserver`
--
DROP TABLE IF EXISTS `view_webserver`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_webserver`  AS SELECT DISTINCT `webserver_softwareinstance`.`id` AS `id`, `webserver_functionalci`.`name` AS `name`, `webserver_functionalci`.`description` AS `description`, `webserver_functionalci`.`org_id` AS `org_id`, `organization_org_id`.`name` AS `organization_name`, `webserver_functionalci`.`business_criticity` AS `business_criticity`, `webserver_functionalci`.`move2production` AS `move2production`, `webserver_softwareinstance`.`functionalci_id` AS `system_id`, `functionalci_system_id`.`name` AS `system_name`, `webserver_softwareinstance`.`software_id` AS `software_id`, `software_software_id`.`name` AS `software_name`, `webserver_softwareinstance`.`softwarelicence_id` AS `softwarelicence_id`, `softwarelicence_softwarelicence_id_licence`.`name` AS `softwarelicence_name`, `webserver_softwareinstance`.`path` AS `path`, `webserver_softwareinstance`.`status` AS `status`, `webserver_functionalci`.`finalclass` AS `finalclass`, cast(concat(coalesce(`webserver_functionalci`.`name`,''),coalesce(' ',''),coalesce(`functionalci_system_id`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, coalesce((`webserver_softwareinstance`.`status` = 'inactive'),0) AS `obsolescence_flag`, `webserver_functionalci`.`obsolescence_date` AS `obsolescence_date`, cast(concat(coalesce(`organization_org_id`.`name`,'')) as char charset utf8mb4) AS `org_id_friendlyname`, coalesce((`organization_org_id`.`status` = 'inactive'),0) AS `org_id_obsolescence_flag`, if((`functionalci_system_id`.`finalclass` in ('Middleware','DBServer','WebServer','PCSoftware','OtherSoftware')),cast(concat(coalesce(`functionalci_system_id`.`name`,''),coalesce(' ',''),coalesce(`functionalci_system_id1`.`name`,'')) as char charset utf8mb4),cast(concat(coalesce(`functionalci_system_id`.`name`,'')) as char charset utf8mb4)) AS `system_id_friendlyname`, `functionalci_system_id`.`finalclass` AS `system_id_finalclass_recall`, if((`functionalci_system_id`.`finalclass` = 'FunctionalCI'),coalesce(0,0),if((`functionalci_system_id`.`finalclass` in ('Hypervisor','Farm','VirtualMachine')),coalesce((`functionalci_system_id_poly_virtualdevice`.`status` = 'obsolete'),0),if((`functionalci_system_id`.`finalclass` = 'WebApplication'),coalesce(coalesce((`webserver_webserver_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_system_id`.`finalclass` = 'DatabaseSchema'),coalesce(coalesce((`dbserver_dbserver_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_system_id`.`finalclass` = 'MiddlewareInstance'),coalesce(coalesce((`middleware_middleware_id_softwareinstance`.`status` = 'inactive'),0),0),if((`functionalci_system_id`.`finalclass` in ('Middleware','DBServer','WebServer','PCSoftware','OtherSoftware')),coalesce((`functionalci_system_id_poly_softwareinstance`.`status` = 'inactive'),0),if((`functionalci_system_id`.`finalclass` = 'BusinessProcess'),coalesce((`functionalci_system_id_poly_businessprocess`.`status` = 'inactive'),0),if((`functionalci_system_id`.`finalclass` = 'ApplicationSolution'),coalesce((`functionalci_system_id_poly_applicationsolution`.`status` = 'inactive'),0),coalesce((`functionalci_system_id_poly_physicaldevice`.`status` = 'obsolete'),0))))))))) AS `system_id_obsolescence_flag`, cast(concat(coalesce(`software_software_id`.`name`,''),coalesce(' ',''),coalesce(`software_software_id`.`version`,'')) as char charset utf8mb4) AS `software_id_friendlyname`, cast(concat(coalesce(`softwarelicence_softwarelicence_id_licence`.`name`,'')) as char charset utf8mb4) AS `softwarelicence_id_friendlyname`, coalesce(((`softwarelicence_softwarelicence_id_licence`.`perpetual` = 'no') and (isnull(`softwarelicence_softwarelicence_id_licence`.`end_date`) = 0) and (`softwarelicence_softwarelicence_id_licence`.`end_date` < date_format((now() - interval 15 month),'%Y-%m-%d 00:00:00'))),0) AS `softwarelicence_id_obsolescence_flag` FROM ((((`softwareinstance` `webserver_softwareinstance` join ((((((((`functionalci` `functionalci_system_id` left join (`softwareinstance` `functionalci_system_id_poly_softwareinstance` join `functionalci` `functionalci_system_id1` on((`functionalci_system_id_poly_softwareinstance`.`functionalci_id` = `functionalci_system_id1`.`id`))) on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_softwareinstance`.`id`))) left join `virtualdevice` `functionalci_system_id_poly_virtualdevice` on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_virtualdevice`.`id`))) left join (`webapplication` `functionalci_system_id_poly_webapplication` join `softwareinstance` `webserver_webserver_id_softwareinstance` on((`functionalci_system_id_poly_webapplication`.`webserver_id` = `webserver_webserver_id_softwareinstance`.`id`))) on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_webapplication`.`id`))) left join (`databaseschema` `functionalci_system_id_poly_databaseschema` join `softwareinstance` `dbserver_dbserver_id_softwareinstance` on((`functionalci_system_id_poly_databaseschema`.`dbserver_id` = `dbserver_dbserver_id_softwareinstance`.`id`))) on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_databaseschema`.`id`))) left join (`middlewareinstance` `functionalci_system_id_poly_middlewareinstance` join `softwareinstance` `middleware_middleware_id_softwareinstance` on((`functionalci_system_id_poly_middlewareinstance`.`middleware_id` = `middleware_middleware_id_softwareinstance`.`id`))) on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_middlewareinstance`.`id`))) left join `businessprocess` `functionalci_system_id_poly_businessprocess` on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_businessprocess`.`id`))) left join `applicationsolution` `functionalci_system_id_poly_applicationsolution` on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_applicationsolution`.`id`))) left join `physicaldevice` `functionalci_system_id_poly_physicaldevice` on((`functionalci_system_id`.`id` = `functionalci_system_id_poly_physicaldevice`.`id`))) on((`webserver_softwareinstance`.`functionalci_id` = `functionalci_system_id`.`id`))) left join `software` `software_software_id` on((`webserver_softwareinstance`.`software_id` = `software_software_id`.`id`))) left join `licence` `softwarelicence_softwarelicence_id_licence` on((`webserver_softwareinstance`.`softwarelicence_id` = `softwarelicence_softwarelicence_id_licence`.`id`))) join (`functionalci` `webserver_functionalci` join `organization` `organization_org_id` on((`webserver_functionalci`.`org_id` = `organization_org_id`.`id`))) on((`webserver_softwareinstance`.`id` = `webserver_functionalci`.`id`))) WHERE (coalesce((`webserver_webserver_id_softwareinstance`.`finalclass` = 'WebServer'),1) AND coalesce((`dbserver_dbserver_id_softwareinstance`.`finalclass` = 'DBServer'),1) AND coalesce((`middleware_middleware_id_softwareinstance`.`finalclass` = 'Middleware'),1) AND coalesce((`softwarelicence_softwarelicence_id_licence`.`finalclass` = 'SoftwareLicence'),1) AND coalesce((`webserver_softwareinstance`.`finalclass` = 'WebServer'),1)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_workorder`
--
DROP TABLE IF EXISTS `view_workorder`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_workorder`  AS SELECT DISTINCT `workorder`.`id` AS `id`, `workorder`.`name` AS `name`, `workorder`.`status` AS `status`, `workorder`.`description` AS `description`, `workorder`.`ticket_id` AS `ticket_id`, `ticket_ticket_id`.`ref` AS `ticket_ref`, `workorder`.`team_id` AS `team_id`, `team_team_id_contact`.`email` AS `team_name`, `workorder`.`owner_id` AS `agent_id`, `person_agent_id_contact`.`email` AS `agent_email`, `workorder`.`start_date` AS `start_date`, `workorder`.`end_date` AS `end_date`, `workorder`.`log` AS `log`, cast(concat(coalesce(`workorder`.`name`,'')) as char charset utf8mb4) AS `friendlyname`, cast(concat(coalesce(`ticket_ticket_id`.`ref`,'')) as char charset utf8mb4) AS `ticket_id_friendlyname`, `ticket_ticket_id`.`finalclass` AS `ticket_id_finalclass_recall`, cast(concat(coalesce(`team_team_id_contact`.`name`,'')) as char charset utf8mb4) AS `team_id_friendlyname`, coalesce((`team_team_id_contact`.`status` = 'inactive'),0) AS `team_id_obsolescence_flag`, cast(concat(coalesce(`person_agent_id`.`first_name`,''),coalesce(' ',''),coalesce(`person_agent_id_contact`.`name`,'')) as char charset utf8mb4) AS `agent_id_friendlyname`, coalesce((`person_agent_id_contact`.`status` = 'inactive'),0) AS `agent_id_obsolescence_flag`, `workorder`.`log_index` AS `log_index` FROM (((`workorder` join `ticket` `ticket_ticket_id` on((`workorder`.`ticket_id` = `ticket_ticket_id`.`id`))) join `contact` `team_team_id_contact` on((`workorder`.`team_id` = `team_team_id_contact`.`id`))) left join (`person` `person_agent_id` join `contact` `person_agent_id_contact` on((`person_agent_id`.`id` = `person_agent_id_contact`.`id`))) on((`workorder`.`owner_id` = `person_agent_id`.`id`))) WHERE coalesce((`team_team_id_contact`.`finalclass` = 'Team'),1) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `applicationsolution`
--
ALTER TABLE `applicationsolution`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `attachment`
--
ALTER TABLE `attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `temp_id` (`temp_id`(95)),
  ADD KEY `item_class` (`item_class`(95)),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `item_class_item_id` (`item_class`(95),`item_id`),
  ADD KEY `item_org_id` (`item_org_id`);

--
-- Indices de la tabla `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `businessprocess`
--
ALTER TABLE `businessprocess`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `change`
--
ALTER TABLE `change`
  ADD PRIMARY KEY (`id`),
  ADD KEY `requestor_id` (`requestor_id`),
  ADD KEY `supervisor_group_id` (`supervisor_group_id`),
  ADD KEY `supervisor_id` (`supervisor_id`),
  ADD KEY `manager_group_id` (`manager_group_id`),
  ADD KEY `manager_id` (`manager_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `finalclass` (`finalclass`(95));

--
-- Indices de la tabla `change_approved`
--
ALTER TABLE `change_approved`
  ADD PRIMARY KEY (`id`),
  ADD KEY `finalclass` (`finalclass`(95));

--
-- Indices de la tabla `change_emergency`
--
ALTER TABLE `change_emergency`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `change_normal`
--
ALTER TABLE `change_normal`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `change_routine`
--
ALTER TABLE `change_routine`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `connectableci`
--
ALTER TABLE `connectableci`
  ADD PRIMARY KEY (`id`),
  ADD KEY `finalclass` (`finalclass`(95));

--
-- Indices de la tabla `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(95)),
  ADD KEY `org_id` (`org_id`),
  ADD KEY `finalclass` (`finalclass`(95));

--
-- Indices de la tabla `contacttype`
--
ALTER TABLE `contacttype`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(95)),
  ADD KEY `org_id` (`org_id`),
  ADD KEY `contracttype_id` (`contracttype_id`),
  ADD KEY `provider_id` (`provider_id`),
  ADD KEY `finalclass` (`finalclass`(95));

--
-- Indices de la tabla `contracttype`
--
ALTER TABLE `contracttype`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `customercontract`
--
ALTER TABLE `customercontract`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `databaseschema`
--
ALTER TABLE `databaseschema`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dbserver_id` (`dbserver_id`);

--
-- Indices de la tabla `datacenterdevice`
--
ALTER TABLE `datacenterdevice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rack_id` (`rack_id`),
  ADD KEY `enclosure_id` (`enclosure_id`),
  ADD KEY `powera_id` (`powera_id`),
  ADD KEY `powerB_id` (`powerB_id`),
  ADD KEY `finalclass` (`finalclass`(95));

--
-- Indices de la tabla `dbserver`
--
ALTER TABLE `dbserver`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `deliverymodel`
--
ALTER TABLE `deliverymodel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(95)),
  ADD KEY `org_id` (`org_id`);

--
-- Indices de la tabla `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `org_id` (`org_id`),
  ADD KEY `documenttype_id` (`documenttype_id`),
  ADD KEY `finalclass` (`finalclass`(95));

--
-- Indices de la tabla `documentfile`
--
ALTER TABLE `documentfile`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `documentnote`
--
ALTER TABLE `documentnote`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `documenttype`
--
ALTER TABLE `documenttype`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `documentweb`
--
ALTER TABLE `documentweb`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `enclosure`
--
ALTER TABLE `enclosure`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rack_id` (`rack_id`);

--
-- Indices de la tabla `farm`
--
ALTER TABLE `farm`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fiberchannelinterface`
--
ALTER TABLE `fiberchannelinterface`
  ADD PRIMARY KEY (`id`),
  ADD KEY `datacenterdevice_id` (`datacenterdevice_id`);

--
-- Indices de la tabla `functionalci`
--
ALTER TABLE `functionalci`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(95)),
  ADD KEY `org_id` (`org_id`),
  ADD KEY `finalclass` (`finalclass`(95));

--
-- Indices de la tabla `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(95)),
  ADD KEY `org_id` (`org_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `parent_id_left` (`parent_id_left`),
  ADD KEY `parent_id_right` (`parent_id_right`);

--
-- Indices de la tabla `hypervisor`
--
ALTER TABLE `hypervisor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `farm_id` (`farm_id`),
  ADD KEY `server_id` (`server_id`);

--
-- Indices de la tabla `inline_image`
--
ALTER TABLE `inline_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `temp_id` (`temp_id`(95)),
  ADD KEY `item_class` (`item_class`(95)),
  ADD KEY `item_class_item_id` (`item_class`(95),`item_id`),
  ADD KEY `item_org_id` (`item_org_id`);

--
-- Indices de la tabla `iosversion`
--
ALTER TABLE `iosversion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Indices de la tabla `ipinterface`
--
ALTER TABLE `ipinterface`
  ADD PRIMARY KEY (`id`),
  ADD KEY `finalclass` (`finalclass`(95));

--
-- Indices de la tabla `ipphone`
--
ALTER TABLE `ipphone`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `key_value_store`
--
ALTER TABLE `key_value_store`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key_name` (`key_name`(95)),
  ADD KEY `key_name_namespace` (`key_name`(95),`namespace`(95));

--
-- Indices de la tabla `licence`
--
ALTER TABLE `licence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(95)),
  ADD KEY `org_id` (`org_id`),
  ADD KEY `finalclass` (`finalclass`(95));

--
-- Indices de la tabla `lnkapplicationsolutiontobusinessprocess`
--
ALTER TABLE `lnkapplicationsolutiontobusinessprocess`
  ADD PRIMARY KEY (`id`),
  ADD KEY `businessprocess_id` (`businessprocess_id`),
  ADD KEY `applicationsolution_id` (`applicationsolution_id`);

--
-- Indices de la tabla `lnkapplicationsolutiontofunctionalci`
--
ALTER TABLE `lnkapplicationsolutiontofunctionalci`
  ADD PRIMARY KEY (`id`),
  ADD KEY `applicationsolution_id` (`applicationsolution_id`),
  ADD KEY `functionalci_id` (`functionalci_id`);

--
-- Indices de la tabla `lnkconnectablecitonetworkdevice`
--
ALTER TABLE `lnkconnectablecitonetworkdevice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `networkdevice_id` (`networkdevice_id`),
  ADD KEY `connectableci_id` (`connectableci_id`);

--
-- Indices de la tabla `lnkcontacttocontract`
--
ALTER TABLE `lnkcontacttocontract`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contract_id` (`contract_id`),
  ADD KEY `contact_id` (`contact_id`);

--
-- Indices de la tabla `lnkcontacttofunctionalci`
--
ALTER TABLE `lnkcontacttofunctionalci`
  ADD PRIMARY KEY (`id`),
  ADD KEY `functionalci_id` (`functionalci_id`),
  ADD KEY `contact_id` (`contact_id`);

--
-- Indices de la tabla `lnkcontacttoservice`
--
ALTER TABLE `lnkcontacttoservice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `contact_id` (`contact_id`);

--
-- Indices de la tabla `lnkcontacttoticket`
--
ALTER TABLE `lnkcontacttoticket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_id` (`ticket_id`),
  ADD KEY `contact_id` (`contact_id`);

--
-- Indices de la tabla `lnkcontracttodocument`
--
ALTER TABLE `lnkcontracttodocument`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contract_id` (`contract_id`),
  ADD KEY `document_id` (`document_id`);

--
-- Indices de la tabla `lnkcustomercontracttofunctionalci`
--
ALTER TABLE `lnkcustomercontracttofunctionalci`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customercontract_id` (`customercontract_id`),
  ADD KEY `functionalci_id` (`functionalci_id`);

--
-- Indices de la tabla `lnkcustomercontracttoprovidercontract`
--
ALTER TABLE `lnkcustomercontracttoprovidercontract`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customercontract_id` (`customercontract_id`),
  ADD KEY `providercontract_id` (`providercontract_id`);

--
-- Indices de la tabla `lnkcustomercontracttoservice`
--
ALTER TABLE `lnkcustomercontracttoservice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customercontract_id` (`customercontract_id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `sla_id` (`sla_id`);

--
-- Indices de la tabla `lnkdatacenterdevicetosan`
--
ALTER TABLE `lnkdatacenterdevicetosan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `san_id` (`san_id`),
  ADD KEY `datacenterdevice_id` (`datacenterdevice_id`);

--
-- Indices de la tabla `lnkdeliverymodeltocontact`
--
ALTER TABLE `lnkdeliverymodeltocontact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deliverymodel_id` (`deliverymodel_id`),
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indices de la tabla `lnkdocumenttofunctionalci`
--
ALTER TABLE `lnkdocumenttofunctionalci`
  ADD PRIMARY KEY (`id`),
  ADD KEY `functionalci_id` (`functionalci_id`),
  ADD KEY `document_id` (`document_id`);

--
-- Indices de la tabla `lnkdocumenttolicence`
--
ALTER TABLE `lnkdocumenttolicence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `licence_id` (`licence_id`),
  ADD KEY `document_id` (`document_id`);

--
-- Indices de la tabla `lnkdocumenttopatch`
--
ALTER TABLE `lnkdocumenttopatch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patch_id` (`patch_id`),
  ADD KEY `document_id` (`document_id`);

--
-- Indices de la tabla `lnkdocumenttoservice`
--
ALTER TABLE `lnkdocumenttoservice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `document_id` (`document_id`);

--
-- Indices de la tabla `lnkdocumenttosoftware`
--
ALTER TABLE `lnkdocumenttosoftware`
  ADD PRIMARY KEY (`id`),
  ADD KEY `software_id` (`software_id`),
  ADD KEY `document_id` (`document_id`);

--
-- Indices de la tabla `lnkfunctionalcitoospatch`
--
ALTER TABLE `lnkfunctionalcitoospatch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ospatch_id` (`ospatch_id`),
  ADD KEY `functionalci_id` (`functionalci_id`);

--
-- Indices de la tabla `lnkfunctionalcitoprovidercontract`
--
ALTER TABLE `lnkfunctionalcitoprovidercontract`
  ADD PRIMARY KEY (`id`),
  ADD KEY `providercontract_id` (`providercontract_id`),
  ADD KEY `functionalci_id` (`functionalci_id`);

--
-- Indices de la tabla `lnkfunctionalcitoticket`
--
ALTER TABLE `lnkfunctionalcitoticket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_id` (`ticket_id`),
  ADD KEY `functionalci_id` (`functionalci_id`);

--
-- Indices de la tabla `lnkgrouptoci`
--
ALTER TABLE `lnkgrouptoci`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `ci_id` (`ci_id`);

--
-- Indices de la tabla `lnkpersontoteam`
--
ALTER TABLE `lnkpersontoteam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `person_id` (`person_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indices de la tabla `lnkphysicalinterfacetovlan`
--
ALTER TABLE `lnkphysicalinterfacetovlan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `physicalinterface_id` (`physicalinterface_id`),
  ADD KEY `vlan_id` (`vlan_id`);

--
-- Indices de la tabla `lnkservertovolume`
--
ALTER TABLE `lnkservertovolume`
  ADD PRIMARY KEY (`id`),
  ADD KEY `volume_id` (`volume_id`),
  ADD KEY `server_id` (`server_id`);

--
-- Indices de la tabla `lnkslatoslt`
--
ALTER TABLE `lnkslatoslt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sla_id` (`sla_id`),
  ADD KEY `slt_id` (`slt_id`);

--
-- Indices de la tabla `lnksoftwareinstancetosoftwarepatch`
--
ALTER TABLE `lnksoftwareinstancetosoftwarepatch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `softwarepatch_id` (`softwarepatch_id`),
  ADD KEY `softwareinstance_id` (`softwareinstance_id`);

--
-- Indices de la tabla `lnksubnettovlan`
--
ALTER TABLE `lnksubnettovlan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subnet_id` (`subnet_id`),
  ADD KEY `vlan_id` (`vlan_id`);

--
-- Indices de la tabla `lnkvirtualdevicetovolume`
--
ALTER TABLE `lnkvirtualdevicetovolume`
  ADD PRIMARY KEY (`id`),
  ADD KEY `volume_id` (`volume_id`),
  ADD KEY `virtualdevice_id` (`virtualdevice_id`);

--
-- Indices de la tabla `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(95)),
  ADD KEY `org_id` (`org_id`);

--
-- Indices de la tabla `logicalinterface`
--
ALTER TABLE `logicalinterface`
  ADD PRIMARY KEY (`id`),
  ADD KEY `virtualmachine_id` (`virtualmachine_id`);

--
-- Indices de la tabla `logicalvolume`
--
ALTER TABLE `logicalvolume`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(95)),
  ADD KEY `storagesystem_id` (`storagesystem_id`);

--
-- Indices de la tabla `middleware`
--
ALTER TABLE `middleware`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `middlewareinstance`
--
ALTER TABLE `middlewareinstance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `middleware_id` (`middleware_id`);

--
-- Indices de la tabla `mobilephone`
--
ALTER TABLE `mobilephone`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Indices de la tabla `nas`
--
ALTER TABLE `nas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `nasfilesystem`
--
ALTER TABLE `nasfilesystem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(95)),
  ADD KEY `nas_id` (`nas_id`);

--
-- Indices de la tabla `networkdevice`
--
ALTER TABLE `networkdevice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `networkdevicetype_id` (`networkdevicetype_id`),
  ADD KEY `iosversion_id` (`iosversion_id`);

--
-- Indices de la tabla `networkdevicetype`
--
ALTER TABLE `networkdevicetype`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `networkinterface`
--
ALTER TABLE `networkinterface`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(95)),
  ADD KEY `finalclass` (`finalclass`(95));

--
-- Indices de la tabla `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(95)),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `parent_id_left` (`parent_id_left`),
  ADD KEY `parent_id_right` (`parent_id_right`),
  ADD KEY `deliverymodel_id` (`deliverymodel_id`);

--
-- Indices de la tabla `osfamily`
--
ALTER TABLE `osfamily`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oslicence`
--
ALTER TABLE `oslicence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `osversion_id` (`osversion_id`);

--
-- Indices de la tabla `ospatch`
--
ALTER TABLE `ospatch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `osversion_id` (`osversion_id`);

--
-- Indices de la tabla `osversion`
--
ALTER TABLE `osversion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `osfamily_id` (`osfamily_id`);

--
-- Indices de la tabla `othersoftware`
--
ALTER TABLE `othersoftware`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `patch`
--
ALTER TABLE `patch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(95)),
  ADD KEY `finalclass` (`finalclass`(95));

--
-- Indices de la tabla `pc`
--
ALTER TABLE `pc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `osfamily_id` (`osfamily_id`),
  ADD KEY `osversion_id` (`osversion_id`);

--
-- Indices de la tabla `pcsoftware`
--
ALTER TABLE `pcsoftware`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pdu`
--
ALTER TABLE `pdu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rack_id` (`rack_id`),
  ADD KEY `powerstart_id` (`powerstart_id`);

--
-- Indices de la tabla `peripheral`
--
ALTER TABLE `peripheral`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`),
  ADD KEY `first_name` (`first_name`(95)),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `manager_id` (`manager_id`);

--
-- Indices de la tabla `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `physicaldevice`
--
ALTER TABLE `physicaldevice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `model_id` (`model_id`),
  ADD KEY `finalclass` (`finalclass`(95));

--
-- Indices de la tabla `physicalinterface`
--
ALTER TABLE `physicalinterface`
  ADD PRIMARY KEY (`id`),
  ADD KEY `connectableci_id` (`connectableci_id`);

--
-- Indices de la tabla `powerconnection`
--
ALTER TABLE `powerconnection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `finalclass` (`finalclass`(95));

--
-- Indices de la tabla `powersource`
--
ALTER TABLE `powersource`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `printer`
--
ALTER TABLE `printer`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priv_action`
--
ALTER TABLE `priv_action`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(95)),
  ADD KEY `realclass` (`realclass`(95));

--
-- Indices de la tabla `priv_action_email`
--
ALTER TABLE `priv_action_email`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priv_action_notification`
--
ALTER TABLE `priv_action_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `realclass` (`realclass`(95));

--
-- Indices de la tabla `priv_app_dashboards`
--
ALTER TABLE `priv_app_dashboards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `priv_app_preferences`
--
ALTER TABLE `priv_app_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indices de la tabla `priv_async_send_email`
--
ALTER TABLE `priv_async_send_email`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priv_async_task`
--
ALTER TABLE `priv_async_task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created` (`created`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `realclass` (`realclass`(95));

--
-- Indices de la tabla `priv_auditcategory`
--
ALTER TABLE `priv_auditcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(95));

--
-- Indices de la tabla `priv_auditrule`
--
ALTER TABLE `priv_auditrule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(95)),
  ADD KEY `category_id` (`category_id`);

--
-- Indices de la tabla `priv_backgroundtask`
--
ALTER TABLE `priv_backgroundtask`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_name` (`class_name`(95));

--
-- Indices de la tabla `priv_bulk_export_result`
--
ALTER TABLE `priv_bulk_export_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created` (`created`);

--
-- Indices de la tabla `priv_change`
--
ALTER TABLE `priv_change`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date` (`date`),
  ADD KEY `origin` (`origin`);

--
-- Indices de la tabla `priv_changeop`
--
ALTER TABLE `priv_changeop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `changeid` (`changeid`),
  ADD KEY `optype` (`optype`(95)),
  ADD KEY `objclass_objkey` (`objclass`(95),`objkey`);

--
-- Indices de la tabla `priv_changeop_attachment_added`
--
ALTER TABLE `priv_changeop_attachment_added`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attachment_id` (`attachment_id`);

--
-- Indices de la tabla `priv_changeop_attachment_removed`
--
ALTER TABLE `priv_changeop_attachment_removed`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priv_changeop_create`
--
ALTER TABLE `priv_changeop_create`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priv_changeop_delete`
--
ALTER TABLE `priv_changeop_delete`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priv_changeop_links`
--
ALTER TABLE `priv_changeop_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `optype` (`optype`(95));

--
-- Indices de la tabla `priv_changeop_links_addremove`
--
ALTER TABLE `priv_changeop_links_addremove`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priv_changeop_links_tune`
--
ALTER TABLE `priv_changeop_links_tune`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priv_changeop_plugin`
--
ALTER TABLE `priv_changeop_plugin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priv_changeop_setatt`
--
ALTER TABLE `priv_changeop_setatt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `optype` (`optype`(95));

--
-- Indices de la tabla `priv_changeop_setatt_custfields`
--
ALTER TABLE `priv_changeop_setatt_custfields`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priv_changeop_setatt_data`
--
ALTER TABLE `priv_changeop_setatt_data`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priv_changeop_setatt_encrypted`
--
ALTER TABLE `priv_changeop_setatt_encrypted`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priv_changeop_setatt_html`
--
ALTER TABLE `priv_changeop_setatt_html`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priv_changeop_setatt_log`
--
ALTER TABLE `priv_changeop_setatt_log`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priv_changeop_setatt_longtext`
--
ALTER TABLE `priv_changeop_setatt_longtext`
  ADD PRIMARY KEY (`id`),
  ADD KEY `optype` (`optype`(95));

--
-- Indices de la tabla `priv_changeop_setatt_pwd`
--
ALTER TABLE `priv_changeop_setatt_pwd`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priv_changeop_setatt_scalar`
--
ALTER TABLE `priv_changeop_setatt_scalar`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priv_changeop_setatt_tagset`
--
ALTER TABLE `priv_changeop_setatt_tagset`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priv_changeop_setatt_text`
--
ALTER TABLE `priv_changeop_setatt_text`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priv_changeop_setatt_url`
--
ALTER TABLE `priv_changeop_setatt_url`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priv_db_properties`
--
ALTER TABLE `priv_db_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(95));

--
-- Indices de la tabla `priv_event`
--
ALTER TABLE `priv_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `realclass` (`realclass`(95));

--
-- Indices de la tabla `priv_event_email`
--
ALTER TABLE `priv_event_email`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priv_event_issue`
--
ALTER TABLE `priv_event_issue`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priv_event_loginusage`
--
ALTER TABLE `priv_event_loginusage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `priv_event_notification`
--
ALTER TABLE `priv_event_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trigger_id` (`trigger_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `realclass` (`realclass`(95)),
  ADD KEY `object_id` (`object_id`);

--
-- Indices de la tabla `priv_event_onobject`
--
ALTER TABLE `priv_event_onobject`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priv_event_restservice`
--
ALTER TABLE `priv_event_restservice`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priv_event_webservice`
--
ALTER TABLE `priv_event_webservice`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priv_extension_install`
--
ALTER TABLE `priv_extension_install`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priv_internaluser`
--
ALTER TABLE `priv_internaluser`
  ADD PRIMARY KEY (`id`),
  ADD KEY `finalclass` (`finalclass`(95));

--
-- Indices de la tabla `priv_link_action_trigger`
--
ALTER TABLE `priv_link_action_trigger`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `trigger_id` (`trigger_id`);

--
-- Indices de la tabla `priv_module_install`
--
ALTER TABLE `priv_module_install`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indices de la tabla `priv_ownership_token`
--
ALTER TABLE `priv_ownership_token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `obj_class` (`obj_class`(95)),
  ADD KEY `obj_key` (`obj_key`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `priv_query`
--
ALTER TABLE `priv_query`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(95)),
  ADD KEY `realclass` (`realclass`(95));

--
-- Indices de la tabla `priv_query_oql`
--
ALTER TABLE `priv_query_oql`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priv_shortcut`
--
ALTER TABLE `priv_shortcut`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `name` (`name`(95)),
  ADD KEY `realclass` (`realclass`(95));

--
-- Indices de la tabla `priv_shortcut_oql`
--
ALTER TABLE `priv_shortcut_oql`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priv_sync_att`
--
ALTER TABLE `priv_sync_att`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sync_source_id` (`sync_source_id`),
  ADD KEY `attcode` (`attcode`(95)),
  ADD KEY `finalclass` (`finalclass`(95));

--
-- Indices de la tabla `priv_sync_att_extkey`
--
ALTER TABLE `priv_sync_att_extkey`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priv_sync_att_linkset`
--
ALTER TABLE `priv_sync_att_linkset`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priv_sync_datasource`
--
ALTER TABLE `priv_sync_datasource`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(95)),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `notify_contact_id` (`notify_contact_id`),
  ADD KEY `scope_class` (`scope_class`(95));

--
-- Indices de la tabla `priv_sync_log`
--
ALTER TABLE `priv_sync_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sync_source_id` (`sync_source_id`);

--
-- Indices de la tabla `priv_sync_replica`
--
ALTER TABLE `priv_sync_replica`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sync_source_id` (`sync_source_id`),
  ADD KEY `dest_class` (`dest_class`(95)),
  ADD KEY `dest_class_dest_id` (`dest_class`(95),`dest_id`);

--
-- Indices de la tabla `priv_tagfielddata`
--
ALTER TABLE `priv_tagfielddata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `label` (`label`(95));

--
-- Indices de la tabla `priv_trigger`
--
ALTER TABLE `priv_trigger`
  ADD PRIMARY KEY (`id`),
  ADD KEY `description` (`description`(95)),
  ADD KEY `realclass` (`realclass`(95));
ALTER TABLE `priv_trigger` ADD FULLTEXT KEY `context` (`context`);

--
-- Indices de la tabla `priv_trigger_onobjcreate`
--
ALTER TABLE `priv_trigger_onobjcreate`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priv_trigger_onobjdelete`
--
ALTER TABLE `priv_trigger_onobjdelete`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priv_trigger_onobject`
--
ALTER TABLE `priv_trigger_onobject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target_class` (`target_class`(95)),
  ADD KEY `realclass` (`realclass`(95));

--
-- Indices de la tabla `priv_trigger_onobjupdate`
--
ALTER TABLE `priv_trigger_onobjupdate`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `priv_trigger_onobjupdate` ADD FULLTEXT KEY `target_attcodes` (`target_attcodes`);

--
-- Indices de la tabla `priv_trigger_onportalupdate`
--
ALTER TABLE `priv_trigger_onportalupdate`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priv_trigger_onstatechange`
--
ALTER TABLE `priv_trigger_onstatechange`
  ADD PRIMARY KEY (`id`),
  ADD KEY `realclass` (`realclass`(95));

--
-- Indices de la tabla `priv_trigger_onstateenter`
--
ALTER TABLE `priv_trigger_onstateenter`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priv_trigger_onstateleave`
--
ALTER TABLE `priv_trigger_onstateleave`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `priv_trigger_threshold`
--
ALTER TABLE `priv_trigger_threshold`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `priv_trigger_threshold` ADD FULLTEXT KEY `stop_watch_code` (`stop_watch_code`);

--
-- Indices de la tabla `priv_urp_profiles`
--
ALTER TABLE `priv_urp_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(95));

--
-- Indices de la tabla `priv_urp_userorg`
--
ALTER TABLE `priv_urp_userorg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `allowed_org_id` (`allowed_org_id`);

--
-- Indices de la tabla `priv_urp_userprofile`
--
ALTER TABLE `priv_urp_userprofile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `profileid` (`profileid`);

--
-- Indices de la tabla `priv_user`
--
ALTER TABLE `priv_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contactid` (`contactid`),
  ADD KEY `login` (`login`(95)),
  ADD KEY `language` (`language`(95)),
  ADD KEY `finalclass` (`finalclass`(95));

--
-- Indices de la tabla `priv_user_local`
--
ALTER TABLE `priv_user_local`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `providercontract`
--
ALTER TABLE `providercontract`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rack`
--
ALTER TABLE `rack`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sanswitch`
--
ALTER TABLE `sanswitch`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `server`
--
ALTER TABLE `server`
  ADD PRIMARY KEY (`id`),
  ADD KEY `osfamily_id` (`osfamily_id`),
  ADD KEY `osversion_id` (`osversion_id`),
  ADD KEY `oslicence_id` (`oslicence_id`);

--
-- Indices de la tabla `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(95)),
  ADD KEY `org_id` (`org_id`),
  ADD KEY `servicefamily_id` (`servicefamily_id`);

--
-- Indices de la tabla `servicefamilly`
--
ALTER TABLE `servicefamilly`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(95));

--
-- Indices de la tabla `servicesubcategory`
--
ALTER TABLE `servicesubcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(95)),
  ADD KEY `service_id` (`service_id`);

--
-- Indices de la tabla `sla`
--
ALTER TABLE `sla`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(95)),
  ADD KEY `org_id` (`org_id`);

--
-- Indices de la tabla `slt`
--
ALTER TABLE `slt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(95));

--
-- Indices de la tabla `software`
--
ALTER TABLE `software`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(95)),
  ADD KEY `version` (`version`(95));

--
-- Indices de la tabla `softwareinstance`
--
ALTER TABLE `softwareinstance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `functionalci_id` (`functionalci_id`),
  ADD KEY `software_id` (`software_id`),
  ADD KEY `softwarelicence_id` (`softwarelicence_id`),
  ADD KEY `finalclass` (`finalclass`(95));

--
-- Indices de la tabla `softwarelicence`
--
ALTER TABLE `softwarelicence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `software_id` (`software_id`);

--
-- Indices de la tabla `softwarepatch`
--
ALTER TABLE `softwarepatch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `software_id` (`software_id`);

--
-- Indices de la tabla `storagesystem`
--
ALTER TABLE `storagesystem`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subnet`
--
ALTER TABLE `subnet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `org_id` (`org_id`),
  ADD KEY `ip` (`ip`(95)),
  ADD KEY `ip_mask` (`ip_mask`(95));

--
-- Indices de la tabla `tablet`
--
ALTER TABLE `tablet`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tape`
--
ALTER TABLE `tape`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(95)),
  ADD KEY `tapelibrary_id` (`tapelibrary_id`);

--
-- Indices de la tabla `tapelibrary`
--
ALTER TABLE `tapelibrary`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `telephonyci`
--
ALTER TABLE `telephonyci`
  ADD PRIMARY KEY (`id`),
  ADD KEY `finalclass` (`finalclass`(95));

--
-- Indices de la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operational_status` (`operational_status`),
  ADD KEY `ref` (`ref`(95)),
  ADD KEY `org_id` (`org_id`),
  ADD KEY `caller_id` (`caller_id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `agent_id` (`agent_id`),
  ADD KEY `finalclass` (`finalclass`(95));

--
-- Indices de la tabla `ticket_incident`
--
ALTER TABLE `ticket_incident`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `servicesubcategory_id` (`servicesubcategory_id`),
  ADD KEY `parent_incident_id` (`parent_incident_id`),
  ADD KEY `parent_problem_id` (`parent_problem_id`),
  ADD KEY `parent_change_id` (`parent_change_id`);

--
-- Indices de la tabla `ticket_problem`
--
ALTER TABLE `ticket_problem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `servicesubcategory_id` (`servicesubcategory_id`),
  ADD KEY `related_change_id` (`related_change_id`);

--
-- Indices de la tabla `ticket_request`
--
ALTER TABLE `ticket_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `approver_id` (`approver_id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `servicesubcategory_id` (`servicesubcategory_id`),
  ADD KEY `parent_request_id` (`parent_request_id`),
  ADD KEY `parent_incident_id` (`parent_incident_id`),
  ADD KEY `parent_problem_id` (`parent_problem_id`),
  ADD KEY `parent_change_id` (`parent_change_id`);

--
-- Indices de la tabla `typology`
--
ALTER TABLE `typology`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(95)),
  ADD KEY `finalclass` (`finalclass`(95));

--
-- Indices de la tabla `virtualdevice`
--
ALTER TABLE `virtualdevice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `finalclass` (`finalclass`(95));

--
-- Indices de la tabla `virtualhost`
--
ALTER TABLE `virtualhost`
  ADD PRIMARY KEY (`id`),
  ADD KEY `finalclass` (`finalclass`(95));

--
-- Indices de la tabla `virtualmachine`
--
ALTER TABLE `virtualmachine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `virtualhost_id` (`virtualhost_id`),
  ADD KEY `osfamily_id` (`osfamily_id`),
  ADD KEY `osversion_id` (`osversion_id`),
  ADD KEY `oslicence_id` (`oslicence_id`);

--
-- Indices de la tabla `vlan`
--
ALTER TABLE `vlan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vlan_tag` (`vlan_tag`(95)),
  ADD KEY `org_id` (`org_id`);

--
-- Indices de la tabla `webapplication`
--
ALTER TABLE `webapplication`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webserver_id` (`webserver_id`);

--
-- Indices de la tabla `webserver`
--
ALTER TABLE `webserver`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `workorder`
--
ALTER TABLE `workorder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`(95)),
  ADD KEY `ticket_id` (`ticket_id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `applicationsolution`
--
ALTER TABLE `applicationsolution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `attachment`
--
ALTER TABLE `attachment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `businessprocess`
--
ALTER TABLE `businessprocess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `change`
--
ALTER TABLE `change`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `change_approved`
--
ALTER TABLE `change_approved`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `change_emergency`
--
ALTER TABLE `change_emergency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `change_normal`
--
ALTER TABLE `change_normal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `change_routine`
--
ALTER TABLE `change_routine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `connectableci`
--
ALTER TABLE `connectableci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `contacttype`
--
ALTER TABLE `contacttype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contract`
--
ALTER TABLE `contract`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contracttype`
--
ALTER TABLE `contracttype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `customercontract`
--
ALTER TABLE `customercontract`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `databaseschema`
--
ALTER TABLE `databaseschema`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `datacenterdevice`
--
ALTER TABLE `datacenterdevice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `dbserver`
--
ALTER TABLE `dbserver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `deliverymodel`
--
ALTER TABLE `deliverymodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `document`
--
ALTER TABLE `document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `documentfile`
--
ALTER TABLE `documentfile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `documentnote`
--
ALTER TABLE `documentnote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `documenttype`
--
ALTER TABLE `documenttype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `documentweb`
--
ALTER TABLE `documentweb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `enclosure`
--
ALTER TABLE `enclosure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `farm`
--
ALTER TABLE `farm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fiberchannelinterface`
--
ALTER TABLE `fiberchannelinterface`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `functionalci`
--
ALTER TABLE `functionalci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `group`
--
ALTER TABLE `group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hypervisor`
--
ALTER TABLE `hypervisor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inline_image`
--
ALTER TABLE `inline_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `iosversion`
--
ALTER TABLE `iosversion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ipinterface`
--
ALTER TABLE `ipinterface`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ipphone`
--
ALTER TABLE `ipphone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `key_value_store`
--
ALTER TABLE `key_value_store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `licence`
--
ALTER TABLE `licence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lnkapplicationsolutiontobusinessprocess`
--
ALTER TABLE `lnkapplicationsolutiontobusinessprocess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lnkapplicationsolutiontofunctionalci`
--
ALTER TABLE `lnkapplicationsolutiontofunctionalci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lnkconnectablecitonetworkdevice`
--
ALTER TABLE `lnkconnectablecitonetworkdevice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lnkcontacttocontract`
--
ALTER TABLE `lnkcontacttocontract`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lnkcontacttofunctionalci`
--
ALTER TABLE `lnkcontacttofunctionalci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lnkcontacttoservice`
--
ALTER TABLE `lnkcontacttoservice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lnkcontacttoticket`
--
ALTER TABLE `lnkcontacttoticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lnkcontracttodocument`
--
ALTER TABLE `lnkcontracttodocument`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lnkcustomercontracttofunctionalci`
--
ALTER TABLE `lnkcustomercontracttofunctionalci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lnkcustomercontracttoprovidercontract`
--
ALTER TABLE `lnkcustomercontracttoprovidercontract`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lnkcustomercontracttoservice`
--
ALTER TABLE `lnkcustomercontracttoservice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lnkdatacenterdevicetosan`
--
ALTER TABLE `lnkdatacenterdevicetosan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lnkdeliverymodeltocontact`
--
ALTER TABLE `lnkdeliverymodeltocontact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lnkdocumenttofunctionalci`
--
ALTER TABLE `lnkdocumenttofunctionalci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lnkdocumenttolicence`
--
ALTER TABLE `lnkdocumenttolicence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lnkdocumenttopatch`
--
ALTER TABLE `lnkdocumenttopatch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lnkdocumenttoservice`
--
ALTER TABLE `lnkdocumenttoservice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lnkdocumenttosoftware`
--
ALTER TABLE `lnkdocumenttosoftware`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lnkfunctionalcitoospatch`
--
ALTER TABLE `lnkfunctionalcitoospatch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lnkfunctionalcitoprovidercontract`
--
ALTER TABLE `lnkfunctionalcitoprovidercontract`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lnkfunctionalcitoticket`
--
ALTER TABLE `lnkfunctionalcitoticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lnkgrouptoci`
--
ALTER TABLE `lnkgrouptoci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lnkpersontoteam`
--
ALTER TABLE `lnkpersontoteam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lnkphysicalinterfacetovlan`
--
ALTER TABLE `lnkphysicalinterfacetovlan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lnkservertovolume`
--
ALTER TABLE `lnkservertovolume`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lnkslatoslt`
--
ALTER TABLE `lnkslatoslt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lnksoftwareinstancetosoftwarepatch`
--
ALTER TABLE `lnksoftwareinstancetosoftwarepatch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lnksubnettovlan`
--
ALTER TABLE `lnksubnettovlan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lnkvirtualdevicetovolume`
--
ALTER TABLE `lnkvirtualdevicetovolume`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `logicalinterface`
--
ALTER TABLE `logicalinterface`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `logicalvolume`
--
ALTER TABLE `logicalvolume`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `middleware`
--
ALTER TABLE `middleware`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `middlewareinstance`
--
ALTER TABLE `middlewareinstance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mobilephone`
--
ALTER TABLE `mobilephone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `model`
--
ALTER TABLE `model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `nas`
--
ALTER TABLE `nas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `nasfilesystem`
--
ALTER TABLE `nasfilesystem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `networkdevice`
--
ALTER TABLE `networkdevice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `networkdevicetype`
--
ALTER TABLE `networkdevicetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `networkinterface`
--
ALTER TABLE `networkinterface`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `organization`
--
ALTER TABLE `organization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `osfamily`
--
ALTER TABLE `osfamily`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `oslicence`
--
ALTER TABLE `oslicence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ospatch`
--
ALTER TABLE `ospatch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `osversion`
--
ALTER TABLE `osversion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `othersoftware`
--
ALTER TABLE `othersoftware`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `patch`
--
ALTER TABLE `patch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pc`
--
ALTER TABLE `pc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pcsoftware`
--
ALTER TABLE `pcsoftware`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pdu`
--
ALTER TABLE `pdu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `peripheral`
--
ALTER TABLE `peripheral`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `phone`
--
ALTER TABLE `phone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `physicaldevice`
--
ALTER TABLE `physicaldevice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `physicalinterface`
--
ALTER TABLE `physicalinterface`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `powerconnection`
--
ALTER TABLE `powerconnection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `powersource`
--
ALTER TABLE `powersource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `printer`
--
ALTER TABLE `printer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_action`
--
ALTER TABLE `priv_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_action_email`
--
ALTER TABLE `priv_action_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_action_notification`
--
ALTER TABLE `priv_action_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_app_dashboards`
--
ALTER TABLE `priv_app_dashboards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_app_preferences`
--
ALTER TABLE `priv_app_preferences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `priv_async_send_email`
--
ALTER TABLE `priv_async_send_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_async_task`
--
ALTER TABLE `priv_async_task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_auditcategory`
--
ALTER TABLE `priv_auditcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_auditrule`
--
ALTER TABLE `priv_auditrule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_backgroundtask`
--
ALTER TABLE `priv_backgroundtask`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_bulk_export_result`
--
ALTER TABLE `priv_bulk_export_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_change`
--
ALTER TABLE `priv_change`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `priv_changeop`
--
ALTER TABLE `priv_changeop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `priv_db_properties`
--
ALTER TABLE `priv_db_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `priv_event`
--
ALTER TABLE `priv_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_event_email`
--
ALTER TABLE `priv_event_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_event_issue`
--
ALTER TABLE `priv_event_issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_event_loginusage`
--
ALTER TABLE `priv_event_loginusage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_event_notification`
--
ALTER TABLE `priv_event_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_event_onobject`
--
ALTER TABLE `priv_event_onobject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_event_restservice`
--
ALTER TABLE `priv_event_restservice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_event_webservice`
--
ALTER TABLE `priv_event_webservice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_extension_install`
--
ALTER TABLE `priv_extension_install`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `priv_internaluser`
--
ALTER TABLE `priv_internaluser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `priv_link_action_trigger`
--
ALTER TABLE `priv_link_action_trigger`
  MODIFY `link_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_module_install`
--
ALTER TABLE `priv_module_install`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `priv_ownership_token`
--
ALTER TABLE `priv_ownership_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_query`
--
ALTER TABLE `priv_query`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_query_oql`
--
ALTER TABLE `priv_query_oql`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_shortcut`
--
ALTER TABLE `priv_shortcut`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_shortcut_oql`
--
ALTER TABLE `priv_shortcut_oql`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_sync_att`
--
ALTER TABLE `priv_sync_att`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_sync_att_extkey`
--
ALTER TABLE `priv_sync_att_extkey`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_sync_att_linkset`
--
ALTER TABLE `priv_sync_att_linkset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_sync_datasource`
--
ALTER TABLE `priv_sync_datasource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_sync_log`
--
ALTER TABLE `priv_sync_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_sync_replica`
--
ALTER TABLE `priv_sync_replica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_tagfielddata`
--
ALTER TABLE `priv_tagfielddata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_trigger`
--
ALTER TABLE `priv_trigger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_trigger_onobjcreate`
--
ALTER TABLE `priv_trigger_onobjcreate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_trigger_onobjdelete`
--
ALTER TABLE `priv_trigger_onobjdelete`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_trigger_onobject`
--
ALTER TABLE `priv_trigger_onobject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_trigger_onobjupdate`
--
ALTER TABLE `priv_trigger_onobjupdate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_trigger_onportalupdate`
--
ALTER TABLE `priv_trigger_onportalupdate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_trigger_onstatechange`
--
ALTER TABLE `priv_trigger_onstatechange`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_trigger_onstateenter`
--
ALTER TABLE `priv_trigger_onstateenter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_trigger_onstateleave`
--
ALTER TABLE `priv_trigger_onstateleave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_trigger_threshold`
--
ALTER TABLE `priv_trigger_threshold`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_urp_profiles`
--
ALTER TABLE `priv_urp_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1025;

--
-- AUTO_INCREMENT de la tabla `priv_urp_userorg`
--
ALTER TABLE `priv_urp_userorg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `priv_urp_userprofile`
--
ALTER TABLE `priv_urp_userprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `priv_user`
--
ALTER TABLE `priv_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `priv_user_local`
--
ALTER TABLE `priv_user_local`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `providercontract`
--
ALTER TABLE `providercontract`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rack`
--
ALTER TABLE `rack`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sanswitch`
--
ALTER TABLE `sanswitch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `server`
--
ALTER TABLE `server`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `servicefamilly`
--
ALTER TABLE `servicefamilly`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `servicesubcategory`
--
ALTER TABLE `servicesubcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sla`
--
ALTER TABLE `sla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `slt`
--
ALTER TABLE `slt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `software`
--
ALTER TABLE `software`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `softwareinstance`
--
ALTER TABLE `softwareinstance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `softwarelicence`
--
ALTER TABLE `softwarelicence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `softwarepatch`
--
ALTER TABLE `softwarepatch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `storagesystem`
--
ALTER TABLE `storagesystem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `subnet`
--
ALTER TABLE `subnet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tablet`
--
ALTER TABLE `tablet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tape`
--
ALTER TABLE `tape`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tapelibrary`
--
ALTER TABLE `tapelibrary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `telephonyci`
--
ALTER TABLE `telephonyci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ticket_incident`
--
ALTER TABLE `ticket_incident`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ticket_problem`
--
ALTER TABLE `ticket_problem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ticket_request`
--
ALTER TABLE `ticket_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `typology`
--
ALTER TABLE `typology`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `virtualdevice`
--
ALTER TABLE `virtualdevice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `virtualhost`
--
ALTER TABLE `virtualhost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `virtualmachine`
--
ALTER TABLE `virtualmachine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vlan`
--
ALTER TABLE `vlan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `webapplication`
--
ALTER TABLE `webapplication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `webserver`
--
ALTER TABLE `webserver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `workorder`
--
ALTER TABLE `workorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `ordenes_trabajo`
--
CREATE DATABASE IF NOT EXISTS `ordenes_trabajo` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ordenes_trabajo`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_08_31_212811_create_sessions_table', 1),
(7, '2021_08_31_213714_create_operadores_table', 1),
(8, '2021_08_31_213739_create_tipoordens_table', 1),
(9, '2021_08_31_214038_create_ordentrabs_table', 1),
(10, '2021_09_04_050635_create_cache_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operadores`
--

CREATE TABLE `operadores` (
  `id_operador` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `operadores`
--

INSERT INTO `operadores` (`id_operador`, `nombre`) VALUES
(1, 'PEDRO URIBE'),
(2, 'MARCELO OCAMPO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordentrabs`
--

CREATE TABLE `ordentrabs` (
  `id_orden` int(10) UNSIGNED NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_asignacion` date NOT NULL,
  `fecha_ejecucion` date NOT NULL,
  `id_tipo` int(10) UNSIGNED NOT NULL,
  `id_operador` int(10) UNSIGNED NOT NULL,
  `resultado` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ordentrabs`
--

INSERT INTO `ordentrabs` (`id_orden`, `fecha_creacion`, `fecha_asignacion`, `fecha_ejecucion`, `id_tipo`, `id_operador`, `resultado`, `valor`) VALUES
(1, '2021-09-04 05:17:03', '2021-09-04', '2021-09-04', 2, 1, 'PRUEBA', 1233.00),
(13, '1970-01-01 00:00:00', '1970-01-01', '1970-01-01', 1, 2, '\'Buen trabajo\'', 2000.00),
(14, '1970-01-01 00:00:00', '1970-01-01', '1970-01-01', 1, 2, '\'Excelente\'', 2000.00),
(15, '1970-01-01 00:00:00', '1970-01-01', '1970-01-01', 1, 2, '\'Excelente\'', 2000.00),
(16, '1970-01-01 00:00:00', '1970-01-01', '1970-01-01', 1, 2, '\'Excelente\'', 2000.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('A2Y7fZ53RrPVndFpF00qfcyrZ562tQMaeZIXWNJy', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36 Edg/92.0.902.84', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidkdxdWJEaU9SM0g1NE5ZOHlBSDBHU0tWbDZjempVcjI2QTB3YTE1QyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MjoiaHR0cDovL29yZGVuZXN0cmFiYWpvLnRlc3QvZ2VzdGlvbi1vcmRlbmVzIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9vcmRlbmVzdHJhYmFqby50ZXN0L2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1630732978),
('SBtUU8P40y6ayB7YgHAHKrT65Bf4moaPAyu3eOim', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36 Edg/92.0.902.84', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoid0lKb3ZsVDU2ZXdjVlZPZnF6UjR0RlRoak52NDFoNE9WN3lWVWs2MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly9vcmRlbmVzdHJhYmFqby50ZXN0L2dlc3Rpb24tb3JkZW5lcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCQuR0NrWm15REJTVTFXWDcyWGN2WmJ1NUxqeXo3L3laNVhTQ2E5dHpyTjdmSi5RNVIvdWM1cSI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkLkdDa1pteURCU1UxV1g3MlhjdlpidTVManl6Ny95WjVYU0NhOXR6ck43ZkouUTVSL3VjNXEiO30=', 1630732966),
('W9ML57UtXR5z4rnPPkC8jSR3vhlHOtKsdroCY0un', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36 Edg/92.0.902.84', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiZnp4dEdVTWxLY1ZSUWFhQTVsMWlPSlZ5RURyOWptcThQY1dHdlB3QiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyOiJodHRwOi8vb3JkZW5lc3RyYWJham8udGVzdC9nZXN0aW9uLW9yZGVuZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkLkdDa1pteURCU1UxV1g3MlhjdlpidTVManl6Ny95WjVYU0NhOXR6ck43ZkouUTVSL3VjNXEiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJC5HQ2tabXlEQlNVMVdYNzJYY3ZaYnU1TGp5ejcveVo1WFNDYTl0enJON2ZKLlE1Ui91YzVxIjt9', 1630734273);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoordens`
--

CREATE TABLE `tipoordens` (
  `id_tipo` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipoordens`
--

INSERT INTO `tipoordens` (`id_tipo`, `nombre`) VALUES
(1, 'ORDEN DE COMPRA'),
(2, 'ORDEN DE VENTA'),
(3, 'ORDEN DE REMISION');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'administrador', 'nandyruiz@hotmail.com', NULL, '$2y$10$.GCkZmyDBSU1WX72XcvZbu5Ljyz7/yZ5XSCa9tzrN7fJ.Q5R/uc5q', NULL, NULL, NULL, NULL, NULL, '2021-09-04 10:15:16', '2021-09-04 10:15:16');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `operadores`
--
ALTER TABLE `operadores`
  ADD PRIMARY KEY (`id_operador`);

--
-- Indices de la tabla `ordentrabs`
--
ALTER TABLE `ordentrabs`
  ADD PRIMARY KEY (`id_orden`),
  ADD KEY `ordentrabs_id_tipo_foreign` (`id_tipo`),
  ADD KEY `ordentrabs_id_operador_foreign` (`id_operador`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `tipoordens`
--
ALTER TABLE `tipoordens`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `operadores`
--
ALTER TABLE `operadores`
  MODIFY `id_operador` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ordentrabs`
--
ALTER TABLE `ordentrabs`
  MODIFY `id_orden` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipoordens`
--
ALTER TABLE `tipoordens`
  MODIFY `id_tipo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ordentrabs`
--
ALTER TABLE `ordentrabs`
  ADD CONSTRAINT `ordentrabs_id_operador_foreign` FOREIGN KEY (`id_operador`) REFERENCES `operadores` (`id_operador`),
  ADD CONSTRAINT `ordentrabs_id_tipo_foreign` FOREIGN KEY (`id_tipo`) REFERENCES `tipoordens` (`id_tipo`);
--
-- Base de datos: `orden_trabajo`
--
CREATE DATABASE IF NOT EXISTS `orden_trabajo` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `orden_trabajo`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(13, '2019_08_19_000000_create_failed_jobs_table', 1),
(14, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(15, '2021_09_01_194827_create_sessions_table', 1),
(16, '2021_09_01_195504_create_operadores_table', 1),
(17, '2021_09_01_195619_create_tipoordens_table', 1),
(18, '2021_09_01_195749_create_ordentrabs_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operadores`
--

CREATE TABLE `operadores` (
  `id_operador` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordentrabs`
--

CREATE TABLE `ordentrabs` (
  `id_orden` int(10) UNSIGNED NOT NULL,
  `fecha_asignacion` date NOT NULL,
  `fecha_ejecucion` date NOT NULL,
  `id_tipo` int(10) UNSIGNED NOT NULL,
  `id_operador` int(10) UNSIGNED NOT NULL,
  `resultado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
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
-- Estructura de tabla para la tabla `sessions`
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
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('cWjMlgK4mDRQdUVwgeQX3FM5YUfGy17FJmMss5HH', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36 Edg/92.0.902.84', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiaTRIN0tsZVFmY1hOeVJPdzBFN1BMRXpZMjVtNjdLRmhaUE5LY0ZlRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9vcmRlbnRyYWJham8udGVzdC9nZXN0aW9uLW9wZXJhZG9yZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkNXRkTmpUWWpoS1VwaG5td0Muejd0Lm40TDJrV2NPODh2Mzhjb1AyTHRDVGtQVnB6U2s2R2EiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJDV0ZE5qVFlqaEtVcGhubXdDLno3dC5uNEwya1djTzg4djM4Y29QMkx0Q1RrUFZwelNrNkdhIjt9', 1630554910),
('H6oXyuVz2A4X73YGPgQl5ZSdNwYFklQ8myvg56LV', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36 Edg/92.0.902.84', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid3dkMVFONGVoNXpGU08yMjdBbEJBeG5DeERKOGdETTJYbnpXM2VaVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly9vcmRlbnRyYWJham8udGVzdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1630607755),
('T7zuRc8Xt3WTyJo64gFKcpIXotb50FFkIdjyZTNQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36 Edg/92.0.902.84', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiM1NySGdJSHllNUZ1MFRCTmhJRGR5ZFgyV0dnYmk4cTJaeER1U1N2SyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNDoiaHR0cDovL29yZGVudHJhYmFqby50ZXN0L2Rhc2hib2FyZCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMwOiJodHRwOi8vb3JkZW50cmFiYWpvLnRlc3QvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1630583897),
('V1w77NF9cVCwOHXpMeZfa7V8aF6b3H1Wnfn5J2u0', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36 Edg/92.0.902.84', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiZ29UcnEzNjllcVlSZ0gzeUp3UVBoZWNkTzZmVXdWR05sMHJLNXVkbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkNXRkTmpUWWpoS1VwaG5td0Muejd0Lm40TDJrV2NPODh2Mzhjb1AyTHRDVGtQVnB6U2s2R2EiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJDV0ZE5qVFlqaEtVcGhubXdDLno3dC5uNEwya1djTzg4djM4Y29QMkx0Q1RrUFZwelNrNkdhIjt9', 1630553157);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoordens`
--

CREATE TABLE `tipoordens` (
  `id_tipo` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
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
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'administrador', 'nandyruiz@hotmail.com', NULL, '$2y$10$5tdNjTYjhKUphnmwC.z7t.n4L2kWcO88v38coP2LtCTkPVpzSk6Ga', NULL, NULL, NULL, NULL, NULL, '2021-09-02 08:19:22', '2021-09-02 08:19:22');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `operadores`
--
ALTER TABLE `operadores`
  ADD PRIMARY KEY (`id_operador`);

--
-- Indices de la tabla `ordentrabs`
--
ALTER TABLE `ordentrabs`
  ADD PRIMARY KEY (`id_orden`),
  ADD KEY `ordentrabs_id_tipo_foreign` (`id_tipo`),
  ADD KEY `ordentrabs_id_operador_foreign` (`id_operador`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `tipoordens`
--
ALTER TABLE `tipoordens`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `operadores`
--
ALTER TABLE `operadores`
  MODIFY `id_operador` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ordentrabs`
--
ALTER TABLE `ordentrabs`
  MODIFY `id_orden` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipoordens`
--
ALTER TABLE `tipoordens`
  MODIFY `id_tipo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ordentrabs`
--
ALTER TABLE `ordentrabs`
  ADD CONSTRAINT `ordentrabs_id_operador_foreign` FOREIGN KEY (`id_operador`) REFERENCES `operadores` (`id_operador`),
  ADD CONSTRAINT `ordentrabs_id_tipo_foreign` FOREIGN KEY (`id_tipo`) REFERENCES `tipoordens` (`id_tipo`);
--
-- Base de datos: `prueba`
--
CREATE DATABASE IF NOT EXISTS `prueba` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `prueba`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
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
-- Estructura de tabla para la tabla `users`
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
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
