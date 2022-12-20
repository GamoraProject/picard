-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: ec2-54-173-86-24.compute-1.amazonaws.com    Database: asana_light
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.20.04.1

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
-- Table structure for table `Projects`
--

DROP TABLE IF EXISTS `Projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Projects` (
  `Id` varchar(255) NOT NULL,
  `Name` longtext,
  `CreatedAt` TEXT DEFAULT NULL,
  `ModifiedAt` TEXT DEFAULT NULL,
  `Followers` longtext,
  `UserId` varchar(255) DEFAULT NULL,
  `WorkspaceId` varchar(255) DEFAULT NULL,
  `Members` longtext,
  primary key("Id"),
  FOREIGN KEY("Id") REFERENCES Tasks (ProjectId)
); 
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Projects`
--

/*!40000 ALTER TABLE `Projects` DISABLE KEYS */;
INSERT INTO `Projects` VALUES ('103591015046294','Now','2016-03-22 11:10:05.715','2021-10-28 05:58:06.169','[\r\n  {\r\n    \"gid\": \"8825375251239\",\r\n    \"resource_type\": \"user\"\r\n  },\r\n  {\r\n    \"gid\": \"103591019154194\",\r\n    \"resource_type\": \"user\"\r\n  },\r\n  {\r\n    \"gid\": \"103591019154201\",\r\n    \"resource_type\": \"user\"\r\n  }\r\n]','8825375251239','498346170860','[\r\n  {\r\n    \"gid\": \"103591019154194\",\r\n    \"resource_type\": \"user\"\r\n  },\r\n  {\r\n    \"gid\": \"103591019154201\",\r\n    \"resource_type\": \"user\"\r\n  },\r\n  {\r\n    \"gid\": \"8825375251239\",\r\n    \"resource_type\": \"user\"\r\n  }\r\n]'),('103605377905822','Zoo','2016-03-22 12:06:17.131','2021-10-28 05:07:49.828','[\r\n  {\r\n    \"gid\": \"103591019154201\",\r\n    \"resource_type\": \"user\"\r\n  }\r\n]','103591019154201','103604275658004','[\r\n  {\r\n    \"gid\": \"103591019154201\",\r\n    \"resource_type\": \"user\"\r\n  }\r\n]'),('1202924621665944','S4E','2022-09-05 13:51:53.947','2022-11-21 13:21:38.007','[\r\n  {\r\n    \"gid\": \"103591019154201\",\r\n    \"resource_type\": \"user\"\r\n  },\r\n  {\r\n    \"gid\": \"17218361652142\",\r\n    \"resource_type\": \"user\"\r\n  },\r\n  {\r\n    \"gid\": \"1203221137832247\",\r\n    \"resource_type\": \"user\"\r\n  }\r\n]','103591019154201','103604275658004','[\r\n  {\r\n    \"gid\": \"103591019154201\",\r\n    \"resource_type\": \"user\"\r\n  },\r\n  {\r\n    \"gid\": \"17218361652142\",\r\n    \"resource_type\": \"user\"\r\n  },\r\n  {\r\n    \"gid\": \"1203221137832247\",\r\n    \"resource_type\": \"user\"\r\n  }\r\n]');
/*!40000 ALTER TABLE `Projects` ENABLE KEYS */;


--
-- Table structure for table `Sections`
--

DROP TABLE IF EXISTS `Sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Sections` (
  `Id` varchar(255) NOT NULL,
  `Name` longtext,
  `CreatedAt` TEXT DEFAULT NULL,
  `ProjectId` varchar(255) DEFAULT NULL,
  primary key("Id"),
  FOREIGN KEY("Id") REFERENCES Tasks (SectionId)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sections`
--

