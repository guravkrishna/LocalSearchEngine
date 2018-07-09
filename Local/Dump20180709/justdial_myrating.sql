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
-- Table structure for table `myrating`
--

DROP TABLE IF EXISTS `myrating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myrating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reviewid` varchar(45) DEFAULT NULL,
  `businessid` varchar(45) DEFAULT NULL,
  `businessname` varchar(45) DEFAULT NULL,
  `businessreviewstars` varchar(45) DEFAULT NULL,
  `review_name` varchar(45) DEFAULT NULL,
  `review_mobile` varchar(45) DEFAULT NULL,
  `review_email` varchar(45) DEFAULT NULL,
  `review_city` varchar(45) DEFAULT NULL,
  `review_review` varchar(45) DEFAULT NULL,
  `review_date` varchar(45) DEFAULT NULL,
  `coverimage` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myrating`
--

LOCK TABLES `myrating` WRITE;
/*!40000 ALTER TABLE `myrating` DISABLE KEYS */;
INSERT INTO `myrating` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'tft','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'8','3','gh','gfg','gfg','gfg','fgf','fgf',NULL,'fgf',NULL),(4,'8','1','Bike','Royal showroom','Royal showroom','Royal showroom','908769','royal@gmail.com',NULL,'good',NULL),(5,'8','2','Automobiles','Royal showroom','Royal showroom','Royal showroom','907856','royal@gmail.com',NULL,'good',NULL),(6,'8','2','Automobils','Royal showroom','Royal showroom','Royal showroom','907856','royal@gmail.com',NULL,'good',NULL),(7,'8','2','Automobils','4','Royal showroom','907867','royal@gmail.com',NULL,'good','12-09-2018',NULL),(8,'8','3','Automobiles','4','Royal showroom','907856','royal@gmail.com','Birur','good','12-09-2018',NULL);
/*!40000 ALTER TABLE `myrating` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-09 17:56:01
