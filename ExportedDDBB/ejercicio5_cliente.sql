CREATE DATABASE  IF NOT EXISTS `ejercicio5` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ejercicio5`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: ejercicio5
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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `nro_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `domicilio` varchar(50) NOT NULL,
  `localidad` varchar(50) NOT NULL,
  PRIMARY KEY (`nro_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'John Smith','Av. Rivadavia 123','La Matanza'),(2,'Maria Rodriguez','Calle Belgrano 456','Lomas de Zamora'),(3,'David Johnson','Av. Mitre 789','Quilmes'),(4,'Laura Garcia','Calle San Martín 321','Morón'),(5,'Michael Brown','Av. Alvear 654','Tigre'),(6,'Emma Davis','Calle Sarmiento 987','Ramos Mejia'),(7,'Daniel Martinez','Av. Pueyrredón 456','Ramos Mejia'),(8,'Sophia Taylor','Calle Moreno 654','Vicente López'),(9,'Christopher Lopez','Av. Maipú 321','San Miguel'),(10,'Olivia Wilson','Calle Dorrego 789','Avellaneda'),(11,'Alexander Smith','Av. Libertador 123','La Plata'),(12,'Emily Johnson','Calle Brown 456','Berazategui'),(13,'James Davis','Av. 9 de Julio 789','Escobar'),(14,'Emma Hernandez','Calle Belgrano 321','Hurlingham'),(15,'William Martinez','Av. Cabildo 654','Ituzaingó'),(16,'Sophia Thompson','Calle Alberdi 987','José C. Paz'),(17,'Oliver Wilson','Av. Santa Fe 123','Lanús'),(18,'Emma Garcia','Calle San Martín 456','Ramos Mejia'),(19,'Daniel Johnson','Av. Mitre 789','Malvinas Argentinas'),(20,'Isabella Smith','Calle Sarmiento 321','Merlo'),(21,'David Hernandez','Av. Pueyrredón 654','Moreno'),(22,'Sophia Davis','Calle Moreno 987','Pilar'),(23,'James Thompson','Av. Maipú 123','Presidente Perón'),(24,'Olivia Garcia','Calle Dorrego 456','San Fernando'),(25,'William Wilson','Av. Libertador 789','San Vicente'),(26,'Emily Hernandez','Calle Brown 321','Ramos Mejia'),(27,'Emma Thompson','Av. 9 de Julio 654','Almirante Brown'),(28,'Daniel Davis','Calle Belgrano 987','Ramos Mejia'),(29,'Isabella Thompson','Av. Cabildo 123','Exaltación de la Cruz'),(30,'Oliver Hernandez','Calle Alberdi 456','Florencio Varela'),(31,'James Davis','Av. Santa Fe 789','Ramos Mejia');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-03  0:23:39
