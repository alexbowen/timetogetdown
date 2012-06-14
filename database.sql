-- phpMyAdmin SQL Dump
-- version 3.3.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 14, 2012 at 03:25 PM
-- Server version: 5.1.54
-- PHP Version: 5.3.9-ZS5.6.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `ttgd`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_guests`
--

DROP TABLE IF EXISTS `active_guests`;
CREATE TABLE IF NOT EXISTS `active_guests` (
  `ip` varchar(15) NOT NULL,
  `timestamp` int(11) unsigned NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `active_users`
--

DROP TABLE IF EXISTS `active_users`;
CREATE TABLE IF NOT EXISTS `active_users` (
  `username` varchar(30) NOT NULL,
  `timestamp` int(11) unsigned NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_map`
--

DROP TABLE IF EXISTS `admin_map`;
CREATE TABLE IF NOT EXISTS `admin_map` (
  `user_id` mediumint(8) NOT NULL,
  `details` smallint(1) DEFAULT '0',
  `features` smallint(1) DEFAULT '0',
  `review` smallint(1) DEFAULT '0',
  `googlemap` smallint(1) DEFAULT '0',
  `admin_details` smallint(1) DEFAULT '0',
  `photos` smallint(1) DEFAULT '0',
  `whats_on` smallint(1) DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_map_resources`
--

DROP TABLE IF EXISTS `admin_map_resources`;
CREATE TABLE IF NOT EXISTS `admin_map_resources` (
  `id` mediumint(11) NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) NOT NULL,
  `resource_id` mediumint(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `subtitle` varchar(70) NOT NULL,
  `photo` varchar(40) DEFAULT NULL,
  `intro_text` varchar(1500) NOT NULL,
  `zoom` mediumint(2) DEFAULT NULL,
  `latitude` float(17,15) DEFAULT NULL,
  `longitude` float(17,15) DEFAULT NULL,
  `page` varchar(30) DEFAULT NULL,
  `active` varchar(2) DEFAULT NULL,
  `map` varchar(2) DEFAULT NULL,
  `readmore` varchar(2) NOT NULL,
  `menu` varchar(2) NOT NULL,
  `content` longtext,
  `link` varchar(120) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rss` varchar(3) NOT NULL,
  `list_query` varchar(100) NOT NULL DEFAULT '0',
  `list_criteria` varchar(50) NOT NULL,
  `list_text` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=93 ;

-- --------------------------------------------------------

--
-- Table structure for table `articles_categories`
--

DROP TABLE IF EXISTS `articles_categories`;
CREATE TABLE IF NOT EXISTS `articles_categories` (
  `category_id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `category` varchar(30) NOT NULL,
  `template` varchar(60) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `articles_categories_assoc`
--

DROP TABLE IF EXISTS `articles_categories_assoc`;
CREATE TABLE IF NOT EXISTS `articles_categories_assoc` (
  `id` mediumint(11) NOT NULL AUTO_INCREMENT,
  `article_id` mediumint(7) NOT NULL,
  `category_id` mediumint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `articles_pubs`
--

DROP TABLE IF EXISTS `articles_pubs`;
CREATE TABLE IF NOT EXISTS `articles_pubs` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `pub_id` mediumint(7) NOT NULL,
  `article_id` mediumint(7) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=180 ;

-- --------------------------------------------------------

--
-- Table structure for table `atm`
--

DROP TABLE IF EXISTS `atm`;
CREATE TABLE IF NOT EXISTS `atm` (
  `atm_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `atm_latitude` float(8,6) NOT NULL,
  `atm_longitude` float(8,6) NOT NULL,
  `atm_bank` varchar(40) NOT NULL,
  `atm_address` varchar(30) NOT NULL,
  `atm_city` varchar(10) NOT NULL,
  `atm_postcode` varchar(9) NOT NULL,
  `atm_opening` varchar(10) NOT NULL,
  PRIMARY KEY (`atm_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=282 ;

-- --------------------------------------------------------

--
-- Table structure for table `banned_users`
--

DROP TABLE IF EXISTS `banned_users`;
CREATE TABLE IF NOT EXISTS `banned_users` (
  `username` varchar(30) NOT NULL,
  `timestamp` int(11) unsigned NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `beer`
--

DROP TABLE IF EXISTS `beer`;
CREATE TABLE IF NOT EXISTS `beer` (
  `drink_id` int(8) NOT NULL AUTO_INCREMENT,
  `drink_type` varchar(40) NOT NULL,
  `drink_name` varchar(70) NOT NULL,
  `drink_nationality` varchar(30) NOT NULL,
  `drink_av` decimal(2,1) NOT NULL,
  `drink_review` varchar(200) DEFAULT NULL,
  `drink_region` varchar(70) NOT NULL,
  `drink_style` varchar(70) NOT NULL,
  PRIMARY KEY (`drink_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6487 ;

-- --------------------------------------------------------

--
-- Table structure for table `beer_pub`
--

DROP TABLE IF EXISTS `beer_pub`;
CREATE TABLE IF NOT EXISTS `beer_pub` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `beer_id` int(8) NOT NULL,
  `pub_id` int(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

DROP TABLE IF EXISTS `enquiries`;
CREATE TABLE IF NOT EXISTS `enquiries` (
  `id` mediumint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `event` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sent` int(11) DEFAULT NULL,
  `message` varchar(600) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
CREATE TABLE IF NOT EXISTS `features` (
  `pub_id` mediumint(11) NOT NULL,
  `sports` varchar(3) DEFAULT NULL,
  `outdoor` varchar(3) DEFAULT NULL,
  `riverside` varchar(3) DEFAULT NULL,
  `smoking` varchar(3) DEFAULT NULL,
  `live_music` varchar(3) DEFAULT NULL,
  `pool_table` varchar(3) DEFAULT NULL,
  `dart_board` varchar(3) DEFAULT NULL,
  `table_service` varchar(3) DEFAULT NULL,
  `quiz_night` varchar(3) DEFAULT NULL,
  `real_ale` varchar(3) DEFAULT NULL,
  `function_room` varchar(3) DEFAULT NULL,
  `late_licence` varchar(3) DEFAULT NULL,
  `wifi` varchar(3) DEFAULT NULL,
  `food` varchar(3) DEFAULT NULL,
  `sky_tv` varchar(3) DEFAULT NULL,
  `terrace` varchar(3) DEFAULT NULL,
  `thai_food` varchar(3) DEFAULT NULL,
  `closed_weekends` varchar(3) DEFAULT NULL,
  `street_tables` varchar(3) DEFAULT NULL,
  `children_allowed` varchar(3) NOT NULL,
  `disabled_facilities` varchar(3) NOT NULL,
  `credit_cards` varchar(3) NOT NULL,
  `rooms_available` varchar(3) NOT NULL,
  `DJ` varchar(3) NOT NULL,
  `table_football` varchar(3) NOT NULL,
  `football` varchar(3) DEFAULT NULL,
  `cocktails` varchar(3) NOT NULL,
  PRIMARY KEY (`pub_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `features_images`
--

DROP TABLE IF EXISTS `features_images`;
CREATE TABLE IF NOT EXISTS `features_images` (
  `feature_name` varchar(50) NOT NULL,
  `image_file` varchar(50) NOT NULL,
  PRIMARY KEY (`feature_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `text` varchar(600) NOT NULL,
  `date` date NOT NULL,
  `feedbackfrom` varchar(80) NOT NULL,
  `product_id` mediumint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
CREATE TABLE IF NOT EXISTS `links` (
  `station1` smallint(6) NOT NULL DEFAULT '0',
  `station2` smallint(6) NOT NULL DEFAULT '0',
  `line` smallint(6) NOT NULL DEFAULT '0',
  UNIQUE KEY `line` (`line`,`station1`,`station2`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
CREATE TABLE IF NOT EXISTS `locations` (
  `location_id` mediumint(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(30) NOT NULL,
  `borough` varchar(22) NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=117 ;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `date` varchar(10) NOT NULL DEFAULT '0',
  `status` varchar(7) NOT NULL DEFAULT 'pending',
  `ge` blob,
  `ec` blob,
  `el` blob,
  `gu` blob,
  `ro` blob,
  `ur` blob,
  `number` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`number`),
  KEY `status` (`status`),
  KEY `date` (`date`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
CREATE TABLE IF NOT EXISTS `modules` (
  `id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `subtitle` varchar(70) NOT NULL,
  `intro_text` varchar(1500) NOT NULL,
  `active` varchar(2) DEFAULT NULL,
  `map` varchar(2) DEFAULT NULL,
  `content` longtext,
  `link` varchar(120) DEFAULT NULL,
  `rss` varchar(3) NOT NULL,
  `controller` varchar(100) NOT NULL,
  `number_items` mediumint(5) NOT NULL,
  `bind` varchar(100) NOT NULL,
  `bind_required` smallint(1) NOT NULL DEFAULT '0',
  `logged_in` smallint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=110 ;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `stime` bigint(11) NOT NULL,
  `news` varchar(500) NOT NULL,
  `product_id` mediumint(6) DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `page` varchar(40) NOT NULL,
  `title` varchar(300) NOT NULL,
  `robots` varchar(8) NOT NULL,
  `keywords` varchar(300) NOT NULL,
  `description` varchar(300) NOT NULL,
  `active` varchar(3) NOT NULL,
  `menu` varchar(3) DEFAULT NULL,
  `order_index` mediumint(6) NOT NULL DEFAULT '999',
  `user_level` smallint(2) NOT NULL DEFAULT '1',
  `rss` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=107 ;

-- --------------------------------------------------------

--
-- Table structure for table `pages_javascript`
--

DROP TABLE IF EXISTS `pages_javascript`;
CREATE TABLE IF NOT EXISTS `pages_javascript` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `page_id` mediumint(9) NOT NULL,
  `javascript` varchar(12) NOT NULL,
  `flag` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=150 ;

-- --------------------------------------------------------

--
-- Table structure for table `page_articles`
--

DROP TABLE IF EXISTS `page_articles`;
CREATE TABLE IF NOT EXISTS `page_articles` (
  `id` mediumint(11) NOT NULL AUTO_INCREMENT,
  `page_id` mediumint(8) NOT NULL,
  `article_id` mediumint(8) DEFAULT NULL,
  `page_order` mediumint(6) NOT NULL DEFAULT '0',
  `active` varchar(3) NOT NULL DEFAULT 'on',
  `type` varchar(20) NOT NULL DEFAULT 'article',
  `rss` varchar(3) NOT NULL,
  `bind` varchar(100) NOT NULL,
  `number_items` smallint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=229 ;

-- --------------------------------------------------------

--
-- Table structure for table `postcodes`
--

DROP TABLE IF EXISTS `postcodes`;
CREATE TABLE IF NOT EXISTS `postcodes` (
  `postcode_id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `place_name` varchar(30) NOT NULL,
  `postcode` varchar(4) NOT NULL,
  PRIMARY KEY (`postcode_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=226 ;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` mediumint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `pubs`
--

DROP TABLE IF EXISTS `pubs`;
CREATE TABLE IF NOT EXISTS `pubs` (
  `pub_id` mediumint(11) NOT NULL AUTO_INCREMENT,
  `venue_type_id` mediumint(6) NOT NULL,
  `pub_status` varchar(2) NOT NULL,
  `pub_name` varchar(35) NOT NULL,
  `pub_address` varchar(60) NOT NULL,
  `pub_city` varchar(20) NOT NULL,
  `pub_postcode` varchar(8) NOT NULL,
  `pub_postcode_1` varchar(4) NOT NULL,
  `pub_postcode_2` varchar(9) NOT NULL,
  `pub_telephone` varchar(14) NOT NULL,
  `pub_www` varchar(50) NOT NULL,
  `pub_email` varchar(50) NOT NULL,
  `type_id` varchar(20) NOT NULL,
  `landlord-id` mediumint(11) NOT NULL,
  `pub_photo` varchar(20) DEFAULT NULL,
  `photo_type` varchar(25) NOT NULL,
  `photo_name` varchar(50) NOT NULL,
  `location_id` mediumint(11) NOT NULL,
  `tube_id` mediumint(11) NOT NULL,
  `latitude` float(17,15) NOT NULL,
  `longitude` float(17,15) NOT NULL,
  `pub_notes` varchar(300) NOT NULL,
  `pub_closed` varchar(2) NOT NULL,
  `featured` varchar(2) DEFAULT NULL,
  `featured2` binary(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pub_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=911 ;

-- --------------------------------------------------------

--
-- Table structure for table `pub_distances`
--

DROP TABLE IF EXISTS `pub_distances`;
CREATE TABLE IF NOT EXISTS `pub_distances` (
  `pd_id` mediumint(10) NOT NULL AUTO_INCREMENT,
  `pub_id` mediumint(8) NOT NULL,
  `type` varchar(12) NOT NULL,
  `type_id` mediumint(8) NOT NULL,
  `distance` decimal(3,2) NOT NULL,
  PRIMARY KEY (`pd_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2889 ;

-- --------------------------------------------------------

--
-- Table structure for table `pub_types`
--

DROP TABLE IF EXISTS `pub_types`;
CREATE TABLE IF NOT EXISTS `pub_types` (
  `type_id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

-- --------------------------------------------------------

--
-- Table structure for table `quarantine`
--

DROP TABLE IF EXISTS `quarantine`;
CREATE TABLE IF NOT EXISTS `quarantine` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `user` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `text` varchar(400) NOT NULL,
  `pub_id` mediumint(7) NOT NULL,
  `rating` mediumint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `review_id` mediumint(11) NOT NULL AUTO_INCREMENT,
  `pub_id` mediumint(11) NOT NULL,
  `rating` mediumint(1) DEFAULT NULL,
  `reviewed_by` varchar(10) NOT NULL,
  `review` varchar(1200) DEFAULT NULL,
  `review_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`review_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1244 ;

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

DROP TABLE IF EXISTS `routes`;
CREATE TABLE IF NOT EXISTS `routes` (
  `line` smallint(6) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL DEFAULT '',
  `colour` varchar(6) NOT NULL DEFAULT '',
  `image_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`line`),
  UNIQUE KEY `line` (`line`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `statistics`
--

DROP TABLE IF EXISTS `statistics`;
CREATE TABLE IF NOT EXISTS `statistics` (
  `id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `month` date NOT NULL,
  `visitors` mediumint(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

-- --------------------------------------------------------

--
-- Table structure for table `style_types`
--

DROP TABLE IF EXISTS `style_types`;
CREATE TABLE IF NOT EXISTS `style_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tube`
--

DROP TABLE IF EXISTS `tube`;
CREATE TABLE IF NOT EXISTS `tube` (
  `tube_id` mediumint(6) NOT NULL DEFAULT '0',
  `latitude` float NOT NULL DEFAULT '0',
  `longitude` float NOT NULL DEFAULT '0',
  `tube_station` varchar(64) NOT NULL,
  `display_name` varchar(64) DEFAULT NULL,
  `tube_zone` float DEFAULT NULL,
  `total_lines` smallint(6) NOT NULL DEFAULT '0',
  `rail` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tube_id`),
  UNIQUE KEY `id` (`tube_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tube_routes`
--

DROP TABLE IF EXISTS `tube_routes`;
CREATE TABLE IF NOT EXISTS `tube_routes` (
  `id` mediumint(6) NOT NULL AUTO_INCREMENT,
  `tube_id` mediumint(6) NOT NULL,
  `line` mediumint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=418 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) DEFAULT NULL,
  `userid` varchar(32) NOT NULL,
  `userlevel` tinyint(1) unsigned NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `timestamp` int(11) unsigned NOT NULL,
  `user_postcode` varchar(4) NOT NULL,
  `user_first_name` varchar(20) NOT NULL,
  `user_second_name` varchar(30) NOT NULL,
  `user_type_id` mediumint(2) NOT NULL,
  `location_id` mediumint(4) NOT NULL,
  `user_photo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=109 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_levels`
--

DROP TABLE IF EXISTS `user_levels`;
CREATE TABLE IF NOT EXISTS `user_levels` (
  `id` int(2) NOT NULL,
  `name` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_pubs`
--

DROP TABLE IF EXISTS `user_pubs`;
CREATE TABLE IF NOT EXISTS `user_pubs` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) NOT NULL,
  `pub_id` mediumint(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_reviews`
--

DROP TABLE IF EXISTS `user_reviews`;
CREATE TABLE IF NOT EXISTS `user_reviews` (
  `user_review_id` int(8) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `pub_id` int(8) NOT NULL,
  `user_review` varchar(500) NOT NULL,
  `user_rating` int(1) NOT NULL,
  `last_updated` datetime NOT NULL,
  `user_id` mediumint(8) NOT NULL,
  PRIMARY KEY (`user_review_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

DROP TABLE IF EXISTS `user_types`;
CREATE TABLE IF NOT EXISTS `user_types` (
  `user_type_id` mediumint(2) NOT NULL AUTO_INCREMENT,
  `user_type` varchar(12) NOT NULL,
  `user_type_image` varchar(20) NOT NULL,
  PRIMARY KEY (`user_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `venue_types`
--

DROP TABLE IF EXISTS `venue_types`;
CREATE TABLE IF NOT EXISTS `venue_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `name_plural` varchar(60) NOT NULL,
  `color` varchar(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
CREATE TABLE IF NOT EXISTS `videos` (
  `video_id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  `youtube_id` varchar(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`video_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;
