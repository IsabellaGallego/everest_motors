-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: uml
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(50) DEFAULT NULL,
  `descripcion_categoria` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'carros','None'),(2,'camionetas','None'),(3,'pick-ups','None'),(4,'deportivos','None'),(5,'vans','None'),(6,'taxis','None'),(7,'camiones','None'),(8,'buses','None');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `cedula_cliente` int DEFAULT NULL,
  `nombre_cliente` varchar(50) DEFAULT NULL,
  `apellidos_cliente` varchar(50) DEFAULT NULL,
  `direccion_cliente` varchar(50) DEFAULT NULL,
  `ciudad_cliente` varchar(50) DEFAULT NULL,
  `pais_cliente` varchar(50) DEFAULT NULL,
  `telefono_cliente` int DEFAULT NULL,
  `email_cliente` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  CONSTRAINT `id_categoria` FOREIGN KEY (`id_cliente`) REFERENCES `categorias` (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,6142346,'Rodrigo','Fernandez Tovar','AVD . PRINCIPE ASTURIAS 23','Madrid','España',958123345,'lazaro.bas@correo.com'),(2,23001002,'Ramón','Bassol','cra 45 #34-54','Cali ','Colombia',958234234,'ramón.bassol@correo.com'),(3,18232587,'Carola','Cervantes','Avenida Colmenares cl34','D.F Mexico','Mexico',958631412,'carola.cervantes@correo.com'),(4,74214563,'Roxana','Barbier Liz','Boulevar Street 34 Av.','Florida','EU',958123345,'roxana.barbier@correo.com'),(5,74001002,'Esperanza','Arbelaiz Rol','NQS diagonal 45','Bogota','Colombia',958606060,'esperanza.arbelaiz@correo.com');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id_empleado` int NOT NULL AUTO_INCREMENT,
  `codigo_empleado` int DEFAULT NULL,
  `nombre_empleado` varchar(50) DEFAULT NULL,
  `apellidos_empleado` varchar(50) DEFAULT NULL,
  `ciudad_empleado` varchar(50) DEFAULT NULL,
  `pais_empleado` varchar(50) DEFAULT NULL,
  `telefono_empresa_empleado` varchar(50) DEFAULT NULL,
  `email_empresa_empleado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,2345,'Andrea','Mendoza','Cali','Colombia','3345678 ext 245','mendoza.everest@com.co'),(2,2456,'Ivan ','Paz','Cali','Colombia','3345678 ext 246','paz.everest@com.co'),(3,2340,'Isabella','Gallego','Cali','Colombia','3345678 ext 247','gallego.everest@com.co');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `envio_vehiculo`
--

DROP TABLE IF EXISTS `envio_vehiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `envio_vehiculo` (
  `id_envio_transporte` int NOT NULL AUTO_INCREMENT,
  `fecha_registro_envio` date DEFAULT NULL,
  `nombre_transportadora` varchar(50) DEFAULT NULL,
  `costo_transporte` double DEFAULT NULL,
  `tiempod__dias_envio` int DEFAULT NULL,
  `fechad_entrega` varchar(50) DEFAULT NULL,
  `direccion_envio` varchar(50) DEFAULT NULL,
  `ciudad_envio` varchar(50) DEFAULT NULL,
  `pais_envio` varchar(50) DEFAULT NULL,
  `codigo_postal_envio` int DEFAULT NULL,
  `estado_envio` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_envio_transporte`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `envio_vehiculo`
--

