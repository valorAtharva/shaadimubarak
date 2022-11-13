-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 31, 2022 at 09:37 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shaadi_mubarak`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

DROP TABLE IF EXISTS `admin_login`;
CREATE TABLE IF NOT EXISTS `admin_login` (
  `ID` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`ID`, `username`, `password`) VALUES
(7, 'admin', 'ShaadiHoniChahiye@69420');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
CREATE TABLE IF NOT EXISTS `food` (
  `food_id` int(2) NOT NULL AUTO_INCREMENT,
  `food_name` varchar(500) NOT NULL,
  `food_price` int(4) NOT NULL,
  `type` varchar(500) NOT NULL,
  PRIMARY KEY (`food_id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`food_id`, `food_name`, `food_price`, `type`) VALUES
(1, 'Kurkuri Amchoori Bhindi Chaat', 200, 'Appetizer'),
(2, 'Beetroot and Feta Tikki', 180, 'Appetizers'),
(3, 'Stuffed Tandoori Platter', 170, 'Appetizers'),
(4, 'Assorted Vegetable Pakoras', 165, 'Appetizers'),
(5, 'Paneer Chandini Seekh', 170, 'Appetizers'),
(6, 'Amravati Kozhi Varuval', 195, 'Appetizers'),
(7, 'Tawa Shrimp Roast', 180, 'Appetizers'),
(8, 'Amritsari Fish Fry', 180, 'Appetizers'),
(9, 'Mughlai Paneer Tikka', 175, 'Tandoori and Grills'),
(10, 'Peshwari Bharwan Aloo', 170, 'Tandoori and Grills'),
(11, 'Tandoori Subzi Platter', 180, 'Tandoori and Grills'),
(12, 'Tandoori Chicken', 210, 'Tandoori and Grills'),
(13, 'Chicken Chops Afghani', 165, 'Tandoori and Grills'),
(14, 'Murg Makhan Malai', 160, 'Tandoori and Grills'),
(15, 'Classic Chicken Tikka', 170, 'Tandoori and Grills'),
(16, 'Murgh Reshmi Kabab', 180, 'Tandoori and Grills'),
(17, 'Tandoori Shrimp', 200, 'Tandoori and Grills'),
(18, 'Moghul Signature Malai Kofta', 210, 'Main Course'),
(19, 'Chukunder Sham Savera', 200, 'Main Course'),
(20, 'Paneer Jalfrezi', 220, 'Main Course'),
(21, 'Old Delhi Butter Paneer', 180, 'Main Course'),
(22, 'Paneer Mirch Ka Salan', 190, 'Main Course'),
(23, 'Methi Malai Mattar', 190, 'Main Course'),
(24, 'Channa Amritsari', 185, 'Main Course'),
(25, 'Subzi Diwani Handi', 180, 'Main Course'),
(26, 'Classic Bhindi Masala', 175, 'Main Course'),
(27, 'Old Delhi Butter Chicken', 200, 'Main Course'),
(28, 'Murg Tikka Masala', 210, 'Main Course'),
(29, 'Badshai Murgh ka Salan', 200, 'Main Course'),
(30, 'Murgh Hyderabadi Curry', 220, 'Main Course'),
(31, 'Naan/Butter Naan/Roti', 25, 'Rotis'),
(32, 'Aloo Paratha/Pudina Paratha/ Kabuli Paratha', 30, 'Rotis'),
(33, 'Kandhari Naan', 25, 'Rotis'),
(34, 'Chilli Cheese Naan/Kheema Naan', 30, 'Rotis'),
(35, 'Bullet Naan', 35, 'Rotis'),
(36, 'Chapati', 20, 'Rotis'),
(37, 'Plain Basmati', 140, 'Rice'),
(38, 'Kashmiri Pulao', 170, 'Rice'),
(39, 'Veg Biryani', 180, 'Rice'),
(40, 'Lachnawi Veg Dum Biryani', 185, 'Rice'),
(41, 'Lachnawi Murgh Dum Biryani', 200, 'Rice'),
(42, 'Shrimp Biryani', 240, 'Rice'),
(43, 'Goat Dum Biryani', 280, 'Rice'),
(44, 'Raita', 120, 'Accompaniments'),
(45, 'Dahi Bhalla', 130, 'Accompaniments'),
(46, 'Green Salad', 125, 'Accompaniments'),
(47, 'Masala Papad', 80, 'Accompaniments'),
(48, 'Kulfi Falooda', 90, 'Desserts'),
(49, 'Gulab Jamun', 90, 'Desserts'),
(50, 'Ice Creams', 100, 'Desserts'),
(51, 'Gajjar Halwa', 110, 'Desserts'),
(52, 'Lava Cake', 140, 'Desserts'),
(53, 'Casata Ice Cream', 140, 'Desserts');

