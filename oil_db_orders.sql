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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `order_date` date NOT NULL,
  `total_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_status` varchar(50) NOT NULL DEFAULT 'Pending',
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'2024-01-10',3560.00,'Completed'),(2,5,'2024-01-25',1220.00,'Completed'),(3,12,'2024-02-01',9800.00,'Completed'),(4,3,'2024-02-15',1500.00,'Cancelled'),(5,7,'2024-03-05',1525.00,'Completed'),(6,18,'2024-03-20',1500.00,'Pending'),(7,1,'2024-04-01',2040.00,'Completed'),(8,15,'2024-04-10',1500.00,'Completed'),(9,9,'2024-04-22',2400.00,'Completed'),(10,2,'2024-05-01',1500.00,'Completed'),(11,11,'2024-05-15',1500.00,'Completed'),(12,19,'2024-06-01',475.00,'Completed'),(13,4,'2024-06-18',750.00,'Cancelled'),(14,8,'2024-07-01',9800.00,'Completed'),(15,17,'2024-07-15',900.00,'Pending'),(16,6,'2024-07-30',960.00,'Completed'),(17,14,'2024-08-10',1850.00,'Completed'),(18,20,'2024-08-25',455.00,'Completed'),(19,1,'2024-09-05',750.00,'Completed'),(20,10,'2024-09-20',1500.00,'Completed'),(21,13,'2024-10-01',3360.00,'Pending'),(22,5,'2024-10-15',600.00,'Completed'),(23,7,'2024-10-30',170.00,'Completed'),(24,16,'2024-11-10',950.00,'Cancelled'),(25,1,'2024-11-25',7500.00,'Completed'),(26,12,'2024-12-10',750.00,'Completed'),(27,3,'2024-12-25',9800.00,'Completed'),(28,18,'2025-01-05',450.00,'Completed'),(29,9,'2025-01-20',640.00,'Pending'),(30,2,'2025-02-01',1850.00,'Completed'),(31,15,'2025-02-15',560.00,'Completed'),(32,11,'2025-03-01',1200.00,'Cancelled'),(33,19,'2025-03-15',750.00,'Completed'),(34,4,'2025-04-01',175.00,'Completed'),(35,8,'2025-04-15',1500.00,'Pending'),(36,6,'2025-05-01',4850.00,'Completed'),(37,14,'2025-05-15',600.00,'Completed'),(38,20,'2025-06-01',170.00,'Completed'),(39,1,'2025-06-15',950.00,'Completed'),(40,10,'2025-07-01',7500.00,'Completed'),(41,13,'2025-07-15',750.00,'Pending'),(42,5,'2025-08-01',9800.00,'Completed'),(43,7,'2025-08-15',450.00,'Completed'),(44,16,'2025-09-01',640.00,'Cancelled'),(45,1,'2025-09-15',1850.00,'Completed'),(46,12,'2025-10-01',560.00,'Completed'),(47,3,'2025-10-15',1200.00,'Completed'),(48,18,'2025-11-01',750.00,'Completed'),(49,9,'2025-11-15',175.00,'Pending'),(50,2,'2025-12-01',1500.00,'Completed'),(51,15,'2025-12-15',3360.00,'Completed'),(52,1,'2024-01-15',600.00,'Completed'),(53,2,'2024-01-20',170.00,'Completed'),(54,3,'2024-02-05',950.00,'Completed'),(55,4,'2024-02-20',7500.00,'Cancelled'),(56,5,'2024-03-10',750.00,'Completed'),(57,6,'2024-03-25',9800.00,'Pending'),(58,7,'2024-04-05',450.00,'Completed'),(59,8,'2024-04-20',640.00,'Completed'),(60,9,'2024-05-05',1850.00,'Completed'),(61,10,'2024-05-20',560.00,'Completed'),(62,11,'2024-06-05',1200.00,'Completed'),(63,12,'2024-06-20',750.00,'Cancelled'),(64,13,'2024-07-05',175.00,'Completed'),(65,14,'2024-07-20',1500.00,'Pending'),(66,15,'2024-08-05',3000.00,'Completed'),(67,16,'2024-08-20',600.00,'Completed'),(68,17,'2024-09-05',170.00,'Completed'),(69,18,'2024-09-20',950.00,'Completed'),(70,19,'2024-10-05',7500.00,'Pending'),(71,20,'2024-10-20',750.00,'Completed'),(72,1,'2024-11-05',9800.00,'Completed'),(73,2,'2024-11-20',450.00,'Completed'),(74,3,'2024-12-05',640.00,'Cancelled'),(75,4,'2024-12-20',1850.00,'Completed'),(76,5,'2025-01-05',560.00,'Completed'),(77,6,'2025-01-20',1200.00,'Pending'),(78,7,'2025-02-05',750.00,'Completed'),(79,8,'2025-02-20',175.00,'Completed'),(80,9,'2025-03-05',1500.00,'Completed'),(81,10,'2025-03-20',3095.00,'Completed'),(82,11,'2025-04-05',600.00,'Cancelled'),(83,12,'2025-04-20',170.00,'Completed'),(84,13,'2025-05-05',950.00,'Pending'),(85,14,'2025-05-20',7500.00,'Completed'),(86,15,'2025-06-05',750.00,'Completed'),(87,16,'2025-06-20',9800.00,'Completed'),(88,17,'2025-07-05',450.00,'Completed'),(89,18,'2025-07-20',640.00,'Completed'),(90,19,'2025-08-05',1850.00,'Pending'),(91,20,'2025-08-20',560.00,'Completed'),(92,1,'2025-09-05',1200.00,'Completed'),(93,2,'2025-09-20',750.00,'Completed'),(94,3,'2025-10-05',175.00,'Cancelled'),(95,4,'2025-10-20',1500.00,'Completed'),(96,5,'2025-11-05',3000.00,'Completed'),(97,6,'2025-11-20',600.00,'Pending');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-23 15:42:50
