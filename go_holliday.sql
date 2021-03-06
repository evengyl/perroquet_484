-- MySQL dump 10.16  Distrib 10.1.36-MariaDB, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: go_holliday
-- ------------------------------------------------------
-- Server version	10.1.36-MariaDB

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
-- Table structure for table `annonce_activity`
--

DROP TABLE IF EXISTS `annonce_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `annonce_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_human` varchar(50) NOT NULL,
  `name_sql` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `annonce_activity`
--

LOCK TABLES `annonce_activity` WRITE;
/*!40000 ALTER TABLE `annonce_activity` DISABLE KEYS */;
INSERT INTO `annonce_activity` VALUES (1,'Randonnée flêchée','hiking'),(2,'Piste de dance','dancing'),(3,'Discothèque','disco'),(4,'Restaurant','restaurant'),(5,'Plage à proximité','plage'),(6,'Bar / Pub','bar'),(7,'Centre de bien être / Spa','spa');
/*!40000 ALTER TABLE `annonce_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `annonce_address`
--

DROP TABLE IF EXISTS `annonce_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `annonce_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address_lieux_dit` varchar(50) NOT NULL,
  `address_rue` varchar(50) NOT NULL,
  `address_numero` varchar(20) NOT NULL,
  `address_localite` varchar(50) NOT NULL,
  `address_zip_code` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=270 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `annonce_address`
--

LOCK TABLES `annonce_address` WRITE;
/*!40000 ALTER TABLE `annonce_address` DISABLE KEYS */;
INSERT INTO `annonce_address` VALUES (210,'Camping perroquet','rue des dunes','1','bray-dunes','5900'),(211,'Camping perroquet','rue des dunes','1','bray-dunes','5900'),(212,'Camping perroquet','rue des dunes','1','bray-dunes','5900'),(213,'Camping perroquet','rue des dunes','1','bray-dunes','5900'),(257,'test','test','test','test','6567');
/*!40000 ALTER TABLE `annonce_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `annonce_avis`
--

DROP TABLE IF EXISTS `annonce_avis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `annonce_avis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_annonce` int(11) NOT NULL,
  `create_date` varchar(25) NOT NULL,
  `id_utilisateurs` int(11) NOT NULL,
  `message` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `star` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `annonce_avis`
--

LOCK TABLES `annonce_avis` WRITE;
/*!40000 ALTER TABLE `annonce_avis` DISABLE KEYS */;
INSERT INTO `annonce_avis` VALUES (1,210,'20/01/2019',5,'C\'est le premier avis du site, j\'espère qu\'il sera bien foutu et que ça marchera',0,1),(2,211,'21/01/2019',5,'C\'est le premier avis du site, j\'espère qu\'il sera bien foutu et que ça marchera en fait non c\'est le deuxieme',1,5),(3,212,'25/01/2019',5,'C\'est le troisemeavis du site, j\'espère qu\'il sera bien foutu et que ça marchera',1,4),(4,213,'22/02/2019',5,'C\'est le quatriemeavis du site, j\'espère qu\'il sera bien foutu et que ça marchera ',1,3),(5,210,'20/01/2019',5,'C\'est le premier avis du site, j\'espère qu\'il sera bien foutu et que ça marchera',1,2),(6,211,'10/10/2019',5,'test',1,5),(7,212,'10/10/2019',5,'ahah super',1,5),(8,213,'10/10/2019',5,'ahah super',1,5);
/*!40000 ALTER TABLE `annonce_avis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `annonce_commoditer`
--

DROP TABLE IF EXISTS `annonce_commoditer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `annonce_commoditer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pet` tinyint(1) NOT NULL DEFAULT '0',
  `parking` tinyint(1) NOT NULL DEFAULT '0',
  `handicap` tinyint(1) NOT NULL DEFAULT '0',
  `max_personn` tinyint(4) NOT NULL DEFAULT '1',
  `caution` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `annonce_commoditer`
--

LOCK TABLES `annonce_commoditer` WRITE;
/*!40000 ALTER TABLE `annonce_commoditer` DISABLE KEYS */;
INSERT INTO `annonce_commoditer` VALUES (210,1,1,1,15,1500),(211,1,1,1,15,1500),(212,1,1,1,15,1500),(213,1,1,1,15,1500),(257,0,0,0,1,0);
/*!40000 ALTER TABLE `annonce_commoditer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `annonce_dates`
--

