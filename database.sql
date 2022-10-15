CREATE DATABASE  IF NOT EXISTS `cart` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cart`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: cart
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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Computadoras','2022-10-14 20:41:33','2022-10-14 20:41:33'),(2,'Celulares','2022-10-14 20:41:33','2022-10-14 20:41:33'),(3,'Impresoras','2022-10-14 20:41:33','2022-10-14 20:41:33'),(4,'Videojuegos','2022-10-14 20:41:33','2022-10-14 20:41:33');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` float(11,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CategoryId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `CategoryId` (`CategoryId`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (199,'Samsung S7',98.25,'https://http2.mlstatic.com/D_NQ_NP_897847-MLA50862035847_072022-V.webp','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type','2022-10-14 20:41:50','2022-10-14 20:41:50',2),(200,'Samsung Galaxy S21 FE 5G 256 GB grafito 8 GB RAM',98.25,'https://http2.mlstatic.com/D_NQ_NP_879603-MLA49171604463_022022-V.webp','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type','2022-10-14 20:41:50','2022-10-14 20:41:50',2),(201,'Samsung Galaxy A53 5G Dual SIM 128 GB azul asombroso 6 GB RAM',1449.90,'https://http2.mlstatic.com/D_NQ_NP_729650-MLA49922886127_052022-V.webp','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type','2022-10-14 20:41:50','2022-10-14 20:41:50',2),(202,'Huawei Nova Y70 Dual SIM 128 GB crystal blue 4 GB RAM',789.89,'https://http2.mlstatic.com/D_NQ_NP_873750-MLA51106794409_082022-V.webp','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type','2022-10-14 20:41:50','2022-10-14 20:41:50',2),(203,'Huawei Nova 8i 128 GB interstellar blue 6 GB RAM',98.25,'https://http2.mlstatic.com/D_NQ_NP_893660-MLA48692520036_122021-V.webp','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type','2022-10-14 20:41:50','2022-10-14 20:41:50',2),(204,'Huawei P20 128 GB negro 4 GB RAM',1090.00,'https://http2.mlstatic.com/D_NQ_NP_740227-MLA31932881061_082019-V.webp','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type','2022-10-14 20:41:50','2022-10-14 20:41:50',2),(205,'Huawei P Smart 2019 - Case Flip Cover',29.99,'https://http2.mlstatic.com/D_NQ_NP_897847-MLA50862035847_072022-V.webp','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type','2022-10-14 20:41:50','2022-10-14 20:41:50',2),(206,'Huawei Nova 8i 128gb 6ram Nuevos Sellados',1079.99,'https://http2.mlstatic.com/D_NQ_NP_605990-MPE48793922905_012022-V.webp','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type','2022-10-14 20:41:50','2022-10-14 20:41:50',2),(207,'Xiaomi Pocophone Poco X4 Pro 5G Dual SIM 256 GB laser blue 8 GB RAM',1339.00,'https://http2.mlstatic.com/D_NQ_NP_608544-MLA50343520542_062022-V.webp','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type','2022-10-14 20:41:50','2022-10-14 20:41:50',2),(208,'Xiaomi Pocophone Poco X4 GT Dual SIM 256 GB negro 8 GB RAM',1615.99,'https://http2.mlstatic.com/D_NQ_NP_897847-MLA50862035847_072022-V.webp','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type','2022-10-14 20:41:50','2022-10-14 20:41:50',2),(209,'Laptop Huawei Matebook D14 I5 8gb Ram, 512gb Ssd + Regalos',2749.00,'https://http2.mlstatic.com/D_NQ_NP_836186-MPE51633887285_092022-V.webp','Producto de buena calidad','2022-10-14 20:41:50','2022-10-14 20:41:50',1),(210,'Laptop Asus X515 15.6\' Fhd I5 11va 8gb 512ssd W11 Lec.huella',2559.00,'https://http2.mlstatic.com/D_NQ_NP_693621-MPE51282185456_082022-V.webp','Producto de buena calidad','2022-10-14 20:41:50','2022-10-14 20:41:50',1),(211,'Macbook Pro 13 (2022) Chip M2 Apple / 8gb Ram Ssd 256gb',6199.00,'https://http2.mlstatic.com/D_NQ_NP_940822-MPE50598963247_072022-V.webp','Producto de buena calidad','2022-10-14 20:41:50','2022-10-14 20:41:50',1),(212,'Cpu Gamer Ryzen 5 5600g, Ram 16gb, Ssd 500gb, Vega 7 2gb',2270.00,'https://http2.mlstatic.com/D_NQ_NP_869628-MPE48439964553_122021-V.webp','Producto de buena calidad','2022-10-14 20:41:50','2022-10-14 20:41:50',1),(213,'Cpu Gamer Core I7-10700 10ma, 16gb, 1tb+1tb Nme, Nvidia 6gb',5349.00,'https://http2.mlstatic.com/D_NQ_NP_726958-MPE50433833271_062022-V.webp','Producto de buena calidad','2022-10-14 20:41:50','2022-10-14 20:41:50',1),(214,'Computadora 6',98.25,'https://http2.mlstatic.com/D_NQ_NP_693621-MPE51282185456_082022-V.webp','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type','2022-10-14 20:41:50','2022-10-14 20:41:50',1),(215,'Computadora 7',98.25,'https://http2.mlstatic.com/D_NQ_NP_693621-MPE51282185456_082022-V.webp','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type','2022-10-14 20:41:50','2022-10-14 20:41:50',1),(216,'Computadora 8',98.25,'https://http2.mlstatic.com/D_NQ_NP_693621-MPE51282185456_082022-V.webp','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type','2022-10-14 20:41:50','2022-10-14 20:41:50',1),(217,'Computadora 9',98.25,'https://http2.mlstatic.com/D_NQ_NP_693621-MPE51282185456_082022-V.webp','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type','2022-10-14 20:41:50','2022-10-14 20:41:50',1),(218,'Computadora 10',98.25,'https://http2.mlstatic.com/D_NQ_NP_693621-MPE51282185456_082022-V.webp','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type','2022-10-14 20:41:50','2022-10-14 20:41:50',1),(219,'Computadora 11',98.25,'https://http2.mlstatic.com/D_NQ_NP_693621-MPE51282185456_082022-V.webp','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type','2022-10-14 20:41:50','2022-10-14 20:41:50',1),(220,'Computadora 12',98.25,'https://http2.mlstatic.com/D_NQ_NP_693621-MPE51282185456_082022-V.webp','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type','2022-10-14 20:41:50','2022-10-14 20:41:50',1),(221,'Computadora 13',98.25,'https://http2.mlstatic.com/D_NQ_NP_693621-MPE51282185456_082022-V.webp','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type','2022-10-14 20:41:50','2022-10-14 20:41:50',1),(222,'Computadora 14',98.25,'https://http2.mlstatic.com/D_NQ_NP_693621-MPE51282185456_082022-V.webp','Producto de buena calidad','2022-10-14 20:41:50','2022-10-14 20:41:50',1),(223,'Impresora 1',98.25,'https://http2.mlstatic.com/D_NQ_NP_669834-MPE49475029339_032022-V.webp','Producto de buena calidad','2022-10-14 20:41:50','2022-10-14 20:41:50',3),(224,'Impresora 2',280.00,'https://http2.mlstatic.com/D_NQ_NP_923822-MPE51935034212_102022-V.webp','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type','2022-10-14 20:41:50','2022-10-14 20:41:50',3),(225,'Impresora 3',400.00,'https://http2.mlstatic.com/D_NQ_NP_923822-MPE51935034212_102022-V.webp','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type','2022-10-14 20:41:50','2022-10-14 20:41:50',3),(226,'Impresora 4',98.25,'https://http2.mlstatic.com/D_NQ_NP_669834-MPE49475029339_032022-V.webp','Producto de buena calidad','2022-10-14 20:41:50','2022-10-14 20:41:50',3),(227,'Impresora 5',158.25,'https://http2.mlstatic.com/D_NQ_NP_923822-MPE51935034212_102022-V.webp','Producto de buena calidad','2022-10-14 20:41:50','2022-10-14 20:41:50',3),(228,'Impresora 6',28.25,'https://http2.mlstatic.com/D_NQ_NP_923822-MPE51935034212_102022-V.webp','Producto de buena calidad','2022-10-14 20:41:50','2022-10-14 20:41:50',3),(229,'Impresora 7',198.25,'https://http2.mlstatic.com/D_NQ_NP_923822-MPE51935034212_102022-V.webp','Producto de buena calidad','2022-10-14 20:41:50','2022-10-14 20:41:50',3),(230,'Impresora 8',98.25,'https://http2.mlstatic.com/D_NQ_NP_923822-MPE51935034212_102022-V.webp','Producto de buena calidad','2022-10-14 20:41:50','2022-10-14 20:41:50',3),(231,'Impresora 9',98.25,'https://http2.mlstatic.com/D_NQ_NP_669834-MPE49475029339_032022-V.webp','Producto de buena calidad','2022-10-14 20:41:50','2022-10-14 20:41:50',3),(232,'Impresora 10',98.25,'https://http2.mlstatic.com/D_NQ_NP_923822-MPE51935034212_102022-V.webp','Producto de buena calidad','2022-10-14 20:41:50','2022-10-14 20:41:50',3),(233,'Impresora 11',98.25,'https://http2.mlstatic.com/D_NQ_NP_923822-MPE51935034212_102022-V.webp','Producto de buena calidad','2022-10-14 20:41:50','2022-10-14 20:41:50',3),(234,'Consola Nintendo Switch Modelo Oled Blanco',98.25,'https://http2.mlstatic.com/D_NQ_NP_928509-MPE47399047183_092021-V.webp','Producto de buena calidad','2022-10-14 20:41:50','2022-10-14 20:41:50',4),(235,'Nintendo 2',298.25,'https://http2.mlstatic.com/D_NQ_NP_928509-MPE47399047183_092021-V.webp','Producto de buena calidad','2022-10-14 20:41:50','2022-10-14 20:41:50',4),(236,'Nintendo 3',38.25,'https://http2.mlstatic.com/D_NQ_NP_866952-MPE48383587626_112021-V.webp','Producto de buena calidad','2022-10-14 20:41:50','2022-10-14 20:41:50',4),(237,'Nintendo 4',458.25,'https://http2.mlstatic.com/D_NQ_NP_928509-MPE47399047183_092021-V.webp','Producto de buena calidad','2022-10-14 20:41:50','2022-10-14 20:41:50',4),(238,'Nintendo 5',600.00,'https://http2.mlstatic.com/D_NQ_NP_928509-MPE47399047183_092021-V.webp','Producto de buena calidad','2022-10-14 20:41:50','2022-10-14 20:41:50',4),(239,'Nintendo 6',98.25,'https://http2.mlstatic.com/D_NQ_NP_734637-MPE51866711077_102022-V.webp','Producto de buena calidad','2022-10-14 20:41:50','2022-10-14 20:41:50',4),(240,'Nintendo 7',489.00,'https://http2.mlstatic.com/D_NQ_NP_734637-MPE51866711077_102022-V.webp','Producto de buena calidad','2022-10-14 20:41:50','2022-10-14 20:41:50',4),(241,'Nintendo 8',310.00,'https://http2.mlstatic.com/D_NQ_NP_734637-MPE51866711077_102022-V.webp','Producto de buena calidad','2022-10-14 20:41:50','2022-10-14 20:41:50',4),(242,'Nintendo 9',98.25,'https://http2.mlstatic.com/D_NQ_NP_734637-MPE51866711077_102022-V.webp','Producto de buena calidad','2022-10-14 20:41:50','2022-10-14 20:41:50',4),(243,'Nintendo 10',98.25,'https://http2.mlstatic.com/D_NQ_NP_734637-MPE51866711077_102022-V.webp','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type','2022-10-14 20:41:50','2022-10-14 20:41:50',4),(244,'Nintendo 11',98.25,'https://http2.mlstatic.com/D_NQ_NP_866952-MPE48383587626_112021-V.webp','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type','2022-10-14 20:41:50','2022-10-14 20:41:50',4),(245,'Nintendo 12',98.25,'https://http2.mlstatic.com/D_NQ_NP_866952-MPE48383587626_112021-V.webp','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type','2022-10-14 20:41:50','2022-10-14 20:41:50',4);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-14 21:05:05
