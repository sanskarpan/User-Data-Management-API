mysqldump: [Warning] Using a password on the command line interface can be insecure.
-- Warning: column statistics not supported by the server.
-- MySQL dump 10.13  Distrib 8.3.0, for macos14.2 (arm64)
--
-- Host: 127.0.0.1    Database: user_manage
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20240726212216','2024-07-26 21:22:28',27);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_messages`
--

LOCK TABLES `messenger_messages` WRITE;
/*!40000 ALTER TABLE `messenger_messages` DISABLE KEYS */;
INSERT INTO `messenger_messages` VALUES (1,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:29:\\\"App\\\\Message\\\\EmailNotification\\\":3:{s:36:\\\"\\0App\\\\Message\\\\EmailNotification\\0email\\\";s:27:\\\"sanskarpandey2004@gmail.com\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0subject\\\";s:21:\\\"Welcome to the system\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0content\\\";s:34:\\\"You have been added to the system.\\\";}}','[]','email_notification','2024-07-26 21:23:54','2024-07-26 21:23:54',NULL),(2,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:29:\\\"App\\\\Message\\\\EmailNotification\\\":3:{s:36:\\\"\\0App\\\\Message\\\\EmailNotification\\0email\\\";s:22:\\\"jane.smith@example.com\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0subject\\\";s:21:\\\"Welcome to the system\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0content\\\";s:34:\\\"You have been added to the system.\\\";}}','[]','email_notification','2024-07-27 16:46:51','2024-07-27 16:46:51',NULL),(3,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:29:\\\"App\\\\Message\\\\EmailNotification\\\":3:{s:36:\\\"\\0App\\\\Message\\\\EmailNotification\\0email\\\";s:21:\\\"michael.j@example.com\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0subject\\\";s:21:\\\"Welcome to the system\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0content\\\";s:34:\\\"You have been added to the system.\\\";}}','[]','email_notification','2024-07-27 16:46:53','2024-07-27 16:46:53',NULL),(4,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:29:\\\"App\\\\Message\\\\EmailNotification\\\":3:{s:36:\\\"\\0App\\\\Message\\\\EmailNotification\\0email\\\";s:19:\\\"emily.d@example.com\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0subject\\\";s:21:\\\"Welcome to the system\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0content\\\";s:34:\\\"You have been added to the system.\\\";}}','[]','email_notification','2024-07-27 16:46:55','2024-07-27 16:46:55',NULL),(5,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:29:\\\"App\\\\Message\\\\EmailNotification\\\":3:{s:36:\\\"\\0App\\\\Message\\\\EmailNotification\\0email\\\";s:27:\\\"sanskarpandey2004@gmail.com\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0subject\\\";s:21:\\\"Welcome to the system\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0content\\\";s:34:\\\"You have been added to the system.\\\";}}','[]','email_notification','2024-07-27 16:46:57','2024-07-27 16:46:57',NULL),(6,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:29:\\\"App\\\\Message\\\\EmailNotification\\\":3:{s:36:\\\"\\0App\\\\Message\\\\EmailNotification\\0email\\\";s:19:\\\"sarah.w@example.com\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0subject\\\";s:21:\\\"Welcome to the system\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0content\\\";s:34:\\\"You have been added to the system.\\\";}}','[]','email_notification','2024-07-27 16:46:59','2024-07-27 16:46:59',NULL),(7,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:29:\\\"App\\\\Message\\\\EmailNotification\\\":3:{s:36:\\\"\\0App\\\\Message\\\\EmailNotification\\0email\\\";s:20:\\\"daniel.l@example.com\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0subject\\\";s:21:\\\"Welcome to the system\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0content\\\";s:34:\\\"You have been added to the system.\\\";}}','[]','email_notification','2024-07-27 16:47:02','2024-07-27 16:47:02',NULL),(8,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:29:\\\"App\\\\Message\\\\EmailNotification\\\":3:{s:36:\\\"\\0App\\\\Message\\\\EmailNotification\\0email\\\";s:21:\\\"jessica.m@example.com\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0subject\\\";s:21:\\\"Welcome to the system\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0content\\\";s:34:\\\"You have been added to the system.\\\";}}','[]','email_notification','2024-07-27 16:47:04','2024-07-27 16:47:04',NULL),(9,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:29:\\\"App\\\\Message\\\\EmailNotification\\\":3:{s:36:\\\"\\0App\\\\Message\\\\EmailNotification\\0email\\\";s:27:\\\"pandeysanskar2022@gmail.com\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0subject\\\";s:21:\\\"Welcome to the system\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0content\\\";s:34:\\\"You have been added to the system.\\\";}}','[]','email_notification','2024-07-27 16:47:06','2024-07-27 16:47:06',NULL),(10,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:29:\\\"App\\\\Message\\\\EmailNotification\\\":3:{s:36:\\\"\\0App\\\\Message\\\\EmailNotification\\0email\\\";s:18:\\\"paul.g@example.com\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0subject\\\";s:21:\\\"Welcome to the system\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0content\\\";s:34:\\\"You have been added to the system.\\\";}}','[]','email_notification','2024-07-27 16:47:08','2024-07-27 16:47:08',NULL),(11,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:29:\\\"App\\\\Message\\\\EmailNotification\\\":3:{s:36:\\\"\\0App\\\\Message\\\\EmailNotification\\0email\\\";s:19:\\\"laura.c@example.com\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0subject\\\";s:21:\\\"Welcome to the system\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0content\\\";s:34:\\\"You have been added to the system.\\\";}}','[]','email_notification','2024-07-27 16:47:10','2024-07-27 16:47:10',NULL);
/*!40000 ALTER TABLE `messenger_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Sanki Pandey','sanskarpandey2004@gmail.com','sankipan','26 H7','ADMIN'),(2,'Jane Smith','jane.smith@example.com','janesmith','456 Elm St','USER'),(3,'Michael Johnson','michael.j@example.com','mjohnson','789 Pine St','USER'),(4,'Emily Davis','emily.d@example.com','emilydavis','101 Oak St','ADMIN'),(5,'Sanki Pandey','sanskarpandey2004@gmail.com','sankipan','26 H7','ADMIN'),(6,'Sarah Wilson','sarah.w@example.com','sarahwilson','303 Birch St','USER'),(7,'Daniel Lee','daniel.l@example.com','daniellee','404 Cedar St','ADMIN'),(8,'Jessica Martinez','jessica.m@example.com','jessicam','505 Walnut St','USER'),(9,'Neo Nikel','pandeysanskar2022@gmail.com','neonike','1849 St 19','ADMIN'),(10,'Paul Garcia','paul.g@example.com','paulgarcia','606 Ash St','USER'),(11,'Laura Clark','laura.c@example.com','lauraclark','707 Cherry St','ADMIN');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `role` enum('USER','ADMIN') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2024-07-27 22:51:21
