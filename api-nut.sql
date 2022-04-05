-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost   Database: yourDatabase
-- ------------------------------------------------------
-- Server version	8.0.23

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Current Database: `yourDatabase`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `yourDatabase` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `yourDatabase`;

--
-- Table structure for table `allergen`
--

DROP TABLE IF EXISTS `allergen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allergen` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_25BF08CE2B36786B` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allergen`
--

LOCK TABLES `allergen` WRITE;
/*!40000 ALTER TABLE `allergen` DISABLE KEYS */;
INSERT INTO `allergen` VALUES (1,'Gluten','Blé, seigle, orge, avoine, épeautre, Kamut et leurs souches hybrides'),(2,'Oeufs','Produits à base d\'oeufs'),(4,'Poissons','Produits à base de poisson'),(5,'Lait','produits à base de lait'),(6,'Fruits à coques','amandes, noisettes, noix, noix de cajou, noix de pécan, noix du Brésil, noix de macadamia, noix du Queensland, pistaches'),(7,'Sulfites','en concentration de plus de 10 mg/kg ou 10 mg/l (exprimés en SO2)'),(8,'Arachide','Produits à base d\'arachide'),(9,'Crustacés','produits à base de crustacés'),(10,'Soja','produits à base de soja'),(11,'Céleri','produits à base de céleri'),(12,'Moutarde','produits à base de moutarde'),(13,'Graines de sésame','produits à base de graines de sésame');
/*!40000 ALTER TABLE `allergen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_64C19C12B36786B` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Hyperprotéiné','C’est une nutrition composée principalement de protéine. Ce mode d’alimentation permet de se sentir facilement rassasié, en excluant la prise de poids. Une forte carence en lipide et en glucide est le principal risque à courir'),(2,'Hypocalorique','Un régime alimentaire hypocalorique est un régime alimentaire visant à perdre du poids. Pour maigrir durablement et sainement, il ne suffit pas d’opérer une restriction calorique. Il faut continuer d’apporter au corps tous les nutriments qui lui sont essentiels pour fonctionner correctement'),(3,'Dissocié','C’est un mode de consommation alimentaire qui mixe l’alimentation classique équilibrée et le végétarisme. En bref, ce sont des personnes qui n’excluent rien mais qui veillent à limiter leur consommation de viande'),(4,'Végétarien','On entend souvent dire qu’une alimentation végétarienne est plus saine qu’une alimentation lambda. Pourtant, la privation de viande peut engendrer quelques carences. Certes, manger végétarien fournit un certain bien-être spirituel et physique, mais à long terme, il est nécessaire d’établir une alimentation variée et complète'),(5,'Anticellulite','Si vous avez des problèmes de cellulites, n’ayez pas peur ! Saviez-vous qu’en privilégiant certains aliments et en écartant d’autres vous pouviez dire adieu aux cellulites ? C’est totalement possible avec une alimentation tournée vers les protéines, les fruits et les oléagineux'),(6,'Sans sel','Pour suivre le régime sans sel, il est important de changer deux habitudes alimentaires en :\r\n\r\n- limitant les aliments transformés et privilégier les produits alimentaires “ sans sel ”\r\n\r\n- modifier ses habitudes de cuisine en évitant l’ajout de sel avant, pendant et après la cuisson des plats.'),(7,'Hypoglucidique','Un régime hypoglucidique est un régime faible en sucres : L\'alimentation est réorganisée pour diminuer la consommation d\'aliments riches en sucres. En réduisant le bilan calorique des repas tout au long de la journée, on force le corps à puiser dans ses réserves, ce qui entraîne une perte de poids.');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `recipe_id` int NOT NULL,
  `user_id` int NOT NULL,
  `comment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9474526C59D8A214` (`recipe_id`),
  KEY `IDX_9474526CA76ED395` (`user_id`),
  CONSTRAINT `FK_9474526C59D8A214` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`),
  CONSTRAINT `FK_9474526CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,1,1,'c\'est u ne tres bonne recette',2),(2,1,11,'Tres tres bien avec un peu plus de moutarde ',4),(5,3,17,'test carottes',4),(6,3,17,'c\'est u ne tres bonne recette',5),(7,2,17,'avec de la sardine , ca marche aussi !',4),(16,7,1,'Sans tomates : en tartelettes à l\'apéro',4),(17,2,1,' laisser cuire 40 min, ou jusqu\'à ce que la tarte soit dorée',5),(62,7,1,'super bon ! je recommande',4),(66,1,1,'la derniere',4);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20220222093736','2022-02-22 09:37:51',43),('DoctrineMigrations\\Version20220222192154','2022-02-22 19:22:11',335),('DoctrineMigrations\\Version20220228133208','2022-02-28 13:32:31',961),('DoctrineMigrations\\Version20220301141846','2022-03-01 14:18:56',288),('DoctrineMigrations\\Version20220301164250','2022-03-01 16:43:18',600),('DoctrineMigrations\\Version20220304085443','2022-03-04 08:55:01',340),('DoctrineMigrations\\Version20220305083514','2022-03-05 08:35:30',610),('DoctrineMigrations\\Version20220305083702','2022-03-05 08:37:07',57),('DoctrineMigrations\\Version20220307154528','2022-03-07 15:45:42',1056),('DoctrineMigrations\\Version20220310065628','2022-03-10 06:56:42',311),('DoctrineMigrations\\Version20220310140658','2022-03-10 14:07:08',622),('DoctrineMigrations\\Version20220311183552','2022-03-11 18:36:04',1703),('DoctrineMigrations\\Version20220311185018','2022-03-11 18:50:22',271);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
INSERT INTO `email` VALUES (2,'contact','email','tel','subject','message'),(3,'jean-pierre ledos','Jpledos@gmail.com','0688247701','test','5'),(4,'jean-pierre ledos','Jpledos@gmail.com','0688247701','test','5'),(5,'jean-pierre ledos','Jpledos@gmail.com','0688247701','test','5'),(6,'jean-pierre ledos','Jpledos@gmail.com','0688247701','ry','tyury'),(7,'Dominique ledos','cabinetledos@gmail.com','0688247701','tzetqzet','ertgserytt'),(8,'Dominique ledos','cabinetledos@gmail.com','0688247701','un autre tezt','un autre tezt'),(9,'contact','email','tel','subject','message'),(10,'jean-pierre ledos','Jpledos@gmail.com','0688247701','le 09/03/22','blblblbl'),(11,'Dominique ledos','cabinetledos@gmail.com','0505050505','0903','Récupérez simplement vos courses en drive ou en livraison chez vos enseignes favorites');
/*!40000 ALTER TABLE `email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `preparation_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `timeout` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cooking_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ingredients` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `steps` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe`
--

LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;
INSERT INTO `recipe` VALUES (1,'Cake au thon léger','Je suis toujours à la recherche de soupes de légumes qui ne soient pas trop fades mais goûteuses pour les enfants !!!!','35 mn','-','35 mn','2 pommes de terre\n3 carottes\n4 Poireaux\n1 cubede bouillon de legumes\n1 kiri','Eplucher les légumes et les couper grossièrement en morceaux.\nPlonger les morceaux dans une casserole d\'eau froide, avec 1 cube de bouillon; ne pas saler\nLaisser cuire jusqu\'à ce que les légumes soient relativement tendres (environ 20 min après le début de la cuisson).\nMixer les légumes avec l\'eau de cuisson et un peu d\'herbes de provence (plus ou moins, selon la consistance souhaitée), et enfin le kiri.\n',1,1),(2,'quiche thon léger','Très bonne recette, rapide et facile à réaliser.\nrapide','1 heure','0','35','sel\npoivre\n500 tomates cerises\n2 cas creme fraiche\nmuscade\npate brisée\n3 oeufs','Foncer un plat à tarte beurré avec la pâte brisée et piquer celle-ci avec une fourchette.\nEtaler uniformément le pesto sur la pâte\nRépartir les tomates cerises (ou les tomates coupées en rondelles) sur le pesto.\nBattre les oeufs et la crème dans un bol. Saler, poivrer et râper un peu de noix muscade. Verser ce mélange sur les tomates.\nSaupoudrer la tarte de gruyère râpé.\nEnfourner à 200°C (thermostat 6-7) et laisser cuire 30 min, ou jusqu\'à ce que la tarte soit dorée\n\n',1,1),(3,'cake au thon','Je suis toujours à la recherche de soupes de légumes qui ne soient pas trop fades mais goûteuses pour tous mes enfants','10 mn','-','25 mn','2 pommes de terre\n3 carottes\n4 Poireaux\n1 cubede bouillon de legumes\n1 kiri\n','Eplucher les légumes  les couper grossièrement en morceaux.\nPlonger les morceaux dans une casserole d\'eau froide, avec 1 cube de bouillon; ne pas saler\nLaisser cuire jusqu\'à ce que les légumes soient relativement tendres (environ 20 min après le début de la cuisson).\nMixer les légumes avec l\'eau de cuisson et un peu d\'herbes de provence (plus ou moins, selon la consistance souhaitée), et enfin le kiri.\n\n',1,1),(7,'Tarte à la tomate','Sans tomates : en tartelettes à l\'apéro..','10 mn','-','60 mn','5 oeufs\npate brisée\nmoutarde\nsel, poivre\n2 cas de creme\n500 g de thon','Etaler la pâte brisée dans un moule, la piquer avec une fourchette.\nEnsuite étaler la moutarde dans le fond, sans oublier un seul coin. La quantité dépend de votre goût pour les épices.\nDisposer les miettes de thon sur tout le fond de la tarte, puis ajouter le mélange oeufs-crème fraîche-sel-poivre.\nLaisser cuire à 180°, thermostat 6, pendant environ 30 min.\nRetirer la tarte quand le dessus se colore.\nServir avec une salade verte.',0,0);
/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_allergen`
--

DROP TABLE IF EXISTS `recipe_allergen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe_allergen` (
  `recipe_id` int NOT NULL,
  `allergen_id` int NOT NULL,
  PRIMARY KEY (`recipe_id`,`allergen_id`),
  KEY `IDX_532FAD5059D8A214` (`recipe_id`),
  KEY `IDX_532FAD506E775A4A` (`allergen_id`),
  CONSTRAINT `FK_532FAD5059D8A214` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_532FAD506E775A4A` FOREIGN KEY (`allergen_id`) REFERENCES `allergen` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_allergen`
--

LOCK TABLES `recipe_allergen` WRITE;
/*!40000 ALTER TABLE `recipe_allergen` DISABLE KEYS */;
INSERT INTO `recipe_allergen` VALUES (1,2),(2,2),(2,13),(3,1),(7,1),(7,2);
/*!40000 ALTER TABLE `recipe_allergen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_category`
--

DROP TABLE IF EXISTS `recipe_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe_category` (
  `recipe_id` int NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`recipe_id`,`category_id`),
  KEY `IDX_70DCBC5F59D8A214` (`recipe_id`),
  KEY `IDX_70DCBC5F12469DE2` (`category_id`),
  CONSTRAINT `FK_70DCBC5F12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_70DCBC5F59D8A214` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_category`
--

LOCK TABLES `recipe_category` WRITE;
/*!40000 ALTER TABLE `recipe_category` DISABLE KEYS */;
INSERT INTO `recipe_category` VALUES (1,4),(1,5),(2,1),(3,1),(7,2);
/*!40000 ALTER TABLE `recipe_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refresh_tokens`
--

DROP TABLE IF EXISTS `refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refresh_tokens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `refresh_token` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `valid` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_9BACE7E1C74F2195` (`refresh_token`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refresh_tokens`
--

LOCK TABLES `refresh_tokens` WRITE;
/*!40000 ALTER TABLE `refresh_tokens` DISABLE KEYS */;
INSERT INTO `refresh_tokens` VALUES (3,'c9d3d5f0f25d8bbfcefbb7e7e5d858f45a144a26491d92397cfc9a23236887806dfa160075f21625133374fc95735f76d2abb1bbfdc8ba3fe12087f5ad409580','jpledos@gmail.com','2022-03-10 16:00:00'),(4,'fe1be474eca2b3de3480acad0da39ef260ed9396a965e163a227667a3d6c698c2d05a198a2353bb0467309a3f8dc141844128fdf06abe5c53406c2390f33e1a7','jpledos@gmail.com','2022-03-10 15:04:33'),(5,'f6003a130ab603ab00cd314287ef1bdb976ca630d4eb6f4132baf3ffcc4a5ee34a43b668431faf7fa2514c6d673e15d9ce507b2d200f1f560b44231df236c02b','jpledos@gmail.com','2022-03-10 15:12:26'),(6,'1ed5b1af93a002e2abe7a2088b1344fef64f1884dab95a5ed5b38f52638e6a2ec6bc79ffb7821a43542c447b8760d3c54223fed83432ea3f99fd0a41d18da720','jpledos@gmail.com','2022-03-10 15:28:46'),(7,'1c6c0e02cd36f08864367120ce93e855dae4d393b63bb39c08bdda15ce59c6dd9be99b2b2cc3784ad15d33298a9c1f0b4f6ea8e8522fe43032e01b8e232144fc','jpledos@gmail.com','2022-03-10 15:56:07'),(8,'834cbdb3f358cf96a5d1f25346a60ab8133a3b9c27756d3027fa38bab736d65ff16d66b4167615698f043a6ac7ec467caae2219635fc509c3a146b2f90282fd2','jpledos@gmail.com','2022-03-10 16:11:52'),(9,'28efe7f5a985e6caec7bdac37debb4da25eb21566493cefcfeb9ce6329dd970eb529096612d86b216cca525a6622aa09399e7816a55120ab77e4750c7cac9b47','jpledos@gmail.com','2022-03-10 16:39:30'),(10,'59a4470d9600618b6dcdc0425a5cb2b5eddc4e618b7e418e49ebd8a213d136427ade38605056e96f30bb30456710045d79d686f0dcbefd5045d0cf9f161406eb','jpledos@gmail.com','2022-04-09 17:02:17'),(11,'a26e442bf8fae6ace1a2c61fead482db20ba7b2b82c49e7aea5313569e16ff5f55c03b5ece8d3563d7f48db7c255eb9ad343b72a75601b08f0b2499d149c081f','toto@toto.fr','2022-04-09 17:03:03'),(12,'8d2108201533bdab8b7acd6fdebb630cc74ca32a462ac458497890ef443e74b5661c2d25ff41b6d5d3c8ec691cbd3189ba8db5e13c77e5703fef390bc260553b','toto@toto.fr','2022-04-10 05:20:39'),(13,'808f9281f6108886ec55c0748b523d418847065cdd801200f063bc8a9b0a4e38c779478d7a82621b3b1cbcf0aa5c0cbd42e6e7b3af8b7a9ba9c6b2cd61c3fd78','jpledos@gmail.com','2022-04-10 06:30:33'),(14,'8e391751deb3fe3d2305fe041c28558dfcb0ee91898565604ae9debf312d11046abe49d720f2ab8265589a8b061128f4a9c7987ab4ee97d936ed25ffdc814f93','jpledos@gmail.com','2022-04-10 06:52:12'),(15,'3e04c522a72a00fe0f15778ef3f67ce81923889de7577d2f6a26797841800dcd03f993c44d7a555b798449456f026aa6b7da7af994a820b77fbda8fb21a01548','jpledos@gmail.com','2022-04-10 07:21:06'),(16,'14dc5a612dfa0d0d1b8a7a03d85de3448d07b4a59d268c2d70d99c1ec40221a68154a64637020e4c685528b77163ec3733adedc26d4fc2fe4aea00b0fcdd94b1','jpledos@gmail.com','2022-04-10 07:37:26'),(17,'8e25ebfe8bb9aa1fc079209dd6fee179471c7fa9c30ce022f5376d34831b3a9ed0a5c78a6fb92684e5aff1436ada988bb745525caaa3c4956791f9c8481467a4','jpledos@gmail.com','2022-04-10 07:59:21'),(18,'eceeda5be8a408b4731a7986096282a175cd33d33b2281bc4d6ea349df715eed9fca0db43d27407b90b5d3d9edf0540124ce87610c7c5443d795029251e39ded','jpledos@gmail.com','2022-04-10 09:53:30'),(19,'f19fa0e4d3fc1cc89c1481b763b12094e4dc3174aa043ac3571d796f5f088c52279e8df5fa5f5ccf671ca8beec3dcd008841f2bdf359cd4bbac4a19c17ab5c2d','toto@toto.fr','2022-04-10 09:57:35'),(20,'05d11757a6e6efd93167fb692cf68e1b4a5e6c6b69f62692993559e1f8b6c3a48d76f184852f760615bc3dc64ce03752a256ddb164ef89c0f313b1680fcbc592','jpledos@gmail.com','2022-04-10 09:58:13'),(21,'71dedfec9f21d0290d1aa658d9bc57dd34bd17d5bc7af20c9feaccebc68ef866daee5a25f1735ce548f0254b46622cdfc94194fcb0e38f858cdd8c7913904e83','jpledos@gmail.com','2022-04-10 12:03:29'),(22,'6232c03a4a3e35d46ef00f8cc0961043c8eb36b792b90ece14c033c12a7ceea5239d477e39dba3ad623170b396acea1090c7515c2b6821cf59bda9d587d74479','jpledos@gmail.com','2022-04-10 13:21:53'),(23,'7d0136ede6a81c4fe30ab46a7173128a5bc0d34c54065cc0beeeb386b0a8aeb60208134c46f122e225c2060bfdb3b4e83929a72cb0c7bb97810ac11244e4b132','jpledos@gmail.com','2022-04-10 18:18:15'),(24,'8454fbdc231021f4f318b8c42c084e63ce876bfe356d2a7c0db891a65f30d61174d9a1f2375e0b56735a6c2ed75bc1a67c916ddd032f1eba7e5b2699b4b5e3c5','jpledos@gmail.com','2022-04-13 07:04:30'),(25,'6b7bf0e4dd6bab7fcd84221cfc46da4656f8f7b3ad6d785b777a0272712da82635f3c56edc3a5454fc186501a4152b1ee7c2226d476ceea2fde6e70e58bea509','jpledos@gmail.com','2022-04-13 08:40:24'),(26,'e7fdd86bef583d8adea8e90063dc8bb8c29197d8c17ffc21df95d882147ae627954fa56ba83e120d43c9a7ff0741e90c9d920bad1216a33611625df55838a429','jpledos@gmail.com','2022-04-13 09:51:40'),(27,'802098747d27fa1cf4cd31c02984f2407936a012fc629a64e2a78fc3a8ab39fbc20da4cd44eabe240c25caf01436fd358912920919b21b3b312a1a84fda35cff','jpledos@gmail.com','2022-04-13 13:27:07'),(28,'33643ab359d892d76f01ce0b05daf6d70fbcd3b19130602ae454ce57933eff093ecf44feffba32fa5d151ed6cffa2830dc832e73eecb17c7a7489617d33725f1','toto@toto.fr','2022-04-13 13:29:55'),(29,'66c19fa5a69023f202cce673702cdbdfc6c4587a667993f82d34ec223cf5eb9073bd8414c0b1ceb3c3628a113b4061bf3b047e445434026df93082a99194e798','toto@toto.fr','2022-04-13 14:14:19'),(30,'fcb9aa5ec06a115f90fcf96c062af0e5a54c706beb395faf0d90f9bba507145f6946ceb95f3350c8d5fd5850add4e30d7e21115c2850c113888b950e4afcda56','jpledos@gmail.com','2022-04-13 14:16:28'),(31,'2e1fb00c24b42c6c59663070724a9e13b4c56efe7c5a83a3af48c10ecbcea6e5a149fcdc2e98439cd0c9f8057fd50f6979fbe84b54d8786cd964f4ea27f3aad9','jpledos@gmail.com','2022-04-13 16:24:05'),(32,'db2f3b1b8da7ded096055b1e6ec4eb47e65cf8006153e9c0f0940fa91f338c4b70cb14c197202c0873f5b5580581a2110f5eeb7e15fe6533e503e87894c479cf','jpledos@gmail.com','2022-04-14 06:20:08'),(33,'362239eeba98809e4c4dafba9b008c9c44989b8b49313098fff96234c8fde73aad88535a2cf9f0ceaafe1bceabd460aa2fcbcdf94af4878ed1edd97be4e64874','jpledos@gmail.com','2022-04-14 06:57:24'),(34,'afd8b6786d61ea2b5115bd62baa8e852963a01997b1ff79500407dae2a14b63aa54fd3746120fc9f7e64e36283d102ca30a599e289a6d4ddab5b20e585ce0faf','jpledos@gmail.com','2022-04-14 07:33:54'),(35,'84a885c1db1412a10cf7f3b6fb90822871b93e6b1c7fbbfd0a8a6585a5702f6a62042fb897b984a63b8fb50cccf4fe17c91870023fbd3dcabfb6741f4c274e8d','jpledos@gmail.com','2022-04-14 08:17:01'),(36,'6fae82f865e20be53a668a370eb739438798f67f0f727a5280b15bd2a54c0c00a8aa923694cd020138b43d120c81bb9ea063b2e1c3eb5c504eed4ba181512474','jpledos@gmail.com','2022-04-14 16:10:59'),(37,'39b5c9f1ed8bee170453abb43fe13408ff37a13dc2585b5af75795e2b6830ed9492c0eebd7cb0707b25ff09ff55e6e4198e9c6f0dc24802019548de624792371','jpledos@gmail.com','2022-04-15 08:45:52'),(38,'747d8cc02ced1835d0e1efb5a3ee5c0e21cbc1b63f63b8a070daffea69f186e57c54d7723652dd1ebffb0d31bdc1da8693e6aae6ca5b8ef638ed00cd7bfdb35c','jpledos@gmail.com','2022-04-15 08:46:29'),(39,'c21f1a173a28783dc49b29017fe410013bc09456d8d35519752a537901fc073ec537616392913e3912c804fb1b708f1e13f8211f0d4aeab46b29c180cd4a9e6a','toto@toto.fr','2022-04-15 11:48:47'),(40,'c8c55a1a4bc406b2c0eefd77e4377c8dde7572573091b85afefd2d2ae3700dc498a1ded10056f0d9e8460c434818bb6665449cfdd691c3fce501d94a62655c82','toto@toto.fr','2022-04-15 11:50:12'),(41,'bdf837001f4dc37c394ffd3e5d44bcf5ce9b5f10214a8f8dcc5f47ee05dc34b5b441591e0c1f8f3edbbd8ed5072566e1df71a0a049824c8a0163758281d0cd43','jpledos@gmail.com','2022-04-15 12:02:38'),(42,'c78611fbf607d93766fc49858a6fcfe0084c21610024f4c1019ebf9f2d3d9e80e0ac97ec4c71b0302dfaac415736d08bd2f70896edd3fd542aa88c4c546fd3f1','cabinetledos@gmail.com','2022-04-15 13:29:25'),(43,'6fc8a37a8390aa0ebe491ca7fc6c3697c40a62ce65dd5fa3deecbec273e863b35770a40aee13cdb3effebf00a63bd826bd7706e2b78b0eb209023edc5e071e41','jpledos@gmail.com','2022-04-19 09:31:28'),(44,'6e00b2f363511dfab7bf2b673024b991ac2ca4f539c24c0b362c1e58603cb573271c614772bc169ca4b2311251bfa09f31d41847425ff16f3570a9441c6e96e2','jpledos@gmail.com','2022-04-19 09:38:35'),(45,'8bdd9a1173154413b5e26da218b9e00d0dba2470ac77349b5ba2f7058de87101db14ff5e9fbd6ae5850928eaf8094d13debc12d8316e413e81a58302a1efb5c9','jpledos@gmail.com','2022-04-19 09:39:17'),(46,'fdb06d8835929a46e52758907de10d0a4e0c541692950776b91efd5dfc4ae8cbdfda53fe2be491d9116fb0c5ae0693c6dcbb5fcc847a202d156c736bc2049fa7','jpledos@gmail.com','2022-04-21 16:12:46'),(47,'d2bf191a776fcad2e0f86e3756ec90d41ddf75563622e8d8f2ca50e0ed6c82bca95aedde1eae6ac979862516db6cebfd17f55f34e4ca8746001b3deee061c5f1','jpledos@gmail.com','2022-04-25 07:54:19'),(48,'4ec86b1d2b0347e2d8695ecc2e48d2a3169c5a329195ec76c55bb0a73aa23ac05380f381db99731b51b6c6048f90d4e822d01544f183dd6d1fa9a08f52ce016b','jpledos@gmail.com','2022-04-26 07:07:14'),(49,'2b6d78b5ef3eee53d71d74c41be485ec10b498968db730c4d3be5f099aa231f0e8337328ea13bddf0f200471d5fc137a2ad22ef4f7fabfa8b46295b6352a367d','toto@toto.fr','2022-05-05 06:59:16'),(50,'1b743f8d3f588e5f4bb89721fc0a28f9ccd0423c203f819eeee06d057816421e4cc3a8a81901f4a51d132705bf1acc9ae2d0c264d62dfcc3a24f50350979534c','jpledos@gmail.com','2022-05-05 07:54:57'),(51,'a8e10d8140ce66aeae62db54ccf639126ae28e1af432fd1921bd701a5c08c4feaf0ba36d8a7e8dcd1ded1518e287bcf4092b78530a3fc2704624abf844e7e811','jpledos@gmail.com','2022-05-05 07:55:50'),(52,'fe7a185090d63092abf8f94242d2eb75c1d60f4e8d9ea8f794be70da6bb6ca379ea7367ec7f06b7a080526e85abfe48cb4af584607a6a48c1675cdafa9d3c05b','jpledos@gmail.com','2022-05-05 09:13:52');
/*!40000 ALTER TABLE `refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin@nutrition.com','[\"ROLE_ADMIN\"]','$2y$13$3fasGdkHp4s.YtvM4vbh4u9Le3IbKSAl/oO2v/260HOTcqj.O80De','jean-Pierre Ledos'),(11,'cabinetledos@gmail.com','[]','$2y$13$SKd5Eif9HBYaaMyUPK2IIui.4obq9q8hFuHIiWoMSzsqL5psjFe2S','cabinet2'),(17,'toto@toto.fr','[]','$2y$13$xyqmewYh4isJfA4JQYy5SemyaIdLuEenMcMRcyiDON1DbYkSrLck.','toto'),(19,'tititi@toto.fr','[]','$2y$13$DUKp9MmnaLmmGgo5CC1JCuxMd95itSEawcrghIGv1G/qXEbt7jL3q','titi toto'),(21,'tatata@titi.fr','[]','$2y$13$Kb.bxJlaH9I0Sm/2ub3vce6n5kcGZ/XwJTQ2KM04VEDcoRbCrtOe6','tatatati'),(22,'cabinetledos@gmail.com2','[]','$2y$13$5lRg7ZkDFxxoGPKHjkg5oOtlIaD38uxMUFtYxUTJqE7sDLqA/SYae','jpledos2'),(23,'titiiotio@titi.fr','[]','$2y$13$pFoCMC11hK9yN0M9l5YMqu//sjFuLqsQbQd6Gw.juwM0Hhsc.DLCK','jpledos@');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_allergen`
--

DROP TABLE IF EXISTS `user_allergen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_allergen` (
  `user_id` int NOT NULL,
  `allergen_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`allergen_id`),
  KEY `IDX_C532ECCEA76ED395` (`user_id`),
  KEY `IDX_C532ECCE6E775A4A` (`allergen_id`),
  CONSTRAINT `FK_C532ECCE6E775A4A` FOREIGN KEY (`allergen_id`) REFERENCES `allergen` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_C532ECCEA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_allergen`
--

LOCK TABLES `user_allergen` WRITE;
/*!40000 ALTER TABLE `user_allergen` DISABLE KEYS */;
INSERT INTO `user_allergen` VALUES (1,2),(1,5),(11,2),(17,9),(19,1),(21,10),(23,12);
/*!40000 ALTER TABLE `user_allergen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_category`
--

DROP TABLE IF EXISTS `user_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_category` (
  `user_id` int NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`category_id`),
  KEY `IDX_E6C1FDC1A76ED395` (`user_id`),
  KEY `IDX_E6C1FDC112469DE2` (`category_id`),
  CONSTRAINT `FK_E6C1FDC112469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_E6C1FDC1A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_category`
--

LOCK TABLES `user_category` WRITE;
/*!40000 ALTER TABLE `user_category` DISABLE KEYS */;
INSERT INTO `user_category` VALUES (1,4),(11,1),(17,1),(17,2),(19,6),(21,1),(21,3),(22,4),(23,6);
/*!40000 ALTER TABLE `user_category` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-05 11:48:38
