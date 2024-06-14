-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: recomendacoes_produtos
-- ------------------------------------------------------
-- Server version	8.0.37-0ubuntu0.22.04.3

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
-- Table structure for table `avaliacao`
--

DROP TABLE IF EXISTS `avaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avaliacao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `produto_id` int NOT NULL,
  `user_id` int NOT NULL,
  `nota` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `avaliacao_produto_id` (`produto_id`),
  KEY `avaliacao_user_id` (`user_id`),
  CONSTRAINT `avaliacao_ibfk_1` FOREIGN KEY (`produto_id`) REFERENCES `recomendacoes_produtos`.`produto` (`id`),
  CONSTRAINT `avaliacao_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avaliacao`
--

LOCK TABLES `avaliacao` WRITE;
/*!40000 ALTER TABLE `avaliacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `avaliacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Eletrônicos'),(2,'Computadores'),(3,'Tablets'),(4,'Smartphones'),(5,'Acessórios para Eletrônicos'),(6,'Televisores'),(7,'Áudio e Vídeo'),(8,'Câmeras e Fotografia'),(9,'Eletrodomésticos'),(10,'Eletroportáteis'),(11,'Jogos e Consoles'),(12,'Roupas Masculinas'),(13,'Roupas Femininas'),(14,'Roupas Infantis'),(15,'Calçados Masculinos'),(16,'Calçados Femininos'),(17,'Calçados Infantis'),(18,'Acessórios de Moda'),(19,'Joias e Bijuterias'),(20,'Relógios'),(21,'Bolsas e Carteiras'),(22,'Móveis'),(23,'Decoração'),(24,'Cama, Mesa e Banho'),(25,'Iluminação'),(26,'Utilidades Domésticas'),(27,'Cozinha'),(28,'Eletrodomésticos de Cozinha'),(29,'Ar Condicionado e Ventilação'),(30,'Ferramentas e Jardim'),(31,'Automotivo'),(32,'Peças e Acessórios para Veículos'),(33,'Produtos de Limpeza'),(34,'Produtos de Higiene Pessoal'),(35,'Beleza e Cuidados Pessoais'),(36,'Perfumaria'),(37,'Cosméticos'),(38,'Suplementos e Vitaminas'),(39,'Alimentos e Bebidas'),(40,'Bebidas Alcoólicas'),(41,'Cervejas'),(42,'Vinhos'),(43,'Destilados'),(44,'Alimentos Orgânicos'),(45,'Alimentos Gourmet'),(46,'Pet Shop'),(47,'Brinquedos para Pets'),(48,'Rações e Alimentação para Pets'),(49,'Produtos de Higiene para Pets'),(50,'Livros'),(51,'Livros Infantis'),(52,'Livros Didáticos'),(53,'Livros de Literatura'),(54,'Revistas e Quadrinhos'),(55,'Papeteria'),(56,'Material Escolar'),(57,'Material de Escritório'),(58,'Informática'),(59,'Periféricos para Computadores'),(60,'Componentes de Computadores'),(61,'Software'),(62,'Serviços Digitais'),(63,'Jogos para Computador'),(64,'Esportes e Lazer'),(65,'Bicicletas e Ciclismo'),(66,'Fitness e Musculação'),(67,'Camping e Aventura'),(68,'Moda Esportiva'),(69,'Equipamentos Esportivos'),(70,'Instrumentos Musicais'),(71,'Acessórios para Instrumentos Musicais'),(72,'Saúde'),(73,'Equipamentos Médicos'),(74,'Medicamentos'),(75,'Produtos Ortopédicos'),(76,'Óculos e Lentes de Contato'),(77,'Brinquedos'),(78,'Jogos de Tabuleiro'),(79,'Quebra-Cabeças'),(80,'Bonecas e Acessórios'),(81,'Carrinhos e Veículos de Brinquedo'),(82,'Instrumentos Educativos'),(83,'Artigos para Festas'),(84,'Filmes e Séries'),(85,'Música e CDs'),(86,'Colecionáveis'),(87,'Artigos Religiosos'),(88,'Artigos Esotéricos'),(89,'Produtos para Bebês'),(90,'Roupas de Bebê'),(91,'Brinquedos para Bebês'),(92,'Produtos de Alimentação para Bebês'),(93,'Produtos de Higiene para Bebês'),(94,'Segurança e Monitoramento'),(95,'Ferramentas Manuais'),(96,'Ferramentas Elétricas'),(97,'Equipamentos de Proteção Individual'),(98,'Construção e Reforma'),(99,'Tintas e Acessórios'),(100,'Materiais de Construção'),(101,'Produtos de Telecomunicação'),(102,'Drones e Acessórios'),(103,'Itens para Viagem'),(104,'Mala e Mochilas'),(105,'Produtos de Segurança Digital'),(106,'Serviços de Assinatura');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recomendacoes_produtos`.`produto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ano` text NOT NULL,
  `marca` text NOT NULL,
  `categoria_id` int NOT NULL,
  `nome` varchar(45) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `produto_categoria_id` (`categoria_id`),
  CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `recomendacoes_produtos`.`produto` WRITE;
