-- MySQL dump 10.13  Distrib 5.5.19, for Linux (i686)
--
-- Host: localhost    Database: acmleader
-- ------------------------------------------------------
-- Server version	5.5.19

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
-- Table structure for table `acmer`
--

set names utf8;
create database acmleader  default  charset=utf8;
use acmleader;

DROP TABLE IF EXISTS `acmer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acmer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `pojid` varchar(255) DEFAULT NULL,
  `poj` int(11) DEFAULT NULL,
  `hdojid` varchar(255) DEFAULT NULL,
  `hdoj` int(11) DEFAULT NULL,
  `tcid` varchar(255) DEFAULT NULL,
  `tc` int(11) DEFAULT NULL,
  `cfid` varchar(255) DEFAULT NULL,
  `cf` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acmer`
--

LOCK TABLES `acmer` WRITE;
/*!40000 ALTER TABLE `acmer` DISABLE KEYS */;
INSERT INTO `acmer` VALUES (1,'çŽ‹å­ä¸€',2009,'wangziyi',32,'wangziyi',62,'',0,'',0),(2,'å®‹å‡¯',2000,'pladene',341,'',0,'',0,'',0),(3,'è‚–å·',2002,'xiaomi',601,'',0,'',0,'',0),(4,'æ¥šçŽ‰å¼º',2001,'yingzi',205,'',0,'',0,'',0),(5,'ç½—ä¸œå±±',2004,'dongshanluo',869,'lds',2,'',0,'',0),(6,'æŽæ˜Ž',2002,'nasi',331,'',0,'',0,'',0),(7,'å¼ å¯¿æ¾',2005,'TopBoy',320,'TopBoy',1,'TopBoy',1404,'',0),(8,'é»„ä¸œæ—­',2006,'c4pt0r',339,'c4pt0r',18,'',0,'',0),(9,'æ±ªå®‡',2007,'wy_neu',276,'wy_neu',39,'wangyu.cn',1221,'',0),(10,'ä¸ä¸€',2007,'dy_lengleng',264,'dy_lengleng',0,'',0,'',0),(11,'é™ˆæ›¦',2007,'sybil_0603',162,'sybil_0603',17,'',0,'',0),(12,'åˆ˜æ™¨æ˜Ÿ',2008,'congming789',221,'freeze',39,'morefreeze',1065,'morefreeze',1522),(13,'åˆ˜é«˜',2008,'ly50247',304,'',0,'',0,'',0),(14,'æ¨å“²',2009,'yangzhe1991',131,'yangzhe1991',72,'yangzhe1991',1339,'yangzhe1991',1691),(15,'æŽç§‘',2009,'like680623',208,'like680623',98,'like_0903',1083,'like',1446),(16,'è“é£ž',2009,'851330',82,'riwuzi',9,'',0,'',0),(17,'å«æ¬£',2009,'WX_701',69,'skeleton',45,'',0,'',0),(18,'æŽåšæ‰¬',2011,'neu20113248',6,'neu20113248',20,'',0,'',0),(19,'å”é”',2011,'tangrui',3,'goagain',3,'',0,'',0),(20,'çŽ‹å®å®‡',2011,'20112887',1,'20112887',10,'',0,'',0),(21,'é©¬å½¬',2010,'michaelalan',24,'michaelalan',194,'',0,'',0),(22,'æŽæ¨',2010,'liyang9299',1,'liyoo_neu',35,'',0,'',0),(23,'å¾æ–‡å¥',2011,'wenjian1314',3,'wenjian1314',10,'',0,'',0),(24,'å”å°§',2010,'typlayit',40,'typlayit',6,'',0,'',0),(25,'ç½—è€€ç‡Š',2010,'Lyshen',91,'Lyshen',107,'',0,'',0),(26,'é‚“æ”€å³°',2010,'dengpf',6,'dpfash',36,'dengpf1993',817,'dpfAsh',1497);
/*!40000 ALTER TABLE `acmer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fresh`
--

DROP TABLE IF EXISTS `fresh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fresh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fresh`
--

LOCK TABLES `fresh` WRITE;
/*!40000 ALTER TABLE `fresh` DISABLE KEYS */;
INSERT INTO `fresh` VALUES (1,'2012-02-06 23:40:37'),(2,'2012-02-06 23:40:46'),(3,'2012-02-06 23:40:51'),(4,'2012-02-06 23:41:02'),(5,'2012-02-06 23:41:06'),(6,'2012-02-06 23:41:10'),(7,'2012-02-06 23:41:17'),(8,'2012-02-06 23:41:26'),(9,'2012-02-06 23:41:30'),(10,'2012-02-06 23:41:36'),(11,'2012-02-06 23:41:50'),(12,'2012-02-06 23:42:02'),(13,'2012-02-06 23:42:05'),(14,'2012-02-06 23:42:17'),(15,'2012-02-06 23:42:23'),(16,'2012-02-06 23:42:31'),(17,'2012-02-06 23:42:47'),(18,'2012-02-06 23:42:52'),(19,'2012-02-06 23:43:09'),(20,'2012-02-06 23:43:12'),(21,'2012-02-06 23:43:18'),(22,'2012-02-06 23:43:22'),(23,'2012-02-06 23:43:26'),(24,'2012-02-06 23:43:29'),(25,'2012-02-06 23:43:35'),(26,'2012-02-06 23:44:09'),(27,'2012-02-06 23:44:17'),(28,'2012-02-06 23:44:22'),(29,'2012-02-06 23:44:33'),(30,'2012-02-06 23:44:39'),(31,'2012-02-06 23:44:47'),(32,'2012-02-06 23:44:53'),(33,'2012-02-06 23:44:57'),(34,'2012-02-06 23:45:03'),(35,'2012-02-06 23:45:13'),(36,'2012-02-06 23:45:28'),(37,'2012-02-06 23:45:48'),(38,'2012-02-06 23:45:57'),(39,'2012-02-06 23:46:19'),(40,'2012-02-06 23:46:32'),(41,'2012-02-06 23:46:42'),(42,'2012-02-06 23:46:58'),(43,'2012-02-06 23:47:04'),(44,'2012-02-06 23:47:23'),(45,'2012-02-06 23:47:25'),(46,'2012-02-06 23:47:30'),(47,'2012-02-06 23:47:34'),(48,'2012-02-06 23:47:37'),(49,'2012-02-06 23:47:40'),(50,'2012-02-06 23:47:47'),(51,'2012-02-06 23:50:05'),(52,'2012-02-06 23:50:12'),(53,'2012-02-06 23:50:18'),(54,'2012-02-06 23:50:23'),(55,'2012-02-06 23:50:29'),(56,'2012-02-06 23:50:37'),(57,'2012-02-06 23:50:44'),(58,'2012-02-06 23:50:50'),(59,'2012-02-06 23:50:56'),(60,'2012-02-06 23:51:02'),(61,'2012-02-06 23:51:22'),(62,'2012-02-06 23:51:42'),(63,'2012-02-06 23:51:47'),(64,'2012-02-06 23:52:06'),(65,'2012-02-06 23:52:11'),(66,'2012-02-06 23:52:23'),(67,'2012-02-06 23:52:34'),(68,'2012-02-06 23:52:43'),(69,'2012-02-06 23:53:11'),(70,'2012-02-06 23:53:14'),(71,'2012-02-06 23:53:21'),(72,'2012-02-06 23:53:25'),(73,'2012-02-06 23:53:30'),(74,'2012-02-06 23:53:33'),(75,'2012-02-06 23:53:38'),(76,'2012-02-07 00:03:33'),(77,'2012-02-07 00:03:41'),(78,'2012-02-07 00:03:48'),(79,'2012-02-07 00:03:56'),(80,'2012-02-07 00:04:04'),(81,'2012-02-07 00:04:12'),(82,'2012-02-07 00:04:22'),(83,'2012-02-07 00:04:31'),(84,'2012-02-07 00:04:40'),(85,'2012-02-07 00:04:47'),(86,'2012-02-07 00:04:55'),(87,'2012-02-07 00:05:19'),(88,'2012-02-07 00:05:40'),(89,'2012-02-07 00:05:47'),(90,'2012-02-07 00:06:11'),(91,'2012-02-07 00:06:19'),(92,'2012-02-07 00:06:27'),(93,'2012-02-07 00:06:51'),(94,'2012-02-07 00:07:01'),(95,'2012-02-07 00:07:24'),(96,'2012-02-07 00:07:27');
/*!40000 ALTER TABLE `fresh` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-02-07  0:07:32
