-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: Y_mart
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_Name` varchar(30) DEFAULT NULL,
  `product_name` varchar(30) DEFAULT NULL,
  `categories` varchar(30) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `discount` int DEFAULT NULL,
  `availability` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_product_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'AMZ','Echo Dot','Speaker',50,4.5,10,'yes'),(2,'FLP','Galaxy S21','Phone',799,4.7,15,'out-of-stock'),(3,'SNP','ThinkPad X1','Laptop',1299,4.8,20,'yes'),(4,'MYN','Smart TV 55\"','TV',699,4.3,25,'yes'),(5,'AZO','Premium Headset','Headset',199,4.4,5,'yes'),(6,'AMZ','Fire HD 10','Tablet',149,4.2,10,'out-of-stock'),(7,'FLP','Galaxy Buds Pro','Earphone',199,4.5,10,'yes'),(8,'SNP','IdeaPad 3','Laptop',499,4.1,15,'out-of-stock'),(9,'MYN','Bluetooth Mouse','Mouse',29,4,5,'yes'),(10,'AZO','Ultra HD Remote','Remote',39,4.3,0,'yes'),(11,'AMZ','Kindle Paperwhite','Tablet',129,4.7,20,'yes'),(12,'FLP','Wireless Charger','Charger',49,4.1,10,'out-of-stock'),(13,'SNP','Desktop PC','PC',799,4.6,30,'yes'),(14,'MYN','Gaming Keypad','Keypad',59,4.4,15,'yes'),(15,'AZO','Portable Speaker','Speaker',89,4.5,20,'yes'),(16,'AMZ','Prime TV Stick','TV',39,4.6,5,'yes'),(17,'FLP','Galaxy Tab S7','Tablet',649,4.8,10,'yes'),(18,'SNP','Bluetooth Pendrive','Bluetooth Pendrive',19,4.2,15,'yes'),(19,'MYN','Smartphone X1','Phone',899,4.9,25,'out-of-stock'),(20,'AZO','Ergonomic Mouse','Mouse',49,4.3,10,'yes');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-20 12:04:10
