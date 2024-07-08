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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-07 21:41:37
