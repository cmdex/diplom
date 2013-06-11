/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.6.11-log : Database - db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db`;

/*Table structure for table `clients` */

DROP TABLE IF EXISTS `clients`;

CREATE TABLE `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(250) DEFAULT NULL,
  `last_name` varchar(250) DEFAULT NULL,
  `middle_name` varchar(250) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `add_date` date DEFAULT NULL,
  `add_user_id` int(11) DEFAULT NULL,
  `mobile_tel` varchar(150) DEFAULT NULL,
  `home_tel` varchar(100) DEFAULT NULL,
  `skype` varchar(100) DEFAULT NULL,
  `e_mail` varchar(250) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `adresa` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_clients` (`add_user_id`),
  CONSTRAINT `FK_clients` FOREIGN KEY (`add_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 DELAY_KEY_WRITE=1;

/*Table structure for table `coming` */

DROP TABLE IF EXISTS `coming`;

CREATE TABLE `coming` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_project` int(11) DEFAULT NULL,
  `id_client` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `id_curency` int(11) DEFAULT NULL,
  `id_status` int(11) DEFAULT NULL,
  `pay_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_project` (`id_project`),
  KEY `id_client` (`id_client`),
  KEY `id_status` (`id_status`),
  KEY `id_curency` (`id_curency`),
  CONSTRAINT `coming_ibfk_3` FOREIGN KEY (`id_project`) REFERENCES `projects` (`id`),
  CONSTRAINT `coming_ibfk_4` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id`),
  CONSTRAINT `coming_ibfk_5` FOREIGN KEY (`id_curency`) REFERENCES `curency` (`id`),
  CONSTRAINT `coming_ibfk_6` FOREIGN KEY (`id_status`) REFERENCES `status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Table structure for table `costs` */

DROP TABLE IF EXISTS `costs`;

CREATE TABLE `costs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) DEFAULT NULL,
  `cost` double DEFAULT NULL,
  `type_cost_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `date_cost` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type_cost_id` (`type_cost_id`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `costs_ibfk_1` FOREIGN KEY (`type_cost_id`) REFERENCES `type_costs` (`id`),
  CONSTRAINT `costs_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Table structure for table `curency` */

DROP TABLE IF EXISTS `curency`;

CREATE TABLE `curency` (
  `id` int(11) NOT NULL,
  `curency` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `curency_rate` */

DROP TABLE IF EXISTS `curency_rate`;

CREATE TABLE `curency_rate` (
  `id` int(11) NOT NULL,
  `USD` float DEFAULT NULL,
  `EUR` float DEFAULT NULL,
  `RUB` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 MAX_ROWS=1;

/*Table structure for table `projects` */

DROP TABLE IF EXISTS `projects`;

CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `description` text,
  `creation_date` date DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `creator_id` int(11) NOT NULL,
  `active` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_projects` (`creator_id`),
  KEY `FK_projects_to_clients` (`client_id`),
  CONSTRAINT `FK_projects` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_projects_to_clients` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Table structure for table `status` */

DROP TABLE IF EXISTS `status`;

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `type_costs` */

DROP TABLE IF EXISTS `type_costs`;

CREATE TABLE `type_costs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_costs` varchar(250) DEFAULT NULL,
  `kind` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `last_login` date DEFAULT NULL,
  `permission` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `rate` int(10) DEFAULT NULL,
  `coef` float DEFAULT NULL,
  `mobile_tel` varchar(150) DEFAULT NULL,
  `home_tel` varchar(100) DEFAULT NULL,
  `skype` varchar(100) DEFAULT NULL,
  `e_mail` varchar(250) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `adresa` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Table structure for table `wage` */

DROP TABLE IF EXISTS `wage`;

CREATE TABLE `wage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_first_name` varchar(100) DEFAULT NULL,
  `user_last_name` varchar(100) DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `date_wage` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_first_name` (`user_first_name`),
  KEY `user_last_name` (`user_last_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
