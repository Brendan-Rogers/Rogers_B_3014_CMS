-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 21, 2019 at 01:57 AM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `db_sports`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sports`
--

CREATE TABLE `tbl_sports` (
  `id` int(50) UNSIGNED NOT NULL,
  `gear_title` varchar(400) NOT NULL,
  `gear_pics` varchar(200) NOT NULL,
  `gear_txt` varchar(600) NOT NULL,
  `gear_category` varchar(100) NOT NULL,
  `gear_price` varchar(20) NOT NULL,
  `archived` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_sports`
--

INSERT INTO `tbl_sports` (`id`, `gear_title`, `gear_pics`, `gear_txt`, `gear_category`, `gear_price`, `archived`) VALUES
(2, 'Nike Men\'s Air Zoom Terra Wild Horse 5 LT Trail Running Shoes - White/Pink/Black', 'nike_2.png', 'Built specifically for trails, the Nike Men’s Air Zoom Terra Wild Horse 5 LT Trail Running Shoe keeps you galloping over rough terrain in breathable, multi-layer fabric. A rock plate helps shield your foot, while a Zoom Air heel unit cushions your stride on and off the path.', 'Nike', '154.99', 0),
(3, 'Nike Men\'s Free RN 5.0 Running Shoes - Blue/White', 'nike_1.png', 'An ideal performer for low-mileage sprints, the Nike Men’s Free RN 5.0 Running Shoe returns to its roots as a running shoe. Lightweight, single layer mesh in the upper provides more stretch to feel like a second skin. Less foam in the midsole means you’re ready to hit the ground running.', 'Nike', '134.99', 0),
(4, 'Nike Men\'s Free RN 5.0 Running Shoes - White/Black/Pink/Lime', 'nike_3.png', 'An ideal performer for low-mileage sprints, the Nike Men’s Free RN 5.0 Running Shoe returns to its roots as a running shoe. Lightweight, single layer mesh in the upper provides more stretch to feel like a second skin. Less foam in the midsole means you’re ready to hit the ground running.', 'Nike', '134.99', 0),
(5, 'Nike Men\'s Winflo 5 Running Shoes - Black/White', 'nike_4.png', 'The Nike Air Zoom Winflo 5 Men’s Running Shoe provides a responsive ride and durable, multi-surface traction underfoot. Up top, engineered mesh delivers strategic support and breathability, while a partial bootie offers seamless comfort as you hit your stride.', 'Nike', '119.99', 0),
(6, 'Nike Men\'s Epic React Flyknit Running Shoes - Navy/Blue/Grey', 'nike_5.png', 'Step in to the smooth comfort of Nike Epic React Flyknit Men’s Running Shoe. It’s precision tuned with a Flyknit upper and Nike React technology to deliver a soft yet responsive ride mile after mile.', 'Nike', '199.99', 0),
(7, 'adidas Men\'s Questar Ride Running Shoes - Black/White/Yellow', 'adidas_1.png', 'Log miles with ease in these shoes for men. Inspired by modern tech runners, they feature an airy two-tone mesh upper, while Cloudfoam cushioning adds all-day comfort. The moulded heel counter provides a snug fit.', 'adidas', '69.98', 0),
(8, 'adidas Men\'s Questar Ride Running Shoes - Black/White/Grey', 'adidas_2.png', 'Train for your sport in comfort. The adidas Men’s Questar Ride Running Shoes sturdy runners support your stride as you clock miles. They have an airy mesh upper with contrast details, and plush cushioning supports every step.', 'adidas', '69.98', 0),
(9, 'adidas Men\'s Ultraboost 19 Running Shoes - Black/Grey', 'adidas_3.png', 'The adidas Men\'s Ultra Boost 19 Running Shoes combine comfort and performance to reinvent your run. They have a seamless adidas Primeknit 360 upper that\'s engineered with motion weave technology to stretch and support your foot. Optimised Boost maximises energy return, and a 3D heel frame provides a locked-down fit that allows natural heel movement.', 'adidas', '250.00', 0),
(10, 'adidas Men\'s Ultra Boost Running Shoes - White/Red', 'adidas_4.png', 'Get that best-ever feeling on every run. The adidas Men\'s Ultra Boost Running Shoes have a stretchy knit upper with ventilation in key sweat zones to help you stay cool. Energy-returning cushioning and a flexible outsole work together to give you a smooth ride from touch-down to toe-off', 'adidas', '249.99', 0),
(11, 'adidas Men\'s Ultraboost 19 Running Shoes - White/Grey', 'adidas_5.png', 'The adidas Men\'s Ultra Boost 19 Running Shoes combine comfort and performance to reinvent your run. They have a seamless adidas Primeknit 360 upper that\'s engineered with motion weave technology to stretch and support your foot. Optimised Boost maximises energy return, and a 3D heel frame provides a locked-down fit that allows natural heel movement.', 'adidas', '250.00', 0),
(12, 'Under Armour Men\'s Charged Bandit 4 Running Shoes - Black ', 'underArmour_1.png', 'The fourth installment of the popular UA Charged Bandit line—with the same soft, springy cushioning and form-fitting comfort the shoes from previous generations were famous for. Only more of it. If you want a shoe to put some serious miles on, this is it.', 'underArmour', '99.99', 0),
(13, 'Under Armour Men\'s Charged Bandit 4 4E Running Shoes - Black', 'underArmour_2.png', 'The fourth installment of the popular UA Charged Bandit line—with the same soft, springy cushioning and form-fitting comfort the shoes from previous generations were famous for. Only more of it. If you want a shoe to put some serious miles on, this is it.', 'underArmour', '99.99', 0),
(14, 'Under Armour Men\'s Lightning 2 Running Shoes - Blue/Grey', 'underArmour_3.png', 'Lightweight cushioning and a snug fit. That\'s what you\'ll get every time you lace up the Under Armour Men\'s Lightning 2 Running Shoes. Featuring a snug knit upper, the Charged Lightning 2 delivers targeted areas of durability, breathability, and support where you need them most. A one-piece Charged Cushioning midsole places your foot close to the ground, delivering responsive cushioning and fast, unstoppable feel.', 'underArmour', '99.99', 0),
(15, 'Under Armour Men\'s Remix Running Shoes - Black/Steel', 'underArmour_4.png', 'The Under Armour Men\'s Remix Running Shoes - Black/Steel features an internal foam padding around ankle collar & tongue for comfort.', 'underArmour', '66.95', 0),
(16, 'Under Armour Men\'s Slingwrap Phase Running Shoes - Grey', 'underArmour_5.png', 'The Under Armour Men\'s Slingwrap Phase Running Shoes features a threadborne upper for a breathable, comfortable fit. The Flexible Coreshort midfoot straps bug both sides of the foot for ultimate lockdown & support.', 'underArmour', '81.95', 0),
(17, 'Reebok Men\'s Sole Fury Running Shoes - Black/White/Solar', 'reebok_1.png', 'Style at any speed. The Reebok Men\'s Sole Fury Running Shoes have a breathable mesh upper for ventilated comfort with each step. An asymmetrical lacing system gives you a snug fit and a standout look all through your run and beyond.', 'reebok', '129.99', 0),
(18, 'Reebok Men\'s Forever Floatride Energy Running Shoes - Blue/White', 'reebok_2.png', 'Cut out distractions for fast splits. The Reebok Men’s Forever Floatride Energy Running Shoes have a Floatride Energy Foam midsole for lightweight responsive cushioning from start to finish. A mesh upper provides support and ventilation so you can take each stride in comfort.', 'reebok', '129.99', 0),
(19, 'Reebok Men\'s Froning 1 Training Shoes - Black/White/Grey', 'reebok_3.png', 'The old school cross-training shoe gets a modern facelift in collaboration with 4X Fittest Man on Earth Rich Froning. Built to do just about anything, the Reebok Men\'s Froning 1\'s multi-surface bottom lets you perform on any terrain you can find. The Dyneema® and mesh upper adds breathable durability, and the Toe Tection brings the toughness for high intensity workouts.', 'reebok', '179.99', 0),
(20, 'Reebok Men\'s JJ II Valor Low Training Shoes - Stone/Brown/Green', 'reebok_4.png', 'JJ Watt’s grandfather served in the military, giving him a strong tie to those who have served. JJ Watt wanted to design a pack of his signature shoe, the JJ II, to honor members of the military. He invited a retired U.S. Navy SEAL to his house in Houston to consult with the Reebok design team. The Reebok Men\'s JJ II Valor Low Training Shoes shoe memorializes men who lost their lives in action and training.', 'reebok', '119.99', 0),
(21, 'Reebok Men\'s CrossFit Nano 8 Training Shoes - Black/White', 'reebok_5.png', 'Since 2010, Reebok has forged the Nano through sweat, testing, re-designing and re-testing to create our most versatile and dependable CrossFit shoe in the box. Reebok Men\'s CrossFit Nano 8 Training Shoes were developed with insight from the CrossFit community, and has been engineered for maximum comfort. ', 'reebok', '144.99', 0),
(22, 'Saucony Men\'s Freedom ISO Running Shoes - Olive', 'saucony_1.png', 'Saucony\'s first men\'s neutral running shoe shoe to offer a full midsole of EVERUNTM Continuous Cushioning. For even more energy return, more responsiveness, more cushioning, and a more amazing run from your first step to your last.', 'Saucony', '199.99', 0),
(23, 'Saucony Men\'s Everun Hurricane ISO 4 Running Shoe - Grey/Blue/Black', 'saucony_2.png', 'Stiffness is no longer the price to pay for support in your stability running shoe. Designed to support overpronation, the Hurricane ISO 4 raises the bar with full-length EVERUNTM cushioning and ISOFIT dynamic lacing. The result is a beautifully plush and flexible feel, without losing an ounce of stability.', 'Saucony', '189.99', 0),
(24, 'Saucony Men\'s Freedom ISO Running Shoes - Burgundy', 'saucony_3.png', 'The Saucony Men\'s Freedom ISO Running Shoes offer a full midsole of EVERUNTM Continuous Cushioning. For even more energy return, more responsiveness, more cushioning, and a more amazing run from your first step to your last.', 'Saucony', '199.99', 0),
(25, 'Saucony Men\'s Freedom ISO Running Shoes - Black/Blue', 'saucony_4.png', 'The Saucony Men\'s Freedom ISO Running Shoes is the first shoe to offer a full midsole of EVERUN Continuous Cushioning. For even more energy return, more responsiveness, more cushioning and a more amazing run from your first step to your last. Men\'s sizing listed.', 'Saucony', '199.99', 0),
(26, 'Saucony Men\'s Everun Ride ISO Running Shoes - White', 'saucony_5.png', 'Sometimes everything clicks. The air is crisp, your mind is clear and each step feels effortless as if an invisible force is pulling you along. The Ride ISO was inspired by moments like these, with the perfect balance of cushioning and responsiveness, this neutral running shoe is designed to run like a dream.', 'Saucony', '127.97', 0),
(27, 'Mizuno Men\'s Wave Supersonic Indoor Court Shoes - Black/Silver', 'mizuno_1.png', 'The Wave Supersonic is the newest addition to the Mizuno Volleyball footwear family. With the DNA of a running shoe and the classic technology of our volleyball line, the all new Wave Supersonic provides both cushioning comfort and lateral support.', 'Mizuno', '96.95', 0),
(28, 'Mizuno Men\'s Wave Lightning Z4 Indoor Court Shoes - Black/Silver', 'mizuno_2.png', 'The lightweight high-performance Mizuno Wave Lightning Z4 is technically unrivalled for performance on court. The dynamic-cushioned, 360° ‘no-sew’ design combines the perfect fit with a balanced and stable feel. The DynamotionFit upper and D-Flex groove allow for quick transfer of weight and electric acceleration on court. ', 'Mizuno', '149.99', 0),
(29, 'Mizuno Men\'s Wave Lightning Z4 Indoor Court Shoes -Blue/Black/Yellow', 'mizuno_3.png', 'The lightweight high-performance Mizuno Wave Lightning Z4 is technically unrivalled for performance on court. The dynamic-cushioned, 360° ‘no-sew’ design combines the perfect fit with a balanced and stable feel. ', 'Mizuno', '89.97', 0),
(30, 'Mizuno Men\'s Wave Hurricane 3 Indoor Court Shoes - White/Blue', 'mizuno_4.png', 'The Wave Hurricane 3 features the parallel wave plate, creating the lateral stability players need for quick movements during court play. Durable, yet affordable, this shoe is ideal for team use during both practices and games.', 'Mizuno', '99.99', 0),
(31, 'Mizuno Men\'s Wave Lightning Z3 Indoor Court Shoes - White/Black', 'mizuno_5.png', 'The Mizuno Wave Lightning Z3 Men’s indoor court shoe has been crafted with a no-sew upper construction that provides a high level of fit and comfort.', 'Mizuno', '119.97', 0),
(32, 'Converse Men\'s CT II (Leather) Casual Boots - Black', 'converse_1.png', 'The Counter Climate Collection offers the Converse styles you love—enhanced for rain-or-shine comfort. Meticulous design, premium materials and durable construction help keep your feet warm and dry, no matter what the weather. The Converse Chuck Taylor All Star II Boot Mesh Backed Leather helps keep feet dry with a water-resistant upper.', 'converse', '119.99', 0),
(33, 'Converse Men\'s Chuck Taylor Waterproof Hi Boots - Burgundy/Black', 'converse_2.png', 'The Converse Chuck Taylor All Star Waterproof boots sets you up with a premium upper and a padded neoprene inner sleeve that helps keep you warm and dry when facing the elements.', 'converse', '149.99', 0),
(34, 'Converse Chuck Hi Shoes - Black/White', 'converse_3.png', 'The Converse Chuck Hi Shoes - Black/White have all of the features that have made the Converse Chuck Taylor lifestyle sneakers legendary since 1917. High-top canvas uppers give them plenty of ankle support for pick-up basketball games or full days of running errands.', 'converse', '69.99', 0),
(35, 'Converse Men\'s Chuck Taylor OX Shoes - Maroon', 'converse_4.png', 'The Converse Chuck Taylor All Star is the one that started it all for Converse. When it comes to sneakers, there’s nothing more pure than a canvas upper and a vulcanized rubber sole. This is the sneaker that spawned countless imitators, with its rubber toe cap, toe bumper and striping.', 'converse', '47.97', 0),
(36, 'Converse Men\'s CTII High (Woven) Shoes - Black/White', 'converse_5.png', 'Although the Converse CTII High (Woven) Men’s Shoes may look just like the Chuck Taylor All Star lifestyle sneakers that you know and love, these kicks have a luxurious secret inside. Their insoles are amply padded with Lunarlon foam, and the shoes are lined with micro suede for an unbelievably comfortable fit.', 'converse', '46.97', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_sports`
--
ALTER TABLE `tbl_sports`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_sports`
--
ALTER TABLE `tbl_sports`
  MODIFY `id` int(50) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
