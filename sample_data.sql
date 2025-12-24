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
-- Dumping data for table `Author`
--

LOCK TABLES `Author` WRITE;
/*!40000 ALTER TABLE `Author` DISABLE KEYS */;
/*!40000 ALTER TABLE `Author` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `Faculty`
--

LOCK TABLES `Faculty` WRITE;
/*!40000 ALTER TABLE `Faculty` DISABLE KEYS */;
INSERT INTO `Faculty` VALUES ('00CSE003','V.Baby','baby_v@vnrvjiet.in','CSE','Associate Professor','https://scholar.google.co.in/citations?user=4N4iClkAAAAJ&hl=en'),('00CSE007','Malige Gangappa','gangappa_m@vnrvjiet.in','CSE','Associate Professor','https://scholar.google.co.in/citations?user=cpGtMbQAAAAJ&hl=en'),('00CSE010','Dr. P V Siva Kumar','sivakumar_pv@vnrvjiet.in','CSE','Associate Professor','https://scholar.google.co.in/citations?user=lcDmUi8AAAAJ&hl=en'),('07CSE011','Madhavi','madhavi_a@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.co.in/citations?user=CVfMxrcAAAAJ&hl=en'),('07CSE018','N.V. Sailaja','sailaja_nv@vnrvjiet.in','CSE','Sr. Asst. Prof','https://scholar.google.co.in/citations?user=VUFXaIsAAAAJ&hl=en'),('07CSE021','Dr. M.Raja Sekar','rameshchandra_g@vnrvjiet.in','CSE','Professor','https://scholar.google.co.in/citations?user=LJwf6gMAAAAJ&hl=en'),('07CSE028','Dr. D.N. Vasundara','vasundhara_d@vnrvjiet.in','CSE','Sr. Asst. Prof','https://scholar.google.com/citations?user=4IsZk0oAAAAJ&hl=en'),('07CSE054','K. Jhansi Lakshmi Bai','jhansi_cse@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.com/citations?hl=en&user=QtdLa_YAAAAJ'),('07CSE061','R. Vasavi','vasavi_r@vnrvjiet.in','CSE','Sr. Asst. Prof','https://scholar.google.com/citations?user=maBNhMUAAAAJ&hl=en'),('07CSE063','Vijaya Saraswathi','vijayasaraswathi_r@vnrvjiet.in','CSE','Sr. Asst. Prof','https://scholar.google.com/citations?user=iwSfpAUAAAAJ&hl=en'),('08CSE066','P. Radhika','radhika_p@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.co.in/citations?user=l233mi4AAAAJ&hl=en'),('10CSE016','T.Gnana Prakash','gnanaprakash_t@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.com/citations?user=abxcxd8AAAAJ&hl=en'),('10CSE023','Dr. A Brahmananda Reddy','brahmanandareddy_a@vnrvjiet.in','CSE','Associate Professor','https://scholar.google.co.in/citations?user=SVsMoC0AAAAJ&hl=en'),('12CSE053','M.Venkata Krishna Rao','venkatakrishnarao_cse@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.com/citations?user=aixPNUYAAAAJ&hl=en'),('15CSE020','M.Ravi Kanth','ravikanth_m@vnrvjiet.in','CSE','Sr. Asst. Prof','https://scholar.google.com/citations?user=jkYx4AwAAAAJ&hl=en'),('15CSE022','S. Jahnavi','jahnavi_s@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.co.in/citations?user=pHCN4hMAAAAJ&hl=en'),('15CSE031','N Lakshmi Kalyani','lakshmikalyani_n@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.com/citations?user=-ciJ9hcAAAAJ&hl=en'),('15CSE032','N. Sandeep Chaitanya','sandeepchaitanya_n@vnrvjiet.in',' CSE','Assistant Professor','https://scholar.google.co.in/citations?user=dXVuHOgAAAAJ&hl=en'),('15CSE048','Nyaramneni Sarika','sarika_n@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.co.in/citations?user=wxv_hvcAAAAJ&hl=en'),('15CSE091','P Tejaswi','tejaswi_p@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.co.in/citations?user=_1gklZEAAAAJ&hl=en'),('15CSE094','P Bharath kumar Chowdary','bharathkumar_p@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.com/citations?user=KijEmYcAAAAJ&hl=en'),('16CSE012','P Rama Krishna','ramakrishna_p@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.co.in/citations?user=3dbRERQAAAAJ&hl=en'),('16CSE089','K.Bheema Lingappa','bheemalingappa_k@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.com/citations?user=DNS26EEAAAAJ&hl=en'),('16CSE102','L.Indira','indira_l@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.com/citations?user=tfW55SIAAAAJ&hl=en'),('16CSE105','Dr.P Neelakantan','neelakantan_p@vnrvjiet.in','CSE','Professor','https://scholar.google.co.in/citations?user=pwJWu3cAAAAJ&hl=en'),('16CSE121','Dr. K.Srinivas','srinivas_k@vnrvjiet.in','CSE','Sr. Asst. Prof','https://scholar.google.co.in/citations?user=UdWNX7wAAAAJ&hl=en'),('17CSE012','Dr. Ch.Suresh','suresh_ch@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.com/citations?user=WAwf_mkAAAAJ&hl=en'),('17CSE017','Krithi Ohri','kriti_o@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.com/citations?user=41bjtbEAAAAJ&hl=en'),('17CSE025','Dr. Venkata Ramana Kaneti','venkataramana_k@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.com/citations?user=EWClFxUAAAAJ&hl=en'),('17CSE033','Dr. Deepak Sukheja','deepak_s@vnrvjiet.in','CSE','Associate Professor','https://scholar.google.com/citations?user=mDNx6GIAAAAJ&hl=en'),('19CSE009','S Nyemeesha','nyemeesha_s@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.com/citations?user=hjfMiMUAAAAJ&hl=en'),('19CSE054','P.Jyothi','jyothi_p@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.com/citations?user=tn-v7AkAAAAJ&hl=en'),('20CSE015','K.Bhagya Rekha','bhagyarekha_k@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.com/citations?hl=en&user=fB33D5cAAAAJ&view_op=list_works&authuser=1&gmla=AJsN-F7GvYzsna3UfVqKGt3Qc_WnoFQt45duXI1-PKdCNtatUqgesGLa-Sn7VVp_oU5dmV5DW7a3G4EdsykOs-BWsS85f_y1bb9S3qITBkJjo5l77F6eJ7c'),('20CSE026','P.Prasanna','prasanna_p@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.co.in/citations?view_op=new_profile&hl=en&authuser=1'),('20CSE032','Hari priya','haripriya_k@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.com/citations?hl=en&user=MWRHAc8AAAAJ&authuser=2&scilu=&scisig=AMD79ooAAAAAYbBR8N1aGaQj1fq2JA9a_ksZGxuR0UA3&gmla=AJsN-F4mwKrGORRLmd6KSjQ9n-UVH5qdaJ4rUeu6cuqYTIctvQWO8uB0Q8cxuPLba4z_7GRDshss6-6deXUx6-CCebQyaHp8rXUg6rqkgQUUhSaFvBo0EUo&sciund=2253424411943496927'),('20CSE033','Laxmi deepthi','laxmideepthi_g@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.com/citations?view_op=list_works&hl=en&user=qAEdISUAAAAJ'),('21CSE031','Sudeshna','sudeshna_s@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.com/citations?view_op=list_works&hl=en&user=8EJfwegAAAAJ'),('97CSE004','Dr. B.V.Kiranmayee','kiranmayee_bv@vnrvjiet.in','CSE','Professor','https://scholar.google.co.in/citations?user=MmjaRbUAAAAJ&hl=en'),('97CSE009','Dr.C.Kiran Mai','ckiranmai@vnrvjiet.in','CSE','Professor','https://scholar.google.com/citations?user=0EBffRIAAAAJ&hl=en'),('98CSE011','Dr. S Nagini','nagini_s@vnrvjiet.in','CSE','Professor','https://scholar.google.co.in/citations?user=vFkTAHUAAAAJ&hl=en');
/*!40000 ALTER TABLE `Faculty` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `faculty_data`
--

LOCK TABLES `faculty_data` WRITE;
/*!40000 ALTER TABLE `faculty_data` DISABLE KEYS */;
INSERT INTO `faculty_data` VALUES ('97CSE009','Dr.C.Kiran Mai','ckiranmai@vnrvjiet.in','CSE','Professor','https://scholar.google.com/citations?user=0EBffRIAAAAJ&hl=en'),('16CSE105','Dr.P Neelakantan','neelakantan_p@vnrvjiet.in','CSE','Professor','https://scholar.google.co.in/citations?user=pwJWu3cAAAAJ&hl=en'),('07CSE021','Dr. M.Raja Sekar','rameshchandra_g@vnrvjiet.in','CSE','Professor','https://scholar.google.co.in/citations?user=LJwf6gMAAAAJ&hl=en'),('97CSE004','Dr. B.V.Kiranmayee','kiranmayee_bv@vnrvjiet.in','CSE','Professor','https://scholar.google.co.in/citations?user=MmjaRbUAAAAJ&hl=en'),('00CSE003','V.Baby','baby_v@vnrvjiet.in','CSE','Associate Professor','https://scholar.google.co.in/citations?user=4N4iClkAAAAJ&hl=en'),('98CSE011','Dr. S Nagini','nagini_s@vnrvjiet.in','CSE','Professor','https://scholar.google.co.in/citations?user=vFkTAHUAAAAJ&hl=en'),('00CSE010','Dr. P V Siva Kumar','sivakumar_pv@vnrvjiet.in','CSE','Associate Professor','https://scholar.google.co.in/citations?user=lcDmUi8AAAAJ&hl=en'),('00CSE007','Malige Gangappa','gangappa_m@vnrvjiet.in','CSE','Associate Professor','https://scholar.google.co.in/citations?user=cpGtMbQAAAAJ&hl=en'),('10CSE023','Dr. A Brahmananda Reddy','brahmanandareddy_a@vnrvjiet.in','CSE','Associate Professor','https://scholar.google.co.in/citations?user=SVsMoC0AAAAJ&hl=en'),('17CSE033','Dr. Deepak Sukheja','deepak_s@vnrvjiet.in','CSE','Associate Professor','https://scholar.google.com/citations?user=mDNx6GIAAAAJ&hl=en'),('07CSE011','Madhavi','madhavi_a@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.co.in/citations?user=CVfMxrcAAAAJ&hl=en'),('07CSE018','N.V. Sailaja','sailaja_nv@vnrvjiet.in','CSE','Sr. Asst. Prof','https://scholar.google.co.in/citations?user=VUFXaIsAAAAJ&hl=en'),('07CSE028','Dr. D.N. Vasundara','vasundhara_d@vnrvjiet.in','CSE','Sr. Asst. Prof','https://scholar.google.com/citations?user=4IsZk0oAAAAJ&hl=en'),('07CSE061','R. Vasavi','vasavi_r@vnrvjiet.in','CSE','Sr. Asst. Prof','https://scholar.google.com/citations?user=maBNhMUAAAAJ&hl=en'),('07CSE063','Vijaya Saraswathi','vijayasaraswathi_r@vnrvjiet.in','CSE','Sr. Asst. Prof','https://scholar.google.com/citations?user=iwSfpAUAAAAJ&hl=en'),('08CSE066','P. Radhika','radhika_p@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.co.in/citations?user=l233mi4AAAAJ&hl=en'),('10CSE016','T.Gnana Prakash','gnanaprakash_t@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.com/citations?user=abxcxd8AAAAJ&hl=en'),('15CSE032','N. Sandeep Chaitanya','sandeepchaitanya_n@vnrvjiet.in',' CSE','Assistant Professor','https://scholar.google.co.in/citations?user=dXVuHOgAAAAJ&hl=en'),('15CSE022','S. Jahnavi','jahnavi_s@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.co.in/citations?user=pHCN4hMAAAAJ&hl=en'),('15CSE020','M.Ravi Kanth','ravikanth_m@vnrvjiet.in','CSE','Sr. Asst. Prof','https://scholar.google.com/citations?user=jkYx4AwAAAAJ&hl=en'),('15CSE048','Nyaramneni Sarika','sarika_n@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.co.in/citations?user=wxv_hvcAAAAJ&hl=en'),('15CSE091','P Tejaswi','tejaswi_p@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.co.in/citations?user=_1gklZEAAAAJ&hl=en'),('15CSE094','P Bharath kumar Chowdary','bharathkumar_p@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.com/citations?user=KijEmYcAAAAJ&hl=en'),('16CSE012','P Rama Krishna','ramakrishna_p@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.co.in/citations?user=3dbRERQAAAAJ&hl=en'),('15CSE031','N Lakshmi Kalyani','lakshmikalyani_n@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.com/citations?user=-ciJ9hcAAAAJ&hl=en'),('16CSE089','K.Bheema Lingappa','bheemalingappa_k@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.com/citations?user=DNS26EEAAAAJ&hl=en'),('16CSE102','L.Indira','indira_l@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.com/citations?user=tfW55SIAAAAJ&hl=en'),('16CSE121','Dr. K.Srinivas','srinivas_k@vnrvjiet.in','CSE','Sr. Asst. Prof','https://scholar.google.co.in/citations?user=UdWNX7wAAAAJ&hl=en'),('17CSE012','Dr. Ch.Suresh','suresh_ch@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.com/citations?user=WAwf_mkAAAAJ&hl=en'),('17CSE017','Krithi Ohri','kriti_o@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.com/citations?user=41bjtbEAAAAJ&hl=en'),('17CSE025','Dr. Venkata Ramana Kaneti','venkataramana_k@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.com/citations?user=EWClFxUAAAAJ&hl=en'),('07CSE054','K. Jhansi Lakshmi Bai','jhansi_cse@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.com/citations?hl=en&user=QtdLa_YAAAAJ'),('12CSE053','M.Venkata Krishna Rao','venkatakrishnarao_cse@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.com/citations?user=aixPNUYAAAAJ&hl=en'),('19CSE009','S Nyemeesha','nyemeesha_s@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.com/citations?user=hjfMiMUAAAAJ&hl=en'),('19CSE054','P.Jyothi','jyothi_p@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.com/citations?user=tn-v7AkAAAAJ&hl=en'),('20CSE015','K.Bhagya Rekha','bhagyarekha_k@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.com/citations?hl=en&user=fB33D5cAAAAJ&view_op=list_works&authuser=1&gmla=AJsN-F7GvYzsna3UfVqKGt3Qc_WnoFQt45duXI1-PKdCNtatUqgesGLa-Sn7VVp_oU5dmV5DW7a3G4EdsykOs-BWsS85f_y1bb9S3qITBkJjo5l77F6eJ7c'),('20CSE026','P.Prasanna','prasanna_p@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.co.in/citations?view_op=new_profile&hl=en&authuser=1'),('20CSE033','Laxmi deepthi','laxmideepthi_g@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.com/citations?view_op=list_works&hl=en&user=qAEdISUAAAAJ'),('20CSE032','Hari priya','haripriya_k@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.com/citations?hl=en&user=MWRHAc8AAAAJ&authuser=2&scilu=&scisig=AMD79ooAAAAAYbBR8N1aGaQj1fq2JA9a_ksZGxuR0UA3&gmla=AJsN-F4mwKrGORRLmd6KSjQ9n-UVH5qdaJ4rUeu6cuqYTIctvQWO8uB0Q8cxuPLba4z_7GRDshss6-6deXUx6-CCebQyaHp8rXUg6rqkgQUUhSaFvBo0EUo&sciund=2253424411943496927'),('21CSE031','Sudeshna','sudeshna_s@vnrvjiet.in','CSE','Assistant Professor','https://scholar.google.com/citations?view_op=list_works&hl=en&user=8EJfwegAAAAJ');
/*!40000 ALTER TABLE `faculty_data` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `Faculty_Publication`
--

LOCK TABLES `Faculty_Publication` WRITE;
/*!40000 ALTER TABLE `Faculty_Publication` DISABLE KEYS */;
INSERT INTO `Faculty_Publication` VALUES (1,'97CSE009',57,0),(2,'97CSE009',58,0),(3,'97CSE009',59,0),(4,'97CSE009',60,0),(5,'97CSE009',61,0),(6,'16CSE105',62,0),(7,'16CSE105',63,0),(8,'16CSE105',64,0),(9,'16CSE105',65,0),(10,'16CSE105',66,0),(11,'07CSE021',67,0),(12,'07CSE021',68,0),(13,'07CSE021',69,0),(14,'07CSE021',70,0),(15,'07CSE021',71,0),(16,'97CSE004',72,0),(17,'97CSE004',73,0),(18,'97CSE004',74,0),(19,'97CSE004',75,0),(20,'97CSE004',76,0),(21,'00CSE003',77,0),(22,'00CSE003',78,0),(23,'00CSE003',79,0),(24,'00CSE003',80,0),(25,'00CSE003',81,0),(26,'98CSE011',82,0),(27,'98CSE011',83,0),(28,'98CSE011',84,0),(29,'98CSE011',85,0),(30,'98CSE011',86,0),(31,'00CSE010',87,0),(32,'00CSE010',88,0),(33,'00CSE010',89,0),(34,'00CSE010',90,0),(35,'00CSE010',91,0),(36,'00CSE007',92,0),(37,'10CSE023',93,0),(38,'10CSE023',94,0),(39,'10CSE023',95,0),(40,'10CSE023',96,0),(41,'10CSE023',97,0),(42,'17CSE033',98,0),(43,'17CSE033',99,0),(44,'17CSE033',100,0),(45,'17CSE033',101,0),(46,'17CSE033',102,0);
/*!40000 ALTER TABLE `Faculty_Publication` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `Fetch_Log`
--

LOCK TABLES `Fetch_Log` WRITE;
/*!40000 ALTER TABLE `Fetch_Log` DISABLE KEYS */;
INSERT INTO `Fetch_Log` VALUES (1,'97CSE009','2025-11-11 17:17:31',0,'FAILURE','\'str\' object has no attribute \'get\''),(2,'16CSE105','2025-11-11 17:17:35',0,'FAILURE','\'str\' object has no attribute \'get\''),(3,'07CSE021','2025-11-11 17:17:37',0,'FAILURE','\'str\' object has no attribute \'get\''),(4,'97CSE004','2025-11-11 17:17:40',0,'FAILURE','\'str\' object has no attribute \'get\''),(5,'00CSE003','2025-11-11 17:17:43',0,'FAILURE','\'str\' object has no attribute \'get\''),(6,'98CSE011','2025-11-11 17:17:46',0,'FAILURE','\'str\' object has no attribute \'get\''),(7,'00CSE010','2025-11-11 17:17:49',0,'FAILURE','\'str\' object has no attribute \'get\''),(8,'00CSE007','2025-11-11 17:17:52',0,'FAILURE','\'str\' object has no attribute \'get\''),(9,'10CSE023','2025-11-11 17:17:54',0,'FAILURE','\'str\' object has no attribute \'get\''),(10,'17CSE033','2025-11-11 17:17:58',0,'FAILURE','\'str\' object has no attribute \'get\''),(11,'97CSE009','2025-11-11 17:19:52',5,'SUCCESS','Fetched 5 publications'),(12,'16CSE105','2025-11-11 17:19:55',5,'SUCCESS','Fetched 5 publications'),(13,'07CSE021','2025-11-11 17:19:57',5,'SUCCESS','Fetched 5 publications'),(14,'97CSE004','2025-11-11 17:20:00',5,'SUCCESS','Fetched 5 publications'),(15,'00CSE003','2025-11-11 17:20:02',5,'SUCCESS','Fetched 5 publications'),(16,'98CSE011','2025-11-11 17:20:05',5,'SUCCESS','Fetched 5 publications'),(17,'00CSE010','2025-11-11 17:20:09',5,'SUCCESS','Fetched 5 publications'),(18,'00CSE007','2025-11-11 17:20:11',1,'SUCCESS','Fetched 1 publications'),(19,'10CSE023','2025-11-11 17:20:14',5,'SUCCESS','Fetched 5 publications'),(20,'17CSE033','2025-11-11 17:20:18',5,'SUCCESS','Fetched 5 publications');
/*!40000 ALTER TABLE `Fetch_Log` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `Publication`
--

LOCK TABLES `Publication` WRITE;
/*!40000 ALTER TABLE `Publication` DISABLE KEYS */;
INSERT INTO `Publication` VALUES (47,'Enhanced crow search optimization algorithm and hybrid NN-CNN classifiers for classification of land cover images','Multimedia Research 2 (3), 12-22, 2019',NULL,NULL,NULL,2019,NULL,69,NULL,NULL,'2025-11-11 17:17:31'),(48,'Analyzing the best machine learning algorithm for plant disease classification','Materials today proceedings, 2021',NULL,NULL,NULL,2021,NULL,44,NULL,NULL,'2025-11-11 17:17:35'),(49,'Analysis of Variant Approaches for Initial Centroid Selection in K-Means Clustering Algorithm','Smart Computing and Informatics, 109-121, 2017',NULL,NULL,NULL,2017,NULL,12,NULL,NULL,'2025-11-11 17:17:37'),(50,'Agriculture yield prediction using predictive analytic techniques','2016 2nd international conference on contemporary computing and informatics …, 2016',NULL,NULL,NULL,2016,NULL,47,NULL,NULL,'2025-11-11 17:17:40'),(51,'Distributed threshold k-means clustering for privacy preserving data mining','Advances in Computing, Communications and Informatics (ICACCI), 2016 …, 2016',NULL,NULL,NULL,2016,NULL,23,NULL,NULL,'2025-11-11 17:17:43'),(52,'Agriculture yield prediction using predictive analytic techniques','2016 2nd international conference on contemporary computing and informatics …, 2016',NULL,NULL,NULL,2016,NULL,47,NULL,NULL,'2025-11-11 17:17:46'),(53,'Multi-level secret sharing scheme for mobile ad-hoc networks','International Journal of Advanced Networking and Applications 6 (2), 2253, 2014',NULL,NULL,NULL,2014,NULL,11,NULL,NULL,'2025-11-11 17:17:49'),(54,'International Conference on Innovations in Computer Science and Information Technology 2','International Conference on Innovations in Computer Science and Information …, 2015',NULL,NULL,NULL,2015,NULL,NULL,NULL,NULL,'2025-11-11 17:17:52'),(55,'Sentiment research on Twitter data','Int J Recent Technol Eng 8 (5), 1068-1070, 2019',NULL,NULL,NULL,2019,NULL,16,NULL,NULL,'2025-11-11 17:17:54'),(56,'Analysis of sentiment based movie reviews using machine learning techniques','Journal of Intelligent & Fuzzy Systems 41 (5), 5449-5456, 2021',NULL,NULL,NULL,2021,NULL,36,NULL,NULL,'2025-11-11 17:17:58'),(57,'Enhanced crow search optimization algorithm and hybrid NN-CNN classifiers for classification of land cover images','Multimedia Research 2 (3), 12-22, 2019',NULL,NULL,NULL,2019,NULL,69,NULL,NULL,'2025-11-11 17:19:52'),(58,'Data Mining Of Geo-spatial Database For Agriculture Related Application','Proceedings of Map India. New Delhi, 2006',NULL,NULL,NULL,2006,NULL,17,NULL,NULL,'2025-11-11 17:19:52'),(59,'Polyanalyst application for forest data mining','Proceedings. 2005 IEEE International Geoscience and Remote Sensing Symposium …, 2005',NULL,NULL,NULL,2005,NULL,13,NULL,NULL,'2025-11-11 17:19:52'),(60,'Hypothetical description for intelligent data mining','International Journal on Computer Science and Engineering 2 (7), 2010',NULL,NULL,NULL,2010,NULL,10,NULL,NULL,'2025-11-11 17:19:52'),(61,'Techniques for Machine learning based Spatial data Analysis-Research Directions','International Journal of Computer applications, 2017',NULL,NULL,NULL,2017,NULL,9,NULL,NULL,'2025-11-11 17:19:52'),(62,'Analyzing the best machine learning algorithm for plant disease classification','Materials today proceedings, 2021',NULL,NULL,NULL,2021,NULL,44,NULL,NULL,'2025-11-11 17:19:55'),(63,'Reliable budget aware workflow scheduling strategy on multi-cloud environment','Cluster Computing 25 (2), 1189-1205, 2022',NULL,NULL,NULL,2022,NULL,37,NULL,NULL,'2025-11-11 17:19:55'),(64,'Proficient job scheduling in cloud computation using an optimized machine learning strategy','International Journal of Information Technology 15 (5), 2409-2421, 2023',NULL,NULL,NULL,2023,NULL,23,NULL,NULL,'2025-11-11 17:19:55'),(65,'An Optimized Load Balancing Strategy for an Enhancement of Cloud Computing Environment','Wireless Personal Communications, 2023',NULL,NULL,NULL,2023,NULL,20,NULL,NULL,'2025-11-11 17:19:55'),(66,'Task allocation in distributed systems','Indian Journal of Science and Technology 9 (31), 1-10, 2016',NULL,NULL,NULL,2016,NULL,13,NULL,NULL,'2025-11-11 17:19:55'),(67,'Analysis of Variant Approaches for Initial Centroid Selection in K-Means Clustering Algorithm','Smart Computing and Informatics, 109-121, 2017',NULL,NULL,NULL,2017,NULL,12,NULL,NULL,'2025-11-11 17:19:57'),(68,'Breast Cancer Detection using Fuzzy SVMs','International Journal for Research in Applied Science & Engineering …, 2017',NULL,NULL,NULL,2017,NULL,8,NULL,NULL,'2025-11-11 17:19:57'),(69,'Mammogram images detection using support vector machines','Int. J. Adv. Res. Comput. Sci 8 (7), 329-334, 2017',NULL,NULL,NULL,2017,NULL,6,NULL,NULL,'2025-11-11 17:19:57'),(70,'Tongue image analysis for hepatitis detection using GA-SVM','Indian Journal of Computer Science and Engineering (IJCSE) 8 (4), 526-534, 2017',NULL,NULL,NULL,2017,NULL,6,NULL,NULL,'2025-11-11 17:19:57'),(71,'Care-giver alerting for bedridden patients using hand gesture recognition system','Journal of Physics: Conference Series 5 (5), 7, 2021',NULL,NULL,NULL,2021,NULL,5,NULL,NULL,'2025-11-11 17:19:57'),(72,'Agriculture yield prediction using predictive analytic techniques','2016 2nd international conference on contemporary computing and informatics …, 2016',NULL,NULL,NULL,2016,NULL,47,NULL,NULL,'2025-11-11 17:20:00'),(73,'Prediction of rice plant diseases based on soil and weather conditions','Proceedings of International Conference on Advances in Computer Engineering …, 2021',NULL,NULL,NULL,2021,NULL,17,NULL,NULL,'2025-11-11 17:20:00'),(74,'A novel data mining approach for brain tumour detection','2016 2nd International Conference on Contemporary Computing and Informatics …, 2016',NULL,NULL,NULL,2016,NULL,17,NULL,NULL,'2025-11-11 17:20:00'),(75,'Enhancement of SVM based MRI brain image classification using pre-processing techniques','Indian Journal of Science and Technology 9 (29), 1-7, 2016',NULL,NULL,NULL,2016,NULL,14,NULL,NULL,'2025-11-11 17:20:00'),(76,'Machine learning approach for breast cancer prediction','International Journal of Recent Technology and Engineering (IJRTE) 8 (1 …, 2019',NULL,NULL,NULL,2019,NULL,13,NULL,NULL,'2025-11-11 17:20:00'),(77,'Distributed threshold k-means clustering for privacy preserving data mining','Advances in Computing, Communications and Informatics (ICACCI), 2016 …, 2016',NULL,NULL,NULL,2016,NULL,23,NULL,NULL,'2025-11-11 17:20:02'),(78,'Privacy - Prserving Distributed Data Mining Techniques: A survey','International Journal of Computer Applications 143 (10), 37 - 41, 2016',NULL,NULL,NULL,2016,NULL,22,NULL,NULL,'2025-11-11 17:20:02'),(79,'Virtual Lab Environment For Programming Using Mean Stack','2022 4th International Conference on Smart Systems and Inventive Technology …, 2022',NULL,NULL,NULL,2022,NULL,6,NULL,NULL,'2025-11-11 17:20:02'),(80,'An Amazon Lex Based Interactive Virtual Assistant for C Programming','EasyChair, 2022',NULL,NULL,NULL,2022,NULL,4,NULL,NULL,'2025-11-11 17:20:02'),(81,'An Integrated Approach for Suicidal Tendency Detection','2022 4th International Conference on Advances in Computing, Communication …, 2022',NULL,NULL,NULL,2022,NULL,3,NULL,NULL,'2025-11-11 17:20:02'),(82,'Agriculture yield prediction using predictive analytic techniques','2016 2nd international conference on contemporary computing and informatics …, 2016',NULL,NULL,NULL,2016,NULL,47,NULL,NULL,'2025-11-11 17:20:05'),(83,'A novel data mining approach for brain tumour detection','2016 2nd International Conference on Contemporary Computing and Informatics …, 2016',NULL,NULL,NULL,2016,NULL,17,NULL,NULL,'2025-11-11 17:20:05'),(84,'Enhancement of SVM based MRI brain image classification using pre-processing techniques','Indian Journal of Science and Technology 9 (29), 1-7, 2016',NULL,NULL,NULL,2016,NULL,14,NULL,NULL,'2025-11-11 17:20:05'),(85,'A survey paper on an IoT-based machine learning model to predict air pollution levels','2022 4th International Conference on Advances in Computing, Communication …, 2022',NULL,NULL,NULL,2022,NULL,9,NULL,NULL,'2025-11-11 17:20:05'),(86,'Explorative data analytics of brain tumour data using R','2017 International Conference on Current Trends in Computer, Electrical …, 2017',NULL,NULL,NULL,2017,NULL,8,NULL,NULL,'2025-11-11 17:20:05'),(87,'Multi-level secret sharing scheme for mobile ad-hoc networks','International Journal of Advanced Networking and Applications 6 (2), 2253, 2014',NULL,NULL,NULL,2014,NULL,11,NULL,NULL,'2025-11-11 17:20:09'),(88,'Real time handwritten Digits Recognition using Convolutional Neural Network','International conference on Advance Computing and Innovative Technologies in …, 2021',NULL,NULL,NULL,2021,NULL,10,NULL,NULL,'2025-11-11 17:20:09'),(89,'Efficient quantum cryptography technique for key distribution','Journal européen des systèmes automatisés 51, pg: 283-293, 2018',NULL,NULL,NULL,2018,NULL,10,NULL,NULL,'2025-11-11 17:20:09'),(90,'Role and importance of cryptography techniques in cloud computing','Technoarete Transactions on Internet of Things and Cloud Computing Research …, 2022',NULL,NULL,NULL,2022,NULL,5,NULL,NULL,'2025-11-11 17:20:09'),(91,'Prediction And Providing Medication For Thyroid Disease Using Machine Learning Technique (Svm)','Turkish Journal of Computer and Mathematics Education 11 (3), pg:1099 – 1107, 2020',NULL,NULL,NULL,2020,NULL,4,NULL,NULL,'2025-11-11 17:20:09'),(92,'International Conference on Innovations in Computer Science and Information Technology 2','International Conference on Innovations in Computer Science and Information …, 2015',NULL,NULL,NULL,2015,NULL,NULL,NULL,NULL,'2025-11-11 17:20:11'),(93,'Sentiment research on Twitter data','Int J Recent Technol Eng 8 (5), 1068-1070, 2019',NULL,NULL,NULL,2019,NULL,16,NULL,NULL,'2025-11-11 17:20:14'),(94,'A novel approach for similarity and indexing-based ontology for semantic web educational system','International Journal of Intelligent Engineering Informatics 4 (2), 117-134, 2016',NULL,NULL,NULL,2016,NULL,10,NULL,NULL,'2025-11-11 17:20:14'),(95,'Building semantic knowledge base for the visual perception-cognitive ability of neuropsychology using web ontology language','International Journal of Intelligent Systems and Applications in Engineering …, 2022',NULL,NULL,NULL,2022,NULL,7,NULL,NULL,'2025-11-11 17:20:14'),(96,'Ontology for an education system and ontology based clustering','Proceedings of the Fifth International Conference on Fuzzy and Neuro …, 2015',NULL,NULL,NULL,2015,NULL,5,NULL,NULL,'2025-11-11 17:20:14'),(97,'Proceedings of Third International Conference on Advances in Computer Engineering and Communication Systems: ICACECS 2022','Springer, 2023',NULL,NULL,NULL,2023,NULL,4,NULL,NULL,'2025-11-11 17:20:14'),(98,'Analysis of sentiment based movie reviews using machine learning techniques','Journal of Intelligent & Fuzzy Systems 41 (5), 5449-5456, 2021',NULL,NULL,NULL,2021,NULL,36,NULL,NULL,'2025-11-11 17:20:18'),(99,'Blockchain Technology: A Comprehensive Survey','JARDC 11 (9), 1187-1203, 2019',NULL,NULL,NULL,2019,NULL,15,NULL,NULL,'2025-11-11 17:20:18'),(100,'Self-supervised approach for diabetic retinopathy severity detection using vision transformer','Progress in Artificial Intelligence 13 (3), 165-183, 2024',NULL,NULL,NULL,2024,NULL,11,NULL,NULL,'2025-11-11 17:20:18'),(101,'IoT based Smart luggage monitor alarm system','International conference on internet of things and connected technologies …, 2019',NULL,NULL,NULL,2019,NULL,11,NULL,NULL,'2025-11-11 17:20:18'),(102,'Impact of sybil attack and security threat in mobile adhoc network','Int. J. Comput. Appl 124 (9), 2015',NULL,NULL,NULL,2015,NULL,11,NULL,NULL,'2025-11-11 17:20:18');
/*!40000 ALTER TABLE `Publication` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `Publication_Author`
--

LOCK TABLES `Publication_Author` WRITE;
/*!40000 ALTER TABLE `Publication_Author` DISABLE KEYS */;
/*!40000 ALTER TABLE `Publication_Author` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2025-12-24 17:38:07
