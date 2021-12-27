-- MySQL dump 10.13  Distrib 5.7.33, for Linux (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.7.33-0ubuntu0.18.04.1

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
-- Current Database: `blog`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `blog` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `blog`;

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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add 公告',6,'add_activate'),(17,'Can change 公告',6,'change_activate'),(18,'Can delete 公告',6,'delete_activate'),(19,'Can add 文章',7,'add_article'),(20,'Can change 文章',7,'change_article'),(21,'Can delete 文章',7,'delete_article'),(22,'Can add 大分类',8,'add_bigcategory'),(23,'Can change 大分类',8,'change_bigcategory'),(24,'Can delete 大分类',8,'delete_bigcategory'),(25,'Can add 图片轮播',9,'add_carousel'),(26,'Can change 图片轮播',9,'change_carousel'),(27,'Can delete 图片轮播',9,'delete_carousel'),(28,'Can add 分类',10,'add_category'),(29,'Can change 分类',10,'change_category'),(30,'Can delete 分类',10,'delete_category'),(31,'Can add 友情链接',11,'add_friendlink'),(32,'Can change 友情链接',11,'change_friendlink'),(33,'Can delete 友情链接',11,'delete_friendlink'),(34,'Can add 关键词',12,'add_keyword'),(35,'Can change 关键词',12,'change_keyword'),(36,'Can delete 关键词',12,'delete_keyword'),(37,'Can add 死链',13,'add_silian'),(38,'Can change 死链',13,'change_silian'),(39,'Can delete 死链',13,'delete_silian'),(40,'Can add 标签',14,'add_tag'),(41,'Can change 标签',14,'change_tag'),(42,'Can delete 标签',14,'delete_tag'),(43,'Can add 用户',15,'add_ouser'),(44,'Can change 用户',15,'change_ouser'),(45,'Can delete 用户',15,'delete_ouser'),(46,'Can add 关于自己评论',16,'add_aboutcomment'),(47,'Can change 关于自己评论',16,'change_aboutcomment'),(48,'Can delete 关于自己评论',16,'delete_aboutcomment'),(49,'Can add 文章评论',17,'add_articlecomment'),(50,'Can change 文章评论',17,'change_articlecomment'),(51,'Can delete 文章评论',17,'delete_articlecomment'),(52,'Can add comment user',18,'add_commentuser'),(53,'Can change comment user',18,'change_commentuser'),(54,'Can delete comment user',18,'delete_commentuser'),(55,'Can add 给我留言',19,'add_messagecomment'),(56,'Can change 给我留言',19,'change_messagecomment'),(57,'Can delete 给我留言',19,'delete_messagecomment');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_aboutcomment`
--

DROP TABLE IF EXISTS `comment_aboutcomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment_aboutcomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) NOT NULL,
  `content` longtext NOT NULL,
  `author_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `rep_to_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_aboutcomment_author_id_d11e841e_fk_comment_c` (`author_id`),
  KEY `comment_aboutcomment_parent_id_a12294ac_fk_comment_a` (`parent_id`),
  KEY `comment_aboutcomment_rep_to_id_e44ab5ad_fk_comment_a` (`rep_to_id`),
  CONSTRAINT `comment_aboutcomment_author_id_d11e841e_fk_comment_c` FOREIGN KEY (`author_id`) REFERENCES `comment_commentuser` (`id`),
  CONSTRAINT `comment_aboutcomment_parent_id_a12294ac_fk_comment_a` FOREIGN KEY (`parent_id`) REFERENCES `comment_aboutcomment` (`id`),
  CONSTRAINT `comment_aboutcomment_rep_to_id_e44ab5ad_fk_comment_a` FOREIGN KEY (`rep_to_id`) REFERENCES `comment_aboutcomment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_aboutcomment`
--

LOCK TABLES `comment_aboutcomment` WRITE;
/*!40000 ALTER TABLE `comment_aboutcomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment_aboutcomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_articlecomment`
--

DROP TABLE IF EXISTS `comment_articlecomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment_articlecomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) NOT NULL,
  `content` longtext NOT NULL,
  `author_id` int(11) NOT NULL,
  `belong_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `rep_to_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_articlecomme_author_id_46e6fdb8_fk_comment_c` (`author_id`),
  KEY `comment_articlecomment_belong_id_58e0232c_fk_storm_article_id` (`belong_id`),
  KEY `comment_articlecomme_parent_id_f0ab594d_fk_comment_a` (`parent_id`),
  KEY `comment_articlecomme_rep_to_id_84dab3d5_fk_comment_a` (`rep_to_id`),
  CONSTRAINT `comment_articlecomme_author_id_46e6fdb8_fk_comment_c` FOREIGN KEY (`author_id`) REFERENCES `comment_commentuser` (`id`),
  CONSTRAINT `comment_articlecomme_parent_id_f0ab594d_fk_comment_a` FOREIGN KEY (`parent_id`) REFERENCES `comment_articlecomment` (`id`),
  CONSTRAINT `comment_articlecomme_rep_to_id_84dab3d5_fk_comment_a` FOREIGN KEY (`rep_to_id`) REFERENCES `comment_articlecomment` (`id`),
  CONSTRAINT `comment_articlecomment_belong_id_58e0232c_fk_storm_article_id` FOREIGN KEY (`belong_id`) REFERENCES `storm_article` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_articlecomment`
--

LOCK TABLES `comment_articlecomment` WRITE;
/*!40000 ALTER TABLE `comment_articlecomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment_articlecomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_commentuser`
--

DROP TABLE IF EXISTS `comment_commentuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment_commentuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_commentuser`
--

LOCK TABLES `comment_commentuser` WRITE;
/*!40000 ALTER TABLE `comment_commentuser` DISABLE KEYS */;
INSERT INTO `comment_commentuser` VALUES (1,'jonah','binchengy@163.com','');
/*!40000 ALTER TABLE `comment_commentuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_messagecomment`
--

DROP TABLE IF EXISTS `comment_messagecomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment_messagecomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime(6) NOT NULL,
  `content` longtext NOT NULL,
  `author_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `rep_to_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_messagecomme_author_id_0bb97e6c_fk_comment_c` (`author_id`),
  KEY `comment_messagecomme_parent_id_d4633983_fk_comment_m` (`parent_id`),
  KEY `comment_messagecomme_rep_to_id_029597ed_fk_comment_m` (`rep_to_id`),
  CONSTRAINT `comment_messagecomme_author_id_0bb97e6c_fk_comment_c` FOREIGN KEY (`author_id`) REFERENCES `comment_commentuser` (`id`),
  CONSTRAINT `comment_messagecomme_parent_id_d4633983_fk_comment_m` FOREIGN KEY (`parent_id`) REFERENCES `comment_messagecomment` (`id`),
  CONSTRAINT `comment_messagecomme_rep_to_id_029597ed_fk_comment_m` FOREIGN KEY (`rep_to_id`) REFERENCES `comment_messagecomment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_messagecomment`
--

LOCK TABLES `comment_messagecomment` WRITE;
/*!40000 ALTER TABLE `comment_messagecomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment_messagecomment` ENABLE KEYS */;
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
  KEY `django_admin_log_user_id_c564eba6_fk_user_ouser_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_user_ouser_id` FOREIGN KEY (`user_id`) REFERENCES `user_ouser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-04-03 15:54:13.363479','1','编码技术',1,'[{\"added\": {}}]',8,1),(2,'2021-04-03 15:55:37.228347','1','Django',1,'[{\"added\": {}}]',10,1),(3,'2021-04-03 15:56:11.892401','2','Pytorch',1,'[{\"added\": {}}]',10,1),(4,'2021-04-03 15:58:03.182710','2','理论基础',1,'[{\"added\": {}}]',8,1),(5,'2021-04-03 15:59:29.197299','3','算法与数据结构',1,'[{\"added\": {}}]',8,1),(6,'2021-04-03 15:59:33.244005','2','理论基础',2,'[]',8,1),(7,'2021-04-03 15:59:36.210024','1','编码技术',2,'[]',8,1),(8,'2021-04-03 16:00:19.756326','3','物理学',1,'[{\"added\": {}}]',10,1),(9,'2021-04-03 16:00:54.011022','4','数学',1,'[{\"added\": {}}]',10,1),(10,'2021-04-03 16:01:02.961585','4','数学',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',10,1),(11,'2021-04-03 16:01:33.301987','5','地球物理学',1,'[{\"added\": {}}]',10,1),(12,'2021-04-03 16:02:25.556151','6','链表',1,'[{\"added\": {}}]',10,1),(13,'2021-04-03 16:02:53.934383','7','哈希表',1,'[{\"added\": {}}]',10,1),(14,'2021-04-03 16:03:19.198068','8','二叉树',1,'[{\"added\": {}}]',10,1),(15,'2021-04-03 16:04:05.957373','4','Linux',1,'[{\"added\": {}}]',8,1),(16,'2021-04-03 16:05:11.367742','5','机器学习',1,'[{\"added\": {}}]',8,1),(17,'2021-04-03 16:20:05.347982','1','label',1,'[{\"added\": {}}]',14,1),(18,'2021-04-03 16:20:14.410579','1','keyword',1,'[{\"added\": {}}]',12,1),(19,'2021-04-03 16:20:35.450631','1','test',1,'[{\"added\": {}}]',7,1),(20,'2021-04-03 23:43:26.415258','6','关于Jonah',1,'[{\"added\": {}}]',8,1),(21,'2021-04-03 23:53:03.634569','7','给我留言',1,'[{\"added\": {}}]',8,1),(22,'2021-04-03 23:59:24.841179','1','test',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(23,'2021-04-04 16:01:54.716015','1','test',2,'[{\"changed\": {\"fields\": [\"img_link\", \"loves\", \"slug\"]}}]',7,1),(24,'2021-04-04 16:48:11.741778','2','Django',1,'[{\"added\": {}}]',14,1),(25,'2021-04-04 16:59:43.549045','3','MTV',1,'[{\"added\": {}}]',14,1),(26,'2021-04-04 17:00:01.930515','4','MVC',1,'[{\"added\": {}}]',14,1),(27,'2021-04-04 17:00:27.359569','2','Django',1,'[{\"added\": {}}]',12,1),(28,'2021-04-04 17:00:33.404983','3','MTV',1,'[{\"added\": {}}]',12,1),(29,'2021-04-04 17:00:39.186031','4','MVC',1,'[{\"added\": {}}]',12,1),(30,'2021-04-04 17:00:48.771900','2','MVC与MTV开发模式',1,'[{\"added\": {}}]',7,1),(31,'2021-04-04 17:00:58.923648','1','test',3,'',7,1),(32,'2021-04-04 17:02:21.540680','2','MVC与MTV开发模式',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(33,'2021-04-04 17:05:19.507338','2','MVC与MTV开发模式',2,'[]',7,1),(34,'2021-04-04 17:07:35.472236','2','MVC与MTV开发模式',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(35,'2021-04-04 17:08:55.976957','2','MVC与MTV开发模式',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(36,'2021-04-04 17:10:48.075443','2','MVC与MTV开发模式',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(37,'2021-04-04 17:11:31.305937','2','MVC与MTV开发模式',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(38,'2021-04-04 17:11:49.149632','2','MVC与MTV开发模式',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(39,'2021-04-04 17:16:34.909258','2','MVC与MTV开发模式',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(40,'2021-04-04 17:20:08.011177','2','MVC与MTV开发模式',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(41,'2021-04-04 17:23:03.865454','2','MVC与MTV开发模式',2,'[]',7,1),(42,'2021-04-04 17:29:31.695855','2','MVC与MTV开发模式',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(43,'2021-04-04 17:30:19.571614','2','MVC与MTV开发模式',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(44,'2021-04-04 17:32:13.536174','2','MVC与MTV开发模式',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(45,'2021-04-04 17:34:09.813436','2','MVC与MTV开发模式',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(46,'2021-04-04 17:35:15.366283','2','MVC与MTV开发模式',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(47,'2021-04-04 17:59:28.769196','2','博客建设中……',1,'[{\"added\": {}}]',6,1),(48,'2021-04-04 17:59:37.800630','2','博客建设中……',2,'[{\"changed\": {\"fields\": [\"is_active\"]}}]',6,1),(49,'2021-04-05 19:20:04.787202','9','MYSQL',1,'[{\"added\": {}}]',10,1),(50,'2021-04-05 19:36:58.957239','5','MySQL',1,'[{\"added\": {}}]',14,1),(51,'2021-04-05 19:37:34.701110','5','数据库迁移',1,'[{\"added\": {}}]',12,1),(52,'2021-04-05 19:37:41.587902','6','MySQL',1,'[{\"added\": {}}]',12,1),(53,'2021-04-05 19:37:55.848307','3','数据迁移 — MySQL数据库',1,'[{\"added\": {}}]',7,1),(54,'2021-04-05 19:39:15.584336','3','数据迁移 — MySQL数据库',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(55,'2021-04-05 19:39:58.001000','3','数据迁移 — MySQL数据库',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(56,'2021-04-05 19:40:33.571085','3','数据迁移 — MySQL数据库',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(57,'2021-04-05 19:41:21.452313','3','数据迁移 — MySQL数据库',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(58,'2021-04-05 19:41:41.967899','3','数据迁移 — MySQL数据库',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(59,'2021-04-05 19:49:31.687266','9','MySQL',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',10,1),(60,'2021-04-05 22:31:38.832383','3','数据迁移 — MySQL数据库',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(61,'2021-04-05 22:32:20.452812','3','数据迁移 — MySQL数据库',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(62,'2021-04-10 04:48:03.421744','7','Nginx',1,'[{\"added\": {}}]',12,1),(63,'2021-04-10 04:48:31.912287','8','uWSGI',1,'[{\"added\": {}}]',12,1),(64,'2021-04-10 04:48:44.604546','4','nginx + uWSGI + Djan',1,'[{\"added\": {}}]',7,1),(65,'2021-04-10 04:52:55.911863','4','nginx + uWSGI + Djan',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(66,'2021-04-10 04:55:21.447291','4','nginx + uWSGI + Djan',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(67,'2021-04-10 04:58:01.031684','4','nginx + uWSGI + Djan',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(16,'comment','aboutcomment'),(17,'comment','articlecomment'),(18,'comment','commentuser'),(19,'comment','messagecomment'),(4,'contenttypes','contenttype'),(5,'sessions','session'),(6,'storm','activate'),(7,'storm','article'),(8,'storm','bigcategory'),(9,'storm','carousel'),(10,'storm','category'),(11,'storm','friendlink'),(12,'storm','keyword'),(13,'storm','silian'),(14,'storm','tag'),(15,'user','ouser');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-04-02 23:45:04.489545'),(2,'contenttypes','0002_remove_content_type_name','2021-04-02 23:45:06.782497'),(3,'auth','0001_initial','2021-04-02 23:45:10.832729'),(4,'auth','0002_alter_permission_name_max_length','2021-04-02 23:45:11.759107'),(5,'auth','0003_alter_user_email_max_length','2021-04-02 23:45:11.828618'),(6,'auth','0004_alter_user_username_opts','2021-04-02 23:45:11.881628'),(7,'auth','0005_alter_user_last_login_null','2021-04-02 23:45:11.957141'),(8,'auth','0006_require_contenttypes_0002','2021-04-02 23:45:12.016152'),(9,'auth','0007_alter_validators_add_error_messages','2021-04-02 23:45:12.173179'),(10,'auth','0008_alter_user_username_max_length','2021-04-02 23:45:12.253693'),(11,'user','0001_initial','2021-04-02 23:45:18.206811'),(12,'admin','0001_initial','2021-04-02 23:45:21.204337'),(13,'admin','0002_logentry_remove_auto_add','2021-04-02 23:45:21.300855'),(14,'storm','0001_initial','2021-04-02 23:45:25.813148'),(15,'comment','0001_initial','2021-04-02 23:45:30.299436'),(16,'comment','0002_auto_20190330_2030','2021-04-02 23:45:38.353874'),(17,'comment','0003_auto_20210402_1849','2021-04-02 23:45:38.585915'),(18,'comment','0004_auto_20210402_2344','2021-04-02 23:45:38.796452'),(19,'sessions','0001_initial','2021-04-02 23:45:39.789627'),(20,'storm','0002_auto_20190330_2030','2021-04-02 23:45:48.913731'),(21,'storm','0003_auto_20210402_1837','2021-04-02 23:45:48.947736'),(22,'storm','0004_auto_20210402_1848','2021-04-02 23:45:49.056255'),(23,'storm','0005_auto_20210402_2344','2021-04-02 23:45:49.106264'),(24,'user','0002_auto_20210402_1849','2021-04-02 23:45:49.156273'),(25,'user','0003_auto_20210402_2344','2021-04-02 23:45:49.206282'),(26,'storm','0006_auto_20210404_1742','2021-04-04 17:42:32.257513');
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
INSERT INTO `django_session` VALUES ('atwl9fhbz7lb4djecsa304j9no7ooz35','ZWFlNjQzYzE5ZjJmNDQ2M2UxY2Q4MjJhODRmMzI2NzQ3MzBjOTYzYjp7ImlzX3JlYWRfMiI6MTYxNzk5NjU4Ny45ODk5NTM1LCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNTJhZTUwZTJjNmVmNWYyZjA3N2EwOGM0MWU0ZjQ1ZWU2NWYyNWU5MyJ9','2021-04-24 03:33:18.882631'),('ojtgdk7q8w7k7bxhi03mpv1sju33rcdc','MjMzMDEzYzM2YjIzMzdhNDhhMDFkN2JmZmQ5Y2U5OTM1ZGZkYzU0MTp7ImlzX3JlYWRfMSI6MTYxNzQ2MzA2OC40OTM0MTM3LCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNTJhZTUwZTJjNmVmNWYyZjA3N2EwOGM0MWU0ZjQ1ZWU2NWYyNWU5MyJ9','2021-04-17 23:42:58.714340'),('s1rgfq0226vx2aiukriyhqxla398f5v1','NjIyNTJlMjQxN2JjNzhhODM0YTMzYWQwNTg1ZTRiNzdlMWE2Yjg1MTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MmFlNTBlMmM2ZWY1ZjJmMDc3YTA4YzQxZTRmNDVlZTY1ZjI1ZTkzIn0=','2021-04-19 19:19:25.590391'),('w8za37kdtfbo5ncb4eedxf8zk965bq30','N2E1MzQ2NzBmOTkxODMwMjYxODIwZTExZDZkOWU4NDIxZWFjMTE1MDp7ImlzX3JlYWRfMyI6MTYxNzgwMTU2Mi44MTQ1Mjc4LCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNTJhZTUwZTJjNmVmNWYyZjA3N2EwOGM0MWU0ZjQ1ZWU2NWYyNWU5MyJ9','2021-04-22 00:38:51.211738'),('zbuwzt4g0u8kgm73q0yp1wtg5dia9nhp','NjIyNTJlMjQxN2JjNzhhODM0YTMzYWQwNTg1ZTRiNzdlMWE2Yjg1MTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MmFlNTBlMmM2ZWY1ZjJmMDc3YTA4YzQxZTRmNDVlZTY1ZjI1ZTkzIn0=','2021-04-19 19:48:55.169716');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storm_activate`
--

DROP TABLE IF EXISTS `storm_activate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storm_activate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` longtext,
  `is_active` tinyint(1) NOT NULL,
  `add_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storm_activate`
--

LOCK TABLES `storm_activate` WRITE;
/*!40000 ALTER TABLE `storm_activate` DISABLE KEYS */;
INSERT INTO `storm_activate` VALUES (2,'博客建设中……',1,'2021-04-04 17:59:28.760694');
/*!40000 ALTER TABLE `storm_activate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storm_article`
--

DROP TABLE IF EXISTS `storm_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storm_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `summary` longtext NOT NULL,
  `body` longtext NOT NULL,
  `img_link` varchar(255) NOT NULL,
  `create_date` datetime(6) NOT NULL,
  `update_date` datetime(6) NOT NULL,
  `views` int(11) NOT NULL,
  `loves` int(11) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `storm_article_author_id_113892f7_fk_user_ouser_id` (`author_id`),
  KEY `storm_article_category_id_c56e32c4_fk_storm_category_id` (`category_id`),
  CONSTRAINT `storm_article_author_id_113892f7_fk_user_ouser_id` FOREIGN KEY (`author_id`) REFERENCES `user_ouser` (`id`),
  CONSTRAINT `storm_article_category_id_c56e32c4_fk_storm_category_id` FOREIGN KEY (`category_id`) REFERENCES `storm_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storm_article`
--

LOCK TABLES `storm_article` WRITE;
/*!40000 ALTER TABLE `storm_article` DISABLE KEYS */;
INSERT INTO `storm_article` VALUES (2,'MVC与MTV开发模式','MVC与MTV开发模式在 Web 开发领域还有另外一个非常著名的设计模式——MVC，它和 MTV 又有什么区别呢？','<h2 style=\"margin: 15px auto; font-size: 24px; line-height: 1.6; color: rgb(68, 68, 68); font-family: &quot;Helvetica Neue&quot;, 微软雅黑, &quot;Microsoft Yahei&quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-family: arial, helvetica, sans-serif; color: rgb(32, 88, 103);\">1. MVC设计模式</span></h2><p style=\"text-indent: 2em;\"><span style=\"background-color: rgb(255, 255, 255); font-family: arial, helvetica, sans-serif; color: rgb(32, 88, 103); font-size: 16px;\">我们先对 MVC 设计模式进行介绍，它是 Web 设计模式的经典之作，MTV 模式也是在它的基础上衍生而来。</span></p><p style=\"text-indent: 2em;\"><span style=\"text-indent: 2em; background-color: rgb(255, 255, 255); font-family: arial, helvetica, sans-serif; color: rgb(32, 88, 103); font-size: 16px;\">MVC 是 Model-View-Controller 的缩写，其中每个单词都有其不同的含义：</span></p><p style=\"text-indent: 2em;\"><span style=\"color: rgb(32, 88, 103); font-family: arial, helvetica, sans-serif; font-size: 16px;\">●&nbsp; Modle&nbsp;代表数据存储层，是对数据表的定义和数据的增删改查；</span></p><p style=\"text-indent: 2em;\"><span style=\"color: rgb(32, 88, 103); font-family: arial, helvetica, sans-serif; text-indent: 0em; font-size: 16px;\">●&nbsp;&nbsp;View&nbsp;代表视图层，是系统前端显示部分，它负责显示什么和如何进行显示；</span></p><p style=\"text-indent: 2em;\"><span style=\"color: rgb(32, 88, 103); font-family: arial, helvetica, sans-serif; text-indent: 0em; font-size: 16px;\">●&nbsp;&nbsp;Controller&nbsp;代表控制层，负责根据从 View&nbsp;层输入的指令来检索 Model 层的数据，并在该层编写代码产生结果并输出。</span></p><p style=\"text-align: center;\"><img src=\"/media/upimg/mvc_20210404165312_238.png\" title=\"\" alt=\"mvc.png\"/></p><p style=\"text-align: center;\"><span style=\"font-size: 14px; text-align: center; background-color: rgb(255, 255, 255); font-family: arial, helvetica, sans-serif; color: rgb(32, 88, 103);\">图1&nbsp; MVC 设计模式示意图</span></p><p style=\"text-indent: 2em;\"><span style=\"text-align: center; background-color: rgb(255, 255, 255); font-family: arial, helvetica, sans-serif; font-size: 16px; color: rgb(32, 88, 103);\">MVC 设计模式的请求与响应过程描述如下：</span></p><p style=\"text-indent: 2em;\"><span style=\"color: rgb(32, 88, 103);\"><span style=\"color: rgb(32, 88, 103); font-family: arial, helvetica, sans-serif;\">●&nbsp;&nbsp;</span>用户通过浏览器向服务器发起 request 请求，Controller 层接受请求后，同时向&nbsp;Model 层和 View 发送指令；</span></p><p style=\"text-indent: 2em;\"><span style=\"color: rgb(32, 88, 103);\"><span style=\"color: rgb(32, 88, 103); font-family: arial, helvetica, sans-serif;\">●&nbsp;&nbsp;</span>Mole 层根据指令与数据库交互并选择相应业务数据，然后将数据发送给 Controller 层；</span></p><p style=\"text-indent: 2em;\"><span style=\"color: rgb(32, 88, 103);\"><span style=\"color: rgb(32, 88, 103); font-family: arial, helvetica, sans-serif;\">●&nbsp;&nbsp;</span>View 层接收到 Controller 的指令后，加载用户请求的页面，并将此页面发送给 Controller 层；</span></p><p style=\"text-indent: 2em;\"><span style=\"color: rgb(32, 88, 103);\"><span style=\"color: rgb(32, 88, 103); font-family: arial, helvetica, sans-serif;\">●&nbsp;&nbsp;</span>Controller 层接收到 Model 层和 View 层的数据后，将它们组织成响应格式发送给浏览器，浏览器通过解析后把页面展示出来。</span></p><p style=\"text-indent: 2em;\"><span style=\"background-color: rgb(255, 255, 255); font-family: arial, helvetica, sans-serif; font-size: 16px; color: rgb(32, 88, 103);\">MVC 的 3 层之间紧密相连，但又相互独立，每一层的修改都不会影响其它层，每一层都提供了各自独立的接口供其它层调用，MVC 的设计模式降低了代码之间的耦合性（即关联性），增加了模块的可重用性，这就是 MVC 的设计模式。</span></p><h2 style=\"white-space: normal; margin: 15px auto; font-size: 24px; line-height: 1.6; color: rgb(68, 68, 68); font-family: &quot;Helvetica Neue&quot;, 微软雅黑, &quot;Microsoft Yahei&quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(32, 88, 103);\"><span style=\"font-family: arial, helvetica, sans-serif;\">2.&nbsp;</span>MTV设计模式</span></h2><p style=\"text-indent: 2em;\"><span style=\"background-color: rgb(255, 255, 255); font-family: arial, helvetica, sans-serif; font-size: 16px; color: rgb(32, 88, 103);\">那么 Django 的 MTV 又是怎么回事呢？下面讲解 Django 的设计模式。</span></p><p style=\"text-indent: 2em;\"><span style=\"font-size: 16px; font-family: arial, helvetica, sans-serif; background-color: rgb(255, 255, 255); color: rgb(32, 88, 103);\">Django 借鉴了经典的 MVC 模式，它也将交互的过程分为了 3 个层次，也就是 MTV 设计模式；<br style=\"color: rgb(68, 68, 68); font-family: &quot;Helvetica Neue&quot;, 微软雅黑, &quot;Microsoft Yahei&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/></span></p><p style=\"text-indent: 2em;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 16px; color: rgb(32, 88, 103);\"><span style=\"color: rgb(32, 88, 103); font-family: arial, helvetica, sans-serif;\">●&nbsp;&nbsp;</span>Model：数据存储层，处理所有数据相关的业务，和数据库进行交互，并提供数据的增删改查</span></p><p style=\"text-indent: 2em;\"><span style=\"color: rgb(32, 88, 103); font-family: arial, helvetica, sans-serif; text-indent: 2em;\"><span style=\"color: rgb(32, 88, 103); font-family: arial, helvetica, sans-serif;\">●&nbsp;&nbsp;</span>Template：模板层（也叫表现层）具体来处理页面的显示；</span></p><p style=\"text-indent: 2em;\"><span style=\"color: rgb(32, 88, 103); font-family: arial, helvetica, sans-serif;\"><span style=\"color: rgb(32, 88, 103); font-family: arial, helvetica, sans-serif;\">●&nbsp;&nbsp;</span>View：业务逻辑层，处理具体的业务逻辑，它的作用是连通Model 层和 Template 。</span></p><p dir=\"ltr\" style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; color: rgb(32, 88, 103);\"><img src=\"/media/upimg/mtv_20210404165732_912.png\" title=\"\" alt=\"mtv.png\"/></span></p><p dir=\"ltr\" style=\"text-align: center;\"><span style=\"font-size: 14px; text-align: center; background-color: rgb(255, 255, 255); font-family: arial, helvetica, sans-serif; color: rgb(32, 88, 103);\">图2&nbsp; MTV 设计模式示意</span></p><p dir=\"ltr\" style=\"text-indent: 2em;\"><span style=\"font-family: arial, helvetica, sans-serif; text-align: center; background-color: rgb(255, 255, 255); font-size: 16px; color: rgb(32, 88, 103);\">我们按照 MVC 的设计模式对 MTV 进行分析，MTV 设计模式中，用 View 层取代了 Controller 层的位置，用 Template 层取代了原来 View 层的位置。</span></p><p dir=\"ltr\" style=\"text-indent: 2em;\"><span style=\"background-color: rgb(255, 255, 255); color: rgb(32, 88, 103); font-family: arial, helvetica, sans-serif; text-align: center; text-indent: 2em;\">初次接触 Django 的设计模式的人，可能会对 Template 层产生疑问，其实 Template 英文的含义就是“模板”的意思，你可以简单理解成，它是一个 HTML 页面 ，HTML 页面的渲染在视图层完成。</span></p><p dir=\"ltr\" style=\"text-indent: 2em;\"><span style=\"background-color: rgb(255, 255, 255); color: rgb(32, 88, 103); font-family: arial, helvetica, sans-serif; text-align: center; text-indent: 2em;\">同样我们也对 MTV 设计模式的请求与响应过程进行描述：</span></p><p style=\"text-indent: 2em;\"><span style=\"color: rgb(32, 88, 103);\"><span style=\"color: rgb(32, 88, 103); font-family: arial, helvetica, sans-serif;\">●&nbsp;&nbsp;</span>用户通过浏览器对服务器发起 request 请求，服务器接收请求后，通过 View 的业务逻辑层进行分析，同时向 Model 层和 Template 层发送指令；</span></p><p style=\"text-indent: 2em;\"><span style=\"color: rgb(32, 88, 103);\"><span style=\"color: rgb(32, 88, 103); font-family: arial, helvetica, sans-serif;\">●&nbsp;&nbsp;</span>Mole 层与数据库进行交互，将数据返回给 View 层；</span></p><p style=\"text-indent: 2em;\"><span style=\"color: rgb(32, 88, 103);\"><span style=\"color: rgb(32, 88, 103); font-family: arial, helvetica, sans-serif;\">●&nbsp;&nbsp;</span>Template 层接收到指令后，调用相应的模板，并返回给 View 层；</span></p><p style=\"text-indent: 2em;\"><span style=\"color: rgb(32, 88, 103);\"><span style=\"color: rgb(32, 88, 103); font-family: arial, helvetica, sans-serif;\">●&nbsp;&nbsp;</span>View 层接收到模板与数据后，首先对模板进行渲染（即将相应的数据赋值给模板），然后组织成响应格式返回给浏览器，浏览器进行解析后并最终呈现给用户。</span></p><p style=\"text-indent: 2em;\"><span style=\"background-color: rgb(255, 255, 255); font-family: arial, helvetica, sans-serif; font-size: 16px; color: rgb(32, 88, 103);\">通过以上两种设计模式的比较， 我们可以得出 MTV 是 MVC 的一种细化，将原来 MVC 中的 V 层拿出来进行分离，视图的显示与如何显示交给 Template 层，而 View 层更专注于实现业务逻辑。其实在 Django 是有 Controller 层的，只不过它由框架本身来实现，所以我们不用关心它。Django 更关注于M、T 和 V。</span></p>','/static/images/django2.0.png','2021-04-04 17:00:47.615695','2021-04-04 17:35:14.884698',1,0,'index-0',1,1),(3,'数据迁移 — MySQL数据库','数据迁移（data migration）是指选择、准备、提取和转换数据，并将数据从一个计算机存储系统永久地传输到另一个计算机存储系统的过程。此外，验证迁移数据的完整性和退役原来旧的数据存储，也被认为是整个数据迁移过程的一部分。数据迁移是任何系统实现、升级或集成的关键考虑因素，通常以尽可能自动化的方式执行，从而将人力资源从繁琐的任务中解放出来。数据迁移有多种原因，包括服务器或存储设备更换、维护或升级、应用程序迁移、网站集成、灾难恢复和数据中心迁移。','<h2 style=\"text-align: left;\">数据导出<br style=\"text-align: left;\"/></h2><h3 style=\"text-align: left;\"><span style=\"font-size: 18px;\">mysqldump备份基本语法：</span></h3><pre class=\"brush:bash;toolbar:false\">mysqldump&nbsp;-u&nbsp;username&nbsp;-p&nbsp;-B&nbsp;dbname&nbsp;table1&nbsp;table2&nbsp;...-&gt;&nbsp;BackupName.sql</pre><p>其中：</p><p><span style=\"color: rgb(32, 88, 103); font-family: arial, helvetica, sans-serif; text-indent: 30px; background-color: rgb(255, 255, 255);\">●&nbsp;&nbsp;</span>-B表示在备份脚本中生成创建数据库的语句，若需要创建新的数据库需添加此语句；</p><p><span style=\"color: rgb(32, 88, 103); font-family: arial, helvetica, sans-serif; text-indent: 30px; background-color: rgb(255, 255, 255);\">●&nbsp;&nbsp;</span>dbname参数表示数据库的名称；<br/></p><p><span style=\"color: rgb(32, 88, 103); font-family: arial, helvetica, sans-serif; text-indent: 30px; background-color: rgb(255, 255, 255);\">●&nbsp;&nbsp;</span>table1和table2参数表示需要备份的表的名称，为空则整个数据库备份；</p><p><span style=\"color: rgb(32, 88, 103); font-family: arial, helvetica, sans-serif; text-indent: 30px; background-color: rgb(255, 255, 255);\">●&nbsp;&nbsp;</span>BackupName.sql参数表设计备份文件的名称，文件名前面可以加上一个绝对路径。通常将数据库被分成一个后缀名为sql的文件；</p><p>示例：</p><pre class=\"brush:as3;toolbar:false\">mysqldump&nbsp;-u&nbsp;root&nbsp;-p&nbsp;blog&nbsp;&gt;&nbsp;D:\\blog_backup.sql</pre><p>表示登陆root用户，选择blog数据库，备份文件保存至D盘blog_backup.sql<br/></p><h2>数据还原<span style=\"font-size: 36px;\"></span><br/></h2><h3>建立数据库语法：<br/></h3><p>数据还原之前还需要先在mysql中建立要恢复的数据库，并且需要使用相同的默认字符集。</p><p>注：若在备份脚本中生成了创建数据库的语句，则此步可以忽略。</p><pre class=\"brush:bash;toolbar:false\">create&nbsp;database&nbsp;blog&nbsp;charset=utf8;</pre><h3>source命令</h3><p>如果在进行数据导出时，直接生成了可执行的SQL文件，则可以使用source命令执行该文件，这种方式同时适用与单表数据导入与整个数据库导入。</p><pre class=\"brush:bash;toolbar:false;\">mysql&gt;&nbsp;source&nbsp;C:\\Users\\Jonah\\Desktop\\blog\\blog.sql;</pre><p>加载sql文件后会显示每条SQL语句的执行结果，其中Query OK代表成功，rows affected代表当前语句对数据库的影响行数（0 rows affected对应建表语句和各种指令，只要显示Query OK就证明执行成功）。</p>','/static/images/mysql.jpg','2021-04-05 19:37:54.544459','2021-04-05 22:32:20.335791',1,0,'index-1',1,9),(4,'nginx + uWSGI + Django 部署','实现域名访问服务器上 Django 搭建的 API 项目。','<blockquote><p><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">把项目从本地迁移到服务器真不容易，犯了很多错误，也恶补了许多基础知识。</span></p></blockquote><hr/><h2 style=\"box-sizing: border-box; outline: 0px; --tw-shadow:0 0 #0000 ; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(66, 153, 225, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000 ; margin: 8px 0px 16px; padding: 0px; font-family: &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, SimHei, Arial, SimSun; font-size: 24px; color: rgb(79, 79, 79); line-height: 32px; overflow-wrap: break-word; font-variant-ligatures: common-ligatures; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\"></span></h2><h2 style=\"box-sizing: border-box; outline: 0px; --tw-shadow:0 0 #0000 ; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(66, 153, 225, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000 ; margin: 8px 0px 16px; padding: 0px; font-family: &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, SimHei, Arial, SimSun; font-size: 22px; color: rgb(79, 79, 79); line-height: 30px; overflow-wrap: break-word; font-variant-ligatures: common-ligatures; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-size: 24px; color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">1. <a href=\"https://blog.csdn.net/yilovexing/article/details/82969103\" target=\"_blank\" title=\"工作原理\">工作原理</a></span></h2><p><span style=\"font-size: 16px; color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">●&nbsp;&nbsp;将&nbsp;Nginx 作为服务器最前端，接收 web 的所有请求并统一管理。</span></p><p><span style=\"font-size: 16px; color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">●&nbsp;&nbsp;Nginx 自己处理所有静态请求（Nginx 的强项）。</span></p><p><span style=\"font-size: 16px; color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">●&nbsp;&nbsp;所有非静态请求通过 uWSGI 传递给 Django，由 Django 来进行处理，从而完成一次 web 请求。</span></p><p style=\"text-align:center\"><span style=\"font-size: 16px; color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\"><img src=\"/media/upimg/20181008155427580_20210410045747_540.jpg\" alt=\"20181008155427580.jpg\"/></span></p><p style=\"text-align:center\"><span style=\"font-size: 16px; color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\"></span></p><p><span style=\"font-size: 16px; color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\"></span></p><h3 style=\"white-space: normal; box-sizing: border-box; outline: 0px; --tw-shadow:0 0 #0000 ; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(66, 153, 225, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000 ; margin: 8px 0px 16px; padding: 0px; font-family: &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, SimHei, Arial, SimSun; font-size: 24px; color: rgb(79, 79, 79); line-height: 32px; overflow-wrap: break-word; font-variant-ligatures: common-ligatures; background-color: rgb(255, 255, 255);\"><span style=\"font-size: 18px; color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">uWSGI 概念</span></h3><p><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">●&nbsp;&nbsp;一个web服务器面对的是外部世界。它能直接从文件系统提供文件 (HTML, 图像， CSS等等)。然而，它无法 直接与Django应用通信；它需要借助一些工具的帮助，这些东西会运行运用，接收来自web客户端（例如浏览器）的请求，然后返回响应。</span></p><p><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">●&nbsp;&nbsp;一个Web服务器网关接口（Web Server Gateway Interface） - WSGI - 就是干这活的。 WSGI 是一种Python标准。</span></p><p><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">●&nbsp;&nbsp;uWSGI是一种WSGI实现。在这个教程中，我们将设置uWSGI，让它创建一个Unix socket，并且通过WSGI协议提供响应到web服务器。最后，我们完整的组件栈看起来将是这样的:</span></p><p><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">the web client &lt;-&gt; the web server &lt;-&gt; the socket &lt;-&gt; uwsgi &lt;-&gt; Django</span></p><p><span style=\"font-size: 16px; color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\"></span></p><h3 style=\"white-space: normal; box-sizing: border-box; outline: 0px; --tw-shadow:0 0 #0000 ; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(66, 153, 225, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000 ; margin: 8px 0px 16px; padding: 0px; font-family: &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, SimHei, Arial, SimSun; font-size: 24px; color: rgb(79, 79, 79); line-height: 32px; overflow-wrap: break-word; font-variant-ligatures: common-ligatures; background-color: rgb(255, 255, 255);\"><span style=\"font-size: 18px; color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">Nginx 概念</span></h3><p><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\"><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif; font-size: 16px;\"></span>●&nbsp;&nbsp;Nginx 是一个免费开源并且高性能的HTTP服务器和反向代理，还是一个IMAP/POP3代理服务器。the web client &lt;-&gt; the web server<br/></span></p><hr/><h2 style=\"text-align: left;\"><span style=\"font-size: 24px; color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">2.&nbsp;项目环境</span></h2><p><span style=\"font-size: 16px; color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\"></span></p><p><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">●&nbsp;&nbsp;操作系统：&nbsp;Ubuntu 18.04</span></p><p><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">●&nbsp;&nbsp;编程语言：&nbsp;Python 3.6.9</span></p><p><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">●&nbsp;&nbsp;Web 框架：&nbsp;Django 1.11.12</span></p><p><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">●&nbsp;&nbsp;Web 服务器：&nbsp;uWSGI 2.0.19.1</span></p><p><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">●&nbsp;&nbsp;Web 服务器：&nbsp;Nginx 1.14.0</span></p><pre class=\"brush:bash;toolbar:false\"><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">sudo&nbsp;apt-get&nbsp;install&nbsp;python-dev&nbsp;nginx<br/>sudo&nbsp;pip&nbsp;install&nbsp;uwsgi<br/></span></pre><hr/><h2><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif; font-size: 24px;\">3.&nbsp;基础配置</span><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\"><br/></span></h2><h3 style=\"box-sizing: border-box; outline: 0px; --tw-shadow:0 0 #0000 ; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(66, 153, 225, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000 ; margin: 8px 0px 16px; padding: 0px; font-family: &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, SimHei, Arial, SimSun; font-size: 22px; color: rgb(79, 79, 79); line-height: 30px; overflow-wrap: break-word; font-variant-ligatures: common-ligatures; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-size: 18px; color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">配置 myapi_uwsgi.ini 文件</span></h3><pre class=\"brush:plain;toolbar:false;\"><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">[uwsgi]<br/><br/># 使用nginx连接时使用<br/>socket=/home/project/blog/blog.sock<br/># 直接做web服务器使用<br/>http=:8156<br/><br/>#项目目录<br/>chdir=/home/project/blog<br/>#项目中wsgi.py文件的目录，相对于项目目录<br/>wsgi-file=blog/wsgi.py<br/><br/>processes=4<br/>threads=2<br/>master=True<br/>pidfile=uwsgi.pid<br/>buffer-size = 65536<br/><br/># 日志信息配置 ，根据自己的需求进行配置，这里为了方便查看，我将日志信息放在了项目目录下<br/>daemonize=/home/project/blog/blog/uwsgi.log<br/><br/># 不记录正常信息，只记录错误信息<br/>disable-logging = true<br/></span></pre><p><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\"><strong>注意：</strong></span></p><p><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">●&nbsp;&nbsp;socket=/home/project/blog/blog.sock 文件会在执行uwsgi命令时自动生成，表示在内网环境中&nbsp;Nginx 和 uWSGI 之间通信的 socket 端口号；</span></p><p><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">●&nbsp;&nbsp;http=:8156&nbsp;表示在内网环境中通过主机地址+端口号访问项目；</span></p><p><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\"></span></p><h3 style=\"white-space: normal; box-sizing: border-box; outline: 0px; --tw-shadow:0 0 #0000 ; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(66, 153, 225, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000 ; margin: 8px 0px 16px; padding: 0px; font-family: &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, SimHei, Arial, SimSun; font-size: 22px; color: rgb(79, 79, 79); line-height: 30px; overflow-wrap: break-word; font-variant-ligatures: common-ligatures; background-color: rgb(255, 255, 255);\"><span style=\"font-size: 18px; color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">配置&nbsp;Nginx</span></h3><pre class=\"brush:bash;toolbar:false\"><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">sudo&nbsp;vim&nbsp;/etc/nginx/sites-available/blog.conf<br/></span></pre><p style=\"white-space: normal; box-sizing: border-box; outline: 0px; --tw-shadow:0 0 #0000 ; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(66, 153, 225, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000 ; margin: 8px 0px 16px; padding: 0px; font-family: &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, SimHei, Arial, SimSun; font-size: 22px; color: rgb(79, 79, 79); line-height: 30px; overflow-wrap: break-word; font-variant-ligatures: common-ligatures; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\"><span style=\"font-family: arial, helvetica, sans-serif; color: rgb(63, 63, 63); font-weight: 400; font-size: 16px;\"></span><span style=\"font-family: arial, helvetica, sans-serif; color: rgb(63, 63, 63); font-size: 16px;\">●&nbsp;&nbsp;新建一个&nbsp;Nginx 配置文件写入以下文件信息：</span><br/></span></p><pre class=\"brush:plain;toolbar:false;\"><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">server&nbsp;{<br/>&nbsp;&nbsp;&nbsp;&nbsp;listen&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;8000;&nbsp;&nbsp;&nbsp;&nbsp;#&nbsp;tcp端口<br/>&nbsp;&nbsp;&nbsp;&nbsp;listen&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[::]:8000;&nbsp;&nbsp;&nbsp;&nbsp;#&nbsp;tcp6端口<br/>&nbsp;&nbsp;&nbsp;&nbsp;server_name&nbsp;39.105.76.52;&nbsp;&nbsp;&nbsp;&nbsp;#&nbsp;服务器公网地址<br/>&nbsp;&nbsp;&nbsp;&nbsp;charset&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;utf-8;<br/>&nbsp;&nbsp;&nbsp;&nbsp;proxy_connect_timeout&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;600;&nbsp;&nbsp;&nbsp;#&nbsp;连接请求超时时间<br/>&nbsp;&nbsp;&nbsp;&nbsp;proxy_read_timeout&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;600;&nbsp;&nbsp;&nbsp;#&nbsp;应答请求超时时间<br/>&nbsp;&nbsp;&nbsp;&nbsp;proxy_send_timeout&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;600;&nbsp;&nbsp;&nbsp;#&nbsp;发送请求超时时间<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;client_max_body_size&nbsp;75M;<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;#&nbsp;配置HTTPS证书信息<br/>&nbsp;&nbsp;&nbsp;&nbsp;ssl&nbsp;on;<br/>&nbsp;&nbsp;&nbsp;&nbsp;ssl_certificate&nbsp;/home/project/1_jonahyoo.com_bundle.crt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#&nbsp;证书放置位置<br/>&nbsp;&nbsp;&nbsp;&nbsp;ssl_certificate_key&nbsp;/home/project/2_jonahyoo.com.key;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#&nbsp;证书放置位置<br/>&nbsp;&nbsp;&nbsp;&nbsp;ssl_session_timeout&nbsp;5m;<br/>&nbsp;&nbsp;&nbsp;&nbsp;ssl_protocols&nbsp;TLSv1&nbsp;TLSv1.1&nbsp;TLSv1.2;<br/>&nbsp;&nbsp;&nbsp;&nbsp;ssl_prefer_server_ciphers&nbsp;on;<br/>&nbsp;&nbsp;&nbsp;&nbsp;ssl_ciphers&nbsp;ECDHE-RSA-AES128-GCM-SHA256:HIGH:!aNULL:!MD5:!RC4:!DHE;<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;location&nbsp;/media&nbsp;&nbsp;{<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;alias&nbsp;/home/project/blog/media;<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;location&nbsp;/static&nbsp;{<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;alias&nbsp;/home/project/blog/collect_static;<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;location&nbsp;/&nbsp;{<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;uwsgi_pass&nbsp;&nbsp;unix:///home/project/blog/blog.sock;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;include&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/etc/nginx/uwsgi_params;<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>}<br/></span></pre><p><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">●&nbsp;&nbsp;激活网站：</span></p><pre class=\"brush:bash;toolbar:false\"><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">sudo&nbsp;ln&nbsp;-s&nbsp;/etc/nginx/sites-available/blog.conf&nbsp;/etc/nginx/sites-enabled/<br/></span></pre><p><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">●&nbsp;&nbsp;测试配置语法问题</span></p><pre class=\"brush:bash;toolbar:false\"><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">sudo&nbsp;service&nbsp;nginx&nbsp;configtest<br/></span></pre><p><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">●&nbsp;&nbsp;重启 nginx 服务器：</span></p><pre class=\"brush:bash;toolbar:false\"><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">sudo&nbsp;/etc/init.d/nginx&nbsp;restart<br/></span></pre><hr/><h2 style=\"box-sizing: border-box; outline: 0px; --tw-shadow:0 0 #0000 ; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(66, 153, 225, 0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000 ; margin: 8px 0px 16px; padding: 0px; font-family: &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, SimHei, Arial, SimSun; font-size: 22px; color: rgb(79, 79, 79); line-height: 30px; overflow-wrap: break-word; font-variant-ligatures: common-ligatures; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-size: 24px; color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">4. 启动 Nginx</span></h2><h3><span style=\"font-size: 18px; color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">首先部署静态文件，防止&nbsp;<span style=\"font-size: 18px; background-color: rgb(255, 255, 255); color: rgb(79, 79, 79); font-family: &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, SimHei, Arial, SimSun; font-variant-ligatures: common-ligatures;\">Admin 管理界面样式表丢失</span></span></h3><p><span style=\"background-color: rgb(255, 255, 255); font-variant-ligatures: common-ligatures; font-size: 16px; color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">●&nbsp;&nbsp;打开 Django 项目中的&nbsp;settings.py&nbsp;配置文件，添加一行：</span></p><pre class=\"brush:python;toolbar:false\"><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">STATIC_ROOT&nbsp;=&nbsp;os.path.join(BASE_DIR,&nbsp;&#39;collect_static&#39;)<br/></span></pre><p><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">●&nbsp;&nbsp;从 Django 资源包中复制必须的静态文件到&nbsp;STATIC_ROOT&nbsp;指向的&nbsp;static&nbsp;目录中，这其中包括 admin 界面所必须的样式表（style）、图片（image）及脚本（js）等；</span></p><pre class=\"brush:python;toolbar:false\"><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">sudo&nbsp;python&nbsp;manage.py&nbsp;collectstatic<br/></span></pre><p><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\"><span style=\"font-size: 16px; background-color: rgb(255, 255, 255); color: rgb(79, 79, 79); font-family: &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, SimHei, Arial, SimSun; font-variant-ligatures: common-ligatures;\"></span>●&nbsp;&nbsp;修改 Nginx 配置文件中静态文件路径；</span></p><p><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">●&nbsp;&nbsp;重启 uWSGI 和 Nginx</span></p><pre class=\"brush:bash;toolbar:false\"><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">sudo&nbsp;killall&nbsp;-9&nbsp;uwsgi<br/>sudo&nbsp;/etc/init.d/nginx&nbsp;restart<br/></span></pre><p><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\"></span></p><hr/><h2><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">5.&nbsp;出现的问题<span style=\"color: rgb(89, 89, 89); font-family: arial, helvetica, sans-serif;\"></span><br/></span></h2><p><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">●&nbsp; 运行&nbsp;uWGSI&nbsp;出现端口占用问题，可用&nbsp;<span style=\"color: rgb(89, 89, 89); font-family: arial, helvetica, sans-serif; background-color: rgb(216, 216, 216);\">netstat -antp| grep XXXX</span><span style=\"color: rgb(89, 89, 89); font-family: arial, helvetica, sans-serif;\">&nbsp;命令查看对应端口占用情况；</span></span></p><p><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">●&nbsp; 使用 Nginx 在内网环境中通过主机地址+端口号访问项目失败，原因出在&nbsp;Nginx&nbsp;的配置文件中 uwsgi_pass，不应直接输入主机地址+端口号的方式，改用文中所示的创建 socket 方法；<br/></span></p><p><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">●&nbsp;&nbsp;使用 Nginx&nbsp;在外网访问服务器地址出现 <span style=\"color: rgb(89, 89, 89); font-family: arial, helvetica, sans-serif; background-color: rgb(250, 192, 143);\">502&nbsp;Bad&nbsp;Gateway</span>&nbsp;也是因为上一条原因，改用创建 socket 方法即可解决；</span></p><p><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">●&nbsp; 使用&nbsp;<span style=\"color: rgb(89, 89, 89); font-family: arial, helvetica, sans-serif; background-color: rgb(216, 216, 216);\">tail -f uwsgi.log</span>&nbsp;命令方便查看&nbsp;uWGSI&nbsp;运行时出现的问题。</span></p><p><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\">●&nbsp; 公网端口安全组屏蔽：对于阿里云服务器 ECS，需要开放对应的端口。</span></p><p style=\"text-align: center;\"><span style=\"color: rgb(63, 63, 63); font-family: arial, helvetica, sans-serif;\"><img src=\"/media/upimg/QQ截图20210410044347_20210410045232_362.png\" alt=\"QQ截图20210410044347.png\"/></span></p>','/static/images/nginx.jpg','2021-04-10 04:48:44.068008','2021-04-10 04:57:59.710941',0,0,'index-2',1,1);
/*!40000 ALTER TABLE `storm_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storm_article_keywords`
--

DROP TABLE IF EXISTS `storm_article_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storm_article_keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `keyword_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `storm_article_keywords_article_id_keyword_id_7510b8d6_uniq` (`article_id`,`keyword_id`),
  KEY `storm_article_keywords_keyword_id_a563777a_fk_storm_keyword_id` (`keyword_id`),
  CONSTRAINT `storm_article_keywords_article_id_5df25258_fk_storm_article_id` FOREIGN KEY (`article_id`) REFERENCES `storm_article` (`id`),
  CONSTRAINT `storm_article_keywords_keyword_id_a563777a_fk_storm_keyword_id` FOREIGN KEY (`keyword_id`) REFERENCES `storm_keyword` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storm_article_keywords`
--

LOCK TABLES `storm_article_keywords` WRITE;
/*!40000 ALTER TABLE `storm_article_keywords` DISABLE KEYS */;
INSERT INTO `storm_article_keywords` VALUES (2,2,2),(3,2,3),(4,2,4),(5,3,5),(6,3,6),(8,4,2),(9,4,7),(7,4,8);
/*!40000 ALTER TABLE `storm_article_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storm_article_tags`
--

DROP TABLE IF EXISTS `storm_article_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storm_article_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `storm_article_tags_article_id_tag_id_c71bf3b2_uniq` (`article_id`,`tag_id`),
  KEY `storm_article_tags_tag_id_e8380d38_fk_storm_tag_id` (`tag_id`),
  CONSTRAINT `storm_article_tags_article_id_15b9f147_fk_storm_article_id` FOREIGN KEY (`article_id`) REFERENCES `storm_article` (`id`),
  CONSTRAINT `storm_article_tags_tag_id_e8380d38_fk_storm_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `storm_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storm_article_tags`
--

LOCK TABLES `storm_article_tags` WRITE;
/*!40000 ALTER TABLE `storm_article_tags` DISABLE KEYS */;
INSERT INTO `storm_article_tags` VALUES (2,2,2),(3,3,5),(4,4,2);
/*!40000 ALTER TABLE `storm_article_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storm_bigcategory`
--

DROP TABLE IF EXISTS `storm_bigcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storm_bigcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `keywords` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storm_bigcategory`
--

LOCK TABLES `storm_bigcategory` WRITE;
/*!40000 ALTER TABLE `storm_bigcategory` DISABLE KEYS */;
INSERT INTO `storm_bigcategory` VALUES (1,'编码技术','coding-skill','JonahYoo的个人网站，拥抱开源生活，崇尚不断学习，提升自我能力。','Jonah,技术,博客,Python,Django'),(2,'理论基础','theoretical-basis','物理学、数学、地理学等基础','Physics, Mathematics, Geography'),(3,'算法与数据结构','algorithm-data_structure','算法与数据结构','algorithm, data structure'),(4,'Linux','linux','Linux系统相关基础知识','linux'),(5,'机器学习','machine_learning','机器学习基础知识','machine learning, deep learning'),(6,'关于Jonah','about','JonahYoo的个人网站，拥抱开源生活，崇尚不断学习，提升自我能力。','JonahYoo,技术,博客,Python,ML,DL,Linux'),(7,'给我留言','message','JonahYoo的个人网站，拥抱开源生活，崇尚不断学习，提升自我能力。','JonahYoo,技术,博客,Python,ML,DL,Linux');
/*!40000 ALTER TABLE `storm_bigcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storm_carousel`
--

DROP TABLE IF EXISTS `storm_carousel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storm_carousel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `title` varchar(20) DEFAULT NULL,
  `content` varchar(80) NOT NULL,
  `img_url` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storm_carousel`
--

LOCK TABLES `storm_carousel` WRITE;
/*!40000 ALTER TABLE `storm_carousel` DISABLE KEYS */;
/*!40000 ALTER TABLE `storm_carousel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storm_category`
--

DROP TABLE IF EXISTS `storm_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storm_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `bigcategory_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `storm_category_bigcategory_id_aa573836_fk_storm_bigcategory_id` (`bigcategory_id`),
  CONSTRAINT `storm_category_bigcategory_id_aa573836_fk_storm_bigcategory_id` FOREIGN KEY (`bigcategory_id`) REFERENCES `storm_bigcategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storm_category`
--

LOCK TABLES `storm_category` WRITE;
/*!40000 ALTER TABLE `storm_category` DISABLE KEYS */;
INSERT INTO `storm_category` VALUES (1,'Django','django','Django for python',1),(2,'Pytorch','pytorch','Pytorch for python',1),(3,'物理学','physics','物理学基础',2),(4,'数学','mathematics','数学基础',2),(5,'地球物理学','geophysics','地球物理学基础',2),(6,'链表','linked_list','链表',3),(7,'哈希表','hash_table','哈希表',3),(8,'二叉树','binary_tree','二叉树',3),(9,'MySQL','mysql','MYSQL Database',1);
/*!40000 ALTER TABLE `storm_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storm_friendlink`
--

DROP TABLE IF EXISTS `storm_friendlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storm_friendlink` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `link` varchar(200) NOT NULL,
  `logo` varchar(200) NOT NULL,
  `create_date` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_show` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storm_friendlink`
--

LOCK TABLES `storm_friendlink` WRITE;
/*!40000 ALTER TABLE `storm_friendlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `storm_friendlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storm_keyword`
--

DROP TABLE IF EXISTS `storm_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storm_keyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storm_keyword`
--

LOCK TABLES `storm_keyword` WRITE;
/*!40000 ALTER TABLE `storm_keyword` DISABLE KEYS */;
INSERT INTO `storm_keyword` VALUES (1,'keyword'),(2,'Django'),(3,'MTV'),(4,'MVC'),(5,'数据库迁移'),(6,'MySQL'),(7,'Nginx'),(8,'uWSGI');
/*!40000 ALTER TABLE `storm_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storm_silian`
--

DROP TABLE IF EXISTS `storm_silian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storm_silian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `badurl` varchar(200) NOT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `add_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storm_silian`
--

LOCK TABLES `storm_silian` WRITE;
/*!40000 ALTER TABLE `storm_silian` DISABLE KEYS */;
/*!40000 ALTER TABLE `storm_silian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storm_tag`
--

DROP TABLE IF EXISTS `storm_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storm_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storm_tag`
--

LOCK TABLES `storm_tag` WRITE;
/*!40000 ALTER TABLE `storm_tag` DISABLE KEYS */;
INSERT INTO `storm_tag` VALUES (1,'label','label','label describe'),(2,'Django','djang','Django2.0'),(3,'MTV','mtv','MTV 设计模式'),(4,'MVC','mvc','MVC 设计模式'),(5,'MySQL','mysql','MySQL');
/*!40000 ALTER TABLE `storm_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_ouser`
--

DROP TABLE IF EXISTS `user_ouser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_ouser` (
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
  `link` varchar(200) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_ouser`
--

LOCK TABLES `user_ouser` WRITE;
/*!40000 ALTER TABLE `user_ouser` DISABLE KEYS */;
INSERT INTO `user_ouser` VALUES (1,'pbkdf2_sha256$36000$K0RzPyAsZNEV$15pUjowPhGJijicPw0t8061F/R1ZOJ/CGWyTP/TDcjQ=','2021-04-10 03:33:18.879300',1,'jonah','','','binchengy@163.com',1,1,'2021-04-03 15:47:21.632888','','avatar/default.png');
/*!40000 ALTER TABLE `user_ouser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_ouser_groups`
--

DROP TABLE IF EXISTS `user_ouser_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_ouser_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ouser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_ouser_groups_ouser_id_group_id_03bce0cb_uniq` (`ouser_id`,`group_id`),
  KEY `user_ouser_groups_group_id_12001949_fk_auth_group_id` (`group_id`),
  CONSTRAINT `user_ouser_groups_group_id_12001949_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_ouser_groups_ouser_id_ad1b57d3_fk_user_ouser_id` FOREIGN KEY (`ouser_id`) REFERENCES `user_ouser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_ouser_groups`
--

LOCK TABLES `user_ouser_groups` WRITE;
/*!40000 ALTER TABLE `user_ouser_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_ouser_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_ouser_user_permissions`
--

DROP TABLE IF EXISTS `user_ouser_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_ouser_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ouser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_ouser_user_permissions_ouser_id_permission_id_ef5c908e_uniq` (`ouser_id`,`permission_id`),
  KEY `user_ouser_user_perm_permission_id_da78e996_fk_auth_perm` (`permission_id`),
  CONSTRAINT `user_ouser_user_perm_permission_id_da78e996_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_ouser_user_permissions_ouser_id_a820347f_fk_user_ouser_id` FOREIGN KEY (`ouser_id`) REFERENCES `user_ouser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_ouser_user_permissions`
--

LOCK TABLES `user_ouser_user_permissions` WRITE;
/*!40000 ALTER TABLE `user_ouser_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_ouser_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-10  5:07:47
