CREATE DATABASE  IF NOT EXISTS `Hotelista_DB` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `Hotelista_DB`;
-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: Hotelista_DB
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.20.04.2

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
-- Table structure for table `Acomodacoes`
--

DROP TABLE IF EXISTS `Acomodacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Acomodacoes` (
  `idAcomodacoes` int NOT NULL AUTO_INCREMENT,
  `quartos` varchar(50) DEFAULT NULL,
  `preco` decimal(10,2) unsigned DEFAULT NULL,
  PRIMARY KEY (`idAcomodacoes`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Acomodacoes`
--

LOCK TABLES `Acomodacoes` WRITE;
/*!40000 ALTER TABLE `Acomodacoes` DISABLE KEYS */;
INSERT INTO `Acomodacoes` VALUES (1,'Quarto Simples',100.00),(2,'Quarto Médio',200.00),(3,'Quarto de Luxo',500.00);
/*!40000 ALTER TABLE `Acomodacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Consumo`
--

DROP TABLE IF EXISTS `Consumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Consumo` (
  `idConsumo` int NOT NULL AUTO_INCREMENT,
  `consumiveis` varchar(45) DEFAULT NULL,
  `localConsumo` varchar(20) NOT NULL,
  `preco` decimal(10,2) unsigned DEFAULT NULL,
  PRIMARY KEY (`idConsumo`),
  UNIQUE KEY `idConsumo_UNIQUE` (`idConsumo`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Consumo`
--

LOCK TABLES `Consumo` WRITE;
/*!40000 ALTER TABLE `Consumo` DISABLE KEYS */;
INSERT INTO `Consumo` VALUES (1,'Cerveja Lata','Frigobar',8.00),(2,'Água 300ml','Frigobar',5.00),(3,'Refrigerante Lata','Frigobar',7.00),(4,'Barra de Chocolate','Cesta',12.00),(5,'Batata Chips','Cesta',7.00),(6,'Amendoim','Cesta',9.00),(7,'Café','Bar',4.00),(8,'Pão de Queijo','Bar',17.00),(9,'Lanche','Bar',20.00),(10,'Almoço','Bar',40.00),(11,'Jantar','Bar',50.00),(12,'Cerveja Litro','Bar',15.00),(13,'Refrigerante Litro','Bar',16.00);
/*!40000 ALTER TABLE `Consumo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reservas`
--

DROP TABLE IF EXISTS `Reservas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reservas` (
  `idReservas` int NOT NULL AUTO_INCREMENT,
  `data_checkin` datetime NOT NULL,
  `data_checkout` datetime NOT NULL,
  `qtd_pessoas` int unsigned NOT NULL,
  `valor_total_reserva` decimal(10,2) unsigned NOT NULL,
  `idUsuario` int NOT NULL,
  `idAcomodacoes` int NOT NULL,
  `idServicos` int NOT NULL,
  `idConsumo` int NOT NULL,
  PRIMARY KEY (`idReservas`),
  UNIQUE KEY `idReservas_UNIQUE` (`idReservas`),
  KEY `FK_idUsuario` (`idUsuario`),
  KEY `FK_idAcomodacoes` (`idAcomodacoes`),
  KEY `FK_idServicos` (`idServicos`),
  KEY `FK_idConsumo` (`idConsumo`),
  CONSTRAINT `FK_idAcomodacoes` FOREIGN KEY (`idAcomodacoes`) REFERENCES `Acomodacoes` (`idAcomodacoes`),
  CONSTRAINT `FK_idConsumo` FOREIGN KEY (`idConsumo`) REFERENCES `Consumo` (`idConsumo`),
  CONSTRAINT `FK_idServicos` FOREIGN KEY (`idServicos`) REFERENCES `Servicos` (`idServicos`),
  CONSTRAINT `FK_idUsuario` FOREIGN KEY (`idUsuario`) REFERENCES `Usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reservas`
--

LOCK TABLES `Reservas` WRITE;
/*!40000 ALTER TABLE `Reservas` DISABLE KEYS */;
/*!40000 ALTER TABLE `Reservas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Servicos`
--

DROP TABLE IF EXISTS `Servicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Servicos` (
  `idServicos` int NOT NULL AUTO_INCREMENT,
  `servicos` varchar(45) DEFAULT NULL,
  `preco` decimal(10,2) unsigned NOT NULL,
  PRIMARY KEY (`idServicos`),
  UNIQUE KEY `idServicos_UNIQUE` (`idServicos`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Servicos`
--

LOCK TABLES `Servicos` WRITE;
/*!40000 ALTER TABLE `Servicos` DISABLE KEYS */;
INSERT INTO `Servicos` VALUES (1,'Pacote Streaming',80.00),(2,'Lavanderia',40.00),(3,'Cofre',20.00),(4,'Limpeza Diária',15.00),(5,'Hotelzinho Pet',50.00);
/*!40000 ALTER TABLE `Servicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuario`
--

DROP TABLE IF EXISTS `Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuario` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `role` varchar(11) NOT NULL,
  `email` varchar(80) NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `dataCreated` datetime NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `data_nascimento` date NOT NULL,
  `nacionalidade` varchar(50) NOT NULL,
  `genero` varchar(45) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `telefone_UNIQUE` (`telefone`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuario`
--

LOCK TABLES `Usuario` WRITE;
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;
INSERT INTO `Usuario` VALUES (1,'Zenith Grace','usuario','grace.zenith@mail.com',1,'87548375sdc','2023-02-20 13:16:34','909099878','2000-01-18','Brasileiro','feminino','Rua das Graças'),(4,'Maria Antonieta de Jesus','hospede','antonieta.maria@mail.com',1,'98731122347ss','2023-04-01 11:16:34','99999999900','1900-01-18','Brasileiro','feminino','Rua do Passado Belo'),(5,'Eduardo Freitas','usuario','freitas.eduardo@mail.com',0,'987854873ip','2023-02-11 22:16:34','00999999900','2000-09-20','Brasileiro','masculino','Rua Visconde Roxo'),(6,'Vincenzo Cassino','hospede','cassino.vincenzo@mail.com',1,'987854hcieip','2023-02-16 10:16:34','00909999900','1990-12-20','Brasileiro','masculino','Rua Del Gato'),(8,'Carolina Alves Souza','usuario','souza.carolina@mail.com',1,'980854hcieip','2023-02-15 11:16:34','00909099900','1990-06-30','Brasileiro','feminino','Rua Descida da Ladeira'),(9,'Enrico de Alves Freitas','usuario','alves.enrico@mail.com',1,'980804nhcieip','2023-02-15 11:16:34','90909099900','1999-01-08','Brasileiro','masculino','Rua De Frente a Praia'),(10,'zenith controller','usuario','controller.zenith@mail.com',0,'897485947hs','2023-02-15 11:16:34','00999099900','1990-06-30','Brasileiro','feminino','Rua da Descida');
/*!40000 ALTER TABLE `Usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avaliacoes`
--

DROP TABLE IF EXISTS `avaliacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avaliacoes` (
  `idAvaliacoes` int NOT NULL AUTO_INCREMENT,
  `dataAvaliacao` datetime NOT NULL,
  `pontuacao` varchar(10) NOT NULL,
  `descricao` longtext NOT NULL,
  `idUsuario` int NOT NULL,
  PRIMARY KEY (`idAvaliacoes`),
  KEY `FK_idUsuarioAvaliacao` (`idUsuario`),
  CONSTRAINT `FK_idUsuarioAvaliacao` FOREIGN KEY (`idUsuario`) REFERENCES `Usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avaliacoes`
--

LOCK TABLES `avaliacoes` WRITE;
/*!40000 ALTER TABLE `avaliacoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `avaliacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `idfuncionario` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(45) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `atividade` varchar(15) NOT NULL,
  `ferias` tinyint(1) DEFAULT NULL,
  `afastamento_medico` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idfuncionario`),
  UNIQUE KEY `codigo_UNIQUE` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'Hotelista_DB'
--

--
-- Dumping routines for database 'Hotelista_DB'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-02 10:09:57