/*!40000 ALTER TABLE `Sections` DISABLE KEYS */;
INSERT INTO `Sections` VALUES ('1143350272241735','(no section)','2019-10-06 17:23:13.740','103605377905822'),('1154333344178757','(no section)','2019-12-17 20:53:55.898','103591015046294'),('1202924621665946','Planning','2022-09-05 13:51:54.614','1202924621665944'),('1202924621665953','Milestones','2022-09-05 13:51:56.472','1202924621665944'),('1202924621665954','Next steps','2022-09-05 13:51:56.569','1202924621665944'),('1202924621665955','Comms Plan','2022-09-05 13:51:56.670','1202924621665944'),('1203042761059429','Untitled Section','2022-09-25 15:01:19.243','1202924621665944');
/*!40000 ALTER TABLE `Sections` ENABLE KEYS */;


--
-- Table structure for table `Tags`
--

DROP TABLE IF EXISTS `Tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tags` (
  `Id` varchar(255) NOT NULL,
  `Name` longtext,
  `CreatedAt` TEXT DEFAULT NULL,
  `WorkspaceId` varchar(255) DEFAULT NULL,
  primary key("Id"),
  FOREIGN KEY("Id") REFERENCES TasksTags (TagId)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tags`
--


/*!40000 ALTER TABLE `Tags` DISABLE KEYS */;
INSERT INTO `Tags` VALUES ('1202930813004027','#mandatory step','2022-09-06 13:48:23.891','103604275658004'),('1202930813004028','#enterprise','2022-09-06 13:48:39.887','103604275658004'),('1202930813004029','#planning #management','2022-09-06 13:49:06.244','103604275658004'),('1202930813004032','#management','2022-09-06 13:49:26.898','103604275658004'),('1202930813004039','#developement','2022-09-06 13:51:05.177','103604275658004'),('1203042761059426','\"S4E project\"','2022-09-25 14:59:42.570','103604275658004'),('1203263947971153','#','2022-10-30 11:08:51.353','103604275658004'),('1203263947971154','sql queries','2022-10-30 11:09:48.761','103604275658004'),('1203263947971155','#SQL queries','2022-10-30 11:10:28.697','103604275658004'),('1203268629476285','#Java','2022-11-02 11:22:53.316','103604275658004');
/*!40000 ALTER TABLE `Tags` ENABLE KEYS */;


--
-- Table structure for table `Tasks`
--

DROP TABLE IF EXISTS `Tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tasks` (
  `Id` varchar(255) NOT NULL,
  `Name` longtext,
  `AssigneeId` longtext,
  `CreatedAt` TEXT DEFAULT NULL,
  `DueOn` date DEFAULT NULL,
  `Completed` int DEFAULT 0,
  `CompletedAt` TEXT DEFAULT NULL,
  `CompletedBy` longtext,
  `ProjectId` varchar(255) DEFAULT NULL,
  `Projects` longtext,
  `WorkspaceId` varchar(255) DEFAULT NULL,
  `Followers` longtext,
  `Tags` longtext,
  `Budget` double DEFAULT NULL,
  `Priority` varchar(60) DEFAULT NULL,
  `NumbersOfCodeLines` int DEFAULT NULL,
  primary key("Id"),
  FOREIGN KEY("Id") REFERENCES TasksTags (TaskId)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tasks`
--


/*!40000 ALTER TABLE `Tasks` DISABLE KEYS */;
INSERT INTO `Tasks` VALUES ('1202924621665947','Redesign landing page','103591019154201','2022-09-05 13:51:54.876','2022-09-06',0,NULL,NULL,'1202924621665944','[\r\n  {\r\n    \"gid\": \"1202924621665944\",\r\n    \"resource_type\": \"project\"\r\n  }\r\n]','103604275658004','[\r\n  {\r\n    \"gid\": \"103591019154201\"\r\n  }\r\n]','[\r\n  {\r\n    \"gid\": \"1202930813004027\"\r\n  },\r\n  {\r\n    \"gid\": \"1202930813004028\"\r\n  }\r\n]',44,'High',NULL),('1202924621665948','Finalize budget','103591019154201','2022-09-05 13:51:55.047','2022-09-09',1,'2022-11-06 09:45:41.451','1203221137832247','1202924621665944','[\r\n  {\r\n    \"gid\": \"1202924621665944\",\r\n    \"resource_type\": \"project\"\r\n  }\r\n]','103604275658004','[\r\n  {\r\n    \"gid\": \"103591019154201\"\r\n  }\r\n]','',44,'High',NULL),('1202924621665949','Evaluate new email marketing platform','103591019154201','2022-09-05 13:51:55.247','2022-09-20',1,'2022-11-06 09:45:40.429','1203221137832247','1202924621665944','[\r\n  {\r\n    \"gid\": \"1202924621665944\",\r\n    \"resource_type\": \"project\"\r\n  }\r\n]','103604275658004','[\r\n  {\r\n    \"gid\": \"103591019154201\"\r\n  }\r\n]','',1000,'Medium',NULL),('1202924621665950','Approve campaign copy','103591019154201','2022-09-05 13:51:55.419','2022-09-27',0,NULL,NULL,'1202924621665944','[\r\n  {\r\n    \"gid\": \"1202924621665944\",\r\n    \"resource_type\": \"project\"\r\n  }\r\n]','103604275658004','[\r\n  {\r\n    \"gid\": \"103591019154201\"\r\n  }\r\n]','',2222,'Medium',NULL),('1202924621665951','Find venue for holiday party','103591019154201','2022-09-05 13:51:55.602','2022-09-21',0,NULL,NULL,'1202924621665944','[\r\n  {\r\n    \"gid\": \"1202924621665944\",\r\n    \"resource_type\": \"project\"\r\n  }\r\n]','103604275658004','[\r\n  {\r\n    \"gid\": \"103591019154201\"\r\n  }\r\n]','',44,'Low',NULL),('1202924621665952','Send updated attendee list','103591019154201','2022-09-05 13:51:55.835','2022-11-24',0,NULL,NULL,'1202924621665944','[\r\n  {\r\n    \"gid\": \"1202924621665944\",\r\n    \"resource_type\": \"project\"\r\n  }\r\n]','103604275658004','[\r\n  {\r\n    \"gid\": \"103591019154201\"\r\n  }\r\n]','',50,'High',NULL),('1202924621665975','Plan with the team','103591019154201','2022-09-05 13:53:24.609','2022-09-16',0,NULL,NULL,'1202924621665944','[\r\n  {\r\n    \"gid\": \"1202924621665944\",\r\n    \"resource_type\": \"project\"\r\n  }\r\n]','103604275658004','[\r\n  {\r\n    \"gid\": \"103591019154201\"\r\n  },\r\n  {\r\n    \"gid\": \"1203221137832247\"\r\n  }\r\n]','',44,'Medium',NULL),('1202924621665984','Plan the architecture','1203221137832247','2022-09-05 13:54:09.224','2022-11-15',1,'2022-11-21 13:21:37.517','1203221137832247','1202924621665944','[\r\n  {\r\n    \"gid\": \"1202924621665944\",\r\n    \"resource_type\": \"project\"\r\n  }\r\n]','103604275658004','[\r\n  {\r\n    \"gid\": \"103591019154201\"\r\n  },\r\n  {\r\n    \"gid\": \"1203221137832247\"\r\n  }\r\n]','[\r\n  {\r\n    \"gid\": \"1202930813004032\"\r\n  },\r\n  {\r\n    \"gid\": \"1203263947971155\"\r\n  }\r\n]',44,'High',23),('1202930813004033','develop new web site','17218361652142','2022-09-06 13:49:47.522','2022-11-03',1,'2022-11-06 09:45:50.692','1203221137832247','1202924621665944','[\r\n  {\r\n    \"gid\": \"1202924621665944\",\r\n    \"resource_type\": \"project\"\r\n  }\r\n]','103604275658004','[\r\n  {\r\n    \"gid\": \"103591019154201\"\r\n  },\r\n  {\r\n    \"gid\": \"17218361652142\"\r\n  }\r\n]','[\r\n  {\r\n    \"gid\": \"1202930813004039\"\r\n  },\r\n  {\r\n    \"gid\": \"1203268629476285\"\r\n  }\r\n]',44,'Medium',1876),('1203042761059424','New Milestone','17218361652142','2022-09-25 14:59:00.290','2022-10-09',0,NULL,NULL,'1202924621665944','[\r\n  {\r\n    \"gid\": \"1202924621665944\",\r\n    \"resource_type\": \"project\"\r\n  }\r\n]','103604275658004','[\r\n  {\r\n    \"gid\": \"103591019154201\"\r\n  },\r\n  {\r\n    \"gid\": \"17218361652142\"\r\n  }\r\n]','[\r\n  {\r\n    \"gid\": \"1203042761059426\"\r\n  }\r\n]',44,'High',NULL),('1203263852287898','Explore tables ','1203221137832247','2022-10-30 09:48:15.365','2022-11-16',1,'2022-10-30 13:20:23.919','1203221137832247','1202924621665944','[\r\n  {\r\n    \"gid\": \"1202924621665944\",\r\n    \"resource_type\": \"project\"\r\n  }\r\n]','103604275658004','[\r\n  {\r\n    \"gid\": \"1203221137832247\"\r\n  }\r\n]','[\r\n  {\r\n    \"gid\": \"1203263947971155\"\r\n  }\r\n]',44,'High',NULL),('1203263947971159','Connect with asana','103591019154201','2022-10-30 14:36:09.345','2022-11-01',1,'2022-10-30 14:37:20.314','1203221137832247','1202924621665944','[\r\n  {\r\n    \"gid\": \"1202924621665944\",\r\n    \"resource_type\": \"project\"\r\n  }\r\n]','103604275658004','[\r\n  {\r\n    \"gid\": \"1203221137832247\"\r\n  },\r\n  {\r\n    \"gid\": \"103591019154201\"\r\n  }\r\n]','',44,'Medium',310),('1203263947971168','Write SQL queries for first questions bank','1203221137832247','2022-10-31 09:37:41.449','2022-10-25',1,'2022-11-07 13:19:02.344','1203221137832247','1202924621665944','[\r\n  {\r\n    \"gid\": \"1202924621665944\",\r\n    \"resource_type\": \"project\"\r\n  }\r\n]','103604275658004','[\r\n  {\r\n    \"gid\": \"1203221137832247\"\r\n  }\r\n]','[\r\n  {\r\n    \"gid\": \"1203263947971155\"\r\n  }\r\n]',44,'Medium',82),('1203263947971174','Think about special edge cases','1203221137832247','2022-10-31 09:39:44.810','2022-10-28',0,NULL,NULL,'1202924621665944','[\r\n  {\r\n    \"gid\": \"1202924621665944\",\r\n    \"resource_type\": \"project\"\r\n  }\r\n]','103604275658004','[\r\n  {\r\n    \"gid\": \"1203221137832247\"\r\n  }\r\n]','[\r\n  {\r\n    \"gid\": \"1203263947971155\"\r\n  }\r\n]',44,'High',NULL),('1203263947971178','Check and compare after finish','1203221137832247','2022-10-31 09:41:49.071','2022-10-29',0,NULL,NULL,'1202924621665944','[\r\n  {\r\n    \"gid\": \"1202924621665944\",\r\n    \"resource_type\": \"project\"\r\n  }\r\n]','103604275658004','[\r\n  {\r\n    \"gid\": \"1203221137832247\"\r\n  }\r\n]','[\r\n  {\r\n    \"gid\": \"1203268629476285\"\r\n  }\r\n]',44,'',NULL),('1203263947971182','Write SQL queries for 50 questions','1203221137832247','2022-10-31 09:49:06.670','2022-10-30',1,'2022-11-06 09:45:36.286','1203221137832247','1202924621665944','[\r\n  {\r\n    \"gid\": \"1202924621665944\",\r\n    \"resource_type\": \"project\"\r\n  }\r\n]','103604275658004','[\r\n  {\r\n    \"gid\": \"1203221137832247\"\r\n  }\r\n]','',44,'High',NULL),('1203263947971190','Learn Asana','1203221137832247','2022-10-31 09:50:21.758','2022-11-07',0,NULL,NULL,'1202924621665944','[\r\n  {\r\n    \"gid\": \"1202924621665944\",\r\n    \"resource_type\": \"project\"\r\n  }\r\n]','103604275658004','[\r\n  {\r\n    \"gid\": \"1203221137832247\"\r\n  }\r\n]','',44,'Low',NULL),('1203268629476270','Write 50 new questions','1203221137832247','2022-10-31 12:37:34.587','2022-10-30',0,NULL,NULL,'1202924621665944','[\r\n  {\r\n    \"gid\": \"1202924621665944\",\r\n    \"resource_type\": \"project\"\r\n  }\r\n]','103604275658004','[\r\n  {\r\n    \"gid\": \"1203221137832247\"\r\n  }\r\n]','[\r\n  {\r\n    \"gid\": \"1202930813004028\"\r\n  }\r\n]',44,'Medium',50),('1203268629476274','Learn gpt','1203221137832247','2022-10-31 18:35:32.888','2022-11-09',0,NULL,NULL,'1202924621665944','[\r\n  {\r\n    \"gid\": \"1202924621665944\",\r\n    \"resource_type\": \"project\"\r\n  }\r\n]','103604275658004','[\r\n  {\r\n    \"gid\": \"1203221137832247\"\r\n  }\r\n]','',44,'Low',NULL),('1203268629476280','Open server on Java','1203221137832247','2022-11-02 11:10:43.364','2022-11-30',0,NULL,NULL,'1202924621665944','[\r\n  {\r\n    \"gid\": \"1202924621665944\",\r\n    \"resource_type\": \"project\"\r\n  }\r\n]','103604275658004','[\r\n  {\r\n    \"gid\": \"1203221137832247\"\r\n  },\r\n  {\r\n    \"gid\": \"103591019154201\"\r\n  }\r\n]','[\r\n  {\r\n    \"gid\": \"1202930813004039\"\r\n  },\r\n  {\r\n    \"gid\": \"1203268629476285\"\r\n  }\r\n]',44,'Medium',NULL);
/*!40000 ALTER TABLE `Tasks` ENABLE KEYS */;


--
-- Table structure for table `TasksTags`
--

DROP TABLE IF EXISTS `TasksTags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TasksTags` (
  `TaskId` varchar(255) NOT NULL,
  `TagId` varchar(255) NOT NULL,
  PRIMARY KEY ("TaskId", "TagId")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TasksTags`
--


/*!40000 ALTER TABLE `TasksTags` DISABLE KEYS */;
INSERT INTO `TasksTags` VALUES ('1202924621665947','1202930813004027'),('1202924621665947','1202930813004028'),('1202924621665984','1202930813004032'),('1202924621665984','1203263947971155'),('1202930813004033','1202930813004039'),('1202930813004033','1203268629476285'),('1203042761059424','1203042761059426'),('1203263852287898','1203263947971155'),('1203263947971168','1203263947971155'),('1203263947971174','1203263947971155'),('1203263947971178','1203268629476285'),('1203268629476270','1202930813004028'),('1203268629476280','1202930813004039'),('1203268629476280','1203268629476285');
/*!40000 ALTER TABLE `TasksTags` ENABLE KEYS */;


--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `Id` varchar(255) NOT NULL,
  `Name` longtext,
  `WorkspaceId` varchar(255) DEFAULT NULL,
  primary key("Id"),
  FOREIGN KEY("Id") REFERENCES Tasks (AssigneeId),
  FOREIGN KEY("Id") REFERENCES Tasks (CreatedBy) 
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES ('103591019154201','Aharon Avitzur','103604275658004'),('1203221137832247','Shir Kom','1203221225203950'),('17218361652142','Michael Kolomenkin','103604275658004'), ('17218361652145','Dima Sivov','103604275658004');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

DROP TABLE IF EXISTS `Date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Date` (
  `currentDate` longtext,
  primary key("currentDate")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Date`
--


/*!40000 ALTER TABLE `Date` DISABLE KEYS */;
INSERT INTO `Date` VALUES ('2022-10-02 12:10:43.364');
/*!40000 ALTER TABLE `Date` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-14 13:19:25
