-- MariaDB dump 10.19  Distrib 10.5.9-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: black_fit
-- ------------------------------------------------------
-- Server version	10.5.9-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `barrio_cliente`
--

DROP TABLE IF EXISTS `barrio_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barrio_cliente` (
  `Id_cliente` int(11) DEFAULT NULL,
  `Barrio` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barrio_cliente`
--

LOCK TABLES `barrio_cliente` WRITE;
/*!40000 ALTER TABLE `barrio_cliente` DISABLE KEYS */;
INSERT INTO `barrio_cliente` (`Id_cliente`, `Barrio`) VALUES (1,'Urbari');
INSERT INTO `barrio_cliente` (`Id_cliente`, `Barrio`) VALUES (2,'Equipetrol');
INSERT INTO `barrio_cliente` (`Id_cliente`, `Barrio`) VALUES (3,'El penoco');
INSERT INTO `barrio_cliente` (`Id_cliente`, `Barrio`) VALUES (4,'hilanderia');
INSERT INTO `barrio_cliente` (`Id_cliente`, `Barrio`) VALUES (5,'27 de mayo');
INSERT INTO `barrio_cliente` (`Id_cliente`, `Barrio`) VALUES (6,'California');
INSERT INTO `barrio_cliente` (`Id_cliente`, `Barrio`) VALUES (7,'Panamericano');
INSERT INTO `barrio_cliente` (`Id_cliente`, `Barrio`) VALUES (8,'Flamingo');
INSERT INTO `barrio_cliente` (`Id_cliente`, `Barrio`) VALUES (9,'Aeronautico');
INSERT INTO `barrio_cliente` (`Id_cliente`, `Barrio`) VALUES (10,'Fabril');
INSERT INTO `barrio_cliente` (`Id_cliente`, `Barrio`) VALUES (11,'Las Palmas');
INSERT INTO `barrio_cliente` (`Id_cliente`, `Barrio`) VALUES (12,'12 de octubre');
INSERT INTO `barrio_cliente` (`Id_cliente`, `Barrio`) VALUES (13,'21 de enero');
INSERT INTO `barrio_cliente` (`Id_cliente`, `Barrio`) VALUES (14,'');
INSERT INTO `barrio_cliente` (`Id_cliente`, `Barrio`) VALUES (0,'');
INSERT INTO `barrio_cliente` (`Id_cliente`, `Barrio`) VALUES (15,'');
INSERT INTO `barrio_cliente` (`Id_cliente`, `Barrio`) VALUES (16,'');
INSERT INTO `barrio_cliente` (`Id_cliente`, `Barrio`) VALUES (17,'');
INSERT INTO `barrio_cliente` (`Id_cliente`, `Barrio`) VALUES (18,'');
INSERT INTO `barrio_cliente` (`Id_cliente`, `Barrio`) VALUES (0,'');
INSERT INTO `barrio_cliente` (`Id_cliente`, `Barrio`) VALUES (19,'');
INSERT INTO `barrio_cliente` (`Id_cliente`, `Barrio`) VALUES (20,'');
INSERT INTO `barrio_cliente` (`Id_cliente`, `Barrio`) VALUES (21,'');
INSERT INTO `barrio_cliente` (`Id_cliente`, `Barrio`) VALUES (22,'asdads');
/*!40000 ALTER TABLE `barrio_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `barrio_entrenador`
--

DROP TABLE IF EXISTS `barrio_entrenador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barrio_entrenador` (
  `Id_entrenador` int(11) DEFAULT NULL,
  `Barrio` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barrio_entrenador`
--

LOCK TABLES `barrio_entrenador` WRITE;
/*!40000 ALTER TABLE `barrio_entrenador` DISABLE KEYS */;
INSERT INTO `barrio_entrenador` (`Id_entrenador`, `Barrio`) VALUES (1,'Urbari');
INSERT INTO `barrio_entrenador` (`Id_entrenador`, `Barrio`) VALUES (2,'San Gregorio');
INSERT INTO `barrio_entrenador` (`Id_entrenador`, `Barrio`) VALUES (3,'San Jose');
INSERT INTO `barrio_entrenador` (`Id_entrenador`, `Barrio`) VALUES (4,'Cocapabana');
INSERT INTO `barrio_entrenador` (`Id_entrenador`, `Barrio`) VALUES (5,'Las Palmas');
INSERT INTO `barrio_entrenador` (`Id_entrenador`, `Barrio`) VALUES (6,'Los cusis');
INSERT INTO `barrio_entrenador` (`Id_entrenador`, `Barrio`) VALUES (7,'Hamacas');
INSERT INTO `barrio_entrenador` (`Id_entrenador`, `Barrio`) VALUES (8,'Banzer');
INSERT INTO `barrio_entrenador` (`Id_entrenador`, `Barrio`) VALUES (9,'Doble via');
INSERT INTO `barrio_entrenador` (`Id_entrenador`, `Barrio`) VALUES (10,'Canal Izuto');
INSERT INTO `barrio_entrenador` (`Id_entrenador`, `Barrio`) VALUES (11,'Tiger');
INSERT INTO `barrio_entrenador` (`Id_entrenador`, `Barrio`) VALUES (12,'Riveralta');
INSERT INTO `barrio_entrenador` (`Id_entrenador`, `Barrio`) VALUES (13,'Porongo');
/*!40000 ALTER TABLE `barrio_entrenador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `Id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(25) DEFAULT NULL,
  `Apellido` varchar(25) DEFAULT NULL,
  `Genero` varchar(20) DEFAULT NULL,
  `Fecha_nac` date DEFAULT NULL,
  `Fecha_ingreso` date DEFAULT NULL,
  `Fecha_fin` date DEFAULT NULL,
  PRIMARY KEY (`Id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` (`Id_cliente`, `Nombre`, `Apellido`, `Genero`, `Fecha_nac`, `Fecha_ingreso`, `Fecha_fin`) VALUES (1,'Jose','Romero Chavez','Masculino','1999-04-21','2020-02-09','2021-03-09');
INSERT INTO `clientes` (`Id_cliente`, `Nombre`, `Apellido`, `Genero`, `Fecha_nac`, `Fecha_ingreso`, `Fecha_fin`) VALUES (2,'Kendry','Cespedes','Femenino','2001-05-20','2020-03-11','2020-04-11');
INSERT INTO `clientes` (`Id_cliente`, `Nombre`, `Apellido`, `Genero`, `Fecha_nac`, `Fecha_ingreso`, `Fecha_fin`) VALUES (3,'Mauricio','Guzman Mendes','Masculino','2002-02-04','2020-05-09','2020-06-09');
INSERT INTO `clientes` (`Id_cliente`, `Nombre`, `Apellido`, `Genero`, `Fecha_nac`, `Fecha_ingreso`, `Fecha_fin`) VALUES (7,'Sebastian','Empuje','Masculino','1998-01-01','2021-01-01','2021-02-01');
INSERT INTO `clientes` (`Id_cliente`, `Nombre`, `Apellido`, `Genero`, `Fecha_nac`, `Fecha_ingreso`, `Fecha_fin`) VALUES (8,'Laura','Rivera Carrasco','Femenino','2000-04-24','2020-02-14','2020-03-14');
INSERT INTO `clientes` (`Id_cliente`, `Nombre`, `Apellido`, `Genero`, `Fecha_nac`, `Fecha_ingreso`, `Fecha_fin`) VALUES (9,'Luis','Quispe Dorado','Masculino','2004-11-04','2020-07-29','2020-11-29');
INSERT INTO `clientes` (`Id_cliente`, `Nombre`, `Apellido`, `Genero`, `Fecha_nac`, `Fecha_ingreso`, `Fecha_fin`) VALUES (10,'Adrian','Dorado Lopez','Masculino','2004-02-11','2020-04-28','2020-05-28');
INSERT INTO `clientes` (`Id_cliente`, `Nombre`, `Apellido`, `Genero`, `Fecha_nac`, `Fecha_ingreso`, `Fecha_fin`) VALUES (11,'Adriana','Ghedini','Femenino','2001-08-21','2021-02-09','2021-03-09');
INSERT INTO `clientes` (`Id_cliente`, `Nombre`, `Apellido`, `Genero`, `Fecha_nac`, `Fecha_ingreso`, `Fecha_fin`) VALUES (12,'Antonela','Añez Bort','Femenino','2003-11-21','2020-07-12','2020-09-12');
INSERT INTO `clientes` (`Id_cliente`, `Nombre`, `Apellido`, `Genero`, `Fecha_nac`, `Fecha_ingreso`, `Fecha_fin`) VALUES (13,'Tupac','Rivero Mansilla','Femenino','2000-11-02','2020-02-25','2020-03-25');
INSERT INTO `clientes` (`Id_cliente`, `Nombre`, `Apellido`, `Genero`, `Fecha_nac`, `Fecha_ingreso`, `Fecha_fin`) VALUES (14,'Jose','Emi','Masculino','4444-02-13','7878-02-12','7878-02-12');
INSERT INTO `clientes` (`Id_cliente`, `Nombre`, `Apellido`, `Genero`, `Fecha_nac`, `Fecha_ingreso`, `Fecha_fin`) VALUES (15,'aas','asas','asas','5444-12-02','5444-12-02','5444-12-02');
INSERT INTO `clientes` (`Id_cliente`, `Nombre`, `Apellido`, `Genero`, `Fecha_nac`, `Fecha_ingreso`, `Fecha_fin`) VALUES (16,'asddas','asddasdsd','asdasdadasd','7878-02-12','7878-02-12','7878-02-12');
INSERT INTO `clientes` (`Id_cliente`, `Nombre`, `Apellido`, `Genero`, `Fecha_nac`, `Fecha_ingreso`, `Fecha_fin`) VALUES (17,'assa','asas','asas','7878-02-12','7878-02-12','7878-02-12');
INSERT INTO `clientes` (`Id_cliente`, `Nombre`, `Apellido`, `Genero`, `Fecha_nac`, `Fecha_ingreso`, `Fecha_fin`) VALUES (18,'asddas','asdasdasd','Masculino','2021-03-11','2021-03-04','2021-03-06');
INSERT INTO `clientes` (`Id_cliente`, `Nombre`, `Apellido`, `Genero`, `Fecha_nac`, `Fecha_ingreso`, `Fecha_fin`) VALUES (19,'Hector','asdas','Masculino','2021-03-04','2021-03-01','2021-03-10');
INSERT INTO `clientes` (`Id_cliente`, `Nombre`, `Apellido`, `Genero`, `Fecha_nac`, `Fecha_ingreso`, `Fecha_fin`) VALUES (20,'asdsdasadasd','asdasdasd','asdasdasd','2021-03-03','2021-03-07','2021-03-07');
INSERT INTO `clientes` (`Id_cliente`, `Nombre`, `Apellido`, `Genero`, `Fecha_nac`, `Fecha_ingreso`, `Fecha_fin`) VALUES (21,'asdasd','asdads','asdasdsd','2021-03-03','2021-03-06','2021-03-07');
INSERT INTO `clientes` (`Id_cliente`, `Nombre`, `Apellido`, `Genero`, `Fecha_nac`, `Fecha_ingreso`, `Fecha_fin`) VALUES (22,'asas','CHAVEZ','asdasdsd','2021-03-03','2021-03-04','2021-03-04');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `correo_cliente`
--

DROP TABLE IF EXISTS `correo_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `correo_cliente` (
  `Id_cliente` int(11) DEFAULT NULL,
  `Correo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correo_cliente`
--

LOCK TABLES `correo_cliente` WRITE;
/*!40000 ALTER TABLE `correo_cliente` DISABLE KEYS */;
INSERT INTO `correo_cliente` (`Id_cliente`, `Correo`) VALUES (1,'Joseromero@gmail.com');
INSERT INTO `correo_cliente` (`Id_cliente`, `Correo`) VALUES (2,'Kendrycespedes@gmail.com');
INSERT INTO `correo_cliente` (`Id_cliente`, `Correo`) VALUES (3,'Mauriciogg@gmail.com');
INSERT INTO `correo_cliente` (`Id_cliente`, `Correo`) VALUES (4,'Katerinejesicc@gmail.com');
INSERT INTO `correo_cliente` (`Id_cliente`, `Correo`) VALUES (5,'Jenifercastillors@gmail.com');
INSERT INTO `correo_cliente` (`Id_cliente`, `Correo`) VALUES (6,'Luisbravitts@gmail.com');
INSERT INTO `correo_cliente` (`Id_cliente`, `Correo`) VALUES (7,'Sebastianfrankfurt@gmail.com');
INSERT INTO `correo_cliente` (`Id_cliente`, `Correo`) VALUES (8,'Laurariverarv@gmaiol.com');
INSERT INTO `correo_cliente` (`Id_cliente`, `Correo`) VALUES (9,'Luismamanimamani@gmail.com');
INSERT INTO `correo_cliente` (`Id_cliente`, `Correo`) VALUES (10,'Adrianly@gmail.com');
INSERT INTO `correo_cliente` (`Id_cliente`, `Correo`) VALUES (11,'Adrianaghedini@gmail.com');
INSERT INTO `correo_cliente` (`Id_cliente`, `Correo`) VALUES (12,'Antonelabb@gmail.com');
INSERT INTO `correo_cliente` (`Id_cliente`, `Correo`) VALUES (13,'Alejandrariv@gmail.com');
INSERT INTO `correo_cliente` (`Id_cliente`, `Correo`) VALUES (20,'');
INSERT INTO `correo_cliente` (`Id_cliente`, `Correo`) VALUES (21,'');
INSERT INTO `correo_cliente` (`Id_cliente`, `Correo`) VALUES (22,'');
/*!40000 ALTER TABLE `correo_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `correo_entrenador`
--

DROP TABLE IF EXISTS `correo_entrenador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `correo_entrenador` (
  `Id_entrenador` int(11) DEFAULT NULL,
  `Correo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correo_entrenador`
--

LOCK TABLES `correo_entrenador` WRITE;
/*!40000 ALTER TABLE `correo_entrenador` DISABLE KEYS */;
INSERT INTO `correo_entrenador` (`Id_entrenador`, `Correo`) VALUES (1,'Cesarfuentes@gmail.com');
INSERT INTO `correo_entrenador` (`Id_entrenador`, `Correo`) VALUES (2,'AlissonLimpiass@gmail.com');
INSERT INTO `correo_entrenador` (`Id_entrenador`, `Correo`) VALUES (3,'Fatimaguardia@gmail.com');
INSERT INTO `correo_entrenador` (`Id_entrenador`, `Correo`) VALUES (4,'ArianaSalvatierrapb@gmail.com');
INSERT INTO `correo_entrenador` (`Id_entrenador`, `Correo`) VALUES (5,'TupacSejastp@gmail.com');
INSERT INTO `correo_entrenador` (`Id_entrenador`, `Correo`) VALUES (6,'Jschaves@gmail.com');
INSERT INTO `correo_entrenador` (`Id_entrenador`, `Correo`) VALUES (7,'Camusbchavez@gmail.com');
INSERT INTO `correo_entrenador` (`Id_entrenador`, `Correo`) VALUES (8,'Carlarios@gmail.com');
INSERT INTO `correo_entrenador` (`Id_entrenador`, `Correo`) VALUES (9,'CarolinaLeonj@gmail.com');
INSERT INTO `correo_entrenador` (`Id_entrenador`, `Correo`) VALUES (10,'Cejasanti@gmail.com');
INSERT INTO `correo_entrenador` (`Id_entrenador`, `Correo`) VALUES (11,'DayanaQuintac@gmail.com');
INSERT INTO `correo_entrenador` (`Id_entrenador`, `Correo`) VALUES (12,'Diegonuness@gmail.com');
INSERT INTO `correo_entrenador` (`Id_entrenador`, `Correo`) VALUES (13,'ElianeAntiv@gmail.com');
/*!40000 ALTER TABLE `correo_entrenador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccion_cliente`
--

DROP TABLE IF EXISTS `direccion_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `direccion_cliente` (
  `Id_cliente` int(11) DEFAULT NULL,
  `Avenida` varchar(30) DEFAULT NULL,
  `Calle` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccion_cliente`
--

LOCK TABLES `direccion_cliente` WRITE;
/*!40000 ALTER TABLE `direccion_cliente` DISABLE KEYS */;
INSERT INTO `direccion_cliente` (`Id_cliente`, `Avenida`, `Calle`) VALUES (1,'Pirai','Jose leon');
INSERT INTO `direccion_cliente` (`Id_cliente`, `Avenida`, `Calle`) VALUES (2,'Busch','Ingavi');
INSERT INTO `direccion_cliente` (`Id_cliente`, `Avenida`, `Calle`) VALUES (3,'Cumavi','Quijarro');
INSERT INTO `direccion_cliente` (`Id_cliente`, `Avenida`, `Calle`) VALUES (4,'Cañoto','Las Begonias');
INSERT INTO `direccion_cliente` (`Id_cliente`, `Avenida`, `Calle`) VALUES (5,'El Palmar','Claveles');
INSERT INTO `direccion_cliente` (`Id_cliente`, `Avenida`, `Calle`) VALUES (6,'Intermodal','Sucre');
INSERT INTO `direccion_cliente` (`Id_cliente`, `Avenida`, `Calle`) VALUES (7,'Centenario','21 de mayo');
INSERT INTO `direccion_cliente` (`Id_cliente`, `Avenida`, `Calle`) VALUES (8,'Santos Dumont','24 de septiembre');
INSERT INTO `direccion_cliente` (`Id_cliente`, `Avenida`, `Calle`) VALUES (9,'San Martin','Mario Rios');
INSERT INTO `direccion_cliente` (`Id_cliente`, `Avenida`, `Calle`) VALUES (10,'Roca y Coronado','Jesus Millon');
INSERT INTO `direccion_cliente` (`Id_cliente`, `Avenida`, `Calle`) VALUES (11,'Saavedra','Ibañez');
INSERT INTO `direccion_cliente` (`Id_cliente`, `Avenida`, `Calle`) VALUES (12,'Soruco','Colon');
INSERT INTO `direccion_cliente` (`Id_cliente`, `Avenida`, `Calle`) VALUES (13,'Agabata','Melchor');
INSERT INTO `direccion_cliente` (`Id_cliente`, `Avenida`, `Calle`) VALUES (14,'addsa','asdads');
INSERT INTO `direccion_cliente` (`Id_cliente`, `Avenida`, `Calle`) VALUES (0,'asdsad','asdas');
INSERT INTO `direccion_cliente` (`Id_cliente`, `Avenida`, `Calle`) VALUES (15,'assa','sasas');
INSERT INTO `direccion_cliente` (`Id_cliente`, `Avenida`, `Calle`) VALUES (16,'asdadssas','asdasdasdasd');
INSERT INTO `direccion_cliente` (`Id_cliente`, `Avenida`, `Calle`) VALUES (17,'asas','asas');
INSERT INTO `direccion_cliente` (`Id_cliente`, `Avenida`, `Calle`) VALUES (18,'asdasd','asdads');
INSERT INTO `direccion_cliente` (`Id_cliente`, `Avenida`, `Calle`) VALUES (0,'asdasd','asdsd');
INSERT INTO `direccion_cliente` (`Id_cliente`, `Avenida`, `Calle`) VALUES (19,'asdasdd','asdasdasd');
INSERT INTO `direccion_cliente` (`Id_cliente`, `Avenida`, `Calle`) VALUES (20,'asasd','asasd');
INSERT INTO `direccion_cliente` (`Id_cliente`, `Avenida`, `Calle`) VALUES (21,'asdasdassda','asdasd');
INSERT INTO `direccion_cliente` (`Id_cliente`, `Avenida`, `Calle`) VALUES (22,'addsa','asdads');
/*!40000 ALTER TABLE `direccion_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccion_entrenador`
--

DROP TABLE IF EXISTS `direccion_entrenador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `direccion_entrenador` (
  `Id_entrenador` int(11) DEFAULT NULL,
  `Avenida` varchar(30) DEFAULT NULL,
  `Calle` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccion_entrenador`
--

LOCK TABLES `direccion_entrenador` WRITE;
/*!40000 ALTER TABLE `direccion_entrenador` DISABLE KEYS */;
INSERT INTO `direccion_entrenador` (`Id_entrenador`, `Avenida`, `Calle`) VALUES (1,'Pirai','Tres Cruces');
INSERT INTO `direccion_entrenador` (`Id_entrenador`, `Avenida`, `Calle`) VALUES (2,'San Martin','Cocapabana');
INSERT INTO `direccion_entrenador` (`Id_entrenador`, `Avenida`, `Calle`) VALUES (3,'Olimpica','Topacio');
INSERT INTO `direccion_entrenador` (`Id_entrenador`, `Avenida`, `Calle`) VALUES (4,'Radial 17','Alto Peru');
INSERT INTO `direccion_entrenador` (`Id_entrenador`, `Avenida`, `Calle`) VALUES (5,'Roque aguilera','Venecia');
INSERT INTO `direccion_entrenador` (`Id_entrenador`, `Avenida`, `Calle`) VALUES (6,'Centinelas','Mexico');
INSERT INTO `direccion_entrenador` (`Id_entrenador`, `Avenida`, `Calle`) VALUES (7,'Centenario','Bolivar');
INSERT INTO `direccion_entrenador` (`Id_entrenador`, `Avenida`, `Calle`) VALUES (8,'Radial 10','Cuellar');
INSERT INTO `direccion_entrenador` (`Id_entrenador`, `Avenida`, `Calle`) VALUES (9,'El Trillo','Pinto');
INSERT INTO `direccion_entrenador` (`Id_entrenador`, `Avenida`, `Calle`) VALUES (10,'Che Guevara','Mario Alcazar');
INSERT INTO `direccion_entrenador` (`Id_entrenador`, `Avenida`, `Calle`) VALUES (11,'Las Palmeras','Jose Leon');
INSERT INTO `direccion_entrenador` (`Id_entrenador`, `Avenida`, `Calle`) VALUES (12,'Union','Melaza');
INSERT INTO `direccion_entrenador` (`Id_entrenador`, `Avenida`, `Calle`) VALUES (13,'Jenecheru','El Trapiche');
/*!40000 ALTER TABLE `direccion_entrenador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrenadores`
--

DROP TABLE IF EXISTS `entrenadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entrenadores` (
  `Id_entrenador` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(25) DEFAULT NULL,
  `Apellido` varchar(25) DEFAULT NULL,
  `Genero` varchar(20) DEFAULT NULL,
  `Fecha_nac` date DEFAULT NULL,
  `Fecha_ingreso` date DEFAULT NULL,
  PRIMARY KEY (`Id_entrenador`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrenadores`
--

LOCK TABLES `entrenadores` WRITE;
/*!40000 ALTER TABLE `entrenadores` DISABLE KEYS */;
INSERT INTO `entrenadores` (`Id_entrenador`, `Nombre`, `Apellido`, `Genero`, `Fecha_nac`, `Fecha_ingreso`) VALUES (1,'Cesar','Fuentes Campo','Maculino','1990-02-20','2020-05-19');
INSERT INTO `entrenadores` (`Id_entrenador`, `Nombre`, `Apellido`, `Genero`, `Fecha_nac`, `Fecha_ingreso`) VALUES (2,'Alisson','Limpias Mendoza','Femenino','1998-05-14','2020-02-15');
INSERT INTO `entrenadores` (`Id_entrenador`, `Nombre`, `Apellido`, `Genero`, `Fecha_nac`, `Fecha_ingreso`) VALUES (3,'Fatima','Guardia Rodriguez','Femenino','1999-05-12','2020-01-21');
INSERT INTO `entrenadores` (`Id_entrenador`, `Nombre`, `Apellido`, `Genero`, `Fecha_nac`, `Fecha_ingreso`) VALUES (4,'Ariana','Salvatierra Paraba','Femenino','1989-06-18','2020-01-25');
INSERT INTO `entrenadores` (`Id_entrenador`, `Nombre`, `Apellido`, `Genero`, `Fecha_nac`, `Fecha_ingreso`) VALUES (5,'Tupac','sejas Peinado','Masculino','1999-10-23','2020-05-14');
INSERT INTO `entrenadores` (`Id_entrenador`, `Nombre`, `Apellido`, `Genero`, `Fecha_nac`, `Fecha_ingreso`) VALUES (6,'Jose','Chavez Carrasco','Masculino','2002-04-02','2020-08-17');
INSERT INTO `entrenadores` (`Id_entrenador`, `Nombre`, `Apellido`, `Genero`, `Fecha_nac`, `Fecha_ingreso`) VALUES (7,'Camus','Banegas Chavez','Masculino','2000-02-06','2020-02-02');
INSERT INTO `entrenadores` (`Id_entrenador`, `Nombre`, `Apellido`, `Genero`, `Fecha_nac`, `Fecha_ingreso`) VALUES (8,'Carla','Rios Flores','Femenino','1987-05-19','2020-08-18');
INSERT INTO `entrenadores` (`Id_entrenador`, `Nombre`, `Apellido`, `Genero`, `Fecha_nac`, `Fecha_ingreso`) VALUES (9,'Carolina','Leon Alvarado','Femenino','2000-05-21','2020-08-21');
INSERT INTO `entrenadores` (`Id_entrenador`, `Nombre`, `Apellido`, `Genero`, `Fecha_nac`, `Fecha_ingreso`) VALUES (10,'Cejas','Santiago sejas','Maculino','1996-06-16','2020-07-17');
INSERT INTO `entrenadores` (`Id_entrenador`, `Nombre`, `Apellido`, `Genero`, `Fecha_nac`, `Fecha_ingreso`) VALUES (12,'Juan','Nunes Candia','Masculino','1999-06-04','2020-11-03');
INSERT INTO `entrenadores` (`Id_entrenador`, `Nombre`, `Apellido`, `Genero`, `Fecha_nac`, `Fecha_ingreso`) VALUES (13,'Diel','Ativena Guzman','Femenino','1997-06-15','2020-04-23');
/*!40000 ALTER TABLE `entrenadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gimnasio`
--

DROP TABLE IF EXISTS `gimnasio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gimnasio` (
  `id_gym` int(11) NOT NULL,
  `Nombre` varchar(25) DEFAULT NULL,
  `Direccion` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_gym`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gimnasio`
--

LOCK TABLES `gimnasio` WRITE;
/*!40000 ALTER TABLE `gimnasio` DISABLE KEYS */;
INSERT INTO `gimnasio` (`id_gym`, `Nombre`, `Direccion`) VALUES (1001,'BLACK_FIT','Av pirai 4 anillo');
/*!40000 ALTER TABLE `gimnasio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantenimiento`
--

DROP TABLE IF EXISTS `mantenimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mantenimiento` (
  `Id_mantenimineto` int(11) NOT NULL AUTO_INCREMENT,
  `Tipo_mantenimiento` varchar(40) DEFAULT NULL,
  `Tiempo_meses` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_mantenimineto`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantenimiento`
--

LOCK TABLES `mantenimiento` WRITE;
/*!40000 ALTER TABLE `mantenimiento` DISABLE KEYS */;
INSERT INTO `mantenimiento` (`Id_mantenimineto`, `Tipo_mantenimiento`, `Tiempo_meses`) VALUES (1,'lubricación',1);
INSERT INTO `mantenimiento` (`Id_mantenimineto`, `Tipo_mantenimiento`, `Tiempo_meses`) VALUES (2,'Revisión periodica',2);
INSERT INTO `mantenimiento` (`Id_mantenimineto`, `Tipo_mantenimiento`, `Tiempo_meses`) VALUES (3,'Cambio de repuestos',3);
INSERT INTO `mantenimiento` (`Id_mantenimineto`, `Tipo_mantenimiento`, `Tiempo_meses`) VALUES (4,'Limpieza general',4);
INSERT INTO `mantenimiento` (`Id_mantenimineto`, `Tipo_mantenimiento`, `Tiempo_meses`) VALUES (5,'mantenimiento total',6);
/*!40000 ALTER TABLE `mantenimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maquinas`
--

DROP TABLE IF EXISTS `maquinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maquinas` (
  `Id_maquina` int(11) NOT NULL AUTO_INCREMENT,
  `Tipo_maquina` varchar(40) DEFAULT NULL,
  `Musculo_trabaja` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Id_maquina`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maquinas`
--

LOCK TABLES `maquinas` WRITE;
/*!40000 ALTER TABLE `maquinas` DISABLE KEYS */;
INSERT INTO `maquinas` (`Id_maquina`, `Tipo_maquina`, `Musculo_trabaja`) VALUES (1,'Banco Press','Pecho');
INSERT INTO `maquinas` (`Id_maquina`, `Tipo_maquina`, `Musculo_trabaja`) VALUES (2,'Prensa De Pierna','Femorales-Glúteos-Cuadriceps');
INSERT INTO `maquinas` (`Id_maquina`, `Tipo_maquina`, `Musculo_trabaja`) VALUES (3,'Dorsalera','Dorsales-Espalda');
INSERT INTO `maquinas` (`Id_maquina`, `Tipo_maquina`, `Musculo_trabaja`) VALUES (4,'Power Tower','Brazos-Hombro');
INSERT INTO `maquinas` (`Id_maquina`, `Tipo_maquina`, `Musculo_trabaja`) VALUES (5,'La Peck Deck','pectorales-Hombro');
INSERT INTO `maquinas` (`Id_maquina`, `Tipo_maquina`, `Musculo_trabaja`) VALUES (6,'Elíptica','Pierna-Brazo');
INSERT INTO `maquinas` (`Id_maquina`, `Tipo_maquina`, `Musculo_trabaja`) VALUES (7,'Cintas De Correr','Pierna');
INSERT INTO `maquinas` (`Id_maquina`, `Tipo_maquina`, `Musculo_trabaja`) VALUES (8,'Remo','Parte Superior');
/*!40000 ALTER TABLE `maquinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan_pago_cliente`
--

DROP TABLE IF EXISTS `plan_pago_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plan_pago_cliente` (
  `Id_cliente` int(11) DEFAULT NULL,
  `Plan_pago` varchar(20) DEFAULT NULL,
  `monto_bs` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_pago_cliente`
--

LOCK TABLES `plan_pago_cliente` WRITE;
/*!40000 ALTER TABLE `plan_pago_cliente` DISABLE KEYS */;
INSERT INTO `plan_pago_cliente` (`Id_cliente`, `Plan_pago`, `monto_bs`) VALUES (1,'Mensual',200);
INSERT INTO `plan_pago_cliente` (`Id_cliente`, `Plan_pago`, `monto_bs`) VALUES (2,'Mensual',200);
INSERT INTO `plan_pago_cliente` (`Id_cliente`, `Plan_pago`, `monto_bs`) VALUES (3,'Trimestre',550);
INSERT INTO `plan_pago_cliente` (`Id_cliente`, `Plan_pago`, `monto_bs`) VALUES (4,'Mensual',200);
INSERT INTO `plan_pago_cliente` (`Id_cliente`, `Plan_pago`, `monto_bs`) VALUES (5,'Trimestre',550);
INSERT INTO `plan_pago_cliente` (`Id_cliente`, `Plan_pago`, `monto_bs`) VALUES (6,'Año',2200);
INSERT INTO `plan_pago_cliente` (`Id_cliente`, `Plan_pago`, `monto_bs`) VALUES (7,'Trimestre',550);
INSERT INTO `plan_pago_cliente` (`Id_cliente`, `Plan_pago`, `monto_bs`) VALUES (8,'Año',2200);
INSERT INTO `plan_pago_cliente` (`Id_cliente`, `Plan_pago`, `monto_bs`) VALUES (9,'Mensual',200);
INSERT INTO `plan_pago_cliente` (`Id_cliente`, `Plan_pago`, `monto_bs`) VALUES (10,'Mensual',200);
INSERT INTO `plan_pago_cliente` (`Id_cliente`, `Plan_pago`, `monto_bs`) VALUES (11,'Trimestre',550);
INSERT INTO `plan_pago_cliente` (`Id_cliente`, `Plan_pago`, `monto_bs`) VALUES (12,'Trimestre',550);
INSERT INTO `plan_pago_cliente` (`Id_cliente`, `Plan_pago`, `monto_bs`) VALUES (13,'Año',2200);
/*!40000 ALTER TABLE `plan_pago_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rutinas`
--

DROP TABLE IF EXISTS `rutinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rutinas` (
  `Id_rutina` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_ejercicio` varchar(40) DEFAULT NULL,
  `Tipo_de_rutina` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Id_rutina`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rutinas`
--

LOCK TABLES `rutinas` WRITE;
/*!40000 ALTER TABLE `rutinas` DISABLE KEYS */;
INSERT INTO `rutinas` (`Id_rutina`, `Nombre_ejercicio`, `Tipo_de_rutina`) VALUES (1,'Peso Muerto','Tracción');
INSERT INTO `rutinas` (`Id_rutina`, `Nombre_ejercicio`, `Tipo_de_rutina`) VALUES (2,'Curl De Biceps','Tracción');
INSERT INTO `rutinas` (`Id_rutina`, `Nombre_ejercicio`, `Tipo_de_rutina`) VALUES (3,'Remo con barras','Fuerza');
INSERT INTO `rutinas` (`Id_rutina`, `Nombre_ejercicio`, `Tipo_de_rutina`) VALUES (4,'Flexiones','Empuje');
INSERT INTO `rutinas` (`Id_rutina`, `Nombre_ejercicio`, `Tipo_de_rutina`) VALUES (5,'Press militar','Empuje');
INSERT INTO `rutinas` (`Id_rutina`, `Nombre_ejercicio`, `Tipo_de_rutina`) VALUES (6,'Rompecraneos','Empuje');
INSERT INTO `rutinas` (`Id_rutina`, `Nombre_ejercicio`, `Tipo_de_rutina`) VALUES (7,'Dominadas','Empuje');
/*!40000 ALTER TABLE `rutinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefono_cliente`
--

DROP TABLE IF EXISTS `telefono_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telefono_cliente` (
  `Id_cliente` int(11) DEFAULT NULL,
  `Telefono` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefono_cliente`
--

LOCK TABLES `telefono_cliente` WRITE;
/*!40000 ALTER TABLE `telefono_cliente` DISABLE KEYS */;
INSERT INTO `telefono_cliente` (`Id_cliente`, `Telefono`) VALUES (1,77778889);
INSERT INTO `telefono_cliente` (`Id_cliente`, `Telefono`) VALUES (2,77788899);
INSERT INTO `telefono_cliente` (`Id_cliente`, `Telefono`) VALUES (3,77889944);
INSERT INTO `telefono_cliente` (`Id_cliente`, `Telefono`) VALUES (4,77441122);
INSERT INTO `telefono_cliente` (`Id_cliente`, `Telefono`) VALUES (5,77002244);
INSERT INTO `telefono_cliente` (`Id_cliente`, `Telefono`) VALUES (6,77766655);
INSERT INTO `telefono_cliente` (`Id_cliente`, `Telefono`) VALUES (7,74125896);
INSERT INTO `telefono_cliente` (`Id_cliente`, `Telefono`) VALUES (8,74360021);
INSERT INTO `telefono_cliente` (`Id_cliente`, `Telefono`) VALUES (9,79865400);
INSERT INTO `telefono_cliente` (`Id_cliente`, `Telefono`) VALUES (10,78108205);
INSERT INTO `telefono_cliente` (`Id_cliente`, `Telefono`) VALUES (11,78946513);
INSERT INTO `telefono_cliente` (`Id_cliente`, `Telefono`) VALUES (12,77000345);
INSERT INTO `telefono_cliente` (`Id_cliente`, `Telefono`) VALUES (13,77777554);
INSERT INTO `telefono_cliente` (`Id_cliente`, `Telefono`) VALUES (14,79846512);
INSERT INTO `telefono_cliente` (`Id_cliente`, `Telefono`) VALUES (17,45445);
INSERT INTO `telefono_cliente` (`Id_cliente`, `Telefono`) VALUES (18,78154612);
INSERT INTO `telefono_cliente` (`Id_cliente`, `Telefono`) VALUES (0,477474);
INSERT INTO `telefono_cliente` (`Id_cliente`, `Telefono`) VALUES (19,6576582);
INSERT INTO `telefono_cliente` (`Id_cliente`, `Telefono`) VALUES (20,45645645);
INSERT INTO `telefono_cliente` (`Id_cliente`, `Telefono`) VALUES (21,5654566);
INSERT INTO `telefono_cliente` (`Id_cliente`, `Telefono`) VALUES (22,70202296);
/*!40000 ALTER TABLE `telefono_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefono_entrenador`
--

DROP TABLE IF EXISTS `telefono_entrenador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telefono_entrenador` (
  `Id_entrenador` int(11) DEFAULT NULL,
  `Telefono` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefono_entrenador`
--

LOCK TABLES `telefono_entrenador` WRITE;
/*!40000 ALTER TABLE `telefono_entrenador` DISABLE KEYS */;
INSERT INTO `telefono_entrenador` (`Id_entrenador`, `Telefono`) VALUES (1,78945612);
INSERT INTO `telefono_entrenador` (`Id_entrenador`, `Telefono`) VALUES (2,73216549);
INSERT INTO `telefono_entrenador` (`Id_entrenador`, `Telefono`) VALUES (3,78788745);
INSERT INTO `telefono_entrenador` (`Id_entrenador`, `Telefono`) VALUES (4,77444565);
INSERT INTO `telefono_entrenador` (`Id_entrenador`, `Telefono`) VALUES (5,71123312);
INSERT INTO `telefono_entrenador` (`Id_entrenador`, `Telefono`) VALUES (6,74894546);
INSERT INTO `telefono_entrenador` (`Id_entrenador`, `Telefono`) VALUES (7,78974561);
INSERT INTO `telefono_entrenador` (`Id_entrenador`, `Telefono`) VALUES (8,78456131);
INSERT INTO `telefono_entrenador` (`Id_entrenador`, `Telefono`) VALUES (9,79878900);
INSERT INTO `telefono_entrenador` (`Id_entrenador`, `Telefono`) VALUES (10,70180758);
INSERT INTO `telefono_entrenador` (`Id_entrenador`, `Telefono`) VALUES (11,70020055);
INSERT INTO `telefono_entrenador` (`Id_entrenador`, `Telefono`) VALUES (12,77110005);
INSERT INTO `telefono_entrenador` (`Id_entrenador`, `Telefono`) VALUES (13,79500545);
/*!40000 ALTER TABLE `telefono_entrenador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefonos_gimnasio`
--

DROP TABLE IF EXISTS `telefonos_gimnasio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telefonos_gimnasio` (
  `Id_gym` int(11) DEFAULT NULL,
  `Telefonos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefonos_gimnasio`
--

LOCK TABLES `telefonos_gimnasio` WRITE;
/*!40000 ALTER TABLE `telefonos_gimnasio` DISABLE KEYS */;
INSERT INTO `telefonos_gimnasio` (`Id_gym`, `Telefonos`) VALUES (1001,79846512);
INSERT INTO `telefonos_gimnasio` (`Id_gym`, `Telefonos`) VALUES (1001,77788895);
INSERT INTO `telefonos_gimnasio` (`Id_gym`, `Telefonos`) VALUES (1001,79812350);
/*!40000 ALTER TABLE `telefonos_gimnasio` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-30 15:30:20
