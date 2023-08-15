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
-- Table structure for table `librarys`
--

DROP TABLE IF EXISTS `librarys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `librarys` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `adress` varchar(150) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `opening_hours` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `librarys`
--

LOCK TABLES `librarys` WRITE;
/*!40000 ALTER TABLE `librarys` DISABLE KEYS */;
INSERT INTO `librarys` VALUES (1,'Bibliothèque historique de la Ville de Paris (BHVP)','24 rue Pavée, Paris 4e','01 44 59 29 40','bhcp@paris.fr','Lundi au samedi de 10h00 - 18h00'),(2,'Bibliothèque Arthur Rimbaud','2 place Baudoyer , Paris 4e','01 44 54 76 70','bibliotheque.arthur-rimbaud@paris.fr','Mardi au vendredi de 13h00 - 18h00 et samedi de 10h00 - 17h00'),(3,'Bibliothèque Buffon','15 Bis rue Buffon, Paris 5e','01 55 43 25 25','bibliotheque.buffon@paris.fr','Mardi au vendedri de 13h00 - 19h00 et samedi de 10h00 - 18h00'),(4,'Bibliothèque André Malraux','112 rue de Rennes, Paris 6e','01 45 44 53 85','bibliotheque.andre-malraux@paris.fr','Mardi au vendedri de 13h00 - 19h00 et samedi de 10h00 - 18h00'),(5,'Bibliothèque Courcelles','17ter, avenue Beaucour, Paris 8e','01 47 63 22 81','bibliotheque.courcelles@paris.fr','Mardi au vendedri de 14h00 - 18h00 et samedi de 14h00 - 18h00');
/*!40000 ALTER TABLE `librarys` ENABLE KEYS */;
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
