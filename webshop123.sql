-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2021 at 07:38 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 31, 0, '2021-03-15 15:45:11', '2021-03-15 15:52:25'),
(3, 31, 1, '2021-03-15 17:19:41', '2021-03-15 17:19:41');

-- --------------------------------------------------------

--
-- Table structure for table `cart_product`
--

CREATE TABLE `cart_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `cart_id` int(10) UNSIGNED NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_product`
--

INSERT INTO `cart_product` (`id`, `product_id`, `cart_id`, `count`, `created_at`, `updated_at`) VALUES
(4, 8, 2, 5, NULL, NULL),
(5, 1, 2, 2, NULL, NULL),
(6, 1, 3, 1, NULL, NULL),
(7, 46, 3, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Man', 'man', NULL, NULL),
(2, 'Woman', 'woman', NULL, NULL),
(3, 'Kids', 'kids', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `category_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, NULL),
(2, 3, 2, NULL, NULL),
(3, 1, 3, NULL, NULL),
(4, 2, 4, NULL, NULL),
(5, 2, 5, NULL, NULL),
(6, 3, 6, NULL, NULL),
(7, 2, 7, NULL, NULL),
(8, 3, 8, NULL, NULL),
(9, 3, 9, NULL, NULL),
(10, 2, 10, NULL, NULL),
(11, 1, 11, NULL, NULL),
(12, 1, 12, NULL, NULL),
(13, 1, 13, NULL, NULL),
(14, 1, 14, NULL, NULL),
(15, 1, 15, NULL, NULL),
(16, 3, 16, NULL, NULL),
(17, 2, 17, NULL, NULL),
(18, 3, 18, NULL, NULL),
(19, 1, 19, NULL, NULL),
(20, 2, 20, NULL, NULL),
(21, 1, 21, NULL, NULL),
(22, 3, 22, NULL, NULL),
(23, 2, 23, NULL, NULL),
(24, 1, 24, NULL, NULL),
(25, 3, 25, NULL, NULL),
(26, 2, 26, NULL, NULL),
(27, 1, 27, NULL, NULL),
(28, 3, 28, NULL, NULL),
(29, 3, 29, NULL, NULL),
(30, 1, 30, NULL, NULL),
(31, 3, 31, NULL, NULL),
(32, 3, 32, NULL, NULL),
(33, 3, 33, NULL, NULL),
(34, 3, 34, NULL, NULL),
(35, 1, 35, NULL, NULL),
(36, 3, 36, NULL, NULL),
(37, 2, 37, NULL, NULL),
(38, 1, 38, NULL, NULL),
(39, 3, 39, NULL, NULL),
(40, 1, 40, NULL, NULL),
(41, 2, 41, NULL, NULL),
(42, 3, 42, NULL, NULL),
(43, 3, 43, NULL, NULL),
(44, 2, 44, NULL, NULL),
(47, 1, 46, NULL, NULL);

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
(1, '2021_03_09_000001_create_sizes_table', 1),
(2, '2021_03_09_000002_create_roles_table', 1),
(3, '2021_03_09_000003_create_categories_table', 1),
(4, '2021_03_09_000004_create_products_table', 1),
(5, '2021_03_09_000005_create_users_table', 1),
(6, '2021_03_09_000006_create_carts_table', 1),
(7, '2021_03_09_000007_create_orders_table', 1),
(8, '2021_03_09_000008_create_category_product_table', 1),
(9, '2021_03_09_000009_create_product_size_table', 1),
(10, '2021_03_09_000010_create_cart_product_table', 1),
(11, '2021_03_09_100000_create_password_resets_table', 1),
(12, '2021_03_09_110000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cart_id` int(10) UNSIGNED NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `cart_id`, `postal_code`, `city`, `country`, `phone_number`, `created_at`, `updated_at`) VALUES
(1, 2, '11000', 'Belgrade', 'Serbia', '061123456', '2021-03-15 15:52:25', '2021-03-15 15:52:25');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `description`, `image`, `slug`, `sale`, `created_at`, `updated_at`) VALUES
(1, 'qui Port Armani', '5301.00', 'Consequatur culpa deserunt quaerat tenetur magnam. Sunt fugit et aut porro. Sit in eos ut qui et. Accusantium dolorem consequatur amet sapiente numquam.', 'product1.jpg', 'qui_Port Armani', 10, NULL, NULL),
(2, 'eligendi Samirburgh', '4054.00', 'Sed iste consequuntur quo exercitationem. Nisi vel officia nulla enim pariatur nihil. Molestias voluptas natus asperiores eos exercitationem sed et. Ullam eveniet explicabo tempora consequatur quos voluptatibus sed.', 'product2.jpg', 'eligendi_Samirburgh', 40, NULL, NULL),
(3, 'et Lake Catharinebury', '3812.00', 'Possimus occaecati molestiae explicabo omnis corporis. Animi et iure doloribus et fugit est doloribus. Dignissimos aliquid magnam voluptatem exercitationem hic commodi voluptatem. Provident illum labore eum.', 'product3.jpg', 'et_Lake Catharinebury', 0, NULL, NULL),
(4, 'quod Jenkinsstad', '6587.00', 'Pariatur quod numquam omnis dolorem ratione quaerat. Accusamus eveniet id architecto sit. Ex laboriosam molestias iusto ipsum tempore et. Incidunt consequatur et repellendus delectus dolorem eos.', 'product4.jpg', 'quod_Jenkinsstad', 40, NULL, NULL),
(5, 'deleniti Lake Othafurt', '9081.00', 'Rerum qui error eos eius qui vitae. Et illum sit cumque est maxime rem molestias aut. Quia expedita placeat fuga laudantium qui molestias inventore pariatur. Sapiente molestiae culpa distinctio beatae qui consequatur ullam.', 'product5.jpg', 'deleniti_Lake Othafurt', 10, NULL, NULL),
(6, 'aut New Raphael', '7257.00', 'Qui perferendis quidem recusandae dignissimos voluptas perspiciatis eligendi. Et nisi corporis harum nemo libero omnis accusantium. Ut non unde iusto doloremque est sit sunt.', 'product6.jpg', 'aut_New Raphael', 0, NULL, NULL),
(7, 'enim Gleasonberg', '2222.00', 'Vero quas ea harum labore. Et est et magnam minima. Dignissimos dolores laborum est ea doloribus a provident.', 'product7.jpg', 'enim_Gleasonberg', 0, NULL, NULL),
(8, 'nihil Leuschkeshire', '6400.00', 'Dicta cum itaque et nemo occaecati veritatis consectetur. Rerum enim provident pariatur neque et impedit. Eum ipsa sit adipisci id.', 'product8.jpg', 'nihil_Leuschkeshire', 0, NULL, NULL),
(9, 'ut Lake Kathleenmouth', '2374.00', 'Consequatur temporibus laudantium cupiditate nihil sed. Dolorem est fugiat odio libero itaque perspiciatis. Quae voluptas enim non aliquid. Ipsam rem perferendis pariatur ducimus eos voluptas quos.', 'product9.jpg', 'ut_Lake Kathleenmouth', 30, NULL, NULL),
(10, 'eum Greenholtberg', '7556.00', 'Sit voluptatem eos quasi in. Saepe iste consequatur sit earum deleniti. Totam pariatur voluptatibus cum nobis aut culpa omnis. Quasi soluta rerum magni quo assumenda.', 'product10.jpg', 'eum_Greenholtberg', 20, NULL, NULL),
(11, 'veniam Doloresfort', '4715.00', 'Dicta et qui ipsa architecto harum earum. Beatae qui ut velit et quo commodi quos. Est vero non eum distinctio.', 'product11.jpg', 'veniam_Doloresfort', 0, NULL, NULL),
(12, 'aut New Babyshire', '3273.00', 'Quo eius magni atque et ipsa et assumenda. Molestiae magni excepturi ea maiores laborum dolores. Eum quas unde ad reprehenderit dolor doloribus autem.', 'product12.jpg', 'aut_New Babyshire', 40, NULL, NULL),
(13, 'impedit Lake Aurelia', '4546.00', 'Accusamus autem sint molestiae ut qui eos ut. Nulla placeat natus repudiandae ea minus pariatur. Quaerat sapiente voluptas corporis omnis. Repudiandae distinctio quibusdam et laborum minus et velit.', 'product13.jpg', 'impedit_Lake Aurelia', 40, NULL, NULL),
(14, 'non Ronaldoville', '7823.00', 'Cumque asperiores iste molestiae. Eligendi et rerum ut maiores perspiciatis incidunt ducimus. Corporis libero quia assumenda delectus tempora consequatur odio.', 'product14.jpg', 'non_Ronaldoville', 0, NULL, NULL),
(15, 'enim West Camila', '1581.00', 'Eum eos laboriosam et voluptate et consequatur maiores. Natus amet doloremque minima non quia illo nihil magnam. Fuga fuga voluptate quam possimus quas consequatur.', 'product15.jpg', 'enim_West Camila', 10, NULL, NULL),
(16, 'est Port Jessy', '1252.00', 'Quia aliquid qui sed aut voluptates. Omnis id quo modi earum.', 'product16.jpg', 'est_Port Jessy', 10, NULL, NULL),
(17, 'fugiat North Florencemouth', '2274.00', 'Enim in quam cum voluptatibus. Autem ipsam blanditiis impedit asperiores nostrum. Laboriosam nihil cupiditate ipsum est dolores explicabo.', 'product17.jpg', 'fugiat_North Florencemouth', 0, NULL, NULL),
(18, 'eum Sebastianhaven', '2190.00', 'Eos iure quas cumque aut rerum. Beatae molestiae quis nulla soluta. Reiciendis ea voluptatem beatae saepe. Dolores accusantium veniam odit non omnis ipsa fuga.', 'product18.jpg', 'eum_Sebastianhaven', 10, NULL, NULL),
(19, 'officia Allanshire', '4744.00', 'Quod assumenda accusamus consectetur rerum. Unde aut et fugiat nulla aut. Consequatur aliquid doloribus non cum labore incidunt numquam quia. Minus laboriosam beatae amet sit libero ut aut eius.', 'product19.jpg', 'officia_Allanshire', 0, NULL, NULL),
(20, 'porro New Danteburgh', '5156.00', 'Excepturi ipsum aperiam molestiae voluptates. Expedita mollitia maiores accusantium delectus id ut unde laboriosam.', 'product20.jpg', 'porro_New Danteburgh', 30, NULL, NULL),
(21, 'quis Lake Cleta', '1471.00', 'Iure fugit consequatur necessitatibus doloribus et omnis. Ratione delectus reiciendis quibusdam ea consectetur. Ea sunt debitis tempora quia sed ut quaerat. Nulla corporis nemo expedita occaecati rem adipisci commodi. Ipsum et aut temporibus ipsa.', 'product21.jpg', 'quis_Lake Cleta', 10, NULL, NULL),
(22, 'laboriosam East Cornell', '4105.00', 'Omnis quisquam rem dignissimos. Architecto et pariatur omnis alias nostrum quae dolorem. Ex eum ipsam aut libero sint fugit autem.', 'product22.jpg', 'laboriosam_East Cornell', 30, NULL, NULL),
(23, 'molestiae Danaville', '9870.00', 'Laborum quia officiis qui. Tempore reprehenderit minus soluta voluptatibus occaecati tempore facilis. Quia et sequi tenetur in dicta. Quam repellat amet laboriosam quia voluptas.', 'product23.jpg', 'molestiae_Danaville', 20, NULL, NULL),
(24, 'laudantium South Amberton', '6744.00', 'Labore eius nesciunt atque dolorum autem ipsum autem. Fugit est accusantium fuga aspernatur. Voluptatem ut error consequuntur recusandae ea nobis maxime. Et illo nostrum et aut reprehenderit assumenda.', 'product24.jpg', 'laudantium_South Amberton', 20, NULL, NULL),
(25, 'quis Bechtelarport', '2519.00', 'Qui necessitatibus excepturi maiores quia et deleniti asperiores. Quia aliquid a earum sapiente illo tenetur in cum. Ut quia nam eos est quod. Nemo possimus sit ab beatae aut ea.', 'product25.jpg', 'quis_Bechtelarport', 20, NULL, NULL),
(26, 'aspernatur Traceyborough', '3473.00', 'Accusamus sed perferendis temporibus non qui vero. Adipisci est culpa omnis minima eum. Aut facere ut voluptas numquam dolorum. Ex consectetur vero earum adipisci neque.', 'product26.jpg', 'aspernatur_Traceyborough', 40, NULL, NULL),
(27, 'quibusdam Terrenceshire', '2404.00', 'Ipsum harum earum accusamus excepturi. Quas nesciunt at exercitationem autem quis et ducimus. Assumenda vel aspernatur magnam iure. Veniam tenetur sint corrupti at ipsum quibusdam officiis facilis.', 'product27.jpg', 'quibusdam_Terrenceshire', 10, NULL, NULL),
(28, 'mollitia Port Yvettefurt', '9682.00', 'Dolores repellendus beatae dolores voluptatum tenetur. Eius rerum ipsum omnis quis. Est nihil eveniet ut molestias.', 'product28.jpg', 'mollitia_Port Yvettefurt', 20, NULL, NULL),
(29, 'consequatur West Magali', '7045.00', 'Sed quas sit quaerat deleniti inventore dolore aut voluptatem. Quisquam recusandae eos dolores deserunt ullam hic. Est adipisci temporibus aliquam maiores fugiat.', 'product29.jpg', 'consequatur_West Magali', 10, NULL, NULL),
(30, 'vel East Lilyanmouth', '5340.00', 'Magnam dicta dolor voluptates consequatur et aut. Iure dolorum consectetur rem accusamus adipisci. Odit blanditiis quo impedit.', 'product30.jpg', 'vel_East Lilyanmouth', 40, NULL, NULL),
(31, 'saepe West Caitlyn', '2792.00', 'Velit odit est sed tempore cumque eum. Aut id voluptatem voluptas porro. Cumque sint delectus voluptatum. Optio tempora tenetur minima dolorem quis.', 'product31.jpg', 'saepe_West Caitlyn', 0, NULL, NULL),
(32, 'sed Khalilchester', '8647.00', 'Incidunt sit repellat porro in dolores. Magnam quas ipsam fugiat aut id consequatur quam. Libero accusantium placeat placeat.', 'product32.jpg', 'sed_Khalilchester', 30, NULL, NULL),
(33, 'voluptatem Carrollview', '6125.00', 'Sit qui repellat incidunt rerum sed. Unde voluptates est mollitia qui et. Quidem qui blanditiis eveniet vero harum aliquam.', 'product33.jpg', 'voluptatem_Carrollview', 20, NULL, NULL),
(34, 'et Joaquinstad', '1348.00', 'Eos quos totam consequatur distinctio nihil eos vel. Culpa illum quis qui eius distinctio magnam enim. Exercitationem sequi nisi a cumque cupiditate et.', 'product34.jpg', 'et_Joaquinstad', 0, NULL, NULL),
(35, 'magni Gordonshire', '4356.00', 'Iste quidem animi asperiores laborum. Labore minima numquam temporibus illo hic consequatur. Suscipit non nostrum error rerum. Quo doloribus dicta sit voluptates voluptas impedit.', 'product35.jpg', 'magni_Gordonshire', 10, NULL, NULL),
(36, 'laborum Collinbury', '4289.00', 'Quod ipsa veniam architecto in deserunt est aut. Quibusdam eaque reprehenderit deserunt ipsa commodi. Ipsam fugiat quo nesciunt alias quia tempora voluptate. Quaerat quia saepe qui non necessitatibus quae. Aut eum qui nihil fuga blanditiis architecto quis.', 'product36.jpg', 'laborum_Collinbury', 30, NULL, NULL),
(37, 'quis Reichertside', '5740.00', 'Repellendus rerum earum quia. Quia rerum expedita similique sed et corporis. Laborum illum dolorem nemo neque. Tenetur suscipit esse voluptatem non voluptas ut exercitationem.', 'product37.jpg', 'quis_Reichertside', 10, NULL, NULL),
(38, 'alias Lake Aubree', '4039.00', 'Quod veritatis praesentium dolores quod explicabo. Et magnam recusandae odit. Alias suscipit sit ut esse eos.', 'product38.jpg', 'alias_Lake Aubree', 0, NULL, NULL),
(39, 'labore Lake Jewell', '8786.00', 'Iusto neque praesentium placeat iste cumque nihil est. Est sed velit voluptas quia velit. Aspernatur quidem ea voluptas eum. Laboriosam quia sed deleniti aperiam veritatis.', 'product39.jpg', 'labore_Lake Jewell', 0, NULL, NULL),
(40, 'ratione Baileyview', '2361.00', 'Et corporis et repellendus amet ipsum fugiat iste. Est eaque et in aut cumque molestias. Dolorem esse harum commodi nam quas omnis ad. Voluptatum ut qui voluptatem id vel animi tempora voluptas.', 'product40.jpg', 'ratione_Baileyview', 20, NULL, NULL),
(41, 'similique Lefflershire', '9368.00', 'Quasi blanditiis similique at aut. Et eos magni aspernatur natus nisi. Nihil ad sed ullam qui rerum eveniet soluta recusandae. Vel voluptas qui voluptas quis autem voluptatem sed.', 'product41.jpg', 'similique_Lefflershire', 10, NULL, NULL),
(42, 'perspiciatis Littelmouth', '8511.00', 'Nesciunt iusto omnis sapiente est et voluptatem voluptas similique. Totam quia molestiae eius quisquam. Voluptatibus adipisci rem ut quia totam id.', 'product42.jpg', 'perspiciatis_Littelmouth', 10, NULL, NULL),
(43, 'quis Klinghaven', '1367.00', 'Occaecati et provident voluptas ad cum et. Maxime unde dolorem voluptatibus cumque. Tenetur modi commodi omnis ipsum aut ea aut non.', 'product43.jpg', 'quis_Klinghaven', 20, NULL, NULL),
(44, 'animi Niaborough', '8843.00', 'Assumenda est accusantium iste. Debitis maxime quia quia sed voluptas nostrum ut. Possimus perferendis perferendis velit.', 'product44.jpg', 'animi_Niaborough', 10, NULL, NULL),
(46, 'qwe', '123.00', 'qwe', '/storage/1615832041.png', 'qwe', 10, '2021-03-15 17:14:01', '2021-03-15 17:14:01');

