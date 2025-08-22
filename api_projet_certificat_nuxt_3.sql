-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 22, 2025 at 11:16 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_projet_certificat_nuxt_3`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Parfums', 'Découvrez une collection de fragrances conçues pour sublimer la féminité, allant des notes florales et délicates aux compositions plus audacieuses et sensuelles.\n Explorez des parfums puissants et raffinés, avec des notes boisées, aromatiques, ou encore chyprées, pour affirmer votre style.', NULL, '2025-07-28 07:33:39', '2025-07-28 13:45:48'),
(2, 'Vêtement', 'Découvrez notre large sélection de vêtements pour toute la famille, alliant style, confort et qualité. Que vous recherchiez des tenues décontractées pour le quotidien, des pièces élégantes pour des occasions spéciales, ou des vêtements de sport performants, vous trouverez votre bonheur parmi nos collections variées. Explorez nos catégories et trouvez la tenue parfaite pour chaque instant.', NULL, '2025-07-28 07:37:14', '2025-07-28 07:37:14'),
(3, 'Chaussure', 'Découvrez notre collection de chaussures pour homme, femme et enfant, pensée pour allier style, confort et qualité au quotidien. Des baskets tendance aux bottines élégantes, en passant par les sandales d\'été, les mocassins classiques ou les chaussures de sport performantes, notre sélection s\'adapte à toutes les envies et à toutes les saisons.\n\nQue vous recherchiez une paire pour compléter votre tenue de bureau, accompagner vos aventures urbaines ou vous dépasser lors de vos entraînements, vous trouverez ici des modèles adaptés à chaque style de vie. Nous travaillons avec les meilleures marques pour vous garantir durabilité, confort de marche et finitions soignées.\n\nFaites de chaque pas une affirmation de votre personnalité avec nos chaussures pensées pour bouger avec vous, jour après jour.', NULL, '2025-07-28 07:39:09', '2025-07-28 07:39:09'),
(4, 'Sac', 'Complétez votre look et facilitez votre quotidien avec notre sélection de sacs alliant style, praticité et qualité. Du sac à main élégant au sac à dos fonctionnel, en passant par les pochettes tendance, les cabas spacieux ou les sacs bandoulière, notre collection s’adresse à tous les styles et toutes les occasions.\n\nQue ce soit pour le travail, les sorties, les voyages ou les moments du quotidien, trouvez le modèle qui vous accompagnera partout avec confort et élégance. Fabriqués à partir de matériaux durables et conçus avec soin, nos sacs vous garantissent une allure soignée et une organisation optimale.\n\nExprimez votre personnalité à travers des designs intemporels ou audacieux, pensés pour suivre votre rythme et sublimer vos tenues.', NULL, '2025-07-28 07:42:50', '2025-07-28 07:42:50'),
(5, 'Cosmétique', 'Prenez soin de vous avec notre sélection de cosmétiques qui allient efficacité, douceur et sensorialité. Découvrez des produits adaptés à tous les types de peau et de cheveux, conçus pour révéler votre beauté naturelle tout en respectant votre bien-être.\n\nCrèmes hydratantes, sérums, nettoyants visage, maquillage, soins capillaires ou encore produits corps — nous vous proposons une gamme complète pour répondre à chaque besoin et chaque envie beauté. Notre collection réunit des marques reconnues pour leur qualité, leur innovation et leur engagement envers une beauté plus responsable.\n\nLaissez-vous séduire par des textures agréables, des ingrédients soigneusement sélectionnés et des formules qui font la différence au quotidien.', NULL, '2025-07-28 07:44:23', '2025-07-28 07:44:23'),
(6, 'Technologie', 'Plongez dans l\'univers de l\'innovation avec notre sélection de produits technologiques dernier cri. Que vous soyez à la recherche de votre prochain smartphone, d’un gadget connecté, d’un ordinateur portable ultra-performant ou d\'accessoires high-tech, notre gamme vous offre le meilleur de la technologie moderne.\n\nNous avons soigneusement choisi des marques de renom qui allient performance, design et fiabilité, pour vous permettre d\'élever votre expérience numérique au niveau supérieur. Explorez des appareils conçus pour simplifier votre quotidien, optimiser votre productivité ou vous divertir avec une qualité sans compromis.\n\nDu streaming à la réalité virtuelle, des solutions domotiques à l’IoT, notre collection couvre tous les aspects de la technologie moderne. Découvrez des produits à la pointe de l\'innovation, avec des fonctionnalités avancées et des designs élégants.\n\nFaites le choix de la qualité et de la performance avec nos produits technologiques, pensés pour répondre à vos besoins en matière de connectivité, de performance et de divertissement.', NULL, '2025-07-28 07:46:36', '2025-07-28 07:46:36'),
(7, 'ted', 'euzfjhezkajhj', '2025-07-28 14:32:38', '2025-07-28 14:10:48', '2025-07-28 14:32:38');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_07_26_232928_create_categories_table', 2),
(5, '2025_07_26_232948_create_products_table', 2),
(6, '2025_07_26_233024_create_orders_table', 2),
(7, '2025_07_26_233139_create_order_product_table', 2),
(8, '2025_07_27_002029_create_personal_access_tokens_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `num` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `total` float DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `num`, `user_id`, `total`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ORD-04082025-0001', 2, 113000, '0', NULL, '2025-08-04 08:55:27', '2025-08-04 08:55:27'),
(2, 'ORD-04082025-0002', 3, 170000, '0', NULL, '2025-08-04 17:56:11', '2025-08-04 17:56:11'),
(3, 'ORD-04082025-0003', 3, 317000, '0', NULL, '2025-08-04 19:10:07', '2025-08-04 19:10:07');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2025-08-04 08:55:27', '2025-08-04 08:55:27'),
(2, 1, 2, 1, '2025-08-04 08:55:27', '2025-08-04 08:55:27'),
(3, 2, 1, 1, '2025-08-04 17:56:11', '2025-08-04 17:56:11'),
(4, 2, 4, 1, '2025-08-04 17:56:11', '2025-08-04 17:56:11'),
(5, 3, 1, 1, '2025-08-04 19:10:07', '2025-08-04 19:10:07'),
(6, 3, 2, 1, '2025-08-04 19:10:07', '2025-08-04 19:10:07'),
(7, 3, 4, 1, '2025-08-04 19:10:07', '2025-08-04 19:10:07'),
(8, 3, 6, 1, '2025-08-04 19:10:07', '2025-08-04 19:10:07');

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
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'nuxt-client', '3645a36005faab255b0bf42bfc3fde314d8186ed3f8734363c20f796ab17de98', '[\"*\"]', '2025-08-04 07:09:28', NULL, '2025-08-04 06:12:55', '2025-08-04 07:09:28'),
(2, 'App\\Models\\User', 2, 'nuxt-client', '4ffc0fb690bb34cd9a70dc593a1b1a210db17dfd21ca0b1514cdc36d45499bc3', '[\"*\"]', '2025-08-04 08:55:27', NULL, '2025-08-04 07:18:57', '2025-08-04 08:55:27'),
(3, 'App\\Models\\User', 2, 'nuxt-client', 'b91e04da0b2540d01fc5e9a92cc085966efe519e6b4c769ede67e61c539d49d6', '[\"*\"]', '2025-08-04 09:44:18', NULL, '2025-08-04 09:30:42', '2025-08-04 09:44:18'),
(4, 'App\\Models\\User', 2, 'nuxt-client', 'db1d26fb8a8ea185df79053555c2ef31cb3e439287e272c256457762f5446179', '[\"*\"]', NULL, NULL, '2025-08-04 10:16:42', '2025-08-04 10:16:42'),
(5, 'App\\Models\\User', 2, 'nuxt-client', 'af5d22e2733c138541af195492c40ddcf3b3d66a9770e8eaf4957b3d9b2e13c6', '[\"*\"]', '2025-08-04 17:38:06', NULL, '2025-08-04 17:08:43', '2025-08-04 17:38:06'),
(6, 'App\\Models\\User', 3, 'nuxt-client', 'ad9798983ffd57a7fd6e84f2f054ae74de3dad7082188480aa9efddcb56ac334', '[\"*\"]', '2025-08-04 19:10:24', NULL, '2025-08-04 17:52:42', '2025-08-04 19:10:24'),
(7, 'App\\Models\\User', 2, 'nuxt-client', '30cd19ce4bafd78ec01bceba10b22b61b39b7144705bd002e56e206d05156f04', '[\"*\"]', NULL, NULL, '2025-08-04 19:35:07', '2025-08-04 19:35:07'),
(8, 'App\\Models\\User', 2, 'nuxt-client', 'd3c8042ab89071338a8ac4eed59e2698456d04c04da6c183318af27ae5ba0f7e', '[\"*\"]', '2025-08-09 11:37:55', NULL, '2025-08-09 11:16:31', '2025-08-09 11:37:55'),
(9, 'App\\Models\\User', 2, 'nuxt-client', 'f04457f200f2ffbbeb3b596cfc15854443612cd1e348b5082c60dec239a058b0', '[\"*\"]', NULL, NULL, '2025-08-22 20:36:07', '2025-08-22 20:36:07'),
(10, 'App\\Models\\User', 2, 'nuxt-client', 'ee7d48b7062c94f1ec297e853996515904d6131edb894b93650370d329ec0e9c', '[\"*\"]', '2025-08-22 20:49:07', NULL, '2025-08-22 20:41:21', '2025-08-22 20:49:07');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `description`, `category_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Dior Sauvage Eau de Parfum 100ml', 95000, 'Dior Sauvage est une fragrance iconique pour homme, inspirée des grands espaces. Sa composition puissante mêle la fraîcheur de la bergamote de Calabre à l’intensité de l’ambroxan, offrant un sillage boisé et masculin. Un choix élégant pour les hommes affirmés.', 1, 'https://i0.wp.com/zino.ci/wp-content/uploads/2022/11/MODEL-IMAGE-1-3.jpg', NULL, '2025-07-28 08:41:58', '2025-07-28 18:38:32'),
(2, 'T shirt Nike Sportswear Club Hommes', 18000, 'Conçu pour un confort au quotidien, ce T-shirt Nike Sportswear Club pour homme est fait en coton doux et durable. Il arbore le logo Nike brodé sur la poitrine et une coupe classique qui s’adapte à tous les styles vestimentaires urbains.', 2, 'https://static.nike.com/a/images/t_default/bba3e6a1-1e49-40bc-89a2-0e1c6a9b4e12/t-shirt-sportswear-club-homme-kvT3Cl.png', NULL, '2025-07-28 08:43:16', '2025-07-30 12:54:52'),
(3, 'Baskets Adidas Stan Smith Femme', 45000, 'Les légendaires baskets Stan Smith d\'Adidas reviennent avec un design épuré et intemporel. Dotées d\'une tige en cuir végétal, elles sont confortables et parfaites pour un look chic et décontracté au quotidien. Légères, résistantes, et 100% stylées.', 3, 'https://photos6.spartoo.com/photos/188/18898715/18898715_1200_A.jpg', NULL, '2025-07-28 08:43:55', '2025-07-30 12:55:08'),
(4, 'Sac à main Michael Kors Jet Set Travel', 75000, 'Ce sac à main Michael Kors est conçu pour les femmes modernes. Fabriqué en cuir Saffiano, il dispose de poches fonctionnelles et d’une bandoulière ajustable. Élégant, spacieux et pratique, il vous accompagne dans tous vos déplacements.', 4, 'https://www.dazigno.com/cdn/shop/files/michael-kors-jet-set-travel-extra-small-signature-logo-top-zip-tote-bag-black-dazigno.jpg', NULL, '2025-07-28 08:46:12', '2025-07-28 08:46:12'),
(5, 'Crème Nivea Soft 200 ml', 3000, 'La crème hydratante Nivea Soft offre une sensation de fraîcheur intense et une peau douce comme de la soie. Idéale pour le visage, le corps et les mains, elle est enrichie en vitamine E et huile de jojoba. Pénètre rapidement sans effet gras.', 5, 'https://img.nivea.com/-/media/miscellaneous/media-center-items/7/f/6/149999-web_1010x1180_transparent_png.png', NULL, '2025-07-28 08:47:26', '2025-07-30 12:55:25'),
(6, 'Smartphone Samsung Galaxy A15 128 Go', 129000, 'Le Samsung Galaxy A15 est un smartphone performant avec un écran Super AMOLED de 6.5\'\', une batterie de 5000mAh, et un stockage de 128 Go. Son triple capteur photo vous permet de capturer vos moments avec clarté. Idéal pour les jeunes connectés.', 6, 'https://www.negoce.ci/11834-large_default/samsung-galaxy-a15-4gb-ram-128gb.jpg', NULL, '2025-07-28 08:49:24', '2025-07-30 12:55:38');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1Y0QU6ChgnhULTtSbwvFtbm3R4xKJNkDrgsCywEF', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOUxycVM5YnFaUWR5ZlBWUFREaGdmaHR5WVZPT0lZazhoVldmUjNxNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755902657),
('3uYHMivXyQSl1mXvObNgsq6YbTgMhvwba8cnK47s', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUW5IUk8xZDNpZ0NuWTR2OHFadW52SXN2VzNtMWI3T3F2d2hSQkxCVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755902141),
('4PU2EWyN7ARMGh6udLMceYdSNzuWhGRZjiBaZi88', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2gyVWk3OE1RTlV4dmJydVlVUDc0TUxwMUJBc3VQdDZXb0syaEF0cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755903438),
('6Fes51BxmKZsp2mYzQdMAs9Ha1OFKTA3TG0iVjTh', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicEd3QXNhbW83YlE1bzBpdDJWcFpNRGZGZ3hDUWhHTzNPU3BnNzFURSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755902486),
('8Pj6cFDrMUUbnfX8KgRBlG5xh6nE0fHtb44NfEii', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV09WUmNQOXRlMWU2V1A1Ulh5UTkyOWJWVWo3eG5WU0JiOWJxWHNHdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755902065),
('AcabohH19KSzLqzuc2rk7322jSTqEQaIPmjWojP2', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT25FbWZxUjJwNTFTd2pUZWo3UUViQWJseGE3TjVPczRtS1NZNGJuTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755902613),
('apv8Sm7SQCRg1zC8vPktZYTgdzo2W2uBn7HEM6JM', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicHBBR3haYzNjeHZzQjJMU25PVnh5RmRDVHp6WEpUZ0lPd1lqUXczNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755902868),
('bqv9heABVlFmfweqD7Mj481opmkrjCuxCCC4cuzZ', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVEQyZWtFQkhPWFVLcjNkcEk1blBrMUxlMFluRWJUZ1dRQ01SR0pSMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755903185),
('bz8lAr2WdKooCt9AlyLK4TjJ0hrNWWQaCkVHzVOr', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidFlITGRHUnRtTHBOZzFGZ0JRRXlNMmpyZ0hPRXhZS0NkM0hnVWVYZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755903217),
('c0Lv6NJcDp9AgMs34JQRxgW2Bua65a6y80rQvWsm', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibHN6d290a1NtMVZ5VVpoTDF1SmxoaGRRb20wYjIydDRpQUxPRmZhVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755903069),
('C5sHyXOEWHf5BwJxVwTx0xrJSFlC9SLjvTJ3OGzA', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMElFaGhmOGwzVU5Na1NLTW5sY0pDM2ZBR2dMclFrbWtTMVNYY1h5YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755902156),
('cJRprOyp6E5DDjuxZHE4gyq87YY1nwjQKJ1R1fkn', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibVJBS2p2VzRnVDVHU3JJNFFMMWF5YmJkYXVMWWt2cU5RbGtCd01QMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755903168),
('cZB4AYKKvcfNOUGGP3DrKFIgsrsLBWC4nSLcpT2A', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZFVnQVBlNHY3Q091TlFtSDZJRTJoWE8wTWVUQmVPNmM2NHc4SjlvZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755900937),
('d2UqLudRAfUA5LoeH2FbACPoCUUzYEpb4JW1527T', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia09BVjdScFBpRG45cG9xUVdkSWdLVlVxYnlKWjhnNjJMaTlROUU3TCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755902378),
('D3qd1e4zfpL7rVt0x3hKsnuqMv2Pi2GPFL5LyZK9', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOFBER2RhY2dOQ3o5MjZGeWxKUFJ4cFVQWHRWTEFxR1dacktYbk9PayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755902052),
('eMLFZCrlgG55vm6m8PF7vNMZmZuuV3S8QnsCTaC8', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM2ptRExvWTV6N1VoUmRiSHRYSGdieVNNSExMQjFQcXk3NG55d08zOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755902147),
('GaMVLMbgouQ85VupO54BVllbyZeK8YUm5efXUdrI', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYk1jdEt2VUNGbWJmTjRMSTV5YWNlUjI3dU1oMTU0dHJQZHh0cVZhQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755901943),
('GF9BrkIkivIeX42yobUHlHEVAS73TFSsGnFI3Wkq', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaENDN05IWlZES0xpSWV2TDdZWGkwVzdKSDk5cVROaWZzS2RZb2dRYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755899711),
('gKbnT0vqCO2CE8TEj30uLhit1EWpO5gxEcMvaxIq', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS3R4a01vUzdVdmVSU2RKN0hPMFZpbkFSZHdCV01IY045UFZZaVlxZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755900928),
('gY1PgMmjhLGd4IBULXsrxiDvuo7rU9wBbvPwA9O3', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVFsUG5UMHU5dFNxVlB0aDh0VUphM2MydWtvZGtCZ3BzVGM0TVE0WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755902728),
('HQRBIQyIz5affMsNKuKN0hdnPlZfw78wemRuuQaX', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNHZ5MnliN3NSWWtaOTlFc0NobkttR3pQenNWZlRXWWhDVXdzTmRiTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755901914),
('hvZADHNGdx6cXI7JnMIqqig3mpaaymzVSKypZcBo', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMFRmR3pPMllPU2VHVlR6dXJJWVNYM01uSmdmWmFSMEw2TDRLUTExZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755901927),
('i2IVrm9WsV4oibntt2liHy3aTPqVS9V3U65HYLwL', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFlHTHd2Z2JLM1FLOG5FRlRJVzJjOENUNjRTWlR5WW10bHFZMEtReCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755902150),
('jCHLrnthjYKVTFk5VrSfgZWTfPxzJmXJuoTW3yzN', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYlU4VGM1V3RMV2M4ZnJjVEFSWFBId0ZqblNNS1pEWkpDenE2bm8zdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755903330),
('jYUGq78pXbfFUBdtb7UyHoP5Wl13AavUF6sIuS5o', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWUtoeVVYaTB3S2VySHlKa2J1U0t3OVJ2c1JmbVJSNm94Z1VBZVJqWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755901728),
('k8tqvX5x6oHpAlAQLQfCKGaxoPlqktSjr7kskXcH', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWVVQeXRYNVNadW84WTIyRVpsamtEOEFTRkE3Rm80Nmcyd0hXQzNxdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755903197),
('Kc8cXmzyhjoi0uvzJcfRId1juRPInWITsjNPAoWU', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaXNTc1FtT0pKaWZKM0NPOTV3Nk9xdWJKYWZXeVRuSEczNTVRcnNudSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755902451),
('KDljLmQg0JD7dapsi7vog63XZimTHsQQ7CO3AgJl', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNWJJU3hkbnZwdnFGTTRrTUdLTHZHbEdJdENTNmxZdG41dVozNTZ3eCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755900208),
('khokREJOQV3hU2R2v0iAIZ8MrlfCDyXpHSqDFMHc', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic3d1NThDQzFxU0drdnpWTDVTZU1NRFFXSzVKblphSTZIQXJxRUEzTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755903277),
('Kzl32zXQZjHdj41Nmeaz1g4atIa6EGoluRBXHBye', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRTAwNzhaV3pDazNLa3g2aHZselZsNjBPa2FZSlpTczBzSlZmS0pzMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755900348),
('m1FPZZCwM6G4PWNolmhQWYTfvEEJ6KDAtPFcGLO7', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUlZvZm55MFRSeWJmaDFMckUyM0ZONWhPUnFFTXUzdzJUVkp5ZzBEQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755903090),
('nwC8eal1ze9VNjHVZaJk24KjMX7uKcTb3u9cfMrK', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUFwdjQwT2JGdEljVTF0Tnh2aTh1OTNVTE15NFdJVkJWVzBZR3lNVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755901631),
('o0sGQc2vwb8otut8rAieL8dtslkAclnnMyweow0s', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVHpQaXA5STBianlCeTdOOHJZbkd6N1BYT29oS3pKZ2dLNnJYQWZTaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755899652),
('OEjZdEmzhCAW401dWmffmMANSLGzhIlYvlMJNunw', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQXVra0l4Tk84VXhvODNxVTVsSFdGdVRZQzlzUVcwdjN2UktTTE9UVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755902975),
('p0khpSLOxwsTjsFQnfhxKxxthREhHwKXwSoZ4kJJ', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU2piM0RjcFRPR2ZYRWZRUTQ3Qm1BRkQ0bXJhTVJIcFpCSXZlelMwWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755902166),
('pFxSjrMzi0rDdPy3BCBAwzyTdlDUIsOJjkd5q3Ml', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMDZkRkhweEhXSjdmWjAxYTV2YzhuUWp3dDlTY2ZoV1NqUGM2QmZWUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755902668),
('QJFN7fRLhc1tel7dqQljqYjP9nxblw6B9Fu0GeuC', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRUZ4OUpsQXV5c2JuTWVqdlVYdzRlR251M2sxSndKVW0xM0RYSUtKRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755900981),
('sBVFzr5XtqPNCQtCkt7FdDdM9rkqj3w55d399vvj', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSjhTZXhGOVZkempQZmJFcktybHR5OWlpY3RZRld1b3hFeEN1eHR5aCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755903255),
('TBtAZZin1z1EV9eBtD7Vi38pdEjnIZ1eo45QXyzb', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWl3ajcxa2NFZzl6RmJKVWRNRWFUTlhnMVZtWUJ3YlBzdkRiZVBGOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755902927),
('tcbB1FyQnibRe8RBFopK041OsDIui3bGZsmo3n8V', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUFV2WWI5Wk1rWWNicFNtZDgwNHdaaWtaNVk4YmxUZ05lYmZ6YXVZWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755900834),
('TsaW0KnN9EDQV0YIJuWPAofx3RQUemPC8mtHN0YR', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWE5DeWdWcHZwQWFSS0V4bDhOWERUYXVncHBsMkpVbHpwOExKQWxvViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755901720),
('TvCTjNWygAG03gKo5kaRxsXPJM7aKboZBlx37Dt9', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUzlueFl1MmpIcVNENnJYb3JKSUpPbFh2b2YxS01JVE1Wb0M1QnpWMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755901009),
('u1UXn8hoRQ0bYobcJSXPfVFCP69hOG577YfVCU5R', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY1BaTmNMVGNKSnpESGNncno1Yk9qcnd4RmJoUldZWG96Ykw5OGpkSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755899686),
('ugUCbH3FXa7ZzMMlBumw3rnSi5XCtIt6OLQFR8Lp', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicFZ4OGJ4b3dsaUVHWUNiSW93QlVjajh3a0N6b0RBeDBzYnJRVGpTZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755901925),
('UhKEMqg1drJ4TDE4jxEoL5krVY2gqpREYWVRW7oL', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0VER3BqeEVHVWFlNkV5b2JrVzdvMnR6S2xvdzl0OFdHTkdVY3NDcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755900823),
('UjdtE3J2pSirHSGERmEtNRMnogSvoEFUR1NR8rVW', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZDVURmp4MU5vVHZBVENnclFSV0JRTE9XUGJVandhQkpIVFdENzNNNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755902480),
('umwFuaEmdPT1F0xl3yd0rKmLQGwszSvh1cDekDhX', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia3l3YlpNNFNEMzFZQ0Q3TUVmOFJicVplYWRVZ1RHRnVWSGJjZklrWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755902173),
('uNRGn3e0fnUananye9FldMAmbCDyBH5C3qsGxpU9', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaFRabmNtd3A2cHhTdUF5NEdsM2dBM041Z291QXA3Z0JldEpqNmJkdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755902957),
('urmHqyd665wsuDUp0UeBdgJzJF6RNtfqBJmxn0Tn', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOHJOWnQ1MmpxSGhuOWVObE9MNURGR0lQRHI4RGFZZVBUeXNsOU5nWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755902160),
('Vq6jAbWDrV0LFpz4Zy7LxeNUFL34p1p8rVOa8lYD', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNXVKUTlQMWw4MzRZdVhHUzI4ajNEOHdDVmZkdGxwUktHVkhpQTR2diI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755903422),
('wAi6DwVpjz0jqr4utYnJKnNKomMihsTWKaQy6taN', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSk0weTRpSXpiN2J0NXNjMDlURWZya3VnQTRJeEFacEk2T0k3M2IxbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755901643),
('WgtmdqdRJ2wdEnBIdUZLuCobhkLQ1OZS1wvqaM8T', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ21VR08wNHFGOWVJZkl1UmZUcTk5N3E1Q2llZFB2NXZsSHM3N2dmbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755903313),
('WjcLPkdhmFeHb1CTmWLAq1oGluekq4HrGY1PvWLy', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNWZKSndWTjJ5QUNQbWw5VVVXSXQzUVlST2ppOHFtNTJMdVBZemVVNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755900228),
('WmUIXF66RHWaqwxQKuWVAof3NM3vq81BFBU9MaO0', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUFNzdnFCYkx3dGlkMHppUVRoZlkzU2V3cms2UVI3NkNMMWp2RDRCQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755901900),
('WRkJkbUaNcPDzi4BXAJSRjkYTksjMbKukCNMYSak', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNnJXSEk2ZlRRWmZWZHFHT201aURvU2dMRzZKcjV1YjVHSE9LRWZtNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755900970),
('WvBHt7ar9Qo1ChFpcvkPfAKWI5rgTjmTzLcN1q71', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMHFRVndXZ3gzMXZXMU9CM3VQM0lENHhoSDZNdG8yUEpxbEtpNTFYRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755901622),
('xOsncTEnieaGKhaQzqPicM6G8LOD1J28akfghUSA', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUtrT0loaXp4WlNLRk5nU0tKNjRwaFFDZWg2WFZmV1VhNWR6dVExbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755902103),
('XT8mooGgwM6OlgCtoIjeUqtkNg2rhlowsGDrl9AY', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVm5BWHk0QzFDUE5vbzA2VFZ3QXgzbjNQZVBkYWR0ZmxUUm1ESXZ4UCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755900216),
('yGVqF5To2Et86u4moU4D3zqA3hlb3Y6JSyrXIGKs', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZVhyTUhqcmhFMVVvM2E2SzU5eGRwVTlmUkJtclFjd0JkZlI0WG1vSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755901019),
('YlHq0OvBBgnrK8na8Br3A4pt1PbtC4Sq0qMVQWMk', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibzRiYzdQbWo4WXlNSkFCU3lpdTN3dzlPZEhUVk9iNHdJVXpEbUZuSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755902771),
('zjfdsoF1t9ZhnbNu5rmzsQU9nfR3zsfWp0mfjowl', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQnN2TE5XT051dU9iNlpFZG53cFE3Slp5U2YwczdSdjVWVVF2bHlRdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755900358),
('zPQwSCv6irBwDarDFEofWzXDfGZke5gGbLUWYZSL', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZE4yaW9SRkRRRDBvQm9QOGxIRVNYalZhR3F6VWgzcEYyVEJ1Y3M0MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755901650),
('zzO2acndkBvR6o8iYrZdSNBluIOpBYqckUT94h9w', NULL, '127.0.0.1', 'node', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDhjS1N5NXNRbVJLV21lWENERnRSbmVYWHVjckFBVlR4UXZRM214dSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755902733);

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
  `role` int NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Diabaté Mouhamad Tieba', 'tieba58@gmail.com', NULL, '$2y$12$R.FWx16v4Be79xBTWlRX3On9q8YhiX49jDX9YpTRwXscxMaQJ1EhC', 0, NULL, '2025-07-31 09:33:47', '2025-07-31 09:33:47'),
(2, 'didi', 'didi@gmail.com', NULL, '$2y$12$EzwMX5BJNWIlybU2npiQjeC0kz7g.Y7uhXhquaMUJXL2XC4lTT6LG', 0, NULL, '2025-08-01 13:03:16', '2025-08-01 13:03:16'),
(3, 'Titi Demou', 'titi@gmail.com', NULL, '$2y$12$VAPLRUm1WAt.8h1oHXf27.GkjGtySvu4KLy5bQnxj7EnR6UTh.cJS', 0, NULL, '2025-08-04 17:50:09', '2025-08-04 17:50:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `num` (`num`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_product_order_id_foreign` (`order_id`),
  ADD KEY `order_product_product_id_foreign` (`product_id`);

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
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
