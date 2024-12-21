CREATE DATABASE  IF NOT EXISTS `rail_ticketing_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `rail_ticketing_db`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: rail_ticketing_db
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `via_details`
--

DROP TABLE IF EXISTS `via_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `via_details` (
  `Details_id` int NOT NULL,
  `Train_code` varchar(20) DEFAULT NULL,
  `via_station_code` varchar(20) DEFAULT NULL,
  `km_from_origin` decimal(10,2) DEFAULT NULL,
  `Reach_time` time DEFAULT NULL,
  PRIMARY KEY (`Details_id`),
  KEY `Train_code` (`Train_code`),
  CONSTRAINT `via_details_ibfk_1` FOREIGN KEY (`Train_code`) REFERENCES `train` (`Train_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `via_details`
--

LOCK TABLES `via_details` WRITE;
/*!40000 ALTER TABLE `via_details` DISABLE KEYS */;
INSERT INTO `via_details` VALUES (1,'T001','ST03',80.00,'08:30:00'),(2,'T001','ST04',130.00,'09:00:00'),(3,'T002','ST03',100.00,'09:30:00'),(4,'T002','ST04',150.00,'10:00:00'),(5,'T003','ST05',180.00,'10:30:00'),(6,'T001','ST05',180.00,'10:00:00'),(7,'T002','ST05',200.00,'10:30:00'),(8,'T003','ST03',220.00,'11:00:00');
/*!40000 ALTER TABLE `via_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-13 14:47:36
