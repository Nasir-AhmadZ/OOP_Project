CREATE DATABASE  IF NOT EXISTS `electronicstore` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `electronicstore`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: electronicstore
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `computingandgaming`
--

DROP TABLE IF EXISTS `computingandgaming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `computingandgaming` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(45) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `category` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='			';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `computingandgaming`
--

LOCK TABLES `computingandgaming` WRITE;
/*!40000 ALTER TABLE `computingandgaming` DISABLE KEYS */;
INSERT INTO `computingandgaming` VALUES (1,'Apple','Apple MacBook Air 13\" 8GB/256GB Laptop - Space Grey',1000,12,'Laptop'),(2,'Lenovo','Lenovo IdeaPad Flex 5 16\" AMD Ryzen 5 5500U 8GB/512GB SSD Laptop - Grey',550,10,'Laptop'),(3,'Avita','Avita Pura 14\" TFT AMD A6-9220E 4GB/128GB Notebook Laptop - Metallic Black',270,5,'Laptop'),(4,'Asus','Asus VivoBook 14\" FHD Intel Pentium Gold 4GB/128GB Laptop - Black',350,4,'Laptop'),(5,'HP','HP 14\" AMD Ryzen 5 4GB/512GB Laptop - Silver',650,5,'Laptop'),(6,'Apple','Apple 16.2\" MacBook Pro Apple M3 512GB Laptop - Space Black',3100,5,'Laptop'),(7,'AOC','AOC 27\" FHD Curved Gaming Monitor - Black & Red',290,4,'Monitor'),(8,'AOC','AOC B2 Series 21.5\" Full HD LCD Monitor - Black',110,5,'Monitor'),(9,'AOC','AOC 23.8\" FHD WLED Backlight IPS Low Blue Light Monitor - Black',330,4,'Monitor'),(10,'HP','HP 23.8\" Intel Pentium 8GB/256GB All-in-One Desktop - Starry White ',1130,5,'Computer'),(11,'Horizon\n','Horizon AMD Ryzen 5 16GB/1TB Desktop - Black',1650,3,'Computer'),(12,'Asus','Asus 23.8\" Intel Core i3 8GB/512GB All-in-One Desktop - White & Black',700,4,'Computer'),(13,'Samsung','Samsung Galaxy A9+ 64GB 11\" Tablet - Graphite',190,5,'Tablet'),(14,'Apple','Apple iPad A13 10.2\" 64GB Wi-Fi Tablet - Space Grey',390,5,'Tablet'),(15,'Samsung\n','Samsung Galaxy Tab S9 FE 128GB Wi-Fi Tablet - Light Green',550,4,'Tablet'),(16,'Venturer','Venturer Challenger 10 10.1\" 2GB/16GB Wi-Fi Tablet - Black ',100,4,'Tablet'),(17,'Samsung\n','Samsung Galaxy Tab S8+ 12.4\" 8GB/256GB Wi-Fi Tablet - Pink Gold',1180,3,'Tablet'),(18,'Apple\n','Apple iPad Pro 12.9\" 256GB Wi-Fi Tablet - Space Grey',1610,5,'Tablet'),(19,'Sony\n','Sony PlayStation 5 (PS5 model group - slim) Disc Drive Console - White & Black',550,6,'Gaming'),(20,'Sony','Sony PlayStation 5 DualSense Wireless Controller - White',70,5,'Gaming'),(21,'Superdrive','Superdrive SV 950 Steering Wheel - Black ',240,4,'Gaming'),(22,'Asus\n','ASUS ROG Ally Gaming Handheld - White ',700,3,'Gaming'),(23,'Xbox','Xbox Series X 1TB Gaming Console - Black',550,5,'Gaming'),(24,'BX ','BX Eco Gaming Desk - Black',300,3,'Gaming'),(25,'Xbox','Xbox Wireless Controller - Carbon Black',70,4,'Gaming');
/*!40000 ALTER TABLE `computingandgaming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `age` int NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Gregory',45,'gregory@example.com'),(2,'Alice',35,'alice@exaple.com'),(3,'Daniel',22,'daniel@example.com'),(4,'Emily',25,'emily@example.com'),(5,'Michael',27,'michael@example.com'),(6,'Leonardo',32,'leonardo@example.com'),(7,'Jake',18,'jake@example.com'),(8,'Ethan',20,'ethan@example.com'),(9,'Maya',21,'maya@example.com'),(10,'Igor',43,'igor@example.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homeappliances`
--

DROP TABLE IF EXISTS `homeappliances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homeappliances` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(45) NOT NULL,
  `name` varchar(55) NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `category` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homeappliances`
