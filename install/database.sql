-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2018 at 03:43 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ccico`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'MR Admin', 'admin@email.com', 'admin', '$2y$10$HSfWwAkowoDwj27A7d5AduhQ.GnER72sOvpuGKxjorjFfvRP9ubSu', 'XMDzxGxw9cvU9jVlcTITWc6GMbekPU1KUUmPoHJCGMkpAujbY3rDD5Ouj39B', NULL, NULL),
(2, 'Jahangir Pial', 'pialneel@gmail.com', 'pial', '$2y$10$95DD.G0hyCPRrxb5FBbF..c1r10Xbjr4Rtx9GP4WDNUehZ.tEiYvW', 'SA2jhDSuyxnrfHeb99PeMO53tU2nr9Gfh1bzrGP0VBuljnvqQBWrw911yC1C', '2018-01-23 00:06:48', '2018-01-23 00:10:19');

-- --------------------------------------------------------

--
-- Table structure for table `etemplates`
--

CREATE TABLE `etemplates` (
  `id` int(10) UNSIGNED NOT NULL,
  `esender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emessage` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `smsapi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `etemplates`
--

INSERT INTO `etemplates` (`id`, `esender`, `emessage`, `smsapi`, `created_at`, `updated_at`) VALUES
(1, 'email@example.com', '<br><div class=\"wrapper\" style=\"background-color: #f2f2f2;\"><table id=\"emb-email-header-container\" class=\"header\" style=\"border-collapse: collapse; table-layout: fixed; margin-left: auto; margin-right: auto;\" align=\"center\"><tbody><tr><td style=\"padding: 0; width: 600px;\"><br><div class=\"header__logo emb-logo-margin-box\" style=\"font-size: 26px; line-height: 32px; color: #c3ced9; font-family: Roboto,Tahoma,sans-serif; margin: 6px 20px 20px 20px;\"><img style=\"height: auto; width: 100%; border: 0; max-width: 312px;\" src=\"http://i.imgur.com/nNCNPZT.png\" alt=\"\" width=\"312\" height=\"44\"><br></div></td></tr></tbody></table><br><table class=\"layout layout--no-gutter\" style=\"border-collapse: collapse; table-layout: fixed; margin-left: auto; margin-right: auto; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #ffffff;\" align=\"center\"><tbody><tr><td class=\"column\" style=\"padding: 0; text-align: left; vertical-align: top; color: #60666d; font-size: 14px; line-height: 21px; font-family: sans-serif; width: 600px;\"><br><div style=\"margin-left: 20px; margin-right: 20px;\"><font size=\"4\">Hi {{name}},<br></font><p><strong>{{message}}</strong></p></div><div style=\"margin-left: 20px; margin-right: 20px; margin-bottom: 24px;\"><br><p class=\"size-14\" style=\"margin-top: 0; margin-bottom: 0; font-size: 14px; line-height: 21px;\">Thanks,<br> <strong>ICO Team</strong></p><br></div><br></td></tr></tbody></table><br></div>', 'https://api.infobip.com/api/v3/sendsms/plain?user=****&password=*****&sender=ICO&SMSText={{message}}&GSM={{number}}&type=longSMS', '2018-01-09 23:45:09', '2018-01-30 20:06:07');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `details`, `created_at`, `updated_at`) VALUES
(2, 'Mauris nec sapien ut facilisis?', 'Integer mollis dui vehicula egestas faucibus. Vivamus condimentum maximus urna, vel faucibus diam accumsan eget. Cras consequat   libero ligula, eget maximus lectus tincidunt', '2018-01-28 07:49:59', '2018-01-28 07:49:59'),
(3, 'Mauris nec sapien ut facilisis?', 'Integer mollis dui vehicula egestas faucibus. Vivamus condimentum maximus urna, vel faucibus diam accumsan eget. Cras consequat   libero ligula, eget maximus lectus tincidunt .', '2018-01-28 07:50:26', '2018-01-28 07:50:26'),
(4, 'Mauris nec sapien ut facilisis?', 'Integer mollis dui vehicula egestas faucibus. Vivamus condimentum maximus urna, vel faucibus diam accumsan eget. Cras consequat   libero ligula, eget maximus lectus tincidunt .', '2018-01-28 07:50:35', '2018-01-28 07:50:35'),
(5, 'Mauris nec sapien ut facilisis?', 'Integer mollis dui vehicula egestas faucibus. Vivamus condimentum maximus urna, vel faucibus diam accumsan eget. Cras consequat   libero ligula, eget maximus lectus tincidunt .', '2018-01-28 07:50:43', '2018-01-28 07:50:43'),
(6, 'Mauris nec sapien ut facilisis?', 'Integer mollis dui vehicula egestas faucibus. Vivamus condimentum maximus urna, vel faucibus diam accumsan eget. Cras consequat   libero ligula, eget maximus lectus tincidunt .', '2018-01-28 07:50:52', '2018-01-28 07:50:52'),
(7, 'Mauris nec sapien ut facilisis?', 'Integer mollis dui vehicula egestas faucibus. Vivamus condimentum maximus urna, vel faucibus diam accumsan eget. Cras consequat   libero ligula, eget maximus lectus tincidunt .', '2018-01-28 07:51:00', '2018-01-28 07:51:00');

