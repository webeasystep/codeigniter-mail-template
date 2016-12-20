-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2016 at 02:54 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `tboptions`
--

CREATE TABLE `tboptions` (
  `OptionID` int(11) NOT NULL,
  `OptionName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `OptionValue` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='settings table';

--
-- Dumping data for table `tboptions`
--

INSERT INTO `tboptions` (`OptionID`, `OptionName`, `OptionValue`, `lang`) VALUES
(32, 'activation_subject', 'Course Activation', 'ar'),
(33, 'activation_content', '<title></title>\r\n<meta http-equiv="content-type" content="text/html; charset=utf-8">\r\n<div class="container" style="min-width: 245px;max-width: 1920px;position: relative;padding: 10px;border: 1px dotted #ddd;background-color: #eee;">\r\n<div class="header" style="border: 1px dotted #ddd;min-height: 120px;border-radius: 5px 5px 0 0;background-color: #fff;padding: 10px 0;">\r\n<p style="text-align: center;"><a href="http://webeasystep.com/" style="text-decoration: none;color: #8cb83f;" target="_blank"><img alt="" class="img-responsive img-circle" src="http://webeasystep.com/global/site/images/logo.png" style="border: none; width: 200px; height: 35px; background-color: rgb(255, 255, 255); margin: auto;" /> </a></p>\r\n\r\n<p style="color: rgb(142, 183, 63); margin-bottom: 0px; margin-top: 3px; text-align: center;"><span style="color:#19BD9B;"><strong>Webeasystep Tutorials</strong></span></p>\r\n</div>\r\n\r\n<div class="contents" style="border-right: 1px dotted #ddd;border-left: 1px dotted #ddd;padding: 20px 40px 40px;background-color: #fff;">\r\n<h3 class="text-success" style="color: rgb(60, 118, 61); text-align: center;">&nbsp;</h3>\r\n\r\n<h3 class="text-success" dir="ltr" style="color: rgb(60, 118, 61); text-align: center;"><span style="color:#696969;">Dear customer &nbsp; [[CUSTOMER_NAME]]</span></h3>\r\n\r\n<p dir="ltr" style="text-align: center;"><!--Arabic MSG End--></p>\r\n\r\n<p dir="ltr" style="direction: ltr; text-align: center;">Diamond Technology would like to thank you for buying the original copy of<br />\r\n([[PRODUCT_NAME]])</p>\r\n\r\n<p dir="ltr" style="text-align: center;">We are glad to give you your activation code<br />\r\n[[ACTIVATION_NUMBER]]</p>\r\n\r\n<p dir="ltr" style="text-align: center;"><span style="color:#800080;">Registration</span></p>\r\n\r\n<p dir="ltr" style="text-align: center;">Log in, select services from the menu, then select register. Now enter your activation code, put a checkmark on <span class="text-warning text-sm" style="font-size: 16px;font-weight: bold;color: #8a6d3b;">(I agree to the license agreement)</span> after reading it carefully and then click register</p>\r\n\r\n<h4 class="text-success" dir="ltr" style="color: rgb(60, 118, 61); text-align: center;"><span style="color:#800080;">Webeasystep wishes you all the best, Thank you for choosing our products</span></h4>\r\n<!--English MSG End--></div>\r\n\r\n<div class="footer" style="height: 80px;padding: 0 20px;text-align: center;background-color: #19BD9B;color: #fff;border-radius: 0 0 5px 5px;">\r\n<div class="pull-left logo"><a href="http://webeasystep.com" style="text-decoration: none;color: #fff;font-size: 14px;" target="_blank"><img alt="" class="img-responsive img-circle" src="http://webeasystep.com/global/site/images/icons/favicon.ico?v=2" style="border: none; width: 26px; height: 26px; float: left; padding-top: 20px;" /></a></div>\r\n<!-- Rotate icons -->\r\n\r\n<ul class="social-links pull-right" style="list-style: none;display: inline;padding: 0;margin-left: 0 !important;float: right !important;">\r\n	<li style="display: inline;margin: 0 5px;"><a class="facebook-ico rotate-me" href="https://www.facebook.com/webeasystep" style="text-decoration: none;color: #fff;-webkit-transition: all 0.8s;-moz-transition: all 0.8s;-o-transition: all 0.8s;-ms-transition: all 0.8s;transition: all 0.8s;display: inline-block;position: relative;margin: 0 auto;text-align: center;width: 35px;height: 30px;padding-top: 7px;font-size: 20px;background-color: #10816A;-moz-border-radius: 50%;-webkit-border-radius: 50%;border-radius: 50%;" target="_blank" title="Facebook"><img alt="" src="http://localhost/codeigniter-mail-template/global/mail/images/facebook.png" style="border: none;" /></a></li>\r\n	<li style="display: inline;margin: 0 5px;"><a class="twitter-ico rotate-me" href="https://twitter.com/webeasystep" style="text-decoration: none;color: #fff;-webkit-transition: all 0.8s;-moz-transition: all 0.8s;-o-transition: all 0.8s;-ms-transition: all 0.8s;transition: all 0.8s;display: inline-block;position: relative;margin: 0 auto;text-align: center;width: 35px;height: 30px;padding-top: 7px;font-size: 20px;background-color: #10816A;-moz-border-radius: 50%;-webkit-border-radius: 50%;border-radius: 50%;" target="_blank" title="Twitter"><img alt="" src="http://localhost/codeigniter-mail-template/global/mail/images/twitter.png" style="border: none;" /></a></li>\r\n</ul>\r\n</div>\r\n\r\n<h6 style="margin: 10px; text-align: center;"><strong><span style="font-size:12px;">info@webeasystep.com : البريد الإلكتروني | www.webeasystep.com </span></strong></h6>\r\n</div>', 'ar'),
(36, 'activation_mail', 'info@webeasystep.com', 'ar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `tboptions`
--
ALTER TABLE `tboptions`
  ADD PRIMARY KEY (`OptionID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tboptions`
--
ALTER TABLE `tboptions`
  MODIFY `OptionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
