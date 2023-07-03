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
-- Table structure for table `profesional`
--

DROP TABLE IF EXISTS `profesional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesional` (
  `cuil_profesional` bigint NOT NULL,
  `matricula_provincial` varchar(20) NOT NULL,
  `matricula_nacional` varchar(20) NOT NULL,
  `contacto_celular` int NOT NULL,
  `contacto_email` varchar(50) NOT NULL,
  `contacto_cod_post` smallint NOT NULL,
  PRIMARY KEY (`cuil_profesional`),
  CONSTRAINT `fk_cuil_profesional` FOREIGN KEY (`cuil_profesional`) REFERENCES `persona` (`cuil_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesional`
--

LOCK TABLES `profesional` WRITE;
/*!40000 ALTER TABLE `profesional` DISABLE KEYS */;
INSERT INTO `profesional` VALUES (201239786,'00000574333329288598','00000308746159364232',838657755,'f6fffe4c39@example.com',4823),(2012354787,'00000537323869333903','00000001807156020595',457357782,'651cd67543@example.com',7374),(20123446781,'00000648667391062403','00000635817685756661',309777657,'7a09be9e4e@example.com',6315),(20123455876,'00000777951852211683','00000491644508663233',211930315,'92f36f8363@example.com',4252),(20123456778,'00000860934956801062','00000298328560123525',917954164,'8ff1e64b07@example.com',5675),(20123456782,'00000601746611857550','00000430635636142115',413144538,'77c0c287f7@example.com',2755),(20123456785,'00000436149424348165','00000491659663144181',234865066,'09f81b31ac@example.com',9296),(20123464979,'00000047231693796097','00000240823939666919',156182182,'e568cf609f@example.com',7848),(20123487975,'00000797694884052215','00000991439965545608',607703685,'74aa029c7e@example.com',5850),(20398945783,'00000050793608697870','00000733503306967674',563622165,'144637f4e8@example.com',3973),(28827862892,'00000602380627395939','00000937293453083645',891392872,'e436be1ce0@example.com',3571),(29389825768,'00000594492678152855','00000606278400501495',323122598,'41702b857e@example.com',4239),(29826483628,'00000381124560144845','00000580490050446697',783168942,'1d632f752b@example.com',9931),(34876927497,'00000900999753643757','00000488159443706422',764018189,'4d377b7f3b@example.com',9182);
/*!40000 ALTER TABLE `profesional` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-03  3:11:25
