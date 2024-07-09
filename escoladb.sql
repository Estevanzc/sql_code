CREATE DATABASE  IF NOT EXISTS `escoladb` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `escoladb`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: escoladb
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
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `Matricula` int NOT NULL,
  `nome` varchar(250) NOT NULL,
  `CPF` varchar(15) NOT NULL,
  `DataNasc` date NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Endereco` varchar(200) NOT NULL,
  `Numero` varchar(20) NOT NULL,
  `Complemento` varchar(50) DEFAULT NULL,
  `Telefone` varchar(20) NOT NULL,
  `idCidade` int DEFAULT NULL,
  PRIMARY KEY (`Matricula`),
  KEY `idCidade` (`idCidade`),
  CONSTRAINT `alunos_ibfk_1` FOREIGN KEY (`idCidade`) REFERENCES `cidades` (`idCidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'Ronaldo','4567897654','2024-03-12','ronaldo@gmail.com','Wall Street 0080','5554992893759','random_complement','98765678965',6),(2,'Bob','9876543210','2008-12-05','bob@example.com','456 Elm Street','555-987-6543','Suite 200','1234567890',7),(3,'Charlie','2345678901','1988-03-25','charlie@example.com','789 Oak Avenue','555-345-6789','Unit 303','2345678901',8),(4,'David','3456789012','1992-08-10','david@example.com','987 Pine Street','555-876-5432','Floor 4','3456789012',9),(5,'Eve','4567890123','1983-12-05','eve@example.com','654 Cedar Street','555-234-5678','Block A','4567890123',10);
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alunos_turmas`
--

DROP TABLE IF EXISTS `alunos_turmas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos_turmas` (
  `idTurma` int NOT NULL,
  `Matricula` int NOT NULL,
  PRIMARY KEY (`idTurma`,`Matricula`),
  KEY `Matricula` (`Matricula`),
  CONSTRAINT `alunos_turmas_ibfk_1` FOREIGN KEY (`idTurma`) REFERENCES `turmas` (`idTurma`),
  CONSTRAINT `alunos_turmas_ibfk_2` FOREIGN KEY (`Matricula`) REFERENCES `alunos` (`Matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos_turmas`
--

LOCK TABLES `alunos_turmas` WRITE;
/*!40000 ALTER TABLE `alunos_turmas` DISABLE KEYS */;
INSERT INTO `alunos_turmas` VALUES (1,1),(2,2),(3,3),(4,4),(5,5);
/*!40000 ALTER TABLE `alunos_turmas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `area` (
  `idArea` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(250) NOT NULL,
  PRIMARY KEY (`idArea`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'Informática Geral'),(2,'Informática Geral'),(3,'random_description'),(4,'random_description'),(5,'random_description');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidades`
--

DROP TABLE IF EXISTS `cidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidades` (
  `idCidade` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(250) NOT NULL,
  `UF` char(2) NOT NULL,
  PRIMARY KEY (`idCidade`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidades`
--

LOCK TABLES `cidades` WRITE;
/*!40000 ALTER TABLE `cidades` DISABLE KEYS */;
INSERT INTO `cidades` VALUES (6,'Bento Gonçalves','43'),(7,'Alecrim','43'),(8,'Independência','43'),(9,'Novo Machado','43'),(10,'Santo Cristo','43');
/*!40000 ALTER TABLE `cidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diciplinas`
--

DROP TABLE IF EXISTS `diciplinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diciplinas` (
  `idDiciplina` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(250) NOT NULL,
  PRIMARY KEY (`idDiciplina`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diciplinas`
--

LOCK TABLES `diciplinas` WRITE;
/*!40000 ALTER TABLE `diciplinas` DISABLE KEYS */;
INSERT INTO `diciplinas` VALUES (1,'math'),(2,'web programmation'),(3,'database'),(4,'ADS'),(5,'physis');
/*!40000 ALTER TABLE `diciplinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diciplinas_turmas`
--

DROP TABLE IF EXISTS `diciplinas_turmas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diciplinas_turmas` (
  `idTurma` int NOT NULL,
  `idDiciplina` int NOT NULL,
  PRIMARY KEY (`idTurma`,`idDiciplina`),
  KEY `idDiciplina` (`idDiciplina`),
  CONSTRAINT `diciplinas_turmas_ibfk_1` FOREIGN KEY (`idTurma`) REFERENCES `turmas` (`idTurma`),
  CONSTRAINT `diciplinas_turmas_ibfk_2` FOREIGN KEY (`idDiciplina`) REFERENCES `diciplinas` (`idDiciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diciplinas_turmas`
--

LOCK TABLES `diciplinas_turmas` WRITE;
/*!40000 ALTER TABLE `diciplinas_turmas` DISABLE KEYS */;
INSERT INTO `diciplinas_turmas` VALUES (1,1),(2,2),(3,3),(4,4),(5,5);
/*!40000 ALTER TABLE `diciplinas_turmas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professores`
--

DROP TABLE IF EXISTS `professores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professores` (
  `SIAPE` int NOT NULL,
  `nome` varchar(250) NOT NULL,
  `CPF` varchar(15) NOT NULL,
  `DataNasc` date NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Endereco` varchar(200) NOT NULL,
  `Numero` varchar(20) NOT NULL,
  `Complemento` varchar(50) DEFAULT NULL,
  `Telefone` varchar(20) NOT NULL,
  `idCidade` int DEFAULT NULL,
  `idArea` int DEFAULT NULL,
  PRIMARY KEY (`SIAPE`),
  KEY `idCidade` (`idCidade`),
  KEY `idArea` (`idArea`),
  CONSTRAINT `professores_ibfk_1` FOREIGN KEY (`idCidade`) REFERENCES `cidades` (`idCidade`),
  CONSTRAINT `professores_ibfk_2` FOREIGN KEY (`idArea`) REFERENCES `area` (`idArea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professores`
--

LOCK TABLES `professores` WRITE;
/*!40000 ALTER TABLE `professores` DISABLE KEYS */;
INSERT INTO `professores` VALUES (1,'Ronaldo','4567897654','2024-03-12','ronaldo@gmail.com','Wall Street 0080','5554992893759','random_complement','98765678965',6,1),(2,'Bob','9876543210','1985-10-20','bob@example.com','456 Elm Street','555-987-6543','Suite 200','1234567890',7,2),(3,'Charlie','2345678901','1988-03-25','charlie@example.com','789 Oak Avenue','555-345-6789','Unit 303','2345678901',8,3),(4,'David','3456789012','1992-08-10','david@example.com','987 Pine Street','555-876-5432','Floor 4','3456789012',9,4),(5,'Eve','4567890123','1983-12-05','eve@example.com','654 Cedar Street','555-234-5678','Block A','4567890123',10,5);
/*!40000 ALTER TABLE `professores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turmas`
--

DROP TABLE IF EXISTS `turmas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turmas` (
  `idTurma` int NOT NULL AUTO_INCREMENT,
  `turma` varchar(100) NOT NULL,
  `ano` char(4) NOT NULL,
  PRIMARY KEY (`idTurma`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turmas`
--

LOCK TABLES `turmas` WRITE;
/*!40000 ALTER TABLE `turmas` DISABLE KEYS */;
INSERT INTO `turmas` VALUES (1,'1_info','2024'),(2,'2_info','2023'),(3,'3_info','2022'),(4,'4_info','2021'),(5,'5_info','2020');
/*!40000 ALTER TABLE `turmas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-08 10:47:51
