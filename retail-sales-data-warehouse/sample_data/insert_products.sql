LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (101,'Pen','Stationery'),(102,'Notebook','Stationery'),(103,'Pencil','Stationery'),(104,'Bag','Accessories'),(105,'Water Bottle','Accessories'),(106,'Calculator','Electronics'),(107,'Marker','Stationery'),(108,'Stapler','Stationery');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;