--

LOCK TABLES `homeappliances` WRITE;
/*!40000 ALTER TABLE `homeappliances` DISABLE KEYS */;
INSERT INTO `homeappliances` VALUES (1,'Thor','Thor 6KG 1000 Spin Freestanding',230,7,'Washing Machine'),(2,'Bosch','Bosch series 4.9Kg 1400RPM Freestanding',550,18,'Washing Machine'),(3,'Samsung','Samsung 9Kg 1400 Spin Series 5+  Freestanding',550,20,'Washing Machine'),(4,'Thor','Thor 168L Freestanding Tall Freezer - White',340,19,'Freezer'),(5,'Hoover','Hoover 82L Undercounter Freezer',280,13,'Freezer'),(6,'NordMende','NordMende 96L Undercounter Freezer - White',500,7,'Freezer'),(7,'Electrolux','Electrolux 204 L Integrated Freezer',940,10,'Freezer'),(8,'Hoover','Hoover 521L American Fridge ',750,13,'Fridge'),(9,'Thor','Thor 262L Smart Frost Freestanding Fridge',350,15,'Fridge'),(10,'Whirlpool','WhirlPool 13 Place Settings Freestanding',700,18,'Dishwasher'),(11,'Neff','Neff N 50 60cm Fully Integrated - Stainless Steel',800,12,'Dishwasher'),(12,'Fisher & Paykel','Fisher & Paykel Built-In Drawer Dishwasher',1115,10,'Dishwasher'),(13,'Zanussi','Zanussi 60CM Freestanding Gas Cooking',900,21,'Cooker'),(14,'Indesit','Indesit 50cm Freestanding Gas Cooker',400,16,'Cooker'),(15,'Belling','Belling 60cm Freestanding Double Oven Electric Cooker',700,14,'Cooker'),(16,'NordMende ','NordMende 60cm Freestanding Double Cavity',590,12,'Cooker'),(17,'Candy','Candy Smart Pro 8Kg Freestanding Heat Pump ',430,17,'Tumble Dryer'),(18,'Zanussi','Zanussi 8Kg Freestanding Heat Pump - White',570,22,'Tumble Dryer'),(19,'Indesit','Indesit 8Kg Freestanding Condenser Dryer - White',350,15,'Tumble Dryer'),(20,'Bosch','Bosch Series 4 8Kg Freestanding Heat Pump - White',640,19,'Tumble Dryer'),(21,'Hoover','Hoover Dynamic H-Dry 300 9Kg Freestanding - White',500,11,'Tumble Dryer'),(22,'Miele','Miele 8Kg 1400 Spin Freestanding',1030,25,'Washing Machine'),(23,'Haier','Haier I-Pro Series 3 9Kg 1400 Spin',490,11,'Washing Machine'),(24,'Miele','Miele Active Plus 14 Place Fully Integrated ',1170,24,'Dishwasher'),(25,'Candy','Candy 45cm Fully Integrated Slimline Dishwasher ',340,17,'Dishwasher');
/*!40000 ALTER TABLE `homeappliances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `category` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Dyson ','Dyson Pure Hot + Cool Formaldehyde Air Purifying Fan Heater',750,13,'Heating & Cooling'),(2,'Imetec','Imetec Heated Electric Throw Blanket',120,14,'Heating & Cooling'),(3,'Daewoo','Daewoo Hot & Cold Oscillating Bladeless Fan - White',230,10,'Heating & Cooling'),(4,'Shark','Shark FlexBreeze High-Velocity Hybrid Cordless & Corded Fan',230,13,'Heating & Cooling'),(5,'Electrical Supply','2000W Floor Mounted Convector Heater',50,14,'Heating & Cooling'),(6,'Ninja','Ninja 9.5 2470W Foodie Max Dual Zone Air Fryer ',220,14,'Cooking'),(7,'Neff','Neff 25L Integrated Microwave Oven - Black',430,11,'Cooking'),(8,'Tower','Tower Vortx 9L 2600W Dual Basket Air Fryer',160,12,'Cooking'),(9,'Dimplex','Dimplex 20L 800W Freestanding Microwave Oven -  Silver',90,13,'Cooking'),(10,'Tefal','Tefal 8.3L Dual Easy Fry & Grill Air Fryer - Coal Grey',150,15,'Cooking'),(11,'Tower ','Tower 4L 1400W Digital Air Fryer - Black',65,13,'Cooking'),(12,'Sona ','Sona 20L 700W Freestanding Microwave - Black',80,11,'Cooking'),(13,'Shark','Shark 0.7L Anit Hair Wrap Corless Vacuum Cleaner',200,9,'Vacuum Cleaner'),(14,'Miele','Miele Complete C3 Powerline Cylinder Vacuum Cleaner ',250,12,'Vacuum Cleaner'),(15,'Dyson ','Dyson V8 Cordless Vacuum Cleaner - Grey',330,11,'Vacuum Cleaner'),(16,'Henry','Henry Bagged Cylinder Vacuum Cleaner -  Red ',200,14,'Vacuum Cleaner'),(17,'Dyson','Dyson 0.76L Cordless Vacuum Cleaner -  Nickel & Blue',430,10,'Vacuum Cleaner'),(18,'Sage','Sage The Barista Express Bean to Cup Coffee Machine - Brushed Stainless Steel ',590,6,'Coffee Machine'),(19,'Delonghi','Delonghi Stilosa Barista Espresso Machine & Cappucino Maker',110,5,'Coffee Machine'),(20,'Sage','Sage The Barista Touch Bean to Cup Coffee Machine - Black Truffle',950,3,'Coffee Machine'),(21,'Bosch','Tassimo Vivy 2 0.7L Pod Coffee Machine',50,7,'Coffee Machine'),(22,'Delonghi ','DeLonghi 1.7L 3000W Jug Kettle - Yellow ',70,8,'Kettle & Toaster'),(23,'George Foreman','George Foreman Large Fit Health Grill - Black',70,4,'Kettle & Toaster'),(24,'Russell Hobbs','Russell Hobbs Buckingham 1.7L Quiet Boil Kettle',40,4,'Kettle & Toaster'),(25,'Russell Hobbs','Russell Hobbs Eclipse 2400W 4 Slice Toaster - Midnight Blue',85,4,'Kettle & Toaster'),(26,'Thor','Thor 6KG 1000 Spin Freestanding',230,7,'Washing Machine'),(27,'Bosch','Bosch series 4.9Kg 1400RPM Freestanding',550,18,'Washing Machine'),(28,'Samsung','Samsung 9Kg 1400 Spin Series 5+  Freestanding',550,20,'Washing Machine'),(29,'Thor','Thor 168L Freestanding Tall Freezer - White',340,19,'Freezer'),(30,'Hoover','Hoover 82L Undercounter Freezer',280,13,'Freezer'),(31,'NordMende','NordMende 96L Undercounter Freezer - White',500,7,'Freezer'),(32,'Electrolux','Electrolux 204 L Integrated Freezer',940,10,'Freezer'),(33,'Hoover','Hoover 521L American Fridge ',750,13,'Fridge'),(34,'Thor','Thor 262L Smart Frost Freestanding Fridge',350,15,'Fridge'),(35,'Whirlpool','WhirlPool 13 Place Settings Freestanding',700,18,'Dishwasher'),(36,'Neff','Neff N 50 60cm Fully Integrated - Stainless Steel',800,12,'Dishwasher'),(37,'Fisher & Paykel','Fisher & Paykel Built-In Drawer Dishwasher',1115,10,'Dishwasher'),(38,'Zanussi','Zanussi 60CM Freestanding Gas Cooking',900,21,'Cooker'),(39,'Indesit','Indesit 50cm Freestanding Gas Cooker',400,16,'Cooker'),(40,'Belling','Belling 60cm Freestanding Double Oven Electric Cooker',700,14,'Cooker'),(41,'NordMende ','NordMende 60cm Freestanding Double Cavity',590,12,'Cooker'),(42,'Candy','Candy Smart Pro 8Kg Freestanding Heat Pump ',430,17,'Tumble Dryer'),(43,'Zanussi','Zanussi 8Kg Freestanding Heat Pump - White',570,22,'Tumble Dryer'),(44,'Indesit','Indesit 8Kg Freestanding Condenser Dryer - White',350,15,'Tumble Dryer'),(45,'Bosch','Bosch Series 4 8Kg Freestanding Heat Pump - White',640,19,'Tumble Dryer'),(46,'Hoover','Hoover Dynamic H-Dry 300 9Kg Freestanding - White',500,11,'Tumble Dryer'),(47,'Miele','Miele 8Kg 1400 Spin Freestanding',1030,25,'Washing Machine'),(48,'Haier','Haier I-Pro Series 3 9Kg 1400 Spin',490,11,'Washing Machine'),(49,'Miele','Miele Active Plus 14 Place Fully Integrated ',1170,24,'Dishwasher'),(50,'Candy','Candy 45cm Fully Integrated Slimline Dishwasher ',340,17,'Dishwasher'),(51,'Samsung','Samsung 65 S90C 4K HDR OLED Smart TV - Titan Black\"\"',1600,3,'Tv'),(52,'LG','LG evo C3 65 4K OLED Smart TV \"\"',1800,4,'Tv'),(53,'LG','LG UR78 43 4K UHD LED Smart TV - Black \"\"',350,6,'Tv'),(54,'Samsung','Samsung 43 CU7100 UHD LED 4K HDR Smart TV - Black\"\"',390,6,'Tv'),(55,'LG','LG UR81 55 4K UHD LED Smart TV - Black\"\"',550,4,'Tv'),(56,'Samsung','Samsung 77 S90C 4K HDR OLED Smart TV - Titan Black \"\"',2800,3,'Tv'),(57,'Toshiba','Toshiba 32 HD Ready Smart TV - Black\"\"',200,5,'Tv'),(58,'NordMende','NordMende 32 Flat LED HD Smart TV - Black\"\"',180,4,'Tv'),(59,'LG','LG evo G3 55 4K Ultra HD OLED Smart TV - Black\"\"',1700,3,'Tv'),(60,'Sony','Sony 75 X75WL4K Ultra HD HDR LED Smart Google TV - Black \"\"',1400,3,'Tv'),(61,'Sony','Sony 85 X80L 4K Ultra HD HDR LED Smart Google TV \"\"',2100,2,'Tv'),(62,'NordMende','NordMende 65 4K HDR Flat LED Smart TV - Black \"\"',520,4,'Tv'),(63,'JBL','JBL PartyBox Encore 100W Portable Party Speaker with Mic - Black ',300,6,'Audio'),(64,'Samsung','Samsung 3.1.2ch Lifestyle Ultra Slim Wireless Soundbar with Subwoofer - Black',700,4,'Audio'),(65,'Steepletone','Steepletone Wood Effect Auto Return Turntable - Dark Wood',200,5,'Audio'),(66,'Apple','Apple HomePod (2nd gen) Smart Speaker with Siri - Midnight Black ',350,5,'Audio'),(67,'Google','Google Nest Mini Bluetooth Smart Speaker - Charcoal',60,7,'Audio'),(68,'Sony','Sony Noise Cancelling Wireless Over-Ear Headphones - Black',240,4,'Headphones'),(69,'Apple','Apple In-Ear Wireless Airpods with Charging Case - White',150,6,'Headphones'),(70,'JBL','JBL Wave Beam In-Ear Wireless Earbuds - Black',50,5,'Headphones'),(71,'Samsung','Samsung In-Ear Wireless Galaxy Buds 2 - Black',120,4,'Headphones'),(72,'JBL','JBL Tune 720BT Over-Ear Wireless Headphones - Black',60,4,'Headphones'),(73,'Jabra','Jabra Elite 4 Active In-Ear True Wireless Sports Earbuds - Black',120,6,'Headphones'),(74,'Sony','Sony Over-Ear Wireless Bluetooth Headphone - White',60,4,'Headphones'),(75,'Apple','Apple AirPods Pro 2nd Gen In-Ear Wireless AirPods with MagSafe Charging Case - White',280,7,'Headphones'),(76,'Philips','Philips NeoPix Ultra 2 LCD Home Projector - Silver',400,4,'Projector'),(77,'Philips','Philips NeoPix Ultra 2TV+ Home Projector - Silver',440,4,'Projector'),(78,'InFocus','InFocus 4000 Lumens 1080p Projector with Short Throw Lens - Black ',1200,3,'Projector'),(79,'InFocus','InFocus 4000 Lumens 1080p Projector - Black',920,3,'Projector'),(80,'Apple','Apple MacBook Air 13 8GB/256GB Laptop - Space Grey\"\"',1000,12,'Laptop'),(81,'Lenovo','Lenovo IdeaPad Flex 5 16 AMD Ryzen 5 5500U 8GB/512GB SSD Laptop - Grey\"\"',550,10,'Laptop'),(82,'Avita','Avita Pura 14 TFT AMD A6-9220E 4GB/128GB Notebook Laptop - Metallic Black\"\"',270,5,'Laptop'),(83,'Asus','Asus VivoBook 14 FHD Intel Pentium Gold 4GB/128GB Laptop - Black\"\"',350,4,'Laptop'),(84,'HP','HP 14 AMD Ryzen 5 4GB/512GB Laptop - Silver\"\"',650,5,'Laptop'),(85,'Apple','Apple 16.2 MacBook Pro Apple M3 512GB Laptop - Space Black\"\"',3100,5,'Laptop'),(86,'AOC','AOC 27 FHD Curved Gaming Monitor - Black & Red\"\"',290,4,'Monitor'),(87,'AOC','AOC B2 Series 21.5 Full HD LCD Monitor - Black\"\"',110,5,'Monitor'),(88,'AOC','AOC 23.8 FHD WLED Backlight IPS Low Blue Light Monitor - Black\"\"',330,4,'Monitor'),(89,'HP','HP 23.8 Intel Pentium 8GB/256GB All-in-One Desktop - Starry White \"\"',1130,5,'Computer'),(90,'Horizon','Horizon AMD Ryzen 5 16GB/1TB Desktop - Black',1650,3,'Computer'),(91,'Asus','Asus 23.8 Intel Core i3 8GB/512GB All-in-One Desktop - White & Black\"\"',700,4,'Computer'),(92,'Samsung','Samsung Galaxy A9+ 64GB 11 Tablet - Graphite\"\"',190,5,'Tablet'),(93,'Apple','Apple iPad A13 10.2 64GB Wi-Fi Tablet - Space Grey\"\"',390,5,'Tablet'),(94,'Samsung','Samsung Galaxy Tab S9 FE 128GB Wi-Fi Tablet - Light Green',550,4,'Tablet'),(95,'Venturer','Venturer Challenger 10 10.1 2GB/16GB Wi-Fi Tablet - Black \"\"',100,4,'Tablet'),(96,'Samsung','Samsung Galaxy Tab S8+ 12.4 8GB/256GB Wi-Fi Tablet - Pink Gold\"\"',1180,3,'Tablet'),(97,'Apple','Apple iPad Pro 12.9 256GB Wi-Fi Tablet - Space Grey\"\"',1610,5,'Tablet'),(98,'Sony','Sony PlayStation 5 (PS5 model group - slim) Disc Drive Console - White & Black',550,6,'Gaming'),(99,'Sony ','Sony PlayStation 5 DualSense Wireless Controller - White',70,5,'Gaming'),(100,'Superdrive','Superdrive SV 950 Steering Wheel - Black ',240,4,'Gaming'),(101,'Asus','ASUS ROG Ally Gaming Handheld - White ',700,3,'Gaming'),(102,'Xbox','Xbox Series X 1TB Gaming Console - Black',550,5,'Gaming'),(103,'BX ','BX Eco Gaming Desk - Black',300,3,'Gaming'),(104,'Xbox','Xbox Wireless Controller - Carbon Black',70,4,'Gaming');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smallappliances`
--

DROP TABLE IF EXISTS `smallappliances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `smallappliances` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(45) NOT NULL,
  `name` varchar(85) NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `category` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smallappliances`
--

LOCK TABLES `smallappliances` WRITE;
/*!40000 ALTER TABLE `smallappliances` DISABLE KEYS */;
INSERT INTO `smallappliances` VALUES (1,'Dyson ','Dyson Pure Hot + Cool Formaldehyde Air Purifying Fan Heater',750,13,'Heating & Cooling'),(2,'Imetec','Imetec Heated Electric Throw Blanket',120,14,'Heating & Cooling'),(3,'Daewoo','Daewoo Hot & Cold Oscillating Bladeless Fan - White',230,10,'Heating & Cooling'),(4,'Shark','Shark FlexBreeze High-Velocity Hybrid Cordless & Corded Fan',230,13,'Heating & Cooling'),(5,'Electrical Supply','2000W Floor Mounted Convector Heater',50,14,'Heating & Cooling'),(6,'Ninja','Ninja 9.5 2470W Foodie Max Dual Zone Air Fryer ',220,14,'Cooking'),(7,'Neff','Neff 25L Integrated Microwave Oven - Black',430,11,'Cooking'),(8,'Tower','Tower Vortx 9L 2600W Dual Basket Air Fryer',160,12,'Cooking'),(9,'Dimplex','Dimplex 20L 800W Freestanding Microwave Oven -  Silver',90,13,'Cooking'),(10,'Tefal','Tefal 8.3L Dual Easy Fry & Grill Air Fryer - Coal Grey',150,15,'Cooking'),(11,'Tower ','Tower 4L 1400W Digital Air Fryer - Black',65,13,'Cooking'),(12,'Sona ','Sona 20L 700W Freestanding Microwave - Black',80,11,'Cooking'),(13,'Shark','Shark 0.7L Anit Hair Wrap Corless Vacuum Cleaner',200,9,'Vacuum Cleaner'),(14,'Miele','Miele Complete C3 Powerline Cylinder Vacuum Cleaner ',250,12,'Vacuum Cleaner'),(15,'Dyson ','Dyson V8 Cordless Vacuum Cleaner - Grey',330,11,'Vacuum Cleaner'),(16,'Henry','Henry Bagged Cylinder Vacuum Cleaner -  Red ',200,14,'Vacuum Cleaner'),(17,'Dyson','Dyson 0.76L Cordless Vacuum Cleaner -  Nickel & Blue',430,10,'Vacuum Cleaner'),(18,'Sage','Sage The Barista Express Bean to Cup Coffee Machine - Brushed Stainless Steel ',590,6,'Coffee Machine'),(19,'Delonghi','Delonghi Stilosa Barista Espresso Machine & Cappucino Maker',110,5,'Coffee Machine'),(20,'Sage','Sage The Barista Touch Bean to Cup Coffee Machine - Black Truffle',950,3,'Coffee Machine'),(21,' Bosch','Tassimo Vivy 2 0.7L Pod Coffee Machine',50,7,'Coffee Machine'),(22,'Delonghi ','DeLonghi 1.7L 3000W Jug Kettle - Yellow ',70,8,'Kettle & Toaster'),(23,'George Foreman','George Foreman Large Fit Health Grill - Black',70,4,'Kettle & Toaster'),(24,'Russell Hobbs','Russell Hobbs Buckingham 1.7L Quiet Boil Kettle',40,4,'Kettle & Toaster'),(25,'Russell Hobbs','Russell Hobbs Eclipse 2400W 4 Slice Toaster - Midnight Blue',85,4,'Kettle & Toaster');
/*!40000 ALTER TABLE `smallappliances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tvandaudio`
--

DROP TABLE IF EXISTS `tvandaudio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tvandaudio` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(45) NOT NULL,
  `name` varchar(85) NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `category` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tvandaudio`
--

LOCK TABLES `tvandaudio` WRITE;
/*!40000 ALTER TABLE `tvandaudio` DISABLE KEYS */;
INSERT INTO `tvandaudio` VALUES (1,'Samsung','Samsung 65\" S90C 4K HDR OLED Smart TV - Titan Black',1600,3,'Tv'),(2,'LG','LG evo C3 65\" 4K OLED Smart TV ',1800,4,'Tv'),(3,'LG','LG UR78 43\" 4K UHD LED Smart TV - Black ',350,6,'Tv'),(4,'Samsung','Samsung 43\" CU7100 UHD LED 4K HDR Smart TV - Black',390,6,'Tv'),(5,'LG','LG UR81 55\" 4K UHD LED Smart TV - Black',550,4,'Tv'),(6,'Samsung','Samsung 77\" S90C 4K HDR OLED Smart TV - Titan Black ',2800,3,'Tv'),(7,'Toshiba','Toshiba 32\" HD Ready Smart TV - Black',200,5,'Tv'),(8,'NordMende','NordMende 32\" Flat LED HD Smart TV - Black',180,4,'Tv'),(9,'LG','LG evo G3 55\" 4K Ultra HD OLED Smart TV - Black',1700,3,'Tv'),(10,'Sony','Sony 75\" X75WL4K Ultra HD HDR LED Smart Google TV - Black ',1400,3,'Tv'),(11,'Sony','Sony 85\" X80L 4K Ultra HD HDR LED Smart Google TV ',2100,2,'Tv'),(12,'NordMende','NordMende 65\" 4K HDR Flat LED Smart TV - Black ',520,4,'Tv'),(13,'JBL','JBL PartyBox Encore 100W Portable Party Speaker with Mic - Black ',300,6,'Audio'),(14,'Samsung','Samsung 3.1.2ch Lifestyle Ultra Slim Wireless Soundbar with Subwoofer - Black',700,4,'Audio'),(15,'Steepletone','Steepletone Wood Effect Auto Return Turntable - Dark Wood',200,5,'Audio'),(16,'Apple','Apple HomePod (2nd gen) Smart Speaker with Siri - Midnight Black ',350,5,'Audio'),(17,'Google','Google Nest Mini Bluetooth Smart Speaker - Charcoal',60,7,'Audio'),(18,'Sony','Sony Noise Cancelling Wireless Over-Ear Headphones - Black',240,4,'Headphones'),(19,'Apple','Apple In-Ear Wireless Airpods with Charging Case - White',150,6,'Headphones'),(20,'JBL','JBL Wave Beam In-Ear Wireless Earbuds - Black',50,5,'Headphones'),(21,'Samsung','Samsung In-Ear Wireless Galaxy Buds 2 - Black',120,4,'Headphones'),(22,'JBL','JBL Tune 720BT Over-Ear Wireless Headphones - Black',60,4,'Headphones'),(23,'Jabra','Jabra Elite 4 Active In-Ear True Wireless Sports Earbuds - Black',120,6,'Headphones'),(24,'Sony','Sony Over-Ear Wireless Bluetooth Headphone - White',60,4,'Headphones'),(25,'Apple','Apple AirPods Pro 2nd Gen In-Ear Wireless AirPods with MagSafe Charging Case - White',280,7,'Headphones'),(26,'Philips','Philips NeoPix Ultra 2+ LCD Home Projector - Silver',400,4,'Projector'),(27,'Philips','Philips NeoPix Ultra 2TV+ Home Projector - Silver',440,4,'Projector'),(28,'InFocus','InFocus 4000 Lumens 1080p Projector with Short Throw Lens - Black ',1200,3,'Projector'),(29,'InFocus','InFocus 4000 Lumens 1080p Projector - Black',920,3,'Projector');
/*!40000 ALTER TABLE `tvandaudio` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-12  1:24:11
