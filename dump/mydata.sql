-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: Names
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `firstnames`
--

DROP TABLE IF EXISTS `firstnames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `firstnames` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firstnames`
--

LOCK TABLES `firstnames` WRITE;
/*!40000 ALTER TABLE `firstnames` DISABLE KEYS */;
INSERT INTO `firstnames` VALUES (1,'Vasya'),(2,'Petya'),(3,'Kolya'),(4,'Sergey'),(5,'Ivan'),(6,'Alexey'),(7,'Grigory'),(8,'Lev'),(9,'Michael'),(10,'Polina');
/*!40000 ALTER TABLE `firstnames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lastnames`
--

DROP TABLE IF EXISTS `lastnames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lastnames` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lastname` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `lastnames_ibfk_1` FOREIGN KEY (`id`) REFERENCES `firstnames` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lastnames`
--

LOCK TABLES `lastnames` WRITE;
/*!40000 ALTER TABLE `lastnames` DISABLE KEYS */;
INSERT INTO `lastnames` VALUES (1,'Pavlov'),(2,'Popov'),(3,'Creed'),(4,'Miladze'),(5,'Akapyan'),(6,'Tikhonov'),(7,'Kharin'),(8,'Nazarenko'),(9,'Lazutenkov'),(10,'Gagarina');
/*!40000 ALTER TABLE `lastnames` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-25 20:38:02
