-- MySQL dump 10.13  Distrib 9.5.0, for macos26.0 (arm64)
--
-- Host: localhost    Database: FacultyPublicationDB
-- ------------------------------------------------------
-- Server version	9.5.0

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ 'ce20b094-bbdc-11f0-9861-2be4f41aa6f2:1-804';

--
-- Table structure for table `Author`
--

DROP TABLE IF EXISTS `Author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Author` (
  `author_id` int NOT NULL AUTO_INCREMENT,
  `author_name` varchar(100) NOT NULL,
  `affiliation` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`author_id`),
  UNIQUE KEY `author_name` (`author_name`,`affiliation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Faculty`
--

DROP TABLE IF EXISTS `Faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Faculty` (
  `faculty_id` varchar(50) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `scholar_link` varchar(1000) NOT NULL,
  PRIMARY KEY (`faculty_id`),
  UNIQUE KEY `scholar_link` (`scholar_link`(255)),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `faculty_data`
--

DROP TABLE IF EXISTS `faculty_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty_data` (
  `faculty_id` text,
  `full_name` text,
  `email` text,
  `department` text,
  `designation` text,
  `scholar_link` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Faculty_Publication`
--

DROP TABLE IF EXISTS `Faculty_Publication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Faculty_Publication` (
  `fac_pub_id` int NOT NULL AUTO_INCREMENT,
  `faculty_id` varchar(50) NOT NULL,
  `publication_id` int NOT NULL,
  `is_primary_author` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`fac_pub_id`),
  UNIQUE KEY `faculty_id` (`faculty_id`,`publication_id`),
  KEY `publication_id` (`publication_id`),
  CONSTRAINT `faculty_publication_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `Faculty` (`faculty_id`) ON DELETE CASCADE,
  CONSTRAINT `faculty_publication_ibfk_2` FOREIGN KEY (`publication_id`) REFERENCES `Publication` (`publication_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `faculty_publication_report`
--

DROP TABLE IF EXISTS `faculty_publication_report`;
/*!50001 DROP VIEW IF EXISTS `faculty_publication_report`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `faculty_publication_report` AS SELECT 
 1 AS `Faculty`,
 1 AS `Title`,
 1 AS `Journal`,
 1 AS `Volume`,
 1 AS `Issue`,
 1 AS `Pages`,
 1 AS `Year`,
 1 AS `Publisher`,
 1 AS `Citations`,
 1 AS `DOI`,
 1 AS `Abstract`,
 1 AS `Author`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Fetch_Log`
--

DROP TABLE IF EXISTS `Fetch_Log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Fetch_Log` (
  `fetch_id` int NOT NULL AUTO_INCREMENT,
  `faculty_id` varchar(50) NOT NULL,
  `fetch_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `total_records_fetched` int DEFAULT '0',
  `status` enum('SUCCESS','FAILURE','PARTIAL') DEFAULT 'SUCCESS',
  `remarks` text,
  PRIMARY KEY (`fetch_id`),
  KEY `faculty_id` (`faculty_id`),
  CONSTRAINT `fetch_log_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `Faculty` (`faculty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Publication`
--

DROP TABLE IF EXISTS `Publication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Publication` (
  `publication_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `journal_name` varchar(255) DEFAULT NULL,
  `volume` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `pages` varchar(50) DEFAULT NULL,
  `year` year DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `citation_count` int DEFAULT '0',
  `doi_link` varchar(255) DEFAULT NULL,
  `abstract` text,
  `date_added` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`publication_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Publication_Author`
--

DROP TABLE IF EXISTS `Publication_Author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Publication_Author` (
  `pub_author_id` int NOT NULL AUTO_INCREMENT,
  `publication_id` int NOT NULL,
  `author_id` int NOT NULL,
  `author_order` int DEFAULT NULL,
  PRIMARY KEY (`pub_author_id`),
  KEY `publication_id` (`publication_id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `publication_author_ibfk_1` FOREIGN KEY (`publication_id`) REFERENCES `Publication` (`publication_id`) ON DELETE CASCADE,
  CONSTRAINT `publication_author_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `Author` (`author_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `publication_report`
--

DROP TABLE IF EXISTS `publication_report`;
/*!50001 DROP VIEW IF EXISTS `publication_report`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `publication_report` AS SELECT 
 1 AS `Title`,
 1 AS `Author`,
 1 AS `Faculty_Name`,
 1 AS `Scholar_Account`,
 1 AS `Year_of_Publication`,
 1 AS `Journal_or_Conference`,
 1 AS `Citations`,
 1 AS `Volume`,
 1 AS `Issue`,
 1 AS `Pages`,
 1 AS `Publisher`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `faculty_publication_report`
--

/*!50001 DROP VIEW IF EXISTS `faculty_publication_report`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `faculty_publication_report` AS select `f`.`full_name` AS `Faculty`,`p`.`title` AS `Title`,`p`.`journal_name` AS `Journal`,`p`.`volume` AS `Volume`,`p`.`number` AS `Issue`,`p`.`pages` AS `Pages`,`p`.`year` AS `Year`,`p`.`publisher` AS `Publisher`,`p`.`citation_count` AS `Citations`,`p`.`doi_link` AS `DOI`,`p`.`abstract` AS `Abstract`,`a`.`author_name` AS `Author` from ((((`faculty` `f` join `faculty_publication` `fp` on((`f`.`faculty_id` = `fp`.`faculty_id`))) join `publication` `p` on((`fp`.`publication_id` = `p`.`publication_id`))) left join `publication_author` `pa` on((`p`.`publication_id` = `pa`.`publication_id`))) left join `author` `a` on((`pa`.`author_id` = `a`.`author_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `publication_report`
--

/*!50001 DROP VIEW IF EXISTS `publication_report`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `publication_report` AS select `p`.`title` AS `Title`,`a`.`author_name` AS `Author`,`f`.`full_name` AS `Faculty_Name`,`f`.`scholar_link` AS `Scholar_Account`,`p`.`year` AS `Year_of_Publication`,`p`.`journal_name` AS `Journal_or_Conference`,`p`.`citation_count` AS `Citations`,`p`.`volume` AS `Volume`,`p`.`number` AS `Issue`,`p`.`pages` AS `Pages`,`p`.`publisher` AS `Publisher` from ((((`publication` `p` join `faculty_publication` `fp` on((`p`.`publication_id` = `fp`.`publication_id`))) join `faculty` `f` on((`fp`.`faculty_id` = `f`.`faculty_id`))) join `publication_author` `pa` on((`p`.`publication_id` = `pa`.`publication_id`))) join `author` `a` on((`pa`.`author_id` = `a`.`author_id`))) order by `f`.`full_name`,`p`.`year` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-24 17:36:59
