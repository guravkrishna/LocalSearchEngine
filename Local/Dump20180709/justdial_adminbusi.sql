-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: justdial
-- ------------------------------------------------------
-- Server version	5.7.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adminbusi`
--

DROP TABLE IF EXISTS `adminbusi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminbusi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `subcategory` varchar(45) DEFAULT NULL,
  `day` varchar(100) DEFAULT NULL,
  `open` varchar(20) DEFAULT NULL,
  `close` varchar(45) DEFAULT NULL,
  `content` varchar(45) DEFAULT NULL,
  `link` varchar(45) DEFAULT NULL,
  `linktwo` varchar(45) DEFAULT NULL,
  `map` varchar(1000) DEFAULT NULL,
  `cover` varchar(45) DEFAULT NULL,
  `logo` varchar(45) DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  `img` varchar(45) DEFAULT NULL,
  `gimg` varchar(45) DEFAULT NULL,
  `bimg` varchar(45) DEFAULT NULL,
  `busidate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminbusi`
--

LOCK TABLES `adminbusi` WRITE;
/*!40000 ALTER TABLE `adminbusi` DISABLE KEYS */;
INSERT INTO `adminbusi` VALUES (1,'arati','pawar','sss','9960345975','arati@gmail.com','pune','','pune','Education',NULL,'Monday','','','content','null','null','gmap','Koala.jpg','Koala.jpg',NULL,'Koala.jpg','Koala.jpg','Koala.jpg',NULL),(3,'Nikhil','Kumar','Tgs','9960345975','nikhil@gmail.com','Bangalore','Premium Plus','Bangalore','Hotels & Resorts',NULL,'','01:00 AM','01:00 AM','one and only',NULL,NULL,'mpa','Lighthouse.jpg','Lighthouse.jpg','Lighthouse.jpg','Lighthouse.jpg','Lighthouse.jpg','Lighthouse.jpg',NULL),(4,'Nikhil','Kumar','Tgs','9960345975','nikhil@gmail.com','Bangalore','Premium Plus','Bangalore','Hotels & Resorts',NULL,'','01:00 AM','01:00 AM','one and only',NULL,NULL,'mpa','Lighthouse.jpg','Lighthouse.jpg','Lighthouse.jpg','Lighthouse.jpg','Lighthouse.jpg','Lighthouse.jpg',NULL),(5,'Ravi','JS','Ravi','9960345975','ravi@gmail.com','mumbai','Ultra Premium Plus','Mumbai','Health Care',NULL,'Thursday','01:00 AM','01:00 AM','Hiii',NULL,NULL,'map','Koala.jpg','Lighthouse.jpg','Tulips.jpg','Chrysanthemum.jpg','Koala.jpg','Lighthouse.jpg',NULL),(6,'Arati','Pawar','Pune Gate','9960345975','Arati@gmail.com','','Premium','Pune','Interior Design',NULL,'Monday','02:00 AM','03:00 AM','hoiii','www.ci.om','www.co.in','map','Lighthouse.jpg','Koala.jpg','Tulips.jpg','Lighthouse.jpg','Penguins.jpg','Hydrangeas.jpg',NULL),(7,'Arati','Pawar','Pune Gate','9960345975','Arati@gmail.com','','Premium','Pune','Interior Design',NULL,'Monday','02:00 AM','03:00 AM','hoiii','www.ci.om','www.co.in','map','Lighthouse.jpg','Koala.jpg','Tulips.jpg','Lighthouse.jpg','Penguins.jpg','Hydrangeas.jpg',NULL),(8,'','','','','','','','',NULL,NULL,'Monday','','','','','','','Koala.jpg','Koala.jpg','Lighthouse.jpg','Penguins.jpg','Chrysanthemum.jpg','Desert.jpg',NULL),(9,'','','','','','','','',NULL,NULL,'Monday Tuesday ','','','','','','','Koala.jpg','Lighthouse.jpg','Penguins.jpg','Jellyfish.jpg','Desert.jpg','Hydrangeas.jpg',NULL),(10,'','','','','','','','',NULL,NULL,'Monday Tuesday Wednesday Thursday Friday Saturday ','','','','','','','Lighthouse.jpg','Penguins.jpg','Tulips.jpg','Koala.jpg','Hydrangeas.jpg','Chrysanthemum.jpg',NULL),(11,'Hotel',NULL,'Hotel','9960345975','arati@gmail.com','Pune',NULL,'Pune',NULL,NULL,'Monday Tuesday Wednesday Thursday ',NULL,NULL,'Hotel hotel','www.hotel.com','www.co.in','map','Koala.jpg','family.jpg','Jellyfish.jpg','Lighthouse.jpg','Penguins.jpg','Tulips.jpg',NULL),(12,'Hotel',NULL,'Hotel','9960345975','arati@gmail.com','Pune',NULL,'Pune',NULL,NULL,'Monday Tuesday Wednesday Thursday ',NULL,NULL,'Hotel hotel','www.hotel.com','www.co.in','map','Koala.jpg','family.jpg','Jellyfish.jpg','Lighthouse.jpg','Penguins.jpg','Tulips.jpg',NULL),(13,'ABC','DEF','ABC','9960345975','arati@gmail.com','Pune','Free','pune','Hotels & Resorts',NULL,'Monday ','12:00 AM','12:00 AM','abc abc abc abc','www.co.in','www.co.in','map','Desert.jpg','Jellyfish.jpg','Desert.jpg','Desert.jpg','Desert.jpg','Hydrangeas.jpg','2018-07-06'),(14,'rahul','naik','it bahjajh','798764164546','rahul@gmai9l.com','banhghauh','Free','bangalore','Asia',NULL,'All Days ','10:00 AM','01:00 AM','FABNAL FLHBiwef','FACEBOOK','WHATSAPP','BVAsbndvhkgDHVHD','Jellyfish.jpg','Koala.jpg','Penguins.jpg','Desert.jpg','Tulips.jpg','Chrysanthemum.jpg','2018-07-06'),(15,'Arati','Pawar','Satara','9960345975','arati@gmail.com','pune','Premium','Pune','Education','hotel','All Days ','12:00 AM','01:00 AM','hhaaaa','www','wwww','wwww','Chrysanthemum.jpg','Desert.jpg','Desert.jpg','Desert.jpg','Desert.jpg','Tulips.jpg','2018-07-06'),(16,'nikhil','kumar','ggg','9960345975','arati@gmail.com','pune','Free','Pune','Education','hotel','All Days ','12:00 AM','12:00 AM','hhhhhhhhhhhhhh','ww','ww','dsfs','Jellyfish.jpg','Tulips.jpg','Koala.jpg','Lighthouse.jpg','Lighthouse.jpg','Penguins.jpg','2018-07-07');
/*!40000 ALTER TABLE `adminbusi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-09 17:55:58
