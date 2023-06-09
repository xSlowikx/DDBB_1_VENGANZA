CREATE DATABASE  IF NOT EXISTS `ejercicio3` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ejercicio3`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: ejercicio3
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
-- Table structure for table `detalle_venta`
--

DROP TABLE IF EXISTS `detalle_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_venta` (
  `nro_factura` int NOT NULL,
  `nro_detalle` int NOT NULL AUTO_INCREMENT,
  `id_producto` int NOT NULL,
  `cantidad` int NOT NULL,
  `precio_unitario` decimal(7,2) NOT NULL,
  PRIMARY KEY (`nro_detalle`,`nro_factura`),
  KEY `fk_id_producto` (`id_producto`),
  KEY `fk_nro_factura_idx` (`nro_factura`),
  CONSTRAINT `fk_id_producto` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`),
  CONSTRAINT `fk_nro_factura` FOREIGN KEY (`nro_factura`) REFERENCES `venta` (`nro_factura`)
) ENGINE=InnoDB AUTO_INCREMENT=269 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_venta`
--

LOCK TABLES `detalle_venta` WRITE;
/*!40000 ALTER TABLE `detalle_venta` DISABLE KEYS */;
INSERT INTO `detalle_venta` VALUES (51,41,35,5,25325.21),(20,57,46,3,14643.90),(101,58,58,1,6829.44),(8,59,27,2,2970.06),(70,60,23,1,1209.84),(1,61,58,7,12595.89),(76,62,38,8,11005.43),(118,63,54,10,8345.41),(138,64,46,3,6486.55),(110,65,40,7,1597.97),(78,66,23,2,20700.62),(33,67,41,2,24904.76),(3,68,47,3,13463.86),(81,69,49,10,16680.15),(75,70,37,1,6888.19),(16,71,58,10,24691.17),(82,72,23,4,9312.85),(80,73,54,2,2366.57),(87,74,59,7,5878.36),(21,75,27,3,18371.48),(147,76,56,3,11002.47),(18,77,39,1,20168.02),(4,78,56,1,16374.80),(111,79,21,2,17447.24),(137,81,58,2,17687.34),(127,82,27,8,10180.13),(126,83,43,8,20851.90),(135,84,21,6,21288.37),(99,85,40,10,8068.65),(56,86,44,2,18706.20),(46,87,35,7,2642.40),(37,88,38,10,14324.39),(143,89,55,7,14606.58),(84,90,58,1,9768.23),(55,91,49,5,23080.34),(125,92,36,2,18685.28),(85,93,26,6,3652.87),(38,94,22,9,23727.51),(6,95,33,8,19573.21),(149,96,46,9,9213.70),(19,97,27,8,12619.54),(132,98,22,8,12793.12),(104,99,33,1,6722.29),(34,100,25,9,20369.04),(35,101,43,4,4021.51),(117,102,43,4,7757.07),(140,103,30,4,3984.80),(83,104,41,2,9343.45),(129,105,29,1,11886.07),(68,106,29,8,22612.60),(64,107,36,2,20084.26),(11,108,37,8,8200.55),(103,109,35,10,13769.09),(134,110,56,9,12112.42),(41,111,54,9,17228.48),(23,112,55,3,15243.33),(48,113,32,7,6297.19),(32,114,31,7,16205.75),(128,115,25,7,18435.95),(109,116,53,9,1321.05),(15,117,36,10,11912.90),(63,118,40,1,1364.10),(49,119,52,9,23479.99),(42,120,25,8,13568.51),(2,121,32,9,15521.22),(45,122,34,9,7347.53),(72,123,51,1,20729.63),(40,124,22,8,15986.92),(97,125,55,5,19253.30),(114,126,36,7,24617.31),(102,127,22,3,5545.76),(51,128,27,3,14993.58),(66,129,32,7,13751.17),(65,130,45,6,19266.98),(130,131,30,9,14076.71),(17,132,28,4,1928.61),(95,133,30,1,10217.37),(98,135,45,10,1489.41),(100,136,29,10,7594.74),(74,137,38,4,11364.87),(24,138,25,3,4132.02),(141,139,51,5,19710.40),(5,140,47,10,21267.16),(131,141,34,1,13191.94),(148,184,35,1,23664.74),(94,185,48,7,5125.39),(17,186,57,10,7083.35),(36,187,32,8,16282.65),(99,188,24,5,3361.57),(64,189,24,2,17294.36),(111,190,53,1,16786.09),(131,191,30,2,7939.70),(45,192,55,4,9951.85),(140,193,49,5,1775.83),(128,194,55,3,13366.29),(76,195,57,1,9355.62),(4,196,48,5,23559.63),(22,197,40,7,20168.63),(117,198,21,8,13380.86),(100,199,38,6,17915.32),(125,201,48,2,11683.73),(108,202,57,3,8251.88),(67,203,56,6,4689.51),(109,204,23,9,4360.12),(80,205,24,1,2192.60),(9,206,22,1,5685.21),(139,207,52,4,7616.67),(102,208,37,3,19833.04),(107,209,33,3,8993.50),(41,210,56,5,11987.82),(25,211,21,8,16201.17),(19,212,58,9,8422.12),(15,213,23,4,16337.89),(104,214,25,7,19634.17),(147,215,21,8,21610.93),(134,216,58,2,18751.62),(87,217,35,7,24634.44),(1,218,23,5,20461.90),(11,219,54,8,7821.88),(138,220,26,9,21279.47),(95,221,47,8,23166.65),(85,222,31,6,2786.76),(149,223,46,10,1441.27),(112,224,25,6,12059.43),(110,225,45,7,9839.92),(113,226,58,6,1589.35),(43,227,38,1,1470.49),(40,228,57,6,22726.72),(115,229,58,10,22434.71),(142,230,47,6,1155.30),(98,231,31,3,10686.50),(96,232,34,5,3727.40),(56,233,33,3,5656.34),(13,234,32,9,11867.85),(103,235,47,1,24706.84),(66,236,58,8,20114.88),(34,237,53,7,2105.95),(23,238,26,6,5374.37),(49,239,35,3,9089.32),(63,241,57,5,9559.43),(35,243,22,2,14006.04),(46,244,33,9,13195.84),(71,245,56,10,1504.30),(12,246,32,4,24056.42),(6,247,49,7,7897.15),(39,248,36,1,2248.56),(136,249,26,6,10662.17),(144,250,33,4,20262.73),(14,251,59,5,9139.36),(78,252,34,7,12054.96),(20,253,29,7,17634.59),(143,254,39,3,1282.80),(54,255,29,10,6490.04),(101,256,30,6,24567.90),(69,257,32,5,10200.58),(77,258,44,8,4713.59),(130,259,37,7,1671.32),(129,260,27,8,2438.51),(83,261,28,8,1955.55),(53,262,23,2,14604.53),(127,263,36,3,7562.29),(132,264,40,7,14660.70),(68,265,22,5,4674.56),(44,266,37,7,22126.11),(126,267,41,10,7875.34),(116,268,41,8,4622.15);
/*!40000 ALTER TABLE `detalle_venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-03  0:23:40