-- --------------------------------------------------------

--
-- Table structure for table `frontends`
--

CREATE TABLE `frontends` (
  `id` int(10) UNSIGNED NOT NULL,
  `ban_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ban_details` text COLLATE utf8mb4_unicode_ci,
  `ban_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ban_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_content` text COLLATE utf8mb4_unicode_ci,
  `serv_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serv_details` text COLLATE utf8mb4_unicode_ci,
  `road_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `road_details` text COLLATE utf8mb4_unicode_ci,
  `team_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_details` text COLLATE utf8mb4_unicode_ci,
  `testm_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testm_details` text COLLATE utf8mb4_unicode_ci,
  `faq_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_details` text COLLATE utf8mb4_unicode_ci,
  `subs_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subs_details` text COLLATE utf8mb4_unicode_ci,
  `footer1` text COLLATE utf8mb4_unicode_ci,
  `footer2` text COLLATE utf8mb4_unicode_ci,
  `secbg1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secbg2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secbg3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secbg4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ban_subtitle` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ban_sold` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frontends`
--

INSERT INTO `frontends` (`id`, `ban_title`, `ban_details`, `ban_price`, `ban_date`, `about_title`, `video`, `about_content`, `serv_title`, `serv_details`, `road_title`, `road_details`, `team_title`, `team_details`, `testm_title`, `testm_details`, `faq_title`, `faq_details`, `subs_title`, `subs_details`, `footer1`, `footer2`, `secbg1`, `secbg2`, `secbg3`, `secbg4`, `created_at`, `updated_at`, `ban_subtitle`, `ban_sold`) VALUES
(1, '3rd Phase Running', '<div align=\"center\"><b>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi vel dolores quisquam maiores amet ad unde, tempora, iste doloremque fugiat voluptatibus neque inventore ducimus rem minus reprehenderit saepe? Perspiciatis pariatur aperiam ullam vero velit quas saepe animi, debitis qui placeat reprehenderit ad facere natus modi ipsam recusandae.</b></div>', '0.20', '2018-02-28', 'ABOUT', 'https://www.youtube.com/watch?v=2X9eJF1nLiY&feature=youtu.be', '<div align=\"justify\">                                   Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus repudiandae accusamus eius facilis ipsa, omnis nemo obcaecati perspiciatis blanditiis animi in cumque nesciunt tenetur voluptas. Beatae iste, ratione minima. Enim consequatur quia necessitatibus doloribus facere. Quod magni eaque odio illum soluta sequi quibusdam itaque esse voluptatem alias error ipsam aliquam, consectetur autem velit in odit possimus tempore ex ullam earum provident tenetur minus. Debitis nesciunt impedit dolorum maxime, provident voluptas cupiditate consequuntur rerum temporibus perspiciatis. In non amet \r\nducimus, magni numquam culpa consequuntur explicabo. Nam molestiae, \r\ndebitis unde iusto eaque cumque deleniti mollitia nulla? Debitis aut \r\nimpedit explicabo enim optio!\r\n                               piditate consequuntur rerum temporibus perspiciatis.</div>', 'What Is ICO', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Provident, ut. Tenetur facere, asperiores temporibus ipsam itaque voluptate, magni quis, harum earum perferendis sapiente cum voluptas est repudiandae nobis aut qui suscipit. Modi atque adipisci <br>', 'Road Map', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Provident, ut. Tenetur facere, asperiores temporibus ipsam itaque voluptate, magni quis, harum earum perferendis sapiente cum voluptas est repudiandae nobis aut qui suscipit. Modi atque adipisci <br>', 'Our Awesome Team', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Provident, ut. Tenetur facere, asperiores temporibus ipsam itaque voluptate', 'What People Say About US', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Provident, ut. Tenetur facere, asperiores temporibus ipsam itaque voluptate, magni quis, harum earum perferendis sapiente cum voluptas est repudiandae nobis aut qui suscipit. Modi atque adipisci <br>', 'Frequently Asked Questions', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Provident, ut. Tenetur facere, asperiores temporibus ipsam itaque voluptate, magni quis, harum earum perferendis sapiente cum voluptas est repudiandae nobis aut qui suscipit. Modi atque adipisci <br>', 'Subscribe Here', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Provident, ut.\r\n Tenetur facere, asperiores temporibus ipsam itaque voluptate, magni \r\nquis, harum earum perferendis sapiente cum voluptas est repudiandae \r\nnobis aut qui suscipit. Modi atque adipisci', '© copyright 2018 ICO . All Right Reserved <br>', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Provident, ut.\r\n Tenetur facere, asperiores temporibus ipsam itaque voluptate, magni \r\nquis, harum earum perferendis sapiente cum voluptas est repudiandae \r\nnobis aut qui suscipit. Modi atque adipisci', '5a6eea2ddf82a.jpg', '5a7046d8ef868.jpg', '5a6ee99765d08.jpg', '5a6eea2de01c3.jpg', '2018-01-29 02:57:25', '2018-02-01 17:35:04', 'Grab Your Token Before Price go up', '5');

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gateimg` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minamo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maxamo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chargefx` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chargepc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val3` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `name`, `gateimg`, `minamo`, `maxamo`, `chargefx`, `chargepc`, `rate`, `val1`, `val2`, `val3`, `currency`, `status`, `created_at`, `updated_at`) VALUES
(1, 'PayPal', '5a7096056c84c.png', '5', '10000', '0.5', '2.5', '74', 'rexrifat636@gmail.com', NULL, NULL, 'USD', 1, NULL, '2018-01-31 19:06:26'),
(2, 'Perfect Money', '5a70960f7c1c7.png', '20', '20000', '2', '1', '80', 'U5376900', 'G079qn4Q7XATZBqyoCkBteGRg', NULL, 'USD', 1, NULL, '2018-01-31 18:58:06'),
(3, 'BlockChain', '5a70961c5783f.png', '10', '20000', '1', '0.5', '81', 'YOUR API KEY FROM BLOCKCHAIN.INFO', 'YOUR XPUB FROM BLOCKCHAIN.INFO', NULL, 'BTC', 1, NULL, '2018-01-31 20:09:59'),
(4, 'Stripe', '5a70962b480dc.jpg', '10', '50000', '3', '3', '85', 'sk_test_aat3tzBCCXXBkS4sxY3M8A1B', 'pk_test_AU3G7doZ1sbdpJLj0NaozPBu', NULL, 'USD', 1, NULL, '2018-01-30 21:58:35'),
(5, 'Skrill', '5a70963c08257.jpg', '10', '50000', '3', '3', '85', 'merchant@skrill', 'TheSoftKing', NULL, 'USD', 1, NULL, '2018-02-01 17:44:38'),
(6, 'Coingate', '5a709647b797a.jpg', '10', '50000', '3', '3', '85', '1257', '8wbQIWcXyRu1AHiJqtEhTY', 'Hr7LqFM83aJsZgbIVkoUW2Q4cGvlB05n', 'BTC', 1, NULL, '2018-01-30 21:59:03'),
(7, 'Coin Payment', '5a709659027e1.jpg', '0', '0', '0', '0', '78', 'db1d9f12444e65c921604e289a281c56', NULL, NULL, 'BTC', 1, NULL, '2018-01-30 21:59:21'),
(8, 'Block IO', '5a70966f55b80.jpg', '0', '0', '0', '0', '78', '400a-0f9a-8a53-b294', '848156187', NULL, 'BTC', 1, '2018-01-27 18:00:00', '2018-02-01 17:45:10');