LOCK TABLES `envio_vehiculo` WRITE;
/*!40000 ALTER TABLE `envio_vehiculo` DISABLE KEYS */;
INSERT INTO `envio_vehiculo` VALUES (1,'2022-08-26','DEPRISA S.A',1500000,3,'2022-09-23','CRA 14 # 34-345','cali','Colombia',7456,'En progreso');
/*!40000 ALTER TABLE `envio_vehiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturad_compra`
--

DROP TABLE IF EXISTS `facturad_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturad_compra` (
  `id_facturad_compra` int NOT NULL AUTO_INCREMENT,
  `fecha_compra` date DEFAULT NULL,
  `precio_vehiculo_compra` double DEFAULT NULL,
  `precio_accesorios_compra` double DEFAULT NULL,
  `descuentos_compra` int DEFAULT NULL,
  `costos_tributarios_compra` double DEFAULT NULL,
  `aplica_financiacion` int DEFAULT NULL,
  `total_compra` double DEFAULT NULL,
  `medio_pago_usado_compra` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_facturad_compra`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturad_compra`
--

LOCK TABLES `facturad_compra` WRITE;
/*!40000 ALTER TABLE `facturad_compra` DISABLE KEYS */;
INSERT INTO `facturad_compra` VALUES (123,'2022-08-23',85000000,250000,0,2500000,1,92000000,'efectivo');
/*!40000 ALTER TABLE `facturad_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lista_facturasd_ventas`
--

DROP TABLE IF EXISTS `lista_facturasd_ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lista_facturasd_ventas` (
  `id_facturasd_ventas` int NOT NULL AUTO_INCREMENT,
  `valores_ventas_totales` double DEFAULT NULL,
  PRIMARY KEY (`id_facturasd_ventas`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lista_facturasd_ventas`
--

LOCK TABLES `lista_facturasd_ventas` WRITE;
/*!40000 ALTER TABLE `lista_facturasd_ventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `lista_facturasd_ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `id_proveedor` int NOT NULL AUTO_INCREMENT,
  `compañia_proveedor` varchar(50) DEFAULT NULL,
  `representante_proveedor` varchar(50) DEFAULT NULL,
  `ciudad_proveedor` varchar(50) DEFAULT NULL,
  `pais_proveedor` varchar(50) DEFAULT NULL,
  `email_proveedor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'CHEVROLET','Camilo saas','paris','Francia','director.ventas@chevrolet.com'),(2,'MAZDA','Andrea pascal','sevilla','España','director.ventas@mazda.com');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitudes_pre_compras`
--

DROP TABLE IF EXISTS `solicitudes_pre_compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitudes_pre_compras` (
  `id_solicitud_precompras` int NOT NULL AUTO_INCREMENT,
  `fecha_solicitud` date DEFAULT NULL,
  `concesionario_nombre_solicitud` varchar(50) DEFAULT NULL,
  `concesionario_direccion_solicitud` varchar(50) DEFAULT NULL,
  `ciudad_solicitud` varchar(50) DEFAULT NULL,
  `pais_solicitud` varchar(50) DEFAULT NULL,
  `escriba_id_vehiculo_comprar` int DEFAULT NULL,
  PRIMARY KEY (`id_solicitud_precompras`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitudes_pre_compras`
--

LOCK TABLES `solicitudes_pre_compras` WRITE;
/*!40000 ALTER TABLE `solicitudes_pre_compras` DISABLE KEYS */;
INSERT INTO `solicitudes_pre_compras` VALUES (1,'2021-10-22','CARROYA','Cra 23 # 123-a23 ','bogotá','Colombia',1);
/*!40000 ALTER TABLE `solicitudes_pre_compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_usuarios`
--

DROP TABLE IF EXISTS `tipo_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_usuarios` (
  `id_tipo_usuario` int NOT NULL AUTO_INCREMENT,
  `usuario_tipo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_usuarios`
--

LOCK TABLES `tipo_usuarios` WRITE;
/*!40000 ALTER TABLE `tipo_usuarios` DISABLE KEYS */;
INSERT INTO `tipo_usuarios` VALUES (1,'administrador'),(2,'empleado'),(3,'cliente');
/*!40000 ALTER TABLE `tipo_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculos`
--

DROP TABLE IF EXISTS `vehiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiculos` (
  `id_vehiculo` int NOT NULL AUTO_INCREMENT,
  `marca_vehiculo` varchar(50) DEFAULT NULL,
  `modelo_vehiculo` varchar(50) DEFAULT NULL,
  `year_vehiculo` int DEFAULT NULL,
  `color_vehiculo` varchar(50) DEFAULT NULL,
  `kilometros_recorridos_vehiculo` double DEFAULT NULL,
  `precio_vehiculo` double DEFAULT NULL,
  `es_nacional_vehiculo` int DEFAULT NULL,
  `descripcion_vehiculo` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_vehiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculos`
--

LOCK TABLES `vehiculos` WRITE;
/*!40000 ALTER TABLE `vehiculos` DISABLE KEYS */;
INSERT INTO `vehiculos` VALUES (1,'KIA','Rio Sedan Vibrant 1.4',2023,'azul',0,82190000,1,'CARROCERÍA: Sedán.\nLUGAR DE ENSAMBLAJE: México.\nGARANTÍA: 7 años o 150.000 km.\nTIPO DE CAJA: Automática.\nCOMBUSTIBLE:Gasolina.\nCILINDRAJE:1.368.\nPUERTAS: 5.'),(2,'VOLKSWAGEN','Jetta TSI 1.4 Sportline',2019,'gris',0,95900000,0,'CARROCERÍA: Sedán.\nLUGAR DE ENSAMBLAJE: Argentina.\nGARANTÍA: 7 años o 150.000 km.\nTIPO DE CAJA: Automática.\nCOMBUSTIBLE:Gasolina.\nCILINDRAJE:1.400.\nPUERTAS: 4.'),(3,'OPEL','Crossland\nElegance 1.2 Suv',2022,'blanco',0,95900000,1,'CARROCERÍA: SUV.\nLUGAR DE ENSAMBLAJE: Colombia.\nGARANTÍA: 7 años o 150.000 km.\nTIPO DE CAJA: Automática.\nCOMBUSTIBLE:Gasolina.\nCILINDRAJE:1.200.\nPUERTAS: 4.'),(4,'MAZDA','2 - 1.5 hatchback Carbon Edition',2023,'rojo',0,81500000,0,'CARROCERÍA: HATCHBACK.\nLUGAR DE ENSAMBLAJE: Colombia.\nGARANTÍA: 7 años o 150.000 km.\nTIPO DE CAJA: Automática.\nCOMBUSTIBLE:Gasolina.\nCILINDRAJE:1.296.\nPUERTAS: 4.'),(5,'NISSAN','Qashqai\n2.0 ',2017,'negro',1,86000000,1,'CARROCERÍA: SEDAN.\nLUGAR DE ENSAMBLAJE: México.\nGARANTÍA: 7 años o 150.000 km.\nTIPO DE CAJA: Mecánica.\nCOMBUSTIBLE:Gasolina.\nCILINDRAJE:2.000.\nPUERTAS: 4.');
/*!40000 ALTER TABLE `vehiculos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-05 21:47:52
