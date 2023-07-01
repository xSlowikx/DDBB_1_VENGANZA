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
-- Table structure for table `contraindicacion`
--

DROP TABLE IF EXISTS `contraindicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contraindicacion` (
  `id_contraindicacion` tinyint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id_contraindicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contraindicacion`
--

LOCK TABLES `contraindicacion` WRITE;
/*!40000 ALTER TABLE `contraindicacion` DISABLE KEYS */;
INSERT INTO `contraindicacion` VALUES (1,'Embarazo'),(2,'Lactancia'),(3,'Alergia grave al medicamento'),(4,'Insuficiencia renal crónica'),(5,'Insuficiencia hepática'),(6,'Enfermedad cardíaca grave'),(7,'Trastornos de la coagulación sanguínea'),(8,'Presión arterial incontrolada'),(9,'Enfermedad pulmonar obstructiva crónica (EPOC) avanzada'),(10,'Enfermedades autoinmunes activas'),(11,'Antecedentes de reacción alérgica grave al tratamiento'),(12,'Trastornos psiquiátricos severos'),(13,'Úlceras estomacales o duodenales activas'),(14,'Infecciones graves o sistémicas'),(15,'Historial de eventos trombóticos'),(16,'Cáncer en etapa avanzada'),(17,'Enfermedades neurológicas degenerativas avanzadas'),(18,'Descompensación de diabetes'),(19,'Trastornos del sistema inmunológico'),(20,'Trastornos psicóticos'),(21,'Enfermedades gastrointestinales inflamatorias crónicas'),(22,'Historial de rechazo a tratamientos similares'),(23,'Problemas de cicatrización crónicos'),(24,'Trastornos del sueño graves'),(25,'Insuficiencia cardíaca congestiva grave'),(26,'Enfermedades renales poliquísticas avanzadas'),(27,'Trastornos hematológicos graves'),(28,'Enfermedades del sistema endocrino descompensadas'),(29,'Trastornos de la conducta alimentaria graves'),(30,'Uso de medicamentos contraindicados'),(31,'Trastornos respiratorios graves'),(32,'Antecedentes de reacciones adversas graves a anestesia'),(33,'Enfermedades del sistema musculoesquelético avanzadas'),(34,'Enfermedades inmunosupresoras activas'),(35,'Problemas de audición graves'),(36,'Trastornos oculares graves'),(37,'Fragilidad ósea extrema'),(38,'Historial de abuso de sustancias'),(39,'Enfermedades genéticas raras'),(40,'Trastornos de la coagulación hereditarios'),(41,'Problemas de movilidad severos'),(42,'Enfermedades del sistema nervioso central graves'),(43,'Enfermedades del sistema digestivo avanzadas'),(44,'Trastornos del equilibrio severos'),(45,'Trastornos del sistema linfático'),(46,'Problemas de piel graves'),(47,'Insuficiencia renal terminal'),(48,'Trastornos del sistema circulatorio graves'),(49,'Trastornos del sistema inmunológico primarios'),(50,'Historial de reacciones alérgicas graves a medicamentos');
/*!40000 ALTER TABLE `contraindicacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-01 13:54:08
