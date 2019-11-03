-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 03, 2019 at 12:08 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_favourite_things`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_info`
--

DROP TABLE IF EXISTS `tbl_info`;
CREATE TABLE IF NOT EXISTS `tbl_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ThingsID` varchar(10) NOT NULL,
  `Text` text NOT NULL,
  `Vitamins` varchar(60) NOT NULL,
  `Taste` varchar(50) NOT NULL,
  `Texture` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_info`
--

INSERT INTO `tbl_info` (`ID`, `ThingsID`, `Text`, `Vitamins`, `Taste`, `Texture`) VALUES
(1, '1', 'Dark chocolate is full of beneficial minerals such as potassium, zinc and selenium. bitter chocolate prevents and slows down the physiological aging process of brain cells. For this reason, this dessert is useful at any age. but it cannot be eaten in large quantities.', 'E, В1, В2, РР.', 'Sweet and bitter.', 'Crunchy and melty.'),
(2, '2', 'Blueberries contain many elements: carbohydrates, potassium, magnesium and phosphorus. Do not forget about organic acids, iron, copper and other minerals. Pantothenic acid, which promotes better metabolism, is also found in blueberries, as well as all sorts of vitamins.', 'А, В1, В6, С, РР.', 'Sour.', 'Juicy and firm.'),
(3, '3', 'Orange is the most common citrus crop in all tropical and subtropical regions of the world. Oranges can be eaten fresh, jams, marmalade, candied fruits are prepared from them, drinks and confectionery are flavored with them.', 'В, А, В1, В2, В5, В6, С, Н, РР.', 'Sweet and sour.', 'Juicy and dense.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_things`
--

DROP TABLE IF EXISTS `tbl_things`;
CREATE TABLE IF NOT EXISTS `tbl_things` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(20) NOT NULL,
  `Description` text NOT NULL,
  `Image` varchar(30) NOT NULL,
  `Calories` varchar(60) NOT NULL,
  `Type` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_things`
--

INSERT INTO `tbl_things` (`ID`, `Title`, `Description`, `Image`, `Calories`, `Type`) VALUES
(1, 'Chocolate ', 'Chocolate is the most popular dessert in the world. There is a widespread belief that chocolate improves mood — and it really does. The body reacts to the sweet treat enhanced production of happiness hormones - serotonin and endorphins, which relieve psychological stress and pain.', 'chocolate.jpg', '546 Calories per 100g', 'Dessert'),
(2, 'Blueberries', 'Blueberries are a wild berry that grows in the forest. This is not only a beautiful berry, but also very useful for the body. It turns out that it has a lot of vitamins and minerals. Dried blueberries are also useful and no less than its fresh counterpart. It has a lot of pectins.', 'blueberries.jpg', '57 Calories per 100g', 'Berry'),
(3, 'Oranges', 'Orange is an extremely useful fruit with a rich vitamin and mineral composition. Oranges are an excellent prevention of vitamin deficiency, strengthen the immune system, reduce cholesterol in the blood, have a beneficial effect on the cardiovascular system. Orange juice, like the whole fruit as a whole, has anti-inflammatory and antimicrobial action and tonic effect.', 'oranges.jpg', '43 Calories per 100g', 'Fruit');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