-- --------------------------------------------------------

--
-- Table structure for table `generals`
--

CREATE TABLE `generals` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Website',
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Sub Title',
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '336699',
  `cur` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `cursym` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '$',
  `reg` int(11) NOT NULL DEFAULT '1',
  `emailver` int(11) NOT NULL DEFAULT '1',
  `smsver` int(11) NOT NULL DEFAULT '1',
  `decimal` int(11) NOT NULL DEFAULT '2',
  `emailnotf` int(11) NOT NULL DEFAULT '1',
  `smsnotf` int(11) NOT NULL DEFAULT '1',
  `startdate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refcom` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generals`
--

INSERT INTO `generals` (`id`, `title`, `subtitle`, `color`, `cur`, `cursym`, `reg`, `emailver`, `smsver`, `decimal`, `emailnotf`, `smsnotf`, `startdate`, `refcom`, `created_at`, `updated_at`) VALUES
(1, 'ICO', 'Initial Coin Offering', 'fcb103', 'Coin', 'C', 1, 1, 1, 2, 1, 0, '2017-12-29', '2.5', '2018-01-09 07:45:42', '2018-02-15 08:24:23');

-- --------------------------------------------------------

--
-- Table structure for table `icos`
--

CREATE TABLE `icos` (
  `id` int(10) UNSIGNED NOT NULL,
  `start` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quant` int(11) NOT NULL DEFAULT '0',
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sold` int(11) DEFAULT '0',
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `icos`
--

INSERT INTO `icos` (`id`, `start`, `end`, `quant`, `price`, `sold`, `status`, `created_at`, `updated_at`) VALUES
(1, '2018-02-01', '2018-12-31', 10000000, '0.50', 0, 1, '2018-02-01 06:51:20', '2018-02-01 06:51:20');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `status`, `created_at`) VALUES
('pialneel@gmail.com', '2owl0QD9ZYGsBURTgKtLykFTQnOz3M', 1, '2018-01-11 00:32:57'),
('pialneel@gmail.com', 'A16XpQfqvbeUlfSpvfrEMHuy9DS0AA', 1, '2018-01-29 23:21:37'),
('pialneel@gmail.com', 'AztYH0pGbRDa8rgZwBHjNfs0jUmqGE', 1, '2018-01-30 04:46:25');

-- --------------------------------------------------------

--
-- Table structure for table `roads`
--

CREATE TABLE `roads` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roads`
--

