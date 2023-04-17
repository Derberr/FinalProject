-- MySQL dump 10.14  Distrib 5.5.68-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: finalproject2
-- ------------------------------------------------------
-- Server version	5.5.68-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answers` (
  `qa_id` int(255) NOT NULL,
  `qid` int(255) NOT NULL,
  `option_num` int(255) NOT NULL,
  `Points` int(255) NOT NULL,
  UNIQUE KEY `qa_id` (`qa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,1,1,10),(2,1,2,5),(3,1,3,-5),(4,1,4,-5),(5,2,5,10),(6,2,6,5),(7,2,7,-5),(8,2,8,-5),(9,3,9,10),(10,3,10,5),(11,3,11,-5),(12,3,12,-5),(13,4,13,10),(14,4,14,5),(15,4,15,-5),(16,4,16,-5),(17,5,17,10),(18,5,18,5),(19,5,19,-5),(20,5,20,-5),(21,6,21,10),(22,6,22,5),(23,6,23,-5),(24,6,24,-5),(25,7,25,10),(26,7,26,5),(27,7,27,-5),(28,7,28,-5),(29,8,29,10),(30,8,30,5),(31,8,31,-5),(32,8,32,-5),(33,9,33,10),(34,9,34,5),(35,9,35,-5),(36,9,36,-5),(37,10,37,10),(38,10,38,5),(39,10,39,-5),(40,10,40,-5),(41,11,41,10),(42,11,42,5),(43,11,43,-5),(44,11,44,-5),(45,12,45,10),(46,12,46,5),(47,12,47,-5),(48,12,48,-5),(49,13,49,10),(50,13,50,5),(51,13,51,-5),(52,13,52,-5),(53,14,53,10),(54,14,54,5),(55,14,55,-5),(56,14,56,-5),(57,15,57,10),(58,15,58,5),(59,15,59,-5),(60,15,60,-5),(61,16,61,10),(62,16,62,5),(63,16,63,-5),(64,16,64,-5),(65,17,65,10),(66,17,66,5),(67,17,67,-5),(68,17,68,-5),(69,18,69,10),(70,18,70,5),(71,18,71,-5),(72,18,72,-5),(73,19,73,10),(74,19,74,5),(75,19,75,-5),(76,19,76,-5),(77,20,77,10),(78,20,78,5),(79,20,79,-5),(80,20,80,-5),(81,21,81,10),(82,21,82,5),(83,21,83,-5),(84,21,84,-5),(85,22,85,10),(86,22,86,5),(87,22,87,-5),(88,22,88,-5),(89,23,89,10),(90,23,90,5),(91,23,91,-5),(92,23,92,-5),(93,24,93,10),(94,24,94,5),(95,24,95,-5),(96,24,96,-5),(97,25,97,10),(98,25,98,5),(99,25,99,-5),(100,25,100,-5),(101,26,101,10),(102,26,102,5),(103,26,103,-5),(104,26,104,-5),(105,27,105,10),(106,27,106,5),(107,27,107,-5),(108,27,108,-5),(109,28,109,10),(110,28,110,5),(111,28,111,-5),(112,28,112,-5),(113,29,113,10),(114,29,114,5),(115,29,115,-5),(116,29,115,-5),(121,31,121,10),(122,31,122,5),(123,31,123,-5),(124,31,124,-5),(125,32,125,10),(126,32,126,5),(127,32,127,-5),(128,32,128,-5),(129,33,129,10),(130,33,130,5),(131,33,131,-5),(132,33,132,-5),(133,34,133,10),(134,34,134,5),(135,34,135,-5),(136,34,136,-5),(137,35,137,10),(138,35,138,5),(139,35,139,-5),(140,35,140,-5),(141,36,141,10),(142,36,142,5),(143,36,143,-5),(144,36,144,-5),(145,37,145,10),(146,37,146,5),(147,37,147,-5),(148,37,148,-5),(149,38,149,10),(150,38,150,5),(151,38,151,-5),(152,38,152,-5),(153,39,153,10),(154,39,154,5),(155,39,155,-5),(156,39,156,-5),(157,40,157,10),(158,40,158,5),(159,40,159,-5),(160,40,160,-5),(161,41,161,10),(162,41,162,5),(163,41,163,-5),(164,41,164,-5),(165,42,165,10),(166,42,166,5),(167,42,167,-5),(168,42,168,-5),(169,43,169,10),(170,43,170,5),(171,43,171,-5),(172,43,172,-5),(173,44,173,10),(174,44,174,5),(175,44,175,-5),(176,44,176,-5),(177,45,177,10),(178,45,178,5),(179,45,179,-5),(180,45,180,-5),(181,46,181,10),(182,46,182,5),(183,46,183,-5),(184,46,184,-5),(185,47,185,10),(186,47,186,5),(187,47,187,-5),(188,47,187,-5);
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_options`
--

DROP TABLE IF EXISTS `app_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_options` (
  `option_id` int(255) NOT NULL AUTO_INCREMENT,
  `qid` int(255) NOT NULL,
  `q_option` varchar(255) NOT NULL,
  `is_available` int(255) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_options`
