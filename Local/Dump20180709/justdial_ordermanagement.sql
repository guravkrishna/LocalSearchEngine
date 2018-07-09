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
-- Table structure for table `ordermanagement`
--

DROP TABLE IF EXISTS `ordermanagement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordermanagement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_name` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `shipping_date` varchar(45) DEFAULT NULL,
  `delivery_date` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `mobile_no` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordermanagement`
--

LOCK TABLES `ordermanagement` WRITE;
/*!40000 ALTER TABLE `ordermanagement` DISABLE KEYS */;
INSERT INTO `ordermanagement` VALUES (1,'iphone','mysore','13-july-2014','14-aug-2015','15000','9632562031','manju@gmail.com'),(2,'Innova','bangalore','13-july-2015','14-aug-2016','800000','998756478','rahul@gmail.com'),(3,'royal enfield','belgaum','13-july-2012','14-aug-2013','8000000','998756433','sanju@gmail.com'),(4,'goods','belgaum','13-july-2012','14-aug-2013','8000000','998756433','raj@gmail.com');
/*!40000 ALTER TABLE `ordermanagement` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-09 17:55:59
