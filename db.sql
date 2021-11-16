-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: localhost    Database: cart
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` char(36) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('81654d2c-4c47-4b4d-9f1b-a454cb5e67f8','misterjjunpatch@gmail.com','chatchai junpatch','$2a$10$0iSRymrAaw2KYCDVCYWWZO7CF4UmmVISnQyYjWRWXr9u7aoCn/QRi','gunchatchai');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veg_order`
--

DROP TABLE IF EXISTS `veg_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veg_order` (
  `order_id` char(36) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `amount` int NOT NULL,
  `date` datetime(6) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `payment` datetime(6) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `vegetable` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veg_order`
--

LOCK TABLES `veg_order` WRITE;
/*!40000 ALTER TABLE `veg_order` DISABLE KEYS */;
INSERT INTO `veg_order` VALUES ('2ab1b019-e97e-4958-9e68-bbca5e992238','parichart village ,345 road',0,'2021-11-17 01:11:00.896000','0830103973','chatchai',NULL,NULL,'Underpayment','junpatch','gunchatchai','[{2d7ea4bb-3f13-43cd-b166-cded293b8289->carrot->99.0->10->3}]',NULL),('62d2e4da-74b9-4827-97ce-a28182be5e1e','parichart village ,345 road',0,'2021-11-17 01:23:23.662000','0830103973','chatchai',NULL,NULL,'Underpayment','junpatch','gunchatchai','[{2d7ea4bb-3f13-43cd-b166-cded293b8289->carrot->99.0->10->1}]','misterjjunpatch@gmail.com'),('7c3f07d0-0793-4807-9165-e5275d294dcf','parichart village ,345 road',0,'2021-11-17 01:12:39.537000','0830103973','chatchai',NULL,NULL,'Underpayment','junpatch','gunchatchai','[{2d7ea4bb-3f13-43cd-b166-cded293b8289->carrot->99.0->10->3}]','misterjjunpatch@gmail.com'),('bf12c3cd-5200-4b45-a943-7351e37cabd7','parichart village ,345 road',0,'2021-11-16 22:54:25.862000','0830103973','chatchai','2021-11-17 00:23:16.020000',NULL,'Payment','junpatch','gunchatchai','[{67e66552-9d27-436a-a4ae-050442b0c9c3->cabbage->99.0->20->4}]',NULL);
/*!40000 ALTER TABLE `veg_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vegetable`
--

DROP TABLE IF EXISTS `vegetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vegetable` (
  `id` char(36) NOT NULL,
  `amount` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vegetable`
--

LOCK TABLES `vegetable` WRITE;
/*!40000 ALTER TABLE `vegetable` DISABLE KEYS */;
INSERT INTO `vegetable` VALUES ('2d7ea4bb-3f13-43cd-b166-cded293b8289',10,'carrot',99),('67e66552-9d27-436a-a4ae-050442b0c9c3',13,'cabbage',99),('ca78c795-bb7a-4348-81eb-fc80116ce558',20,'Watermelon',99);
/*!40000 ALTER TABLE `vegetable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-16 22:43:50
