CREATE DATABASE  IF NOT EXISTS `group4campuseats` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `group4campuseats`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: group4campuseats
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `delivery1`
--

DROP TABLE IF EXISTS `delivery1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery1` (
  `delivery_id` int DEFAULT NULL,
  `driver_id` int DEFAULT NULL,
  `vehicle_id` int DEFAULT NULL,
  `delivery_time` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery1`
--

LOCK TABLES `delivery1` WRITE;
/*!40000 ALTER TABLE `delivery1` DISABLE KEYS */;
INSERT INTO `delivery1` VALUES (5,3,8,'9/5/2021 15:15'),(10,6,17,'9/9/2021 13:02'),(14,8,4,'9/27/2021 4:20'),(6,4,4,'9/27/2021 19:17'),(8,4,7,'9/15/2021 20:06'),(9,5,15,'9/21/2021 15:13'),(13,7,1,'9/20/2021 19:33'),(12,6,16,'9/24/2021 14:17'),(7,3,12,'9/13/2021 13:46'),(2,2,7,'9/10/2021 20:13'),(15,7,16,'9/20/2021 12:30'),(11,5,20,'9/6/2021 18:54'),(16,8,12,'9/28/2021 13:48'),(4,2,13,'9/15/2021 18:59'),(1,1,3,'9/20/2021 19:22'),(3,1,2,'9/30/2021 21:20');
/*!40000 ALTER TABLE `delivery1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facualty1`
--

DROP TABLE IF EXISTS `facualty1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facualty1` (
  `faculty_id` int DEFAULT NULL,
  `person_id` int DEFAULT NULL,
  `title` text,
  `degree_college` text,
  `highest_degree` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facualty1`
--

LOCK TABLES `facualty1` WRITE;
/*!40000 ALTER TABLE `facualty1` DISABLE KEYS */;
INSERT INTO `facualty1` VALUES (1,8,'Assistant Professor','UF','PhD'),(2,11,'Professor','SJSU','Master'),(3,21,'Adjunct Professor','UNCC','Master'),(4,16,'Assistant Professor','UF','Bachelor'),(5,6,'Assistant Professor','Yale','Master'),(6,4,'Professor','CMU','PhD');
/*!40000 ALTER TABLE `facualty1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items1`
--

DROP TABLE IF EXISTS `items1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items1` (
  `item_id` int DEFAULT NULL,
  `restaurant_id` int DEFAULT NULL,
  `Order_ID` int DEFAULT NULL,
  `Item_order` text,
  `Quantity` int DEFAULT NULL,
  `Item Price` text,
  `Special Instruction` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items1`
--

LOCK TABLES `items1` WRITE;
/*!40000 ALTER TABLE `items1` DISABLE KEYS */;
INSERT INTO `items1` VALUES (1,101,1,'Chop Steak Tacos',1,'$14.99 ','Salsa/chips on side '),(2,102,2,'Gaot Curry ',1,'16.5',''),(3,103,3,'Bibimbap',2,'19.5','extra ginger sauce'),(4,104,4,'Bacon double cheeseburger',1,'7.39','No mustard'),(5,105,5,'Smoked wings ',1,'18.25','Ranch on side'),(6,106,6,'Perfect combo',1,'19.99','hot peooer flakes'),(7,103,7,'Crunchy Tacos',4,'4.25',''),(8,101,8,'Taco Salad',1,'17.59','Extra  gauc'),(9,102,9,'Masala Dosa ',1,'14.5','Extra sauce'),(10,103,10,'Beef Kushi ',1,'12.59',''),(11,105,11,'Buffalo Fingers',1,'11.5',''),(12,106,12,'New York Deal ',2,'13.99',''),(13,101,13,'Nachos &Tacao Meal ',2,'17.25','No cheese'),(14,102,14,'Garlic Naan',3,'12',''),(15,103,15,'Bibimbap',1,'19.5','extra ginger sauce');
/*!40000 ALTER TABLE `items1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int DEFAULT NULL,
  `person_id` int DEFAULT NULL,
  `delivery_id` int DEFAULT NULL,
  `location_id` int DEFAULT NULL,
  `driver_id` int DEFAULT NULL,
  `restaurant_id` int DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `delivery_charge` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,55,1,1,1,101,14.99,5),(2,58,2,2,2,102,16.5,5),(3,56,3,3,3,103,19.5,5),(4,57,4,4,4,104,7.39,5),(5,51,5,5,5,105,18.25,5),(6,54,6,6,6,106,19.99,5),(7,53,7,7,7,103,4.25,5),(8,52,8,8,8,101,17.59,5),(9,55,9,1,1,102,14.5,5),(10,58,10,2,2,103,12.59,5),(11,57,11,4,3,105,11.5,5),(12,51,12,5,4,106,13.99,5),(13,54,13,6,5,101,17.5,5),(14,55,14,8,6,102,12,5),(15,53,15,7,7,103,19.5,5);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person1`
--

DROP TABLE IF EXISTS `person1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person1` (
  `person_id` int DEFAULT NULL,
  `person_name` text,
  `person_email` text,
  `cell` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person1`
--

LOCK TABLES `person1` WRITE;
/*!40000 ALTER TABLE `person1` DISABLE KEYS */;
INSERT INTO `person1` VALUES (1,'Keith Turner','shanon08@example.com',9768623560),(2,'Ms. Antonette Keeling','brady73@example.com',9710540609),(3,'Miss Rosanna Connelly','alayna.schowalter@example.net',9436829146),(4,'Noel Emard','icie96@example.org',9166085646),(5,'Trudie McClure Jr.','hwolf@example.net',9831320422),(6,'Dr. Velva Howe','schmidt.stephan@example.org',9401293781),(51,'Zackery Hermiston','donny20@example.org',9717042066),(52,'Kari Runte','weimann.marshall@example.org',9873383120),(53,'Alena Macejkovic','jesus54@example.org',9826083434),(54,'Braeden Schamberger','wilfred.hickle@example.org',9294415272),(55,'Mariana Schowalter II','zion.koch@example.net',9236157601),(56,'Osvaldo Casper','queen81@example.com',9627646768),(57,'Malika Beatty','yharvey@example.com',9598094832),(58,'Lisa Conroy Jr.','ilueilwitz@example.com',9228064461),(68,'Ms. Meredith Gerlach II','rubie.rosenbaum@example.net',9703845293),(75,'Mr. Alfonso Ullrich IV','beer.camren@example.net',9456875969),(93,'Stone Kshlerin','peter.cole@example.org',9851384624),(96,'Prof. Rahul Howe','anita.torphy@example.com',9644683434),(98,'Prof. Yessenia Batz','percy62@example.com',9328404976),(104,'Myron Mayert','erling.boyle@example.org',9853200718),(110,'Glennie Corkery Sr.','filomena.mayer@example.com',9467683043),(143,'Myrl Goodwin','kub.jameson@example.net',9851877198),(27,'Eden Schowalter','montana49@example.com',9918645459),(31,'Lilliana Emard','xnicolas@example.com',9945887810),(38,'Blaise Dare','madison95@example.org',9543994427);
/*!40000 ALTER TABLE `person1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ratings` (
  `rating_id` int DEFAULT NULL,
  `item_id` int DEFAULT NULL,
  `restaurant_rating` int DEFAULT NULL,
  `driver rating` text,
  `Comment` text,
  `Picture` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (1,1,5,'3','Great steak',''),(2,2,3,'3','Too sweet',''),(3,3,4,'','',''),(4,4,3,'','',''),(5,5,2,'','',''),(7,7,3,'3','',''),(8,8,1,'3','',''),(9,9,5,'','Excellent food',''),(10,10,5,'','Excellent food',''),(12,12,2,'','',''),(13,13,3,'','Ok',''),(14,14,1,'','','');
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurants2`
--

DROP TABLE IF EXISTS `restaurants2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurants2` (
  `restaurant_id` int DEFAULT NULL,
  `location` text,
  `restaurant_name` text,
  `schedule` text,
  `website` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurants2`
--

LOCK TABLES `restaurants2` WRITE;
/*!40000 ALTER TABLE `restaurants2` DISABLE KEYS */;
INSERT INTO `restaurants2` VALUES (101,'9201 University City Blvd','Salsarita Fresh Cantina','12pM-9PM','www.salsaritas.com'),(102,'9510 University City Blvd Ste 101','Passage to India Indian Cuisine','12pM-3PM, 5-9PM','www.passagetoindianc.com'),(103,'9630 University City Blvd','Hanaya Garden Japanese Grill ','12M-7PM','www.hanayagarden.com'),(104,'243 Cone Center','ChartWells ','8AM-6PM','chartwellcatering@uncc.edu'),(105,'9005 J M Keynes Dr # 2 ','Boardwalk Billies Raw Bar & Ribs','12pm-9PM','www.boardwalkbillys.com'),(106,'9630 University City Blvd Ste F ','Dominos Pizza ','12PM-9PM','www.pizza.dominos.com');
/*!40000 ALTER TABLE `restaurants2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int DEFAULT NULL,
  `person_id` int DEFAULT NULL,
  `graduation_year` int DEFAULT NULL,
  `major` text,
  `type` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (7,110,1989,'Philosophy','Undergraduate'),(26,143,1977,'Chemical','Undergraduate'),(31,68,1981,'Chemical','Graduate'),(115,98,1985,'Civil','Graduate'),(133,75,1988,'Accounts','Graduate'),(146,104,2006,'Electronics','Graduate'),(147,96,1985,'Mechanical','Graduate'),(43,93,1975,'Philosophy','Graduate'),(11,55,2017,'Electrical','Undergraduate'),(14,58,2005,'Mechanical','Graduate'),(47,56,1990,'Computer Science','Undergraduate'),(48,57,1982,'Accounts','Graduate'),(58,51,2001,'Accounts','Graduate'),(101,54,1984,'Chemical','Graduate'),(106,53,1992,'Chemical','Graduate'),(149,52,1995,'Cyber Security','Undergraduate');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle1`
--

DROP TABLE IF EXISTS `vehicle1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle1` (
  `vehicle_id` int DEFAULT NULL,
  `vehicle_plate` int DEFAULT NULL,
  `model` text,
  `make` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle1`
--

LOCK TABLES `vehicle1` WRITE;
/*!40000 ALTER TABLE `vehicle1` DISABLE KEYS */;
INSERT INTO `vehicle1` VALUES (1,4333,'p','Mercedes'),(2,8289,'y','BMW'),(3,1126,'h','Bugatti'),(4,7749,'p','Audi'),(5,2644,'z','BMW'),(6,9878,'o','Kia'),(7,4697,'i','Kia'),(8,9687,'s','Mercedes'),(9,3364,'c','Hyundai'),(10,8683,'z','Toyota'),(11,5436,'i','Kia'),(12,9357,'e','Kia'),(13,6519,'z','Toyota'),(14,3585,'t','Hyundai'),(15,2767,'d','Bugatti'),(16,4184,'j','Mercedes'),(17,6489,'l','BMW'),(18,4260,'j','Audi'),(19,6455,'d','Mercedes'),(20,7009,'q','Toyota');
/*!40000 ALTER TABLE `vehicle1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-07 15:17:28
