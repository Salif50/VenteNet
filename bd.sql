-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: ventenet
-- ------------------------------------------------------
-- Server version	8.0.31

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

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add produit',7,'add_produit'),(26,'Can change produit',7,'change_produit'),(27,'Can delete produit',7,'delete_produit'),(28,'Can view produit',7,'view_produit'),(29,'Can add categorie',8,'add_categorie'),(30,'Can change categorie',8,'change_categorie'),(31,'Can delete categorie',8,'delete_categorie'),(32,'Can view categorie',8,'view_categorie'),(33,'Can add commentaire',9,'add_commentaire'),(34,'Can change commentaire',9,'change_commentaire'),(35,'Can delete commentaire',9,'delete_commentaire'),(36,'Can view commentaire',9,'view_commentaire');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$UAqnEzYRlzhHggvEwrzLBN$vCem/zMmFsIRsxjQDLYdCaO8h7H6xo3L5djVgTHpsZY=','2023-06-22 12:25:00.709330',1,'Admin','','','admin@gmail.com',1,1,'2023-06-22 12:23:44.516652');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-06-22 12:33:35.031248','1','Chaussures',1,'[{\"added\": {}}]',8,1),(2,'2023-06-22 12:52:24.711437','1','Produit object (1)',1,'[{\"added\": {}}]',7,1),(3,'2023-06-22 13:10:19.799435','1','aire force',3,'',7,1),(4,'2023-06-22 13:13:16.918614','1','Chaussure',2,'[{\"changed\": {\"fields\": [\"Nom\"]}}]',8,1),(5,'2023-06-30 15:24:37.861287','2','Telephone',1,'[{\"added\": {}}]',8,1),(6,'2023-06-30 15:24:45.424956','3','Ordinateur',1,'[{\"added\": {}}]',8,1),(7,'2023-06-30 15:24:53.642764','4','Maillot',1,'[{\"added\": {}}]',8,1),(8,'2023-06-30 15:25:18.446457','5','Materiel informatique',1,'[{\"added\": {}}]',8,1),(9,'2023-06-30 15:25:25.854636','6','Bijou',1,'[{\"added\": {}}]',8,1),(10,'2023-06-30 15:25:37.836897','7','Chemise',1,'[{\"added\": {}}]',8,1),(11,'2023-06-30 15:25:44.936000','8','Pantallon',1,'[{\"added\": {}}]',8,1),(12,'2023-06-30 15:29:27.950136','2','Chemise blue',1,'[{\"added\": {}}]',7,1),(13,'2023-06-30 15:33:00.094482','3','chemise lait',1,'[{\"added\": {}}]',7,1),(14,'2023-06-30 15:34:02.185538','4','Maillot domicil de fc barcelonne',1,'[{\"added\": {}}]',7,1),(15,'2023-06-30 15:34:57.785538','5','Maillot cystial palace',1,'[{\"added\": {}}]',7,1),(16,'2023-06-30 15:35:48.352735','6','LOSC',1,'[{\"added\": {}}]',7,1),(17,'2023-06-30 15:36:42.490401','7','Real Madrid',1,'[{\"added\": {}}]',7,1),(18,'2023-06-30 15:37:18.972815','8','BVB',1,'[{\"added\": {}}]',7,1),(19,'2023-06-30 15:38:43.309845','9','Pc desktop dell atitiud',1,'[{\"added\": {}}]',7,1),(20,'2023-06-30 16:21:51.155172','9','Test',1,'[{\"added\": {}}]',8,1),(21,'2023-06-30 16:22:08.629372','9','Test',3,'',8,1),(22,'2023-06-30 17:20:45.226114','10','iphone 13',1,'[{\"added\": {}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','permission'),(3,'auth','group'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'gestionProduit','produit'),(8,'gestionProduit','categorie'),(9,'gestionProduit','commentaire');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-06-22 11:18:43.794698'),(2,'auth','0001_initial','2023-06-22 11:18:44.573996'),(3,'admin','0001_initial','2023-06-22 11:18:44.885540'),(4,'admin','0002_logentry_remove_auto_add','2023-06-22 11:18:44.904195'),(5,'admin','0003_logentry_add_action_flag_choices','2023-06-22 11:18:44.918088'),(6,'contenttypes','0002_remove_content_type_name','2023-06-22 11:18:45.033735'),(7,'auth','0002_alter_permission_name_max_length','2023-06-22 11:18:45.096552'),(8,'auth','0003_alter_user_email_max_length','2023-06-22 11:18:45.165784'),(9,'auth','0004_alter_user_username_opts','2023-06-22 11:18:45.170890'),(10,'auth','0005_alter_user_last_login_null','2023-06-22 11:18:45.266095'),(11,'auth','0006_require_contenttypes_0002','2023-06-22 11:18:45.270921'),(12,'auth','0007_alter_validators_add_error_messages','2023-06-22 11:18:45.275847'),(13,'auth','0008_alter_user_username_max_length','2023-06-22 11:18:45.347731'),(14,'auth','0009_alter_user_last_name_max_length','2023-06-22 11:18:45.413202'),(15,'auth','0010_alter_group_name_max_length','2023-06-22 11:18:45.472692'),(16,'auth','0011_update_proxy_permissions','2023-06-22 11:18:45.489715'),(17,'auth','0012_alter_user_first_name_max_length','2023-06-22 11:18:45.548730'),(18,'sessions','0001_initial','2023-06-22 11:18:45.624323'),(19,'gestionProduit','0001_initial','2023-06-22 11:56:02.622218'),(20,'gestionProduit','0002_alter_produit_date_expiration','2023-06-30 15:32:30.540015'),(21,'gestionProduit','0003_produit_information_commentaire','2023-07-05 16:55:30.914644');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('qbui2o0g1kean8ijfhefaf1nmpulhwiw','.eJxVjMsOwiAQRf-FtSHlUXFcuvcbyAwwUjWQlHZl-u-VpAvdnnPu_QiP65L92tLspyiuQonTLyMMr1S6iE8sjypDLcs8keyJPGyT9xrT-3a0fwcZW_6uQQ066jBScpqdISQYAdhix0wcHESjNdnBIjtUiq0F4jMZTOzURWw77l84XA:1qCJMy:qtup5g0KAsHws4AcGsc8amK5HZWDC3fEDDYcqn-JOyg','2023-07-06 12:25:00.719337');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gestionproduit_categorie`
--

DROP TABLE IF EXISTS `gestionproduit_categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gestionproduit_categorie` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nom` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestionproduit_categorie`
--

LOCK TABLES `gestionproduit_categorie` WRITE;
/*!40000 ALTER TABLE `gestionproduit_categorie` DISABLE KEYS */;
INSERT INTO `gestionproduit_categorie` VALUES (1,'Chaussure'),(2,'Telephone'),(3,'Ordinateur'),(4,'Maillot'),(5,'Materiel informatique'),(6,'Bijou'),(7,'Chemise'),(8,'Pantallon');
/*!40000 ALTER TABLE `gestionproduit_categorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gestionproduit_commentaire`
--

DROP TABLE IF EXISTS `gestionproduit_commentaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gestionproduit_commentaire` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nom` varchar(128) NOT NULL,
  `email` varchar(254) NOT NULL,
  `message` longtext NOT NULL,
  `produit_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gestionProduit_commentaire_produit_id_05f3e724` (`produit_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestionproduit_commentaire`
--

LOCK TABLES `gestionproduit_commentaire` WRITE;
/*!40000 ALTER TABLE `gestionproduit_commentaire` DISABLE KEYS */;
/*!40000 ALTER TABLE `gestionproduit_commentaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gestionproduit_produit`
--

DROP TABLE IF EXISTS `gestionproduit_produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gestionproduit_produit` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `designation` varchar(128) NOT NULL,
  `prix` double NOT NULL,
  `quantite` int NOT NULL,
  `date_expiration` date DEFAULT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `categorie_id` bigint NOT NULL,
  `information` longtext,
  PRIMARY KEY (`id`),
  KEY `gestionProduit_produit_categorie_id_0f4976b2` (`categorie_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestionproduit_produit`
--

LOCK TABLES `gestionproduit_produit` WRITE;
/*!40000 ALTER TABLE `gestionproduit_produit` DISABLE KEYS */;
INSERT INTO `gestionproduit_produit` VALUES (2,'Chemise blue',80000,400,'2025-02-28','Chemise disponible avec les tailles L,M,XL,XXL,2XL','2023/06/30/2MM15C9120-F.jpg',7,NULL),(3,'chemise lait',90000,500,NULL,'Chemise en lait disponible en l,m,xl,xxl','2023/06/30/6c595b74a11858fd81217115c7308aae.jpg',7,NULL),(4,'Maillot domicil de fc barcelonne',25000,100,NULL,'Maillot de barça disponible avec l,m,xl,xxl','2023/06/30/6ee5fa81-be9c-4d0c-a48a-3d0db669c878.webp',4,NULL),(5,'Maillot cystial palace',50000,300,NULL,'Maillot de palace ,club de premier league','2023/06/30/2022-2023-crystal-palace-away.webp',4,NULL),(6,'LOSC',70000,500,NULL,'LILLE , une equipe de la Lique 1 française','2023/06/30/2878-iEA0.webp',4,NULL),(7,'Real Madrid',200000,800,NULL,'Maillot du grand real','2023/06/30/maillot-domicile-real-madrid-21-22.webp',4,NULL),(8,'BVB',50000,400,NULL,'maillot borussia dortmud','2023/06/30/maillot-borussia-dortmund-domicile-2020-2021.jpg',4,NULL),(9,'Pc desktop dell atitiud',8000000,30,NULL,'Dell desktop, frequence 3.1 GHz, disque dur 2T, RAM 8Go','2023/06/30/desk1.jpg',3,NULL),(10,'iphone 13',1000000,22,NULL,'iphone 13 pro max','2023/06/30/i13-128.jpg',2,NULL);
/*!40000 ALTER TABLE `gestionproduit_produit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-06 15:12:12
