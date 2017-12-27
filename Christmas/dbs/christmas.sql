-- MySQL dump 10.13  Distrib 5.6.38, for Linux (x86_64)
--
-- Host: localhost    Database: christmas
-- ------------------------------------------------------
-- Server version	5.6.38

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
-- Table structure for table `ChristmasModel_refmodel`
--

DROP TABLE IF EXISTS `ChristmasModel_refmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ChristmasModel_refmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `href` varchar(500) NOT NULL,
  `class_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ChristmasModel_refmodel`
--

LOCK TABLES `ChristmasModel_refmodel` WRITE;
/*!40000 ALTER TABLE `ChristmasModel_refmodel` DISABLE KEYS */;
INSERT INTO `ChristmasModel_refmodel` VALUES (1,'计算机图形学导论','http://www.xuetangx.com/courses/course-v1:UC_BerkeleyX+CS_184_1x+sp/about','慕课'),(2,'线性代数应用','http://www.xuetangx.com/courses/DavidsonX/D003x.1/_/about','慕课'),(3,'财务分析与决策','http://www.xuetangx.com/courses/course-v1:TsinghuaX+80512073X+2017_T2/about','慕课'),(4,'Bootstrap文档','https://getbootstrap.com/docs/4.0/getting-started/introduction/','Bootstrap文档'),(5,'bootstrap-markdown','http://www.codingdrama.com/bootstrap-markdown/','bootstrap-markdown'),(6,'marmoset','https://www.marmoset.co/posts/toolbag-baking-tutorial/?page=Map%20Types#maptypes','Polycount'),(7,'terrain','http://terrain.party/','世界高度图'),(8,'openstreetmap','https://www.openstreetmap.org/','世界地图'),(9,'aliyun','https://www.aliyun.com','阿里云'),(10,'Django 教程','http://www.runoob.com/django/django-first-app.html','Django 教程'),(11,'Django','\"https://docs.djangoproject.com/en/1.11/','Django'),(12,'Bootstrap Carousel','https://mobirise.com/bootstrap-carousel/','Bootstrap Carousel'),(13,'虚幻引擎4文档','https://docs.unrealengine.com/latest/INT/','UE4'),(14,'虚幻引擎3文档','https://udk-legacy.unrealengine.com/udk/Three/DesignWorkflowCH.html','UE3');
/*!40000 ALTER TABLE `ChristmasModel_refmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ChristmasModel_workmodel`
--

DROP TABLE IF EXISTS `ChristmasModel_workmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ChristmasModel_workmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `href` varchar(500) NOT NULL,
  `fps` varchar(5) NOT NULL,
  `engine` varchar(10) NOT NULL,
  `platform` varchar(10) NOT NULL,
  `isdoc` varchar(10) NOT NULL,
  `islod` varchar(10) NOT NULL,
  `ispbr` varchar(10) NOT NULL,
  `iscollision` varchar(10) NOT NULL,
  `vertexcount` varchar(10) NOT NULL,
  `meshcount` varchar(5) NOT NULL,
  `texturecount` varchar(10) NOT NULL,
  `texturesize` varchar(10) NOT NULL,
  `materialscount` varchar(10) NOT NULL,
  `animcount` varchar(10) NOT NULL,
  `effectcount` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ChristmasModel_workmodel`
--

LOCK TABLES `ChristmasModel_workmodel` WRITE;
/*!40000 ALTER TABLE `ChristmasModel_workmodel` DISABLE KEYS */;
INSERT INTO `ChristmasModel_workmodel` VALUES (1,'邮轮','http://47.94.228.162:88/image/work/building/building_0.png','30fps','UE4.15','Windows','No','Yes','Yes','No','20000','50','102','2048*2048','46','0','0'),(2,'住宅','http://47.94.228.162:88/image/work/youlun/youlun_0.png','30fps','UE4.17','Window','No','Yes','Yes','No','8000','1','20','2048*2048','13','0','0');
/*!40000 ALTER TABLE `ChristmasModel_workmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add permission',3,'add_permission'),(8,'Can change permission',3,'change_permission'),(9,'Can delete permission',3,'delete_permission'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add ref model',7,'add_refmodel'),(20,'Can change ref model',7,'change_refmodel'),(21,'Can delete ref model',7,'delete_refmodel'),(22,'Can add work model',8,'add_workmodel'),(23,'Can change work model',8,'change_workmodel'),(24,'Can delete work model',8,'delete_workmodel');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$hPqyqMsbuT7B$DA9J3J1O+WnlQqv/QT/2scEmHUmBXwuSgKIRNj4mSw8=','2017-12-26 03:49:39.488895',1,'zuoLand','','','chunyuan2008@163.com',1,1,'2017-12-25 11:43:36.911727');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-12-25 11:44:46.873524','1','RefModel object',1,'[{\"added\": {}}]',7,1),(2,'2017-12-25 11:45:10.473411','2','RefModel object',1,'[{\"added\": {}}]',7,1),(3,'2017-12-25 11:45:25.024318','3','RefModel object',1,'[{\"added\": {}}]',7,1),(4,'2017-12-25 12:00:44.378689','4','RefModel object',1,'[{\"added\": {}}]',7,1),(5,'2017-12-25 12:00:58.466210','5','RefModel object',1,'[{\"added\": {}}]',7,1),(6,'2017-12-25 12:01:13.593876','6','RefModel object',1,'[{\"added\": {}}]',7,1),(7,'2017-12-25 12:01:27.785489','7','RefModel object',1,'[{\"added\": {}}]',7,1),(8,'2017-12-25 12:01:38.569431','8','RefModel object',1,'[{\"added\": {}}]',7,1),(9,'2017-12-25 12:01:52.593541','9','RefModel object',1,'[{\"added\": {}}]',7,1),(10,'2017-12-25 12:02:10.512877','10','RefModel object',1,'[{\"added\": {}}]',7,1),(11,'2017-12-25 12:02:20.928563','11','RefModel object',1,'[{\"added\": {}}]',7,1),(12,'2017-12-25 12:02:35.882781','12','RefModel object',1,'[{\"added\": {}}]',7,1),(13,'2017-12-25 12:02:47.440378','13','RefModel object',1,'[{\"added\": {}}]',7,1),(14,'2017-12-25 12:03:00.606069','14','RefModel object',1,'[{\"added\": {}}]',7,1),(15,'2017-12-25 13:04:27.602287','1','WorkModel object',1,'[{\"added\": {}}]',8,1),(16,'2017-12-25 13:16:53.832775','1','WorkModel object',2,'[{\"changed\": {\"fields\": [\"href\"]}}]',8,1),(17,'2017-12-25 13:33:06.197684','2','WorkModel object',1,'[{\"added\": {}}]',8,1),(18,'2017-12-26 03:50:09.845054','2','WorkModel object',2,'[{\"changed\": {\"fields\": [\"href\"]}}]',8,1),(19,'2017-12-26 03:50:26.861895','1','WorkModel object',2,'[{\"changed\": {\"fields\": [\"href\"]}}]',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(4,'auth','user'),(7,'ChristmasModel','refmodel'),(8,'ChristmasModel','workmodel'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-12-25 11:34:20.233036'),(2,'auth','0001_initial','2017-12-25 11:34:22.136895'),(3,'admin','0001_initial','2017-12-25 11:34:22.313539'),(4,'admin','0002_logentry_remove_auto_add','2017-12-25 11:34:22.331185'),(5,'contenttypes','0002_remove_content_type_name','2017-12-25 11:34:22.431995'),(6,'auth','0002_alter_permission_name_max_length','2017-12-25 11:34:22.504875'),(7,'auth','0003_alter_user_email_max_length','2017-12-25 11:34:22.594733'),(8,'auth','0004_alter_user_username_opts','2017-12-25 11:34:22.606838'),(9,'auth','0005_alter_user_last_login_null','2017-12-25 11:34:22.641007'),(10,'auth','0006_require_contenttypes_0002','2017-12-25 11:34:22.643623'),(11,'auth','0007_alter_validators_add_error_messages','2017-12-25 11:34:22.654639'),(12,'auth','0008_alter_user_username_max_length','2017-12-25 11:34:22.803870'),(13,'sessions','0001_initial','2017-12-25 11:34:22.832999'),(14,'ChristmasModel','0001_initial','2017-12-25 11:35:28.403424'),(15,'ChristmasModel','0002_workmodel','2017-12-25 12:21:01.720520');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('7cz6q5wdwzvycd88vrtkwgn1d4hkr8hc','NTczNWQ2M2UxMWMyZWM3YjM1MWQ2YTIxMDY4MTE4MzI5NDVkNTAyNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImRjZTQ1MTE0MGMxOTk1N2I5NGYwYTY1YjhhOTUxM2E5YmUzMjEyZmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-01-09 03:49:39.491897'),('b902unegnszjfk80mwka7rqyjaepdvnx','NTczNWQ2M2UxMWMyZWM3YjM1MWQ2YTIxMDY4MTE4MzI5NDVkNTAyNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImRjZTQ1MTE0MGMxOTk1N2I5NGYwYTY1YjhhOTUxM2E5YmUzMjEyZmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-01-08 11:43:59.419134');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-27 12:48:00
