-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: kidsclothingdb
-- ------------------------------------------------------
-- Server version	8.0.26-commercial

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `idcity` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `idcountry` int DEFAULT NULL,
  PRIMARY KEY (`idcity`),
  KEY `fk_city_1` (`idcountry`),
  CONSTRAINT `fk_city_1` FOREIGN KEY (`idcountry`) REFERENCES `country` (`idCountry`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Lisbon',28),(2,'London',23),(3,'New York',24),(4,'Sao Paulo',4),(5,'Madrid',27),(6,'Paris',12),(7,'Rome',16),(8,'Tokyo',17);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companydetails`
--

DROP TABLE IF EXISTS `companydetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companydetails` (
  `idcompanyDetails` int NOT NULL AUTO_INCREMENT,
  `companyAddress` varchar(45) NOT NULL,
  `PhoneNumber` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `WebSite` varchar(45) NOT NULL,
  `postalcode` varchar(45) DEFAULT NULL,
  `companyname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcompanyDetails`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companydetails`
--

LOCK TABLES `companydetails` WRITE;
/*!40000 ALTER TABLE `companydetails` DISABLE KEYS */;
INSERT INTO `companydetails` VALUES (1,'Rua de Campolide 1001','(+351)808348733','webinfo@kidsclothing.com','www.kidsclothing.pt','1455-090','Kids Clothing Co');
/*!40000 ALTER TABLE `companydetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `idCountry` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `idRegion` int DEFAULT NULL,
  PRIMARY KEY (`idCountry`),
  KEY `fk_country_1` (`idRegion`),
  CONSTRAINT `fk_country_1` FOREIGN KEY (`idRegion`) REFERENCES `region` (`idregion`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Argentina',2),(2,'Australia',3),(3,'Belgium',1),(4,'Brazil',2),(5,'Canada',2),(7,'Switzerland',1),(8,'China',3),(9,'Germany',1),(10,'Denmark',1),(11,'Egypt',4),(12,'France',1),(13,'HongKong',3),(14,'Israel',4),(15,'India',3),(16,'Italy',1),(17,'Japan',3),(18,'Kuwait',4),(19,'Mexico',2),(20,'Nigeria',4),(21,'Netherlands',1),(22,'Singapore',3),(23,'United Kingdom',1),(24,'United States of America',2),(25,'Zambia',4),(26,'Zimbabwe',4),(27,'Spain',1),(28,'Portugal',1);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `idCustomer` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `addressLine` varchar(45) DEFAULT NULL,
  `addressLine2` varchar(45) DEFAULT NULL,
  `postalCode` varchar(12) DEFAULT NULL,
  `idcity` int DEFAULT NULL,
  PRIMARY KEY (`idCustomer`),
  KEY `fk_customer_1` (`idcity`),
  CONSTRAINT `fk_customer_1` FOREIGN KEY (`idcity`) REFERENCES `city` (`idcity`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Marcos Goncalve','gmarcos@gmail.com','(+351)97766654','Rua de Vieira 66','3 Andar Direita','1455-090',1),(2,'Nuno Silva','nunos@hotmail.com','(+1)97766654','5th Avenue','14 floor','3444-090',3),(3,'Steve Smith','ssmith12@hotmail.com','(+44)899988882','Lake Queem Avenue','1st floor','3445-123',2);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_has_address`
--

DROP TABLE IF EXISTS `customer_has_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_has_address` (
  `idCustomer` int NOT NULL,
  `AddressType` varchar(10) DEFAULT '1' COMMENT 'Could have one of the following values:\\n1 - Main Address\\n2 - Delivery Address\\n3 - Invoice Addres',
  PRIMARY KEY (`idCustomer`),
  KEY `fk_customer_has_address_customer1_idx` (`idCustomer`),
  CONSTRAINT `fk_customer_has_address_customer1` FOREIGN KEY (`idCustomer`) REFERENCES `customer` (`idCustomer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_has_address`
--

LOCK TABLES `customer_has_address` WRITE;
/*!40000 ALTER TABLE `customer_has_address` DISABLE KEYS */;
INSERT INTO `customer_has_address` VALUES (1,' Home'),(2,' Home'),(3,' Work');
/*!40000 ALTER TABLE `customer_has_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `idinvoice` int NOT NULL,
  `invoiceNumber` varchar(45) DEFAULT NULL,
  `Hash` varchar(45) DEFAULT NULL,
  `BilledTo_CustomerName` varchar(45) DEFAULT NULL,
  `BilledTo_Street` varchar(45) DEFAULT NULL,
  `BilledTo_City` varchar(45) DEFAULT NULL,
  `BilledTo_State` varchar(45) DEFAULT NULL,
  `BilledTo_Country` varchar(45) DEFAULT NULL,
  `BilledTo_ZipCode` varchar(45) DEFAULT NULL,
  `Discount` decimal(13,2) DEFAULT NULL,
  `TaxRate` decimal(13,2) DEFAULT NULL,
  `companyDetails_idcompanyDetails` int NOT NULL,
  `order_idOrder` int NOT NULL,
  `invoiceTotal` decimal(13,2) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`idinvoice`),
  KEY `fk_invoice_companyDetails1_idx` (`companyDetails_idcompanyDetails`),
  KEY `fk_invoice_order1_idx` (`order_idOrder`),
  CONSTRAINT `fk_invoice_companyDetails1` FOREIGN KEY (`companyDetails_idcompanyDetails`) REFERENCES `companydetails` (`idcompanyDetails`),
  CONSTRAINT `fk_invoice_order1` FOREIGN KEY (`order_idOrder`) REFERENCES `order` (`idOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoicedetails`
--

DROP TABLE IF EXISTS `invoicedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoicedetails` (
  `idinvoiceDetails` int NOT NULL AUTO_INCREMENT,
  `invoice_idinvoice` int NOT NULL,
  `invoiceLine` int NOT NULL,
  `productCode` varchar(45) NOT NULL,
  `productDescription` varchar(45) DEFAULT NULL,
  `unitCost` decimal(13,2) NOT NULL,
  `quantity` int NOT NULL,
  `amount` decimal(13,2) DEFAULT NULL,
  PRIMARY KEY (`idinvoiceDetails`),
  KEY `fk_invoiceDetails_invoice1_idx` (`invoice_idinvoice`),
  CONSTRAINT `fk_invoiceDetails_invoice1` FOREIGN KEY (`invoice_idinvoice`) REFERENCES `invoice` (`idinvoice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoicedetails`
--

LOCK TABLES `invoicedetails` WRITE;
/*!40000 ALTER TABLE `invoicedetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoicedetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `idOrder` int NOT NULL AUTO_INCREMENT,
  `orderNumber` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL COMMENT 'Could be one of the following Values:\n1 - Created\n2 - Paid\n3 - Processing\n4 - Completed',
  `idCustomer` int NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `shippedDate` datetime DEFAULT NULL,
  `Shiping_street` varchar(100) DEFAULT NULL,
  `idcity` int DEFAULT NULL,
  `Shipping_State` varchar(45) DEFAULT NULL,
  `Shipping_ZipCode` varchar(45) DEFAULT NULL,
  `idCountry` int DEFAULT NULL,
  `idorderChannel` int NOT NULL,
  `orderTotal` decimal(13,2) DEFAULT NULL,
  PRIMARY KEY (`idOrder`),
  KEY `fk_order_customer1_idx` (`idCustomer`),
  KEY `fk_order_Country1_idx` (`idCountry`),
  KEY `fk_order_orderChannel1_idx` (`idorderChannel`),
  KEY `fk_order_2` (`idcity`),
  CONSTRAINT `fk_order_2` FOREIGN KEY (`idcity`) REFERENCES `city` (`idcity`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_order_Country1` FOREIGN KEY (`idCountry`) REFERENCES `country` (`idCountry`),
  CONSTRAINT `fk_order_customer1` FOREIGN KEY (`idCustomer`) REFERENCES `customer` (`idCustomer`),
  CONSTRAINT `fk_order_orderChannel1` FOREIGN KEY (`idorderChannel`) REFERENCES `orderchannel` (`idorderChannel`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'A234JUH89','4',1,'2020-01-25 14:10:00','2020-01-26 09:10:00','Rua de Vieira 66',1,'Lisbon','1455-090',28,1,92.83),(2,'A9898UH89','closed',1,'2020-02-25 14:10:00','2020-02-26 09:10:00','Rua de Vieira 66',1,'Lisbon','1455-090',28,1,192.83),(3,'JKJKKUH89','closed',1,'2020-05-27 14:10:00','2020-05-28 09:50:00','Rua de Vieira 66',1,'Lisbon','1455-090',28,1,15.21),(4,'45JKKUH89','closed',2,'2020-04-27 14:10:00','2020-04-28 09:50:00','5th Avenue',3,'New Youk','3444-090',24,1,78.00),(5,'ZSX4KUH89','closed',2,'2021-05-01 14:15:00','2021-05-02 07:50:00','5th Avenue',3,'New Youk','3444-090',24,1,43.70),(6,'AAJtttH89','closed',3,'2020-02-01 12:33:00','2020-02-02 11:11:00','Lake Queem Avenue',2,'London','3445-123',23,1,12.99),(7,'78JtttH89','closed',3,'2020-02-01 11:13:00','2020-02-02 09:10:00','Lake Queem Avenue',2,'London','3445-123',23,1,67.21);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderchannel`
--

DROP TABLE IF EXISTS `orderchannel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderchannel` (
  `idorderChannel` int NOT NULL AUTO_INCREMENT,
  `Description` varchar(45) NOT NULL,
  PRIMARY KEY (`idorderChannel`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderchannel`
--

LOCK TABLES `orderchannel` WRITE;
/*!40000 ALTER TABLE `orderchannel` DISABLE KEYS */;
INSERT INTO `orderchannel` VALUES (1,'KC Mobile App'),(2,'KC Site wwww'),(3,'KC Cutomer Care Phone');
/*!40000 ALTER TABLE `orderchannel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetail`
--

DROP TABLE IF EXISTS `orderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetail` (
  `idorderDetail` int NOT NULL AUTO_INCREMENT,
  `idOrder` int NOT NULL,
  `idproduct` int NOT NULL,
  `quantity` int NOT NULL,
  `unitPrice` decimal(13,2) NOT NULL,
  `orderLine` int NOT NULL,
  PRIMARY KEY (`idorderDetail`,`idproduct`),
  KEY `fk_orderDetail_order1_idx` (`idOrder`),
  KEY `fk_orderDetail_product1_idx` (`idproduct`),
  CONSTRAINT `fk_orderDetail_order1` FOREIGN KEY (`idOrder`) REFERENCES `order` (`idOrder`),
  CONSTRAINT `fk_orderDetail_product1` FOREIGN KEY (`idproduct`) REFERENCES `product` (`idproduct`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetail`
--

LOCK TABLES `orderdetail` WRITE;
/*!40000 ALTER TABLE `orderdetail` DISABLE KEYS */;
INSERT INTO `orderdetail` VALUES (1,1,6,1,12.99,1),(2,1,5,2,8.29,2),(3,2,1,6,12.99,1),(4,3,1,1,12.99,1),(5,4,2,1,12.99,1),(6,4,3,1,25.50,2),(7,6,1,1,12.99,1),(7,5,4,1,22.99,1),(8,7,5,1,8.29,1),(9,7,4,1,22.99,2),(10,7,6,1,12.99,3);
/*!40000 ALTER TABLE `orderdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `idpayment` int NOT NULL,
  `paymentDate` datetime NOT NULL,
  `Amount` decimal(13,2) NOT NULL,
  `order_idOrder` int NOT NULL,
  `idPaymentMethod` int NOT NULL,
  PRIMARY KEY (`idpayment`,`order_idOrder`),
  KEY `fk_payment_order1_idx` (`order_idOrder`),
  KEY `fk_payment_PaymentMethod1_idx` (`idPaymentMethod`),
  CONSTRAINT `fk_payment_order1` FOREIGN KEY (`order_idOrder`) REFERENCES `order` (`idOrder`),
  CONSTRAINT `fk_payment_PaymentMethod1` FOREIGN KEY (`idPaymentMethod`) REFERENCES `paymentmethod` (`idPaymentMethod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentmethod`
--

DROP TABLE IF EXISTS `paymentmethod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymentmethod` (
  `idPaymentMethod` int NOT NULL AUTO_INCREMENT,
  `Description` varchar(45) NOT NULL,
  PRIMARY KEY (`idPaymentMethod`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentmethod`
--

LOCK TABLES `paymentmethod` WRITE;
/*!40000 ALTER TABLE `paymentmethod` DISABLE KEYS */;
INSERT INTO `paymentmethod` VALUES (1,'creadit card'),(2,'bank transfer'),(3,'debit card');
/*!40000 ALTER TABLE `paymentmethod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `idproduct` int NOT NULL AUTO_INCREMENT,
  `productCode` varchar(45) NOT NULL,
  `productName` varchar(45) NOT NULL,
  `productDescription` varchar(45) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `quantityInStock` int NOT NULL DEFAULT '0',
  `productcol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idproduct`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'1001','Mickey Mouse T-Shirt','Mickey On Holidays T-Shirt',12.99,20,'white'),(2,'1002',' T-Shirt','Mikeys T-Shirt',12.99,30,'blue'),(3,'2003',' Shoes','Disney Cars MaCQeen',25.50,8,'red'),(4,'4004','Pants','Mickey Mouse Regular Pants',22.99,20,'navy'),(5,'5005',' Cap','Duck Donald Caps',8.29,10,'yellow'),(6,'1003',' T-Shirt','Frozen  T-Shirt',12.99,20,'green');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `idrating` int NOT NULL,
  `geralRating` int NOT NULL,
  `comments` varchar(45) DEFAULT NULL,
  `order_idOrder` int NOT NULL,
  PRIMARY KEY (`idrating`,`order_idOrder`),
  KEY `fk_rating_order1_idx` (`order_idOrder`),
  CONSTRAINT `fk_rating_order1` FOREIGN KEY (`order_idOrder`) REFERENCES `order` (`idOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratingdetails`
--

DROP TABLE IF EXISTS `ratingdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ratingdetails` (
  `idratingDetails` int NOT NULL,
  `productRating` int DEFAULT NULL,
  `Comments` varchar(45) DEFAULT NULL,
  `rating_idrating` int NOT NULL,
  `orderDetail_idorderDetail` int NOT NULL,
  `orderDetail_product_idproduct` int NOT NULL,
  PRIMARY KEY (`idratingDetails`,`orderDetail_idorderDetail`,`orderDetail_product_idproduct`),
  KEY `fk_ratingDetails_rating1_idx` (`rating_idrating`),
  KEY `fk_ratingDetails_orderDetail1_idx` (`orderDetail_idorderDetail`,`orderDetail_product_idproduct`),
  CONSTRAINT `fk_ratingDetails_orderDetail1` FOREIGN KEY (`orderDetail_idorderDetail`, `orderDetail_product_idproduct`) REFERENCES `orderdetail` (`idorderDetail`, `idproduct`),
  CONSTRAINT `fk_ratingDetails_rating1` FOREIGN KEY (`rating_idrating`) REFERENCES `rating` (`idrating`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratingdetails`
--

LOCK TABLES `ratingdetails` WRITE;
/*!40000 ALTER TABLE `ratingdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `ratingdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region` (
  `idregion` int NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`idregion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'Europe'),(2,'America'),(3,'Asia'),(4,'Africa');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stores` (
  `idStore` int NOT NULL,
  `address` varchar(100) NOT NULL,
  `idcity` int NOT NULL,
  `city` varchar(45) NOT NULL,
  `zipcode` varchar(20) NOT NULL,
  `storename` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idStore`),
  KEY `fk_address_1` (`idcity`),
  CONSTRAINT `fk_address_1` FOREIGN KEY (`idcity`) REFERENCES `city` (`idcity`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (1,'Abbey Road',2,'London','01235-177','EL CORTE London'),(2,'Av Paulista',4,'Sao Paulo','23557-078','EL CORTE SP'),(3,'Rua de Campolide',1,'Lisbon','75763-795','EL CORTE Lisbon'),(4,'Champs-Élysées',6,'Paris','01705-801','EL CORTE Paris'),(5,'Piazza di Spagna',7,'Rome','77456-977','EL CORTE Rome');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-20 21:36:47
