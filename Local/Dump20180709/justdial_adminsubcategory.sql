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
-- Table structure for table `adminsubcategory`
--

DROP TABLE IF EXISTS `adminsubcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminsubcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `day` varchar(100) DEFAULT NULL,
  `content` varchar(45) DEFAULT NULL,
  `link` varchar(45) DEFAULT NULL,
  `linktwo` varchar(45) DEFAULT NULL,
  `map` varchar(45) DEFAULT NULL,
  `cover` varchar(45) DEFAULT NULL,
  `logo` varchar(45) DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  `img` varchar(45) DEFAULT NULL,
  `bimg` varchar(45) DEFAULT NULL,
  `gimg` varchar(45) DEFAULT NULL,
  `subcatedate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminsubcategory`
--

LOCK TABLES `adminsubcategory` WRITE;
/*!40000 ALTER TABLE `adminsubcategory` DISABLE KEYS */;
INSERT INTO `adminsubcategory` VALUES (1,'hotel','school','9960345975','arati@gmail.com','Mumbai','Satara','Monday Tuesday ','hmmmmmmmmmmmmmmm trrrrrrrrrrrrrrrrrrrrrrr','www.co.in','www.com.com','google1111111','Chrysanthemum.jpg','Chrysanthemum.jpg','Chrysanthemum.jpg','Chrysanthemum.jpg','Chrysanthemum.jpg','Chrysanthemum.jpg',NULL),(2,'aas','sdsa','9960345975','arati@gmail.com','pun','jk','Monday ','mmkxzmc','wwwwwww','wwww','dsfds','Koala.jpg','Lighthouse.jpg','Lighthouse.jpg','Koala.jpg','Penguins.jpg','Lighthouse.jpg','2018-07-07');
/*!40000 ALTER TABLE `adminsubcategory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-09 17:55:57
