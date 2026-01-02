LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Arun','Chennai'),(2,'Bala','Coimbatore'),(3,'Charan','Madurai'),(4,'Deepak','Trichy'),(5,'Ezhil','Salem'),(6,'Farooq','Chennai'),(7,'Gokul','Erode'),(8,'Hari','Vellore'),(9,'Imran','Tirunelveli'),(10,'Jeeva','Chennai');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;