-- --------------------------------------------------------

--
-- Table structure for table `master_list`
--

DROP TABLE IF EXISTS `master_list`;
CREATE TABLE IF NOT EXISTS `master_list` (
  `item_id` int(10) NOT NULL AUTO_INCREMENT,
  `item_category` varchar(500) NOT NULL,
  `item_name` varchar(500) NOT NULL,
  `item_description` mediumtext,
  `price` int(10) NOT NULL DEFAULT '1',
  `location` varchar(500) DEFAULT NULL,
  `state` varchar(500) DEFAULT NULL,
  `city` varchar(500) DEFAULT NULL,
  `food_category` varchar(500) DEFAULT NULL,
  `food_type` varchar(500) DEFAULT NULL,
  `images` varchar(500) DEFAULT NULL,
  `status` varchar(500) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`item_id`) USING BTREE,
  UNIQUE KEY `item_name` (`item_name`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_list`
--

INSERT INTO `master_list` (`item_id`, `item_category`, `item_name`, `item_description`, `price`, `location`, `state`, `city`, `food_category`, `food_type`, `images`, `status`) VALUES
(17, 'food', 'Tandoori Chicken', 'Tender Chicken Marinated With Tandoori Spices.', 210, '', '', '', 'tandoori and grills', 'non veg', 'img.jpg', 'active'),
(16, 'food', 'Mughlai Paneer Tikka', 'Shrimps Are Cooked In Traditional Iron Skillet With A Spicy Lemony Marinade.', 175, '', '', '', 'tandoori and grills', 'veg', 'img.jpg', 'active'),
(14, 'food', 'Kurkuri Amchoori Bhindi Chaat', 'An All-Time Favorite Spiced Okra Fry Finished With Dry Mango Powder And Turned Into A Signature Chaat', 200, '', '', '', 'appetizers', 'veg', 'img.jpg', 'active'),
(15, 'food', 'Tawa Shrimp Roast', 'Shrimps Are Cooked In Traditional Iron Skillet With A Spicy Lemony Marinade.', 180, '', '', '', 'appetizers', 'non veg', 'img.jpg', 'active'),
(13, 'venues', 'ITC Rajputana', 'ITC Rajputana, an exotic and stylish red-brick heritage hotel in the capital city of Rajasthan, is symbolic of regal hospitality that harks back to a glorious past. The opulent hotel has many versatile venues, and the space can be further expanded for a large gathering by using a courtyard with the separate entrance. Siddhartha Chaturvedi, of Weddings by Event Crafter, shares, â€œITC Rajputana has a classic and authentic appeal which attracts a lot of millennial couples wanting to host a destination wedding in Jaipur. It has adequate rooms to accommodate large wedding groups.â€', 500, 'Dev Nagar, Jodhpur', 'rajasthan', 'Jodhpur', '', '', 'img1.jpg,img2.jpg,img3.jpg', 'active'),
(1, 'venues', 'Umaid Bhawan Palace', 'Home of Jodhpurâ€™s erstwhile royal family and currently the worldâ€™s sixth-largest private residence, the Umaid Bhawan Palace affords views of the historical Blue City, vast dunes, as well as the nearby Mehrangarh Fort. Known for its rich heritage, yellow sandstone architecture, and luxurious amenities, this property managed by the Taj Group, has become a hot spot for celebrity weddings such as that of Priyanka Chopra Jonas and Nick Jonas. Wedding designer Ashish Bohra, of Perfexion Events, shares, â€œStrolling through the lush, landscaped Baradari Lawns with dancing peacocks at Umaid Bhawan is a magical experience, and the property is perfect for those who have always envisioned a fairy tale wedding.â€', 500, 'Cantt Area, Jodhpur', 'rajasthan', 'Jodhpur', '', '', 'img1.jpg,img2.jpg,img3.jpg', 'active'),
(18, 'food', 'Moghul Signature Malai Kofta', 'Potato And Cheese Croquettes In A Mild Nutty Sauce', 210, '', '', '', 'main course', 'veg', 'img.jpg', 'active'),
(19, 'food', 'Old Delhi Butter Chicken', 'A Classic Old Delhi Style Signature Recipe Of World-Famous Butter Chicken', 200, '', '', '', 'main course', 'non veg', 'img.jpg', 'active'),
(20, 'food', 'Naan/Butter Naan/Roti', '', 25, '', '', '', 'rotis', 'veg', 'img.jpg', 'active'),
(21, 'food', 'Aloo Paratha/Pudina Paratha/Kabuli Paratha', '', 30, '', '', '', 'rotis', 'veg', 'img.jpg', 'active'),
(22, 'food', 'Plain Basmati', 'A Variety Of Long, Slender-Grained Aromatic Rice', 140, '', '', '', 'rice', 'veg', 'img.jpg', 'active'),
(23, 'food', 'Lucknawi Murgh Dum Biryani', 'Lucknowi Biryani Is Cooked With The Dum Method In A Handi ,Where The Rice And Vegetables Are Cooked Separately And Then Layered In Alternate Layers With Marinated Chicken, Flavoured With Rose And Kera Essence (Ittars) And Cooked On Slow Flame With The Top Sealed Tightly.', 200, '', '', '', 'rice', 'non veg', 'img.jpg', 'active'),
(24, 'food', 'Raita', 'Yoghurt Mix-Cucumber,Onion,Fresh Mint,Chopped Pineapple And Bhoondhi', 120, '', '', '', 'accompaniments', 'veg', 'img.jpg', 'active'),
(25, 'food', 'Masala Papad', 'Fried Lentil Crispies,Topped With Choppen Onion,Tomato,Green Chili And Cilantro', 80, '', '', '', 'accompaniments', 'veg', 'img.jpg', 'active'),
(26, 'food', 'Kulfi Falooda', 'Traditional Indian Ice Cream Flavored With Saffron And Pistachio Served With Falooda And Rabri', 90, '', '', '', 'desserts', 'veg', 'img.jpg', 'active'),
(27, 'food', 'Gulab Jamun', 'Deep Fried Roundels Of Cottage Cheese And Flour Soaked In Saffron Flavored Sugar Syrup', 90, '', '', '', 'desserts', 'veg', 'img.jpg', 'active'),
(50, 'photography', 'Vijayeesam Photography', '', 500, '', '', '', '', '', 'img1.jpg,img2.jpg,img3.jpg', 'active'),
(48, 'photography', 'Technovision', '', 500, '', '', '', '', '', 'img1.jpg,img2.jpg,img3.jpg', 'active'),
(49, 'photography', 'Varun Gavli Studio', '', 500, '', '', '', '', '', 'img1.jpg,img2.jpg,img3.jpg', 'active'),
(46, 'photography', 'Photo by the Wedding Ties', '', 500, '', '', '', '', '', 'img1.jpg,img2.jpg,img3.jpg', 'active'),
(47, 'photography', 'Suraj Studio', '', 500, '', '', '', '', '', 'img1.jpg,img2.jpg,img3.jpg', 'active'),
(45, 'photography', 'Parak Studio', '', 500, '', '', '', '', '', 'img1.jpg,img2.jpg,img3.jpg', 'active'),
(44, 'photography', 'Light Chamber', '', 500, '', '', '', '', '', 'img1.jpg,img2.jpg,img3.jpg', 'active'),
(43, 'photography', 'Daas Photography', '', 500, '', '', '', '', '', 'img1.jpg,img2.jpg,img3.jpg', 'active'),
(42, 'photography', 'Banga Studio', '', 500, '', '', '', '', '', 'img1.jpg,img2.jpg,img3.jpg', 'active'),
(41, 'photography', '90sBlack', '', 500, '', '', '', '', '', 'img1.jpg,img2.jpg,img3.jpg', 'active'),
(52, 'sound and lights', 'Absolut Lime', '', 500, '', '', '', '', '', 'img1.jpg,img2.jpg,img3.jpg', 'active'),
(53, 'sound and lights', 'D&S Djs', '', 500, '', '', '', '', '', 'img1.jpg,img2.jpg,img3.jpg', 'active'),
(54, 'sound and lights', 'Dj Ganesh', '', 500, '', '', '', '', '', 'img1.jpg,img2.jpg,img3.jpg', 'active'),
(55, 'sound and lights', 'Dj Santosh', '', 500, '', '', '', '', '', 'img1.jpg,img2.jpg,img3.jpg', 'active'),
(56, 'sound and lights', 'Dj Vibes', '', 500, '', '', '', '', '', 'img1.jpg,img2.jpg,img3.jpg', 'active'),
(57, 'sound and lights', 'Dj Wale Babu', '', 500, '', '', '', '', '', 'img1.jpg,img2.jpg,img3.jpg', 'active'),
(58, 'sound and lights', 'Elite Dj Planners', '', 500, '', '', '', '', '', 'img1.jpg,img2.jpg,img3.jpg', 'active'),
(59, 'sound and lights', 'Miami Djs', '', 500, '', '', '', '', '', 'img1.jpg,img2.jpg,img3.jpg', 'active'),
(60, 'sound and lights', 'Royal Djs', '', 500, '', '', '', '', '', 'img1.jpg,img2.jpg,img3.jpg', 'active'),
(61, 'sound and lights', 'RP Dj Wale', '', 500, '', '', '', '', '', 'img1.jpg,img2.jpg,img3.jpg', 'active'),
(67, 'food', ' SWEET POTATO TIKKI', 'Boiled, mashed sweet potatoes are spiced with few Indian spices and shaped into tikki (patty) and shallow fried in the pan. ', 170, '', '', '', 'appetizers', 'veg', 'j3.jpg', 'active'),
(76, 'food', 'PALAK CHAAT', 'Crispy spinach leaves are coated with gram flour batter and deep fried in the oil. Then topped with chutneys (green chutney and meethi chutney), yogurt, sev, chaat masala and coriander leaves.', 180, '', '', '', 'appetizers', 'veg', 'j4,jpg', 'active'),
(69, 'food', 'VEG LOLLYPOP', 'Stuffing of veggies and mixed well with mashed potatoes, with spicy soya sauce dip.', 170, '', '', '', 'appetizers', 'veg', 'j2.jpg', 'active'),
(70, 'food', 'BANG BANG CAULIFLOWER', 'Here panko breadcrumbs coated cauliflower florets are air-fried until crisp and tossed into sweet, spicy and creamy bang bang sauce. ', 175, '', '', '', 'appetizers', 'veg', 'j5.jpg', 'active'),
(71, 'food', 'Saag Paneer', 'The perfect dish to liven up any meal, this traditional spinach and paneer recipe is simply delicious with the warming flavours of our Madras Spice Paste.', 210, '', '', '', 'main course', 'veg', 'j6.jpg', 'active'),
(72, 'food', 'Tandoori Chicken Wings', 'Whether youâ€™re in the mood for a summer BBQ or a cozy baked meal, this recipe can be made in the oven or on the grill. Whichever method you choose will bring out the flavours of ginger, tamarind and tandoori spices in our Indian paste.', 195, '', '', '', 'tandoori and grills', 'non veg', 'j7.jpg', 'active'),
(73, 'food', 'Tandoori Chicken Salad', 'Chicken cooked in aromatic Indian spices served along with strawberries on a bed of salad.', 200, '', '', '', 'accompaniments', 'non veg', 'j8.jpg', 'active'),
(74, 'food', 'VEGETABLE KORMA', 'Korma is a perfect alternative to a mild Mango Chicken or a Pasanda Cooking Sauceâ€”sweet and flavoursome, with the flavours of Indian spice still really coming throughâ€”this is set to become a family favourite.', 200, '', '', '', 'main course', 'veg', 'j9.jpg', 'active'),
(75, 'food', 'Tandoori Roasted Eggplant', 'njoy the mix of deliciously warm eggplants, with fresh mint and Greek yogurt, with a snap of pomegranate to finish.', 210, '', '', '', 'tandoori and grills', 'veg', 'j10.jpg', 'active'),
(77, 'food', 'WARM LENTIL SALAD', '', 200, '', '', '', 'accompaniments', 'veg', 'j11.jpg', 'active'),
(78, 'food', 'LAMB KEBABS', 'Our lovely versatile Mild Curry Spice Paste brings the flavours of wonderful Indian spices to juicy, tender lamb- in a way that is tantalizingly tasty.', 240, '', '', '', 'tandoori and grills', 'non veg', 'j12.jpg', 'active'),
(79, 'food', 'MANGO CHUTNEY TOPPED SORBET', '', 210, '', '', '', 'desserts', 'veg', 'j13.jpg', 'active'),
(80, 'food', 'SAFFORAN SHEMIYA KHEER', '', 210, '', '', '', 'desserts', 'veg', 'j14.jpg', 'active'),
(81, 'food', 'MANGO SHRIKHAND', 'mildly sweetened yogurt is studded with mango pieces and served with a zesty mango salad.', 220, '', '', '', 'desserts', 'veg', 'j15.jpg', 'active'),
(82, 'food', 'SHAHI TUKDA', 'Marut Sikka whips up a rich, saffron infused shahi tudka from Awadh. ', 210, '', '', '', 'desserts', 'veg', 'j16.jpg', ''),
(83, 'food', 'KULFI', 'A popular frozen dessert that is sinfully rich, dense and creamy. Reduced milk flavoured with saffron, cardamom, pistachio and almonds, served chilled. ', 80, '', '', '', 'desserts', 'veg', 'j17.jpg', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
CREATE TABLE IF NOT EXISTS `state` (
  `state_id` int(11) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(20) NOT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`) VALUES
