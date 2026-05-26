-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: snm
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `filesdata`
--

DROP TABLE IF EXISTS `filesdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filesdata` (
  `fileid` int unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(20) DEFAULT NULL,
  `filedata` longblob,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `userid` int unsigned DEFAULT NULL,
  PRIMARY KEY (`fileid`),
  KEY `userid` (`userid`),
  CONSTRAINT `filesdata_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `userdata` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filesdata`
--

LOCK TABLES `filesdata` WRITE;
/*!40000 ALTER TABLE `filesdata` DISABLE KEYS */;
INSERT INTO `filesdata` VALUES (2,'cmail.py',_binary 'import smtplib\r\nfrom email.message import EmailMessage\r\ndef send_mail(to,subject,body):\r\n    server=smtplib.SMTP_SSL(\'smtp.gmail.com\',465)\r\n    server.login(\'anusha@codegnan.com\',\'pdsu cgtk vgay cqmc\')\r\n    msg=EmailMessage()\r\n    msg[\'FROM\']=\'anusha@codegnan.com\'\r\n    msg[\'TO\']=to\r\n    msg[\'SUBJECT\']=subject\r\n    msg.set_content(body)\r\n    server.send_message(msg)\r\n    print(\'msg sent\')\r\n    server.close()\r\n\r\n','2026-05-23 11:51:11',1);
/*!40000 ALTER TABLE `filesdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notesdata`
--

DROP TABLE IF EXISTS `notesdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notesdata` (
  `notesid` int unsigned NOT NULL AUTO_INCREMENT,
  `notestitle` longtext,
  `notes_description` longtext,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `userid` int unsigned DEFAULT NULL,
  PRIMARY KEY (`notesid`),
  KEY `userid` (`userid`),
  CONSTRAINT `notesdata_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `userdata` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notesdata`
--

LOCK TABLES `notesdata` WRITE;
/*!40000 ALTER TABLE `notesdata` DISABLE KEYS */;
INSERT INTO `notesdata` VALUES (2,'mysql','anusha','2026-05-21 11:55:28',1),(3,'Flask','anusha','2026-05-21 12:30:00',1),(4,'Frontend','ambika','2026-05-21 12:33:55',1),(5,'python','pardhu','2026-05-21 12:36:17',1);
/*!40000 ALTER TABLE `notesdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdata`
--

DROP TABLE IF EXISTS `userdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userdata` (
  `userid` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `useremail` varchar(50) NOT NULL,
  `userpassword` varchar(50) NOT NULL,
  `userphone` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `useremail` (`useremail`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdata`
--

LOCK TABLES `userdata` WRITE;
/*!40000 ALTER TABLE `userdata` DISABLE KEYS */;
INSERT INTO `userdata` VALUES (1,'aravind','gvsaravind@gmail.com','Aravindh@123','6303363822');
/*!40000 ALTER TABLE `userdata` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-26 12:29:24
