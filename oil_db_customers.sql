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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `registration_date` date NOT NULL,
  `city` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Ali','Demir','ali.d@mail.com','2024-01-05','Istanbul'),(2,'Banu','Kaya','banu.k@mail.com','2024-02-12','Ankara'),(3,'Can','Özkan','can.o@mail.com','2024-03-21','Izmir'),(4,'Deniz','Çelik','deniz.c@mail.com','2024-04-01','Bursa'),(5,'Eren','Yılmaz','eren.y@mail.com','2024-05-10','Antalya'),(6,'Funda','Aydın','funda.a@mail.com','2024-06-18','Gaziantep'),(7,'Gökhan','Kılıç','gokhan.k@mail.com','2024-07-25','Adana'),(8,'Hilal','Arslan','hilal.a@mail.com','2024-08-08','Konya'),(9,'İsmail','Doğan','ismail.d@mail.com','2024-09-17','Kayseri'),(10,'Jale','Kara','jale.k@mail.com','2024-10-29','Samsun'),(11,'Kemal','Güneş','kemal.g@mail.com','2024-11-03','Mersin'),(12,'Lale','Tunç','lale.t@mail.com','2024-12-14','Eskişehir'),(13,'Mert','Yücel','mert.y@mail.com','2025-01-09','Tekirdağ'),(14,'Nevin','Sevinç','nevin.s@mail.com','2025-02-28','Muğla'),(15,'Ozan','Özdemir','ozan.o@mail.com','2025-03-05','Denizli'),(16,'Pınar','Taş','pinar.t@mail.com','2025-04-16','Sakarya'),(17,'Rıfat','Uçar','rifat.u@mail.com','2025-05-22','Aydın'),(18,'Seda','Erdoğan','seda.e@mail.com','2025-06-07','Ordu'),(19,'Tolga','Şimşek','tolga.s@mail.com','2025-07-19','Istanbul'),(20,'Vildan','Tekin','vildan.t@mail.com','2025-08-30','Ankara');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
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