DROP TABLE IF EXISTS `annonce_dates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `annonce_dates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_date` varchar(15) NOT NULL DEFAULT '01/01/1970',
  `end_date` varchar(15) NOT NULL DEFAULT '01/01/1970',
  `prix` smallint(8) NOT NULL DEFAULT '0',
  `id_annonce` int(11) NOT NULL,
  `id_utilisateurs` int(11) NOT NULL,
  `state` varchar(20) NOT NULL DEFAULT 'waiting',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `annonce_dates`
--

LOCK TABLES `annonce_dates` WRITE;
/*!40000 ALTER TABLE `annonce_dates` DISABLE KEYS */;
INSERT INTO `annonce_dates` VALUES (2,'01/04/2019','07/04/2019',300,210,5,'reserved'),(5,'08/04/2019','15/04/2019',250,211,5,'reserved'),(6,'01/09/2019','22/09/2019',300,212,5,'reserved'),(7,'23/08/2019','30/08/2020',350,213,5,'reserved'),(9,'01/08/2019','31/08/2019',0,211,5,'reserved'),(10,'01/09/2019','13/09/2019',818,212,5,'reserved'),(11,'01/06/2019','20/06/2019',748,213,5,'waiting');
/*!40000 ALTER TABLE `annonce_dates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `annonce_habitat`
--

DROP TABLE IF EXISTS `annonce_habitat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `annonce_habitat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_sql` varchar(20) NOT NULL,
  `name_human` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL,
  `text` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `annonce_habitat`
--

LOCK TABLES `annonce_habitat` WRITE;
/*!40000 ALTER TABLE `annonce_habitat` DISABLE KEYS */;
INSERT INTO `annonce_habitat` VALUES (0,'autre','Autre(s)','caravane.jpg','Autres lieux non mentionné'),(1,'caravane','Caravane','caravane.jpg','Remorque destiné à être habitée, de manière temporaire (pour du camping, par exemple) ou permanente. Les caravanes peuvent être tractées par des automobiles ou des camionnettes.'),(2,'bungalow','Bungalow','bungalow.jpg','Habitation de forme rectangulaire pouvant servir de résidence permanente ou secondaire. Elle doit être habitable à longueur d\'année, construite sur un châssis remorquable, non sur fondations permanentes, et destinée à être raccordée aux services publics'),(3,'appartements','Appartements','appartement.jpg','Bien comportant un certain nombre de pièces et qui n’occupe qu’une partie d’un immeuble, situé généralement dans une ville. '),(4,'maison_hotes','Maison d\'hôtes','maison_hote.jpg','Une chambre chez l’habitant, louée à la nuitée. On partage la maison du propriétaire qui accueille ses hôtes (ou une dépendance sur la propriété, c’est possible) et même si la chambre comporte un coin salon, les pièces à vivre sont communes.'),(5,'gites','Gites','gite.jpg','Le gîte est une location meublée de tourisme ou location saisonnière, généralement à la semaine. Les personnes qui le louent ont la libre disposition d’un appartement ou bâtiment avec au moins une pièce à vivre, une cuisine, une salle d’eau, une ou des chambres… Elles doivent être autonomes, comme chez elles. '),(6,'villa','Villa','villa.jpg','Une villa est à présent une maison d\'habitation de grande taille, souvent de villégiature, de plaisance (villa de bord de mer, de station thermale). ');
/*!40000 ALTER TABLE `annonce_habitat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `annonce_pays`
--

