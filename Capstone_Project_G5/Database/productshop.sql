-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: productshop
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `addtocart`
--

DROP TABLE IF EXISTS `addtocart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addtocart` (
  `email` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `pid` int NOT NULL,
  `pname` varchar(40) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `url` varchar(10000) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addtocart`
--

LOCK TABLES `addtocart` WRITE;
/*!40000 ALTER TABLE `addtocart` DISABLE KEYS */;
/*!40000 ALTER TABLE `addtocart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `username` varchar(20) DEFAULT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('Meer','kalesha@gmail.com','Shaik','9030688828'),('user','0@5.com',' Meer$555','9876543201');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon`
--

DROP TABLE IF EXISTS `coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupon` (
  `id` int NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `value` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon`
--

LOCK TABLES `coupon` WRITE;
/*!40000 ALTER TABLE `coupon` DISABLE KEYS */;
INSERT INTO `coupon` VALUES (12,'MeerOffer','New User',1099),(1321,'SANA50','all users',8000),(121,'shannu89','User',8699);
/*!40000 ALTER TABLE `coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` int NOT NULL,
  `ProductID` int NOT NULL,
  `Quantity` int NOT NULL,
  `Date` datetime DEFAULT CURRENT_TIMESTAMP,
  `Email` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `Email` (`Email`),
  KEY `ProductID` (`ProductID`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Email`) REFERENCES `users` (`email`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `product` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (132,34,4,'2022-08-23 19:40:24','Meer@M.com'),(106,56,45,'2022-08-22-18:09:01','Shannu9@y.com');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `pid` int NOT NULL,
  `pname` varchar(40) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `url` varchar(10000) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'REDMI Note 10S',14999,'https://rukminim1.flixcart.com/image/832/832/kyeqjrk0/mobile/y/u/t/-original-imagan9qzdf2hbgy.jpeg?q=70',40,'Mobiles'),
(2,'realme 9i 5G',14990,'https://rukminim1.flixcart.com/image/832/832/xif0q/mobile/o/b/a/-original-imaghbequzj25wy2.jpeg?q=70',21,'Mobiles'),
(101,'Striped Men Polo Neck Blue T-Shirt',369,'https://rukminim1.flixcart.com/image/603/724/l1grgcw0/t-shirt/x/o/5/m-t428hs-tm5p-eyebogler-original-imagdf2egzjxeqgk.jpeg?q=50',22,'Fashion'),
(23,'ASUS TUF Gaming F15 Core i5 10th Gen',60999,'https://rukminim1.flixcart.com/image/832/832/l1mh7rk0/computer/f/p/m/tuf-gaming-gaming-laptop-asus-original-imagd58awzmhgbaa.jpeg?q=70',6,'Electronics'),
(24,'Ruchi Gold Palm Oil Pouch',125,'https://rukminim1.flixcart.com/image/832/832/l05lx8w0/edible-oil/l/v/e/-original-imagcy268pngbkvv.jpeg?q=70',5,'Grocery'),
(3,'MSI Bravo 15 Ryzen 5 Hexa Core 5600H',54999,'https://rukminim1.flixcart.com/image/832/832/xif0q/computer/7/3/l/-original-imagha3pvvc2xuz2.jpeg?q=70',23,'Electronics'),
(123,'Iphone 13',74999,'https://rukminim1.flixcart.com/image/832/832/ktketu80/mobile/2/y/o/iphone-13-mlpk3hn-a-apple-original-imag6vpyur6hjngg.jpeg?q=70',20,'Mobiles'),
(124,'Iphone SE',29999,'https://rukminim1.flixcart.com/image/312/312/k9loccw0/mobile/6/8/g/apple-iphone-se-mxvv2hn-a-original-imafrcqmfh4zznmq.jpeg?q=70',20,'Mobiles'),
(195,'Iphone 12 Mini',45499,'https://rukminim1.flixcart.com/image/312/312/kg8avm80/mobile/s/h/f/apple-iphone-12-mini-dummyapplefsn-original-imafwgbfukehtnxv.jpeg?q=70',20,'Mobiles'),
(126,'Iqoo Neo 6 5g',28499,'https://rukminim1.flixcart.com/image/312/312/l5h2xe80/mobile/5/c/q/neo-6-5g-i2202-iqoo-original-imagg59gzac7ypwh.jpeg?q=70',20,'Mobiles'),
(127,'Boat Stone 350',2499,'https://rukminim1.flixcart.com/image/612/612/kingqkw0-0/speaker/mobile-tablet-speaker/s/8/i/stone-350-boat-original-imafyebfuaumdezs.jpeg?q=70',20,'Electronics'),
(128,'JBL Flip',5999,'https://rukminim1.flixcart.com/image/612/612/k4x2du80/speaker/mobile-tablet-speaker/c/z/f/jbl-flip-essential-original-imafnpuhahqwvwhw.jpeg?q=70',26,'Electronics'),
(129,'Apple 2022 Macbook Air M2',92990,'https://rukminim1.flixcart.com/image/312/312/l4hcx3k0/computer/a/b/i/macbook-air-thin-and-light-laptop-apple-original-imagfdf4xnbyyxpa.jpeg?q=70',5,'Electronics'),
(130,'Lenovo Ideapad',34990,'https://rukminim1.flixcart.com/image/312/312/keaaavk0/computer/x/m/y/lenovo-na-laptop-original-imafuzt8r5jqppfn.jpeg?q=70',5,'Electronics'),
(191,'WoodLand Sandals ',2199,'https://rukminim1.flixcart.com/image/693/832/k52s58w0/sandal/v/c/f/gp-2669117khaki-42-woodland-khaki-original-imafnujppvk962fb.jpeg?q=50',50,'Fashion'),
(132,'Rare rabit Printed Shirt',2399,'https://rukminim1.flixcart.com/image/452/542/ks6ef0w0/shirt/q/n/m/3xl-twerk-beige-rare-rabbit-original-imag5syaedczeu7z.jpeg?q=50',50,'Fashion'),
(133,'T-Shirts ',799,'https://rukminim1.flixcart.com/image/452/542/l0igvww0/t-shirt/q/k/i/l-fl021-flyind-vogue-outfit-original-imagcadsmzdfpfrr.jpeg?q=50',65,'Fashion'),
(134,'T-Shirts Eyebogler',899,'https://rukminim1.flixcart.com/image/452/542/kgqvlow0-0/t-shirt/h/a/o/l-t322-blwh-seven-rocks-original-imafwwq4nusfvfw9.jpeg?q=50',87,'Fashion'),
(135,'Pure Peanut Butter 400 g ',89,'https://rukminim1.flixcart.com/image/832/832/khcb7gw0/jam-spread/c/8/y/400-100-pure-peanut-butter-creamy-yummy-unsweetened-peanut-original-imafxdy3ysc7tc6v.jpeg?q=70',87,'Grocery'),
(137,'WINGREENS Premium Veg Mayo 800 g ',85,'https://rukminim1.flixcart.com/image/832/832/kqzj7gw0/jam-spread/l/q/g/premium-veg-mayo-pouch-mayonnaise-wingreens-original-imag4v6vpp5xx3ez.jpeg?q=70',89,'Grocery'),
(138,'Yu Peri Peri Cup Pasta ',65,'https://rukminim1.flixcart.com/image/832/832/l13whow0/pasta/r/c/n/220-na-instant-1-yu-original-imagcqyvpdxj5aqb.jpeg?q=70',67,'Grocery'),
(139,' Hand Gesture Speed Car For Kids',2849,'https://rukminim1.flixcart.com/image/832/832/xif0q/remote-control-toy/n/3/t/speed-pioneer-multi-functioning-with-360-twisting-lights-music-original-imaggcnudqqxg7zg.jpeg?q=70',40,'Toys'),
(141,'Rubic Cube',145,'https://rukminim1.flixcart.com/image/612/612/jqzitu80/puzzle/h/k/e/2-high-speed-magic-cube-combo-set-of-2-3x3-qiyi-3x3-black-puzzle-original-imaf78yjkwpyp5gh.jpeg?q=70',40,'Toys'),
(106,'Fortune Sunlite Refined Sunflower Oil Can',845,'https://rukminim1.flixcart.com/image/832/832/kflftzk0hlty2aw-0/edible-oil/2/m/z/sunlite-refined-can-sunflower-oil-fortune-original-imafw37vp5mntzzh.jpeg?q=70',67,'Grocery');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(20) DEFAULT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('Meer','kalesha@gmail.com','Shaik','9030688828'),('user','0@5.com',' Meer$555','9876543201');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'productshop'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-23 15:12:17
