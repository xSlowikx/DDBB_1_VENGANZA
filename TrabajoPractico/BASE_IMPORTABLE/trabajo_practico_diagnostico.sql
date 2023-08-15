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
-- Table structure for table `diagnostico`
--

DROP TABLE IF EXISTS `diagnostico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diagnostico` (
  `cie10` varchar(5) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`cie10`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnostico`
--

LOCK TABLES `diagnostico` WRITE;
/*!40000 ALTER TABLE `diagnostico` DISABLE KEYS */;
INSERT INTO `diagnostico` VALUES ('A09.0','Diarrea y gastroenteritis de presunto origen infeccioso, debida a Salmonella'),('B20.9','Infección por el virus de la inmunodeficiencia humana [VIH], sin otra especificación'),('B37.9','Candidiasis, no especificada'),('C16.9','Tumor maligno del estómago, no especificado'),('C44.9','Tumor maligno de la piel, no especificado'),('C50.4','Tumor maligno de la mama, cuadrante superior externo'),('C50.5','Cáncer de mama'),('C50.9','Tumor maligno de la mama, no especificado'),('C67.9','Tumor maligno de la vejiga urinaria, parte no especificada'),('C73','Tumor maligno del tiroides'),('D25.9','Tumor benigno de la mama, no especificado'),('D64.0','Anemia por deficiencia de hierro secundaria a pérdida de sangre aguda (crónica)'),('D64.9','Anemia, no especificada'),('D69.6','Púrpura trombocitopénica autoinmunitaria, no especificada'),('E04.1','Bocio multinodular tóxico'),('E10.9','Diabetes mellitus tipo 1, sin complicaciones'),('E11.5','Diabetes mellitus tipo 2, sin complicaciones'),('E11.9','Artritis reumatoide'),('E66.9','Obesidad, no especificada'),('E78.5','Hiperlipidemia mixta'),('F31.9','Trastorno bipolar, no especificado'),('F32.1','Episodio depresivo mayor, episodio único, leve'),('F32.4','Asma'),('F32.9','Episodio depresivo mayor, sin especificación'),('F33.2','Trastorno depresivo mayor, episodio recurrente grave con síntomas psicóticos'),('F41.1','Trastorno de ansiedad generalizada'),('F41.9','Trastorno de ansiedad, no especificado'),('F43.9','Trastorno de estrés agudo, no especificado'),('F90.0','Trastorno de déficit de atención con hiperactividad'),('F90.9','Trastorno hipercinético, no especificado'),('G20.8','Infarto agudo de miocardio'),('G30.5','Enfermedad de Alzheimer'),('G40.0','Epilepsia del lóbulo temporal'),('G43.9','Migraña, no especificada'),('G47.0','Insomnio intratable'),('G47.8','Otros trastornos del sueño especificados'),('G47.9','Trastorno del sueño no especificado'),('G56.9','Mononeuropatía del miembro superior, no especificada'),('H10.9','Conjuntivitis, no especificada'),('H16.9','Queratitis, no especificada'),('H25.9','Catarata, no especificada'),('H60.9','Otitis media aguda, no especificada'),('H81.9','Trastorno del oído interno, no especificado'),('I10.0','Hipertensión arterial esencial (primaria)'),('I10.9','Hipertensión arterial esencial, no especificada'),('I21.9','Infarto agudo de miocardio, no especificado'),('I25.2','Síndrome de la angina de pecho estable'),('I35.9','Enfermedad de la válvula aórtica, no especificada'),('I48.1','Fibrilación y aleteo auricular paroxísticos'),('I50.0','Insuficiencia cardíaca congestiva'),('I63.9','Infarto cerebral, no especificado'),('I64','Accidente cerebrovascular agudo, no especificado'),('I67.9','Trastorno cerebrovascular no especificado'),('I73.1','Enfermedad arterial periférica de las extremidades inferiores'),('I73.9','Enfermedad vascular periférica, no especificada'),('I84.9','Hemorroides, no especificadas'),('J02.9','Faringitis aguda, no especificada'),('J18.0','Bronconeumonía, no especificada'),('J18.1','Lobular, neumonía sin confirmar bacteriológica o histológicamente'),('J18.9','Neumonía, no especificada'),('J20.9','Bronquitis aguda, no especificada'),('J30.9','Rinitis alérgica, no especificada'),('J44.9','Enfermedad pulmonar obstructiva crónica, no especificada'),('J45.0','Asma con predominio de eosinófilos'),('J45.1','Asma, con (sibilancias) o sin (sibilancias) exacerbación aguda'),('J45.3','Enfermedad renal crónica'),('J45.9','Asma, no especificada'),('K02.9','Caries dental, no especificada'),('K21.9','Enfermedad por reflujo gastroesofágico, sin especificación'),('K26.9','Úlcera gástrica, no especificada como aguda o crónica, sin hemorragia ni perforación'),('K29.6','Gastritis, no especificada'),('K29.7','Gastritis, no especificada'),('K30','Dispepsia'),('K35.9','Apendicitis aguda, no especificada'),('K56.6','Íleo paralítico'),('K80.0','Cálculos de la vesícula biliar con colecistitis'),('K80.1','Cálculos de la vesícula biliar sin colecistitis'),('K85.9','Pancreatitis aguda, no especificada'),('K92.2','Hemorragia gastrointestinal, no especificada'),('L03.9','Celulitis, no especificada'),('L21.5','Trastorno del espectro autista'),('L29.9','Prurito, no especificado'),('L30.9','Dermatitis, no especificada'),('L70.0','Acné vulgar'),('L89.9','Úlcera de pierna, no especificada'),('L97.9','Úlcera de piel, no especificada'),('M05.7','Artritis reumatoide con compromiso de otros órganos y sistemas'),('M16.1','Artrosis de la cadera'),('M16.9','Artrosis de la cadera, no especificada'),('M17.2','Artrosis de la rodilla, compartimento interno'),('M19.9','Artrosis, no especificada'),('M25.5','Dolor articular generalizado'),('M48.4','Estenosis espinal lumbar'),('M48.9','Espondilosis, no especificada'),('M54.5','Dorsalgia (dolor de espalda), región lumbar'),('M54.6','Dorsalgia (dolor de espalda), región lumbo-sacra'),('M79.1','Mialgia'),('M87.0','Osteonecrosis de la mandíbula'),('N13.9','Uropatía obstructiva y por reflujo, no especificada'),('N18.3','Enfermedad renal crónica, etapa 3'),('N18.9','Enfermedad renal crónica, no especificada'),('N19','Insuficiencia renal aguda no especificada'),('N20.9','Cálculo del tracto urinario inferior, no especificado'),('N31.9','Trastorno neuromuscular de la vejiga, no especificado'),('N39.0','Infección del tracto urinario sin especificación'),('N40.0','Hiperplasia benigna de la próstata sin síntomas del tracto urinario inferior'),('N41.0','Prostatitis aguda'),('N44.1','Tumor testicular benigno'),('N48.0','Priapismo'),('N48.9','Trastorno del pene, no especificado'),('N73.1','Salpingitis y ooforitis agudas'),('N73.9','Enfermedad inflamatoria pélvica, no especificada'),('N87.9','Displasia del cuello uterino, no especificada'),('O03.9','Aborto espontáneo, no especificado'),('R05','Tos'),('R07.9','Dolor en la garganta y en el pecho, no especificado'),('R10.4','Dolor abdominal, generalizado'),('R42','Mareo y desvanecimiento'),('R50.9','Fiebre, no especificada'),('R51','Cefalea'),('R56.9','Convulsión y estado de mal no especificados'),('S72.2','Fractura pertrocantérea'),('V10.4','Migraña'),('Z35.3','Anemia ferropénica'),('Z99.5','Diabetes mellitus tipo 2');
/*!40000 ALTER TABLE `diagnostico` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-04  0:41:43
