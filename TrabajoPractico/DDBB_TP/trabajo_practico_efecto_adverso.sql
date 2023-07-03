CREATE DATABASE  IF NOT EXISTS `trabajo_practico` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `trabajo_practico`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: trabajo_practico
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `efecto_adverso`
--

DROP TABLE IF EXISTS `efecto_adverso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `efecto_adverso` (
  `cod_efecto_adverso` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `nivel_gravedad` tinyint NOT NULL,
  PRIMARY KEY (`cod_efecto_adverso`),
  KEY `fk_nivel_gravedad` (`nivel_gravedad`),
  CONSTRAINT `fk_nivel_gravedad` FOREIGN KEY (`nivel_gravedad`) REFERENCES `gravedad` (`nivel_gravedad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `efecto_adverso`
--

LOCK TABLES `efecto_adverso` WRITE;
/*!40000 ALTER TABLE `efecto_adverso` DISABLE KEYS */;
INSERT INTO `efecto_adverso` VALUES (102345,'Hipotensión',3),(109234,'Lesión de nervios',4),(118363,'Dolor de cabeza',2),(123456,'Náuseas',2),(147852,'Vomitos de sangre',4),(178363,'Trombosis aguda',5),(182837,'Neuropat�a perif�rica',5),(192837,'Problemas de riñonn o higado',4),(203647,'Problemas cardiovasculares',5),(210345,'Desmayo',3),(213456,'Insuficiencia renal',5),(220184,'Alergias o reacciones cutaneas',5),(234567,'Infección de herida',3),(250184,'Neumonia',5),(258741,'Arritmia aguda',5),(283647,'Problemas de vision o audicion',3),(306253,'Problemas respiratorios',5),(321456,'Inflamación',2),(321486,'Exposicion de intestino delgado',3),(321654,'Somnolencia',2),(324567,'Infección del tracto urinario',3),(334568,'Cefalea cronica',3),(345678,'Hemorragia',4),(346253,'Cambios en el estado de animo o depresion',4),(432567,'Problemas de cicatrización',3),(435678,'Trombosis venosa profunda',4),(456789,'Dolor crónico',3),(473636,'Mareos y vertigo',4),(483636,'Problemas �seos',5),(522674,'Problemas cerebrales',5),(543678,'Dehiscencia de herida',4),(546789,'Arritmia cardíaca',4),(567890,'Mareos',1),(582674,'Perdida de apetito o aumento de peso',5),(654789,'Infección respiratoria',3),(654987,'Desgarro de la pared intestinal',4),(657890,'Neumonía',4),(678901,'Confusión',2),(726374,'Reacciones cut�neas graves',5),(736374,'Nauseas y vomitos',3),(737464,'Diarrea o estreñimiento',4),(745637,'Somnolencia o insomnio',5),(765890,'Hematoma en el sitio quirúrgico',3),(767464,'Hipersensibilidad a la luz solar',5),(768901,'Hematomas',2),(789012,'Fiebre',2),(795637,'Problemas musculares',5),(879012,'Dolor de cabeza',1),(890123,'Dificultad respiratoria',4),(901234,'Dolor abdominal',3),(980123,'Vómitos',2);
/*!40000 ALTER TABLE `efecto_adverso` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-03 20:22:50
