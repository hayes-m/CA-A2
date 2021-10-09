-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: crazyjoe
-- ------------------------------------------------------
-- Server version	5.7.32-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `consoles`
--

DROP TABLE IF EXISTS `consoles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consoles` (
  `consoleID` int(11) NOT NULL AUTO_INCREMENT,
  `consoleName` varchar(30) DEFAULT NULL,
  `manufacturer` varchar(20) DEFAULT NULL,
  `colour` varchar(10) DEFAULT NULL,
  `consolePrice` float DEFAULT NULL,
  `region` varchar(5) DEFAULT NULL,
  `consoleStock` int(11) DEFAULT NULL,
  PRIMARY KEY (`consoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consoles`
--

LOCK TABLES `consoles` WRITE;
/*!40000 ALTER TABLE `consoles` DISABLE KEYS */;
INSERT INTO `consoles` VALUES (1,'DS','Nintendo','Red',80,'PAL',5),(2,'3DS','Nintendo','Blue',180,'PAL',3),(3,'3DS','Nintendo','Gold',180,'PAL',1),(4,'Wii','Nintendo','Black',130,'PAL',3),(5,'Wii','Nintendo','White',130,'PAL',2),(6,'WiiU','Nintendo','White',250,'PAL',3),(7,'Xbox360','Microsoft','Black',290,'PAL',2),(8,'PS3','Sony','Black',260,'PAL',2),(9,'PSP','Sony','Black',130,'PAL',0),(10,'PS2','Sony','Black',50,'PAL',2),(11,'PS2','Sony','White',50,'PAL',2),(12,'Xbox360','Microsoft','White',290,'PAL',4);
/*!40000 ALTER TABLE `consoles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `customerID` int(11) NOT NULL AUTO_INCREMENT,
  `customerName` varchar(50) DEFAULT NULL,
  `storeName` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (100,'Pauline Smith','Gamelife','11 Jamestown Court, Galway','081-4125215'),(101,'Peter Murphy','Pete\'s Shack','The Laurels, Perrystown, Dublin 6W','082-9891234'),(102,'Brian McDermott','Electronics Extreme','31a Hamilton Court, Bray, Wicklow','080-1242412'),(103,'Frank Darcy','Gameland','12 Shop Street, Galway','081-124121'),(104,'Ron Hoey','Gamelife','31 Sallins View, Naas, Kildare','None'),(105,'Tracey Nolan','The Smart Store','1 Brookfield Close, Artane, D5','01-8212311'),(106,'Francoise Lideau','Les Artisans','23 Rue Des Martyrs, 5 Arrondissement, 34533 Paris, France','0033 123 83473'),(107,'Ronan O\'Hare','Gamelife','312 Verbena Lawns, Bayside, Dublin','01-8231223'),(108,'Sean O\'Connor','Sean O\'Connor','The Cloisters, Dalkey Village Dublin','01-232233'),(109,'Sarah Phelin','Egame.com','Apt 232, Building 33, IFSC, D1','081-2141243'),(110,'Jamie Farrell','ZoneGame','Dunstone Cottage, Chester, 3DX-842, Cheshire UK','0044-325 32423'),(111,'Owen Moore','Cool Bitz','1 Brackenstown walk, Dundalk, Louth','081-124211'),(112,'Kiernan Flynn','BitzNBytez','34 Ballycoolin Heights, D15','None'),(113,'Ghazi Al-Aradi','Al-Duraz Games','Building 43, Road 1321, Manama, Kingdom of Bahrain','00973-235324342'),(114,'Johnny Reilly','GameShack','22 Underhill Way, Thurles, Co. Tipperary','085-111161'),(115,'Ron Howard','Cinderella Gaming','123 Russell St, Athlone, Westmeath','087-5556958');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `games` (
  `gameID` int(11) NOT NULL AUTO_INCREMENT,
  `gameName` varchar(50) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `gameStock` int(11) DEFAULT NULL,
  `gamePrice` float DEFAULT NULL,
  PRIMARY KEY (`gameID`)
) ENGINE=InnoDB AUTO_INCREMENT=1014 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (1000,'Game details unknown',NULL,NULL,NULL),(1001,'Assassins Creed',15,50,32),(1002,'Call of Duty',18,32,32),(1003,'Dead Island',18,122,25),(1004,'FIFA 13',12,21,35),(1005,'Luigi\'s Mansion',7,122,22),(1006,'Super Mario Bros U',3,23,22),(1007,'Tomadachi',12,121,20),(1008,'Lego City',7,33,15),(1009,'Gorf',7,62,3),(1010,'Dragons Dogma',18,280,40),(1011,'Injustice',18,122,40),(1012,'Red Dead Redemption 2',18,15,40),(1013,'Grand theft Auto V',18,58,35);
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales` (
  `saleID` int(11) NOT NULL AUTO_INCREMENT,
  `customerID` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `gameID` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `margin` int(11) DEFAULT NULL,
  PRIMARY KEY (`saleID`),
  KEY `fk_sale_cust` (`customerID`),
  KEY `fk_sale_game` (`gameID`),
  CONSTRAINT `fk_sale_cust` FOREIGN KEY (`customerID`) REFERENCES `customers` (`customerID`),
  CONSTRAINT `fk_sale_game` FOREIGN KEY (`gameID`) REFERENCES `games` (`gameID`)
) ENGINE=InnoDB AUTO_INCREMENT=12934 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (12859,100,21,1005,'2020-09-04',10),(12860,100,21,1005,'2020-09-04',10),(12861,100,45,1000,'2020-09-05',0),(12862,100,55,1008,'2020-09-05',10),(12863,100,30,1003,'2020-09-05',10),(12864,100,35,1006,'2020-09-07',10),(12865,100,46,1001,'2020-09-09',10),(12866,101,10,1004,'2020-09-09',0),(12867,101,10,1000,'2020-09-09',10),(12868,101,25,1010,'2020-09-09',10),(12869,101,5,1008,'2020-09-10',10),(12870,101,10,1003,'2020-09-10',0),(12871,102,10,1004,'2020-09-10',5),(12872,102,10,1007,'2020-09-12',0),(12873,102,10,1006,'2020-09-12',0),(12874,102,35,1003,'2020-09-12',5),(12875,102,5,1000,'2020-09-14',10),(12876,103,25,1004,'2020-09-15',10),(12877,103,52,1010,'2020-09-17',0),(12878,103,55,1003,'2020-09-17',5),(12879,103,26,1005,'2020-09-17',0),(12880,103,25,1008,'2020-09-17',0),(12881,104,35,1007,'2020-09-19',10),(12882,104,30,1004,'2020-09-21',0),(12883,104,5,1001,'2020-09-21',5),(12884,104,5,1001,'2020-09-21',5),(12885,104,35,1007,'2020-09-23',10),(12886,104,15,1003,'2020-09-25',10),(12887,105,10,1004,'2020-09-27',10),(12888,105,10,1010,'2020-09-27',10),(12889,105,23,1007,'2020-09-27',0),(12890,105,10,1006,'2020-09-27',0),(12891,105,46,1003,'2020-09-27',10),(12892,106,5,1003,'2020-09-29',10),(12893,106,25,1010,'2020-09-30',10),(12894,106,5,1001,'2020-09-02',0),(12895,106,35,1010,'2020-09-02',10),(12896,106,20,1000,'2020-09-03',10),(12897,107,2,1001,'2020-09-03',0),(12898,107,3,1011,'2020-09-03',10),(12899,107,40,1001,'2020-09-04',0),(12900,107,5,1005,'2020-09-06',10),(12901,107,15,1011,'2020-09-07',5),(12902,108,5,1010,'2020-09-07',0),(12903,108,3,1000,'2020-09-07',5),(12904,108,40,1000,'2020-09-09',10),(12905,108,85,1006,'2020-09-11',0),(12906,108,30,1007,'2020-09-12',5),(12907,109,35,1001,'2020-09-13',10),(12908,109,5,1001,'2020-09-15',0),(12909,109,3,1005,'2020-09-17',10),(12910,109,15,1007,'2020-09-19',0),(12911,109,5,1011,'2020-09-21',5),(12912,110,30,1010,'2020-09-21',0),(12913,110,45,1010,'2020-09-23',0),(12914,110,5,1010,'2020-09-25',5),(12915,110,2,1000,'2020-09-26',0),(12916,110,3,1011,'2020-09-27',10),(12917,111,4,1002,'2020-09-27',0),(12918,111,2,1007,'2020-09-27',10),(12919,111,12,1000,'2020-09-27',0),(12920,111,2,1001,'2020-09-27',10),(12921,111,3,1001,'2020-09-29',10),(12922,112,2,1011,'2020-09-01',10),(12923,112,30,1001,'2020-09-01',0),(12924,112,10,1010,'2020-09-01',0),(12925,112,3,1004,'2020-09-02',0),(12926,112,50,1010,'2020-09-03',0),(12927,113,1,1001,'2020-09-04',0),(12928,113,4,1003,'2020-09-04',10),(12929,113,4,1006,'2020-09-06',5),(12930,113,5,1007,'2020-09-08',5),(12931,113,5,1008,'2020-09-09',5),(12932,101,20,1005,'2020-09-29',10),(12933,105,22,1007,'2020-12-12',5);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-21 22:14:55