DROP TABLE IF EXISTS `annonce_pays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `annonce_pays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_sql` varchar(20) NOT NULL,
  `name_human` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `annonce_pays`
--

LOCK TABLES `annonce_pays` WRITE;
/*!40000 ALTER TABLE `annonce_pays` DISABLE KEYS */;
INSERT INTO `annonce_pays` VALUES (1,'belgique','Belgique','drapeau_belgique.jpg'),(2,'france','France','drapeau_france.jpg'),(3,'italie','Italie','drapeau_italie.jpg'),(4,'espagne','Espagne','drapeau_espagne.jpg'),(5,'pays_bas','Pays-Bas','drapeau_pays_bas.jpg'),(6,'allemagne','Allemagne','drapeau_allemagne.jpg'),(7,'luxembourg','Luxembourg','drapeau_luxembourg.jpg'),(8,'reunion_island','Ile de la Réunion','drapeau_reunion.jpg'),(9,'united_kingdom','Royaume-Uni','drapeau_uk.jpg');
/*!40000 ALTER TABLE `annonce_pays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `annonce_sport`
--

DROP TABLE IF EXISTS `annonce_sport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `annonce_sport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_human` varchar(50) NOT NULL,
  `name_sql` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `annonce_sport`
--

LOCK TABLES `annonce_sport` WRITE;
/*!40000 ALTER TABLE `annonce_sport` DISABLE KEYS */;
INSERT INTO `annonce_sport` VALUES (1,'Terrain de Foot','foot'),(2,'Terrain de Basket','basket'),(3,'Terrain de Tennis','tennis'),(4,'Pétanque','petanque'),(5,'Piscine','piscine'),(6,'Centre aquatique','aqua_center'),(7,'Salle de Sports','sport'),(8,'Locations de vélos','velos'),(9,'Skatepark','skate'),(10,'Stand de tir à l\'arc','arc');
/*!40000 ALTER TABLE `annonce_sport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `annonce_type_vacances`
--

DROP TABLE IF EXISTS `annonce_type_vacances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `annonce_type_vacances` (
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
-- Dumping data for table `annonce_type_vacances`
--

LOCK TABLES `annonce_type_vacances` WRITE;
/*!40000 ALTER TABLE `annonce_type_vacances` DISABLE KEYS */;
INSERT INTO `annonce_type_vacances` VALUES (1,'Couples','couples','<i style=\"font-size:56px; color:#ef6b6b;\" class=\"fas fa-heart\"></i>&nbsp;\r\n<i style=\"font-size:56px; color:#ef6b6b;\" class=\"fas fa-heart\"></i>&nbsp;\r\n<i style=\"font-size:56px; color:#ef6b6b;\" class=\"fas fa-heart\"></i>&nbsp;','couples','couple.jpg','Vacances de couples','Lieux de vacances plus orientées vers les promenades en amoureux, les bon plans restaurant et paysage romantique ect...'),(2,'Familles','familles','<i style=\"font-size:56px; color:#ffaeae;\" class=\"fas fa-female\"></i>&nbsp;\r\n<i style=\"font-size:35px; color:#00800080;\" class=\"fas fa-child\"></i>&nbsp;\r\n<i style=\"font-size:35px; color:#00800080;\" class=\"fas fa-child\"></i>&nbsp;\r\n<i style=\"font-size:35px; color:#00800080;\" class=\"fas fa-child\"></i>&nbsp;\r\n<i style=\"font-size:56px; color:#9393fb;\" class=\"fas fa-male\"></i>&nbsp;','familles','famille.jpg','Vacances en familles','Lieux de vacances orientées pour les vacances en familles avec les banbins, la recherche se base sur les activités faites pour les enfants ect...'),(3,'Aventures','aventures','<i style=\"font-size:56px; color:#773838b3;\" class=\"fas fa-hiking\"></i>&nbsp;\r\n<i style=\"font-size:56px; color:#773838b3;\" class=\"fas fa-mountain\"></i>&nbsp;\r\n<i style=\"font-size:56px; color:#773838b3;\" class=\"fas fa-campground\"></i>&nbsp;','aventures','aventure.jpg','Le pleins d\'aventures','Lieux de vacances plus orientées pour les rendonnées, les lieux à visités, une richesse de la régions ect...');
/*!40000 ALTER TABLE `annonce_type_vacances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `annonces`
--

