-- MySQL dump 10.13  Distrib 8.0.20, for Linux (x86_64)
--
-- Host: localhost    Database: x
-- ------------------------------------------------------
-- Server version	8.0.20-0ubuntu0.20.04.1

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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `pincode` decimal(6,0) NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,1,'Gangamma Circle, Jalahalli','Bangalore','Karnataka',560013),(2,2,'Main Rd, Chick Pet','Bangalore','Karnataka',560053),(3,3,'Shanti Park, Mira Road','Mumbai','Maharashtra',401107),(4,4,'Paradise Cinema Lane, Mahim','Mumbai','Maharashtra',40016),(5,5,'Shop 4, Mira Road','Mumbai','Maharashtra',401107),(6,6,'Mahatama Chowk','Mumbai','Maharashtra',400023),(7,7,'GT Karnal Rd','Delhi','Delhi',110033),(8,8,'Vile Parle','Mumbai','Maharashtra',400057),(9,9,'Shop 22, Hauz Khas','Delhi','Delhi',110016),(10,10,'Office 1, Mit Corner','Pune','Maharashtra',411011),(11,11,'203, Maninagar','Ahmedabad','Gujarat',380008),(12,12,'39, Ans Patkar Road, Grant Road','Mumbai','Maharashtra',400007),(13,13,'6/85, W E A, Padam Singh Road, Karol Bagh','Delhi','Delhi',110005),(14,14,'Rashi Bldg, 7 Poice Court Lane','Mumbai','Maharashtra',400001),(15,15,'G15, 174/40, 8th F Main, 3rd Block, Jaynagar','Bangalore','Karnataka',560011),(16,16,'66, Mehdipatnam','Hyderabad','Andhra Pradesh',500028),(17,17,' A/2, Vardhman Darshan, Jamli Galli, Borivali','Mumbai','Maharashtra',400092),(18,18,'Near Post Office, Nehru Road, Santa Cruz (east)','Mumbai','Maharashtra',400055),(19,19,'58, 1719/2 Phase 3, Vatva','Ahmedabad','Gujarat',382445),(20,20,'Gangamma Circle, Jalahalli','Bangalore','Karnataka',560013);
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_items`
--

DROP TABLE IF EXISTS `cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_items` (
  `cart_item_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `pdt_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`cart_item_id`),
  KEY `user_id` (`user_id`),
  KEY `pdt_id` (`pdt_id`),
  CONSTRAINT `cart_items_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `cart_items_ibfk_2` FOREIGN KEY (`pdt_id`) REFERENCES `products` (`pdt_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_items`
--

LOCK TABLES `cart_items` WRITE;
/*!40000 ALTER TABLE `cart_items` DISABLE KEYS */;
INSERT INTO `cart_items` VALUES (1,1,4,3),(2,1,24,1),(3,19,24,6),(4,3,6,1),(5,1,16,1),(6,4,17,1),(7,2,9,1),(8,4,13,1),(9,5,3,20),(10,6,6,1),(11,7,17,1),(12,7,18,1),(13,8,16,10),(14,9,13,1),(15,10,24,2),(16,11,23,1),(17,2,5,2),(18,12,8,1),(19,13,15,1),(20,14,15,1),(21,1,28,2),(22,1,14,1),(23,1,1,5),(24,2,24,2);
/*!40000 ALTER TABLE `cart_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clothes`
--

DROP TABLE IF EXISTS `clothes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clothes` (
  `cloth_id` int NOT NULL AUTO_INCREMENT,
  `pdt_id` int NOT NULL,
  `brand` varchar(100) NOT NULL,
  `model` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`cloth_id`),
  KEY `pdt_id` (`pdt_id`),
  CONSTRAINT `clothes_ibfk_1` FOREIGN KEY (`pdt_id`) REFERENCES `products` (`pdt_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clothes`
--

LOCK TABLES `clothes` WRITE;
/*!40000 ALTER TABLE `clothes` DISABLE KEYS */;
INSERT INTO `clothes` VALUES (1,24,'Leeves','SM slim M9',NULL);
/*!40000 ALTER TABLE `clothes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `electronics`
--

DROP TABLE IF EXISTS `electronics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `electronics` (
  `electronic_id` int NOT NULL AUTO_INCREMENT,
  `pdt_id` int NOT NULL,
  `category` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `date_of_manufacture` date DEFAULT NULL,
  PRIMARY KEY (`electronic_id`),
  KEY `pdt_id` (`pdt_id`),
  CONSTRAINT `electronics_ibfk_1` FOREIGN KEY (`pdt_id`) REFERENCES `products` (`pdt_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `electronics`
--

LOCK TABLES `electronics` WRITE;
/*!40000 ALTER TABLE `electronics` DISABLE KEYS */;
INSERT INTO `electronics` VALUES (1,12,'Mobile','Xiaomi','S9',NULL,NULL),(2,13,'Mobile','Xiaomi','Note 4',NULL,NULL),(3,14,'Smartwatch','Neomi','R2',NULL,NULL),(4,15,'Washing Machine','LG','M4',NULL,NULL),(5,16,'Smartwatch','Neomi','D5',NULL,NULL),(6,17,'Laptop','HP','G6',NULL,NULL),(7,18,'Laptop','Acer','Helio93',NULL,NULL),(8,19,'Laptop','Dell','D3',NULL,NULL),(9,20,'Laptop','Dell','G4',NULL,NULL),(10,21,'Laptop','Apple','air',NULL,NULL),(11,22,'Mobile','Realme','R1',NULL,NULL),(12,23,'Mobile','Samsung','S9',NULL,NULL),(13,25,'Laptop','Apple','Pro',NULL,NULL),(14,26,'Tablet','Apple','Pro',NULL,NULL),(15,27,'Tablet','Apple','Air',NULL,NULL),(16,28,'Tablet','Apple','2018',NULL,NULL);
/*!40000 ALTER TABLE `electronics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `novels`
--

DROP TABLE IF EXISTS `novels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `novels` (
  `novel_id` int NOT NULL AUTO_INCREMENT,
  `pdt_id` int NOT NULL,
  `author` varchar(100) NOT NULL,
  `publisher` varchar(100) DEFAULT NULL,
  `publication_date` date NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`novel_id`),
  KEY `pdt_id` (`pdt_id`),
  CONSTRAINT `novels_ibfk_1` FOREIGN KEY (`pdt_id`) REFERENCES `products` (`pdt_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `novels`
--

LOCK TABLES `novels` WRITE;
/*!40000 ALTER TABLE `novels` DISABLE KEYS */;
INSERT INTO `novels` VALUES (1,1,'Dan Brown','Penguin Books','2016-08-05',NULL),(2,2,'Leo Tolstoy','Pearson','1956-04-01',NULL),(3,3,'James Joyce','Penguin Books','1992-12-20',NULL),(4,4,'J.R.R. Tolkien','Pearson','2011-11-21',NULL),(5,5,'Dan Brown','Wiley','2008-12-27',NULL),(6,6,'Vladimir Nabokov','Penguin Books','1960-02-22',NULL),(7,7,'Dan Brown','Penguin Books','2020-09-07',NULL),(8,8,'George Orwell','Wiley','1974-09-23',NULL),(9,9,'Charles Dickens','Quarto','2001-05-24',NULL),(10,10,'Dan Brown','Quarto','2015-01-01',NULL),(11,11,'Charles Dickens','Pearson','1932-12-03',NULL);
/*!40000 ALTER TABLE `novels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `order_item_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `user_id` int NOT NULL,
  `pdt_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `price_of_each` decimal(10,2) NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `pdt_id` (`pdt_id`),
  KEY `order_id` (`order_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`pdt_id`) REFERENCES `products` (`pdt_id`) ON DELETE CASCADE,
  CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE,
  CONSTRAINT `order_items_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,1,1,5,1,730.00),(2,2,1,19,1,45000.00),(3,3,1,6,1,450.00),(4,4,4,28,1,35000.00),(5,5,4,19,1,45000.00),(6,6,4,11,1,120.00),(7,7,2,1,1,450.00),(8,8,3,2,1,1130.00),(9,9,3,1,6,450.00),(10,9,3,8,1,550.00),(11,10,5,13,1,20000.00),(12,11,12,24,5,1600.00),(13,12,20,16,3,33000.00),(14,13,20,24,1,1600.00),(15,13,20,21,1,85000.00),(16,13,20,28,1,35000.00),(17,13,20,22,1,16000.00),(18,14,20,3,1,530.00),(19,14,20,4,1,675.00),(20,15,20,10,1,699.00),(21,15,20,7,1,478.00);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `price` decimal(10,2) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `pincode` decimal(6,0) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'2010-01-08 02:44:00',730.00,'Gangamma Circle, Jalahalli','Bangalore','Karnataka',560013),(2,1,'2020-10-15 02:44:00',45000.00,'Gangamma Circle, Jalahalli','Bangalore','Karnataka',560013),(3,1,'2020-11-10 02:44:00',480.00,'Gangamma Circle, Jalahalli','Bangalore','Karnataka',560013),(4,4,'2020-11-06 02:44:00',35000.00,'Paradise Cinema Lane, Mahim','Mumbai','Maharashtra',40016),(5,4,'2020-11-10 02:44:00',45000.00,'Paradise Cinema Lane, Mahim','Mumbai','Maharashtra',40016),(6,4,'2020-11-13 02:44:00',180.00,'Paradise Cinema Lane, Mahim','Mumbai','Maharashtra',40016),(7,2,'2018-11-13 02:44:00',500.00,'Main Rd, Chick Pet','Bangalore','Karnataka',560053),(8,3,'2017-11-13 02:44:00',1130.00,'Shanti Park, Mira Road','Mumbai','Maharashtra',401107),(9,3,'2018-11-13 02:44:00',3250.00,'Shanti Park, Mira Road','Mumbai','Maharashtra',401107),(10,5,'2017-11-13 02:44:00',20000.00,'Shop 4, Mira Road','Mumbai','Maharashtra',401107),(11,12,'2016-11-13 02:44:00',8000.00,'39, Ans Patkar Road, Grant Road','Mumbai','Maharashtra',400007),(12,20,'2016-11-13 02:44:00',33000.00,'Gangamma Circle, Jalahalli','Bangalore','Karnataka',560013),(13,20,'2017-11-13 02:44:00',137600.00,'Gangamma Circle, Jalahalli','Bangalore','Karnataka',560013),(14,20,'2018-11-13 02:44:00',1205.00,'Gangamma Circle, Jalahalli','Bangalore','Karnataka',560013),(15,20,'2019-11-13 02:44:00',1177.00,'Gangamma Circle, Jalahalli','Bangalore','Karnataka',560013);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `pdt_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `category` enum('novels','electronics','clothes') NOT NULL,
  `retailer_id` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pdt_id`),
  KEY `retailer_id` (`retailer_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`retailer_id`) REFERENCES `retailers` (`retailer_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Da Vinci Code','novels',2,450.00,'2012-12-22 01:47:46'),(2,'War and Peace','novels',5,1130.00,'2011-06-26 01:47:46'),(3,'Ulysses','novels',5,530.00,'2019-05-31 01:47:46'),(4,'The Lord of the Rings','novels',2,675.00,'2020-12-01 01:47:46'),(5,'Inferno','novels',2,730.00,'2013-07-01 01:47:46'),(6,'Lolita','novels',3,430.00,'2013-02-15 01:47:46'),(7,'The Lost Symbol','novels',3,478.00,'2005-09-24 01:47:46'),(8,'1984','novels',6,550.00,'2010-07-22 01:47:46'),(9,'David Copperfield','novels',3,870.00,'2006-09-16 01:47:46'),(10,'Angels and Demons','novels',3,699.00,'2013-10-01 01:47:46'),(11,'Great Expectations','novels',5,120.00,'2007-10-13 01:47:46'),(12,'Xiaomi S9 Pro','electronics',1,15000.00,'2015-02-09 01:47:46'),(13,'Xiomi Note 4','electronics',1,20000.00,'2010-11-21 01:47:46'),(14,'Neomi Watch R2','electronics',8,3600.00,'2008-02-10 01:47:46'),(15,'LG Washing Machine M4','electronics',7,16500.00,'2015-12-01 01:47:46'),(16,'Neomi Watch D5','electronics',8,11000.00,'2020-09-07 01:47:46'),(17,'HP Paviliion G6','electronics',7,56000.00,'2016-01-06 01:47:46'),(18,'Acer Predator Helio','electronics',1,74500.00,'2015-05-01 01:47:46'),(19,'Dell Inspiron D3','electronics',9,45000.00,'2010-09-07 01:47:46'),(20,'Dell Inspiron G4','electronics',9,55000.00,'2013-02-26 01:47:46'),(21,'Apple macbook Air','electronics',10,85000.00,'2019-12-27 01:47:46'),(22,'Realme R1 Pro','electronics',1,16000.00,'2011-11-29 01:47:46'),(23,'Samsung Galaxy S9','electronics',9,20000.00,'2010-10-30 01:47:46'),(24,'Leeves Men Jeans','clothes',10,1600.00,'2018-10-30 01:47:46'),(25,'Apple macbook Pro','electronics',9,90000.00,'2020-12-30 01:47:46'),(26,'Apple iPad Pro','electronics',9,60000.00,'2020-11-30 01:47:46'),(27,'Apple iPad Air','electronics',9,54000.00,'2021-01-30 01:47:46'),(28,'Apple iPad','electronics',9,35000.00,'2021-02-02 01:47:46');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retailers`
--

DROP TABLE IF EXISTS `retailers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `retailers` (
  `retailer_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` decimal(10,0) NOT NULL,
  `password` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `pincode` decimal(6,0) NOT NULL,
  PRIMARY KEY (`retailer_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retailers`
--

LOCK TABLES `retailers` WRITE;
/*!40000 ALTER TABLE `retailers` DISABLE KEYS */;
INSERT INTO `retailers` VALUES (1,'pvs840@gmail.com','PVS Ltd.',3284002487,'abcd','Linkoln Street','Ahmedabad','Gujarat',840235),(2,'cfd@gmail.com','CFD Ltd.',7843963241,'abcd','Gandhi Lane','Ahmedabad','Gujarat',840785),(3,'pravin@yahoo.com','Pravin Brothers and Co.',9837295263,'abcd','Plot 54','Delhi','Delhi',392563),(4,'nfs@rediffmail.com','NFS Pvt. Ltd.',5792925363,'abcd','Gramin Lane','Ludhiana','Punjab',432985),(5,'csd@gmail.com','CDS Pvt. Ltd.',5403640253,'abcd','Indranagar','Delhi','Delhi',840263),(6,'ydt@yahoo.com','YDT Bhandar',4803284093,'abcd','Linkoln Street','Ahmedabad','Gujarat',840235),(7,'bts@gmail.com','BTS Bazaar',7382953636,'abcd','Malviya Nagar','Ahmedabad','Gujarat',830253),(8,'netejs@yahoo.com','Neten Pvt. Ltd.',8392846382,'abcd','Nind Industrial Complex','Jaipur','Rajasthan',328032),(9,'lincoln@gmail.com','Lincoln Brothers',9024626203,'abcd','Dukar','Jaipur','Rajasthan',325326),(10,'pratap@gmail.com','Pratap Traders',7892592623,'abcd','Hinaya Building','Ahmedabad','Gujarat',472932),(11,'puona@rediffmail.com','Puona Traders',7925292032,'abcd','Vistras Center','Ahmedabad','Gujarat',298532),(12,'disco@gmail.com','Discoin Traders',2908526202,'abcd','Mistes','Jaipur','Rajasthan',842223),(13,'niagra@yahoo.com','Niagra Falls Pvt. Ltd',8026830623,'abcd','Vista','Bhopal','Madhya Pradesh',274252),(14,'nikon@rediffmail.com','Nikon Distributors',8037342386,'abcd','Nikon Building','Rewari','Haryana',243563),(15,'tekken@gmail.com','Tukaram Pvt. Ltd.',7296332759,'abcd','Tekken Cross','Ahmedabad','Gujarat',840253),(16,'fda@gmail.com','FDA Ltd.',8403236732,'abcd','FD building','Ahmedabad','Gujarat',204252),(17,'creates@yahoo.com','Creates Delhi Ltd.',2035263343,'abcd','Mahavir Marg','Delhi','Delhi',203953),(18,'tiny.ants@rediffmail.com','Tiny Ants Distributors',3295328539,'abcd','Akshardham Marg','Ahmedabad','Gujarat',290842),(19,'tuamir@gmail.com','Tuamir Co.',3820529239,'abcd','Buddha Road','Ahmedabad','Gujarat',840235),(20,'quench@rediffmail','Quench Pvt. Ltd.',8303259322,'abcd','Niagra Marg','Delhi','Delhi',389253);
/*!40000 ALTER TABLE `retailers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `pdt_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `rating` decimal(2,0) NOT NULL,
  `body` varchar(1000) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`review_id`),
  KEY `pdt_id` (`pdt_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`pdt_id`) REFERENCES `products` (`pdt_id`) ON DELETE CASCADE,
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,28,4,'Niraj Kumar',5,'wonderful product, loved it!','2020-12-09 03:36:45'),(2,19,4,'Niraj Kumar',3,NULL,'2020-12-11 03:36:45'),(3,11,4,'Niraj Kumar',4,'Paper quality was okayish, otherwise wonderful reading','2020-12-21 03:36:45'),(4,1,2,'Anuj Jain',4,NULL,'2020-10-09 03:36:45'),(5,2,3,'Kavya Agarwal',3,'I found the book to be okayish. The hype was not worth it.','2020-09-11 03:36:45'),(6,21,2,'Anuj Jain',4,NULL,'2021-02-03 01:48:39'),(7,19,2,'Anuj Jain',1,NULL,'2021-02-03 01:48:39'),(8,18,3,'Kavya Agarwal',2,NULL,'2021-02-03 01:48:39'),(9,17,5,'Anmol Gautam',5,NULL,'2021-02-03 01:48:39'),(10,16,2,'Anuj Jain',1,NULL,'2021-02-03 01:48:39'),(11,15,2,'Anuj Jain',5,NULL,'2021-02-03 01:48:39'),(12,12,2,'Anuj Jain',4,NULL,'2021-02-03 01:48:39'),(13,11,2,'Anuj Jain',3,NULL,'2021-02-03 01:48:39'),(14,10,5,'Anmol Gautam',4,NULL,'2021-02-03 01:48:39'),(15,6,3,'Anuj Jain',4,NULL,'2021-02-03 01:48:39'),(16,5,6,'Dhiraj Sinha',3,NULL,'2021-02-03 01:48:39'),(17,4,7,'Kunal Kumar',4,NULL,'2021-02-03 01:48:39'),(18,3,8,'Aditya Puri',5,NULL,'2021-02-03 01:48:39'),(19,2,2,'Anuj Jain',1,NULL,'2021-02-03 01:48:39'),(20,1,8,'Aditya Puri',4,NULL,'2021-02-03 01:48:39'),(21,9,5,'Anmol Gautam',5,NULL,'2021-02-03 01:48:39'),(22,8,2,'Anuj Jain',5,NULL,'2021-02-03 01:48:39'),(23,7,8,'Aditya Puri',3,NULL,'2021-02-03 01:48:39'),(24,13,2,'Anuj Jain',4,NULL,'2021-02-03 01:48:39'),(25,14,5,'Anmol Gautam',2,NULL,'2021-02-03 01:48:39');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `searches`
--

DROP TABLE IF EXISTS `searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `searches` (
  `search_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `body` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`search_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `searches_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `searches`
--

LOCK TABLES `searches` WRITE;
/*!40000 ALTER TABLE `searches` DISABLE KEYS */;
INSERT INTO `searches` VALUES (1,1,'Vinci Code','2010-01-06 01:47:46'),(2,1,'Inferno','2010-01-06 04:47:46'),(3,1,'Xiaomi','2020-08-06 04:47:46'),(4,1,'Dell','2020-09-20 04:47:46'),(5,1,'Xiaomi','2020-10-15 04:47:46'),(6,1,'Watch','2020-10-20 04:47:46'),(7,1,'Lolita','2020-11-01 04:47:46'),(8,1,'Apple','2021-01-20 04:47:46'),(9,1,'iPad','2021-01-26 04:47:46'),(10,2,'mi','2018-11-13 02:44:00'),(11,3,'Jeans','2018-11-15 02:44:00'),(12,4,'watch','2018-11-21 02:44:00'),(13,5,'smart','2018-10-13 02:44:00'),(14,6,'Pro','2018-12-13 02:44:00'),(15,7,'Realme','2019-11-13 02:44:00'),(16,8,'Realme','2020-11-13 02:44:00'),(17,9,'Apple','2019-11-13 02:44:00'),(18,10,'iPad','2006-11-13 02:44:00'),(19,11,'mac','2005-11-13 02:44:00'),(20,12,'pple','2010-11-13 02:44:00'),(21,13,'sma','2009-11-13 02:44:00'),(22,14,'war and','2008-11-13 02:44:00'),(23,15,'Lolita','2011-11-13 02:44:00'),(24,16,'war','2012-11-13 02:44:00'),(25,18,'Demons','2020-11-13 02:44:00'),(26,20,'story','2019-11-13 02:44:00'),(27,5,'Xiaomi','2017-11-13 02:44:00'),(28,6,'Note','2016-11-13 02:44:00'),(29,7,'mac','2015-11-13 02:44:00'),(30,5,'iPad','2014-11-13 02:44:00');
/*!40000 ALTER TABLE `searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_views`
--

DROP TABLE IF EXISTS `user_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_views` (
  `view_id` int NOT NULL AUTO_INCREMENT,
  `pdt_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`view_id`),
  KEY `pdt_id` (`pdt_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_views_ibfk_1` FOREIGN KEY (`pdt_id`) REFERENCES `products` (`pdt_id`) ON DELETE CASCADE,
  CONSTRAINT `user_views_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_views`
--

LOCK TABLES `user_views` WRITE;
/*!40000 ALTER TABLE `user_views` DISABLE KEYS */;
INSERT INTO `user_views` VALUES (1,1,1,'2010-01-06 02:44:00'),(2,5,1,'2010-01-07 02:44:00'),(3,19,1,'2020-10-10 02:44:00'),(4,6,10,'2021-01-30 04:47:46'),(5,6,11,'2021-01-30 04:47:46'),(6,6,12,'2021-01-30 04:47:46'),(7,6,13,'2021-01-30 04:47:46'),(8,6,14,'2021-01-30 04:47:46'),(9,6,15,'2021-01-30 04:47:46'),(10,6,16,'2021-01-30 04:47:46'),(11,6,17,'2021-01-30 04:47:46'),(12,6,18,'2021-01-30 04:47:46'),(13,6,19,'2021-01-30 04:47:46'),(14,6,20,'2021-01-30 04:47:46'),(15,14,10,'2021-01-30 04:47:46'),(16,14,11,'2021-01-30 04:47:46'),(17,14,12,'2021-01-30 04:47:46'),(18,14,13,'2021-01-30 04:47:46'),(19,14,14,'2021-01-30 04:47:46'),(20,14,15,'2021-01-30 04:47:46'),(21,14,16,'2021-01-30 04:47:46'),(22,14,17,'2021-01-30 04:47:46'),(23,14,18,'2021-01-30 04:47:46'),(24,14,19,'2021-01-30 04:47:46'),(25,14,20,'2021-01-30 04:47:46'),(26,24,10,'2021-01-30 04:47:46'),(27,24,11,'2021-01-30 04:47:46'),(28,24,12,'2021-01-30 04:47:46'),(29,24,13,'2021-01-30 04:47:46'),(30,24,14,'2021-01-30 04:47:46'),(31,24,15,'2021-01-30 04:47:46'),(32,24,16,'2021-01-30 04:47:46'),(33,24,17,'2021-01-30 04:47:46'),(34,24,18,'2021-01-30 04:47:46'),(35,24,19,'2021-01-30 04:47:46'),(36,24,20,'2021-01-30 04:47:46'),(37,24,10,'2021-01-30 04:47:46'),(38,24,11,'2021-01-30 04:47:46'),(39,24,12,'2021-01-30 04:47:46'),(40,24,13,'2021-01-30 04:47:46'),(41,24,14,'2021-01-30 04:47:46'),(42,24,15,'2021-01-30 04:47:46'),(43,24,16,'2021-01-30 04:47:46'),(44,24,17,'2021-01-30 04:47:46'),(45,24,18,'2021-01-30 04:47:46'),(46,24,19,'2021-01-30 04:47:46'),(47,24,20,'2021-01-30 04:47:46'),(48,5,10,'2021-01-30 04:47:46'),(49,5,11,'2021-01-30 04:47:46'),(50,5,12,'2021-01-30 04:47:46'),(51,5,13,'2021-01-30 04:47:46'),(52,5,14,'2021-01-30 04:47:46'),(53,5,15,'2021-01-30 04:47:46'),(54,5,16,'2021-01-30 04:47:46'),(55,5,17,'2021-01-30 04:47:46'),(56,5,18,'2021-01-30 04:47:46'),(57,5,19,'2021-01-30 04:47:46'),(58,5,20,'2021-01-30 04:47:46'),(59,9,10,'2021-01-30 04:47:46'),(60,9,11,'2021-01-30 04:47:46'),(61,9,12,'2021-01-30 04:47:46'),(62,9,13,'2021-01-30 04:47:46'),(63,9,14,'2021-01-30 04:47:46'),(64,9,15,'2021-01-30 04:47:46'),(65,9,16,'2021-01-30 04:47:46'),(66,9,17,'2021-01-30 04:47:46'),(67,9,18,'2021-01-30 04:47:46'),(68,9,19,'2020-01-30 04:47:46'),(69,9,20,'2021-01-30 04:47:46'),(70,7,12,'2021-01-30 04:47:46'),(71,7,13,'2021-01-30 04:47:46'),(72,7,14,'2021-01-30 04:47:46'),(73,7,15,'2021-01-30 04:47:46'),(74,7,16,'2021-01-30 04:47:46'),(75,7,17,'2021-01-30 04:47:46'),(76,7,18,'2021-01-30 04:47:46'),(77,7,20,'2021-01-30 04:47:46');
/*!40000 ALTER TABLE `user_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `phone` decimal(10,0) NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'sachin@gmail.com','abcd','Sachin Yadav',9972934723,'Madrid','2005-02-01 01:47:46'),(2,'anuj@yahoo.com','abcd','Anuj Jain',7502740385,'Ludhiana','2005-02-01 01:47:47'),(3,'kavya@rediffmail.com','abcd','Kavya Agarwal',2035753956,'Madrid','2005-02-01 01:47:48'),(4,'niraj@gmail.com','abcd','Niraj Kumar',7535765756,'Delhi','2005-02-01 01:47:49'),(5,'anmol@yahoo.com','abcd','Anmol Gautam',9383729512,'Madrid','2005-02-01 01:47:50'),(6,'dhiraj@outlook.com','abcd','Dhiraj Sinha',3829893782,'Jaipur','2005-02-01 01:47:51'),(7,'kunal@iitgn.ac.in','abcd','Kunal Kumar',6483026593,'Delhi','2005-02-01 01:47:52'),(8,'aditya@iitgn.ac.in','abcd','Aditya Puri',3289037502,'Chandigarh','2005-02-01 01:47:53'),(9,'sushant.kumar@gmail.com','abcd','Sushant Kumar',3792052942,'Mumbai','2005-02-01 01:47:54'),(10,'kalyan.reddy@iitgn.ac.in','abcd','Kalyan G. Reddy',3920395343,'Mumbai','2005-02-01 01:47:55'),(11,'sushant.goyal@gmail.com','abcd','Sushant Goyal',7583925935,'Delhi','2005-02-01 01:47:56'),(12,'andy043@gmai.com','abcd','Andy Murray',4832840284,'Madrid','2005-02-01 01:47:57'),(13,'nicole58@yahoo.com','abcd','Nicole Ray',8302643252,'Madrid','2005-02-01 01:47:58'),(14,'jon380@rediffmail.com','abcd','Jon Duse',7296937501,'New York','2005-02-01 01:47:59'),(15,'ted.yeagar@gmail.com','abcd','Ted Yeagar',9229247529,'San Diego','2005-02-01 01:48:00'),(16,'eren.yeagar@gmail.com','abcd','Eren Yeagar',4890850883,'Shiganshina','2005-02-01 01:48:01'),(17,'mikasa.ackermann@gmail.com','abcd','Mikasa Ackermann',7538925381,'Shiganshina','2005-02-01 01:48:02'),(18,'armin.arlert@yahoo.com','abcd','Armin Arlert',8539023535,'Shiganshina','2005-02-01 01:48:03'),(19,'historia80@rediffmail.com','abcd','Historia Reiss',8043253387,'Ross','2005-02-01 01:48:03'),(20,'levi84@yahoo.com','abcd','Captain Levi',3953647233,'Maria','2005-02-01 01:48:04');
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

-- Dump completed on 2021-02-03  1:49:09
