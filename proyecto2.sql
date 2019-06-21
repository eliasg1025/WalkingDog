
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto2
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.38-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `celular` int(11) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `num_mascotas` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'carlos','las gardenias',50,949550207,'carez_axel@outlook.com',NULL),(2,'alejandro lopez aguilar','La molina 321',24,949550207,'basydepu-3643@yopmail.com',NULL),(3,'paolo','carez',0,0,'',NULL),(4,'','',0,0,'',NULL),(5,'','',0,0,'',NULL),(6,'','',0,0,'',NULL),(7,'carlos','La molina 321',12,938277723,'carloscortezd6@gmail.com',NULL),(9,'','',0,0,'',NULL),(10,'','',0,0,'',NULL),(11,'Manuel Lopez Quispe','',0,0,'',NULL),(12,'','',0,0,'',NULL),(13,'','',0,0,'',NULL),(14,'','',0,0,'',NULL),(15,'','',0,0,'',NULL),(16,'','',0,0,'',NULL),(17,'lolo','',0,0,'',NULL),(18,'','',0,0,'',NULL),(19,'','',0,0,'',NULL),(20,'','',0,0,'',NULL),(21,'','',0,0,'',NULL),(22,'','',0,0,'',NULL),(23,'lucÃ­a','',0,0,'',NULL),(24,'lucÃ­a','',0,0,'',NULL),(25,'','',0,0,'',NULL),(26,'','',0,0,'',NULL),(27,'','',0,0,'',NULL),(28,'','',0,0,'',NULL),(29,'','',0,0,'',NULL),(30,'','',0,0,'',NULL),(31,'','',0,0,'',NULL),(32,'','',0,0,'',NULL),(33,'','',0,0,'',NULL),(34,'','',0,0,'',NULL),(35,'','',0,0,'',NULL),(36,'','',0,0,'',NULL),(37,'','',0,0,'',NULL),(38,'alex','',0,0,'',NULL),(39,'Pedro MartÃ­nez Neira','UrbanizaciÃ³n Las Mercedes Piura',36,989467589,'pedro_iuas@gmail.com',NULL),(40,'Arturo Campos CoveÃ±as','UrbanizaciÃ³n Los cocos ',32,983787287,'arturo_teg@gmail.com',NULL),(41,'','',0,0,'',NULL),(42,'marcos','',0,0,'',NULL),(43,'kieko','La molina 321',24,923882637,'basydepu-3643@yopmail.com',NULL);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mascota`
--

DROP TABLE IF EXISTS `mascota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mascota` (
  `id_mascota` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(10) DEFAULT NULL,
  `raza` varchar(15) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `enfermedad` varchar(30) DEFAULT NULL,
  `cliente_id_cliente` int(11) NOT NULL,
  PRIMARY KEY (`id_mascota`),
  KEY `fk_mascota_cliente1_idx` (`cliente_id_cliente`),
  CONSTRAINT `fk_mascota_cliente1` FOREIGN KEY (`cliente_id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mascota`
--

LOCK TABLES `mascota` WRITE;
/*!40000 ALTER TABLE `mascota` DISABLE KEYS */;
/*!40000 ALTER TABLE `mascota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paseador`
--

DROP TABLE IF EXISTS `paseador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paseador` (
  `idpaseador` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(45) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `anho` int(11) DEFAULT NULL,
  `sexo` varchar(10) DEFAULT NULL,
  `experiencia` tinyint(1) DEFAULT NULL,
  `cant_paseo` int(11) DEFAULT NULL,
  `monto` int(11) DEFAULT NULL,
  `preferencia_tamaño` varchar(45) DEFAULT NULL,
  `descripcion` mediumtext,
  PRIMARY KEY (`idpaseador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paseador`
--

LOCK TABLES `paseador` WRITE;
/*!40000 ALTER TABLE `paseador` DISABLE KEYS */;
/*!40000 ALTER TABLE `paseador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicio_cliente`
--

DROP TABLE IF EXISTS `servicio_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicio_cliente` (
  `idservicio_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `cliente_id_cliente` int(11) NOT NULL,
  PRIMARY KEY (`idservicio_cliente`),
  KEY `fk_servicio_cliente_cliente1_idx` (`cliente_id_cliente`),
  CONSTRAINT `fk_servicio_cliente_cliente1` FOREIGN KEY (`cliente_id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio_cliente`
--

LOCK TABLES `servicio_cliente` WRITE;
/*!40000 ALTER TABLE `servicio_cliente` DISABLE KEYS */;
INSERT INTO `servicio_cliente` VALUES (1,'carlos','cortez Dominguez','carez_axel@outlook.com',1),(2,'alexis','Villegas Martinez','alexis_d65@gmail.com',2),(3,'abel','Aguirre Cueva','cueva_aguirre@gmail.com',3),(4,'lourdes','Alvares Carrillo','lourdes_123@gmail.com',4);
/*!40000 ALTER TABLE `servicio_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicio_paseo`
--

DROP TABLE IF EXISTS `servicio_paseo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicio_paseo` (
  `idservicio_paseo` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `cliente_id_cliente` int(11) NOT NULL,
  `paseador_idpaseador` int(11) NOT NULL,
  PRIMARY KEY (`idservicio_paseo`),
  KEY `fk_servicio_paseo_cliente_idx` (`cliente_id_cliente`),
  KEY `fk_servicio_paseo_paseador1_idx` (`paseador_idpaseador`),
  CONSTRAINT `fk_servicio_paseo_cliente` FOREIGN KEY (`cliente_id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_servicio_paseo_paseador1` FOREIGN KEY (`paseador_idpaseador`) REFERENCES `paseador` (`idpaseador`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio_paseo`
--

LOCK TABLES `servicio_paseo` WRITE;
/*!40000 ALTER TABLE `servicio_paseo` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicio_paseo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zona_paseo`
--

DROP TABLE IF EXISTS `zona_paseo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zona_paseo` (
  `idzona_paseo` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `paseador_idpaseador` int(11) NOT NULL,
  PRIMARY KEY (`idzona_paseo`),
  KEY `fk_zona_paseo_paseador1_idx` (`paseador_idpaseador`),
  CONSTRAINT `fk_zona_paseo_paseador1` FOREIGN KEY (`paseador_idpaseador`) REFERENCES `paseador` (`idpaseador`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zona_paseo`
--

LOCK TABLES `zona_paseo` WRITE;
/*!40000 ALTER TABLE `zona_paseo` DISABLE KEYS */;
/*!40000 ALTER TABLE `zona_paseo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-17 17:59:27
