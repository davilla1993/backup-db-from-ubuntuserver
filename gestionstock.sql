-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: 31.220.21.123    Database: gestionstock
-- ------------------------------------------------------
-- Server version	8.0.30-0ubuntu0.20.04.2

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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `creation_date` datetime(6) NOT NULL,
  `last_modified_date` datetime(6) DEFAULT NULL,
  `code_article` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `id_entreprise` int DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `prix_unitaire_ht` decimal(19,2) DEFAULT NULL,
  `prix_unitaire_ttc` decimal(19,2) DEFAULT NULL,
  `taux_tva` decimal(19,2) DEFAULT NULL,
  `id_category` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgnjpbw0n9or9xgp7emr8ip4r7` (`id_category`),
  CONSTRAINT `FKgnjpbw0n9or9xgp7emr8ip4r7` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `creation_date` datetime(6) NOT NULL,
  `last_modified_date` datetime(6) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `id_entreprise` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `creation_date` datetime(6) NOT NULL,
  `last_modified_date` datetime(6) DEFAULT NULL,
  `adresse1` varchar(255) DEFAULT NULL,
  `adresse2` varchar(255) DEFAULT NULL,
  `code_postale` varchar(255) DEFAULT NULL,
  `id_entreprise` int DEFAULT NULL,
  `pays` varchar(255) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `num_tel` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commande_client`
--

DROP TABLE IF EXISTS `commande_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commande_client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `creation_date` datetime(6) NOT NULL,
  `last_modified_date` datetime(6) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `date_commande` datetime(6) DEFAULT NULL,
  `etat_commande` int DEFAULT NULL,
  `id_entreprise` int DEFAULT NULL,
  `id_client` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKauhkp3uob3kt6qfu532budyxv` (`id_client`),
  CONSTRAINT `FKauhkp3uob3kt6qfu532budyxv` FOREIGN KEY (`id_client`) REFERENCES `client` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commande_client`
--

LOCK TABLES `commande_client` WRITE;
/*!40000 ALTER TABLE `commande_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `commande_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commande_fournisseur`
--

DROP TABLE IF EXISTS `commande_fournisseur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commande_fournisseur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `creation_date` datetime(6) NOT NULL,
  `last_modified_date` datetime(6) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `date_commande` datetime(6) DEFAULT NULL,
  `etat_commande` int DEFAULT NULL,
  `id_entreprise` int DEFAULT NULL,
  `id_fournisseur` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6av6eig8x3wtg5cbptytie11a` (`id_fournisseur`),
  CONSTRAINT `FK6av6eig8x3wtg5cbptytie11a` FOREIGN KEY (`id_fournisseur`) REFERENCES `fournisseur` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commande_fournisseur`
--

LOCK TABLES `commande_fournisseur` WRITE;
/*!40000 ALTER TABLE `commande_fournisseur` DISABLE KEYS */;
/*!40000 ALTER TABLE `commande_fournisseur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entreprise`
--

DROP TABLE IF EXISTS `entreprise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entreprise` (
  `id` int NOT NULL AUTO_INCREMENT,
  `creation_date` datetime(6) NOT NULL,
  `last_modified_date` datetime(6) DEFAULT NULL,
  `adresse1` varchar(255) DEFAULT NULL,
  `adresse2` varchar(255) DEFAULT NULL,
  `code_postale` varchar(255) DEFAULT NULL,
  `id_entreprise` int DEFAULT NULL,
  `pays` varchar(255) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `code_fiscal` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `num_tel` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `site_web` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entreprise`
--

