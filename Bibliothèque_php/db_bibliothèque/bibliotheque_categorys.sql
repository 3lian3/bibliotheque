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
-- Table structure for table `categorys`
--

DROP TABLE IF EXISTS `categorys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorys` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `description` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorys`
--

LOCK TABLES `categorys` WRITE;
/*!40000 ALTER TABLE `categorys` DISABLE KEYS */;
INSERT INTO `categorys` VALUES (1,'manga','Manga est un livre de bande dessinée ou un roman graphique japonais . Le terme \"manga\" est utilisé pour décrire les bandes dessinées créées au Japon ou par des créateurs japonais en langue japonaise. La plupart des mangas se conforment à un style développé au Japon à la fin du XIXe siècle. Les mangas se lisent de droite à gauche et sont généralement imprimés en noir et blanc.'),(2,'roman aventure','Un roman d\'aventure est un roman qui se base sur l\'action et multiplie les péripéties. Le héros, souvent masculin, est confronté à une situation périlleuse à laquelle il doit faire face, de façon souvent rocambolesque. Le cadre est souvent hors du commun et les rebondissements inattendus sont à l’ordre du jour. Le roman d\'aventure appartient au domaine de la littérature populaire et a connu son âge d\'or en Europe entre 1850 et 1950¹.'),(3,'roman policier','Un roman policier est un genre littéraire dont l’intrigue est fondée sur l’élucidation d’un crime ou d’un délit, le plus souvent en milieu urbain. Il met en scène un enquêteur, qui peut être un policier, un détective privé, un journaliste, etc. Le genre policier comporte six invariants : le crime ou délit, le mobile, le coupable, la victime, le mode opératoire et l’enquête. Il recouvre beaucoup de types de romans, notamment le roman noir, le roman de suspense et le thriller'),(4,'roman historique','Un roman historique est une œuvre de fiction qui prend pour toile de fond un épisode de l’Histoire. Le romancier recrée l’atmosphère d’une époque disparue et offre au lecteur un univers romanesque ancré dans l’Histoire. Les personnages fictifs croisent des personnages historiques, évoluent dans un cadre minutieusement reconstitué'),(5,'roman amour','Un roman d’amour est un genre littéraire qui met en scène une histoire d’amour entre deux personnages. Les histoires peuvent être dramatiques ou heureuses et les personnages peuvent être hétérosexuels ou homosexuels'),(6,'roman fantastique','Un roman fantasy est un genre littéraire qui se caractérise par la présence d’éléments surnaturels dans un univers imaginaire. Les histoires se déroulent souvent dans des mondes imaginaires peuplés de créatures fantastiques comme les elfes, les nains et les dragons'),(7,'BD','Une bande dessinée (BD) est une forme d’expression artistique qui utilise des images pour raconter une histoire. Les bandes dessinées peuvent être humoristiques ou dramatiques et peuvent être destinées à tous les âges');
/*!40000 ALTER TABLE `categorys` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-23 10:30:01
