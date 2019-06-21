-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 17, 2019 at 06:23 PM
-- Server version: 5.6.43
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cp299807_loginregister`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created`, `modified`) VALUES
(1, 'Fashion', 'Category for anything related to fashion.', '2014-06-01 00:35:07', '2014-05-30 11:04:33'),
(2, 'Electronics', 'Gadgets, drones and more.', '2014-06-01 00:35:07', '2014-05-30 11:04:33'),
(3, 'Motors', 'Motor sports and more', '2014-06-01 00:35:07', '2014-05-30 11:04:54'),
(5, 'Movies', 'Movie products.', '0000-00-00 00:00:00', '2016-01-08 06:57:26'),
(6, 'Books', 'Kindle books, audio books and more.', '0000-00-00 00:00:00', '2016-01-08 06:57:47'),
(13, 'Sports', 'Drop into new winter gear.', '2016-01-09 02:24:24', '2016-01-08 18:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_request`
--

CREATE TABLE `password_reset_request` (
  `sno` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `encrypted_temp_password` varchar(256) NOT NULL,
  `salt` varchar(10) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `password_reset_request`
--

INSERT INTO `password_reset_request` (`sno`, `email`, `encrypted_temp_password`, `salt`, `created_at`) VALUES
(1, 'rghtbossy@gmail.com', '$2y$10$Ff2rMFlN2ZdPpPPQfhYAmeu0Zyk3honQ.pPnghGwjqINym9VIGDVy', '3655d633e8', '2019-06-17 10:35:52');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `image_path` text NOT NULL,
  `image_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category_id`, `created`, `modified`) VALUES
(1, 'LG P880 4X HD', 'My first awesome phone!', '336', 3, '2014-06-01 01:12:26', '2014-05-31 10:42:26'),
(2, 'Google Nexus 4', 'The most awesome phone of 2013!', '299', 2, '2014-06-01 01:12:26', '2014-05-31 10:42:26'),
(3, 'Samsung Galaxy S4', 'How about no?', '600', 3, '2014-06-01 01:12:26', '2014-05-31 10:42:26'),
(6, 'Bench Shirt', 'The best shirt!', '29', 1, '2014-06-01 01:12:26', '2014-05-30 19:42:21'),
(7, 'Lenovo Laptop', 'My business partner.', '399', 2, '2014-06-01 01:13:45', '2014-05-30 19:43:39'),
(8, 'Samsung Galaxy Tab 10.1', 'Good tablet.', '259', 2, '2014-06-01 01:14:13', '2014-05-30 19:44:08'),
(9, 'Spalding Watch', 'My sports watch.', '199', 1, '2014-06-01 01:18:36', '2014-05-30 19:48:31'),
(10, 'Sony Smart Watch', 'The coolest smart watch!', '300', 2, '2014-06-06 17:10:01', '2014-06-05 11:39:51'),
(11, 'Huawei Y300', 'For testing purposes.', '100', 2, '2014-06-06 17:11:04', '2014-06-05 11:40:54'),
(12, 'Abercrombie Lake Arnold Shirt', 'Perfect as gift!', '60', 1, '2014-06-06 17:12:21', '2014-06-05 11:42:11'),
(13, 'Abercrombie Allen Brook Shirt', 'Cool red shirt!', '70', 1, '2014-06-06 17:12:59', '2014-06-05 11:42:49'),
(26, 'Another product', 'Awesome product!', '555', 2, '2014-11-22 19:07:34', '2014-11-21 13:37:34'),
(28, 'Wallet', 'You can absolutely use this one!', '799', 6, '2014-12-04 21:12:03', '2014-12-03 15:42:03'),
(31, 'Amanda Waller Shirt', 'New awesome shirt!', '333', 1, '2014-12-13 00:52:54', '2014-12-11 19:22:54'),
(42, 'Nike Shoes for Men', 'Nike Shoes', '12999', 3, '2015-12-12 06:47:08', '2015-12-11 23:17:08'),
(48, 'Bristol Shoes', 'Awesome shoes.', '999', 5, '2016-01-08 06:36:37', '2016-01-07 23:06:37'),
(60, 'Rolex Watch', 'Luxury watch.', '25000', 1, '2016-01-11 15:46:02', '2016-01-11 08:16:02'),
(65, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', '199', 2, '2019-06-13 18:19:28', '2019-06-13 16:19:28'),
(66, 'Amazing Pillow 2.0', 'The best pillow for amazing programmers.', '199', 2, '2019-06-15 14:26:36', '2019-06-15 14:26:36'),
(67, ' How 2.0', 'The best pillow for amazing programmers.', '199', 2, '2019-06-15 14:53:44', '2019-06-15 14:53:44'),
(68, 'yyyy', 'gy', '7', 1, '2019-06-15 15:54:41', '2019-06-15 15:54:41'),
(69, 'yyyy', 'gy', '7', 1, '2019-06-15 15:54:49', '2019-06-15 15:54:49'),
(70, 'yyyy', 'gy', '7', 1, '2019-06-15 15:54:56', '2019-06-15 15:54:56'),
(71, 'yy', 'yh', '2', 1, '2019-06-15 15:56:14', '2019-06-15 15:56:14'),
(72, 'New', 'new', '2333', 1, '2019-06-15 16:11:16', '2019-06-15 16:11:16'),
(73, 'Test', 'test', '2', 1, '2019-06-15 16:13:19', '2019-06-15 16:13:19'),
(74, 'testtt', 'test', '2', 4, '2019-06-15 16:16:42', '2019-06-15 16:16:42'),
(75, 'testtwo', 'hh', '2', 2, '2019-06-15 16:19:56', '2019-06-15 16:19:56'),
(76, 'tesss', 'gg', '8', 3, '2019-06-15 16:34:08', '2019-06-15 16:34:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(11) NOT NULL,
  `unique_id` varchar(23) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `encrypted_password` varchar(256) NOT NULL,
  `salt` varchar(10) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `unique_id`, `name`, `email`, `encrypted_password`, `salt`, `created_at`) VALUES
(1, '5d01a2d06cc0b1.56068508', 'Raj Amal', 'raj.amalw@learn2crack.com', '$2y$10$YiiGWUW3y.6r5yWaA/OTv.K4OM4530Vgs9x0YiSgPKDfaMUrfpr9G', 'd85c3346c1', '2019-06-13 07:41:44'),
(2, '5d01af794090e9.30213530', 'yan', 'rghtbossy@gmail.com', '$2y$10$JgPWhkftu865Eqmonx2ZW.2vfiAwzXIBzJsoWCwyIdUTv07GBO4Ua', '0ed5ec6dd6', '2019-06-13 09:05:45'),
(3, '5d01b5fe30be36.31490474', 'naing', 'naing@gmail.com', '$2y$10$LiGGu9ujgrkYief97nItkO/JtOc2xLFDOiDNvRa/hrqMLjzEvB3x6', '2332f953fc', '2019-06-13 09:33:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_request`
--
ALTER TABLE `password_reset_request`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `password_reset_request`
--
ALTER TABLE `password_reset_request`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
