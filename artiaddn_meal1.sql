-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 29, 2024 at 06:21 AM
-- Server version: 10.6.17-MariaDB-cll-lve
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `artiaddn_meal`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `dcp` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `heading`, `dcp`, `image`) VALUES
(2, 'Where quality food meet Excellent services.', '			It’s the perfect dining experience where every dish is crafted with fresh, high-quality ingredients and served by friendly staff who go.					', '75923-about-us-d5778dfe-(1).png');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'Muhammad Muzammal', 'admin@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `dcp` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `heading`, `dcp`, `image`) VALUES
(1, 'We Offer  Delicious  Food And Quick Service', 'Imagine you don’t need a diet because we provide healthy and delicious food for you!.', 'vvvvvvvv');

-- --------------------------------------------------------

--
-- Table structure for table `custom_menu`
--

CREATE TABLE `custom_menu` (
  `id` int(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL,
  `menu_id` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `date` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `custom_menu`
--

INSERT INTO `custom_menu` (`id`, `user_id`, `day`, `menu_id`, `time`, `date`) VALUES
(25, '4', 'Monday', '9.', 'Breakfast', ''),
(26, '4', 'Tuesday', '10.', 'Breakfast', ''),
(27, '4', 'Wednesday', '13.', 'Lunch', ''),
(28, '4', 'Thursday', '13.', 'Lunch', ''),
(29, '4', 'Friday', '11.', 'Dinner', ''),
(30, '4', 'Saturday', '12.', 'Dinner', ''),
(31, '5', 'Monday', '9.', 'Breakfast', ''),
(32, '5', 'Monday', '10', 'Breakfast', '2024-04-29'),
(33, '6', 'Monday', '10', 'Breakfast', '2024-04-29'),
(34, '6', 'Friday', '14', 'Lunch', '2024-05-03'),
(35, '5', 'Friday', '9', 'Breakfast', '2024-05-11');

-- --------------------------------------------------------

--
-- Table structure for table `custom_menu2`
--

CREATE TABLE `custom_menu2` (
  `id` int(11) NOT NULL,
  `days` varchar(250) NOT NULL,
  `user_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `time` varchar(250) NOT NULL,
  `meal_id` int(11) NOT NULL,
  `date` varchar(250) NOT NULL,
  `quantity` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `custom_menu2`
--

INSERT INTO `custom_menu2` (`id`, `days`, `user_id`, `food_id`, `time`, `meal_id`, `date`, `quantity`) VALUES
(20, 'Monday', 4, 5, 'Breakfast', 11, '', ''),
(21, 'Tuesday', 4, 5, 'Breakfast', 12, '', ''),
(22, 'Wednesday', 4, 6, 'Lunch', 13, '', ''),
(23, 'Tuesday', 4, 6, 'Lunch', 14, '', ''),
(24, 'Wednesday', 4, 7, 'Dinner', 15, '', ''),
(25, 'Thursday', 4, 7, 'Dinner', 16, '', ''),
(26, 'Friday', 4, 8, 'Lunch', 17, '', ''),
(27, 'Saturday', 4, 9, 'Lunch', 18, '', ''),
(28, 'Sunday', 4, 10, 'Breakfast', 19, '', ''),
(29, 'Tuesday', 5, 5, 'Dinner', 20, '', ''),
(30, 'Friday', 5, 6, 'Lunch', 21, '', ''),
(31, 'Monday', 5, 7, 'Breakfast', 23, '', ''),
(32, 'Tuesday', 5, 8, 'Dinner', 23, '', ''),
(33, 'Wednesday', 6, 10, 'Lunch', 24, '2024-05-08', ''),
(34, 'Wednesday', 6, 6, 'Lunch', 24, '2024-05-01', ''),
(35, 'Saturday', 5, 9, 'Dinner', 21, '2024-05-04', ''),
(36, 'Wednesday', 5, 6, 'Lunch', 23, '2024-05-01', '20');

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `calories` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `dcp` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `name`, `quantity`, `calories`, `image`, `dcp`) VALUES
(5, 'Almond-Buckwheat Granola with Yogurt and Berries', '2', '150', '65496-almond-buckwheat-granola-with-yogurt-and-berries-65722b7adc36e.jpg', 'Meal prep a big batch of granola then top off yogurt and fruit all week long.								'),
(6, 'Focaccia French Toast', '5', '90', '78811-focaccia-french-toast-1670532659-65722bf8aedf7.jpg', 'Don’t forget the yogurt, berries, and a generous drizzle of warm syrup to top of this creative twist on the diner classic.								'),
(7, 'Sheet Pan Asparagus Frittata', '5', '83', '78998-sheet-pan-asparagus-frittata-656e2c88a4f42.jpg', 'Put spring produce to good use in this breakfast that feeds a crowd!								'),
(8, 'Loaded Pancake Tacos', '14', '43', '21880-loaded-pancake-tacos-1675720416-656e2e17404fd.jpg', 'Add more milk to classic pancake batter to make “taco” shells perfect for stuffing with crispy bacon, fried eggs and sharp Cheddar.								'),
(9, 'Salmon Salad Tartines', '2', '123', '79034-salmon-salad-tartines-6552a4cc3a179.jpg', 'Think beyond tuna — canned salmon is a tasty toast topper and comes with a hit of omega-3 fatty acids.								'),
(10, 'Snap Pea and Chicken Salad', '7', '220', '73841-salmon-salad-tartines-6552a4cc3a179.jpg', 'This one-step recipe combines snap peas, shredded rotisserie chicken and onion with a lemony dressing.								'),
(11, 'Sweet Potato Breakfast Burritos', '3', '123', '76321-salmon-salad-tartines-6552a4cc3a179.jpg', 'Brunch for lunch? We wouldn\'t say no, especially when you can make them ahead of time and and freeze up to 2 months.								'),
(12, 'Vegetarian Antipasto Salad', '14', '52', '11022-vegetarian-antipasto-salad-65577c898e432.jpg', 'This bright, crowd-pleasing salad is loaded with everything good — tomatoes, chickpeas, cukes, and yes, those extra-small, extra-fun mozzarella balls — and as a bonus, can easily be made ahead.								'),
(13, 'Green Goddess Sandwiches', '6', '98', '13070-green-goddess-sandwiches-healthy-lunch-recipes-6552ad3197eef.jpg', 'Eggs aren\'t just for breakfast. The tasty orbs are the perfect way to pack protein into a vegetarian sandwich.								');

-- --------------------------------------------------------

--
-- Table structure for table `food_item`
--

CREATE TABLE `food_item` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `calories` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `meal` varchar(255) NOT NULL,
  `dcp` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_item`
--

INSERT INTO `food_item` (`id`, `name`, `quantity`, `calories`, `image`, `meal`, `dcp`) VALUES
(17, 'Oatmeal with Apricots', '1', '20', '31556-download.jpeg', '9', 'This crave-worthy bowl is scented with cinnamon and cardamom, drizzled with a nutty tahini honey, and sprinkled with dried apricots and chopped nuts for a just-sweet-enough spin on classic oatmeal.				'),
(18, 'Fluffy ', '2', '80', '3780-download-(1).jpeg', '10', 'With our Homemade Mix, you’re already halfway there to a stack of warm, fluffy pancakes — just add milk, oil, an egg, and a touch of sugar for a super simple batter. Enjoy pancakes with a pat of butter and maple syrup, or mix it up with one of our delicious flavor variations. Mocha chip pancakes, anyone?					'),
(19, 'Noodles', '5', '30', '23717-download-(2).jpeg', '11', 'This super easy cheesy noodle dish is sure to be a hit with the kids!				'),
(20, 'Spaghetti', '3', '180', '44905-download-(3).jpeg', '12', 'One of the simplest and most satisfying pasta dishes you\'ll ever cook, this is proof that magic can happen with just a handful of ingredients.						'),
(21, 'Instant Noodle Soup', '8', '150', '26923-download-(4).jpeg', '13', 'Load veggies and bouillon base into a mason jar for lunch that\'s ready whenever you are. Just add boiling water!							'),
(22, 'Veggie Sandwiches', '12', '75', '68343-download-(5).jpeg', '14', 'No meat, no problem! This vegan sammie is stuffed with crunchy veggies, juicy tomatoes and two spreads for an ultra-satisfying bite.						');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id` int(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `dcp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id`, `image`, `dcp`) VALUES
(1, '85543-7039-db-media.png', 'A Res is a self-service shop offering a wide variety of food, beverages & household products we’re engage with their clients & their team.');

-- --------------------------------------------------------

--
-- Table structure for table `meal`
--

CREATE TABLE `meal` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meal`
--

INSERT INTO `meal` (`id`, `name`, `image`, `time`) VALUES
(9, 'Oatmeal with Apricots and Pistachios', '4665-oatmeal-apricots-pistachios-1673304739-65722a9aa3cf9.jpg', 'Breakfast'),
(10, 'Fluffy Pancakes', '62620-fluffy-pancakes-1675719604-657229c830876.jpg', 'Breakfast'),
(11, 'Easy cheesy 2-minute noodles', '74943-easy-cheesy-2-minute-noodles-136753-6.jpg', 'Dinner'),
(12, 'Chilli prawn spaghetti for two', '41541-chilli-prawn-spaghetti-recipe-for-two-163136-1.jpeg', 'Dinner'),
(13, 'Mason Jar Instant Noodle Soup', '20013-mason-jar-instant-noodle-soup-6552a20001471.jpg', 'Lunch'),
(14, 'Fully-Loaded Veggie Sandwiches', '17235-fully-loaded-veggie-sandwiches-6552a30fa4974.jpg', 'Lunch');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `image_food` varchar(255) NOT NULL,
  `name_food` varchar(255) NOT NULL,
  `dcp_food` varchar(255) NOT NULL,
  `price_food` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `image_food`, `name_food`, `dcp_food`, `price_food`) VALUES
(30, '98401-biryani.webp', 'cakeeeeeeeee', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Laborum assumenda voluptates', 40),
(31, '37370-gallary_4.jpg', 'cake', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Laborum assumenda voluptates', 17),
(33, '22926-hot_dog.jpg', 'cake', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Laborum assumenda voluptates', 17);

-- --------------------------------------------------------

--
-- Table structure for table `testimonails`
--

CREATE TABLE `testimonails` (
  `id` int(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `dcp` varchar(255) NOT NULL,
  `image` varchar(235) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonails`
--

INSERT INTO `testimonails` (`id`, `heading`, `dcp`, `image`) VALUES
(2, 'Madelyn Baptista ', 'Food is the best. Besides the many and delicious meals, the service is also very good, especially in the very fast delivery. I highly recommend Food to you.		', '93214-avatar1-25906796.png'),
(3, 'Madelyn Baptista', '			Food is the best. Besides the many and delicious meals, the service is also very good, especially in the very fast delivery. I highly recommend Food to you.\r\n\r\n				', '24312-avatar2-189b0d01.png'),
(4, 'Madelyn Baptista  ', '			Food is the best. Besides the many and delicious meals, the service is also very good, especially in the very fast delivery. I highly recommend Food to you.\r\n\r\n				', '57358-avatar3-2bbdc0fd.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `weight` varchar(250) NOT NULL,
  `height` varchar(250) NOT NULL,
  `age` varchar(250) NOT NULL,
  `water_in_take` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_meal`
--

CREATE TABLE `user_meal` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `user_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_meal`
--

INSERT INTO `user_meal` (`id`, `name`, `image`, `user_id`) VALUES
(11, 'Berry Yogurt Bowl', '27014-berry-yogurt-bowl-easy-breakfast-ideas-1674576598.jpg', 4),
(12, 'Instant Oatmeal with Cranberries and Pecans', '35264-instant-oatmeal-with-cranberries-and-pecans-1641506842.jpg', 4),
(13, 'Breakfast Tacos', '49919-breakfast-tacos-easy-breakfast-ideas-1674576494.jpg', 4),
(14, 'Poblano and Black Bean Loaded Baked Potato', '98065-poblano-and-black-bean-loaded-baked-potato-healthy-lunch-ideas-6552aa6d7da4e.jpg', 4),
(15, 'Air Fryer Salmon Flatbreads', '32249-air-fryer-salmon-flatbreads-healthy-lunch-recipes-6553911a03fa7.jpg', 4),
(16, 'Roasted Eggplant Veggie Burgers', '29417-roasted-eggplant-veggie-burgers-healthy-lunch-ideas-65539f54a41f1.jpg', 4),
(17, 'Greek Salad', '56672-greek-salad-healthy-lunch-ideas-1671486129.jpg', 4),
(18, 'Soba Noodle Salad with Shrimp and Ginger Vinaigrette', '83031-soba-noodle-salad-with-shrimp-1610635713.jpg', 4),
(19, 'Waldorf Chicken Salad', '41032-bbq-salads-waldorf-chicken-salad-1651786679.jpeg', 4),
(20, 'Chickpea Pasta Salad in a Jar', '21597-chickpea-pasta-salad-in-a-jar-65539cb780a69.jpg', 5),
(21, 'Salmon Niçoise Salad', '6365-salmon-nicoise-salad-1622138460.jpg', 5),
(22, 'Greek Salad Wraps', '54918-spinach-recipes-greeksalad-053-1561996862.jpg', 5),
(23, 'Fiery Black Bean Soup', '37964-fiery-black-bean-soup-healthy-lunch-ideas-1671486242.jpg', 5),
(24, 'harry meal 1', '47934-jj.png', 6);

-- --------------------------------------------------------

--
-- Table structure for table `water_in_take`
--

CREATE TABLE `water_in_take` (
  `id` int(11) NOT NULL,
  `date` varchar(250) NOT NULL,
  `water_value` varchar(250) NOT NULL,
  `user_id` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `water_in_take`
--

INSERT INTO `water_in_take` (`id`, `date`, `water_value`, `user_id`) VALUES
(1, '2024-02-09', '500', '6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_menu`
--
ALTER TABLE `custom_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_menu2`
--
ALTER TABLE `custom_menu2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_item`
--
ALTER TABLE `food_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meal`
--
ALTER TABLE `meal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonails`
--
ALTER TABLE `testimonails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_meal`
--
ALTER TABLE `user_meal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `water_in_take`
--
ALTER TABLE `water_in_take`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `custom_menu`
--
ALTER TABLE `custom_menu`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `custom_menu2`
--
ALTER TABLE `custom_menu2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `food_item`
--
ALTER TABLE `food_item`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `meal`
--
ALTER TABLE `meal`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `testimonails`
--
ALTER TABLE `testimonails`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_meal`
--
ALTER TABLE `user_meal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `water_in_take`
--
ALTER TABLE `water_in_take`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
