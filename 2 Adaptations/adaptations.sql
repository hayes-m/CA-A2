-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: adaptations
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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `bookName` varchar(50) DEFAULT NULL,
  `bookID` int(11) NOT NULL,
  `author` varchar(50) DEFAULT NULL,
  `publicationYear` int(11) DEFAULT NULL,
  `pages` int(11) DEFAULT NULL,
  `movieID` int(11) DEFAULT NULL,
  PRIMARY KEY (`bookID`),
  KEY `movieID` (`movieID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES ('Rita Hayworth and the Shawshank Redemption',301,'Stephen King',1982,144,101),('The Godfather',302,'Mario Puzo',1969,608,102),('Schindlers Ark',303,'Thomas Keneally',1982,432,104),('The Lord of the Rings: The Return of the King',304,'JRR Tolkien',1955,464,105),('The Lord of the Rings: The Fellowship of the Ring',305,'JRR Tolkien',1954,448,106),('Fight Club',306,'Chuck Palahniuk',1996,224,107),('Forrest Gump',307,'Winston Groom',1986,240,108),('The Lord of the Rings: The Two Towers',308,'JRR Tolkien',1954,352,109),('Goodfellas',309,'Nicholas Pileggi',1985,304,110),('The Sicilian',310,'Mario Puzo',1969,608,103),('One Flew Over the Cuckoos Nest',311,'Ken Kesey',1962,320,111),('Cidade de Deus',312,'Paulo Lins',1997,496,112);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directors`
--

DROP TABLE IF EXISTS `directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directors` (
  `directorName` varchar(50) DEFAULT NULL,
  `activeFrom` int(11) DEFAULT NULL,
  `country` varchar(2) DEFAULT NULL,
  `directorID` int(11) NOT NULL,
  `movieID` int(11) DEFAULT NULL,
  PRIMARY KEY (`directorID`),
  KEY `movieID` (`movieID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directors`
--

LOCK TABLES `directors` WRITE;
/*!40000 ALTER TABLE `directors` DISABLE KEYS */;
INSERT INTO `directors` VALUES ('Frank Darabont',1981,'US',201,101),('Steven Spielberg',1959,'US',203,104),('Peter Jackson',1976,'NZ',204,105),('David Fincher',1980,'US',205,107),('Robert Zemeckis',1972,'US',206,108),('Martin Scorsese',1962,'US',207,110),('MiloÅ¡ Forman',1953,'CZ',208,111),('Fernando Meirelles',1982,'BR',209,112);
/*!40000 ALTER TABLE `directors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `movieName` varchar(50) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `genre` varchar(20) DEFAULT NULL,
  `runtime` int(11) DEFAULT NULL,
  `directorID` int(11) DEFAULT NULL,
  `movieID` int(11) NOT NULL,
  `bookID` int(11) DEFAULT NULL,
  PRIMARY KEY (`movieID`),
  KEY `bookID` (`bookID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES ('The Shawshank Redemption',1994,'Drama',142,201,101,301),('The Godfather: Part I',1972,'Crime',175,202,102,302),('The Godfather: Part II',1974,'Crime',202,202,103,310),('Schindlers List',1993,'Biography',195,203,104,303),('The Lord of the Rings: Return of the King',2003,'Fantasy',263,204,105,304),('The Lord of the Rings: Fellowship of the Ring',2001,'Fantasy',238,204,106,305),('Fight Club',1999,'Drama',139,205,107,306),('Forrest Gump',1994,'Drama',142,206,108,307),('The Lord of the Rings: The Two Towers',2002,'Fantasy',226,204,109,308),('Goodfellas',1990,'Biography',146,207,110,309),('One Flew Over the Cuckoos Nest',1975,'Drama',133,208,111,311),('Cidade de Deus',2002,'Crime',130,209,112,312);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-21 22:14:37
