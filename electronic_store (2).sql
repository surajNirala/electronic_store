-- Adminer 4.6.0 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `attributes`;
CREATE TABLE `attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `attributes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `attributes` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES
(1,	NULL,	'windows',	'2018-05-21 18:46:42',	'2018-05-21 18:46:42'),
(2,	NULL,	'android',	'2018-05-21 18:47:04',	'2018-05-21 18:47:04'),
(3,	NULL,	'ios',	'2018-05-21 18:47:29',	'2018-05-21 18:47:29'),
(4,	NULL,	'black berry os',	'2018-05-21 18:48:35',	'2018-05-21 18:48:35');

DROP TABLE IF EXISTS `brands`;
CREATE TABLE `brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `brands_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `brands` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES
(1,	1,	'nokia',	'2018-05-21 19:25:32',	'2018-05-21 19:25:32'),
(2,	1,	'samsung',	'2018-05-21 19:25:53',	'2018-05-21 19:25:53'),
(3,	1,	'motorola',	'2018-05-21 19:26:12',	'2018-05-21 19:26:12'),
(4,	1,	'red mi',	'2018-05-21 19:26:30',	'2018-05-21 19:26:30'),
(5,	1,	'lenovo',	'2018-05-21 19:26:58',	'2018-05-21 19:26:58'),
(6,	1,	'apple',	'2018-05-21 19:27:14',	'2018-05-21 19:27:14'),
(7,	1,	'honor',	'2018-05-21 19:27:32',	'2018-05-21 19:27:32'),
(8,	1,	'vivo',	'2018-05-21 19:27:45',	'2018-05-21 19:27:45'),
(9,	1,	'oppo',	'2018-05-21 19:27:59',	'2018-05-21 19:27:59'),
(10,	1,	'panasonic',	'2018-05-21 19:28:30',	'2018-05-21 19:28:30');

