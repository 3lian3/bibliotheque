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
-- Table structure for table `editors`
--

DROP TABLE IF EXISTS `editors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `adress` varchar(150) DEFAULT NULL,
  `country` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editors`
--

LOCK TABLES `editors` WRITE;
/*!40000 ALTER TABLE `editors` DISABLE KEYS */;
INSERT INTO `editors` VALUES (1,'Glénat Manga','92772 Boulogne-Billancourt','FRANCE'),(2,'Ki-oon','2 rue de Saint-Petersbourg 75008 Paris','FRANCE'),(3,'Kurokawa','12 av. d’Italie 75013 Paris','FRANCE'),(4,'Pocket Jeunesse','92 av. de France 75013 Paris','FRANCE'),(5,'Robert Laffont','92 av. France 75013 Paris','FRANCE'),(6,'Hachette Lab','58 rue Jean Bleuzen 92170 Vanves','FRANCE'),(7,'HarperCollins','83 bd Vincent Auriol 75013 Paris','FRANCE'),(8,'XO','190 bis rue Paris 93130 Noisy le Sec','FRANCE'),(9,'Hauteville','60 rue d’Hauteville 75010 Paris','FRANCE'),(10,'Le livre de poche','21 rue Monparnasse 75006 Paris','FRANCE'),(11,'Cherche Midi','92 av. de France 75013 Paris','FRANCE'),(12,'Edition des libertés','316 av. Gustave Charpentier 83370 Saint Aygulf','FRANCE'),(13,'Pocket','92 av. de France 75013 Paris','FRANCE'),(14,'Bragelonne','160 rue Hauteville 75010 Paris','FRANCE'),(15,'Pottermore Publishing','808 street Paul Street, Baltimore, Maryland','ETAT UNIS'),(16,'Christian Bourgois','116 rue Bac 75007 Paris','FRANCE'),(17,'Fance loisir','3 rue Rome 75000 Paris','FRANCE'),(18,'Albin Michel','5 allée Deuxième D B 75015 Paris','FRANCE'),(19,'Paquet','160A route de Florissant Genève','SUISSE'),(20,'Fluide glacial','19 bd Magenta 75010 Paris','FRANCE');
/*!40000 ALTER TABLE `editors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-23 10:29:59
