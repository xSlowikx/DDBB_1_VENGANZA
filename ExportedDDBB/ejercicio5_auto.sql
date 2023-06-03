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
-- Table structure for table `auto`
--

DROP TABLE IF EXISTS `auto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auto` (
  `patente` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `año` date NOT NULL,
  PRIMARY KEY (`patente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto`
--

LOCK TABLES `auto` WRITE;
/*!40000 ALTER TABLE `auto` DISABLE KEYS */;
INSERT INTO `auto` VALUES ('AAA123','Toyota Corolla','2022-01-01'),('BBB456','Ford Focus','2021-01-01'),('CCC789','Chevrolet Cruze','2020-01-01'),('DDD012','Honda Civic','2019-01-01'),('EEE345','Volkswagen Golf','2018-01-01'),('FFF678','Renault Megane','2017-01-01'),('GGG901','BMW X5','2016-01-01'),('HHH234','Mercedes-Benz C-Class','2015-01-01'),('III567','Audi A4','2014-01-01'),('JJJ890','Nissan Sentra','2013-01-01'),('KKK123','Kia Sportage','2012-01-01'),('LLL456','Mazda CX-5','2011-01-01'),('MMM789','Subaru Forester','2010-01-01'),('NNN012','Volvo XC60','2009-01-01'),('OOO345','Peugeot 308','2008-01-01'),('PPP678','Fiat Uno','2007-01-01'),('QQQ901','Volkswagen Polo','2006-01-01'),('RRR234','Toyota Hilux','2005-01-01'),('SSS567','Ford Fiesta','2004-01-01'),('TTT890','Chevrolet Agile','2003-01-01'),('ZZZ999','Hyundai Elantra','2010-01-01');
/*!40000 ALTER TABLE `auto` ENABLE KEYS */;
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
