-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: 24edu
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `chinese_result`
--

DROP TABLE IF EXISTS `chinese_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chinese_result` (
  `id` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `ktra_1` int DEFAULT NULL,
  `ktra_2` int DEFAULT NULL,
  `ktra_3` int DEFAULT NULL,
  `test_1` int DEFAULT NULL,
  `test_2` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_chinese_result_id` FOREIGN KEY (`id`) REFERENCES `chinese_studentlist` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chinese_result`
--

LOCK TABLES `chinese_result` WRITE;
/*!40000 ALTER TABLE `chinese_result` DISABLE KEYS */;
INSERT INTO `chinese_result` VALUES ('CHI0001',223,168,193,211,227),('CHI0002',160,230,240,167,229),('CHI0003',212,213,177,177,194),('CHI0004',191,213,243,232,182),('CHI0005',235,196,206,192,183),('CHI0006',181,194,178,241,236),('CHI0007',207,167,238,164,222),('CHI0008',183,182,201,209,193),('CHI0009',176,234,211,193,171),('CHI0010',207,182,219,210,232),('CHI0011',188,175,242,162,197),('CHI0012',250,228,227,202,169),('CHI0013',171,190,187,206,219),('CHI0014',223,211,223,234,250),('CHI0015',208,221,230,235,236),('CHI0016',222,244,215,180,188),('CHI0017',239,200,214,218,197),('CHI0018',172,200,234,228,187),('CHI0019',183,195,173,214,208),('CHI0020',238,225,161,244,214),('CHI0021',177,176,191,175,232),('CHI0022',205,167,244,197,184),('CHI0023',170,228,199,240,172),('CHI0024',164,233,241,165,216),('CHI0025',243,227,245,204,216),('CHI0026',219,196,163,248,229),('CHI0027',243,186,224,218,170),('CHI0028',218,239,199,211,207),('CHI0029',243,160,183,186,223),('CHI0030',216,249,166,195,228),('CHI0031',212,219,208,224,246),('CHI0032',216,184,201,203,164),('CHI0033',231,232,215,220,206),('CHI0034',208,174,175,193,191),('CHI0035',214,250,172,226,182),('CHI0036',164,205,192,184,184),('CHI0037',210,246,170,222,171),('CHI0038',208,189,250,161,170),('CHI0039',207,181,218,204,208),('CHI0040',176,187,250,164,183),('CHI0041',173,249,201,188,178),('CHI0042',169,240,169,237,249),('CHI0043',191,230,235,236,225),('CHI0044',165,172,206,171,168),('CHI0045',167,171,195,214,233),('CHI0046',182,234,189,177,247),('CHI0047',182,192,162,165,182),('CHI0048',162,196,242,192,164),('CHI0049',175,224,161,248,234),('CHI0050',176,198,213,219,206),('CHI0051',214,200,199,236,241),('CHI0052',246,167,210,206,240),('CHI0053',242,239,217,210,238),('CHI0054',221,231,239,162,207),('CHI0055',209,173,167,248,218),('CHI0056',186,205,219,230,243),('CHI0057',184,213,171,238,245),('CHI0058',169,224,182,166,219),('CHI0059',163,182,170,234,229),('CHI0060',191,200,176,213,193),('CHI0061',167,187,185,206,222),('CHI0062',241,196,192,211,230),('CHI0063',175,208,172,168,163),('CHI0064',245,210,246,170,223),('CHI0065',173,219,236,179,209),('CHI0066',168,236,244,170,230),('CHI0067',208,189,163,178,240),('CHI0068',236,211,185,223,219),('CHI0069',176,246,179,179,199),('CHI0070',205,179,213,186,223),('CHI0071',215,246,243,227,248),('CHI0072',216,179,175,180,216),('CHI0073',200,189,188,213,249),('CHI0074',174,235,223,250,237),('CHI0075',188,249,249,246,235),('CHI0076',188,164,186,189,229),('CHI0077',235,240,242,240,223),('CHI0078',235,165,235,246,184),('CHI0079',206,226,171,200,235),('CHI0080',232,208,184,226,237),('CHI0081',168,239,171,249,210),('CHI0082',235,205,249,200,183),('CHI0083',244,242,228,164,249),('CHI0084',229,239,164,219,168),('CHI0085',208,195,189,203,198),('CHI0086',222,173,221,247,227),('CHI0087',237,161,208,217,208),('CHI0088',231,190,186,201,199),('CHI0089',232,220,245,224,224),('CHI0090',199,164,245,209,242),('CHI0091',241,227,164,250,236),('CHI0092',178,203,233,215,214),('CHI0093',175,167,239,172,165),('CHI0094',239,178,195,189,203),('CHI0095',197,216,237,196,202),('CHI0096',171,181,230,177,216),('CHI0097',206,226,167,182,249),('CHI0098',175,242,162,196,243),('CHI0099',194,171,208,185,230),('CHI0100',163,240,188,241,208);
/*!40000 ALTER TABLE `chinese_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chinese_schedule`
--

DROP TABLE IF EXISTS `chinese_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chinese_schedule` (
  `monday` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `tuesday` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `wednesday` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `thursday` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `friday` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `saturday` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `sunday` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `class` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`class`),
  CONSTRAINT `fk_chinese_schedule_class` FOREIGN KEY (`class`) REFERENCES `chinese_studentlist` (`class`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chinese_schedule`
--

LOCK TABLES `chinese_schedule` WRITE;
/*!40000 ALTER TABLE `chinese_schedule` DISABLE KEYS */;
INSERT INTO `chinese_schedule` VALUES ('P.08 (3 - 5)','P.05 (2 - 6)',NULL,'P.07 (6 - 7)','P.08 (1 - 4)','P.05 (5 - 7)','P.03 (2 - 4)','0-HSK4'),(NULL,'P.06 (3 - 5)','P.08 (5 - 7)',NULL,NULL,'P.08 (5 - 7)',NULL,'0-HSK5'),('P.01 (3 - 6)','P.08 (5 - 7)',NULL,'P.04 (3 - 6)',NULL,'P.08 (3 - 5)','P.06 (6 - 8)','HSK3'),(NULL,'P.02 (2 - 4)','P.01 (5 - 7)','P.01 (2 - 4)','P.03 (2 - 4)','P.03 (1 - 3)',NULL,'HSK4'),('P.05 (1 - 4)',NULL,'P.08 (2 - 4)','P.04 (6 - 8)','P.02 (5 - 7)',NULL,'P.08 (2 - 4)','HSK5');
/*!40000 ALTER TABLE `chinese_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chinese_studentlist`
--

DROP TABLE IF EXISTS `chinese_studentlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chinese_studentlist` (
  `id` varchar(8) COLLATE utf8mb3_bin NOT NULL,
  `name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `sex` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `birthday` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `class` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `detail` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_id` (`id`),
  KEY `idx_class` (`class`),
  CONSTRAINT `fk_chinese_studentlist_user_id` FOREIGN KEY (`id`) REFERENCES `user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chinese_studentlist`
--

LOCK TABLES `chinese_studentlist` WRITE;
/*!40000 ALTER TABLE `chinese_studentlist` DISABLE KEYS */;
INSERT INTO `chinese_studentlist` VALUES ('CHI0001','Student 90','Nam','1999-06-16','HSK4','Chưa'),('CHI0002','Student 91','Nữ','2001-11-01','HSK5','Rồi'),('CHI0003','Student 92','Nữ','2006-08-19','HSK4','Chưa'),('CHI0004','Student 93','Nữ','2002-12-14','HSK5','Chưa'),('CHI0005','Student 94','Nữ','1997-01-03','HSK4','Chưa'),('CHI0006','Student 95','Nữ','2001-04-09','HSK5','Rồi'),('CHI0007','Student 96','Nam','2001-02-16','HSK4','Rồi'),('CHI0008','Student 97','Nữ','2004-10-26','HSK4','Chưa'),('CHI0009','Student 98','Nam','2001-12-23','HSK3','Chưa'),('CHI0010','Student 99','Nữ','2003-03-16','HSK3','Chưa'),('CHI0011','Student 80','Nam','1999-07-27','HSK3','Rồi'),('CHI0012','Student 81','Nam','2002-12-04','0-HSK4','Chưa'),('CHI0013','Student 82','Nữ','2004-05-27','HSK5','Rồi'),('CHI0014','Student 83','Nữ','1997-07-16','HSK3','Chưa'),('CHI0015','Student 84','Nữ','1998-08-26','0-HSK4','Chưa'),('CHI0016','Student 85','Nam','2005-01-19','HSK4','Chưa'),('CHI0017','Student 86','Nữ','2003-04-18','HSK4','Rồi'),('CHI0018','Student 87','Nam','2001-09-03','HSK5','Rồi'),('CHI0019','Student 88','Nam','2005-05-15','HSK5','Rồi'),('CHI0020','Student 89','Nam','1998-09-05','0-HSK4','Chưa'),('CHI0021','Student 70','Nữ','2005-11-26','HSK3','Rồi'),('CHI0022','Student 71','Nữ','2002-05-14','HSK3','Chưa'),('CHI0023','Student 72','Nữ','2004-04-09','0-HSK4','Chưa'),('CHI0024','Student 73','Nữ','2004-11-12','HSK4','Chưa'),('CHI0025','Student 74','Nam','1997-08-01','HSK3','Rồi'),('CHI0026','Student 75','Nữ','2003-12-20','0-HSK4','Rồi'),('CHI0027','Student 76','Nữ','2001-10-25','0-HSK5','Chưa'),('CHI0028','Student 77','Nam','2006-11-24','HSK5','Chưa'),('CHI0029','Student 78','Nam','2000-07-18','HSK5','Rồi'),('CHI0030','Student 79','Nam','2002-09-03','HSK4','Chưa'),('CHI0031','Student 60','Nữ','2000-12-28','0-HSK5','Rồi'),('CHI0032','Student 61','Nữ','1998-08-22','0-HSK5','Rồi'),('CHI0033','Student 62','Nam','1997-04-03','HSK5','Rồi'),('CHI0034','Student 63','Nữ','1997-04-04','0-HSK4','Rồi'),('CHI0035','Student 64','Nữ','1998-08-19','HSK5','Chưa'),('CHI0036','Student 65','Nữ','1998-10-16','HSK5','Rồi'),('CHI0037','Student 66','Nữ','1998-07-16','0-HSK5','Chưa'),('CHI0038','Student 67','Nam','1997-07-20','0-HSK4','Rồi'),('CHI0039','Student 68','Nữ','2005-07-06','HSK5','Rồi'),('CHI0040','Student 69','Nam','1998-08-16','0-HSK5','Chưa'),('CHI0041','Student 50','Nam','2002-01-17','0-HSK4','Rồi'),('CHI0042','Student 51','Nam','2005-09-04','HSK5','Chưa'),('CHI0043','Student 52','Nữ','2001-06-05','HSK4','Rồi'),('CHI0044','Student 53','Nữ','2000-06-15','HSK3','Chưa'),('CHI0045','Student 54','Nữ','2005-02-13','0-HSK5','Rồi'),('CHI0046','Student 55','Nữ','2007-06-13','0-HSK5','Rồi'),('CHI0047','Student 56','Nam','2003-01-17','0-HSK4','Chưa'),('CHI0048','Student 57','Nữ','1997-04-28','HSK4','Chưa'),('CHI0049','Student 58','Nam','1999-01-13','HSK3','Chưa'),('CHI0050','Student 59','Nữ','1999-04-19','HSK4','Rồi'),('CHI0051','Student 40','Nữ','2002-11-26','0-HSK5','Rồi'),('CHI0052','Student 41','Nam','1997-07-18','HSK5','Chưa'),('CHI0053','Student 42','Nam','2001-03-18','0-HSK4','Chưa'),('CHI0054','Student 43','Nam','2007-01-15','HSK5','Chưa'),('CHI0055','Student 44','Nữ','2006-04-22','0-HSK5','Chưa'),('CHI0056','Student 45','Nữ','1999-06-08','HSK3','Rồi'),('CHI0057','Student 46','Nữ','2006-11-22','HSK4','Chưa'),('CHI0058','Student 47','Nữ','2002-06-21','HSK4','Rồi'),('CHI0059','Student 48','Nữ','2006-02-03','HSK3','Chưa'),('CHI0060','Student 49','Nam','2002-10-11','HSK5','Chưa'),('CHI0061','Student 30','Nữ','1999-04-25','HSK5','Rồi'),('CHI0062','Student 31','Nữ','2003-08-09','0-HSK5','Chưa'),('CHI0063','Student 32','Nam','1998-03-18','HSK5','Chưa'),('CHI0064','Student 33','Nữ','2005-06-02','0-HSK5','Rồi'),('CHI0065','Student 34','Nữ','2003-09-19','HSK4','Rồi'),('CHI0066','Student 35','Nam','1997-06-12','HSK5','Chưa'),('CHI0067','Student 36','Nữ','2005-05-15','HSK5','Rồi'),('CHI0068','Student 37','Nam','2003-06-11','0-HSK4','Chưa'),('CHI0069','Student 38','Nam','1997-05-24','HSK3','Rồi'),('CHI0070','Student 39','Nam','2000-03-11','HSK3','Rồi'),('CHI0071','Student 20','Nữ','2006-11-21','HSK3','Chưa'),('CHI0072','Student 21','Nam','2002-08-16','0-HSK5','Chưa'),('CHI0073','Student 22','Nữ','1998-06-23','0-HSK4','Rồi'),('CHI0074','Student 23','Nữ','2004-02-18','0-HSK4','Chưa'),('CHI0075','Student 24','Nữ','2000-04-11','HSK3','Rồi'),('CHI0076','Student 25','Nam','1999-07-06','HSK4','Chưa'),('CHI0077','Student 26','Nữ','2006-01-19','HSK3','Rồi'),('CHI0078','Student 27','Nữ','2001-03-24','0-HSK4','Rồi'),('CHI0079','Student 28','Nữ','2003-03-28','HSK5','Chưa'),('CHI0080','Student 29','Nam','1999-08-20','HSK5','Chưa'),('CHI0081','Student 10','Nam','2004-07-26','0-HSK5','Rồi'),('CHI0082','Student 11','Nữ','2000-03-26','HSK3','Rồi'),('CHI0083','Student 12','Nam','2002-01-25','HSK4','Chưa'),('CHI0084','Student 13','Nam','1998-08-17','HSK3','Rồi'),('CHI0085','Student 14','Nữ','2001-03-17','HSK5','Chưa'),('CHI0086','Student 15','Nam','2004-08-07','HSK3','Chưa'),('CHI0087','Student 16','Nữ','1998-08-16','HSK3','Chưa'),('CHI0088','Student 17','Nam','2005-05-21','HSK5','Chưa'),('CHI0089','Student 18','Nam','2005-05-24','HSK3','Rồi'),('CHI0090','Student 19','Nữ','2007-03-10','HSK3','Chưa'),('CHI0091','Student 0','Nữ','1997-05-28','0-HSK4','Chưa'),('CHI0092','Student 1','Nam','2000-01-28','0-HSK5','Rồi'),('CHI0093','Student 2','Nam','1998-01-25','HSK3','Chưa'),('CHI0094','Student 3','Nữ','2001-11-27','HSK4','Chưa'),('CHI0095','Student 4','Nam','2001-05-19','HSK3','Rồi'),('CHI0096','Student 5','Nữ','2005-04-01','HSK4','Rồi'),('CHI0097','Student 6','Nữ','1997-07-23','HSK4','Rồi'),('CHI0098','Student 7','Nữ','2002-05-07','HSK3','Rồi'),('CHI0099','Student 8','Nữ','2002-03-21','0-HSK5','Chưa'),('CHI0100','Student 9','Nam','2000-11-11','HSK4','Chưa');
/*!40000 ALTER TABLE `chinese_studentlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  `name` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `teacher` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `slot` int DEFAULT NULL,
  `price` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `time` int DEFAULT NULL,
  `id_teacher` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  KEY `idx_teacher` (`teacher`),
  KEY `fk_course_teacher` (`id_teacher`),
  CONSTRAINT `fk_course_teacher` FOREIGN KEY (`id_teacher`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES ('1','TOEIC - 750+','Lê Hoàng Việt Quốc',50,'1.000.000',2,'GV001'),('2','Ôn thi IELTS 6.5+','Trần Nguyễn Đạt Văn',30,'2.000.000',3,'GV002'),('3','HSK 0 - Trung cấp','Phạm Vĩnh Phú',50,'3.000.000',4,'GV003'),('4','Ôn thi TOPIK 4','Phan Thành Văn',40,'4.000.000',5,'GV004');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `english_result`
--

DROP TABLE IF EXISTS `english_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `english_result` (
  `id` varchar(8) COLLATE utf8mb3_bin NOT NULL,
  `ktra_1` int DEFAULT NULL,
  `ktra_2` int DEFAULT NULL,
  `ktra_3` int DEFAULT NULL,
  `test_1` int DEFAULT NULL,
  `test_2` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_english_result_student_id` FOREIGN KEY (`id`) REFERENCES `english_studentlist` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `english_result`
--

LOCK TABLES `english_result` WRITE;
/*!40000 ALTER TABLE `english_result` DISABLE KEYS */;
INSERT INTO `english_result` VALUES ('ENG0001',5,4,4,4,6),('ENG0002',472,569,429,638,603),('ENG0003',4,7,7,5,6),('ENG0004',490,688,671,590,537),('ENG0005',5,6,6,5,4),('ENG0006',556,453,498,432,564),('ENG0007',524,527,664,441,411),('ENG0008',6,6,5,7,5),('ENG0009',4,5,4,6,4),('ENG0010',5,5,5,5,7),('ENG0011',430,651,665,671,659),('ENG0012',584,544,566,498,691),('ENG0013',664,545,634,533,665),('ENG0014',4,6,6,5,6),('ENG0015',632,696,586,439,640),('ENG0016',6,6,5,5,6),('ENG0017',5,6,7,7,5),('ENG0018',6,5,6,5,5),('ENG0019',7,6,6,5,4),('ENG0020',7,4,4,7,5),('ENG0021',481,443,671,426,617),('ENG0022',5,6,4,7,7),('ENG0023',606,655,457,523,540),('ENG0024',433,444,523,581,637),('ENG0025',443,503,484,513,411),('ENG0026',415,444,575,541,581),('ENG0027',6,5,5,5,4),('ENG0028',6,5,5,5,6),('ENG0029',7,7,7,6,5),('ENG0030',674,551,633,511,558),('ENG0031',6,4,5,5,6),('ENG0032',6,7,7,6,6),('ENG0033',589,600,535,474,666),('ENG0034',6,6,7,5,5),('ENG0035',456,640,534,650,646),('ENG0036',6,6,7,4,7),('ENG0037',4,6,4,6,5),('ENG0038',573,467,516,478,443),('ENG0039',7,5,5,6,6),('ENG0040',618,537,429,437,498),('ENG0041',5,5,6,7,5),('ENG0042',6,7,4,7,4),('ENG0043',574,638,467,621,406),('ENG0044',7,5,5,4,7),('ENG0045',650,597,632,670,456),('ENG0046',467,566,432,662,415),('ENG0047',587,692,698,413,471),('ENG0048',4,6,6,7,4),('ENG0049',431,432,466,636,480),('ENG0050',7,4,6,6,7),('ENG0051',511,655,443,451,524),('ENG0052',568,567,432,659,697),('ENG0053',510,660,470,570,438),('ENG0054',683,499,646,432,425),('ENG0055',4,5,6,6,4),('ENG0056',4,5,6,7,5),('ENG0057',424,504,549,533,618),('ENG0058',489,494,601,522,408),('ENG0059',7,5,6,4,4),('ENG0060',4,4,5,6,6),('ENG0061',486,674,611,633,633),('ENG0062',6,5,6,5,6),('ENG0063',490,678,622,677,520),('ENG0064',467,675,673,642,490),('ENG0065',424,552,487,679,632),('ENG0066',424,426,456,602,641),('ENG0067',699,574,673,643,497),('ENG0068',5,7,5,6,7),('ENG0069',4,6,5,6,5),('ENG0070',6,6,5,5,7),('ENG0071',529,489,460,431,678),('ENG0072',497,648,451,509,495),('ENG0073',545,541,671,430,636),('ENG0074',6,7,5,4,5),('ENG0075',432,432,462,615,689),('ENG0076',6,5,4,5,4),('ENG0077',575,597,561,615,691),('ENG0078',611,580,666,593,565),('ENG0079',6,5,6,6,5),('ENG0080',632,579,598,552,565),('ENG0081',5,6,7,7,7),('ENG0082',6,5,5,5,7),('ENG0083',482,637,442,496,456),('ENG0084',7,5,6,4,6),('ENG0085',527,656,401,537,479),('ENG0086',7,7,4,5,4),('ENG0087',6,6,6,4,5),('ENG0088',638,609,430,524,629),('ENG0089',6,6,5,5,5),('ENG0090',481,540,559,472,584),('ENG0091',504,670,536,569,537),('ENG0092',580,590,509,676,554),('ENG0093',6,5,7,4,6),('ENG0094',456,669,679,687,697),('ENG0095',426,539,416,665,477),('ENG0096',6,5,7,6,4),('ENG0097',7,6,6,6,4),('ENG0098',640,693,545,545,690),('ENG0099',5,4,7,6,6),('ENG0100',7,5,7,5,5),('ENG0101',511,571,619,685,568),('ENG0102',7,4,6,5,5),('ENG0103',5,4,5,5,4),('ENG0104',4,7,5,6,4),('ENG0105',5,5,4,6,6),('ENG0106',437,410,640,667,415),('ENG0107',576,636,451,548,686),('ENG0108',486,572,403,499,587),('ENG0109',437,622,500,534,469),('ENG0110',644,513,532,420,407),('ENG0111',673,544,603,684,608),('ENG0112',591,430,576,592,532),('ENG0113',482,415,529,401,617),('ENG0114',6,7,5,6,6),('ENG0115',418,596,426,544,440),('ENG0116',468,619,693,607,558),('ENG0117',6,5,5,5,5),('ENG0118',489,434,602,409,438),('ENG0119',565,511,458,659,622),('ENG0120',433,497,488,547,572),('ENG0121',519,479,437,650,639),('ENG0122',544,403,581,698,445),('ENG0123',634,534,666,428,642),('ENG0124',627,507,553,548,677),('ENG0125',4,7,5,4,4),('ENG0126',444,571,520,488,481),('ENG0127',542,565,500,406,427),('ENG0128',5,6,5,7,5),('ENG0129',6,5,4,7,6),('ENG0130',6,4,6,5,5);
/*!40000 ALTER TABLE `english_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `english_schedule`
--

DROP TABLE IF EXISTS `english_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `english_schedule` (
  `monday` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `tuesday` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `wednesday` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `thursday` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `friday` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `saturday` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `sunday` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `class` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`class`),
  KEY `idx_id` (`class`),
  CONSTRAINT `fk_english_schedule_class` FOREIGN KEY (`class`) REFERENCES `english_studentlist` (`class`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `english_schedule`
--

LOCK TABLES `english_schedule` WRITE;
/*!40000 ALTER TABLE `english_schedule` DISABLE KEYS */;
INSERT INTO `english_schedule` VALUES (NULL,'P.01 (1 - 3)',NULL,'P.01 (2 - 7)','P.03 (3 - 5)','P.04 (3 - 7)',NULL,'IELTS-4.5'),('P.07 (5 - 7)','P.04 (2 - 4)','P.07 (1 - 3)','P.05 (1 - 5)',NULL,'P.05 (5 - 7)','P.05 (6 - 7)','IELTS-5.5'),(NULL,NULL,NULL,'P.06 (4 - 5)',NULL,NULL,NULL,'IELTS-6.5'),('P.01 (5 - 6)','P.05 (3 - 5)','P.08 (4 - 6)',NULL,'P.05 (2 - 6)','P.05 (4 - 5)',NULL,'IELTS-7.5'),(NULL,'P.08 (3 - 5)',NULL,NULL,NULL,NULL,'P.03 (1 - 3)','TOEIC-450'),(NULL,'P.04 (4 - 6)','P.07 (5 - 7)',NULL,NULL,NULL,NULL,'TOEIC-550'),(NULL,NULL,'P.07 (4 - 3)','P.06 (1 - 6)','P.03 (2 - 6)','P.03 (3 - 5)','P.06 (2 - 7)','TOEIC-650'),('P.02 (1 - 3)','P.01 (2 - 5)','P.02 (3 - 6)',NULL,NULL,'P.08 (3 - 4)','P.01 (3 - 6)','TOEIC-750');
/*!40000 ALTER TABLE `english_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `english_studentlist`
--

DROP TABLE IF EXISTS `english_studentlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `english_studentlist` (
  `id` varchar(10) COLLATE utf8mb3_bin NOT NULL,
  `name` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  `sex` varchar(3) COLLATE utf8mb3_bin NOT NULL,
  `birthday` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  `class` varchar(10) COLLATE utf8mb3_bin NOT NULL,
  `detail` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_class` (`class`),
  CONSTRAINT `fk_english_studentlist_user_id` FOREIGN KEY (`id`) REFERENCES `user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `english_studentlist`
--

LOCK TABLES `english_studentlist` WRITE;
/*!40000 ALTER TABLE `english_studentlist` DISABLE KEYS */;
INSERT INTO `english_studentlist` VALUES ('ENG0001','Student1','Nữ','1988-01-11','IELTS-5.5','Rồi'),('ENG0002','Student2','Nữ','2009-09-14','TOEIC-550','Rồi'),('ENG0003','Student3','Nam','1995-09-16','IELTS-6.5','Rồi'),('ENG0004','Student4','Nam','1985-04-17','TOEIC-750','Chưa'),('ENG0005','Student5','Nam','2018-07-04','IELTS-7.5','Chưa'),('ENG0006','Student6','Nam','2010-07-28','TOEIC-750','Chưa'),('ENG0007','Student7','Nữ','2001-10-31','TOEIC-750','Rồi'),('ENG0008','Student8','Nữ','1994-03-01','IELTS-4.5','Rồi'),('ENG0009','Student9','Nam','2002-09-19','IELTS-7.5','Chưa'),('ENG0010','Student10','Nữ','1970-09-05','IELTS-4.5','Rồi'),('ENG0011','Student11','Nữ','1972-09-24','TOEIC-650','Rồi'),('ENG0012','Student12','Nữ','2002-06-24','TOEIC-650','Rồi'),('ENG0013','Student13','Nữ','2009-01-08','TOEIC-650','Chưa'),('ENG0014','Student14','Nữ','2024-03-27','IELTS-6.5','Rồi'),('ENG0015','Student15','Nam','2014-09-21','TOEIC-550','Rồi'),('ENG0016','Student16','Nam','2023-01-15','IELTS-6.5','Chưa'),('ENG0017','Student17','Nữ','1984-12-29','IELTS-4.5','Rồi'),('ENG0018','Student18','Nam','1999-05-17','IELTS-7.5','Chưa'),('ENG0019','Student19','Nữ','2007-05-02','IELTS-7.5','Rồi'),('ENG0020','Student20','Nam','1982-12-28','IELTS-7.5','Rồi'),('ENG0021','Student21','Nữ','1983-02-20','TOEIC-550','Rồi'),('ENG0022','Student22','Nam','1982-03-05','IELTS-4.5','Chưa'),('ENG0023','Student23','Nam','2005-12-24','TOEIC-450','Chưa'),('ENG0024','Student24','Nữ','1978-05-14','TOEIC-650','Chưa'),('ENG0025','Student25','Nữ','2005-09-01','TOEIC-750','Rồi'),('ENG0026','Student26','Nam','2004-05-11','TOEIC-450','Rồi'),('ENG0027','Student27','Nam','1985-01-15','IELTS-5.5','Chưa'),('ENG0028','Student28','Nữ','2004-09-04','IELTS-7.5','Rồi'),('ENG0029','Student29','Nam','1989-02-17','IELTS-4.5','Chưa'),('ENG0030','Student30','Nữ','1992-02-22','TOEIC-650','Chưa'),('ENG0031','Student31','Nữ','2000-08-26','IELTS-6.5','Rồi'),('ENG0032','Student32','Nam','1993-04-21','IELTS-4.5','Chưa'),('ENG0033','Student33','Nữ','2008-05-11','TOEIC-450','Rồi'),('ENG0034','Student34','Nam','2018-07-13','IELTS-7.5','Rồi'),('ENG0035','Student35','Nam','1972-12-03','TOEIC-750','Rồi'),('ENG0036','Student36','Nam','1989-06-02','IELTS-4.5','Chưa'),('ENG0037','Student37','Nữ','1974-12-12','IELTS-6.5','Chưa'),('ENG0038','Student38','Nữ','1974-08-04','TOEIC-550','Chưa'),('ENG0039','Student39','Nữ','2009-01-01','IELTS-4.5','Rồi'),('ENG0040','Student40','Nam','1981-12-17','TOEIC-750','Chưa'),('ENG0041','Student41','Nam','1973-12-04','IELTS-6.5','Rồi'),('ENG0042','Student42','Nữ','2004-10-03','IELTS-5.5','Chưa'),('ENG0043','Student43','Nam','2015-01-30','TOEIC-550','Rồi'),('ENG0044','Student44','Nam','1973-11-21','IELTS-4.5','Chưa'),('ENG0045','Student45','Nữ','2009-01-04','TOEIC-750','Chưa'),('ENG0046','Student46','Nữ','1999-09-06','TOEIC-450','Rồi'),('ENG0047','Student47','Nữ','1988-11-07','TOEIC-750','Chưa'),('ENG0048','Student48','Nam','1974-10-04','IELTS-6.5','Rồi'),('ENG0049','Student49','Nữ','1997-09-15','TOEIC-750','Chưa'),('ENG0050','Student50','Nữ','1980-01-23','IELTS-5.5','Chưa'),('ENG0051','Student51','Nam','1973-03-11','TOEIC-550','Rồi'),('ENG0052','Student52','Nam','1988-05-03','TOEIC-550','Chưa'),('ENG0053','Student53','Nữ','2012-11-22','TOEIC-550','Rồi'),('ENG0054','Student54','Nam','1972-07-28','TOEIC-450','Chưa'),('ENG0055','Student55','Nam','2023-03-12','IELTS-6.5','Rồi'),('ENG0056','Student56','Nam','1995-08-03','IELTS-7.5','Chưa'),('ENG0057','Student57','Nữ','1979-03-20','TOEIC-650','Chưa'),('ENG0058','Student58','Nữ','2004-08-16','TOEIC-650','Chưa'),('ENG0059','Student59','Nữ','2011-12-28','IELTS-7.5','Rồi'),('ENG0060','Student60','Nam','1990-10-26','IELTS-5.5','Rồi'),('ENG0061','Student61','Nữ','1994-08-08','TOEIC-550','Chưa'),('ENG0062','Student62','Nam','1987-11-28','IELTS-5.5','Chưa'),('ENG0063','Student63','Nữ','1978-05-29','TOEIC-650','Chưa'),('ENG0064','Student64','Nam','1971-01-25','TOEIC-450','Chưa'),('ENG0065','Student65','Nữ','1991-11-29','TOEIC-650','Chưa'),('ENG0066','Student66','Nam','1992-11-28','TOEIC-650','Rồi'),('ENG0067','Student67','Nam','2016-09-14','TOEIC-650','Rồi'),('ENG0068','Student68','Nam','1993-02-16','IELTS-7.5','Rồi'),('ENG0069','Student69','Nữ','2011-12-27','IELTS-4.5','Rồi'),('ENG0070','Student70','Nam','1991-01-31','IELTS-7.5','Rồi'),('ENG0071','Student71','Nữ','2003-06-08','TOEIC-650','Rồi'),('ENG0072','Student72','Nữ','1970-01-09','TOEIC-650','Chưa'),('ENG0073','Student73','Nam','1984-05-03','TOEIC-450','Rồi'),('ENG0074','Student74','Nữ','1975-12-03','IELTS-4.5','Rồi'),('ENG0075','Student75','Nam','2016-09-18','TOEIC-450','Rồi'),('ENG0076','Student76','Nữ','1976-04-11','IELTS-7.5','Chưa'),('ENG0077','Student77','Nữ','2013-04-28','TOEIC-450','Chưa'),('ENG0078','Student78','Nữ','1974-11-07','TOEIC-550','Chưa'),('ENG0079','Student79','Nữ','1990-10-24','IELTS-7.5','Chưa'),('ENG0080','Student80','Nam','1973-05-23','TOEIC-550','Rồi'),('ENG0081','Student81','Nam','2022-02-01','IELTS-7.5','Rồi'),('ENG0082','Student82','Nữ','1971-01-21','IELTS-6.5','Chưa'),('ENG0083','Student83','Nữ','1985-03-06','TOEIC-750','Chưa'),('ENG0084','Student84','Nữ','1979-03-16','IELTS-5.5','Rồi'),('ENG0085','Student85','Nữ','2001-06-28','TOEIC-450','Rồi'),('ENG0086','Student86','Nữ','1991-03-27','IELTS-4.5','Rồi'),('ENG0087','Student87','Nam','1981-11-01','IELTS-7.5','Chưa'),('ENG0088','Student88','Nữ','2002-06-30','TOEIC-750','Rồi'),('ENG0089','Student89','Nam','2012-07-07','IELTS-4.5','Rồi'),('ENG0090','Student90','Nữ','1972-10-11','TOEIC-650','Rồi'),('ENG0091','Student91','Nam','1978-08-25','TOEIC-650','Rồi'),('ENG0092','Student92','Nam','2002-02-11','TOEIC-450','Chưa'),('ENG0093','Student93','Nữ','2007-01-18','IELTS-5.5','Chưa'),('ENG0094','Student94','Nữ','1995-05-01','TOEIC-450','Rồi'),('ENG0095','Student95','Nữ','2016-12-26','TOEIC-450','Rồi'),('ENG0096','Student96','Nữ','1986-03-08','IELTS-7.5','Chưa'),('ENG0097','Student97','Nữ','1991-05-22','IELTS-6.5','Rồi'),('ENG0098','Student98','Nam','1985-12-04','TOEIC-650','Rồi'),('ENG0099','Student99','Nữ','1974-05-18','IELTS-7.5','Rồi'),('ENG0100','Student100','Nam','1982-04-02','IELTS-7.5','Chưa'),('ENG0101','Student101','Nam','2002-11-10','TOEIC-650','Rồi'),('ENG0102','Student102','Nữ','2008-09-26','IELTS-7.5','Chưa'),('ENG0103','Student103','Nam','2004-10-26','IELTS-6.5','Chưa'),('ENG0104','Student104','Nam','1971-09-24','IELTS-7.5','Chưa'),('ENG0105','Student105','Nam','1971-02-06','IELTS-4.5','Chưa'),('ENG0106','Student106','Nam','2022-04-27','TOEIC-450','Chưa'),('ENG0107','Student107','Nữ','1995-02-23','TOEIC-550','Chưa'),('ENG0108','Student108','Nữ','1981-06-20','TOEIC-450','Chưa'),('ENG0109','Student109','Nam','1985-06-17','TOEIC-550','Rồi'),('ENG0110','Student110','Nữ','2001-09-06','TOEIC-450','Rồi'),('ENG0111','Student111','Nữ','2011-10-23','TOEIC-650','Chưa'),('ENG0112','Student112','Nữ','2004-09-11','TOEIC-650','Chưa'),('ENG0113','Student113','Nam','1973-12-20','TOEIC-650','Rồi'),('ENG0114','Student114','Nữ','2018-10-30','IELTS-5.5','Rồi'),('ENG0115','Student115','Nữ','2009-08-10','TOEIC-550','Chưa'),('ENG0116','Student116','Nam','1981-01-30','TOEIC-550','Rồi'),('ENG0117','Student117','Nam','2011-11-07','IELTS-6.5','Chưa'),('ENG0118','Student118','Nam','1977-07-22','TOEIC-550','Rồi'),('ENG0119','Student119','Nữ','2014-08-15','TOEIC-750','Rồi'),('ENG0120','Student120','Nữ','1993-05-03','TOEIC-450','Rồi'),('ENG0121','Student121','Nữ','2004-04-04','TOEIC-750','Chưa'),('ENG0122','Student122','Nam','1981-10-11','TOEIC-750','Rồi'),('ENG0123','Student123','Nữ','1981-02-01','TOEIC-450','Rồi'),('ENG0124','Student124','Nữ','1990-05-22','TOEIC-750','Chưa'),('ENG0125','Student125','Nữ','2022-10-22','IELTS-6.5','Chưa'),('ENG0126','Student126','Nữ','2024-02-17','TOEIC-750','Chưa'),('ENG0127','Student127','Nam','2008-04-27','TOEIC-450','Rồi'),('ENG0128','Student128','Nam','1971-01-06','IELTS-6.5','Rồi'),('ENG0129','Student129','Nữ','1983-12-29','IELTS-6.5','Rồi'),('ENG0130','Student130','Nam','1992-04-28','IELTS-4.5','Chưa');
/*!40000 ALTER TABLE `english_studentlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `korean_result`
--

DROP TABLE IF EXISTS `korean_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `korean_result` (
  `id` varchar(8) COLLATE utf8mb3_bin NOT NULL,
  `ktra_1` int DEFAULT NULL,
  `ktra_2` int DEFAULT NULL,
  `ktra_3` int DEFAULT NULL,
  `test_1` int DEFAULT NULL,
  `test_2` int DEFAULT NULL,
  KEY `fk_korean_result_student_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `korean_result`
--

LOCK TABLES `korean_result` WRITE;
/*!40000 ALTER TABLE `korean_result` DISABLE KEYS */;
INSERT INTO `korean_result` VALUES ('KOR0001',61,68,55,71,90),('KOR0002',34,1,7,32,37),('KOR0003',90,37,16,70,100),('KOR0004',87,36,22,3,49),('KOR0005',34,23,13,97,45),('KOR0006',36,43,7,7,15),('KOR0007',53,18,34,15,75),('KOR0008',27,10,70,19,89),('KOR0009',83,49,98,39,4),('KOR0010',5,12,47,96,37),('KOR0011',98,77,94,36,0),('KOR0012',94,66,47,40,60),('KOR0013',78,8,11,29,13),('KOR0014',81,62,69,58,85),('KOR0015',49,90,100,32,60),('KOR0016',4,44,5,94,51),('KOR0017',74,17,64,69,50),('KOR0018',46,78,51,22,59),('KOR0019',25,53,87,74,7),('KOR0020',19,75,12,41,66),('KOR0021',7,39,72,43,0),('KOR0022',71,55,63,47,48),('KOR0023',0,59,92,80,25),('KOR0024',89,67,66,30,53),('KOR0025',74,11,37,49,35),('KOR0026',28,37,98,80,5),('KOR0027',89,24,56,6,64),('KOR0028',2,18,85,67,81),('KOR0029',2,72,52,42,56),('KOR0030',55,4,58,77,9),('KOR0031',17,60,48,60,55),('KOR0032',97,18,0,47,34),('KOR0033',30,48,49,0,57),('KOR0034',82,39,52,39,41),('KOR0035',87,12,2,75,67),('KOR0036',11,53,34,10,50),('KOR0037',16,33,18,91,98),('KOR0038',15,85,77,29,15),('KOR0039',92,8,70,23,7),('KOR0040',67,14,68,100,92),('KOR0041',59,19,19,41,47),('KOR0042',11,17,51,2,60),('KOR0043',92,80,22,75,5),('KOR0044',3,2,0,96,77),('KOR0045',98,59,99,18,94),('KOR0046',16,98,39,5,7),('KOR0047',22,88,74,6,8),('KOR0048',22,87,65,64,28),('KOR0049',46,49,3,73,54),('KOR0050',51,92,6,55,57),('KOR0051',18,20,46,71,14),('KOR0052',61,60,19,15,18),('KOR0053',45,70,13,59,53),('KOR0054',89,83,50,2,63),('KOR0055',5,40,84,99,39),('KOR0056',1,89,39,31,36),('KOR0057',91,42,39,69,25),('KOR0058',21,30,89,53,0),('KOR0059',40,99,76,80,73),('KOR0060',25,9,69,18,86),('KOR0061',71,98,74,77,62),('KOR0062',81,15,37,37,74),('KOR0063',60,76,1,78,86),('KOR0064',94,10,73,30,35),('KOR0065',83,10,4,91,39),('KOR0066',24,4,49,30,4),('KOR0067',31,45,28,7,54),('KOR0068',47,74,25,6,56),('KOR0069',63,43,29,16,95),('KOR0070',22,29,79,4,88),('KOR0071',26,65,48,43,74),('KOR0072',39,74,52,38,34),('KOR0073',56,77,18,60,46),('KOR0074',50,9,100,69,45),('KOR0075',20,65,64,27,41),('KOR0076',23,95,1,22,10),('KOR0077',84,88,87,72,100),('KOR0078',84,16,32,13,70),('KOR0079',8,31,32,69,46),('KOR0080',22,75,6,6,16);
/*!40000 ALTER TABLE `korean_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `korean_schedule`
--

DROP TABLE IF EXISTS `korean_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `korean_schedule` (
  `monday` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `tuesday` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `wednesday` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `thursday` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `friday` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `saturday` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `sunday` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `class` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`class`),
  CONSTRAINT `fk_korean_schedule_class` FOREIGN KEY (`class`) REFERENCES `korean_studentlist` (`class`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `korean_schedule`
--

LOCK TABLES `korean_schedule` WRITE;
/*!40000 ALTER TABLE `korean_schedule` DISABLE KEYS */;
INSERT INTO `korean_schedule` VALUES ('P.6 (2 - 4)','P.2 (1 - 3)','P.3 (3 - 5)','P.3 (2 - 4)',NULL,'P.6 (1 - 3)',NULL,'Cao cấp 1'),('P.1 (5 - 7)',NULL,'P.3 (6 - 8)','P.3 (6 - 8)','P.3 (5 - 7)','P.5 (2 - 4)','P.6 (1 - 3)','Cao cấp 2'),('P.5 (2 - 4)','P.4 (2 - 4)',NULL,'P.8 (2 - 4)','P.7 (3 - 5)','P.6 (2 - 4)',NULL,'Sơ cấp 1'),(NULL,NULL,'P.8 (1 - 3)',NULL,NULL,'','P.7 (1 - 3)','Sơ cấp 2'),('P.4 (1 - 3)','P.6 (3 - 5)',NULL,'P.2 (1 - 3)','P.1 (1 - 3)',NULL,'P.8 (2 - 4)','Trung cấp 1'),(NULL,'P.5 (1 - 3)','P.1 (2 - 4)',NULL,'P.6 (4 - 6)','P.7 (3 - 5)',NULL,'Trung cấp 2');
/*!40000 ALTER TABLE `korean_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `korean_studentlist`
--

DROP TABLE IF EXISTS `korean_studentlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `korean_studentlist` (
  `id` varchar(8) COLLATE utf8mb3_bin NOT NULL,
  `name` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `sex` varchar(3) COLLATE utf8mb3_bin DEFAULT NULL,
  `birthday` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `class` varchar(20) COLLATE utf8mb3_bin DEFAULT NULL,
  `detail` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_class_schedule1` (`class`),
  CONSTRAINT `fk_korean_result_student_id2` FOREIGN KEY (`id`) REFERENCES `korean_result` (`id`),
  CONSTRAINT `fk_korean_studentlist_user_id` FOREIGN KEY (`id`) REFERENCES `user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `korean_studentlist`
--

LOCK TABLES `korean_studentlist` WRITE;
/*!40000 ALTER TABLE `korean_studentlist` DISABLE KEYS */;
INSERT INTO `korean_studentlist` VALUES ('KOR0001','Student1','Nữ','2000-04-24','Sơ cấp 1','Chưa'),('KOR0002','Student2','Nam','1998-08-28','Sơ cấp 1','Chưa'),('KOR0003','Student3','Nữ','1999-10-11','Sơ cấp 1','Rồi'),('KOR0004','Student4','Nữ','2004-11-21','Sơ cấp 1','Rồi'),('KOR0005','Student5','Nữ','2007-05-26','Sơ cấp 1','Chưa'),('KOR0006','Student6','Nữ','2000-12-06','Sơ cấp 1','Rồi'),('KOR0007','Student7','Nam','2005-05-16','Sơ cấp 1','Rồi'),('KOR0008','Student8','Nam','2001-04-15','Sơ cấp 1','Rồi'),('KOR0009','Student9','Nam','2003-04-15','Sơ cấp 1','Rồi'),('KOR0010','Student10','Nam','2006-01-17','Sơ cấp 1','Rồi'),('KOR0011','Student11','Nam','2001-04-14','Sơ cấp 1','Chưa'),('KOR0012','Student12','Nam','2004-01-05','Sơ cấp 1','Rồi'),('KOR0013','Student13','Nữ','2000-01-11','Sơ cấp 1','Rồi'),('KOR0014','Student14','Nữ','1999-08-18','Sơ cấp 1','Chưa'),('KOR0015','Student15','Nữ','2002-12-05','Sơ cấp 1','Rồi'),('KOR0016','Student16','Nam','2001-03-05','Sơ cấp 1','Chưa'),('KOR0017','Student17','Nam','2005-08-19','Sơ cấp 1','Rồi'),('KOR0018','Student18','Nữ','1998-11-04','Sơ cấp 1','Chưa'),('KOR0019','Student19','Nữ','2005-09-11','Sơ cấp 1','Rồi'),('KOR0020','Student20','Nữ','2003-06-23','Sơ cấp 1','Chưa'),('KOR0021','Student21','Nam','1998-10-17','Sơ cấp 2','Rồi'),('KOR0022','Student22','Nam','1999-12-05','Sơ cấp 2','Chưa'),('KOR0023','Student23','Nữ','1999-07-03','Sơ cấp 2','Rồi'),('KOR0024','Student24','Nữ','2003-07-01','Sơ cấp 2','Chưa'),('KOR0025','Student25','Nam','2001-12-19','Sơ cấp 2','Rồi'),('KOR0026','Student26','Nam','2005-10-20','Sơ cấp 2','Chưa'),('KOR0027','Student27','Nữ','2001-01-06','Sơ cấp 2','Rồi'),('KOR0028','Student28','Nam','2004-10-25','Sơ cấp 2','Rồi'),('KOR0029','Student29','Nữ','1999-08-16','Sơ cấp 2','Rồi'),('KOR0030','Student30','Nữ','2003-09-27','Sơ cấp 2','Rồi'),('KOR0031','Student31','Nữ','2000-11-17','Sơ cấp 2','Chưa'),('KOR0032','Student32','Nam','2006-11-18','Sơ cấp 2','Rồi'),('KOR0033','Student33','Nam','2000-08-05','Sơ cấp 2','Chưa'),('KOR0034','Student34','Nữ','2004-07-19','Sơ cấp 2','Rồi'),('KOR0035','Student35','Nam','1999-12-11','Sơ cấp 2','Rồi'),('KOR0036','Student36','Nam','2003-04-22','Sơ cấp 2','Rồi'),('KOR0037','Student37','Nữ','2004-08-10','Sơ cấp 2','Rồi'),('KOR0038','Student38','Nữ','2005-10-23','Sơ cấp 2','Rồi'),('KOR0039','Student39','Nam','2005-01-01','Sơ cấp 2','Rồi'),('KOR0040','Student40','Nam','2001-09-18','Sơ cấp 2','Rồi'),('KOR0041','Student41','Nam','1999-04-28','Trung cấp 1','Chưa'),('KOR0042','Student42','Nữ','2007-06-11','Trung cấp 1','Rồi'),('KOR0043','Student43','Nam','1999-05-03','Trung cấp 1','Chưa'),('KOR0044','Student44','Nam','1999-05-13','Trung cấp 1','Chưa'),('KOR0045','Student45','Nam','1998-07-23','Trung cấp 1','Chưa'),('KOR0046','Student46','Nữ','2001-06-11','Trung cấp 1','Rồi'),('KOR0047','Student47','Nam','2007-01-11','Trung cấp 1','Rồi'),('KOR0048','Student48','Nam','2007-02-18','Trung cấp 1','Rồi'),('KOR0049','Student49','Nữ','2002-11-08','Trung cấp 1','Rồi'),('KOR0050','Student50','Nữ','1999-09-11','Trung cấp 1','Rồi'),('KOR0051','Student51','Nam','2007-04-12','Trung cấp 1','Chưa'),('KOR0052','Student52','Nam','2004-06-09','Trung cấp 1','Chưa'),('KOR0053','Student53','Nam','1999-02-07','Trung cấp 1','Rồi'),('KOR0054','Student54','Nữ','1998-02-14','Trung cấp 1','Chưa'),('KOR0055','Student55','Nữ','2004-11-12','Trung cấp 1','Rồi'),('KOR0056','Student56','Nữ','2003-06-21','Trung cấp 1','Chưa'),('KOR0057','Student57','Nam','2007-03-05','Trung cấp 1','Chưa'),('KOR0058','Student58','Nam','2003-03-09','Trung cấp 1','Rồi'),('KOR0059','Student59','Nam','2004-08-27','Trung cấp 1','Rồi'),('KOR0060','Student60','Nam','2004-05-25','Trung cấp 1','Chưa'),('KOR0061','Student61','Nam','2007-06-16','Trung cấp 2','Chưa'),('KOR0062','Student62','Nam','2001-01-09','Trung cấp 2','Chưa'),('KOR0063','Student63','Nữ','2003-08-07','Trung cấp 2','Chưa'),('KOR0064','Student64','Nữ','2007-04-10','Trung cấp 2','Rồi'),('KOR0065','Student65','Nữ','2001-08-03','Trung cấp 2','Rồi'),('KOR0066','Student66','Nam','2005-03-17','Trung cấp 2','Chưa'),('KOR0067','Student67','Nữ','2001-02-17','Trung cấp 2','Rồi'),('KOR0068','Student68','Nữ','2006-06-18','Trung cấp 2','Rồi'),('KOR0069','Student69','Nữ','2005-06-02','Trung cấp 2','Rồi'),('KOR0070','Student70','Nam','2003-03-15','Trung cấp 2','Rồi'),('KOR0071','Student71','Nam','2003-08-10','Cao cấp 1','Rồi'),('KOR0072','Student72','Nam','2007-11-17','Cao cấp 1','Chưa'),('KOR0073','Student73','Nam','1998-07-09','Cao cấp 1','Rồi'),('KOR0074','Student74','Nam','2000-06-18','Cao cấp 1','Rồi'),('KOR0075','Student75','Nam','2005-03-26','Cao cấp 1','Rồi'),('KOR0076','Student76','Nam','2006-07-27','Cao cấp 2','Chưa'),('KOR0077','Student77','Nữ','2003-07-02','Cao cấp 2','Rồi'),('KOR0078','Student78','Nam','2000-08-07','Cao cấp 2','Chưa'),('KOR0079','Student79','Nam','2005-12-17','Cao cấp 2','Chưa'),('KOR0080','Student80','Nam','1998-10-21','Cao cấp 2','Chưa');
/*!40000 ALTER TABLE `korean_studentlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `idmanager` varchar(7) COLLATE utf8mb3_bin NOT NULL,
  `name` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`idmanager`),
  CONSTRAINT `fk_manager_user` FOREIGN KEY (`idmanager`) REFERENCES `user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES ('ADMIN01','Lê Hoàng Việt Quốc');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `id` varchar(6) COLLATE utf8mb3_bin NOT NULL,
  `name` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  `gender` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  `class` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `mail` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `id_user` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `image` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_teacher_user` (`id_user`),
  CONSTRAINT `fk_teacher_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES ('GV001','Lê Hoàng Việt Quốc','Nam','TOEIC-450','lh.vietquoc@24edu.com',NULL,'http://192.168.0.107/image/quoc.PNG'),('GV002','Trần Nguyễn Đạt Văn','Nam','TOEIC-550','tn.datvan@24edu.com',NULL,'http://192.168.0.107/image/dvan.PNG'),('GV003','Phạm Vĩnh Phú','Nam','TOEIC-650','p.vinhphu@24edu.com',NULL,'http://192.168.0.107/image/phu.PNG'),('GV004','Phan Thành Văn','Nam','TOEIC-750','p.thanhvan@24edu.com',NULL,'http://192.168.0.107/image/tvan.PNG');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `ID` varchar(7) COLLATE utf8mb3_bin NOT NULL,
  `username` varchar(20) COLLATE utf8mb3_bin NOT NULL,
  `password` varchar(32) COLLATE utf8mb3_bin NOT NULL,
  `name` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  `title` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  `email` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('ADMIN01','admin1','123456','Lê Hoàng Việt Quốc','Quản lý','mannchaft.99@gmail.com'),('CHI0001','hocvien_chinese_001','123456','Student 90','Học viên','studentCHI0001@example.com'),('CHI0002','hocvien_chinese_002','123456','Student 91','Học viên','studentCHI0002@example.com'),('CHI0003','hocvien_chinese_003','123456','Student 92','Học viên','studentCHI0003@example.com'),('CHI0004','hocvien_chinese_004','123456','Student 93','Học viên','studentCHI0004@example.com'),('CHI0005','hocvien_chinese_005','123456','Student 94','Học viên','studentCHI0005@example.com'),('CHI0006','hocvien_chinese_006','123456','Student 95','Học viên','studentCHI0006@example.com'),('CHI0007','hocvien_chinese_007','123456','Student 96','Học viên','studentCHI0007@example.com'),('CHI0008','hocvien_chinese_008','123456','Student 97','Học viên','studentCHI0008@example.com'),('CHI0009','hocvien_chinese_009','123456','Student 98','Học viên','studentCHI0009@example.com'),('CHI0010','hocvien_chinese_010','123456','Student 99','Học viên','studentCHI0010@example.com'),('CHI0011','hocvien_chinese_011','123456','Student 80','Học viên','studentCHI0011@example.com'),('CHI0012','hocvien_chinese_012','123456','Student 81','Học viên','studentCHI0012@example.com'),('CHI0013','hocvien_chinese_013','123456','Student 82','Học viên','studentCHI0013@example.com'),('CHI0014','hocvien_chinese_014','123456','Student 83','Học viên','studentCHI0014@example.com'),('CHI0015','hocvien_chinese_015','123456','Student 84','Học viên','studentCHI0015@example.com'),('CHI0016','hocvien_chinese_016','123456','Student 85','Học viên','studentCHI0016@example.com'),('CHI0017','hocvien_chinese_017','123456','Student 86','Học viên','studentCHI0017@example.com'),('CHI0018','hocvien_chinese_018','123456','Student 87','Học viên','studentCHI0018@example.com'),('CHI0019','hocvien_chinese_019','123456','Student 88','Học viên','studentCHI0019@example.com'),('CHI0020','hocvien_chinese_020','123456','Student 89','Học viên','studentCHI0020@example.com'),('CHI0021','hocvien_chinese_021','123456','Student 70','Học viên','studentCHI0021@example.com'),('CHI0022','hocvien_chinese_022','123456','Student 71','Học viên','studentCHI0022@example.com'),('CHI0023','hocvien_chinese_023','123456','Student 72','Học viên','studentCHI0023@example.com'),('CHI0024','hocvien_chinese_024','123456','Student 73','Học viên','studentCHI0024@example.com'),('CHI0025','hocvien_chinese_025','123456','Student 74','Học viên','studentCHI0025@example.com'),('CHI0026','hocvien_chinese_026','123456','Student 75','Học viên','studentCHI0026@example.com'),('CHI0027','hocvien_chinese_027','123456','Student 76','Học viên','studentCHI0027@example.com'),('CHI0028','hocvien_chinese_028','123456','Student 77','Học viên','studentCHI0028@example.com'),('CHI0029','hocvien_chinese_029','123456','Student 78','Học viên','studentCHI0029@example.com'),('CHI0030','hocvien_chinese_030','123456','Student 79','Học viên','studentCHI0030@example.com'),('CHI0031','hocvien_chinese_031','123456','Student 60','Học viên','studentCHI0031@example.com'),('CHI0032','hocvien_chinese_032','123456','Student 61','Học viên','studentCHI0032@example.com'),('CHI0033','hocvien_chinese_033','123456','Student 62','Học viên','studentCHI0033@example.com'),('CHI0034','hocvien_chinese_034','123456','Student 63','Học viên','studentCHI0034@example.com'),('CHI0035','hocvien_chinese_035','123456','Student 64','Học viên','studentCHI0035@example.com'),('CHI0036','hocvien_chinese_036','123456','Student 65','Học viên','studentCHI0036@example.com'),('CHI0037','hocvien_chinese_037','123456','Student 66','Học viên','studentCHI0037@example.com'),('CHI0038','hocvien_chinese_038','123456','Student 67','Học viên','studentCHI0038@example.com'),('CHI0039','hocvien_chinese_039','123456','Student 68','Học viên','studentCHI0039@example.com'),('CHI0040','hocvien_chinese_040','123456','Student 69','Học viên','studentCHI0040@example.com'),('CHI0041','hocvien_chinese_041','123456','Student 50','Học viên','studentCHI0041@example.com'),('CHI0042','hocvien_chinese_042','123456','Student 51','Học viên','studentCHI0042@example.com'),('CHI0043','hocvien_chinese_043','123456','Student 52','Học viên','studentCHI0043@example.com'),('CHI0044','hocvien_chinese_044','123456','Student 53','Học viên','studentCHI0044@example.com'),('CHI0045','hocvien_chinese_045','123456','Student 54','Học viên','studentCHI0045@example.com'),('CHI0046','hocvien_chinese_046','123456','Student 55','Học viên','studentCHI0046@example.com'),('CHI0047','hocvien_chinese_047','123456','Student 56','Học viên','studentCHI0047@example.com'),('CHI0048','hocvien_chinese_048','123456','Student 57','Học viên','studentCHI0048@example.com'),('CHI0049','hocvien_chinese_049','123456','Student 58','Học viên','studentCHI0049@example.com'),('CHI0050','hocvien_chinese_050','123456','Student 59','Học viên','studentCHI0050@example.com'),('CHI0051','hocvien_chinese_051','123456','Student 40','Học viên','studentCHI0051@example.com'),('CHI0052','hocvien_chinese_052','123456','Student 41','Học viên','studentCHI0052@example.com'),('CHI0053','hocvien_chinese_053','123456','Student 42','Học viên','studentCHI0053@example.com'),('CHI0054','hocvien_chinese_054','123456','Student 43','Học viên','studentCHI0054@example.com'),('CHI0055','hocvien_chinese_055','123456','Student 44','Học viên','studentCHI0055@example.com'),('CHI0056','hocvien_chinese_056','123456','Student 45','Học viên','studentCHI0056@example.com'),('CHI0057','hocvien_chinese_057','123456','Student 46','Học viên','studentCHI0057@example.com'),('CHI0058','hocvien_chinese_058','123456','Student 47','Học viên','studentCHI0058@example.com'),('CHI0059','hocvien_chinese_059','123456','Student 48','Học viên','studentCHI0059@example.com'),('CHI0060','hocvien_chinese_060','123456','Student 49','Học viên','studentCHI0060@example.com'),('CHI0061','hocvien_chinese_061','123456','Student 30','Học viên','studentCHI0061@example.com'),('CHI0062','hocvien_chinese_062','123456','Student 31','Học viên','studentCHI0062@example.com'),('CHI0063','hocvien_chinese_063','123456','Student 32','Học viên','studentCHI0063@example.com'),('CHI0064','hocvien_chinese_064','123456','Student 33','Học viên','studentCHI0064@example.com'),('CHI0065','hocvien_chinese_065','123456','Student 34','Học viên','studentCHI0065@example.com'),('CHI0066','hocvien_chinese_066','123456','Student 35','Học viên','studentCHI0066@example.com'),('CHI0067','hocvien_chinese_067','123456','Student 36','Học viên','studentCHI0067@example.com'),('CHI0068','hocvien_chinese_068','123456','Student 37','Học viên','studentCHI0068@example.com'),('CHI0069','hocvien_chinese_069','123456','Student 38','Học viên','studentCHI0069@example.com'),('CHI0070','hocvien_chinese_070','123456','Student 39','Học viên','studentCHI0070@example.com'),('CHI0071','hocvien_chinese_071','123456','Student 20','Học viên','studentCHI0071@example.com'),('CHI0072','hocvien_chinese_072','123456','Student 21','Học viên','studentCHI0072@example.com'),('CHI0073','hocvien_chinese_073','123456','Student 22','Học viên','studentCHI0073@example.com'),('CHI0074','hocvien_chinese_074','123456','Student 23','Học viên','studentCHI0074@example.com'),('CHI0075','hocvien_chinese_075','123456','Student 24','Học viên','studentCHI0075@example.com'),('CHI0076','hocvien_chinese_076','123456','Student 25','Học viên','studentCHI0076@example.com'),('CHI0077','hocvien_chinese_077','123456','Student 26','Học viên','studentCHI0077@example.com'),('CHI0078','hocvien_chinese_078','123456','Student 27','Học viên','studentCHI0078@example.com'),('CHI0079','hocvien_chinese_079','123456','Student 28','Học viên','studentCHI0079@example.com'),('CHI0080','hocvien_chinese_080','123456','Student 29','Học viên','studentCHI0080@example.com'),('CHI0081','hocvien_chinese_081','123456','Student 10','Học viên','studentCHI0081@example.com'),('CHI0082','hocvien_chinese_082','123456','Student 11','Học viên','studentCHI0082@example.com'),('CHI0083','hocvien_chinese_083','123456','Student 12','Học viên','studentCHI0083@example.com'),('CHI0084','hocvien_chinese_084','123456','Student 13','Học viên','studentCHI0084@example.com'),('CHI0085','hocvien_chinese_085','123456','Student 14','Học viên','studentCHI0085@example.com'),('CHI0086','hocvien_chinese_086','123456','Student 15','Học viên','studentCHI0086@example.com'),('CHI0087','hocvien_chinese_087','123456','Student 16','Học viên','studentCHI0087@example.com'),('CHI0088','hocvien_chinese_088','123456','Student 17','Học viên','studentCHI0088@example.com'),('CHI0089','hocvien_chinese_089','123456','Student 18','Học viên','studentCHI0089@example.com'),('CHI0090','hocvien_chinese_090','123456','Student 19','Học viên','studentCHI0090@example.com'),('CHI0091','hocvien_chinese_091','123456','Student 0','Học viên','studentCHI0091@example.com'),('CHI0092','hocvien_chinese_092','123456','Student 1','Học viên','studentCHI0092@example.com'),('CHI0093','hocvien_chinese_093','123456','Student 2','Học viên','studentCHI0093@example.com'),('CHI0094','hocvien_chinese_094','123456','Student 3','Học viên','studentCHI0094@example.com'),('CHI0095','hocvien_chinese_095','123456','Student 4','Học viên','studentCHI0095@example.com'),('CHI0096','hocvien_chinese_096','123456','Student 5','Học viên','studentCHI0096@example.com'),('CHI0097','hocvien_chinese_097','123456','Student 6','Học viên','studentCHI0097@example.com'),('CHI0098','hocvien_chinese_098','123456','Student 7','Học viên','studentCHI0098@example.com'),('CHI0099','hocvien_chinese_099','123456','Student 8','Học viên','studentCHI0099@example.com'),('CHI0100','hocvien_chinese_100','123456','Student 9','Học viên','studentCHI0100@example.com'),('ENG0001','hocvien_english_001','123456','Student1','Học viên','studentENG0001@example.com'),('ENG0002','hocvien_english_002','123456','Student2','Học viên','studentENG0002@example.com'),('ENG0003','hocvien_english_003','123456','Student3','Học viên','studentENG0003@example.com'),('ENG0004','hocvien_english_004','123456','Student4','Học viên','studentENG0004@example.com'),('ENG0005','hocvien_english_005','123456','Student5','Học viên','studentENG0005@example.com'),('ENG0006','hocvien_english_006','123456','Student6','Học viên','studentENG0006@example.com'),('ENG0007','hocvien_english_007','123456','Student7','Học viên','studentENG0007@example.com'),('ENG0008','hocvien_english_008','123456','Student8','Học viên','studentENG0008@example.com'),('ENG0009','hocvien_english_009','123456','Student9','Học viên','studentENG0009@example.com'),('ENG0010','hocvien_english_010','123456','Student10','Học viên','studentENG0010@example.com'),('ENG0011','hocvien_english_011','123456','Student11','Học viên','studentENG0011@example.com'),('ENG0012','hocvien_english_012','123456','Student12','Học viên','studentENG0012@example.com'),('ENG0013','hocvien_english_013','123456','Student13','Học viên','studentENG0013@example.com'),('ENG0014','hocvien_english_014','123456','Student14','Học viên','studentENG0014@example.com'),('ENG0015','hocvien_english_015','123456','Student15','Học viên','studentENG0015@example.com'),('ENG0016','hocvien_english_016','123456','Student16','Học viên','studentENG0016@example.com'),('ENG0017','hocvien_english_017','123456','Student17','Học viên','studentENG0017@example.com'),('ENG0018','hocvien_english_018','123456','Student18','Học viên','studentENG0018@example.com'),('ENG0019','hocvien_english_019','123456','Student19','Học viên','studentENG0019@example.com'),('ENG0020','hocvien_english_020','123456','Student20','Học viên','studentENG0020@example.com'),('ENG0021','hocvien_english_021','123456','Student21','Học viên','studentENG0021@example.com'),('ENG0022','hocvien_english_022','123456','Student22','Học viên','studentENG0022@example.com'),('ENG0023','hocvien_english_023','123456','Student23','Học viên','studentENG0023@example.com'),('ENG0024','hocvien_english_024','123456','Student24','Học viên','studentENG0024@example.com'),('ENG0025','hocvien_english_025','123456','Student25','Học viên','studentENG0025@example.com'),('ENG0026','hocvien_english_026','123456','Student26','Học viên','studentENG0026@example.com'),('ENG0027','hocvien_english_027','123456','Student27','Học viên','studentENG0027@example.com'),('ENG0028','hocvien_english_028','123456','Student28','Học viên','studentENG0028@example.com'),('ENG0029','hocvien_english_029','123456','Student29','Học viên','studentENG0029@example.com'),('ENG0030','hocvien_english_030','123456','Student30','Học viên','studentENG0030@example.com'),('ENG0031','hocvien_english_031','123456','Student31','Học viên','studentENG0031@example.com'),('ENG0032','hocvien_english_032','123456','Student32','Học viên','studentENG0032@example.com'),('ENG0033','hocvien_english_033','123456','Student33','Học viên','studentENG0033@example.com'),('ENG0034','hocvien_english_034','123456','Student34','Học viên','studentENG0034@example.com'),('ENG0035','hocvien_english_035','123456','Student35','Học viên','studentENG0035@example.com'),('ENG0036','hocvien_english_036','123456','Student36','Học viên','studentENG0036@example.com'),('ENG0037','hocvien_english_037','123456','Student37','Học viên','studentENG0037@example.com'),('ENG0038','hocvien_english_038','123456','Student38','Học viên','studentENG0038@example.com'),('ENG0039','hocvien_english_039','123456','Student39','Học viên','studentENG0039@example.com'),('ENG0040','hocvien_english_040','123456','Student40','Học viên','studentENG0040@example.com'),('ENG0041','hocvien_english_041','123456','Student41','Học viên','studentENG0041@example.com'),('ENG0042','hocvien_english_042','123456','Student42','Học viên','studentENG0042@example.com'),('ENG0043','hocvien_english_043','123456','Student43','Học viên','studentENG0043@example.com'),('ENG0044','hocvien_english_044','123456','Student44','Học viên','studentENG0044@example.com'),('ENG0045','hocvien_english_045','123456','Student45','Học viên','studentENG0045@example.com'),('ENG0046','hocvien_english_046','123456','Student46','Học viên','studentENG0046@example.com'),('ENG0047','hocvien_english_047','123456','Student47','Học viên','studentENG0047@example.com'),('ENG0048','hocvien_english_048','123456','Student48','Học viên','studentENG0048@example.com'),('ENG0049','hocvien_english_049','123456','Student49','Học viên','studentENG0049@example.com'),('ENG0050','hocvien_english_050','123456','Student50','Học viên','studentENG0050@example.com'),('ENG0051','hocvien_english_051','123456','Student51','Học viên','studentENG0051@example.com'),('ENG0052','hocvien_english_052','123456','Student52','Học viên','studentENG0052@example.com'),('ENG0053','hocvien_english_053','123456','Student53','Học viên','studentENG0053@example.com'),('ENG0054','hocvien_english_054','123456','Student54','Học viên','studentENG0054@example.com'),('ENG0055','hocvien_english_055','123456','Student55','Học viên','studentENG0055@example.com'),('ENG0056','hocvien_english_056','123456','Student56','Học viên','studentENG0056@example.com'),('ENG0057','hocvien_english_057','123456','Student57','Học viên','studentENG0057@example.com'),('ENG0058','hocvien_english_058','123456','Student58','Học viên','studentENG0058@example.com'),('ENG0059','hocvien_english_059','123456','Student59','Học viên','studentENG0059@example.com'),('ENG0060','hocvien_english_060','123456','Student60','Học viên','studentENG0060@example.com'),('ENG0061','hocvien_english_061','123456','Student61','Học viên','studentENG0061@example.com'),('ENG0062','hocvien_english_062','123456','Student62','Học viên','studentENG0062@example.com'),('ENG0063','hocvien_english_063','123456','Student63','Học viên','studentENG0063@example.com'),('ENG0064','hocvien_english_064','123456','Student64','Học viên','studentENG0064@example.com'),('ENG0065','hocvien_english_065','123456','Student65','Học viên','studentENG0065@example.com'),('ENG0066','hocvien_english_066','123456','Student66','Học viên','studentENG0066@example.com'),('ENG0067','hocvien_english_067','123456','Student67','Học viên','studentENG0067@example.com'),('ENG0068','hocvien_english_068','123456','Student68','Học viên','studentENG0068@example.com'),('ENG0069','hocvien_english_069','123456','Student69','Học viên','studentENG0069@example.com'),('ENG0070','hocvien_english_070','123456','Student70','Học viên','studentENG0070@example.com'),('ENG0071','hocvien_english_071','123456','Student71','Học viên','studentENG0071@example.com'),('ENG0072','hocvien_english_072','123456','Student72','Học viên','studentENG0072@example.com'),('ENG0073','hocvien_english_073','123456','Student73','Học viên','studentENG0073@example.com'),('ENG0074','hocvien_english_074','123456','Student74','Học viên','studentENG0074@example.com'),('ENG0075','hocvien_english_075','123456','Student75','Học viên','studentENG0075@example.com'),('ENG0076','hocvien_english_076','123456','Student76','Học viên','studentENG0076@example.com'),('ENG0077','hocvien_english_077','123456','Student77','Học viên','studentENG0077@example.com'),('ENG0078','hocvien_english_078','123456','Student78','Học viên','studentENG0078@example.com'),('ENG0079','hocvien_english_079','123456','Student79','Học viên','studentENG0079@example.com'),('ENG0080','hocvien_english_080','123456','Student80','Học viên','studentENG0080@example.com'),('ENG0081','hocvien_english_081','123456','Student81','Học viên','studentENG0081@example.com'),('ENG0082','hocvien_english_082','123456','Student82','Học viên','studentENG0082@example.com'),('ENG0083','hocvien_english_083','123456','Student83','Học viên','studentENG0083@example.com'),('ENG0084','hocvien_english_084','123456','Student84','Học viên','studentENG0084@example.com'),('ENG0085','hocvien_english_085','123456','Student85','Học viên','studentENG0085@example.com'),('ENG0086','hocvien_english_086','123456','Student86','Học viên','studentENG0086@example.com'),('ENG0087','hocvien_english_087','123456','Student87','Học viên','studentENG0087@example.com'),('ENG0088','hocvien_english_088','123456','Student88','Học viên','studentENG0088@example.com'),('ENG0089','hocvien_english_089','123456','Student89','Học viên','studentENG0089@example.com'),('ENG0090','hocvien_english_090','123456','Student90','Học viên','studentENG0090@example.com'),('ENG0091','hocvien_english_091','123456','Student91','Học viên','studentENG0091@example.com'),('ENG0092','hocvien_english_092','123456','Student92','Học viên','studentENG0092@example.com'),('ENG0093','hocvien_english_093','123456','Student93','Học viên','studentENG0093@example.com'),('ENG0094','hocvien_english_094','123456','Student94','Học viên','studentENG0094@example.com'),('ENG0095','hocvien_english_095','123456','Student95','Học viên','studentENG0095@example.com'),('ENG0096','hocvien_english_096','123456','Student96','Học viên','studentENG0096@example.com'),('ENG0097','hocvien_english_097','123456','Student97','Học viên','studentENG0097@example.com'),('ENG0098','hocvien_english_098','123456','Student98','Học viên','studentENG0098@example.com'),('ENG0099','hocvien_english_099','123456','Student99','Học viên','studentENG0099@example.com'),('ENG0100','hocvien_english_100','123456','Student100','Học viên','studentENG0100@example.com'),('ENG0101','hocvien_english_101','123456','Student101','Học viên','studentENG0101@example.com'),('ENG0102','hocvien_english_102','123456','Student102','Học viên','studentENG0102@example.com'),('ENG0103','hocvien_english_103','123456','Student103','Học viên','studentENG0103@example.com'),('ENG0104','hocvien_english_104','123456','Student104','Học viên','studentENG0104@example.com'),('ENG0105','hocvien_english_105','123456','Student105','Học viên','studentENG0105@example.com'),('ENG0106','hocvien_english_106','123456','Student106','Học viên','studentENG0106@example.com'),('ENG0107','hocvien_english_107','123456','Student107','Học viên','studentENG0107@example.com'),('ENG0108','hocvien_english_108','123456','Student108','Học viên','studentENG0108@example.com'),('ENG0109','hocvien_english_109','123456','Student109','Học viên','studentENG0109@example.com'),('ENG0110','hocvien_english_110','123456','Student110','Học viên','studentENG0110@example.com'),('ENG0111','hocvien_english_111','123456','Student111','Học viên','studentENG0111@example.com'),('ENG0112','hocvien_english_112','123456','Student112','Học viên','studentENG0112@example.com'),('ENG0113','hocvien_english_113','123456','Student113','Học viên','studentENG0113@example.com'),('ENG0114','hocvien_english_114','123456','Student114','Học viên','studentENG0114@example.com'),('ENG0115','hocvien_english_115','123456','Student115','Học viên','studentENG0115@example.com'),('ENG0116','hocvien_english_116','123456','Student116','Học viên','studentENG0116@example.com'),('ENG0117','hocvien_english_117','123456','Student117','Học viên','studentENG0117@example.com'),('ENG0118','hocvien_english_118','123456','Student118','Học viên','studentENG0118@example.com'),('ENG0119','hocvien_english_119','123456','Student119','Học viên','studentENG0119@example.com'),('ENG0120','hocvien_english_120','123456','Student120','Học viên','studentENG0120@example.com'),('ENG0121','hocvien_english_121','123456','Student121','Học viên','studentENG0121@example.com'),('ENG0122','hocvien_english_122','123456','Student122','Học viên','studentENG0122@example.com'),('ENG0123','hocvien_english_123','123456','Student123','Học viên','studentENG0123@example.com'),('ENG0124','hocvien_english_124','123456','Student124','Học viên','studentENG0124@example.com'),('ENG0125','hocvien_english_125','123456','Student125','Học viên','studentENG0125@example.com'),('ENG0126','hocvien_english_126','123456','Student126','Học viên','studentENG0126@example.com'),('ENG0127','hocvien_english_127','123456','Student127','Học viên','studentENG0127@example.com'),('ENG0128','hocvien_english_128','123456','Student128','Học viên','studentENG0128@example.com'),('ENG0129','hocvien_english_129','123456','Student129','Học viên','studentENG0129@example.com'),('ENG0130','hocvien_english_130','123456','Student130','Học viên','studentENG0130@example.com'),('GV001','teacher_001','123456','Lê Hoàng Việt Quốc','Giáng viên','lh.vietquoc@24edu.com'),('GV002','teacher_002','123456','Trần Nguyễn Đạt Văn','Giáng viên','tn.datvan@24edu.com'),('GV003','teacher_003','123456','Phạm Vĩnh Phú','Giáng viên','p.vinhphu@24edu.com'),('GV004','teacher_004','123456','Phan Thành Văn','Giáng viên','p.thanhvan@24edu.com'),('KOR0001','hocvien_korean_001','123456','Student1','Học viên','studentKOR0001@example.com'),('KOR0002','hocvien_korean_002','123456','Student2','Học viên','studentKOR0002@example.com'),('KOR0003','hocvien_korean_003','123456','Student3','Học viên','studentKOR0003@example.com'),('KOR0004','hocvien_korean_004','123456','Student4','Học viên','studentKOR0004@example.com'),('KOR0005','hocvien_korean_005','123456','Student5','Học viên','studentKOR0005@example.com'),('KOR0006','hocvien_korean_006','123456','Student6','Học viên','studentKOR0006@example.com'),('KOR0007','hocvien_korean_007','123456','Student7','Học viên','studentKOR0007@example.com'),('KOR0008','hocvien_korean_008','123456','Student8','Học viên','studentKOR0008@example.com'),('KOR0009','hocvien_korean_009','123456','Student9','Học viên','studentKOR0009@example.com'),('KOR0010','hocvien_korean_010','123456','Student10','Học viên','studentKOR0010@example.com'),('KOR0011','hocvien_korean_011','123456','Student11','Học viên','studentKOR0011@example.com'),('KOR0012','hocvien_korean_012','123456','Student12','Học viên','studentKOR0012@example.com'),('KOR0013','hocvien_korean_013','123456','Student13','Học viên','studentKOR0013@example.com'),('KOR0014','hocvien_korean_014','123456','Student14','Học viên','studentKOR0014@example.com'),('KOR0015','hocvien_korean_015','123456','Student15','Học viên','studentKOR0015@example.com'),('KOR0016','hocvien_korean_016','123456','Student16','Học viên','studentKOR0016@example.com'),('KOR0017','hocvien_korean_017','123456','Student17','Học viên','studentKOR0017@example.com'),('KOR0018','hocvien_korean_018','123456','Student18','Học viên','studentKOR0018@example.com'),('KOR0019','hocvien_korean_019','123456','Student19','Học viên','studentKOR0019@example.com'),('KOR0020','hocvien_korean_020','123456','Student20','Học viên','studentKOR0020@example.com'),('KOR0021','hocvien_korean_021','123456','Student21','Học viên','studentKOR0021@example.com'),('KOR0022','hocvien_korean_022','123456','Student22','Học viên','studentKOR0022@example.com'),('KOR0023','hocvien_korean_023','123456','Student23','Học viên','studentKOR0023@example.com'),('KOR0024','hocvien_korean_024','123456','Student24','Học viên','studentKOR0024@example.com'),('KOR0025','hocvien_korean_025','123456','Student25','Học viên','studentKOR0025@example.com'),('KOR0026','hocvien_korean_026','123456','Student26','Học viên','studentKOR0026@example.com'),('KOR0027','hocvien_korean_027','123456','Student27','Học viên','studentKOR0027@example.com'),('KOR0028','hocvien_korean_028','123456','Student28','Học viên','studentKOR0028@example.com'),('KOR0029','hocvien_korean_029','123456','Student29','Học viên','studentKOR0029@example.com'),('KOR0030','hocvien_korean_030','123456','Student30','Học viên','studentKOR0030@example.com'),('KOR0031','hocvien_korean_031','123456','Student31','Học viên','studentKOR0031@example.com'),('KOR0032','hocvien_korean_032','123456','Student32','Học viên','studentKOR0032@example.com'),('KOR0033','hocvien_korean_033','123456','Student33','Học viên','studentKOR0033@example.com'),('KOR0034','hocvien_korean_034','123456','Student34','Học viên','studentKOR0034@example.com'),('KOR0035','hocvien_korean_035','123456','Student35','Học viên','studentKOR0035@example.com'),('KOR0036','hocvien_korean_036','123456','Student36','Học viên','studentKOR0036@example.com'),('KOR0037','hocvien_korean_037','123456','Student37','Học viên','studentKOR0037@example.com'),('KOR0038','hocvien_korean_038','123456','Student38','Học viên','studentKOR0038@example.com'),('KOR0039','hocvien_korean_039','123456','Student39','Học viên','studentKOR0039@example.com'),('KOR0040','hocvien_korean_040','123456','Student40','Học viên','studentKOR0040@example.com'),('KOR0041','hocvien_korean_041','123456','Student41','Học viên','studentKOR0041@example.com'),('KOR0042','hocvien_korean_042','123456','Student42','Học viên','studentKOR0042@example.com'),('KOR0043','hocvien_korean_043','123456','Student43','Học viên','studentKOR0043@example.com'),('KOR0044','hocvien_korean_044','123456','Student44','Học viên','studentKOR0044@example.com'),('KOR0045','hocvien_korean_045','123456','Student45','Học viên','studentKOR0045@example.com'),('KOR0046','hocvien_korean_046','123456','Student46','Học viên','studentKOR0046@example.com'),('KOR0047','hocvien_korean_047','123456','Student47','Học viên','studentKOR0047@example.com'),('KOR0048','hocvien_korean_048','123456','Student48','Học viên','studentKOR0048@example.com'),('KOR0049','hocvien_korean_049','123456','Student49','Học viên','studentKOR0049@example.com'),('KOR0050','hocvien_korean_050','123456','Student50','Học viên','studentKOR0050@example.com'),('KOR0051','hocvien_korean_051','123456','Student51','Học viên','studentKOR0051@example.com'),('KOR0052','hocvien_korean_052','123456','Student52','Học viên','studentKOR0052@example.com'),('KOR0053','hocvien_korean_053','123456','Student53','Học viên','studentKOR0053@example.com'),('KOR0054','hocvien_korean_054','123456','Student54','Học viên','studentKOR0054@example.com'),('KOR0055','hocvien_korean_055','123456','Student55','Học viên','studentKOR0055@example.com'),('KOR0056','hocvien_korean_056','123456','Student56','Học viên','studentKOR0056@example.com'),('KOR0057','hocvien_korean_057','123456','Student57','Học viên','studentKOR0057@example.com'),('KOR0058','hocvien_korean_058','123456','Student58','Học viên','studentKOR0058@example.com'),('KOR0059','hocvien_korean_059','123456','Student59','Học viên','studentKOR0059@example.com'),('KOR0060','hocvien_korean_060','123456','Student60','Học viên','studentKOR0060@example.com'),('KOR0061','hocvien_korean_061','123456','Student61','Học viên','studentKOR0061@example.com'),('KOR0062','hocvien_korean_062','123456','Student62','Học viên','studentKOR0062@example.com'),('KOR0063','hocvien_korean_063','123456','Student63','Học viên','studentKOR0063@example.com'),('KOR0064','hocvien_korean_064','123456','Student64','Học viên','studentKOR0064@example.com'),('KOR0065','hocvien_korean_065','123456','Student65','Học viên','studentKOR0065@example.com'),('KOR0066','hocvien_korean_066','123456','Student66','Học viên','studentKOR0066@example.com'),('KOR0067','hocvien_korean_067','123456','Student67','Học viên','studentKOR0067@example.com'),('KOR0068','hocvien_korean_068','123456','Student68','Học viên','studentKOR0068@example.com'),('KOR0069','hocvien_korean_069','123456','Student69','Học viên','studentKOR0069@example.com'),('KOR0070','hocvien_korean_070','123456','Student70','Học viên','studentKOR0070@example.com'),('KOR0071','hocvien_korean_071','123456','Student71','Học viên','studentKOR0071@example.com'),('KOR0072','hocvien_korean_072','123456','Student72','Học viên','studentKOR0072@example.com'),('KOR0073','hocvien_korean_073','123456','Student73','Học viên','studentKOR0073@example.com'),('KOR0074','hocvien_korean_074','123456','Student74','Học viên','studentKOR0074@example.com'),('KOR0075','hocvien_korean_075','123456','Student75','Học viên','studentKOR0075@example.com'),('KOR0076','hocvien_korean_076','123456','Student76','Học viên','studentKOR0076@example.com'),('KOR0077','hocvien_korean_077','123456','Student77','Học viên','studentKOR0077@example.com'),('KOR0078','hocvien_korean_078','123456','Student78','Học viên','studentKOR0078@example.com'),('KOR0079','hocvien_korean_079','123456','Student79','Học viên','studentKOR0079@example.com'),('KOR0080','hocvien_korean_080','123456','Student80','Học viên','studentKOR0080@example.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-09  5:44:46
