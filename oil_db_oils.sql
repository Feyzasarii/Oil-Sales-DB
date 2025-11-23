-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: oil_db
-- ------------------------------------------------------
-- Server version	8.0.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `oils`
--

DROP TABLE IF EXISTS `oils`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oils` (
  `oil_id` int NOT NULL AUTO_INCREMENT,
  `oil_name` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `viscosity_grade` varchar(20) NOT NULL,
  `application` varchar(50) NOT NULL,
  `package_volume` decimal(5,2) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock_quantity` int NOT NULL,
  PRIMARY KEY (`oil_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oils`
--

LOCK TABLES `oils` WRITE;
/*!40000 ALTER TABLE `oils` DISABLE KEYS */;
INSERT INTO `oils` VALUES (1,'Premium Syn. Engine Oil','Synthetic','5W-30','Engine',5.00,750.00,150),(2,'Standard Engine Oil','Semi-Synthetic','10W-40','Engine',4.00,320.00,250),(3,'Heavy Duty Diesel','Mineral','15W-40','Diesel Engine',20.00,1500.00,80),(4,'Hydraulic ISO 46','Mineral','ISO VG 46','Hydraulic',200.00,9800.00,15),(5,'Synthetic Gear Oil','Synthetic','75W-90','Gearbox',1.00,280.00,300),(6,'Industrial EP 220','Mineral','ISO VG 220','Industrial',20.00,1200.00,100),(7,'Racing Engine Oil','Synthetic','0W-20','High-Performance Engine',1.00,450.00,50),(8,'Automatic Trans. Fluid','Synthetic','ATF','Transmission',1.00,180.00,400),(9,'Low Ash Compressor Oil','Semi-Synthetic','ISO VG 32','Compressor',5.00,600.00,90),(10,'Marine Engine Oil','Mineral','20W-50','Marine Engine',20.00,1850.00,40),(11,'Brake Fluid DOT 4','Synthetic','DOT 4','Brake System',0.50,85.00,500),(12,'High Temp Chain Oil','Synthetic','HT','Industrial',1.00,150.00,200),(13,'General Purpose Oil','Mineral','SAE 30','Small Engine',1.00,95.00,600),(14,'Premium Syn. Engine Oil','Synthetic','5W-30','Engine',1.00,175.00,300),(15,'Hydraulic ISO 68','Mineral','ISO VG 68','Hydraulic',20.00,1500.00,120);
/*!40000 ALTER TABLE `oils` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-23 15:42:49
