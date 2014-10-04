-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 04, 2014 at 09:11 PM
-- Server version: 5.5.38-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sfakhar1_motolao_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_id` int(11) unsigned NOT NULL,
  `key` varchar(20) NOT NULL,
  `alt` varchar(150) DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `image_large` varchar(150) DEFAULT NULL,
  `video_tag_embedded_code` text,
  `create_time` datetime NOT NULL,
  `create_user_id` int(11) unsigned NOT NULL,
  `update_time` datetime NOT NULL,
  `update_user_id` int(11) unsigned NOT NULL,
  `activity_log` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `lang_id`, `key`, `alt`, `title`, `image_large`, `video_tag_embedded_code`, `create_time`, `create_user_id`, `update_time`, `update_user_id`, `activity_log`) VALUES
(1, 1, 'home', 'test', 'test', 'zc205mxcml.jpg', '', '2014-09-17 23:28:05', 1, '2014-09-24 23:56:43', 1, NULL),
(4, 2, 'home', 'sdsdds', 'dssd', '4f4gohwibe.jpg', '', '2014-09-18 00:26:00', 1, '2014-09-24 23:56:29', 1, NULL),
(5, 1, 'home', 'sfds', 'sdffds', '76pc6l0pkl.jpg', '', '2014-09-18 00:26:41', 1, '2014-09-24 23:56:12', 1, NULL),
(6, 1, 'gallery', 'Banner', 'Banner', 'mmavxj4fr2.jpg', '', '2014-09-24 23:48:44', 1, '2014-09-24 23:48:44', 1, NULL),
(7, 1, 'gallery', 'Banner 1', 'Banner 2', '4trg4e5shu.jpg', '', '2014-09-24 23:49:11', 1, '2014-09-24 23:49:11', 1, NULL),
(8, 1, 'gallery', 'Banner 3', 'Banner 3', 'sos24oezgu.jpg', '', '2014-09-24 23:49:46', 1, '2014-09-24 23:49:46', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `heading` varchar(150) DEFAULT NULL,
  `parent` int(11) DEFAULT '0',
  `url` varchar(150) DEFAULT NULL,
  `meta_title` varchar(150) DEFAULT NULL,
  `meta_description` text,
  `description` text,
  `create_time` datetime NOT NULL,
  `create_user_id` int(11) unsigned NOT NULL,
  `update_time` datetime NOT NULL,
  `update_user_id` int(11) unsigned NOT NULL,
  `activity_log` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `heading`, `parent`, `url`, `meta_title`, `meta_description`, `description`, `create_time`, `create_user_id`, `update_time`, `update_user_id`, `activity_log`) VALUES
(1, '4X4', 'OUR 4X4 TOURS', NULL, '4x4', '4X4', '4X4', '<p><span>We have a number of unique tours that are tailored to suit all levels of riders from beginners to the more experienced rider. All options are for riders longing to discover the &ldquo;real&rdquo; Laos off the beaten track... Amazing landscapes incorporating both dirt and asphalt roads make for an unforgettable riding adventure. You will experience rural life, waterfalls, the Lao countryside and other hidden treasures along the way. We have tours ranging from 1 day tours to 12 day tours. Should you not be able to find a tour that meets your requirements, we will be happy to create a tour that meets your specific needs and to your satisfaction.</span></p>', '2014-09-13 18:59:47', 1, '2014-09-30 00:05:32', 1, ''),
(2, 'Bikes', 'OUR BIKE TOURS', NULL, 'bikes', 'Bikes', 'Bikes', '<p><span>We have a number of unique tours that are tailored to suit all levels of riders from beginners to the more experienced rider. All options are for riders longing to discover the &ldquo;real&rdquo; Laos off the beaten track... Amazing landscapes incorporating both dirt and asphalt roads make for an unforgettable riding adventure. You will experience rural life, waterfalls, the Lao countryside and other hidden treasures along the way. We have tours ranging from 1 day tours to 12 day tours. Should you not be able to find a tour that meets your requirements, we will be happy to create a tour that meets your specific needs and to your satisfaction.</span></p>', '2014-09-13 19:00:07', 1, '2014-09-30 00:05:59', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `category_langs`
--

CREATE TABLE IF NOT EXISTS `category_langs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `heading` varchar(150) DEFAULT NULL,
  `lang_id` int(11) DEFAULT '0',
  `parent_id` int(11) DEFAULT '0',
  `url` varchar(150) DEFAULT NULL,
  `meta_title` varchar(150) DEFAULT NULL,
  `meta_description` text,
  `description` text,
  `create_time` datetime NOT NULL,
  `create_user_id` int(11) unsigned NOT NULL,
  `update_time` datetime NOT NULL,
  `update_user_id` int(11) unsigned NOT NULL,
  `activity_log` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `category_langs`
--

