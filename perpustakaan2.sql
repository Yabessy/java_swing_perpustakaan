-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2023 at 12:49 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan2`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `book_type` tinyint(1) NOT NULL DEFAULT 0,
  `isbn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `release_date` date NOT NULL DEFAULT '2023-03-01',
  `publisher` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `synopsis` longtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'deskripsi belum ditulis....',
  `remaining_books` int(11) NOT NULL,
  `book_cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `created_at`, `updated_at`, `book_type`, `isbn`, `title`, `tags`, `release_date`, `publisher`, `author`, `synopsis`, `remaining_books`, `book_cover`) VALUES
(1, '2023-02-28 18:43:03', '2023-02-28 18:45:21', 0, '6460618011', 'Vel et fugiat excepturi occaecati.', 'Fantasy', '1982-12-25', 'Blanda and Sons', 'Miss Elva Turner PhD', 'Facilis nostrum molestiae non commodi sint alias. Iure distinctio enim et rerum. Excepturi eos eum ipsam sed vel.', 10, NULL),
(2, '2023-02-28 18:43:03', '2023-02-28 18:43:03', 0, '1176376071', 'Similique repellat quia aut voluptas et.', 'Fantasy', '2005-10-19', 'Moen-Wehner', 'Travon Cormier', 'Itaque impedit in quia ea molestias nulla. Sequi aut dolor in. Magni excepturi totam vel dolorem. Aut qui quia dolor.', 12, NULL),
(3, '2023-02-28 18:43:03', '2023-02-28 18:43:03', 0, '3479141617', 'Eum sit nam vel rerum reiciendis.', 'Fantasy', '2006-02-27', 'Donnelly-Hilpert', 'Glennie Runolfsson', 'Et libero alias molestias et nobis fugiat. Rerum illo aspernatur quam praesentium sint et. Nostrum ab ut cum velit mollitia. Sunt omnis sapiente exercitationem distinctio sed ullam accusantium.', 12, NULL),
(4, '2023-02-28 18:43:03', '2023-02-28 18:46:42', 0, '2095669517', 'Iure quas error minus sequi voluptas.', 'Fantasy', '1973-09-30', 'Goldner Inc', 'Willie Herman III', 'Repellendus reprehenderit dolor aut est voluptas eos nostrum. Eos quas repellat consequatur impedit eveniet dolor. Explicabo at facere eos. Autem qui sequi odit.', 2, NULL),
(5, '2023-02-28 18:43:03', '2023-02-28 18:47:00', 0, '7342676489', 'Veritatis porro dolore perferendis vitae.', 'Fantasy', '1987-02-08', 'Keebler-Goodwin', 'Kaylee Wiegand', 'Totam ea magni est voluptatum nam ullam error aspernatur. Sed praesentium et harum nihil. Illum ipsam perspiciatis cumque amet a est. Iure voluptate enim a tempore excepturi. Enim alias quos sunt illo occaecati consequatur.', 2, NULL),
(6, '2023-02-28 18:43:03', '2023-02-28 18:44:40', 0, '6873029882', 'Labore necessitatibus minima ad molestiae ipsam.', 'Horor', '2005-08-16', 'Towne and Sons', 'Cierra Abbott II', 'Est praesentium nulla voluptate numquam commodi. Repellendus perspiciatis ab aut nam. Cupiditate eum et ut alias rerum est. Fuga sunt molestias qui similique incidunt.', 10, NULL),
(7, '2023-02-28 18:43:03', '2023-02-28 18:43:03', 0, '730659558X', 'Sequi vitae maiores veniam voluptates.', 'Horor', '2005-10-24', 'Mitchell, Fay and Kunze', 'Mr. Wellington Marquardt DDS', 'Nisi accusamus ut voluptas eveniet. Inventore sapiente quae tenetur velit ab minima dolorem.', 12, NULL),
(8, '2023-02-28 18:43:03', '2023-02-28 18:43:03', 0, '5867432955', 'Est et et veniam beatae unde.', 'Horor', '2000-03-22', 'Hamill-Kuhn', 'Litzy Gusikowski PhD', 'Sint non et eum laborum eius voluptate doloremque. Eos laudantium omnis qui et illo. In doloremque natus sint quia nemo. Molestias velit facilis voluptatem alias ex neque eveniet.', 12, NULL),
(9, '2023-02-28 18:43:03', '2023-02-28 18:43:03', 0, '4614283454', 'Sapiente ducimus nemo laboriosam atque est fugiat velit.', 'Horor', '2014-09-08', 'Gerhold, Yost and Brakus', 'Mr. Aidan Gutmann', 'Qui placeat esse accusantium sapiente temporibus vero quos. Eaque illo consectetur et voluptate. Distinctio repellat asperiores non sit voluptatem aliquid hic. Rerum possimus provident ducimus eum vel odio. Minus ut fuga molestiae saepe.', 12, NULL),
(10, '2023-02-28 18:43:03', '2023-02-28 18:43:03', 0, '6762684319', 'Laudantium sapiente voluptas repudiandae et a dolor natus ipsum.', 'Horor', '1992-03-14', 'Corwin Group', 'Arlo Deckow', 'Amet facere quisquam eveniet nihil tenetur. Rem et tempora praesentium eveniet.', 12, NULL),
(11, '2023-02-28 18:43:03', '2023-02-28 18:43:03', 1, '8106227200', 'Corrupti officia autem ullam ea.', 'Matematika', '1984-07-27', 'Lebsack PLC', 'Prof. Gail Gulgowski', 'Possimus voluptatibus odio quisquam facilis. Ipsa id sit quisquam iste non rerum alias. Error minima ea aperiam autem.', 12, NULL),
(12, '2023-02-28 18:43:03', '2023-02-28 18:43:03', 1, '6433532519', 'Dolore doloremque iste quam.', 'Matematika', '1971-11-17', 'Cassin Group', 'Angeline Denesik', 'Iure est rerum eos assumenda ratione omnis tempore non. Voluptatem repellendus doloremque qui fuga repellat aut voluptas. Nostrum aliquam necessitatibus quia modi voluptatum reprehenderit architecto. Nemo corrupti est cupiditate fuga.', 12, NULL),
(13, '2023-02-28 18:43:03', '2023-02-28 18:43:03', 1, '7047905235', 'Dolorem cum explicabo quis rerum aut.', 'Matematika', '1994-07-02', 'Gerlach-Wyman', 'George Dare', 'Incidunt saepe illo et est iusto nemo. Maiores dolores labore nihil adipisci quaerat dolores qui.', 12, NULL),
(14, '2023-02-28 18:43:03', '2023-02-28 18:43:03', 1, '5986179986', 'Ea officia iste veritatis iste dolor rerum quia dolorem.', 'Matematika', '2018-03-01', 'Welch-Koepp', 'Skye O\'Conner', 'Dolor aut nemo ut exercitationem qui atque et eveniet. Quis facilis et debitis aspernatur nobis minima. Similique dolorem sunt occaecati qui. Ea et voluptatem voluptas sed fugit et. Qui sint ipsam quia qui in praesentium veniam.', 12, NULL),
(15, '2023-02-28 18:43:03', '2023-02-28 18:43:03', 1, '6268664094', 'Qui est magni necessitatibus iste.', 'Matematika', '2021-06-15', 'Jast, Marks and Bauch', 'Johnathon Stiedemann', 'Et sapiente impedit quo reiciendis aut. Voluptatibus assumenda doloremque quo eaque et dicta voluptatem. Ratione eius ut neque sit quia temporibus est. In recusandae voluptatem impedit eius fugiat perspiciatis voluptatem.', 12, NULL),
(16, '2023-02-28 18:43:03', '2023-02-28 18:43:03', 1, '1863755659', 'Numquam temporibus non aut corrupti nulla itaque laborum odit.', 'Bahasa Indonesia', '1982-02-08', 'O\'Connell-Nikolaus', 'Onie Boehm', 'Consectetur quis non et nostrum exercitationem hic amet. Laboriosam numquam et sed aut. Accusamus ea rem ipsam tempore. Quia ut ex magnam quidem eligendi qui rerum. Quibusdam eos voluptatem omnis est quo libero.', 12, NULL),
(17, '2023-02-28 18:43:03', '2023-02-28 18:43:03', 1, '9561418339', 'Consequatur voluptas asperiores esse non aut.', 'Bahasa Indonesia', '1994-03-06', 'Sporer, Homenick and Watsica', 'Waldo Daniel', 'Odio nihil sed impedit ab illum qui saepe. Qui sequi delectus unde. Sint fugit fugiat commodi. Est aut cupiditate dolor ut officiis illo.', 12, NULL),
(18, '2023-02-28 18:43:03', '2023-02-28 18:43:03', 1, '8868433664', 'Et nam perferendis nostrum sint quam modi molestias qui.', 'Bahasa Indonesia', '1978-05-06', 'Labadie, Cummerata and Bechtelar', 'Norma Murray Sr.', 'Maxime perspiciatis non numquam at. Expedita tempore dolorem quo voluptate natus porro. Est perferendis qui dolor cum.', 12, NULL),
(19, '2023-02-28 18:43:03', '2023-02-28 18:43:03', 1, '0397733623', 'Quia at voluptas deleniti dolore quas ipsa.', 'Bahasa Indonesia', '2005-11-22', 'Reichert Ltd', 'Treva Gerlach', 'Debitis illum vero commodi tempora ea recusandae. Doloribus praesentium esse similique quis praesentium ut enim error. Quasi autem optio nisi possimus quia explicabo a. Officiis atque similique qui.', 12, NULL),
(20, '2023-02-28 18:43:03', '2023-02-28 18:43:03', 1, '084108498X', 'Ut tempora rem soluta eveniet rerum quos.', 'Bahasa Indonesia', '1990-09-22', 'Tremblay, O\'Connell and Raynor', 'Olin Lindgren', 'Inventore iusto voluptate voluptatum laborum nisi omnis. Laboriosam itaque nostrum nesciunt unde nam. Saepe et ut porro quis et aut fugiat.', 12, NULL);

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
-- Table structure for table `lendings`
--

CREATE TABLE `lendings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `amount` int(11) NOT NULL,
  `start_of_lend` date NOT NULL DEFAULT '2023-03-01',
  `end_of_lend` date NOT NULL DEFAULT '2023-03-01'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lendings`
--

INSERT INTO `lendings` (`id`, `created_at`, `updated_at`, `user_id`, `book_id`, `status`, `amount`, `start_of_lend`, `end_of_lend`) VALUES
(1, '2023-02-28 18:44:40', '2023-02-28 18:44:40', 1, 6, 1, 2, '2023-03-01', '2023-03-03'),
(2, '2023-02-28 18:45:21', '2023-02-28 18:45:21', 1, 1, 1, 2, '2023-03-02', '2023-03-04'),
(3, '2023-02-28 18:46:42', '2023-02-28 18:46:42', 1, 4, 0, 10, '2023-03-01', '2023-03-11'),
(4, '2023-02-28 18:47:00', '2023-02-28 18:47:00', 1, 5, 2, 10, '2023-03-03', '2023-03-13');

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
(5, '2023_02_07_064319_create_books_table', 1),
(6, '2023_02_08_100014_create_lendings_table', 1);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` bigint(20) NOT NULL,
  `number_type` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `number`, `number_type`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'NOEL', 90909, 'NIS', 'Pustakawan', '$2a$10$RBwZxqlHidj/lWvBxHrfaefYg0.fKhGnJfLbCiLogGJISHCoNouXi', 'eGUYOzpucSGTKIM3umymUE7Z3XL7FDiaZYoH4mVrrTOdGiHKaNpGxUZegi1d', NULL, NULL),
(2, 'Iman Yv', 9624, 'NIS', 'Member', '$2a$10$K0vZjtSM8IrxYsDiWMRe/O5Okr.A0I8gyi9X9A3cMTuYdtlpxa6hG', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_isbn_unique` (`isbn`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `lendings`
--
ALTER TABLE `lendings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lendings_user_id_foreign` (`user_id`),
  ADD KEY `lendings_book_id_foreign` (`book_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_number_unique` (`number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lendings`
--
ALTER TABLE `lendings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lendings`
--
ALTER TABLE `lendings`
  ADD CONSTRAINT `lendings_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lendings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
