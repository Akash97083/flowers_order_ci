-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2019 at 05:45 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `saesha_flower`
--

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

CREATE TABLE IF NOT EXISTS `captcha` (
`captcha_id` bigint(13) unsigned NOT NULL,
  `captcha_time` int(10) unsigned NOT NULL,
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `word` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `captcha`
--

INSERT INTO `captcha` (`captcha_id`, `captcha_time`, `ip_address`, `word`) VALUES
(1, 1575545156, '::1', 'FWACPK'),
(2, 1575545159, '::1', 'PSTVIV');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `user_agent` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('458c98e6125488ee15b151337fa972e0', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 1575473241, ''),
('f623d742476cd9ad13bcc9e19b715b70', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 1575469307, 'a:8:{s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('9d2d2623ea2ddc1b4077d7be931fede5', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1575537250, 'a:10:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;s:7:"captcha";s:8:"YAXELBLL";}'),
('8451ddfcef9d064c9f7949315d04ef4f', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1575472323, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"captcha";s:8:"FVNAVVJL";}'),
('bfe0634d696e8bd5967391820f0e19cd', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 1575274960, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('0350d4757e1d71d5489dc70f0deb53e9', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 1575274982, ''),
('502dcf5da4bc6c7f6518f9a02a63d936', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 1575035653, ''),
('21958cc4d61fc0d56265bd4362418789', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 1574771784, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('7dd9b3262cc7ae33e81db73917f0d691', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1574836988, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('0e60e73ad226741b3ed814f7fea5bd7c', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1575013386, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('c29afc5eff108d076798f97414fc6a37', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1575032949, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('1a83445999e4ac17384a9fe00e2f293c', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1575398962, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('977afb13840aca07cab37d8c5d5fe3ca', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1575009138, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('0645880e5708148f54b2e31590fce1d4', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1571663360, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"captcha";s:8:"IYHXYTFM";}'),
('f336ed571cd314018074998e9031c111', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1571663354, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"captcha";s:8:"KSDFHKFZ";}'),
('ce554a573e41f3ee914d50d6dd2b408f', 'fe80::74af:4c4e:1550:1cec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36 Edge', 1571661937, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('2f5d207a629fa4bed87325d8f36237ca', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1571661548, 'a:4:{s:9:"user_data";s:0:"";s:7:"captcha";s:8:"UDADEXUJ";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('bbdfadbab96af7969bd2dec3acf7e6a3', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1571667772, 'a:4:{s:9:"user_data";s:0:"";s:7:"captcha";s:8:"RFKYXBBT";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('fb8ba26c78e876af66ba95308862536e', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1571667779, 'a:4:{s:9:"user_data";s:0:"";s:7:"captcha";s:8:"NMMGIXIX";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('d6348569997fc6c3f252794fbca59549', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1571752505, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('ad7d06d096c2a07be9ca8600a4580298', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1573053280, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('b895a5f7a1ab690ba1557bc206734779', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 1573815139, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('bceac7bba3351c511b3d76836b0230b6', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 1574420044, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('685e66c6e2f7300d566c77762e00fa8d', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 1574420174, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('31e7c35cdc211e14545535fd60951317', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1574687091, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('fe2acc70b590cb24b6ebf0f35603c601', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 1569841549, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('9ff38cf1fd912995223052e5fe2aa5b9', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1570862164, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('ee0e92de4cfb4396c2901be95c126d6b', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1570864344, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('f4ffa940b37413ed001a673ea14ef7ff', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569835294, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('4797092cb9deb5bdafad5e76e9750c39', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1570003007, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('7f3ca88f80f7ac00e8a673a1c4a63a6f', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1570878542, 'a:11:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;s:13:"cart_contents";a:3:{s:32:"9bf31c7ff062936a96d3c8bd1f8f2ff3";a:18:{s:5:"rowid";s:32:"9bf31c7ff062936a96d3c8bd1f8f2ff3";s:2:"id";s:2:"15";s:11:"category_id";s:1:"6";s:15:"sub_category_id";s:2:"16";s:18:"subcategory_cat_id";s:3:"303";s:4:"name";s:53:"LAND ROVER SERIES 3 SWIVEL HOUSING KIT . PART- DA3181";s:6:"weight";s:4:"5.40";s:18:"product_size_width";s:4:"0.17";s:19:"product_size_length";s:4:"0.26";s:19:"product_size_height";s:4:"0.19";s:7:"part_no";s:6:"DA3181";s:5:"price";s:6:"120.39";s:13:"special_price";s:6:"120.39";s:12:"actual_price";s:6:"120.39";s:14:"price_with_tax";s:4:"0.00";s:8:"tax_rate";s:4:"0.00";s:3:"qty";s:1:"1";s:8:"subtotal";d:120.3900000000000005684341886080801486968994140625;}s:11:"total_items";i:1;s:10:"cart_total";d:120.3900000000000005684341886080801486968994140625;}s:23:"session_discount_coupon";s:5:"FALSE";}'),
('0d546046ec4f1c42f77c22c162e42314', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569999208, 'a:16:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:23:"session_discount_coupon";s:5:"FALSE";s:7:"user_id";s:1:"1";s:10:"first_name";s:8:"Biswajit";s:9:"last_name";s:5:"Maity";s:10:"user_email";s:27:"biswajitmaityniit@gmail.com";s:11:"user_mobile";s:10:"8768624650";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:14:"user_logged_in";b:1;s:32:"total_user_credit_point_to_pound";s:4:"0.00";s:12:"shpping_cost";s:5:"39.20";s:14:"original_price";s:5:"32.67";s:13:"cart_contents";a:3:{s:32:"9bf31c7ff062936a96d3c8bd1f8f2ff3";a:18:{s:5:"rowid";s:32:"9bf31c7ff062936a96d3c8bd1f8f2ff3";s:2:"id";s:2:"15";s:11:"category_id";s:1:"6";s:15:"sub_category_id";s:2:"16";s:18:"subcategory_cat_id";s:3:"303";s:4:"name";s:53:"LAND ROVER SERIES 3 SWIVEL HOUSING KIT . PART- DA3181";s:6:"weight";s:4:"5.40";s:18:"product_size_width";s:4:"0.17";s:19:"product_size_length";s:4:"0.26";s:19:"product_size_height";s:4:"0.19";s:7:"part_no";s:6:"DA3181";s:5:"price";s:6:"120.39";s:13:"special_price";s:6:"120.39";s:12:"actual_price";s:6:"120.39";s:14:"price_with_tax";s:4:"0.00";s:8:"tax_rate";s:4:"0.00";s:3:"qty";s:1:"1";s:8:"subtotal";d:120.3900000000000005684341886080801486968994140625;}s:11:"total_items";i:1;s:10:"cart_total";d:120.3900000000000005684341886080801486968994140625;}s:12:"last_tran_id";i:265;}'),
('107d6d142347dced9ab00b744749705f', '192.168.0.21', 'Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.', 1569657494, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('d50a1699f78c48663b03e9dded6a99d1', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569657490, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('09dbcafe14214caea180807be9586d4f', '192.168.0.21', 'Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.', 1569583023, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('075d2e5111890daa904afe72b9414a6c', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569526906, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('b80898c3b3031e8e1e0788330e884301', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569582048, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('0ac8de8c123b863196e45b94ae0ba375', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569582046, 'a:11:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:23:"session_discount_coupon";s:5:"FALSE";s:13:"cart_contents";a:4:{s:32:"ddcb155487b88aaa80aed158006bdbdf";a:18:{s:5:"rowid";s:32:"ddcb155487b88aaa80aed158006bdbdf";s:2:"id";s:4:"3236";s:11:"category_id";s:1:"6";s:15:"sub_category_id";s:2:"16";s:18:"subcategory_cat_id";s:3:"298";s:4:"name";s:77:"594776 LAND ROVER SERIES 2 BLEED SCREW CLUTCH SLAVE CYLINDER.x10 PART- 606733";s:6:"weight";s:4:"0.20";s:18:"product_size_width";s:4:"0.15";s:19:"product_size_length";s:4:"0.10";s:19:"product_size_height";s:3:"0.1";s:7:"part_no";s:6:"606733";s:5:"price";s:4:"4.80";s:13:"special_price";N;s:12:"actual_price";s:4:"4.80";s:14:"price_with_tax";s:4:"0.00";s:8:"tax_rate";s:4:"0.00";s:3:"qty";s:1:"1";s:8:"subtotal";d:4.79999999999999982236431605997495353221893310546875;}s:32:"3988c7f88ebcb58c6ce932b957b6f332";a:18:{s:5:"rowid";s:32:"3988c7f88ebcb58c6ce932b957b6f332";s:2:"id";s:3:"137";s:11:"category_id";s:1:"7";s:15:"sub_category_id";s:2:"37";s:18:"subcategory_cat_id";s:3:"564";s:4:"name";s:71:"JAGUAR X-TYPE 2001-2010 V6 PETROL OIL SUMP AND DIPSTICK. PART- XR820128";s:6:"weight";s:4:"0.04";s:18:"product_size_width";s:5:"0.040";s:19:"product_size_length";s:5:"0.040";s:19:"product_size_height";s:5:"0.060";s:7:"part_no";s:8:"XR820128";s:5:"price";s:4:"8.32";s:13:"special_price";N;s:12:"actual_price";s:4:"8.32";s:14:"price_with_tax";s:4:"0.00";s:8:"tax_rate";s:4:"0.00";s:3:"qty";s:1:"1";s:8:"subtotal";d:8.32000000000000028421709430404007434844970703125;}s:11:"total_items";i:2;s:10:"cart_total";d:13.120000000000000994759830064140260219573974609375;}s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('58300544c20524eaeea088157ece7554', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569488492, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:23:"session_discount_coupon";s:5:"FALSE";}'),
('2ca72de9d0c32537ee82d07b31a376ec', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569488470, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:23:"session_discount_coupon";s:5:"FALSE";}'),
('bb19d3c5ace915bbb6e440771af12ba8', 'fe80::74af:4c4e:1550:1cec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 1569490907, ''),
('2aae37a3ad81947f4f3becefb987bf73', 'fe80::74af:4c4e:1550:1cec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 1569490893, ''),
('4bc4fed1fd27b8de22bf91ebe1f5ebe5', 'fe80::74af:4c4e:1550:1cec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 1569490907, 'a:2:{s:9:"user_data";s:0:"";s:24:"flash:new:dashboard_data";s:4:"fail";}'),
('0155fefb374c978d1a62c0ad0885731b', 'fe80::74af:4c4e:1550:1cec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 1569490893, 'a:2:{s:9:"user_data";s:0:"";s:24:"flash:new:dashboard_data";s:4:"fail";}'),
('450351a82f46693c9c5cddbfe990550c', 'fe80::74af:4c4e:1550:1cec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 1569490883, ''),
('92572bb116b63ad810cd3bf5fee4a276', 'fe80::74af:4c4e:1550:1cec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 1569490876, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:23:"session_discount_coupon";s:5:"FALSE";}'),
('1fe713efea44f579944cebfbc0fc4e93', 'fe80::74af:4c4e:1550:1cec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 1569490866, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:23:"session_discount_coupon";s:5:"FALSE";}'),
('9090512c04c01d3d7a17ddc43763da03', 'fe80::74af:4c4e:1550:1cec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 1569490866, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('1245337c5db1f45263bf63e3946f21d8', 'fe80::74af:4c4e:1550:1cec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 1569490869, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('e973fd04e6497678cac6d188c2ede301', 'fe80::74af:4c4e:1550:1cec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 1569490872, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('7c2d5578701da0fea322d798c8c43579', 'fe80::74af:4c4e:1550:1cec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 1569490876, 'a:2:{s:9:"user_data";s:0:"";s:13:"cart_contents";a:3:{s:32:"2aaaddf27344ee54058548dc081c6541";a:18:{s:5:"rowid";s:32:"2aaaddf27344ee54058548dc081c6541";s:2:"id";s:4:"2427";s:11:"category_id";s:1:"7";s:15:"sub_category_id";s:2:"37";s:18:"subcategory_cat_id";s:3:"561";s:4:"name";s:124:"JAGUAR XJ 2003 - 2009 3.0 LITRE PETROL V6 FROM G00442 TO H32732 INLET MANIFOLD UPPER HEXAGONAL FLANGE NUT M5 . PART- XR81670";s:6:"weight";s:4:"0.04";s:18:"product_size_width";s:5:"0.010";s:19:"product_size_length";s:5:"0.010";s:19:"product_size_height";s:5:"0.005";s:7:"part_no";s:7:"XR81670";s:5:"price";s:4:"1.10";s:13:"special_price";s:4:"1.10";s:12:"actual_price";s:4:"1.10";s:14:"price_with_tax";s:4:"0.00";s:8:"tax_rate";s:4:"0.00";s:3:"qty";s:1:"1";s:8:"subtotal";d:1.100000000000000088817841970012523233890533447265625;}s:11:"total_items";i:1;s:10:"cart_total";d:1.100000000000000088817841970012523233890533447265625;}}'),
('6d63d25322b0002c2268ea21f27eba2c', 'fe80::74af:4c4e:1550:1cec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 1569490865, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('8aa81b9182b2b142dd264184141647ad', 'fe80::74af:4c4e:1550:1cec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 1569490846, 'a:2:{s:9:"user_data";s:0:"";s:13:"cart_contents";a:3:{s:32:"ddcb155487b88aaa80aed158006bdbdf";a:18:{s:5:"rowid";s:32:"ddcb155487b88aaa80aed158006bdbdf";s:2:"id";s:4:"3236";s:11:"category_id";s:1:"6";s:15:"sub_category_id";s:2:"16";s:18:"subcategory_cat_id";s:3:"298";s:4:"name";s:77:"594776 LAND ROVER SERIES 2 BLEED SCREW CLUTCH SLAVE CYLINDER.x10 PART- 606733";s:6:"weight";s:4:"0.20";s:18:"product_size_width";s:4:"0.15";s:19:"product_size_length";s:4:"0.10";s:19:"product_size_height";s:3:"0.1";s:7:"part_no";s:6:"606733";s:5:"price";s:4:"4.80";s:13:"special_price";N;s:12:"actual_price";s:4:"4.80";s:14:"price_with_tax";s:4:"0.00";s:8:"tax_rate";s:4:"0.00";s:3:"qty";s:1:"1";s:8:"subtotal";d:4.79999999999999982236431605997495353221893310546875;}s:11:"total_items";i:1;s:10:"cart_total";d:4.79999999999999982236431605997495353221893310546875;}}'),
('106af5d5b25cb4ea235731b676707d71', 'fe80::74af:4c4e:1550:1cec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 1569490846, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:23:"session_discount_coupon";s:5:"FALSE";}'),
('4024fdd826393d194f9a53b62450a1d9', 'fe80::74af:4c4e:1550:1cec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 1569490862, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:23:"session_discount_coupon";s:5:"FALSE";}'),
('d039258fb4bfafc71f77c7497fdd73fd', 'fe80::74af:4c4e:1550:1cec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 1569490841, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('70b99cc09ec0db6fa8d524e70159dbb9', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569489018, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('e5aa775eb37355de460a9e16b0d1208f', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569489018, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('12c74759c1cfa60959c20e68b79ec1c5', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569489018, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('2a76b4753d8bb8182d592c91914f2990', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569489018, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('e8b2c524bbbb6be3540f7aa5c74f64b5', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569489018, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('213754e7869d52631a3ce20b6cfe3643', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569489021, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('e2fde153ca1c6df7d10517241439a547', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569489024, 'a:2:{s:9:"user_data";s:0:"";s:13:"cart_contents";a:3:{s:32:"28e209b61a52482a0ae1cb9f5959c792";a:18:{s:5:"rowid";s:32:"28e209b61a52482a0ae1cb9f5959c792";s:2:"id";s:4:"1332";s:11:"category_id";s:1:"6";s:15:"sub_category_id";s:2:"16";s:18:"subcategory_cat_id";s:3:"310";s:4:"name";s:71:"LAND ROVEAR SERIES 2 ALUMINIUM REPLACEMENT DOOR HINGE KIT. PART- DA1131";s:6:"weight";s:4:"2.10";s:18:"product_size_width";s:4:"0.20";s:19:"product_size_length";s:4:"0.05";s:19:"product_size_height";s:4:"0.10";s:7:"part_no";s:6:"DA1131";s:5:"price";s:6:"271.20";s:13:"special_price";N;s:12:"actual_price";s:6:"271.20";s:14:"price_with_tax";s:4:"0.00";s:8:"tax_rate";s:4:"0.00";s:3:"qty";s:1:"1";s:8:"subtotal";d:271.19999999999998863131622783839702606201171875;}s:11:"total_items";i:1;s:10:"cart_total";d:271.19999999999998863131622783839702606201171875;}}'),
('688cf11425a0bd377185b7951a8f7200', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569489024, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:23:"session_discount_coupon";s:5:"FALSE";}'),
('8a880b42b5bb6f51fe80981ec6cc334f', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569489032, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:23:"session_discount_coupon";s:5:"FALSE";}'),
('5f758cd9d48d6113edd5c13ed10de423', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569490818, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:23:"session_discount_coupon";s:5:"FALSE";}'),
('f3736bbfbe8a829dd69b3322ab059f52', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569490821, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('de54c3c43a7c7f21b1a27e16a6a83a1d', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569490824, 'a:2:{s:9:"user_data";s:0:"";s:13:"cart_contents";a:3:{s:32:"24ac838a6b14395dda537b1c38cde219";a:18:{s:5:"rowid";s:32:"24ac838a6b14395dda537b1c38cde219";s:2:"id";s:4:"9787";s:11:"category_id";s:1:"7";s:15:"sub_category_id";s:2:"37";s:18:"subcategory_cat_id";s:3:"562";s:4:"name";s:56:"JAGUAR  XJ12 1987 - 1994 LOCKING NUT M8. PART- JFY10804B";s:6:"weight";s:4:"0.01";s:18:"product_size_width";s:4:"0.01";s:19:"product_size_length";s:4:"0.10";s:19:"product_size_height";s:4:"0.09";s:7:"part_no";s:9:"JFY10804B";s:5:"price";s:3:".64";s:13:"special_price";N;s:12:"actual_price";s:4:"0.64";s:14:"price_with_tax";s:4:"0.00";s:8:"tax_rate";s:4:"0.00";s:3:"qty";s:1:"1";s:8:"subtotal";d:0.64000000000000001332267629550187848508358001708984375;}s:11:"total_items";i:1;s:10:"cart_total";d:0.64000000000000001332267629550187848508358001708984375;}}'),
('dbdd4610d227d14ecd1b70465aca46af', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569490825, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:23:"session_discount_coupon";s:5:"FALSE";}'),
('a26985aedb657a14766a22837d8f23db', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569490828, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:23:"session_discount_coupon";s:5:"FALSE";}'),
('5d37a6c38ccedb260c159cb8c8006ccd', 'fe80::74af:4c4e:1550:1cec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 1569490834, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('e1a6fb2cf38bff96899bdac8637f840c', 'fe80::74af:4c4e:1550:1cec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 1569490837, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('8ff3e0217353b32e1280add356d9d678', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569489018, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('d72d85f3b8a700c3cffc3ae6a462b868', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569489018, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('d28dd4f5b07ba8e7d2c32e246ef72969', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569489018, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('92b1edb387bc0cdf9437d9c973afe21c', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569489018, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('61a635b8b16e9910d87db21e828c4c8e', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569489018, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('c23e705049d230c49979a3a3002f3b75', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569489018, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('28c7f8de74d5fabe641bec0c70f83c85', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569489014, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:23:"session_discount_coupon";s:5:"FALSE";}'),
('82603ca82c0e4da61094e3388e4e32f8', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569489017, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('ea2bd3c1a9fe52aceb11d0774a5b76b6', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569489017, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('f12e59d6347963df17599fdf6f08de48', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569489018, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('01c35dcb28a2952fc64cff2003012531', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569489018, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('32c205ef17b1c476f2870b9c88c44868', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569489018, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('85423620ba0c6e0e9298b64d930e6217', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569489014, 'a:2:{s:9:"user_data";s:0:"";s:13:"cart_contents";a:3:{s:32:"55c88d9c53ef4b9ea9b72eda813dce97";a:18:{s:5:"rowid";s:32:"55c88d9c53ef4b9ea9b72eda813dce97";s:2:"id";s:5:"19110";s:11:"category_id";s:1:"3";s:15:"sub_category_id";s:3:"197";s:18:"subcategory_cat_id";s:4:"3768";s:4:"name";s:44:"LAND ROVER - DRIVE BELT ACCESSORY - LR079263";s:6:"weight";s:4:"0.17";s:18:"product_size_width";s:4:"0.21";s:19:"product_size_length";s:4:"0.85";s:19:"product_size_height";s:4:"0.02";s:7:"part_no";s:8:"LR079263";s:5:"price";s:5:"44.28";s:13:"special_price";N;s:12:"actual_price";s:5:"44.28";s:14:"price_with_tax";s:4:"0.00";s:8:"tax_rate";s:4:"0.00";s:3:"qty";s:1:"1";s:8:"subtotal";d:44.280000000000001136868377216160297393798828125;}s:11:"total_items";i:1;s:10:"cart_total";d:44.280000000000001136868377216160297393798828125;}}'),
('3536a227b177bce787b243bc47706722', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569489008, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('f3cb249c47c360710402e9d2a83980cd', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569484937, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('2ad54e0b6d384fd6cea882025f373642', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569484963, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('07ee4e6bf03e2c815cfb2efb354e11e1', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569484974, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('ccee1be5f2c26632a0198f202eaba73f', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569484982, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('7283f497b630aa965380b36e3c0a57b3', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569484982, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('234935ad569ad1032824b2fe16a1b572', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569484937, ''),
('08b59cb935add04e1d1b3f2b8df1bc5d', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569484928, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('5061ef368a1b02061438120c855269eb', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569484930, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('82b5d32cd5b6182b2396c1c3b9a229fb', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569484936, 'a:8:{s:9:"user_data";s:0:"";s:7:"user_id";s:1:"1";s:10:"first_name";s:8:"Biswajit";s:9:"last_name";s:5:"Maity";s:10:"user_email";s:27:"biswajitmaityniit@gmail.com";s:11:"user_mobile";s:10:"8768624650";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:14:"user_logged_in";b:1;}'),
('3b40b0f7ca95c5c0f8bce18ee45a3332', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569484868, ''),
('4143412831b14c8cecc9d7e7ceaf4a40', 'fe80::74af:4c4e:1550:1cec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 1569484878, ''),
('1195f06d82eae237b7f91e0a78cf27e2', 'fe80::74af:4c4e:1550:1cec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 1569484889, 'a:2:{s:9:"user_data";s:0:"";s:24:"flash:new:dashboard_data";s:4:"fail";}'),
('d8a0876d5fc7d0a2fd0b0e7d94527bbb', 'fe80::74af:4c4e:1550:1cec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 1569484889, ''),
('4da58a1042dc1d16fd45adaeea5d90f5', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569484928, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('06f7a7d8599ef959e8483193f7840be1', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569484868, ''),
('e65719521f71626e37df030afa57b899', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569484863, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('1ee1ddc48f6ee7f6a1779ad79de52143', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569484868, 'a:7:{s:9:"user_data";s:0:"";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('0d068fe48ed4cf3076534b8c05f32e2c', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569479475, ''),
('f72ff8ce248a7ae66fff7704db97b119', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569479475, ''),
('4fb3647791619cfba3bc7efa04d95262', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569479482, 'a:2:{s:9:"user_data";s:0:"";s:24:"flash:new:dashboard_data";s:4:"fail";}'),
('9eff09f9ea189bd53005961b4b36bb94', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569479482, ''),
('ded3b8914e71148d183be95b7946ccb1', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569484814, 'a:7:{s:9:"user_data";s:0:"";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('f7f1cc3969e3c6ae27a180f3fe3f4144', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569484814, ''),
('ee8ade5b018859cae75e05b1ca47446d', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569484814, ''),
('329b3327ba1981d30b0fe723db2cf0e0', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569484863, ''),
('9f5d2ee510e4906f3850b9b33d3a4f91', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569479475, 'a:7:{s:9:"user_data";s:0:"";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('42480e66714432b79974000755770eec', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569479463, ''),
('e94c3c483e060d877fc23723e71842d5', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569479463, ''),
('e6286c673b01271e178e5aa0aa97b028', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569479463, 'a:7:{s:9:"user_data";s:0:"";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('9e52789ce9f3444c3a8af29b677ddd83', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569479457, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('fa773e83024e2b73516cb500db5b33f2', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569479456, ''),
('dc1e233ac0051ba0819c862f2a725cbd', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569481310, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('597585fdd5694b8ef25d0fe254a483c8', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569481310, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('52716cf2fa1b4def9b790941ea22356d', 'fe80::74af:4c4e:1550:1cec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 1569480980, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('6989543f5e49e1e3a20f6667ceafb25e', 'fe80::74af:4c4e:1550:1cec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 1569480980, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('be58ca3e667bb1538ecfb128e1df336d', 'fe80::74af:4c4e:1550:1cec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 1569480979, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('e3d7f5d147d0e580ad4ae74c5c3f566d', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569480954, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('60e0e50931bfe55ba6f3d00f10b4c44a', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569480952, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('468018937eb282d41a2fc9e5dbecb527', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569480952, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('a0e2f1194f511f0b82e611b3d9e6431e', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569480952, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('9d69ed35a1e42f608de837abf4716a4c', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569480952, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('183a0178c762ab471294c56a6a72152b', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569480952, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('a7f3d6ca8763ad5a963390201d2ae982', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569480952, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('35a459b2df18865b4f11df1d8db86f51', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569480952, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('9e2a116ab60b945b5cd0cfa65c3fed7e', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569480952, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('f370ecd01f4b9152d1c623f668a9ee70', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569480952, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('85b77530480568cd7d74f1451a80bc29', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569480952, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('548a05fb73fdee54dc24f3d5f36ce3d5', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569480951, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('eed159eea8d28c73a745e2b349d927a0', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569480951, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('d82d092dc0f10277f3b1f4bf3ad97c04', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569480951, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('ae49a873bfb0aab840cf956e15d7a99f', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569480951, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('5382ab73d074361fd9a3610992d2d566', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569480951, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('b7dc52060c4022b24bf1ae6d2202436f', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569480951, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('848f7de7323a71ac1f7e0fafe1845c17', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569480946, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('afade551a1658f99ed9bf9a8e3cdc449', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569480943, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('4cd4ac6056bc2d9b752cd2e343e90f33', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 1569409642, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('ca402f0133bbaeab31e842ba7c4690c7', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 1569409642, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('fa225b1d8c8f7616fafb635ad47a2b76', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 1569409641, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('420868af1bd1caefebf8cec39416d54a', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569399891, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('b65212bc7c7661001ebdfa7aeb79ac9b', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569399891, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('d18a261890087e259e91881e623fd950', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569399886, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('baaafe4c4e47383d2bdfea0822786eff', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569399874, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('5279d45d6ce848cb842cf2d717dbb250', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569399870, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('76d05ada6041fbcea8b484010fe9c42c', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569399870, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('1ca121cab08a8f4503c3f7ede73ddf5b', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569399870, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('8898201f0eed861be97d97c7ae34905a', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569399870, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('afe54026f7d0746492cf2b15e6e7ddd6', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569399870, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('7254f6b2e47f5d95e526a58177cc5407', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569399870, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('55734ee27ed8fb34966ed43b1c9383dd', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569399870, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('ed3be092b4950f60fe3e429bc333fb96', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569399870, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}');
INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('8dc252baf23521b94ed65e54576c426c', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569399870, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('32094719791aaf7ddc9da6494a24555b', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569399870, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('3a7fb09ec619f48e2c34d93783bdce07', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569399870, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('d03bf58a7c000cfa358d866c253a5c78', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569399870, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('02457b0b98e67970a2c2bae4e6aecda1', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569399857, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('5530f5d6fe0481e41f87daa09dcbd45f', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569399869, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('f9546c8ff281981464569bcbe4d32337', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569399869, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('53bafcc21e5f5c25b72cd7417a7097d3', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569399870, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('dc904707a1f8bf4110d514c3c6a6e61a', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569399870, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('29cf12052e5e9ce9a4fc4081bdd8476e', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1569395142, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('e5ff5294e81d234c03fc4a027876bfc3', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1569252172, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('87a43175516a6bfe83d2330d454a91de', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1569229735, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('e09326410ac65f45187b9431b4a8e2c2', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569399855, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('f7790000bcc6024f6fe10ca177676f25', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 1569221896, 'a:8:{s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('d5db9625d84d800a11e353eb0d058ff7', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 1568733795, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('e80abde4633005cdca1a22c8f5e47408', '192.168.0.20', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 1568724072, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('159a012413a2a924333f73b14c471680', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 1568805725, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"captcha";s:8:"403S4429";}'),
('147f8144f6455640fcced01d472b86d0', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 1568705772, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('d3b0bcea19e995905a33f1e1d3b9e050', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 1568705677, 'a:9:{s:9:"user_data";s:0:"";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('f89e1ba3dd7bdf6a62616fe756836244', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 1568705646, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('ff5fa244de8525b9812f206918f0cf35', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 1568705531, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('a3e11a1f4059f1f4a019e4f80401ec14', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 1568705437, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('2cdc95efe328a7b22d25b782003b1bd8', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 1568705259, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('584bc26d85f01285cc343bb5196fd118', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 1568641150, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('2de4b3628b0b1bf6744629a388269340', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 1568623345, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('6f85cc51178775424de4a511c1f15b4b', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 1568456093, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('be95d969e1d2740c8473399ce68baa78', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 1568456092, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('081a5617dd5926cae472fef2adb08f99', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 1568456090, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('c6075f03312f3df3798ca202b88766da', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 1568456091, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('67dd98d4791153073dc3e17c09dbd611', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 1568456089, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('4b2671edf95ce621ad6be8aa08249ae6', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 1568455770, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('603a180b8b03f522af0379dc2dc95eae', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 1568455769, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('16e93c2f7b431ba5355e8b11e6ebc010', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 1568455767, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('43f0a8d672ec0f3ef3ee941ec8f5f59a', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 1568455768, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('20cdf0f58d284219bc8d5b9c3ef455ef', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 1568455766, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('1444042a84e0411b496a1dac95e5b578', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 1568454141, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('92cbc10b3a70067f2f3260c9d5fd2afa', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 1568454140, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('3fc5b3f8f64338f13761f7d14cee08e6', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 1568454137, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('8b5d56d448dfa4411faba82e8642d94f', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 1568454139, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('71b2cd6f8214ca3fbeab7c0f1f29e02d', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 1568454136, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:11:"user_mobile";s:10:"1234567890";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:13:"cart_contents";a:3:{s:32:"0f004440ba0c8f1ccc5c355f3d77207f";a:18:{s:5:"rowid";s:32:"0f004440ba0c8f1ccc5c355f3d77207f";s:2:"id";s:5:"18174";s:11:"category_id";s:1:"3";s:15:"sub_category_id";s:1:"7";s:18:"subcategory_cat_id";s:3:"199";s:4:"name";s:33:"LAND ROVER  OIL FILTER - ESR4065G";s:6:"weight";s:4:"0.15";s:18:"product_size_width";s:4:"0.07";s:19:"product_size_length";s:4:"0.15";s:19:"product_size_height";s:4:"0.07";s:7:"part_no";s:8:"ESR4065G";s:5:"price";s:4:"4.54";s:13:"special_price";N;s:12:"actual_price";s:4:"4.54";s:14:"price_with_tax";s:4:"0.00";s:8:"tax_rate";s:4:"0.00";s:3:"qty";s:1:"1";s:8:"subtotal";d:4.54000000000000003552713678800500929355621337890625;}s:11:"total_items";i:1;s:10:"cart_total";d:4.54000000000000003552713678800500929355621337890625;}s:23:"session_discount_coupon";s:5:"FALSE";s:12:"shpping_cost";s:5:"37.21";s:14:"original_price";s:5:"31.01";}'),
('309a581968f466a4cbfa68fd71f34a8c', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 1568359913, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('94a9d2fa8aef0fd06e9b6a99c884c319', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1567607998, ''),
('30e0f998b00b8a831485e09bcbfc7322', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1568142777, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"captcha";s:8:"QUKG8690";}'),
('6bae9fd09982bcb3bffa657b698f8b7c', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.75 Safari/537.36', 1568271243, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('69f51211a7b5c4bd890d8a71e3be99fe', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567578864, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('99fc7af285426553165460cf69f5f066', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1568875681, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:23:"session_discount_coupon";s:5:"FALSE";}'),
('0d4eb80b22974474ef963270a6caded2', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567494745, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('b5d54bf08905a09c664d0208c340310b', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567494736, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('ae39f6dc2b129cf41849e751e77c8c1d', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1567434222, ''),
('1b919bdafc3fc93dcc246da51d7f0957', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1567438409, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('7311f957dfd1e00c618549eb7a4925f0', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567437864, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('e51d6e7f92f26d9311b776898fefe934', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567433888, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('c3cf05b829920637833cc496b8b34d7d', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567433597, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('a877333e926c4cd0b3b3d5a8e5bcdd13', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567433492, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('d999d05af378bc74c5030e21bf3502d0', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567433345, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('44464f0d76fd2af8c4fef21581503d30', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567433194, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('425842218bfe180894771ad76f924fb1', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567433076, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('2c5100dc623ee0d38e1c555a2d394ff3', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567432948, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('7bcd3c76788552cc181588880dc64c7b', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567432745, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('b76e9f5e689ba42e5d415624e6ffab66', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567432570, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('6b0e084a7478163f7a9d29a8dc0683f1', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567432497, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('a90f8638cb8fdbf8de45f76bdd37063d', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567429414, 'a:9:{s:9:"user_data";s:0:"";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('329928a74dcb4159f76e52962bd4eb15', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567429297, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('eeb51d20cfab639f11a33d3a23062b1a', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567429261, 'a:9:{s:9:"user_data";s:0:"";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('f3d432c65ad74c8e1f8be6d484ab2d56', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567429214, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('13b6e0976e89af8fb15500a302245388', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567429162, 'a:9:{s:9:"user_data";s:0:"";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('e4ec1bf4c20acda4316f5d9f342f9ebc', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567428952, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('0101794ed55c7a5dac43662eeb9aa709', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567428886, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('3def2bd6dc165ace117b2fd9330534ee', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567427709, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('8b531cb73d4f03461918bedc0b58c9df', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567427660, 'a:9:{s:9:"user_data";s:0:"";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('a041f19b2c300bdd86c4ebca123909ae', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567427623, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('5fd03501cae7f9bfd57f3ea46689bf0a', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1567428251, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('8b3a79706ef9919f83a8842e41e20b93', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567427543, 'a:9:{s:9:"user_data";s:0:"";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('6f29e489688ada164e3b94b749235e69', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567427507, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('8a440fcb54846492375f9c4eb1f18389', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567427480, 'a:9:{s:9:"user_data";s:0:"";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('30b7c67e8f8d6d271f6ff63d63216c54', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567427409, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('550e794311ee2b35887e8e96cf358ee2', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567427373, 'a:9:{s:9:"user_data";s:0:"";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('c04d6dccd5566f4830c8dc0d84ebac72', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567427343, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('0fdf30319222c68fb275641153e4b042', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567427310, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('d610a6bd7182f78b263980d20b9d89d6', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567427186, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('ba8445ffa76cc2599c7d316ae686a37d', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567427111, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('ff224e279e08eb761a555e5fddaf75b1', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567427574, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('f8174de460c2913a8d48eab9a5154042', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567427170, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('4efde4ce4280bde7ab466cf204c4576a', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567427467, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('69611bcd02a8ce22677d4092558752bb', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567422195, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('ade29a58dd0dfd9d053aa78572b2ed1f', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567422196, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('808ed2a312e2c183e21ddb0593ec3c89', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567422197, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('0ae94d27c26c5c356c48006d4ff71bdc', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567422198, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('f4c2ab72ba86438def5ee36c9799ec85', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567422199, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"captcha";s:8:"GJ7VCL3L";}'),
('8ab2614962fad557f1ad7e2a1c9708e3', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1567422869, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('768b3e9c7bd351fdd686596f16b089c1', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1567422880, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('d0d9848d8280168534008ed9feb536c3', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567423408, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('9e09ebe39f8e98844cce6da6d8d4cec4', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567423476, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('aa1ebe4645d274719c3165b6aadbddd4', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567420776, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('f013242f3331273145c9eca3d2ff236e', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567420787, 'a:9:{s:9:"user_data";s:0:"";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('98687b4b65fd88c6417a7084c0099a13', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567421831, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('78205ddeaba01db4761385e2da0dfcfb', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567421947, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('3ccbdbfddb7b6bbaafd4cd65d955785a', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567422404, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('563371c232c899f61f04fb885a608b8c', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567422688, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('74872c66dc0c711da4fce6575d5a25f6', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567422693, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('60eb33e99e1b72fc5ec1fb92affd92a4', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567423184, 'a:9:{s:9:"user_data";s:0:"";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('33974390125c46c3b3bc5f49eb70a529', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1566915955, 'a:11:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"user_id";s:1:"1";s:10:"first_name";s:8:"Biswajit";s:9:"last_name";s:5:"Maity";s:10:"user_email";s:27:"biswajitmaityniit@gmail.com";s:11:"user_mobile";s:10:"8768624650";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:14:"user_logged_in";b:1;s:23:"session_discount_coupon";s:5:"FALSE";}'),
('23b2d25e908517fc2dacc27829518beb', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1566562949, 'a:4:{s:9:"user_data";s:0:"";s:7:"captcha";s:8:"IZ7QTWRJ";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('59e940a622d49804e8bffa90fcaa2cfd', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1566550910, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('aff279cb6d5213e9130fd7b58a59da07', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (iPad; CPU OS 11_0 like Mac OS X) AppleWebKit/604.1.34 (KHTML, like Gecko) Version/11.0 Mobile/15A5341f Safa', 1566551072, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('f8d27780267d3ccc47b5aece24fde4e0', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1566551159, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('b1edf495f0622ed8828284fe5b735198', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (iPad; CPU OS 11_0 like Mac OS X) AppleWebKit/604.1.34 (KHTML, like Gecko) Version/11.0 Mobile/15A5341f Safa', 1566551214, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('209065278b4140cb3be0285967648f44', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1566903097, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('32b8cf72a943e4d973bac4e09662c857', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1566802434, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('08f156e4a78c5b0f7482a0a0b2ffd5b8', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1566903098, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('c69e52014c1309d26c7973064f0dd326', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1566908143, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('e3b733fb16401245e7e5d39d1aa39403', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1567168452, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"captcha";s:8:"5CXRMA4Z";}'),
('b480f0d54f5002ad0b248294fa3c00e2', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567423471, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"captcha";s:8:"GDKNKXVG";}'),
('cdd993cab2df4feb2c6015985d51d7ed', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567414162, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('c61c6e087126418e43ee23014b9233aa', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567414162, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('a206c9ebac4b25957afc620c257a40d7', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567414163, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('fecf1fd8d51330334056b36f9be1a186', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567414164, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('533d6916a4a46f19f597b9e225b8e9b8', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567414165, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('94d0c9e1afddfeab485cfe2ed4066043', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567422194, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('d93ad316021aa4733d7faafcc63f466c', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (iPad; CPU OS 11_0 like Mac OS X) AppleWebKit/604.1.34 (KHTML, like Gecko) Version/11.0 Mobile/15A5341f Safa', 1566547220, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('f44100fec463f6ca43b727948effe517', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1566487681, ''),
('5253fb0b024068dc4c18b2a0b40728c6', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1566389552, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('9f3dbe5a0cedc4d5231293d2d417e3e9', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1566377134, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('8593c599afc372fcd88fa2144f84d59a', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1566389532, 'a:11:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:11:"user_mobile";s:10:"8768624650";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:7:"captcha";s:8:"XYMJAUJW";s:7:"user_id";s:1:"1";s:10:"first_name";s:8:"Biswajit";s:9:"last_name";s:5:"Maity";s:10:"user_email";s:27:"biswajitmaityniit@gmail.com";s:14:"user_logged_in";b:1;}'),
('6becc48e03e6d0c1408b66da56b2170a', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1566479306, 'a:6:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"captcha";s:8:"TXXHPPBI";s:11:"user_mobile";s:10:"1234567890";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";}'),
('2d076bb80d9f75749870413edfd2f70c', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1566379741, 'a:5:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:11:"user_mobile";s:10:"1234567890";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";}'),
('51fbe9fce6a2a111841c7861d70a3419', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1566379383, 'a:10:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"user_id";s:1:"1";s:10:"first_name";s:8:"Biswajit";s:9:"last_name";s:5:"Maity";s:10:"user_email";s:27:"biswajitmaityniit@gmail.com";s:11:"user_mobile";s:10:"8768624650";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:14:"user_logged_in";b:1;}'),
('634a6aa90fe6258697ad8715b1358f5c', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1566379301, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('e869677be9111b0f39b2566d80a8d8ba', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1566379269, 'a:10:{s:9:"user_data";s:0:"";s:7:"user_id";s:1:"1";s:10:"first_name";s:8:"Biswajit";s:9:"last_name";s:5:"Maity";s:10:"user_email";s:27:"biswajitmaityniit@gmail.com";s:11:"user_mobile";s:10:"8768624650";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:14:"user_logged_in";b:1;s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('f53f8c9000c095236b12e91d4c4bfe87', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1566378855, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('1cba37805e5812202393fcd44b2d81e9', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1566378481, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('6624e787b49101f3f1b4851397a9bb2b', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1566377607, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('c34365ab286aba977a61fd0cc85346db', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1566377297, 'a:6:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"captcha";s:8:"90AQ4D3Z";s:11:"user_mobile";s:10:"1234567890";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";}'),
('c0485d14aca77655104e0adb7c94fef7', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1566373304, 'a:7:{s:9:"user_data";s:0:"";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('3d062cca1e6c48ce0e4b49e27a037d87', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1566373298, 'a:4:{s:9:"user_data";s:0:"";s:7:"captcha";s:8:"SYGX2Q06";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('9eb97fdf13dc76d963edb683cccbd931', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1566396633, ''),
('6b77a1fa314bedc9c1bd4bb44302d37a', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1566478651, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('d4512485e7e18472a7d4ac817f14351e', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1566378926, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('4b567e2cc1d4cd3b07df38154f937e44', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1566373200, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('6f63f103dfedc12dcd89fc33878c72c9', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1566378743, 'a:5:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:11:"user_mobile";s:10:"8768624650";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";}'),
('5917bcf844229afbd0c0c14239ffd073', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1566311114, 'a:7:{s:9:"user_data";s:0:"";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('4fe4e764233db806de8f7dfc87a576d2', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1566311189, 'a:10:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"user_id";s:1:"1";s:10:"first_name";s:8:"Biswajit";s:9:"last_name";s:5:"Maity";s:10:"user_email";s:27:"biswajitmaityniit@gmail.com";s:11:"user_mobile";s:10:"8768624650";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:14:"user_logged_in";b:1;}'),
('33e2ef589ce439dfb5b04d05b2951689', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1566311464, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('d84fab8333025bbac29683800126dcc0', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1566311512, 'a:10:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:11:"user_mobile";s:10:"8768624650";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:7:"user_id";s:1:"1";s:10:"first_name";s:8:"Biswajit";s:9:"last_name";s:5:"Maity";s:10:"user_email";s:27:"biswajitmaityniit@gmail.com";s:14:"user_logged_in";b:1;}'),
('68f2fb6d6d4d0c714173abc022c9efea', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1566314738, 'a:5:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"550237b8fbcdf3741bb1127d0fc7f6bf";}'),
('7f83e5439749dbc7dd7f4112da17288c', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1566311612, 'a:7:{s:9:"user_data";s:0:"";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('73254fb3cfa02fe7ba16c19c160278b8', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1566311107, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('871a5a93864dc9cafa5c430e6894f5ee', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1566311572, 'a:5:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"550237b8fbcdf3741bb1127d0fc7f6bf";}'),
('8abfad599c16dd766ebd931a85eba97b', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1566311051, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:24:"flash:old:dashboard_data";s:4:"fail";}');
INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('1a1c52c7bff425f1ab868d76bc1851bf', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1566284898, 'a:9:{s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:21:"flash:old:update_data";s:7:"success";}'),
('41b8c9853f2356db8e5cc21a60ca1479', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1566311021, 'a:11:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"user_id";s:1:"1";s:10:"first_name";s:8:"Biswajit";s:9:"last_name";s:5:"Maity";s:10:"user_email";s:27:"biswajitmaityniit@gmail.com";s:11:"user_mobile";s:10:"8768624650";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:14:"user_logged_in";b:1;s:24:"flash:old:success_update";s:7:"success";}'),
('792ed64729cc18ebd17e4d345d584b57', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1566372684, 'a:6:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:11:"user_mobile";s:10:"1234567890";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:7:"captcha";s:8:"JZYBDHAH";}'),
('3da36ae596cd06859981e1d7bf1dee23', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1565768285, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('77fe6618f0f64f9dbc9ff84a4a3d831b', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1565796277, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('0a829630b92ad4b0af73dbfed14a5115', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1565943384, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('c5ba72e6f31f973fe17d150a7502a83e', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1565951319, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('55420d00b0c00efbadc9cfed516b1ab8', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1565955282, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:24:"flash:old:dashboard_data";s:4:"fail";}'),
('a50236ef6616cf5392a07daf94ab2790', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1565796277, 'a:5:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:11:"user_mobile";s:10:"1234567890";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";}'),
('e2a7877adabf7c459116026934f40b07', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1565704277, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('85673bc5f3c097ef957a8cb40914c080', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1565704277, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('56a44c72e52131da1e2b7822272ebbe0', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1565432061, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('af8e8c933c4d21ba3c65a4b39012435c', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1565704277, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:11:"user_mobile";s:10:"1234567890";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:13:"cart_contents";a:3:{s:32:"0eeee4beb285c6046d12de9cb4033d5d";a:18:{s:5:"rowid";s:32:"0eeee4beb285c6046d12de9cb4033d5d";s:2:"id";s:5:"12898";s:11:"category_id";s:1:"8";s:15:"sub_category_id";s:2:"85";s:18:"subcategory_cat_id";s:4:"1373";s:4:"name";s:66:"BMW SERIES X5 E53 2000 ALTERNATOR OE. - 12 31 7 537 962 / 437529VA";s:6:"weight";s:4:"6.50";s:18:"product_size_width";s:4:"0.16";s:19:"product_size_length";s:4:"0.18";s:19:"product_size_height";s:4:"0.21";s:7:"part_no";s:8:"437529VA";s:5:"price";s:6:"358.70";s:13:"special_price";s:6:"358.70";s:12:"actual_price";s:6:"358.70";s:14:"price_with_tax";s:4:"0.00";s:8:"tax_rate";s:4:"0.00";s:3:"qty";s:1:"1";s:8:"subtotal";d:358.69999999999998863131622783839702606201171875;}s:11:"total_items";i:1;s:10:"cart_total";d:358.69999999999998863131622783839702606201171875;}s:23:"session_discount_coupon";s:5:"FALSE";s:12:"shpping_cost";s:5:"41.20";s:14:"original_price";s:5:"34.33";}'),
('5553e63462b6abd3ba63f2282944bb37', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1565363517, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('2a4e8383faa64c6b74e61bdc9d35f2bc', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1565421230, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('cdbe84e512fd9e0f74380d2e856b1377', '192.168.0.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1565768271, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"captcha";s:8:"UPZFSXGX";}'),
('f455ceba85ebf7c241f8e634bf9ed8d7', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1565426527, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('ce2c7bd9bc1dc2f61c4b47729b7f59b9', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1565427056, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('1c2a8be5cbd96d01ea72b9a40f8f4dcb', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1565361814, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"6";s:9:"directory";s:15:"bengali_english";s:11:"user_mobile";s:10:"7699501125";}'),
('6489708d9eb7a7a6d05dfd3632382a27', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1565362008, ''),
('fc6b36c6e5f6ea6802c679ac26ccd887', '192.168.0.20', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1565362999, ''),
('a87255dfb85bb6b28d3a6f57afa8d9df', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1565360716, 'a:10:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"550237b8fbcdf3741bb1127d0fc7f6bf";s:7:"user_id";s:1:"9";s:10:"first_name";s:6:"Sanjay";s:9:"last_name";s:8:"Banerjee";s:10:"user_email";s:21:"bsanjay2007@gmail.com";s:14:"user_logged_in";b:1;}'),
('68e8222bc62d24c91d89fe7a895063ee', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564384810, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('9826f74ebd57cf34e4c5fd03e5516609', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564384823, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('db886e5161588ca1e5b63c33ec7e1123', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564384830, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('7c1559b6fa272ac64ac77201306d4c37', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564384879, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('7ccb80c895597a9e461b11d9d6840fc2', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564386137, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('cc1fcdd48c57190c3df46e3750620d5b', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564386141, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('b6df16a428391454d9f5b1feb2d89bbb', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564386151, 'a:8:{s:9:"user_data";s:0:"";s:7:"user_id";s:1:"9";s:10:"first_name";s:6:"Sanjay";s:9:"last_name";s:8:"Banerjee";s:10:"user_email";s:21:"bsanjay2007@gmail.com";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:14:"user_logged_in";b:1;}'),
('e1f031c595991e19cb468a53f83d278d', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564386151, ''),
('abc1a90b6a0b0e6ded11e9fda1fd5943', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564386151, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('de00830a4e3c4beb66c73ab66360b95e', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564386221, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('fcc15038f27b45643acfa3115bedbc7e', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564386231, 'a:8:{s:9:"user_data";s:0:"";s:7:"user_id";s:1:"9";s:10:"first_name";s:6:"Sanjay";s:9:"last_name";s:8:"Banerjee";s:10:"user_email";s:21:"bsanjay2007@gmail.com";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:14:"user_logged_in";b:1;}'),
('35fa4b62878b7fd3c2913b1dae5b09cb', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564386245, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('39d451b80e778317fc53a2da8abcc260', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564386254, 'a:8:{s:9:"user_data";s:0:"";s:7:"user_id";s:1:"9";s:10:"first_name";s:6:"Sanjay";s:9:"last_name";s:8:"Banerjee";s:10:"user_email";s:21:"bsanjay2007@gmail.com";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:14:"user_logged_in";b:1;}'),
('8b3e58f25a8c4fedd054adda01398cb5', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564386254, ''),
('f96dba1dffa1b183efde272eef15e47c', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564386254, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('1740c005745ffd61c161c1b2ac706513', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564386298, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('05cdeff49314e0d126528735199bd80b', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564386318, 'a:8:{s:9:"user_data";s:0:"";s:7:"user_id";s:1:"9";s:10:"first_name";s:6:"Sanjay";s:9:"last_name";s:8:"Banerjee";s:10:"user_email";s:21:"bsanjay2007@gmail.com";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:14:"user_logged_in";b:1;}'),
('57c3178cee6ab8e703c175ba89101a35', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564386329, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('05a8844786779cc02a057e709a6d863a', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564386390, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('50ffd44d7d13ad48d47eb18af09d2e00', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564386411, 'a:8:{s:9:"user_data";s:0:"";s:7:"user_id";s:1:"9";s:10:"first_name";s:6:"Sanjay";s:9:"last_name";s:8:"Banerjee";s:10:"user_email";s:21:"bsanjay2007@gmail.com";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:14:"user_logged_in";b:1;}'),
('1019c38e1e95c0b91beea796f23e3cc5', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564386412, ''),
('c96ad902f067efa399df6dbcb56a6945', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564386412, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('23cec76fbc8f710c1a6081f1b3655fe0', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564386535, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('2c84fabf7e2c2ced1560a757e5f152d5', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564386539, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('a62598c8b1fb4923aa7bcb9c11e0232f', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564386556, 'a:8:{s:9:"user_data";s:0:"";s:7:"user_id";s:1:"9";s:10:"first_name";s:6:"Sanjay";s:9:"last_name";s:8:"Banerjee";s:10:"user_email";s:21:"bsanjay2007@gmail.com";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:14:"user_logged_in";b:1;}'),
('42d837e1dbbcc699f22b73675c451044', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564386556, ''),
('98b906317c8fbe326ca462b2157649cb', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564386556, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('a5d47408b42b15a22e4e2e482a865ca1', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564386669, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('0da40bca700d9c0b4d8f677eac096e8a', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564386695, 'a:8:{s:9:"user_data";s:0:"";s:7:"user_id";s:1:"9";s:10:"first_name";s:6:"Sanjay";s:9:"last_name";s:8:"Banerjee";s:10:"user_email";s:21:"bsanjay2007@gmail.com";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:14:"user_logged_in";b:1;}'),
('c0afcba700e86c4fd0c9fd484a55db07', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564386695, ''),
('5ed7eb91d96b4eeb7864b4f12a60dd9c', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564386743, ''),
('ad34663d777b42290784a312eee57577', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564386743, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('0d235e71537c6a8a6ca0c593ccbd3483', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564386906, 'a:8:{s:9:"user_data";s:0:"";s:7:"user_id";s:1:"9";s:10:"first_name";s:6:"Sanjay";s:9:"last_name";s:8:"Banerjee";s:10:"user_email";s:21:"bsanjay2007@gmail.com";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:14:"user_logged_in";b:1;}'),
('2bea5024be70a2771fc7cb9e0caedcb8', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564386906, ''),
('0c294acb31b3575b6d18a6afdff9d2a6', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564386906, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('afb27d4d1f5564b8b781a25991d07f9d', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564386947, 'a:8:{s:9:"user_data";s:0:"";s:7:"user_id";s:1:"9";s:10:"first_name";s:6:"Sanjay";s:9:"last_name";s:8:"Banerjee";s:10:"user_email";s:21:"bsanjay2007@gmail.com";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:14:"user_logged_in";b:1;}'),
('5ddf83df9ed1554f024c5b86982d5e71', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564386947, ''),
('6438335514b749697eb41d70bbb1e679', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564386947, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('14f4f8f9b4b314f49f72b99849c0b7fe', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387055, 'a:8:{s:9:"user_data";s:0:"";s:7:"user_id";s:1:"9";s:10:"first_name";s:6:"Sanjay";s:9:"last_name";s:8:"Banerjee";s:10:"user_email";s:21:"bsanjay2007@gmail.com";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:14:"user_logged_in";b:1;}'),
('2af68bcb14acc22e0ff55689207c669b', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387055, ''),
('f5b251832547594e3901048b656778a1', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387195, ''),
('e457fcaca454fa7d79087a1ddae134e4', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387200, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('dc128568d46b71c8233e5f79b3a3be99', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387204, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('fcb15f93c8416547229a176361ad6d18', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387213, 'a:8:{s:9:"user_data";s:0:"";s:7:"user_id";s:1:"9";s:10:"first_name";s:6:"Sanjay";s:9:"last_name";s:8:"Banerjee";s:10:"user_email";s:21:"bsanjay2007@gmail.com";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:14:"user_logged_in";b:1;}'),
('5ba5a2b0be8c67898fde4842a8aa617c', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387214, ''),
('d4793c0c9ae3a78ee7cfec0d9035d062', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387302, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('db3cc7e73416018acb816d9423cd1370', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387306, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('218e13679c266a51c6cdb7c87c1e4595', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A3', 1564387319, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('2c1de654488105220c8daf77913e0df9', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387356, 'a:8:{s:9:"user_data";s:0:"";s:7:"user_id";s:1:"9";s:10:"first_name";s:6:"Sanjay";s:9:"last_name";s:8:"Banerjee";s:10:"user_email";s:21:"bsanjay2007@gmail.com";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:14:"user_logged_in";b:1;}'),
('9817ef15e31eb3a3414f88370e153320', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387357, ''),
('7a38aaaa5ff857c293691b88f947f925', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387376, ''),
('f0d6b4325f6aed9a172732855a645cff', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387376, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('60e9f6162424e9ed5217308db19a374f', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387411, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('6d7b11a16cf9c89197603ffb3330eb29', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387419, 'a:8:{s:9:"user_data";s:0:"";s:7:"user_id";s:1:"9";s:10:"first_name";s:6:"Sanjay";s:9:"last_name";s:8:"Banerjee";s:10:"user_email";s:21:"bsanjay2007@gmail.com";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:14:"user_logged_in";b:1;}'),
('8c0cfca8441b0020e42b1cf3205f0f2f', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387419, ''),
('59b3e3c8dfbcf07901656e29fc764ad5', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387419, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('eb7dd9931cba7677cd2f9d01471539cb', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387475, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('c493af02dc9b2a0273aa938a82682cda', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387497, 'a:8:{s:9:"user_data";s:0:"";s:7:"user_id";s:1:"1";s:10:"first_name";s:8:"Biswajit";s:9:"last_name";s:5:"Maity";s:10:"user_email";s:27:"biswajitmaityniit@gmail.com";s:11:"user_mobile";s:10:"8768624650";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:14:"user_logged_in";b:1;}'),
('3446b0890b2d9c1f1f36b39e9f5aa878', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387497, ''),
('b63c146356d6156d9a76382d9af0a873', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387497, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('aa13f2e9971bcf8660b045601284be4d', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387530, 'a:8:{s:9:"user_data";s:0:"";s:7:"user_id";s:3:"176";s:10:"first_name";s:4:"Test";s:9:"last_name";s:4:"Test";s:10:"user_email";s:14:"test@ymail.com";s:11:"user_mobile";s:10:"1234567890";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:14:"user_logged_in";b:1;}'),
('94dc562bd31d21b34e005479ee9ef049', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387530, ''),
('4a17cc528c7631ec1979db318dedc241', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387530, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('4821f6740012626df4ccf81af66adf51', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387683, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('a142f70c2c2a97584e42458c0b275bc1', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387690, 'a:8:{s:9:"user_data";s:0:"";s:7:"user_id";s:1:"9";s:10:"first_name";s:6:"Sanjay";s:9:"last_name";s:8:"Banerjee";s:10:"user_email";s:21:"bsanjay2007@gmail.com";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:14:"user_logged_in";b:1;}'),
('fb4e6d381071cfe8610bcae269bdb9b6', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387694, 'a:8:{s:9:"user_data";s:0:"";s:7:"user_id";s:1:"9";s:10:"first_name";s:6:"Sanjay";s:9:"last_name";s:8:"Banerjee";s:10:"user_email";s:21:"bsanjay2007@gmail.com";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:14:"user_logged_in";b:1;}'),
('7dc27c8eddb6aad0f1b532ffcad8de1e', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564387884, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('7ee72f8f381f1c4676416bdeccbb206a', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564387899, 'a:8:{s:9:"user_data";s:0:"";s:7:"user_id";s:3:"176";s:10:"first_name";s:4:"Test";s:9:"last_name";s:4:"Test";s:10:"user_email";s:14:"test@ymail.com";s:11:"user_mobile";s:10:"1234567890";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:14:"user_logged_in";b:1;}'),
('9fa3668c856af6a0dbc44ade4ef07230', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564387918, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('e894c19d994161b8caebc1be7660d6dd', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564387934, 'a:8:{s:9:"user_data";s:0:"";s:7:"user_id";s:3:"176";s:10:"first_name";s:4:"Test";s:9:"last_name";s:4:"Test";s:10:"user_email";s:14:"test@ymail.com";s:11:"user_mobile";s:10:"1234567890";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:14:"user_logged_in";b:1;}'),
('d9e6301d27d1f70b4820593cf79e73cf', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564387934, ''),
('b248bf1aadc8c0ce45d8ee8f4a018b3c', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564387934, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('5d299f95f6aec02c10bc099afc6908b8', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387970, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('39f58065315ef506745a3ea4c09cced4', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387975, 'a:8:{s:9:"user_data";s:0:"";s:7:"user_id";s:1:"1";s:10:"first_name";s:8:"Biswajit";s:9:"last_name";s:5:"Maity";s:10:"user_email";s:27:"biswajitmaityniit@gmail.com";s:11:"user_mobile";s:10:"8768624650";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:14:"user_logged_in";b:1;}'),
('06009a7136d74cfe7efce5db24f50639', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387975, ''),
('b0c840595347bd367856ca283bf7d628', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387976, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('f35feb39f98c906a7b2c7318d0291e7e', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387981, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('d2063501db527cef8871e1cc3546c167', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387985, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('b8aae2fb1cd46ed9b4a06e40077bc25e', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387986, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('ba5d76008ac1d2b720fbb72e35984375', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564388009, 'a:8:{s:9:"user_data";s:0:"";s:7:"user_id";s:1:"1";s:10:"first_name";s:8:"Biswajit";s:9:"last_name";s:5:"Maity";s:10:"user_email";s:27:"biswajitmaityniit@gmail.com";s:11:"user_mobile";s:10:"8768624650";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:14:"user_logged_in";b:1;}'),
('f071cdf1e23bb35538a2c126305b0e7b', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564388009, ''),
('dcdb37ce1035341bb3fba2c7583e310d', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564388010, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('11998f7a5d6f5535bfbea0c7deaf4d95', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564388010, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('c6103715851d2696dc0a13df8e6df0b5', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564388128, 'a:5:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";}'),
('665e8819ee74c1e0f03e1b44f6af89e2', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564576504, 'a:6:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:7:"captcha";s:8:"BGKDFDKI";}'),
('0685000f7bbc467c13d26ed7ec8bcbcd', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564410059, 'a:5:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";}'),
('6beb43944c6316f2aa277dd6c7cb1d81', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564410079, 'a:8:{s:9:"user_data";s:0:"";s:7:"user_id";s:1:"9";s:10:"first_name";s:6:"Sanjay";s:9:"last_name";s:8:"Banerjee";s:10:"user_email";s:21:"bsanjay2007@gmail.com";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:14:"user_logged_in";b:1;}'),
('63f547f10e9b5b88f3238ff880e0f3b9', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564410079, ''),
('55c004d8de4aa29039b75bad208a5b48', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564410079, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('818d0fe52d75f4ccdb2314f9c481f5ff', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564411577, 'a:5:{s:9:"user_data";s:0:"";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('dc203bb6860e6f13d29550a069a5917c', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564411647, 'a:5:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";}'),
('bca5c61f760e90734f6fe2f1c09c5b8d', 'fe80::b16a:5690:d90e:b94b', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564731839, 'a:6:{s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('fd850361f41da89941aa6f93f6f899d5', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564578856, 'a:5:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:23:"session_discount_coupon";s:5:"FALSE";s:13:"cart_contents";a:3:{s:32:"1170a3c51dddd240000189d1884dfb1b";a:18:{s:5:"rowid";s:32:"1170a3c51dddd240000189d1884dfb1b";s:2:"id";s:5:"12645";s:11:"category_id";s:1:"8";s:15:"sub_category_id";s:2:"45";s:18:"subcategory_cat_id";s:3:"636";s:4:"name";s:80:"BMW SERIES 6 F06/12/F13 REAR LIGHT LEFT HAND OE. PART- 63 21 7 210 575 / 44593VA";s:6:"weight";s:4:"0.14";s:18:"product_size_width";s:4:"0.06";s:19:"product_size_length";s:4:"0.32";s:19:"product_size_height";s:4:"0.22";s:7:"part_no";s:7:"44593VA";s:5:"price";s:6:"178.30";s:13:"special_price";N;s:12:"actual_price";s:6:"178.30";s:14:"price_with_tax";s:4:"0.00";s:8:"tax_rate";s:4:"0.00";s:3:"qty";s:1:"1";s:8:"subtotal";d:178.30000000000001136868377216160297393798828125;}s:11:"total_items";i:1;s:10:"cart_total";d:178.30000000000001136868377216160297393798828125;}}'),
('5866e64f994190b1c5ccda91f4ff88a1', 'fe80::2c6f:6648:9efc:2b26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1565085535, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"captcha";s:8:"CAKHYVBF";}'),
('f01147a1dacf8a581f8c7ca16d8090d8', 'fe80::2c6f:6648:9efc:2b26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564560402, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('afc0b36a1bc24c1c1c9b24c7b79ac7a3', 'fe80::2c6f:6648:9efc:2b26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564560405, ''),
('281059ae6733ba38fba17bbc15398657', 'fe80::2c6f:6648:9efc:2b26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564573047, ''),
('3fb53a0e337b6e6f7e1ce74b12634472', 'fe80::2c6f:6648:9efc:2b26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564573047, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('e3bf500bcbc81d6fea356dd9fec506f7', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (iPad; CPU OS 11_0 like Mac OS X) AppleWebKit/604.1.34 (KHTML, like Gecko) Version/11.0 Mobile/15A5341f Safa', 1564576522, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('4b9f19ed3495f0454d87d511dcd7a4d9', '192.168.1.20', 'Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.', 1564578872, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('0d765b94bab072992e9a5572507ce335', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564643400, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('aac427e624116e34f9a2a8a164e53784', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564586812, 'a:5:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:13:"cart_contents";a:3:{s:32:"c55c6eea07345c455a100597687a61d2";a:18:{s:5:"rowid";s:32:"c55c6eea07345c455a100597687a61d2";s:2:"id";s:5:"13837";s:11:"category_id";s:1:"8";s:15:"sub_category_id";s:2:"81";s:18:"subcategory_cat_id";s:4:"1129";s:4:"name";s:85:"BMW SERIES 7 F01,F02 WARNING CABLE X1 2008 TO 2015 OE PART 34 35 6 775 858 / GIC334FD";s:6:"weight";s:4:"0.20";s:18:"product_size_width";s:4:"0.09";s:19:"product_size_length";s:4:"0.20";s:19:"product_size_height";s:4:"0.20";s:7:"part_no";s:8:"GIC334FD";s:5:"price";s:5:"13.50";s:13:"special_price";N;s:12:"actual_price";s:5:"13.50";s:14:"price_with_tax";s:4:"0.00";s:8:"tax_rate";s:4:"0.00";s:3:"qty";s:1:"1";s:8:"subtotal";d:13.5;}s:11:"total_items";i:1;s:10:"cart_total";d:13.5;}s:23:"session_discount_coupon";s:5:"FALSE";}'),
('e637f374ee17364d4aa121cb0df55f57', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564643408, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('80574212feabf47c4bbd54269aa40c08', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564643414, ''),
('9ca86583fc70df9395fe7ddc6f64adb1', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564643415, ''),
('69e044fe133e189c7c343db837426115', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564643415, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('fc162d07ebd72b29d2273d11916ef0c0', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564643424, ''),
('5092ceb9ec397f8258e310fad0fd0d45', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564643424, ''),
('bc4a0c3808d426a5b3742a374d323bf2', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564643424, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('404389ba27955dffc350e99bd4230a52', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564643437, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('005d1d9e8fca4f01b71ec32a87825194', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564643443, ''),
('2be70c28d9df9c8fdcc9b1c432073d9a', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564643443, ''),
('829b5e8f1a7dc1d4ae6b7451d3fb63e8', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564643443, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('3e7b3c9889dc9f882584ea4e1e1ce507', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564643450, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('656bd2bcd913951cf90474c5e125aa6c', 'fe80::2c6f:6648:9efc:2b26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564647061, ''),
('9bc8946b14e06da80e0be0a6790ba391', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', 1564658664, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"captcha";s:8:"VTWJKGBH";}'),
('420c07b8733bdbca5536d9ce9b05fa03', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', 1564670019, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"captcha";s:8:"UTEXXAND";}'),
('b5d44f1fc58f8c900f5c4669d9da1fd0', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', 1564670050, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('f358a06921e06402842c30a718a244cc', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564670911, ''),
('7f380156aab546c0105aa260fb626a60', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', 1564672202, 'a:4:{s:9:"user_data";s:0:"";s:7:"captcha";s:8:"IETQQZGJ";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('7ac6c0f76c7d36e5c3173d2934e0d4a9', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', 1564672574, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('ac0e400eb0f400c4de09dc0c1b22f280', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', 1564757085, 'a:6:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"550237b8fbcdf3741bb1127d0fc7f6bf";s:7:"captcha";s:8:"RGFYMMNY";}'),
('5f9e11a2fd4ad1ce9d67751a3c6da3fe', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564731170, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"captcha";s:8:"SBTURPIK";}'),
('57621cc2847c413d4da47771257ea411', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1565335913, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('1f6545673f1e8f86fdc43247c9256339', '192.168.1.20', 'Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.', 1564731197, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('5c90f55efd7a4389c0e071d0382ba0dc', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564738967, 'a:4:{s:9:"user_data";s:0:"";s:7:"captcha";s:8:"SECJZNHN";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('c5928e65a3b048b2c06d6c1adb4a44c4', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564733528, 'a:4:{s:9:"user_data";s:0:"";s:7:"captcha";s:8:"NBKCDBTE";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('5f68ac80ff0da8f01e001c7d8616f26f', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564741970, 'a:7:{s:9:"user_data";s:0:"";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('b7ad7e0ba6dd520edd042778e2da319c', '192.168.1.20', 'Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.', 1564739312, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('999e210f7c67cb1276690929ba19338f', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564741349, 'a:4:{s:9:"user_data";s:0:"";s:7:"captcha";s:8:"XSPPVKLR";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('4fb13b809e8275fc7919f65508af1a59', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564744030, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"captcha";s:8:"JUQPAPMP";}'),
('212fc323f8afa304915175fa43319bbe', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564742518, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('3f83b68e0f21b05f6dd8d171cc33df56', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564749149, 'a:9:{s:9:"user_data";s:0:"";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('67941286d495f971340bcacdb4b8821d', '192.168.1.20', 'Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.', 1564744263, 'a:4:{s:9:"user_data";s:0:"";s:7:"captcha";s:8:"PPFZDBEF";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('dbbe85f5c0fd1465ae1587e987eb8a77', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564744470, 'a:4:{s:9:"user_data";s:0:"";s:7:"captcha";s:8:"NELYWDEH";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('7df716b3413d084983e8bcb361451fa8', '192.168.1.20', 'Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.', 1564744553, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('845481b1bcb960745934aadf90e487d9', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564748145, 'a:4:{s:9:"user_data";s:0:"";s:7:"captcha";s:8:"UREHPGMN";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}');
INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('4cc3de857da4fd773cbef57940dafdf2', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564748252, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('85e88151100e1456cdfa91202e79c299', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564751101, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"captcha";s:8:"NENSFXTG";}'),
('4d46fc4ed4c2d7db0fbe3c4725d3fea9', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564818612, 'a:4:{s:9:"user_data";s:0:"";s:7:"captcha";s:8:"YAEBTVPB";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('ef399e5c0e1c61342896c833d3d952f0', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564754219, ''),
('fc72a81a1ed198bc5c73f75e58f67045', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', 1564757086, 'a:4:{s:9:"user_data";s:0:"";s:7:"captcha";s:8:"AKWXFUVF";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('847fbdf5eed6c990aff9a9b1f40c2521', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', 1564757087, 'a:4:{s:9:"user_data";s:0:"";s:7:"captcha";s:8:"HQFGPGKB";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('84b26f94dd14b2a809872fef903fd220', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', 1564757088, 'a:4:{s:9:"user_data";s:0:"";s:7:"captcha";s:8:"PSTMGULE";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('d09a39d3d9ee69c2a5e30a1415da960a', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', 1564757088, 'a:4:{s:9:"user_data";s:0:"";s:7:"captcha";s:8:"TSDUEGVL";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('0b893927bc758befa2644e0b0f02c66c', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', 1564758959, 'a:4:{s:9:"user_data";s:0:"";s:7:"captcha";s:8:"RNZWKWTV";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('eee35862fc397481d5390b7d65990217', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', 1564809775, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('aec8c5e46cf6cd07d4be2562bb753a01', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', 1564818095, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"captcha";s:8:"BGKRFGUV";}'),
('812a7ba79d700caf72d29dca3f2a4f3d', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', 1564819343, 'a:4:{s:9:"user_data";s:0:"";s:7:"captcha";s:8:"FKQKTYFX";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('01cb7ab0a14566dad95d9838e2e0b8e9', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', 1564819715, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('59841c5700a1e68ae65dfc9389a77ce5', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', 1565089499, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"captcha";s:8:"BIUZTLCD";}'),
('ff77375bc8e5d8cf2ef86467636fc607', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1565084860, 'a:11:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"captcha";s:8:"GJVIAFBU";s:10:"product_id";b:0;s:20:"sub_category_item_id";s:4:"1332";s:15:"sub_category_id";s:3:"310";s:11:"category_id";s:2:"16";s:11:"user_mobile";s:10:"8768624650";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:23:"session_discount_coupon";s:5:"FALSE";}'),
('88a0a1d7e11ea8cbac61e6b3ecfb7cef', '192.168.1.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1565084897, 'a:4:{s:9:"user_data";s:0:"";s:7:"captcha";s:8:"PRVZZTDN";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('584503d92fcd0c85bf8fd5753dc26654', '192.168.1.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1565084917, 'a:4:{s:9:"user_data";s:0:"";s:7:"captcha";s:8:"IGNJCHVG";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('461b9ceaba5aa41674b1bf7fcb0b0d1c', '192.168.1.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1565085457, 'a:4:{s:9:"user_data";s:0:"";s:7:"captcha";s:8:"REMWGJRA";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('92cbaffb9e1286a8ab6afa5a751e41d1', '192.168.1.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1565085606, 'a:4:{s:9:"user_data";s:0:"";s:7:"captcha";s:8:"RLSEUNPY";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('6441edc584c8008945f419bafa64f9b7', 'fe80::74af:4c4e:1550:1cec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1565085640, 'a:4:{s:9:"user_data";s:0:"";s:7:"captcha";s:8:"LLBCQZPP";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('0a22ffdb91dd8ca7d54c01944383901d', '192.168.1.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1565085733, 'a:4:{s:9:"user_data";s:0:"";s:7:"captcha";s:8:"YANHXRMJ";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('f7ae5817b51fbb92715cc0af2c2c14ad', '192.168.1.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1565086684, 'a:4:{s:9:"user_data";s:0:"";s:7:"captcha";s:8:"ECAEBYRG";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('68fbc9a47540ed20b2533b6bb0eda072', 'fe80::74af:4c4e:1550:1cec', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1565085832, 'a:4:{s:9:"user_data";s:0:"";s:7:"captcha";s:8:"AHUAJYTL";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('e7dcaa5a610dd21c896ce0dd092211d8', '192.168.1.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1565088277, 'a:4:{s:9:"user_data";s:0:"";s:7:"captcha";s:8:"WDWPELDC";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('d2fbba9715802b51a0629fce43bdf180', '192.168.1.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1565088866, 'a:4:{s:9:"user_data";s:0:"";s:7:"captcha";s:8:"NQCNTMPD";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('b22aaa279bcc3c362dbee820be874d9a', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', 1565092253, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"captcha";s:8:"GEAHZTTU";}'),
('30edd0aebff86bd1948a8ff90301db4c', '192.168.1.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1565092300, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('2ab73c3c11af5f90ab65c2e74e88a2fe', '192.168.1.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1565098220, 'a:11:{s:9:"user_data";s:0:"";s:7:"captcha";s:8:"FUBANVSB";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:11:"user_mobile";s:10:"8768624650";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:7:"user_id";s:1:"1";s:10:"first_name";s:8:"Biswajit";s:9:"last_name";s:5:"Maity";s:10:"user_email";s:27:"biswajitmaityniit@gmail.com";s:14:"user_logged_in";b:1;}'),
('1561facc194d1379d83c8ef37d5a02df', '192.168.1.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1565098778, 'a:5:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:11:"user_mobile";s:10:"8768624650";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";}'),
('66b933e96b851177c2673d96726f305f', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', 1565100137, 'a:11:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"captcha";s:8:"GAKDDKMF";s:7:"user_id";s:1:"9";s:10:"first_name";s:6:"Sanjay";s:9:"last_name";s:8:"Banerjee";s:10:"user_email";s:21:"bsanjay2007@gmail.com";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"550237b8fbcdf3741bb1127d0fc7f6bf";s:14:"user_logged_in";b:1;}'),
('0d5b93f2ff45848a352a9347de3f65e1', '192.168.1.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1565175634, 'a:11:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:11:"user_mobile";s:10:"8768624650";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:13:"cart_contents";a:3:{s:32:"27dcfa6c9fb04dfa28b3e385698e3e5c";a:18:{s:5:"rowid";s:32:"27dcfa6c9fb04dfa28b3e385698e3e5c";s:2:"id";s:5:"13462";s:11:"category_id";s:1:"8";s:15:"sub_category_id";s:2:"64";s:18:"subcategory_cat_id";s:3:"836";s:4:"name";s:79:"BMW SERIES 3 COMPACT E36 1994 TO 2000 CLUTCH KIT OE. 21 21 7 523 620 / 835087VA";s:6:"weight";s:5:"11.04";s:18:"product_size_width";s:4:"0.10";s:19:"product_size_length";s:4:"0.35";s:19:"product_size_height";s:4:"0.33";s:7:"part_no";s:8:"835087VA";s:5:"price";s:6:"333.40";s:13:"special_price";N;s:12:"actual_price";s:6:"333.40";s:14:"price_with_tax";s:4:"0.00";s:8:"tax_rate";s:4:"0.00";s:3:"qty";s:1:"1";s:8:"subtotal";d:333.3999999999999772626324556767940521240234375;}s:11:"total_items";i:1;s:10:"cart_total";d:333.3999999999999772626324556767940521240234375;}s:23:"session_discount_coupon";s:5:"FALSE";s:32:"total_user_credit_point_to_pound";s:4:"0.00";s:12:"shpping_cost";s:5:"52.64";s:14:"original_price";s:5:"43.87";s:7:"captcha";s:8:"ZUNJRQGA";}'),
('aca2b407a7083bdb286f1f5b260ea3a0', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', 1565182552, 'a:10:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"captcha";s:8:"TYKNMNAA";s:13:"cart_contents";a:3:{s:32:"50fa544aed05b973f5f774b13ca04712";a:18:{s:5:"rowid";s:32:"50fa544aed05b973f5f774b13ca04712";s:2:"id";s:5:"21413";s:11:"category_id";s:1:"7";s:15:"sub_category_id";s:3:"201";s:18:"subcategory_cat_id";s:4:"3855";s:4:"name";s:43:"JAGUAR  - INLET CAMSHAFT GENUINE - JDE38687";s:6:"weight";s:4:"2.24";s:18:"product_size_width";s:3:"100";s:19:"product_size_length";s:3:"500";s:19:"product_size_height";s:3:"100";s:7:"part_no";s:8:"JDE38687";s:5:"price";s:6:"331.64";s:13:"special_price";N;s:12:"actual_price";s:6:"331.64";s:14:"price_with_tax";s:4:"0.00";s:8:"tax_rate";s:4:"0.00";s:3:"qty";s:1:"1";s:8:"subtotal";d:331.6399999999999863575794734060764312744140625;}s:11:"total_items";i:1;s:10:"cart_total";d:331.6399999999999863575794734060764312744140625;}s:23:"session_discount_coupon";s:5:"FALSE";s:11:"user_mobile";s:10:"1234567890";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:12:"shpping_cost";s:5:"37.21";s:14:"original_price";s:5:"31.01";}'),
('831e36d2949881e3380b720814987060', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36', 1565100654, 'a:5:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"550237b8fbcdf3741bb1127d0fc7f6bf";}'),
('25267dc29566dc88be2b02c8043bf150', '192.168.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1565176090, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('d4478b40332d977eb92a6d84df153b93', '192.168.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1565261442, 'a:11:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"captcha";s:8:"FXBUQYEH";s:7:"user_id";s:1:"1";s:10:"first_name";s:8:"Biswajit";s:9:"last_name";s:5:"Maity";s:10:"user_email";s:27:"biswajitmaityniit@gmail.com";s:11:"user_mobile";s:10:"8768624650";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:14:"user_logged_in";b:1;}'),
('bb7ad98b3756111f4dcd7e56d770f4aa', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1565246543, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('5cfc7b2e22f8e6ba2fd91d8df78a19b4', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1565333211, 'a:6:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"captcha";s:8:"IULFQPPE";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"550237b8fbcdf3741bb1127d0fc7f6bf";}'),
('4e598a721d3a974b8465de3df5a4307c', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1565361713, 'a:8:{s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('993170e6b930a19ae533ccd972e176b0', '192.168.1.4', 'Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.', 1565261567, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"captcha";s:8:"WMKNCDRZ";}'),
('722a6a3114a7b8701e0ba5d053ca2e11', '192.168.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1565262407, 'a:4:{s:9:"user_data";s:0:"";s:7:"captcha";s:8:"BTAEHQKW";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('2c809dfa5938cba4c8486a9a6b0459ba', '192.168.1.4', 'Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.', 1565262770, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('ee37178ca0c6844d7ae7d43667532066', '192.168.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1565335180, 'a:15:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"captcha";s:8:"BSRPRSTI";s:23:"session_discount_coupon";s:5:"FALSE";s:11:"user_mobile";s:10:"8768624650";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:7:"user_id";s:1:"1";s:10:"first_name";s:8:"Biswajit";s:9:"last_name";s:5:"Maity";s:10:"user_email";s:27:"biswajitmaityniit@gmail.com";s:14:"user_logged_in";b:1;s:32:"total_user_credit_point_to_pound";s:4:"0.00";s:12:"shpping_cost";s:5:"37.21";s:14:"original_price";s:5:"31.01";}'),
('3614895fb69ac7e938e250ef6f2bf876', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1565359953, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"2";s:9:"directory";s:7:"spanish";}'),
('feae7154cf5b1b542ce33d50c4ee0ad2', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 1565360691, 'a:9:{s:9:"user_data";s:0:"";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('0bea4a2a43e62921237bdcb745a8dbc8', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564152213, ''),
('75b89ddaf7b5539497db42599d3d564c', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564152224, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('614ce7052f08161651e4931c755fd87b', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564152225, ''),
('a06d1dd842a0acff983de83f233d2d6b', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564152230, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('bada5c6bd8b768ac3016725e29d18554', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564152339, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('0069cc9ec4ff665033de7dceb433a39d', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564152351, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('3c38d38048b5c7327b90b963f711fa74', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564152352, ''),
('dddf344ca3fa4e072b0f5287b1510225', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564210436, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('fcae33e1e017d62cde798af6f79ca741', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564382091, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('dfd27d3ff40b42733e1763b92fdf2588', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564384768, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('02deaaad92a800b554cd6e0444ebac47', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564384771, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('4c36f89bc55abda1623d5ac8560abc9f', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564384803, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('6496d1f87d9798df00d4bf1dab3c3f0a', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564152212, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('41edac783392b20c4b299faf1b11feaf', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564152071, ''),
('76207f3966097a3ce875ef5099592f08', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564152070, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('b517b8108f61fa02568cd7544edc7624', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564151972, ''),
('93f4550f89c7bae8cddcc8208b212d83', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564151971, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('b574405901e504d23a0233b4bfcec074', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564151953, ''),
('3792cba126cacab2c1e0df32e62d89ab', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564151952, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('771899e77b408d3445e17e21a0269e9d', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564151936, ''),
('cedd2e24f3f0a1a156d2520592454803', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564068208, ''),
('b1ec98e127cc7f3b5f92b443ee195227', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564151929, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('d3764dee0daa9b495c5631306641c26c', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564151935, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('61edcf0ea7cf1b20a01940dcea598405', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564058275, ''),
('e52382c5bdb9d32cca80b8dd2a11c742', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564058265, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('2e15b4899b9ef70c4932d7a90abd1b53', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564057934, ''),
('cc1b88d83b67b00240d910b16c87e475', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564057730, ''),
('2e43747710e3e74b21447d7b11844e9a', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564057720, ''),
('044967b3d35aec750b699a1457f8c347', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564057696, ''),
('dc037b95c7c9840cc199515b7587d6b2', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564057616, ''),
('0180724ccccd5c54aa9603ed59a7c55e', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564057626, ''),
('7d9dd7e5bb557d18450919d01a480393', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564057603, ''),
('5a6f5a2a66818fa2de1cd78570e215dd', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564057584, ''),
('86b52d56d43dfc5c24498a1340c58c9c', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564057428, ''),
('4aa7f91ef6fbba7e69230dbf1531d387', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564057450, ''),
('11f0529ca98118af0cc69f87db72899e', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564057399, ''),
('f074710b3cc40398a38adaacc799ca6b', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564057417, ''),
('60d7da4ee962d8ac98711b5e204803b9', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564057340, ''),
('f12e242982eea13afe16e721a0b5d570', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564057355, ''),
('a74f59770ca49c403b1ca8485f0b575d', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564057287, ''),
('67be893b6f965f816b88a5bbbafc139e', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564057301, ''),
('2696cf536a1f7e29fe68dd28ebae612e', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564065790, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('705823ea48ddf5a51d9a9a0756a645b7', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564055829, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('00eb8df483be2789345819e425fa607d', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563982077, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('53e2735576abd7c2980aa6a7e9054a52', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563982041, ''),
('627db5303b07ae2838c181907287ce85', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563982030, ''),
('01ea286d32758931d99d84a9ceeecccc', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563981518, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('4fbbef430ea8e4ea1a694ecfa2d9ae46', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563981517, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"2";s:9:"directory";s:7:"spanish";}'),
('a9dcfff295a3c7a20f9531bd6b9cc88c', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563981506, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('894fc09047a4860477a0252ff6ba5bcb', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563981506, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"2";s:9:"directory";s:7:"spanish";}'),
('dd70f6dfbec7da65b9e58e41ba9e6a08', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563981503, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('9e628b0c0a75ded6f39913b95bf408e1', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563981497, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('4ec7aa2f6758d312be9c4ea278e8cbd7', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563981497, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"2";s:9:"directory";s:7:"spanish";}'),
('d5d8a4e6860b3f21909acb97bb4aad6b', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563981489, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('c87871a90c109fc4e379a05036cffec1', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563981489, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"2";s:9:"directory";s:7:"spanish";}'),
('75d1766881778ea3b78703ad174f400f', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563973399, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('5ac55ea53c2a6dbe9b53712d7c98f624', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563981480, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('584919e7760132ff16130f42805d34d2', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563972769, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('c1a7374f2b521a1a1c9e1b27528af4d7', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563972684, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('f1823a92771db2a8ce8f5c8c28563ceb', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563972675, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('87dd0a689ff737ab21b119098be1f364', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563972649, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('b7ed8b0cc9b68d9f1b4c17d2cd6f008a', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563972629, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('dccc95f1d42b024b2416d17ec447bbd2', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563972471, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('5ce2537768e8e138dad786882dc64059', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563972423, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('e34a8af4ed797e2cd688013bae2ebffd', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563972418, ''),
('48d78c55b28fa073d160a2558dba6e57', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563972418, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('81e6ec3d41c50fa1a127e374171e299e', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563971289, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('8bd72b244da70250dd463e9da20c20e1', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563971290, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('bd8f020a84962cb4ef0cc07cfd8f7e70', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563971335, 'a:10:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"user_id";s:1:"9";s:10:"first_name";s:6:"Sanjay";s:9:"last_name";s:8:"Banerjee";s:10:"user_email";s:21:"bsanjay2007@gmail.com";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:14:"user_logged_in";b:1;}'),
('0bf4374037f2920245194b26703f2d9a', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563971810, 'a:5:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";}'),
('a7dcf7f78509b797ffa868d450c01c42', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563971810, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('f6e5be6b19bcaad56f8092da1252a1b3', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563972267, ''),
('dfdc7b1aa173ec382b2c5e0662cdabbf', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563972270, ''),
('b57d20d5fc542e4fb9b6919dbe3b0f7b', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563971228, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('8b7968035dcb8a5f696ce941bed9e7e1', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563971228, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('0cccf014a910d665a8717376f6e19e1d', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563971205, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('53dc3b5bd6addddf2beca77e9e8121c1', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563971205, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('57ac5b23a67c75b4891395ec56a46d7b', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563971197, ''),
('1c4372d2a336a5b72f550323b3850c6d', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563971193, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('716607c6ab3fe3cf82cb2e4cee0c82fa', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563971177, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('03ce173898ba16ae52219d827a12beef', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563971172, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('c581a87cece692042c0cf30b07a28415', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563970884, ''),
('623c494ff4dd20d565508b3e88a29f58', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563875933, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('1314c2981fc5e65956f9910809bdeb2e', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563882639, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('add279f164b4b54d9e2d5f0f3538fbba', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1564044855, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('7ab79f059e5214ded1aa6eb6ba8ad5f1', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563967784, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('e446ac684968846ae9e945a13eb150af', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563970767, 'a:7:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:13:"cart_contents";a:3:{s:32:"2316788c9a61179830bbe49c5e767369";a:18:{s:5:"rowid";s:32:"2316788c9a61179830bbe49c5e767369";s:2:"id";s:5:"13100";s:11:"category_id";s:1:"8";s:15:"sub_category_id";s:2:"59";s:18:"subcategory_cat_id";s:3:"705";s:4:"name";s:91:"BMW SERIES 1 E81,E82, E87, E88, 2004 TO 2011 BRAKE PADS OE PART 34 21 6 788 183 / FBP0175FD";s:6:"weight";s:4:"1.00";s:18:"product_size_width";s:4:"0.30";s:19:"product_size_length";s:4:"0.20";s:19:"product_size_height";s:4:"0.30";s:7:"part_no";s:9:"FBP0175FD";s:5:"price";s:5:"19.50";s:13:"special_price";s:5:"19.50";s:12:"actual_price";s:5:"19.50";s:14:"price_with_tax";s:4:"0.00";s:8:"tax_rate";s:4:"0.00";s:3:"qty";s:1:"2";s:8:"subtotal";d:39;}s:11:"total_items";i:2;s:10:"cart_total";d:39;}s:23:"session_discount_coupon";s:5:"FALSE";}'),
('e8b9505e773fd6859f26cd5df25ab45c', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1563463773, ''),
('95d6fe5b3cafe5ac0b767f3b69be2c8a', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1564387966, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('037b413636e157fe0bee656b35a78c9e', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 1563290748, ''),
('467c5d854bfe9ce0f52205ed7df63b9e', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563461196, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"2";s:9:"directory";s:7:"spanish";}'),
('e1d539fd52e2e21aee078e9e4611fca5', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563375249, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"2";s:9:"directory";s:7:"spanish";}'),
('6aae503880619e06969b7ecebc0aa026', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1563276021, ''),
('2d15813d849e9b10fbea5159edebd598', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1563280125, 'a:10:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"user_id";s:1:"9";s:10:"first_name";s:6:"Sanjay";s:9:"last_name";s:8:"Banerjee";s:10:"user_email";s:21:"bsanjay2007@gmail.com";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:14:"user_logged_in";b:1;}'),
('1908fb26865021a1b3448206b7609988', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1563276021, ''),
('508e4a064636a987ae925d1c4bb84037', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1563276020, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('ff8053ef6452124711faef949a0b7736', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1563276020, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('0a9fc10adc273267f8adeba9af691b48', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1563550332, ''),
('a82e213c1f40e62f3d40b071f2e7a9d0', 'fe80::2c6f:6648:9efc:2b26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1563260696, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('fbc958581377dfdf7aebfc258e650556', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1563519001, 'a:12:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:11:"user_mobile";s:10:"8768624650";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:13:"cart_contents";a:3:{s:32:"c55c6eea07345c455a100597687a61d2";a:18:{s:5:"rowid";s:32:"c55c6eea07345c455a100597687a61d2";s:2:"id";s:5:"13837";s:11:"category_id";s:1:"8";s:15:"sub_category_id";s:2:"81";s:18:"subcategory_cat_id";s:4:"1129";s:4:"name";s:85:"BMW SERIES 7 F01,F02 WARNING CABLE X1 2008 TO 2015 OE PART 34 35 6 775 858 / GIC334FD";s:6:"weight";s:4:"0.20";s:18:"product_size_width";s:4:"0.09";s:19:"product_size_length";s:4:"0.20";s:19:"product_size_height";s:4:"0.20";s:7:"part_no";s:8:"GIC334FD";s:5:"price";s:5:"13.50";s:13:"special_price";N;s:12:"actual_price";s:5:"13.50";s:14:"price_with_tax";s:4:"0.00";s:8:"tax_rate";s:4:"0.00";s:3:"qty";s:1:"1";s:8:"subtotal";d:13.5;}s:11:"total_items";i:1;s:10:"cart_total";d:13.5;}s:23:"session_discount_coupon";s:5:"FALSE";s:10:"product_id";b:0;s:20:"sub_category_item_id";s:5:"13796";s:15:"sub_category_id";s:3:"573";s:11:"category_id";s:2:"37";s:7:"captcha";s:8:"YWSEGJAZ";}'),
('ae875a8e9297cf04b9e91f19b7ab2241', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1563272073, 'a:5:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";}'),
('205a0a4431cfa8fb0a921ae566965c65', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1563276020, 'a:10:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"user_id";s:1:"9";s:10:"first_name";s:6:"Sanjay";s:9:"last_name";s:8:"Banerjee";s:10:"user_email";s:21:"bsanjay2007@gmail.com";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:14:"user_logged_in";b:1;}'),
('4622556a38928e36aeec1a5734af44b4', 'fe80::2c6f:6648:9efc:2b26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 1563261260, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('69082ff631513ea84dd9873b8d5d8226', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 1560926082, 'a:5:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:13:"cart_contents";a:3:{s:32:"fc133194812b3983d793d362c4fe97e7";a:18:{s:5:"rowid";s:32:"fc133194812b3983d793d362c4fe97e7";s:2:"id";s:5:"15794";s:11:"category_id";s:1:"9";s:15:"sub_category_id";s:3:"118";s:18:"subcategory_cat_id";s:4:"2151";s:4:"name";s:80:"MERCEDES BENZ C CLASS W202 1993 TO 2000 WIPER MOTOR PART- 20282066442 / 403927VA";s:6:"weight";s:4:"3.29";s:18:"product_size_width";s:4:"0.16";s:19:"product_size_length";s:4:"0.16";s:19:"product_size_height";s:4:"0.78";s:7:"part_no";s:8:"403927VA";s:5:"price";s:6:"109.20";s:13:"special_price";N;s:12:"actual_price";s:6:"109.20";s:14:"price_with_tax";s:4:"0.00";s:8:"tax_rate";s:4:"0.00";s:3:"qty";s:1:"1";s:8:"subtotal";d:109.2000000000000028421709430404007434844970703125;}s:11:"total_items";i:1;s:10:"cart_total";d:109.2000000000000028421709430404007434844970703125;}s:23:"session_discount_coupon";s:5:"FALSE";}'),
('f8b60cf3dd969105e149e0a29ec68263', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 1560867812, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('751d9d783f578e7b257c83b7c0adde26', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A3', 1560926118, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('6f31dee1a55ee11f2feed12e881efe4d', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 1560928019, 'a:5:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:13:"cart_contents";a:3:{s:32:"fc133194812b3983d793d362c4fe97e7";a:18:{s:5:"rowid";s:32:"fc133194812b3983d793d362c4fe97e7";s:2:"id";s:5:"15794";s:11:"category_id";s:1:"9";s:15:"sub_category_id";s:3:"118";s:18:"subcategory_cat_id";s:4:"2151";s:4:"name";s:80:"MERCEDES BENZ C CLASS W202 1993 TO 2000 WIPER MOTOR PART- 20282066442 / 403927VA";s:6:"weight";s:4:"3.29";s:18:"product_size_width";s:4:"0.16";s:19:"product_size_length";s:4:"0.16";s:19:"product_size_height";s:4:"0.78";s:7:"part_no";s:8:"403927VA";s:5:"price";s:6:"109.20";s:13:"special_price";N;s:12:"actual_price";s:6:"109.20";s:14:"price_with_tax";s:4:"0.00";s:8:"tax_rate";s:4:"0.00";s:3:"qty";s:1:"1";s:8:"subtotal";d:109.2000000000000028421709430404007434844970703125;}s:11:"total_items";i:1;s:10:"cart_total";d:109.2000000000000028421709430404007434844970703125;}s:23:"session_discount_coupon";s:5:"FALSE";}'),
('acc383daea513be59abb00873396fade', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 1560939229, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('731adc2619f25f41b04b1b7b61ad91ed', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 1560945006, 'a:8:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:11:"user_mobile";s:10:"1234569780";s:13:"cart_contents";a:3:{s:32:"fc133194812b3983d793d362c4fe97e7";a:18:{s:5:"rowid";s:32:"fc133194812b3983d793d362c4fe97e7";s:2:"id";s:5:"15794";s:11:"category_id";s:1:"9";s:15:"sub_category_id";s:3:"118";s:18:"subcategory_cat_id";s:4:"2151";s:4:"name";s:80:"MERCEDES BENZ C CLASS W202 1993 TO 2000 WIPER MOTOR PART- 20282066442 / 403927VA";s:6:"weight";s:4:"3.29";s:18:"product_size_width";s:4:"0.16";s:19:"product_size_length";s:4:"0.16";s:19:"product_size_height";s:4:"0.78";s:7:"part_no";s:8:"403927VA";s:5:"price";s:6:"109.20";s:13:"special_price";N;s:12:"actual_price";s:6:"109.20";s:14:"price_with_tax";s:4:"0.00";s:8:"tax_rate";s:4:"0.00";s:3:"qty";s:1:"1";s:8:"subtotal";d:109.2000000000000028421709430404007434844970703125;}s:11:"total_items";i:1;s:10:"cart_total";d:109.2000000000000028421709430404007434844970703125;}s:23:"session_discount_coupon";s:5:"FALSE";s:12:"shpping_cost";s:5:"37.21";s:14:"original_price";s:5:"31.01";}');
INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('b6a62cc071f957057bb2c4f5eb864b75', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 1561044646, 'a:8:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:13:"cart_contents";a:3:{s:32:"0801b20e08c3242125d512808cd74302";a:18:{s:5:"rowid";s:32:"0801b20e08c3242125d512808cd74302";s:2:"id";s:4:"9262";s:11:"category_id";s:1:"7";s:15:"sub_category_id";s:2:"31";s:18:"subcategory_cat_id";s:3:"417";s:4:"name";s:68:"JAGUAR S TYPE 1999-2008 V6 PETROL TIMING COVER GASKET. PART- XR85359";s:6:"weight";s:4:"0.04";s:18:"product_size_width";s:5:"0.170";s:19:"product_size_length";s:5:"0.170";s:19:"product_size_height";s:5:"0.030";s:7:"part_no";s:8:"XR85359 ";s:5:"price";s:5:"15.70";s:13:"special_price";N;s:12:"actual_price";s:5:"15.70";s:14:"price_with_tax";s:4:"0.00";s:8:"tax_rate";s:4:"0.00";s:3:"qty";s:1:"1";s:8:"subtotal";d:15.699999999999999289457264239899814128875732421875;}s:11:"total_items";i:1;s:10:"cart_total";d:15.699999999999999289457264239899814128875732421875;}s:23:"session_discount_coupon";s:5:"FALSE";s:11:"user_mobile";s:10:"1234569780";s:12:"shpping_cost";s:5:"37.21";s:14:"original_price";s:5:"31.01";}'),
('b31756c52fd872f16596719fb5e08eab', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 1561104587, 'a:8:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:11:"user_mobile";s:10:"1234569780";s:13:"cart_contents";a:3:{s:32:"18085327b86002fc604c323b9a07f997";a:18:{s:5:"rowid";s:32:"18085327b86002fc604c323b9a07f997";s:2:"id";s:4:"7363";s:11:"category_id";s:1:"7";s:15:"sub_category_id";s:2:"31";s:18:"subcategory_cat_id";s:3:"426";s:4:"name";s:34:"JAGUAR BUSHING KIT. PART- C2C29161";s:6:"weight";s:4:"0.01";s:18:"product_size_width";s:4:"0.05";s:19:"product_size_length";s:4:"0.05";s:19:"product_size_height";s:4:"0.02";s:7:"part_no";s:8:"C2C29161";s:5:"price";s:5:"18.86";s:13:"special_price";N;s:12:"actual_price";s:5:"18.86";s:14:"price_with_tax";s:4:"0.00";s:8:"tax_rate";s:4:"0.00";s:3:"qty";s:1:"1";s:8:"subtotal";d:18.8599999999999994315658113919198513031005859375;}s:11:"total_items";i:1;s:10:"cart_total";d:18.8599999999999994315658113919198513031005859375;}s:23:"session_discount_coupon";s:5:"FALSE";s:12:"shpping_cost";s:5:"37.21";s:14:"original_price";s:5:"31.01";}'),
('139166d92f1caaa09d5c9058b14627a3', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 1561104954, 'a:13:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:23:"session_discount_coupon";s:5:"FALSE";s:13:"cart_contents";a:3:{s:32:"5276818eded29a652edfb6a40c9308c4";a:18:{s:5:"rowid";s:32:"5276818eded29a652edfb6a40c9308c4";s:2:"id";s:5:"13563";s:11:"category_id";s:1:"8";s:15:"sub_category_id";s:2:"75";s:18:"subcategory_cat_id";s:4:"1452";s:4:"name";s:75:"BMW SERIES 5 F07 TRACK CONTROL ARM 2010 OE PART 31 12 6 798 108 / FCA6995FD";s:6:"weight";s:4:"3.60";s:18:"product_size_width";s:4:"0.30";s:19:"product_size_length";s:4:"0.80";s:19:"product_size_height";s:4:"0.10";s:7:"part_no";s:9:"FCA6995FD";s:5:"price";s:6:"118.50";s:13:"special_price";N;s:12:"actual_price";s:6:"118.50";s:14:"price_with_tax";s:4:"0.00";s:8:"tax_rate";s:4:"0.00";s:3:"qty";s:1:"1";s:8:"subtotal";d:118.5;}s:11:"total_items";i:1;s:10:"cart_total";d:118.5;}s:7:"user_id";s:1:"9";s:10:"first_name";s:6:"Sanjay";s:9:"last_name";s:8:"Banerjee";s:10:"user_email";s:21:"bsanjay2007@gmail.com";s:11:"user_mobile";s:10:"1234569780";s:14:"user_logged_in";b:1;s:12:"shpping_cost";s:5:"39.20";s:14:"original_price";s:5:"32.67";}'),
('688b0e7ea290014b246677b1c57865e8', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 1561106225, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('5285d345f8f76dd8c5e0fcacf2f4f421', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 1561106226, 'a:13:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:13:"cart_contents";a:3:{s:32:"24ac838a6b14395dda537b1c38cde219";a:18:{s:5:"rowid";s:32:"24ac838a6b14395dda537b1c38cde219";s:2:"id";s:4:"9787";s:11:"category_id";s:1:"7";s:15:"sub_category_id";s:2:"37";s:18:"subcategory_cat_id";s:3:"562";s:4:"name";s:56:"JAGUAR  XJ12 1987 - 1994 LOCKING NUT M8. PART- JFY10804B";s:6:"weight";s:4:"0.01";s:18:"product_size_width";s:4:"0.01";s:19:"product_size_length";s:4:"0.10";s:19:"product_size_height";s:4:"0.09";s:7:"part_no";s:9:"JFY10804B";s:5:"price";s:3:".64";s:13:"special_price";N;s:12:"actual_price";s:4:"0.64";s:14:"price_with_tax";s:4:"0.00";s:8:"tax_rate";s:4:"0.00";s:3:"qty";s:1:"1";s:8:"subtotal";d:0.64000000000000001332267629550187848508358001708984375;}s:11:"total_items";i:1;s:10:"cart_total";d:0.64000000000000001332267629550187848508358001708984375;}s:23:"session_discount_coupon";s:5:"FALSE";s:7:"user_id";s:1:"9";s:10:"first_name";s:6:"Sanjay";s:9:"last_name";s:8:"Banerjee";s:10:"user_email";s:21:"bsanjay2007@gmail.com";s:11:"user_mobile";s:10:"1234569780";s:14:"user_logged_in";b:1;s:12:"shpping_cost";s:5:"37.21";s:14:"original_price";s:5:"31.01";}'),
('776dc01334a2123c737cc6c6190446b5', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 1561110848, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('2235b78e1e7ea31a873a6e2f58a855b0', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 1561187332, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('a77a176cd6c66596af00ccdb10c51652', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 1561555709, 'a:8:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:13:"cart_contents";a:3:{s:32:"c55c6eea07345c455a100597687a61d2";a:18:{s:5:"rowid";s:32:"c55c6eea07345c455a100597687a61d2";s:2:"id";s:5:"13837";s:11:"category_id";s:1:"8";s:15:"sub_category_id";s:2:"81";s:18:"subcategory_cat_id";s:4:"1129";s:4:"name";s:85:"BMW SERIES 7 F01,F02 WARNING CABLE X1 2008 TO 2015 OE PART 34 35 6 775 858 / GIC334FD";s:6:"weight";s:4:"0.20";s:18:"product_size_width";s:4:"0.09";s:19:"product_size_length";s:4:"0.20";s:19:"product_size_height";s:4:"0.20";s:7:"part_no";s:8:"GIC334FD";s:5:"price";s:5:"13.50";s:13:"special_price";N;s:12:"actual_price";s:5:"13.50";s:14:"price_with_tax";s:4:"0.00";s:8:"tax_rate";s:4:"0.00";s:3:"qty";s:1:"1";s:8:"subtotal";d:13.5;}s:11:"total_items";i:1;s:10:"cart_total";d:13.5;}s:23:"session_discount_coupon";s:5:"FALSE";s:11:"user_mobile";s:10:"1234569780";s:12:"shpping_cost";s:5:"37.21";s:14:"original_price";s:5:"31.01";}'),
('ef45b4fb9c677732dc7a1a60dea7b2a6', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 1561990086, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('490b5f23b4303d2dde6580cf97718174', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 1561979129, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('af0be68e6009939d6be44bfad65b4bfe', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 1562049044, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('452deda11809ded32eae182f38961507', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 1562597389, 'a:8:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"captcha";s:8:"DFKPMUUC";s:13:"cart_contents";a:4:{s:32:"ddd65013f9f3507850f6bd4b5a68f901";a:18:{s:5:"rowid";s:32:"ddd65013f9f3507850f6bd4b5a68f901";s:2:"id";s:5:"11058";s:11:"category_id";s:1:"2";s:15:"sub_category_id";s:1:"4";s:18:"subcategory_cat_id";s:3:"151";s:4:"name";s:52:"LAND ROVER DISCOVERY 4  SERVICE KIT .  PART - DA6041";s:6:"weight";s:4:"0.50";s:18:"product_size_width";s:4:"0.41";s:19:"product_size_length";s:4:"0.27";s:19:"product_size_height";s:4:"0.22";s:7:"part_no";s:6:"DA6041";s:5:"price";s:5:"30.99";s:13:"special_price";N;s:12:"actual_price";s:5:"30.99";s:14:"price_with_tax";s:4:"0.00";s:8:"tax_rate";s:4:"0.00";s:3:"qty";s:1:"1";s:8:"subtotal";d:30.989999999999998436805981327779591083526611328125;}s:32:"aeea73be8c3967e626f871de617d508c";a:18:{s:5:"rowid";s:32:"aeea73be8c3967e626f871de617d508c";s:2:"id";s:5:"10567";s:11:"category_id";s:1:"2";s:15:"sub_category_id";s:1:"3";s:18:"subcategory_cat_id";s:3:"127";s:4:"name";s:69:"LAND ROVER DISCOVERY 3 2005-2009 BLADE ASSY - WIPER . PART- DKB500710";s:6:"weight";s:4:"0.12";s:18:"product_size_width";s:4:"0.06";s:19:"product_size_length";s:4:"0.47";s:19:"product_size_height";s:4:"0.02";s:7:"part_no";s:9:"DKB500710";s:5:"price";s:3:".93";s:13:"special_price";N;s:12:"actual_price";s:4:"0.93";s:14:"price_with_tax";s:4:"0.00";s:8:"tax_rate";s:4:"0.00";s:3:"qty";s:1:"1";s:8:"subtotal";d:0.93000000000000004884981308350688777863979339599609375;}s:11:"total_items";i:2;s:10:"cart_total";d:31.919999999999998152588887023739516735076904296875;}s:11:"user_mobile";s:10:"1234569780";s:12:"shpping_cost";s:5:"41.20";s:14:"original_price";s:5:"34.33";}'),
('c7574273b57e2ea8736c2a1f14942748', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 1562586148, 'a:5:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"captcha";s:8:"ELVFCVXX";s:11:"user_mobile";s:10:"1234567890";}'),
('de56ea63847765cbe0f6ad9a484517c9', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 1562585010, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"captcha";s:8:"KSPYNBMG";}'),
('6c3850ac2cf82e05909e6181d3bef8f1', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 1562833527, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"captcha";s:8:"XXYMNMZT";}'),
('043e7d10b69a1e3e75dbeb3b064f5876', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 1562834301, 'a:4:{s:9:"user_data";s:0:"";s:7:"captcha";s:8:"QYZXCPZD";s:6:"langid";s:1:"2";s:9:"directory";s:7:"spanish";}'),
('575446eb91635b026079993b166a12cf', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 1562855370, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('f90f088571f41a5e6131e486c1b81330', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 1563203254, 'a:13:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"captcha";s:8:"XQGDXPGU";s:11:"user_mobile";s:10:"8768624650";s:7:"user_id";s:1:"1";s:10:"first_name";s:8:"Biswajit";s:9:"last_name";s:5:"Maity";s:10:"user_email";s:27:"biswajitmaityniit@gmail.com";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:14:"user_logged_in";b:1;s:13:"cart_contents";a:3:{s:32:"e82a7c661e834d935311ae02bdb4314c";a:18:{s:5:"rowid";s:32:"e82a7c661e834d935311ae02bdb4314c";s:2:"id";s:5:"12910";s:11:"category_id";s:1:"8";s:15:"sub_category_id";s:2:"64";s:18:"subcategory_cat_id";s:3:"833";s:4:"name";s:85:"BMW SERIES 3 COMPACT E36 1994 TO 2000 WATER PUMP OE. PART- 11 51 7 503 884 / 506107VA";s:6:"weight";s:4:"1.05";s:18:"product_size_width";s:4:"0.13";s:19:"product_size_length";s:4:"0.16";s:19:"product_size_height";s:4:"0.15";s:7:"part_no";s:8:"506107VA";s:5:"price";s:5:"27.10";s:13:"special_price";s:5:"27.10";s:12:"actual_price";s:5:"27.10";s:14:"price_with_tax";s:4:"0.00";s:8:"tax_rate";s:4:"0.00";s:3:"qty";s:1:"1";s:8:"subtotal";d:27.10000000000000142108547152020037174224853515625;}s:11:"total_items";i:1;s:10:"cart_total";d:27.10000000000000142108547152020037174224853515625;}s:23:"session_discount_coupon";s:5:"FALSE";}'),
('75fb4f56263fb90bc0349ec36de58338', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 1562944542, 'a:10:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:11:"user_mobile";s:10:"1234569780";s:7:"captcha";s:8:"UZYNSGDA";s:7:"user_id";s:3:"176";s:10:"first_name";s:4:"Test";s:9:"last_name";s:4:"Test";s:10:"user_email";s:14:"test@ymail.com";s:14:"user_logged_in";b:1;}'),
('10c5fec2090029f8ba08191116a11e1f', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 1563014297, 'a:5:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:11:"user_mobile";s:10:"1234569780";s:13:"user_password";s:32:"e10adc3949ba59abbe56e057f20f883e";}'),
('9f079a52c9d047c603ba5c4d2f7e20c5', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 1560868459, 'a:8:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:13:"cart_contents";a:3:{s:32:"2aaaddf27344ee54058548dc081c6541";a:18:{s:5:"rowid";s:32:"2aaaddf27344ee54058548dc081c6541";s:2:"id";s:4:"2427";s:11:"category_id";s:1:"7";s:15:"sub_category_id";s:2:"37";s:18:"subcategory_cat_id";s:3:"561";s:4:"name";s:125:"JAGUAR  XJ 2003 - 2009 3.0 LITRE PETROL V6 FROM G00442 TO H32732 INLET MANIFOLD UPPER HEXAGONAL FLANGE NUT M5 . PART- XR81670";s:6:"weight";s:4:"0.04";s:18:"product_size_width";s:5:"0.010";s:19:"product_size_length";s:5:"0.010";s:19:"product_size_height";s:5:"0.005";s:7:"part_no";s:7:"XR81670";s:5:"price";s:4:"1.10";s:13:"special_price";N;s:12:"actual_price";s:4:"1.10";s:14:"price_with_tax";s:4:"0.00";s:8:"tax_rate";s:4:"0.00";s:3:"qty";s:1:"1";s:8:"subtotal";d:1.100000000000000088817841970012523233890533447265625;}s:11:"total_items";i:1;s:10:"cart_total";d:1.100000000000000088817841970012523233890533447265625;}s:23:"session_discount_coupon";s:5:"FALSE";s:11:"user_mobile";s:10:"1234569780";s:12:"shpping_cost";s:5:"37.21";s:14:"original_price";s:5:"31.01";}'),
('21e0af0006778d076382b0dad2774986', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 1560865217, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('7ab81ac5c824a44b288068e7f9b603ab', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 1560519058, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('653922906e8320098f8c5cf6440ff7d6', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 1560856627, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:7:"user_id";s:1:"9";s:10:"first_name";s:6:"Sanjay";s:9:"last_name";s:8:"Banerjee";s:10:"user_email";s:21:"bsanjay2007@gmail.com";s:11:"user_mobile";s:10:"1234569780";s:14:"user_logged_in";b:1;}'),
('084a70087adae87ba0dc855bf081d05f', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 1560517876, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('9fed95e5bd0f3493c7a791a68965d636', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 1560519044, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('97d3d191aceff3ef6f2b9f27aded2b9b', '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 1560510320, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('5d53e91b891f9f4da2192e550d990ffd', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 1560512359, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('c27b63f390c49ab9d5e158fb2fac6219', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 1560512752, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('be020b569dc8874c5281414a3869d3b2', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 1560512798, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('6b0f9e16ffe931ada18c1cc89eaf3047', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 1560507472, 'a:12:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:13:"cart_contents";a:3:{s:32:"49562478de4c54fafd4ec46fdb297de5";a:18:{s:5:"rowid";s:32:"49562478de4c54fafd4ec46fdb297de5";s:2:"id";s:4:"6420";s:11:"category_id";s:1:"6";s:15:"sub_category_id";s:2:"16";s:18:"subcategory_cat_id";s:3:"314";s:4:"name";s:49:"LAND ROVER SERIES 3 DEMISTER HOSE GROMMET. 346785";s:6:"weight";s:4:"0.04";s:18:"product_size_width";s:4:"0.14";s:19:"product_size_length";s:4:"0.11";s:19:"product_size_height";s:4:"0.04";s:7:"part_no";s:6:"346785";s:5:"price";s:4:"2.05";s:13:"special_price";N;s:12:"actual_price";s:4:"2.05";s:14:"price_with_tax";s:4:"0.00";s:8:"tax_rate";s:4:"0.00";s:3:"qty";s:1:"1";s:8:"subtotal";d:2.04999999999999982236431605997495353221893310546875;}s:11:"total_items";i:1;s:10:"cart_total";d:2.04999999999999982236431605997495353221893310546875;}s:23:"session_discount_coupon";s:5:"FALSE";s:7:"user_id";s:1:"9";s:10:"first_name";s:6:"Sanjay";s:9:"last_name";s:8:"Banerjee";s:10:"user_email";s:21:"bsanjay2007@gmail.com";s:11:"user_mobile";s:10:"1234569780";s:14:"user_logged_in";b:1;s:12:"shpping_cost";s:4:"3.24";}'),
('436b39f803e8b12b1bd5fd5cc0b07f17', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 1559825881, ''),
('eff567d641a98d28a553f6f655a93626', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 1559561570, ''),
('c9c9cc121b69a0b3123f7ca5f52a283f', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', 1560155932, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('9c5c1cd9a89e0ae354c7f47745769669', 'fe80::e088:c7f4:d926:8eea', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 1560432911, 'a:13:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:13:"cart_contents";a:3:{s:32:"046ddf96c233a273fd390c3d0b1a9aa4";a:18:{s:5:"rowid";s:32:"046ddf96c233a273fd390c3d0b1a9aa4";s:2:"id";s:4:"2311";s:11:"category_id";s:1:"6";s:15:"sub_category_id";s:2:"16";s:18:"subcategory_cat_id";s:3:"314";s:4:"name";s:64:"LAND ROVER SERIES 3 AIR INTAKE HEATER HOSE ASSEMBLY.PART- 346999";s:6:"weight";s:4:"0.16";s:18:"product_size_width";s:4:"0.55";s:19:"product_size_length";s:4:"0.20";s:19:"product_size_height";s:4:"0.10";s:7:"part_no";s:6:"346999";s:5:"price";s:5:"20.18";s:13:"special_price";N;s:12:"actual_price";s:5:"20.18";s:14:"price_with_tax";s:4:"0.00";s:8:"tax_rate";s:4:"0.00";s:3:"qty";s:1:"1";s:8:"subtotal";d:20.17999999999999971578290569595992565155029296875;}s:11:"total_items";i:1;s:10:"cart_total";d:20.17999999999999971578290569595992565155029296875;}s:23:"session_discount_coupon";s:5:"FALSE";s:7:"user_id";s:1:"9";s:10:"first_name";s:6:"Sanjay";s:9:"last_name";s:8:"Banerjee";s:10:"user_email";s:21:"bsanjay2007@gmail.com";s:11:"user_mobile";s:10:"1234569780";s:14:"user_logged_in";b:1;s:12:"shpping_cost";s:5:"37.21";s:14:"original_price";s:5:"31.01";}'),
('650d30ede25d5253424e95a97b1a8fa1', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 1559548250, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('1753f28ff0f0de55fc853566dbc92618', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 1559114070, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('4932aa134cbc11adc4643e1834cbf405', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 1558971199, ''),
('a0ded9b5f7a2f36f803111fe8d771c41', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 1559107395, 'a:5:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:13:"cart_contents";a:3:{s:32:"697f31b39c120bea0d95112b65484d3f";a:18:{s:5:"rowid";s:32:"697f31b39c120bea0d95112b65484d3f";s:2:"id";s:5:"22722";s:11:"category_id";s:1:"5";s:15:"sub_category_id";s:2:"13";s:18:"subcategory_cat_id";s:2:"28";s:4:"name";s:39:"LAND ROVER RING HEAD TORCH. PART DA5093";s:6:"weight";s:3:"0.5";s:18:"product_size_width";s:4:"0.15";s:19:"product_size_length";s:4:"0.15";s:19:"product_size_height";s:4:"0.15";s:7:"part_no";s:6:"DA5093";s:5:"price";s:5:"33.70";s:13:"special_price";N;s:12:"actual_price";s:5:"33.70";s:14:"price_with_tax";s:4:"0.00";s:8:"tax_rate";s:4:"0.00";s:3:"qty";s:1:"1";s:8:"subtotal";d:33.7000000000000028421709430404007434844970703125;}s:11:"total_items";i:1;s:10:"cart_total";d:33.7000000000000028421709430404007434844970703125;}s:23:"session_discount_coupon";s:5:"FALSE";}'),
('f6ec2eef174964390f75745ad6ff0965', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0', 1558969277, 'a:9:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:3:"uid";s:1:"1";s:5:"uname";s:5:"admin";s:9:"user_from";s:1:"0";s:17:"permission_status";s:1:"1";s:8:"login_by";s:16:"Rezaurs Rahamans";s:15:"admin_logged_in";b:1;}'),
('bbb2e48ca6027327382cf57a23408230', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 1557497672, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";}'),
('5ce298f38a6c20a898523520fd84f095', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 1556268878, 'a:4:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"1";s:9:"directory";s:7:"english";s:11:"user_mobile";s:10:"1234569780";}'),
('b462882ef3fda6842874288697245325', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', 1555426083, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"6";s:9:"directory";s:15:"bengali_english";}'),
('dec1be50b4d6485846498ee3f37c4719', '192.168.1.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 1555426163, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"6";s:9:"directory";s:15:"bengali_english";}'),
('73e3db8d6a2f027b54ab9e3440489e03', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 1555424861, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"6";s:9:"directory";s:15:"bengali_english";}'),
('3eea87ddc0d5079b1ea43a21cd621060', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 1555424862, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"6";s:9:"directory";s:15:"bengali_english";}'),
('3887aa033a53c697f6730e77858067dd', 'fe80::98c:d24:166d:4819', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 1555424862, 'a:3:{s:9:"user_data";s:0:"";s:6:"langid";s:1:"6";s:9:"directory";s:15:"bengali_english";}');

-- --------------------------------------------------------

--
-- Table structure for table `global_config`
--

CREATE TABLE IF NOT EXISTS `global_config` (
`id` int(10) NOT NULL,
  `field_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `field_value` text CHARACTER SET utf8 NOT NULL,
  `field_key` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `global_config`
--

INSERT INTO `global_config` (`id`, `field_name`, `field_value`, `field_key`) VALUES
(1, 'Site Name', 'Saesha Flower', 'global_site_name_en'),
(2, 'Meta Title', 'Saesha Flower', 'global_meta_title_en'),
(3, 'Meta Keywords', 'Saesha Flower', 'global_meta_keywords_en'),
(4, 'Meta Description', 'Saesha Flower', 'global_meta_description_en'),
(12, 'Webadmin Name', 'admin', 'global_web_admin_name'),
(13, 'Webadmin Email', 'vishal143.niit@gmail.com', 'global_webadmin_email'),
(14, 'Email Signature', 'Thanks & Regards,\r\nSaesha Flower', 'global_email_signature'),
(23, 'Paypal Business Email', 'priya_new_merchant_account@gmail.com', 'global_paypal_business_email'),
(24, 'Paypal Mode', 'sandbox', 'global_paypal_mode'),
(59, 'Phone Number', '415-992-8200', 'global_phone_number'),
(60, 'Address', 'Saesha Flower', 'global_site_address'),
(65, 'Site Email Address', 'vishal143.niit@gmail.com', 'global_site_email_address'),
(75, 'Kilometre', '', 'global_web_with_in'),
(76, 'Longitude', '', 'global_web_longitude'),
(77, 'Latitude', '', 'global_web_latitude'),
(78, 'Multipale Pin', '', 'global_web_with_in_pin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_addon`
--

CREATE TABLE IF NOT EXISTS `tbl_addon` (
`id` int(11) NOT NULL,
  `addon_name` varchar(250) NOT NULL,
  `addon_price` double(15,2) NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `when_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_addon`
--

INSERT INTO `tbl_addon` (`id`, `addon_name`, `addon_price`, `image`, `status`, `when_added`) VALUES
(1, 'Chocolate Basket', 16.20, '1_1505805406_577.jpg', 'Active', '2019-11-29 08:40:20'),
(2, 'Dairy Milk Silk', 8.20, '2_1505754992_574.jpg', 'Active', '2019-11-29 08:41:37'),
(3, '24 Inches Teddy', 6.20, '3_1505205193_large_800.jpg', 'Active', '2019-11-29 08:42:22'),
(4, '2 Ft Teddy Bear (60 cm)', 7.50, '4_1519994671_t4.jpg', 'Active', '2019-11-29 08:43:21'),
(5, 'Hershey', 9.20, '5_1519991599_5.jpg', 'Active', '2019-11-29 08:45:58'),
(6, 'Small Teddy Bear', 3.60, '6_1505203517_large_790.jpg', 'Active', '2019-11-29 09:02:37'),
(7, 'Snickers Chocolate', 10.00, '7_1519991443_2.jpg', 'Active', '2019-11-29 09:27:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
`id` int(10) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `user_group` enum('0','1','2') NOT NULL COMMENT '0->Admin, 1->Insurance Company, 2-> User',
  `username` varchar(20) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `email_address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `full_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `status` enum('Active','Inactive') CHARACTER SET utf8 NOT NULL DEFAULT 'Active',
  `online` enum('0','1') NOT NULL DEFAULT '0',
  `b_status` enum('0','1') DEFAULT '0' COMMENT '0=Inactive,1=active',
  `block_status` enum('Unblock','Block') NOT NULL DEFAULT 'Unblock',
  `block_date` date DEFAULT NULL,
  `registered_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `last_active_time` varchar(255) DEFAULT NULL,
  `date_added` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `parent_id`, `user_group`, `username`, `password`, `email_address`, `full_name`, `mobile_no`, `status`, `online`, `b_status`, `block_status`, `block_date`, `registered_date`, `end_date`, `last_active_time`, `date_added`) VALUES
(1, NULL, '0', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin@admin.com', 'V!$H@L', '', 'Active', '1', '0', 'Block', '2017-11-06', 'MDUtMDgtMjAxOCAyMTowNDoyMg==', 'MjAtMDgtMjAxOCAyMjozMDo0Ng==', '1537774502', '2011-08-29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_card_message`
--

CREATE TABLE IF NOT EXISTS `tbl_card_message` (
`id` int(11) NOT NULL,
  `short_name` varchar(250) NOT NULL,
  `description` text CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `user_id` int(11) NOT NULL,
  `when_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_card_message`
--

INSERT INTO `tbl_card_message` (`id`, `short_name`, `description`, `status`, `user_id`, `when_added`) VALUES
(1, 'Birthday: To a special person', 'Happy birthday to a marvellous and special person. May your life be filled with beauty and laughter, today and every day.', 'Active', 1, '2019-12-06 18:53:54'),
(2, 'Birthday: A special place in my heart', 'You have a special place in my life and my heart, and I hope your birthday is every bit as wonderful as you are.', 'Active', 1, '2019-12-06 18:53:54'),
(3, 'Birthday: Celebrate', 'May this be your best birthday ever and the start of a fabulous year ahead. Enjoy and celebrate!', 'Active', 1, '2019-12-06 18:53:54'),
(4, 'Birthday: Birthday wishes', 'May every pleasure in life come your way, today and every day. Have a fantastic birthday.', 'Active', 1, '2019-12-06 18:53:54'),
(5, 'Anniversary: Happiness always', 'May the love you found together live on and grow stronger year after year. Wishing you joy and happiness always.', 'Active', 1, '2019-12-06 18:53:54'),
(6, 'Anniversary: Happiness always (spouse)', 'The love we found together has grown stronger year after year. Happy anniversary and love always.', 'Active', 1, '2019-12-06 18:53:54'),
(7, 'Anniversary: Sharing and caring', 'The love, hopes and dreams you share are the ties that will bind you ever closer. Congratulations and best wishes on your \r\n\r\nanniversary.', 'Active', 1, '2019-12-06 18:53:54'),
(8, 'Anniversary: Sharing and caring (spouse)', 'The love, hopes and dreams we share are the ties that bind us ever closer. Happy anniversary to my partner, my \r\n\r\nlove.', 'Active', 1, '2019-12-06 18:53:54'),
(9, 'Love: A wonderful gift', 'Your love is the most wonderful gift I?ve ever received. Thank you for being you.', 'Active', 1, '2019-12-06 18:53:54'),
(10, 'Love: Now and forever', 'You bring joy and happiness to my life. I love you deeply, now and forever.', 'Active', 1, '2019-12-06 18:53:54'),
(11, 'Love: Brighter and more beautiful', 'The world is shinier and brighter with you in it, and my life is more beautiful with your love.', 'Active', 1, '2019-12-06 18:53:54'),
(12, 'Love: You fill my life', 'How did I ever live without you? You have filled my life with your presence, and I love you with my entire being.', 'Active', 1, '2019-12-06 18:53:54'),
(13, 'Love: A dream come true', 'You?re a dream come true, everything I?ve ever wished for. You will always be in my heart.', 'Active', 1, '2019-12-06 18:53:54'),
(14, 'Love: Always on my mind', 'My day is filled with thoughts of you. You are always on my mind and in my heart.', 'Active', 1, '2019-12-06 18:53:54'),
(15, 'Love: You are my joy', 'You fill my life with joy and warmth. I love you more than words can express.', 'Active', 1, '2019-12-06 18:53:54'),
(16, 'Love: Closer every day', 'Side by side, hand in glove, we grow closer every day. Thank you for the love you have brought into my life.', 'Active', 1, '2019-12-06 18:53:54'),
(17, 'Love: Love of my life', 'You are the love of my life and the sunshine in my world.', 'Active', 1, '2019-12-06 18:53:54'),
(18, 'Love: Everything seems new', 'I love the way you make me feel, the way everything in life seems new. I love YOU!', 'Active', 1, '2019-12-06 18:53:54'),
(19, 'Love: Deeper and stronger', 'My love for you grows deeper and stronger with every passing day. I thank God for bringing you into my life.', 'Active', 1, '2019-12-06 18:53:54'),
(20, 'Love: You are everything to me', 'The love in your eyes is a reflection of the feeling in my heart. You are everything to me.', 'Active', 1, '2019-12-06 18:53:54'),
(21, 'Funeral: Condolences (male deceased)', 'He will live on in our hearts and memories forever. Condolences on your loss.', 'Active', 1, '2019-12-06 18:53:54'),
(22, 'Funeral: Condolences (female deceased)', 'She will live on in our hearts and memories forever. Condolences on your loss.', 'Active', 1, '2019-12-06 18:53:54'),
(23, 'Funeral: God bless you', 'May God bless you in your sorrow and bring you comfort.', 'Active', 1, '2019-12-06 18:53:54'),
(24, 'Funeral: Fond memories', 'Wishing you peace and healing. May your fond memories help you through your sorrow.', 'Active', 1, '2019-12-06 18:53:54'),
(25, 'Mother: My mother, my friend', 'I celebrate your love and the special friendship I enjoy with you. Happy Mother?s Day.', 'Active', 1, '2019-12-06 18:53:54'),
(26, 'Mother: To the best mother', 'If I had been given the chance to choose, I would still have chosen you from among all the mothers on earth.', 'Active', 1, '2019-12-06 18:53:54'),
(27, 'Mother: You brighten my life', 'You make the world a better place and my life warmer and brighter with your love and caring. Happy Mother?s Day.', 'Active', 1, '2019-12-06 18:53:54'),
(28, 'Mother: A mother?s love', 'No love can equal a mother?s love. Thank you for always being there for me.', 'Active', 1, '2019-12-06 18:53:54'),
(29, 'New Baby: Babies are a blessing', 'Babies bring joy, promise and sunshine. Congratulations on your new arrival.', 'Active', 1, '2019-12-06 18:53:54'),
(30, 'New Baby: Cherish these moments', 'Blessings on you and your baby. Enjoy and cherish every memory as it?s made.', 'Active', 1, '2019-12-06 18:53:54'),
(31, 'New Baby: A gift from heaven', 'May your home and hearts be filled with dreams, hopes and happiness. Congratulations on your new baby.', 'Active', 1, '2019-12-06 18:53:54'),
(32, 'New Baby: The wonder of a new life', 'Savour the wonder and magic of your new baby. May God bless your family, now and always', 'Active', 1, '2019-12-06 18:44:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE IF NOT EXISTS `tbl_category` (
`id` int(11) NOT NULL,
  `category_slug` varchar(200) NOT NULL,
  `category_name` varchar(250) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `user_id` int(11) NOT NULL,
  `when_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `category_slug`, `category_name`, `description`, `status`, `user_id`, `when_added`) VALUES
(1, 'flowers-indonesia', 'Flowers', 'Flowers Content Coming Soon...!!!', 'Active', 1, '2019-11-14 08:22:32'),
(2, 'flower-types-indonesia', 'Flower Types', 'Flower Types Content Coming soon...!!!', 'Active', 1, '2019-11-14 08:22:07'),
(3, 'flower-combos-indonesia', 'Flower Combos', 'Content Coming Soon..!!', 'Active', 1, '2019-11-27 10:28:12'),
(4, 'plants-indonesia', 'Plants', 'Content Coming Soon..!!', 'Active', 1, '2019-11-27 10:28:31'),
(5, 'occasion-indonesia', 'Occasion', 'Content Coming Soon..!!', 'Active', 1, '2019-11-27 10:28:55'),
(6, 'gifts-indonesia', 'Gifts', 'Content Coming Soon..!!', 'Active', 1, '2019-11-27 10:29:17'),
(7, 'cakes-indonesia', 'Cakes', 'Content Coming Soon..!!', 'Active', 1, '2019-11-27 10:29:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

CREATE TABLE IF NOT EXISTS `tbl_city` (
`id` int(11) NOT NULL,
  `city_name` varchar(250) NOT NULL,
  `midnight_delivery` enum('Yes','No') NOT NULL DEFAULT 'No',
  `delivery_frequency` enum('same_day','next_day','day_after') NOT NULL DEFAULT 'same_day',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_city`
--

INSERT INTO `tbl_city` (`id`, `city_name`, `midnight_delivery`, `delivery_frequency`, `status`) VALUES
(1, 'Bali', 'Yes', 'same_day', 'Active'),
(2, 'Balikpapan', 'No', 'same_day', 'Active'),
(3, 'Banda Aceh', 'No', 'same_day', 'Active'),
(4, 'Bandar Lampung', 'No', 'same_day', 'Active'),
(5, 'Bandung', 'No', 'same_day', 'Active'),
(6, 'Bangka', 'No', 'same_day', 'Active'),
(7, 'Banjarbaru', 'No', 'same_day', 'Active'),
(8, 'Banjarmasin', 'No', 'same_day', 'Active'),
(9, 'Batam', 'No', 'same_day', 'Active'),
(10, 'Bekasi', 'No', 'same_day', 'Active'),
(11, 'Bintan', 'No', 'same_day', 'Active'),
(12, 'Blitar', 'No', 'same_day', 'Active'),
(13, 'Blora', 'No', 'same_day', 'Active'),
(14, 'Bogor', 'No', 'same_day', 'Active'),
(15, 'Bojonegoro', 'No', 'same_day', 'Active'),
(16, 'Cimahi', 'No', 'same_day', 'Active'),
(18, 'Cirebon', 'No', 'same_day', 'Active'),
(19, 'Depok', 'No', 'same_day', 'Active'),
(20, 'Jakarta', 'No', 'same_day', 'Active'),
(21, 'Kediri', 'No', 'same_day', 'Active'),
(22, 'Lombok', 'No', 'same_day', 'Active'),
(23, 'Madiun', 'No', 'same_day', 'Active'),
(24, 'Makassar', 'No', 'same_day', 'Active'),
(25, 'Malang', 'No', 'same_day', 'Active'),
(26, 'Manado', 'No', 'same_day', 'Active'),
(27, 'Medan', 'No', 'same_day', 'Active'),
(28, 'Padang', 'No', 'same_day', 'Active'),
(29, 'Palembang', 'No', 'same_day', 'Active'),
(30, 'Pekanbaru', 'No', 'same_day', 'Active'),
(31, 'Pematang Siantar', 'No', 'same_day', 'Active'),
(32, 'Pontianak', 'No', 'same_day', 'Active'),
(33, 'Purwokerto', 'No', 'same_day', 'Active'),
(34, 'Salatiga', 'No', 'same_day', 'Active'),
(35, 'Samarinda', 'No', 'same_day', 'Active'),
(36, 'Semarang', 'No', 'same_day', 'Active'),
(37, 'Sukabumi', 'No', 'same_day', 'Active'),
(38, 'Surabaya', 'No', 'same_day', 'Active'),
(39, 'Surakarta', 'No', 'same_day', 'Active'),
(40, 'Tangerang', 'No', 'same_day', 'Active'),
(41, 'Tasikmalaya', 'No', 'same_day', 'Active'),
(42, 'Tegal', 'No', 'same_day', 'Active'),
(43, 'Yogyakarta', 'No', 'same_day', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cms`
--

CREATE TABLE IF NOT EXISTS `tbl_cms` (
`id` int(11) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `heading` varchar(250) NOT NULL,
  `description` text NOT NULL COMMENT 'For English Description',
  `arabic_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `image` varchar(250) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `is_delete` enum('0','1') DEFAULT '0',
  `post_date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cms`
--

INSERT INTO `tbl_cms` (`id`, `alias`, `heading`, `description`, `arabic_description`, `image`, `status`, `is_delete`, `post_date`) VALUES
(1, 'about-us', 'About Us', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>', '<p>أبجد هوز هو مجرد دمية النص لصناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في هذه الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من نوعه وتدافعت عليه لصنع كتاب نموذج للعينات. لقد نجا ليس فقط خمسة قرون ، ولكن أيضا قفزة في التنضيد الإلكتروني ، تبقى دون تغيير أساسي. تم الترويج لها في الستينيات من القرن الماضي من خلال إصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخراً مع برنامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum.</p><p><br></p><p>إنها حقيقة ثابتة منذ فترة طويلة وهي أن القارئ سيشتت انتباهه إلى المحتوى المقروء للصفحة عند النظر في تصميمه. الهدف من استخدام Lorem Ipsum هو أنه يحتوي على توزيع طبيعي أكثر أو أقل من الحروف ، بدلاً من استخدام &quot;المحتوى هنا ، المحتوى هنا&quot; ، مما يجعله يبدو مقروءًا باللغة الإنجليزية. تستخدم الآن العديد من حزم نشر سطح المكتب ومحرري صفحات الويب Lorem Ipsum كنص نموذجهم الافتراضي ، وسيكشف البحث عن &quot;lorem ipsum&quot; عن العديد من المواقع التي لا تزال في بدايتها. تطورت الإصدارات المختلفة على مر السنين ، وأحيانًا عن طريق الصدفة ، وأحيانًا عن قصد (الفكاهة المحقونة وما شابه ذلك).</p><p><br></p><p>هناك العديد من أشكال مقاطع Lorem Ipsum المتاحة ، لكن الغالبية عانوا من التغيير في شكل ما ، عن طريق الفكاهة المحقونة ، أو الكلمات العشوائية التي لا تبدو حتى معقولة بعض الشيء. إذا كنت ستستخدم مقطعًا من Lorem Ipsum ، فعليك أن تتأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، بالإضافة إلى حفنة من هياكل الجملة النموذجية ، لإنشاء Lorem Ipsum الذي يبدو معقولًا. لذلك فإن أبجد أبجد هوز هو دائما خالية من التكرار ، والفكاهة عن طريق الحقن ، أو الكلمات غير المميزة الخ.</p><p><br></p><p>خلافًا للاعتقاد السائد ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 سنة. بحث ريتشارد مكلينتوك ، وهو أستاذ لاتيني في كلية هامبدن سيدني في فرجينيا ، عن واحدة من أكثر الكلمات اللاتينية غموضًا ، كونسيتيتور ، من ممر لوريم إبسوم ، وتمر عبر الاستشهادات للكلمة في الأدب الكلاسيكي ، واكتشف المصدر الذي لا شك فيه. يأتي Lorem Ipsum من القسمين 1.10.32 و 1.10.33 من كتاب &quot;Finibus Bonorum et Malorum&quot; (قصور الخير والشر) للكاتب شيشرون ، الذي كتب عام 45 قبل الميلاد. هذا الكتاب هو أطروحة عن نظرية الأخلاق ، وشعبية للغاية خلال عصر النهضة. يأتي السطر الأول من Lorem Ipsum ، &quot;Lorem ipsum dolor sit amet ..&quot; ، من سطر في القسم 1.10.32.</p>', '', 'Active', '0', '2019-10-22 15:51:40'),
(2, 'the-founder', 'the-founder', '<div class="row">\r\n<div class="col-md-4 founder-left"><img alt="The Founder" class="fr-fic fr-dii" src="http://econstrademosite.com/the-fashion-mentor/webadmin/front/images/the-founder.jpg" style="width: 960px;" /></div>\r\n\r\n<div class="col-md-8 founder-right">\r\n<div class="about-txt">\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p><span class="style-italic">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p>\r\n</div>\r\n</div>\r\n</div>\r\n', '<div class="row">\r\n<div class="col-md-4 founder-left"><img alt="The Founder" class="fr-fic fr-dii" src="http://econstrademosite.com/the-fashion-mentor/webadmin/front/images/the-founder.jpg" style="width: 960px;" /></div>\r\n\r\n<div class="col-md-8 founder-right">أبجد هوز هو مجرد دمية النص لصناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في هذه الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من نوعه وتدافعت عليه لصنع كتاب نموذج للعينات. لقد نجا ليس فقط خمسة قرون ، ولكن أيضا قفزة في التنضيد الإلكتروني ، تبقى دون تغيير أساسي. تم الترويج لها في الستينيات من القرن الماضي من خلال إصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخراً مع برنامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum.\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>إنها حقيقة ثابتة منذ فترة طويلة وهي أن القارئ سيشتت انتباهه إلى المحتوى المقروء للصفحة عند النظر في تصميمه. الهدف من استخدام Lorem Ipsum هو أنه يحتوي على توزيع طبيعي أكثر أو أقل من الحروف ، بدلاً من استخدام &quot;المحتوى هنا ، المحتوى هنا&quot; ، مما يجعله يبدو مقروءًا باللغة الإنجليزية. تستخدم الآن العديد من حزم نشر سطح المكتب ومحرري صفحات الويب Lorem Ipsum كنص نموذجهم الافتراضي ، وسيكشف البحث عن &quot;lorem ipsum&quot; عن العديد من المواقع التي لا تزال في بدايتها. تطورت الإصدارات المختلفة على مر السنين ، وأحيانًا عن طريق الصدفة ، وأحيانًا عن قصد (الفكاهة المحقونة وما شابه ذلك).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>هناك العديد من أشكال مقاطع Lorem Ipsum المتاحة ، لكن الغالبية عانوا من التغيير في شكل ما ، عن طريق الفكاهة المحقونة ، أو الكلمات العشوائية التي لا تبدو حتى معقولة بعض الشيء. إذا كنت ستستخدم مقطعًا من Lorem Ipsum ، فعليك أن تتأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، بالإضافة إلى حفنة من هياكل الجملة النموذجية ، لإنشاء Lorem Ipsum الذي يبدو معقولًا. لذلك فإن أبجد أبجد هوز هو دائما خالية من التكرار ، والفكاهة عن طريق الحقن ، أو الكلمات غير المميزة الخ.</p>\r\n</div>\r\n</div>\r\n', '', 'Active', '0', '2019-10-31 12:30:24'),
(3, 'contact-us', 'Contact us', '<p>Contact us Coming Soon.</p>', '<p>dsdssd</p>', '', 'Active', '0', '2019-10-22 09:32:12'),
(4, 'home', 'Coming Soon!!!!', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable.</p>\r\n', '<p>أبجد هوز هو مجرد دمية النص لصناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في هذه الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من نوعه وتدافعت عليه لصنع كتاب نموذج للعينات. لقد نجا ليس فقط خمسة قرون ، ولكن أيضا قفزة في التنضيد الإلكتروني ، تبقى دون تغيير أساسي. تم الترويج لها في الستينيات من القرن الماضي من خلال إصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخراً مع برنامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum. هناك العديد من أشكال مقاطع Lorem Ipsum المتاحة ، لكن الغالبية عانوا من تغيير في شكل ما ، عن طريق الفكاهة المحقونة ، أو الكلمات العشوائية التي لا تبدو حتى معقولة بعض الشيء.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', 'Active', '0', '2019-10-31 12:24:25'),
(5, 'courses', 'courses', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>', '<p>أبجد هوز هو مجرد دمية النص لصناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في هذه الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من نوعه وتدافعت عليه لصنع كتاب نموذج للعينات. لقد نجا ليس فقط خمسة قرون ، ولكن أيضا قفزة في التنضيد الإلكتروني ، تبقى دون تغيير أساسي. تم الترويج لها في الستينيات من القرن الماضي من خلال إصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخراً مع برنامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum.</p><p><br></p><p>إنها حقيقة ثابتة منذ فترة طويلة وهي أن القارئ سيشتت انتباهه إلى المحتوى المقروء للصفحة عند النظر في تصميمه. الهدف من استخدام Lorem Ipsum هو أنه يحتوي على توزيع طبيعي أكثر أو أقل من الحروف ، بدلاً من استخدام &quot;المحتوى هنا ، المحتوى هنا&quot; ، مما يجعله يبدو مقروءًا باللغة الإنجليزية. تستخدم الآن العديد من حزم نشر سطح المكتب ومحرري صفحات الويب Lorem Ipsum كنص نموذجهم الافتراضي ، وسيكشف البحث عن &quot;lorem ipsum&quot; عن العديد من المواقع التي لا تزال في بدايتها. تطورت الإصدارات المختلفة على مر السنين ، وأحيانًا عن طريق الصدفة ، وأحيانًا عن قصد (الفكاهة المحقونة وما شابه ذلك).</p><p><br></p><p>هناك العديد من أشكال مقاطع Lorem Ipsum المتاحة ، لكن الغالبية عانوا من التغيير في شكل ما ، عن طريق الفكاهة المحقونة ، أو الكلمات العشوائية التي لا تبدو حتى معقولة بعض الشيء. إذا كنت ستستخدم مقطعًا من Lorem Ipsum ، فعليك أن تتأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، بالإضافة إلى حفنة من هياكل الجملة النموذجية ، لإنشاء Lorem Ipsum الذي يبدو معقولًا. لذلك فإن أبجد أبجد هوز هو دائما خالية من التكرار ، والفكاهة عن طريق الحقن ، أو الكلمات غير المميزة الخ.</p><p><br></p><p>خلافًا للاعتقاد السائد ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 سنة. بحث ريتشارد مكلينتوك ، وهو أستاذ لاتيني في كلية هامبدن سيدني في فرجينيا ، عن واحدة من أكثر الكلمات اللاتينية غموضًا ، كونسيتيتور ، من ممر لوريم إبسوم ، وتمر عبر الاستشهادات للكلمة في الأدب الكلاسيكي ، واكتشف المصدر الذي لا شك فيه. يأتي Lorem Ipsum من القسمين 1.10.32 و 1.10.33 من كتاب &quot;Finibus Bonorum et Malorum&quot; (قصور الخير والشر) للكاتب شيشرون ، الذي كتب عام 45 قبل الميلاد. هذا الكتاب هو أطروحة عن نظرية الأخلاق ، وشعبية للغاية خلال عصر النهضة. يأتي السطر الأول من Lorem Ipsum ، &quot;Lorem ipsum dolor sit amet ..&quot; ، من سطر في القسم 1.10.32.</p>', '', 'Active', '0', '2019-10-22 15:53:48'),
(6, 'workshops', 'workshops', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>', '<p>أبجد هوز هو مجرد دمية النص لصناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في هذه الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من نوعه وتدافعت عليه لصنع كتاب نموذج للعينات. لقد نجا ليس فقط خمسة قرون ، ولكن أيضا قفزة في التنضيد الإلكتروني ، تبقى دون تغيير أساسي. تم الترويج لها في الستينيات من القرن الماضي من خلال إصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخراً مع برنامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum.</p><p><br></p><p>إنها حقيقة ثابتة منذ فترة طويلة وهي أن القارئ سيشتت انتباهه إلى المحتوى المقروء للصفحة عند النظر في تصميمه. الهدف من استخدام Lorem Ipsum هو أنه يحتوي على توزيع طبيعي أكثر أو أقل من الحروف ، بدلاً من استخدام &quot;المحتوى هنا ، المحتوى هنا&quot; ، مما يجعله يبدو مقروءًا باللغة الإنجليزية. تستخدم الآن العديد من حزم نشر سطح المكتب ومحرري صفحات الويب Lorem Ipsum كنص نموذجهم الافتراضي ، وسيكشف البحث عن &quot;lorem ipsum&quot; عن العديد من المواقع التي لا تزال في بدايتها. تطورت الإصدارات المختلفة على مر السنين ، وأحيانًا عن طريق الصدفة ، وأحيانًا عن قصد (الفكاهة المحقونة وما شابه ذلك).</p><p><br></p><p>هناك العديد من أشكال مقاطع Lorem Ipsum المتاحة ، لكن الغالبية عانوا من التغيير في شكل ما ، عن طريق الفكاهة المحقونة ، أو الكلمات العشوائية التي لا تبدو حتى معقولة بعض الشيء. إذا كنت ستستخدم مقطعًا من Lorem Ipsum ، فعليك أن تتأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، بالإضافة إلى حفنة من هياكل الجملة النموذجية ، لإنشاء Lorem Ipsum الذي يبدو معقولًا. لذلك فإن أبجد أبجد هوز هو دائما خالية من التكرار ، والفكاهة عن طريق الحقن ، أو الكلمات غير المميزة الخ.</p><p><br></p><p>خلافًا للاعتقاد السائد ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 سنة. بحث ريتشارد مكلينتوك ، وهو أستاذ لاتيني في كلية هامبدن سيدني في فرجينيا ، عن واحدة من أكثر الكلمات اللاتينية غموضًا ، كونسيتيتور ، من ممر لوريم إبسوم ، وتمر عبر الاستشهادات للكلمة في الأدب الكلاسيكي ، واكتشف المصدر الذي لا شك فيه. يأتي Lorem Ipsum من القسمين 1.10.32 و 1.10.33 من كتاب &quot;Finibus Bonorum et Malorum&quot; (قصور الخير والشر) للكاتب شيشرون ، الذي كتب عام 45 قبل الميلاد. هذا الكتاب هو أطروحة عن نظرية الأخلاق ، وشعبية للغاية خلال عصر النهضة. يأتي السطر الأول من Lorem Ipsum ، &quot;Lorem ipsum dolor sit amet ..&quot; ، من سطر في القسم 1.10.32.</p>', '', 'Active', '0', '2019-10-23 07:00:03'),
(7, 'supplier-directory', 'supplier-directory', '<p><strong>Lorem Ipsum&nbsp;</strong>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard <span style="color: rgb(0, 168, 133);">dummy text ever since the 1500s</span>, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p><strong><span style="color: rgb(250, 197, 28);">Contrary&nbsp;</span></strong>to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>', '<p>أبجد هوز هو مجرد دمية النص لصناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في هذه الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من نوعه وتدافعت عليه لصنع كتاب نموذج للعينات. لقد نجا ليس فقط خمسة قرون ، ولكن أيضا قفزة في التنضيد الإلكتروني ، تبقى دون تغيير أساسي. تم الترويج لها في الستينيات من القرن الماضي من خلال إصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخراً مع برنامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum.</p><p><br></p><p>إنها حقيقة ثابتة منذ فترة طويلة وهي أن القارئ سيشتت انتباهه إلى المحتوى المقروء للصفحة عند النظر في تصميمه. الهدف من استخدام Lorem Ipsum هو أنه يحتوي على توزيع طبيعي أكثر أو أقل من الحروف ، بدلاً من استخدام &quot;المحتوى هنا ، المحتوى هنا&quot; ، مما يجعله يبدو مقروءًا باللغة الإنجليزية. تستخدم الآن العديد من حزم نشر سطح المكتب ومحرري صفحات الويب Lorem Ipsum كنص نموذجهم الافتراضي ، وسيكشف البحث عن &quot;lorem ipsum&quot; عن العديد من المواقع التي لا تزال في بدايتها. تطورت الإصدارات المختلفة على مر السنين ، وأحيانًا عن طريق الصدفة ، وأحيانًا عن قصد (الفكاهة المحقونة وما شابه ذلك).</p><p><br></p><p>هناك العديد من أشكال مقاطع Lorem Ipsum المتاحة ، لكن الغالبية عانوا من التغيير في شكل ما ، عن طريق الفكاهة المحقونة ، أو الكلمات العشوائية التي لا تبدو حتى معقولة بعض الشيء. إذا كنت ستستخدم مقطعًا من Lorem Ipsum ، فعليك أن تتأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، بالإضافة إلى حفنة من هياكل الجملة النموذجية ، لإنشاء Lorem Ipsum الذي يبدو معقولًا. لذلك فإن أبجد أبجد هوز هو دائما خالية من التكرار ، والفكاهة عن طريق الحقن ، أو الكلمات غير المميزة الخ.</p><p><br></p><p>خلافًا للاعتقاد السائد ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 سنة. بحث ريتشارد مكلينتوك ، وهو أستاذ لاتيني في كلية هامبدن سيدني في فرجينيا ، عن واحدة من أكثر الكلمات اللاتينية غموضًا ، كونسيتيتور ، من ممر لوريم إبسوم ، وتمر عبر الاستشهادات للكلمة في الأدب الكلاسيكي ، واكتشف المصدر الذي لا شك فيه. يأتي Lorem Ipsum من القسمين 1.10.32 و 1.10.33 من كتاب &quot;Finibus Bonorum et Malorum&quot; (قصور الخير والشر) للكاتب شيشرون ، الذي كتب عام 45 قبل الميلاد. هذا الكتاب هو أطروحة عن نظرية الأخلاق ، وشعبية للغاية خلال عصر النهضة. يأتي السطر الأول من Lorem Ipsum ، &quot;Lorem ipsum dolor sit amet ..&quot; ، من سطر في القسم 1.10.32.</p>', '', 'Active', '0', '2019-10-23 07:06:55'),
(8, 'fashion-aptitude-test', 'fashion-aptitude-test', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>', '<p>أبجد هوز هو مجرد دمية النص لصناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في هذه الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من نوعه وتدافعت عليه لصنع كتاب نموذج للعينات. لقد نجا ليس فقط خمسة قرون ، ولكن أيضا قفزة في التنضيد الإلكتروني ، تبقى دون تغيير أساسي. تم الترويج لها في الستينيات من القرن الماضي من خلال إصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخراً مع برنامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum.</p><p><br></p><p>إنها حقيقة ثابتة منذ فترة طويلة وهي أن القارئ سيشتت انتباهه إلى المحتوى المقروء للصفحة عند النظر في تصميمه. الهدف من استخدام Lorem Ipsum هو أنه يحتوي على توزيع طبيعي أكثر أو أقل من الحروف ، بدلاً من استخدام &quot;المحتوى هنا ، المحتوى هنا&quot; ، مما يجعله يبدو مقروءًا باللغة الإنجليزية. تستخدم الآن العديد من حزم نشر سطح المكتب ومحرري صفحات الويب Lorem Ipsum كنص نموذجهم الافتراضي ، وسيكشف البحث عن &quot;lorem ipsum&quot; عن العديد من المواقع التي لا تزال في بدايتها. تطورت الإصدارات المختلفة على مر السنين ، وأحيانًا عن طريق الصدفة ، وأحيانًا عن قصد (الفكاهة المحقونة وما شابه ذلك).</p><p><br></p><p>هناك العديد من أشكال مقاطع Lorem Ipsum المتاحة ، لكن الغالبية عانوا من التغيير في شكل ما ، عن طريق الفكاهة المحقونة ، أو الكلمات العشوائية التي لا تبدو حتى معقولة بعض الشيء. إذا كنت ستستخدم مقطعًا من Lorem Ipsum ، فعليك أن تتأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، بالإضافة إلى حفنة من هياكل الجملة النموذجية ، لإنشاء Lorem Ipsum الذي يبدو معقولًا. لذلك فإن أبجد أبجد هوز هو دائما خالية من التكرار ، والفكاهة عن طريق الحقن ، أو الكلمات غير المميزة الخ.</p><p><br></p><p>خلافًا للاعتقاد السائد ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 سنة. بحث ريتشارد مكلينتوك ، وهو أستاذ لاتيني في كلية هامبدن سيدني في فرجينيا ، عن واحدة من أكثر الكلمات اللاتينية غموضًا ، كونسيتيتور ، من ممر لوريم إبسوم ، وتمر عبر الاستشهادات للكلمة في الأدب الكلاسيكي ، واكتشف المصدر الذي لا شك فيه. يأتي Lorem Ipsum من القسمين 1.10.32 و 1.10.33 من كتاب &quot;Finibus Bonorum et Malorum&quot; (قصور الخير والشر) للكاتب شيشرون ، الذي كتب عام 45 قبل الميلاد. هذا الكتاب هو أطروحة عن نظرية الأخلاق ، وشعبية للغاية خلال عصر النهضة. يأتي السطر الأول من Lorem Ipsum ، &quot;Lorem ipsum dolor sit amet ..&quot; ، من سطر في القسم 1.10.32.</p>', '', 'Active', '0', '2019-10-23 07:08:46');
INSERT INTO `tbl_cms` (`id`, `alias`, `heading`, `description`, `arabic_description`, `image`, `status`, `is_delete`, `post_date`) VALUES
(9, 'pay-as-you-go-consultations', 'pay-as-you-go-consultations', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>', '<p>أبجد هوز هو مجرد دمية النص لصناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في هذه الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من نوعه وتدافعت عليه لصنع كتاب نموذج للعينات. لقد نجا ليس فقط خمسة قرون ، ولكن أيضا قفزة في التنضيد الإلكتروني ، تبقى دون تغيير أساسي. تم الترويج لها في الستينيات من القرن الماضي من خلال إصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخراً مع برنامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum.</p><p><br></p><p>إنها حقيقة ثابتة منذ فترة طويلة وهي أن القارئ سيشتت انتباهه إلى المحتوى المقروء للصفحة عند النظر في تصميمه. الهدف من استخدام Lorem Ipsum هو أنه يحتوي على توزيع طبيعي أكثر أو أقل من الحروف ، بدلاً من استخدام &quot;المحتوى هنا ، المحتوى هنا&quot; ، مما يجعله يبدو مقروءًا باللغة الإنجليزية. تستخدم الآن العديد من حزم نشر سطح المكتب ومحرري صفحات الويب Lorem Ipsum كنص نموذجهم الافتراضي ، وسيكشف البحث عن &quot;lorem ipsum&quot; عن العديد من المواقع التي لا تزال في بدايتها. تطورت الإصدارات المختلفة على مر السنين ، وأحيانًا عن طريق الصدفة ، وأحيانًا عن قصد (الفكاهة المحقونة وما شابه ذلك).</p><p><br></p><p>هناك العديد من أشكال مقاطع Lorem Ipsum المتاحة ، لكن الغالبية عانوا من التغيير في شكل ما ، عن طريق الفكاهة المحقونة ، أو الكلمات العشوائية التي لا تبدو حتى معقولة بعض الشيء. إذا كنت ستستخدم مقطعًا من Lorem Ipsum ، فعليك أن تتأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، بالإضافة إلى حفنة من هياكل الجملة النموذجية ، لإنشاء Lorem Ipsum الذي يبدو معقولًا. لذلك فإن أبجد أبجد هوز هو دائما خالية من التكرار ، والفكاهة عن طريق الحقن ، أو الكلمات غير المميزة الخ.</p><p><br></p><p>خلافًا للاعتقاد السائد ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 سنة. بحث ريتشارد مكلينتوك ، وهو أستاذ لاتيني في كلية هامبدن سيدني في فرجينيا ، عن واحدة من أكثر الكلمات اللاتينية غموضًا ، كونسيتيتور ، من ممر لوريم إبسوم ، وتمر عبر الاستشهادات للكلمة في الأدب الكلاسيكي ، واكتشف المصدر الذي لا شك فيه. يأتي Lorem Ipsum من القسمين 1.10.32 و 1.10.33 من كتاب &quot;Finibus Bonorum et Malorum&quot; (قصور الخير والشر) للكاتب شيشرون ، الذي كتب عام 45 قبل الميلاد. هذا الكتاب هو أطروحة عن نظرية الأخلاق ، وشعبية للغاية خلال عصر النهضة. يأتي السطر الأول من Lorem Ipsum ، &quot;Lorem ipsum dolor sit amet ..&quot; ، من سطر في القسم 1.10.32.</p>', '', 'Active', '0', '2019-10-23 07:10:45'),
(10, 'coaching', 'coaching', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>', '<p>أبجد هوز هو مجرد دمية النص لصناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في هذه الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من نوعه وتدافعت عليه لصنع كتاب نموذج للعينات. لقد نجا ليس فقط خمسة قرون ، ولكن أيضا قفزة في التنضيد الإلكتروني ، تبقى دون تغيير أساسي. تم الترويج لها في الستينيات من القرن الماضي من خلال إصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخراً مع برنامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum.</p><p><br></p><p>إنها حقيقة ثابتة منذ فترة طويلة وهي أن القارئ سيشتت انتباهه إلى المحتوى المقروء للصفحة عند النظر في تصميمه. الهدف من استخدام Lorem Ipsum هو أنه يحتوي على توزيع طبيعي أكثر أو أقل من الحروف ، بدلاً من استخدام &quot;المحتوى هنا ، المحتوى هنا&quot; ، مما يجعله يبدو مقروءًا باللغة الإنجليزية. تستخدم الآن العديد من حزم نشر سطح المكتب ومحرري صفحات الويب Lorem Ipsum كنص نموذجهم الافتراضي ، وسيكشف البحث عن &quot;lorem ipsum&quot; عن العديد من المواقع التي لا تزال في بدايتها. تطورت الإصدارات المختلفة على مر السنين ، وأحيانًا عن طريق الصدفة ، وأحيانًا عن قصد (الفكاهة المحقونة وما شابه ذلك).</p><p><br></p><p>هناك العديد من أشكال مقاطع Lorem Ipsum المتاحة ، لكن الغالبية عانوا من التغيير في شكل ما ، عن طريق الفكاهة المحقونة ، أو الكلمات العشوائية التي لا تبدو حتى معقولة بعض الشيء. إذا كنت ستستخدم مقطعًا من Lorem Ipsum ، فعليك أن تتأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، بالإضافة إلى حفنة من هياكل الجملة النموذجية ، لإنشاء Lorem Ipsum الذي يبدو معقولًا. لذلك فإن أبجد أبجد هوز هو دائما خالية من التكرار ، والفكاهة عن طريق الحقن ، أو الكلمات غير المميزة الخ.</p><p><br></p><p>خلافًا للاعتقاد السائد ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 سنة. بحث ريتشارد مكلينتوك ، وهو أستاذ لاتيني في كلية هامبدن سيدني في فرجينيا ، عن واحدة من أكثر الكلمات اللاتينية غموضًا ، كونسيتيتور ، من ممر لوريم إبسوم ، وتمر عبر الاستشهادات للكلمة في الأدب الكلاسيكي ، واكتشف المصدر الذي لا شك فيه. يأتي Lorem Ipsum من القسمين 1.10.32 و 1.10.33 من كتاب &quot;Finibus Bonorum et Malorum&quot; (قصور الخير والشر) للكاتب شيشرون ، الذي كتب عام 45 قبل الميلاد. هذا الكتاب هو أطروحة عن نظرية الأخلاق ، وشعبية للغاية خلال عصر النهضة. يأتي السطر الأول من Lorem Ipsum ، &quot;Lorem ipsum dolor sit amet ..&quot; ، من سطر في القسم 1.10.32.</p>', '', 'Active', '0', '2019-10-23 07:13:41'),
(11, 'garment-production-unit', 'garment-production-unit', '<p>Initial editor content.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum is simply dummy text of the printing and</strong> typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n', '<p>أبجد هوز هو مجرد دمية النص لصناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في هذه الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من نوعه وتدافعت عليه لصنع كتاب نموذج للعينات. لقد نجا ليس فقط خمسة قرون ، ولكن أيضا قفزة في التنضيد الإلكتروني ، تبقى دون تغيير أساسي. تم الترويج لها في الستينيات من القرن الماضي من خلال إصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخراً مع برنامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum.</p><p><br></p><p>إنها حقيقة ثابتة منذ فترة طويلة وهي أن القارئ سيشتت انتباهه إلى المحتوى المقروء للصفحة عند النظر في تصميمه. الهدف من استخدام Lorem Ipsum هو أنه يحتوي على توزيع طبيعي أكثر أو أقل من الحروف ، بدلاً من استخدام &quot;المحتوى هنا ، المحتوى هنا&quot; ، مما يجعله يبدو مقروءًا باللغة الإنجليزية. تستخدم الآن العديد من حزم نشر سطح المكتب ومحرري صفحات الويب Lorem Ipsum كنص نموذجهم الافتراضي ، وسيكشف البحث عن &quot;lorem ipsum&quot; عن العديد من المواقع التي لا تزال في بدايتها. تطورت الإصدارات المختلفة على مر السنين ، وأحيانًا عن طريق الصدفة ، وأحيانًا عن قصد (الفكاهة المحقونة وما شابه ذلك).</p><p><br></p><p>هناك العديد من أشكال مقاطع Lorem Ipsum المتاحة ، لكن الغالبية عانوا من التغيير في شكل ما ، عن طريق الفكاهة المحقونة ، أو الكلمات العشوائية التي لا تبدو حتى معقولة بعض الشيء. إذا كنت ستستخدم مقطعًا من Lorem Ipsum ، فعليك أن تتأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، بالإضافة إلى حفنة من هياكل الجملة النموذجية ، لإنشاء Lorem Ipsum الذي يبدو معقولًا. لذلك فإن أبجد أبجد هوز هو دائما خالية من التكرار ، والفكاهة عن طريق الحقن ، أو الكلمات غير المميزة الخ.</p><p><br></p><p>خلافًا للاعتقاد السائد ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 سنة. بحث ريتشارد مكلينتوك ، وهو أستاذ لاتيني في كلية هامبدن سيدني في فرجينيا ، عن واحدة من أكثر الكلمات اللاتينية غموضًا ، كونسيتيتور ، من ممر لوريم إبسوم ، وتمر عبر الاستشهادات للكلمة في الأدب الكلاسيكي ، واكتشف المصدر الذي لا شك فيه. يأتي Lorem Ipsum من القسمين 1.10.32 و 1.10.33 من كتاب &quot;Finibus Bonorum et Malorum&quot; (قصور الخير والشر) للكاتب شيشرون ، الذي كتب عام 45 قبل الميلاد. هذا الكتاب هو أطروحة عن نظرية الأخلاق ، وشعبية للغاية خلال عصر النهضة. يأتي السطر الأول من Lorem Ipsum ، &quot;Lorem ipsum dolor sit amet ..&quot; ، من سطر في القسم 1.10.32.</p>', '', 'Active', '0', '2019-10-31 08:54:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coupon`
--

CREATE TABLE IF NOT EXISTS `tbl_coupon` (
`id` int(11) NOT NULL,
  `coupon_code` varchar(250) NOT NULL,
  `coupon_type` enum('percentage','flat') NOT NULL DEFAULT 'percentage',
  `coupon_value` decimal(15,2) NOT NULL,
  `decription` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `user_id` int(11) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `when_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_coupon`
--

INSERT INTO `tbl_coupon` (`id`, `coupon_code`, `coupon_type`, `coupon_value`, `decription`, `user_id`, `status`, `when_added`) VALUES
(1, 'XXX', 'percentage', '10.00', 'Coming soon..!!!', 1, 'Active', '2019-11-19 14:13:06'),
(4, 'C1', 'flat', '20.00', 'ASADSAD', 1, 'Active', '2019-11-19 14:08:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_delivery_charges`
--

CREATE TABLE IF NOT EXISTS `tbl_delivery_charges` (
`id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `from_time` varchar(100) NOT NULL,
  `to_time` varchar(100) NOT NULL,
  `delivert_charge` double(15,2) NOT NULL,
  `delivery_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_delivery_charges`
--

INSERT INTO `tbl_delivery_charges` (`id`, `city_id`, `from_time`, `to_time`, `delivert_charge`, `delivery_status`) VALUES
(1, 1, '09:00', '21:00', 12.00, 'Active'),
(2, 1, '12:05', '10:00', 10.00, 'Active'),
(5, 2, '09:00', '21:00', 200.00, 'Active'),
(6, 1, '09:00', '21:00', 10.00, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE IF NOT EXISTS `tbl_gallery` (
`id` int(11) NOT NULL,
  `name_english` varchar(200) NOT NULL,
  `name_arabic` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `added_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`id`, `name_english`, `name_arabic`, `image`, `status`, `added_date`) VALUES
(1, 'Saesha flower', 'البوم الموضة', '1_sg-desk-29-oct-2019-3.jpg', 'Active', '2019-12-05 18:09:53'),
(2, 'Saesha flower', 'البوم الموضة', '2_sg-desk-29-oct-2019.jpg', 'Active', '2019-12-05 18:09:46'),
(3, 'saesha flower', '', '3_sg-desk-29-oct-2019-2.jpg', 'Active', '2019-12-05 18:09:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hike_price`
--

CREATE TABLE IF NOT EXISTS `tbl_hike_price` (
`id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `hike_value` int(11) NOT NULL,
  `hike_varient` enum('High','Low') NOT NULL DEFAULT 'High',
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `is_delete` enum('1','0') NOT NULL DEFAULT '1' COMMENT '1= Not Deleted, 0= Deleted'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hike_price`
--

INSERT INTO `tbl_hike_price` (`id`, `title`, `hike_value`, `hike_varient`, `start_date`, `end_date`, `status`, `is_delete`) VALUES
(1, 'Valentine day', 30, 'High', '2019-12-05 00:00:00', '2019-12-05 23:59:59', 'Inactive', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item`
--

CREATE TABLE IF NOT EXISTS `tbl_item` (
`id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `sub_cat_id` int(11) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `item_price` decimal(15,2) NOT NULL,
  `secial_price` decimal(15,2) DEFAULT '0.00',
  `price_percentage` int(11) DEFAULT '0',
  `price_percentage_variant` enum('High','Low') DEFAULT NULL,
  `item_code` varchar(250) NOT NULL,
  `packs_slot` int(11) DEFAULT '1',
  `item_image` varchar(200) DEFAULT NULL,
  `description` text CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL COMMENT 'item_description',
  `item_slug` varchar(250) DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `double_the_quantity_price` double(15,2) DEFAULT '0.00',
  `double_qty_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `shown_short_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `upgrade_option_price` double(15,2) DEFAULT '0.00',
  `upgrade_option_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `meta_tilte` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `meta_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `sequence_order` int(11) DEFAULT NULL,
  `occasion_type` varchar(200) DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active' COMMENT '1=Active,0=Inactive',
  `is_delete` int(11) NOT NULL DEFAULT '1' COMMENT '1=Not Deleted,0=Deleted',
  `add_timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_item`
--

INSERT INTO `tbl_item` (`id`, `category_id`, `sub_cat_id`, `item_name`, `item_price`, `secial_price`, `price_percentage`, `price_percentage_variant`, `item_code`, `packs_slot`, `item_image`, `description`, `item_slug`, `stock`, `double_the_quantity_price`, `double_qty_description`, `shown_short_description`, `upgrade_option_price`, `upgrade_option_description`, `meta_tilte`, `meta_description`, `sequence_order`, `occasion_type`, `added_by`, `status`, `is_delete`, `add_timestamp`) VALUES
(1, 1, 1, 'Simple Beauty', '16.70', '0.00', 0, '', '787987', 1, '1_1505197156_432.jpg', 'This classic hand-tied bouquet of 6 fresh long-stemmed red roses wrapped in lush greenery makes a simple and elegant statement and is a must for the rose lover. Why not send these quality blooms to a deserving someone today bunch of 6 Red Roses with Gypsophelia & Net Packing', 'simple-beauty-1', 8, 30.00, 'Bunch of 12 Red Roses Net Packing', 'Bunch of 6 Red Roses Net Packing', 8.40, 'aaaaaaaaaa', 'Meta Title', 'Meta Description', 2, '19,20,21', 1, 'Active', 1, '2019-12-05 17:21:50'),
(2, 2, 4, 'Viberant Love', '17.50', '0.00', 0, '', '145519', 1, '2_1508942002_437.jpg', 'This classic hand-tied bouquet of 12 fresh long-stemmed red roses wrapped in lush greenery makes a simple and elegant statement and is a must for the rose lover. Why not send these quality blooms to a deserving someone today bunch of 12 Red Roses with Gypsophelia & Net Packing', 'viberant-love-2', 5, 0.00, 'Double Content Coming Soon...!!!', 'Single Content Coming Soon...!', 0.00, '', '', '', 1, '20,21,23,27', 1, 'Active', 1, '2019-12-05 10:37:14'),
(3, 1, 1, 'Perfect Love', '26.60', '0.00', 0, '', '141622', 1, '3_large_ph_30059.jpg', 'A splendid arrangement of 1 dozen mixed colored roses. Blooming gift for your loved one.', 'perfect-love-3', 10, 46.55, 'Bunch of 24 Mixed Roses', 'Bunch of 12 Mixed Roses', 8.40, '', 'coming Soon.!!', 'Coming soon...1', 1, '21,25,26', 1, 'Active', 1, '2019-12-05 16:52:26'),
(4, 1, 1, 'Only Love', '15.23', '0.00', 10, 'High', '145824', 1, '4_large_ph_30123.jpg', 'Sometimes love is simple. With this gift, it can be elegant and beautiful as well. Send this 1 stem Ecuadorian roses to the one who stands out in your life. This single red rose is arranged with eucalyptus, fern, and ophiopogon grass.', 'only-love-4', 1, 28.00, '', '', 0.00, '', 'Coming Soon...!!', 'Coming Soon...!!', 3, '19,20,21,22,23,24,25,26', 1, 'Active', 1, '2019-12-05 17:21:50'),
(5, 1, 2, 'Birds Of Paradise', '110.00', '0.00', 0, NULL, '146257', 1, '5_birds-of-paradise_1.jpg', 'Content Coming Soon...!', 'birds-of-paradise-5', 20, 200.00, 'Double Qty Content Coming Soon...!', 'Single Qty Content Coming Soon...!', 10.00, 'Coming Soon...!', 'Content Coming Soon...!', 'Content Coming Soon...!', 5, '19,21,22,23,24,26', 1, 'Active', 1, '2019-12-05 18:23:11'),
(6, 1, 2, 'Gracious Lily', '60.00', '0.00', 0, NULL, '619612', 1, '6_large_ph_30068.jpg', 'Coming Soon...!', 'gracious-lily-6', 20, 110.00, 'Coming Soon...!', 'Coming Soon...!', 10.00, 'Coming Soon...!', 'Coming Soon...!', 'Coming Soon...!', 6, '19,20,21,24,25,26,27', 1, 'Active', 1, '2019-12-05 18:32:41'),
(7, 7, 33, 'Chocolate flavor', '45.00', '0.00', 0, NULL, '649655', 1, '7_1524299322_10.jpg', 'Content Coming Soon...!', 'chocolate-flavor-7', 12, 85.00, 'Coming Soon...!', 'Coming Soon...!', 0.00, 'Content Coming Soon...!', 'Content Coming Soon...!\r\n', 'Content Coming Soon...!', 7, '19,20,22,25', 1, 'Active', 1, '2019-12-05 18:48:37'),
(8, 7, 34, 'Anniversary Cakes', '80.00', '0.00', 0, NULL, '127188', 1, '8_anniversary-cakes.jpg', 'Double Anniversary Cakes Content Coming Soon..!!!', 'anniversary-cakes-8', 15, 159.00, 'Double Anniversary Cakes Content Coming Soon..!!!', 'Anniversary Cakes Content Coming Soon..!!!', 10.00, 'Content Coming Soon...!', 'Double Anniversary Cakes Content Coming Soon..!!!', 'Double Anniversary Cakes Content Coming Soon..!!!', 8, '20', 1, 'Active', 1, '2019-12-05 19:14:03'),
(9, 7, 35, 'Dedication Cake', '35.00', '0.00', 0, NULL, '413581', 1, '9_birthday-cakes.jpg', 'Birth Day  Dedication Cake', 'dedication-cake-9', 15, 60.00, 'Double Qty Content Coming Soon...!', 'Coming Soon...!', 10.00, 'Content Coming Soon...!', 'Birth Day  Dedication Cake', 'Birth Day  Dedication Cake', 9, '19,20,24,25,26,27', 1, 'Active', 1, '2019-12-05 19:25:42');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE IF NOT EXISTS `tbl_order` (
`id` bigint(20) NOT NULL,
  `payment_id` varchar(250) DEFAULT NULL,
  `txn_id` varchar(250) DEFAULT NULL,
  `currency_code` varchar(100) DEFAULT NULL,
  `oder_no` varchar(250) NOT NULL,
  `invoice_no` varchar(250) NOT NULL,
  `user_id` int(11) NOT NULL,
  `delivery_date` date NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `delivery_charged_id` int(11) DEFAULT NULL COMMENT 'tbl_delivery_charges',
  `shipping_id` bigint(20) DEFAULT NULL COMMENT 'tbl_shipping,Receiver Detail',
  `sender_id` int(11) DEFAULT NULL,
  `payment_mode` enum('cod','online') NOT NULL DEFAULT 'online',
  `coupon` varchar(250) DEFAULT NULL,
  `discount_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `add_on_id` varchar(200) DEFAULT NULL,
  `add_on_extra_price` double(15,2) NOT NULL DEFAULT '0.00',
  `order_amount` decimal(15,2) NOT NULL,
  `order_status` enum('pending','confirm','canceled','delivered','payment_due') NOT NULL DEFAULT 'payment_due',
  `payment_method_name` varchar(250) DEFAULT NULL,
  `payment_status` enum('received','not_received') DEFAULT 'not_received',
  `order_date_time` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `payment_id`, `txn_id`, `currency_code`, `oder_no`, `invoice_no`, `user_id`, `delivery_date`, `city_id`, `delivery_charged_id`, `shipping_id`, `sender_id`, `payment_mode`, `coupon`, `discount_amount`, `add_on_id`, `add_on_extra_price`, `order_amount`, `order_status`, `payment_method_name`, `payment_status`, `order_date_time`) VALUES
(1, NULL, NULL, NULL, 'FR-8325208052019182117', 'FR-000004', 1, '2019-11-28', 1, 2, 1, 1, 'online', NULL, '0.00', NULL, 0.00, '26.70', 'pending', 'paypal', 'received', '2019-11-18 10:20:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_detail`
--

CREATE TABLE IF NOT EXISTS `tbl_order_detail` (
`id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_cat_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `city_id` int(11) NOT NULL,
  `item_name` varchar(250) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `item_price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total_amount` decimal(20,2) NOT NULL,
  `qty_type` enum('single','double') NOT NULL DEFAULT 'single' COMMENT 'when admin forward the mail of vendor',
  `qty_type_description` text CHARACTER SET utf32 COLLATE utf32_unicode_ci COMMENT 'when admin forward the mail of vendor',
  `glass_vase` enum('with','without') NOT NULL DEFAULT 'without' COMMENT 'when admin forward the mail of vendor',
  `order_date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order_detail`
--

INSERT INTO `tbl_order_detail` (`id`, `order_id`, `category_id`, `sub_cat_id`, `item_id`, `city_id`, `item_name`, `quantity`, `item_price`, `sub_total_amount`, `qty_type`, `qty_type_description`, `glass_vase`, `order_date_time`) VALUES
(1, 1, 1, 1, 1, 0, 'Simple Beauty', 1, '16.70', '16.70', 'double', '6 Pcs Red Rose', 'without', '2019-11-29 14:35:09'),
(2, 1, NULL, NULL, NULL, 1, 'delivery charge', 1, '10.00', '10.00', 'double', '', 'with', '2019-11-29 14:23:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sender`
--

CREATE TABLE IF NOT EXISTS `tbl_sender` (
`id` int(11) NOT NULL,
  `sender_name` varchar(250) DEFAULT NULL,
  `sender_address` text CHARACTER SET utf32 COLLATE utf32_unicode_ci,
  `state_name` varchar(250) DEFAULT NULL,
  `city_name` varchar(250) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `gstin` varchar(250) DEFAULT NULL,
  `phone_no` varchar(250) DEFAULT NULL,
  `email_id` varchar(250) DEFAULT NULL,
  `added_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sender`
--

INSERT INTO `tbl_sender` (`id`, `sender_name`, `sender_address`, `state_name`, `city_name`, `country`, `gstin`, `phone_no`, `email_id`, `added_date`) VALUES
(1, 'Brijesh Tiwari', 'Asansol', 'West Bengal', 'Asansol', 'Indonesia', '343434343', '9851438800', 'brijesh@gmail.com', '2019-11-19 15:30:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE IF NOT EXISTS `tbl_shipping` (
`id` bigint(20) NOT NULL,
  `receiver_name` varchar(250) NOT NULL,
  `receiver_address` text,
  `receiver_mobile` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `zip_code` varchar(250) DEFAULT NULL,
  `country_name` varchar(200) DEFAULT NULL,
  `state_name` varchar(250) DEFAULT NULL,
  `city_name` varchar(250) DEFAULT NULL,
  `location_type` enum('Office','Home','Hospital','School','Other') DEFAULT NULL,
  `message_on_card` text CHARACTER SET utf32 COLLATE utf32_unicode_ci,
  `signature` varchar(250) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`id`, `receiver_name`, `receiver_address`, `receiver_mobile`, `email`, `zip_code`, `country_name`, `state_name`, `city_name`, `location_type`, `message_on_card`, `signature`) VALUES
(1, 'Vishal Gupta', 'Kolkata Sector 5', '7501553047', 'vishalkenda@gmail.com', NULL, 'Bali', 'Bali', 'Bali', 'Office', 'Happy Birth day Bro.', 'Vishal Gupta');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_categoery`
--

CREATE TABLE IF NOT EXISTS `tbl_sub_categoery` (
`id` bigint(20) NOT NULL,
  `cat_id` bigint(20) NOT NULL,
  `slug` varchar(250) DEFAULT NULL,
  `sub_cat_name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `is_delete` enum('0','1') DEFAULT '1',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `added_by` int(11) NOT NULL,
  `add_timestamp` datetime NOT NULL,
  `when_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sub_categoery`
--

INSERT INTO `tbl_sub_categoery` (`id`, `cat_id`, `slug`, `sub_cat_name`, `description`, `is_delete`, `status`, `added_by`, `add_timestamp`, `when_update`) VALUES
(1, 1, 'rose-indonesia', 'Rose', 'Rose Content Coming soon...!!!', '1', 'Active', 1, '2019-11-13 09:41:29', '2019-11-14 12:55:04'),
(2, 1, 'lilies-indonesia', 'lilies', 'lilies Content Coming soon...!!!', '1', 'Active', 1, '2019-11-13 09:45:14', '2019-11-14 12:55:15'),
(3, 1, 'gerberas-indonesia', 'Gerberas', 'Gerberas Content Coming soon...!!!', '1', 'Active', 1, '2019-11-13 09:55:29', '2019-11-14 12:55:25'),
(4, 2, 'hand-bouquet-indonesia', 'Hand Bouquet', 'Hand Bouquet  Content Coming soon...!!!', '1', 'Active', 1, '2019-11-13 09:57:35', '2019-11-14 12:55:30'),
(5, 2, 'flowers-in-glass-vase-indonesia', 'Flowers In Glass Vase', 'Flowers In Glass Vase Content Coming soon...!!!', '1', 'Active', 1, '2019-11-13 09:58:36', '2019-11-14 12:55:34'),
(6, 1, 'tulips-indonesia', 'Tulips', 'Content Coming Soon..!!', '1', 'Active', 1, '2019-11-27 10:23:06', '2019-11-27 14:53:06'),
(7, 1, 'sunflowers-indonesia', 'Sunflowers', 'Content Coming Soon..!!', '1', 'Active', 1, '2019-11-27 10:23:30', '2019-11-27 15:34:15'),
(8, 1, 'red-flowers-indonesia', 'Red Flowers', 'Content Coming Soon..!!', '1', 'Active', 1, '2019-11-27 10:23:52', '2019-11-27 14:53:52'),
(9, 1, 'white-flowers-indonesia', 'White Flowers', 'Content Coming Soon..!!', '1', 'Active', 1, '2019-11-27 10:24:23', '2019-11-27 14:54:23'),
(10, 1, 'pink-flowers-indonesia', 'Pink Flowers', 'Content Coming Soon..!!', '1', 'Active', 1, '2019-11-27 10:24:58', '2019-11-27 14:54:58'),
(11, 1, 'custom-roses-indonesia', 'Custom Roses', 'Content Coming Soon..!!', '1', 'Active', 1, '2019-11-27 10:25:42', '2019-11-27 14:55:42'),
(12, 1, 'low-cost-bouquets-indonesia', 'Low Cost Bouquets', 'Content Coming Soon..!!', '1', 'Active', 1, '2019-11-27 10:26:02', '2019-11-27 14:56:02'),
(13, 2, 'flowers-in-a-basket-indonesia', 'Flowers in a Basket', 'Content Coming Soon..!!', '1', 'Active', 1, '2019-11-27 10:31:46', '2019-11-27 15:01:46'),
(14, 2, 'flowers-in-a-box-indonesia', 'Flowers in a Box', 'Content Coming Soon..!!', '1', 'Active', 1, '2019-11-27 10:32:07', '2019-11-27 15:02:07'),
(15, 2, 'flower-stand-indonesia', 'Flower Stand', 'Content Coming Soon..!!', '1', 'Active', 1, '2019-11-27 10:32:35', '2019-11-27 15:02:35'),
(16, 2, 'flower-boards-indonesia', 'Flower Boards', 'Content Coming Soon..!!', '1', 'Active', 1, '2019-11-27 10:32:56', '2019-11-27 15:02:56'),
(17, 3, 'flowers-and-chocolates-indonesia', 'Flowers and Chocolates', 'Content Coming Soon..!!', '1', 'Active', 1, '2019-11-27 11:09:21', '2019-11-27 15:39:21'),
(18, 4, 'lucky-bamboo-plants-indonesia', 'Lucky Bamboo Plants', 'Content Coming Soon..!!', '1', 'Active', 1, '2019-11-27 11:12:42', '2019-11-27 15:43:18'),
(19, 5, 'birthday-indonesia', 'Birthday', 'Content Coming Soon..!!', '1', 'Active', 1, '2019-11-27 11:14:59', '2019-11-27 15:44:59'),
(20, 5, 'anniversary-indonesia', 'Anniversary', 'Content Coming Soon..!!', '1', 'Active', 1, '2019-11-27 11:15:18', '2019-11-27 15:45:18'),
(21, 5, 'symphaty-indonesia', 'Symphaty', 'Content Coming Soon..!!', '1', 'Active', 1, '2019-11-27 11:15:38', '2019-11-27 15:45:38'),
(22, 5, 'corporate-indonesia', 'Corporate', 'Content Coming Soon..!!', '1', 'Active', 1, '2019-11-27 11:15:55', '2019-11-27 15:45:55'),
(23, 5, 'get-well-soon-indonesia', 'Get Well Soon', 'Content Coming Soon..!!', '1', 'Active', 1, '2019-11-27 11:16:14', '2019-11-27 15:46:14'),
(24, 5, 'congratulation-indonesia', 'Congratulation', 'Content Coming Soon..!!', '1', 'Active', 1, '2019-11-27 11:16:36', '2019-11-27 15:46:36'),
(25, 5, 'romance-indonesia', 'Romance', 'Content Coming Soon..!!', '1', 'Active', 1, '2019-11-27 11:16:55', '2019-11-27 15:46:55'),
(26, 5, 'sorry-indonesia', 'Sorry', 'Content Coming Soon..!!', '1', 'Active', 1, '2019-11-27 11:17:15', '2019-11-27 15:47:15'),
(27, 5, 'halloween-indonesia', 'Halloween', 'Content Coming Soon..!!', '1', 'Active', 1, '2019-11-27 11:17:30', '2019-11-27 15:47:30'),
(28, 6, 'gifts-for-new-born-indonesia', 'Gifts for New Born', 'Content Coming Soon..!!', '1', 'Active', 1, '2019-11-27 11:19:48', '2019-11-27 15:49:48'),
(29, 6, 'fruit-baskets-indonesia', 'Fruit Baskets', 'Content Coming Soon..!!', '1', 'Active', 1, '2019-11-27 11:20:06', '2019-11-27 15:50:06'),
(30, 6, 'chocolates-indonesia', 'Chocolates', 'Content Coming Soon..!!', '1', 'Active', 1, '2019-11-27 11:20:25', '2019-11-27 15:50:25'),
(31, 6, 'tedy-bears-indonesia', 'Tedy Bears', 'Content Coming Soon..!!', '1', 'Active', 1, '2019-11-27 11:20:49', '2019-11-27 15:50:49'),
(32, 6, 'hampers-indonesia', 'Hampers', 'Content Coming Soon..!!', '1', 'Active', 1, '2019-11-27 11:21:15', '2019-11-27 15:51:15'),
(33, 7, 'chocolate-cakes-indonesia', 'Chocolate Cakes', 'Chocolate Cakes Description Coming Soon...!!', '1', 'Active', 1, '2019-12-05 02:10:38', '2019-12-05 18:40:38'),
(34, 7, 'anniversary-cakes-indonesia', 'Anniversary Cakes', 'Anniversary Cakes Content Coming Soon..!!!', '1', 'Active', 1, '2019-12-05 02:39:02', '2019-12-05 19:09:02'),
(35, 7, 'birthday-cakes-indonesia', 'Birthday Cakes', 'Birthday Cakes Content Coming Soon..!!', '1', 'Active', 1, '2019-12-05 02:50:50', '2019-12-05 19:20:50'),
(36, 7, 'designer-cakes-indonesia', 'Designer Cakes', 'Designer Cakes', '1', 'Active', 1, '2019-12-05 03:03:48', '2019-12-05 19:33:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_temp_add_on_item`
--

CREATE TABLE IF NOT EXISTS `tbl_temp_add_on_item` (
`id` int(11) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `item_id` int(11) NOT NULL,
  `add_on_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `when_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_temp_add_on_item`
--

INSERT INTO `tbl_temp_add_on_item` (`id`, `user_id`, `item_id`, `add_on_id`, `count`, `status`, `when_added`) VALUES
(22, '127.0.0.1', 3, 7, 1, 'Active', '2019-12-06 18:38:47');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonial`
--

CREATE TABLE IF NOT EXISTS `tbl_testimonial` (
`id` int(11) NOT NULL,
  `name_english` varchar(200) DEFAULT NULL,
  `name_arabic` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` text,
  `arabic_description` text CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `added_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_testimonial`
--

INSERT INTO `tbl_testimonial` (`id`, `name_english`, `name_arabic`, `image`, `description`, `arabic_description`, `status`, `added_date`) VALUES
(9, 'John Brown', 'جون براون', '9_3.jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard.</p>', '<p>أبجد هوز هو مجرد دمية النص لصناعة الطباعة والتنضيد. كان أبجد هوز معيار الصناعة.</p>', 'Active', '2019-10-24 10:32:27'),
(11, 'Vishal gupta', 'فيشال غوبتا', '11_2.jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard.</p>\r\n', '<p>أبجد هوز هو مجرد دمية النص لصناعة الطباعة والتنضيد. كان أبجد هوز معيار الصناعة.</p>\r\n', 'Active', '2019-11-01 10:59:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
`id` int(11) NOT NULL,
  `email_id` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `company_name` varchar(250) DEFAULT NULL,
  `full_name` varchar(250) DEFAULT NULL,
  `address` varchar(250) NOT NULL DEFAULT 'others',
  `city` varchar(250) DEFAULT NULL,
  `state` varchar(250) DEFAULT NULL,
  `zip_code` varchar(250) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `contact_no` varchar(250) DEFAULT NULL,
  `alternative_contact_no` varchar(250) DEFAULT NULL,
  `alternative_email_id` varchar(250) DEFAULT NULL,
  `vat_number` varchar(250) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `when_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `email_id`, `password`, `company_name`, `full_name`, `address`, `city`, `state`, `zip_code`, `country`, `contact_no`, `alternative_contact_no`, `alternative_email_id`, `vat_number`, `status`, `when_added`) VALUES
(1, 'vishal143.niit@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'Vishal Gupta', 'others', NULL, NULL, NULL, NULL, '7501553047', NULL, NULL, NULL, 'Active', '2019-11-20 09:36:16'),
(2, 'test1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'Vishal', 'others', NULL, NULL, NULL, NULL, '123321', NULL, NULL, NULL, 'Active', '2019-11-20 09:36:16'),
(4, 'nusrat.econstra@gmail.com', 'd3374f5af63ac57f3251bd727fd2df79', NULL, NULL, 'others', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', '2019-12-06 08:32:04');

-- --------------------------------------------------------

--
-- Table structure for table `user_permission`
--

CREATE TABLE IF NOT EXISTS `user_permission` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `is_view` int(11) NOT NULL,
  `is_add` int(11) NOT NULL,
  `is_edit` int(11) NOT NULL,
  `is_delete` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `post_date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2521 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_permission`
--

INSERT INTO `user_permission` (`id`, `user_id`, `menu_id`, `is_view`, `is_add`, `is_edit`, `is_delete`, `added_by`, `post_date`) VALUES
(2147, 4, 1, 1, 0, 0, 0, 1, '2017-04-06 10:21:20'),
(2148, 4, 2, 0, 0, 1, 0, 1, '2017-04-06 10:21:20'),
(2149, 4, 46, 0, 0, 1, 0, 1, '2017-04-06 10:21:20'),
(2150, 4, 3, 1, 0, 1, 0, 1, '2017-04-06 10:21:20'),
(2151, 4, 4, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2152, 4, 5, 0, 0, 0, 0, 1, '2017-04-06 10:21:20'),
(2153, 4, 14, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2154, 4, 15, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2155, 4, 16, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2156, 4, 6, 1, 0, 1, 0, 1, '2017-04-06 10:21:20'),
(2157, 4, 7, 0, 0, 0, 0, 1, '2017-04-06 10:21:20'),
(2158, 4, 17, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2159, 4, 18, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2160, 4, 8, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2161, 4, 9, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2162, 4, 10, 0, 0, 0, 0, 1, '2017-04-06 10:21:20'),
(2163, 4, 23, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2164, 4, 24, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2165, 4, 25, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2166, 4, 26, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2167, 4, 27, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2168, 4, 45, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2169, 4, 28, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2170, 4, 29, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2171, 4, 30, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2172, 4, 31, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2173, 4, 32, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2174, 4, 53, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2175, 4, 48, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2176, 4, 33, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2177, 4, 34, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2178, 4, 35, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2179, 4, 36, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2180, 4, 11, 0, 0, 0, 0, 1, '2017-04-06 10:21:20'),
(2181, 4, 37, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2182, 4, 38, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2183, 4, 43, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2184, 4, 39, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2185, 4, 40, 0, 0, 1, 0, 1, '2017-04-06 10:21:20'),
(2186, 4, 49, 0, 0, 0, 0, 1, '2017-04-06 10:21:20'),
(2187, 4, 50, 0, 0, 0, 0, 1, '2017-04-06 10:21:20'),
(2188, 4, 51, 0, 0, 0, 0, 1, '2017-04-06 10:21:20'),
(2189, 4, 52, 0, 0, 0, 0, 1, '2017-04-06 10:21:20'),
(2190, 4, 12, 0, 0, 0, 0, 1, '2017-04-06 10:21:20'),
(2191, 4, 41, 1, 0, 0, 0, 1, '2017-04-06 10:21:20'),
(2192, 4, 42, 1, 0, 0, 0, 1, '2017-04-06 10:21:20'),
(2193, 4, 54, 1, 0, 0, 0, 1, '2017-04-06 10:21:20'),
(2194, 4, 47, 1, 0, 0, 0, 1, '2017-04-06 10:21:20'),
(2195, 4, 13, 1, 0, 0, 0, 1, '2017-04-06 10:21:20'),
(2196, 4, 44, 1, 0, 0, 0, 1, '2017-04-06 10:21:20'),
(2352, 5, 1, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2353, 5, 2, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2354, 5, 46, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2355, 5, 3, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2356, 5, 55, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2357, 5, 56, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2358, 5, 4, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2359, 5, 5, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2360, 5, 14, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2361, 5, 15, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2362, 5, 16, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2363, 5, 6, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2364, 5, 7, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2365, 5, 17, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2366, 5, 18, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2367, 5, 8, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2368, 5, 9, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2369, 5, 10, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2370, 5, 23, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2371, 5, 24, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2372, 5, 25, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2373, 5, 26, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2374, 5, 27, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2375, 5, 45, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2376, 5, 28, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2377, 5, 29, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2378, 5, 30, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2379, 5, 31, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2380, 5, 32, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2381, 5, 53, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2382, 5, 48, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2383, 5, 33, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2384, 5, 34, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2385, 5, 35, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2386, 5, 36, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2387, 5, 11, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2388, 5, 37, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2389, 5, 38, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2390, 5, 43, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2391, 5, 39, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2392, 5, 40, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2393, 5, 49, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2394, 5, 50, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2395, 5, 51, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2396, 5, 52, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2397, 5, 12, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2398, 5, 41, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2399, 5, 42, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2400, 5, 54, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2401, 5, 47, 0, 0, 0, 0, 1, '2017-04-28 09:59:05'),
(2402, 5, 13, 0, 0, 0, 0, 1, '2017-04-28 09:59:05'),
(2403, 5, 44, 0, 0, 0, 0, 1, '2017-04-28 09:59:05'),
(2404, 5, 57, 0, 0, 0, 0, 1, '2017-04-28 09:59:05'),
(2405, 5, 58, 0, 0, 0, 0, 1, '2017-04-28 09:59:05'),
(2406, 5, 59, 1, 1, 1, 1, 1, '2017-04-28 09:59:05'),
(2407, 5, 60, 0, 1, 0, 0, 1, '2017-04-28 09:59:05'),
(2464, 1, 1, 1, 0, 0, 0, 1, '2017-05-16 08:48:57'),
(2465, 1, 2, 0, 0, 1, 0, 1, '2017-05-16 08:48:57'),
(2466, 1, 46, 0, 0, 1, 0, 1, '2017-05-16 08:48:57'),
(2467, 1, 3, 0, 0, 0, 0, 1, '2017-05-16 08:48:57'),
(2468, 1, 55, 1, 0, 1, 0, 1, '2017-05-16 08:48:57'),
(2469, 1, 56, 1, 0, 1, 0, 1, '2017-05-16 08:48:57'),
(2470, 1, 4, 1, 1, 1, 1, 1, '2017-05-16 08:48:57'),
(2471, 1, 5, 0, 0, 0, 0, 1, '2017-05-16 08:48:57'),
(2472, 1, 14, 1, 1, 1, 1, 1, '2017-05-16 08:48:57'),
(2473, 1, 15, 1, 1, 1, 1, 1, '2017-05-16 08:48:57'),
(2474, 1, 16, 1, 1, 1, 1, 1, '2017-05-16 08:48:57'),
(2475, 1, 6, 1, 0, 1, 0, 1, '2017-05-16 08:48:57'),
(2476, 1, 7, 0, 0, 0, 0, 1, '2017-05-16 08:48:57'),
(2477, 1, 17, 1, 1, 1, 1, 1, '2017-05-16 08:48:57'),
(2478, 1, 18, 1, 1, 1, 1, 1, '2017-05-16 08:48:57'),
(2479, 1, 8, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2480, 1, 9, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2481, 1, 10, 0, 0, 0, 0, 1, '2017-05-16 08:48:58'),
(2482, 1, 23, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2483, 1, 24, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2484, 1, 25, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2485, 1, 26, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2486, 1, 27, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2487, 1, 45, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2488, 1, 28, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2489, 1, 29, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2490, 1, 30, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2491, 1, 31, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2492, 1, 32, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2493, 1, 53, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2494, 1, 48, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2495, 1, 33, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2496, 1, 34, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2497, 1, 35, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2498, 1, 36, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2499, 1, 11, 0, 0, 0, 0, 1, '2017-05-16 08:48:58'),
(2500, 1, 37, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2501, 1, 38, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2502, 1, 43, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2503, 1, 39, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2504, 1, 40, 0, 0, 1, 0, 1, '2017-05-16 08:48:58'),
(2505, 1, 49, 0, 0, 0, 0, 1, '2017-05-16 08:48:58'),
(2506, 1, 50, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2507, 1, 51, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2508, 1, 52, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2509, 1, 12, 0, 0, 0, 0, 1, '2017-05-16 08:48:58'),
(2510, 1, 41, 1, 0, 0, 0, 1, '2017-05-16 08:48:58'),
(2511, 1, 42, 1, 0, 0, 0, 1, '2017-05-16 08:48:58'),
(2512, 1, 54, 1, 0, 0, 0, 1, '2017-05-16 08:48:58'),
(2513, 1, 47, 1, 0, 1, 0, 1, '2017-05-16 08:48:58'),
(2514, 1, 13, 1, 0, 0, 0, 1, '2017-05-16 08:48:58'),
(2515, 1, 44, 1, 0, 0, 0, 1, '2017-05-16 08:48:58'),
(2516, 1, 57, 1, 0, 1, 0, 1, '2017-05-16 08:48:58'),
(2517, 1, 58, 0, 0, 0, 0, 1, '2017-05-16 08:48:58'),
(2518, 1, 59, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2519, 1, 60, 0, 1, 0, 0, 1, '2017-05-16 08:48:58'),
(2520, 1, 61, 0, 1, 0, 0, 1, '2017-05-16 08:48:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `captcha`
--
ALTER TABLE `captcha`
 ADD PRIMARY KEY (`captcha_id`), ADD KEY `word` (`word`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
 ADD PRIMARY KEY (`session_id`), ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `global_config`
--
ALTER TABLE `global_config`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_addon`
--
ALTER TABLE `tbl_addon`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_card_message`
--
ALTER TABLE `tbl_card_message`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_city`
--
ALTER TABLE `tbl_city`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cms`
--
ALTER TABLE `tbl_cms`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_coupon`
--
ALTER TABLE `tbl_coupon`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_delivery_charges`
--
ALTER TABLE `tbl_delivery_charges`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_hike_price`
--
ALTER TABLE `tbl_hike_price`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_item`
--
ALTER TABLE `tbl_item`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sender`
--
ALTER TABLE `tbl_sender`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sub_categoery`
--
ALTER TABLE `tbl_sub_categoery`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_temp_add_on_item`
--
ALTER TABLE `tbl_temp_add_on_item`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_permission`
--
ALTER TABLE `user_permission`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `captcha`
--
ALTER TABLE `captcha`
MODIFY `captcha_id` bigint(13) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `global_config`
--
ALTER TABLE `global_config`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `tbl_addon`
--
ALTER TABLE `tbl_addon`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_card_message`
--
ALTER TABLE `tbl_card_message`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_city`
--
ALTER TABLE `tbl_city`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `tbl_cms`
--
ALTER TABLE `tbl_cms`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_coupon`
--
ALTER TABLE `tbl_coupon`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_delivery_charges`
--
ALTER TABLE `tbl_delivery_charges`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_hike_price`
--
ALTER TABLE `tbl_hike_price`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_item`
--
ALTER TABLE `tbl_item`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_sender`
--
ALTER TABLE `tbl_sender`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_sub_categoery`
--
ALTER TABLE `tbl_sub_categoery`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `tbl_temp_add_on_item`
--
ALTER TABLE `tbl_temp_add_on_item`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_permission`
--
ALTER TABLE `user_permission`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2521;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
