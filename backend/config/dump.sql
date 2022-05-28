--
-- Table structure for table `Comments`
--

DROP TABLE IF EXISTS `Comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Comments` (
                            `id` int NOT NULL AUTO_INCREMENT,
                            `idUser` int NOT NULL,
                            `idPost` int NOT NULL,
                            `comment` varchar(255) DEFAULT NULL,
                            `createdAt` datetime NOT NULL,
                            `updatedAt` datetime NOT NULL,
                            PRIMARY KEY (`id`),
                            KEY `idUser` (`idUser`),
                            KEY `idPost` (`idPost`),
                            CONSTRAINT `comments_ibfk_49` FOREIGN KEY (`idUser`) REFERENCES `Users` (`id`) ON UPDATE CASCADE,
                            CONSTRAINT `comments_ibfk_50` FOREIGN KEY (`idPost`) REFERENCES `Posts` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comments`
--

LOCK TABLES `Comments` WRITE;
/*!40000 ALTER TABLE `Comments` DISABLE KEYS */;
INSERT INTO `Comments` VALUES (2,1,5,'okok','2021-11-07 10:32:09','2021-11-07 10:32:09');
/*!40000 ALTER TABLE `Comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Posts`
--

DROP TABLE IF EXISTS `Posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Posts` (
                         `id` int NOT NULL AUTO_INCREMENT,
                         `title` varchar(255) NOT NULL,
                         `content` text,
                         `image` varchar(255) DEFAULT NULL,
                         `createdAt` datetime NOT NULL,
                         `updatedAt` datetime NOT NULL,
                         `idUser` int NOT NULL,
                         PRIMARY KEY (`id`),
                         KEY `idUser` (`idUser`),
                         CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `Users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Posts`
--

LOCK TABLES `Posts` WRITE;
/*!40000 ALTER TABLE `Posts` DISABLE KEYS */;
INSERT INTO `Posts` VALUES (1,'hello ','test',NULL,'2021-10-27 18:23:12','2021-10-27 18:23:12',1),(2,'merci','test',NULL,'2021-10-27 18:23:28','2021-10-27 18:23:28',1),(3,'test','test',NULL,'2021-10-28 19:56:05','2021-10-28 19:56:05',1),(4,'xyz','xyz',NULL,'2021-10-28 19:56:42','2021-10-28 19:56:42',1),(5,'mmm','ddd',NULL,'2021-10-28 19:56:51','2021-10-28 19:56:51',1),(7,'testii','home','http://localhost:3000/images/accra.jpeg1638375517135.jpg','2021-12-01 16:18:37','2021-12-01 16:18:37',2);
/*!40000 ALTER TABLE `Posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
                         `id` int NOT NULL AUTO_INCREMENT,
                         `email` varchar(255) NOT NULL,
                         `firstname` varchar(255) NOT NULL,
                         `lastname` varchar(255) NOT NULL,
                         `password` varchar(255) NOT NULL,
                         `isAdmin` tinyint(1) NOT NULL DEFAULT '0',
                         `createdAt` datetime NOT NULL,
                         `updatedAt` datetime NOT NULL,
                         PRIMARY KEY (`id`),
                         UNIQUE KEY `UNIQUE_EMAIL` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'testeur@mail.com','test','testeur','$2b$10$ZPc9oq5CZTWguK00TIrsa.V29Z7h5Lb.gM8hHLvVa62ZnfD/uZLYi',1,'2021-10-27 17:46:04','2021-10-27 17:46:04'),(2,'test-ordi@gmail.com','ordi','nateur','$2b$10$QzNOciK/WTEwNXq5DRzXfutlM1WC7FYH2gjyns2hsG5oKMTH.4T1u',0,'2021-11-11 11:51:22','2021-11-11 11:51:22'),(3,'15-novembre@gmail.com','hoo','my-testii','$2b$10$E8AG8trj5E40V2b8lZ7oyeo.a3ybvefjxz36j7bDKsb.wam8z1Tpy',0,'2021-11-15 10:16:58','2021-11-15 10:16:58');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-14 14:31:55
