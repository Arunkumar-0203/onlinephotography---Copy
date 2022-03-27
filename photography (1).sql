-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2021 at 09:31 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `photography`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
`id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
`id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add exhibition', 7, 'add_exhibition'),
(26, 'Can change exhibition', 7, 'change_exhibition'),
(27, 'Can delete exhibition', 7, 'delete_exhibition'),
(28, 'Can view exhibition', 7, 'view_exhibition'),
(29, 'Can add user type', 8, 'add_usertype'),
(30, 'Can change user type', 8, 'change_usertype'),
(31, 'Can delete user type', 8, 'delete_usertype'),
(32, 'Can view user type', 8, 'view_usertype'),
(33, 'Can add use r', 9, 'add_user'),
(34, 'Can change use r', 9, 'change_user'),
(35, 'Can delete use r', 9, 'delete_user'),
(36, 'Can view use r', 9, 'view_user'),
(37, 'Can add photo grapher', 10, 'add_photographer'),
(38, 'Can change photo grapher', 10, 'change_photographer'),
(39, 'Can delete photo grapher', 10, 'delete_photographer'),
(40, 'Can view photo grapher', 10, 'view_photographer'),
(41, 'Can add add photo', 11, 'add_addphoto'),
(42, 'Can change add photo', 11, 'change_addphoto'),
(43, 'Can delete add photo', 11, 'delete_addphoto'),
(44, 'Can view add photo', 11, 'view_addphoto'),
(45, 'Can add cart', 12, 'add_cart'),
(46, 'Can change cart', 12, 'change_cart'),
(47, 'Can delete cart', 12, 'delete_cart'),
(48, 'Can view cart', 12, 'view_cart');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
`id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$ma7m4fgOKwOM$bPUoQ9BCUiSAIjzBDYiE/kX0RCHOp2kRnUiuSqQm6K8=', '2021-04-14 21:48:05.145834', 1, 'admin', '', '1', 'admin@gmail.com', 1, 1, '2021-04-14 21:38:26.149665'),
(2, 'pbkdf2_sha256$260000$X5MJkXMuciL8kxkJmpIJwb$vlsQ3xkQfNw7GHoyLRuEQdvXBsU6BFwHTpXK0ZSYhE4=', '2021-04-22 05:55:45.201567', 0, 'arun', 'arun', '1', 'arun@gmail.com', 0, 1, '2021-04-14 21:39:22.403250'),
(3, 'pbkdf2_sha256$180000$1R5RbhsuiXBR$r4nEoao6j3AiBBf6vmuXvZeSD8sPiVdq4Rmxq2sWiyI=', '2021-04-14 21:48:23.684525', 0, 'jithu', 'jithu', '1', 'jithu@gmail.com', 0, 1, '2021-04-14 21:46:59.251783');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
`id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
`id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(11, 'photography_app', 'addphoto'),
(12, 'photography_app', 'cart'),
(7, 'photography_app', 'exhibition'),
(10, 'photography_app', 'photographer'),
(9, 'photography_app', 'user'),
(8, 'photography_app', 'usertype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
`id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-04-14 21:36:32.343702'),
(2, 'auth', '0001_initial', '2021-04-14 21:36:32.673495'),
(3, 'admin', '0001_initial', '2021-04-14 21:36:33.208349'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-04-14 21:36:33.302619'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-04-14 21:36:33.313226'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-04-14 21:36:33.466241'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-04-14 21:36:33.527044'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-04-14 21:36:33.583000'),
(9, 'auth', '0004_alter_user_username_opts', '2021-04-14 21:36:33.594421'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-04-14 21:36:33.650044'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-04-14 21:36:33.655050'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-04-14 21:36:33.668043'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-04-14 21:36:33.719073'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-04-14 21:36:33.771439'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-04-14 21:36:33.830868'),
(16, 'auth', '0011_update_proxy_permissions', '2021-04-14 21:36:33.842886'),
(17, 'photography_app', '0001_initial', '2021-04-14 21:36:34.111768'),
(18, 'photography_app', '0002_addphoto_status', '2021-04-14 21:36:34.333360'),
(19, 'photography_app', '0003_cart', '2021-04-14 21:36:34.397362'),
(20, 'photography_app', '0004_addphoto_delivery', '2021-04-14 21:36:34.556769'),
(21, 'photography_app', '0005_remove_addphoto_delivery', '2021-04-14 21:36:34.626739'),
(22, 'photography_app', '0006_cart_billstatus', '2021-04-14 21:36:34.688767'),
(23, 'sessions', '0001_initial', '2021-04-14 21:36:34.732526');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('6vjjlj5nv4nllmax4wd6r3m9hq5pyx3t', 'N2JhMTYxMzMzNDU1MmM5ZmU4MzQwY2JiMmY3M2ZmYWIwYWI1NzU5Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNmZiYTc2MzI5ZDc1ZTU4OTk4Y2EwY2E1ODk0MzgwNzdjODRjMWU3In0=', '2021-04-28 21:48:23.692322'),
('88gjaz2nl0ja4me8glecqn5h5l3r84fk', '.eJxVjDsOwjAQBe_iGlm7thN7Kek5g7X-4QBypDipEHeHSCmgfTPzXsLztla_9bz4KYmzUOL0uwWOj9x2kO7cbrOMc1uXKchdkQft8jqn_Lwc7t9B5V6_tXVEDgoYoKjRFmMyDgqZgmFAm8fCSQ8ISgFbQqdNCYxYEnHAkbR4fwCyCTbV:1lZSJV:jD_c-wWbDHZUZTk5NIqYcd_1j1i_B5viLF9wSLjvzaI', '2021-05-06 05:55:45.231571');

-- --------------------------------------------------------

--
-- Table structure for table `photography_app_addphoto`
--

CREATE TABLE IF NOT EXISTS `photography_app_addphoto` (
`id` int(11) NOT NULL,
  `photo_name` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `photography_app_addphoto`
--

INSERT INTO `photography_app_addphoto` (`id`, `photo_name`, `description`, `price`, `image`, `user_id`, `status`) VALUES
(1, 'dddd', 'c', '222', 'images (13)_fL6UTHQ.jfif', 2, 'null'),
(2, 'dddd', 'XzX', '1111', 'images (11)_4UOOnDq.jfif', 2, 'null'),
(3, 'ddd', 'SXSXCS', '333', 'images (10)_wwLXdEK.jfif', 2, 'null'),
(4, 'WWWW', 'WWEWDD', '444', 'images (9)_g0cNa63.jfif', 2, 'null'),
(5, 'eeee', 'SDSD', '4444', '7_Wuk7DMn.jpg', 2, 'null'),
(6, 'eeee', 'SSDS', '222', 'images (7)_d1Am3uC.jfif', 2, 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `photography_app_cart`
--

CREATE TABLE IF NOT EXISTS `photography_app_cart` (
`id` int(11) NOT NULL,
  `payment` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `delivery` varchar(100) DEFAULT NULL,
  `photo_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `billstatus` varchar(100) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `photography_app_cart`
--

INSERT INTO `photography_app_cart` (`id`, `payment`, `status`, `delivery`, `photo_id`, `user_id`, `billstatus`) VALUES
(1, 'Order Placed', 'cart', 'paid', 6, 3, 'billview');

-- --------------------------------------------------------

--
-- Table structure for table `photography_app_exhibition`
--

CREATE TABLE IF NOT EXISTS `photography_app_exhibition` (
`id` int(11) NOT NULL,
  `exhi_name` varchar(100) DEFAULT NULL,
  `venue` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time(6) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `photography_app_exhibition`
--

INSERT INTO `photography_app_exhibition` (`id`, `exhi_name`, `venue`, `date`, `time`, `location`, `status`) VALUES
(1, 'photonature', 'world hall', '2222-11-11', '11:11:00.000000', 'malappuram', 'null'),
(2, 'photoworld', 'new hall', '1111-11-11', '11:11:00.000000', 'sdfdf', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `photography_app_photographer`
--

CREATE TABLE IF NOT EXISTS `photography_app_photographer` (
`id` int(11) NOT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `photography_app_photographer`
--

INSERT INTO `photography_app_photographer` (`id`, `contact`, `address`, `user_id`) VALUES
(1, '9061970203', 'gdgd', 2);

-- --------------------------------------------------------

--
-- Table structure for table `photography_app_user`
--

CREATE TABLE IF NOT EXISTS `photography_app_user` (
`id` int(11) NOT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `photography_app_user`
--

INSERT INTO `photography_app_user` (`id`, `contact`, `address`, `user_id`) VALUES
(1, '', 'gdgd', 3);

-- --------------------------------------------------------

--
-- Table structure for table `photography_app_usertype`
--

CREATE TABLE IF NOT EXISTS `photography_app_usertype` (
`id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `photography_app_usertype`
--

INSERT INTO `photography_app_usertype` (`id`, `type`, `user_id`) VALUES
(1, 'photographer', 2),
(2, 'user', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`), ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`), ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`), ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
 ADD PRIMARY KEY (`id`), ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`), ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
 ADD PRIMARY KEY (`session_key`), ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `photography_app_addphoto`
--
ALTER TABLE `photography_app_addphoto`
 ADD PRIMARY KEY (`id`), ADD KEY `photography_app_addphoto_user_id_a1ca2fd9_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `photography_app_cart`
--
ALTER TABLE `photography_app_cart`
 ADD PRIMARY KEY (`id`), ADD KEY `photography_app_cart_photo_id_0b69e761_fk_photograp` (`photo_id`), ADD KEY `photography_app_cart_user_id_11c4cf88_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `photography_app_exhibition`
--
ALTER TABLE `photography_app_exhibition`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photography_app_photographer`
--
ALTER TABLE `photography_app_photographer`
 ADD PRIMARY KEY (`id`), ADD KEY `photography_app_photographer_user_id_5f501126_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `photography_app_user`
--
ALTER TABLE `photography_app_user`
 ADD PRIMARY KEY (`id`), ADD KEY `photography_app_user_user_id_7c48da91_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `photography_app_usertype`
--
ALTER TABLE `photography_app_usertype`
 ADD PRIMARY KEY (`id`), ADD KEY `photography_app_usertype_user_id_bf6f17e6_fk_auth_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `photography_app_addphoto`
--
ALTER TABLE `photography_app_addphoto`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `photography_app_cart`
--
ALTER TABLE `photography_app_cart`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `photography_app_exhibition`
--
ALTER TABLE `photography_app_exhibition`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `photography_app_photographer`
--
ALTER TABLE `photography_app_photographer`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `photography_app_user`
--
ALTER TABLE `photography_app_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `photography_app_usertype`
--
ALTER TABLE `photography_app_usertype`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `photography_app_addphoto`
--
ALTER TABLE `photography_app_addphoto`
ADD CONSTRAINT `photography_app_addphoto_user_id_a1ca2fd9_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `photography_app_cart`
--
ALTER TABLE `photography_app_cart`
ADD CONSTRAINT `photography_app_cart_photo_id_0b69e761_fk_photograp` FOREIGN KEY (`photo_id`) REFERENCES `photography_app_addphoto` (`id`),
ADD CONSTRAINT `photography_app_cart_user_id_11c4cf88_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `photography_app_photographer`
--
ALTER TABLE `photography_app_photographer`
ADD CONSTRAINT `photography_app_photographer_user_id_5f501126_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `photography_app_user`
--
ALTER TABLE `photography_app_user`
ADD CONSTRAINT `photography_app_user_user_id_7c48da91_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `photography_app_usertype`
--
ALTER TABLE `photography_app_usertype`
ADD CONSTRAINT `photography_app_usertype_user_id_bf6f17e6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
