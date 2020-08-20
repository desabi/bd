CREATE DATABASE  IF NOT EXISTS `c_datos` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `c_datos`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: c_datos
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
  `idcliente` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fecha_registro` date NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `edad` tinyint(3) unsigned NOT NULL,
  `telefono` bigint(20) unsigned NOT NULL,
  `ciudad` varchar(45) NOT NULL,
  `colonia` varchar(45) NOT NULL,
  PRIMARY KEY (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'2016-05-22','Domingo',27,7571135511,'tlapa','san antonio'),(2,'2017-09-15','eduardo',24,7561127122,'chilapa','agaua salada'),(3,'2018-11-05','efren',20,7471029173,'chilpancingo','san mateo'),(4,'2016-07-14','jesus',22,7571303215,'tlapa','san francisco'),(5,'2017-03-15','isabel',30,7561124090,'chilapa','buena vista'),(6,'2018-09-12','ximena',20,7471205030,'chilpancingo','PRI'),(7,'2016-03-21','jose',21,7571119031,'tlapa','las mesas'),(8,'2017-06-01','rogelio',30,7564751596,'chilapa','ampliacion los pinos'),(9,'2018-01-02','ana ',22,7474714808,'chilpancingo','10 de abril'),(10,'2016-02-03','juan',22,7574773404,'tlapa','peligro'),(11,'2017-07-07','pedro',27,7561067901,'chilapa','buena vista'),(12,'2018-09-01','jose',29,7471061140,'chilpancingo','san mateo'),(13,'2016-12-13','talia',30,7571204932,'tlapa','tepeyac'),(14,'2017-06-18','dalia',27,7561110263,'chilapa','4 caminos'),(15,'2018-02-15','olga',26,747396000,'chilpancingo','acatlan centro');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleado` (
  `idempleado` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `departamento` varchar(45) NOT NULL,
  `hora_entrada` time NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `horas_trabajadas` tinyint(3) unsigned NOT NULL,
  `sueldo_por_hora` decimal(5,2) unsigned NOT NULL,
  `fecha_contratacion` date NOT NULL,
  `correo` varchar(45) NOT NULL,
  `profesion` varchar(45) NOT NULL,
  PRIMARY KEY (`idempleado`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'gerencia','08:00:00','juan',8,999.00,'2016-05-21','juan9@hotmail.com','contador'),(2,'produccion','07:30:00','lupe',8,850.00,'2016-02-07','lupe3@hotmail.com','ing. sistemas'),(3,'ventas','07:30:00','carlos',5,750.00,'2017-08-11','carlos@gmail.com','lic. en derecho'),(4,'ventas','07:00:00','odalis',5,150.00,'2016-03-24','oda11@gmail.com','lic.en derecho'),(5,'produccion','09:00:00','lourdes',9,80.00,'2017-07-02','L1503@gmail.com','maestra'),(6,'administraccion','08:00:00','gilberto',7,100.00,'2016-01-14','gil@gmail.com','contador'),(7,'gerencia','09:00:00','victor',8,90.00,'2017-02-08','vi@gmail.com','ing. en sistemas'),(8,'gerencia','07:00:00','tali',10,100.00,'2017-12-03','tali033@gmail.com','ing. en sistemas'),(9,'produccion','07:00:00','manuel',10,90.00,'2016-11-05','manuel@gmail.com','ing. industrial'),(10,'ventas','08:00:00','jesus',6,70.00,'2016-08-09','jesus16@gmail.com','administrador'),(11,'adminitracion','09:00:00','daniel',10,110.00,'2017-05-11','daniel05@gmail.com','contador'),(12,'gerencia','08:00:00','jose',7,80.00,'2017-01-03','jose7@gmail.com','administrador de empresas'),(13,'produccion','08:00:00','raul',6,90.00,'2016-04-20','raul@gmail.com','ing.en sistemas'),(14,'ventas','08:00:00','david',5,100.00,'2017-03-29','david@gmail.com','lic. en mercadotecnia'),(15,'admistracion','08:00:00','luis',6,150.00,'2017-01-01','luis@gmail.com','administrador de empresas'),(16,'produccion','08:00:00','juan',9,80.00,'2017-08-09','yury_2020@hotmail.com','ing.sistemas'),(17,'ventas','09:00:00','pablo',5,150.00,'2017-07-02','chefo_1993@hotmail.com','contador'),(18,'administracion','08:00:00','pedro',2,110.00,'2017-02-07','tlapa_1990@hotmail.com','lic. administracion'),(19,'gerencia','07:00:00','luis',4,100.00,'2017-04-01','gchef2017@hotmail.com','lic. en ingles'),(20,'administracion','08:00:00','leti',7,500.00,'2017-09-01','le@live.com','contadora');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona` (
  `idpersona` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `edad` tinyint(3) unsigned NOT NULL,
  `peso` decimal(3,1) unsigned NOT NULL,
  `estatura` decimal(3,2) unsigned NOT NULL,
  PRIMARY KEY (`idpersona`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'pedro',22,45.0,1.42),(2,'jacobo',30,51.0,1.30),(3,'mario',19,41.0,1.46),(4,'yuli',20,36.0,1.24),(5,'meli',24,40.0,1.32),(6,'juan',25,64.0,1.70),(7,'luis',15,50.0,1.60),(8,'lucas',20,60.0,1.65),(9,'maximiliano',30,55.0,1.70),(10,'cristian',18,60.0,1.68),(11,'jessica',26,55.0,1.55),(12,'brenda',27,70.0,1.88),(13,'nelva',29,65.0,1.60),(14,'cecilia',24,60.0,1.58),(15,'mishell',18,50.0,1.54),(16,'mariana',52,66.0,1.40),(17,'trinidad',37,53.0,1.48),(18,'jesus',25,60.0,1.63),(19,'adriana',23,54.0,1.58),(20,'abril',13,16.0,1.30),(21,'juan',21,30.0,1.30),(22,'jesus',19,28.0,1.15),(23,'pedro',12,21.0,1.12),(24,'luis',25,33.0,1.33),(25,'flores',22,31.0,1.30);
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

-- Dump completed on 2018-09-27 10:03:25
