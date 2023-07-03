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
-- Temporary view structure for view `promedios_adv_xnomenclatura`
--

DROP TABLE IF EXISTS `promedios_adv_xnomenclatura`;
/*!50001 DROP VIEW IF EXISTS `promedios_adv_xnomenclatura`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `promedios_adv_xnomenclatura` AS SELECT 
 1 AS `id_nomenclatura`,
 1 AS `cantidad`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `promedios_ben_xnomenclatura`
--

DROP TABLE IF EXISTS `promedios_ben_xnomenclatura`;
/*!50001 DROP VIEW IF EXISTS `promedios_ben_xnomenclatura`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `promedios_ben_xnomenclatura` AS SELECT 
 1 AS `id_nomenclatura`,
 1 AS `cantidad`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `promedios_adv_xnomenclatura`
--

/*!50001 DROP VIEW IF EXISTS `promedios_adv_xnomenclatura`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `promedios_adv_xnomenclatura` AS select `promedio_efectos_malos`.`id_nomenclatura` AS `id_nomenclatura`,avg(`promedio_efectos_malos`.`cantidad`) AS `cantidad` from (select `tratamiento`.`id_nomenclatura` AS `id_nomenclatura`,count(`produce`.`cod_efecto_adverso`) AS `cantidad` from ((((`tratamiento` join `persona` on((`tratamiento`.`cuil_paciente` = `persona`.`cuil_persona`))) join `nomenclatura` on((`tratamiento`.`id_nomenclatura` = `nomenclatura`.`id_nomenclatura`))) join `produce` on((`tratamiento`.`id_tratamiento` = `produce`.`id_tratamiento`))) join `efecto_adverso` on((`produce`.`cod_efecto_adverso` = `efecto_adverso`.`cod_efecto_adverso`))) where ((`efecto_adverso`.`nivel_gravedad` <= 3) and (`persona`.`edad` < 13)) group by `tratamiento`.`id_tratamiento`,`tratamiento`.`id_nomenclatura`) `promedio_efectos_malos` group by `promedio_efectos_malos`.`id_nomenclatura` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `promedios_ben_xnomenclatura`
--

/*!50001 DROP VIEW IF EXISTS `promedios_ben_xnomenclatura`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `promedios_ben_xnomenclatura` AS select `promedio_efectos_buenos`.`id_nomenclatura` AS `id_nomenclatura`,avg(`promedio_efectos_buenos`.`cantidad`) AS `cantidad` from (select `tratamiento`.`id_nomenclatura` AS `id_nomenclatura`,count(`se_espera`.`id_beneficio`) AS `cantidad` from ((((`tratamiento` join `persona` on((`tratamiento`.`cuil_paciente` = `persona`.`cuil_persona`))) join `nomenclatura` on((`tratamiento`.`id_nomenclatura` = `nomenclatura`.`id_nomenclatura`))) join `se_espera` on((`tratamiento`.`id_tratamiento` = `se_espera`.`id_tratamiento`))) join `beneficio` on((`se_espera`.`id_beneficio` = `beneficio`.`id_beneficio`))) where ((`beneficio`.`id_categoria` >= 3) and (`persona`.`edad` < 13)) group by `tratamiento`.`id_tratamiento`,`tratamiento`.`id_nomenclatura`) `promedio_efectos_buenos` group by `promedio_efectos_buenos`.`id_nomenclatura` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-03  3:11:26