DROP TABLE IF EXISTS `annonces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `annonces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pays` tinyint(4) DEFAULT NULL,
  `id_habitat` tinyint(4) DEFAULT NULL,
  `id_type_vacances` varchar(20) DEFAULT NULL,
  `id_sport` varchar(255) DEFAULT NULL,
  `id_activity` varchar(255) DEFAULT NULL,
  `id_utilisateurs` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `sub_title` varchar(200) DEFAULT NULL,
  `start_saison` varchar(15) NOT NULL DEFAULT '00/00/0000',
  `end_saison` varchar(15) NOT NULL DEFAULT '00/00/0000',
  `vues` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL,
  `user_validate` tinyint(1) NOT NULL DEFAULT '0',
  `admin_validate` tinyint(1) NOT NULL DEFAULT '0',
  `create_date` varchar(20) NOT NULL,
  `on_off` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `annonces`
--

LOCK TABLES `annonces` WRITE;
/*!40000 ALTER TABLE `annonces` DISABLE KEYS */;
INSERT INTO `annonces` VALUES (210,1,1,'2,3','1,2,3,4,5','1,2,3,4,5,6',4,'test tata','test sub','27/09/2019','27/10/2019',1579,1,1,1,'28/01/2019',1),(211,2,1,'2,3','1,2,3,4,5','1,2,3,4,5,6',4,'test tata','test sub','27/09/2019','27/10/2019',1578,1,1,1,'28/01/2019',1),(212,3,1,'2,3','1,2,3,4,5','1,2,3,4,5,6',4,'test tata','test sub','27/09/2019','27/10/2019',1578,1,1,1,'28/01/2019',1),(213,4,1,'2,3','1,2,3,4,5','1,2,3,4,5,6',4,'test tata','test sub','27/09/2019','27/10/2019',1578,1,1,1,'28/01/2019',1),(257,1,0,'1,2,3','1,4','1,2,4',4,'taratata','','16/10/2019','26/12/2019',0,0,0,0,'16/10/2019',1);
/*!40000 ALTER TABLE `annonces` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'evengyl','$2y$10$IqgJEZtcfsUxrE1NJj27Y.Jfn1uG6DAu0QOW/KMN1kjtN/tO2db9W','1560861924','legends','dark.evengyl@gmail.com',3,1),(8,'jeanjean','$2y$10$xTPFQQhq2zdX4yH1Y3tF5.EuyUBlB2q8WhmK21cGJ9E2SCx0ZBl2y','1565766971','legends','dark.evengyl@gmail.com',0,4),(9,'sarahah','$2y$10$DJYMNbdShbYLV.SfD0Dc.O6xFRNYOS/KJqWo1wou2Clc.0u8mfO5S','1569423660','legends','dark.evengyl@gmail.com',0,5);
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
  `name_human` varchar(100) NOT NULL,
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
-- Table structure for table `private_message`
--

DROP TABLE IF EXISTS `private_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `private_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_utilisateurs` varchar(255) NOT NULL,
  `id_user_sender` varchar(255) NOT NULL,
  `id_group` varchar(36) NOT NULL,
  `id_annonce` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `send_date` varchar(20) NOT NULL,
  `time` varchar(5) NOT NULL,
  `vu` tinyint(1) NOT NULL DEFAULT '0',
  `vu_receiver` tinyint(1) NOT NULL DEFAULT '0',
  `answer` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id_utilisateurs` (`id_utilisateurs`),
  KEY `id_group` (`id_group`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `private_message`
--

LOCK TABLES `private_message` WRITE;
/*!40000 ALTER TABLE `private_message` DISABLE KEYS */;
INSERT INTO `private_message` VALUES (1,'4','1,4','GroupMessagery5d9ecaf722254635938348',210,'test','10/10/2019','8h09',1,0,1),(2,'4','1,4','GroupMessagery5d9ecaf722254635938348',211,'test','10/10/2019','8h12',1,0,1),(3,'4','1,4','GroupMessagery5d9ecaf722254635938348',212,'test','10/10/2019','8h14',1,0,1),(4,'4','1,4','GroupMessagery5d9ecaf722254635938348',213,'test','10/10/2019','8h14',1,0,1),(5,'4','1,4','GroupMessagery5d9ecaf722254635938348',211,'rzqr','10/10/2019','8h15',1,0,1),(6,'4','1,4','GroupMessagery5d9ecaf722254635938348',210,'test','10/10/2019','8h15',1,0,1),(7,'4','1,4','GroupMessagery5d9ecaf722254635938348',212,'test','10/10/2019','8h16',1,0,1),(8,'4','1,4','GroupMessagery5d9ecaf722254635938348',213,'test','10/10/2019','8h18',1,1,1),(10,'4','4,1','GroupMessagery5d9ecaf722254635938348',210,'atatat','10/10/2019','8h25',1,1,0);
/*!40000 ALTER TABLE `private_message` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `range_price_announce`
--

LOCK TABLES `range_price_announce` WRITE;
/*!40000 ALTER TABLE `range_price_announce` DISABLE KEYS */;
INSERT INTO `range_price_announce` VALUES (210,'0-40','101-150','301-400'),(211,'0-40','101-150','301-400'),(212,'0-40','101-150','301-400'),(213,'0-40','101-150','301-400'),(257,'71-100','151-200','301-400');
/*!40000 ALTER TABLE `range_price_announce` ENABLE KEYS */;
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
-- Table structure for table `utilisateur_preference`
--

DROP TABLE IF EXISTS `utilisateur_preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utilisateur_preference` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_sql` varchar(50) DEFAULT NULL,
  `name_human` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateur_preference`
--

LOCK TABLES `utilisateur_preference` WRITE;
/*!40000 ALTER TABLE `utilisateur_preference` DISABLE KEYS */;
INSERT INTO `utilisateur_preference` VALUES (4,'see_tel','Le client peux voir votre numéro de téléphone');
/*!40000 ALTER TABLE `utilisateur_preference` ENABLE KEYS */;
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
  `genre` varchar(10) NOT NULL DEFAULT 'Aucun(e)',
  `user_type` tinyint(4) NOT NULL,
  `id_background_profil` tinyint(4) NOT NULL DEFAULT '1',
  `account_verify` tinyint(1) NOT NULL DEFAULT '0',
  `id_create_account` varchar(35) NOT NULL,
  `newsletter` tinyint(1) NOT NULL DEFAULT '1',
  `id_favorite` text NOT NULL,
  `id_preference` varchar(50) DEFAULT NULL,
  `date_create` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateurs`
