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
-- Table structure for table `admincategory`
--

DROP TABLE IF EXISTS `admincategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admincategory` (
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
  `catedate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admincategory`
--

LOCK TABLES `admincategory` WRITE;
/*!40000 ALTER TABLE `admincategory` DISABLE KEYS */;
INSERT INTO `admincategory` VALUES (4,'School','School','9960345975','arati@gmail.com','mumbai','Mumbai','Tuesday Wednesday Thursday Friday ','byeeeeeee','www.school.in','www.school.in','mapppppppppp','Chrysanthemum.jpg','Tulips.jpg','Hydrangeas.jpg','Hydrangeas.jpg','Hydrangeas.jpg','Penguins.jpg','2018-07-05'),(5,'Education','MDV','9960345975','arati@gmail.com','Pune','Pune','All Days ','sssssssssssssssss','www','www','jsakdjsald','Chrysanthemum.jpg','Chrysanthemum.jpg','Lighthouse.jpg','Penguins.jpg','Tulips.jpg','Desert.jpg','2018-07-06'),(6,'Health Care','Health Care','9960345975','arati@gmail.com','Pune','pune','All Days ','hooo','hoosa','nskds','jksdlfds','Koala.jpg','Lighthouse.jpg','Penguins.jpg','Tulips.jpg','Lighthouse.jpg','Lighthouse.jpg','2018-07-07');
/*!40000 ALTER TABLE `admincategory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-09 17:55:56
