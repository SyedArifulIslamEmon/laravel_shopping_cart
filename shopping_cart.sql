-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2017 at 01:49 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping_cart`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2017_02_03_051825_create_products_table', 1),
('2017_02_03_061357_create_user_table', 1),
('2017_02_07_052445_create_orders_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cart` text COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `user_id`, `cart`, `address`, `name`, `payment_id`) VALUES
(1, '2017-02-06 23:47:39', '2017-02-06 23:47:39', 1, 'O:8:"App\\Cart":3:{s:5:"items";a:2:{i:2;a:3:{s:3:"qty";i:1;s:5:"price";i:10;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:7:{s:2:"id";i:2;s:10:"created_at";s:19:"2017-02-06 04:59:59";s:10:"updated_at";s:19:"2017-02-06 04:59:59";s:9:"imagePath";s:55:"http://ecx.images-amazon.com/images/I/51ZU%2BCvkTyL.jpg";s:5:"title";s:12:"Harry Potter";s:11:"description";s:33:"Super cool - at least as a child.";s:5:"price";i:10;}s:11:"\0*\0original";a:7:{s:2:"id";i:2;s:10:"created_at";s:19:"2017-02-06 04:59:59";s:10:"updated_at";s:19:"2017-02-06 04:59:59";s:9:"imagePath";s:55:"http://ecx.images-amazon.com/images/I/51ZU%2BCvkTyL.jpg";s:5:"title";s:12:"Harry Potter";s:11:"description";s:33:"Super cool - at least as a child.";s:5:"price";i:10;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}i:1;a:3:{s:3:"qty";i:1;s:5:"price";i:10;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:7:{s:2:"id";i:1;s:10:"created_at";s:19:"2017-02-06 04:59:59";s:10:"updated_at";s:19:"2017-02-06 04:59:59";s:9:"imagePath";s:55:"http://ecx.images-amazon.com/images/I/51ZU%2BCvkTyL.jpg";s:5:"title";s:12:"Harry Potter";s:11:"description";s:33:"Super cool - at least as a child.";s:5:"price";i:10;}s:11:"\0*\0original";a:7:{s:2:"id";i:1;s:10:"created_at";s:19:"2017-02-06 04:59:59";s:10:"updated_at";s:19:"2017-02-06 04:59:59";s:9:"imagePath";s:55:"http://ecx.images-amazon.com/images/I/51ZU%2BCvkTyL.jpg";s:5:"title";s:12:"Harry Potter";s:11:"description";s:33:"Super cool - at least as a child.";s:5:"price";i:10;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}}s:8:"totalQty";i:2;s:10:"totalPrice";i:20;}', 'Dhaka', 'emon', 'ch_19kRpII6YElCfaaUQjlrQk50'),
(2, '2017-02-06 23:49:14', '2017-02-06 23:49:14', 1, 'O:8:"App\\Cart":3:{s:5:"items";a:5:{i:2;a:3:{s:3:"qty";i:1;s:5:"price";i:10;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:7:{s:2:"id";i:2;s:10:"created_at";s:19:"2017-02-06 04:59:59";s:10:"updated_at";s:19:"2017-02-06 04:59:59";s:9:"imagePath";s:55:"http://ecx.images-amazon.com/images/I/51ZU%2BCvkTyL.jpg";s:5:"title";s:12:"Harry Potter";s:11:"description";s:33:"Super cool - at least as a child.";s:5:"price";i:10;}s:11:"\0*\0original";a:7:{s:2:"id";i:2;s:10:"created_at";s:19:"2017-02-06 04:59:59";s:10:"updated_at";s:19:"2017-02-06 04:59:59";s:9:"imagePath";s:55:"http://ecx.images-amazon.com/images/I/51ZU%2BCvkTyL.jpg";s:5:"title";s:12:"Harry Potter";s:11:"description";s:33:"Super cool - at least as a child.";s:5:"price";i:10;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}i:3;a:3:{s:3:"qty";i:1;s:5:"price";i:30;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:7:{s:2:"id";i:3;s:10:"created_at";s:19:"2017-02-06 04:59:59";s:10:"updated_at";s:19:"2017-02-06 04:59:59";s:9:"imagePath";s:55:"http://ecx.images-amazon.com/images/I/51ZU%2BCvkTyL.jpg";s:5:"title";s:12:"Harry Potter";s:11:"description";s:33:"Super cool - at least as a child.";s:5:"price";i:30;}s:11:"\0*\0original";a:7:{s:2:"id";i:3;s:10:"created_at";s:19:"2017-02-06 04:59:59";s:10:"updated_at";s:19:"2017-02-06 04:59:59";s:9:"imagePath";s:55:"http://ecx.images-amazon.com/images/I/51ZU%2BCvkTyL.jpg";s:5:"title";s:12:"Harry Potter";s:11:"description";s:33:"Super cool - at least as a child.";s:5:"price";i:30;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}i:5;a:3:{s:3:"qty";i:1;s:5:"price";i:20;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:7:{s:2:"id";i:5;s:10:"created_at";s:19:"2017-02-06 04:59:59";s:10:"updated_at";s:19:"2017-02-06 04:59:59";s:9:"imagePath";s:55:"http://ecx.images-amazon.com/images/I/51ZU%2BCvkTyL.jpg";s:5:"title";s:12:"Harry Potter";s:11:"description";s:33:"Super cool - at least as a child.";s:5:"price";i:20;}s:11:"\0*\0original";a:7:{s:2:"id";i:5;s:10:"created_at";s:19:"2017-02-06 04:59:59";s:10:"updated_at";s:19:"2017-02-06 04:59:59";s:9:"imagePath";s:55:"http://ecx.images-amazon.com/images/I/51ZU%2BCvkTyL.jpg";s:5:"title";s:12:"Harry Potter";s:11:"description";s:33:"Super cool - at least as a child.";s:5:"price";i:20;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}i:4;a:3:{s:3:"qty";i:1;s:5:"price";i:40;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:7:{s:2:"id";i:4;s:10:"created_at";s:19:"2017-02-06 04:59:59";s:10:"updated_at";s:19:"2017-02-06 04:59:59";s:9:"imagePath";s:55:"http://ecx.images-amazon.com/images/I/51ZU%2BCvkTyL.jpg";s:5:"title";s:12:"Harry Potter";s:11:"description";s:33:"Super cool - at least as a child.";s:5:"price";i:40;}s:11:"\0*\0original";a:7:{s:2:"id";i:4;s:10:"created_at";s:19:"2017-02-06 04:59:59";s:10:"updated_at";s:19:"2017-02-06 04:59:59";s:9:"imagePath";s:55:"http://ecx.images-amazon.com/images/I/51ZU%2BCvkTyL.jpg";s:5:"title";s:12:"Harry Potter";s:11:"description";s:33:"Super cool - at least as a child.";s:5:"price";i:40;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}i:1;a:3:{s:3:"qty";i:1;s:5:"price";i:10;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:7:{s:2:"id";i:1;s:10:"created_at";s:19:"2017-02-06 04:59:59";s:10:"updated_at";s:19:"2017-02-06 04:59:59";s:9:"imagePath";s:55:"http://ecx.images-amazon.com/images/I/51ZU%2BCvkTyL.jpg";s:5:"title";s:12:"Harry Potter";s:11:"description";s:33:"Super cool - at least as a child.";s:5:"price";i:10;}s:11:"\0*\0original";a:7:{s:2:"id";i:1;s:10:"created_at";s:19:"2017-02-06 04:59:59";s:10:"updated_at";s:19:"2017-02-06 04:59:59";s:9:"imagePath";s:55:"http://ecx.images-amazon.com/images/I/51ZU%2BCvkTyL.jpg";s:5:"title";s:12:"Harry Potter";s:11:"description";s:33:"Super cool - at least as a child.";s:5:"price";i:10;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}}s:8:"totalQty";i:5;s:10:"totalPrice";i:110;}', 'Dhaka', 'emon', 'ch_19kRqpI6YElCfaaUGFWCq9gD'),
(3, '2017-02-07 06:06:02', '2017-02-07 06:06:02', 1, 'O:8:"App\\Cart":3:{s:5:"items";a:1:{i:1;a:3:{s:3:"qty";i:1;s:5:"price";i:10;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:7:{s:2:"id";i:1;s:10:"created_at";s:19:"2017-02-06 04:59:59";s:10:"updated_at";s:19:"2017-02-06 04:59:59";s:9:"imagePath";s:55:"http://ecx.images-amazon.com/images/I/51ZU%2BCvkTyL.jpg";s:5:"title";s:12:"Harry Potter";s:11:"description";s:33:"Super cool - at least as a child.";s:5:"price";i:10;}s:11:"\0*\0original";a:7:{s:2:"id";i:1;s:10:"created_at";s:19:"2017-02-06 04:59:59";s:10:"updated_at";s:19:"2017-02-06 04:59:59";s:9:"imagePath";s:55:"http://ecx.images-amazon.com/images/I/51ZU%2BCvkTyL.jpg";s:5:"title";s:12:"Harry Potter";s:11:"description";s:33:"Super cool - at least as a child.";s:5:"price";i:10;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}}s:8:"totalQty";i:1;s:10:"totalPrice";i:10;}', 'Jagannath University', 'Nirjhar Majumder', 'ch_19kXjRI6YElCfaaUAkwjwmLd'),
(4, '2017-02-07 06:47:34', '2017-02-07 06:47:34', 7, 'O:8:"App\\Cart":3:{s:5:"items";a:3:{i:1;a:3:{s:3:"qty";i:1;s:5:"price";i:10;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:7:{s:2:"id";i:1;s:10:"created_at";s:19:"2017-02-06 04:59:59";s:10:"updated_at";s:19:"2017-02-06 04:59:59";s:9:"imagePath";s:55:"http://ecx.images-amazon.com/images/I/51ZU%2BCvkTyL.jpg";s:5:"title";s:12:"Harry Potter";s:11:"description";s:33:"Super cool - at least as a child.";s:5:"price";i:10;}s:11:"\0*\0original";a:7:{s:2:"id";i:1;s:10:"created_at";s:19:"2017-02-06 04:59:59";s:10:"updated_at";s:19:"2017-02-06 04:59:59";s:9:"imagePath";s:55:"http://ecx.images-amazon.com/images/I/51ZU%2BCvkTyL.jpg";s:5:"title";s:12:"Harry Potter";s:11:"description";s:33:"Super cool - at least as a child.";s:5:"price";i:10;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}i:2;a:3:{s:3:"qty";i:1;s:5:"price";i:10;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:7:{s:2:"id";i:2;s:10:"created_at";s:19:"2017-02-06 04:59:59";s:10:"updated_at";s:19:"2017-02-06 04:59:59";s:9:"imagePath";s:55:"http://ecx.images-amazon.com/images/I/51ZU%2BCvkTyL.jpg";s:5:"title";s:12:"Harry Potter";s:11:"description";s:33:"Super cool - at least as a child.";s:5:"price";i:10;}s:11:"\0*\0original";a:7:{s:2:"id";i:2;s:10:"created_at";s:19:"2017-02-06 04:59:59";s:10:"updated_at";s:19:"2017-02-06 04:59:59";s:9:"imagePath";s:55:"http://ecx.images-amazon.com/images/I/51ZU%2BCvkTyL.jpg";s:5:"title";s:12:"Harry Potter";s:11:"description";s:33:"Super cool - at least as a child.";s:5:"price";i:10;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}i:3;a:3:{s:3:"qty";i:1;s:5:"price";i:30;s:4:"item";O:11:"App\\Product":24:{s:11:"\0*\0fillable";a:4:{i:0;s:9:"imagePath";i:1;s:5:"title";i:2;s:11:"description";i:3;s:5:"price";}s:13:"\0*\0connection";N;s:8:"\0*\0table";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:7:{s:2:"id";i:3;s:10:"created_at";s:19:"2017-02-06 04:59:59";s:10:"updated_at";s:19:"2017-02-06 04:59:59";s:9:"imagePath";s:55:"http://ecx.images-amazon.com/images/I/51ZU%2BCvkTyL.jpg";s:5:"title";s:12:"Harry Potter";s:11:"description";s:33:"Super cool - at least as a child.";s:5:"price";i:30;}s:11:"\0*\0original";a:7:{s:2:"id";i:3;s:10:"created_at";s:19:"2017-02-06 04:59:59";s:10:"updated_at";s:19:"2017-02-06 04:59:59";s:9:"imagePath";s:55:"http://ecx.images-amazon.com/images/I/51ZU%2BCvkTyL.jpg";s:5:"title";s:12:"Harry Potter";s:11:"description";s:33:"Super cool - at least as a child.";s:5:"price";i:30;}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:13:"\0*\0morphClass";N;s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}}s:8:"totalQty";i:3;s:10:"totalPrice";i:50;}', 'Dhaka', 'marufa', 'ch_19kYNdI6YElCfaaU3qiUD5WY');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `imagePath` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `created_at`, `updated_at`, `imagePath`, `title`, `description`, `price`) VALUES
(6, '2017-02-07 06:45:43', '2017-02-07 06:45:43', 'http://ecx.images-amazon.com/images/I/51ZU%2BCvkTyL.jpg', 'Harry Potter', 'Super cool - at least as a child.', 10),
(7, '2017-02-07 06:45:43', '2017-02-07 06:45:43', 'http://www.revelationz.net/images/book/gameofthrones3.jpg', 'A Song of Ice and Fire - A Storm of Swords', 'No one is going to survive!', 10),
(8, '2017-02-07 06:45:43', '2017-02-07 06:45:43', 'http://d.gr-assets.com/books/1411114164l/33.jpg', 'Lord of the Rings', 'I found the movies to be better ...', 20),
(9, '2017-02-07 06:45:43', '2017-02-07 06:45:43', 'http://ecx.images-amazon.com/images/I/919-FLL37TL.jpg', 'A Song of Ice and Fire - Game of Thrones', 'No one is going to survive!', 20),
(10, '2017-02-07 06:45:43', '2017-02-07 06:45:43', 'http://www.georgerrmartin.com/wp-content/uploads/2012/08/feastforcrows.jpg', 'A Song of Ice and Fire - A Feast for Crows', 'Still, no one is going to survive!', 20);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `created_at`, `updated_at`, `email`, `password`, `remember_token`) VALUES
(1, '2017-02-06 02:02:57', '2017-02-07 06:46:37', 'emon@gmail.com', '$2y$10$iRvUPd2aprZfyaTh2BHRtOhsRZ8PNe5zZLJXh5NQGA2JfbFxPmXzK', '0WHmOt957e3ivWGzhBoC07VXFQf2G8KauDoLC0mGM9ptsJvcg5P2sT7KNTRQ'),
(2, '2017-02-07 00:08:13', '2017-02-07 00:08:13', 'info@jnu.ac.bd', '$2y$10$QkYpgySt3WhVp2B604CFbuFTiEue.twBLu3CWAmqCeHSaWj04yKK.', NULL),
(3, '2017-02-07 00:08:46', '2017-02-07 00:08:46', 'admin@shivas.com', '$2y$10$GKqt3WzpidN.wETkzRgdbeWsfTiIn9898odnj6zl34SRyYcfepdye', NULL),
(4, '2017-02-07 00:12:17', '2017-02-07 00:12:17', 'emontarzan@gmail.com', '$2y$10$tIBT2r6NrhgP5cHvGP01PeL9/ahSvYn4H2swyaibFajJC..A75DVe', NULL),
(5, '2017-02-07 05:05:27', '2017-02-07 05:05:27', 'tanim@gmail.com', '$2y$10$d1UeKpfq6BwTmetDh94emOwHs1y17h9y9Qeo4h3nOynb0wtuQwXNC', NULL),
(6, '2017-02-07 05:25:19', '2017-02-07 05:25:37', 'gg@ggg.gg', '$2y$10$Sz8f9eadvOL6HP583oM71uE0iFXhSOLYtW45XFz0zvSBZRJ6Vyd3u', 'KDBEb8AP692JPtmeJvHoltMB87retyRhsKZcfPoVUQHN5jhgalR2jLPFYiQU'),
(7, '2017-02-07 06:46:52', '2017-02-07 06:46:52', 'marufatanim@gmail.com', '$2y$10$VFtyfsT0j5VBTYvqAYVgYOFpXWG5Cqrq4gai0leCRqUGAKIwa.Spm', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
