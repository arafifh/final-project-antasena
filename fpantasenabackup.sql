-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2023 at 02:00 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `antasena`
--
CREATE DATABASE IF NOT EXISTS `antasena` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `antasena`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
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
(5, '2022_12_28_082204_create_visitors_table', 1),
(6, '2022_12_28_122301_update_visitors_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
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
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$PFiHvJHW16pt4.9JSGpmo.aLox1vuahKs3N5zb2qWeUZdVYBCfAFK', NULL, '2022-12-28 22:21:14', '2022-12-28 22:21:14'),
(2, 'iftala', 'iftala@gmail.com', NULL, '$2y$10$z3b26R..f2Heh0DV8Bed1.udNFEGo1nSFyk5rwoM3U25j60.QKQBS', NULL, '2022-12-28 22:44:50', '2022-12-28 22:44:50');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `identity` bigint(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `publiccheck` tinyint(1) DEFAULT 0,
  `visits` int(11) NOT NULL,
  `date` date NOT NULL,
  `start` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone_nr` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `name`, `identity`, `address`, `city`, `publiccheck`, `visits`, `date`, `start`, `created_at`, `updated_at`, `phone_nr`, `email`) VALUES
(2, 'Anu', 1231231, 'bandung', 'Bandung', NULL, 3, '2022-12-31', '2022-12-29 04:28:01', '2022-12-28 06:05:30', '2022-12-28 21:28:01', 1821828, 'ifzahri3003@gmail.com'),
(3, 'Miss Adell Lakin IV', 45357, 'Vel beatae recusandae eius reiciendis aliquam. Minima temporibus quis sint earum et molestiae in. Aut id quia fugit expedita velit.', 'FJD', 0, 2, '1981-06-01', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 83294, 'bradford36@example.com'),
(4, 'Gail Heathcote', 32020, 'Doloribus molestiae ex earum eum magnam quia hic quibusdam. Aspernatur reprehenderit autem velit doloribus sed omnis quidem. Est saepe quia aut sit. Consequatur nulla natus ad vero debitis.', 'RSD', 0, 3, '1995-09-17', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 37776, 'usawayn@example.com'),
(5, 'Dr. Wilber Grant Jr.', 20614, 'Modi sapiente voluptate quo et eos maiores. Dolore quo corrupti doloribus dolorum. Ut saepe neque esse est facilis esse dicta.', 'MOP', 0, 3, '2005-07-24', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 94363, 'marcia48@example.org'),
(6, 'Elisa Adams', 52318, 'Iste ad in non repellendus illum adipisci. Asperiores qui aut error accusamus omnis provident. Minima cupiditate rerum minus molestias debitis aut deserunt. Sunt vel aut aut perferendis et sed.', 'AOA', 0, 1, '1986-10-11', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 74940, 'cullen.wiegand@example.org'),
(7, 'Bertha VonRueden', 95624, 'Autem autem assumenda eligendi ipsa. Sunt laudantium sequi corporis officia molestiae. Quam dolore molestiae labore sed enim. Ullam qui qui dolorem maiores est.', 'BOB', 0, 2, '2008-02-09', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 54707, 'annalise.crist@example.net'),
(8, 'Cooper Rohan', 76909, 'Vel recusandae amet non voluptatem molestias. Quas facere ullam nulla animi explicabo. Tempora et sint voluptatibus. Ad voluptatem quis dolorem vel. Impedit id molestias rerum non error autem magnam.', 'BMD', 1, 2, '2022-09-11', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 64265, 'monique.schinner@example.net'),
(9, 'Nickolas Carroll', 22221, 'Iste vitae ut voluptas labore. Fugit sed labore sit sequi saepe minima dolore fuga. Atque quia itaque eum maxime autem.', 'SBD', 1, 2, '1980-04-29', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 21087, 'anderson.alysa@example.com'),
(10, 'Baron Altenwerth', 97773, 'Similique quae hic voluptas quis quaerat sit. Sit voluptas consequuntur autem deleniti. Repellendus officia esse ipsam consequatur rerum.', 'BWP', 1, 2, '1977-12-17', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 47967, 'bashirian.carolanne@example.com'),
(11, 'Stewart Hermiston', 10734, 'Laborum et autem rerum doloremque omnis. Similique iste dolores sed quae et. Adipisci vero odit dolores quo qui doloremque. Harum est minima quae optio qui praesentium.', 'KWD', 1, 2, '2003-06-17', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 84596, 'wolff.adrain@example.org'),
(12, 'Dr. Cristian Eichmann', 96994, 'Velit nihil in aperiam et. Qui ut quia sunt dolores. Officia voluptate quis amet repudiandae vel alias.', 'ARS', 1, 1, '1984-01-05', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 63125, 'green24@example.net'),
(13, 'Alexandra Goyette', 20525, 'Minus itaque non dignissimos sed totam eveniet. Architecto eaque cum neque sit error tempore. Id ratione at exercitationem velit et. Voluptas rem aut perspiciatis voluptatem incidunt.', 'BYN', 0, 1, '1999-03-18', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 22332, 'ayana42@example.net'),
(14, 'Jairo Hamill', 62203, 'Modi vero consequatur voluptatem nisi. Quia architecto eligendi aut blanditiis harum. Id magnam ipsam unde quia aliquam iste aut vel. Voluptatibus quia aut explicabo placeat ut accusamus fuga nihil.', 'MVR', 0, 2, '1996-12-05', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 61883, 'merle50@example.org'),
(15, 'Harvey Denesik', 26240, 'Iure est eos quia dolorem. Ut tenetur molestiae autem qui reprehenderit atque nostrum. Eos voluptas illo totam. Dicta veritatis consectetur voluptatem qui illo eos.', 'ZAR', 0, 2, '1976-04-22', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 12669, 'jstamm@example.org'),
(16, 'Ms. Johanna Reichert', 18824, 'Doloremque aut sed non quia sunt. Accusamus quod dolores mollitia aut praesentium vel est. Ad earum beatae magnam. Ratione dignissimos aut sit laboriosam cumque fugiat consequatur voluptatem.', 'KZT', 0, 1, '2007-10-10', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 86856, 'ariel21@example.org'),
(17, 'Prof. Coty Huels', 34784, 'Facilis fugit omnis adipisci magni dolore. Et quia aut quam. Animi magnam velit praesentium qui. Accusantium et incidunt numquam expedita enim cum saepe.', 'SHP', 1, 1, '1997-10-09', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 51163, 'rwalter@example.org'),
(18, 'Madge Johnston', 73880, 'Qui vero voluptate tenetur sequi voluptatibus eaque. Possimus et sequi officiis. Qui voluptatem et quisquam aut magni. Minus quisquam inventore sunt natus magni.', 'SOS', 0, 3, '2012-11-17', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 10405, 'olson.cortez@example.com'),
(19, 'Richard Adams', 77184, 'Culpa non magni a eos nihil. Repellendus necessitatibus labore repudiandae maiores ullam.', 'HKD', 1, 1, '1973-02-06', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 35952, 'maybelle07@example.net'),
(20, 'Dorian Schuster', 28412, 'Quas et eius dolorum corporis quia quaerat. Quaerat qui nam id neque. Quos nesciunt quis rerum et in. Sequi rerum autem ut quia. Qui eligendi fuga aut possimus eveniet rerum.', 'MDL', 1, 3, '1988-10-01', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 15208, 'green.whitney@example.net'),
(21, 'Mariano Botsford', 43781, 'Vitae assumenda unde placeat dolorem. Cumque suscipit tempora doloremque et quasi dolorum repellat. Itaque doloribus aperiam ipsam impedit consequatur minus in.', 'SHP', 1, 1, '1974-02-22', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 39495, 'nhane@example.org'),
(22, 'Hulda Medhurst', 30919, 'Non architecto temporibus dicta exercitationem sequi temporibus tempore sed. Error expedita est nulla.', 'LYD', 1, 1, '1991-05-27', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 23861, 'kohler.edyth@example.org'),
(23, 'Miss Nina Zboncak I', 97836, 'Voluptas quisquam et et eveniet et eveniet accusamus ducimus. Ipsa ex dolor et possimus deserunt modi quia et. Eveniet tempora aperiam porro minus ex assumenda.', 'NPR', 0, 1, '1999-03-19', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 18221, 'retha33@example.org'),
(24, 'Leonie Schoen', 68808, 'Quos cum hic pariatur nihil maxime. Et sit distinctio possimus dolorem magni. Pariatur provident dolorum reiciendis et aut.', 'VES', 1, 3, '1995-04-23', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 26539, 'jdurgan@example.org'),
(25, 'Dr. Gregory Daniel Sr.', 49308, 'Maiores et modi fuga labore accusantium eos sequi. Ut quos eos et sit mollitia. Ducimus tempora dolor eum enim.', 'RSD', 0, 3, '1988-04-11', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 44354, 'evelyn.brown@example.org'),
(26, 'Prof. Carson Marks', 70026, 'Sunt aut rem odio magni nostrum sint consequatur. Velit quidem aliquid veniam minus et dolore ullam. Eum rem eos non.', 'CAD', 0, 3, '2011-03-07', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 16351, 'fay.herbert@example.org'),
(27, 'Cornelius McKenzie', 98523, 'Dolore libero incidunt incidunt saepe odio eum. Et cumque ut et esse illo. Dignissimos velit dolor optio ut eos vel rerum omnis.', 'LAK', 0, 1, '1981-01-19', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 36227, 'justice.feest@example.org'),
(28, 'Miss Aletha Sauer', 42130, 'Rem sunt sunt et consequatur ipsam ab at. Nulla quisquam nemo nihil deleniti facere illo. Sit minima quia hic non totam non amet distinctio. Accusantium consequuntur quam sint dolore.', 'TWD', 1, 3, '1978-09-16', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 97711, 'ayundt@example.org'),
(29, 'Lexie Herzog', 69152, 'Unde dolorem natus illo rerum possimus corporis dolorum. Veniam qui odio non similique. Dicta officiis rerum doloribus nostrum tenetur. Dicta et tempore voluptatem ipsum praesentium.', 'LBP', 0, 2, '1973-02-28', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 51342, 'xcormier@example.org'),
(30, 'Joshua Hammes', 12477, 'Eum et rem aut hic quas cumque. Quasi tenetur quia illo suscipit est. Est et nemo hic illum quibusdam. Blanditiis voluptas eum dignissimos cupiditate.', 'SLL', 0, 1, '1994-07-19', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 31066, 'brussel@example.net'),
(31, 'Ezekiel Kuhlman I', 77700, 'Est fugit ipsum et consequatur. Odio sunt modi possimus adipisci. Occaecati odio molestias aut vel et rem. Voluptatibus dolores quae sed assumenda hic assumenda nesciunt eveniet.', 'DOP', 0, 1, '1995-09-13', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 14218, 'magdalen44@example.org'),
(32, 'Geovanny Gislason', 41822, 'Quae labore similique natus mollitia. Omnis veritatis sint laboriosam quam illum. Et in officia et veritatis recusandae.', 'THB', 1, 1, '1999-10-08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 36196, 'osinski.kale@example.net'),
(33, 'Mr. Israel Greenholt IV', 68379, 'Natus id dignissimos sapiente hic assumenda inventore. Quod soluta in expedita. Omnis aut voluptas deserunt dolorum nam.', 'GNF', 0, 3, '1972-06-02', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 35258, 'leannon.elinor@example.org'),
(34, 'Miss Amelia Labadie', 37434, 'Maxime saepe nihil earum animi accusamus nihil. Nihil laudantium odio est aut voluptas ut et. Quis quod ipsa enim minus.', 'CNY', 0, 3, '1976-01-09', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 30411, 'oswaldo.renner@example.net'),
(35, 'Miss Tatyana Schuppe', 81690, 'Exercitationem repellendus vel saepe illum. Minus dolorem sapiente voluptas aut. Dicta neque veniam asperiores tempore incidunt sit voluptatem.', 'IDR', 1, 2, '1978-02-14', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 22736, 'kwolf@example.org'),
(36, 'Abbigail Hauck', 22450, 'Soluta et voluptate fugit consequatur. Debitis quidem a nesciunt officiis non impedit sed. Et voluptas omnis amet. Sit natus nobis aut ipsam voluptatem. Accusamus maiores vel exercitationem.', 'JMD', 1, 1, '2015-10-09', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 65389, 'eugenia72@example.org'),
(37, 'Diego Greenholt DVM', 67567, 'Eos facere explicabo similique aut quae aliquid. Enim occaecati similique aliquam molestias est et. Nesciunt hic occaecati suscipit dolore facilis. Velit pariatur atque et sunt eligendi.', 'ARS', 1, 1, '2004-02-21', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 35093, 'maryam.sporer@example.net'),
(38, 'Jaren Collins V', 94794, 'Eum iste molestiae reprehenderit dolor. Quas cupiditate iste ex deleniti nihil occaecati. Inventore qui officiis eveniet fugit hic. Autem omnis aut quam repellendus.', 'RSD', 0, 2, '1996-02-13', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 67431, 'murray.henderson@example.net'),
(39, 'Esta Medhurst', 12974, 'Dolorem sint praesentium necessitatibus vero optio nemo libero. Eum distinctio quod ut dolor voluptas. Cupiditate voluptatum ab dolor similique dolorem dolores.', 'HNL', 1, 3, '1979-08-24', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 80149, 'roscoe80@example.com'),
(40, 'Dr. Don Fay', 33519, 'Reprehenderit dolorem animi voluptas ad sequi quia eum. Sit aut veniam eius blanditiis temporibus eius quo. Voluptatum sit et est.', 'DKK', 1, 3, '1991-10-31', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 19223, 'candido26@example.org'),
(41, 'Dr. Zoey Mitchell', 25542, 'Possimus eligendi recusandae adipisci odio. Alias eveniet eum asperiores ut quo quasi architecto. Ut libero ipsa corrupti totam excepturi perferendis voluptatem. Est sit voluptatem non minus ut.', 'XAF', 0, 1, '1985-03-28', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 70074, 'gfarrell@example.org'),
(42, 'Adelle Armstrong', 74144, 'Consequatur eaque officiis in ipsa. Soluta nihil exercitationem iure eaque. Accusantium blanditiis et eos est quisquam beatae. Ratione dolorum porro fugiat et quia eligendi officiis.', 'XPF', 0, 2, '1999-04-19', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 70839, 'casandra.schuppe@example.com'),
(43, 'Catalina Green', 95186, 'Ut magnam illum laboriosam consectetur aut inventore sed. Error non maxime et ut tenetur harum. In rem est et eos quis deleniti optio.', 'KGS', 1, 2, '1984-10-04', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 61415, 'huel.cristian@example.org'),
(44, 'Dr. Stella Waters', 89054, 'Unde ducimus dolorem natus odit repudiandae est quam. Sit nihil earum voluptatem aut vel. Mollitia magni sapiente neque maxime omnis repellendus dolores ut.', 'VUV', 0, 3, '2008-12-19', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 99962, 'fhansen@example.org'),
(45, 'Nora Stiedemann', 64733, 'Velit natus et maxime quia inventore et. Mollitia consectetur saepe sed. Repellendus nostrum delectus ipsa recusandae delectus sed incidunt.', 'SOS', 0, 2, '2020-11-06', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 12686, 'ddoyle@example.org'),
(46, 'Ms. Alanna Brown', 54551, 'Inventore voluptatem aspernatur et magni et quae et. Exercitationem odit distinctio rerum est et. Labore aliquid ab unde exercitationem sit dolore dicta. Eveniet aliquam rem tempora autem veniam vel.', 'XCD', 0, 3, '2009-09-10', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 56389, 'maggio.london@example.net'),
(47, 'Dr. Hailee Herman', 33741, 'Accusamus temporibus molestiae quis ea sed. Cumque ut dignissimos non natus molestias ad eveniet. Error beatae nesciunt nostrum autem non deserunt voluptates quae.', 'KPW', 1, 2, '1998-08-01', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 10075, 'nannie.haley@example.com'),
(48, 'Prof. Kassandra Dickens', 58032, 'Ut ut debitis omnis quae explicabo vel ipsa delectus. Sequi aliquam eius eveniet nesciunt et eaque. Voluptatem rem sed magni aut. Cum ducimus omnis omnis et.', 'PEN', 0, 2, '1993-03-26', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 70106, 'carol54@example.com'),
(49, 'Chanel Kub', 81975, 'Qui quod voluptatem minus non. Deleniti aliquid autem dignissimos enim quibusdam. Provident nihil quisquam ratione ex atque itaque voluptatibus. Itaque non deserunt quis nam fugiat.', 'CLP', 0, 2, '2013-09-10', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 47634, 'von.raina@example.org'),
(50, 'Anjali Lowe', 48519, 'Officiis aut dolor nostrum nisi. Dolore rerum laboriosam et atque ea molestias. Est itaque placeat laborum assumenda architecto.', 'MRU', 1, 2, '1973-01-24', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 31937, 'douglas34@example.com'),
(51, 'Mr. Jefferey Parisian V', 21645, 'Esse illo praesentium earum quod. Consequatur earum natus maxime quibusdam reprehenderit. Dolor voluptatem totam cum rem.', 'EUR', 1, 2, '2000-02-16', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 93049, 'champlin.guillermo@example.org'),
(52, 'Adrain Heaney', 58448, 'Et iusto neque omnis veritatis ducimus reprehenderit quos. Veniam numquam ea porro et. Omnis voluptatem maxime et similique. Explicabo quo dolorum similique ut. Quis nulla dignissimos iste non quia.', 'BOB', 1, 2, '1973-02-08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', '2022-12-29 07:11:08', 17237, 'walsh.seamus@example.com'),
(55, 'Jamie Lowe', 21140, 'Debitis voluptatibus dolorum vel eaque. Fugit sint voluptates dolorem sapiente aut magni. Magni eius placeat labore quaerat minima praesentium. Velit inventore ut ut est dolor animi.', 'CAD', 0, 1, '2005-08-04', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 51860, 'mozell58@example.net'),
(59, 'Erin Beahan', 63669, 'Quis sit illum eligendi recusandae deserunt facilis. Est voluptates hic animi non quia itaque ullam. Molestiae error facere iste. Est consequuntur eum earum eligendi in cupiditate numquam.', 'GYD', 1, 1, '2019-05-05', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 65043, 'ybechtelar@example.org'),
(60, 'Trevion Hermiston', 97943, 'Est ducimus dolor voluptas vitae expedita voluptatum voluptatem enim. Voluptas illo vel officiis recusandae. Quos sed officia veritatis est explicabo iste.', 'TMT', 1, 3, '1972-01-28', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 40751, 'vratke@example.org'),
(61, 'Earnest Kovacek', 41560, 'Mollitia est incidunt consequatur asperiores dicta. Voluptas officiis ab reiciendis in quo nulla ad. Possimus officia officiis eaque in consequatur quis quibusdam.', 'NOK', 0, 2, '2011-09-29', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 16954, 'rhiannon.schneider@example.net'),
(62, 'Ms. Wanda Lind', 69466, 'Dolorum incidunt dignissimos enim non eius consequatur officiis molestiae. Ut eveniet est expedita voluptate. Vero est cupiditate dolorem accusamus vel molestiae consectetur sunt.', 'YER', 0, 3, '1972-03-04', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 88980, 'travis36@example.com'),
(63, 'Karelle Gottlieb', 82077, 'Ut provident at qui quisquam sint reprehenderit non. Neque omnis consequuntur voluptate expedita. Tempora quisquam eius voluptas hic voluptas ut. Cum quos at sapiente.', 'MNT', 1, 2, '1976-10-20', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 30200, 'nsawayn@example.org'),
(64, 'Tommie Cummerata', 27363, 'Non debitis velit nesciunt aliquam laborum enim impedit. Nostrum occaecati unde autem deserunt odio. Quae et velit eaque aut odio. Quia incidunt error ratione recusandae magni et.', 'GBP', 1, 1, '2019-04-03', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 28374, 'clarabelle.marvin@example.com'),
(65, 'Coy Jenkins', 39799, 'Ut sed dolores quidem at quia molestiae. Et molestias occaecati sed. Ducimus vitae expedita molestiae qui veniam voluptate.', 'VES', 1, 3, '1989-09-04', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 38679, 'mavis.lind@example.com'),
(66, 'Dr. Gabriella Anderson', 72631, 'Officiis ipsum quo quia. Rem dolor sed iusto et qui tempore magni. Eligendi at neque vitae debitis.', 'XCD', 0, 2, '1970-03-27', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 53230, 'mustafa52@example.net'),
(67, 'Brando Ferry Sr.', 56429, 'Molestiae deleniti sunt hic tenetur. Quia ut autem quidem accusantium. Ex error repellat dignissimos alias quisquam praesentium.', 'RUB', 1, 2, '2022-04-22', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 64001, 'bret12@example.net'),
(68, 'Mr. Everett Howell', 50243, 'Corrupti consectetur repudiandae aut unde. Occaecati maxime aut quisquam hic. Unde est ut ut. Dolor eum totam cumque qui.', 'GEL', 1, 1, '1996-02-22', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 25582, 'maribel.leannon@example.net'),
(69, 'Mr. Giovanny Feil', 60762, 'Ea nulla quidem odio aperiam et. Omnis nostrum consequatur cum adipisci numquam. Sint enim sed maiores nihil. Quod iste qui et ducimus aliquam omnis eveniet.', 'MXN', 1, 2, '2019-11-04', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 38287, 'prohan@example.org'),
(70, 'Nathanael Greenfelder', 88191, 'Aut animi et repudiandae tempora molestiae. Nemo eligendi molestiae eius dolor nesciunt maxime beatae. Ducimus cum consequatur amet dolor vel iure. Asperiores repudiandae perspiciatis rerum.', 'CHF', 1, 2, '1983-08-16', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 57413, 'marcos48@example.net'),
(71, 'Raleigh Little', 22800, 'Nostrum neque excepturi sed quaerat sit. Ea quod ad nihil veritatis. Et eos illo minima. Quod provident dolorem esse corporis pariatur qui corporis.', 'BIF', 0, 2, '1971-12-14', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 81777, 'macie.kassulke@example.org'),
(72, 'Charity Berge', 78495, 'Tempora sed laboriosam ut sint facilis neque aspernatur quibusdam. Alias eos corporis ipsam consequuntur a. Autem impedit impedit necessitatibus est voluptatem. Quo hic nesciunt dolorum aut ut.', 'JOD', 1, 1, '1996-07-23', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 18513, 'raymond12@example.org'),
(73, 'Antwon Murazik', 65305, 'Sit pariatur et et. Officia dolores quis est voluptatem asperiores neque repellat.', 'BBD', 1, 2, '2022-07-19', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 55256, 'hirthe.hanna@example.org'),
(74, 'Eldridge Swaniawski', 96107, 'Ut sint a et sit. Esse autem nulla et molestiae harum similique. Eum velit tenetur omnis porro exercitationem tempora pariatur quis.', 'BDT', 0, 2, '2004-10-11', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 32841, 'adonis.bins@example.net'),
(75, 'Nya Paucek', 92382, 'Beatae quisquam repellendus ut fugit vero quo labore. Ut earum provident est iure. Ea eligendi rem id natus. Est sit corporis dolore sunt.', 'SHP', 1, 3, '1995-03-30', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 84859, 'abelardo06@example.com'),
(76, 'Ms. Tracy Hartmann', 27890, 'Tenetur facilis sint ab vitae sit. Porro magnam autem velit qui. Delectus quis odio et ea exercitationem rem neque.', 'MMK', 0, 2, '2000-12-14', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 81991, 'leannon.isaac@example.com'),
(77, 'Alvera Casper', 68170, 'Labore omnis necessitatibus rerum consectetur ullam porro. Recusandae quo et repellendus aperiam. Cumque et dolore nisi repellat omnis ex.', 'AZN', 0, 1, '1975-09-07', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 78826, 'ehodkiewicz@example.net'),
(78, 'Arianna Cartwright', 17159, 'Est sunt optio doloremque nihil error adipisci alias. Non ea ut aut dignissimos veniam quos aut. Adipisci ut et delectus commodi ut. Voluptatibus aliquam non atque molestiae eligendi odit in et.', 'DOP', 1, 3, '1990-06-03', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 19319, 'edavis@example.net'),
(79, 'Randal Ernser', 21996, 'Tempore dolor in ullam non sed quia. Reprehenderit praesentium quia totam dolor. Vero deserunt aut ratione eveniet expedita.', 'UAH', 1, 2, '2021-01-06', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 54804, 'alice83@example.net'),
(80, 'Brooklyn Wilkinson', 69980, 'Quia eveniet perferendis fugiat esse facilis reiciendis eum. Sapiente officia saepe cumque ea. Fugiat ut iste corrupti alias dolor.', 'TOP', 1, 1, '1984-08-11', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 28392, 'kutch.wilma@example.net'),
(81, 'Nathan Lemke', 87907, 'Dolore occaecati eligendi quas sit perferendis non qui. Voluptatem ut ex et sit sint numquam ut. Nesciunt et ut accusantium ut. Ut eaque sed non repellat.', 'MDL', 0, 2, '2009-07-10', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 80816, 'claude12@example.org'),
(82, 'Mrs. Albina Gaylord', 61714, 'Eveniet in voluptates quaerat aut ex numquam. Est occaecati officiis quia ea corporis nobis iure. Debitis non vero eveniet fuga adipisci dolores in.', 'HKD', 1, 2, '2010-05-25', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 49416, 'durgan.rhea@example.net'),
(83, 'Mr. Rodger Wilkinson I', 93908, 'Consequatur cum deleniti quos enim. Quis soluta et est iste ut deserunt. Rerum esse atque tenetur magnam ratione dignissimos porro.', 'BBD', 1, 1, '1998-03-06', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 84255, 'josefa59@example.net'),
(84, 'Prof. Darion Eichmann Sr.', 35442, 'Consequatur quisquam eum corporis corrupti odit molestias animi. Rerum rerum et aut sint perferendis ipsum.', 'KZT', 1, 1, '2006-05-27', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 65649, 'gquigley@example.org'),
(85, 'Norris Klein V', 58951, 'Vel deserunt eligendi quae architecto. Saepe ducimus et ut. Voluptates ut ut ut ut. Quia amet consectetur voluptate voluptatem.', 'NPR', 0, 3, '2005-12-23', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 97575, 'sfay@example.net'),
(86, 'Edwardo Bode', 68502, 'Aspernatur adipisci facilis reprehenderit facilis sit. Ex dolorem veritatis est velit labore saepe.', 'MWK', 1, 2, '1986-04-30', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 67372, 'gregory.schultz@example.com'),
(87, 'Austyn Eichmann', 79956, 'Dolor architecto iure sed minus voluptas. Pariatur culpa non dolorem. Maxime neque ad ipsum. Et ullam velit eum. Et consequatur sed id dolores doloribus facilis et.', 'JOD', 0, 1, '1995-01-30', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 26187, 'evert81@example.com'),
(88, 'Prof. Benny Orn III', 87918, 'Maiores corrupti laboriosam quaerat perspiciatis sed ut quia. Accusantium autem facere qui qui tempora. Ut porro velit at qui accusantium qui.', 'CVE', 0, 3, '2004-09-08', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 25335, 'eusebio20@example.net'),
(89, 'Isai Botsford', 73670, 'Quasi eum et quis sit delectus occaecati. Dolorem dolorum hic non. Ratione consequatur eaque consequatur totam. Voluptatem expedita libero fuga ducimus et delectus.', 'NOK', 1, 1, '2021-10-29', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 91657, 'lucius.orn@example.com'),
(90, 'Randi Hilpert', 12939, 'Consectetur qui accusamus molestiae excepturi. Aut qui quidem nostrum dolor. Maxime rerum dolore tenetur labore.', 'GEL', 0, 2, '1988-02-28', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 18670, 'mbosco@example.net'),
(91, 'Hester Johns', 60875, 'Distinctio modi nesciunt voluptatem consequuntur. Ut aspernatur alias quia atque nobis eveniet. Est sint vitae labore expedita voluptatem blanditiis aut et.', 'QAR', 1, 1, '2005-01-09', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 46726, 'halie29@example.org'),
(92, 'August Ziemann', 78286, 'Ea consequuntur est facere aspernatur. Dicta esse eos omnis quod nihil molestiae. Asperiores maxime sint dolor dolore at aut aut. Praesentium doloremque non eaque.', 'ZMW', 1, 2, '2021-11-20', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 66558, 'sadye40@example.com'),
(93, 'May Bergnaum', 56777, 'Commodi fugit voluptatem ducimus in vitae. Esse possimus rerum sint aspernatur cumque in quo. Ut est ut aut aliquid. Magni pariatur et sit esse pariatur exercitationem accusantium.', 'KMF', 0, 2, '2008-11-27', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 46450, 'filiberto91@example.net'),
(94, 'Madilyn Moen', 57827, 'Id iure reiciendis maxime minima. Non distinctio impedit eum sunt possimus recusandae.', 'MWK', 1, 1, '2015-06-06', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 44714, 'wiza.esther@example.org'),
(95, 'Coleman Padberg', 45611, 'Maiores voluptas beatae voluptate animi. Nam quis ipsum nihil voluptatem delectus temporibus. Officiis aliquam dicta autem.', 'BHD', 1, 2, '1975-02-01', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 83157, 'wdicki@example.org'),
(96, 'Ms. Delia Schamberger', 27022, 'Magnam error nemo ut vero id eligendi. Et aperiam assumenda similique eos ipsam qui ex.', 'BHD', 0, 1, '1987-09-27', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 72856, 'uspinka@example.com'),
(97, 'Marcel Reilly', 86766, 'Et earum illo et ullam explicabo minus voluptatibus ea. Dolore fugit voluptatem eaque est repellat neque. Tempore est pariatur blanditiis veniam quos velit fugit.', 'TRY', 0, 3, '2016-04-20', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 75623, 'borer.percival@example.org'),
(98, 'Alessandra Medhurst', 82002, 'Dolores reprehenderit nam aut ea repudiandae minima neque. Exercitationem iste voluptatem voluptate ipsum recusandae omnis enim et.', 'CDF', 1, 1, '1988-05-06', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 49785, 'gleason.julien@example.net'),
(99, 'Prof. Fern Mills I', 48764, 'Saepe assumenda eveniet omnis quia. Sint libero fugit ex assumenda odio odit id. Similique quos tenetur laborum et.', 'MXN', 1, 2, '2016-03-30', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 33301, 'casey32@example.org'),
(100, 'Russel Dare', 55125, 'Sint eos asperiores nihil facilis aliquid facilis est maxime. Voluptatem velit pariatur id perferendis quo et quidem. Reiciendis pariatur laboriosam exercitationem optio cumque ad.', 'MWK', 1, 3, '2014-11-07', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 91587, 'matilda.ratke@example.com'),
(101, 'Reilly Mayer', 84891, 'Cumque iure modi sit id mollitia ut dolorem dolor. Consectetur similique et sint perferendis sit qui. Fugiat cum deleniti sint ut. Ut repellendus et sint tenetur.', 'KHR', 1, 2, '2019-11-09', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 75035, 'elisabeth.trantow@example.net'),
(102, 'Yasmin Watsica', 39083, 'Est est explicabo libero voluptatem quia sit aut. Aperiam impedit ea ut laudantium dolores in. Architecto delectus itaque quasi beatae.', 'BTN', 1, 1, '1981-03-12', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 70963, 'hill.wyatt@example.net'),
(103, 'Mona Crist', 81379, 'Ratione consequatur est eos qui nihil aliquam. Consectetur et eum sint adipisci recusandae. Accusamus at vero assumenda rerum. Modi velit aperiam aut velit. Necessitatibus placeat delectus neque et.', 'SEK', 1, 1, '2013-05-20', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 43002, 'ella.dooley@example.org'),
(104, 'Eliane Gusikowski', 65950, 'Voluptates amet occaecati aut voluptatem perspiciatis ducimus eum dolor. Repudiandae ut voluptate optio labore illo. Blanditiis quam officiis quod voluptas quisquam ex rerum.', 'SSP', 1, 1, '1984-07-01', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 21253, 'kquigley@example.org'),
(105, 'Bo Turner MD', 88574, 'Sed iure reiciendis consequatur hic reprehenderit beatae sint deleniti. Esse laboriosam quo voluptas voluptates. Ab tenetur non ullam necessitatibus numquam eius. Cum ad eos quis et adipisci.', 'HUF', 1, 3, '2003-10-17', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 98580, 'rconn@example.org'),
(106, 'Dr. Kyler Kovacek Jr.', 42826, 'Eligendi molestiae odio molestiae praesentium eius architecto ducimus. Aut earum autem molestiae et quia. Et ut accusamus sunt.', 'ERN', 0, 3, '2014-07-16', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 82818, 'gutmann.aliya@example.org'),
(107, 'Jacey Considine', 47580, 'Voluptatum quo non qui repellat. Qui vel numquam omnis quia dignissimos quia quo. Consectetur at eaque expedita eveniet nisi. Velit esse sunt repellat.', 'SCR', 1, 3, '2021-02-27', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 80747, 'lyda31@example.net'),
(108, 'Isabella Bruen I', 21858, 'Et minima aut reiciendis quibusdam et quis in. Sunt laudantium nemo est placeat. Sapiente quia dolorem dolorem vero nulla vel error.', 'IQD', 0, 1, '1988-12-08', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 39706, 'ransom19@example.com'),
(109, 'Sadye Hane', 33141, 'Molestias soluta harum sed id sit cupiditate. Voluptas omnis et deserunt aperiam tenetur qui. Est rerum ut quo minima qui.', 'SAR', 0, 2, '1983-11-21', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 12086, 'coralie.willms@example.net'),
(110, 'Mr. Jedidiah Marks III', 57534, 'Quia est officiis debitis. Provident eaque est dignissimos ex quae. Sit ut occaecati sed labore. Dolorem praesentium minus ut exercitationem ipsum quo accusamus.', 'SGD', 1, 1, '2004-10-20', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 58133, 'bednar.nat@example.net'),
(111, 'Enoch Lesch', 33941, 'Voluptatem alias ut porro ea sit. Delectus non et reprehenderit. Qui est nihil exercitationem. Facilis blanditiis qui aut et.', 'KHR', 0, 2, '2007-10-03', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 87216, 'ryan.nathan@example.com'),
(112, 'Ollie Wolf', 44010, 'Sit ut vero deserunt vel id. Repudiandae corrupti laboriosam inventore dicta perspiciatis id et illum. Cupiditate quos quo temporibus est incidunt quia fugiat dolor.', 'PAB', 1, 1, '1978-12-14', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 73726, 'xbreitenberg@example.com'),
(113, 'Electa Krajcik', 73630, 'Sequi sint temporibus amet. Harum omnis corporis ratione laboriosam voluptatem dolor aut. Praesentium et officiis eos temporibus inventore. Commodi facilis recusandae sed est.', 'UGX', 0, 3, '1976-09-08', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 99910, 'wklein@example.org'),
(114, 'Milo Crooks', 91671, 'Dolores enim et saepe et aut minus libero. Doloremque quos voluptatem dicta. Soluta ut vel animi in ab.', 'DZD', 0, 2, '1996-12-10', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 98623, 'vrutherford@example.com'),
(115, 'Anjali Goldner', 37220, 'Quis et labore quaerat perspiciatis dicta aut in. Non voluptatem ut excepturi et debitis neque qui. Enim hic perferendis ut tempora modi magnam. Aut ea fugit explicabo aliquid reprehenderit quam.', 'AUD', 1, 3, '2004-03-04', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 73544, 'weber.toney@example.com'),
(116, 'Nicola Wunsch', 31454, 'Optio praesentium ut et voluptas doloremque. Pariatur doloribus non est dolores. Voluptatem veritatis incidunt quas consectetur quam. Molestiae a explicabo dolor perspiciatis.', 'AWG', 1, 2, '1974-04-03', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 52100, 'arnaldo70@example.com'),
(117, 'Miss Samanta Ebert DDS', 85537, 'Blanditiis quo beatae porro voluptas ullam magnam. Vero laborum eius facere suscipit et officia. Cum cupiditate distinctio vel vel consequuntur.', 'TMT', 1, 1, '2019-07-05', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 59251, 'jasper.kiehn@example.net'),
(118, 'Mr. Modesto Bartell', 88674, 'Quo aut omnis delectus doloribus omnis nisi. Minima facilis quidem quidem ea. Ut quasi aut aut sed quis ipsa. Iure provident in enim suscipit error perferendis.', 'LKR', 0, 1, '1986-12-19', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 81115, 'ylesch@example.net'),
(119, 'Celestine Kub', 19566, 'Dolorem dignissimos maiores quis. Molestias modi quaerat sapiente ipsam sunt in. Quas debitis delectus nobis eos eum sit. Dolorem enim quaerat recusandae nam cupiditate asperiores.', 'MKD', 1, 3, '1976-01-24', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 39750, 'savion43@example.com'),
(120, 'Bruce Goyette', 91427, 'Fuga at nam accusamus error hic sit non. Esse non atque ipsa quaerat in est porro. Labore nihil ab optio nulla fuga. Doloremque itaque dicta iste facilis iusto dignissimos.', 'QAR', 0, 1, '1994-09-17', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 55436, 'turner.ima@example.com'),
(121, 'Shawn Carroll', 40373, 'Ullam minima voluptas culpa veritatis perspiciatis neque porro expedita. Ut corrupti amet in eos rerum totam. Doloribus dolor omnis blanditiis rerum cumque cupiditate suscipit.', 'KMF', 1, 1, '2015-01-22', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 47730, 'greenholt.elna@example.net'),
(122, 'Marvin Abbott MD', 11837, 'Nisi ut sint enim laboriosam provident aut dolorem. Dolor labore tempore voluptas. Eveniet ullam enim maiores ea veritatis vero sequi velit.', 'HTG', 0, 1, '1996-07-14', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 82401, 'mohamed.schamberger@example.com'),
(123, 'Brock Cruickshank', 11426, 'Dolor magni sint rem ea aut. Nihil ipsa et atque ab et quas. Quo mollitia est necessitatibus aut. Non sed autem velit asperiores atque consequatur.', 'RUB', 0, 1, '2001-11-14', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 66897, 'smith.leonel@example.org'),
(124, 'Susie Rau', 27624, 'Vel eaque qui quae nulla. Sunt qui earum debitis. Rerum numquam velit fuga explicabo vitae ipsa iste.', 'YER', 1, 2, '2019-11-09', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 84747, 'hermann.viva@example.org'),
(125, 'Amari Denesik', 57210, 'Distinctio dignissimos aliquid ducimus explicabo ratione dolor. Rerum ut rerum aut autem. Sunt nam ut non cupiditate sequi sit officia.', 'ETB', 0, 1, '1998-09-27', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 28826, 'tcronin@example.org'),
(126, 'Miss Stacey Goyette DDS', 48023, 'Et quia ipsum adipisci enim explicabo nisi ut ipsa. Dolorum est laudantium incidunt dolore saepe dolorem. Doloremque corporis vitae est ex voluptatem dolorem. Non amet et beatae aut.', 'CAD', 0, 3, '2006-01-05', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 57146, 'weimann.harmon@example.org'),
(127, 'Prof. Brandon Towne', 73181, 'Consequatur et omnis adipisci. Optio et alias dicta earum. Omnis sapiente debitis natus et molestiae. Repellendus asperiores amet officia.', 'NGN', 0, 3, '1993-03-16', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 81432, 'cyril.bartoletti@example.com'),
(128, 'Michael Little', 79599, 'Facere culpa sequi rerum exercitationem. Minima quaerat accusamus autem in voluptas in tempore. Qui ut excepturi quaerat velit et.', 'MAD', 0, 3, '2000-01-29', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 49293, 'ratke.alena@example.net'),
(129, 'Deja Stamm', 12331, 'Ut et suscipit nihil occaecati. Qui aut dolorem est sed. Animi incidunt possimus harum. Et sit distinctio quasi illo aut quis. Reiciendis fugiat quos ipsum deleniti vero.', 'RSD', 0, 1, '1982-03-18', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 27073, 'doyle.savanna@example.com'),
(130, 'Jeffrey Bechtelar', 46969, 'Ipsa nam doloribus aut. Qui et voluptatum enim velit rem. Perspiciatis tenetur non quidem incidunt.', 'HUF', 1, 3, '1988-11-08', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 27776, 'trever.leannon@example.com'),
(131, 'Mr. Eldon Daugherty', 18381, 'Est ullam assumenda ipsam doloribus incidunt aut. Aut magnam officiis temporibus ipsum iste delectus. Voluptates est placeat corporis illum.', 'GEL', 0, 1, '2007-09-09', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 24920, 'jayme.brekke@example.net'),
(132, 'Dr. Milan Bode', 17807, 'Repellendus corrupti aut ipsa dolorum ipsum et. Nulla deleniti et non ea et. Sit labore nostrum doloremque ducimus odio aut sed. Consequatur doloribus odio in veniam qui pariatur.', 'SBD', 0, 3, '1976-10-14', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 51457, 'naomie.rosenbaum@example.org'),
(133, 'Roy Schaden', 50051, 'Facilis accusantium sequi quidem quos voluptatem sint. Corporis voluptate et officia est non voluptatum nobis. Reiciendis hic in repellat tempora id.', 'GBP', 0, 1, '1991-04-07', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 50340, 'kasey11@example.com'),
(134, 'Dr. Darlene Muller', 59551, 'Ipsa consequatur odio a. Sint quam omnis commodi eligendi aut.', 'JMD', 1, 3, '2001-03-26', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 35127, 'jakubowski.camille@example.com'),
(135, 'Prof. Akeem Prohaska I', 19713, 'Neque blanditiis rerum in quos sequi enim. Qui accusantium commodi quidem ut et. Quod et dolor voluptates eos. Sed quaerat similique occaecati.', 'HNL', 1, 1, '1985-05-27', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 61127, 'reilly.ashlynn@example.org'),
(136, 'Lauretta Bogisich', 45839, 'Deleniti sed excepturi aut natus tempora in dolore eos. Dolore autem veritatis ratione dolorem et.', 'INR', 1, 3, '2005-05-06', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 38761, 'hwaelchi@example.net'),
(137, 'Scottie O\'Reilly', 74014, 'Quia dolores molestiae soluta temporibus. Dolores et repudiandae nulla officia nostrum et tempora.', 'DZD', 0, 1, '2003-05-09', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 24723, 'vidal.hickle@example.org'),
(138, 'Prof. Hester Haag', 44554, 'Nemo hic voluptatum nobis nostrum aliquid. Enim nulla magnam tempore et. Voluptate labore incidunt eos iure nihil.', 'INR', 0, 1, '1971-04-30', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 78854, 'mohammad57@example.net'),
(139, 'Mrs. Amy Stokes', 99709, 'Ipsum cupiditate similique occaecati sit reiciendis. Illo recusandae beatae enim molestiae. Maiores qui ratione id.', 'CAD', 0, 2, '2002-02-12', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 65841, 'klocko.amara@example.com'),
(140, 'Tre Gutmann', 12684, 'Quia facilis minima labore et quaerat et. Neque quidem ut sit ab et. Sit voluptate minus fuga minima placeat.', 'PYG', 0, 2, '1972-03-24', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 46380, 'jarrell65@example.org'),
(141, 'Esta Spencer', 13144, 'Deleniti consequatur debitis saepe dolorem molestiae amet quia corrupti. Sed qui quis et ducimus laudantium. Iste et similique reprehenderit veniam minus voluptas sequi.', 'BBD', 1, 3, '1996-11-18', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 36306, 'ebert.maximo@example.com'),
(142, 'Flossie Ritchie', 44949, 'Quis voluptas nemo voluptatibus eos. Nemo similique aliquam hic deleniti et accusamus voluptatem. Error ab commodi sequi voluptates ratione eum aut.', 'SOS', 1, 2, '2018-05-26', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 42039, 'sandy.balistreri@example.net'),
(143, 'Thelma Stanton', 95874, 'Consequatur tempore qui fuga eos laborum asperiores voluptates cupiditate. Est quae sunt nesciunt. Exercitationem rerum quia ut tenetur sit.', 'CAD', 1, 1, '2022-03-18', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 33299, 'kbayer@example.net'),
(144, 'Felipa Ullrich IV', 26867, 'Dolorum fuga alias voluptas perspiciatis. Nam eos dignissimos ullam nesciunt et. Fuga itaque non in iusto est molestiae. Placeat ratione sunt velit velit repellat sunt.', 'TOP', 0, 1, '2005-02-15', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 59168, 'eryn44@example.org'),
(145, 'Ines Monahan', 19038, 'Magnam voluptas sit explicabo nemo quis. Est quaerat nulla non porro. Ratione reprehenderit occaecati aspernatur asperiores ut est temporibus. Corrupti sit blanditiis ipsum officia voluptatem nihil.', 'JOD', 0, 3, '1996-01-03', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 58863, 'amiya52@example.com'),
(146, 'Mr. Helmer Wiza', 79354, 'Rerum rerum voluptas eius facere. Qui architecto dignissimos sit tenetur et nemo natus. Et recusandae reiciendis qui aspernatur.', 'NZD', 0, 3, '1993-02-10', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 20239, 'beverly70@example.org'),
(147, 'Clemmie Schiller', 41064, 'Sed repellat quis rerum sint tenetur similique iste. Ab ab voluptate et nemo sequi nihil doloremque. Voluptatem in omnis nisi doloribus perferendis sint eligendi ut.', 'MAD', 0, 2, '1986-11-29', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 33036, 'beahan.luisa@example.com'),
(148, 'Megane Osinski', 49431, 'Sapiente amet quod et aut qui sint quam eaque. Ipsum repellat itaque est adipisci reprehenderit quibusdam sapiente. Sint quia nostrum eaque quia debitis a molestiae.', 'AED', 1, 2, '2019-05-29', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 50812, 'jared37@example.org'),
(149, 'Prof. Kristofer Friesen', 36880, 'Veritatis sed quia culpa id. Nihil cumque minus aliquam dolorum sed impedit odio. Quis qui ut pariatur mollitia quasi repellendus iusto.', 'INR', 0, 1, '2022-07-02', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 72721, 'charlotte54@example.org'),
(150, 'Prof. Roosevelt Goodwin PhD', 85756, 'Provident et neque quibusdam nobis facere veniam. Dolorem vitae velit architecto qui a veritatis. Corrupti eos quidem maxime ratione quidem qui perferendis.', 'ZMW', 1, 3, '1991-03-25', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 82423, 'russel30@example.org'),
(151, 'Walker Connelly PhD', 44759, 'Id voluptatum explicabo beatae sed impedit et. Molestiae repellat cumque sint nisi. Et sed sed quia autem.', 'ZMW', 0, 2, '1988-07-23', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 83219, 'xcollier@example.org'),
(152, 'Yvonne Prosacco', 30029, 'Et aliquam doloribus sed deserunt hic. Quam dolores soluta quis eos magnam. Voluptas reprehenderit sint aspernatur. Ut eveniet placeat quo qui illum est cumque.', 'ZMW', 1, 1, '2009-06-07', '2022-12-29 07:12:44', '2022-12-29 07:12:44', '2022-12-29 07:12:44', 15050, 'cwolff@example.net');

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;
--
-- Database: `laravel`
--
CREATE DATABASE IF NOT EXISTS `laravel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravel`;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `qr` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `internalisasis`
--

CREATE TABLE `internalisasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `department` enum('Fisika','Matematika','Statistika','Kimia','Biologi','Aktuaria','Teknik Mesin','Teknik Kimia','Teknik Pangan','Teknik Fisika','Teknik Industri','Teknik Material','Teknik Sipil','Arsitektur','Teknik Lingkungan','Perencanaan Wilayah & Kota','Teknik Geomatika','Teknik Geofisika','Teknik Perkapalan','Sistem Perkapalan','Teknik Kelautan','Transportasi Laut','Teknik Elektro','Teknik Biomedik','Teknik Komputer','Teknik Informatika','Sistem Informasi','Teknologi Informasi','Desain Produk','Desain Interior','Desain Komunikasi Visual','Manajemen Bisnis','Studi Pembangunan','Statistika Bisnis','Teknik Manufaktur','Teknik Konversi Energi','Teknik Otomasi','Teknik Kimia Industri','Teknik Instrumentasi') NOT NULL,
  `division` enum('TECHNICAL','STRD','OF','COMM') NOT NULL,
  `subdivision` enum('Vehicle Dynamics','Electronical & Powertrain System','Body & Frame','Science & Technology Research Development','Sponsorship & Relation','Administration & Accommodation','Creative','Content Strategist','Events and Media Relation','Web Developer') NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `internalisasis`
--

INSERT INTO `internalisasis` (`id`, `name`, `nrp`, `department`, `division`, `subdivision`, `time`, `created_at`, `updated_at`) VALUES
(1, 'iftala', '1234567890', 'Teknik Mesin', 'STRD', 'Electronical & Powertrain System', '2023-01-15 09:04:50', NULL, NULL),
(2, 'Anu', '46851', 'Kimia', 'STRD', 'Electronical & Powertrain System', '2023-01-15 09:35:47', '2023-01-15 02:35:47', '2023-01-15 02:35:47'),
(4, 'Iftala', '486513', 'Matematika', 'TECHNICAL', 'Sponsorship & Relation', '2023-01-16 03:34:04', '2023-01-15 20:34:04', '2023-01-15 20:34:04'),
(5, 'Iftala', '234175421', 'Teknik Mesin', 'COMM', 'Web Developer', '2023-01-16 03:38:46', '2023-01-15 20:38:46', '2023-01-15 20:38:46'),
(6, 'Iftala', '234175421', 'Teknik Mesin', 'COMM', 'Web Developer', '2023-01-16 03:39:07', '2023-01-15 20:39:07', '2023-01-15 20:39:07'),
(9, 'nyoba', '3241334134', 'Biologi', 'STRD', 'Creative', '2023-01-17 08:22:50', '2023-01-17 01:22:50', '2023-01-17 01:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
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
(5, '2023_01_15_045601_create_events_table', 1),
(6, '2023_01_15_045637_create_internalisasis_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
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
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$ijidi2tc7ZP0dS5yHTYJNOl/83gZ7I4nrDYXYclnaRGnpkVzLPl/m', NULL, '2023-01-14 22:22:57', '2023-01-14 22:22:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `internalisasis`
--
ALTER TABLE `internalisasis`
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
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `internalisasis`
--
ALTER TABLE `internalisasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"laravel\",\"table\":\"internalisasis\"},{\"db\":\"laravel\",\"table\":\"users\"},{\"db\":\"antasena\",\"table\":\"visitors\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-01-17 13:00:12', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