LOCK TABLES `entreprise` WRITE;
/*!40000 ALTER TABLE `entreprise` DISABLE KEYS */;
/*!40000 ALTER TABLE `entreprise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fournisseur`
--

DROP TABLE IF EXISTS `fournisseur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fournisseur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `creation_date` datetime(6) NOT NULL,
  `last_modified_date` datetime(6) DEFAULT NULL,
  `adresse1` varchar(255) DEFAULT NULL,
  `adresse2` varchar(255) DEFAULT NULL,
  `code_postale` varchar(255) DEFAULT NULL,
  `id_entreprise` int DEFAULT NULL,
  `pays` varchar(255) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `num_tel` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fournisseur`
--

LOCK TABLES `fournisseur` WRITE;
/*!40000 ALTER TABLE `fournisseur` DISABLE KEYS */;
/*!40000 ALTER TABLE `fournisseur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ligne_commande_client`
--

DROP TABLE IF EXISTS `ligne_commande_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ligne_commande_client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `creation_date` datetime(6) NOT NULL,
  `last_modified_date` datetime(6) DEFAULT NULL,
  `id_entreprise` int DEFAULT NULL,
  `prix_unitaire` decimal(19,2) DEFAULT NULL,
  `quantite` decimal(19,2) DEFAULT NULL,
  `id_article` int DEFAULT NULL,
  `id_commande_client` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrb7qbc42dsrt66nkp9uqpslf8` (`id_article`),
  KEY `FKtmlda3sbya50yx5n0ayhk3i4c` (`id_commande_client`),
  CONSTRAINT `FKrb7qbc42dsrt66nkp9uqpslf8` FOREIGN KEY (`id_article`) REFERENCES `article` (`id`),
  CONSTRAINT `FKtmlda3sbya50yx5n0ayhk3i4c` FOREIGN KEY (`id_commande_client`) REFERENCES `commande_client` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ligne_commande_client`
--

LOCK TABLES `ligne_commande_client` WRITE;
/*!40000 ALTER TABLE `ligne_commande_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `ligne_commande_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ligne_commande_fournisseur`
--

DROP TABLE IF EXISTS `ligne_commande_fournisseur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ligne_commande_fournisseur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `creation_date` datetime(6) NOT NULL,
  `last_modified_date` datetime(6) DEFAULT NULL,
  `id_entreprise` int DEFAULT NULL,
  `prix_unitaire` decimal(19,2) DEFAULT NULL,
  `quantite` decimal(19,2) DEFAULT NULL,
  `id_article` int DEFAULT NULL,
  `id_commande_fournisseur` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8g7s1rljp4jfxgcmstvprdsdb` (`id_article`),
  KEY `FK1eiw96estmkapetg6k1m2orkm` (`id_commande_fournisseur`),
  CONSTRAINT `FK1eiw96estmkapetg6k1m2orkm` FOREIGN KEY (`id_commande_fournisseur`) REFERENCES `commande_fournisseur` (`id`),
  CONSTRAINT `FK8g7s1rljp4jfxgcmstvprdsdb` FOREIGN KEY (`id_article`) REFERENCES `article` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ligne_commande_fournisseur`
--

LOCK TABLES `ligne_commande_fournisseur` WRITE;
/*!40000 ALTER TABLE `ligne_commande_fournisseur` DISABLE KEYS */;
/*!40000 ALTER TABLE `ligne_commande_fournisseur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ligne_vente`
--

DROP TABLE IF EXISTS `ligne_vente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ligne_vente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `creation_date` datetime(6) NOT NULL,
  `last_modified_date` datetime(6) DEFAULT NULL,
  `id_entreprise` int DEFAULT NULL,
  `prix_unitaire` decimal(19,2) DEFAULT NULL,
  `quantite` decimal(19,2) DEFAULT NULL,
  `id_article` int DEFAULT NULL,
  `id_vente` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqbtqtompc4pbg9q839d2npc` (`id_article`),
  KEY `FK6ces1uk20ws6xhnio0334trc` (`id_vente`),
  CONSTRAINT `FK6ces1uk20ws6xhnio0334trc` FOREIGN KEY (`id_vente`) REFERENCES `ventes` (`id`),
  CONSTRAINT `FKqbtqtompc4pbg9q839d2npc` FOREIGN KEY (`id_article`) REFERENCES `article` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ligne_vente`
--

LOCK TABLES `ligne_vente` WRITE;
/*!40000 ALTER TABLE `ligne_vente` DISABLE KEYS */;
/*!40000 ALTER TABLE `ligne_vente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mvt_stk`
--

DROP TABLE IF EXISTS `mvt_stk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mvt_stk` (
  `id` int NOT NULL AUTO_INCREMENT,
  `creation_date` datetime(6) NOT NULL,
  `last_modified_date` datetime(6) DEFAULT NULL,
  `date_mvt` datetime(6) DEFAULT NULL,
  `id_entreprise` int DEFAULT NULL,
  `quantite` decimal(19,2) DEFAULT NULL,
  `type_mvt` int DEFAULT NULL,
  `id_article` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK11nt4550nnro1dvupx0h6bs7v` (`id_article`),
  CONSTRAINT `FK11nt4550nnro1dvupx0h6bs7v` FOREIGN KEY (`id_article`) REFERENCES `article` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mvt_stk`
--

LOCK TABLES `mvt_stk` WRITE;
/*!40000 ALTER TABLE `mvt_stk` DISABLE KEYS */;
/*!40000 ALTER TABLE `mvt_stk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `creation_date` datetime(6) NOT NULL,
  `last_modified_date` datetime(6) DEFAULT NULL,
  `id_entreprise` int DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `id_utilisateur` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnj2ecd8t8i7wmxfrl1mq8gql3` (`id_utilisateur`),
  CONSTRAINT `FKnj2ecd8t8i7wmxfrl1mq8gql3` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utilisateur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `creation_date` datetime(6) NOT NULL,
  `last_modified_date` datetime(6) DEFAULT NULL,
  `adresse1` varchar(255) DEFAULT NULL,
  `adresse2` varchar(255) DEFAULT NULL,
  `code_postale` varchar(255) DEFAULT NULL,
  `id_entreprise` int DEFAULT NULL,
  `pays` varchar(255) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `date_de_naissance` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mot_de_passe` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlmpv6937sit6tiqf7bbuycmby` (`id_entreprise`),
  CONSTRAINT `FKlmpv6937sit6tiqf7bbuycmby` FOREIGN KEY (`id_entreprise`) REFERENCES `entreprise` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateur`
--

LOCK TABLES `utilisateur` WRITE;
/*!40000 ALTER TABLE `utilisateur` DISABLE KEYS */;
/*!40000 ALTER TABLE `utilisateur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventes`
--

DROP TABLE IF EXISTS `ventes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `creation_date` datetime(6) NOT NULL,
  `last_modified_date` datetime(6) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `commentaire` varchar(255) DEFAULT NULL,
  `date_vente` datetime(6) DEFAULT NULL,
  `id_entreprise` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventes`
--

LOCK TABLES `ventes` WRITE;
/*!40000 ALTER TABLE `ventes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ventes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-18 13:11:06