INSERT INTO `category_langs` (`id`, `name`, `heading`, `lang_id`, `parent_id`, `url`, `meta_title`, `meta_description`, `description`, `create_time`, `create_user_id`, `update_time`, `update_user_id`, `activity_log`) VALUES
(1, 'dsd', NULL, 2, 2, 'dssd', 'sdds', 'dsds', 'dsds', '2014-09-14 00:35:37', 1, '2014-09-14 00:35:37', 1, NULL),
(2, 'aa', NULL, 2, 2, 'dssd', 'sdds', 'dsdsds fds', 'dsds dsfsd ', '2014-09-14 01:00:50', 1, '2014-09-14 01:03:28', 1, NULL),
(3, 'dsd fdsfds', NULL, 2, 2, 'dssd', 'sdds', 'dsdsds fds dsdfs', 'dsds dsfsd ', '2014-09-14 01:01:00', 1, '2014-09-14 01:01:00', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `conf_misc`
--

CREATE TABLE IF NOT EXISTS `conf_misc` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `param` varchar(150) NOT NULL,
  `value` varchar(150) NOT NULL,
  `field_type` varchar(150) NOT NULL,
  `create_time` datetime NOT NULL,
  `create_user_id` int(11) unsigned NOT NULL,
  `update_time` datetime NOT NULL,
  `update_user_id` int(11) unsigned NOT NULL,
  `activity_log` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `conf_tour_types`
--

CREATE TABLE IF NOT EXISTS `conf_tour_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `create_time` datetime NOT NULL,
  `create_user_id` int(11) unsigned NOT NULL,
  `update_time` datetime NOT NULL,
  `update_user_id` int(11) unsigned NOT NULL,
  `activity_log` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `conf_tour_types`
--

INSERT INTO `conf_tour_types` (`id`, `name`, `create_time`, `create_user_id`, `update_time`, `update_user_id`, `activity_log`) VALUES
(1, 'test', '2014-09-19 01:08:08', 1, '2014-09-19 01:12:11', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `conf_tour_types_langs`
--

CREATE TABLE IF NOT EXISTS `conf_tour_types_langs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `lang_id` int(4) NOT NULL,
  `parent_id` int(4) NOT NULL,
  `create_time` datetime NOT NULL,
  `create_user_id` int(11) unsigned NOT NULL,
  `update_time` datetime NOT NULL,
  `update_user_id` int(11) unsigned NOT NULL,
  `activity_log` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `conf_tour_types_langs`
--

INSERT INTO `conf_tour_types_langs` (`id`, `name`, `lang_id`, `parent_id`, `create_time`, `create_user_id`, `update_time`, `update_user_id`, `activity_log`) VALUES
(1, 'test', 2, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL),
(2, 'test a ', 3, 1, '2014-09-19 01:30:16', 0, '2014-09-19 01:59:29', 1, NULL),
(3, 'dsds aa', 3, 1, '2014-09-20 00:13:56', 1, '2014-09-20 00:17:27', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE IF NOT EXISTS `faqs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_id` int(11) unsigned NOT NULL,
  `type` enum('faq','term') DEFAULT NULL,
  `css_class` enum('primary','success','warning') DEFAULT NULL,
  `question` varchar(250) DEFAULT NULL,
  `answer` text,
  `create_time` datetime NOT NULL,
  `create_user_id` int(11) unsigned NOT NULL,
  `update_time` datetime NOT NULL,
  `update_user_id` int(11) unsigned NOT NULL,
  `activity_log` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `lang_id`, `type`, `css_class`, `question`, `answer`, `create_time`, `create_user_id`, `update_time`, `update_user_id`, `activity_log`) VALUES
(1, 1, 'faq', 'primary', 'WHAT MOTORBIKE ACTIVITIES DO YOU OFFER?', '<p><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat</span></p>', '2014-09-18 23:45:26', 1, '2014-09-28 23:31:46', 1, NULL),
(2, 1, 'faq', 'success', 'WHAT IS THE LENGTH OF YOUR TOUR?', '<p><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat</span></p>', '2014-09-27 01:16:53', 1, '2014-09-27 01:56:35', 1, NULL),
(3, 1, 'faq', 'warning', 'HOW FLEXIBLE ARE YOU WITH THE ITINERARY?', '<p><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat</span></p>', '2014-09-27 01:17:15', 1, '2014-09-27 01:56:58', 1, NULL),
(4, 1, 'faq', 'success', 'HOW MUCH RIDING EXPERIENCE DO I NEED TO GO ON YOUR TOURS?', '<p><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat</span></p>', '2014-09-27 01:17:37', 1, '2014-09-27 01:57:02', 1, NULL),
(5, 1, 'faq', 'success', 'IS THERE AN AGE RESTRICTION TO BE ABLE TO GO ON YOUR TOURS?', '<p><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat</span></p>', '2014-09-27 01:17:54', 1, '2014-09-27 01:57:05', 1, NULL),
(6, 1, 'faq', 'success', 'HOW FAR DO WE RIDE IN A DAY?', '<p><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat</span></p>', '2014-09-27 01:18:10', 1, '2014-09-27 01:58:05', 1, NULL),
(7, 1, 'faq', 'warning', 'I HAVE FIXED DATES, BUT CANNOT FIND TOUR DEPARTURE DATES ON YOUR SITE?', '<p><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat</span></p>', '2014-09-27 01:18:27', 1, '2014-09-27 01:57:10', 1, NULL),
(8, 1, 'faq', 'success', 'WHEN IS THE BEST TIME TO DRIVE A MOTORBIKE IN LAOS?', '<p><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat</span></p>', '2014-09-27 01:18:39', 1, '2014-09-27 01:58:01', 1, NULL),
(9, 1, 'faq', 'warning', 'WHAT DO I EAT ON THE TOURS?', '<p><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat</span></p>', '2014-09-27 01:18:52', 1, '2014-09-27 01:57:14', 1, NULL),
(10, 1, 'faq', 'warning', 'WHERE WILL I STAY DURING MY TOUR?', '<p><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat</span></p>', '2014-09-27 01:19:06', 1, '2014-09-27 01:57:18', 1, NULL),
(11, 1, 'term', 'primary', 'BOOKINGS', '<p><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat</span></p>', '2014-09-28 22:32:14', 1, '2014-09-28 22:32:14', 1, NULL),
(12, 1, 'term', 'success', 'PAYMENT', '<p><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat</span></p>', '2014-09-28 22:32:46', 1, '2014-09-28 22:32:46', 1, NULL),
(13, 1, 'term', 'success', 'SERVICES AND MODIFICATION OF SERVICES', '<p><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat</span></p>', '2014-09-28 22:32:54', 1, '2014-09-28 22:32:54', 1, NULL),
(14, 1, 'term', 'success', 'CANCELLATON – AGENT/PARTNER BOOKING', '<p><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat</span></p>', '2014-09-28 22:33:02', 1, '2014-09-28 22:33:02', 1, NULL),
(15, 1, 'term', 'success', 'CANCELLATION FOR WALK IN CLIENTS / LAST MINUTE BOOKINGS', '<p><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat</span></p>', '2014-09-28 22:33:11', 1, '2014-09-28 22:33:11', 1, NULL),
(16, 1, 'term', 'success', 'WARRANTY', '<p><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat</span></p>', '2014-09-28 22:33:19', 1, '2014-09-28 22:33:19', 1, NULL),
(17, 1, 'term', 'success', 'VALIDITY, GENERAL CONDITIONS', '<p><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat</span></p>', '2014-09-28 22:33:26', 1, '2014-09-28 22:33:26', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_page_items`
--

CREATE TABLE IF NOT EXISTS `home_page_items` (
  `id` int(11) unsigned NOT NULL,
  `object_type` enum('diary','tour') NOT NULL,
  `lang_id` int(11) unsigned NOT NULL,
  `name` varchar(150) NOT NULL,
  `short_description` varchar(150) NOT NULL,
  `description` varchar(250) NOT NULL,
  `alt` varchar(150) DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `image_large` varchar(150) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `create_user_id` int(11) unsigned NOT NULL,
  `update_time` datetime NOT NULL,
  `update_user_id` int(11) unsigned NOT NULL,
  `activity_log` text,
  PRIMARY KEY (`id`,`lang_id`,`object_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_page_items`
--

INSERT INTO `home_page_items` (`id`, `object_type`, `lang_id`, `name`, `short_description`, `description`, `alt`, `title`, `image_large`, `create_time`, `create_user_id`, `update_time`, `update_user_id`, `activity_log`) VALUES
(2, 'tour', 1, 'test4X4 TOURS', 'Discover Laos on 4 wheels', '<p><span> Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut ', 'Discover Laos on 4 wheels', 'Discover Laos on 4 wheels', 'vh0rro71ga.jpg', '2014-10-01 00:48:43', 1, '2014-10-02 00:25:00', 1, NULL),
(5, 'diary', 1, 'RIVER CHALLENGE', 'Be part of our river challenge', '<p><span>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut a', 'dssdRiver Challenge', 'River Challenge', 'v5x0h69anb.jpg', '2014-10-02 00:11:14', 1, '2014-10-02 00:37:06', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inner_slider`
--

CREATE TABLE IF NOT EXISTS `inner_slider` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_id` int(11) unsigned NOT NULL,
  `key` varchar(20) NOT NULL,
  `alt` varchar(150) DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `image_large` varchar(150) DEFAULT NULL,
  `heading_box` varchar(150) DEFAULT NULL,
  `detail` text,
  `same_box` tinyint(1) DEFAULT '0',
  `create_time` datetime NOT NULL,
  `create_user_id` int(11) unsigned NOT NULL,
  `update_time` datetime NOT NULL,
  `update_user_id` int(11) unsigned NOT NULL,
  `activity_log` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `inner_slider`
--

INSERT INTO `inner_slider` (`id`, `lang_id`, `key`, `alt`, `title`, `image_large`, `heading_box`, `detail`, `same_box`, `create_time`, `create_user_id`, `update_time`, `update_user_id`, `activity_log`) VALUES
(1, 1, 'home', 'NEW BIKES ARRIVED!', 'NEW BIKES ARRIVED!', '98b3bl1c7v.png', 'NEW BIKES ARRIVED!', '<h4>The legendary Bullet 350 need no introduction. Now Bullet 350 is with all new Unit Construction Engine. We are proud to be the first and only tour company in Laos to provide these classic bikes.</h4>', 1, '2014-09-24 01:48:38', 1, '2014-09-27 01:00:56', 1, NULL),
(2, 1, 'home', 'NEW BIKES ARRIVED!', 'NEW BIKES ARRIVED!', '51cp9aymwq.png', 'NEW BIKES ARRIVED2!', '<h4>The legendary Bullet 350 need no introduction. Now Bullet 350 is with all new Unit Construction Engine. We are proud to be the first and only tour company in Laos to provide these classic bikes.</h4>', 1, '2014-09-24 01:49:22', 1, '2014-09-27 01:00:47', 1, NULL),
(3, 1, 'home', 'NEW BIKES ARRIVED!3', 'NEW BIKES ARRIVED!3', 'hg6wno75t8.png', 'NEW BIKES ARRIVED!3', '<h4>The legendary Bullet 350 need no introduction. Now Bullet 350 is with all new Unit Construction Engine. We are proud to be the first and only tour company in Laos to provide these classic bikes.</h4>', 1, '2014-09-24 01:51:50', 1, '2014-09-27 01:00:37', 1, NULL),
(4, 1, 'fleet', 'HONDA CRF250L 2014 1', 'HONDA CRF250L 2014 1', 'cbk6wa6ly5.png', 'HONDA CRF250L 2014 1', '<h4>The CRF250L is an awesome dual-sport machine that adds off-road capability to its on-road prowess. Honda CRF250L gives you a great upright seating position that&rsquo;s comfortable for longer rides, perfect for seeing your way through an urban traffic snarl or getting out on the trail. And if your town doesn&rsquo;t have enough money to fix those potholes or pavement patches, the CRF250L&rsquo;s long-travel suspension is built to handle them no problem.</h4>\r\n<h4>"Sure, the new CRF250L is super practical, offering great fuel economy. But even that&rsquo;s small potatoes compared to how much fun per gallon you&rsquo;ll have riding one.&rdquo;</h4>\r\n<h4 style="text-align: center;">www.powersports.honda.com</h4>', 0, '2014-09-27 01:08:07', 1, '2014-09-27 01:08:07', 1, NULL),
(5, 1, 'fleet', 'HONDA CRF250L 2014 2', 'HONDA CRF250L 2014 2', '11b6aqubt0.png', 'HONDA CRF250L 2014 2', '<h4>The CRF250L is an awesome dual-sport machine that adds off-road capability to its on-road prowess. Honda CRF250L gives you a great upright seating position that&rsquo;s comfortable for longer rides, perfect for seeing your way through an urban traffic snarl or getting out on the trail. And if your town doesn&rsquo;t have enough money to fix those potholes or pavement patches, the CRF250L&rsquo;s long-travel suspension is built to handle them no problem.</h4>\r\n<h4>"Sure, the new CRF250L is super practical, offering great fuel economy. But even that&rsquo;s small potatoes compared to how much fun per gallon you&rsquo;ll have riding one.&rdquo;</h4>\r\n<h4 style="text-align: center;">www.powersports1.honda.com</h4>', 0, '2014-09-27 01:09:35', 1, '2014-09-27 01:09:35', 1, NULL),
(6, 1, 'fleet', 'HONDA CRF250L 2014 3', 'HONDA CRF250L 2014 3', 'ido9dbusm6.png', 'HONDA CRF250L 2014 3', '<h4>The CRF250L is an awesome dual-sport machine that adds off-road capability to its on-road prowess. Honda CRF250L gives you a great upright seating position that&rsquo;s comfortable for longer rides, perfect for seeing your way through an urban traffic snarl or getting out on the trail. And if your town doesn&rsquo;t have enough money to fix those potholes or pavement patches, the CRF250L&rsquo;s long-travel suspension is built to handle them no problem.</h4>\r\n<h4>"Sure, the new CRF250L is super practical, offering great fuel economy. But even that&rsquo;s small potatoes compared to how much fun per gallon you&rsquo;ll have riding one.&rdquo;</h4>\r\n<h4 style="text-align: center;">www.powersports3.honda.com</h4>', 0, '2014-09-27 01:10:09', 1, '2014-09-27 01:10:09', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE IF NOT EXISTS `labels` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(50) DEFAULT NULL,
  `lang_id` int(11) unsigned NOT NULL,
  `key` varchar(150) DEFAULT NULL,
  `value` longtext,
  `create_time` datetime NOT NULL,
  `create_user_id` int(11) unsigned NOT NULL,
  `update_time` datetime NOT NULL,
  `update_user_id` int(11) unsigned NOT NULL,
  `activity_log` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1081 ;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`id`, `category`, `lang_id`, `key`, `value`, `create_time`, `create_user_id`, `update_time`, `update_user_id`, `activity_log`) VALUES
(1, 'home', 1, 'motolo-logo', 'Motolo Logo', '2014-10-04 20:40:44', 1, '2014-10-04 20:40:44', 1, NULL),
(2, 'home', 2, 'motolo-logo', 'Motolo Logo', '2014-10-04 20:40:44', 1, '2014-10-04 20:40:44', 1, NULL),
(3, 'home', 3, 'motolo-logo', 'Motolo Logo', '2014-10-04 20:40:45', 1, '2014-10-04 20:40:45', 1, NULL),
(4, 'home', 4, 'motolo-logo', 'Motolo Logo', '2014-10-04 20:40:45', 1, '2014-10-04 20:40:45', 1, NULL),
(5, 'home', 1, 'motolao-logo', 'Motolao Logo', '2014-10-04 20:40:45', 1, '2014-10-04 20:40:45', 1, NULL),
(6, 'home', 2, 'motolao-logo', 'Motolao Logo', '2014-10-04 20:40:45', 1, '2014-10-04 20:40:45', 1, NULL),
(7, 'home', 3, 'motolao-logo', 'Motolao Logo', '2014-10-04 20:40:45', 1, '2014-10-04 20:40:45', 1, NULL),
(8, 'home', 4, 'motolao-logo', 'Motolao Logo', '2014-10-04 20:40:45', 1, '2014-10-04 20:40:45', 1, NULL),
(9, 'home', 1, 'motolao', 'MOTOLAO', '2014-10-04 20:40:45', 1, '2014-10-04 20:40:45', 1, NULL),
(10, 'home', 2, 'motolao', 'MOTOLAO', '2014-10-04 20:40:45', 1, '2014-10-04 20:40:45', 1, NULL),
(11, 'home', 3, 'motolao', 'MOTOLAO', '2014-10-04 20:40:45', 1, '2014-10-04 20:40:45', 1, NULL),
(12, 'home', 4, 'motolao', 'MOTOLAO', '2014-10-04 20:40:45', 1, '2014-10-04 20:40:45', 1, NULL),
(13, 'home', 1, 'we-are-a-tour-company-that-prides-ourselves-in-hosting-successful-and-well-organized-on-road-and-off-road-motorcycle-and-4x4-adventure-tours-in-laos-o', 'We are a Tour company that prides ourselves in hosting successful and well organized on road and off road Motorcycle and 4x4 adventure tours in Laos. Our tours offer new adventures everyday and give riders a chance to journey on a road of self-discovery and to experience life-changing moments. Besides the exciting riding, other highlights of our tours include the chance to immerse oneself in the warm Laos culture and to experience the amazing natural beauty that Laos has to offer.', '2014-10-04 20:40:46', 1, '2014-10-04 20:40:46', 1, NULL),
(14, 'home', 2, 'we-are-a-tour-company-that-prides-ourselves-in-hosting-successful-and-well-organized-on-road-and-off-road-motorcycle-and-4x4-adventure-tours-in-laos-o', 'We are a Tour company that prides ourselves in hosting successful and well organized on road and off road Motorcycle and 4x4 adventure tours in Laos. Our tours offer new adventures everyday and give riders a chance to journey on a road of self-discovery and to experience life-changing moments. Besides the exciting riding, other highlights of our tours include the chance to immerse oneself in the warm Laos culture and to experience the amazing natural beauty that Laos has to offer.', '2014-10-04 20:40:46', 1, '2014-10-04 20:40:46', 1, NULL),
(15, 'home', 3, 'we-are-a-tour-company-that-prides-ourselves-in-hosting-successful-and-well-organized-on-road-and-off-road-motorcycle-and-4x4-adventure-tours-in-laos-o', 'We are a Tour company that prides ourselves in hosting successful and well organized on road and off road Motorcycle and 4x4 adventure tours in Laos. Our tours offer new adventures everyday and give riders a chance to journey on a road of self-discovery and to experience life-changing moments. Besides the exciting riding, other highlights of our tours include the chance to immerse oneself in the warm Laos culture and to experience the amazing natural beauty that Laos has to offer.', '2014-10-04 20:40:46', 1, '2014-10-04 20:40:46', 1, NULL),
(16, 'home', 4, 'we-are-a-tour-company-that-prides-ourselves-in-hosting-successful-and-well-organized-on-road-and-off-road-motorcycle-and-4x4-adventure-tours-in-laos-o', 'We are a Tour company that prides ourselves in hosting successful and well organized on road and off road Motorcycle and 4x4 adventure tours in Laos. Our tours offer new adventures everyday and give riders a chance to journey on a road of self-discovery and to experience life-changing moments. Besides the exciting riding, other highlights of our tours include the chance to immerse oneself in the warm Laos culture and to experience the amazing natural beauty that Laos has to offer.', '2014-10-04 20:40:46', 1, '2014-10-04 20:40:46', 1, NULL),
(17, 'home', 1, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:40:46', 1, '2014-10-04 20:40:46', 1, NULL),
(18, 'home', 2, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:40:46', 1, '2014-10-04 20:40:46', 1, NULL),
(19, 'home', 3, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:40:46', 1, '2014-10-04 20:40:46', 1, NULL),
(20, 'home', 4, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:40:47', 1, '2014-10-04 20:40:47', 1, NULL),
(21, 'home', 1, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:40:47', 1, '2014-10-04 20:40:47', 1, NULL),
(22, 'home', 2, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:40:47', 1, '2014-10-04 20:40:47', 1, NULL),
(23, 'home', 3, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:40:47', 1, '2014-10-04 20:40:47', 1, NULL),
(24, 'home', 4, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:40:47', 1, '2014-10-04 20:40:47', 1, NULL),
(25, 'home', 1, 'lao-motorcycle-dairies', 'LAO MOTORCYCLE DAIRIES', '2014-10-04 20:40:47', 1, '2014-10-04 20:40:47', 1, NULL),
(26, 'home', 2, 'lao-motorcycle-dairies', 'LAO MOTORCYCLE DAIRIES', '2014-10-04 20:40:47', 1, '2014-10-04 20:40:47', 1, NULL),
(27, 'home', 3, 'lao-motorcycle-dairies', 'LAO MOTORCYCLE DAIRIES', '2014-10-04 20:40:47', 1, '2014-10-04 20:40:47', 1, NULL),
(28, 'home', 4, 'lao-motorcycle-dairies', 'LAO MOTORCYCLE DAIRIES', '2014-10-04 20:40:47', 1, '2014-10-04 20:40:47', 1, NULL),
(29, 'home', 1, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:40:47', 1, '2014-10-04 20:40:47', 1, NULL),
(30, 'home', 2, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:40:48', 1, '2014-10-04 20:40:48', 1, NULL),
(31, 'home', 3, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:40:48', 1, '2014-10-04 20:40:48', 1, NULL),
(32, 'home', 4, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:40:48', 1, '2014-10-04 20:40:48', 1, NULL),
(33, 'home', 1, 'we-are-pleased-to-present-new-tour-packages', 'We are pleased to present new tour packages', '2014-10-04 20:40:48', 1, '2014-10-04 20:40:48', 1, NULL),
(34, 'home', 2, 'we-are-pleased-to-present-new-tour-packages', 'We are pleased to present new tour packages', '2014-10-04 20:40:48', 1, '2014-10-04 20:40:48', 1, NULL),
(35, 'home', 3, 'we-are-pleased-to-present-new-tour-packages', 'We are pleased to present new tour packages', '2014-10-04 20:40:48', 1, '2014-10-04 20:40:48', 1, NULL),
(36, 'home', 4, 'we-are-pleased-to-present-new-tour-packages', 'We are pleased to present new tour packages', '2014-10-04 20:40:48', 1, '2014-10-04 20:40:48', 1, NULL),
(37, 'home', 1, 'browse-our-diaries', 'Browse our diaries', '2014-10-04 20:40:48', 1, '2014-10-04 20:40:48', 1, NULL),
(38, 'home', 2, 'browse-our-diaries', 'Browse our diaries', '2014-10-04 20:40:48', 1, '2014-10-04 20:40:48', 1, NULL),
(39, 'home', 3, 'browse-our-diaries', 'Browse our diaries', '2014-10-04 20:40:48', 1, '2014-10-04 20:40:48', 1, NULL),
(40, 'home', 4, 'browse-our-diaries', 'Browse our diaries', '2014-10-04 20:40:49', 1, '2014-10-04 20:40:49', 1, NULL),
(41, 'home', 1, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:40:49', 1, '2014-10-04 20:40:49', 1, NULL),
(42, 'home', 2, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:40:49', 1, '2014-10-04 20:40:49', 1, NULL),
(43, 'home', 3, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:40:49', 1, '2014-10-04 20:40:49', 1, NULL),
(44, 'home', 4, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:40:49', 1, '2014-10-04 20:40:49', 1, NULL),
(45, 'home', 1, 'motolao-dairies-logo', 'Motolao Dairies Logo', '2014-10-04 20:40:49', 1, '2014-10-04 20:40:49', 1, NULL),
(46, 'home', 2, 'motolao-dairies-logo', 'Motolao Dairies Logo', '2014-10-04 20:40:49', 1, '2014-10-04 20:40:49', 1, NULL),
(47, 'home', 3, 'motolao-dairies-logo', 'Motolao Dairies Logo', '2014-10-04 20:40:49', 1, '2014-10-04 20:40:49', 1, NULL),
(48, 'home', 4, 'motolao-dairies-logo', 'Motolao Dairies Logo', '2014-10-04 20:40:49', 1, '2014-10-04 20:40:49', 1, NULL),
(49, 'home', 1, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:40:49', 1, '2014-10-04 20:40:49', 1, NULL),
(50, 'home', 2, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:40:50', 1, '2014-10-04 20:40:50', 1, NULL),
(51, 'home', 3, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:40:50', 1, '2014-10-04 20:40:50', 1, NULL),
(52, 'home', 4, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:40:50', 1, '2014-10-04 20:40:50', 1, NULL),
(53, 'home', 1, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:40:50', 1, '2014-10-04 20:40:50', 1, NULL),
(54, 'home', 2, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:40:50', 1, '2014-10-04 20:40:50', 1, NULL),
(55, 'home', 3, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:40:50', 1, '2014-10-04 20:40:50', 1, NULL),
(56, 'home', 4, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:40:51', 1, '2014-10-04 20:40:51', 1, NULL),
(57, 'home', 1, 'we-are-pleased-to-present-new-tour-packages', 'We are pleased to present new tour packages', '2014-10-04 20:40:51', 1, '2014-10-04 20:40:51', 1, NULL),
(58, 'home', 2, 'we-are-pleased-to-present-new-tour-packages', 'We are pleased to present new tour packages', '2014-10-04 20:40:51', 1, '2014-10-04 20:40:51', 1, NULL),
(59, 'home', 3, 'we-are-pleased-to-present-new-tour-packages', 'We are pleased to present new tour packages', '2014-10-04 20:40:51', 1, '2014-10-04 20:40:51', 1, NULL),
(60, 'home', 4, 'we-are-pleased-to-present-new-tour-packages', 'We are pleased to present new tour packages', '2014-10-04 20:40:52', 1, '2014-10-04 20:40:52', 1, NULL),
(61, 'home', 1, 'browse-our-diaries', 'Browse our diaries', '2014-10-04 20:40:52', 1, '2014-10-04 20:40:52', 1, NULL),
(62, 'home', 2, 'browse-our-diaries', 'Browse our diaries', '2014-10-04 20:40:52', 1, '2014-10-04 20:40:52', 1, NULL),
(63, 'home', 3, 'browse-our-diaries', 'Browse our diaries', '2014-10-04 20:40:52', 1, '2014-10-04 20:40:52', 1, NULL),
(64, 'home', 4, 'browse-our-diaries', 'Browse our diaries', '2014-10-04 20:40:52', 1, '2014-10-04 20:40:52', 1, NULL),
(65, 'home', 1, 'continue-reading', 'CONTINUE READING', '2014-10-04 20:40:52', 1, '2014-10-04 20:40:52', 1, NULL),
(66, 'home', 2, 'continue-reading', 'CONTINUE READING', '2014-10-04 20:40:52', 1, '2014-10-04 20:40:52', 1, NULL),
(67, 'home', 3, 'continue-reading', 'CONTINUE READING', '2014-10-04 20:40:52', 1, '2014-10-04 20:40:52', 1, NULL),
(68, 'home', 4, 'continue-reading', 'CONTINUE READING', '2014-10-04 20:40:52', 1, '2014-10-04 20:40:52', 1, NULL),
(69, 'links', 1, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:40:53', 1, '2014-10-04 20:40:53', 1, NULL),
(70, 'links', 2, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:40:53', 1, '2014-10-04 20:40:53', 1, NULL),
(71, 'links', 3, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:40:53', 1, '2014-10-04 20:40:53', 1, NULL),
(72, 'links', 4, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:40:53', 1, '2014-10-04 20:40:53', 1, NULL),
(73, 'links', 1, 'home', 'Home', '2014-10-04 20:40:53', 1, '2014-10-04 20:40:53', 1, NULL),
(74, 'links', 2, 'home', 'Home', '2014-10-04 20:40:53', 1, '2014-10-04 20:40:53', 1, NULL),
(75, 'links', 3, 'home', 'Home', '2014-10-04 20:40:53', 1, '2014-10-04 20:40:53', 1, NULL),
(76, 'links', 4, 'home', 'Home', '2014-10-04 20:40:53', 1, '2014-10-04 20:40:53', 1, NULL),
(77, 'links', 1, 'tours', 'Tours', '2014-10-04 20:40:53', 1, '2014-10-04 20:40:53', 1, NULL),
(78, 'links', 2, 'tours', 'Tours', '2014-10-04 20:40:53', 1, '2014-10-04 20:40:53', 1, NULL),
(79, 'links', 3, 'tours', 'Tours', '2014-10-04 20:40:54', 1, '2014-10-04 20:40:54', 1, NULL),
(80, 'links', 4, 'tours', 'Tours', '2014-10-04 20:40:54', 1, '2014-10-04 20:40:54', 1, NULL),
(81, 'links', 1, 'gallery', 'Gallery', '2014-10-04 20:40:54', 1, '2014-10-04 20:40:54', 1, NULL),
(82, 'links', 2, 'gallery', 'Gallery', '2014-10-04 20:40:54', 1, '2014-10-04 20:40:54', 1, NULL),
(83, 'links', 3, 'gallery', 'Gallery', '2014-10-04 20:40:54', 1, '2014-10-04 20:40:54', 1, NULL),
(84, 'links', 4, 'gallery', 'Gallery', '2014-10-04 20:40:55', 1, '2014-10-04 20:40:55', 1, NULL),
(85, 'links', 1, 'team', 'Team', '2014-10-04 20:40:56', 1, '2014-10-04 20:40:56', 1, NULL),
(86, 'links', 2, 'team', 'Team', '2014-10-04 20:40:56', 1, '2014-10-04 20:40:56', 1, NULL),
(87, 'links', 3, 'team', 'Team', '2014-10-04 20:40:56', 1, '2014-10-04 20:40:56', 1, NULL),
(88, 'links', 4, 'team', 'Team', '2014-10-04 20:40:56', 1, '2014-10-04 20:40:56', 1, NULL),
(89, 'links', 1, 'fleet', 'Fleet', '2014-10-04 20:40:56', 1, '2014-10-04 20:40:56', 1, NULL),
(90, 'links', 2, 'fleet', 'Fleet', '2014-10-04 20:40:56', 1, '2014-10-04 20:40:56', 1, NULL),
(91, 'links', 3, 'fleet', 'Fleet', '2014-10-04 20:40:57', 1, '2014-10-04 20:40:57', 1, NULL),
(92, 'links', 4, 'fleet', 'Fleet', '2014-10-04 20:40:57', 1, '2014-10-04 20:40:57', 1, NULL),
(93, 'links', 1, 'dairies', 'Dairies', '2014-10-04 20:40:57', 1, '2014-10-04 20:40:57', 1, NULL),
(94, 'links', 2, 'dairies', 'Dairies', '2014-10-04 20:40:57', 1, '2014-10-04 20:40:57', 1, NULL),
(95, 'links', 3, 'dairies', 'Dairies', '2014-10-04 20:40:57', 1, '2014-10-04 20:40:57', 1, NULL),
(96, 'links', 4, 'dairies', 'Dairies', '2014-10-04 20:40:57', 1, '2014-10-04 20:40:57', 1, NULL),
(97, 'links', 1, 'faq', 'Faq', '2014-10-04 20:40:57', 1, '2014-10-04 20:40:57', 1, NULL),
(98, 'links', 2, 'faq', 'Faq', '2014-10-04 20:40:57', 1, '2014-10-04 20:40:57', 1, NULL),
(99, 'links', 3, 'faq', 'Faq', '2014-10-04 20:40:57', 1, '2014-10-04 20:40:57', 1, NULL),
(100, 'links', 4, 'faq', 'Faq', '2014-10-04 20:40:58', 1, '2014-10-04 20:40:58', 1, NULL),
(101, 'links', 1, 'contact', 'Contact', '2014-10-04 20:40:58', 1, '2014-10-04 20:40:58', 1, NULL),
(102, 'links', 2, 'contact', 'Contact', '2014-10-04 20:40:58', 1, '2014-10-04 20:40:58', 1, NULL),
(103, 'links', 3, 'contact', 'Contact', '2014-10-04 20:40:58', 1, '2014-10-04 20:40:58', 1, NULL),
(104, 'links', 4, 'contact', 'Contact', '2014-10-04 20:40:58', 1, '2014-10-04 20:40:58', 1, NULL),
(105, 'links', 1, 'en', 'EN', '2014-10-04 20:40:58', 1, '2014-10-04 20:40:58', 1, NULL),
(106, 'links', 2, 'en', 'EN', '2014-10-04 20:40:58', 1, '2014-10-04 20:40:58', 1, NULL),
(107, 'links', 3, 'en', 'EN', '2014-10-04 20:40:58', 1, '2014-10-04 20:40:58', 1, NULL),
(108, 'links', 4, 'en', 'EN', '2014-10-04 20:40:58', 1, '2014-10-04 20:40:58', 1, NULL),
(109, 'links', 1, 'de', 'DE', '2014-10-04 20:40:58', 1, '2014-10-04 20:40:58', 1, NULL),
(110, 'links', 2, 'de', 'DE', '2014-10-04 20:40:59', 1, '2014-10-04 20:40:59', 1, NULL),
(111, 'links', 3, 'de', 'DE', '2014-10-04 20:40:59', 1, '2014-10-04 20:40:59', 1, NULL),
(112, 'links', 4, 'de', 'DE', '2014-10-04 20:40:59', 1, '2014-10-04 20:40:59', 1, NULL),
(113, 'links', 1, 'fr', 'FR', '2014-10-04 20:40:59', 1, '2014-10-04 20:40:59', 1, NULL),
(114, 'links', 2, 'fr', 'FR', '2014-10-04 20:40:59', 1, '2014-10-04 20:40:59', 1, NULL),
(115, 'links', 3, 'fr', 'FR', '2014-10-04 20:40:59', 1, '2014-10-04 20:40:59', 1, NULL),
(116, 'links', 4, 'fr', 'FR', '2014-10-04 20:40:59', 1, '2014-10-04 20:40:59', 1, NULL),
(117, 'links', 1, 'about-us', 'ABOUT US', '2014-10-04 20:40:59', 1, '2014-10-04 20:40:59', 1, NULL),
(118, 'links', 2, 'about-us', 'ABOUT US', '2014-10-04 20:40:59', 1, '2014-10-04 20:40:59', 1, NULL),
(119, 'links', 3, 'about-us', 'ABOUT US', '2014-10-04 20:40:59', 1, '2014-10-04 20:40:59', 1, NULL),
(120, 'links', 4, 'about-us', 'ABOUT US', '2014-10-04 20:41:00', 1, '2014-10-04 20:41:00', 1, NULL),
(121, 'links', 1, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:41:00', 1, '2014-10-04 20:41:00', 1, NULL),
(122, 'links', 2, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:41:00', 1, '2014-10-04 20:41:00', 1, NULL),
(123, 'links', 3, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:41:00', 1, '2014-10-04 20:41:00', 1, NULL),
(124, 'links', 4, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:41:00', 1, '2014-10-04 20:41:00', 1, NULL),
(125, 'links', 1, 'sitemap', 'SITEMAP', '2014-10-04 20:41:00', 1, '2014-10-04 20:41:00', 1, NULL),
(126, 'links', 2, 'sitemap', 'SITEMAP', '2014-10-04 20:41:00', 1, '2014-10-04 20:41:00', 1, NULL),
(127, 'links', 3, 'sitemap', 'SITEMAP', '2014-10-04 20:41:00', 1, '2014-10-04 20:41:00', 1, NULL),
(128, 'links', 4, 'sitemap', 'SITEMAP', '2014-10-04 20:41:00', 1, '2014-10-04 20:41:00', 1, NULL),
(129, 'layout', 1, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:41:00', 1, '2014-10-04 20:41:00', 1, NULL),
(130, 'layout', 2, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:41:01', 1, '2014-10-04 20:41:01', 1, NULL),
(131, 'layout', 3, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:41:01', 1, '2014-10-04 20:41:01', 1, NULL),
(132, 'layout', 4, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:41:01', 1, '2014-10-04 20:41:01', 1, NULL),
(133, 'home', 1, 'motolo-logo', 'Motolo Logo', '2014-10-04 20:42:27', 1, '2014-10-04 20:42:27', 1, NULL),
(134, 'home', 2, 'motolo-logo', 'Motolo Logo', '2014-10-04 20:42:27', 1, '2014-10-04 20:42:27', 1, NULL),
(135, 'home', 3, 'motolo-logo', 'Motolo Logo', '2014-10-04 20:42:28', 1, '2014-10-04 20:42:28', 1, NULL),
(136, 'home', 4, 'motolo-logo', 'Motolo Logo', '2014-10-04 20:42:28', 1, '2014-10-04 20:42:28', 1, NULL),
(137, 'home', 1, 'motolao-logo', 'Motolao Logo', '2014-10-04 20:42:28', 1, '2014-10-04 20:42:28', 1, NULL),
(138, 'home', 2, 'motolao-logo', 'Motolao Logo', '2014-10-04 20:42:28', 1, '2014-10-04 20:42:28', 1, NULL),
(139, 'home', 3, 'motolao-logo', 'Motolao Logo', '2014-10-04 20:42:28', 1, '2014-10-04 20:42:28', 1, NULL),
(140, 'home', 4, 'motolao-logo', 'Motolao Logo', '2014-10-04 20:42:28', 1, '2014-10-04 20:42:28', 1, NULL),
(141, 'home', 1, 'we-are-a-tour-company-that-prides-ourselves-in-hosting-successful-and-well-organized-on-road-and-off-road-motorcycle-and-4x4-adventure-tours-in-laos-o', 'We are a Tour company that prides ourselves in hosting successful and well organized on road and off road Motorcycle and 4x4 adventure tours in Laos. Our tours offer new adventures everyday and give riders a chance to journey on a road of self-discovery and to experience life-changing moments. Besides the exciting riding, other highlights of our tours include the chance to immerse oneself in the warm Laos culture and to experience the amazing natural beauty that Laos has to offer.', '2014-10-04 20:42:28', 1, '2014-10-04 20:42:28', 1, NULL),
(142, 'home', 2, 'we-are-a-tour-company-that-prides-ourselves-in-hosting-successful-and-well-organized-on-road-and-off-road-motorcycle-and-4x4-adventure-tours-in-laos-o', 'We are a Tour company that prides ourselves in hosting successful and well organized on road and off road Motorcycle and 4x4 adventure tours in Laos. Our tours offer new adventures everyday and give riders a chance to journey on a road of self-discovery and to experience life-changing moments. Besides the exciting riding, other highlights of our tours include the chance to immerse oneself in the warm Laos culture and to experience the amazing natural beauty that Laos has to offer.', '2014-10-04 20:42:28', 1, '2014-10-04 20:42:28', 1, NULL),
(143, 'home', 3, 'we-are-a-tour-company-that-prides-ourselves-in-hosting-successful-and-well-organized-on-road-and-off-road-motorcycle-and-4x4-adventure-tours-in-laos-o', 'We are a Tour company that prides ourselves in hosting successful and well organized on road and off road Motorcycle and 4x4 adventure tours in Laos. Our tours offer new adventures everyday and give riders a chance to journey on a road of self-discovery and to experience life-changing moments. Besides the exciting riding, other highlights of our tours include the chance to immerse oneself in the warm Laos culture and to experience the amazing natural beauty that Laos has to offer.', '2014-10-04 20:42:28', 1, '2014-10-04 20:42:28', 1, NULL),
(144, 'home', 4, 'we-are-a-tour-company-that-prides-ourselves-in-hosting-successful-and-well-organized-on-road-and-off-road-motorcycle-and-4x4-adventure-tours-in-laos-o', 'We are a Tour company that prides ourselves in hosting successful and well organized on road and off road Motorcycle and 4x4 adventure tours in Laos. Our tours offer new adventures everyday and give riders a chance to journey on a road of self-discovery and to experience life-changing moments. Besides the exciting riding, other highlights of our tours include the chance to immerse oneself in the warm Laos culture and to experience the amazing natural beauty that Laos has to offer.', '2014-10-04 20:42:28', 1, '2014-10-04 20:42:28', 1, NULL),
(145, 'home', 1, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:42:29', 1, '2014-10-04 20:42:29', 1, NULL),
(146, 'home', 2, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:42:29', 1, '2014-10-04 20:42:29', 1, NULL),
(147, 'home', 3, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:42:29', 1, '2014-10-04 20:42:29', 1, NULL),
(148, 'home', 4, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:42:29', 1, '2014-10-04 20:42:29', 1, NULL),
(149, 'home', 1, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:42:29', 1, '2014-10-04 20:42:29', 1, NULL),
(150, 'home', 2, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:42:29', 1, '2014-10-04 20:42:29', 1, NULL),
(151, 'home', 3, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:42:29', 1, '2014-10-04 20:42:29', 1, NULL),
(152, 'home', 4, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:42:29', 1, '2014-10-04 20:42:29', 1, NULL),
(153, 'home', 1, 'lao-motorcycle-dairies', 'LAO MOTORCYCLE DAIRIES', '2014-10-04 20:42:29', 1, '2014-10-04 20:42:29', 1, NULL),
(154, 'home', 2, 'lao-motorcycle-dairies', 'LAO MOTORCYCLE DAIRIES', '2014-10-04 20:42:30', 1, '2014-10-04 20:42:30', 1, NULL),
(155, 'home', 3, 'lao-motorcycle-dairies', 'LAO MOTORCYCLE DAIRIES', '2014-10-04 20:42:30', 1, '2014-10-04 20:42:30', 1, NULL),
(156, 'home', 4, 'lao-motorcycle-dairies', 'LAO MOTORCYCLE DAIRIES', '2014-10-04 20:42:30', 1, '2014-10-04 20:42:30', 1, NULL),
(157, 'home', 1, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:42:30', 1, '2014-10-04 20:42:30', 1, NULL),
(158, 'home', 2, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:42:30', 1, '2014-10-04 20:42:30', 1, NULL),
(159, 'home', 3, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:42:30', 1, '2014-10-04 20:42:30', 1, NULL),
(160, 'home', 4, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:42:30', 1, '2014-10-04 20:42:30', 1, NULL),
(161, 'home', 1, 'we-are-pleased-to-present-new-tour-packages', 'We are pleased to present new tour packages', '2014-10-04 20:42:30', 1, '2014-10-04 20:42:30', 1, NULL),
(162, 'home', 2, 'we-are-pleased-to-present-new-tour-packages', 'We are pleased to present new tour packages', '2014-10-04 20:42:30', 1, '2014-10-04 20:42:30', 1, NULL),
(163, 'home', 3, 'we-are-pleased-to-present-new-tour-packages', 'We are pleased to present new tour packages', '2014-10-04 20:42:30', 1, '2014-10-04 20:42:30', 1, NULL),
(164, 'home', 4, 'we-are-pleased-to-present-new-tour-packages', 'We are pleased to present new tour packages', '2014-10-04 20:42:31', 1, '2014-10-04 20:42:31', 1, NULL),
(165, 'home', 1, 'browse-our-diaries', 'Browse our diaries', '2014-10-04 20:42:31', 1, '2014-10-04 20:42:31', 1, NULL),
(166, 'home', 2, 'browse-our-diaries', 'Browse our diaries', '2014-10-04 20:42:31', 1, '2014-10-04 20:42:31', 1, NULL),
(167, 'home', 3, 'browse-our-diaries', 'Browse our diaries', '2014-10-04 20:42:31', 1, '2014-10-04 20:42:31', 1, NULL),
(168, 'home', 4, 'browse-our-diaries', 'Browse our diaries', '2014-10-04 20:42:31', 1, '2014-10-04 20:42:31', 1, NULL),
(169, 'home', 1, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:42:31', 1, '2014-10-04 20:42:31', 1, NULL),
(170, 'home', 2, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:42:31', 1, '2014-10-04 20:42:31', 1, NULL),
(171, 'home', 3, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:42:31', 1, '2014-10-04 20:42:31', 1, NULL),
(172, 'home', 4, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:42:31', 1, '2014-10-04 20:42:31', 1, NULL),
(173, 'home', 1, 'motolao-dairies-logo', 'Motolao Dairies Logo', '2014-10-04 20:42:32', 1, '2014-10-04 20:42:32', 1, NULL),
(174, 'home', 2, 'motolao-dairies-logo', 'Motolao Dairies Logo', '2014-10-04 20:42:32', 1, '2014-10-04 20:42:32', 1, NULL),
(175, 'home', 3, 'motolao-dairies-logo', 'Motolao Dairies Logo', '2014-10-04 20:42:32', 1, '2014-10-04 20:42:32', 1, NULL),
(176, 'home', 4, 'motolao-dairies-logo', 'Motolao Dairies Logo', '2014-10-04 20:42:32', 1, '2014-10-04 20:42:32', 1, NULL),
(177, 'home', 1, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:42:33', 1, '2014-10-04 20:42:33', 1, NULL),
(178, 'home', 2, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:42:33', 1, '2014-10-04 20:42:33', 1, NULL),
(179, 'home', 3, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:42:33', 1, '2014-10-04 20:42:33', 1, NULL),
(180, 'home', 4, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:42:33', 1, '2014-10-04 20:42:33', 1, NULL),
(181, 'home', 1, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:42:33', 1, '2014-10-04 20:42:33', 1, NULL),
(182, 'home', 2, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:42:34', 1, '2014-10-04 20:42:34', 1, NULL),
(183, 'home', 3, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:42:34', 1, '2014-10-04 20:42:34', 1, NULL),
(184, 'home', 4, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:42:34', 1, '2014-10-04 20:42:34', 1, NULL),
(185, 'home', 1, 'we-are-pleased-to-present-new-tour-packages', 'We are pleased to present new tour packages', '2014-10-04 20:42:34', 1, '2014-10-04 20:42:34', 1, NULL),
(186, 'home', 2, 'we-are-pleased-to-present-new-tour-packages', 'We are pleased to present new tour packages', '2014-10-04 20:42:34', 1, '2014-10-04 20:42:34', 1, NULL),
(187, 'home', 3, 'we-are-pleased-to-present-new-tour-packages', 'We are pleased to present new tour packages', '2014-10-04 20:42:35', 1, '2014-10-04 20:42:35', 1, NULL),
(188, 'home', 4, 'we-are-pleased-to-present-new-tour-packages', 'We are pleased to present new tour packages', '2014-10-04 20:42:35', 1, '2014-10-04 20:42:35', 1, NULL),
(189, 'home', 1, 'browse-our-diaries', 'Browse our diaries', '2014-10-04 20:42:35', 1, '2014-10-04 20:42:35', 1, NULL),
(190, 'home', 2, 'browse-our-diaries', 'Browse our diaries', '2014-10-04 20:42:35', 1, '2014-10-04 20:42:35', 1, NULL),
(191, 'home', 3, 'browse-our-diaries', 'Browse our diaries', '2014-10-04 20:42:35', 1, '2014-10-04 20:42:35', 1, NULL),
(192, 'home', 4, 'browse-our-diaries', 'Browse our diaries', '2014-10-04 20:42:35', 1, '2014-10-04 20:42:35', 1, NULL),
(193, 'home', 1, 'continue-reading', 'CONTINUE READING', '2014-10-04 20:42:35', 1, '2014-10-04 20:42:35', 1, NULL),
(194, 'home', 2, 'continue-reading', 'CONTINUE READING', '2014-10-04 20:42:35', 1, '2014-10-04 20:42:35', 1, NULL),
(195, 'home', 3, 'continue-reading', 'CONTINUE READING', '2014-10-04 20:42:35', 1, '2014-10-04 20:42:35', 1, NULL),
(196, 'home', 4, 'continue-reading', 'CONTINUE READING', '2014-10-04 20:42:35', 1, '2014-10-04 20:42:35', 1, NULL),
(197, 'links', 1, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:42:36', 1, '2014-10-04 20:42:36', 1, NULL),
(198, 'links', 2, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:42:36', 1, '2014-10-04 20:42:36', 1, NULL),
(199, 'links', 3, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:42:36', 1, '2014-10-04 20:42:36', 1, NULL),
(200, 'links', 4, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:42:36', 1, '2014-10-04 20:42:36', 1, NULL),
(201, 'links', 1, 'about-us', 'ABOUT US', '2014-10-04 20:42:36', 1, '2014-10-04 20:42:36', 1, NULL),
(202, 'links', 2, 'about-us', 'ABOUT US', '2014-10-04 20:42:36', 1, '2014-10-04 20:42:36', 1, NULL),
(203, 'links', 3, 'about-us', 'ABOUT US', '2014-10-04 20:42:36', 1, '2014-10-04 20:42:36', 1, NULL),
(204, 'links', 4, 'about-us', 'ABOUT US', '2014-10-04 20:42:36', 1, '2014-10-04 20:42:36', 1, NULL),
(205, 'links', 1, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:42:37', 1, '2014-10-04 20:42:37', 1, NULL),
(206, 'links', 2, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:42:37', 1, '2014-10-04 20:42:37', 1, NULL),
(207, 'links', 3, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:42:37', 1, '2014-10-04 20:42:37', 1, NULL),
(208, 'links', 4, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:42:37', 1, '2014-10-04 20:42:37', 1, NULL),
(209, 'layout', 1, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:42:37', 1, '2014-10-04 20:42:37', 1, NULL),
(210, 'layout', 2, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:42:37', 1, '2014-10-04 20:42:37', 1, NULL),
(211, 'layout', 3, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:42:38', 1, '2014-10-04 20:42:38', 1, NULL),
(212, 'layout', 4, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:42:38', 1, '2014-10-04 20:42:38', 1, NULL),
(213, 'category', 1, '4x4', '4X4', '2014-10-04 20:45:13', 1, '2014-10-04 20:45:13', 1, NULL),
(214, 'category', 2, '4x4', '4X4', '2014-10-04 20:45:13', 1, '2014-10-04 20:45:13', 1, NULL),
(215, 'category', 3, '4x4', '4X4', '2014-10-04 20:45:13', 1, '2014-10-04 20:45:13', 1, NULL),
(216, 'category', 4, '4x4', '4X4', '2014-10-04 20:45:13', 1, '2014-10-04 20:45:13', 1, NULL),
(217, 'category', 1, 'view-4x4-tours', 'VIEW 4X4 TOURS', '2014-10-04 20:45:13', 1, '2014-10-04 20:45:13', 1, NULL),
(218, 'category', 2, 'view-4x4-tours', 'VIEW 4X4 TOURS', '2014-10-04 20:45:13', 1, '2014-10-04 20:45:13', 1, NULL),
(219, 'category', 3, 'view-4x4-tours', 'VIEW 4X4 TOURS', '2014-10-04 20:45:14', 1, '2014-10-04 20:45:14', 1, NULL),
(220, 'category', 4, 'view-4x4-tours', 'VIEW 4X4 TOURS', '2014-10-04 20:45:14', 1, '2014-10-04 20:45:14', 1, NULL),
(221, 'category', 1, 'quick-search', 'Quick Search', '2014-10-04 20:45:14', 1, '2014-10-04 20:45:14', 1, NULL),
(222, 'category', 2, 'quick-search', 'Quick Search', '2014-10-04 20:45:14', 1, '2014-10-04 20:45:14', 1, NULL),
(223, 'category', 3, 'quick-search', 'Quick Search', '2014-10-04 20:45:14', 1, '2014-10-04 20:45:14', 1, NULL),
(224, 'category', 4, 'quick-search', 'Quick Search', '2014-10-04 20:45:14', 1, '2014-10-04 20:45:14', 1, NULL),
(225, 'category', 1, 'continue-reading', 'CONTINUE READING', '2014-10-04 20:45:14', 1, '2014-10-04 20:45:14', 1, NULL),
(226, 'category', 2, 'continue-reading', 'CONTINUE READING', '2014-10-04 20:45:14', 1, '2014-10-04 20:45:14', 1, NULL),
(227, 'category', 3, 'continue-reading', 'CONTINUE READING', '2014-10-04 20:45:15', 1, '2014-10-04 20:45:15', 1, NULL),
(228, 'category', 4, 'continue-reading', 'CONTINUE READING', '2014-10-04 20:45:15', 1, '2014-10-04 20:45:15', 1, NULL),
(229, 'category', 1, 'contact-us', 'CONTACT US', '2014-10-04 20:45:15', 1, '2014-10-04 20:45:15', 1, NULL),
(230, 'category', 2, 'contact-us', 'CONTACT US', '2014-10-04 20:45:15', 1, '2014-10-04 20:45:15', 1, NULL),
(231, 'category', 3, 'contact-us', 'CONTACT US', '2014-10-04 20:45:15', 1, '2014-10-04 20:45:15', 1, NULL),
(232, 'category', 4, 'contact-us', 'CONTACT US', '2014-10-04 20:45:16', 1, '2014-10-04 20:45:16', 1, NULL),
(233, 'category', 1, 'continue-reading', 'CONTINUE READING', '2014-10-04 20:45:16', 1, '2014-10-04 20:45:16', 1, NULL),
(234, 'category', 2, 'continue-reading', 'CONTINUE READING', '2014-10-04 20:45:16', 1, '2014-10-04 20:45:16', 1, NULL),
(235, 'category', 3, 'continue-reading', 'CONTINUE READING', '2014-10-04 20:45:16', 1, '2014-10-04 20:45:16', 1, NULL),
(236, 'category', 4, 'continue-reading', 'CONTINUE READING', '2014-10-04 20:45:16', 1, '2014-10-04 20:45:16', 1, NULL),
(237, 'category', 1, 'contact-us', 'CONTACT US', '2014-10-04 20:45:16', 1, '2014-10-04 20:45:16', 1, NULL),
(238, 'category', 2, 'contact-us', 'CONTACT US', '2014-10-04 20:45:16', 1, '2014-10-04 20:45:16', 1, NULL),
(239, 'category', 3, 'contact-us', 'CONTACT US', '2014-10-04 20:45:16', 1, '2014-10-04 20:45:16', 1, NULL),
(240, 'category', 4, 'contact-us', 'CONTACT US', '2014-10-04 20:45:16', 1, '2014-10-04 20:45:16', 1, NULL),
(241, 'category', 1, 'continue-reading', 'CONTINUE READING', '2014-10-04 20:45:17', 1, '2014-10-04 20:45:17', 1, NULL),
(242, 'category', 2, 'continue-reading', 'CONTINUE READING', '2014-10-04 20:45:17', 1, '2014-10-04 20:45:17', 1, NULL),
(243, 'category', 3, 'continue-reading', 'CONTINUE READING', '2014-10-04 20:45:17', 1, '2014-10-04 20:45:17', 1, NULL),
(244, 'category', 4, 'continue-reading', 'CONTINUE READING', '2014-10-04 20:45:17', 1, '2014-10-04 20:45:17', 1, NULL),
(245, 'category', 1, 'contact-us', 'CONTACT US', '2014-10-04 20:45:17', 1, '2014-10-04 20:45:17', 1, NULL),
(246, 'category', 2, 'contact-us', 'CONTACT US', '2014-10-04 20:45:17', 1, '2014-10-04 20:45:17', 1, NULL),
(247, 'category', 3, 'contact-us', 'CONTACT US', '2014-10-04 20:45:17', 1, '2014-10-04 20:45:17', 1, NULL),
(248, 'category', 4, 'contact-us', 'CONTACT US', '2014-10-04 20:45:17', 1, '2014-10-04 20:45:17', 1, NULL),
(249, 'category', 1, 'continue-reading', 'CONTINUE READING', '2014-10-04 20:45:17', 1, '2014-10-04 20:45:17', 1, NULL),
(250, 'category', 2, 'continue-reading', 'CONTINUE READING', '2014-10-04 20:45:18', 1, '2014-10-04 20:45:18', 1, NULL),
(251, 'category', 3, 'continue-reading', 'CONTINUE READING', '2014-10-04 20:45:18', 1, '2014-10-04 20:45:18', 1, NULL),
(252, 'category', 4, 'continue-reading', 'CONTINUE READING', '2014-10-04 20:45:18', 1, '2014-10-04 20:45:18', 1, NULL),
(253, 'category', 1, 'contact-us', 'CONTACT US', '2014-10-04 20:45:18', 1, '2014-10-04 20:45:18', 1, NULL),
(254, 'category', 2, 'contact-us', 'CONTACT US', '2014-10-04 20:45:18', 1, '2014-10-04 20:45:18', 1, NULL),
(255, 'category', 3, 'contact-us', 'CONTACT US', '2014-10-04 20:45:18', 1, '2014-10-04 20:45:18', 1, NULL),
(256, 'category', 4, 'contact-us', 'CONTACT US', '2014-10-04 20:45:18', 1, '2014-10-04 20:45:18', 1, NULL),
(257, 'links', 1, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:45:19', 1, '2014-10-04 20:45:19', 1, NULL),
(258, 'links', 2, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:45:19', 1, '2014-10-04 20:45:19', 1, NULL),
(259, 'links', 3, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:45:19', 1, '2014-10-04 20:45:19', 1, NULL),
(260, 'links', 4, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:45:19', 1, '2014-10-04 20:45:19', 1, NULL),
(261, 'links', 1, 'about-us', 'ABOUT US', '2014-10-04 20:45:19', 1, '2014-10-04 20:45:19', 1, NULL),
(262, 'links', 2, 'about-us', 'ABOUT US', '2014-10-04 20:45:19', 1, '2014-10-04 20:45:19', 1, NULL),
(263, 'links', 3, 'about-us', 'ABOUT US', '2014-10-04 20:45:20', 1, '2014-10-04 20:45:20', 1, NULL),
(264, 'links', 4, 'about-us', 'ABOUT US', '2014-10-04 20:45:20', 1, '2014-10-04 20:45:20', 1, NULL),
(265, 'links', 1, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:45:20', 1, '2014-10-04 20:45:20', 1, NULL),
(266, 'links', 2, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:45:20', 1, '2014-10-04 20:45:20', 1, NULL),
(267, 'links', 3, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:45:20', 1, '2014-10-04 20:45:20', 1, NULL),
(268, 'links', 4, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:45:20', 1, '2014-10-04 20:45:20', 1, NULL),
(269, 'layout', 1, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:45:20', 1, '2014-10-04 20:45:20', 1, NULL),
(270, 'layout', 2, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:45:20', 1, '2014-10-04 20:45:20', 1, NULL),
(271, 'layout', 3, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:45:20', 1, '2014-10-04 20:45:20', 1, NULL),
(272, 'layout', 4, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:45:21', 1, '2014-10-04 20:45:21', 1, NULL),
(273, 'category', 1, 'bikes', 'Bikes', '2014-10-04 20:45:15', 1, '2014-10-04 20:45:15', 1, NULL),
(274, 'category', 2, 'bikes', 'Bikes', '2014-10-04 20:45:21', 1, '2014-10-04 20:45:21', 1, NULL),
(275, 'category', 3, 'bikes', 'Bikes', '2014-10-04 20:45:22', 1, '2014-10-04 20:45:22', 1, NULL),
(276, 'category', 4, 'bikes', 'Bikes', '2014-10-04 20:45:22', 1, '2014-10-04 20:45:22', 1, NULL),
(277, 'category', 1, 'view-bikes-tours', 'VIEW Bikes TOURS', '2014-10-04 20:45:22', 1, '2014-10-04 20:45:22', 1, NULL),
(278, 'category', 2, 'view-bikes-tours', 'VIEW Bikes TOURS', '2014-10-04 20:45:22', 1, '2014-10-04 20:45:22', 1, NULL),
(279, 'category', 3, 'view-bikes-tours', 'VIEW Bikes TOURS', '2014-10-04 20:45:22', 1, '2014-10-04 20:45:22', 1, NULL),
(280, 'category', 4, 'view-bikes-tours', 'VIEW Bikes TOURS', '2014-10-04 20:45:22', 1, '2014-10-04 20:45:22', 1, NULL),
(281, 'category', 1, 'quick-search', 'Quick Search', '2014-10-04 20:45:22', 1, '2014-10-04 20:45:22', 1, NULL),
(282, 'category', 2, 'quick-search', 'Quick Search', '2014-10-04 20:45:22', 1, '2014-10-04 20:45:22', 1, NULL),
(283, 'category', 3, 'quick-search', 'Quick Search', '2014-10-04 20:45:23', 1, '2014-10-04 20:45:23', 1, NULL),
(284, 'category', 4, 'quick-search', 'Quick Search', '2014-10-04 20:45:23', 1, '2014-10-04 20:45:23', 1, NULL),
(285, 'links', 1, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:45:23', 1, '2014-10-04 20:45:23', 1, NULL),
(286, 'links', 2, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:45:23', 1, '2014-10-04 20:45:23', 1, NULL),
(287, 'links', 3, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:45:24', 1, '2014-10-04 20:45:24', 1, NULL),
(288, 'links', 4, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:45:24', 1, '2014-10-04 20:45:24', 1, NULL),
(289, 'links', 1, 'about-us', 'ABOUT US', '2014-10-04 20:45:24', 1, '2014-10-04 20:45:24', 1, NULL),
(290, 'links', 2, 'about-us', 'ABOUT US', '2014-10-04 20:45:25', 1, '2014-10-04 20:45:25', 1, NULL),
(291, 'links', 3, 'about-us', 'ABOUT US', '2014-10-04 20:45:25', 1, '2014-10-04 20:45:25', 1, NULL),
(292, 'links', 4, 'about-us', 'ABOUT US', '2014-10-04 20:45:25', 1, '2014-10-04 20:45:25', 1, NULL),
(293, 'links', 1, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:45:25', 1, '2014-10-04 20:45:25', 1, NULL),
(294, 'links', 2, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:45:25', 1, '2014-10-04 20:45:25', 1, NULL),
(295, 'links', 3, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:45:26', 1, '2014-10-04 20:45:26', 1, NULL),
(296, 'links', 4, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:45:26', 1, '2014-10-04 20:45:26', 1, NULL),
(297, 'layout', 1, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:45:26', 1, '2014-10-04 20:45:26', 1, NULL),
(298, 'layout', 2, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:45:27', 1, '2014-10-04 20:45:27', 1, NULL),
(299, 'layout', 3, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:45:27', 1, '2014-10-04 20:45:27', 1, NULL),
(300, 'layout', 4, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:45:27', 1, '2014-10-04 20:45:27', 1, NULL),
(301, 'gallery', 1, 'gallery-logo', 'Gallery Logo', '2014-10-04 20:45:16', 1, '2014-10-04 20:45:16', 1, NULL),
(302, 'gallery', 2, 'gallery-logo', 'Gallery Logo', '2014-10-04 20:45:27', 1, '2014-10-04 20:45:27', 1, NULL),
(303, 'gallery', 3, 'gallery-logo', 'Gallery Logo', '2014-10-04 20:45:28', 1, '2014-10-04 20:45:28', 1, NULL),
(304, 'gallery', 4, 'gallery-logo', 'Gallery Logo', '2014-10-04 20:45:28', 1, '2014-10-04 20:45:28', 1, NULL),
(305, 'gallery', 1, 'gallery-logo', 'Gallery Logo', '2014-10-04 20:45:28', 1, '2014-10-04 20:45:28', 1, NULL),
(306, 'gallery', 2, 'gallery-logo', 'Gallery Logo', '2014-10-04 20:45:28', 1, '2014-10-04 20:45:28', 1, NULL),
(307, 'gallery', 3, 'gallery-logo', 'Gallery Logo', '2014-10-04 20:45:28', 1, '2014-10-04 20:45:28', 1, NULL),
(308, 'gallery', 4, 'gallery-logo', 'Gallery Logo', '2014-10-04 20:45:28', 1, '2014-10-04 20:45:28', 1, NULL),
(309, 'gallery', 1, 'motolao-gallery', 'MOTOLAO GALLERY', '2014-10-04 20:45:28', 1, '2014-10-04 20:45:28', 1, NULL),
(310, 'gallery', 2, 'motolao-gallery', 'MOTOLAO GALLERY', '2014-10-04 20:45:28', 1, '2014-10-04 20:45:28', 1, NULL),
(311, 'gallery', 3, 'motolao-gallery', 'MOTOLAO GALLERY', '2014-10-04 20:45:29', 1, '2014-10-04 20:45:29', 1, NULL),
(312, 'gallery', 4, 'motolao-gallery', 'MOTOLAO GALLERY', '2014-10-04 20:45:29', 1, '2014-10-04 20:45:29', 1, NULL),
(313, 'gallery', 1, 'gallery-summary', 'Gallery Summary', '2014-10-04 20:45:29', 1, '2014-10-04 20:45:29', 1, NULL),
(314, 'gallery', 2, 'gallery-summary', 'Gallery Summary', '2014-10-04 20:45:29', 1, '2014-10-04 20:45:29', 1, NULL),
(315, 'gallery', 3, 'gallery-summary', 'Gallery Summary', '2014-10-04 20:45:30', 1, '2014-10-04 20:45:30', 1, NULL),
(316, 'gallery', 4, 'gallery-summary', 'Gallery Summary', '2014-10-04 20:45:30', 1, '2014-10-04 20:45:30', 1, NULL),
(317, 'gallery', 1, 'load-more', 'Load more', '2014-10-04 20:45:30', 1, '2014-10-04 20:45:30', 1, NULL),
(318, 'gallery', 2, 'load-more', 'Load more', '2014-10-04 20:45:30', 1, '2014-10-04 20:45:30', 1, NULL),
(319, 'gallery', 3, 'load-more', 'Load more', '2014-10-04 20:45:30', 1, '2014-10-04 20:45:30', 1, NULL),
(320, 'gallery', 4, 'load-more', 'Load more', '2014-10-04 20:45:31', 1, '2014-10-04 20:45:31', 1, NULL),
(321, 'links', 1, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:45:31', 1, '2014-10-04 20:45:31', 1, NULL),
(322, 'links', 2, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:45:31', 1, '2014-10-04 20:45:31', 1, NULL),
(323, 'links', 3, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:45:31', 1, '2014-10-04 20:45:31', 1, NULL),
(324, 'links', 4, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:45:31', 1, '2014-10-04 20:45:31', 1, NULL),
(325, 'links', 1, 'about-us', 'ABOUT US', '2014-10-04 20:45:32', 1, '2014-10-04 20:45:32', 1, NULL),
(326, 'links', 2, 'about-us', 'ABOUT US', '2014-10-04 20:45:32', 1, '2014-10-04 20:45:32', 1, NULL),
(327, 'links', 3, 'about-us', 'ABOUT US', '2014-10-04 20:45:32', 1, '2014-10-04 20:45:32', 1, NULL),
(328, 'links', 4, 'about-us', 'ABOUT US', '2014-10-04 20:45:32', 1, '2014-10-04 20:45:32', 1, NULL),
(329, 'links', 1, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:45:32', 1, '2014-10-04 20:45:32', 1, NULL),
(330, 'links', 2, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:45:32', 1, '2014-10-04 20:45:32', 1, NULL),
(331, 'links', 3, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:45:32', 1, '2014-10-04 20:45:32', 1, NULL),
(332, 'links', 4, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:45:32', 1, '2014-10-04 20:45:32', 1, NULL),
(333, 'layout', 1, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:45:32', 1, '2014-10-04 20:45:32', 1, NULL),
(334, 'layout', 2, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:45:33', 1, '2014-10-04 20:45:33', 1, NULL),
(335, 'layout', 3, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:45:33', 1, '2014-10-04 20:45:33', 1, NULL),
(336, 'layout', 4, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:45:33', 1, '2014-10-04 20:45:33', 1, NULL),
(337, 'team', 1, 'team-logo', 'Team Logo', '2014-10-04 20:45:17', 1, '2014-10-04 20:45:17', 1, NULL),
(338, 'team', 2, 'team-logo', 'Team Logo', '2014-10-04 20:45:33', 1, '2014-10-04 20:45:33', 1, NULL),
(339, 'team', 3, 'team-logo', 'Team Logo', '2014-10-04 20:45:34', 1, '2014-10-04 20:45:34', 1, NULL),
(340, 'team', 4, 'team-logo', 'Team Logo', '2014-10-04 20:45:34', 1, '2014-10-04 20:45:34', 1, NULL),
(341, 'team', 1, 'team-logo', 'Team Logo', '2014-10-04 20:45:34', 1, '2014-10-04 20:45:34', 1, NULL),
(342, 'team', 2, 'team-logo', 'Team Logo', '2014-10-04 20:45:34', 1, '2014-10-04 20:45:34', 1, NULL),
(343, 'team', 3, 'team-logo', 'Team Logo', '2014-10-04 20:45:34', 1, '2014-10-04 20:45:34', 1, NULL),
(344, 'team', 4, 'team-logo', 'Team Logo', '2014-10-04 20:45:34', 1, '2014-10-04 20:45:34', 1, NULL),
(345, 'team', 1, 'team-about-us', 'Team About Us', '2014-10-04 20:45:34', 1, '2014-10-04 20:45:34', 1, NULL),
(346, 'team', 2, 'team-about-us', 'Team About Us', '2014-10-04 20:45:34', 1, '2014-10-04 20:45:34', 1, NULL),
(347, 'team', 3, 'team-about-us', 'Team About Us', '2014-10-04 20:45:34', 1, '2014-10-04 20:45:34', 1, NULL),
(348, 'team', 4, 'team-about-us', 'Team About Us', '2014-10-04 20:45:35', 1, '2014-10-04 20:45:35', 1, NULL),
(349, 'team', 1, 'team-summary', 'Team Summary', '2014-10-04 20:45:35', 1, '2014-10-04 20:45:35', 1, NULL),
(350, 'team', 2, 'team-summary', 'Team Summary', '2014-10-04 20:45:35', 1, '2014-10-04 20:45:35', 1, NULL),
(351, 'team', 3, 'team-summary', 'Team Summary', '2014-10-04 20:45:36', 1, '2014-10-04 20:45:36', 1, NULL),
(352, 'team', 4, 'team-summary', 'Team Summary', '2014-10-04 20:45:36', 1, '2014-10-04 20:45:36', 1, NULL),
(353, 'links', 1, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:45:36', 1, '2014-10-04 20:45:36', 1, NULL),
(354, 'links', 2, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:45:36', 1, '2014-10-04 20:45:36', 1, NULL),
(355, 'links', 3, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:45:36', 1, '2014-10-04 20:45:36', 1, NULL),
(356, 'links', 4, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:45:36', 1, '2014-10-04 20:45:36', 1, NULL),
(357, 'links', 1, 'about-us', 'ABOUT US', '2014-10-04 20:45:37', 1, '2014-10-04 20:45:37', 1, NULL),
(358, 'links', 2, 'about-us', 'ABOUT US', '2014-10-04 20:45:37', 1, '2014-10-04 20:45:37', 1, NULL),
(359, 'links', 3, 'about-us', 'ABOUT US', '2014-10-04 20:45:37', 1, '2014-10-04 20:45:37', 1, NULL),
(360, 'links', 4, 'about-us', 'ABOUT US', '2014-10-04 20:45:38', 1, '2014-10-04 20:45:38', 1, NULL),
(361, 'links', 1, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:45:38', 1, '2014-10-04 20:45:38', 1, NULL),
(362, 'links', 2, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:45:38', 1, '2014-10-04 20:45:38', 1, NULL),
(363, 'links', 3, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:45:38', 1, '2014-10-04 20:45:38', 1, NULL),
(364, 'links', 4, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:45:38', 1, '2014-10-04 20:45:38', 1, NULL),
(365, 'layout', 1, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:45:38', 1, '2014-10-04 20:45:38', 1, NULL),
(366, 'layout', 2, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:45:38', 1, '2014-10-04 20:45:38', 1, NULL),
(367, 'layout', 3, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:45:38', 1, '2014-10-04 20:45:38', 1, NULL),
(368, 'layout', 4, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:45:39', 1, '2014-10-04 20:45:39', 1, NULL),
(369, 'fleet', 1, 'fleet-logo', 'Fleet Logo', '2014-10-04 20:45:18', 1, '2014-10-04 20:45:18', 1, NULL),
(370, 'fleet', 2, 'fleet-logo', 'Fleet Logo', '2014-10-04 20:45:39', 1, '2014-10-04 20:45:39', 1, NULL),
(371, 'fleet', 3, 'fleet-logo', 'Fleet Logo', '2014-10-04 20:45:39', 1, '2014-10-04 20:45:39', 1, NULL),
(372, 'fleet', 4, 'fleet-logo', 'Fleet Logo', '2014-10-04 20:45:40', 1, '2014-10-04 20:45:40', 1, NULL),
(373, 'fleet', 1, 'fleet-logo', 'Fleet Logo', '2014-10-04 20:45:40', 1, '2014-10-04 20:45:40', 1, NULL),
(374, 'fleet', 2, 'fleet-logo', 'Fleet Logo', '2014-10-04 20:45:40', 1, '2014-10-04 20:45:40', 1, NULL),
(375, 'fleet', 3, 'fleet-logo', 'Fleet Logo', '2014-10-04 20:45:40', 1, '2014-10-04 20:45:40', 1, NULL),
(376, 'fleet', 4, 'fleet-logo', 'Fleet Logo', '2014-10-04 20:45:40', 1, '2014-10-04 20:45:40', 1, NULL),
(377, 'fleet', 1, 'motolao-fleet', 'Motolao Fleet', '2014-10-04 20:45:40', 1, '2014-10-04 20:45:40', 1, NULL),
(378, 'fleet', 2, 'motolao-fleet', 'Motolao Fleet', '2014-10-04 20:45:41', 1, '2014-10-04 20:45:41', 1, NULL);
INSERT INTO `labels` (`id`, `category`, `lang_id`, `key`, `value`, `create_time`, `create_user_id`, `update_time`, `update_user_id`, `activity_log`) VALUES
(379, 'fleet', 3, 'motolao-fleet', 'Motolao Fleet', '2014-10-04 20:45:41', 1, '2014-10-04 20:45:41', 1, NULL),
(380, 'fleet', 4, 'motolao-fleet', 'Motolao Fleet', '2014-10-04 20:45:41', 1, '2014-10-04 20:45:41', 1, NULL),
(381, 'fleet', 1, 'our-slelection', 'Our slelection', '2014-10-04 20:45:42', 1, '2014-10-04 20:45:42', 1, NULL),
(382, 'fleet', 2, 'our-slelection', 'Our slelection', '2014-10-04 20:45:42', 1, '2014-10-04 20:45:42', 1, NULL),
(383, 'fleet', 3, 'our-slelection', 'Our slelection', '2014-10-04 20:45:42', 1, '2014-10-04 20:45:42', 1, NULL),
(384, 'fleet', 4, 'our-slelection', 'Our slelection', '2014-10-04 20:45:43', 1, '2014-10-04 20:45:43', 1, NULL),
(385, 'links', 1, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:45:43', 1, '2014-10-04 20:45:43', 1, NULL),
(386, 'links', 2, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:45:43', 1, '2014-10-04 20:45:43', 1, NULL),
(387, 'links', 3, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:45:43', 1, '2014-10-04 20:45:43', 1, NULL),
(388, 'links', 4, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:45:43', 1, '2014-10-04 20:45:43', 1, NULL),
(389, 'links', 1, 'about-us', 'ABOUT US', '2014-10-04 20:45:44', 1, '2014-10-04 20:45:44', 1, NULL),
(390, 'links', 2, 'about-us', 'ABOUT US', '2014-10-04 20:45:45', 1, '2014-10-04 20:45:45', 1, NULL),
(391, 'links', 3, 'about-us', 'ABOUT US', '2014-10-04 20:45:45', 1, '2014-10-04 20:45:45', 1, NULL),
(392, 'links', 4, 'about-us', 'ABOUT US', '2014-10-04 20:45:45', 1, '2014-10-04 20:45:45', 1, NULL),
(393, 'links', 1, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:45:46', 1, '2014-10-04 20:45:46', 1, NULL),
(394, 'links', 2, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:45:46', 1, '2014-10-04 20:45:46', 1, NULL),
(395, 'links', 3, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:45:46', 1, '2014-10-04 20:45:46', 1, NULL),
(396, 'links', 4, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:45:46', 1, '2014-10-04 20:45:46', 1, NULL),
(397, 'layout', 1, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:45:46', 1, '2014-10-04 20:45:46', 1, NULL),
(398, 'layout', 2, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:45:46', 1, '2014-10-04 20:45:46', 1, NULL),
(399, 'layout', 3, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:45:46', 1, '2014-10-04 20:45:46', 1, NULL),
(400, 'layout', 4, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:45:46', 1, '2014-10-04 20:45:46', 1, NULL),
(401, 'dairies', 1, 'dairy-logo', 'Dairy Logo', '2014-10-04 20:45:20', 1, '2014-10-04 20:45:20', 1, NULL),
(402, 'dairies', 2, 'dairy-logo', 'Dairy Logo', '2014-10-04 20:45:47', 1, '2014-10-04 20:45:47', 1, NULL),
(403, 'dairies', 3, 'dairy-logo', 'Dairy Logo', '2014-10-04 20:45:47', 1, '2014-10-04 20:45:47', 1, NULL),
(404, 'dairies', 4, 'dairy-logo', 'Dairy Logo', '2014-10-04 20:45:47', 1, '2014-10-04 20:45:47', 1, NULL),
(405, 'dairies', 1, 'dairy-logo', 'Dairy Logo', '2014-10-04 20:45:47', 1, '2014-10-04 20:45:47', 1, NULL),
(406, 'dairies', 2, 'dairy-logo', 'Dairy Logo', '2014-10-04 20:45:47', 1, '2014-10-04 20:45:47', 1, NULL),
(407, 'dairies', 3, 'dairy-logo', 'Dairy Logo', '2014-10-04 20:45:47', 1, '2014-10-04 20:45:47', 1, NULL),
(408, 'dairies', 4, 'dairy-logo', 'Dairy Logo', '2014-10-04 20:45:48', 1, '2014-10-04 20:45:48', 1, NULL),
(409, 'dairies', 1, 'lao-motorcyle-dairies', 'LAO MOTORCYLE DAIRIES', '2014-10-04 20:45:48', 1, '2014-10-04 20:45:48', 1, NULL),
(410, 'dairies', 2, 'lao-motorcyle-dairies', 'LAO MOTORCYLE DAIRIES', '2014-10-04 20:45:48', 1, '2014-10-04 20:45:48', 1, NULL),
(411, 'dairies', 3, 'lao-motorcyle-dairies', 'LAO MOTORCYLE DAIRIES', '2014-10-04 20:45:48', 1, '2014-10-04 20:45:48', 1, NULL),
(412, 'dairies', 4, 'lao-motorcyle-dairies', 'LAO MOTORCYLE DAIRIES', '2014-10-04 20:45:48', 1, '2014-10-04 20:45:48', 1, NULL),
(413, 'dairies', 1, 'dairies-summary', 'DAIRIES Summary', '2014-10-04 20:45:49', 1, '2014-10-04 20:45:49', 1, NULL),
(414, 'dairies', 2, 'dairies-summary', 'DAIRIES Summary', '2014-10-04 20:45:50', 1, '2014-10-04 20:45:50', 1, NULL),
(415, 'dairies', 3, 'dairies-summary', 'DAIRIES Summary', '2014-10-04 20:45:50', 1, '2014-10-04 20:45:50', 1, NULL),
(416, 'dairies', 4, 'dairies-summary', 'DAIRIES Summary', '2014-10-04 20:45:50', 1, '2014-10-04 20:45:50', 1, NULL),
(417, 'links', 1, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:45:50', 1, '2014-10-04 20:45:50', 1, NULL),
(418, 'links', 2, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:45:50', 1, '2014-10-04 20:45:50', 1, NULL),
(419, 'links', 3, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:45:50', 1, '2014-10-04 20:45:50', 1, NULL),
(420, 'links', 4, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:45:51', 1, '2014-10-04 20:45:51', 1, NULL),
(421, 'links', 1, 'about-us', 'ABOUT US', '2014-10-04 20:45:51', 1, '2014-10-04 20:45:51', 1, NULL),
(422, 'links', 2, 'about-us', 'ABOUT US', '2014-10-04 20:45:51', 1, '2014-10-04 20:45:51', 1, NULL),
(423, 'links', 3, 'about-us', 'ABOUT US', '2014-10-04 20:45:51', 1, '2014-10-04 20:45:51', 1, NULL),
(424, 'links', 4, 'about-us', 'ABOUT US', '2014-10-04 20:45:51', 1, '2014-10-04 20:45:51', 1, NULL),
(425, 'links', 1, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:45:52', 1, '2014-10-04 20:45:52', 1, NULL),
(426, 'links', 2, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:45:52', 1, '2014-10-04 20:45:52', 1, NULL),
(427, 'links', 3, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:45:52', 1, '2014-10-04 20:45:52', 1, NULL),
(428, 'links', 4, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:45:52', 1, '2014-10-04 20:45:52', 1, NULL),
(429, 'layout', 1, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:45:52', 1, '2014-10-04 20:45:52', 1, NULL),
(430, 'layout', 2, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:45:52', 1, '2014-10-04 20:45:52', 1, NULL),
(431, 'layout', 3, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:45:52', 1, '2014-10-04 20:45:52', 1, NULL),
(432, 'layout', 4, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:45:52', 1, '2014-10-04 20:45:52', 1, NULL),
(433, 'contact', 1, 'contact-logo', 'Contact Logo', '2014-10-04 20:45:27', 1, '2014-10-04 20:45:27', 1, NULL),
(434, 'contact', 2, 'contact-logo', 'Contact Logo', '2014-10-04 20:45:53', 1, '2014-10-04 20:45:53', 1, NULL),
(435, 'contact', 3, 'contact-logo', 'Contact Logo', '2014-10-04 20:45:53', 1, '2014-10-04 20:45:53', 1, NULL),
(436, 'contact', 4, 'contact-logo', 'Contact Logo', '2014-10-04 20:45:54', 1, '2014-10-04 20:45:54', 1, NULL),
(437, 'contact', 1, 'contact-logo', 'Contact Logo', '2014-10-04 20:45:54', 1, '2014-10-04 20:45:54', 1, NULL),
(438, 'contact', 2, 'contact-logo', 'Contact Logo', '2014-10-04 20:45:54', 1, '2014-10-04 20:45:54', 1, NULL),
(439, 'contact', 3, 'contact-logo', 'Contact Logo', '2014-10-04 20:45:54', 1, '2014-10-04 20:45:54', 1, NULL),
(440, 'contact', 4, 'contact-logo', 'Contact Logo', '2014-10-04 20:45:54', 1, '2014-10-04 20:45:54', 1, NULL),
(441, 'contact', 1, 'get-in-contact-with-us', 'Get in contact with us', '2014-10-04 20:45:54', 1, '2014-10-04 20:45:54', 1, NULL),
(442, 'contact', 2, 'get-in-contact-with-us', 'Get in contact with us', '2014-10-04 20:45:55', 1, '2014-10-04 20:45:55', 1, NULL),
(443, 'contact', 3, 'get-in-contact-with-us', 'Get in contact with us', '2014-10-04 20:45:55', 1, '2014-10-04 20:45:55', 1, NULL),
(444, 'contact', 4, 'get-in-contact-with-us', 'Get in contact with us', '2014-10-04 20:45:55', 1, '2014-10-04 20:45:55', 1, NULL),
(445, 'contact', 1, 'contact-summary', 'contact Summary', '2014-10-04 20:45:56', 1, '2014-10-04 20:45:56', 1, NULL),
(446, 'contact', 2, 'contact-summary', 'contact Summary', '2014-10-04 20:45:56', 1, '2014-10-04 20:45:56', 1, NULL),
(447, 'contact', 3, 'contact-summary', 'contact Summary', '2014-10-04 20:45:56', 1, '2014-10-04 20:45:56', 1, NULL),
(448, 'contact', 4, 'contact-summary', 'contact Summary', '2014-10-04 20:45:57', 1, '2014-10-04 20:45:57', 1, NULL),
(449, 'contact', 1, 'verification-code', 'Verification Code', '2014-10-04 20:45:57', 1, '2014-10-04 20:45:57', 1, NULL),
(450, 'contact', 2, 'verification-code', 'Verification Code', '2014-10-04 20:45:57', 1, '2014-10-04 20:45:57', 1, NULL),
(451, 'contact', 3, 'verification-code', 'Verification Code', '2014-10-04 20:45:57', 1, '2014-10-04 20:45:57', 1, NULL),
(452, 'contact', 4, 'verification-code', 'Verification Code', '2014-10-04 20:45:57', 1, '2014-10-04 20:45:57', 1, NULL),
(453, 'contact', 1, 'your-name', 'Your name', '2014-10-04 20:45:58', 1, '2014-10-04 20:45:58', 1, NULL),
(454, 'contact', 2, 'your-name', 'Your name', '2014-10-04 20:45:58', 1, '2014-10-04 20:45:58', 1, NULL),
(455, 'contact', 3, 'your-name', 'Your name', '2014-10-04 20:45:58', 1, '2014-10-04 20:45:58', 1, NULL),
(456, 'contact', 4, 'your-name', 'Your name', '2014-10-04 20:45:58', 1, '2014-10-04 20:45:58', 1, NULL),
(457, 'contact', 1, 'email', 'Email', '2014-10-04 20:45:58', 1, '2014-10-04 20:45:58', 1, NULL),
(458, 'contact', 2, 'email', 'Email', '2014-10-04 20:45:58', 1, '2014-10-04 20:45:58', 1, NULL),
(459, 'contact', 3, 'email', 'Email', '2014-10-04 20:45:58', 1, '2014-10-04 20:45:58', 1, NULL),
(460, 'contact', 4, 'email', 'Email', '2014-10-04 20:45:58', 1, '2014-10-04 20:45:58', 1, NULL),
(461, 'contact', 1, 'phone-number', 'Phone number', '2014-10-04 20:45:58', 1, '2014-10-04 20:45:58', 1, NULL),
(462, 'contact', 2, 'phone-number', 'Phone number', '2014-10-04 20:45:59', 1, '2014-10-04 20:45:59', 1, NULL),
(463, 'contact', 3, 'phone-number', 'Phone number', '2014-10-04 20:45:59', 1, '2014-10-04 20:45:59', 1, NULL),
(464, 'contact', 4, 'phone-number', 'Phone number', '2014-10-04 20:45:59', 1, '2014-10-04 20:45:59', 1, NULL),
(465, 'contact', 1, 'message', 'Message', '2014-10-04 20:45:59', 1, '2014-10-04 20:45:59', 1, NULL),
(466, 'contact', 2, 'message', 'Message', '2014-10-04 20:45:59', 1, '2014-10-04 20:45:59', 1, NULL),
(467, 'contact', 3, 'message', 'Message', '2014-10-04 20:45:59', 1, '2014-10-04 20:45:59', 1, NULL),
(468, 'contact', 4, 'message', 'Message', '2014-10-04 20:45:59', 1, '2014-10-04 20:45:59', 1, NULL),
(469, 'contact', 1, 'verification-code', 'Verification Code', '2014-10-04 20:45:59', 1, '2014-10-04 20:45:59', 1, NULL),
(470, 'contact', 2, 'verification-code', 'Verification Code', '2014-10-04 20:45:59', 1, '2014-10-04 20:45:59', 1, NULL),
(471, 'contact', 3, 'verification-code', 'Verification Code', '2014-10-04 20:45:59', 1, '2014-10-04 20:45:59', 1, NULL),
(472, 'contact', 4, 'verification-code', 'Verification Code', '2014-10-04 20:45:59', 1, '2014-10-04 20:45:59', 1, NULL),
(473, 'contact', 1, 'your-name', 'Your name', '2014-10-04 20:46:00', 1, '2014-10-04 20:46:00', 1, NULL),
(474, 'contact', 2, 'your-name', 'Your name', '2014-10-04 20:46:00', 1, '2014-10-04 20:46:00', 1, NULL),
(475, 'contact', 3, 'your-name', 'Your name', '2014-10-04 20:46:00', 1, '2014-10-04 20:46:00', 1, NULL),
(476, 'contact', 4, 'your-name', 'Your name', '2014-10-04 20:46:00', 1, '2014-10-04 20:46:00', 1, NULL),
(477, 'contact', 1, 'phone-number', 'Phone number', '2014-10-04 20:46:00', 1, '2014-10-04 20:46:00', 1, NULL),
(478, 'contact', 2, 'phone-number', 'Phone number', '2014-10-04 20:46:00', 1, '2014-10-04 20:46:00', 1, NULL),
(479, 'contact', 3, 'phone-number', 'Phone number', '2014-10-04 20:46:01', 1, '2014-10-04 20:46:01', 1, NULL),
(480, 'contact', 4, 'phone-number', 'Phone number', '2014-10-04 20:46:01', 1, '2014-10-04 20:46:01', 1, NULL),
(481, 'contact', 1, 'verification-code', 'Verification Code', '2014-10-04 20:46:01', 1, '2014-10-04 20:46:01', 1, NULL),
(482, 'contact', 2, 'verification-code', 'Verification Code', '2014-10-04 20:46:01', 1, '2014-10-04 20:46:01', 1, NULL),
(483, 'contact', 3, 'verification-code', 'Verification Code', '2014-10-04 20:46:01', 1, '2014-10-04 20:46:01', 1, NULL),
(484, 'contact', 4, 'verification-code', 'Verification Code', '2014-10-04 20:46:01', 1, '2014-10-04 20:46:01', 1, NULL),
(485, 'contact', 1, 'your-name', 'Your name', '2014-10-04 20:46:01', 1, '2014-10-04 20:46:01', 1, NULL),
(486, 'contact', 2, 'your-name', 'Your name', '2014-10-04 20:46:01', 1, '2014-10-04 20:46:01', 1, NULL),
(487, 'contact', 3, 'your-name', 'Your name', '2014-10-04 20:46:01', 1, '2014-10-04 20:46:01', 1, NULL),
(488, 'contact', 4, 'your-name', 'Your name', '2014-10-04 20:46:02', 1, '2014-10-04 20:46:02', 1, NULL),
(489, 'contact', 1, 'phone-number', 'Phone number', '2014-10-04 20:46:02', 1, '2014-10-04 20:46:02', 1, NULL),
(490, 'contact', 2, 'phone-number', 'Phone number', '2014-10-04 20:46:02', 1, '2014-10-04 20:46:02', 1, NULL),
(491, 'contact', 3, 'phone-number', 'Phone number', '2014-10-04 20:46:02', 1, '2014-10-04 20:46:02', 1, NULL),
(492, 'contact', 4, 'phone-number', 'Phone number', '2014-10-04 20:46:02', 1, '2014-10-04 20:46:02', 1, NULL),
(493, 'contact', 1, 'verification-code', 'Verification Code', '2014-10-04 20:46:02', 1, '2014-10-04 20:46:02', 1, NULL),
(494, 'contact', 2, 'verification-code', 'Verification Code', '2014-10-04 20:46:02', 1, '2014-10-04 20:46:02', 1, NULL),
(495, 'contact', 3, 'verification-code', 'Verification Code', '2014-10-04 20:46:02', 1, '2014-10-04 20:46:02', 1, NULL),
(496, 'contact', 4, 'verification-code', 'Verification Code', '2014-10-04 20:46:02', 1, '2014-10-04 20:46:02', 1, NULL),
(497, 'contact', 1, 'your-name', 'Your name', '2014-10-04 20:46:02', 1, '2014-10-04 20:46:02', 1, NULL),
(498, 'contact', 2, 'your-name', 'Your name', '2014-10-04 20:46:03', 1, '2014-10-04 20:46:03', 1, NULL),
(499, 'contact', 3, 'your-name', 'Your name', '2014-10-04 20:46:03', 1, '2014-10-04 20:46:03', 1, NULL),
(500, 'contact', 4, 'your-name', 'Your name', '2014-10-04 20:46:03', 1, '2014-10-04 20:46:03', 1, NULL),
(501, 'contact', 1, 'phone-number', 'Phone number', '2014-10-04 20:46:03', 1, '2014-10-04 20:46:03', 1, NULL),
(502, 'contact', 2, 'phone-number', 'Phone number', '2014-10-04 20:46:03', 1, '2014-10-04 20:46:03', 1, NULL),
(503, 'contact', 3, 'phone-number', 'Phone number', '2014-10-04 20:46:03', 1, '2014-10-04 20:46:03', 1, NULL),
(504, 'contact', 4, 'phone-number', 'Phone number', '2014-10-04 20:46:03', 1, '2014-10-04 20:46:03', 1, NULL),
(505, 'contact', 1, 'send-message', 'Send message', '2014-10-04 20:46:03', 1, '2014-10-04 20:46:03', 1, NULL),
(506, 'contact', 2, 'send-message', 'Send message', '2014-10-04 20:46:03', 1, '2014-10-04 20:46:03', 1, NULL),
(507, 'contact', 3, 'send-message', 'Send message', '2014-10-04 20:46:03', 1, '2014-10-04 20:46:03', 1, NULL),
(508, 'contact', 4, 'send-message', 'Send message', '2014-10-04 20:46:04', 1, '2014-10-04 20:46:04', 1, NULL),
(509, 'contact', 1, 'motolao-ban-phone-peang-road-06030-luang-prabang-lao-p-d-r', 'MOTOLAO, BAN PHONE PEANG ROAD, 06030 LUANG PRABANG, LAO P.D.R.', '2014-10-04 20:46:04', 1, '2014-10-04 20:46:04', 1, NULL),
(510, 'contact', 2, 'motolao-ban-phone-peang-road-06030-luang-prabang-lao-p-d-r', 'MOTOLAO, BAN PHONE PEANG ROAD, 06030 LUANG PRABANG, LAO P.D.R.', '2014-10-04 20:46:04', 1, '2014-10-04 20:46:04', 1, NULL),
(511, 'contact', 3, 'motolao-ban-phone-peang-road-06030-luang-prabang-lao-p-d-r', 'MOTOLAO, BAN PHONE PEANG ROAD, 06030 LUANG PRABANG, LAO P.D.R.', '2014-10-04 20:46:04', 1, '2014-10-04 20:46:04', 1, NULL),
(512, 'contact', 4, 'motolao-ban-phone-peang-road-06030-luang-prabang-lao-p-d-r', 'MOTOLAO, BAN PHONE PEANG ROAD, 06030 LUANG PRABANG, LAO P.D.R.', '2014-10-04 20:46:04', 1, '2014-10-04 20:46:04', 1, NULL),
(513, 'contact', 1, 'social-email', 'Social Email', '2014-10-04 20:46:04', 1, '2014-10-04 20:46:04', 1, NULL),
(514, 'contact', 2, 'social-email', 'Social Email', '2014-10-04 20:46:04', 1, '2014-10-04 20:46:04', 1, NULL),
(515, 'contact', 3, 'social-email', 'Social Email', '2014-10-04 20:46:04', 1, '2014-10-04 20:46:04', 1, NULL),
(516, 'contact', 4, 'social-email', 'Social Email', '2014-10-04 20:46:04', 1, '2014-10-04 20:46:04', 1, NULL),
(517, 'contact', 1, 'social-email', 'Social Email', '2014-10-04 20:46:05', 1, '2014-10-04 20:46:05', 1, NULL),
(518, 'contact', 2, 'social-email', 'Social Email', '2014-10-04 20:46:05', 1, '2014-10-04 20:46:05', 1, NULL),
(519, 'contact', 3, 'social-email', 'Social Email', '2014-10-04 20:46:05', 1, '2014-10-04 20:46:05', 1, NULL),
(520, 'contact', 4, 'social-email', 'Social Email', '2014-10-04 20:46:05', 1, '2014-10-04 20:46:05', 1, NULL),
(521, 'contact', 1, 'info-motolao-com', 'INFO@MOTOLAO.COM', '2014-10-04 20:46:05', 1, '2014-10-04 20:46:05', 1, NULL),
(522, 'contact', 2, 'info-motolao-com', 'INFO@MOTOLAO.COM', '2014-10-04 20:46:05', 1, '2014-10-04 20:46:05', 1, NULL),
(523, 'contact', 3, 'info-motolao-com', 'INFO@MOTOLAO.COM', '2014-10-04 20:46:05', 1, '2014-10-04 20:46:05', 1, NULL),
(524, 'contact', 4, 'info-motolao-com', 'INFO@MOTOLAO.COM', '2014-10-04 20:46:05', 1, '2014-10-04 20:46:05', 1, NULL),
(525, 'contact', 1, 'social-phone', 'Social Phone', '2014-10-04 20:46:06', 1, '2014-10-04 20:46:06', 1, NULL),
(526, 'contact', 2, 'social-phone', 'Social Phone', '2014-10-04 20:46:06', 1, '2014-10-04 20:46:06', 1, NULL),
(527, 'contact', 3, 'social-phone', 'Social Phone', '2014-10-04 20:46:06', 1, '2014-10-04 20:46:06', 1, NULL),
(528, 'contact', 4, 'social-phone', 'Social Phone', '2014-10-04 20:46:06', 1, '2014-10-04 20:46:06', 1, NULL),
(529, 'contact', 1, 'social-phone', 'Social Phone', '2014-10-04 20:46:06', 1, '2014-10-04 20:46:06', 1, NULL),
(530, 'contact', 2, 'social-phone', 'Social Phone', '2014-10-04 20:46:06', 1, '2014-10-04 20:46:06', 1, NULL),
(531, 'contact', 3, 'social-phone', 'Social Phone', '2014-10-04 20:46:06', 1, '2014-10-04 20:46:06', 1, NULL),
(532, 'contact', 4, 'social-phone', 'Social Phone', '2014-10-04 20:46:06', 1, '2014-10-04 20:46:06', 1, NULL),
(533, 'contact', 1, 'social-skype', 'Social Skype', '2014-10-04 20:46:07', 1, '2014-10-04 20:46:07', 1, NULL),
(534, 'contact', 2, 'social-skype', 'Social Skype', '2014-10-04 20:46:07', 1, '2014-10-04 20:46:07', 1, NULL),
(535, 'contact', 3, 'social-skype', 'Social Skype', '2014-10-04 20:46:07', 1, '2014-10-04 20:46:07', 1, NULL),
(536, 'contact', 4, 'social-skype', 'Social Skype', '2014-10-04 20:46:07', 1, '2014-10-04 20:46:07', 1, NULL),
(537, 'contact', 1, 'social-skype', 'Social Skype', '2014-10-04 20:46:07', 1, '2014-10-04 20:46:07', 1, NULL),
(538, 'contact', 2, 'social-skype', 'Social Skype', '2014-10-04 20:46:07', 1, '2014-10-04 20:46:07', 1, NULL),
(539, 'contact', 3, 'social-skype', 'Social Skype', '2014-10-04 20:46:07', 1, '2014-10-04 20:46:07', 1, NULL),
(540, 'contact', 4, 'social-skype', 'Social Skype', '2014-10-04 20:46:08', 1, '2014-10-04 20:46:08', 1, NULL),
(541, 'contact', 1, 'motolao-skype', 'motolao-skype', '2014-10-04 20:46:08', 1, '2014-10-04 20:46:08', 1, NULL),
(542, 'contact', 2, 'motolao-skype', 'motolao-skype', '2014-10-04 20:46:08', 1, '2014-10-04 20:46:08', 1, NULL),
(543, 'contact', 3, 'motolao-skype', 'motolao-skype', '2014-10-04 20:46:08', 1, '2014-10-04 20:46:08', 1, NULL),
(544, 'contact', 4, 'motolao-skype', 'motolao-skype', '2014-10-04 20:46:08', 1, '2014-10-04 20:46:08', 1, NULL),
(545, 'contact', 1, 'social-fb', 'Social FB', '2014-10-04 20:46:08', 1, '2014-10-04 20:46:08', 1, NULL),
(546, 'contact', 2, 'social-fb', 'Social FB', '2014-10-04 20:46:08', 1, '2014-10-04 20:46:08', 1, NULL),
(547, 'contact', 3, 'social-fb', 'Social FB', '2014-10-04 20:46:08', 1, '2014-10-04 20:46:08', 1, NULL),
(548, 'contact', 4, 'social-fb', 'Social FB', '2014-10-04 20:46:08', 1, '2014-10-04 20:46:08', 1, NULL),
(549, 'contact', 1, 'social-fb', 'Social FB', '2014-10-04 20:46:08', 1, '2014-10-04 20:46:08', 1, NULL),
(550, 'contact', 2, 'social-fb', 'Social FB', '2014-10-04 20:46:09', 1, '2014-10-04 20:46:09', 1, NULL),
(551, 'contact', 3, 'social-fb', 'Social FB', '2014-10-04 20:46:09', 1, '2014-10-04 20:46:09', 1, NULL),
(552, 'contact', 4, 'social-fb', 'Social FB', '2014-10-04 20:46:09', 1, '2014-10-04 20:46:09', 1, NULL),
(553, 'contact', 1, 'social-google', 'Social google', '2014-10-04 20:46:09', 1, '2014-10-04 20:46:09', 1, NULL),
(554, 'contact', 2, 'social-google', 'Social google', '2014-10-04 20:46:09', 1, '2014-10-04 20:46:09', 1, NULL),
(555, 'contact', 3, 'social-google', 'Social google', '2014-10-04 20:46:09', 1, '2014-10-04 20:46:09', 1, NULL),
(556, 'contact', 4, 'social-google', 'Social google', '2014-10-04 20:46:09', 1, '2014-10-04 20:46:09', 1, NULL),
(557, 'contact', 1, 'social-google', 'Social google', '2014-10-04 20:46:10', 1, '2014-10-04 20:46:10', 1, NULL),
(558, 'contact', 2, 'social-google', 'Social google', '2014-10-04 20:46:10', 1, '2014-10-04 20:46:10', 1, NULL),
(559, 'contact', 3, 'social-google', 'Social google', '2014-10-04 20:46:10', 1, '2014-10-04 20:46:10', 1, NULL),
(560, 'contact', 4, 'social-google', 'Social google', '2014-10-04 20:46:10', 1, '2014-10-04 20:46:10', 1, NULL),
(561, 'contact', 1, 'social-printrest', 'Social printrest', '2014-10-04 20:46:10', 1, '2014-10-04 20:46:10', 1, NULL),
(562, 'contact', 2, 'social-printrest', 'Social printrest', '2014-10-04 20:46:10', 1, '2014-10-04 20:46:10', 1, NULL),
(563, 'contact', 3, 'social-printrest', 'Social printrest', '2014-10-04 20:46:10', 1, '2014-10-04 20:46:10', 1, NULL),
(564, 'contact', 4, 'social-printrest', 'Social printrest', '2014-10-04 20:46:11', 1, '2014-10-04 20:46:11', 1, NULL),
(565, 'contact', 1, 'social-printrest', 'Social printrest', '2014-10-04 20:46:11', 1, '2014-10-04 20:46:11', 1, NULL),
(566, 'contact', 2, 'social-printrest', 'Social printrest', '2014-10-04 20:46:11', 1, '2014-10-04 20:46:11', 1, NULL),
(567, 'contact', 3, 'social-printrest', 'Social printrest', '2014-10-04 20:46:11', 1, '2014-10-04 20:46:11', 1, NULL),
(568, 'contact', 4, 'social-printrest', 'Social printrest', '2014-10-04 20:46:11', 1, '2014-10-04 20:46:11', 1, NULL),
(569, 'contact', 1, 'social-flickr', 'Social flickr', '2014-10-04 20:46:12', 1, '2014-10-04 20:46:12', 1, NULL),
(570, 'contact', 2, 'social-flickr', 'Social flickr', '2014-10-04 20:46:12', 1, '2014-10-04 20:46:12', 1, NULL),
(571, 'contact', 3, 'social-flickr', 'Social flickr', '2014-10-04 20:46:12', 1, '2014-10-04 20:46:12', 1, NULL),
(572, 'contact', 4, 'social-flickr', 'Social flickr', '2014-10-04 20:46:12', 1, '2014-10-04 20:46:12', 1, NULL),
(573, 'contact', 1, 'social-flickr', 'Social flickr', '2014-10-04 20:46:12', 1, '2014-10-04 20:46:12', 1, NULL),
(574, 'contact', 2, 'social-flickr', 'Social flickr', '2014-10-04 20:46:12', 1, '2014-10-04 20:46:12', 1, NULL),
(575, 'contact', 3, 'social-flickr', 'Social flickr', '2014-10-04 20:46:12', 1, '2014-10-04 20:46:12', 1, NULL),
(576, 'contact', 4, 'social-flickr', 'Social flickr', '2014-10-04 20:46:12', 1, '2014-10-04 20:46:12', 1, NULL),
(577, 'contact', 1, 'social-youtube', 'Social youtube', '2014-10-04 20:46:13', 1, '2014-10-04 20:46:13', 1, NULL),
(578, 'contact', 2, 'social-youtube', 'Social youtube', '2014-10-04 20:46:13', 1, '2014-10-04 20:46:13', 1, NULL),
(579, 'contact', 3, 'social-youtube', 'Social youtube', '2014-10-04 20:46:13', 1, '2014-10-04 20:46:13', 1, NULL),
(580, 'contact', 4, 'social-youtube', 'Social youtube', '2014-10-04 20:46:13', 1, '2014-10-04 20:46:13', 1, NULL),
(581, 'contact', 1, 'social-youtube', 'Social youtube', '2014-10-04 20:46:13', 1, '2014-10-04 20:46:13', 1, NULL),
(582, 'contact', 2, 'social-youtube', 'Social youtube', '2014-10-04 20:46:13', 1, '2014-10-04 20:46:13', 1, NULL),
(583, 'contact', 3, 'social-youtube', 'Social youtube', '2014-10-04 20:46:13', 1, '2014-10-04 20:46:13', 1, NULL),
(584, 'contact', 4, 'social-youtube', 'Social youtube', '2014-10-04 20:46:13', 1, '2014-10-04 20:46:13', 1, NULL),
(585, 'links', 1, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:46:14', 1, '2014-10-04 20:46:14', 1, NULL),
(586, 'links', 2, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:46:14', 1, '2014-10-04 20:46:14', 1, NULL),
(587, 'links', 3, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:46:15', 1, '2014-10-04 20:46:15', 1, NULL),
(588, 'links', 4, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:46:15', 1, '2014-10-04 20:46:15', 1, NULL),
(589, 'links', 1, 'about-us', 'ABOUT US', '2014-10-04 20:46:15', 1, '2014-10-04 20:46:15', 1, NULL),
(590, 'links', 2, 'about-us', 'ABOUT US', '2014-10-04 20:46:15', 1, '2014-10-04 20:46:15', 1, NULL),
(591, 'links', 3, 'about-us', 'ABOUT US', '2014-10-04 20:46:15', 1, '2014-10-04 20:46:15', 1, NULL),
(592, 'links', 4, 'about-us', 'ABOUT US', '2014-10-04 20:46:15', 1, '2014-10-04 20:46:15', 1, NULL),
(593, 'links', 1, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:46:16', 1, '2014-10-04 20:46:16', 1, NULL),
(594, 'links', 2, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:46:16', 1, '2014-10-04 20:46:16', 1, NULL),
(595, 'links', 3, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:46:16', 1, '2014-10-04 20:46:16', 1, NULL),
(596, 'links', 4, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:46:16', 1, '2014-10-04 20:46:16', 1, NULL),
(597, 'layout', 1, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:46:16', 1, '2014-10-04 20:46:16', 1, NULL),
(598, 'layout', 2, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:46:16', 1, '2014-10-04 20:46:16', 1, NULL),
(599, 'layout', 3, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:46:16', 1, '2014-10-04 20:46:16', 1, NULL),
(600, 'layout', 4, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:46:16', 1, '2014-10-04 20:46:16', 1, NULL),
(601, 'terms', 1, 'contact-logo', 'Contact Logo', '2014-10-04 20:45:39', 1, '2014-10-04 20:45:39', 1, NULL),
(602, 'terms', 2, 'contact-logo', 'Contact Logo', '2014-10-04 20:46:17', 1, '2014-10-04 20:46:17', 1, NULL),
(603, 'terms', 3, 'contact-logo', 'Contact Logo', '2014-10-04 20:46:17', 1, '2014-10-04 20:46:17', 1, NULL),
(604, 'terms', 4, 'contact-logo', 'Contact Logo', '2014-10-04 20:46:17', 1, '2014-10-04 20:46:17', 1, NULL),
(605, 'terms', 1, 'contact-logo', 'Contact Logo', '2014-10-04 20:46:17', 1, '2014-10-04 20:46:17', 1, NULL),
(606, 'terms', 2, 'contact-logo', 'Contact Logo', '2014-10-04 20:46:17', 1, '2014-10-04 20:46:17', 1, NULL),
(607, 'terms', 3, 'contact-logo', 'Contact Logo', '2014-10-04 20:46:18', 1, '2014-10-04 20:46:18', 1, NULL),
(608, 'terms', 4, 'contact-logo', 'Contact Logo', '2014-10-04 20:46:18', 1, '2014-10-04 20:46:18', 1, NULL),
(609, 'terms', 1, 'motolao-term-heading', 'MOTOLAO Term Heading', '2014-10-04 20:46:18', 1, '2014-10-04 20:46:18', 1, NULL),
(610, 'terms', 2, 'motolao-term-heading', 'MOTOLAO Term Heading', '2014-10-04 20:46:18', 1, '2014-10-04 20:46:18', 1, NULL),
(611, 'terms', 3, 'motolao-term-heading', 'MOTOLAO Term Heading', '2014-10-04 20:46:18', 1, '2014-10-04 20:46:18', 1, NULL),
(612, 'terms', 4, 'motolao-term-heading', 'MOTOLAO Term Heading', '2014-10-04 20:46:19', 1, '2014-10-04 20:46:19', 1, NULL),
(613, 'terms', 1, 'terms-summary', 'terms Summary', '2014-10-04 20:46:19', 1, '2014-10-04 20:46:19', 1, NULL),
(614, 'terms', 2, 'terms-summary', 'terms Summary', '2014-10-04 20:46:20', 1, '2014-10-04 20:46:20', 1, NULL),
(615, 'terms', 3, 'terms-summary', 'terms Summary', '2014-10-04 20:46:20', 1, '2014-10-04 20:46:20', 1, NULL),
(616, 'terms', 4, 'terms-summary', 'terms Summary', '2014-10-04 20:46:20', 1, '2014-10-04 20:46:20', 1, NULL),
(617, 'terms', 1, 'ask-a-question-terms', 'ASK A QUESTION Terms', '2014-10-04 20:46:21', 1, '2014-10-04 20:46:21', 1, NULL),
(618, 'terms', 2, 'ask-a-question-terms', 'ASK A QUESTION Terms', '2014-10-04 20:46:21', 1, '2014-10-04 20:46:21', 1, NULL),
(619, 'terms', 3, 'ask-a-question-terms', 'ASK A QUESTION Terms', '2014-10-04 20:46:21', 1, '2014-10-04 20:46:21', 1, NULL),
(620, 'terms', 4, 'ask-a-question-terms', 'ASK A QUESTION Terms', '2014-10-04 20:46:21', 1, '2014-10-04 20:46:21', 1, NULL),
(621, 'contact', 1, 'verification-code', 'Verification Code', '2014-10-04 20:46:21', 1, '2014-10-04 20:46:21', 1, NULL),
(622, 'contact', 2, 'verification-code', 'Verification Code', '2014-10-04 20:46:21', 1, '2014-10-04 20:46:21', 1, NULL),
(623, 'contact', 3, 'verification-code', 'Verification Code', '2014-10-04 20:46:22', 1, '2014-10-04 20:46:22', 1, NULL),
(624, 'contact', 4, 'verification-code', 'Verification Code', '2014-10-04 20:46:22', 1, '2014-10-04 20:46:22', 1, NULL),
(625, 'contact', 1, 'your-name', 'Your name', '2014-10-04 20:46:23', 1, '2014-10-04 20:46:23', 1, NULL),
(626, 'contact', 2, 'your-name', 'Your name', '2014-10-04 20:46:23', 1, '2014-10-04 20:46:23', 1, NULL),
(627, 'contact', 3, 'your-name', 'Your name', '2014-10-04 20:46:23', 1, '2014-10-04 20:46:23', 1, NULL),
(628, 'contact', 4, 'your-name', 'Your name', '2014-10-04 20:46:23', 1, '2014-10-04 20:46:23', 1, NULL),
(629, 'contact', 1, 'phone-number', 'Phone number', '2014-10-04 20:46:23', 1, '2014-10-04 20:46:23', 1, NULL),
(630, 'contact', 2, 'phone-number', 'Phone number', '2014-10-04 20:46:24', 1, '2014-10-04 20:46:24', 1, NULL),
(631, 'contact', 3, 'phone-number', 'Phone number', '2014-10-04 20:46:24', 1, '2014-10-04 20:46:24', 1, NULL),
(632, 'contact', 4, 'phone-number', 'Phone number', '2014-10-04 20:46:24', 1, '2014-10-04 20:46:24', 1, NULL),
(633, 'contact', 1, 'verification-code', 'Verification Code', '2014-10-04 20:46:24', 1, '2014-10-04 20:46:24', 1, NULL),
(634, 'contact', 2, 'verification-code', 'Verification Code', '2014-10-04 20:46:24', 1, '2014-10-04 20:46:24', 1, NULL),
(635, 'contact', 3, 'verification-code', 'Verification Code', '2014-10-04 20:46:24', 1, '2014-10-04 20:46:24', 1, NULL),
(636, 'contact', 4, 'verification-code', 'Verification Code', '2014-10-04 20:46:25', 1, '2014-10-04 20:46:25', 1, NULL),
(637, 'contact', 1, 'your-name', 'Your name', '2014-10-04 20:46:25', 1, '2014-10-04 20:46:25', 1, NULL),
(638, 'contact', 2, 'your-name', 'Your name', '2014-10-04 20:46:25', 1, '2014-10-04 20:46:25', 1, NULL),
(639, 'contact', 3, 'your-name', 'Your name', '2014-10-04 20:46:25', 1, '2014-10-04 20:46:25', 1, NULL),
(640, 'contact', 4, 'your-name', 'Your name', '2014-10-04 20:46:25', 1, '2014-10-04 20:46:25', 1, NULL),
(641, 'contact', 1, 'phone-number', 'Phone number', '2014-10-04 20:46:25', 1, '2014-10-04 20:46:25', 1, NULL),
(642, 'contact', 2, 'phone-number', 'Phone number', '2014-10-04 20:46:25', 1, '2014-10-04 20:46:25', 1, NULL),
(643, 'contact', 3, 'phone-number', 'Phone number', '2014-10-04 20:46:26', 1, '2014-10-04 20:46:26', 1, NULL),
(644, 'contact', 4, 'phone-number', 'Phone number', '2014-10-04 20:46:26', 1, '2014-10-04 20:46:26', 1, NULL),
(645, 'contact', 1, 'verification-code', 'Verification Code', '2014-10-04 20:46:26', 1, '2014-10-04 20:46:26', 1, NULL),
(646, 'contact', 2, 'verification-code', 'Verification Code', '2014-10-04 20:46:26', 1, '2014-10-04 20:46:26', 1, NULL),
(647, 'contact', 3, 'verification-code', 'Verification Code', '2014-10-04 20:46:27', 1, '2014-10-04 20:46:27', 1, NULL),
(648, 'contact', 4, 'verification-code', 'Verification Code', '2014-10-04 20:46:27', 1, '2014-10-04 20:46:27', 1, NULL),
(649, 'contact', 1, 'your-name', 'Your name', '2014-10-04 20:46:27', 1, '2014-10-04 20:46:27', 1, NULL),
(650, 'contact', 2, 'your-name', 'Your name', '2014-10-04 20:46:27', 1, '2014-10-04 20:46:27', 1, NULL),
(651, 'contact', 3, 'your-name', 'Your name', '2014-10-04 20:46:28', 1, '2014-10-04 20:46:28', 1, NULL),
(652, 'contact', 4, 'your-name', 'Your name', '2014-10-04 20:46:28', 1, '2014-10-04 20:46:28', 1, NULL),
(653, 'contact', 1, 'phone-number', 'Phone number', '2014-10-04 20:46:28', 1, '2014-10-04 20:46:28', 1, NULL),
(654, 'contact', 2, 'phone-number', 'Phone number', '2014-10-04 20:46:28', 1, '2014-10-04 20:46:28', 1, NULL),
(655, 'contact', 3, 'phone-number', 'Phone number', '2014-10-04 20:46:28', 1, '2014-10-04 20:46:28', 1, NULL),
(656, 'contact', 4, 'phone-number', 'Phone number', '2014-10-04 20:46:28', 1, '2014-10-04 20:46:28', 1, NULL),
(657, 'contact', 1, 'verification-code', 'Verification Code', '2014-10-04 20:46:28', 1, '2014-10-04 20:46:28', 1, NULL),
(658, 'contact', 2, 'verification-code', 'Verification Code', '2014-10-04 20:46:28', 1, '2014-10-04 20:46:28', 1, NULL),
(659, 'contact', 3, 'verification-code', 'Verification Code', '2014-10-04 20:46:28', 1, '2014-10-04 20:46:28', 1, NULL),
(660, 'contact', 4, 'verification-code', 'Verification Code', '2014-10-04 20:46:29', 1, '2014-10-04 20:46:29', 1, NULL),
(661, 'contact', 1, 'your-name', 'Your name', '2014-10-04 20:46:29', 1, '2014-10-04 20:46:29', 1, NULL),
(662, 'contact', 2, 'your-name', 'Your name', '2014-10-04 20:46:29', 1, '2014-10-04 20:46:29', 1, NULL),
(663, 'contact', 3, 'your-name', 'Your name', '2014-10-04 20:46:29', 1, '2014-10-04 20:46:29', 1, NULL),
(664, 'contact', 4, 'your-name', 'Your name', '2014-10-04 20:46:29', 1, '2014-10-04 20:46:29', 1, NULL),
(665, 'contact', 1, 'phone-number', 'Phone number', '2014-10-04 20:46:29', 1, '2014-10-04 20:46:29', 1, NULL),
(666, 'contact', 2, 'phone-number', 'Phone number', '2014-10-04 20:46:29', 1, '2014-10-04 20:46:29', 1, NULL),
(667, 'contact', 3, 'phone-number', 'Phone number', '2014-10-04 20:46:30', 1, '2014-10-04 20:46:30', 1, NULL),
(668, 'contact', 4, 'phone-number', 'Phone number', '2014-10-04 20:46:30', 1, '2014-10-04 20:46:30', 1, NULL),
(669, 'contact', 1, 'send-message', 'Send message', '2014-10-04 20:46:30', 1, '2014-10-04 20:46:30', 1, NULL),
(670, 'contact', 2, 'send-message', 'Send message', '2014-10-04 20:46:30', 1, '2014-10-04 20:46:30', 1, NULL),
(671, 'contact', 3, 'send-message', 'Send message', '2014-10-04 20:46:30', 1, '2014-10-04 20:46:30', 1, NULL),
(672, 'contact', 4, 'send-message', 'Send message', '2014-10-04 20:46:30', 1, '2014-10-04 20:46:30', 1, NULL),
(673, 'links', 1, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:46:30', 1, '2014-10-04 20:46:30', 1, NULL),
(674, 'links', 2, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:46:30', 1, '2014-10-04 20:46:30', 1, NULL),
(675, 'links', 3, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:46:30', 1, '2014-10-04 20:46:30', 1, NULL),
(676, 'links', 4, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:46:31', 1, '2014-10-04 20:46:31', 1, NULL),
(677, 'links', 1, 'about-us', 'ABOUT US', '2014-10-04 20:46:31', 1, '2014-10-04 20:46:31', 1, NULL),
(678, 'links', 2, 'about-us', 'ABOUT US', '2014-10-04 20:46:31', 1, '2014-10-04 20:46:31', 1, NULL),
(679, 'links', 3, 'about-us', 'ABOUT US', '2014-10-04 20:46:31', 1, '2014-10-04 20:46:31', 1, NULL),
(680, 'links', 4, 'about-us', 'ABOUT US', '2014-10-04 20:46:31', 1, '2014-10-04 20:46:31', 1, NULL),
(681, 'links', 1, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:46:31', 1, '2014-10-04 20:46:31', 1, NULL),
(682, 'links', 2, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:46:32', 1, '2014-10-04 20:46:32', 1, NULL),
(683, 'links', 3, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:46:32', 1, '2014-10-04 20:46:32', 1, NULL),
(684, 'links', 4, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:46:32', 1, '2014-10-04 20:46:32', 1, NULL),
(685, 'layout', 1, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:46:32', 1, '2014-10-04 20:46:32', 1, NULL),
(686, 'layout', 2, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:46:32', 1, '2014-10-04 20:46:32', 1, NULL),
(687, 'layout', 3, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:46:32', 1, '2014-10-04 20:46:32', 1, NULL),
(688, 'layout', 4, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:46:32', 1, '2014-10-04 20:46:32', 1, NULL),
(689, 'about', 1, 'about-us-logo', 'About Us Logo', '2014-10-04 20:45:33', 1, '2014-10-04 20:45:33', 1, NULL),
(690, 'about', 2, 'about-us-logo', 'About Us Logo', '2014-10-04 20:46:33', 1, '2014-10-04 20:46:33', 1, NULL),
(691, 'about', 3, 'about-us-logo', 'About Us Logo', '2014-10-04 20:46:33', 1, '2014-10-04 20:46:33', 1, NULL),
(692, 'about', 4, 'about-us-logo', 'About Us Logo', '2014-10-04 20:46:33', 1, '2014-10-04 20:46:33', 1, NULL),
(693, 'about', 1, 'about-us-logo', 'About Us Logo', '2014-10-04 20:46:34', 1, '2014-10-04 20:46:34', 1, NULL),
(694, 'about', 2, 'about-us-logo', 'About Us Logo', '2014-10-04 20:46:34', 1, '2014-10-04 20:46:34', 1, NULL),
(695, 'about', 3, 'about-us-logo', 'About Us Logo', '2014-10-04 20:46:34', 1, '2014-10-04 20:46:34', 1, NULL),
(696, 'about', 4, 'about-us-logo', 'About Us Logo', '2014-10-04 20:46:35', 1, '2014-10-04 20:46:35', 1, NULL),
(697, 'about', 1, 'heading-about-us', 'Heading About Us', '2014-10-04 20:46:35', 1, '2014-10-04 20:46:35', 1, NULL),
(698, 'about', 2, 'heading-about-us', 'Heading About Us', '2014-10-04 20:46:35', 1, '2014-10-04 20:46:35', 1, NULL),
(699, 'about', 3, 'heading-about-us', 'Heading About Us', '2014-10-04 20:46:36', 1, '2014-10-04 20:46:36', 1, NULL),
(700, 'about', 4, 'heading-about-us', 'Heading About Us', '2014-10-04 20:46:36', 1, '2014-10-04 20:46:36', 1, NULL),
(701, 'about', 1, 'about-us-summary', 'About Us Summary', '2014-10-04 20:46:36', 1, '2014-10-04 20:46:36', 1, NULL),
(702, 'about', 2, 'about-us-summary', 'About Us Summary', '2014-10-04 20:46:36', 1, '2014-10-04 20:46:36', 1, NULL),
(703, 'about', 3, 'about-us-summary', 'About Us Summary', '2014-10-04 20:46:36', 1, '2014-10-04 20:46:36', 1, NULL),
(704, 'about', 4, 'about-us-summary', 'About Us Summary', '2014-10-04 20:46:36', 1, '2014-10-04 20:46:36', 1, NULL),
(705, 'about', 1, 'tigertrail', 'tigertrail', '2014-10-04 20:46:37', 1, '2014-10-04 20:46:37', 1, NULL),
(706, 'about', 2, 'tigertrail', 'tigertrail', '2014-10-04 20:46:37', 1, '2014-10-04 20:46:37', 1, NULL),
(707, 'about', 3, 'tigertrail', 'tigertrail', '2014-10-04 20:46:37', 1, '2014-10-04 20:46:37', 1, NULL),
(708, 'about', 4, 'tigertrail', 'tigertrail', '2014-10-04 20:46:37', 1, '2014-10-04 20:46:37', 1, NULL),
(709, 'about', 1, 'tiger-trail-outdoor-adventures', 'TIGER TRAIL OUTDOOR ADVENTURES', '2014-10-04 20:46:37', 1, '2014-10-04 20:46:37', 1, NULL),
(710, 'about', 2, 'tiger-trail-outdoor-adventures', 'TIGER TRAIL OUTDOOR ADVENTURES', '2014-10-04 20:46:37', 1, '2014-10-04 20:46:37', 1, NULL),
(711, 'about', 3, 'tiger-trail-outdoor-adventures', 'TIGER TRAIL OUTDOOR ADVENTURES', '2014-10-04 20:46:37', 1, '2014-10-04 20:46:37', 1, NULL),
(712, 'about', 4, 'tiger-trail-outdoor-adventures', 'TIGER TRAIL OUTDOOR ADVENTURES', '2014-10-04 20:46:37', 1, '2014-10-04 20:46:37', 1, NULL),
(713, 'about', 1, 'tiger-trail-summary', 'TIGER TRAIL Summary', '2014-10-04 20:46:37', 1, '2014-10-04 20:46:37', 1, NULL),
(714, 'about', 2, 'tiger-trail-summary', 'TIGER TRAIL Summary', '2014-10-04 20:46:37', 1, '2014-10-04 20:46:37', 1, NULL),
(715, 'about', 3, 'tiger-trail-summary', 'TIGER TRAIL Summary', '2014-10-04 20:46:38', 1, '2014-10-04 20:46:38', 1, NULL),
(716, 'about', 4, 'tiger-trail-summary', 'TIGER TRAIL Summary', '2014-10-04 20:46:38', 1, '2014-10-04 20:46:38', 1, NULL),
(717, 'about', 1, 'aboutimage1', 'aboutImage1', '2014-10-04 20:46:38', 1, '2014-10-04 20:46:38', 1, NULL),
(718, 'about', 2, 'aboutimage1', 'aboutImage1', '2014-10-04 20:46:38', 1, '2014-10-04 20:46:38', 1, NULL),
(719, 'about', 3, 'aboutimage1', 'aboutImage1', '2014-10-04 20:46:39', 1, '2014-10-04 20:46:39', 1, NULL),
(720, 'about', 4, 'aboutimage1', 'aboutImage1', '2014-10-04 20:46:39', 1, '2014-10-04 20:46:39', 1, NULL),
(721, 'about', 1, 'heading-active-travel-ideas-in-laos', 'Heading Active travel ideas in Laos', '2014-10-04 20:46:39', 1, '2014-10-04 20:46:39', 1, NULL),
(722, 'about', 2, 'heading-active-travel-ideas-in-laos', 'Heading Active travel ideas in Laos', '2014-10-04 20:46:39', 1, '2014-10-04 20:46:39', 1, NULL),
(723, 'about', 3, 'heading-active-travel-ideas-in-laos', 'Heading Active travel ideas in Laos', '2014-10-04 20:46:39', 1, '2014-10-04 20:46:39', 1, NULL),
(724, 'about', 4, 'heading-active-travel-ideas-in-laos', 'Heading Active travel ideas in Laos', '2014-10-04 20:46:40', 1, '2014-10-04 20:46:40', 1, NULL),
(725, 'about', 1, 'summary-active-travel-ideas-in-laos', 'Summary Active travel ideas in Laos', '2014-10-04 20:46:40', 1, '2014-10-04 20:46:40', 1, NULL),
(726, 'about', 2, 'summary-active-travel-ideas-in-laos', 'Summary Active travel ideas in Laos', '2014-10-04 20:46:40', 1, '2014-10-04 20:46:40', 1, NULL),
(727, 'about', 3, 'summary-active-travel-ideas-in-laos', 'Summary Active travel ideas in Laos', '2014-10-04 20:46:40', 1, '2014-10-04 20:46:40', 1, NULL),
(728, 'about', 4, 'summary-active-travel-ideas-in-laos', 'Summary Active travel ideas in Laos', '2014-10-04 20:46:40', 1, '2014-10-04 20:46:40', 1, NULL),
(729, 'about', 1, 'aboutimage2', 'aboutImage2', '2014-10-04 20:46:40', 1, '2014-10-04 20:46:40', 1, NULL),
(730, 'about', 2, 'aboutimage2', 'aboutImage2', '2014-10-04 20:46:40', 1, '2014-10-04 20:46:40', 1, NULL),
(731, 'about', 3, 'aboutimage2', 'aboutImage2', '2014-10-04 20:46:40', 1, '2014-10-04 20:46:40', 1, NULL),
(732, 'about', 4, 'aboutimage2', 'aboutImage2', '2014-10-04 20:46:40', 1, '2014-10-04 20:46:40', 1, NULL),
(733, 'about', 1, 'heading-fair-trek-community-tours-and-projects', 'Heading Fair Trek community tours and projects', '2014-10-04 20:46:40', 1, '2014-10-04 20:46:40', 1, NULL),
(734, 'about', 2, 'heading-fair-trek-community-tours-and-projects', 'Heading Fair Trek community tours and projects', '2014-10-04 20:46:41', 1, '2014-10-04 20:46:41', 1, NULL),
(735, 'about', 3, 'heading-fair-trek-community-tours-and-projects', 'Heading Fair Trek community tours and projects', '2014-10-04 20:46:41', 1, '2014-10-04 20:46:41', 1, NULL),
(736, 'about', 4, 'heading-fair-trek-community-tours-and-projects', 'Heading Fair Trek community tours and projects', '2014-10-04 20:46:41', 1, '2014-10-04 20:46:41', 1, NULL),
(737, 'about', 1, 'summary-fair-trek-community-tours-and-projects', 'Summary Fair Trek community tours and projects', '2014-10-04 20:46:41', 1, '2014-10-04 20:46:41', 1, NULL),
(738, 'about', 2, 'summary-fair-trek-community-tours-and-projects', 'Summary Fair Trek community tours and projects', '2014-10-04 20:46:41', 1, '2014-10-04 20:46:41', 1, NULL),
(739, 'about', 3, 'summary-fair-trek-community-tours-and-projects', 'Summary Fair Trek community tours and projects', '2014-10-04 20:46:41', 1, '2014-10-04 20:46:41', 1, NULL),
(740, 'about', 4, 'summary-fair-trek-community-tours-and-projects', 'Summary Fair Trek community tours and projects', '2014-10-04 20:46:41', 1, '2014-10-04 20:46:41', 1, NULL),
(741, 'about', 1, 'aboutimage3', 'aboutImage3', '2014-10-04 20:46:41', 1, '2014-10-04 20:46:41', 1, NULL),
(742, 'about', 2, 'aboutimage3', 'aboutImage3', '2014-10-04 20:46:41', 1, '2014-10-04 20:46:41', 1, NULL),
(743, 'about', 3, 'aboutimage3', 'aboutImage3', '2014-10-04 20:46:42', 1, '2014-10-04 20:46:42', 1, NULL),
(744, 'about', 4, 'aboutimage3', 'aboutImage3', '2014-10-04 20:46:42', 1, '2014-10-04 20:46:42', 1, NULL),
(745, 'about', 1, 'heading-travel-laos-with-luxury-and-style', 'Heading Travel Laos with luxury and style', '2014-10-04 20:46:42', 1, '2014-10-04 20:46:42', 1, NULL),
(746, 'about', 2, 'heading-travel-laos-with-luxury-and-style', 'Heading Travel Laos with luxury and style', '2014-10-04 20:46:42', 1, '2014-10-04 20:46:42', 1, NULL),
(747, 'about', 3, 'heading-travel-laos-with-luxury-and-style', 'Heading Travel Laos with luxury and style', '2014-10-04 20:46:42', 1, '2014-10-04 20:46:42', 1, NULL),
(748, 'about', 4, 'heading-travel-laos-with-luxury-and-style', 'Heading Travel Laos with luxury and style', '2014-10-04 20:46:42', 1, '2014-10-04 20:46:42', 1, NULL),
(749, 'about', 1, 'summary-travel-laos-with-luxury-and-style', 'Summary Travel Laos with luxury and style', '2014-10-04 20:46:42', 1, '2014-10-04 20:46:42', 1, NULL),
(750, 'about', 2, 'summary-travel-laos-with-luxury-and-style', 'Summary Travel Laos with luxury and style', '2014-10-04 20:46:42', 1, '2014-10-04 20:46:42', 1, NULL),
(751, 'about', 3, 'summary-travel-laos-with-luxury-and-style', 'Summary Travel Laos with luxury and style', '2014-10-04 20:46:42', 1, '2014-10-04 20:46:42', 1, NULL),
(752, 'about', 4, 'summary-travel-laos-with-luxury-and-style', 'Summary Travel Laos with luxury and style', '2014-10-04 20:46:43', 1, '2014-10-04 20:46:43', 1, NULL),
(753, 'about', 1, 'aboutimage4', 'aboutImage4', '2014-10-04 20:46:43', 1, '2014-10-04 20:46:43', 1, NULL),
(754, 'about', 2, 'aboutimage4', 'aboutImage4', '2014-10-04 20:46:43', 1, '2014-10-04 20:46:43', 1, NULL),
(755, 'about', 3, 'aboutimage4', 'aboutImage4', '2014-10-04 20:46:43', 1, '2014-10-04 20:46:43', 1, NULL),
(756, 'about', 4, 'aboutimage4', 'aboutImage4', '2014-10-04 20:46:43', 1, '2014-10-04 20:46:43', 1, NULL),
(757, 'about', 1, 'heading-stories-and-news-from-laos', 'Heading Stories and News from Laos', '2014-10-04 20:46:43', 1, '2014-10-04 20:46:43', 1, NULL),
(758, 'about', 2, 'heading-stories-and-news-from-laos', 'Heading Stories and News from Laos', '2014-10-04 20:46:43', 1, '2014-10-04 20:46:43', 1, NULL),
(759, 'about', 3, 'heading-stories-and-news-from-laos', 'Heading Stories and News from Laos', '2014-10-04 20:46:43', 1, '2014-10-04 20:46:43', 1, NULL),
(760, 'about', 4, 'heading-stories-and-news-from-laos', 'Heading Stories and News from Laos', '2014-10-04 20:46:44', 1, '2014-10-04 20:46:44', 1, NULL),
(761, 'about', 1, 'summary-stories-and-news-from-laos', 'Summary Stories and News from Laos', '2014-10-04 20:46:44', 1, '2014-10-04 20:46:44', 1, NULL),
(762, 'about', 2, 'summary-stories-and-news-from-laos', 'Summary Stories and News from Laos', '2014-10-04 20:46:44', 1, '2014-10-04 20:46:44', 1, NULL),
(763, 'about', 3, 'summary-stories-and-news-from-laos', 'Summary Stories and News from Laos', '2014-10-04 20:46:44', 1, '2014-10-04 20:46:44', 1, NULL),
(764, 'about', 4, 'summary-stories-and-news-from-laos', 'Summary Stories and News from Laos', '2014-10-04 20:46:44', 1, '2014-10-04 20:46:44', 1, NULL),
(765, 'about', 1, 'aboutimage5', 'aboutImage5', '2014-10-04 20:46:44', 1, '2014-10-04 20:46:44', 1, NULL),
(766, 'about', 2, 'aboutimage5', 'aboutImage5', '2014-10-04 20:46:45', 1, '2014-10-04 20:46:45', 1, NULL),
(767, 'about', 3, 'aboutimage5', 'aboutImage5', '2014-10-04 20:46:45', 1, '2014-10-04 20:46:45', 1, NULL),
(768, 'about', 4, 'aboutimage5', 'aboutImage5', '2014-10-04 20:46:45', 1, '2014-10-04 20:46:45', 1, NULL),
(769, 'about', 1, 'heading-tiger-trail-thailand', 'Heading Tiger Trail Thailand', '2014-10-04 20:46:45', 1, '2014-10-04 20:46:45', 1, NULL),
(770, 'about', 2, 'heading-tiger-trail-thailand', 'Heading Tiger Trail Thailand', '2014-10-04 20:46:45', 1, '2014-10-04 20:46:45', 1, NULL),
(771, 'about', 3, 'heading-tiger-trail-thailand', 'Heading Tiger Trail Thailand', '2014-10-04 20:46:45', 1, '2014-10-04 20:46:45', 1, NULL),
(772, 'about', 4, 'heading-tiger-trail-thailand', 'Heading Tiger Trail Thailand', '2014-10-04 20:46:45', 1, '2014-10-04 20:46:45', 1, NULL),
(773, 'about', 1, 'summary-tiger-trail-thailand', 'Summary Tiger Trail Thailand', '2014-10-04 20:46:45', 1, '2014-10-04 20:46:45', 1, NULL),
(774, 'about', 2, 'summary-tiger-trail-thailand', 'Summary Tiger Trail Thailand', '2014-10-04 20:46:45', 1, '2014-10-04 20:46:45', 1, NULL),
(775, 'about', 3, 'summary-tiger-trail-thailand', 'Summary Tiger Trail Thailand', '2014-10-04 20:46:46', 1, '2014-10-04 20:46:46', 1, NULL),
(776, 'about', 4, 'summary-tiger-trail-thailand', 'Summary Tiger Trail Thailand', '2014-10-04 20:46:46', 1, '2014-10-04 20:46:46', 1, NULL),
(777, 'about', 1, 'aboutimage6', 'aboutImage6', '2014-10-04 20:46:46', 1, '2014-10-04 20:46:46', 1, NULL),
(778, 'about', 2, 'aboutimage6', 'aboutImage6', '2014-10-04 20:46:46', 1, '2014-10-04 20:46:46', 1, NULL),
(779, 'about', 3, 'aboutimage6', 'aboutImage6', '2014-10-04 20:46:46', 1, '2014-10-04 20:46:46', 1, NULL),
(780, 'about', 4, 'aboutimage6', 'aboutImage6', '2014-10-04 20:46:46', 1, '2014-10-04 20:46:46', 1, NULL),
(781, 'about', 1, 'heading-motolao-laos-6', 'Heading Motolao Laos 6', '2014-10-04 20:46:46', 1, '2014-10-04 20:46:46', 1, NULL),
(782, 'about', 2, 'heading-motolao-laos-6', 'Heading Motolao Laos 6', '2014-10-04 20:46:46', 1, '2014-10-04 20:46:46', 1, NULL),
(783, 'about', 3, 'heading-motolao-laos-6', 'Heading Motolao Laos 6', '2014-10-04 20:46:46', 1, '2014-10-04 20:46:46', 1, NULL),
(784, 'about', 4, 'heading-motolao-laos-6', 'Heading Motolao Laos 6', '2014-10-04 20:46:46', 1, '2014-10-04 20:46:46', 1, NULL),
(785, 'about', 1, 'summary-motolao-laos-6', 'Summary Motolao Laos 6', '2014-10-04 20:46:47', 1, '2014-10-04 20:46:47', 1, NULL),
(786, 'about', 2, 'summary-motolao-laos-6', 'Summary Motolao Laos 6', '2014-10-04 20:46:47', 1, '2014-10-04 20:46:47', 1, NULL),
(787, 'about', 3, 'summary-motolao-laos-6', 'Summary Motolao Laos 6', '2014-10-04 20:46:47', 1, '2014-10-04 20:46:47', 1, NULL),
(788, 'about', 4, 'summary-motolao-laos-6', 'Summary Motolao Laos 6', '2014-10-04 20:46:47', 1, '2014-10-04 20:46:47', 1, NULL),
(789, 'links', 1, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:46:47', 1, '2014-10-04 20:46:47', 1, NULL),
(790, 'links', 2, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:46:47', 1, '2014-10-04 20:46:47', 1, NULL),
(791, 'links', 3, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:46:48', 1, '2014-10-04 20:46:48', 1, NULL),
(792, 'links', 4, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:46:48', 1, '2014-10-04 20:46:48', 1, NULL),
(793, 'links', 1, 'about-us', 'ABOUT US', '2014-10-04 20:46:48', 1, '2014-10-04 20:46:48', 1, NULL),
(794, 'links', 2, 'about-us', 'ABOUT US', '2014-10-04 20:46:48', 1, '2014-10-04 20:46:48', 1, NULL),
(795, 'links', 3, 'about-us', 'ABOUT US', '2014-10-04 20:46:48', 1, '2014-10-04 20:46:48', 1, NULL),
(796, 'links', 4, 'about-us', 'ABOUT US', '2014-10-04 20:46:48', 1, '2014-10-04 20:46:48', 1, NULL),
(797, 'links', 1, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:46:48', 1, '2014-10-04 20:46:48', 1, NULL);
INSERT INTO `labels` (`id`, `category`, `lang_id`, `key`, `value`, `create_time`, `create_user_id`, `update_time`, `update_user_id`, `activity_log`) VALUES
(798, 'links', 2, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:46:49', 1, '2014-10-04 20:46:49', 1, NULL),
(799, 'links', 3, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:46:49', 1, '2014-10-04 20:46:49', 1, NULL),
(800, 'links', 4, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:46:49', 1, '2014-10-04 20:46:49', 1, NULL),
(801, 'layout', 1, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:46:49', 1, '2014-10-04 20:46:49', 1, NULL),
(802, 'layout', 2, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:46:50', 1, '2014-10-04 20:46:50', 1, NULL),
(803, 'layout', 3, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:46:50', 1, '2014-10-04 20:46:50', 1, NULL),
(804, 'layout', 4, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:46:50', 1, '2014-10-04 20:46:50', 1, NULL),
(805, 'faq', 1, 'faq-logo', 'Faq Logo', '2014-10-04 20:45:22', 1, '2014-10-04 20:45:22', 1, NULL),
(806, 'faq', 2, 'faq-logo', 'Faq Logo', '2014-10-04 20:46:51', 1, '2014-10-04 20:46:51', 1, NULL),
(807, 'faq', 3, 'faq-logo', 'Faq Logo', '2014-10-04 20:46:51', 1, '2014-10-04 20:46:51', 1, NULL),
(808, 'faq', 4, 'faq-logo', 'Faq Logo', '2014-10-04 20:46:51', 1, '2014-10-04 20:46:51', 1, NULL),
(809, 'faq', 1, 'faq-logo', 'Faq Logo', '2014-10-04 20:46:51', 1, '2014-10-04 20:46:51', 1, NULL),
(810, 'faq', 2, 'faq-logo', 'Faq Logo', '2014-10-04 20:46:51', 1, '2014-10-04 20:46:51', 1, NULL),
(811, 'faq', 3, 'faq-logo', 'Faq Logo', '2014-10-04 20:46:51', 1, '2014-10-04 20:46:51', 1, NULL),
(812, 'faq', 4, 'faq-logo', 'Faq Logo', '2014-10-04 20:46:52', 1, '2014-10-04 20:46:52', 1, NULL),
(813, 'faq', 1, 'faq-title', 'Faq Title', '2014-10-04 20:46:52', 1, '2014-10-04 20:46:52', 1, NULL),
(814, 'faq', 2, 'faq-title', 'Faq Title', '2014-10-04 20:46:53', 1, '2014-10-04 20:46:53', 1, NULL),
(815, 'faq', 3, 'faq-title', 'Faq Title', '2014-10-04 20:46:53', 1, '2014-10-04 20:46:53', 1, NULL),
(816, 'faq', 4, 'faq-title', 'Faq Title', '2014-10-04 20:46:53', 1, '2014-10-04 20:46:53', 1, NULL),
(817, 'faq', 1, 'faq-description', 'Faq description', '2014-10-04 20:46:53', 1, '2014-10-04 20:46:53', 1, NULL),
(818, 'faq', 2, 'faq-description', 'Faq description', '2014-10-04 20:46:54', 1, '2014-10-04 20:46:54', 1, NULL),
(819, 'faq', 3, 'faq-description', 'Faq description', '2014-10-04 20:46:54', 1, '2014-10-04 20:46:54', 1, NULL),
(820, 'faq', 4, 'faq-description', 'Faq description', '2014-10-04 20:46:54', 1, '2014-10-04 20:46:54', 1, NULL),
(821, 'links', 1, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:46:54', 1, '2014-10-04 20:46:54', 1, NULL),
(822, 'links', 2, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:46:54', 1, '2014-10-04 20:46:54', 1, NULL),
(823, 'links', 3, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:46:54', 1, '2014-10-04 20:46:54', 1, NULL),
(824, 'links', 4, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:46:55', 1, '2014-10-04 20:46:55', 1, NULL),
(825, 'links', 1, 'about-us', 'ABOUT US', '2014-10-04 20:46:55', 1, '2014-10-04 20:46:55', 1, NULL),
(826, 'links', 2, 'about-us', 'ABOUT US', '2014-10-04 20:46:55', 1, '2014-10-04 20:46:55', 1, NULL),
(827, 'links', 3, 'about-us', 'ABOUT US', '2014-10-04 20:46:55', 1, '2014-10-04 20:46:55', 1, NULL),
(828, 'links', 4, 'about-us', 'ABOUT US', '2014-10-04 20:46:56', 1, '2014-10-04 20:46:56', 1, NULL),
(829, 'links', 1, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:46:56', 1, '2014-10-04 20:46:56', 1, NULL),
(830, 'links', 2, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:46:56', 1, '2014-10-04 20:46:56', 1, NULL),
(831, 'links', 3, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:46:56', 1, '2014-10-04 20:46:56', 1, NULL),
(832, 'links', 4, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:46:56', 1, '2014-10-04 20:46:56', 1, NULL),
(833, 'layout', 1, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:46:56', 1, '2014-10-04 20:46:56', 1, NULL),
(834, 'layout', 2, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:46:56', 1, '2014-10-04 20:46:56', 1, NULL),
(835, 'layout', 3, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:46:57', 1, '2014-10-04 20:46:57', 1, NULL),
(836, 'layout', 4, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:46:57', 1, '2014-10-04 20:46:57', 1, NULL),
(837, 'sitemap', 1, 'sitemap-logo', 'sitemap Logo', '2014-10-04 20:45:46', 1, '2014-10-04 20:45:46', 1, NULL),
(838, 'sitemap', 2, 'sitemap-logo', 'sitemap Logo', '2014-10-04 20:46:58', 1, '2014-10-04 20:46:58', 1, NULL),
(839, 'sitemap', 3, 'sitemap-logo', 'sitemap Logo', '2014-10-04 20:46:58', 1, '2014-10-04 20:46:58', 1, NULL),
(840, 'sitemap', 4, 'sitemap-logo', 'sitemap Logo', '2014-10-04 20:46:59', 1, '2014-10-04 20:46:59', 1, NULL),
(841, 'sitemap', 1, 'sitemap-logo', 'sitemap Logo', '2014-10-04 20:46:59', 1, '2014-10-04 20:46:59', 1, NULL),
(842, 'sitemap', 2, 'sitemap-logo', 'sitemap Logo', '2014-10-04 20:46:59', 1, '2014-10-04 20:46:59', 1, NULL),
(843, 'sitemap', 3, 'sitemap-logo', 'sitemap Logo', '2014-10-04 20:47:00', 1, '2014-10-04 20:47:00', 1, NULL),
(844, 'sitemap', 4, 'sitemap-logo', 'sitemap Logo', '2014-10-04 20:47:00', 1, '2014-10-04 20:47:00', 1, NULL),
(845, 'sitemap', 1, 'sitemap-heading', 'sitemap Heading', '2014-10-04 20:47:00', 1, '2014-10-04 20:47:00', 1, NULL),
(846, 'sitemap', 2, 'sitemap-heading', 'sitemap Heading', '2014-10-04 20:47:00', 1, '2014-10-04 20:47:00', 1, NULL),
(847, 'sitemap', 3, 'sitemap-heading', 'sitemap Heading', '2014-10-04 20:47:00', 1, '2014-10-04 20:47:00', 1, NULL),
(848, 'sitemap', 4, 'sitemap-heading', 'sitemap Heading', '2014-10-04 20:47:01', 1, '2014-10-04 20:47:01', 1, NULL),
(849, 'sitemap', 1, 'sitemap-summary', 'sitemap Summary', '2014-10-04 20:47:01', 1, '2014-10-04 20:47:01', 1, NULL),
(850, 'sitemap', 2, 'sitemap-summary', 'sitemap Summary', '2014-10-04 20:47:01', 1, '2014-10-04 20:47:01', 1, NULL),
(851, 'sitemap', 3, 'sitemap-summary', 'sitemap Summary', '2014-10-04 20:47:01', 1, '2014-10-04 20:47:01', 1, NULL),
(852, 'sitemap', 4, 'sitemap-summary', 'sitemap Summary', '2014-10-04 20:47:01', 1, '2014-10-04 20:47:01', 1, NULL),
(853, 'links', 1, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:47:01', 1, '2014-10-04 20:47:01', 1, NULL),
(854, 'links', 2, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:47:01', 1, '2014-10-04 20:47:01', 1, NULL),
(855, 'links', 3, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:47:01', 1, '2014-10-04 20:47:01', 1, NULL),
(856, 'links', 4, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 20:47:02', 1, '2014-10-04 20:47:02', 1, NULL),
(857, 'links', 1, 'about-us', 'ABOUT US', '2014-10-04 20:47:02', 1, '2014-10-04 20:47:02', 1, NULL),
(858, 'links', 2, 'about-us', 'ABOUT US', '2014-10-04 20:47:02', 1, '2014-10-04 20:47:02', 1, NULL),
(859, 'links', 3, 'about-us', 'ABOUT US', '2014-10-04 20:47:02', 1, '2014-10-04 20:47:02', 1, NULL),
(860, 'links', 4, 'about-us', 'ABOUT US', '2014-10-04 20:47:02', 1, '2014-10-04 20:47:02', 1, NULL),
(861, 'links', 1, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:47:02', 1, '2014-10-04 20:47:02', 1, NULL),
(862, 'links', 2, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:47:02', 1, '2014-10-04 20:47:02', 1, NULL),
(863, 'links', 3, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:47:02', 1, '2014-10-04 20:47:02', 1, NULL),
(864, 'links', 4, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 20:47:02', 1, '2014-10-04 20:47:02', 1, NULL),
(865, 'layout', 1, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:47:03', 1, '2014-10-04 20:47:03', 1, NULL),
(866, 'layout', 2, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:47:03', 1, '2014-10-04 20:47:03', 1, NULL),
(867, 'layout', 3, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:47:03', 1, '2014-10-04 20:47:03', 1, NULL),
(868, 'layout', 4, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 20:47:03', 1, '2014-10-04 20:47:03', 1, NULL),
(869, 'zii', 1, 'view', 'View', '2014-10-04 20:58:06', 1, '2014-10-04 20:58:06', 1, NULL),
(870, 'zii', 2, 'view', 'View', '2014-10-04 20:58:07', 1, '2014-10-04 20:58:07', 1, NULL),
(871, 'zii', 3, 'view', 'View', '2014-10-04 20:58:07', 1, '2014-10-04 20:58:07', 1, NULL),
(872, 'zii', 4, 'view', 'View', '2014-10-04 20:58:07', 1, '2014-10-04 20:58:07', 1, NULL),
(873, 'zii', 1, 'update', 'Update', '2014-10-04 20:58:08', 1, '2014-10-04 20:58:08', 1, NULL),
(874, 'zii', 2, 'update', 'Update', '2014-10-04 20:58:08', 1, '2014-10-04 20:58:08', 1, NULL),
(875, 'zii', 3, 'update', 'Update', '2014-10-04 20:58:08', 1, '2014-10-04 20:58:08', 1, NULL),
(876, 'zii', 4, 'update', 'Update', '2014-10-04 20:58:08', 1, '2014-10-04 20:58:08', 1, NULL),
(877, 'zii', 1, 'delete', 'Delete', '2014-10-04 20:58:08', 1, '2014-10-04 20:58:08', 1, NULL),
(878, 'zii', 2, 'delete', 'Delete', '2014-10-04 20:58:08', 1, '2014-10-04 20:58:08', 1, NULL),
(879, 'zii', 3, 'delete', 'Delete', '2014-10-04 20:58:09', 1, '2014-10-04 20:58:09', 1, NULL),
(880, 'zii', 4, 'delete', 'Delete', '2014-10-04 20:58:09', 1, '2014-10-04 20:58:09', 1, NULL),
(881, 'zii', 1, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 20:58:10', 1, '2014-10-04 20:58:10', 1, NULL),
(882, 'zii', 2, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 20:58:10', 1, '2014-10-04 20:58:10', 1, NULL),
(883, 'zii', 3, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 20:58:10', 1, '2014-10-04 20:58:10', 1, NULL),
(884, 'zii', 4, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 20:58:11', 1, '2014-10-04 20:58:11', 1, NULL),
(885, 'zii', 1, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 20:58:11', 1, '2014-10-04 20:58:11', 1, NULL),
(886, 'zii', 2, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 20:58:11', 1, '2014-10-04 20:58:11', 1, NULL),
(887, 'zii', 3, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 20:58:11', 1, '2014-10-04 20:58:11', 1, NULL),
(888, 'zii', 4, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 20:58:11', 1, '2014-10-04 20:58:11', 1, NULL),
(889, 'zii', 1, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 20:58:30', 1, '2014-10-04 20:58:30', 1, NULL),
(890, 'zii', 2, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 20:58:30', 1, '2014-10-04 20:58:30', 1, NULL),
(891, 'zii', 3, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 20:58:31', 1, '2014-10-04 20:58:31', 1, NULL),
(892, 'zii', 4, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 20:58:31', 1, '2014-10-04 20:58:31', 1, NULL),
(893, 'zii', 1, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 20:58:31', 1, '2014-10-04 20:58:31', 1, NULL),
(894, 'zii', 2, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 20:58:31', 1, '2014-10-04 20:58:31', 1, NULL),
(895, 'zii', 3, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 20:58:31', 1, '2014-10-04 20:58:31', 1, NULL),
(896, 'zii', 4, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 20:58:32', 1, '2014-10-04 20:58:32', 1, NULL),
(897, 'zii', 1, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 20:59:40', 1, '2014-10-04 20:59:40', 1, NULL),
(898, 'zii', 2, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 20:59:40', 1, '2014-10-04 20:59:40', 1, NULL),
(899, 'zii', 3, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 20:59:40', 1, '2014-10-04 20:59:40', 1, NULL),
(900, 'zii', 4, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 20:59:40', 1, '2014-10-04 20:59:40', 1, NULL),
(901, 'zii', 1, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 20:59:41', 1, '2014-10-04 20:59:41', 1, NULL),
(902, 'zii', 2, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 20:59:41', 1, '2014-10-04 20:59:41', 1, NULL),
(903, 'zii', 3, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 20:59:41', 1, '2014-10-04 20:59:41', 1, NULL),
(904, 'zii', 4, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 20:59:41', 1, '2014-10-04 20:59:41', 1, NULL),
(905, 'zii', 1, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:01:11', 1, '2014-10-04 21:01:11', 1, NULL),
(906, 'zii', 2, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:01:11', 1, '2014-10-04 21:01:11', 1, NULL),
(907, 'zii', 3, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:01:11', 1, '2014-10-04 21:01:11', 1, NULL),
(908, 'zii', 4, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:01:12', 1, '2014-10-04 21:01:12', 1, NULL),
(909, 'zii', 1, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:01:12', 1, '2014-10-04 21:01:12', 1, NULL),
(910, 'zii', 2, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:01:12', 1, '2014-10-04 21:01:12', 1, NULL),
(911, 'zii', 3, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:01:12', 1, '2014-10-04 21:01:12', 1, NULL),
(912, 'zii', 4, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:01:12', 1, '2014-10-04 21:01:12', 1, NULL),
(913, 'zii', 1, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:01:34', 1, '2014-10-04 21:01:34', 1, NULL),
(914, 'zii', 2, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:01:35', 1, '2014-10-04 21:01:35', 1, NULL),
(915, 'zii', 3, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:01:35', 1, '2014-10-04 21:01:35', 1, NULL),
(916, 'zii', 4, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:01:35', 1, '2014-10-04 21:01:35', 1, NULL),
(917, 'zii', 1, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:01:35', 1, '2014-10-04 21:01:35', 1, NULL),
(918, 'zii', 2, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:01:35', 1, '2014-10-04 21:01:35', 1, NULL),
(919, 'zii', 3, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:01:35', 1, '2014-10-04 21:01:35', 1, NULL),
(920, 'zii', 4, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:01:35', 1, '2014-10-04 21:01:35', 1, NULL),
(921, 'zii', 1, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:01:39', 1, '2014-10-04 21:01:39', 1, NULL),
(922, 'zii', 2, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:01:39', 1, '2014-10-04 21:01:39', 1, NULL),
(923, 'zii', 3, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:01:39', 1, '2014-10-04 21:01:39', 1, NULL),
(924, 'zii', 4, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:01:39', 1, '2014-10-04 21:01:39', 1, NULL),
(925, 'zii', 1, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:01:39', 1, '2014-10-04 21:01:39', 1, NULL),
(926, 'zii', 2, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:01:39', 1, '2014-10-04 21:01:39', 1, NULL),
(927, 'zii', 3, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:01:40', 1, '2014-10-04 21:01:40', 1, NULL),
(928, 'zii', 4, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:01:40', 1, '2014-10-04 21:01:40', 1, NULL),
(929, 'zii', 1, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:01:40', 1, '2014-10-04 21:01:40', 1, NULL),
(930, 'zii', 2, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:01:40', 1, '2014-10-04 21:01:40', 1, NULL),
(931, 'zii', 3, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:01:40', 1, '2014-10-04 21:01:40', 1, NULL),
(932, 'zii', 4, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:01:40', 1, '2014-10-04 21:01:40', 1, NULL),
(933, 'zii', 1, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:01:40', 1, '2014-10-04 21:01:40', 1, NULL),
(934, 'zii', 2, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:01:41', 1, '2014-10-04 21:01:41', 1, NULL),
(935, 'zii', 3, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:01:41', 1, '2014-10-04 21:01:41', 1, NULL),
(936, 'zii', 4, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:01:41', 1, '2014-10-04 21:01:41', 1, NULL),
(937, 'zii', 1, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:02:04', 1, '2014-10-04 21:02:04', 1, NULL),
(938, 'zii', 2, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:02:04', 1, '2014-10-04 21:02:04', 1, NULL),
(939, 'zii', 3, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:02:04', 1, '2014-10-04 21:02:04', 1, NULL),
(940, 'zii', 4, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:02:04', 1, '2014-10-04 21:02:04', 1, NULL),
(941, 'zii', 1, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:02:04', 1, '2014-10-04 21:02:04', 1, NULL),
(942, 'zii', 2, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:02:05', 1, '2014-10-04 21:02:05', 1, NULL),
(943, 'zii', 3, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:02:05', 1, '2014-10-04 21:02:05', 1, NULL),
(944, 'zii', 4, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:02:05', 1, '2014-10-04 21:02:05', 1, NULL),
(945, 'zii', 1, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:02:13', 1, '2014-10-04 21:02:13', 1, NULL),
(946, 'zii', 2, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:02:13', 1, '2014-10-04 21:02:13', 1, NULL),
(947, 'zii', 3, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:02:13', 1, '2014-10-04 21:02:13', 1, NULL),
(948, 'zii', 4, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:02:13', 1, '2014-10-04 21:02:13', 1, NULL),
(949, 'zii', 1, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:02:14', 1, '2014-10-04 21:02:14', 1, NULL),
(950, 'zii', 2, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:02:14', 1, '2014-10-04 21:02:14', 1, NULL),
(951, 'zii', 3, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:02:14', 1, '2014-10-04 21:02:14', 1, NULL),
(952, 'zii', 4, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:02:14', 1, '2014-10-04 21:02:14', 1, NULL),
(953, 'links', 1, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 21:02:19', 1, '2014-10-04 21:02:19', 1, NULL),
(954, 'links', 2, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 21:02:19', 1, '2014-10-04 21:02:19', 1, NULL),
(955, 'links', 3, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 21:02:19', 1, '2014-10-04 21:02:19', 1, NULL),
(956, 'links', 4, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 21:02:19', 1, '2014-10-04 21:02:19', 1, NULL),
(957, 'links', 1, 'about-us', 'ABOUT US', '2014-10-04 21:02:19', 1, '2014-10-04 21:02:19', 1, NULL),
(958, 'links', 2, 'about-us', 'ABOUT US', '2014-10-04 21:02:19', 1, '2014-10-04 21:02:19', 1, NULL),
(959, 'links', 3, 'about-us', 'ABOUT US', '2014-10-04 21:02:19', 1, '2014-10-04 21:02:19', 1, NULL),
(960, 'links', 4, 'about-us', 'ABOUT US', '2014-10-04 21:02:20', 1, '2014-10-04 21:02:20', 1, NULL),
(961, 'links', 1, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 21:02:20', 1, '2014-10-04 21:02:20', 1, NULL),
(962, 'links', 2, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 21:02:20', 1, '2014-10-04 21:02:20', 1, NULL),
(963, 'links', 3, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 21:02:20', 1, '2014-10-04 21:02:20', 1, NULL),
(964, 'links', 4, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 21:02:20', 1, '2014-10-04 21:02:20', 1, NULL),
(965, 'layout', 1, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 21:02:20', 1, '2014-10-04 21:02:20', 1, NULL),
(966, 'layout', 2, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 21:02:20', 1, '2014-10-04 21:02:20', 1, NULL),
(967, 'layout', 3, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 21:02:20', 1, '2014-10-04 21:02:20', 1, NULL),
(968, 'layout', 4, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 21:02:21', 1, '2014-10-04 21:02:21', 1, NULL),
(969, 'links', 1, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 21:02:19', 1, '2014-10-04 21:02:19', 1, NULL),
(970, 'links', 2, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 21:02:21', 1, '2014-10-04 21:02:21', 1, NULL),
(971, 'links', 3, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 21:02:21', 1, '2014-10-04 21:02:21', 1, NULL),
(972, 'links', 4, 'motolao-i-adventure-tours-in-laos', 'Motolao I Adventure Tours in Laos', '2014-10-04 21:02:21', 1, '2014-10-04 21:02:21', 1, NULL),
(973, 'links', 1, 'about-us', 'ABOUT US', '2014-10-04 21:02:22', 1, '2014-10-04 21:02:22', 1, NULL),
(974, 'links', 2, 'about-us', 'ABOUT US', '2014-10-04 21:02:22', 1, '2014-10-04 21:02:22', 1, NULL),
(975, 'links', 3, 'about-us', 'ABOUT US', '2014-10-04 21:02:22', 1, '2014-10-04 21:02:22', 1, NULL),
(976, 'links', 4, 'about-us', 'ABOUT US', '2014-10-04 21:02:22', 1, '2014-10-04 21:02:22', 1, NULL),
(977, 'links', 1, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 21:02:22', 1, '2014-10-04 21:02:22', 1, NULL),
(978, 'links', 2, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 21:02:22', 1, '2014-10-04 21:02:22', 1, NULL),
(979, 'links', 3, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 21:02:22', 1, '2014-10-04 21:02:22', 1, NULL),
(980, 'links', 4, 'terms-and-conditions', 'TERMS AND CONDITIONS', '2014-10-04 21:02:22', 1, '2014-10-04 21:02:22', 1, NULL),
(981, 'layout', 1, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 21:02:22', 1, '2014-10-04 21:02:22', 1, NULL),
(982, 'layout', 2, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 21:02:23', 1, '2014-10-04 21:02:23', 1, NULL),
(983, 'layout', 3, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 21:02:23', 1, '2014-10-04 21:02:23', 1, NULL),
(984, 'layout', 4, 'copyrights-motolao-2014', 'Copyrights MOTOLAO 2014', '2014-10-04 21:02:23', 1, '2014-10-04 21:02:23', 1, NULL),
(985, 'zii', 1, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:02:55', 1, '2014-10-04 21:02:55', 1, NULL),
(986, 'zii', 2, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:02:56', 1, '2014-10-04 21:02:56', 1, NULL),
(987, 'zii', 3, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:02:56', 1, '2014-10-04 21:02:56', 1, NULL),
(988, 'zii', 4, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:02:56', 1, '2014-10-04 21:02:56', 1, NULL),
(989, 'zii', 1, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:02:56', 1, '2014-10-04 21:02:56', 1, NULL),
(990, 'zii', 2, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:02:56', 1, '2014-10-04 21:02:56', 1, NULL),
(991, 'zii', 3, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:02:56', 1, '2014-10-04 21:02:56', 1, NULL),
(992, 'zii', 4, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:02:57', 1, '2014-10-04 21:02:57', 1, NULL),
(993, 'zii', 1, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:03:49', 1, '2014-10-04 21:03:49', 1, NULL),
(994, 'zii', 2, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:03:50', 1, '2014-10-04 21:03:50', 1, NULL),
(995, 'zii', 3, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:03:50', 1, '2014-10-04 21:03:50', 1, NULL),
(996, 'zii', 4, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:03:50', 1, '2014-10-04 21:03:50', 1, NULL),
(997, 'zii', 1, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:03:50', 1, '2014-10-04 21:03:50', 1, NULL),
(998, 'zii', 2, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:03:50', 1, '2014-10-04 21:03:50', 1, NULL),
(999, 'zii', 3, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:03:50', 1, '2014-10-04 21:03:50', 1, NULL),
(1000, 'zii', 4, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:03:50', 1, '2014-10-04 21:03:50', 1, NULL),
(1001, 'zii', 1, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:04:39', 1, '2014-10-04 21:04:39', 1, NULL),
(1002, 'zii', 2, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:04:40', 1, '2014-10-04 21:04:40', 1, NULL),
(1003, 'zii', 3, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:04:41', 1, '2014-10-04 21:04:41', 1, NULL),
(1004, 'zii', 4, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:04:41', 1, '2014-10-04 21:04:41', 1, NULL),
(1005, 'zii', 1, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:04:42', 1, '2014-10-04 21:04:42', 1, NULL),
(1006, 'zii', 2, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:04:42', 1, '2014-10-04 21:04:42', 1, NULL),
(1007, 'zii', 3, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:04:42', 1, '2014-10-04 21:04:42', 1, NULL),
(1008, 'zii', 4, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:04:42', 1, '2014-10-04 21:04:42', 1, NULL),
(1009, 'zii', 1, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:04:49', 1, '2014-10-04 21:04:49', 1, NULL),
(1010, 'zii', 2, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:04:49', 1, '2014-10-04 21:04:49', 1, NULL),
(1011, 'zii', 3, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:04:49', 1, '2014-10-04 21:04:49', 1, NULL),
(1012, 'zii', 4, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:04:49', 1, '2014-10-04 21:04:49', 1, NULL),
(1013, 'zii', 1, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:04:50', 1, '2014-10-04 21:04:50', 1, NULL),
(1014, 'zii', 2, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:04:50', 1, '2014-10-04 21:04:50', 1, NULL),
(1015, 'zii', 3, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:04:50', 1, '2014-10-04 21:04:50', 1, NULL),
(1016, 'zii', 4, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:04:50', 1, '2014-10-04 21:04:50', 1, NULL),
(1017, 'zii', 1, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:05:09', 1, '2014-10-04 21:05:09', 1, NULL),
(1018, 'zii', 2, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:05:09', 1, '2014-10-04 21:05:09', 1, NULL),
(1019, 'zii', 3, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:05:09', 1, '2014-10-04 21:05:09', 1, NULL),
(1020, 'zii', 4, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:05:09', 1, '2014-10-04 21:05:09', 1, NULL),
(1021, 'zii', 1, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:05:10', 1, '2014-10-04 21:05:10', 1, NULL),
(1022, 'zii', 2, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:05:10', 1, '2014-10-04 21:05:10', 1, NULL),
(1023, 'zii', 3, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:05:10', 1, '2014-10-04 21:05:10', 1, NULL),
(1024, 'zii', 4, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:05:10', 1, '2014-10-04 21:05:10', 1, NULL),
(1025, 'zii', 1, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:06:25', 1, '2014-10-04 21:06:25', 1, NULL),
(1026, 'zii', 2, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:06:25', 1, '2014-10-04 21:06:25', 1, NULL),
(1027, 'zii', 3, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:06:26', 1, '2014-10-04 21:06:26', 1, NULL),
(1028, 'zii', 4, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:06:26', 1, '2014-10-04 21:06:26', 1, NULL),
(1029, 'zii', 1, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:06:26', 1, '2014-10-04 21:06:26', 1, NULL),
(1030, 'zii', 2, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:06:26', 1, '2014-10-04 21:06:26', 1, NULL),
(1031, 'zii', 3, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:06:26', 1, '2014-10-04 21:06:26', 1, NULL),
(1032, 'zii', 4, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:06:27', 1, '2014-10-04 21:06:27', 1, NULL),
(1033, 'zii', 1, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:09:14', 1, '2014-10-04 21:09:14', 1, NULL),
(1034, 'zii', 2, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:09:14', 1, '2014-10-04 21:09:14', 1, NULL),
(1035, 'zii', 3, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:09:14', 1, '2014-10-04 21:09:14', 1, NULL),
(1036, 'zii', 4, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:09:15', 1, '2014-10-04 21:09:15', 1, NULL),
(1037, 'zii', 1, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:09:15', 1, '2014-10-04 21:09:15', 1, NULL),
(1038, 'zii', 2, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:09:15', 1, '2014-10-04 21:09:15', 1, NULL),
(1039, 'zii', 3, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:09:15', 1, '2014-10-04 21:09:15', 1, NULL),
(1040, 'zii', 4, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:09:15', 1, '2014-10-04 21:09:15', 1, NULL),
(1041, 'zii', 1, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:09:30', 1, '2014-10-04 21:09:30', 1, NULL),
(1042, 'zii', 2, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:09:30', 1, '2014-10-04 21:09:30', 1, NULL),
(1043, 'zii', 3, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:09:31', 1, '2014-10-04 21:09:31', 1, NULL),
(1044, 'zii', 4, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:09:31', 1, '2014-10-04 21:09:31', 1, NULL),
(1045, 'zii', 1, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:09:31', 1, '2014-10-04 21:09:31', 1, NULL),
(1046, 'zii', 2, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:09:31', 1, '2014-10-04 21:09:31', 1, NULL),
(1047, 'zii', 3, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:09:31', 1, '2014-10-04 21:09:31', 1, NULL),
(1048, 'zii', 4, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:09:32', 1, '2014-10-04 21:09:32', 1, NULL),
(1049, 'zii', 1, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:09:38', 1, '2014-10-04 21:09:38', 1, NULL),
(1050, 'zii', 2, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:09:38', 1, '2014-10-04 21:09:38', 1, NULL),
(1051, 'zii', 3, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:09:38', 1, '2014-10-04 21:09:38', 1, NULL),
(1052, 'zii', 4, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:09:39', 1, '2014-10-04 21:09:39', 1, NULL),
(1053, 'zii', 1, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:09:39', 1, '2014-10-04 21:09:39', 1, NULL),
(1054, 'zii', 2, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:09:39', 1, '2014-10-04 21:09:39', 1, NULL),
(1055, 'zii', 3, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:09:39', 1, '2014-10-04 21:09:39', 1, NULL),
(1056, 'zii', 4, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:09:39', 1, '2014-10-04 21:09:39', 1, NULL),
(1057, 'zii', 1, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:09:40', 1, '2014-10-04 21:09:40', 1, NULL),
(1058, 'zii', 2, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:09:42', 1, '2014-10-04 21:09:42', 1, NULL),
(1059, 'zii', 3, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:09:43', 1, '2014-10-04 21:09:43', 1, NULL),
(1060, 'zii', 4, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:09:43', 1, '2014-10-04 21:09:43', 1, NULL),
(1061, 'zii', 1, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:09:44', 1, '2014-10-04 21:09:44', 1, NULL),
(1062, 'zii', 2, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:09:44', 1, '2014-10-04 21:09:44', 1, NULL),
(1063, 'zii', 3, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:09:44', 1, '2014-10-04 21:09:44', 1, NULL),
(1064, 'zii', 4, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:09:44', 1, '2014-10-04 21:09:44', 1, NULL),
(1065, 'zii', 1, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:09:45', 1, '2014-10-04 21:09:45', 1, NULL),
(1066, 'zii', 2, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:09:46', 1, '2014-10-04 21:09:46', 1, NULL),
(1067, 'zii', 3, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:09:46', 1, '2014-10-04 21:09:46', 1, NULL),
(1068, 'zii', 4, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:09:46', 1, '2014-10-04 21:09:46', 1, NULL),
(1069, 'zii', 1, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:09:46', 1, '2014-10-04 21:09:46', 1, NULL),
(1070, 'zii', 2, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:09:47', 1, '2014-10-04 21:09:47', 1, NULL),
(1071, 'zii', 3, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:09:47', 1, '2014-10-04 21:09:47', 1, NULL),
(1072, 'zii', 4, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:09:47', 1, '2014-10-04 21:09:47', 1, NULL),
(1073, 'zii', 1, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:09:53', 1, '2014-10-04 21:09:53', 1, NULL),
(1074, 'zii', 2, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:09:54', 1, '2014-10-04 21:09:54', 1, NULL),
(1075, 'zii', 3, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:09:54', 1, '2014-10-04 21:09:54', 1, NULL),
(1076, 'zii', 4, 'are-you-sure-you-want-to-delete-this-item', 'Are you sure you want to delete this item?', '2014-10-04 21:09:54', 1, '2014-10-04 21:09:54', 1, NULL),
(1077, 'zii', 1, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:09:54', 1, '2014-10-04 21:09:54', 1, NULL),
(1078, 'zii', 2, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:09:55', 1, '2014-10-04 21:09:55', 1, NULL),
(1079, 'zii', 3, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:09:55', 1, '2014-10-04 21:09:55', 1, NULL),
(1080, 'zii', 4, 'displaying-start-end-of-1-result-displaying-start-end-of-count-results', 'Displaying {start}-{end} of 1 result.|Displaying {start}-{end} of {count} results.', '2014-10-04 21:09:55', 1, '2014-10-04 21:09:55', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `code` varchar(4) DEFAULT NULL,
  `flag_img` varchar(50) DEFAULT NULL,
  `meta_title` varchar(150) DEFAULT NULL,
  `meta_description` text,
  `description` text,
  `create_time` datetime NOT NULL,
  `create_user_id` int(11) unsigned NOT NULL,
  `update_time` datetime NOT NULL,
  `update_user_id` int(11) unsigned NOT NULL,
  `activity_log` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `flag_img`, `meta_title`, `meta_description`, `description`, `create_time`, `create_user_id`, `update_time`, `update_user_id`, `activity_log`) VALUES
(1, 'English', 'en', '', '', '', '', '2014-09-13 23:55:02', 1, '2014-09-13 23:55:02', 1, NULL),
(2, 'Deutsch', 'de', '', '', '', '', '2014-09-13 23:58:43', 1, '2014-09-13 23:58:43', 1, NULL),
(3, 'Spanisch', 'spa', '', '', '', '', '2014-09-13 23:59:40', 1, '2014-09-13 23:59:40', 1, NULL),
(4, 'test', 'test', '7.jpg', 'test', 'test', 'test', '2014-09-14 18:04:23', 1, '2014-09-14 18:19:47', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `moto_dairy`
--

CREATE TABLE IF NOT EXISTS `moto_dairy` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_id` int(11) unsigned NOT NULL,
  `alt` varchar(150) DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `image_large` varchar(150) DEFAULT NULL,
  `image_detail` varchar(150) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `create_user_id` int(11) unsigned NOT NULL,
  `update_time` datetime NOT NULL,
  `update_user_id` int(11) unsigned NOT NULL,
  `activity_log` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `moto_dairy`
--

INSERT INTO `moto_dairy` (`id`, `lang_id`, `alt`, `title`, `image_large`, `image_detail`, `create_time`, `create_user_id`, `update_time`, `update_user_id`, `activity_log`) VALUES
(1, 1, 'test', 'test', 'zwvooeoih5.jpg', 'detail_zwvooeoih5.jpg', '2014-09-18 00:10:21', 1, '2014-09-28 01:01:01', 1, NULL),
(2, 1, 'Riding Ducks July 14', 'Riding Ducks July 14', 'nqowquhiaa.jpg', 'detail_nqowquhiaa.jpg', '2014-09-28 00:58:02', 1, '2014-09-28 00:58:02', 1, NULL),
(3, 1, 'Riding with Elephants', 'Riding with Elephants', 'chz1stx1jn.jpg', 'detail_chz1stx1jn.jpg', '2014-09-28 00:58:31', 1, '2014-09-28 00:59:30', 1, NULL),
(4, 1, 'Lao Food Diaries', 'Lao Food Diaries', 'oclixoyhs8.jpg', 'detail_oclixoyhs8.jpg', '2014-09-28 00:59:45', 1, '2014-09-28 00:59:45', 1, NULL),
(5, 1, 'High performance', 'Lao Food DiariesHigh performance', 'gezkt0npt8.jpg', 'detail_gezkt0npt8.jpg', '2014-09-28 01:00:39', 1, '2014-09-28 01:00:39', 1, NULL),
(6, 1, 'Lao Food DiariesMekong Experience', 'Lao Food DiariesHigh performance', '6rawpyop03.jpg', 'detail_6rawpyop03.jpg', '2014-09-28 01:00:49', 1, '2014-09-28 01:00:49', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `moto_gallery`
--

CREATE TABLE IF NOT EXISTS `moto_gallery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_id` int(11) unsigned NOT NULL,
  `alt` varchar(150) DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `image_large` varchar(150) DEFAULT NULL,
  `image_detail` varchar(150) DEFAULT NULL,
  `video_tag_embedded_code` text,
  `create_time` datetime NOT NULL,
  `create_user_id` int(11) unsigned NOT NULL,
  `update_time` datetime NOT NULL,
  `update_user_id` int(11) unsigned NOT NULL,
  `activity_log` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `moto_gallery`
--

INSERT INTO `moto_gallery` (`id`, `lang_id`, `alt`, `title`, `image_large`, `image_detail`, `video_tag_embedded_code`, `create_time`, `create_user_id`, `update_time`, `update_user_id`, `activity_log`) VALUES
(1, 1, 'test', 'test', 'ggf5mznjmq.jpg', 'detail_ggf5mznjmq.jpg', '', '2014-09-18 00:20:51', 1, '2014-09-28 00:19:56', 1, NULL),
(2, 1, 'test', 'sd', '6812qe8nti.jpg', 'detail_6812qe8nti.jpg', '', '2014-09-24 00:02:53', 1, '2014-09-28 00:19:46', 1, NULL),
(3, 1, 'test', 'test', 'oumvoawxlg.jpg', 'detail_oumvoawxlg.jpg', '', '2014-09-28 00:26:04', 1, '2014-09-28 00:26:04', 1, NULL),
(4, 1, 'test', 'test', 'czmwv9ittu.jpg', 'detail_czmwv9ittu.jpg', '', '2014-09-28 00:26:25', 1, '2014-09-28 00:26:25', 1, NULL),
(5, 1, 'test', 'test', 'v0c6lmewk2.jpg', 'detail_v0c6lmewk2.jpg', '', '2014-09-28 00:26:32', 1, '2014-09-28 00:26:32', 1, NULL),
(6, 1, 'test', 'test', '9hb9uiwe3v.jpg', 'detail_9hb9uiwe3v.jpg', '', '2014-09-28 00:26:38', 1, '2014-09-28 00:26:38', 1, NULL),
(7, 1, 'test', 'test', 't5k6r55zpp.jpg', 'detail_t5k6r55zpp.jpg', '', '2014-09-28 00:26:43', 1, '2014-09-28 00:26:43', 1, NULL),
(8, 1, 'test', 'test', '6ph0kwqpvs.jpg', 'detail_6ph0kwqpvs.jpg', '', '2014-09-28 00:26:48', 1, '2014-09-28 00:26:48', 1, NULL),
(9, 1, 'test', 'test', 'khe8p2begn.jpg', 'detail_khe8p2begn.jpg', '', '2014-09-28 00:26:53', 1, '2014-09-28 00:26:53', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_id` int(11) unsigned NOT NULL,
  `key` varchar(20) NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `description` text,
  `meta_tag` text,
  `meta_description` text,
  `create_time` datetime NOT NULL,
  `create_user_id` int(11) unsigned NOT NULL,
  `update_time` datetime NOT NULL,
  `update_user_id` int(11) unsigned NOT NULL,
  `activity_log` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `social_media_links`
--

CREATE TABLE IF NOT EXISTS `social_media_links` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_id` int(11) unsigned NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `meta_tag` text,
  `meta_description` text,
  `create_time` datetime NOT NULL,
  `create_user_id` int(11) unsigned NOT NULL,
  `update_time` datetime NOT NULL,
  `update_user_id` int(11) unsigned NOT NULL,
  `activity_log` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `social_media_links`
--

INSERT INTO `social_media_links` (`id`, `lang_id`, `title`, `url`, `image`, `meta_tag`, `meta_description`, `create_time`, `create_user_id`, `update_time`, `update_user_id`, `activity_log`) VALUES
(1, 1, 'EMAIL', '', NULL, 'email.png', 'EMAIL', '2014-09-24 01:14:38', 1, '2014-09-24 01:24:57', 1, NULL),
(2, 1, 'SKYPE', '', NULL, 'skype.png', 'SKYPE', '2014-09-24 01:15:15', 1, '2014-09-24 01:25:35', 1, NULL),
(3, 1, 'FACEBOOK', '', NULL, 'fb.png', 'FACEBOOK', '2014-09-24 01:15:38', 1, '2014-09-24 01:25:45', 1, NULL),
(4, 1, 'GOOGLE', '', NULL, 'google.png', 'GOOGLE', '2014-09-24 01:16:01', 1, '2014-09-24 01:25:57', 1, NULL),
(5, 1, 'PINTREST', '', NULL, 'printrest.png', 'PINTREST', '2014-09-24 01:16:14', 1, '2014-09-24 01:26:12', 1, NULL),
(6, 1, 'FLICKR', '', NULL, 'flickr.png', 'FLICKR', '2014-09-24 01:16:35', 1, '2014-09-24 01:26:24', 1, NULL),
(7, 1, 'YOUTUBE', '', NULL, 'youtube.png', 'YOUTUBE', '2014-09-24 01:16:55', 1, '2014-09-24 01:26:34', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_migration`
--

CREATE TABLE IF NOT EXISTS `tbl_migration` (
  `version` varchar(255) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_migration`
--

INSERT INTO `tbl_migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1410034492),
('m120708_142711_tbl_user', 1410034569),
('m120719_165411_add_adminUser', 1410034569),
('m120910_183824_add_column_user', 1410034571),
('m130129_155820_conf_mis', 1410034571),
('m140908_194312_categories', 1410206160),
('m140908_194537_tours', 1410206160),
('m140908_195612_categoryLangs', 1410206967),
('m140908_195621_TourLangs', 1410206967),
('m140908_200446_conf_item', 1410206968),
('m140913_184914_addColumnInLanguages', 1410634384),
('m140914_150310_TourImages', 1410708224),
('m140916_190838_banner', 1410895193),
('m140916_192047_PagesTitleMeta', 1410895580),
('m140916_192448_SocialMediaLinks', 1410895581),
('m140916_193053_moto_gallery', 1410896611),
('m140916_193122_moto_dairies', 1410896611),
('m140916_194834_faq_questions', 1410897142),
('m140916_195346_team_images', 1410897421),
('m140916_195804_PageLabels', 1410897540),
('m140917_193309_social_link_image', 1410982490),
('m140920_135852_addColumnINfaq', 1411221633),
('m140920_144039_addInnerSlider', 1411226222),
('m140923_192600_addDescriptioninPage', 1411500666),
('m140923_194154_addVidoInGallery', 1411501420),
('m140926_205057_addCSSClassINfaq', 1411764817),
('m140929_185908_addColumnINCategory', 1412017401),
('m140930_182224_createHomePageFeaturedItems', 1412101635);

-- --------------------------------------------------------

--
-- Table structure for table `team_images`
--

CREATE TABLE IF NOT EXISTS `team_images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_id` int(11) unsigned NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `role` varchar(150) DEFAULT NULL,
  `description` text,
  `alt` varchar(150) DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `image_large` varchar(150) DEFAULT NULL,
  `image_detail` varchar(150) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `create_user_id` int(11) unsigned NOT NULL,
  `update_time` datetime NOT NULL,
  `update_user_id` int(11) unsigned NOT NULL,
  `activity_log` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `team_images`
--

INSERT INTO `team_images` (`id`, `lang_id`, `name`, `role`, `description`, `alt`, `title`, `image_large`, `image_detail`, `create_time`, `create_user_id`, `update_time`, `update_user_id`, `activity_log`) VALUES
(1, 1, 'Sara Abdullah', 'Seo expert', '<p>Dave hails from South Africa and has a passion for motorcycle riding. He has been riding motorcycles both on and off road for most of his life. Dave&rsquo;s professional background is in Customer Service and therefore he is committed to meeting and exceeding the customers&rsquo; needs. Dave is married and has 2 grown up children.</p>', 'Sara', 'Sara', 'nut4tb0rau.jpg', 'detail_nut4tb0rau.jpg', '2014-09-18 00:59:40', 1, '2014-09-27 00:08:25', 1, NULL),
(2, 1, 'DAVE VAN ROOYEN', 'MANAGER & MOTOLAO GUIDE', '<p><span>Dave hails from South Africa and has a passion for motorcycle riding. He has been riding motorcycles both on and off road for most of his life. Dave&rsquo;s professional background is in Customer Service and therefore he is committed to meeting and exceeding the customers&rsquo; needs. Dave is married and has 2 grown up children.</span></p>', 'DAVE VAN ROOYEN', 'DAVE VAN ROOYEN', 'qcym1sonbi.jpg', 'detail_qcym1sonbi.jpg', '2014-09-27 00:07:49', 1, '2014-09-27 00:07:49', 1, NULL),
(3, 1, 'DAVE VAN ROOYEN', 'MANAGER & MOTOLAO GUIDE', '<p><span>Dave hails from South Africa and has a passion for motorcycle riding. He has been riding motorcycles both on and off road for most of his life. Dave&rsquo;s professional background is in Customer Service and therefore he is committed to meeting and exceeding the customers&rsquo; needs. Dave is married and has 2 grown up children.</span></p>', 'DAVE VAN ROOYEN', 'DAVE VAN ROOYEN', 'xlho4tek13.jpg', 'detail_xlho4tek13.jpg', '2014-09-27 00:17:47', 1, '2014-09-27 00:17:47', 1, NULL),
(4, 1, 'DAVE VAN ROOYEN', 'MANAGER & MOTOLAO GUIDE', '<p><span>Dave hails from South Africa and has a passion for motorcycle riding. He has been riding motorcycles both on and off road for most of his life. Dave&rsquo;s professional background is in Customer Service and therefore he is committed to meeting and exceeding the customers&rsquo; needs. Dave is married and has 2 grown up children.</span></p>', 'DAVE VAN ROOYEN', 'DAVE VAN ROOYEN', 'gthfnal6fd.jpg', 'detail_gthfnal6fd.jpg', '2014-09-27 00:18:01', 1, '2014-09-27 00:18:01', 1, NULL),
(5, 1, 'DAVE VAN ROOYEN', 'MANAGER & MOTOLAO GUIDE', '<p><span>Dave hails from South Africa and has a passion for motorcycle riding. He has been riding motorcycles both on and off road for most of his life. Dave&rsquo;s professional background is in Customer Service and therefore he is committed to meeting and exceeding the customers&rsquo; needs. Dave is married and has 2 grown up children.</span></p>', 'DAVE VAN ROOYEN', 'DAVE VAN ROOYEN', 'galo9fwcju.jpg', 'detail_galo9fwcju.jpg', '2014-09-27 00:18:08', 1, '2014-09-27 00:18:08', 1, NULL),
(6, 1, 'DAVE VAN ROOYEN', 'MANAGER & MOTOLAO GUIDE', '<p><span>Dave hails from South Africa and has a passion for motorcycle riding. He has been riding motorcycles both on and off road for most of his life. Dave&rsquo;s professional background is in Customer Service and therefore he is committed to meeting and exceeding the customers&rsquo; needs. Dave is married and has 2 grown up children.</span></p>', 'DAVE VAN ROOYEN', 'DAVE VAN ROOYEN', 'w0ly1atdip.jpg', 'detail_w0ly1atdip.jpg', '2014-09-27 00:18:16', 1, '2014-09-27 00:18:24', 1, NULL),
(7, 1, 'DAVE VAN ROOYEN', 'MANAGER & MOTOLAO GUIDE', '<p><span>Dave hails from South Africa and has a passion for motorcycle riding. He has been riding motorcycles both on and off road for most of his life. Dave&rsquo;s professional background is in Customer Service and therefore he is committed to meeting and exceeding the customers&rsquo; needs. Dave is married and has 2 grown up children.</span></p>', 'DAVE VAN ROOYEN', 'DAVE VAN ROOYEN', 'yb8kznkjpu.jpg', 'detail_yb8kznkjpu.jpg', '2014-09-27 00:18:36', 1, '2014-09-27 00:18:36', 1, NULL),
(8, 1, 'DAVE VAN ROOYEN', 'MANAGER & MOTOLAO GUIDE', '<p><span>Dave hails from South Africa and has a passion for motorcycle riding. He has been riding motorcycles both on and off road for most of his life. Dave&rsquo;s professional background is in Customer Service and therefore he is committed to meeting and exceeding the customers&rsquo; needs. Dave is married and has 2 grown up children.</span></p>', 'DAVE VAN ROOYEN', 'DAVE VAN ROOYEN', 'p82xe58gbx.jpg', 'detail_p82xe58gbx.jpg', '2014-09-27 00:18:43', 1, '2014-09-27 00:18:43', 1, NULL),
(9, 1, 'DAVE VAN ROOYEN', 'MANAGER & MOTOLAO GUIDE', '<p><span>Dave hails from South Africa and has a passion for motorcycle riding. He has been riding motorcycles both on and off road for most of his life. Dave&rsquo;s professional background is in Customer Service and therefore he is committed to meeting and exceeding the customers&rsquo; needs. Dave is married and has 2 grown up children.</span></p>', 'DAVE VAN ROOYEN', 'DAVE VAN ROOYEN', 'tek1qhh037.jpg', 'detail_tek1qhh037.jpg', '2014-09-27 00:19:43', 1, '2014-09-27 00:19:43', 1, NULL),
(10, 1, 'DAVE VAN ROOYEN', 'MANAGER & MOTOLAO GUIDE', '<p><span>Dave hails from South Africa and has a passion for motorcycle riding. He has been riding motorcycles both on and off road for most of his life. Dave&rsquo;s professional background is in Customer Service and therefore he is committed to meeting and exceeding the customers&rsquo; needs. Dave is married and has 2 grown up children.</span></p>', 'DAVE VAN ROOYEN', 'DAVE VAN ROOYEN', 'lmtqtgco0w.jpg', 'detail_lmtqtgco0w.jpg', '2014-09-27 00:19:50', 1, '2014-09-27 00:19:50', 1, NULL),
(11, 1, 'DAVE VAN ROOYEN', 'MANAGER & MOTOLAO GUIDE', '<p><span>Dave hails from South Africa and has a passion for motorcycle riding. He has been riding motorcycles both on and off road for most of his life. Dave&rsquo;s professional background is in Customer Service and therefore he is committed to meeting and exceeding the customers&rsquo; needs. Dave is married and has 2 grown up children.</span></p>', 'DAVE VAN ROOYEN', 'DAVE VAN ROOYEN', 'tnorlywk8c.jpg', 'detail_tnorlywk8c.jpg', '2014-09-27 00:20:26', 1, '2014-09-27 00:20:41', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tours`
--

CREATE TABLE IF NOT EXISTS `tours` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `short_title` varchar(150) NOT NULL,
  `tour_type` varchar(150) NOT NULL,
  `category_id` int(11) DEFAULT '0',
  `url` varchar(150) DEFAULT NULL,
  `meta_title` varchar(150) DEFAULT NULL,
  `meta_description` text,
  `description` text,
  `create_time` datetime NOT NULL,
  `create_user_id` int(11) unsigned NOT NULL,
  `update_time` datetime NOT NULL,
  `update_user_id` int(11) unsigned NOT NULL,
  `activity_log` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tours`
--

INSERT INTO `tours` (`id`, `name`, `short_title`, `tour_type`, `category_id`, `url`, `meta_title`, `meta_description`, `description`, `create_time`, `create_user_id`, `update_time`, `update_user_id`, `activity_log`) VALUES
(2, '1 DAY TOUR ', 'FOLLOW YOUR DREAMS.', '1 day', 1, '2-1-day-tour', '', '', '<p><strong>Stunning landscapes</strong></p>\r\n<p><strong>Cool break at beautiful waterfall</strong></p>\r\n<p><strong>Dirt road</strong></p>\r\n<p><strong>Mekong River</strong></p>\r\n<p><strong>Rural villages</strong></p>\r\n<p><strong>Local food</strong></p>\r\n<p><strong>River crossings</strong></p>\r\n<p><strong>Level: beginners to intermediate</strong></p>\r\n<p>&nbsp;</p>\r\n<p>The tours both start off with a leisurely ride on a winding paved road out of Luang Prabang towards Muang Nan. You will ride through truly stunning landscapes and stop for a cool break at the beautiful Kamcham waterfall along the way.</p>\r\n<p>Once at Muang Nan you will experience a traditional Lao lunch at one of the many Lao roadside restaurants and be able to interact with the local people. You will leave Muang Nan for Luang Prabang by riding about 60km along the mighty Mekong River on one of two dirt roads, depending on your riding skills. The &ldquo;lower&rdquo; road is a pleasant windy dirt road that follows close to the Mekong River and has a few small river crossings. This ride is suitable for both beginners and intermediate riders.</p>\r\n<p>If you are a bit more experienced we will take the &ldquo;upper&rdquo; road, which is slightly inland from the Mekong River and requires a bit more riding skill. This road incorporates more track riding and has a few tricky sections with more hill climbs and descents, which call for more technical riding skills. With both rides you will pass through different rural villages and get to see how the rural Lao people live. The landscapes are very beautiful with the road passing through teak tree plantations and farm- lands.</p>\r\n<p>Before returning to Luang Prabang you will get to visit the stunningly beautiful Kuang Si Waterfalls and even take a dip in the refreshing turquoise water. You will also have the opportunity to see and learn about the endangered Asian Bears at the Free the Bear sanctuary.</p>\r\n<p>On either version of the Mighty Mekong One Day Ride, you will experience rural life, waterfalls, the Lao countryside and many other hidden treasures along the way. Every tour can be customized to your requirements.<br /><br /> <a title="" href="#">Please contact us for more details</a> <a title="flickr images" href="#">See previous tour experiences on flickr</a></p>', '2014-09-14 11:53:21', 1, '2014-10-04 01:01:22', 1, NULL),
(3, '2 DAYS TOUR', 'GET OUT THERE.', '2 day', 1, '2_days_tour', '2 DAYS TOUR', '2 DAYS TOUR', '<p><span>Stunning landscapes - cool break at beautiful waterfall - dirt road - Mekong River - rural villages - local food - river crossings - for beginners and interme- diate riders.</span></p>', '2014-09-30 00:27:09', 1, '2014-09-30 00:27:09', 1, NULL),
(4, '3 DAYS TOUR', 'RIVER CHALLENGE', '3 day', 1, '3_days_tour', '', '', '<p><span>Stunning landscapes - cool break at beautiful waterfall - dirt road - Mekong River - rural villages - local food - river crossings - for beginners and interme- diate riders.</span></p>', '2014-09-30 00:28:28', 1, '2014-09-30 00:31:09', 1, NULL),
(5, 'Special Tours UPPON REQUEST', 'SPECIAL TOURS PER REQUEST', '10 day', 1, '', '', '', '<p><span>Stunning landscapes - cool break at beautiful waterfall - dirt road - Mekong River - rural villages - local food - river crossings - for beginners and interme- diate riders.</span></p>', '2014-09-30 00:29:38', 1, '2014-09-30 00:31:44', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tour_image`
--

CREATE TABLE IF NOT EXISTS `tour_image` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_id` int(11) unsigned NOT NULL,
  `tour_id` int(11) unsigned NOT NULL,
  `is_default` tinyint(11) DEFAULT '0',
  `tag` varchar(150) DEFAULT NULL,
  `image_large` varchar(150) NOT NULL,
  `image_small` varchar(150) DEFAULT NULL,
  `image_detail` varchar(150) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `create_user_id` int(11) unsigned NOT NULL,
  `update_time` datetime NOT NULL,
  `update_user_id` int(11) unsigned NOT NULL,
  `activity_log` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tour_image`
--

INSERT INTO `tour_image` (`id`, `lang_id`, `tour_id`, `is_default`, `tag`, `image_large`, `image_small`, `image_detail`, `create_time`, `create_user_id`, `update_time`, `update_user_id`, `activity_log`) VALUES
(3, 1, 2, 0, 'dsdssd', '1anvr5kkf4.jpg', 'small_1anvr5kkf4.jpg', 'detail_1anvr5kkf4.jpg', '2014-09-15 00:07:23', 1, '2014-09-30 00:30:29', 1, NULL),
(4, 1, 3, 1, '', '33bg8kjvll.jpg', 'small_33bg8kjvll.jpg', 'detail_33bg8kjvll.jpg', '2014-09-30 00:30:54', 1, '2014-09-30 00:30:54', 1, NULL),
(5, 1, 4, 1, '', 'h5st0tv811.jpg', 'small_h5st0tv811.jpg', 'detail_h5st0tv811.jpg', '2014-09-30 00:31:19', 1, '2014-09-30 00:31:19', 1, NULL),
(6, 1, 5, 1, '', 'di9etl6y1k.jpg', 'small_di9etl6y1k.jpg', 'detail_di9etl6y1k.jpg', '2014-09-30 00:31:54', 1, '2014-09-30 00:31:54', 1, NULL),
(7, 1, 2, 1, 'Test', 'kif519j5zw.jpg', 'small_kif519j5zw.jpg', 'detail_kif519j5zw.jpg', '2014-10-04 01:04:20', 1, '2014-10-04 01:04:20', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tour_langs`
--

CREATE TABLE IF NOT EXISTS `tour_langs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `short_title` varchar(150) NOT NULL,
  `tour_type` varchar(150) NOT NULL,
  `lang_id` int(11) DEFAULT '0',
  `parent_id` int(11) DEFAULT '0',
  `url` varchar(150) DEFAULT NULL,
  `meta_title` varchar(150) DEFAULT NULL,
  `meta_description` text,
  `description` text,
  `create_time` datetime NOT NULL,
  `create_user_id` int(11) unsigned NOT NULL,
  `update_time` datetime NOT NULL,
  `update_user_id` int(11) unsigned NOT NULL,
  `activity_log` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tour_langs`
--

INSERT INTO `tour_langs` (`id`, `name`, `short_title`, `tour_type`, `lang_id`, `parent_id`, `url`, `meta_title`, `meta_description`, `description`, `create_time`, `create_user_id`, `update_time`, `update_user_id`, `activity_log`) VALUES
(1, 'test a', 'test', '1 day', 2, 2, 'test', 'test', 'test', 'test', '2014-09-14 17:49:32', 1, '2014-09-14 17:51:55', 1, NULL),
(2, 'test', 'test', '1 day', 3, 2, 'test', 'test', 'test', '<p>test</p>', '2014-09-28 23:47:05', 1, '2014-09-28 23:47:05', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `type` enum('admin','non-admin') DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `activation_key` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `create_user_id` int(11) unsigned NOT NULL,
  `update_time` datetime NOT NULL,
  `update_user_id` int(11) unsigned NOT NULL,
  `activity_log` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `password`, `email`, `ip_address`, `type`, `is_active`, `activation_key`, `deleted`, `create_time`, `create_user_id`, `update_time`, `update_user_id`, `activity_log`) VALUES
(1, 'admin', 'ali', 'abbas', '21232f297a57a5a743894a0e4a801fc3', 'admin@admin.com', '', 'admin', 1, NULL, 0, '2014-09-07 01:09:09', 1, '2014-09-20 16:49:57', 1, 'user insterted through console');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
