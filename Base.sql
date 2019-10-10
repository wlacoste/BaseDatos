-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: base
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `automovil`
--

DROP TABLE IF EXISTS `automovil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `automovil` (
  `Chasis` varchar(45) NOT NULL,
  `FechaInicio` datetime DEFAULT NULL,
  `FechaFin` datetime DEFAULT NULL,
  `Eliminado` bit(1) DEFAULT NULL,
  `FechaEliminado` datetime DEFAULT NULL,
  `Pedido_Detalle_Id` int(11) NOT NULL,
  `Pedido_Detalle_modelo_Id` int(11) NOT NULL,
  PRIMARY KEY (`Pedido_Detalle_Id`,`Pedido_Detalle_modelo_Id`,`Chasis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `automovil`
--

LOCK TABLES `automovil` WRITE;
/*!40000 ALTER TABLE `automovil` DISABLE KEYS */;
INSERT INTO `automovil` VALUES ('28199f79','2019-10-07 13:10:16',NULL,_binary '\0',NULL,21,1),('ac0e0884','2019-10-07 13:10:16',NULL,_binary '\0',NULL,21,1),('adb28b4c','2019-10-07 13:10:16',NULL,_binary '\0',NULL,21,1),('c6039fa0','2019-10-07 13:10:16',NULL,_binary '\0',NULL,21,1),('ed79c0c1','2019-10-07 13:10:16',NULL,_binary '\0',NULL,21,1),('38c6fe7c','2019-10-07 13:10:16',NULL,_binary '\0',NULL,21,2),('7c6690bf','2019-10-07 13:10:16',NULL,_binary '\0',NULL,21,2),('9e322704','2019-10-07 13:10:16',NULL,_binary '\0',NULL,21,2),('a53445bc','2019-10-07 13:10:16',NULL,_binary '\0',NULL,21,2),('ec24cf32','2019-10-07 13:10:16',NULL,_binary '\0',NULL,21,2),('3fe05b90','2019-10-07 13:10:17',NULL,_binary '\0',NULL,21,4),('857f010e','2019-10-07 13:10:17',NULL,_binary '\0',NULL,21,4),('9d3af557','2019-10-07 13:10:17',NULL,_binary '\0',NULL,21,4),('b47a4ae1','2019-10-07 13:10:17',NULL,_binary '\0',NULL,21,4),('e77d247f','2019-10-07 13:10:17',NULL,_binary '\0',NULL,21,4),('ed9731f5','2019-10-07 13:10:17',NULL,_binary '\0',NULL,21,4);
/*!40000 ALTER TABLE `automovil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `automovil_estacion`
--

DROP TABLE IF EXISTS `automovil_estacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `automovil_estacion` (
  `Automovil_ID` varchar(45) NOT NULL,
  `Estacion_Id` int(11) NOT NULL,
  `FechaIngresoEstacion` datetime DEFAULT NULL,
  `FechaEgresoEstacion` datetime DEFAULT NULL,
  `Eliminado` bit(1) DEFAULT NULL,
  `FechaEliminado` datetime DEFAULT NULL,
  PRIMARY KEY (`Estacion_Id`,`Automovil_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `automovil_estacion`
--

LOCK TABLES `automovil_estacion` WRITE;
/*!40000 ALTER TABLE `automovil_estacion` DISABLE KEYS */;
INSERT INTO `automovil_estacion` VALUES ('28199f79',1,'2019-10-10 11:28:44',NULL,_binary '\0',NULL);
/*!40000 ALTER TABLE `automovil_estacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concesionario`
--

DROP TABLE IF EXISTS `concesionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `concesionario` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Eliminado` bit(1) DEFAULT NULL,
  `FechaEliminado` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concesionario`
--

LOCK TABLES `concesionario` WRITE;
/*!40000 ALTER TABLE `concesionario` DISABLE KEYS */;
INSERT INTO `concesionario` VALUES (1,'Bogisich-Bergnaum',_binary '','2019-09-11 17:00:26'),(2,'Mills-Murray',_binary '','2019-09-11 17:01:19'),(3,'Renault',_binary '\0',NULL),(4,'Kassulke, Monahan and Schinner',_binary '\0',NULL),(5,'YYY',_binary '\0',NULL),(6,'Kerluke, Predovic and Crona',_binary '\0',NULL),(7,'Homenick, Corwin and Smith',_binary '\0',NULL),(8,'Zieme Inc',_binary '\0',NULL),(9,'Kertzmann-Abernathy',_binary '\0',NULL),(10,'Cartwright, Huel and Aufderhar',_binary '\0',NULL),(11,'Kulas-Smitham',_binary '\0',NULL),(12,'Hilpert Inc',_binary '\0',NULL),(13,'Kris-McCullough',_binary '\0',NULL),(14,'Hagenes-Bauch',_binary '\0',NULL),(15,'Mills-Gislason',_binary '\0',NULL),(16,'McLaughlin-Hilpert',_binary '\0',NULL),(17,'Blick Group',_binary '\0',NULL),(18,'Beer, Pollich and Schuppe',_binary '\0',NULL),(19,'Koelpin-McLaughlin',_binary '\0',NULL),(20,'Brekke, Kozey and Heidenreich',_binary '\0',NULL),(44,'dgdg',_binary '\0',NULL),(55,'aaaaa',_binary '\0',NULL),(66,'bfdf',_binary '\0',NULL),(67,'Brisa',_binary '\0',NULL);
/*!40000 ALTER TABLE `concesionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estacion`
--

DROP TABLE IF EXISTS `estacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `estacion` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `OrdenEstacion` int(11) DEFAULT NULL,
  `LineaMontaje_Id` int(11) DEFAULT NULL,
  `TareaDeterminada_Id` int(11) DEFAULT NULL,
  `Eliminado` bit(1) DEFAULT NULL,
  `FechaEliminado` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estacion`
--

LOCK TABLES `estacion` WRITE;
/*!40000 ALTER TABLE `estacion` DISABLE KEYS */;
INSERT INTO `estacion` VALUES (1,1,1,1,_binary '\0',NULL);
/*!40000 ALTER TABLE `estacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insumo_estacion`
--

DROP TABLE IF EXISTS `insumo_estacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `insumo_estacion` (
  `CantidadConsumida` int(11) DEFAULT NULL,
  `UnidadConsumida` int(11) DEFAULT NULL,
  `Insumos_Id` int(11) NOT NULL,
  `Estacion_Id` int(11) NOT NULL,
  `Eliminado` bit(1) DEFAULT NULL,
  `FechaEliminado` datetime DEFAULT NULL,
  PRIMARY KEY (`Insumos_Id`,`Estacion_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insumo_estacion`
--

LOCK TABLES `insumo_estacion` WRITE;
/*!40000 ALTER TABLE `insumo_estacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `insumo_estacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insumos`
--

DROP TABLE IF EXISTS `insumos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `insumos` (
  `Id` int(11) NOT NULL,
  `Descripcion` varchar(45) DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `Unidad_Id` int(11) NOT NULL,
  `Eliminado` bit(1) DEFAULT NULL,
  `FechaEliminado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insumos`
--

LOCK TABLES `insumos` WRITE;
/*!40000 ALTER TABLE `insumos` DISABLE KEYS */;
INSERT INTO `insumos` VALUES (1,'Pintura',500,2,_binary '','2019-09-11 17:04:38'),(2,'Cables',500,1,_binary '\0',NULL),(3,'Bateria',50,3,_binary '\0',NULL),(4,'Puertas',4,3,_binary '\0',NULL),(5,'Motor',1,3,_binary '\0',NULL),(6,'Llantas',4,3,_binary '\0',NULL),(7,'Radiador',1,3,_binary '\0',NULL),(8,'Cristales',10,3,_binary '\0',NULL),(9,'Chasis',1,3,_binary '\0',NULL),(10,'Cubiertas',4,3,_binary '\0',NULL);
/*!40000 ALTER TABLE `insumos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineamontaje`
--

DROP TABLE IF EXISTS `lineamontaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `lineamontaje` (
  `Id` int(11) NOT NULL,
  `Codigo` varchar(45) DEFAULT NULL,
  `Modelo_id` int(11) DEFAULT NULL,
  `Eliminado` bit(1) DEFAULT NULL,
  `FechaEliminado` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineamontaje`
--

LOCK TABLES `lineamontaje` WRITE;
/*!40000 ALTER TABLE `lineamontaje` DISABLE KEYS */;
INSERT INTO `lineamontaje` VALUES (1,'AAAA',1,_binary '\0',NULL),(2,'BBBB',2,_binary '\0',NULL),(3,'CCCC',3,_binary '\0',NULL),(4,'DDDD',4,_binary '\0',NULL),(5,'EEEE',5,_binary '\0',NULL),(6,'FFFF',6,_binary '\0',NULL),(7,'GGGG',7,_binary '\0',NULL),(8,'HHHH',8,_binary '\0',NULL),(9,'IIII',9,_binary '\0',NULL),(10,'JJJJ',10,_binary '\0',NULL),(11,'KKKK',11,_binary '\0',NULL);
/*!40000 ALTER TABLE `lineamontaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo`
--

DROP TABLE IF EXISTS `modelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `modelo` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Eliminado` bit(1) DEFAULT NULL,
  `FechaEliminado` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo`
--

LOCK TABLES `modelo` WRITE;
/*!40000 ALTER TABLE `modelo` DISABLE KEYS */;
INSERT INTO `modelo` VALUES (1,'718 Boxster',NULL,NULL),(2,'718 Cayman',NULL,NULL),(3,'718 Spyder',NULL,NULL),(4,'918 Spyder',NULL,NULL),(5,'Boxster',NULL,NULL),(6,'Cayenne',NULL,NULL),(7,'Cayman',NULL,NULL),(8,'Macan',NULL,NULL),(9,'Panamera',NULL,NULL),(10,'Taycan',NULL,NULL),(11,'911',NULL,NULL);
/*!40000 ALTER TABLE `modelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pedido` (
  `Id` int(11) NOT NULL,
  `FechaDeVenta` datetime DEFAULT NULL,
  `FechaDeEntrega` datetime DEFAULT NULL,
  `Consecionaria_Id` int(11) NOT NULL,
  `Eliminado` bit(1) DEFAULT NULL,
  `FechaEliminado` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,'2019-09-04 00:00:00','2019-09-30 00:00:00',20,_binary '','2019-09-11 17:05:05'),(2,'2019-09-04 00:00:00','2019-10-07 00:00:00',14,_binary '\0',NULL),(3,'2019-09-04 00:00:00','2019-09-15 00:00:00',19,_binary '\0',NULL),(4,'2019-09-04 00:00:00','2019-09-15 00:00:00',10,_binary '\0',NULL),(5,'2019-09-04 00:00:00','2019-10-09 00:00:00',19,_binary '\0',NULL),(6,'2019-09-04 00:00:00','2019-09-27 00:00:00',1,_binary '\0',NULL),(7,'2019-09-04 00:00:00','2019-09-15 00:00:00',6,_binary '\0',NULL),(8,'2019-09-04 00:00:00','2019-09-28 00:00:00',16,_binary '\0',NULL),(9,'2019-09-04 00:00:00','2019-09-17 00:00:00',15,_binary '\0',NULL),(10,'2019-09-04 00:00:00','2019-09-18 00:00:00',12,_binary '\0',NULL),(11,'2019-09-04 00:00:00','2019-09-22 00:00:00',19,_binary '\0',NULL),(12,'2019-09-04 00:00:00','2019-09-13 00:00:00',15,_binary '\0',NULL),(13,'2019-09-04 00:00:00','2019-10-05 00:00:00',17,_binary '\0',NULL),(14,'2019-09-04 00:00:00','2019-09-16 00:00:00',2,_binary '\0',NULL),(15,'2019-09-04 00:00:00','2019-09-15 00:00:00',13,_binary '\0',NULL),(16,'2019-09-04 00:00:00','2019-10-01 00:00:00',3,_binary '\0',NULL),(17,'2019-09-04 00:00:00','2019-09-19 00:00:00',18,_binary '\0',NULL),(18,'2019-09-04 00:00:00','2019-10-06 00:00:00',18,_binary '\0',NULL),(19,'2019-09-04 00:00:00','2019-10-06 00:00:00',19,_binary '\0',NULL),(20,'2019-09-04 00:00:00','2019-09-13 00:00:00',8,_binary '\0',NULL);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_detalle`
--

DROP TABLE IF EXISTS `pedido_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pedido_detalle` (
  `modelo_Id` int(11) NOT NULL,
  `Pedido_Id` int(11) NOT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `Eliminado` bit(1) DEFAULT NULL,
  `FechaEliminado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_detalle`
--

LOCK TABLES `pedido_detalle` WRITE;
/*!40000 ALTER TABLE `pedido_detalle` DISABLE KEYS */;
INSERT INTO `pedido_detalle` VALUES (1,1,5,_binary '\0',NULL),(3,1,5,_binary '\0',NULL),(4,1,6,_binary '\0',NULL),(1,1,5,_binary '\0',NULL),(3,1,5,_binary '\0',NULL),(4,1,6,_binary '\0',NULL),(1,2,7,_binary '\0',NULL),(2,2,8,_binary '\0',NULL),(4,2,9,_binary '\0',NULL),(5,3,1,_binary '\0',NULL),(6,3,2,_binary '\0',NULL),(3,4,3,_binary '\0',NULL),(1,4,4,_binary '\0',NULL),(7,5,5,_binary '\0',NULL),(9,5,6,_binary '\0',NULL),(5,6,7,_binary '\0',NULL),(5,7,8,_binary '\0',NULL),(3,7,5,_binary '\0',NULL),(6,7,6,_binary '\0',NULL),(1,8,7,_binary '\0',NULL),(6,8,1,_binary '\0',NULL),(4,8,3,_binary '\0',NULL),(3,8,3,_binary '\0',NULL),(2,9,5,_binary '\0',NULL),(4,9,6,_binary '\0',NULL),(5,9,1,_binary '\0',NULL),(2,10,3,_binary '\0',NULL),(3,10,5,_binary '\0',NULL),(5,11,2,_binary '\0',NULL),(6,12,6,_binary '\0',NULL),(7,12,6,_binary '\0',NULL),(4,13,5,_binary '\0',NULL),(2,13,6,_binary '\0',NULL),(8,14,7,_binary '\0',NULL),(10,14,1,_binary '\0',NULL),(6,14,8,_binary '\0',NULL),(6,15,2,_binary '\0',NULL),(4,15,5,_binary '\0',NULL),(7,16,6,_binary '\0',NULL),(2,16,7,_binary '\0',NULL),(7,17,8,_binary '\0',NULL),(5,17,1,_binary '\0',NULL),(4,17,2,_binary '\0',NULL),(3,17,4,_binary '\0',NULL),(5,18,6,_binary '\0',NULL),(6,18,1,_binary '\0',NULL),(3,18,5,_binary '\0',NULL),(4,19,7,_binary '\0',NULL),(6,19,6,_binary '\0',NULL),(7,19,8,_binary '\0',NULL),(8,20,9,_binary '\0',NULL),(5,20,2,_binary '\0',NULL),(3,20,5,_binary '\0',NULL),(1,21,5,_binary '\0',NULL),(2,21,5,_binary '\0',NULL),(4,21,3,_binary '\0',NULL);
/*!40000 ALTER TABLE `pedido_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `proveedor` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `CUIT` varchar(45) DEFAULT NULL,
  `Eliminado` bit(1) DEFAULT NULL,
  `FechaEliminado` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'Gal Pockett','20-93969042-9',_binary '','2019-09-11 16:46:46'),(2,'Salvidor Realy','20-61722882-5',_binary '\0',NULL),(3,'Valentin Merrifield','20-38449578-1',_binary '\0',NULL),(4,'Francyne Ambrosoli','20-71805748-5',_binary '\0',NULL),(5,'Shandra Pilmore','20-50538698-4',_binary '\0',NULL),(6,'Deloria Costock','20-65491219-6',_binary '\0',NULL),(7,'Gilly Trower','20-18987008-7',_binary '\0',NULL),(8,'Farrel Troutbeck','20-38956381-7',_binary '\0',NULL),(9,'Zelda Capehorn','20-90725462-5',_binary '\0',NULL),(10,'Dana Beade','20-44383991-2',_binary '\0',NULL),(11,'Dunc Richardet','20-14726722-8',_binary '\0',NULL),(12,'Demetri Cage','20-40672676-6',_binary '\0',NULL),(13,'Simone Fitzackerley','20-32695296-5',_binary '\0',NULL),(14,'Ofelia Faunch','20-11861001-3',_binary '\0',NULL),(15,'Chalmers Seedull','20-91815316-9',_binary '\0',NULL),(16,'Fairlie Howbrook','20-48314681-2',_binary '\0',NULL),(17,'Cori Covotti','20-77291772-4',_binary '\0',NULL),(18,'Gaston Willey','20-85742306-1',_binary '\0',NULL),(88,'jdjd','11111111111',_binary '','2019-09-26 11:12:21');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor_insumos`
--

DROP TABLE IF EXISTS `proveedor_insumos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `proveedor_insumos` (
  `Precio` int(11) DEFAULT NULL,
  `Proveedor_Id` int(11) NOT NULL,
  `Insumos_Id` int(11) NOT NULL,
  `Eliminado` bit(1) DEFAULT NULL,
  `FechaEliminado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor_insumos`
--

LOCK TABLES `proveedor_insumos` WRITE;
/*!40000 ALTER TABLE `proveedor_insumos` DISABLE KEYS */;
INSERT INTO `proveedor_insumos` VALUES (150764,1,1,_binary '\0',NULL),(153000,6,1,_binary '\0',NULL),(140000,9,1,_binary '\0',NULL),(153150,10,1,_binary '\0',NULL),(1500,7,2,_binary '\0',NULL),(1350,6,2,_binary '\0',NULL),(1700,20,2,_binary '\0',NULL),(1230,12,2,_binary '\0',NULL),(4792,14,3,_binary '\0',NULL),(5000,14,3,_binary '\0',NULL),(4000,14,3,_binary '\0',NULL),(4500,14,3,_binary '\0',NULL),(4100,14,4,_binary '\0',NULL),(4650,15,4,_binary '\0',NULL),(4500,13,4,_binary '\0',NULL),(686600,4,5,_binary '\0',NULL),(700600,18,5,_binary '\0',NULL),(590600,7,5,_binary '\0',NULL),(600600,20,5,_binary '\0',NULL),(33000,12,6,_binary '\0',NULL),(30000,19,6,_binary '\0',NULL),(27000,11,6,_binary '\0',NULL),(15000,8,7,_binary '\0',NULL),(12000,9,7,_binary '\0',NULL),(13000,3,7,_binary '\0',NULL),(12200,11,7,_binary '\0',NULL),(24000,11,8,_binary '\0',NULL),(22000,11,8,_binary '\0',NULL),(20000,11,8,_binary '\0',NULL),(14000,11,8,_binary '\0',NULL),(23000,3,9,_binary '\0',NULL),(17000,4,9,_binary '\0',NULL),(27000,6,9,_binary '\0',NULL),(27000,7,9,_binary '\0',NULL),(12000,11,10,_binary '\0',NULL),(13000,11,10,_binary '\0',NULL),(15500,11,10,_binary '\0',NULL),(10400,11,10,_binary '\0',NULL);
/*!40000 ALTER TABLE `proveedor_insumos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tareadeterminada`
--

DROP TABLE IF EXISTS `tareadeterminada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tareadeterminada` (
  `Id` int(11) NOT NULL,
  `Tarea` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tareadeterminada`
--

LOCK TABLES `tareadeterminada` WRITE;
/*!40000 ALTER TABLE `tareadeterminada` DISABLE KEYS */;
INSERT INTO `tareadeterminada` VALUES (1,'Pintura'),(2,'Secado'),(3,'Ensamblaje'),(4,'Conexión'),(5,'Interiores'),(6,'Mandos'),(7,'Motores'),(8,'Ruedas'),(9,'Primer encendido');
/*!40000 ALTER TABLE `tareadeterminada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidad`
--

DROP TABLE IF EXISTS `unidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `unidad` (
  `Id` int(11) NOT NULL,
  `Descripcion` varchar(45) DEFAULT NULL,
  `Eliminado` bit(1) DEFAULT NULL,
  `FechaEliminado` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidad`
--

LOCK TABLES `unidad` WRITE;
/*!40000 ALTER TABLE `unidad` DISABLE KEYS */;
INSERT INTO `unidad` VALUES (1,'Metros',_binary '','2019-09-11 17:04:04'),(2,'Litros',_binary '\0',NULL),(3,'Sin medida',_binary '\0',NULL);
/*!40000 ALTER TABLE `unidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'base'
--
/*!50003 DROP PROCEDURE IF EXISTS `AltaAutomovil` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaAutomovil`(idPedidoParametro INT, out numero int)
BEGIN

DECLARE finished INT DEFAULT 0; 
DECLARE idChasis VARCHAR(45);
DECLARE idModeloParametro INTEGER;
DECLARE nCantidadDetalle INT;
DECLARE nFechaInicio DATETIME;

DECLARE nInsertados INT;


 DECLARE curDetallePedido
        CURSOR FOR
            SELECT modelo_id, Cantidad FROM Pedido_Detalle WHERE Pedido_id = idPedidoParametro;

    DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET finished = 1;
    OPEN curDetallePedido;
    
   -- Aca comienzo el loop recorriendo el cursor.
    getDetalle: LOOP
        IF finished = 1 THEN
            LEAVE getDetalle;
        END IF;
        FETCH curDetallePedido INTO idModeloParametro, nCantidadDetalle;

	SET nInsertados = 0;
Set nFechaInicio = now();
	-- Aca loopeo para hacer N inserts.
	WHILE nInsertados < nCantidadDetalle DO
    SELECT SUBSTRING(MD5(RAND()) FROM 1 FOR 8) INTO idChasis;
	INSERT INTO Automovil
VALUES (IdChasis, nFechaInicio ,null, 0, null, idPedidoParametro, idModeloParametro);

SET nInsertados = nInsertados  +1;

	END WHILE;

    END LOOP getDetalle;

-- Elimino el cursor de memoria

    CLOSE curDetallePedido;
select nInsertados into numero;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaConcesionario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaConcesionario`(Id INT, Nombre VARCHAR (50), OUT Mensaje VARCHAR (50), out Resultado int)
BEGIN
DECLARE cantidad INT;
SELECT COUNT(*)
INTO cantidad FROM Concesionario WHERE Concesionario.Id = Id;
IF (cantidad > 0) THEN
SET Mensaje = 'El Concesionario que desea ingresar ya existe';
SET Resultado = -1;
ELSE 
INSERT INTO Concesionario (Id, Nombre, Eliminado) values (Id, Nombre, 0);
Set Mensaje = 'Se guardó correctamente';
SET Resultado = 0;
END IF;
SELECT Mensaje, Resultado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaDeTareas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaDeTareas`()
BEGIN
INSERT INTO TareaDeterminada values (1, 'Pintura');
INSERT INTO TareaDeterminada values (2, 'Secado');
INSERT INTO TareaDeterminada values (3, 'Ensamblaje');
INSERT INTO TareaDeterminada values (4, 'Conexión');
INSERT INTO TareaDeterminada values (5, 'Interiores');
INSERT INTO TareaDeterminada values (6, 'Mandos');
INSERT INTO TareaDeterminada values (7, 'Motores');
INSERT INTO TareaDeterminada values (8, 'Ruedas');
INSERT INTO TareaDeterminada values (9, 'Primer encendido');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaDeUnidades` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaDeUnidades`()
BEGIN
insert into unidad (Id, Descripcion, Eliminado) values (1, 'Metros',0), (2, "Litros",0), (3, 'Sin medida',0);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaModelo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaModelo`(idLineaMontaje int, nombreModelo varchar(45), out numero int)
BEGIN



DECLARE idModelo int DEFAULT 0;
DECLARE Encontrado INT DEFAULT 0;
DECLARE NombreRep INT DEFAULT 0;

SELECT MAX(Id) FROM modelo
into 
idModelo;
set idModelo = idModelo+1;

select count(Id) from lineamontaje where lineamontaje.Id = idLineaMontaje
into Encontrado;

select count(Nombre) from modelo where modelo.Nombre = nombreModelo
into NombreRep;

if Encontrado = 1 AND NombreRep = 0 then
insert into modelo
values(idModelo,nombreModelo,0,null);

END IF;
    
select idModelo;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaPedidoDetalle` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaPedidoDetalle`()
BEGIN
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (1,1,5,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (3,1,5,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (4,1,6,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (1,2,7,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (2,2,8,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (4,2,9,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (5,3,1,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (6,3,2,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (3,4,3,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (1,4,4,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (7,5,5,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (9,5,6,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (5,6,7,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (5,7,8,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (3,7,5,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (6,7,6,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (1,8,7,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (6,8,1,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (4,8,3,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (3,8,3,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (2,9,5,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (4,9,6,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (5,9,1,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (2,10,3,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (3,10,5,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (5,11,2,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (6,12,6,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (7,12,6,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (4,13,5,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (2,13,6,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (8,14,7,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (10,14,1,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (6,14,8,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (6,15,2,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (4,15,5,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (7,16,6,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (2,16,7,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (7,17,8,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (5,17,1,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (4,17,2,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (3,17,4,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (5,18,6,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (6,18,1,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (3,18,5,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (4,19,7,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (6,19,6,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (7,19,8,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (8,20,9,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (5,20,2,0);
insert into Pedido_Detalle (modelo_Id, Pedido_Id,Cantidad,Eliminado) values  (3,20,5,0);



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltaProveedorInsumos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltaProveedorInsumos`()
BEGIN
insert into proveedor_insumos(Precio,Proveedor_Id,Insumos_Id,Eliminado) values(150764, 1, 1, 0),  (153000, 6, 1, 0), (140000, 9, 1,0), (153150, 10, 1,0),
(1500, 7, 2,0), (1350, 6, 2,0), (1700, 20, 2,0), (1230, 12, 2,0), (4792, 14, 3,0), (5000, 14, 3,0), (4000, 14, 3,0),
(4500, 14, 3,0), (4100, 14, 4,0), (4650, 15, 4,0), (4500, 13, 4,0), (686600, 4, 5,0),
(700600, 18, 5,0),(590600, 7, 5,0),(600600, 20, 5,0), (33000, 12, 6,0),  (30000, 19, 6,0),  (27000, 11, 6,0),
(15000, 8, 7,0), (12000, 9, 7,0), (13000, 3, 7,0), (12200, 11, 7,0),  (24000, 11, 8,0),(22000, 11, 8,0),
(20000, 11, 8,0), (14000, 11, 8,0),  (23000, 3, 9,0),(17000, 4, 9,0),
(27000, 6, 9,0), (27000, 7, 9,0),  (12000, 11, 10,0),(13000, 11, 10,0),
(15500, 11, 10,0), (10400, 11, 10,0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltasDeConcesionario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltasDeConcesionario`()
BEGIN
insert into Concesionario (id, Nombre, Eliminado) values (1, 'Bogisich-Bergnaum',0);
insert into Concesionario (id, Nombre, Eliminado) values (2, 'Mills-Murray',0);
insert into Concesionario (id, Nombre, Eliminado) values (3, 'Hermann-Turner',0);
insert into Concesionario (id, Nombre, Eliminado) values (4, 'Kassulke, Monahan and Schinner',0);
insert into Concesionario (id, Nombre, Eliminado) values (5, 'Metz, Nitzsche and Crist',0);
insert into Concesionario (id, Nombre, Eliminado) values (6, 'Kerluke, Predovic and Crona',0);
insert into Concesionario (id, Nombre, Eliminado) values (7, 'Homenick, Corwin and Smith',0);
insert into Concesionario (id, Nombre, Eliminado) values (8, 'Zieme Inc',0);
insert into Concesionario (id, Nombre, Eliminado) values (9, 'Kertzmann-Abernathy',0);
insert into Concesionario (id, Nombre, Eliminado) values (10, 'Cartwright, Huel and Aufderhar',0);
insert into Concesionario (id, Nombre, Eliminado) values (11, 'Kulas-Smitham',0);
insert into Concesionario (id, Nombre, Eliminado) values (12, 'Hilpert Inc',0);
insert into Concesionario (id, Nombre, Eliminado) values (13, 'Kris-McCullough',0);
insert into Concesionario (id, Nombre, Eliminado) values (14, 'Hagenes-Bauch',0);
insert into Concesionario (id, Nombre, Eliminado) values (15, 'Mills-Gislason',0);
insert into Concesionario (id, Nombre, Eliminado) values (16, 'McLaughlin-Hilpert',0);
insert into Concesionario (id, Nombre, Eliminado) values (17, 'Blick Group',0);
insert into Concesionario (id, Nombre, Eliminado) values (18, 'Beer, Pollich and Schuppe',0);
insert into Concesionario (id, Nombre, Eliminado) values (19, 'Koelpin-McLaughlin',0);
insert into Concesionario (id, Nombre, Eliminado) values (20, 'Brekke, Kozey and Heidenreich',0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltasDeInsumos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltasDeInsumos`()
BEGIN
insert into insumos(Id, descripcion, Cantidad,Unidad_id,Eliminado) values (1, 'Pintura', 500, 2,0), (2, 'Cables', 500, 1,0), (3, 'Bateria', 50, 3,0), 
(4, 'Puertas', 4, 3,0), (5, 'Motor', 1, 3,0), (6, 'Llantas', 4, 3,0), (7, 'Radiador', 1, 3,0), 
(8, 'Cristales', 10, 3,0), (9, 'Chasis',1, 3,0), (10, 'Cubiertas', 4, 3,0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltasDeLineaMontaje` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltasDeLineaMontaje`()
BEGIN
INSERT INTO LineaMontaje Values (1, 'AAAA',1, 0, null);
INSERT INTO LineaMontaje Values (2, 'BBBB',2, 0, null);
INSERT INTO LineaMontaje Values (3, 'CCCC',3, 0, null);
INSERT INTO LineaMontaje Values (4, 'DDDD',4, 0, null);
INSERT INTO LineaMontaje Values (5, 'EEEE',5, 0, null);
INSERT INTO LineaMontaje Values (6, 'FFFF',6, 0, null);
INSERT INTO LineaMontaje Values (7, 'GGGG',7, 0, null);
INSERT INTO LineaMontaje Values (8, 'HHHH',8, 0, null);
INSERT INTO LineaMontaje Values (9, 'IIII',9, 0, null);
INSERT INTO LineaMontaje Values (10, 'JJJJ',10, 0, null);
INSERT INTO LineaMontaje Values (11, 'KKKK',11, 0, null);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltasDeModelo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltasDeModelo`()
BEGIN
INSERT INTO Modelo values (1,'718 Boxster', null, null);
INSERT INTO Modelo values (2,'718 Cayman', null, null);
INSERT INTO Modelo values (3,'718 Spyder', null, null);
INSERT INTO Modelo values (11,'911', null, null);
INSERT INTO Modelo values (4,'918 Spyder', null, null);
INSERT INTO Modelo values (5,'Boxster', null, null);
INSERT INTO Modelo values (6,'Cayenne', null, null);
INSERT INTO Modelo values (7,'Cayman',null, null);
INSERT INTO Modelo values (8,'Macan',null, null);
INSERT INTO Modelo values (9,'Panamera', null, null);
INSERT INTO Modelo values (10,'Taycan', null, null);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltasDePedido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltasDePedido`()
BEGIN
insert into Pedido (id, FechadeVenta, FechaDeEntrega, Consecionaria_Id, Eliminado) values (1, '2019-09-04', '2019-09-30', 20, 0);
insert into Pedido (id, FechadeVenta, FechaDeEntrega, Consecionaria_Id, Eliminado) values (2, '2019-09-04', '2019-10-07', 14, 0);
insert into Pedido (id, FechadeVenta, FechaDeEntrega, Consecionaria_Id, Eliminado) values (3, '2019-09-04', '2019-09-15', 19, 0);
insert into Pedido (id, FechadeVenta, FechaDeEntrega, Consecionaria_Id, Eliminado) values (4, '2019-09-04', '2019-09-15', 10, 0);
insert into Pedido (id, FechadeVenta, FechaDeEntrega, Consecionaria_Id, Eliminado) values (5, '2019-09-04', '2019-10-09', 19, 0);
insert into Pedido (id, FechadeVenta, FechaDeEntrega, Consecionaria_Id, Eliminado) values (6, '2019-09-04', '2019-09-27', 1, 0);
insert into Pedido (id, FechadeVenta, FechaDeEntrega, Consecionaria_Id, Eliminado) values (7, '2019-09-04', '2019-09-15', 6, 0);
insert into Pedido (id, FechadeVenta, FechaDeEntrega, Consecionaria_Id, Eliminado) values (8, '2019-09-04', '2019-09-28', 16, 0);
insert into Pedido (id, FechadeVenta, FechaDeEntrega, Consecionaria_Id, Eliminado) values (9, '2019-09-04', '2019-09-17', 15 ,0);
insert into Pedido (id, FechadeVenta, FechaDeEntrega, Consecionaria_Id, Eliminado) values (10, '2019-09-04', '2019-09-18', 12,0);
insert into Pedido (id, FechadeVenta, FechaDeEntrega, Consecionaria_Id, Eliminado) values (11, '2019-09-04', '2019-09-22', 19,0);
insert into Pedido (id, FechadeVenta, FechaDeEntrega, Consecionaria_Id, Eliminado) values (12, '2019-09-04', '2019-09-13', 15,0);
insert into Pedido (id, FechadeVenta, FechaDeEntrega, Consecionaria_Id, Eliminado) values (13, '2019-09-04', '2019-10-05', 17,0);
insert into Pedido (id, FechadeVenta, FechaDeEntrega, Consecionaria_Id, Eliminado) values (14, '2019-09-04', '2019-09-16', 2,0);
insert into Pedido (id, FechadeVenta, FechaDeEntrega, Consecionaria_Id, Eliminado) values (15, '2019-09-04', '2019-09-15', 13,0);
insert into Pedido (id, FechadeVenta, FechaDeEntrega, Consecionaria_Id, Eliminado) values (16, '2019-09-04', '2019-10-01', 3,0);
insert into Pedido (id, FechadeVenta, FechaDeEntrega, Consecionaria_Id, Eliminado) values (17, '2019-09-04', '2019-09-19', 18,0);
insert into Pedido (id, FechadeVenta, FechaDeEntrega, Consecionaria_Id, Eliminado) values (18, '2019-09-04', '2019-10-06', 18,0);
insert into Pedido (id, FechadeVenta, FechaDeEntrega, Consecionaria_Id, Eliminado) values (19, '2019-09-04', '2019-10-06', 19,0);
insert into Pedido (id, FechadeVenta, FechaDeEntrega, Consecionaria_Id, Eliminado) values (20, '2019-09-04', '2019-09-13', 8,0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AltasDeProveedores` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AltasDeProveedores`()
BEGIN


insert into Proveedor (Id, Nombre, CUIT, Eliminado) values (1, 'Gal Pockett', '20-93969042-9',0);
insert into Proveedor (Id, Nombre, CUIT, Eliminado) values (2, 'Salvidor Realy', '20-61722882-5',0);
insert into Proveedor (Id, Nombre, CUIT, Eliminado) values (3, 'Valentin Merrifield', '20-38449578-1',0);
insert into Proveedor (Id, Nombre, CUIT, Eliminado) values (4, 'Francyne Ambrosoli', '20-71805748-5',0);
insert into Proveedor (Id, Nombre, CUIT, Eliminado) values (5, 'Shandra Pilmore', '20-50538698-4',0);
insert into Proveedor (Id, Nombre, CUIT, Eliminado) values (6, 'Deloria Costock', '20-65491219-6',0);
insert into Proveedor (Id, Nombre, CUIT, Eliminado) values (7, 'Gilly Trower', '20-18987008-7',0);
insert into Proveedor (Id, Nombre, CUIT, Eliminado) values (8, 'Farrel Troutbeck', '20-38956381-7',0);
insert into Proveedor (Id, Nombre, CUIT, Eliminado) values (9, 'Zelda Capehorn', '20-90725462-5',0);
insert into Proveedor (Id, Nombre, CUIT, Eliminado) values (10, 'Dana Beade', '20-44383991-2',0);
insert into Proveedor (Id, Nombre, CUIT, Eliminado) values (11, 'Dunc Richardet', '20-14726722-8',0);
insert into Proveedor (Id, Nombre, CUIT, Eliminado) values (12, 'Demetri Cage', '20-40672676-6',0);
insert into Proveedor (Id, Nombre, CUIT, Eliminado) values (13, 'Simone Fitzackerley', '20-32695296-5',0);
insert into Proveedor (Id, Nombre, CUIT, Eliminado) values (14, 'Ofelia Faunch', '20-11861001-3',0);
insert into Proveedor (Id, Nombre, CUIT, Eliminado) values (15, 'Chalmers Seedull', '20-91815316-9',0);
insert into Proveedor (Id, Nombre, CUIT, Eliminado) values (16, 'Fairlie Howbrook', '20-48314681-2',0);
insert into Proveedor (Id, Nombre, CUIT, Eliminado) values (17, 'Cori Covotti', '20-77291772-4',0);
insert into Proveedor (Id, Nombre, CUIT, Eliminado) values (18, 'Gaston Willey', '20-85742306-1',0);
insert into Proveedor (Id, Nombre, CUIT, Eliminado) values (19, 'Teresa Luke', '20-69231143-9');
insert into Proveedor (Id, Nombre, CUIT, Eliminado) values (20, 'Simone Enriquez', '20-91914284-6',0);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BajaConcesionario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `BajaConcesionario`(Id INT, OUT Mensaje VARCHAR (45))
BEGIN
IF EXISTS (SELECT concesionario.Id FROM Concesionario where concesionario.Id = Id AND concesionario.Eliminado = 0)
THEN UPDATE concesionario set concesionario.Eliminado = 1, concesionario.FechaEliminado = Now() where concesionario.Id = Id;
SET Mensaje = 'El concesionario se eliminó correctamente';
SELECT Mensaje;
ELSE SET Mensaje = 'El concesionario que desea eliminar no existe';
SELECT Mensaje;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BajaInsumos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `BajaInsumos`(Id INT, OUT Mensaje VARCHAR (45))
BEGIN
IF EXISTS (SELECT insumos.Id FROM insumos where insumos.Id = Id AND insumos.Eliminado = 0)
THEN UPDATE insumos set insumos.Eliminado = 1, insumos.FechaEliminado = Now() where insumos.Id = Id;
SET Mensaje = 'El insumo se eliminó correctamente';
SELECT Mensaje;
ELSE SET Mensaje = 'El insumo que desea eliminar no existe';
SELECT Mensaje;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BajaPedido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `BajaPedido`(Id INT, OUT Mensaje VARCHAR (45))
BEGIN
IF EXISTS (SELECT pedido.Id FROM pedido where pedido.Id = Id AND pedido.Eliminado = 0)
THEN UPDATE pedido set pedido.Eliminado = 1, pedido.FechaEliminado = Now() where pedido.Id = Id;
SET Mensaje = 'El pedido se eliminó correctamente';
SELECT Mensaje;
ELSE SET Mensaje = 'El pedido que desea eliminar no existe';
SELECT Mensaje;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BajaPedido_Detalle` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `BajaPedido_Detalle`(ModeloId INT, PedidoId INT, OUT Mensaje VARCHAR (45))
BEGIN
IF EXISTS (SELECT pedido_detalle.modelo_Id, pedido_detalle.pedido_Id  FROM pedido_detalle where pedido_detalle.modelo_Id = ModeloId AND pedido_detalle.pedido_Id = PedidoId AND  pedido_detalle.Eliminado = 0)
THEN UPDATE pedido_detalle set pedido_detalle.Eliminado = 1, pedido_detalle.FechaEliminado = Now() where pedido_detalle.Id = Id;
SET Mensaje = 'El campo se eliminó correctamente';
SELECT Mensaje;
ELSE SET Mensaje = 'El campo que desea eliminar no existe';
SELECT Mensaje;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BajaProveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `BajaProveedor`(Id INT, OUT Mensaje VARCHAR (45))
BEGIN
IF EXISTS (SELECT Proveedor.Id FROM proveedor where Proveedor.Id = Id AND Proveedor.Eliminado = 0)
THEN UPDATE Proveedor set Proveedor.Eliminado = 1, Proveedor.FechaEliminado = Now() where Proveedor.Id = Id;
SET Mensaje = 'El proveedor se eliminó correctamente';
SELECT Mensaje;
ELSE SET Mensaje = 'El proveedor que desea eliminar no existe';
SELECT Mensaje;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BajaUnidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `BajaUnidad`(Id INT, OUT Mensaje VARCHAR (45))
BEGIN
IF EXISTS (SELECT unidad.Id FROM unidad where unidad.Id = Id AND unidad.Eliminado = 0)
THEN UPDATE unidad set unidad.Eliminado = 1, unidad.FechaEliminado = Now() where unidad.Id = Id;
SET Mensaje = 'La unidad se eliminó correctamente';
SELECT Mensaje;
ELSE SET Mensaje = 'La unidad que desea eliminar no existe';
SELECT Mensaje;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ModificarConcesionario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ModificarConcesionario`(Id INT, Nombre VARCHAR(45), OUT Mensaje VARCHAR(100), OUT Resultado INT)
BEGIN
IF EXISTS (select concesionario.Id from concesionario where concesionario.Id = Id AND concesionario.Eliminado != 1)
THEN UPDATE concesionario set concesionario.Nombre = Nombre where concesionario.Id = Id;
SELECT 0 INTO Resultado;
SELECT 'Se modificó correctamente' INTO Mensaje;
ELSE SET Mensaje = 'El concesionario que desea modificar no existe';
SELECT -1 INTO Resultado;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ModificarProveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ModificarProveedor`(Id INT, Nombre VARCHAR(45), CUIT VARCHAR(45), OUT Mensaje VARCHAR(100))
BEGIN
IF EXISTS (select proveedor.Id from proveedor where proveedor.Id = Id AND proveedor.Eliminado != 1)
THEN UPDATE proveedor set proveedor.nombre = Nombre and proveedor.CUIT = CUIT where proveedor.Id = Id;
ELSE SET Mensaje = 'El proveedor que desea modificar no existe';
SELECT Mensaje;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PrimeraEstacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PrimeraEstacion`(id_Chasis VARCHAR(45), OUT Mensaje VARCHAR(45), OUT Resultado INT)
BEGIN

DECLARE id_LineaMontaje INT;
DECLARE id_Modelo INT;
DECLARE FechaIngreso DATETIME;
DECLARE id_Estacion INT;

IF EXISTS (SELECT Chasis from Automovil where Chasis = id_Chasis) THEN

SELECT Pedido_Detalle_modelo_Id INTO id_Modelo From Automovil WHERE Chasis = id_Chasis;

SELECT Id INTO id_LineaMontaje From LineaMontaje  where modelo_Id = id_modelo;

SET FechaIngreso = now();

INSERT INTO estacion (OrdenEstacion, LineaMontaje_Id, TareaDeterminada_Id, Eliminado, FechaEliminado)
values (1, id_LineaMontaje, 1, 0, null);

SELECT Id into id_Estacion from Estacion where LineaMontaje_Id = id_LineaMontaje;

INSERT INTO Automovil_Estacion values (id_Chasis, id_Estacion, FechaIngreso, null, 0, null);

SET Mensaje = "El automovil se asignó correctamente a la primer estación";
SET Resultado = 0;
ELSE
SET Mensaje = "Error al asignar";
SET Resultado = -1;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-10 14:05:30