--

LOCK TABLES `utilisateurs` WRITE;
/*!40000 ALTER TABLE `utilisateurs` DISABLE KEYS */;
INSERT INTO `utilisateurs` VALUES (1,'Loïc','Baudoux','dark.evengyl@gmail.com',27,'0497312523','rue sous ghoy','25','labuissiere','6567','Belgique','Monsieur',1,11,1,'0',1,'236,229',NULL,'10/06/2017'),(4,'Jean','Eud','dark.evengyl@gmail.com',28,'0497312523','rue sous ghoy','25','test','6567','Belgique','Monsieur',1,1,1,'CreateAccount5d53b5201a121669492182',1,'225,229',NULL,'10/06/2017'),(5,'Martin','valenduc','dark.evengyl@gmail.com',28,'0497312523','rue sous ghoy','25','lablab','6567','Belgique','Monsieur',0,10,1,'CreateAccount5d8b810608e63497485790',1,'225',NULL,'10/06/2017');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vues`
--

LOCK TABLES `vues` WRITE;
/*!40000 ALTER TABLE `vues` DISABLE KEYS */;
INSERT INTO `vues` VALUES (1,4,20,0,3,1,'01-2019'),(2,5,15,0,2,0,'02-2019'),(3,6,10,10,0,0,'03-2019'),(4,7,50,0,0,0,'04-2019'),(5,9,20,8,0,0,'05-2019'),(6,54,10,6,30,6,'06-2019'),(7,1,24,24,81,8,'07-2019'),(8,14,173,35,212,10,'08-2019'),(9,5,113,48,109,12,'09-2019'),(10,3,110,49,876,14,'10-2019');
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

-- Dump completed on 2019-10-16 16:47:25
