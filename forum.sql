-- MariaDB dump 10.19  Distrib 10.6.8-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: forum
-- ------------------------------------------------------
-- Server version	10.6.8-MariaDB-1:10.6.8+maria~bionic

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
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curso` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'Programação','Spring Boot'),(2,'Front-end','HTML 5'),(3,'Programação','Spring Boot'),(4,'Front-end','HTML 5'),(5,'Programação','Spring Boot'),(6,'Front-end','HTML 5');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pefil`
--

DROP TABLE IF EXISTS `pefil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pefil` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pefil`
--

LOCK TABLES `pefil` WRITE;
/*!40000 ALTER TABLE `pefil` DISABLE KEYS */;
INSERT INTO `pefil` VALUES (1,'ROLE_ALUNO'),(2,'ROLE_MODERADOR');
/*!40000 ALTER TABLE `pefil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resposta`
--

DROP TABLE IF EXISTS `resposta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resposta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `data_criacao` datetime DEFAULT NULL,
  `mensagem` varchar(255) DEFAULT NULL,
  `solucao` bit(1) DEFAULT NULL,
  `autor_id` bigint(20) DEFAULT NULL,
  `topico_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9999kvnmdq63ah7imctrl06r7` (`autor_id`),
  KEY `FKltuv9rkfjtlmn8b0rb3wdbjsv` (`topico_id`),
  CONSTRAINT `FK9999kvnmdq63ah7imctrl06r7` FOREIGN KEY (`autor_id`) REFERENCES `usuario` (`id`),
  CONSTRAINT `FKltuv9rkfjtlmn8b0rb3wdbjsv` FOREIGN KEY (`topico_id`) REFERENCES `topico` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resposta`
--

LOCK TABLES `resposta` WRITE;
/*!40000 ALTER TABLE `resposta` DISABLE KEYS */;
/*!40000 ALTER TABLE `resposta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topico`
--

DROP TABLE IF EXISTS `topico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topico` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `data_criacao` datetime DEFAULT NULL,
  `mensagem` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `autor_id` bigint(20) DEFAULT NULL,
  `curso_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsk04hscorwqdymnafg8882v64` (`autor_id`),
  KEY `FKcaaogjo0ynd54updie6kdpxd1` (`curso_id`),
  CONSTRAINT `FKcaaogjo0ynd54updie6kdpxd1` FOREIGN KEY (`curso_id`) REFERENCES `curso` (`id`),
  CONSTRAINT `FKsk04hscorwqdymnafg8882v64` FOREIGN KEY (`autor_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topico`
--

LOCK TABLES `topico` WRITE;
/*!40000 ALTER TABLE `topico` DISABLE KEYS */;
INSERT INTO `topico` VALUES (6,'2022-08-01 21:19:24','Texto da mensagem 2','NAO_RESPONDIDO','',NULL,1),(7,'2022-08-01 21:22:44','Texto da mensagem 2','NAO_RESPONDIDO','',NULL,1),(8,'2022-08-01 21:24:27','Texto da mensagem 2','NAO_RESPONDIDO','',NULL,1),(9,'2022-08-01 21:24:51','','NAO_RESPONDIDO','',NULL,1),(12,'2022-08-03 11:46:35','invalidando cache','NAO_RESPONDIDO','cache',NULL,1),(13,'2019-05-05 18:00:00','Erro ao criar projeto','NAO_RESPONDIDO','Dúvida',1,1),(14,'2019-05-05 19:00:00','Projeto não compila','NAO_RESPONDIDO','Dúvida 2',1,1),(15,'2019-05-05 20:00:00','Tag HTML','NAO_RESPONDIDO','Dúvida 3',1,2),(16,'2019-05-05 18:00:00','Erro ao criar projeto','NAO_RESPONDIDO','Dúvida',1,1),(17,'2019-05-05 19:00:00','Projeto não compila','NAO_RESPONDIDO','Dúvida 2',1,1),(18,'2019-05-05 20:00:00','Tag HTML','NAO_RESPONDIDO','Dúvida 3',1,2);
/*!40000 ALTER TABLE `topico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'aluno@email.com','Aluno','$2a$10$bv7pAXo5DqDeTD4XiJcyzOnayovsXG4CAvXWqleaVFHC7tmzse6ou'),(6,'moderador@email.com','Moderador','$2a$10$1uZ0KRqXNDluKOmDNJRMLu3.bP9Wbzyw9yW3oLy981q8M9FxtsMxG');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_perfis`
--

DROP TABLE IF EXISTS `usuario_perfis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_perfis` (
  `usuario_id` bigint(20) NOT NULL,
  `perfis_id` bigint(20) NOT NULL,
  KEY `FK5aav1lk15qb7a09v5hlb8r1h9` (`perfis_id`),
  KEY `FKs91tgiyagbilt959wbufiphgc` (`usuario_id`),
  CONSTRAINT `FK5aav1lk15qb7a09v5hlb8r1h9` FOREIGN KEY (`perfis_id`) REFERENCES `pefil` (`id`),
  CONSTRAINT `FKs91tgiyagbilt959wbufiphgc` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_perfis`
--

LOCK TABLES `usuario_perfis` WRITE;
/*!40000 ALTER TABLE `usuario_perfis` DISABLE KEYS */;
INSERT INTO `usuario_perfis` VALUES (1,1),(6,2);
/*!40000 ALTER TABLE `usuario_perfis` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-25 11:00:06
