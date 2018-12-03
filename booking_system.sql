CREATE DATABASE  IF NOT EXISTS `booking_system` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `booking_system`;
-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: booking_system
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.10.1-log

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
-- Table structure for table `available_classes_schedule`
--

DROP TABLE IF EXISTS `available_classes_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `available_classes_schedule` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `day` varchar(45) NOT NULL,
  `time_slot` int(11) NOT NULL,
  `room_number` varchar(45) NOT NULL,
  PRIMARY KEY (`class_id`),
  KEY `fkIdx_130` (`time_slot`),
  KEY `fkIdx_148` (`room_number`),
  CONSTRAINT `FK_130` FOREIGN KEY (`time_slot`) REFERENCES `time_slots` (`slot_id`),
  CONSTRAINT `FK_148` FOREIGN KEY (`room_number`) REFERENCES `seats` (`room_number`)
) ENGINE=InnoDB AUTO_INCREMENT=576 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `available_classes_schedule`
--

LOCK TABLES `available_classes_schedule` WRITE;
/*!40000 ALTER TABLE `available_classes_schedule` DISABLE KEYS */;
INSERT INTO `available_classes_schedule` VALUES (289,'SUN',1,'30502'),(290,'SUN',1,'30101'),(291,'SUN',1,'30201'),(292,'SUN',1,'30501'),(293,'SUN',1,'70402'),(294,'SUN',1,'30503'),(295,'SUN',1,'30103'),(296,'SUN',1,'40103'),(297,'SUN',2,'30601'),(298,'SUN',2,'30103'),(299,'SUN',2,'30101'),(300,'SUN',2,'30501'),(301,'SUN',2,'30502'),(302,'SUN',2,'70402'),(303,'SUN',2,'30503'),(304,'SUN',2,'40103'),(305,'SUN',3,'30101'),(306,'SUN',3,'30103'),(307,'SUN',3,'30501'),(308,'SUN',3,'30502'),(309,'SUN',3,'30503'),(310,'SUN',3,'40103'),(311,'SUN',3,'40401'),(312,'SUN',4,'30103'),(313,'SUN',4,'30501'),(314,'SUN',4,'30502'),(315,'SUN',4,'30503'),(316,'SUN',4,'40103'),(317,'SUN',4,'30101'),(318,'SUN',4,'40401'),(319,'SUN',5,'30101'),(320,'SUN',6,'30101'),(321,'SUN',6,'70402'),(322,'SUN',6,'30502'),(323,'SUN',6,'30403'),(324,'SUN',6,'30503'),(325,'SUN',6,'70401'),(326,'SUN',6,'30501'),(327,'SUN',6,'30103'),(328,'SUN',7,'30101'),(329,'SUN',7,'30103'),(330,'SUN',7,'30501'),(331,'SUN',7,'30301'),(332,'SUN',7,'30503'),(333,'SUN',7,'70401'),(334,'SUN',7,'70402'),(335,'SUN',7,'30502'),(336,'MON',4,'30101'),(337,'MON',4,'30501'),(338,'MON',4,'30502'),(339,'MON',4,'30503'),(340,'MON',4,'70403'),(341,'MON',4,'30103'),(342,'MON',4,'30103'),(343,'MON',5,'70401'),(344,'MON',5,'30303'),(345,'MON',5,'30103'),(346,'MON',5,'30502'),(347,'MON',5,'70402'),(348,'MON',5,'30501'),(349,'MON',5,'30503'),(350,'MON',5,'30103'),(351,'MON',5,'30503'),(352,'MON',6,'70401'),(354,'MON',6,'30501'),(355,'MON',6,'30103'),(356,'MON',6,'30101'),(357,'MON',6,'30403'),(358,'MON',6,'70402'),(359,'MON',6,'30502'),(360,'MON',6,'30503'),(361,'MON',6,'30403'),(362,'MON',6,'30503'),(363,'MON',7,'30103'),(364,'MON',7,'30501'),(365,'MON',7,'30502'),(366,'MON',7,'30503'),(367,'MON',7,'30101'),(368,'MON',7,'70401'),(369,'MON',7,'70402'),(370,'TUE',1,'70401'),(371,'TUE',1,'30502'),(372,'TUE',1,'30101'),(373,'TUE',1,'30201'),(374,'TUE',1,'30501'),(375,'TUE',1,'70402'),(376,'TUE',1,'30503'),(377,'TUE',1,'30103'),(378,'TUE',2,'60806'),(379,'TUE',2,'30502'),(380,'TUE',2,'30601'),(381,'TUE',2,'30103'),(382,'TUE',2,'30101'),(383,'TUE',2,'30501'),(384,'TUE',2,'70402'),(385,'TUE',2,'30503'),(386,'TUE',3,'70401'),(387,'TUE',3,'70402'),(388,'TUE',3,'30502'),(389,'TUE',3,'30101'),(390,'TUE',3,'30103'),(391,'TUE',3,'30501'),(392,'TUE',3,'30503'),(393,'TUE',4,'70402'),(395,'TUE',4,'70401'),(396,'TUE',4,'30103'),(397,'TUE',4,'30501'),(398,'TUE',4,'30502'),(399,'TUE',4,'30503'),(400,'TUE',4,'30101'),(401,'TUE',5,'30502'),(402,'TUE',5,'30503'),(403,'TUE',5,'70401'),(404,'TUE',5,'30802'),(405,'TUE',5,'30503'),(406,'TUE',5,'30101'),(407,'TUE',6,'30101'),(408,'TUE',6,'70402'),(409,'TUE',6,'30502'),(410,'TUE',6,'30403'),(411,'TUE',6,'30503'),(412,'TUE',6,'70401'),(413,'TUE',6,'30501'),(414,'TUE',6,'30103'),(415,'TUE',7,'30101'),(416,'TUE',7,'30103'),(417,'TUE',7,'30501'),(418,'TUE',7,'30502'),(419,'TUE',7,'30503'),(420,'TUE',7,'70401'),(421,'TUE',7,'70402'),(422,'WED',1,'70402'),(423,'WED',1,'30503'),(424,'WED',1,'70401'),(425,'WED',1,'30502'),(426,'WED',1,'30101'),(427,'WED',1,'30501'),(428,'WED',1,'30103'),(429,'WED',1,'30303'),(430,'WED',2,'70401'),(431,'WED',2,'30101'),(432,'WED',2,'70402'),(433,'WED',2,'30501'),(434,'WED',2,'30103'),(435,'WED',2,'30503'),(436,'WED',2,'30502'),(437,'WED',2,'30103'),(438,'WED',3,'70401'),(439,'WED',3,'30501'),(440,'WED',3,'30101'),(441,'WED',3,'30503'),(442,'WED',3,'30802'),(443,'WED',3,'30103'),(444,'WED',3,'30502'),(445,'WED',3,'30103'),(446,'WED',4,'70403'),(447,'WED',4,'70402'),(448,'WED',4,'30101'),(449,'WED',4,'30501'),(450,'WED',4,'30502'),(451,'WED',4,'30503'),(452,'WED',4,'30103'),(453,'WED',4,'30103'),(454,'WED',5,'30103'),(455,'WED',5,'70401'),(456,'WED',5,'30303'),(457,'WED',5,'30502'),(458,'WED',5,'70402'),(459,'WED',5,'30501'),(460,'WED',5,'30503'),(461,'WED',5,'30503'),(462,'WED',6,'70401'),(463,'WED',6,'30501'),(464,'WED',6,'30103'),(465,'WED',6,'30101'),(466,'WED',6,'30403'),(467,'WED',6,'70402'),(468,'WED',6,'30502'),(469,'WED',6,'30503'),(470,'WED',6,'30403'),(471,'WED',6,'30503'),(472,'WED',7,'30103'),(473,'WED',7,'30501'),(474,'WED',7,'30502'),(475,'WED',7,'30503'),(476,'WED',7,'30101'),(477,'WED',7,'70401'),(478,'WED',7,'70402'),(480,'THU',1,'30101'),(481,'THU',1,'30103'),(482,'THU',1,'30503'),(483,'THU',1,'30502'),(484,'THU',1,'70401'),(485,'THU',1,'70402'),(486,'THU',1,'30501'),(488,'THU',2,'30101'),(489,'THU',2,'30103'),(490,'THU',2,'30502'),(491,'THU',2,'70401'),(492,'THU',2,'30503'),(493,'THU',2,'70402'),(494,'THU',2,'30501'),(495,'THU',2,'30501'),(496,'THU',3,'30503'),(497,'THU',3,'70401'),(498,'THU',3,'30501'),(499,'THU',3,'30101'),(500,'THU',3,'30502'),(501,'THU',3,'30103'),(502,'THU',3,'70402'),(503,'THU',3,'30103'),(504,'THU',4,'30503'),(505,'THU',4,'70401'),(506,'THU',4,'30101'),(507,'THU',4,'30502'),(508,'THU',4,'30103'),(509,'THU',4,'70402'),(510,'THU',4,'30103'),(511,'THU',5,'30502'),(512,'THU',5,'70402'),(513,'THU',5,'70401'),(514,'THU',5,'30101'),(515,'THU',5,'30501'),(516,'THU',5,'70401'),(517,'THU',5,'30103'),(518,'THU',6,'30502'),(519,'THU',6,'70402'),(520,'THU',6,'70401'),(521,'THU',6,'30101'),(522,'THU',6,'30501'),(523,'THU',6,'30103'),(524,'THU',7,'30101'),(525,'SAT',1,'70403'),(526,'SAT',1,'30103'),(527,'SAT',1,'30502'),(528,'SAT',1,'30101'),(529,'SAT',1,'70401'),(530,'SAT',1,'30501'),(531,'SAT',1,'30503'),(532,'SAT',1,'30303'),(533,'SAT',1,'30503'),(534,'SAT',2,'70403'),(535,'SAT',2,'30103'),(536,'SAT',2,'30502'),(537,'SAT',2,'30101'),(538,'SAT',2,'70401'),(539,'SAT',2,'30503'),(541,'SAT',2,'30501'),(542,'SAT',2,'70402'),(543,'SAT',2,'30303'),(544,'SAT',2,'30501'),(545,'SAT',2,'30503'),(546,'SAT',3,'30501'),(547,'SAT',3,'30103'),(548,'SAT',3,'30503'),(549,'SAT',3,'70401'),(551,'SAT',3,'70402'),(552,'SAT',3,'30101'),(553,'SAT',3,'30103'),(554,'SAT',3,'30502'),(555,'SAT',4,'30501'),(556,'SAT',4,'30103'),(557,'SAT',4,'30502'),(558,'SAT',4,'30503'),(559,'SAT',4,'70401'),(560,'SAT',4,'70402'),(561,'SAT',4,'30101'),(562,'SAT',4,'30103'),(563,'SAT',5,'30101'),(564,'SAT',5,'30501'),(565,'SAT',5,'30503'),(566,'SAT',5,'70401'),(567,'SAT',5,'30502'),(568,'SAT',5,'70402'),(569,'SAT',5,'30103'),(570,'SAT',6,'30101'),(571,'SAT',6,'30501'),(572,'SAT',6,'30503'),(573,'SAT',6,'70401'),(574,'SAT',6,'30502'),(575,'SAT',6,'30103');
/*!40000 ALTER TABLE `available_classes_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booked_classes`
--

DROP TABLE IF EXISTS `booked_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booked_classes` (
  `faculty_id` varchar(45) NOT NULL,
  `class_id` int(11) NOT NULL,
  `booking_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `booking_date` date NOT NULL,
  PRIMARY KEY (`class_id`,`booking_date`),
  KEY `fkIdx_168` (`faculty_id`,`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booked_classes`
--

LOCK TABLES `booked_classes` WRITE;
/*!40000 ALTER TABLE `booked_classes` DISABLE KEYS */;
/*!40000 ALTER TABLE `booked_classes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `booking_system`.`booked_classes_AFTER_INSERT` AFTER INSERT ON `booked_classes` FOR EACH ROW
BEGIN
/*if new.class_id_1!=queued_classes.class_id_1 and new.booking_date!=queued_classes.date then
update queued_classes set queued_classes.class_status="queued";end if;*/
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `booking_system`.`booked_classes_BEFORE_DELETE` BEFORE DELETE ON `booked_classes` FOR EACH ROW
BEGIN
update queued_classes set queued_classes.class_status="removed" where queued_classes.faculty_id=old.faculty_id and queued_classes.class_id=old.class_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `queued_classes`
--

DROP TABLE IF EXISTS `queued_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queued_classes` (
  `faculty_id` varchar(45) NOT NULL,
  `class_id` int(11) NOT NULL,
  `request_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `class_status` varchar(45) NOT NULL DEFAULT 'queued',
  `course_id` varchar(45) NOT NULL,
  `section` int(11) NOT NULL,
  `date` date NOT NULL,
  `day` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`faculty_id`,`class_id`),
  KEY `fk_queued_classes_1_idx` (`class_id`),
  CONSTRAINT `fk_queued_classes_1` FOREIGN KEY (`class_id`) REFERENCES `available_classes_schedule` (`class_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queued_classes`
--

LOCK TABLES `queued_classes` WRITE;
/*!40000 ALTER TABLE `queued_classes` DISABLE KEYS */;
/*!40000 ALTER TABLE `queued_classes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `booking_system`.`queued_classes_BEFORE_INSERT` BEFORE INSERT ON `queued_classes` FOR EACH ROW
BEGIN
set NEW.day=(DAYNAME(NEW.date));

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `booking_system`.`queued_classes_AFTER_UPDATE` AFTER UPDATE ON `queued_classes` FOR EACH ROW
BEGIN
if new.class_status="booked" then
/*replace into booked_classes(faculty_id,class_id_1,booking_date) select faculty_id,class_id_1,date from queued_classes;*/
/*set @new_faculty_id=(select faculty_id from queued_classes where new.class_status="booked");
set @new_class_id=(select class_id_1 from queued_classes where new.class_status="booked");
set @new_date=(select date from queued_classes where new.class_status="booked");*/
insert into booked_classes(faculty_id,class_id,booking_date) values (new.faculty_id,new.class_id,new.date);
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `seats`
--

DROP TABLE IF EXISTS `seats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seats` (
  `room_number` varchar(45) NOT NULL,
  `seats` int(11) NOT NULL,
  PRIMARY KEY (`room_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seats`
--

LOCK TABLES `seats` WRITE;
/*!40000 ALTER TABLE `seats` DISABLE KEYS */;
INSERT INTO `seats` VALUES ('30101',46),('30102',40),('30103',62),('30201',44),('30202',39),('30203',53),('30301',49),('30302',23),('30303',48),('30402',21),('30403',50),('30501',50),('30502',40),('30503',50),('30601',50),('30602',40),('30603',50),('30701',50),('30702',40),('30801',50),('30802',40),('30901',45),('30902',40),('30903',45),('40101',45),('40102',18),('40103',35),('40201',40),('40202',25),('40203',40),('40301',75),('40401',40),('40402',26),('40403',40),('40507',10),('40602',47),('40603',54),('40802',39),('40901',30),('40902',30),('41001',26),('41002',34),('41101',25),('41102',25),('41103',20),('41201',30),('41202',32),('41301',40),('50201',32),('50202',40),('50203',40),('50601',15),('50602',15),('50603',25),('60804',40),('60806',40),('60809',50),('70401',50),('70402',50),('70403',50),('71101',42),('71102',46),('71103',42),('71201',75),('71202',54);
/*!40000 ALTER TABLE `seats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_slots`
--

DROP TABLE IF EXISTS `time_slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_slots` (
  `slot_id` int(11) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  PRIMARY KEY (`slot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_slots`
--

LOCK TABLES `time_slots` WRITE;
/*!40000 ALTER TABLE `time_slots` DISABLE KEYS */;
INSERT INTO `time_slots` VALUES (1,'08:00:00','09:20:00'),(2,'09:30:00','10:50:00'),(3,'11:00:00','12:20:00'),(4,'12:30:00','13:50:00'),(5,'14:00:00','15:20:00'),(6,'15:30:00','16:50:00'),(7,'17:00:00','18:20:00');
/*!40000 ALTER TABLE `time_slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(45) NOT NULL,
  `role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('dco_1','dco'),('faculty_1','faculty'),('root','dba');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'booking_system'
--

--
-- Dumping routines for database 'booking_system'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-03 12:36:33
