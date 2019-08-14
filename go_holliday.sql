-- MySQL dump 10.16  Distrib 10.1.35-MariaDB, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: go_holliday
-- ------------------------------------------------------
-- Server version	10.1.35-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hiking` tinyint(1) NOT NULL DEFAULT '0',
  `dancing` tinyint(1) NOT NULL DEFAULT '0',
  `disco` tinyint(1) NOT NULL DEFAULT '0',
  `restaurant` tinyint(1) NOT NULL DEFAULT '0',
  `plage` tinyint(1) NOT NULL DEFAULT '0',
  `bar` tinyint(1) NOT NULL DEFAULT '0',
  `spa` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (210,1,0,1,1,1,1,1),(225,1,1,1,1,1,1,1),(226,0,0,0,0,0,0,0),(227,0,0,0,0,0,0,0),(228,0,0,0,0,0,0,0),(229,0,1,1,1,0,0,0),(230,0,0,0,0,0,0,0),(231,0,0,0,0,0,0,0),(232,0,1,0,0,0,0,0);
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `annonces`
--

DROP TABLE IF EXISTS `annonces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `annonces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pays` tinyint(4) NOT NULL,
  `id_habitat` tinyint(4) DEFAULT NULL,
  `id_type_vacances` varchar(20) DEFAULT NULL,
  `id_range_price_announce` int(11) NOT NULL,
  `id_sport` int(11) NOT NULL,
  `id_activity` int(11) NOT NULL,
  `id_announces_address` int(11) NOT NULL,
  `id_commoditer_announces` int(11) NOT NULL,
  `id_utilisateurs` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `sub_title` varchar(200) NOT NULL,
  `start_saison` varchar(15) NOT NULL,
  `end_saison` varchar(15) NOT NULL,
  `vues` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL,
  `user_validate` tinyint(1) NOT NULL DEFAULT '0',
  `admin_validate` tinyint(1) NOT NULL DEFAULT '0',
  `create_date` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `annonces`
--

