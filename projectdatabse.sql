-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: project
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
-- Table structure for table `agentcommission`
--

DROP TABLE IF EXISTS `agentcommission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agentcommission` (
  `AgentID` varchar(20) NOT NULL,
  `Payperiod` date DEFAULT NULL,
  `AgentName` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `CommissionAmount` int DEFAULT NULL,
  PRIMARY KEY (`AgentID`),
  CONSTRAINT `agentcommission_ibfk_1` FOREIGN KEY (`AgentID`) REFERENCES `salesagent` (`AgentID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agentcommission`
--

LOCK TABLES `agentcommission` WRITE;
/*!40000 ALTER TABLE `agentcommission` DISABLE KEYS */;
INSERT INTO `agentcommission` VALUES ('Agent003','2025-03-20','Lisa Rogers','robert48@example.org',120),('Agent007','2025-03-20','Dave Lewis','vallen@example.net',50),('Agent008','2025-03-20','David Gardner','jeffpetersen@example.org',20),('Agent009','2025-03-20','Thomas Anderson','adamserika@example.net',160),('Agent011','2025-03-20','Zachary Mays','dayandrea@example.net',60),('Agent012','2025-03-20','Brittney Johnson','jozimmerman@example.com',130),('Agent013','2025-03-20','Jill Petersen','gmahoney@example.net',100),('Agent014','2025-03-20','Elizabeth Mcintyre','duncantiffany@example.net',150),('Agent015','2025-03-20','Derek Gonzalez','richardlopez@example.net',130),('Agent016','2025-03-20','Katherine Perez','diane46@example.net',70),('Agent017','2025-03-20','Ryan Franklin','williamscynthia@example.net',140),('Agent018','2025-03-20','Marcus Moore','moorejesse@example.com',120),('Agent019','2025-03-20','Stephanie Wheeler','wintersamy@example.org',80),('Agent020','2025-03-20','Connie Anderson','gjarvis@example.com',50),('Agent021','2025-03-20','William Carter','williamsjason@example.net',60),('Agent022','2025-03-20','Patrick Hawkins','lawrencediane@example.net',20),('Agent023','2025-03-20','Catherine Hall','kristopher02@example.com',50),('Agent024','2025-03-20','Stephen Robertson','nancyhunter@example.com',130),('Agent025','2025-03-20','Sara Le','mcintyrescott@example.net',70),('Agent026','2025-03-20','Richard Phillips','ilynch@example.net',20),('Agent027','2025-03-20','Amber Abbott','urasmussen@example.org',100),('Agent028','2025-03-20','Johnny Holt','mjohnson@example.com',50),('Agent029','2025-03-20','Tyrone Brown','ethanbell@example.com',50),('Agent032','2025-03-20','James Alvarez','ekennedy@example.org',100),('Agent033','2025-03-20','Ricky Ryan MD','laurafuentes@example.com',90),('Agent034','2025-03-20','Ronald Hunt','sandraking@example.net',20),('Agent035','2025-03-20','Miranda Krueger','hughesmichael@example.org',40),('Agent037','2025-03-20','Daniel Hill','jennifer95@example.org',40),('Agent038','2025-03-20','Jason Thornton','joshua18@example.com',20),('Agent039','2025-03-20','Ronald Perez','kaguilar@example.org',100),('Agent040','2025-03-20','Donna Nelson','jenkinsdouglas@example.net',50),('Agent041','2025-03-20','Kimberly Watkins','corey05@example.net',100),('Agent042','2025-03-20','Zachary French','jason07@example.net',80),('Agent043','2025-03-20','Valerie Osborne','evansjustin@example.com',90);
/*!40000 ALTER TABLE `agentcommission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calculate`
--

DROP TABLE IF EXISTS `calculate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calculate` (
  `OrderID` varchar(20) NOT NULL,
  `AgentID` varchar(20) NOT NULL,
  `ValueofOrder` int DEFAULT NULL,
  PRIMARY KEY (`OrderID`,`AgentID`),
  KEY `AgentID` (`AgentID`),
  CONSTRAINT `calculate_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `calculate_ibfk_2` FOREIGN KEY (`AgentID`) REFERENCES `salesagent` (`AgentID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calculate`
--

LOCK TABLES `calculate` WRITE;
/*!40000 ALTER TABLE `calculate` DISABLE KEYS */;
INSERT INTO `calculate` VALUES ('Order001','Agent013',30),('Order002','Agent017',20),('Order003','Agent003',50),('Order004','Agent012',30),('Order005','Agent011',30),('Order006','Agent004',30),('Order007','Agent032',50),('Order008','Agent041',20),('Order009','Agent019',50),('Order010','Agent014',50),('Order011','Agent024',30),('Order012','Agent008',20),('Order013','Agent025',50),('Order014','Agent033',50),('Order015','Agent023',20),('Order016','Agent009',30),('Order017','Agent040',50),('Order018','Agent028',50),('Order019','Agent022',20),('Order020','Agent038',20),('Order021','Agent017',20),('Order022','Agent041',30),('Order023','Agent033',20),('Order024','Agent002',30),('Order025','Agent013',20),('Order026','Agent011',30),('Order027','Agent021',30),('Order028','Agent024',50),('Order029','Agent035',20),('Order030','Agent017',20),('Order031','Agent018',30),('Order032','Agent006',30),('Order033','Agent042',30),('Order034','Agent009',30),('Order035','Agent026',20),('Order036','Agent009',20),('Order037','Agent042',20),('Order038','Agent043',20),('Order039','Agent043',30),('Order040','Agent043',20),('Order041','Agent009',50),('Order042','Agent042',30),('Order043','Agent012',50),('Order044','Agent012',30),('Order045','Agent001',30),('Order046','Agent013',20),('Order047','Agent021',30),('Order048','Agent013',30),('Order049','Agent001',30),('Order050','Agent003',20),('Order051','Agent006',50),('Order052','Agent027',20),('Order053','Agent010',30),('Order054','Agent001',30),('Order055','Agent035',20),('Order056','Agent003',20),('Order057','Agent039',50),('Order058','Agent009',30),('Order059','Agent014',30),('Order060','Agent012',20),('Order061','Agent037',20),('Order062','Agent016',20),('Order063','Agent016',50),('Order064','Agent003',30),('Order065','Agent037',20),('Order066','Agent041',30),('Order067','Agent032',30),('Order068','Agent015',30),('Order069','Agent017',50),('Order070','Agent034',20),('Order071','Agent029',30),('Order072','Agent015',30),('Order073','Agent015',20),('Order074','Agent025',20),('Order075','Agent006',50),('Order076','Agent020',50),('Order077','Agent015',50),('Order078','Agent024',20),('Order079','Agent023',30),('Order080','Agent033',20),('Order081','Agent041',20),('Order082','Agent027',30),('Order083','Agent029',20),('Order084','Agent039',30),('Order085','Agent007',30),('Order086','Agent002',50),('Order087','Agent017',30),('Order088','Agent018',20),('Order089','Agent007',20),('Order090','Agent019',30),('Order091','Agent039',20),('Order092','Agent043',20),('Order093','Agent032',20),('Order094','Agent024',30),('Order095','Agent018',50),('Order096','Agent027',50),('Order097','Agent014',50),('Order098','Agent004',50),('Order099','Agent001',30),('Order100','Agent014',20);
/*!40000 ALTER TABLE `calculate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commission`
--

DROP TABLE IF EXISTS `commission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commission` (
  `Payperiod` date DEFAULT NULL,
  `AgentID` varchar(20) NOT NULL,
  `AgentName` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`AgentID`),
  CONSTRAINT `commission_ibfk_1` FOREIGN KEY (`AgentID`) REFERENCES `salesagent` (`AgentID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commission`
--

LOCK TABLES `commission` WRITE;
/*!40000 ALTER TABLE `commission` DISABLE KEYS */;
INSERT INTO `commission` VALUES ('2025-03-20','Agent001','Megan Caldwell','tammy37@example.org'),('2025-03-20','Agent002','James Bishop','fergusonstephanie@example.org'),('2025-03-20','Agent003','Lisa Rogers','robert48@example.org'),('2025-03-20','Agent004','Douglas Hernandez','uanderson@example.com'),('2025-03-20','Agent006','Phillip Reese','vlyons@example.com'),('2025-03-20','Agent007','Dave Lewis','vallen@example.net'),('2025-03-20','Agent008','David Gardner','jeffpetersen@example.org'),('2025-03-20','Agent009','Thomas Anderson','adamserika@example.net'),('2025-03-20','Agent010','Paul Reed','alejandro21@example.net'),('2025-03-20','Agent011','Zachary Mays','dayandrea@example.net'),('2025-03-20','Agent012','Brittney Johnson','jozimmerman@example.com'),('2025-03-20','Agent013','Jill Petersen','gmahoney@example.net'),('2025-03-20','Agent014','Elizabeth Mcintyre','duncantiffany@example.net'),('2025-03-20','Agent015','Derek Gonzalez','richardlopez@example.net'),('2025-03-20','Agent016','Katherine Perez','diane46@example.net'),('2025-03-20','Agent017','Ryan Franklin','williamscynthia@example.net'),('2025-03-20','Agent018','Marcus Moore','moorejesse@example.com'),('2025-03-20','Agent019','Stephanie Wheeler','wintersamy@example.org'),('2025-03-20','Agent020','Connie Anderson','gjarvis@example.com'),('2025-03-20','Agent021','William Carter','williamsjason@example.net'),('2025-03-20','Agent022','Patrick Hawkins','lawrencediane@example.net'),('2025-03-20','Agent023','Catherine Hall','kristopher02@example.com'),('2025-03-20','Agent024','Stephen Robertson','nancyhunter@example.com'),('2025-03-20','Agent025','Sara Le','mcintyrescott@example.net'),('2025-03-20','Agent026','Richard Phillips','ilynch@example.net'),('2025-03-20','Agent027','Amber Abbott','urasmussen@example.org'),('2025-03-20','Agent028','Johnny Holt','mjohnson@example.com'),('2025-03-20','Agent029','Tyrone Brown','ethanbell@example.com'),('2025-03-20','Agent032','James Alvarez','ekennedy@example.org'),('2025-03-20','Agent033','Ricky Ryan MD','laurafuentes@example.com'),('2025-03-20','Agent034','Ronald Hunt','sandraking@example.net'),('2025-03-20','Agent035','Miranda Krueger','hughesmichael@example.org'),('2025-03-20','Agent037','Daniel Hill','jennifer95@example.org'),('2025-03-20','Agent038','Jason Thornton','joshua18@example.com'),('2025-03-20','Agent039','Ronald Perez','kaguilar@example.org'),('2025-03-20','Agent040','Donna Nelson','jenkinsdouglas@example.net'),('2025-03-20','Agent041','Kimberly Watkins','corey05@example.net'),('2025-03-20','Agent042','Zachary French','jason07@example.net'),('2025-03-20','Agent043','Valerie Osborne','evansjustin@example.com');
/*!40000 ALTER TABLE `commission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `EmployeeID` varchar(20) NOT NULL,
  `EmployeeName` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phonenumber` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('Emp001','Joseph Carlson','gonzalezsara@example.org','381-966-4479'),('Emp002','Andrew Kelly','snydershannon@example.org','299-841-9334'),('Emp003','Jennifer Small','millerdavid@example.com','505-261-2893'),('Emp004','Jessica Kelley','rebecca74@example.net','885-174-9043');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hr`
--

DROP TABLE IF EXISTS `hr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hr` (
  `AgentName` varchar(30) DEFAULT NULL,
  `background` char(5) DEFAULT NULL,
  `phonenumber` varchar(15) DEFAULT NULL,
  CONSTRAINT `hr_chk_1` CHECK ((`background` in (_utf8mb4'TRUE',_utf8mb4'FALSE')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hr`
--

LOCK TABLES `hr` WRITE;
/*!40000 ALTER TABLE `hr` DISABLE KEYS */;
INSERT INTO `hr` VALUES ('Miss Jodi Black MD','FALSE','936-376-1606'),('Victoria Schultz','FALSE','465-476-3429'),('Hunter Ramos','FALSE','713-185-4214'),('Cory Cervantes','FALSE','908-799-1228'),('Kimberly Brown','FALSE','550-224-6723'),('Casey Higgins','FALSE','122-250-5407'),('Tyler Watson','FALSE','631-247-1008'),('Anna Reyes','TRUE','418-644-6668'),('Robin Robles','TRUE','756-875-7885'),('Lisa Rogers','TRUE','298-621-3594'),('Carol Garcia','TRUE','784-238-7064'),('Aaron Smith','TRUE','201-978-1435'),('Sarah Turner','TRUE','352-265-6229'),('Dave Lewis','TRUE','586-923-7732'),('David Gardner','TRUE','449-843-4705'),('Thomas Anderson','TRUE','615-510-5936'),('Paula Jones','TRUE','660-468-5619'),('Zachary Mays','TRUE','310-503-1403'),('Brittney Johnson','TRUE','389-688-1579'),('Jill Petersen','TRUE','810-735-1667'),('Elizabeth Mcintyre','TRUE','914-571-4173'),('Derek Gonzalez','TRUE','315-201-6274'),('Katherine Perez','TRUE','193-888-1031'),('Ryan Franklin','TRUE','537-238-5507'),('Marcus Moore','TRUE','529-770-7534'),('Stephanie Wheeler','TRUE','893-430-4413'),('Connie Anderson','TRUE','820-509-5086'),('William Carter','TRUE','162-921-7398'),('Patrick Hawkins','TRUE','430-762-1388'),('Catherine Hall','TRUE','872-735-1131'),('Stephen Robertson','TRUE','502-776-2050'),('Sara Le','TRUE','187-900-4811'),('Richard Phillips','TRUE','294-457-5897'),('Amber Abbott','TRUE','649-301-1714'),('Johnny Holt','TRUE','706-404-4753'),('Tyrone Brown','TRUE','399-293-8351'),('Mallory Reynolds','TRUE','353-926-1348'),('Anne Gillespie','TRUE','772-485-1180'),('James Alvarez','TRUE','880-568-4731'),('Ricky Ryan MD','TRUE','274-660-2099'),('Ronald Hunt','TRUE','943-515-9874'),('Miranda Krueger','TRUE','377-165-7283'),('Anthony Phillips','TRUE','233-801-5543'),('Daniel Hill','TRUE','222-751-5376'),('Jason Thornton','TRUE','648-716-7592'),('Ronald Perez','TRUE','414-681-4205'),('Donna Nelson','TRUE','724-925-8910'),('Kimberly Watkins','TRUE','595-645-1912'),('Zachary French','TRUE','252-859-6126'),('Valerie Osborne','TRUE','988-830-4501');
/*!40000 ALTER TABLE `hr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managercommission`
--

DROP TABLE IF EXISTS `managercommission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `managercommission` (
  `AgentID` varchar(20) NOT NULL,
  `Payperiod` date DEFAULT NULL,
  `AgentName` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `CommissionAmount` int DEFAULT NULL,
  `OverrideAmount` int DEFAULT NULL,
  PRIMARY KEY (`AgentID`),
  CONSTRAINT `managercommission_ibfk_1` FOREIGN KEY (`AgentID`) REFERENCES `salesagent` (`AgentID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managercommission`
--

LOCK TABLES `managercommission` WRITE;
/*!40000 ALTER TABLE `managercommission` DISABLE KEYS */;
INSERT INTO `managercommission` VALUES ('Agent001','2025-03-20','Megan Caldwell','tammy37@example.org',120,NULL),('Agent002','2025-03-20','James Bishop','fergusonstephanie@example.org',80,NULL),('Agent004','2025-03-20','Douglas Hernandez','uanderson@example.com',80,NULL),('Agent006','2025-03-20','Phillip Reese','vlyons@example.com',130,NULL),('Agent010','2025-03-20','Paul Reed','alejandro21@example.net',30,NULL);
/*!40000 ALTER TABLE `managercommission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` varchar(20) NOT NULL,
  `AgentID` varchar(20) NOT NULL,
  `Customername` varchar(30) DEFAULT NULL,
  `OrderInfo` varchar(20) DEFAULT NULL,
  `Customerphone` varchar(15) DEFAULT NULL,
  `EmployeeID` varchar(20) NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `AgentID` (`AgentID`),
  KEY `EmployeeID` (`EmployeeID`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`AgentID`) REFERENCES `salesagent` (`AgentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`EmployeeID`) REFERENCES `employee` (`EmployeeID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('Order001','Agent013','Kenneth Henderson','High Speed Internet','683-472-2413','Emp001'),('Order002','Agent017','David Frazier','Phone','528-833-6990','Emp002'),('Order003','Agent003','Lori Russell','TV','941-136-9488','Emp003'),('Order004','Agent012','Dylan Mclean','High Speed Internet','895-306-1139','Emp001'),('Order005','Agent011','Brian Valencia','High Speed Internet','708-214-8290','Emp003'),('Order006','Agent004','Kyle Murphy','High Speed Internet','741-985-6922','Emp001'),('Order007','Agent032','Timothy Stout','TV','835-742-3250','Emp003'),('Order008','Agent041','Kathryn Johnson','Phone','433-634-6826','Emp001'),('Order009','Agent019','Ryan Williams','TV','558-696-6037','Emp002'),('Order010','Agent014','Tony Rose','TV','944-898-4073','Emp003'),('Order011','Agent024','Kara Mooney','High Speed Internet','312-264-9062','Emp001'),('Order012','Agent008','Morgan Crawford','Phone','841-698-7647','Emp001'),('Order013','Agent025','Evan Swanson','TV','170-521-4056','Emp003'),('Order014','Agent033','Shawna Gregory','TV','613-119-1431','Emp002'),('Order015','Agent023','Jack Fischer','Phone','535-482-8357','Emp004'),('Order016','Agent009','Timothy Hernandez','High Speed Internet','536-356-4934','Emp002'),('Order017','Agent040','Colleen Carroll','TV','216-957-9553','Emp002'),('Order018','Agent028','Nicholas Marsh','TV','953-817-7647','Emp003'),('Order019','Agent022','Toni Davis','Phone','159-461-3385','Emp001'),('Order020','Agent038','Megan Castillo','Phone','664-296-3915','Emp001'),('Order021','Agent017','Karina Walker','Phone','498-605-8149','Emp001'),('Order022','Agent041','Matthew Cooper','High Speed Internet','357-858-3957','Emp003'),('Order023','Agent033','Brandon Hendrix','Phone','235-356-7417','Emp004'),('Order024','Agent002','Mark Cooper','High Speed Internet','697-138-5360','Emp003'),('Order025','Agent013','Virginia Lee','Phone','361-141-3057','Emp004'),('Order026','Agent011','Sandra Smith MD','High Speed Internet','172-462-3252','Emp001'),('Order027','Agent021','Alexis Duffy','High Speed Internet','200-266-6248','Emp002'),('Order028','Agent024','Michael Williams','TV','180-464-9782','Emp002'),('Order029','Agent035','Scott Mclean','Phone','273-929-2690','Emp004'),('Order030','Agent017','William Mullen','Phone','215-222-6857','Emp004'),('Order031','Agent018','Jeremy Howard','High Speed Internet','246-791-5628','Emp004'),('Order032','Agent006','Matthew Harrison','High Speed Internet','743-470-6514','Emp002'),('Order033','Agent042','Bryan Mills DDS','High Speed Internet','219-920-7702','Emp004'),('Order034','Agent009','Luis Fields','High Speed Internet','702-172-3724','Emp002'),('Order035','Agent026','Thomas Carey','Phone','252-874-2864','Emp003'),('Order036','Agent009','Derek Pollard','Phone','828-680-8103','Emp004'),('Order037','Agent042','Kyle Gentry','Phone','280-615-9793','Emp002'),('Order038','Agent043','Mrs. Allison Schwartz DVM','Phone','613-762-7801','Emp001'),('Order039','Agent043','Ashley Murphy','High Speed Internet','497-435-8561','Emp003'),('Order040','Agent043','Karen Webb','Phone','570-643-3093','Emp002'),('Order041','Agent009','Brittany Payne','TV','386-476-2713','Emp002'),('Order042','Agent042','Dr. Andrea Richards','High Speed Internet','890-470-9335','Emp003'),('Order043','Agent012','Leslie Hamilton','TV','652-772-4258','Emp003'),('Order044','Agent012','Gloria Wilson','High Speed Internet','796-947-4564','Emp002'),('Order045','Agent001','Tanya Salinas','High Speed Internet','233-579-4754','Emp001'),('Order046','Agent013','Anne Armstrong','Phone','656-217-9143','Emp004'),('Order047','Agent021','Adam Lee','High Speed Internet','912-797-5556','Emp002'),('Order048','Agent013','Lisa Thompson','High Speed Internet','192-703-8249','Emp003'),('Order049','Agent001','Gregory Brady','High Speed Internet','399-819-2064','Emp001'),('Order050','Agent003','Casey Johnson','Phone','982-444-2445','Emp002'),('Order051','Agent006','Amanda Russo','TV','325-280-6810','Emp002'),('Order052','Agent027','Cory Reynolds','Phone','546-606-7588','Emp003'),('Order053','Agent010','Ricky Espinoza','High Speed Internet','955-736-9657','Emp002'),('Order054','Agent001','Tracey Mitchell','High Speed Internet','543-886-2496','Emp002'),('Order055','Agent035','Charles Brown','Phone','204-767-7716','Emp001'),('Order056','Agent003','Zoe Fuller','Phone','184-562-4566','Emp003'),('Order057','Agent039','Amy Jones','TV','925-361-4758','Emp001'),('Order058','Agent009','Brian James','High Speed Internet','746-884-7748','Emp001'),('Order059','Agent014','Kyle Ruiz','High Speed Internet','880-800-2269','Emp002'),('Order060','Agent012','Bridget Smith','Phone','727-655-3126','Emp002'),('Order061','Agent037','Yolanda Walker','Phone','444-581-8087','Emp003'),('Order062','Agent016','Michael Hawkins','Phone','980-810-6661','Emp001'),('Order063','Agent016','Laura Carson','TV','267-494-9802','Emp002'),('Order064','Agent003','Daniel Patel','High Speed Internet','209-404-2857','Emp003'),('Order065','Agent037','Michael Riley','Phone','667-416-5106','Emp003'),('Order066','Agent041','Justin Tate','High Speed Internet','951-464-5980','Emp004'),('Order067','Agent032','Stephanie Nash','High Speed Internet','634-315-4817','Emp003'),('Order068','Agent015','Elizabeth Jacobs','High Speed Internet','140-851-9701','Emp001'),('Order069','Agent017','Kristi Knight MD','TV','227-325-8946','Emp003'),('Order070','Agent034','Aaron Ballard','Phone','952-569-9502','Emp003'),('Order071','Agent029','Joseph Jackson','High Speed Internet','694-508-1158','Emp004'),('Order072','Agent015','Dr. Mary Johnson','High Speed Internet','976-951-1482','Emp003'),('Order073','Agent015','Melissa Fisher MD','Phone','680-416-8620','Emp003'),('Order074','Agent025','Stephanie Foster','Phone','799-189-6941','Emp002'),('Order075','Agent006','Marilyn Ritter','TV','463-131-5484','Emp002'),('Order076','Agent020','Kenneth Moore','TV','614-858-3663','Emp002'),('Order077','Agent015','Donna Howard','TV','867-446-5125','Emp002'),('Order078','Agent024','Richard Cross','Phone','356-268-4454','Emp002'),('Order079','Agent023','Melissa Garcia','High Speed Internet','799-736-7887','Emp004'),('Order080','Agent033','Mindy Johnson','Phone','323-860-9571','Emp001'),('Order081','Agent041','Jacob Murray','Phone','189-184-7555','Emp003'),('Order082','Agent027','Amanda Bell','High Speed Internet','916-468-6959','Emp004'),('Order083','Agent029','Patricia Deleon','Phone','178-635-1792','Emp002'),('Order084','Agent039','Bethany Hall','High Speed Internet','569-360-2415','Emp002'),('Order085','Agent007','Kimberly Douglas','High Speed Internet','231-919-9134','Emp004'),('Order086','Agent002','Kenneth Barton','TV','260-412-3008','Emp001'),('Order087','Agent017','Brian Harrington DDS','High Speed Internet','891-863-7800','Emp003'),('Order088','Agent018','Derek Nguyen','Phone','788-262-2998','Emp001'),('Order089','Agent007','Christina Graham MD','Phone','390-977-3954','Emp003'),('Order090','Agent019','Tammy Owen','High Speed Internet','856-292-3032','Emp004'),('Order091','Agent039','Todd Moyer','Phone','211-758-6103','Emp003'),('Order092','Agent043','Daniel Webb','Phone','538-743-9318','Emp004'),('Order093','Agent032','Vincent Jones','Phone','777-887-8916','Emp003'),('Order094','Agent024','Laura Moore','High Speed Internet','233-886-3642','Emp001'),('Order095','Agent018','Charles Larson','TV','949-354-8871','Emp004'),('Order096','Agent027','John Patrick','TV','990-460-5261','Emp002'),('Order097','Agent014','Carla Walker','TV','152-418-9362','Emp002'),('Order098','Agent004','Nicholas Miller','TV','110-779-9509','Emp001'),('Order099','Agent001','Joseph Brown','High Speed Internet','640-997-2464','Emp003'),('Order100','Agent014','Randall Taylor','Phone','416-405-9216','Emp002');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary` (
  `EmployeeID` varchar(20) NOT NULL,
  `Payperiod` date DEFAULT NULL,
  `SalaryAmount` int DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`),
  CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `employee` (`EmployeeID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

LOCK TABLES `salary` WRITE;
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` VALUES ('Emp001','2025-03-20',1000),('Emp002','2025-03-20',1000),('Emp003','2025-03-20',1000),('Emp004','2025-03-20',1000);
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesagent`
--

DROP TABLE IF EXISTS `salesagent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesagent` (
  `AgentName` varchar(30) DEFAULT NULL,
  `AgentID` varchar(20) NOT NULL,
  `phonenumber` varchar(15) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Manager` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`AgentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesagent`
--

LOCK TABLES `salesagent` WRITE;
/*!40000 ALTER TABLE `salesagent` DISABLE KEYS */;
INSERT INTO `salesagent` VALUES ('Megan Caldwell','Agent001','418-644-6668',NULL,'tammy37@example.org','Megan Caldwell'),('James Bishop','Agent002','756-875-7885',NULL,'fergusonstephanie@example.org','James Bishop'),('Lisa Rogers','Agent003','298-621-3594',NULL,'robert48@example.org','Megan Caldwell'),('Douglas Hernandez','Agent004','784-238-7064',NULL,'uanderson@example.com','Douglas Hernandez'),('Aaron Smith','Agent005','201-978-1435',NULL,'campbelljustin@example.org','Douglas Hernandez'),('Phillip Reese','Agent006','352-265-6229',NULL,'vlyons@example.com','Phillip Reese'),('Dave Lewis','Agent007','586-923-7732',NULL,'vallen@example.net','Phillip Reese'),('David Gardner','Agent008','449-843-4705',NULL,'jeffpetersen@example.org','Phillip Reese'),('Thomas Anderson','Agent009','615-510-5936',NULL,'adamserika@example.net','Phillip Reese'),('Paul Reed','Agent010','660-468-5619',NULL,'alejandro21@example.net','Paul Reed'),('Zachary Mays','Agent011','310-503-1403',NULL,'dayandrea@example.net','James Bishop'),('Brittney Johnson','Agent012','389-688-1579',NULL,'jozimmerman@example.com','Megan Caldwell'),('Jill Petersen','Agent013','810-735-1667',NULL,'gmahoney@example.net','Paul Reed'),('Elizabeth Mcintyre','Agent014','914-571-4173',NULL,'duncantiffany@example.net','Paul Reed'),('Derek Gonzalez','Agent015','315-201-6274',NULL,'richardlopez@example.net','Phillip Reese'),('Katherine Perez','Agent016','193-888-1031',NULL,'diane46@example.net','Phillip Reese'),('Ryan Franklin','Agent017','537-238-5507',NULL,'williamscynthia@example.net','Megan Caldwell'),('Marcus Moore','Agent018','529-770-7534',NULL,'moorejesse@example.com','Phillip Reese'),('Stephanie Wheeler','Agent019','893-430-4413',NULL,'wintersamy@example.org','Megan Caldwell'),('Connie Anderson','Agent020','820-509-5086',NULL,'gjarvis@example.com','James Bishop'),('William Carter','Agent021','162-921-7398',NULL,'williamsjason@example.net','Phillip Reese'),('Patrick Hawkins','Agent022','430-762-1388',NULL,'lawrencediane@example.net','Paul Reed'),('Catherine Hall','Agent023','872-735-1131',NULL,'kristopher02@example.com','Phillip Reese'),('Stephen Robertson','Agent024','502-776-2050',NULL,'nancyhunter@example.com','Phillip Reese'),('Sara Le','Agent025','187-900-4811','0008-06-02','mcintyrescott@example.net','Douglas Hernandez'),('Richard Phillips','Agent026','294-457-5897',NULL,'ilynch@example.net','Megan Caldwell'),('Amber Abbott','Agent027','649-301-1714',NULL,'urasmussen@example.org','Paul Reed'),('Johnny Holt','Agent028','706-404-4753',NULL,'mjohnson@example.com','Phillip Reese'),('Tyrone Brown','Agent029','399-293-8351',NULL,'ethanbell@example.com','Douglas Hernandez'),('Mallory Reynolds','Agent030','353-926-1348',NULL,'bsmall@example.org','James Bishop'),('Anne Gillespie','Agent031','772-485-1180',NULL,'zcombs@example.org','Douglas Hernandez'),('James Alvarez','Agent032','880-568-4731',NULL,'ekennedy@example.org','Paul Reed'),('Ricky Ryan MD','Agent033','274-660-2099',NULL,'laurafuentes@example.com','Phillip Reese'),('Ronald Hunt','Agent034','943-515-9874','0002-07-07','sandraking@example.net','Phillip Reese'),('Miranda Krueger','Agent035','377-165-7283',NULL,'hughesmichael@example.org','Phillip Reese'),('Anthony Phillips','Agent036','233-801-5543','0008-12-05','davidfrench@example.org','Megan Caldwell'),('Daniel Hill','Agent037','222-751-5376',NULL,'jennifer95@example.org','Megan Caldwell'),('Jason Thornton','Agent038','648-716-7592',NULL,'joshua18@example.com','Megan Caldwell'),('Ronald Perez','Agent039','414-681-4205',NULL,'kaguilar@example.org','Douglas Hernandez'),('Donna Nelson','Agent040','724-925-8910',NULL,'jenkinsdouglas@example.net','Phillip Reese'),('Kimberly Watkins','Agent041','595-645-1912',NULL,'corey05@example.net','Paul Reed'),('Zachary French','Agent042','252-859-6126',NULL,'jason07@example.net','Phillip Reese'),('Valerie Osborne','Agent043','988-830-4501',NULL,'evansjustin@example.com','Paul Reed');
/*!40000 ALTER TABLE `salesagent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `AgentID` varchar(20) DEFAULT NULL,
  `Area` smallint DEFAULT NULL,
  `Manager` varchar(30) DEFAULT NULL,
  KEY `AgentID` (`AgentID`),
  CONSTRAINT `team_ibfk_1` FOREIGN KEY (`AgentID`) REFERENCES `salesagent` (`AgentID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES ('Agent027',4,'Paul Reed'),('Agent031',1,'Douglas Hernandez'),('Agent036',3,'Megan Caldwell'),('Agent012',3,'Megan Caldwell'),('Agent023',5,'Phillip Reese'),('Agent020',2,'James Bishop'),('Agent037',3,'Megan Caldwell'),('Agent007',5,'Phillip Reese'),('Agent008',5,'Phillip Reese'),('Agent015',5,'Phillip Reese'),('Agent040',5,'Phillip Reese'),('Agent005',1,'Douglas Hernandez'),('Agent014',4,'Paul Reed'),('Agent032',4,'Paul Reed'),('Agent002',2,'James Bishop'),('Agent038',3,'Megan Caldwell'),('Agent013',4,'Paul Reed'),('Agent028',5,'Phillip Reese'),('Agent016',5,'Phillip Reese'),('Agent041',4,'Paul Reed'),('Agent003',3,'Megan Caldwell'),('Agent030',2,'James Bishop'),('Agent018',5,'Phillip Reese'),('Agent001',3,'Megan Caldwell'),('Agent035',5,'Phillip Reese'),('Agent022',4,'Paul Reed'),('Agent010',4,'Paul Reed'),('Agent006',5,'Phillip Reese'),('Agent026',3,'Megan Caldwell'),('Agent033',5,'Phillip Reese'),('Agent034',5,'Phillip Reese'),('Agent039',1,'Douglas Hernandez'),('Agent017',3,'Megan Caldwell'),('Agent025',1,'Douglas Hernandez'),('Agent019',3,'Megan Caldwell'),('Agent024',5,'Phillip Reese'),('Agent009',5,'Phillip Reese'),('Agent029',1,'Douglas Hernandez'),('Agent043',4,'Paul Reed'),('Agent021',5,'Phillip Reese'),('Agent042',5,'Phillip Reese'),('Agent011',2,'James Bishop');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-21 19:24:20
