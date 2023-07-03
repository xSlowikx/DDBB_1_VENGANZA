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
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `cuil_persona` bigint NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `edad` tinyint NOT NULL,
  `cuil_madre` bigint DEFAULT NULL,
  `id_rango_etario` tinyint NOT NULL,
  PRIMARY KEY (`cuil_persona`),
  KEY `fk_cuil_madre` (`cuil_madre`),
  KEY `fk_id_rango_etario_idx` (`id_rango_etario`),
  CONSTRAINT `fk_cuil_madre` FOREIGN KEY (`cuil_madre`) REFERENCES `persona` (`cuil_persona`),
  CONSTRAINT `fk_rango_etario` FOREIGN KEY (`id_rango_etario`) REFERENCES `rango_etario` (`id_rango_etario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (201239786,'Gabriela','Gómez',38,NULL,6),(2012345789,'María','Rodríguez',35,NULL,6),(2012349788,'Laura','Fernández',32,NULL,6),(2012354787,'Ana','López',40,NULL,6),(19278279337,'Luis','Romero',30,NULL,6),(20123446177,'Adriana','Herrera',31,NULL,6),(20123446781,'Camila','Acosta',36,NULL,6),(20123455876,'Paula','Ríos',44,NULL,7),(20123456700,'Juan','García',10,22389825768,3),(20123456778,'Verónica','Castro',8,NULL,3),(20123456780,'Lucía','Torres',34,NULL,6),(20123456782,'Florencia','Ramírez',42,NULL,7),(20123456785,'Carolina','Martínez',37,NULL,6),(20123456800,'María','Rodríguez',5,2012345789,2),(20123456900,'Carlos','Martínez',15,22345345896,4),(20123457000,'Laura','Fernández',12,22389825768,3),(20123457100,'Ana','López',18,22345345896,5),(20123457200,'Gabriel','Gómez',7,2012345789,3),(20123457300,'Sofía','Pérez',9,2012345789,3),(20123457400,'Luis','González',14,22345345896,4),(20123457500,'Martina','Silva',11,22389825768,3),(20123457600,'Diego','Sánchez',16,22345345896,4),(20123457700,'Lucía','Ramírez',19,22345345896,5),(20123457800,'Federico','Acosta',8,2012345789,3),(20123457900,'Valentina','Torres',13,2012345789,4),(20123458000,'Javier','Herrera',3,20927836372,2),(20123458100,'Camila','Ríos',17,22345345896,4),(20123458200,'Lucas','Castro',2,20927836372,2),(20123458300,'Valeria','Medina',6,2012345789,3),(20123458400,'Nicolás','Paredes',20,22345345896,5),(20123458500,'Agustina','Ferreyra',4,62827386287,2),(20123458600,'Juan Pablo','Ortega',1,20927836372,2),(20123458700,'Lara','Mendoza',10,22389825768,3),(20123458800,'Ignacio','Molina',5,2012345789,2),(20123458900,'Catalina','Luna',15,22345345896,4),(20123459000,'Mariano','Vargas',12,22389825768,3),(20123459100,'Isabella','Ledesma',18,22345345896,5),(20123459200,'Maximiliano','Ramos',7,2012345789,3),(20123459300,'Renata','Benítez',9,2012345789,3),(20123459400,'Facundo','Ponce',14,2012345789,4),(20123459500,'Celeste','Aguirre',11,22389825768,3),(20123459600,'Iván','Figueroa',16,22345345896,4),(20123459700,'Antonella','Guzmán',19,22345345896,5),(20123459800,'Ezequiel','Cáceres',8,2012345789,3),(20123459900,'Martina','Rosales',13,2012345789,4),(20123460000,'Matías','Soria',3,20927836372,2),(20123460100,'Agustina','Pereyra',17,22345345896,4),(20123460200,'Luciano','Moreno',2,20927836372,2),(20123460300,'Julieta','Cardozo',6,2012345789,3),(20123460400,'Joel','Correa',20,22345345896,5),(20123460500,'Bianca','Lorenzo',4,2012345789,2),(20123460600,'Lucas','Giménez',1,20927836372,2),(20123460700,'Victoria','Villa',10,22389825768,3),(20123460800,'Gonzalo','Santos',5,2012345789,2),(20123460900,'Rocío','Navarro',15,22345345896,4),(20123461000,'Santiago','Maldonado',12,22389825768,3),(20123461100,'Delfina','Romero',18,22345345896,5),(20123461200,'Facundo','Vera',7,2012345789,3),(20123461300,'Jazmín','Juárez',9,2012345789,3),(20123461400,'Bruno','Olivera',14,2012345789,4),(20123461500,'Micaela','Campos',11,22389825768,3),(20123461600,'Luciano','Mansilla',16,22345345896,4),(20123461700,'Martina','Roldán',19,22345345896,5),(20123461800,'Ignacio','Escobar',8,2012345789,3),(20123464979,'Marina','Medina',41,NULL,7),(20123487975,'Silvia','González',45,NULL,7),(20123755484,'Natalia','Sánchez',33,NULL,6),(20398945783,'Valeria','Paredes',39,NULL,6),(20927836372,'Carolina','Perez',35,NULL,6),(22345345896,'Mario','Vargas',34,NULL,6),(22389825768,'Mario','Lopez',29,NULL,6),(28827862892,'Maria','Muñoz',40,NULL,6),(29373827468,'Damian','Garcia',28,28827862892,6),(29389748628,'Raul','Navarro',19,22345345896,5),(29389825768,'Hector','Lopez',39,NULL,6),(29826483628,'Cristian','Avarez',47,NULL,7),(34369642030,'Mario','Vargas',0,20123455876,1),(34876927497,'Esteban','Gomez',52,NULL,8),(36606271673,'Raul','Navarro',0,20123455876,1),(40257257204,'Estefania','Diaz',0,20123455876,1),(48729473937,'Matias','Torres',23,NULL,5),(62827386287,'Ana','Rodriguez',33,NULL,6),(72293936211,'Esteban','Gomez',0,20398945783,1),(74258034643,'Luis','Romero',0,2012345789,1),(78227968102,'Cristian','Avarez',0,2012345789,1),(81467473769,'Pedro','Fernandez',0,62827386287,1),(83589213670,'Mario','Lopez',0,62827386287,1),(89182836386,'Estefania','Diaz',29,NULL,6),(89272818193,'Pedro','Fernandez',19,22345345896,5),(91080571907,'Hector','Lopez',0,20123456780,1),(96565599997,'Ana','Rodriguez',0,20123456780,1);
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-03  3:11:24
