-- MySQL dump 10.13  Distrib 5.7.33, for Linux (x86_64)
--
-- Host: localhost    Database: xigua
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
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2021-11-19 23:24:38.726105','2021-11-19 23:24:38.726105');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `remote_ip` varchar(255) DEFAULT NULL COMMENT '远程ip',
  `restful_method` varchar(255) DEFAULT NULL COMMENT '请求的方法,  get/post...',
  `user_name` varchar(255) DEFAULT NULL COMMENT '当前用户',
  `parameters` text COMMENT '各种参数',
  `full_request` text COMMENT '完整的request, 带有header, cookie等',
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (1,'logs','x','127.0.0.1','get',NULL,'#<ActionController::Parameters {\"controller\"=>\"logs\", \"action\"=>\"x\"} permitted: false>','#<ActionDispatch::Request GET \"http://localhost:3000/logs/x\" for 127.0.0.1>','2021-11-20 00:06:06.526107','2021-11-20 00:06:06.526107'),(2,'logs','x','127.0.0.1','get',NULL,'#<ActionController::Parameters {\"controller\"=>\"logs\", \"action\"=>\"x\"} permitted: false>','#<ActionDispatch::Request GET \"http://localhost:3000/logs/x\" for 127.0.0.1>','2021-11-20 00:06:29.303021','2021-11-20 00:06:29.303021'),(3,'logs','x','127.0.0.1','get',NULL,'#<ActionController::Parameters {\"controller\"=>\"logs\", \"action\"=>\"x\"} permitted: false>','#<ActionDispatch::Request GET \"http://localhost:3000/logs/x\" for 127.0.0.1>','2021-11-20 00:07:50.557118','2021-11-20 00:07:50.557118'),(4,'logs','x','127.0.0.1','get',NULL,'#<ActionController::Parameters {\"controller\"=>\"logs\", \"action\"=>\"x\"} permitted: false>','#<ActionDispatch::Request GET \"http://localhost:3000/logs/x\" for 127.0.0.1>','2021-11-20 00:08:35.713693','2021-11-20 00:08:35.713693'),(5,'logs','x','127.0.0.1','get',NULL,'#<ActionController::Parameters {\"controller\"=>\"logs\", \"action\"=>\"x\"} permitted: false>','#<ActionDispatch::Request GET \"http://localhost:3000/logs/x\" for 127.0.0.1>','2021-11-20 00:08:40.560657','2021-11-20 00:08:40.560657'),(6,'logs','x','127.0.0.1','get',NULL,'#<ActionController::Parameters {\"controller\"=>\"logs\", \"action\"=>\"x\"} permitted: false>','#<ActionDispatch::Request GET \"http://localhost:3000/x\" for 127.0.0.1>','2021-11-20 00:12:51.189938','2021-11-20 00:12:51.189938'),(7,'logs','x','127.0.0.1','get',NULL,'#<ActionController::Parameters {\"a\"=>\"1\", \"b\"=>\"2\", \"controller\"=>\"logs\", \"action\"=>\"x\"} permitted: false>','#<ActionDispatch::Request GET \"http://localhost:3000/x?a=1&b=2\" for 127.0.0.1>','2021-11-20 00:12:56.697434','2021-11-20 00:12:56.697434'),(8,'logs','create','127.0.0.1','post',NULL,'#<ActionController::Parameters {\"c\"=>\"3\", \"d\"=>\"444\", \"controller\"=>\"logs\", \"action\"=>\"create\"} permitted: false>','#<ActionDispatch::Request POST \"http://localhost:3000/x\" for 127.0.0.1>','2021-11-20 00:16:43.868137','2021-11-20 00:16:43.868137'),(9,'logs','x','127.0.0.1','get',NULL,'#<ActionController::Parameters {\"a\"=>\"1\", \"b\"=>\"2\", \"controller\"=>\"logs\", \"action\"=>\"x\"} permitted: false>','#<ActionDispatch::Request GET \"http://localhost:3000/x?a=1&b=2\" for 127.0.0.1>','2021-11-20 01:35:13.351480','2021-11-20 01:35:13.351480'),(10,'logs','x','127.0.0.1','get',NULL,'#<ActionController::Parameters {\"a\"=>\"1\", \"b\"=>\"2\", \"controller\"=>\"logs\", \"action\"=>\"x\"} permitted: false>','#<ActionDispatch::Request GET \"http://localhost:3000/x?a=1&b=2\" for 127.0.0.1>','2021-11-20 01:36:21.027509','2021-11-20 01:36:21.027509'),(11,'logs','x','127.0.0.1','get',NULL,'#<ActionController::Parameters {\"a\"=>\"1\", \"b\"=>\"2\", \"controller\"=>\"logs\", \"action\"=>\"x\"} permitted: false>','#<ActionDispatch::Request GET \"http://localhost:3000/x?a=1&b=2\" for 127.0.0.1>','2021-11-20 01:37:21.167698','2021-11-20 01:37:21.167698'),(12,'logs','x','127.0.0.1','get',NULL,'#<ActionController::Parameters {\"a\"=>\"1\", \"b\"=>\"2\", \"controller\"=>\"logs\", \"action\"=>\"x\"} permitted: false>','#<ActionDispatch::Request GET \"http://localhost:3000/x?a=1&b=2\" for 127.0.0.1>','2021-11-20 01:39:09.481184','2021-11-20 01:39:09.481184'),(13,'logs','x','127.0.0.1','get',NULL,'#<ActionController::Parameters {\"a\"=>\"1\", \"b\"=>\"2\", \"controller\"=>\"logs\", \"action\"=>\"x\"} permitted: false>','#<ActionDispatch::Request GET \"http://localhost:3000/x?a=1&b=2\" for 127.0.0.1>','2021-11-20 01:40:33.380476','2021-11-20 01:40:33.380476'),(14,'logs','x','127.0.0.1','get',NULL,'#<ActionController::Parameters {\"a\"=>\"1\", \"b\"=>\"2\", \"controller\"=>\"logs\", \"action\"=>\"x\"} permitted: false>','#<ActionDispatch::Request GET \"http://localhost:3000/x?a=1&b=2\" for 127.0.0.1>','2021-11-20 01:40:55.309893','2021-11-20 01:40:55.309893'),(15,'logs','x','127.0.0.1','get',NULL,'#<ActionController::Parameters {\"a\"=>\"1\", \"b\"=>\"2\", \"controller\"=>\"logs\", \"action\"=>\"x\"} permitted: false>','#<ActionDispatch::Request GET \"http://localhost:3000/x?a=1&b=2\" for 127.0.0.1>','2021-11-20 01:42:50.273037','2021-11-20 01:42:50.273037'),(16,'logs','x','127.0.0.1','get',NULL,'#<ActionController::Parameters {\"a\"=>\"1\", \"b\"=>\"2asdfasdf\", \"controller\"=>\"logs\", \"action\"=>\"x\"} permitted: false>','#<ActionDispatch::Request GET \"http://localhost:3000/x?a=1&b=2asdfasdf\" for 127.0.0.1>','2021-11-20 01:58:08.289401','2021-11-20 01:58:08.289401');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20211119232248'),('20211119233335');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'xigua@xss.com','$2a$12$Rvqgx4HtO98Ed1IdoeszAOwhhWKkE3wKekEh53kIp6MwIJGQ50tf6',NULL,NULL,NULL,'2021-11-19 23:49:11.299183','2021-11-19 23:49:11.299183');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-20 10:30:25