INSERT INTO `roads` (`id`, `title`, `details`, `created_at`, `updated_at`) VALUES
(2, 'Q1 2018', 'Begin development of FanusCoin application', '2018-01-28 07:10:54', '2018-01-28 07:19:14'),
(3, 'Q2 2018', 'Release beta,youtube channel Token sale and Listed on exchanges', '2018-01-28 07:16:40', '2018-01-28 07:19:35'),
(4, 'Q3 2018', 'Secured capture facility for initial performances', '2018-01-28 07:18:46', '2018-01-28 07:19:56'),
(5, 'Q4 2018', 'Integrate our off-chain solution for micro-transactions', '2018-01-28 07:20:15', '2018-01-28 07:20:15');

-- --------------------------------------------------------

--
-- Table structure for table `sells`
--

CREATE TABLE `sells` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `ico_id` int(11) NOT NULL,
  `gateway_id` int(11) NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `trx` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bcid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bcam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `try` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sells`
--

INSERT INTO `sells` (`id`, `user_id`, `ico_id`, `gateway_id`, `amount`, `status`, `trx`, `bcid`, `bcam`, `try`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 7, '10', 0, 'slkuEfJe4Wvu41eV', NULL, '0', 0, '2018-02-15 08:38:10', '2018-02-15 08:38:10');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `icon`, `title`, `details`, `created_at`, `updated_at`) VALUES
(2, 'cogs', 'Secured', 'Modi atque adipisci quasi ad, non voluptas deserunt dolores provident nesciunt architecto, laborum blanditiis.', '2018-01-29 00:01:36', '2018-01-30 20:49:06'),
(3, 'money', 'Decentralized', 'Modi atque adipisci quasi ad, non voluptas deserunt dolores provident nesciunt architecto, laborum blanditiis.', '2018-01-29 00:01:58', '2018-01-30 20:49:13'),
(4, 'credit-card', 'Wallet', 'Modi atque adipisci quasi ad, non voluptas deserunt dolores provident nesciunt architecto, laborum blanditiis.', '2018-01-29 00:02:19', '2018-01-30 20:49:19');

-- --------------------------------------------------------

--
-- Table structure for table `subscribes`
--

CREATE TABLE `subscribes` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribes`
--