(1, 'maharashtra'),
(2, 'goa'),
(3, 'jammuandkashmir'),
(4, 'delhi'),
(5, 'kerala'),
(6, 'westbengal'),
(7, 'punjab'),
(8, 'gujarat'),
(9, 'telangana'),
(10, 'rajasthan');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `receipt_id` varchar(200) NOT NULL,
  `venue_name` varchar(200) NOT NULL,
  `venue_price` int(100) NOT NULL,
  `light_name` varchar(200) NOT NULL,
  `light_price` int(100) NOT NULL,
  `photo_name` varchar(200) NOT NULL,
  `photo_price` int(100) NOT NULL,
  `food_total` int(100) NOT NULL,
  `id_user` int(10) NOT NULL,
  PRIMARY KEY (`receipt_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`receipt_id`, `venue_name`, `venue_price`, `light_name`, `light_price`, `photo_name`, `photo_price`, `food_total`, `id_user`) VALUES
('121664628211', 'The Wedding University', 1, 'Dj Ganesh', 1, 'Banga Studio', 1, 1060, 12),
('111664628130', 'Maple Farm', 1, 'Royal Djs', 1, 'Technovision', 1, 975, 11),
('141664627842', 'Hyatt Regency', 1, 'Absolut Lime', 1, 'Parak Studio', 1, 625, 14);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(14, 'Eeshan Vaidya', 'eeshan.vaidya.professional@gmail.com', '8fc2ec7f679adacbea6398eb0550cf33'),
(13, 'Sakshi Chikorde', 'sakshichikorde16@gmail.com', '45aac7a3110c4b2cd98796bdacddf662'),
(11, 'Huzaifa Faizee', 'huzaifataherfaiz@gmail.com', '42102e50e0add62ec8d9aa459a4006dd'),
(12, 'Aditi Palkar', 'aditipalkar111@gmail.com', '214a4c70683d0aae3e4986d24e161a0f'),
(15, 'Atharva Karkar', 'atharvakarkar@gmail.com', '21d3a1dca28f770145988b339478620e'),
(16, 'Komal Shrimal', 'komalshrimal02@gmail.com', '974bd820a99809d664cfd455ea3d7ad5'),
(17, 'Atharva Joshi', 'atharvaj1302@gmail.com', '29e952e06576e04edf8c5f185c27023b'),
(18, 'Just A Boy', 'justaboy@gmail.com', 'bf14c12f94557bf7dcf2a089e38015c8'),
(50, 'Komal Balan', 'dsinha@yahoo.co.in', '31e819859f87b7b7411c0a19736dac18'),
(48, 'Radha Shetty', 'mutti.nutan@yahoo.com', 'c5b425c9d0ba727c1bbfb0bb00f63272'),
(47, 'Ujwal Mani', 'parminder39@nadig.org', '41a29e53e7f20ea416ef12ad2815ded2'),
(46, 'Anannya Parikh', 'feroz.verma@yahoo.com', 'be818db43d2f5db01a3a04649e12e70b'),
(38, 'Charlie Hayer', 'ubail@rediffmail.com', 'a23369bd115ecf51855b9b3bea43800e'),
(63, 'Robert Davis', 'robertdavis@gmail.com', '684c851af59965b680086b7b4896ff98'),
(71, 'Eeshan', 'eeshan.vaidya.professional@gmail.com', 'e2975ecce841ca98e5368e9471619cda'),
(72, 'eeshan.vaidya.professional@gmail.com', 'eeshan.vaidya.professional@gmail.com', '51aca628cbc7bb656eebc7aace9d98a1'),
(73, 'eeshan.vaidya.professional@gmail.com', 'eeshan.vaidya.professional@gmail.com', 'e2975ecce841ca98e5368e9471619cda'),
(74, 'eeshanvaidya14@gmail.com', 'eeshanvaidya14@gmail.com', '741051f1929216889aefe84d2a15cffa');

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--

DROP TABLE IF EXISTS `venue`;
CREATE TABLE IF NOT EXISTS `venue` (
  `venue_id` int(11) NOT NULL AUTO_INCREMENT,
  `venue_name` text NOT NULL,
  `price` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `state_id` int(11) NOT NULL,
  PRIMARY KEY (`venue_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Contains Venue Details';

--
-- Dumping data for table `venue`
--

INSERT INTO `venue` (`venue_id`, `venue_name`, `price`, `description`, `state_id`) VALUES
(1, 'taj hotel', 30000, ';sk;sajcjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjpodjpsdjalsd jdiilasjdkasbd lqwwidqiohdlqwdmqwldihqwid jsdlglmdlasihdbdnLSIPOWUIWDNaslk;ISHvba;kdkagdlsdk', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