/*!40000 ALTER TABLE `recomendacoes_produtos`.`produto` DISABLE KEYS */;
-- Eletrônicos
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1,'2024','Apple',4,'iPhone 15',7950.90);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (2,'2024','Samsung',1,'Smart TV Samsung 50"',2799.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (3,'2024','Sony',1,'Home Theater Sony 5.1',1499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (4,'2024','JBL',1,'Caixa de Som JBL Bluetooth',499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (5,'2024','Bose',1,'Fone de Ouvido Bose QuietComfort',1299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (6,'2024','LG',1,'Soundbar LG 2.1',799.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (7,'2024','Philips',1,'Headset Philips Gaming',399.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (8,'2024','Canon',1,'Câmera Canon EOS Rebel T7',2999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (9,'2024','Nintendo',1,'Nintendo Switch',1999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (10,'2024','Apple',1,'Apple Watch Series 8',3999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (11,'2024','Google',1,'Google Nest Audio',599.99);

-- Computadores
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (12,'2024','Dell',2,'Notebook Dell Inspiron',4999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (13,'2024','HP',2,'Desktop HP Pavilion',3999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (14,'2024','Acer',2,'Chromebook Acer',1999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (15,'2024','Lenovo',2,'Lenovo ThinkPad',5499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (16,'2024','Asus',2,'Asus Vivobook',3199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (17,'2024','Apple',2,'iMac 24"',10999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (18,'2024','Microsoft',2,'Surface Laptop',7999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (19,'2024','Samsung',2,'Samsung Galaxy Book',4599.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (20,'2024','MSI',2,'MSI Gaming Laptop',8999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (21,'2024','Razer',2,'Razer Blade',13999.99);

-- Tablets
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (22,'2024','Apple',3,'iPad Pro 11"',7999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (23,'2024','Samsung',3,'Samsung Galaxy Tab S8',5499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (24,'2024','Lenovo',3,'Lenovo Tab P11',3299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (25,'2024','Microsoft',3,'Surface Pro 8',9499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (26,'2024','Amazon',3,'Kindle Paperwhite',999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (27,'2024','Huawei',3,'Huawei MatePad Pro',4599.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (28,'2024','Xiaomi',3,'Xiaomi Mi Pad 5',2999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (29,'2024','Asus',3,'Asus ZenPad 10',2499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (30,'2024','Acer',3,'Acer Enduro T1',3799.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (31,'2024','LG',3,'LG G Pad 5',2299.99);

-- Smartphones
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (32,'2024','Samsung',4,'Samsung Galaxy S22',5499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (33,'2024','Apple',4,'iPhone 14',8999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (34,'2024','OnePlus',4,'OnePlus 9 Pro',4999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (35,'2024','Xiaomi',4,'Xiaomi Mi 11',3999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (36,'2024','Google',4,'Google Pixel 6',4799.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (37,'2024','Motorola',4,'Motorola Edge 20',3499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (38,'2024','Sony',4,'Sony Xperia 5 III',6299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (39,'2024','Asus',4,'Asus ROG Phone 5',7499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (40,'2024','Oppo',4,'Oppo Find X3 Pro',4999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (41,'2024','Vivo',4,'Vivo X70 Pro+',5699.99);

-- Acessórios para Eletrônicos
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (42,'2024','Logitech',5,'Mouse Logitech MX Master 3',399.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (43,'2024','Apple',5,'AirPods Pro',1999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (44,'2024','Samsung',5,'Samsung Galaxy Buds Pro',799.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (45,'2024','Anker',5,'Carregador Anker 20W',159.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (46,'2024','Sony',5,'Controle DualSense',449.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (47,'2024','HyperX',5,'Teclado HyperX Alloy FPS',799.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (48,'2024','Kingston',5,'Pen Drive Kingston 128GB',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (49,'2024','Belkin',5,'Hub USB-C Belkin',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (50,'2024','Sandisk',5,'Cartão de Memória Sandisk 64GB',129.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (51,'2024','Corsair',5,'Mousepad Corsair MM300',149.99);

-- Televisores
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (52,'2024','LG',6,'Smart TV LG 65"',4999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (53,'2024','Samsung',6,'Smart TV Samsung 75"',6999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (54,'2024','Sony',6,'Smart TV Sony 55"',5499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (55,'2024','Philips',6,'Smart TV Philips 50"',3299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (56,'2024','TCL',6,'Smart TV TCL 43"',2299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (57,'2024','Panasonic',6,'Smart TV Panasonic 58"',3999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (58,'2024','AOC',6,'Smart TV AOC 40"',1799.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (59,'2024','Sharp',6,'Smart TV Sharp 50"',3199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (60,'2024','Vizio',6,'Smart TV Vizio 65"',4599.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (61,'2024','Hisense',6,'Smart TV Hisense 55"',2799.99);

-- Áudio e Vídeo
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (62,'2024','Sony',7,'Soundbar Sony HT-S100F',699.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (63,'2024','Bose',7,'Caixa de Som Bose SoundLink',1199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (64,'2024','JBL',7,'JBL PartyBox 100',1899.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (65,'2024','Pioneer',7,'Receiver Pioneer VSX-534',2299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (66,'2024','Yamaha',7,'Yamaha Home Theater YHT-4950U',3999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (67,'2024','Denon',7,'Denon AVR-S750H',4499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (68,'2024','LG',7,'LG Soundbar SN6Y',1399.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (69,'2024','Sennheiser',7,'Fone de Ouvido Sennheiser HD 560S',1299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (70,'2024','Harman Kardon',7,'Caixa de Som Harman Kardon Onyx Studio 6',1599.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (71,'2024','Samsung',7,'Soundbar Samsung HW-T450',999.99);

-- Câmeras e Fotografia
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (72,'2024','Canon',8,'Câmera Canon EOS M50',3499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (73,'2024','Nikon',8,'Nikon D5600',4599.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (74,'2024','Sony',8,'Sony Alpha a6400',5999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (75,'2024','Fujifilm',8,'Fujifilm X-T30',4999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (76,'2024','Olympus',8,'Olympus OM-D E-M10 Mark IV',4399.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (77,'2024','GoPro',8,'GoPro HERO10 Black',2499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (78,'2024','Panasonic',8,'Panasonic Lumix G7',3699.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (79,'2024','Leica',8,'Leica Q2',29999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (80,'2024','DJI',8,'DJI Osmo Pocket',1699.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (81,'2024','Pentax',8,'Pentax K-70',2899.99);

-- Eletrodomésticos
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (82,'2024','Brastemp',9,'Geladeira Brastemp Frost Free',3299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (83,'2024','Consul',9,'Máquina de Lavar Consul 12kg',1999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (84,'2024','Electrolux',9,'Micro-ondas Electrolux 31L',899.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (85,'2024','LG',9,'Ar-Condicionado LG Dual Inverter',2499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (86,'2024','Samsung',9,'Forno Elétrico Samsung 45L',1799.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (87,'2024','Philco',9,'Aspirador de Pó Philco 2000W',599.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (88,'2024','Fischer',9,'Forno de Embutir Fischer',2199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (89,'2024','Britânia',9,'Fritadeira Elétrica Britânia',499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (90,'2024','Mondial',9,'Liquidificador Mondial Turbo',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (91,'2024','Midea',9,'Climatizador Midea 10L',699.99);

-- Eletroportáteis
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (92,'2024','Mondial',10,'Ventilador Mondial 40cm',129.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (93,'2024','Philips Walita',10,'Batedeira Philips Walita',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (94,'2024','Britânia',10,'Ferro de Passar Britânia',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (95,'2024','Cadence',10,'Panela Elétrica Cadence',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (96,'2024','Oster',10,'Cafeteira Oster',249.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (97,'2024','Arno',10,'Aspirador de Pó Arno',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (98,'2024','Philco',10,'Chaleira Elétrica Philco',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (99,'2024','Electrolux',10,'Multiprocessador Electrolux',399.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (100,'2024','Black+Decker',10,'Grill Elétrico Black+Decker',179.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (101,'2024','Hamilton Beach',10,'Liquidificador Hamilton Beach',279.99);

-- Jogos e Consoles
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (102,'2024','Sony',11,'PlayStation 5',4999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (103,'2024','Microsoft',11,'Xbox Series X',4799.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (104,'2024','Nintendo',11,'Nintendo Switch OLED',2499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (105,'2024','Sony',11,'Controle DualSense PS5',499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (106,'2024','Microsoft',11,'Controle Xbox Series X',399.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (107,'2024','Logitech',11,'Volante Logitech G923',1499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (108,'2024','Razer',11,'Headset Razer Kraken',599.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (109,'2024','Sony',11,'PlayStation VR',2499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (110,'2024','Microsoft',11,'Xbox Game Pass',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (111,'2024','SteelSeries',11,'Teclado Gamer SteelSeries Apex',799.99);

-- Roupas Masculinas
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (112,'2024','Nike',12,'Camiseta Nike Dri-FIT',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (113,'2024','Adidas',12,'Calça Adidas Originals',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (114,'2024','Polo Ralph Lauren',12,'Camisa Polo Ralph Lauren',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (115,'2024','Levi\'s',12,'Jeans Levi\'s 511',249.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (116,'2024','Tommy Hilfiger',12,'Blusa Tommy Hilfiger',399.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (117,'2024','Lacoste',12,'Camisa Lacoste',349.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (118,'2024','H&M',12,'Jaqueta H&M',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (119,'2024','Calvin Klein',12,'Cueca Calvin Klein',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (120,'2024','Zara',12,'Blazer Zara',499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (121,'2024','Uniqlo',12,'Camiseta Uniqlo',59.99);

-- Roupas Femininas
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (122,'2024','Zara',13,'Vestido Zara',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (123,'2024','H&M',13,'Blusa H&M',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (124,'2024','Gucci',13,'Saia Gucci',1299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (125,'2024','Prada',13,'Calça Prada',999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (126,'2024','Versace',13,'Jaqueta Versace',1599.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (127,'2024','Dolce & Gabbana',13,'Blusa Dolce & Gabbana',799.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (128,'2024','Chanel',13,'Vestido Chanel',2299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (129,'2024','Louis Vuitton',13,'Blazer Louis Vuitton',1799.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (130,'2024','Fendi',13,'Camiseta Fendi',699.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (131,'2024','Balenciaga',13,'Saia Balenciaga',1199.99);

-- Roupas Infantis
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (132,'2024','Carter\'s',14,'Conjunto Carter\'s Bebê',129.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (133,'2024','GAP',14,'Camiseta GAP Infantil',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (134,'2024','H&M',14,'Shorts H&M Infantil',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (135,'2024','Nike',14,'Calça Nike Infantil',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (136,'2024','Adidas',14,'Jaqueta Adidas Infantil',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (137,'2024','Zara',14,'Vestido Zara Infantil',89.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (138,'2024','Old Navy',14,'Blusa Old Navy Infantil',59.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (139,'2024','Tommy Hilfiger',14,'Camisa Tommy Hilfiger Infantil',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (140,'2024','Uniqlo',14,'Moleton Uniqlo Infantil',69.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (141,'2024','C&A',14,'Pijama C&A Infantil',49.99);

-- Calçados Masculinos
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (142,'2024','Nike',15,'Tênis Nike Air Max',599.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (143,'2024','Adidas',15,'Tênis Adidas Ultraboost',649.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (144,'2024','Puma',15,'Tênis Puma Suede',349.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (145,'2024','Vans',15,'Tênis Vans Old Skool',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (146,'2024','Converse',15,'Tênis Converse All Star',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (147,'2024','Reebok',15,'Tênis Reebok Classic',279.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (148,'2024','Asics',15,'Tênis Asics Gel-Kayano',749.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (149,'2024','New Balance',15,'Tênis New Balance 574',399.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (150,'2024','Mizuno',15,'Tênis Mizuno Wave',499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (151,'2024','Under Armour',15,'Tênis Under Armour HOVR',349.99);

-- Calçados Femininos
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (152,'2024','Christian Louboutin',16,'Sapato Christian Louboutin',2999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (153,'2024','Jimmy Choo',16,'Sandália Jimmy Choo',1999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (154,'2024','Manolo Blahnik',16,'Scarpin Manolo Blahnik',2499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (155,'2024','Prada',16,'Bota Prada',2999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (156,'2024','Gucci',16,'Tênis Gucci',1699.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (157,'2024','Valentino',16,'Sapatilha Valentino',1599.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (158,'2024','Saint Laurent',16,'Sapato Saint Laurent',1899.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (159,'2024','Chanel',16,'Sandália Chanel',2199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (160,'2024','Dior',16,'Tênis Dior',2499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (161,'2024','Alexander McQueen',16,'Bota Alexander McQueen',2799.99);

-- Calçados Infantis
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (162,'2024','Nike',17,'Tênis Nike Infantil',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (163,'2024','Adidas',17,'Tênis Adidas Infantil',179.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (164,'2024','Puma',17,'Sandália Puma Infantil',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (165,'2024','Crocs',17,'Crocs Infantil',129.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (166,'2024','Vans',17,'Tênis Vans Infantil',159.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (167,'2024','Converse',17,'Tênis Converse Infantil',119.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (168,'2024','Reebok',17,'Tênis Reebok Infantil',139.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (169,'2024','Asics',17,'Tênis Asics Infantil',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (170,'2024','New Balance',17,'Tênis New Balance Infantil',159.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (171,'2024','Under Armour',17,'Tênis Under Armour Infantil',149.99);

-- Acessórios de Moda
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (172,'2024','Ray-Ban',18,'Óculos de Sol Ray-Ban',699.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (173,'2024','Michael Kors',18,'Relógio Michael Kors',999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (174,'2024','Fossil',18,'Carteira Fossil',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (175,'2024','Gucci',18,'Cinto Gucci',799.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (176,'2024','Chanel',18,'Lenço Chanel',499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (177,'2024','Burberry',18,'Cachecol Burberry',1099.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (178,'2024','Louis Vuitton',18,'Bolsa Louis Vuitton',3299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (179,'2024','Hermès',18,'Echarpe Hermès',1399.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (180,'2024','Prada',18,'Boné Prada',599.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (181,'2024','Versace',18,'Óculos de Sol Versace',1299.99);

-- Joias e Bijuterias
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (182,'2024','Pandora',19,'Pulseira Pandora',499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (183,'2024','Swarovski',19,'Colar Swarovski',899.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (184,'2024','Tiffany & Co.',19,'Anel Tiffany & Co.',2999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (185,'2024','Cartier',19,'Bracelete Cartier',6999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (186,'2024','Bvlgari',19,'Brinco Bvlgari',4999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (187,'2024','Chopard',19,'Colar Chopard',7999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (188,'2024','Van Cleef & Arpels',19,'Pingente Van Cleef & Arpels',5999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (189,'2024','Piaget',19,'Relógio Piaget',12999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (190,'2024','Harry Winston',19,'Anel Harry Winston',15999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (191,'2024','Damiani',19,'Pulseira Damiani',3999.99);

-- Relógios
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (192,'2024','Rolex',20,'Relógio Rolex Submariner',45999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (193,'2024','Omega',20,'Relógio Omega Seamaster',29999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (194,'2024','Tag Heuer',20,'Relógio Tag Heuer Carrera',24999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (195,'2024','Breitling',20,'Relógio Breitling Navitimer',27999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (196,'2024','Audemars Piguet',20,'Relógio Audemars Piguet Royal Oak',99999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (197,'2024','Patek Philippe',20,'Relógio Patek Philippe Nautilus',159999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (198,'2024','Hublot',20,'Relógio Hublot Big Bang',34999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (199,'2024','Panerai',20,'Relógio Panerai Luminor',29999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (200,'2024','IWC',20,'Relógio IWC Portugieser',44999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (201,'2024','Jaeger-LeCoultre',20,'Relógio Jaeger-LeCoultre Reverso',39999.99);

-- Bolsas e Carteiras
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (202,'2024','Michael Kors',21,'Bolsa Michael Kors Jet Set',1999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (203,'2024','Kate Spade',21,'Bolsa Kate Spade Crossbody',899.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (204,'2024','Louis Vuitton',21,'Bolsa Louis Vuitton Neverfull',3999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (205,'2024','Gucci',21,'Bolsa Gucci Marmont',2999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (206,'2024','Prada',21,'Bolsa Prada Nylon',2499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (207,'2024','Chanel',21,'Bolsa Chanel Classic Flap',5999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (208,'2024','Hermès',21,'Birkin Hermès',19999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (209,'2024','Fendi',21,'Bolsa Fendi Peekaboo',3499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (210,'2024','Celine',21,'Bolsa Celine Trio',1499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (211,'2024','Burberry',21,'Bolsa Burberry Vintage Check',1799.99);

-- Móveis
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (212,'2024','Etna',22,'Sofá Etna Retrátil',3999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (213,'2024','Tok&Stok',22,'Mesa de Jantar Tok&Stok',1999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (214,'2024','MadeiraMadeira',22,'Cama de Casal MadeiraMadeira',2999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (215,'2024','IKEA',22,'Guarda-Roupa IKEA',1499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (216,'2024','Westwing',22,'Poltrona Westwing',899.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (217,'2024','Mobly',22,'Rack Mobly',1299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (218,'2024','Marabraz',22,'Cômoda Marabraz',799.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (219,'2024','Casa América',22,'Estante Casa América',699.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (220,'2024','Cacau Show',22,'Cadeira Cacau Show',499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (221,'2024','Casas Bahia',22,'Balcão Casas Bahia',399.99);

-- Decoração
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (222,'2024','Tok&Stok',23,'Tapete Tok&Stok',599.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (223,'2024','Leroy Merlin',23,'Papel de Parede Leroy Merlin',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (224,'2024','Etna',23,'Abajur Etna',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (225,'2024','Westwing',23,'Espelho Westwing',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (226,'2024','Mobly',23,'Quadro Mobly',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (227,'2024','Marabraz',23,'Cortina Marabraz',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (228,'2024','Casa América',23,'Vaso Casa América',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (229,'2024','Cacau Show',23,'Porta-Retrato Cacau Show',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (230,'2024','Casas Bahia',23,'Luminária Casas Bahia',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (231,'2024','IKEA',23,'Cesto IKEA',19.99);

-- Cama, Mesa e Banho
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (232,'2024','Camicado',24,'Jogo de Cama Camicado',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (233,'2024','Zelo',24,'Toalha de Banho Zelo',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (234,'2024','MMartan',24,'Colcha MMartan',399.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (235,'2024','Havan',24,'Edredom Havan',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (236,'2024','Casa & Vídeo',24,'Jogo de Toalhas Casa & Vídeo',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (237,'2024','Riachuelo',24,'Lençol Riachuelo',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (238,'2024','Pernambucanas',24,'Travesseiro Pernambucanas',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (239,'2024','Ponto Frio',24,'Cobre-Leito Ponto Frio',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (240,'2024','Leader',24,'Protetor de Colchão Leader',69.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (241,'2024','Casa das Alianças',24,'Jogo Americano Casa das Alianças',19.99);

-- Iluminação
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (242,'2024','Leroy Merlin',25,'Lustre Leroy Merlin',799.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (243,'2024','Etna',25,'Luminária de Mesa Etna',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (244,'2024','Tok&Stok',25,'Abajur de Piso Tok&Stok',399.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (245,'2024','Westwing',25,'Plafon Westwing',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (246,'2024','Mobly',25,'Spot Mobly',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (247,'2024','Marabraz',25,'Pendente Marabraz',129.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (248,'2024','Casa América',25,'Arandela Casa América',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (249,'2024','Cacau Show',25,'Luminária de Teto Cacau Show',59.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (250,'2024','Casas Bahia',25,'Lustre de Cristal Casas Bahia',499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (251,'2024','IKEA',25,'Luminária de Parede IKEA',79.99);

-- Utilidades Domésticas
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (252,'2024','Tramontina',26,'Panela de Pressão Tramontina',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (253,'2024','OXO',26,'Escorredor de Louças OXO',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (254,'2024','Brinox',26,'Conjunto de Talheres Brinox',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (255,'2024','Electrolux',26,'Aspirador de Pó Electrolux',499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (256,'2024','Philips Walita',26,'Liquidificador Philips Walita',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (257,'2024','Mondial',26,'Cafeteira Mondial',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (258,'2024','Cadence',26,'Sanduicheira Cadence',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (259,'2024','Arno',26,'Ventilador Arno',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (260,'2024','Cuisinart',26,'Processador de Alimentos Cuisinart',699.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (261,'2024','Nespresso',26,'Máquina de Café Nespresso',799.99);

-- Cozinha
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (262,'2024','Tramontina',27,'Frigideira Tramontina',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (263,'2024','Etna',27,'Jogo de Panelas Etna',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (264,'2024','Tok&Stok',27,'Conjunto de Utensílios Tok&Stok',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (265,'2024','Marinex',27,'Assadeira Marinex',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (266,'2024','Le Creuset',27,'Leiteira Le Creuset',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (267,'2024','Pyrex',27,'Travessa Pyrex',69.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (268,'2024','Oster',27,'Liquidificador Oster',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (269,'2024','KitchenAid',27,'Batedeira KitchenAid',899.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (270,'2024','Hamilton Beach',27,'Grill Hamilton Beach',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (271,'2024','Mimo Style',27,'Porta-Talheres Mimo Style',19.99);

-- Eletrodomésticos de Cozinha
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (272,'2024','Brastemp',28,'Geladeira Brastemp',3999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (273,'2024','Electrolux',28,'Forno Elétrico Electrolux',1999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (274,'2024','Consul',28,'Fogão Consul',1499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (275,'2024','LG',28,'Micro-ondas LG',799.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (276,'2024','Samsung',28,'Lava-Louças Samsung',2999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (277,'2024','Panasonic',28,'Cooktop Panasonic',999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (278,'2024','Fischer',28,'Coifa Fischer',1499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (279,'2024','Cadence',28,'Fritadeira Cadence',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (280,'2024','Philco',28,'Cervejeira Philco',1999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (281,'2024','Midea',28,'Depurador Midea',399.99);

-- Ar Condicionado e Ventilação
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (282,'2024','Consul',29,'Ar Condicionado Consul',2499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (283,'2024','Electrolux',29,'Ar Condicionado Electrolux',2999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (284,'2024','LG',29,'Ar Condicionado LG',3499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (285,'2024','Samsung',29,'Ar Condicionado Samsung',3999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (286,'2024','Philco',29,'Ventilador de Teto Philco',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (287,'2024','Britânia',29,'Ventilador Britânia',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (288,'2024','Arno',29,'Climatizador Arno',499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (289,'2024','Midea',29,'Ventilador Midea',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (290,'2024','Cadence',29,'Ventilador de Coluna Cadence',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (291,'2024','Springer',29,'Cortina de Ar Springer',799.99);

-- Ferramentas e Jardim
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (292,'2024','Tramontina',30,'Kit de Ferramentas Tramontina',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (293,'2024','Black+Decker',30,'Furadeira Black+Decker',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (294,'2024','Bosch',30,'Serra Circular Bosch',499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (295,'2024','Makita',30,'Parafusadeira Makita',399.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (296,'2024','Vonder',30,'Esmerilhadeira Vonder',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (297,'2024','Stanley',30,'Trena Stanley',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (298,'2024','Trapp',30,'Cortador de Grama Trapp',799.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (299,'2024','Garthen',30,'Roçadeira Garthen',699.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (300,'2024','Karcher',30,'Lavadora de Alta Pressão Karcher',999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (301,'2024','Husqvarna',30,'Motosserra Husqvarna',1499.99);

-- Automotivo
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (302,'2024','Pioneer',31,'Central Multimídia Pioneer',1999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (303,'2024','Pirelli',31,'Pneu Pirelli',499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (304,'2024','Bosch',31,'Bateria Bosch',399.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (305,'2024','Sparco',31,'Volante Sparco',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (306,'2024','Eagle Eyes',31,'Farol Eagle Eyes',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (307,'2024','Shutt',31,'Tapete Shutt',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (308,'2024','Volkswagen',31,'Tapete Volkswagen',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (309,'2024','Chevrolet',31,'Tapete Chevrolet',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (310,'2024','Ford',31,'Tapete Ford',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (311,'2024','Fiat',31,'Tapete Fiat',79.99);

-- Peças e Acessórios para Veículos
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (312,'2024','Bosch',32,'Lâmpada Bosch',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (313,'2024','NGK',32,'Vela de Ignição NGK',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (314,'2024','Magnetron',32,'Bobina de Ignição Magnetron',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (315,'2024','Fremax',32,'Disco de Freio Fremax',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (316,'2024','Sachs',32,'Amortecedor Sachs',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (317,'2024','COFAP',32,'Mola COFAP',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (318,'2024','Monroe',32,'Kit Amortecedor Monroe',499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (319,'2024','Correias Continental',32,'Correia Dentada Continental',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (320,'2024','Fras-le',32,'Pastilha de Freio Fras-le',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (321,'2024','Axios',32,'Filtro de Ar Axios',29.99);

-- Produtos de Limpeza
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (322,'2024','Veja',33,'Limpador Veja',9.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (323,'2024','Ypê',33,'Sabão em Pó Ypê',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (324,'2024','OMO',33,'Detergente OMO',12.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (325,'2024','Lysol',33,'Desinfetante Lysol',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (326,'2024','Sanol',33,'Desinfetante Sanol',15.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (327,'2024','Mr. Músculo',33,'Limpa Vidros Mr. Músculo',14.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (328,'2024','Pato',33,'Desinfetante Sanitário Pato',10.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (329,'2024','Ajax',33,'Detergente Ajax',8.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (330,'2024','Pilão',33,'Amaciante Pilão',17.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (331,'2024','Uau',33,'Limpador Multiuso Uau',11.99);

-- Produtos de Higiene Pessoal
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (332,'2024','Nivea',34,'Creme Hidratante Nivea',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (333,'2024','Dove',34,'Shampoo Dove',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (334,'2024','Colgate',34,'Creme Dental Colgate',5.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (335,'2024','Gillette',34,'Lâmina de Barbear Gillette',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (336,'2024','Rexona',34,'Desodorante Rexona',9.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (337,'2024','Pantene',34,'Condicionador Pantene',14.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (338,'2024','Johnson & Johnson',34,'Sabonete Johnson & Johnson',3.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (339,'2024','L\'Oréal',34,'Creme Antirrugas L\'Oréal',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (340,'2024','Veet',34,'Cera Depilatória Veet',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (341,'2024','Neutrogena',34,'Protetor Solar Neutrogena',49.99);

-- Beleza e Cuidados Pessoais
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (342,'2024','MAC',35,'Batom MAC',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (343,'2024','Maybelline',35,'Máscara de Cílios Maybelline',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (344,'2024','O Boticário',35,'Perfume O Boticário',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (345,'2024','Avon',35,'Base Avon',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (346,'2024','Natura',35,'Hidratante Corporal Natura',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (347,'2024','Revlon',35,'Esmalte Revlon',14.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (348,'2024','Dior',35,'Perfume Dior',399.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (349,'2024','Lancôme',35,'Creme Facial Lancôme',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (350,'2024','Vult',35,'Corretivo Vult',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (351,'2024','Granado',35,'Creme para Mãos Granado',9.99);

-- Perfumaria
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (352,'2024','Chanel',36,'Perfume Chanel Nº5',599.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (353,'2024','Carolina Herrera',36,'Perfume Carolina Herrera Good Girl',399.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (354,'2024','Paco Rabanne',36,'Perfume Paco Rabanne One Million',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (355,'2024','Dolce & Gabbana',36,'Perfume Dolce & Gabbana Light Blue',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (356,'2024','Guerlain',36,'Perfume Guerlain Mon Guerlain',499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (357,'2024','Versace',36,'Perfume Versace Bright Crystal',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (358,'2024','Hugo Boss',36,'Perfume Hugo Boss Bottled',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (359,'2024','Bvlgari',36,'Perfume Bvlgari Omnia',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (360,'2024','Giorgio Armani',36,'Perfume Giorgio Armani Si',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (361,'2024','Yves Saint Laurent',36,'Perfume Yves Saint Laurent Black Opium',249.99);

-- Cosméticos
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (362,'2024','Benefit',37,'Bronzer Benefit Hoola',59.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (363,'2024','MAC',37,'Corretivo MAC Pro Longwear',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (364,'2024','Urban Decay',37,'Paleta de Sombras Urban Decay Naked',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (365,'2024','Too Faced',37,'Batom Líquido Too Faced Melted',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (366,'2024','Anastasia Beverly Hills',37,'Paleta de Contorno Anastasia Beverly Hills',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (367,'2024','Make Up For Ever',37,'Base Make Up For Ever Ultra HD',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (368,'2024','NYX',37,'Delineador NYX Matte Liquid Liner',9.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (369,'2024','Revlon',37,'Blush Revlon',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (370,'2024','Clinique',37,'BB Cream Clinique',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (371,'2024','Lancôme',37,'Máscara de Cílios Lancôme Hypnôse',29.99);

-- Suplementos e Vitaminas
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (372,'2024','Centrum',38,'Multivitamínico Centrum',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (373,'2024','Optimum Nutrition',38,'Whey Protein Optimum Nutrition',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (374,'2024','Nature Made',38,'Ômega 3 Nature Made',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (375,'2024','Now Foods',38,'Vitamina D Now Foods',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (376,'2024','Natrol',38,'Melatonina Natrol',9.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (377,'2024','Garden of Life',38,'Probiótico Garden of Life',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (378,'2024','MuscleTech',38,'Creatina MuscleTech',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (379,'2024','Vital Proteins',38,'Colágeno Vital Proteins',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (380,'2024','Rainbow Light',38,'Vitamina C Rainbow Light',14.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (381,'2024','Natrol',38,'Biotina Natrol',19.99);

-- Alimentos e Bebidas
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (382,'2024','Nestlé',39,'Leite em Pó Nestlé',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (383,'2024','Bauducco',39,'Panettone Bauducco',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (384,'2024','Oreo',39,'Biscoito Oreo',7.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (385,'2024','Coca-Cola',39,'Refrigerante Coca-Cola',4.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (386,'2024','Nutella',39,'Creme de Avelã Nutella',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (387,'2024','Heineken',39,'Cerveja Heineken',2.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (388,'2024','Chandon',39,'Espumante Chandon',59.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (389,'2024','Jack Daniel\'s',39,'Whisky Jack Daniel\'s',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (390,'2024','Campari',39,'Licor Campari',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (391,'2024','Red Bull',39,'Energético Red Bull',8.99);

-- Bebidas Alcoólicas
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (392,'2024','Johnnie Walker',40,'Whisky Johnnie Walker Red Label',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (393,'2024','Absolut',40,'Vodka Absolut',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (394,'2024','Chivas Regal',40,'Whisky Chivas Regal',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (395,'2024','Campari',40,'Licor Campari',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (396,'2024','Tanqueray',40,'Gin Tanqueray',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (397,'2024','Martini',40,'Vermute Martini',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (398,'2024','Stella Artois',40,'Cerveja Stella Artois',3.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (399,'2024','Jose Cuervo',40,'Tequila Jose Cuervo',69.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (400,'2024','Baileys',40,'Licor Baileys',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (401,'2024','Moët & Chandon',40,'Champagne Moët & Chandon',299.99);

-- Cervejas
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (402,'2024','Heineken',41,'Cerveja Heineken',4.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (403,'2024','Budweiser',41,'Cerveja Budweiser',3.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (404,'2024','Stella Artois',41,'Cerveja Stella Artois',3.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (405,'2024','Eisenbahn',41,'Cerveja Eisenbahn Pilsen',5.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (406,'2024','Colorado',41,'Cerveja Colorado Indica',6.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (407,'2024','Corona',41,'Cerveja Corona Extra',5.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (408,'2024','Guinness',41,'Cerveja Guinness Draught',7.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (409,'2024','Paulaner',41,'Cerveja Paulaner Hefe-Weißbier',9.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (410,'2024','Duvel',41,'Cerveja Duvel Belgian Golden Ale',12.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (411,'2024','Schornstein',41,'Cerveja Schornstein Imperial Stout',8.99);

-- Vinhos
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (412,'2024','Concha y Toro',42,'Vinho Concha y Toro Casillero del Diablo',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (413,'2024','Santa Helena',42,'Vinho Santa Helena Reservado',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (414,'2024','Miolo',42,'Vinho Miolo Seleção',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (415,'2024','Château Lafite Rothschild',42,'Vinho Château Lafite Rothschild',999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (416,'2024','Domaine de la Romanée-Conti',42,'Vinho Domaine de la Romanée-Conti',1999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (417,'2024','Penfolds',42,'Vinho Penfolds Grange',599.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (418,'2024','Robert Mondavi',42,'Vinho Robert Mondavi Private Selection',34.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (419,'2024','Torres',42,'Vinho Torres Sangre de Toro',24.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (420,'2024','Casillero del Diablo',42,'Vinho Casillero del Diablo Reserva Privada',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (421,'2024','Trapiche',42,'Vinho Trapiche Broquel Malbec',39.99);

-- Destilados
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (422,'2024','Johnnie Walker',43,'Whisky Johnnie Walker Black Label',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (423,'2024','Jack Daniel\'s',43,'Whisky Jack Daniel\'s Honey',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (424,'2024','Absolut',43,'Vodka Absolut',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (425,'2024','Bombay Sapphire',43,'Gin Bombay Sapphire',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (426,'2024','Jose Cuervo',43,'Tequila Jose Cuervo Especial',69.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (427,'2024','Campari',43,'Licor Campari',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (428,'2024','Baileys',43,'Licor Baileys Irish Cream',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (429,'2024','Martini',43,'Vermute Martini Bianco',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (430,'2024','Captain Morgan',43,'Rum Captain Morgan Original Spiced',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (431,'2024','Patrón',43,'Tequila Patrón Silver',99.99);

-- Alimentos Orgânicos
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (432,'2024','Jasmine',44,'Arroz Integral Jasmine',9.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (433,'2024','Native',44,'Açúcar Demerara Native',7.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (434,'2024','Bem Orgânico',44,'Feijão Bem Orgânico',14.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (435,'2024','Jatobá',44,'Café Orgânico Jatobá',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (436,'2024','Casa da Ovelha',44,'Queijo Minas Orgânico Casa da Ovelha',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (437,'2024','Vitalin',44,'Granola Vitalin Orgânica',12.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (438,'2024','Mãe Terra',44,'Cookies Orgânicos Mãe Terra',17.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (439,'2024','Empório da Papinha',44,'Papinha Orgânica Empório da Papinha',4.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (440,'2024','Belive',44,'Suco Orgânico Belive',8.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (441,'2024','Copra',44,'Óleo de Coco Orgânico Copra',29.99);

-- Alimentos Gourmet
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (442,'2024','Trufas da Serra',45,'Trufas de Chocolate Trufas da Serra',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (443,'2024','La Pastina',45,'Massa Italiana La Pastina',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (444,'2024','Valle Nevado',45,'Queijo Gorgonzola Valle Nevado',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (445,'2024','Bazzar',45,'Mel de Trufas Bazzar',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (446,'2024','Président',45,'Manteiga Président',9.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (447,'2024','Quinta do Olivardo',45,'Azeite Quinta do Olivardo',34.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (448,'2024','Aranha',45,'Café Aranha Gourmet',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (449,'2024','Divina Dieta',45,'Geleia de Pimenta Divina Dieta',14.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (450,'2024','Casa Madeira',45,'Vinho Casa Madeira Late Harvest',59.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (451,'2024','Castelo Alimentos',45,'Azeitonas Verdes com Ervas Finas Castelo Alimentos',12.99);

-- Pet Shop
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (452,'2024','Ração Premier',46,'Ração Premier Ambientes Internos para Gatos',59.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (453,'2024','Royal Canin',46,'Ração Royal Canin Mini Adult para Cães',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (454,'2024','Pedigree',46,'Sachê Pedigree Carne ao Molho para Cães',2.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (455,'2024','Whiskas',46,'Ração Whiskas Carne para Gatos',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (456,'2024','Hills',46,'Ração Hills Science Diet para Cães',89.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (457,'2024','Bayer',46,'Coleira Bayer Seresto para Cães',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (458,'2024','Pro Plan',46,'Ração Pro Plan Salmão para Gatos',69.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (459,'2024','Golden',46,'Ração Golden Special para Cães Adultos',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (460,'2024','Furacão Pet',46,'Caixa de Transporte Furacão Pet',89.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (461,'2024','Cat Chow',46,'Ração Cat Chow para Gatos Filhotes',29.99);

-- Brinquedos para Pets
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (462,'2024','Kong',47,'Brinquedo Kong Classic para Cães',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (463,'2024','Furacão Pet',47,'Bolinha de Tênis Furacão Pet',4.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (464,'2024','Jambo',47,'Osso de Couro Natural Jambo para Cães',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (465,'2024','Petstages',47,'Brinquedo Petstages Dental para Cães',14.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (466,'2024','Pet Games',47,'Jogo Interativo Pet Games para Gatos',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (467,'2024','Chalesco',47,'Pelúcia Chalesco para Cães',9.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (468,'2024','Zee.Dog',47,'Guia Zee.Dog para Cães',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (469,'2024','Pet Brilho',47,'Arranhador Pet Brilho para Gatos',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (470,'2024','Pet Trends',47,'Kit de Bolinhas Pet Trends para Cães',12.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (471,'2024','Trixie',47,'Labirinto Trixie para Roedores',24.99);

-- Rações e Alimentação para Pets
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (472,'2024','Premier Pet',48,'Ração Premier Seleção Natural para Cães Adultos',69.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (473,'2024','Royal Canin',48,'Ração Royal Canin Obesity para Cães',89.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (474,'2024','Pedigree',48,'Ração Pedigree Vital Pro para Cães Filhotes',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (475,'2024','Whiskas',48,'Ração Whiskas Sachê para Gatos Adultos',1.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (476,'2024','Hills',48,'Ração Hills Prescription Diet para Cães',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (477,'2024','Bayer',48,'Advocate Bayer para Cães de Médio Porte',89.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (478,'2024','Pro Plan',48,'Ração Pro Plan Sensitive para Gatos',59.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (479,'2024','Golden',48,'Ração Golden Mega para Cães Adultos',59.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (480,'2024','Furacão Pet',48,'Ração Furacão Pet Carne para Cães',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (481,'2024','Cat Chow',48,'Ração Cat Chow Sachê para Gatos Filhotes',1.99);

-- Produtos de Higiene para Pets
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (482,'2024','Pet Society',49,'Shampoo Pet Society Neutro para Cães e Gatos',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (483,'2024','Sanol Dog',49,'Colônia Sanol Dog para Cães',14.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (484,'2024','Granado Pet',49,'Sabonete de Enxofre Granado Pet para Cães',9.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (485,'2024','Chalesco',49,'Escova Chalesco para Gatos',12.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (486,'2024','Petbrilho',49,'Condicionador Petbrilho para Cães',24.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (487,'2024','Mammy Pet',49,'Absorvente Higiênico Mammy Pet para Cães',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (488,'2024','Petix',49,'Pente Antipulgas Petix para Gatos',8.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (489,'2024','Vetnil',49,'Dental Stick Vetnil para Cães',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (490,'2024','Alfapet',49,'Shampoo Alfapet Oatmeal para Cães e Gatos',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (491,'2024','Duprat',49,'Removedor de Tártaro Duprat para Cães',19.99);

-- Livros
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (492,'2024','George Orwell',50,'1984',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (493,'2024','J.K. Rowling',50,'Harry Potter e a Pedra Filosofal',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (494,'2024','Gabriel García Márquez',50,'Cem Anos de Solidão',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (495,'2024','Harper Lee',50,'O Sol é para Todos',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (496,'2024','Stephen King',50,'It: A Coisa',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (497,'2024','Machado de Assis',50,'Dom Casmurro',14.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (498,'2024','Jane Austen',50,'Orgulho e Preconceito',24.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (499,'2024','Tolkien',50,'O Senhor dos Anéis: A Sociedade do Anel',34.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (500,'2024','Clarice Lispector',50,'A Hora da Estrela',9.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (501,'2024','Albert Camus',50,'O Estrangeiro',19.99);

-- Livros Infantis
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (502,'2024','Maurice Sendak',51,'Onde Vivem os Monstros',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (503,'2024','Eric Carle',51,'A Lagarta Comilona',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (504,'2024','Dr. Seuss',51,'O Lorax',14.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (505,'2024','J.K. Rowling',51,'Harry Potter e a Pedra Filosofal (Ilustrado)',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (506,'2024','Roald Dahl',51,'Matilda',24.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (507,'2024','Lewis Carroll',51,'Alice no País das Maravilhas',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (508,'2024','Antoine de Saint-Exupéry',51,'O Pequeno Príncipe',9.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (509,'2024','Ruth Rocha',51,'Marcelo, Marmelo, Martelo',12.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (510,'2024','Ziraldo',51,'O Menino Maluquinho',14.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (511,'2024','Michael Ende',51,'A História Sem Fim',29.99);

-- Livros Didáticos
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (512,'2024','Paulo Freire',52,'Pedagogia do Oprimido',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (513,'2024','Lauro de Oliveira Lima',52,'História da Educação no Brasil',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (514,'2024','Maria Montessori',52,'A Mente Absorvente da Criança',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (515,'2024','Vygotsky',52,'A Formação Social da Mente',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (516,'2024','Emília Ferreiro',52,'Reflexões sobre Alfabetização',24.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (517,'2024','Dermeval Saviani',52,'Educação: Do Senso Comum à Consciência Filosófica',34.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (518,'2024','Rubem Alves',52,'A Alegria de Ensinar',14.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (519,'2024','César Coll',52,'Psicologia e Educação: Desafios e Interações',24.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (520,'2024','Jean Piaget',52,'A Construção do Pensamento e da Linguagem',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (521,'2024','Celso Antunes',52,'A Construção do Saber',19.99);

-- Livros de Literatura
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (522,'2024','F. Scott Fitzgerald',53,'O Grande Gatsby',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (523,'2024','Virginia Woolf',53,'Mrs. Dalloway',24.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (524,'2024','Franz Kafka',53,'A Metamorfose',14.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (525,'2024','Fernando Pessoa',53,'Livro do Desassossego',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (526,'2024','Gustave Flaubert',53,'Madame Bovary',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (527,'2024','Gabriel García Márquez',53,'O Amor nos Tempos do Cólera',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (528,'2024','José Saramago',53,'Ensaio sobre a Cegueira',34.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (529,'2024','Jorge Luis Borges',53,'Ficções',24.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (530,'2024','Clarice Lispector',53,'A Paixão Segundo G.H.',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (531,'2024','Marguerite Duras',53,'O Amante',29.99);

-- Revistas e Quadrinhos
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (532,'2024','Veja',54,'Revista Veja Semanal',9.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (533,'2024','Superinteressante',54,'Revista Superinteressante Mensal',14.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (534,'2024','National Geographic',54,'Revista National Geographic Mensal',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (535,'2024','Mundo Estranho',54,'Revista Mundo Estranho Mensal',12.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (536,'2024','Marvel Comics',54,'Quadrinho Marvel Comics: Vingadores',4.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (537,'2024','DC Comics',54,'Quadrinho DC Comics: Batman',4.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (538,'2024','Turma da Mônica',54,'Quadrinho Turma da Mônica: Clássicos',2.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (539,'2024','Mafalda',54,'Quadrinho Mafalda: Edição Especial',9.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (540,'2024','Tintim',54,'Quadrinho As Aventuras de Tintim: O Segredo do Licorne',12.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (541,'2024','Asterix',54,'Quadrinho Asterix e a Poção Mágica',7.99);

-- Papeteria
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (542,'2024','Faber-Castell',55,'Lápis de Cor Faber-Castell 24 Cores',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (543,'2024','BIC',55,'Caneta Esferográfica BIC Cristal Azul',0.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (544,'2024','Pilot',55,'Marcador Permanente Pilot Preto',2.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (545,'2024','Stabilo',55,'Marca-texto Stabilo Boss Amarelo',4.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (546,'2024','3M',55,'Bloco Adesivo Post-it 3M',7.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (547,'2024','Canson',55,'Papel Canson Desenho A4 140g/m²',12.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (548,'2024','Tilibra',55,'Caderno Universitário Tilibra 200 Folhas',14.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (549,'2024','Maped',55,'Tesoura Maped 13cm',5.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (550,'2024','Acrilex',55,'Tinta Acrílica Acrilex 250ml',9.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (551,'2024','Pentel',55,'Caneta Pentel Brush Preta',6.99);

-- Material Escolar
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (552,'2024','Faber-Castell',56,'Canetinha Hidrocor Faber-Castell 12 Cores',14.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (553,'2024','São Domingos',56,'Massa de Modelar São Domingos 12 Cores',9.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (554,'2024','Trident',56,'Caixa de Lápis de Cor Trident 24 Cores',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (555,'2024','Compactor',56,'Apontador Duplo Compactor',3.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (556,'2024','Faber-Castell',56,'Borracha Faber-Castell Soft',2.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (557,'2024','Tilibra',56,'Mochila Tilibra com Rodinhas',89.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (558,'2024','Staedtler',56,'Régua Staedtler 30cm',4.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (559,'2024','BIC',56,'Lapiseira BIC 0.5mm',5.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (560,'2024','Faber-Castell',56,'Caderno Espiral Capa Dura Faber-Castell 96 Folhas',9.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (561,'2024','Pilot',56,'Borracha Pilot Super White',1.99);

-- Material de Escritório
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (562,'2024','HP',57,'Cartucho de Tinta HP 664 Preto',69.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (563,'2024','Canon',57,'Impressora Multifuncional Canon PIXMA',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (564,'2024','Paper Mate',57,'Marcador Permanente Paper Mate Preto',1.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (565,'2024','Fellowes',57,'Fragmentadora de Papel Fellowes',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (566,'2024','Post-it',57,'Bloco de Notas Adesivas Post-it 76x76mm',4.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (567,'2024','Oxford',57,'Pasta Suspensa Oxford',7.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (568,'2024','BIC',57,'Caneta Esferográfica BIC Cristal Vermelha',0.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (569,'2024','Pilot',57,'Lapiseira Pilot 0.7mm',7.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (570,'2024','Dello',57,'Agenda Executiva Dello 2024',24.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (571,'2024','Maxprint',57,'Grampeador Maxprint 26/6',9.99);

-- Informática
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (572,'2024','Logitech',58,'Mouse Logitech Sem Fio M280',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (573,'2024','Samsung',58,'Monitor Samsung 24" Full HD',599.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (574,'2024','Kingston',58,'Memória RAM Kingston HyperX 8GB DDR4',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (575,'2024','Microsoft',58,'Teclado Microsoft Comfort Curve 3000',89.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (576,'2024','Seagate',58,'HD Externo Seagate 1TB USB 3.0',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (577,'2024','TP-Link',58,'Roteador Wireless TP-Link AC750',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (578,'2024','Intel',58,'Processador Intel Core i5-11600K',499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (579,'2024','ASUS',58,'Notebook ASUS VivoBook X512',2499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (580,'2024','Canon',58,'Impressora Canon PIXMA TS3350',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (581,'2024','Apple',58,'MacBook Air M1 13,3"',2999.99);

-- Periféricos para Computadores
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (582,'2024','Corsair',59,'Teclado Mecânico Corsair K70 RGB',399.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (583,'2024','Razer',59,'Mouse Gamer Razer DeathAdder V2',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (584,'2024','SteelSeries',59,'Mousepad SteelSeries QcK XXL',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (585,'2024','HyperX',59,'Headset HyperX Cloud Alpha',399.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (586,'2024','Logitech',59,'Webcam Logitech C920 HD Pro',249.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (587,'2024','ASUS',59,'Monitor Gamer ASUS ROG Swift PG279Q',2999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (588,'2024','Microsoft',59,'Controle Xbox Series X',499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (589,'2024','Elgato',59,'Placa de Captura Elgato Game Capture HD60 S',799.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (590,'2024','Wacom',59,'Tablet Gráfico Wacom Intuos Pro M',1599.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (591,'2024','HP',59,'Impressora HP LaserJet Pro MFP M428dw',999.99);

-- Componentes de Computadores
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (592,'2024','MSI',60,'Placa de Vídeo MSI GeForce RTX 3080',6999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (593,'2024','AMD',60,'Processador AMD Ryzen 9 5900X',2999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (594,'2024','G.Skill',60,'Memória RAM G.Skill Trident Z RGB 32GB (2x16GB)',1499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (595,'2024','Samsung',60,'SSD Samsung 970 EVO Plus 1TB NVMe',999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (596,'2024','ASUS',60,'Placa-mãe ASUS ROG Strix X570-E Gaming',1499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (597,'2024','Corsair',60,'Fonte Corsair RM850x 850W 80 Plus Gold',699.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (598,'2024','NZXT',60,'Gabinete NZXT H510 Elite',799.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (599,'2024','Cooler Master',60,'Cooler Master Hyper 212 RGB Black Edition',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (600,'2024','Seagate',60,'HD Seagate Barracuda 2TB SATA III',499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (601,'2024','Thermaltake',60,'Water Cooler Thermaltake Floe Riing RGB 360',999.99);

-- Software
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (602,'2024','Microsoft',61,'Windows 10 Pro',799.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (603,'2024','Adobe',61,'Adobe Creative Cloud - Assinatura Anual',1299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (604,'2024','Autodesk',61,'Autodesk AutoCAD 2024',5999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (605,'2024','McAfee',61,'McAfee Total Protection - 1 Ano',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (606,'2024','Kaspersky',61,'Kaspersky Internet Security - 1 Ano',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (607,'2024','Norton',61,'Norton 360 Deluxe - 1 Ano',129.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (608,'2024','Corel',61,'CorelDRAW Graphics Suite 2024',1499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (609,'2024','ESET',61,'ESET NOD32 Antivírus - 1 Ano',89.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (610,'2024','Bitdefender',61,'Bitdefender Total Security - 1 Ano',179.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (611,'2024','VMware',61,'VMware Workstation Pro 16',999.99);

-- Serviços Digitais
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (612,'2024','Amazon',62,'Amazon Prime - Assinatura Anual',349.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (613,'2024','Netflix',62,'Netflix - Assinatura Mensal',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (614,'2024','Spotify',62,'Spotify Premium - Assinatura Mensal',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (615,'2024','Adobe',62,'Adobe Stock - Assinatura Mensal',249.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (616,'2024','Microsoft',62,'Xbox Game Pass Ultimate - Assinatura Mensal',44.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (617,'2024','Google',62,'Google Workspace Business Standard - Assinatura Mensal',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (618,'2024','Apple',62,'Apple Music - Assinatura Mensal',9.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (619,'2024','Dropbox',62,'Dropbox Plus - Assinatura Anual',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (620,'2024','Twitch',62,'Twitch Turbo - Assinatura Mensal',8.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (621,'2024','LastPass',62,'LastPass Premium - Assinatura Anual',39.99);

-- Jogos para Computador
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (622,'2024','CD Projekt Red',63,'Cyberpunk 2077 - PC',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (623,'2024','Valve',63,'Half-Life: Alyx - PC',159.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (624,'2024','Rockstar Games',63,'Grand Theft Auto V - PC',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (625,'2024','Electronic Arts',63,'The Sims 4 - PC',129.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (626,'2024','Activision',63,'Call of Duty: Warzone - PC',0.00);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (627,'2024','Square Enix',63,'Final Fantasy XIV: Shadowbringers - PC',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (628,'2024','Ubisoft',63,'Assassins Creed Valhalla - PC',249.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (629,'2024','Bethesda Softworks',63,'DOOM Eternal - PC',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (630,'2024','Nintendo',63,'The Legend of Zelda: Breath of the Wild - PC',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (631,'2024','Capcom',63,'Resident Evil Village - PC',239.99);

-- Esportes e Lazer
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (632,'2024','Nike',64,'Tênis Nike Air Zoom Pegasus 38',599.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (633,'2024','Adidas',64,'Camiseta Adidas Essentials',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (634,'2024','Puma',64,'Calça de Moletom Puma Essential',129.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (635,'2024','Under Armour',64,'Regata Under Armour Tech',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (636,'2024','Speedo',64,'Óculos de Natação Speedo Fastskin3 Elite',249.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (637,'2024','Wilson',64,'Raquete de Tênis Wilson Blade 98',899.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (638,'2024','Mormaii',64,'Prancha de Surf Mormaii Soul Fish',1499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (639,'2024','Mizuno',64,'Bola de Vôlei Mizuno V2000',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (640,'2024','Yamaha',64,'Bicicleta Yamaha Crosser 2024',2999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (641,'2024','GoPro',64,'Câmera GoPro HERO10 Black',1999.99);

-- Bicicletas e Ciclismo
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (642,'2024','Shimano',65,'Pedivela Shimano Deore XT FC-M8100',399.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (643,'2024','Specialized',65,'Bicicleta Specialized Stumpjumper Carbon',7999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (644,'2024','Oakley',65,'Óculos de Ciclismo Oakley Radar EV',499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (645,'2024','Giro',65,'Capacete Giro Chronicle MIPS',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (646,'2024','Continental',65,'Pneu Continental Grand Prix 5000',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (647,'2024','Topeak',65,'Kit de Ferramentas Topeak Alien II',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (648,'2024','Fox Racing',65,'Luvas Fox Ranger Gel',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (649,'2024','Thule',65,'Suporte para Bicicleta Thule ProRide',499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (650,'2024','Garmin',65,'Ciclocomputador Garmin Edge 1030 Plus',1999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (651,'2024','Trek',65,'Bicicleta Trek Domane SL 6',5999.99);

-- Fitness e Musculação
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (652,'2024','Hidrolight',66,'Caneleira Hidrolight 3kg (Par)',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (653,'2024','Acte Sports',66,'Bola de Pilates Acte Sports 65cm',69.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (654,'2024','LiveUp',66,'Elástico Extensor LiveUp',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (655,'2024','Muvin',66,'Colchonete Muvin Premium',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (656,'2024','Kikos',66,'Esteira Kikos KS 2202',2999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (657,'2024','Roppe',66,'Corda de Pular Roppe Pro',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (658,'2024','Pulse',66,'Barra de Exercícios Pulse Paralela',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (659,'2024','ProAction',66,'Anilha ProAction 10kg',89.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (660,'2024','Life Fitness',66,'Bicicleta Ergométrica Life Fitness C1 Go',3999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (661,'2024','EccoFit',66,'Kit Halteres EccoFit 10kg (Par)',199.99);

-- Camping e Aventura
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (662,'2024','Quechua',67,'Barraca de Camping Quechua Arpenaz 4.2',699.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (663,'2024','Nautika',67,'Saco de Dormir Nautika Viper',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (664,'2024','Coleman',67,'Cooler Coleman 28QT',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (665,'2024','Guepardo',67,'Cadeira de Praia Guepardo Alumínio',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (666,'2024','Azteq',67,'Fogareiro Azteq Challenger',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (667,'2024','Deuter',67,'Mochila Deuter Futura Vario 50+10',899.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (668,'2024','Victorinox',67,'Canivete Victorinox Spartan',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (669,'2024','Petzl',67,'Lanterna de Cabeça Petzl Tikkina',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (670,'2024','Columbia',67,'Jaqueta Columbia Powder Lite',499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (671,'2024','Trilhas & Rumos',67,'Rede de Descanso Trilhas & Rumos',129.99);

-- Moda Esportiva
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (672,'2024','Nike',68,'Camiseta Nike Dri-FIT Academy',129.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (673,'2024','Adidas',68,'Shorts Adidas Squadra 21',89.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (674,'2024','Puma',68,'Tênis Puma Future Z 1.1',399.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (675,'2024','Under Armour',68,'Regata Under Armour Vanish Seamless',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (676,'2024','Reebok',68,'Legging Reebok Training Essentials',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (677,'2024','Mizuno',68,'Tênis Mizuno Wave Sky 5',599.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (678,'2024','Asics',68,'Camiseta Asics Run T-Shirt',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (679,'2024','New Balance',68,'Jaqueta New Balance NB Heat Loft',249.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (680,'2024','Oakley',68,'Óculos Oakley Radar EV Path Prizm',699.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (681,'2024','Salomon',68,'Bota Salomon X Ultra 3 Mid GTX',799.99);

-- Equipamentos Esportivos
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (682,'2024','Wilson',69,'Raquete de Tênis Wilson Blade 98',899.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (683,'2024','Nike',69,'Bola de Futebol Nike Mercurial',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (684,'2024','Adidas',69,'Luvas de Goleiro Adidas Predator',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (685,'2024','Molten',69,'Bola de Basquete Molten B7G3800',249.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (686,'2024','Speedo',69,'Óculos de Natação Speedo Fastskin3 Elite',249.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (687,'2024','Everlast',69,'Luvas de Boxe Everlast Pro Style Elite',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (688,'2024','Mikasa',69,'Bola de Vôlei Mikasa MVA200',399.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (689,'2024','Kappa',69,'Uniforme de Futebol Kappa Roma',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (690,'2024','Salomon',69,'Tênis de Corrida Salomon Speedcross 5',699.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (691,'2024','Gill',69,'Vara de Pesca Gill Pro',499.99);

-- Instrumentos Musicais
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (692,'2024','Yamaha',70,'Teclado Yamaha PSR-E373',1199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (693,'2024','Fender',70,'Guitarra Fender American Professional II Stratocaster',7999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (694,'2024','Roland',70,'Bateria Eletrônica Roland TD-17KVX',7499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (695,'2024','Shure',70,'Microfone Shure SM58',599.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (696,'2024','Casio',70,'Piano Digital Casio Privia PX-770',3999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (697,'2024','Gibson',70,'Baixo Gibson Les Paul Standard',12999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (698,'2024','Taylor',70,'Violão Taylor 214ce',6499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (699,'2024','Pearl',70,'Caixa de Bateria Pearl Export EXX',999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (700,'2024','Korg',70,'Sintetizador Korg Minilogue XD',2999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (701,'2024','Ibanez',70,'Contrabaixo Ibanez SR300E',1499.99);

-- Acessórios para Instrumentos Musicais
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (702,'2024','Ernie Ball',71,'Cordas para Guitarra Ernie Ball Super Slinky',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (703,'2024','D Addario',71,'Encordoamento para Violão DAddario EJ16',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (704,'2024','Gruv Gear',71,'Strap Lock Gruv Gear FretWraps',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (705,'2024','Hercules Stands',71,'Suporte para Teclado Hercules KS210B',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (706,'2024','TC Electronic',71,'Pedal de Efeito TC Electronic Hall of Fame 2',599.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (707,'2024','Boss',71,'Pedal de Guitarra Boss DS-1 Distortion',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (708,'2024','Mogami',71,'Cabo Mogami Gold Series',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (709,'2024','Vic Firth',71,'Baqueta Vic Firth 5A American Classic',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (710,'2024','Planet Waves',71,'Afinador Planet Waves NS Micro',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (711,'2024','K&M',71,'Suporte de Partitura K&M 101',129.99);

-- Saúde
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (712,'2024','Omron',72,'Monitor de Pressão Arterial Omron HEM-7122',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (713,'2024','G-Tech',72,'Termômetro Digital G-Tech Infravermelho',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (714,'2024','Orthopauher',72,'Palmilha Ortopédica Orthopauher',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (715,'2024','Ortobom',72,'Colchão Ortopédico Ortobom Physical Spring',1999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (716,'2024','Biovis',72,'Massageador Elétrico Biovis Pro 6D',499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (717,'2024','Aparelho Auditivo',72,'Aparelho Auditivo Intra-Auricular',3999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (718,'2024','Cepall',72,'Cadeira de Rodas Cepall Ultra Light',2999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (719,'2024','ResMed',72,'CPAP Automático ResMed AirSense 10',3499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (720,'2024','Incoterm',72,'Inalador Nebulizador Incoterm Ultrassônico',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (721,'2024','Protefix',72,'Adesivo para Dentadura Protefix',29.99);

-- Equipamentos Médicos
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (722,'2024','Welch Allyn',73,'Otoscópio Welch Allyn MacroView',999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (723,'2024','Littmann',73,'Estetoscópio Littmann Classic III',499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (724,'2024','Omron',73,'Nebulizador Omron MicroAir NE-U22',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (725,'2024','Hidrolight',73,'Manguito para Aparelho de Pressão Hidrolight',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (726,'2024','Orthopauher',73,'Tornozeleira Ortopédica Orthopauher',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (727,'2024','G-Tech',73,'Oxímetro de Dedo G-Tech',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (728,'2024','Microlife',73,'Medidor de Glicose Microlife AG1-20',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (729,'2024','Bioland',73,'Termômetro Infravermelho Bioland',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (730,'2024','Omron',73,'Monitor de Pressão Arterial Omron HEM-7320',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (731,'2024','Medicate',73,'Cadeira de Banho Medicate',299.99);

-- Medicamentos
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (732,'2024','Aspirina',74,'Aspirina 500mg (20 comprimidos)',9.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (733,'2024','Tylenol',74,'Tylenol 750mg (20 comprimidos)',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (734,'2024','Dipirona',74,'Dipirona 500mg (20 comprimidos)',14.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (735,'2024','Omeprazol',74,'Omeprazol 20mg (14 cápsulas)',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (736,'2024','Dorflex',74,'Dorflex 300mg (30 comprimidos)',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (737,'2024','Buscopan',74,'Buscopan 10mg (20 comprimidos)',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (738,'2024','Rivotril',74,'Rivotril 2mg (20 comprimidos)',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (739,'2024','Neosaldina',74,'Neosaldina 300mg (30 comprimidos)',24.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (740,'2024','Allegra',74,'Allegra 180mg (10 comprimidos)',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (741,'2024','Claritin',74,'Claritin 10mg (10 comprimidos)',29.99);

-- Produtos Ortopédicos
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (742,'2024','Orthopauher',75,'Palmilha Ortopédica Orthopauher',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (743,'2024','Bebeseguro',75,'Grade de Segurança para Cama Bebeseguro',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (744,'2024','Chantal',75,'Bota Imobilizadora Chantal 700',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (745,'2024','Mercur',75,'Balança Digital Mercur Baby',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (746,'2024','BioFlorence',75,'Andador para Idosos BioFlorence',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (747,'2024','Ortho Pauher',75,'Cinta Modeladora Ortho Pauher',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (748,'2024','Salvapé',75,'Tala para Punho Salvapé',59.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (749,'2024','Mercur',75,'Muleta Axilar Mercur',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (750,'2024','Chantal',75,'Tipoia Chantal',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (751,'2024','Bebeseguro',75,'Cercadinho para Bebê Bebeseguro',399.99);

-- Óculos e Lentes de Contato
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (752,'2024','Ray-Ban',76,'Óculos de Sol Ray-Ban Aviador',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (753,'2024','Oakley',76,'Óculos de Sol Oakley Holbrook',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (754,'2024','Lacoste',76,'Óculos de Grau Lacoste L2741',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (755,'2024','Colcci',76,'Óculos de Sol Colcci Feminino',179.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (756,'2024','Hoya',76,'Lentes de Contato Hoya',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (757,'2024','Zeiss',76,'Óculos de Grau Zeiss Vision Care',249.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (758,'2024','Johnson & Johnson',76,'Lentes de Contato Acuvue Oasys',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (759,'2024','Evoke',76,'Óculos de Sol Evoke',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (760,'2024','Bausch + Lomb',76,'Lentes de Contato Biotrue ONEday',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (761,'2024','Arnette',76,'Óculos de Sol Arnette Fire Drill',149.99);

-- Brinquedos
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (762,'2024','LEGO',77,'LEGO Star Wars Millennium Falcon',799.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (763,'2024','Hasbro',77,'Monopoly - Edição Especial',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (764,'2024','Mattel',77,'Barbie Dreamhouse',499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (765,'2024','Play-Doh',77,'Play-Doh Kit de Massinhas',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (766,'2024','Fisher-Price',77,'Centro de Atividades Infantil Fisher-Price',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (767,'2024','Hot Wheels',77,'Hot Wheels Conjunto de Pistas',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (768,'2024','Nerf',77,'Nerf Elite Strongarm',59.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (769,'2024','Playmobil',77,'Playmobil Cidade Moderna',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (770,'2024','Baby Alive',77,'Baby Alive Bebê Real',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (771,'2024','Lego Duplo',77,'LEGO Duplo Estação de Bombeiros',69.99);

-- Jogos de Tabuleiro
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (772,'2024','Devir',78,'Catan',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (773,'2024','Grow',78,'Super Quiz Grow',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (774,'2024','Estrela',78,'Jogo da Vida Estrela',89.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (775,'2024','Galápagos',78,'Dixit Galápagos',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (776,'2024','Buró',78,'Detetive Buró',59.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (777,'2024','Asmodee',78,'Ticket to Ride',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (778,'2024','Hasbro',78,'Jogo Uno',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (779,'2024','Grow',78,'War Grow',249.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (780,'2024','Estrela',78,'Detetive Estrela',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (781,'2024','Devir',78,'A Guerra dos Tronos: Board Game',399.99);

-- Quebra-Cabeças
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (782,'2024','Ravensburger',79,'Quebra-Cabeça Ravensburger Krypt',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (783,'2024','Grow',79,'Quebra-Cabeça Grow Paisagem',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (784,'2024','Toyster',79,'Quebra-Cabeça de Madeira Toyster',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (785,'2024','Galápagos',79,'Quebra-Cabeça Galápagos 2000 peças',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (786,'2024','Estrela',79,'Quebra-Cabeça Estrela 500 peças',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (787,'2024','Grow',79,'Quebra-Cabeça Grow 1500 peças',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (788,'2024','Toyster',79,'Quebra-Cabeça de Chão Infantil Toyster',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (789,'2024','Ravensburger',79,'Quebra-Cabeça 3D Ravensburger Big Ben',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (790,'2024','Grow',79,'Quebra-Cabeça Grow Arte Moderna',69.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (791,'2024','Estrela',79,'Quebra-Cabeça Estrela 1000 peças',59.99);

-- Bonecas e Acessórios
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (792,'2024','Barbie',80,'Barbie Fashionista Loira',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (793,'2024','Baby Alive',80,'Baby Alive Hora do Passeio',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (794,'2024','L.O.L. Surprise!',80,'L.O.L. Surprise! O.M.G. House',599.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (795,'2024','My Little Pony',80,'My Little Pony Castelo do Reino das Cristalinas',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (796,'2024','Frozen',80,'Elsa Frozen 2 Cantora',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (797,'2024','Monster High',80,'Monster High Boneca Frankie Stein',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (798,'2024','Poliana',80,'Poliana Boneca Bailarina',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (799,'2024','Fisher-Price',80,'Kit Médico Fisher-Price',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (800,'2024','Nancy',80,'Nancy Patinadora Artística',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (801,'2024','Disney',80,'Princesas Disney - Coleção Completa',499.99);

-- Carrinhos e Veículos de Brinquedo
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (802,'2024','Hot Wheels',81,'Hot Wheels Conjunto de Pistas',59.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (803,'2024','Maisto',81,'Maisto Lamborghini Aventador',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (804,'2024','Candide',81,'Carrinho Elétrico Candide Batman',799.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (805,'2024','Brinquedos Bandeirante',81,'Triciclo Infantil Bandeirante',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (806,'2024','LEGO',81,'LEGO Technic Carro de Corrida',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (807,'2024','Xalingo',81,'Xalingo Pula Pula Inflável',499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (808,'2024','Fisher-Price',81,'Moto Elétrica Infantil Fisher-Price',699.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (809,'2024','Estrela',81,'Carrinho de Controle Remoto Estrela',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (810,'2024','Bandai',81,'Miniatura Bandai Gundam RX-78-2',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (811,'2024','Playmobil',81,'Playmobil Caminhão de Bombeiros',79.99);

-- Instrumentos Educativos
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (812,'2024','Fisher-Price',82,'Livro Interativo Fisher-Price',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (813,'2024','LeapFrog',82,'LeapFrog LeapStart 3D',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (814,'2024','Vtech',82,'Tablet Infantil Vtech',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (815,'2024','Xalingo',82,'Kit Ciências Xalingo',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (816,'2024','Estrela',82,'Lousa Mágica Estrela',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (817,'2024','Play-Doh',82,'Kit de Arte Play-Doh',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (818,'2024','Mattel',82,'Fisher-Price Piano Musical',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (819,'2024','Elka',82,'Kit Musical Infantil Elka',59.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (820,'2024','Fisher-Price',82,'Fisher-Price Tablet Aprender e Brincar',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (821,'2024','Vtech',82,'Relógio Infantil Vtech',39.99);

-- Artigos para Festas
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (822,'2024','Pica Pau',83,'Kit Festa Pica Pau',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (823,'2024','Mickey Mouse',83,'Decoração de Festa Mickey Mouse',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (824,'2024','Unicorn Party',83,'Kit Festa Unicórnio',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (825,'2024','Frozen',83,'Decoração de Festa Frozen 2',69.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (826,'2024','Batman',83,'Kit Festa Batman',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (827,'2024','Patrulha Canina',83,'Decoração de Festa Patrulha Canina',59.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (828,'2024','Princesas Disney',83,'Kit Festa Princesas Disney',89.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (829,'2024','Homem-Aranha',83,'Decoração de Festa Homem-Aranha',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (830,'2024','Minions',83,'Kit Festa Minions',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (831,'2024','Hello Kitty',83,'Decoração de Festa Hello Kitty',39.99);

-- Filmes e Séries
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (832,'2024','DVD',84,'DVD Box Friends - A Coleção Completa',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (833,'2024','Blu-ray',84,'Blu-ray Coleção Marvel Studios - Fase 3',399.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (834,'2024','Netflix',84,'Assinatura Netflix - Plano Premium (1 ano)',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (835,'2024','Amazon Prime Video',84,'Assinatura Amazon Prime Video (1 ano)',249.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (836,'2024','Disney+',84,'Assinatura Disney+ (1 ano)',289.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (837,'2024','HBO Max',84,'Assinatura HBO Max (1 ano)',329.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (838,'2024','Blu-ray',84,'Blu-ray Box Harry Potter - Coleção Completa',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (839,'2024','DVD',84,'DVD Game of Thrones - Temporadas 1 a 8',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (840,'2024','Netflix',84,'Assinatura Netflix - Plano Básico (1 ano)',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (841,'2024','Disney+',84,'Assinatura Disney+ (6 meses)',159.99);

-- Música e CDs
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (842,'2024','CD',85,'Michael Jackson - Thriller',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (843,'2024','Vinil',85,'The Beatles - Abbey Road (Edição Especial)',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (844,'2024','CD',85,'Queen - Greatest Hits',24.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (845,'2024','Vinil',85,'Pink Floyd - The Dark Side of the Moon',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (846,'2024','CD',85,'Bob Marley - Legend',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (847,'2024','CD',85,'Elvis Presley - The Platinum Collection',34.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (848,'2024','Vinil',85,'David Bowie - Blackstar',89.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (849,'2024','CD',85,'Madonna - Like a Prayer',14.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (850,'2024','CD',85,'U2 - The Joshua Tree',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (851,'2024','Vinil',85,'Led Zeppelin - IV',69.99);

-- Colecionáveis
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (852,'2024','Funko',86,'Funko Pop! Harry Potter',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (853,'2024','Hot Toys',86,'Hot Toys Iron Man Mark LXXXV',399.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (854,'2024','LEGO',86,'LEGO Star Wars Millennium Falcon UCS',799.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (855,'2024','Neca',86,'Neca Action Figure Godzilla',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (856,'2024','Bandai',86,'Bandai Dragon Ball Z Figuarts Zero',59.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (857,'2024','Hasbro',86,'Hasbro Marvel Legends Series',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (858,'2024','Funko',86,'Funko Pop! Disney Mickey Mouse',14.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (859,'2024','Sideshow',86,'Sideshow Collectibles Darth Vader',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (860,'2024','Mattel',86,'Mattel Hot Wheels Edição Especial',9.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (861,'2024','Eaglemoss',86,'Eaglemoss DC Comics Chess Collection',19.99);

-- Artigos Religiosos
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (862,'2024','Bíblia',87,'Bíblia Sagrada Luxo',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (863,'2024','Terço',87,'Terço de Madeira',9.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (864,'2024','Imagem',87,'Imagem de São Francisco de Assis',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (865,'2024','Vela',87,'Vela Decorativa',4.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (866,'2024','Quadro',87,'Quadro Nossa Senhora Aparecida',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (867,'2024','Livro',87,'Livro de Orações',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (868,'2024','Cruz',87,'Cruz de Parede',14.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (869,'2024','Incenso',87,'Incenso Aromático',7.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (870,'2024','Rosário',87,'Rosário de Pérolas',24.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (871,'2024','Santo',87,'Santo Antônio de Barro',12.99);

-- Produtos para Bebês
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (872,'2024','Chicco',89,'Cadeira de Alimentação Chicco Polly 2 Start',399.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (873,'2024','Fisher-Price',89,'Cadeira de Descanso Fisher-Price',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (874,'2024','Johnson & Johnson',89,'Kit Higiene Johnson & Johnson',59.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (875,'2024','Bebê Conforto',89,'Bebê Conforto Galzerano',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (876,'2024','Baby Alive',89,'Baby Alive Fralda Mágica',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (877,'2024','Huggies',89,'Fraldas Descartáveis Huggies Supreme Care',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (878,'2024','Fisher-Price',89,'Móbile Musical Fisher-Price',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (879,'2024','Safety 1st',89,'Grade de Segurança para Porta Safety 1st',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (880,'2024','Mam',89,'Mamadeira Anticólica Mam',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (881,'2024','Fisher-Price',89,'Tapete de Atividades Fisher-Price',79.99);

-- Roupas de Bebê
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (882,'2024','Carter\'s',90,'Conjunto de Body Carter\'s',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (883,'2024','Puket',90,'Meia Antiderrapante Puket',9.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (884,'2024','Tip Top',90,'Macacão Tip Top',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (885,'2024','Brandili',90,'Kit Body Brandili',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (886,'2024','Hering Kids',90,'Conjunto Infantil Hering Kids',59.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (887,'2024','Carter\'s',90,'Pijama Carter\'s',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (888,'2024','Bibi',90,'Sapatinho Bibi',34.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (889,'2024','Grão de Gente',90,'Kit Berço Grão de Gente',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (890,'2024','Malwee Kids',90,'Vestido Malwee Kids',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (891,'2024','Fisher-Price',90,'Cueiro Fisher-Price',24.99);

-- Brinquedos para Bebês
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (892,'2024','Fisher-Price',91,'Centro de Atividades Fisher-Price',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (893,'2024','Chicco',91,'Brinquedo de Banho Chicco',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (894,'2024','Vtech',91,'Móbile Musical Vtech',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (895,'2024','Munchkin',91,'Kit de Chaves Mordedoras Munchkin',9.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (896,'2024','Fisher-Price',91,'Tapete de Atividades Fisher-Price',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (897,'2024','Buba',91,'Mordedor Buba',4.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (898,'2024','Fisher-Price',91,'Ginásio de Atividades Fisher-Price',69.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (899,'2024','Chicco',91,'Mordedor Chicco',7.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (900,'2024','Fisher-Price',91,'Cadeira de Descanso Fisher-Price',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (901,'2024','Munchkin',91,'Tapete de Banho Munchkin',49.99);

-- Produtos de Alimentação para Bebês
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (902,'2024','Philips Avent',92,'Mamadeira Philips Avent',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (903,'2024','Mam',92,'Bico de Mamadeira Anticólica Mam',9.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (904,'2024','Munchkin',92,'Colheres Munchkin para Bebês',14.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (905,'2024','Chicco',92,'Copo de Treinamento Chicco',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (906,'2024','Buba',92,'Pote para Papinha Buba',7.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (907,'2024','Fisher-Price',92,'Babador Fisher-Price',9.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (908,'2024','Avent',92,'Esterilizador de Mamadeiras Philips Avent',69.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (909,'2024','Nuk',92,'Copo de Transição Nuk',12.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (910,'2024','Munchkin',92,'Pratos Munchkin para Bebês',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (911,'2024','Chicco',92,'Cadeira de Alimentação Chicco',149.99);

-- Produtos de Higiene para Bebês
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (912,'2024','Johnson\'s',93,'Kit Higiene Johnson\'s',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (913,'2024','Huggies',93,'Lenços Umedecidos Huggies',9.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (914,'2024','Granado',93,'Sabonete Líquido Granado',14.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (915,'2024','Fisher-Price',93,'Termômetro Digital Fisher-Price',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (916,'2024','Baby Dove',93,'Shampoo Baby Dove',12.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (917,'2024','Natura',93,'Óleo Corporal Natura Mamãe e Bebê',24.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (918,'2024','Fisher-Price',93,'Aspirador Nasal Fisher-Price',9.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (919,'2024','Johnson\'s',93,'Sabonete em Barra Johnson\'s',6.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (920,'2024','Chicco',93,'Escova e Pente Chicco',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (921,'2024','Granado',93,'Pomada Preventiva de Assaduras Granado',16.99);

-- Segurança e Monitoramento
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (922,'2024','Ring',94,'Ring Video Doorbell 4',249.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (923,'2024','Arlo',94,'Arlo Pro 4 - Kit de 2 Câmeras',599.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (924,'2024','Wyze',94,'Wyze Cam v3 - Câmera de Segurança',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (925,'2024','Yale',94,'Trava Eletrônica Yale',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (926,'2024','Nest',94,'Nest Protect - Detector de Fumaça',119.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (927,'2024','SimpliSafe',94,'SimpliSafe Sistema de Segurança Doméstica',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (928,'2024','Blink',94,'Blink Mini - Câmera de Segurança',34.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (929,'2024','Eufy',94,'Eufy Security Indoor Cam 2K',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (930,'2024','August',94,'August Smart Lock Pro',249.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (931,'2024','Ring',94,'Ring Spotlight Cam Battery',199.99);

-- Ferramentas Manuais
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (932,'2024','Tramontina',95,'Jogo de Chaves de Fenda Tramontina',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (933,'2024','Stanley',95,'Kit Ferramentas Stanley',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (934,'2024','Vonder',95,'Furadeira de Impacto Vonder',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (935,'2024','Bosch',95,'Esmerilhadeira Bosch',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (936,'2024','Black+Decker',95,'Parafusadeira Black+Decker',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (937,'2024','Irwin',95,'Jogo de Brocas Irwin',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (938,'2024','DeWalt',95,'Serra Circular DeWalt',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (939,'2024','Makita',95,'Multiferramenta Oscilante Makita',129.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (940,'2024','Bosch',95,'Medidor de Distância Bosch',69.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (941,'2024','Tramontina',95,'Martelo de Borracha Tramontina',19.99);

-- Ferramentas Elétricas
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (942,'2024','Stanley',96,'Furadeira de Impacto Stanley',129.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (943,'2024','Makita',96,'Parafusadeira Makita',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (944,'2024','DeWalt',96,'Serra Tico-Tico DeWalt',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (945,'2024','Bosch',96,'Lixadeira Orbital Bosch',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (946,'2024','Black+Decker',96,'Soprador Térmico Black+Decker',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (947,'2024','Vonder',96,'Furadeira Vonder',59.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (948,'2024','Bosch',96,'Parafusadeira Bosch',89.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (949,'2024','Makita',96,'Esmerilhadeira Angular Makita',119.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (950,'2024','DeWalt',96,'Furadeira de Bancada DeWalt',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (951,'2024','Stanley',96,'Trena Laser Stanley',39.99);

-- Equipamentos de Proteção Individual
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (952,'2024','3M',97,'Óculos de Proteção 3M',9.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (953,'2024','Volk',97,'Máscara de Proteção Volk',4.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (954,'2024','JGB',97,'Luvas de Segurança JGB',7.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (955,'2024','Pro Safety',97,'Protetor Auricular Pro Safety',14.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (956,'2024','Volk',97,'Protetor Facial Volk',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (957,'2024','Super Safety',97,'Capacete de Segurança Super Safety',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (958,'2024','Deltaplus',97,'Cinto de Segurança Deltaplus',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (959,'2024','Bracol',97,'Bota de Segurança Bracol',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (960,'2024','DuPont',97,'Macacão de Proteção DuPont Tyvek',59.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (961,'2024','3M',97,'Protetor Respiratório 3M',24.99);

-- Construção e Reforma
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (962,'2024','Dremel',98,'Dremel 3000 - Kit de Ferramentas',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (963,'2024','Vonder',98,'Trena Vonder',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (964,'2024','Tramontina',98,'Kit de Pintura Tramontina',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (965,'2024','Suvinil',98,'Tinta Acrílica Suvinil',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (966,'2024','Votorantim',98,'Cimento Votorantim',24.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (967,'2024','Atlas',98,'Telha de Cerâmica Atlas',2.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (968,'2024','Bosch',98,'Serra Mármore Bosch',129.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (969,'2024','Weber',98,'Churrasqueira Weber',399.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (970,'2024','Tramontina',98,'Furadeira de Impacto Tramontina',89.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (971,'2024','Cascola',98,'Adesivo de Construção Cascola',9.99);

-- Tintas e Acessórios
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (972,'2024','Sherwin-Williams',99,'Tinta Esmalte Sherwin-Williams',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (973,'2024','Suvinil',99,'Tinta Spray Suvinil',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (974,'2024','Coral',99,'Rolo de Pintura Coral',9.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (975,'2024','Pincel',99,'Kit de Pincéis para Tinta',14.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (976,'2024','Vonder',99,'Lixa de Madeira Vonder',4.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (977,'2024','Atlas',99,'Rolo Texturizado Atlas',7.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (978,'2024','Durepoxi',99,'Massa Epóxi para Madeira Durepoxi',12.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (979,'2024','Eucatex',99,'Seladora Eucatex',24.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (980,'2024','Vedacit',99,'Impermeabilizante Vedacit',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (981,'2024','Tigre',99,'Fita Veda Rosca Tigre',3.99);

-- Materiais de Construção
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (982,'2024','Votorantim',100,'Areia Lavada Votorantim',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (983,'2024','Votorantim',100,'Pedra Brita Votorantim',59.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (984,'2024','Ciplak',100,'Cimento Ciplak',24.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (985,'2024','Ciplak',100,'Argamassa Ciplak',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (986,'2024','Eucatex',100,'Placa de Drywall Eucatex',12.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (987,'2024','Tigre',100,'Tubo PVC Tigre',9.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (988,'2024','Vedacit',100,'Manta Asfáltica Vedacit',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (989,'2024','Vedacit',100,'Tinta Impermeabilizante Vedacit',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (990,'2024','Sika',100,'Adesivo SikaFix',59.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (991,'2024','Sika',100,'Silicone SikaFlex',9.99);

-- Produtos de Telecomunicação
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (992,'2024','TP-Link',101,'Roteador Wireless TP-Link',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (993,'2024','D-Link',101,'Switch D-Link',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (994,'2024','Intelbras',101,'Telefone sem Fio Intelbras',69.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (995,'2024','Motorola',101,'Modem Motorola',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (996,'2024','Huawei',101,'Roteador 4G Huawei',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (997,'2024','Cisco',101,'Access Point Cisco',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (998,'2024','Elgin',101,'Interfone Elgin',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (999,'2024','Intelbras',101,'Câmera IP Intelbras',89.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1000,'2024','Yealink',101,'Telefone IP Yealink',129.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1001,'2024','D-Link',101,'Repetidor Wi-Fi D-Link',19.99);

-- Drones e Acessórios
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1002,'2024','DJI',102,'Drone DJI Mini 2',449.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1003,'2024','Parrot',102,'Drone Parrot Anafi',599.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1004,'2024','DJI',102,'Mavic Air 2 Fly More Combo',999.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1005,'2024','GoPro',102,'GoPro Karma Drone',799.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1006,'2024','DJI',102,'Phantom 4 Pro V2.0',1499.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1007,'2024','Parrot',102,'Mambo Mission Parrot',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1008,'2024','DJI',102,'Tello DJI',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1009,'2024','GoPro',102,'GoPro Karma Grip',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1010,'2024','DJI',102,'Goggles DJI',549.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1011,'2024','Parrot',102,'Bebop Drone Parrot',349.99);

-- Itens para Viagem
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1012,'2024','Samsonite',103,'Mala Samsonite Grande',199.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1013,'2024','Swissgear',103,'Mochila Swissgear para Laptop',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1014,'2024','Travelpro',103,'Conjunto de Malas Travelpro',299.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1015,'2024','Victorinox',103,'Mochila Victorinox',149.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1016,'2024','American Tourister',103,'Mala de Bordo American Tourister',89.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1017,'2024','Delsey',103,'Conjunto de Malas Delsey',249.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1018,'2024','Tumi',103,'Mochila Tumi para Viagem',399.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1019,'2024','Rimowa',103,'Mala Rimowa Essential',699.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1020,'2024','Eagle Creek',103,'Mochila de Viagem Eagle Creek',129.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1021,'2024','Away',103,'Mala Away Bigger Carry-On',249.99);

-- Mala e Mochilas
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1022,'2024','Nike',104,'Mochila Nike Elemental',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1023,'2024','Adidas',104,'Mochila Adidas Classic',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1024,'2024','Puma',104,'Mochila Puma Buzz',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1025,'2024','Under Armour',104,'Mochila Under Armour Hustle',59.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1026,'2024','The North Face',104,'Mochila The North Face Recon',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1027,'2024','Fjällräven',104,'Mochila Fjällräven Kånken',89.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1028,'2024','Herschel',104,'Mochila Herschel Little America',119.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1029,'2024','Jansport',104,'Mochila Jansport Superbreak',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1030,'2024','Eastpak',104,'Mochila Eastpak Padded Pak\r',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1031,'2024','Samsonite',104,'Mala de Mão Samsonite',79.99);

-- Produtos de Segurança Digital
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1032,'2024','Kaspersky',105,'Kaspersky Total Security - 3 Dispositivos',59.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1033,'2024','Norton',105,'Norton 360 Deluxe - 5 Dispositivos',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1034,'2024','Bitdefender',105,'Bitdefender Antivirus Plus - 1 Ano',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1035,'2024','McAfee',105,'McAfee Total Protection - 10 Dispositivos',99.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1036,'2024','Avast',105,'Avast Premium Security - 1 Dispositivo',49.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1037,'2024','ESET',105,'ESET Internet Security - 3 Dispositivos',39.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1038,'2024','Trend Micro',105,'Trend Micro Maximum Security - 5 Dispositivos',69.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1039,'2024','Malwarebytes',105,'Malwarebytes Premium - 1 Ano',24.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1040,'2024','Avira',105,'Avira Antivirus Pro - 1 Dispositivo',29.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1041,'2024','Sophos',105,'Sophos Home Premium - 10 Dispositivos',89.99);

-- Serviços de Assinatura
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1042,'2024','Netflix',106,'Assinatura Netflix Premium - 1 Mês',19.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1043,'2024','Spotify',106,'Assinatura Spotify Premium - 1 Mês',9.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1044,'2024','Amazon Prime',106,'Assinatura Amazon Prime - 1 Ano',119.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1045,'2024','Disney+',106,'Assinatura Disney+ - 1 Ano',79.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1046,'2024','Apple Music',106,'Assinatura Apple Music - 3 Meses',14.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1047,'2024','HBO Max',106,'Assinatura HBO Max - 1 Mês',14.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1048,'2024','Kindle Unlimited',106,'Assinatura Kindle Unlimited - 1 Mês',9.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1049,'2024','Microsoft 365',106,'Assinatura Microsoft 365 Personal - 1 Ano',69.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1050,'2024','PlayStation Plus',106,'Assinatura PlayStation Plus - 1 Ano',59.99);
INSERT INTO `recomendacoes_produtos`.`produto` VALUES (1051,'2024','Google One',106,'Assinatura Google One - 100 GB - 1 Mês',1.99);

/*!40000 ALTER TABLE `recomendacoes_produtos`.`produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtocurtido`
--

DROP TABLE IF EXISTS `produtocurtido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtocurtido` (
  `id` int NOT NULL AUTO_INCREMENT,
  `produto_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `produtocurtido_produto_id` (`produto_id`),
  KEY `produtocurtido_user_id` (`user_id`),
  CONSTRAINT `produtocurtido_ibfk_1` FOREIGN KEY (`produto_id`) REFERENCES `recomendacoes_produtos`.`produto` (`id`),
  CONSTRAINT `produtocurtido_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtocurtido`
--

LOCK TABLES `produtocurtido` WRITE;
/*!40000 ALTER TABLE `produtocurtido` DISABLE KEYS */;
/*!40000 ALTER TABLE `produtocurtido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-13 17:10:52