-- --------------------------------------------------------

--
-- Table structure for table `product_size`
--

CREATE TABLE `product_size` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `size_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_size`
--

INSERT INTO `product_size` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 1, 3, NULL, NULL),
(4, 1, 4, NULL, NULL),
(5, 2, 1, NULL, NULL),
(6, 2, 2, NULL, NULL),
(7, 2, 3, NULL, NULL),
(8, 3, 1, NULL, NULL),
(9, 3, 2, NULL, NULL),
(10, 3, 3, NULL, NULL),
(11, 4, 1, NULL, NULL),
(12, 4, 2, NULL, NULL),
(13, 4, 3, NULL, NULL),
(14, 4, 4, NULL, NULL),
(15, 5, 1, NULL, NULL),
(16, 5, 2, NULL, NULL),
(17, 5, 3, NULL, NULL),
(18, 6, 1, NULL, NULL),
(19, 6, 2, NULL, NULL),
(20, 6, 3, NULL, NULL),
(21, 7, 1, NULL, NULL),
(22, 7, 2, NULL, NULL),
(23, 7, 3, NULL, NULL),
(24, 7, 4, NULL, NULL),
(25, 7, 5, NULL, NULL),
(26, 8, 1, NULL, NULL),
(27, 8, 2, NULL, NULL),
(28, 8, 3, NULL, NULL),
(29, 9, 1, NULL, NULL),
(30, 9, 2, NULL, NULL),
(31, 9, 3, NULL, NULL),
(32, 10, 1, NULL, NULL),
(33, 10, 2, NULL, NULL),
(34, 10, 3, NULL, NULL),
(35, 10, 4, NULL, NULL),
(36, 11, 1, NULL, NULL),
(37, 11, 2, NULL, NULL),
(38, 11, 3, NULL, NULL),
(39, 11, 4, NULL, NULL),
(40, 11, 5, NULL, NULL),
(41, 12, 1, NULL, NULL),
(42, 12, 2, NULL, NULL),
(43, 12, 3, NULL, NULL),
(44, 12, 4, NULL, NULL),
(45, 12, 5, NULL, NULL),
(46, 13, 1, NULL, NULL),
(47, 13, 2, NULL, NULL),
(48, 13, 3, NULL, NULL),
(49, 14, 1, NULL, NULL),
(50, 14, 2, NULL, NULL),
(51, 14, 3, NULL, NULL),
(52, 14, 4, NULL, NULL),
(53, 15, 1, NULL, NULL),
(54, 15, 2, NULL, NULL),
(55, 15, 3, NULL, NULL),
(56, 16, 1, NULL, NULL),
(57, 16, 2, NULL, NULL),
(58, 16, 3, NULL, NULL),
(59, 16, 4, NULL, NULL),
(60, 16, 5, NULL, NULL),
(61, 17, 1, NULL, NULL),
(62, 17, 2, NULL, NULL),
(63, 17, 3, NULL, NULL),
(64, 17, 4, NULL, NULL),
(65, 17, 5, NULL, NULL),
(66, 18, 1, NULL, NULL),
(67, 18, 2, NULL, NULL),
(68, 18, 3, NULL, NULL),
(69, 18, 4, NULL, NULL),
(70, 18, 5, NULL, NULL),
(71, 19, 1, NULL, NULL),
(72, 19, 2, NULL, NULL),
(73, 19, 3, NULL, NULL),
(74, 19, 4, NULL, NULL),
(75, 20, 1, NULL, NULL),
(76, 20, 2, NULL, NULL),
(77, 20, 3, NULL, NULL),
(78, 21, 1, NULL, NULL),
(79, 21, 2, NULL, NULL),
(80, 21, 3, NULL, NULL),
(81, 22, 1, NULL, NULL),
(82, 22, 2, NULL, NULL),
(83, 22, 3, NULL, NULL),
(84, 22, 4, NULL, NULL),
(85, 23, 1, NULL, NULL),
(86, 23, 2, NULL, NULL),
(87, 23, 3, NULL, NULL),
(88, 23, 4, NULL, NULL),
(89, 23, 5, NULL, NULL),
(90, 24, 1, NULL, NULL),
(91, 24, 2, NULL, NULL),
(92, 24, 3, NULL, NULL),
(93, 24, 4, NULL, NULL),
(94, 24, 5, NULL, NULL),
(95, 25, 1, NULL, NULL),
(96, 25, 2, NULL, NULL),
(97, 25, 3, NULL, NULL),
(98, 25, 4, NULL, NULL),
(99, 26, 1, NULL, NULL),
(100, 26, 2, NULL, NULL),
(101, 26, 3, NULL, NULL),
(102, 27, 1, NULL, NULL),
(103, 27, 2, NULL, NULL),
(104, 27, 3, NULL, NULL),
(105, 27, 4, NULL, NULL),
(106, 28, 1, NULL, NULL),
(107, 28, 2, NULL, NULL),
(108, 28, 3, NULL, NULL),
(109, 29, 1, NULL, NULL),
(110, 29, 2, NULL, NULL),
(111, 29, 3, NULL, NULL),
(112, 30, 1, NULL, NULL),
(113, 30, 2, NULL, NULL),
(114, 30, 3, NULL, NULL),
(115, 30, 4, NULL, NULL),
(116, 30, 5, NULL, NULL),
(117, 31, 1, NULL, NULL),
(118, 31, 2, NULL, NULL),
(119, 31, 3, NULL, NULL),
(120, 31, 4, NULL, NULL),
(121, 32, 1, NULL, NULL),
(122, 32, 2, NULL, NULL),
(123, 32, 3, NULL, NULL),
(124, 32, 4, NULL, NULL),
(125, 32, 5, NULL, NULL),
(126, 33, 1, NULL, NULL),
(127, 33, 2, NULL, NULL),
(128, 33, 3, NULL, NULL),
(129, 33, 4, NULL, NULL),
(130, 34, 1, NULL, NULL),
(131, 34, 2, NULL, NULL),
(132, 34, 3, NULL, NULL),
(133, 34, 4, NULL, NULL),
(134, 34, 5, NULL, NULL),
(135, 35, 1, NULL, NULL),
(136, 35, 2, NULL, NULL),
(137, 35, 3, NULL, NULL),
(138, 36, 1, NULL, NULL),
(139, 36, 2, NULL, NULL),
(140, 36, 3, NULL, NULL),
(141, 36, 4, NULL, NULL),
(142, 36, 5, NULL, NULL),
(143, 37, 1, NULL, NULL),
(144, 37, 2, NULL, NULL),
(145, 37, 3, NULL, NULL),
(146, 38, 1, NULL, NULL),
(147, 38, 2, NULL, NULL),
(148, 38, 3, NULL, NULL),
(149, 38, 4, NULL, NULL),
(150, 39, 1, NULL, NULL),
(151, 39, 2, NULL, NULL),
(152, 39, 3, NULL, NULL),
(153, 39, 4, NULL, NULL),
(154, 40, 1, NULL, NULL),
(155, 40, 2, NULL, NULL),
(156, 40, 3, NULL, NULL),
(157, 40, 4, NULL, NULL),
(158, 41, 1, NULL, NULL),
(159, 41, 2, NULL, NULL),
(160, 41, 3, NULL, NULL),
(161, 41, 4, NULL, NULL),
(162, 42, 1, NULL, NULL),
(163, 42, 2, NULL, NULL),
(164, 42, 3, NULL, NULL),
(165, 43, 1, NULL, NULL),
(166, 43, 2, NULL, NULL),
(167, 43, 3, NULL, NULL),
(168, 43, 4, NULL, NULL),
(169, 44, 1, NULL, NULL),
(170, 44, 2, NULL, NULL),
(171, 44, 3, NULL, NULL),
(172, 44, 4, NULL, NULL),
(175, 46, 3, NULL, NULL),
(176, 46, 4, NULL, NULL),
(177, 46, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'user', NULL, NULL),
(2, 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'XS', NULL, NULL),
(2, 'S', NULL, NULL),
(3, 'M', NULL, NULL),
(4, 'L', NULL, NULL),
(5, 'XL', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `address`, `email`, `email_verified_at`, `password`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Garry', 'DuBuque', '96890 Kohler Shoal\nPort Brandy, IA 57720-6963', 'nicolas.reinhold@example.net', '2021-03-15 15:05:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '5Q4UOHzpMo', '2021-03-15 15:05:50', '2021-03-15 15:05:50'),
(2, 'Sabryna', 'Douglas', '4589 Marvin Mountain\nPort Willis, MI 78477', 'fpaucek@example.net', '2021-03-15 15:05:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'lKM1SfOgu3', '2021-03-15 15:05:50', '2021-03-15 15:05:50'),
(3, 'Alfreda', 'Swaniawski', '127 Turner Knoll\nLake Beauside, VA 81927', 'leannon.cade@example.net', '2021-03-15 15:05:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'P58Qmw4yUP', '2021-03-15 15:05:50', '2021-03-15 15:05:50'),
(4, 'Tomas', 'Casper', '6350 Marquise Key Apt. 494\nLubowitzbury, AK 79736-0541', 'oprohaska@example.com', '2021-03-15 15:05:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'LNBz04lVLw', '2021-03-15 15:05:50', '2021-03-15 15:05:50'),
(5, 'Dan', 'Osinski', '67851 Osinski Inlet Apt. 279\nSouth Ana, DC 76373-7898', 'moore.vicky@example.net', '2021-03-15 15:05:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'q68gaxb7p3', '2021-03-15 15:05:50', '2021-03-15 15:05:50'),
(6, 'Jessy', 'Langosh', '1871 Erich River Apt. 990\nHellerside, RI 99366', 'qchristiansen@example.com', '2021-03-15 15:05:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'Q7Zusn1skT', '2021-03-15 15:05:50', '2021-03-15 15:05:50'),
(7, 'Roberta', 'Rempel', '12356 Kozey Underpass\nMarcelostad, ND 46552', 'ybogisich@example.net', '2021-03-15 15:05:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'vFRPwp0SRE', '2021-03-15 15:05:50', '2021-03-15 15:05:50'),
(8, 'Cristina', 'Koepp', '851 Doyle Roads\nGreysonport, IA 57436-9388', 'kadin51@example.net', '2021-03-15 15:05:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'u7e1IV18ZT', '2021-03-15 15:05:50', '2021-03-15 15:05:50'),
(9, 'Hipolito', 'O\'Conner', '725 Bianka Islands\nNorth Wilbermouth, KY 45800', 'tatyana.goodwin@example.org', '2021-03-15 15:05:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'vCEkgTLh1B', '2021-03-15 15:05:50', '2021-03-15 15:05:50'),
(10, 'Ernesto', 'Fahey', '26774 Morar Circles Suite 872\nWest Hettie, AZ 08587-2686', 'chaya53@example.org', '2021-03-15 15:05:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'rG66JpnGCK', '2021-03-15 15:05:50', '2021-03-15 15:05:50'),
(11, 'Ignatius', 'Lakin', '403 Marks Stream\nNorafurt, MA 94823-8976', 'lmurphy@example.org', '2021-03-15 15:05:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'Bf4gaNf329', '2021-03-15 15:05:50', '2021-03-15 15:05:50'),
(12, 'Kailee', 'Carroll', '622 Angela Point Suite 722\nNew Aida, NE 24516-7739', 'ernie.wolf@example.com', '2021-03-15 15:05:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '5bHPH3qvRB', '2021-03-15 15:05:50', '2021-03-15 15:05:50'),
(13, 'Mose', 'Simonis', '3976 Baumbach Tunnel Suite 232\nLittleside, UT 42692-7194', 'payton41@example.net', '2021-03-15 15:05:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'We2ozWxius', '2021-03-15 15:05:50', '2021-03-15 15:05:50'),
(14, 'Daryl', 'Wyman', '25214 Ankunding Overpass Suite 484\nWest Earnestinemouth, AR 69067-5610', 'mariah.hudson@example.net', '2021-03-15 15:05:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'afEcn0miGo', '2021-03-15 15:05:50', '2021-03-15 15:05:50'),
(15, 'Carlos', 'Wilderman', '779 Bruen Springs Suite 428\nDuaneton, OK 56655', 'kovacek.palma@example.org', '2021-03-15 15:05:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'fJ7FbP0aaz', '2021-03-15 15:05:51', '2021-03-15 15:05:51'),
(16, 'Zander', 'Mueller', '86879 Leffler Drives\nKaileyton, OH 75041', 'aleannon@example.com', '2021-03-15 15:05:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'UldsbUwsj4', '2021-03-15 15:05:51', '2021-03-15 15:05:51'),
(17, 'Laury', 'Mohr', '9746 Lemke Glen\nNew Luisachester, CA 73259', 'alfredo71@example.org', '2021-03-15 15:05:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'HEBhIhA6gv', '2021-03-15 15:05:51', '2021-03-15 15:05:51'),
(18, 'Jayda', 'Hills', '790 Dale Vista Apt. 819\nLake Angelinaland, SD 59197', 'yvolkman@example.com', '2021-03-15 15:05:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'UkrzxPfILS', '2021-03-15 15:05:51', '2021-03-15 15:05:51'),
(19, 'Taylor', 'Cummings', '169 Nitzsche Parks\nSouth Vivafort, TN 75916', 'cristobal46@example.com', '2021-03-15 15:05:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'GeG0qRhUDl', '2021-03-15 15:05:51', '2021-03-15 15:05:51'),
(20, 'Alva', 'Dietrich', '98533 Clement Path\nIrwintown, OR 27266', 'iabbott@example.com', '2021-03-15 15:05:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'Ylwx0TCq1G', '2021-03-15 15:05:51', '2021-03-15 15:05:51'),
(21, 'Pink', 'Stiedemann', '6618 Schmeler Squares Apt. 303\nJeffburgh, HI 97100-1934', 'gracie94@example.org', '2021-03-15 15:05:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'rFPDZ8s3GX', '2021-03-15 15:05:51', '2021-03-15 15:05:51'),
(22, 'Shakira', 'Reilly', '8974 Boyle Station\nDeckowside, MO 31534', 'mhyatt@example.com', '2021-03-15 15:05:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'bOEDBLqLhM', '2021-03-15 15:05:51', '2021-03-15 15:05:51'),
(23, 'Johnson', 'Gibson', '74930 Kayla Hills Suite 095\nHarveyfort, ND 68882', 'tstamm@example.com', '2021-03-15 15:05:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'EZ9BKBLHVE', '2021-03-15 15:05:51', '2021-03-15 15:05:51'),
(24, 'Royal', 'Eichmann', '3028 Kaylee Summit Apt. 069\nKonopelskimouth, AK 87734', 'dariana.dooley@example.net', '2021-03-15 15:05:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'f6eprgrpuK', '2021-03-15 15:05:51', '2021-03-15 15:05:51'),
(25, 'Lamont', 'Rowe', '8294 Lowe Crest Suite 754\nLake Justiceburgh, KS 40692', 'kauer@example.net', '2021-03-15 15:05:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '05f06UqKsV', '2021-03-15 15:05:51', '2021-03-15 15:05:51'),
(26, 'Piper', 'Koelpin', '6217 Keenan Mills Suite 286\nNorth Dallasburgh, MI 84132', 'jairo59@example.com', '2021-03-15 15:05:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'M4nMKPkwGv', '2021-03-15 15:05:51', '2021-03-15 15:05:51'),
(27, 'Brycen', 'Greenfelder', '25832 Wintheiser Canyon Apt. 951\nNorth Norenestad, AK 54645-4936', 'schaden.jazmin@example.com', '2021-03-15 15:05:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'bwTDtipHnA', '2021-03-15 15:05:51', '2021-03-15 15:05:51'),
(28, 'Manuel', 'Pacocha', '642 Mina Ferry Suite 438\nJaymefurt, ND 89693', 'lavina.tremblay@example.org', '2021-03-15 15:05:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'XKBQ30atG1', '2021-03-15 15:05:51', '2021-03-15 15:05:51'),
(29, 'Amari', 'Sporer', '55803 Schimmel Knoll Apt. 486\nWest Vickie, WV 28396', 'anjali12@example.com', '2021-03-15 15:05:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '9rwl9dYxRC', '2021-03-15 15:05:51', '2021-03-15 15:05:51'),
(30, 'Izaiah', 'Morissette', '2172 Jermaine Roads Apt. 544\nSouth Herminachester, MA 52393-8546', 'ebba.doyle@example.net', '2021-03-15 15:05:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'gXd4ZY4AdY', '2021-03-15 15:05:51', '2021-03-15 15:05:51'),
(31, 'Test', 'Test', 'test address', 'test@gmail.com', NULL, '$2y$10$X6I/aC3IjDcIoVJ77pRHze2vajokZGnhVPJi9VPJyTHT4brjhH4Z2', 1, 'LeeBMrPc8KyiykKLuAU9qxBWKcVGbp8zrqzdsZ6O05LFzEsfOfifjs4e698x', '2021-03-15 15:42:31', '2021-03-15 15:42:31'),
(32, 'admin', 'admin', 'address', 'admin@gmail.com', NULL, '$2y$10$K2Obx9rW6q9FHrwkETD2JeXwX8MXvBsHSRH2GaRSYmN3d8UpEIcdS', 2, 'uqWKAYeQcXgK1EsN0lkJwoOfRmYL0u5mm1yq5OqhiFL0oh9jKdc3KXeVmRMA', '2021-03-15 15:53:59', '2021-03-15 15:53:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Indexes for table `cart_product`
--
ALTER TABLE `cart_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_product_product_id_foreign` (`product_id`),
  ADD KEY `cart_product_cart_id_foreign` (`cart_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_cart_id_foreign` (`cart_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Indexes for table `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_size_product_id_foreign` (`product_id`),
  ADD KEY `product_size_size_id_foreign` (`size_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sizes_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart_product`
--
ALTER TABLE `cart_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `product_size`
--
ALTER TABLE `product_size`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `cart_product`
--
ALTER TABLE `cart_product`
  ADD CONSTRAINT `cart_product_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`),
  ADD CONSTRAINT `cart_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`);

--
-- Constraints for table `product_size`
--
ALTER TABLE `product_size`
  ADD CONSTRAINT `product_size_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_size_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
