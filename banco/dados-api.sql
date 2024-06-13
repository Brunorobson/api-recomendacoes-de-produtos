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
  CONSTRAINT `avaliacao_ibfk_1` FOREIGN KEY (`produto_id`) REFERENCES `produto` (`id`),
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
CREATE TABLE `produto` (
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

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'2024','Apple',4,'iPhone 15',7950.90);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
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
  CONSTRAINT `produtocurtido_ibfk_1` FOREIGN KEY (`produto_id`) REFERENCES `produto` (`id`),
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
