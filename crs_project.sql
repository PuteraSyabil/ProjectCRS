-- MariaDB dump 10.18  Distrib 10.5.8-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: CRS_project
-- ------------------------------------------------------
-- Server version	10.5.8-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car` (
  `carNo` int(5) NOT NULL AUTO_INCREMENT,
  `model` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateReceived` date DEFAULT NULL,
  `rentStatus` tinyint(1) NOT NULL DEFAULT 0,
  `maintenance` tinyint(1) NOT NULL DEFAULT 0,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`carNo`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES (3,'Honda City','Sedan','2020-12-14',0,0,'blackleaf.jpg','/home/pharveish/utm/sem5/ip/SAK-CRS/build/web/image_car/blackleaf.jpg'),(7,'Proton Waja','Sedan','2021-01-19',0,0,'PROTON_Impian-2001_main.jpg','/home/pharveish/utm/sem5/ip/SAK-CRS/build/web/image_car/PROTON_Impian-2001_main.jpg'),(9,'Nissan Skyline GT-R34','Sports','2021-01-20',0,0,'trust_r34_gtr_dino_dalle_carbonare_23-1200x800.jpg','/home/pharveish/utm/sem5/ip/SAK-CRS/build/web/image_car/trust_r34_gtr_dino_dalle_carbonare_23-1200x800.jpg'),(10,'Proton Wira','Sedan','2021-01-20',0,0,'Proton-Wira-Malaysia-1994d.jpg','/home/pharveish/utm/sem5/ip/SAK-CRS/build/web/image_car/Proton-Wira-Malaysia-1994d.jpg'),(14,'Ford Ranger','SUV','2021-02-03',1,0,'3e2d26f5491f4c23bd121f3e7a121823_750x420.jpeg','/home/pharveish/utm/sem5/ip/SAK-CRS/build/web/image_car/3e2d26f5491f4c23bd121f3e7a121823_750x420.jpeg'),(15,'Toyota Estima','MPV','2021-02-03',1,0,'estima_ogp_01.jpg','/home/pharveish/utm/sem5/ip/SAK-CRS/build/web/image_car/estima_ogp_01.jpg');
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenance`
--

DROP TABLE IF EXISTS `maintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maintenance` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `issue` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timeSent` time NOT NULL,
  `dateSent` date NOT NULL,
  `fk_carNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`mid`),
  KEY `fk_carNo` (`fk_carNo`),
  CONSTRAINT `maintenance_ibfk_1` FOREIGN KEY (`fk_carNo`) REFERENCES `car` (`carNo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance`
--

LOCK TABLES `maintenance` WRITE;
/*!40000 ALTER TABLE `maintenance` DISABLE KEYS */;
/*!40000 ALTER TABLE `maintenance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rent`
--

DROP TABLE IF EXISTS `rent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rent` (
  `rentID` int(11) NOT NULL AUTO_INCREMENT,
  `duration` decimal(5,2) NOT NULL,
  `totalPrice` decimal(5,2) NOT NULL,
  `fk_carNo` int(5) DEFAULT NULL,
  `fk_userID` int(11) DEFAULT NULL,
  `rentDate` date DEFAULT NULL,
  `rentTime` time DEFAULT NULL,
  `currentlyRented` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`rentID`),
  KEY `fk_carNoa` (`fk_carNo`),
  KEY `fk_userIDa` (`fk_userID`),
  CONSTRAINT `fk_carNoa` FOREIGN KEY (`fk_carNo`) REFERENCES `car` (`carNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_userIDa` FOREIGN KEY (`fk_userID`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rent`
--

LOCK TABLES `rent` WRITE;
/*!40000 ALTER TABLE `rent` DISABLE KEYS */;
INSERT INTO `rent` VALUES (11,2.00,20.00,3,7,'2021-01-26','19:49:35',0),(14,2.00,20.00,7,7,'2021-01-30','11:40:36',0),(15,2.00,20.00,10,7,'2021-02-02','09:03:12',0),(17,3.00,30.00,3,7,'2021-02-03','07:16:26',0),(20,2.00,20.00,3,7,'2021-02-03','07:47:27',0),(21,1.00,30.00,9,7,'2021-02-03','07:53:41',0),(24,2.00,40.00,14,6,'2021-02-03','08:59:33',0),(25,4.00,80.00,15,7,'2021-02-03','09:02:35',0),(26,2.00,20.00,3,9,'2021-02-03','15:32:17',0),(27,4.00,40.00,10,9,'2021-02-03','15:32:34',0),(28,1.00,30.00,9,9,'2021-02-03','15:32:48',0),(29,1.00,20.00,14,10,'2021-02-03','15:35:05',1),(30,1.00,20.00,15,10,'2021-02-03','15:35:11',1);
/*!40000 ALTER TABLE `rent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(12) NOT NULL,
  `lastname` varchar(12) NOT NULL,
  `password` varchar(30) NOT NULL,
  `pnum` varchar(255) DEFAULT NULL,
  `ic` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (6,'Putera','Syabil','test123','0123456780','990928146177','putera@example.com'),(7,'Pharveish','Selvam','test1234','0123456781','992810992817','pharveish@example.com'),(9,'Taufiiq','Azman','test1234','0182736271','990012102233','taufiiq@example.com'),(10,'Raja','Aidid','test123','0123456789','990230012233','aidid@example.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useradmin`
--

DROP TABLE IF EXISTS `useradmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useradmin` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useradmin`
--

LOCK TABLES `useradmin` WRITE;
/*!40000 ALTER TABLE `useradmin` DISABLE KEYS */;
INSERT INTO `useradmin` VALUES (0,'ALLEN','test1234');
/*!40000 ALTER TABLE `useradmin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-03 15:36:46