INSERT INTO `subscribes` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'ahsfdj@adj.asd', '2018-01-29 05:55:47', '2018-01-29 05:55:47');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `photo`, `title`, `details`, `created_at`, `updated_at`) VALUES
(2, '5a7153ada8161.jpg', 'Roger W. Harris', 'Consultant', '2018-01-29 00:36:24', '2018-01-31 11:29:05'),
(4, '5a7153b89ce7e.jpg', 'Zachary D. Schroeder', 'Begin development', '2018-01-29 00:38:05', '2018-01-31 11:28:21'),
(5, '5a7153c72a784.jpg', 'Donna K. Fleet', 'Accounts', '2018-01-29 00:38:31', '2018-01-31 11:28:47');

-- --------------------------------------------------------

--
-- Table structure for table `testims`
--

CREATE TABLE `testims` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testims`
--

INSERT INTO `testims` (`id`, `photo`, `name`, `company`, `star`, `comment`, `created_at`, `updated_at`) VALUES
(3, '5a71555b64707.jpg', 'Sara Khan', 'TSK', NULL, 'Bitcoins against 15 digital currenciesBitcoins against', '2018-01-28 23:03:19', '2018-01-31 11:34:19'),
(4, '5a715584e4179.jpg', 'Jhonh Smith', 'TSK', NULL, 'Bitcoins in to any Bank worldwide', '2018-01-28 23:04:39', '2018-01-31 11:35:00'),
(5, '5a7155a9ab644.jpg', 'priya khan', 'TSK', NULL, 'Bitcoins in to any Bank worldwide', '2018-01-28 23:04:59', '2018-01-31 11:35:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'nopic.png',
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tauth` int(11) NOT NULL,
  `tfver` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `emailv` int(11) DEFAULT NULL,
  `smsv` int(11) DEFAULT NULL,
  `vsent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vercode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secretcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refer` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indexes for table `etemplates`
--
ALTER TABLE `etemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontends`
--
ALTER TABLE `frontends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generals`
--
ALTER TABLE `generals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icos`
--
ALTER TABLE `icos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `roads`
--
ALTER TABLE `roads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sells`
--
ALTER TABLE `sells`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testims`
--
ALTER TABLE `testims`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `etemplates`
--
ALTER TABLE `etemplates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `frontends`
--
ALTER TABLE `frontends`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `generals`
--
ALTER TABLE `generals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `icos`
--
ALTER TABLE `icos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roads`
--
ALTER TABLE `roads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sells`
--
ALTER TABLE `sells`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `testims`
--
ALTER TABLE `testims`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