--

LOCK TABLES `app_options` WRITE;
/*!40000 ALTER TABLE `app_options` DISABLE KEYS */;
INSERT INTO `app_options` VALUES (1,1,'Yes backups are taken weekly.',1),(2,1,'Backups are performed but not frequently.',1),(3,1,'No backups are performed',1),(4,1,'Not Applicable',1),(5,2,'Yes, third parties have access to our systems, and there is an agreement in place',1),(6,2,'Yes, third parties have access to our system however, there is no agreement in place.',1),(7,2,'No, there is no third-party access needed.',1),(8,2,'No Applicable',1),(9,3,'Yes, there are Endpoint controls in place',1),(10,3,'There are some controls in place',1),(11,3,'There is no Endpoint Security in place',1),(12,3,'Not applicable',1),(13,4,'Yes, access is revoked and all assets are returned',1),(14,4,'Partial access is revoked and/or company assets are returned',1),(15,4,'Access is not revoked, assets are not returned',1),(16,4,'Not applicable',1),(17,5,'Yes, Employees receive training to ensure competency from a security standpoint',1),(18,5,'Employees receive training only when necessary',1),(19,5,'No training is provided to improve security posture',1),(20,5,'Not applicable',1),(21,6,'Yes, the organisation takes the necessary steps to destroy information that is no longer required',1),(22,6,'Some steps are carried out to destroy information',1),(23,6,'No steps are taken',1),(24,6,'Not applicable',1),(25,7,'Yes, data is being monitored, deletion of data is recorded and removable data is disabled for unauthorised users.',1),(26,7,'Data is partially being recorded',1),(27,7,'Data is not being recorded.',1),(28,7,'Not applicable',1),(29,8,'Yes, there is a security personnel manager appointed.',1),(30,8,'This control is partially in place',1),(31,8,'No security personnel Manager in place',1),(32,8,'Not applicable',1),(33,9,'Yes, there a map of where data assets are stored.',1),(34,9,'There is some data associated to an asset map',1),(35,9,'There is no asset map implemented',1),(36,9,'Not applicable',1),(37,10,'Yes, our organisation follows standards/procedures from a known Framework',1),(38,10,'The organisation is not following specific standards. However, it is taking procedures to protect data.',1),(39,10,'No standards/procedures are being implemented.',1),(40,10,'Not applicable',1),(41,11,'Yes there is a document that identifies all aspects of the business',1),(42,11,'There is documentation on some of the system',1),(43,11,'There is document of our system',1),(44,11,'Not applicable',1),(45,12,'Yes, there is a security and privacy plan in place.',1),(46,12,'There is a broad/general plan in place',1),(47,12,'There is no security or privacy plan in place',1),(48,12,'Not applicable',1),(49,13,'Yes there unattended equipment is protected',1),(50,13,'Some devices/services are protected',1),(51,13,'Devices unattended are not protected',1),(52,13,'Not applicable',1),(53,14,'Yes, all devices off-site are accounted for, logged and secured',1),(54,14,'Some controls are in place',1),(55,14,'No controls are in place',1),(56,14,'Not applicable',1),(57,15,'Yes, devices are disposed of adequately, disks are whole disk encrypted',1),(58,15,'Partial controls in place',1),(59,15,'No controls in place',1),(60,15,'Not applicable',1),(61,16,'Yes, there is a contingency plan in place, such as a disaster recovery plan',1),(62,16,'There is a partial plan in place',1),(63,16,'There is no contingency plan in place',1),(64,16,'Not applicable',1),(65,17,'Yes assets are identified and prioritized on criticality',1),(66,17,'Some critical assets are identified and prioritized',1),(67,17,'No critical assets are identified',1),(68,17,'Not applicable',1),(69,18,'Yes testing of the contingency plan is carried out.',1),(70,18,'Some testing is carried out',1),(71,18,'No testing is carried out',1),(72,18,'Not applicable',1),(73,19,'Yes, there are other mechanisms/controls in place that would allow the business function to resume',1),(74,19,'There are some mechanisms in place that may allow the business to resume functionality.',1),(75,19,'There are no secondary mechanisms in place',1),(76,19,'Not applicable',1),(77,20,'Yes, the organisation uses an off-site storage site, such as cloud storage via Azure',1),(78,20,'Some data is stored off-site',1),(79,20,'No data is stored off site',1),(80,20,'Not applicable',1),(81,21,'Yes, there is an alternative site to keep the business functioning.',1),(82,21,'There is a premises available to allow some aspects of the business to remain to function',1),(83,21,'No, there is no alternative premises.',1),(84,21,'Not applicable',1),(85,22,'Yes, there are mechanisms in place to allow a full recovery of the organisation\'s system',1),(86,22,'There are some mechanisms in place to recover the organisation\'s system partially',1),(87,22,'No, there is no ability to recover from a system failure',1),(88,22,'Not applicable',1),(89,23,'Yes all data backed up is encrypted using a cryptographic function',1),(90,23,'Some data is backed up using a cryptographic function',1),(91,23,'No data is backed up using a cryptographic function',1),(92,23,'Not applicable',1),(93,24,'Yes, all significant system changes are tested in a test environment before live implementation',1),(94,24,'Some system changes are tested in a test environment before live implementation',1),(95,24,'No all changes are implemented without significant testing',1),(96,24,'Not applicable',1),(97,25,'Yes all changes are approved by management to prevent unauthorised changes',1),(98,25,'Only major changes are approved by top management',1),(99,25,'Changes are made without the approval from management',1),(100,25,'Not applicable',1),(101,26,'Yes,a risk assessment is carried out on all system changes before implementation',1),(102,26,'A risk assessment is carried out on some system changes but not all',1),(103,26,'No risk assessments are carried out on system changes',1),(104,26,'Not applicable',1),(105,27,'Yes, any third parties that require our services must adhere to our policies.',1),(106,27,'Third parties adhere to some controls implemented in our organisation',1),(107,27,'Third parties may not adhere to our policies.',1),(108,27,'Not applicable',1),(109,28,'Yes, the data storage location is shared with the organisation',1),(110,28,'Some details of data storage are shared with the organisation',1),(111,28,'No details are shared with the organisation',1),(112,28,'Not applicable',1),(113,29,'Yes, there are contractual controls in place.',1),(114,29,'There are some contractual controls in place',1),(115,29,'There are no contractual controls in place',1),(116,29,'Not applicable',1),(117,30,'Yes, the executive level does review multiple decisions actively.',1),(118,30,'The executive level make review decisions on occasion',1),(119,30,'The executive level do not review decisions',1),(120,30,'Not applicable',1),(121,31,'Yes, there is a security manager/assessment officer in place to assess controls and their enhancements',1),(122,31,'Controls are assessed sporadically by management',1),(123,31,'There is no security manager/assessment officer assigned',1),(124,31,'Not applicable',1),(125,32,'Yes, there is a baseline configuration of all systems which are maintained and documented',1),(126,32,'There are some systems which are maintained and documented',1),(127,32,'No baseline configurations are maintained or documented',1),(128,32,'Not applicable',1),(129,33,'Yes, unauthorised changes are considered an incident',1),(130,33,'Some unauthorised changes are considered an incident',1),(131,33,'Unauthorised changes are not considered an incident',1),(132,33,'Not applicable',1),(133,34,'Yes, users are given the minimum access required at their level of responsibility',1),(134,34,'Users\' abilities to make changes are reduced with some aspects of the system',1),(135,34,'Users have all access to systems to make changes',1),(136,34,'Not applicable',1),(137,35,'Yes, unauthorised software is restricted from executing. File sharing is incorporated in company policies',1),(138,35,'Some unauthorised software is restricted, and file sharing is documented.',1),(139,35,'There are no controls in place to prevent the use of unauthorised software',1),(140,35,'Not applicable',1),(141,36,'Yes, events of significance are logged to ensure security ',1),(142,36,'Some events are logged',1),(143,36,'No events are logged',1),(144,36,'Not applicable',1),(145,37,'Yes, events are logged, and the necessary steps are taken',1),(146,37,'Some events are reviewed, and necessary steps are taken',1),(147,37,'No, events may not be reviewed, or steps carried out',1),(148,37,'Not applicable',1),(149,38,'Yes, the organisation does use trusted cryptographic functions throughout their systems.',1),(150,38,'Cryptographic functions are partially implemented.',1),(151,38,'No, there are no trusted cryptographic functions implemented.',1),(152,38,'Not applicable',1),(153,39,'Yes, data in transit is encrypted.',1),(154,39,'Some data is encrypted in transit.',1),(155,39,'No data is encrypted during transit',1),(156,39,'Not applicable',1),(157,40,'Yes, data that is stored/in used is protected.',1),(158,40,'Some data that is stored/in use is protected.',1),(159,40,'No data that is stored/in use is protected.',1),(160,40,'Not applicable',1),(161,41,'Yes, all unwanted is destroyed, taking the necessary steps.',1),(162,41,'Some unwanted media is destroyed, taking the necessary steps',1),(163,41,'No unwanted media is destroyed.',1),(164,41,'Not applicable',1),(165,42,'Yes, certain specific systems limit usable data.',1),(166,42,'Some systems only allow certain media.',1),(167,42,'No, there are no restrictions on particular media requirements',1),(168,42,'Not applicable',1),(169,43,'Yes, malware protection is updated automatically.',1),(170,43,'Updates to malware protection are carried out infrequently.',1),(171,43,'Malware protection is not updated automatically',1),(172,43,'Not applicable',1),(173,44,'Yes, personnel are screened before assignment to roles with certain risk',1),(174,44,'Some screening is carried out for particular roles',1),(175,44,'No screening is performed',1),(176,44,'Not applicable',1),(177,45,'Yes, NDAs are signed, and client data is the responsibility of personnel/third-party personnel',1),(178,45,'In some cases, NDAs are signed, and client data is the responsibility of personnel/third-party personnel',1),(179,45,'No NDAs are signed by any personnel or third-parties',1),(180,45,'Not applicable',1),(181,46,'Yes, NDAs are signed prior to accessing data',1),(182,46,'Some NDAs are signed for certain data',1),(183,46,'No NDAs are signed prior to access to data',1),(184,46,'Not applicable',1),(185,47,'Yes, vendor authentication methods are altered and Employees are held accountable for the confidentiality of authentication methods.',1),(186,47,'Some vendor system authentication methods are altered and Employees are held accountable for the confidentiality of authentication methods.',1),(187,47,'No changes are made for authentication methods of default vendor systems. Employees are not held accountable',1),(188,47,'Not applicable',1);
/*!40000 ALTER TABLE `app_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `qid` int(255) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  `is_available` int(255) NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'Does your company create backups of data regularly (weekly)?',1),(2,'Does the organisation require a third-party to access systems etc.? Is there an agreement in place?',1),(3,'Is there Endpoint Security controls implemented?',1),(4,'Upon Employee termination, is system access revoked, and is all security-related organisational system-related property retrieved?',1),(5,'Is the company making employees aware of their cyber responsibilities through training etc.?',1),(6,'Does your organisation take the necessary steps to destroy information that is no longer required?',1),(7,'Is the company monitoring all stored data, is data being recorded of deletion after removal, and is removable data disabled to unauthorised users?',1),(8,'Is there assigned personnel (Manager) relevant to the security of assets and information who will communicate with the board/top management?',1),(9,'Is there a map of where data assets are stored or transmitted? Showing how identifiable data is being stored, transmitted, disposed of etc. (life cycle)',1),(10,'Are there controls in place that ensures the organisation is following standards, and procedures and data is maintained securely? ',1),(11,'Is there a document etc, that reflects all aspects of the organisation’s system?',1),(12,'Has the organisation a security and privacy plan in place? Have they provided an overview of the security and privacy requirements of the system?',1),(13,'Are there procedures to protect equipment that may be left unattended, such as computers, POS devices etc.?',1),(14,'Are assets that are off-site accounted for, and are the devices secure with a log of a chain of custody?',1),(15,'Are devices at the end of their life cycle disposed of adequately, and are HDDs\' whole disk encrypted?',1),(16,'Has the organisation implemented a contingency plan, such as a Disaster Recovery Plan?',1),(17,'Does the organisation identify critical assets to aid with a contingency plan? Has the organisation prioritized these assets so the business can resume within a minimum time frame?',1),(18,'Does the organisation perform a Root Cause Analysis after implementing the contingency plan?',1),(19,'Does the organisation have other security controls that may not be as secure as the primary security mechanisms however, could business function resume?',1),(20,'Does the organisation have an alternative storage site, such as Azure? ',1),(21,'Is there an alternative site to carry out all processing for the organisation if the primary business premises are unavailable?',1),(22,'Has the organisation the ability to recover the system to a known state after an incident or failure?',1),(23,'Is all data backed up using a cryptographic function to prevent unauthorised viewing or altering of data?',1),(24,'Is there a control in place that any significant changes are recorded and tested before live implementation?',1),(25,'Is there a control implemented to prevent any unauthorised changes to a system?',1),(26,'Does the organisation determine the potential security impacts before the live implementation of system changes?',1),(27,'If a third party is acquiring cloud services, is the third party complying with the client organisation\'s governance and compliance?',1),(28,'Does the organisation control where the cloud services provider stores data?',1),(29,'Does the organisation implement the necessary statutory, and contractual controls?',1),(30,'Executive level review of multiple areas/decisions throughout the organisation?',1),(31,'Is a security manager or assessment officer in place who assesses controls and their enhancements?',1),(32,'Is there a baseline configuration of all systems developed, documented and maintained?',1),(33,'Is it considered an incident if the system has altered unauthorised configurations?',1),(34,'Is there a control in place to reduce users’ capabilities to the minimum to prevent any unauthorised changes?',1),(35,'Has the company restrictions in place to prevent the unauthorised use of software? Ensuring the use of peer-to-peer file sharing is used in line with company policies.',1),(36,'Does the organisation log all events of significance to ensure safety and record keeping of changes, such as user login and log off, timestamps etc.?',1),(37,'Does the organisation review logged events and take the necessary steps in an acceptable timeframe?',1),(38,'Does the business implement cryptographic functions using trusted cryptographic functions?',1),(39,'Does the business implement cryptographic functions using trusted cryptographic functions?',1),(40,'Does the organisation protect data that is stored/used by the organisation?',1),(41,'Does the business dispose of media (HDDs etc.) when it is no longer required?',1),(42,'Does the organisation limit the types of media that can be used on specific systems?',1),(43,'Does the organisation implement a control that automatically updates malicious code protection?',1),(44,'Are individuals screened before being assigned a position which comes with certain risk? E.g., background check when dealing with sensitive data?',1),(45,'Employees and or Contractors should sign an NDA before being given access to client confidential data. Does the company ensure that employees/third parties are responsible for client confidential data?',1),(46,'Does the organisation require personnel and or third parties to sign agreements such as NDAs prior to gaining access to data?',1),(47,'Does the organisation alter default vendor authentication methods etc.? Are personnel held accountable to ensure the confidentiality of authentication methods?',1);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `score`
--

DROP TABLE IF EXISTS `score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `score` (
  `username` varchar(255) NOT NULL,
  `score` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
INSERT INTO `score` VALUES ('1Ac85g==',80);
/*!40000 ALTER TABLE `score` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-17 19:50:40
