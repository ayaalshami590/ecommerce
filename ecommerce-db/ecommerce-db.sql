-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2025 at 12:05 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL,
  `name1` varchar(100) NOT NULL,
  `price1` float NOT NULL,
  `rate1` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`) VALUES
(1, 'clothes', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvYL20LoYGfoCcq8Vzco0oQfJb0fl-WnwjSQ&s'),
(2, 'electronic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyoIselfWcpUZPgPy-S2pQx5yqSS_zclRpYg&s'),
(4, 'school', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDU7xPQ1370Y18q5mVpI32Raq90ka1o-xzhQ&s'),
(5, 'Kitchen tools ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhJWuIqfsypBiQoBtd0yRmWqW5T6D0PcbIQw&s'),
(6, 'furniture', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJywmX6_cuCdaeNrWLcqivroyL_IbBVYOPew&s'),
(7, 'university tools', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOi7Nf_0spBMI-4itbrhHGuipKsBFeSUAJ5A&s'),
(8, 'motorcycles', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8YAOvYywmfpRqFu9mjaV4iUCK6H6rWgV4wiewqNItJwI1mu_lACL009mt_2bU1mkjwmI&usqp=CAU'),
(35, 'cars', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoPRaBpAdxVRJBh37HLgJ-_fbaQ2CHVCM6mA&s'),
(37, 'hels', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQm8JjPL3STGdaBbunOwNvoA4J4MQ9vNveNw&s'),
(38, '', ''),
(39, '', ''),
(40, '', ''),
(41, '', ''),
(42, '', ''),
(43, 'gggghttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoPRaBpAdxVRJBh37HLgJ-_fbaQ2CHVCM6mA', ''),
(44, 'gggghttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoPRaBpAdxVRJBh37HLgJ-_fbaQ2CHVCM6mA', ''),
(45, 'gggghttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoPRaBpAdxVRJBh37HLgJ-_fbaQ2CHVCM6mA', ''),
(46, 'gggghttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoPRaBpAdxVRJBh37HLgJ-_fbaQ2CHVCM6mA', ''),
(47, 'jjjjjrrttytt', ''),
(48, 'jjjjjrrttytt', ''),
(49, 'jjjjjrrttytt', ''),
(50, 'jjjjjrrttytt', ''),
(51, 'jjjjjrrttytt', ''),
(52, 'jjjjjrrttytt', ''),
(53, 'ssssssaaaaaa', ''),
(54, 'shoeshttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoPRaBpAdxVRJBh37HLgJ-_fbaQ2CHVCM6mA', ''),
(55, 'shoeshttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoPRaBpAdxVRJBh37HLgJ-_fbaQ2CHVCM6mA', ''),
(56, 'shoeshttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoPRaBpAdxVRJBh37HLgJ-_fbaQ2CHVCM6mA', ''),
(57, 'shoeshttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoPRaBpAdxVRJBh37HLgJ-_fbaQ2CHVCM6mA', ''),
(58, 'cars', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoPRaBpAdxVRJBh37HLgJ-_fbaQ2CHVCM6mA&s');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `rate` float NOT NULL,
  `description` text NOT NULL,
  `image_url` varchar(300) NOT NULL,
  `categories-id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `rate`, `description`, `image_url`, `categories-id`) VALUES
(1, 'LG HUD', 500, 4.5, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia, in, sit natus harum dolorem placeat temporibus porro itaque quo quam omnis? Repellat, optio. Esse deleniti quia architecto voluptatibus eligendi non.', 'https://www.lg.com/ae_ar/images/category-test/md07565040/gallery/TV-UHD-65-55-50-43-UQ75-D-1.jpg\r\n', 2),
(3, 'LG TV', 450, 3.5, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia, in, sit natus harum dolorem placeat temporibus porro itaque quo quam omnis? Repellat, optio. Esse deleniti quia architecto voluptatibus eligendi non.', 'https://www.lg.com/ae_ar/images/tvs/md07559059/D-2.jpg', 2),
(4, 'SAMSUNG ODYSSEY ARK', 900, 8.4, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia, in, sit natus harum dolorem placeat temporibus porro itaque quo quam omnis? Repellat, optio. Esse deleniti quia architecto voluptatibus eligendi non.', 'https://media.officedepot.com/images/f_auto,q_auto,e_sharpen,h_450/products/9756738/9756738_o51_cn_11063377/9756738', 2),
(8, 'Hude', 13, 5.7, 'this is made of cotton 100%', 'https://images-na.ssl-images-amazon.com/images/I/511nBESlZ0L._AC_SR600,750,0,C_BR3_.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` bigint(20) NOT NULL,
  `user_image_url` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `user_image_url`, `body`, `product_id`) VALUES
(6, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxElzDzW5CMTk-IhfUH5CZHDTAM8pvUd0Idg&s', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto aperiam hic perferendis omnis quam?', 1),
(7, 'https://i.pinimg.com/736x/7a/42/95/7a42956721a6c96593f1c8f6c47dfe4b.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto aperiam hic perferendis omnis quam?', 3),
(8, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRskugHi0Fs3FxGa21e5lnWoDihqlwmDAobVg&s', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto aperiam hic perferendis omnis quam?', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `name1` varchar(100) NOT NULL,
  `password1` varchar(100) NOT NULL,
  `email1` varchar(100) NOT NULL,
  `number1` int(10) NOT NULL,
  `country1` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name1`, `password1`, `email1`, `number1`, `country1`) VALUES
(22, 'aya alshami', '12345', 'ayaalshami812@gmail.com', 982596793, 'syria'),
(23, '', '', '', 0, ''),
(24, '', '', '', 0, ''),
(25, 'ayaaaaa', '', '', 0, ''),
(26, 'ayaaaaa', 'ayaalshami813@gmail.com', '12345333', 2147483647, 'syr'),
(27, 'ayaaaaa', 'ayaalshami813@gmail.com', '12345333', 2147483647, 'syr'),
(28, '', '', '', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories-id` (`categories-id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`categories-id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