LOCK TABLES `annonces` WRITE;
/*!40000 ALTER TABLE `annonces` DISABLE KEYS */;
INSERT INTO `annonces` VALUES (210,1,2,'3',210,210,210,210,210,1,'testtata','test sub','02/08/2019','31/09/2019',1526,0,1,0,'28/01/2019'),(225,1,3,'2,3',225,225,225,225,225,1,'Premi&egrave;re annonce','Celle ci fait office d\'alpha test','09/08/2019','20/08/2019',0,0,1,1,'02/08/2019'),(229,1,5,'1,2,3',229,229,229,229,229,1,'aller deuxieme test','on va voir','01/04/2019','30/09/2019',0,0,1,0,'05/08/2019'),(232,1,4,'2,3',232,232,232,232,232,1,'testestetes','teststes','14/08/2019','13/09/2019',0,0,0,0,'13/08/2019');
/*!40000 ALTER TABLE `annonces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announces_address`
--

DROP TABLE IF EXISTS `announces_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announces_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address_lieux_dit` varchar(50) NOT NULL,
  `address_rue` varchar(50) NOT NULL,
  `address_numero` varchar(20) NOT NULL,
  `address_localite` varchar(50) NOT NULL,
  `address_zip_code` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announces_address`
--

LOCK TABLES `announces_address` WRITE;
/*!40000 ALTER TABLE `announces_address` DISABLE KEYS */;
INSERT INTO `announces_address` VALUES (210,'Camping perroquet','rue des dunes','1','bray-dunes','5900'),(225,'Camping perroquet','rue des dunes','1','bray-dunes','5900'),(226,'','','','',''),(227,'','','','',''),(228,'','','','',''),(229,'camping perroquet','rue des dunes','1','Bray-Dunes','59123'),(230,'test','test','1','test','6567'),(231,'','','','',''),(232,'test','tst','tet','tetet','6567');
/*!40000 ALTER TABLE `announces_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avis_on_annonces`
--

DROP TABLE IF EXISTS `avis_on_annonces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avis_on_annonces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_annonces` int(11) NOT NULL,
  `create_date` varchar(25) NOT NULL,
  `login_published` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avis_on_annonces`
--

LOCK TABLES `avis_on_annonces` WRITE;
/*!40000 ALTER TABLE `avis_on_annonces` DISABLE KEYS */;
INSERT INTO `avis_on_annonces` VALUES (1,1,'20/01/2019','evengyl','C\'est le premier avis du site, j\'espère qu\'il sera bien foutu et que ça marchera',1),(2,1,'21/01/2019','evengyl','C\'est le premier avis du site, j\'espère qu\'il sera bien foutu et que ça marchera en fait non c\'est le deuxieme',1),(3,1,'25/01/2019','evengyl','C\'est le troisemeavis du site, j\'espère qu\'il sera bien foutu et que ça marchera',1),(4,1,'22/02/2019','evengyl','C\'est le quatriemeavis du site, j\'espère qu\'il sera bien foutu et que ça marchera ',1),(5,2,'20/01/2019','evengyl','C\'est le premier avis du site, j\'espère qu\'il sera bien foutu et que ça marchera',1),(6,2,'21/01/2019','evengyl','C\'est le premier avis du site, j\'espère qu\'il sera bien foutu et que ça marchera en fait non c\'est le deuxieme',1),(7,2,'25/01/2019','evengyl','C\'est le troisemeavis du site, j\'espère qu\'il sera bien foutu et que ça marchera',1),(8,2,'22/02/2019','evengyl','C\'est le quatriemeavis du site, j\'espère qu\'il sera bien foutu et que ça marchera ',1),(9,3,'20/01/2019','evengyl','C\'est le premier avis du site, j\'espère qu\'il sera bien foutu et que ça marchera',1),(10,3,'21/01/2019','evengyl','C\'est le premier avis du site, j\'espère qu\'il sera bien foutu et que ça marchera en fait non c\'est le deuxieme',1),(11,3,'25/01/2019','evengyl','C\'est le troisemeavis du site, j\'espère qu\'il sera bien foutu et que ça marchera',1),(12,3,'22/02/2019','evengyl','C\'est le quatriemeavis du site, j\'espère qu\'il sera bien foutu et que ça marchera ',1),(13,4,'20/01/2019','evengyl','C\'est le premier avis du site, j\'espère qu\'il sera bien foutu et que ça marchera',1),(14,4,'21/01/2019','evengyl','C\'est le premier avis du site, j\'espère qu\'il sera bien foutu et que ça marchera en fait non c\'est le deuxieme',1),(15,4,'25/01/2019','evengyl','C\'est le troisemeavis du site, j\'espère qu\'il sera bien foutu et que ça marchera',1),(16,4,'22/02/2019','evengyl','C\'est le quatriemeavis du site, j\'espère qu\'il sera bien foutu et que ça marchera ',1);
/*!40000 ALTER TABLE `avis_on_annonces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commoditer_announces`
--

DROP TABLE IF EXISTS `commoditer_announces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commoditer_announces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pet` tinyint(1) NOT NULL DEFAULT '0',
  `parking` tinyint(1) NOT NULL DEFAULT '0',
  `handicap` tinyint(1) NOT NULL DEFAULT '0',
  `max_personn` tinyint(4) NOT NULL DEFAULT '1',
  `caution` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commoditer_announces`
--

LOCK TABLES `commoditer_announces` WRITE;
/*!40000 ALTER TABLE `commoditer_announces` DISABLE KEYS */;
INSERT INTO `commoditer_announces` VALUES (210,1,1,1,15,1500),(225,1,1,1,15,1500),(226,0,0,0,1,0),(227,0,0,0,1,0),(228,0,0,0,1,0),(229,0,0,0,6,300),(230,0,0,0,1,0),(231,0,0,0,1,0),(232,0,0,0,1,0);
/*!40000 ALTER TABLE `commoditer_announces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `date_annonces`
--

DROP TABLE IF EXISTS `date_annonces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `date_annonces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `prix` smallint(6) NOT NULL DEFAULT '0',
  `id_annonces` int(11) NOT NULL,
  `state` varchar(20) NOT NULL DEFAULT 'waiting',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `date_annonces`
--

LOCK TABLES `date_annonces` WRITE;
/*!40000 ALTER TABLE `date_annonces` DISABLE KEYS */;
INSERT INTO `date_annonces` VALUES (1,'2018-11-23','2018-11-30',250,210,'waiting'),(2,'2018-11-01','2018-11-20',300,210,'reserved'),(3,'2018-11-11','2018-11-15',350,210,'waiting'),(4,'2018-11-13','2018-11-14',400,210,'waiting'),(5,'2018-11-23','2018-11-30',250,210,'waiting'),(6,'2018-11-01','2018-11-20',300,210,'reserved'),(7,'2018-11-11','2018-11-15',350,210,'waiting'),(8,'2018-11-13','2018-11-14',400,210,'reserved');
/*!40000 ALTER TABLE `date_annonces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habitat`
--

DROP TABLE IF EXISTS `habitat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `habitat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_sql` varchar(20) NOT NULL,
  `name_human` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL,
  `text` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitat`
--

LOCK TABLES `habitat` WRITE;
/*!40000 ALTER TABLE `habitat` DISABLE KEYS */;
INSERT INTO `habitat` VALUES (0,'autre','Autre(s)','caravane.jpg','Autres lieux non mentionné'),(1,'caravane','Caravane','caravane.jpg','<b>Une Caravane</b> :  remorque destiné à être habitée, de manière temporaire (pour du camping, par exemple) ou permanente. Les caravanes peuvent être tractées par des automobiles ou des camionnettes.'),(2,'bungalow','Bungalow','bungalow.jpg','<b>Un Bungalow</b> : habitation de forme rectangulaire pouvant servir de résidence permanente ou secondaire. Elle doit être habitable à longueur d\'année, construite sur un châssis remorquable, non sur fondations permanentes, et destinée à être raccordée aux services publics'),(3,'appartements','Appartements','appartement.jpg','<b>Un Appartements</b> : Bien comportant un certain nombre de pièces et qui n’occupe qu’une partie d’un immeuble, situé généralement dans une ville. '),(4,'maison_hotes','Maison d\'hôtes','maison_hote.jpg','<b>Une Maisons d\'hôtes</b> : une chambre chez l’habitant, louée à la nuitée. On partage la maison du propriétaire qui accueille ses hôtes (ou une dépendance sur la propriété, c’est possible) et même si la chambre comporte un coin salon, les pièces à vivre sont communes.'),(5,'gites','Gites','gite.jpg','<b>Un Gites</b> : Le gîte est une location meublée de tourisme ou location saisonnière, généralement à la semaine. Les personnes qui le louent ont la libre disposition d’un appartement ou bâtiment avec au moins une pièce à vivre, une cuisine, une salle d’eau, une ou des chambres… Elles doivent être autonomes, comme chez elles. '),(6,'villa','Villa','villa.jpg','<b>Une Villa</b> : Une villa est à présent une maison d\'habitation de grande taille, souvent de villégiature, de plaisance (villa de bord de mer, de station thermale). ');
/*!40000 ALTER TABLE `habitat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_connect` varchar(50) NOT NULL,
  `password_no_hash` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `level_admin` tinyint(4) NOT NULL DEFAULT '0',
  `id_utilisateurs` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'evengyl','$2y$10$IqgJEZtcfsUxrE1NJj27Y.Jfn1uG6DAu0QOW/KMN1kjtN/tO2db9W','1560861924','legends','dark.evengyl@gmail.com',3,1),(8,'client_evengyl','$2y$10$xTPFQQhq2zdX4yH1Y3tF5.EuyUBlB2q8WhmK21cGJ9E2SCx0ZBl2y','1565766971','legends','dark.evengyl@gmail.com',0,4);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option_app`
--

DROP TABLE IF EXISTS `option_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option_app` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `value` tinyint(1) NOT NULL,
  `name_human_see` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_app`
--

LOCK TABLES `option_app` WRITE;
/*!40000 ALTER TABLE `option_app` DISABLE KEYS */;
INSERT INTO `option_app` VALUES (1,'view_time_exec_page',0,'Voir le temps d\'execution de la page'),(2,'get_sql_list',0,'Voir la liste des requète SQL éffectuée'),(3,'view_error_in_index',1,'Voir les Error Session dans l\'index'),(4,'app_with_login_option',1,'Initialiser un module de connection utilisateur ?'),(5,'view_post_in_index',1,'Voir les POST dans l\'index'),(6,'view_tpl_name_in_source_code',0,'Voir les noms des TPL dans le code source de la page'),(7,'translate_site',1,'Utiliser le système de traduction ?'),(8,'view_breadcrumb',0,'Afficher le BreadCrumb?');
/*!40000 ALTER TABLE `option_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pays`
--

DROP TABLE IF EXISTS `pays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_sql` varchar(20) NOT NULL,
  `name_human` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL,
  `text` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pays`
--

LOCK TABLES `pays` WRITE;
/*!40000 ALTER TABLE `pays` DISABLE KEYS */;
INSERT INTO `pays` VALUES (1,'belgique','Belgique','drapeau_belgique.jpg','La Belgique : '),(2,'france','France','drapeau_france.jpg','La France : '),(3,'italie','Italie','drapeau_italie.jpg','L\'Italie : '),(4,'espagne','Espagne','drapeau_espagne.jpg','L\'Espagne : '),(5,'pays_bas','Pays-Bas','drapeau_pays_bas.jpg','Les Pays-Bas : '),(6,'allemagne','Allemagne','drapeau_allemagne.jpg','L\'Allemagne'),(7,'luxembourg','Luxembourg','drapeau_luxembourg.jpg','Le Luxembourg'),(8,'reunion_island','Ile de la Réunion','drapeau_reunion.jpg','L\'Ile de la Réunion'),(9,'united_kingdom','Royaume-Uni','drapeau_uk.jpg','Le Royaume-Uni');
/*!40000 ALTER TABLE `pays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `private_message`
--

DROP TABLE IF EXISTS `private_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `private_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_utilisateurs` int(11) NOT NULL,
  `id_user_receiver` int(11) NOT NULL,
  `id_annonce` int(11) NOT NULL,
  `message` text NOT NULL,
  `send_date` varchar(20) NOT NULL,
  `vu` tinyint(1) NOT NULL DEFAULT '0',
  `answer` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `private_message`
--

LOCK TABLES `private_message` WRITE;
/*!40000 ALTER TABLE `private_message` DISABLE KEYS */;
INSERT INTO `private_message` VALUES (1,1,1,225,'test','19/12/2018',0,0);
/*!40000 ALTER TABLE `private_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proprio`
--

DROP TABLE IF EXISTS `proprio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proprio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `age` varchar(4) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `address_rue` varchar(100) NOT NULL,
  `address_localite` varchar(60) NOT NULL,
  `genre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proprio`
--

LOCK TABLES `proprio` WRITE;
/*!40000 ALTER TABLE `proprio` DISABLE KEYS */;
INSERT INTO `proprio` VALUES (1,'Loïc','Baudoux','27','baudouxloic@gmail.com','0497312523','jean jaurès','labuissiere','Monsieur');
/*!40000 ALTER TABLE `proprio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `range_price_announce`
--

DROP TABLE IF EXISTS `range_price_announce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `range_price_announce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price_one_night` varchar(20) NOT NULL,
  `price_week_end` varchar(20) NOT NULL,
  `price_one_week` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `range_price_announce`
--

LOCK TABLES `range_price_announce` WRITE;
/*!40000 ALTER TABLE `range_price_announce` DISABLE KEYS */;
INSERT INTO `range_price_announce` VALUES (210,'0-40','101-150','301-400'),(225,'0-40','101-150','301-400'),(226,'','',''),(227,'','',''),(228,'','',''),(229,'71-100','151-200','301-400'),(230,'101-150','201-250','401-500'),(231,'','',''),(232,'71-100','151-200','301-400');
/*!40000 ALTER TABLE `range_price_announce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sport`
--

DROP TABLE IF EXISTS `sport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foot` tinyint(1) NOT NULL DEFAULT '0',
  `basket` tinyint(1) NOT NULL DEFAULT '0',
  `tennis` tinyint(1) NOT NULL DEFAULT '0',
  `petanque` tinyint(1) NOT NULL DEFAULT '0',
  `piscine` tinyint(1) NOT NULL DEFAULT '0',
  `aqua_center` tinyint(1) NOT NULL DEFAULT '0',
  `sport` tinyint(1) NOT NULL DEFAULT '0',
  `velos` tinyint(1) NOT NULL DEFAULT '0',
  `skate` tinyint(1) NOT NULL DEFAULT '0',
  `arc` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sport`
--

LOCK TABLES `sport` WRITE;
/*!40000 ALTER TABLE `sport` DISABLE KEYS */;
INSERT INTO `sport` VALUES (210,1,0,1,1,1,0,1,0,1,0),(225,1,0,1,1,1,0,1,0,1,0),(226,0,0,0,0,0,0,0,0,0,0),(227,0,0,0,0,0,0,0,0,0,0),(228,0,0,0,0,0,0,0,0,0,0),(229,0,0,1,0,1,1,0,1,0,0),(230,0,0,0,0,0,0,0,0,0,0),(231,0,0,0,0,0,0,0,0,0,0),(232,0,0,0,0,1,0,0,0,0,0);
/*!40000 ALTER TABLE `sport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `text_sql_to_human`
--

DROP TABLE IF EXISTS `text_sql_to_human`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `text_sql_to_human` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_sql` varchar(50) NOT NULL,
  `name_human` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `text_sql_to_human`
--

LOCK TABLES `text_sql_to_human` WRITE;
/*!40000 ALTER TABLE `text_sql_to_human` DISABLE KEYS */;
INSERT INTO `text_sql_to_human` VALUES (1,'spa','Spa / Sauna'),(2,'bar','Bar / Buvette'),(3,'plage','Plage'),(4,'restaurant','Restaurant / Cafetaria / Bistro'),(5,'disco','Discothèque'),(6,'dancing','Piste de dance / Karaoké'),(7,'hiking','Randonnée'),(8,'foot','Terrain de Foot'),(9,'basket','Terrain de Basket'),(10,'tennis','Terrain de Tennis'),(11,'petanque','Terrain de Pétanque'),(12,'piscine','Piscine'),(13,'aqua_center','Centre aquatique'),(14,'sport','Salle de sports'),(15,'skate','Skate-park'),(16,'arc','Tir à l\'arc'),(17,'velos','Randonnées en vélos');
/*!40000 ALTER TABLE `text_sql_to_human` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translate`
--

DROP TABLE IF EXISTS `translate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name_fr` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `name_nl` varchar(255) NOT NULL,
  `name_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translate`
--

LOCK TABLES `translate` WRITE;
/*!40000 ALTER TABLE `translate` DISABLE KEYS */;
INSERT INTO `translate` VALUES (1,'Acceuil','','','__TRANS_accueil__'),(2,'Réservation','','','__TRANS_reservation__'),(3,'Contactez nous','','','__TRANS_contact_us__'),(5,'Ce que vous voulez','','','__TRANS_who_would_like__'),(6,'Reserver','','','__TRANS_reserver__'),(7,'Détails de contact','','','__TRANS__contact_detail__'),(8,'Adresse','','','__TRANS_address_title__'),(9,'Téléphone 2','','','__TRANS_tel_1__'),(10,'Téléphone','','','__TRANS_tel__'),(11,'Tous les prix sont TVAC','','','__TRANS_footer_price__'),(12,'Se connecter','','','__TRANS_login__'),(13,'Documentation','','','__TRANS_documentations__'),(14,'Envoyer','','','__TRANS_envoyer__'),(15,'Téléphone Administrateur','','','__TRANS_tel_mainteance__'),(16,'Téléphone Commercial','','','__TRANS_tel_commercial__');
/*!40000 ALTER TABLE `translate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_vacances`
--

DROP TABLE IF EXISTS `type_vacances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_vacances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_human` varchar(20) NOT NULL,
  `name_sql` varchar(25) NOT NULL,
  `icon` text NOT NULL,
  `url` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `text` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_vacances`
--

LOCK TABLES `type_vacances` WRITE;
/*!40000 ALTER TABLE `type_vacances` DISABLE KEYS */;
INSERT INTO `type_vacances` VALUES (1,'Couples','couples','<i style=\"font-size:56px; color:#ef6b6b;\" class=\"fas fa-heart\"></i>&nbsp;\r\n<i style=\"font-size:56px; color:#ef6b6b;\" class=\"fas fa-heart\"></i>&nbsp;\r\n<i style=\"font-size:56px; color:#ef6b6b;\" class=\"fas fa-heart\"></i>&nbsp;','couples','couple.jpg','Vacances de couples','Lieux de vacances plus orientées vers les promenades en amoureux, les bon plans restaurant et paysage romantique ect...'),(2,'Familles','familles','<i style=\"font-size:56px; color:#ffaeae;\" class=\"fas fa-female\"></i>&nbsp;\r\n<i style=\"font-size:35px; color:#00800080;\" class=\"fas fa-child\"></i>&nbsp;\r\n<i style=\"font-size:35px; color:#00800080;\" class=\"fas fa-child\"></i>&nbsp;\r\n<i style=\"font-size:35px; color:#00800080;\" class=\"fas fa-child\"></i>&nbsp;\r\n<i style=\"font-size:56px; color:#9393fb;\" class=\"fas fa-male\"></i>&nbsp;','familles','famille.jpg','Vacances en familles','Lieux de vacances orientées pour les vacances en familles avec les banbins, la recherche se base sur les activités faites pour les enfants ect...'),(3,'Aventures','aventures','<i style=\"font-size:56px; color:#773838b3;\" class=\"fas fa-hiking\"></i>&nbsp;\r\n<i style=\"font-size:56px; color:#773838b3;\" class=\"fas fa-mountain\"></i>&nbsp;\r\n<i style=\"font-size:56px; color:#773838b3;\" class=\"fas fa-campground\"></i>&nbsp;','aventures','aventure.jpg','Le pleins d\'aventures','Lieux de vacances plus orientées pour les rendonnées, les lieux à visités, une richesse de la régions ect...');
/*!40000 ALTER TABLE `type_vacances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT 'Aucun(e)',
  `last_name` varchar(50) NOT NULL DEFAULT 'Aucun(e)',
  `mail` varchar(255) NOT NULL,
  `age` tinyint(4) NOT NULL DEFAULT '0',
  `tel` varchar(13) NOT NULL DEFAULT 'Aucun(e)',
  `address_rue` varchar(100) NOT NULL DEFAULT 'Aucun(e)',
  `address_numero` varchar(20) NOT NULL DEFAULT 'Aucun(e)',
  `address_localite` varchar(60) NOT NULL DEFAULT 'Aucun(e)',
  `zip_code` varchar(10) NOT NULL DEFAULT 'Aucun(e)',
  `pays` varchar(50) NOT NULL DEFAULT 'Aucun(e)',
  `genre` varchar(50) NOT NULL DEFAULT 'Aucun(e)',
  `user_type` tinyint(4) NOT NULL,
  `id_background_profil` tinyint(4) NOT NULL DEFAULT '1',
  `account_verify` tinyint(1) NOT NULL DEFAULT '0',
  `id_create_account` varchar(35) NOT NULL,
  `newsletter` tinyint(1) NOT NULL DEFAULT '1',
  `id_favorite` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateurs`
--

LOCK TABLES `utilisateurs` WRITE;
/*!40000 ALTER TABLE `utilisateurs` DISABLE KEYS */;
INSERT INTO `utilisateurs` VALUES (1,'Loïc','Baudoux','dark.evengyl@gmail.com',27,'0497312523','jean jaurès','12','labuissiere','6567','Belgique','Monsieur',1,5,1,'0',1,'225,229'),(4,'loic','baudoux','dark.evengyl@gmail.com',28,'0497312523','test','25','test','6567','Belgique','Monsieur',0,1,1,'CreateAccount5d53b5201a121669492182',1,'');
/*!40000 ALTER TABLE `utilisateurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vues`
--

DROP TABLE IF EXISTS `vues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sign_up` int(11) NOT NULL DEFAULT '0',
  `login` int(11) NOT NULL DEFAULT '0',
  `login_success` int(11) NOT NULL DEFAULT '0',
  `accueil` int(11) NOT NULL DEFAULT '0',
  `contact_us` int(11) NOT NULL DEFAULT '0',
  `periode` varchar(7) DEFAULT '00-0000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vues`
--

LOCK TABLES `vues` WRITE;
/*!40000 ALTER TABLE `vues` DISABLE KEYS */;
INSERT INTO `vues` VALUES (1,4,20,0,3,1,'01-2019'),(2,5,15,0,2,0,'02-2019'),(3,6,10,10,0,0,'03-2019'),(4,7,50,0,0,0,'04-2019'),(5,9,20,8,0,0,'05-2019'),(6,54,10,6,30,6,'06-2019'),(7,1,24,24,81,8,'07-2019'),(8,14,161,31,66,6,'08-2019');
/*!40000 ALTER TABLE `vues` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-14 10:36:14
