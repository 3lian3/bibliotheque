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
-- Table structure for table `books_librarys`
--

DROP TABLE IF EXISTS `books_librarys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books_librarys` (
  `id` int NOT NULL AUTO_INCREMENT,
  `books_id` int NOT NULL,
  `librarys_id` int NOT NULL,
  PRIMARY KEY (`id`,`books_id`,`librarys_id`),
  KEY `fk_books_has_librarys_librarys1_idx` (`librarys_id`),
  KEY `fk_books_has_librarys_books1_idx` (`books_id`),
  CONSTRAINT `fk_books_has_librarys_books1` FOREIGN KEY (`books_id`) REFERENCES `books` (`id`),
  CONSTRAINT `fk_books_has_librarys_librarys1` FOREIGN KEY (`librarys_id`) REFERENCES `librarys` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_librarys`
--

LOCK TABLES `books_librarys` WRITE;
/*!40000 ALTER TABLE `books_librarys` DISABLE KEYS */;
INSERT INTO `books_librarys` VALUES (1,1,1),(2,1,1),(3,1,1),(22,6,1),(30,8,1),(34,9,1),(37,10,1),(41,11,1),(45,12,1),(48,13,1),(56,15,1),(60,16,1),(64,17,1),(68,18,1),(73,19,1),(74,20,1),(78,21,1),(83,22,1),(87,23,1),(91,24,1),(98,26,1),(101,27,1),(106,28,1),(110,29,1),(113,30,1),(117,31,1),(124,33,1),(127,34,1),(132,35,1),(143,38,1),(148,39,1),(152,40,1),(157,41,1),(162,42,1),(165,43,1),(170,44,1),(172,45,1),(4,1,2),(5,2,2),(6,2,2),(7,2,2),(8,2,2),(9,2,2),(23,6,2),(27,7,2),(31,8,2),(35,9,2),(42,11,2),(46,12,2),(49,13,2),(53,14,2),(57,15,2),(61,16,2),(69,18,2),(75,20,2),(79,21,2),(84,22,2),(95,25,2),(99,26,2),(102,27,2),(111,29,2),(114,30,2),(118,31,2),(120,32,2),(125,33,2),(128,34,2),(133,35,2),(136,36,2),(144,38,2),(153,40,2),(158,41,2),(167,43,2),(171,45,2),(10,3,3),(11,3,3),(12,3,3),(13,3,3),(14,3,3),(24,6,3),(28,7,3),(36,9,3),(39,10,3),(43,11,3),(47,12,3),(50,13,3),(54,14,3),(62,16,3),(66,17,3),(70,18,3),(76,20,3),(80,21,3),(88,23,3),(92,24,3),(100,26,3),(103,27,3),(107,28,3),(112,29,3),(119,31,3),(121,32,3),(126,33,3),(129,34,3),(134,35,3),(137,36,3),(140,37,3),(145,38,3),(151,39,3),(154,40,3),(159,41,3),(163,42,3),(168,44,3),(15,4,4),(16,4,4),(17,4,4),(18,4,4),(25,6,4),(29,7,4),(33,8,4),(40,10,4),(44,11,4),(51,13,4),(55,14,4),(59,15,4),(63,16,4),(65,17,4),(72,19,4),(81,21,4),(85,22,4),(89,23,4),(93,24,4),(96,25,4),(104,27,4),(108,28,4),(115,30,4),(122,32,4),(130,34,4),(135,35,4),(138,36,4),(141,37,4),(146,38,4),(150,39,4),(155,40,4),(160,41,4),(164,42,4),(169,44,4),(173,45,4),(19,5,5),(20,5,5),(21,5,5),(26,7,5),(32,8,5),(38,10,5),(52,14,5),(58,15,5),(67,18,5),(71,19,5),(77,20,5),(82,21,5),(86,22,5),(90,23,5),(94,24,5),(97,25,5),(105,27,5),(109,28,5),(116,30,5),(123,32,5),(131,34,5),(139,36,5),(142,37,5),(147,38,5),(149,39,5),(156,40,5),(161,41,5),(166,43,5),(174,45,5);
/*!40000 ALTER TABLE `books_librarys` ENABLE KEYS */;
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