DROP TABLE IF EXISTS `contactus`;
CREATE TABLE `contactus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` tinytext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `contactus` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1,	'suraj',	'suraj@gmail.com',	'service',	'this is testing\r\n',	NULL,	NULL),
(2,	'suraj',	'suraj@gmail.com',	'service',	'cce',	NULL,	NULL),
(3,	'suraj',	'suraj@gmail.com',	'service',	'cce',	NULL,	NULL),
(4,	'suraj',	'suraj@gmail.com',	'service',	'cce',	NULL,	NULL),
(5,	'sndj',	'sdk@fkmf.cdock',	'suggestions',	'cdcs',	NULL,	NULL),
(6,	'sndj',	'sdk@fkmf.cdock',	'suggestions',	'cdcs',	NULL,	NULL),
(7,	'dbdjkq',	'nken@dene.cew',	'suggestions',	'dw',	NULL,	NULL),
(8,	'wc',	'admin@psydro.com',	'na',	'dwce',	NULL,	NULL),
(9,	'suraj',	'suraj@gmail.com',	'suggestions',	'dce',	NULL,	NULL);

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `lauch_date` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `is_popular` int(11) NOT NULL DEFAULT '0',
  `is_featured` int(11) NOT NULL DEFAULT '0',
  `is_coming` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `attribute_id` (`attribute_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `products` (`id`, `user_id`, `attribute_id`, `name`, `image`, `price`, `lauch_date`, `description`, `is_popular`, `is_featured`, `is_coming`, `status`, `created_at`, `updated_at`) VALUES
(1,	1,	1,	'Moto Z2 Play',	'motorola-moto-z2-play.jpeg',	'18,999',	NULL,	'Open up to a whole new world of possibilities with the Moto Z2 Play. Powered by a powerful processor and a long-lasting battery, the sleek and slim Moto Z2 Play is the perfect tool to make the most out of entertainment.',	1,	0,	0,	0,	'2018-05-07 13:03:30',	'2018-05-07 13:03:54'),
(2,	1,	1,	'Lenovo VIBE P1',	'lenovo-vibe-p1.jpeg',	'15,999',	NULL,	'If you love watching videos or playing games on your phone, the Lenovo Vibe P1 has been designed just for you.',	1,	0,	0,	0,	'2018-05-07 13:05:26',	'2018-05-07 13:05:26'),
(3,	1,	1,	'Redmi Note 5',	'redmi-note-5.jpeg',	'11,999',	NULL,	'Meet the Redmi Note 5 - the elegantly designed smartphone that comes with a powerful 14 nm Snapdragon 625 processor. From capturing enchanting pictures with the rear camera and an amazing front camera, to watching videos and playing games on the FHD+ display, this smartphone ensures you never have a dull moment again.',	1,	0,	0,	0,	'2018-05-07 13:06:10',	'2018-05-07 13:06:10'),
(4,	1,	2,	'VIVO V9 Youth',	'vivo-v9.jpeg',	'18,990',	NULL,	'What would you give for a phone which has an expansive screen without the bulk? Meet the Vivo V9 Youth. It boasts an impressive 15.5 cm (6.3) screen, but is designed to look like a 13.9 cm (5.5)-display phone. The phone packs a lineup of fun features to boot – play around with the AR stickers, and its cameras which give you control over how your pictures turn out. This Vivo smartphone also identifies your gender, skin tone, age, and texture and applies a range of beauty effects to give you pictures which are nothing short of Instagram gold. Features such as the Game Mode let you block messages, calls, and alerts while gaming. The Motorbike Mode offers you a safe way to attend to calls while riding.',	0,	1,	0,	0,	'2018-05-07 13:21:54',	'2018-05-07 13:21:54'),
(5,	1,	2,	'honor-10',	'honor-10.jpeg',	'32,999',	NULL,	'The Honor 10 is here to take your smartphone experience to the next level. With superior features, such as a 24 MP + 16 MP AI Camera system, the AI Photography Mode, and 3D Portrait Lighting, this phone helps you take professional-like photos everywhere you go.',	0,	1,	0,	0,	'2018-05-07 13:24:56',	'2018-05-07 13:24:56'),
(6,	1,	2,	'Samsung Galaxy On Nxt',	'samsung-galaxy-on-nxt-sm.jpeg',	'10,999',	NULL,	'The On Nxt is a performance beast, thanks to the powerful 1.6 GHz, octa-core processor that’s aided by an impressive amount of RAM (3 GB). Furthermore, it has 16 GB of internal memory, so you can store loads of photos, videos, apps and more.',	0,	1,	0,	0,	'2018-05-07 13:24:39',	'2018-05-07 13:24:39'),
(7,	1,	1,	'oppo-f7',	'oppo-f7.jpeg',	'21,990',	NULL,	'Meet the OPPO F7 - the smartphone with an AI-powered selfie camera that captures the real you. Within its sleek and stylish body lies a powerful 2.0 GHz octa-core MTK P60 processor and 4 GB of RAM that take your smartphone experience to the next level.',	0,	1,	0,	0,	NULL,	NULL),
(8,	1,	1,	'Apple iPhone 8',	'apple-iphone-8.jpeg',	'64,999',	NULL,	'\r\nHandset, EarPods with Lightning Connector, Lightning to 3.5 mm Headphone Jack Adapter, Lightning to USB Cable, USB Power Adapter, Documentation',	1,	0,	0,	0,	NULL,	NULL);

DROP TABLE IF EXISTS `product_details`;
CREATE TABLE `product_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `main_image` int(11) NOT NULL DEFAULT '1' COMMENT '1 (main Image), 2(other image of same product)',
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `product_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `product_details` (`id`, `product_id`, `image`, `main_image`, `status`, `created_at`, `updated_at`) VALUES
(1,	1,	'3.jpg',	1,	0,	'2018-05-07 13:14:23',	'2018-05-07 13:14:23'),
(2,	1,	'4.jpg',	0,	0,	'2018-05-07 13:14:50',	'2018-05-07 13:14:50'),
(3,	1,	'5.jpg',	0,	0,	'2018-05-07 13:15:13',	'2018-05-07 13:15:13'),
(4,	1,	'6.jpg',	0,	0,	'2018-05-07 13:15:35',	'2018-05-07 13:15:35'),
(5,	1,	'7.jpg',	0,	0,	'2018-05-07 13:16:06',	'2018-05-07 13:16:06'),
(6,	1,	'8.jpg',	0,	0,	'2018-05-07 13:16:30',	'2018-05-07 13:16:30'),
(7,	1,	'9.jpg',	0,	0,	'2018-05-07 13:17:05',	'2018-05-07 13:17:05'),
(8,	1,	'10.jpg',	0,	0,	'2018-05-07 13:17:25',	'2018-05-07 13:17:25'),
(9,	2,	'8.jpg',	1,	0,	'2018-05-07 13:26:21',	'2018-05-07 13:26:21'),
(10,	2,	'9.jpg',	0,	0,	'2018-05-07 13:26:38',	'2018-05-07 13:26:38'),
(11,	2,	'10.jpg',	0,	0,	'2018-05-07 13:27:10',	'2018-05-07 13:27:10');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `status` int(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `users` (`id`, `name`, `image`, `gender`, `email`, `username`, `password`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1,	'khushi',	'gallery3.jpg',	'female',	'khush@gmail.com',	'KhushVerma',	'e10adc3949ba59abbe56e057f20f883e',	0,	0,	'2018-05-07 12:57:13',	'2018-05-07 12:57:13'),
(2,	'SuraJ',	'man-one.jpg',	'male',	'ssn@gmail.com',	'SnK',	'e10adc3949ba59abbe56e057f20f883e',	1,	0,	'2018-05-07 12:58:19',	'2018-05-07 12:58:19'),
(3,	'suraj',	'gallery2.jpg',	'male',	'ssuraj@gmail.com',	'surajNirala',	'e10adc3949ba59abbe56e057f20f883e',	0,	0,	NULL,	NULL),
(4,	'khushi',	'gallery1.jpg',	'female',	'skhushi@gmail.com',	'Laddu',	'e10adc3949ba59abbe56e057f20f883e',	0,	0,	NULL,	NULL),
(5,	'sachin',	'friendly+face.jpg',	'male',	'sachin@gmail.com',	'sachinNirala',	'e10adc3949ba59abbe56e057f20f883e',	0,	0,	NULL,	NULL),
(6,	'ew',	't1.jpg',	'male',	'cse@dwd.wece',	'wdew',	'e10adc3949ba59abbe56e057f20f883e',	0,	0,	NULL,	NULL),
(7,	'dfg',	't3.jpg',	'male',	's1suraj@gmail.com',	'suraj.nirala@hestabit.in',	'e10adc3949ba59abbe56e057f20f883e',	0,	0,	NULL,	NULL),
(8,	'suraj@gmail.com',	't4.jpg',	'male',	's2suraj@gmail.comm',	'suraj@gmail.com',	'e10adc3949ba59abbe56e057f20f883e',	0,	0,	NULL,	NULL),
(9,	'suraj@gmail.commm',	't3.jpg',	'male',	'suraj@gmail.commms3',	'suraj@gmail.commm',	'e10adc3949ba59abbe56e057f20f883e',	0,	0,	NULL,	NULL),
(10,	'suraj@gmail.com',	'8.jpg',	'male',	'suraj@gmail.combwjdbw',	'suraj@gmail.com',	'e10adc3949ba59abbe56e057f20f883e',	0,	0,	NULL,	NULL),
(11,	'suraj@gmail.com',	't4.jpg',	'male',	'suraj@gmail.comfg',	'suraj@gmail.com',	'e10adc3949ba59abbe56e057f20f883e',	0,	0,	NULL,	NULL),
(12,	'dnjn',	't4.jpg',	'male',	'cdd@dewc.cewce',	'cwce',	'e10adc3949ba59abbe56e057f20f883e',	0,	0,	NULL,	NULL),
(13,	'suraj1@gmail.com',	'8.jpg',	'male',	'suraj1@gmail.com',	'suraj1@gmail.com',	'3dd564d317c33e0d04df4d2b8de7945c',	0,	0,	NULL,	NULL),
(14,	'laddu',	't1.jpg',	'male',	'laddu@gmail.com',	'laddu@gmail.com',	'e10adc3949ba59abbe56e057f20f883e',	0,	0,	NULL,	NULL),
(15,	'Suraj',	't4.jpg',	'male',	'suraj@gmail.com',	'surajNirala',	'e10adc3949ba59abbe56e057f20f883e',	0,	0,	NULL,	NULL),
(16,	'hema',	'8.jpg',	'male',	'hesta@gmail.com',	'ghj',	'e10adc3949ba59abbe56e057f20f883e',	0,	0,	NULL,	NULL),
(17,	'denim_jeans',	'8.jpg',	'male',	'denim_jeans@gmail.com',	'def',	'e10adc3949ba59abbe56e057f20f883e',	0,	0,	NULL,	NULL),
(18,	'suraj@gmail.comm',	't3.jpg',	'male',	'suraj@gmail.comm',	'suraj@gmail.comm',	'e10adc3949ba59abbe56e057f20f883e',	0,	0,	NULL,	NULL),
(19,	'Niralasuraj@gmail.com',	't1.jpg',	'male',	'Niralasuraj@gmail.com',	'Niralasuraj@gmail.com',	'e10adc3949ba59abbe56e057f20f883e',	0,	0,	NULL,	NULL),
(20,	'dsbjsdkb',	't1.jpg',	'male',	'sskkkksss@gmail.com',	'djd',	'e10adc3949ba59abbe56e057f20f883e',	0,	0,	NULL,	NULL),
(21,	'sdfgh',	't4.jpg',	'male',	'kkss@gmail.com',	'bjn',	'e10adc3949ba59abbe56e057f20f883e',	0,	0,	NULL,	NULL),
(22,	'suraj@gmail.comjjj',	'8.jpg',	'male',	'suraj@gmail.comjjj',	'suraj@gmail.comjjj',	'e10adc3949ba59abbe56e057f20f883e',	0,	0,	NULL,	NULL),
(23,	'dwbjkdb',	'8.jpg',	'male',	'aryan@gmail.com',	'aryan@gmail.com',	'e10adc3949ba59abbe56e057f20f883e',	0,	0,	NULL,	NULL),
(24,	'aryan1@gmail.com',	't1.jpg',	'male',	'aryan1@gmail.com',	'aryan1@gmail.com',	'e10adc3949ba59abbe56e057f20f883e',	0,	0,	NULL,	NULL);

-- 2018-06-21 19:56:14
