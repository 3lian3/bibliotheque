-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bibliotheque
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `books_editors`
--

DROP TABLE IF EXISTS `books_editors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books_editors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `editors_id` int NOT NULL,
  `books_id` int NOT NULL,
  PRIMARY KEY (`id`,`editors_id`,`books_id`),
  KEY `fk_books_has_editors_editors1_idx` (`editors_id`),
  KEY `fk_books_has_editors_books1_idx` (`books_id`),
  CONSTRAINT `fk_books_has_editors_books1` FOREIGN KEY (`books_id`) REFERENCES `books` (`id`),
  CONSTRAINT `fk_books_has_editors_editors1` FOREIGN KEY (`editors_id`) REFERENCES `editors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_editors`
--

LOCK TABLES `books_editors` WRITE;
/*!40000 ALTER TABLE `books_editors` DISABLE KEYS */;
INSERT INTO `books_editors` VALUES (1,1,1),(2,1,2),(3,1,4),(4,2,1),(5,2,3),(6,2,4),(7,3,1),(8,3,2),(9,3,4),(10,4,4),(11,4,5),(12,4,6),(13,4,8),(14,4,9),(15,5,7),(16,5,9),(17,5,10),(18,5,22),(19,5,37),(20,6,9),(21,6,11),(22,6,13),(23,6,15),(24,6,17),(25,6,20),(26,6,21),(27,6,26),(28,6,28),(29,6,39),(30,7,7),(31,7,10),(32,7,11),(33,7,15),(34,8,11),(35,8,12),(36,8,14),(37,8,16),(38,8,18),(39,9,12),(40,9,16),(41,9,18),(42,9,20),(43,9,39),(44,10,9),(45,10,14),(46,10,16),(47,10,19),(48,10,27),(49,10,28),(50,10,32),(51,10,33),(52,10,41),(53,10,45),(54,11,6),(55,11,8),(56,11,10),(57,11,15),(58,11,18),(59,11,22),(60,11,34),(61,11,35),(62,11,40),(63,12,5),(64,12,12),(65,12,13),(66,12,17),(67,12,28),(68,13,20),(69,13,21),(70,13,22),(71,13,36),(72,13,38),(73,13,41),(74,13,42),(75,13,45),(76,14,23),(77,14,24),(78,14,30),(79,14,31),(80,14,32),(81,15,23),(82,15,24),(83,15,26),(84,15,33),(85,15,40),(86,16,25),(87,16,37),(88,16,38),(89,16,40),(90,17,19),(91,17,35),(92,17,44),(93,18,26),(94,18,27),(95,18,31),(96,18,34),(97,18,43),(98,19,29),(99,19,31),(100,20,19),(101,20,29),(102,20,30),(103,20,36),(104,20,38),(105,20,44);
/*!40000 ALTER TABLE `books_editors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-23 10:30:00
