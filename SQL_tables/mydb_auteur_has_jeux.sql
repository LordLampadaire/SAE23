CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `auteur_has_jeux`
--

DROP TABLE IF EXISTS `auteur_has_jeux`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auteur_has_jeux` (
  `Auteur_idAuteur` int NOT NULL,
  `Jeux_idJeux` int NOT NULL,
  `Jeux_Categorie_idCategorie` int NOT NULL,
  PRIMARY KEY (`Auteur_idAuteur`,`Jeux_idJeux`,`Jeux_Categorie_idCategorie`),
  KEY `fk_Auteur_has_Jeux_Jeux1_idx` (`Jeux_idJeux`,`Jeux_Categorie_idCategorie`),
  KEY `fk_Auteur_has_Jeux_Auteur1_idx` (`Auteur_idAuteur`),
  CONSTRAINT `fk_Auteur_has_Jeux_Auteur1` FOREIGN KEY (`Auteur_idAuteur`) REFERENCES `auteur` (`idAuteur`),
  CONSTRAINT `fk_Auteur_has_Jeux_Jeux1` FOREIGN KEY (`Jeux_idJeux`, `Jeux_Categorie_idCategorie`) REFERENCES `jeux` (`idJeux`, `Categorie_idCategorie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auteur_has_jeux`
--

LOCK TABLES `auteur_has_jeux` WRITE;
/*!40000 ALTER TABLE `auteur_has_jeux` DISABLE KEYS */;
/*!40000 ALTER TABLE `auteur_has_jeux` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-18 14:58:19
