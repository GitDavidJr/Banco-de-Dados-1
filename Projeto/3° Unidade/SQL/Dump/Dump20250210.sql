CREATE DATABASE  IF NOT EXISTS `jcv` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `jcv`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: jcv
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `cpf` char(11) NOT NULL,
  `telefone` varchar(11) NOT NULL,
  `logradouro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `numero` char(6) NOT NULL,
  `cep` char(8) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Lucca da Rosa','03496899611','55719262461','Rua Sousa','da Costa','Vila Da Amizade','6769','91388918','hmontenegro@example.org'),(2,'Dra. Cecilia Marques','37816843640','55219958363','Residencial de Souza','Barbosa','Lourdes','4317','89912504','marquesvinicius@example.org'),(3,'Ana Júlia da Conceição','13846073683','55819658668','Passarela de Jesus','Moraes','Coração De Jesus','9968','50491280','eduardo39@example.org'),(4,'Dra. Sarah Sampaio','70443003499','55519768682','Quadra Mendes','da Rocha do Amparo','Chácara Leonina','5841','99052555','mirellaandrade@example.com'),(5,'Enzo Fonseca','51317512430','55419827796','Setor Costa','Rezende','Conjunto Serra Verde','4746','22406297','ffonseca@example.org'),(6,'Srta. Stella Duarte','46777279788','55219324909','Lagoa Liz Pastor','da Cunha do Sul','Tupi A','7099','72486263','davisales@example.org'),(7,'Vitória Fernandes','08833132126','55219344369','Vale Juliana Borges','Albuquerque','Vila São Geraldo','7818','86177842','theo76@example.com'),(8,'Bernardo Lopes','88731276302','55619544704','Feira de Caldeira','Oliveira do Amparo','Jatobá','2641','71281982','nascimentoleo@example.org'),(9,'Dra. Eloah Pires','17631540674','55119251608','Ladeira Jesus','da Luz do Norte','Vitoria','1802','62978992','catarina17@example.com'),(10,'Sra. Alícia Montenegro','53754957480','55319956657','Passarela Daniel das Neves','Pacheco','Serra Verde','4851','08750953','ryanda-rocha@example.net'),(11,'Olívia Duarte','06515111559','55619201938','Feira da Paz','Nogueira','Vila Paraíso','2803','12812808','danielamendes@example.net'),(12,'Luiz Otávio Lopes','02212895914','55419314526','Condomínio Olívia Teixeira','Moraes','Itapoa','8661','05808488','ifonseca@example.net'),(13,'Heloisa Pereira','75693646368','55419567038','Lago Costela','Carvalho de Câmara','Acaiaca','4185','00129498','sda-cruz@example.org'),(14,'Clara da Luz','18551965185','55719136504','Feira Almeida','Porto da Praia','Gutierrez','2599','30882048','costaaugusto@example.com'),(15,'Sra. Kamilly Câmara','60554361269','55119281780','Estação de Correia','Pimenta da Mata','Funcionários','9751','70625270','caioandrade@example.com'),(16,'Ana Júlia Sá','86584775664','55419745131','Condomínio Isabella Alves','Correia','Vila Nova Paraíso','9966','25942515','das-nevesbreno@example.net'),(17,'Mariana Caldeira','09222786433','55849530406','Loteamento Aragão','da Paz','Vila Primeiro De Maio','5908','47531221','vieiraguilherme@example.com'),(18,'Dr. João Felipe Lopes','38115395892','55519721807','Estação Davi Lucca Lima','Porto','Buritis','3183','58036929','yancardoso@example.com'),(19,'José Pinto','23328629069','55849895066','Praia da Conceição','Peixoto','Alta Tensão 2ª Seção','3324','82932901','maria-luizacaldeira@example.com'),(20,'Luiz Miguel Casa Grande','70600279911','55119049210','Feira de da Rocha','Lopes Verde','Vila Suzana Primeira Seção','2253','83233188','vasconcelosemanuel@example.net'),(21,'Otávio Moraes','33074096951','55849250339','Conjunto Gael Henrique Macedo','Sampaio do Galho','Novo Das Industrias','5199','47929387','lavinia22@example.com'),(22,'Esther Sales','96294482390','55419103819','Lagoa Macedo','Marques','Conjunto Providencia','8415','87525232','carvalhoana-clara@example.com'),(23,'Bento Moura','39771361028','55219772375','Vila de Barbosa','Silva','Gameleira','7631','59158471','maria-luizapires@example.org'),(24,'Benjamim Silveira','13441764556','55819340667','Alameda Matheus Cardoso','Abreu do Sul','Dom Cabral','6935','16036919','sara90@example.org'),(25,'Dr. Luiz Miguel Cardoso','27505620454','55719074679','Avenida Alexandre Cardoso','Macedo de Silveira','Vila Piratininga Venda Nova','8546','02588996','mateus71@example.org'),(26,'Kevin Pinto','41871945149','55519088401','Largo André Aragão','Freitas do Galho','Nova Suíça','3429','82554006','ana-beatriz38@example.com'),(27,'Mariah Gomes','27167046456','55219163778','Via Marcos Vinicius Dias','Machado','Nossa Senhora Da Conceição','4442','53092919','da-rosajose-pedro@example.com'),(28,'Evelyn Aragão','86146484460','55849226087','Esplanada de Costa','da Mota do Norte','Aparecida 7ª Seção','5798','68144535','ian60@example.com'),(29,'Maria Alice Azevedo','32267457397','55619397485','Área Carvalho','Campos do Galho','Delta','6490','52801765','miguelguerra@example.org'),(30,'Dr. Bento da Cruz','88118538858','55719170615','Campo Ayla Cunha','Gonçalves Alegre','Santa Monica','8631','62446493','da-conceicaohenry-gabriel@example.com'),(31,'Cecilia das Neves','87689596983','55419950213','Trecho Lucas Nunes','da Paz da Mata','Paraíso','3780','99557100','qgarcia@example.org'),(32,'Alexandre Pimenta','54194639729','55619715271','Residencial Sampaio','Rocha do Amparo','Gameleira','1536','87818855','emanuella42@example.net'),(33,'Pedro Lucas Alves','46743299714','55849239564','Estação de Rodrigues','Jesus de da Costa','Senhor Dos Passos','639','88901476','hleao@example.org'),(34,'Marcelo da Mota','21330517255','55819992327','Rodovia da Costa','Costa de Siqueira','Xangri-Lá','4421','05642376','maria-ceciliafonseca@example.net'),(35,'Mariane Gonçalves','74734932248','55219682525','Área de Castro','Cavalcante da Mata','Vila Mantiqueira','1389','21039608','isaac30@example.net'),(36,'Sr. Davi Miguel Guerra','25883637165','55849133457','Setor Maria Laura Ribeiro','Mendonça','Heliopolis','3433','39951102','marquestheo@example.com'),(37,'Benicio Rezende','37672515573','55819653975','Residencial de Cavalcante','Carvalho dos Dourados','Pousada Santo Antonio','1060','83121417','ppereira@example.net'),(38,'Ana Julia Dias','65337821401','55319697129','Lagoa Carvalho','Sousa','Santa Terezinha','3485','38492754','vporto@example.org'),(39,'Luigi Mendonça','39191438367','55719493917','Pátio de Rodrigues','Barros Verde','Nazare','2593','21376061','bcamargo@example.com'),(40,'Benicio Freitas','50697785181','55119637973','Fazenda de Leão','Cunha da Mata','Novo Santa Cecilia','2122','74417136','raelcardoso@example.org'),(41,'Maya Correia','55495061347','55819361879','Via Maria Flor Abreu','Caldeira do Campo','Vila Das Oliveiras','3025','66641543','iferreira@example.com'),(42,'Ana Luiza da Cruz','47390102183','55219730860','Via de Cardoso','Vasconcelos do Norte','Canaa','2839','97743796','fcunha@example.com'),(43,'Maria Eduarda Barros','22434675951','55519274335','Campo de das Neves','Oliveira','São Gonçalo','2154','70745628','lorenzo31@example.org'),(44,'Juliana Silveira','68149813333','55419857568','Loteamento Vasconcelos','Gomes de Minas','Casa Branca','5102','00661629','luiz-fernando11@example.org'),(45,'Lara da Mata','63591571920','55619665435','Parque de Andrade','Cirino das Flores','Santa Cecilia','5576','78133228','maria-sophia42@example.net'),(46,'Caroline Moraes','87740191823','55419917910','Loteamento Novais','da Mata do Campo','Vila Dos Anjos','863','55828356','lucasnunes@example.net'),(47,'Olívia Jesus','23321586811','55319868209','Alameda Oliveira','Cirino','Novo Santa Cecilia','1198','61465280','lmonteiro@example.org'),(48,'Sra. Yasmin Aparecida','14763893484','55719983311','Quadra Maria Júlia Aparecida','Mendonça do Norte','Floresta','8682','09375320','bryanda-rosa@example.org'),(49,'Dr. Benjamin Castro','21907971294','55719356663','Feira Marcela Almeida','Sales das Flores','São Jorge 2ª Seção','3890','51890916','campospedro-lucas@example.org'),(50,'Benjamin Sousa','80193470070','55719974861','Residencial Moreira','Sales do Galho','Belmonte','8391','86769610','ravirezende@example.net'),(51,'Natália da Rocha','49206927191','55119675303','Viela de Farias','Cirino de Aragão','São Francisco','9157','58120761','pimentamaria-fernanda@example.net'),(52,'Pedro Novais','29901190553','55719871068','Morro de Farias','Novais','Vila Da Paz','2230','73133784','piresravy@example.com'),(53,'Ravi Barros','19403620761','55119829925','Ladeira Moraes','Garcia','Vila Nova Dos Milionarios','4574','20456513','emilly67@example.org'),(54,'Maria Júlia Almeida','12674686357','55419179505','Estrada de Aparecida','da Mota','Conjunto Paulo Vi','1214','80225289','pietropastor@example.org'),(55,'Arthur Miguel Rocha','52091615957','55119370415','Recanto Porto','Silva','Maria Virgínia','2696','51463239','caiomontenegro@example.net'),(56,'Ryan Leão','59499649300','55119061712','Viela de Nascimento','Ramos de Minas','São Jorge 2ª Seção','2105','58613281','manuelabarbosa@example.org'),(57,'Gabrielly Dias','28664873965','55419710442','Campo Moreira','da Mota','Monte Azul','6801','79794244','hnunes@example.com'),(58,'Maria Eduarda Barbosa','47055741828','55219640713','Trecho Apollo Casa Grande','Câmara','Vila Inestan','9249','24107624','borgesdavi-lucas@example.org'),(59,'Benício Rocha','44211317387','55819888038','Jardim de Ramos','Camargo das Pedras','Outro','8013','23739615','enzosa@example.net'),(60,'Danilo Correia','65221087424','55619944936','Vereda de Lopes','Borges','Unidas','7487','95889329','ana-lauracostela@example.org'),(61,'Olívia Barbosa','76437627377','55219152896','Avenida de Santos','Câmara de da Rosa','Belvedere','6294','44304483','mendesmaria-luiza@example.com'),(62,'Anthony Macedo','43291895430','55619931095','Alameda Teixeira','Fernandes de Barbosa','Guaratã','2368','34627492','erezende@example.com'),(63,'Milena Gonçalves','92694574989','55849841625','Campo Lívia Azevedo','Monteiro','Jaqueline','1843','31028395','zcaldeira@example.net'),(64,'Daniel Camargo','31277780539','55719449349','Alameda Antony Brito','Camargo','Mangueiras','7694','05259307','casa-grandeleonardo@example.net'),(65,'Bruno Barbosa','14869960769','55719909616','Conjunto de da Mota','Freitas do Oeste','Xangri-Lá','5644','10084297','kda-mota@example.net'),(66,'Milena Pinto','09755704649','55219344418','Fazenda de Vasconcelos','Nunes Paulista','Xodo-Marize','1323','91229936','ada-costa@example.com'),(67,'Vicente Jesus','20953790397','55719712786','Chácara Lorena da Cruz','Costela','Vila Fumec','2601','31972320','ribeiroana-liz@example.com'),(68,'Paulo Aparecida','02809127899','55219347092','Feira de Barros','Marques','Canaa','5102','72492839','tda-cunha@example.net'),(69,'Alícia Rezende','52944559448','55519587336','Trevo Pietra Araújo','Andrade','Paraíso','1167','65157715','peixotojoao-felipe@example.com'),(70,'Rael Fernandes','78128688334','55519923430','Ladeira Paulo Ribeiro','Porto Verde','Nova Cintra','7195','60374359','luiz-henriquesilva@example.com'),(71,'Danilo Jesus','10163151561','55219208241','Lagoa Lucca Monteiro','Macedo de Cassiano','Grajaú','9137','30456216','qpastor@example.net'),(72,'Rhavi Siqueira','77932250035','55419134897','Área de Pereira','da Mata','Paraíso','1364','05856015','sarahsiqueira@example.com'),(73,'Lunna Novais','15610258225','55719610028','Estrada Pastor','Macedo do Sul','Vila Das Oliveiras','5596','38124317','albuquerquejoao-pedro@example.com'),(74,'Alexandre da Rocha','75323993073','55819503322','Rodovia Ferreira','Rocha Verde','Urca','1114','23610474','pietroda-rosa@example.org'),(75,'Sra. Ana Fonseca','74939602750','55119625546','Loteamento Vitória Souza','Viana','Bom Jesus','7496','19455630','zsouza@example.com'),(76,'Vitor Vieira','09575211094','55219769423','Residencial de Jesus','Machado do Norte','Corumbiara','1157','49649327','agathasousa@example.org'),(77,'Arthur Caldeira','39275831376','55849977822','Vereda de Freitas','Pinto dos Dourados','Vila Suzana Segunda Seção','5048','56452049','stellacavalcante@example.org'),(78,'Heitor Gomes','61803202197','55119198125','Esplanada João Gabriel Albuquerque','Gomes','Santo Agostinho','821','76897524','nvargas@example.net'),(79,'Henry Costela','67984721517','55519970756','Viela Viana','Caldeira','Parque São Pedro','5986','83098879','fda-paz@example.org'),(80,'Lucca Fogaça','69534709257','55219336302','Vale de Casa Grande','Lopes','Conjunto Lagoa','3797','52775720','ayla86@example.net'),(81,'Dr. Théo Caldeira','83657207486','55619295186','Viela Aragão','da Conceição de da Rosa','Jardim Leblon','629','67513874','vcastro@example.org'),(82,'Isis Rios','62193718076','55719027288','Praça Cassiano','da Cruz dos Dourados','Túnel De Ibirité','4357','16489750','heitor86@example.net'),(83,'Maria Liz Cunha','34950475331','55719723732','Avenida Abreu','Abreu','Vila Jardim Alvorada','2579','91553725','anovaes@example.com'),(84,'Srta. Heloisa Monteiro','74272713190','55619245141','Passarela Bárbara Pires','Brito Verde','Europa','7821','64178456','montenegroclara@example.org'),(85,'Aurora Aparecida','70263165168','55319829808','Praça de Porto','Porto','Conjunto Jatoba','248','59156993','alvesstephany@example.org'),(86,'Thales Moura','78932220839','55849369502','Fazenda de Barbosa','Pastor','Araguaia','1223','32966326','mirellajesus@example.net'),(87,'Maria Fernanda Cirino','63385699457','55849924193','Vila de Dias','Dias do Galho','Vila Santa Monica 1ª Seção','6407','14501448','dferreira@example.net'),(88,'Carlos Eduardo Garcia','07209979078','55519216855','Área de Campos','Fernandes','Vitoria Da Conquista','8501','98315001','olivia15@example.org'),(89,'Matheus Melo','84915866909','55319543163','Esplanada de Borges','das Neves','Vila Primeiro De Maio','6284','75414405','mendesana-vitoria@example.net'),(90,'Mariane Mendonça','76188425643','55119987542','Via de Jesus','Aparecida','Castelo','9677','42135233','yuriborges@example.com'),(91,'Nathan Pinto','07706253571','55219819389','Praça Isaac Fernandes','Pinto','Diamante','3585','26929461','kamillypimenta@example.com'),(92,'Ester Nascimento','91142790917','55419931197','Viela Vitória Cunha','Castro','Ventosa','4813','61763797','lavinia66@example.net'),(93,'Dra. Maitê Oliveira','56548724481','55419173030','Vereda de Ribeiro','Campos','Beija Flor','7220','67853338','bento95@example.org'),(94,'Ana Viana','18879986265','55619333341','Praça de Albuquerque','Silveira','Vila Cemig','3018','66663029','diasvinicius@example.com'),(95,'Eduardo Rios','36856812041','55719869875','Campo Liam Ramos','Sá da Mata','Betânia','9685','83093155','augustooliveira@example.net'),(96,'Sofia Borges','47118795356','55819072893','Jardim Francisco Jesus','Vieira','Granja Werneck','6556','68583363','ryanalmeida@example.net'),(97,'Sr. Dom Lopes','72290664415','55719458858','Trevo Costela','Mendonça','Granja De Freitas','1359','17587044','eduardaporto@example.net'),(98,'João Guilherme Carvalho','10961235889','55519037635','Ladeira Mariah Gomes','Freitas','Centro','8498','14053437','felipe83@example.org'),(99,'Levi Melo','33172768315','55219567183','Rua Maria Luísa Nascimento','Macedo','Vila Madre Gertrudes 3ª Seção','9417','91812195','joaquim83@example.com'),(100,'Henry Peixoto','29726967285','55119897657','Conjunto Arthur Miguel Aragão','Cardoso','Nossa Senhora Do Rosário','7111','02231907','cavalcantiian@example.org');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `composicao`
--

DROP TABLE IF EXISTS `composicao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `composicao` (
  `fk_produto_codigo` int DEFAULT NULL,
  `fk_materia_prima_cod_materia_prima` int DEFAULT NULL,
  `quantidade_materia_prima` int NOT NULL,
  KEY `fk_produto_codigo` (`fk_produto_codigo`),
  KEY `fk_materia_prima_cod_materia_prima` (`fk_materia_prima_cod_materia_prima`),
  CONSTRAINT `composicao_chk_1` CHECK ((`quantidade_materia_prima` > 0))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `composicao`
--

LOCK TABLES `composicao` WRITE;
/*!40000 ALTER TABLE `composicao` DISABLE KEYS */;
INSERT INTO `composicao` VALUES (3,5,2),(3,6,1),(13,5,3),(13,6,2),(18,5,1),(18,6,3),(23,5,2),(23,6,1),(29,5,3),(29,6,2),(34,5,1),(34,6,3),(38,5,2),(38,6,1),(41,5,3),(41,6,2),(46,5,1),(46,6,3),(53,5,2),(53,6,1),(61,5,3),(61,6,2),(67,5,1),(67,6,3),(72,5,2),(72,6,1),(79,5,3),(79,6,2),(2,1,1),(5,1,2),(8,1,1),(12,1,2),(16,1,1),(19,1,2),(22,1,1),(28,1,2),(37,1,1),(40,1,2),(43,1,1),(50,1,2),(57,1,1),(58,1,2),(66,1,1),(73,1,2),(2,2,3),(2,3,5),(5,2,4),(5,3,6),(8,2,2),(8,3,5),(12,2,3),(12,3,6),(16,2,4),(16,3,2),(19,2,5),(19,3,3),(22,2,6),(22,3,4),(28,2,5),(28,3,3),(37,2,6),(37,3,4),(40,2,3),(40,3,5),(43,2,4),(43,3,2),(50,2,6),(50,3,5),(57,2,3),(57,3,4),(58,2,2),(58,3,6),(66,2,4),(66,3,5),(73,2,6),(73,3,3),(1,5,2),(1,6,1),(7,5,3),(7,6,2),(15,5,1),(15,6,3),(20,5,2),(20,6,1),(26,5,3),(26,6,2),(32,5,1),(32,6,3),(42,5,2),(42,6,1),(48,5,3),(48,6,2),(56,5,1),(56,6,3),(62,5,2),(62,6,1),(69,5,3),(69,6,2),(75,5,1),(75,6,3),(82,5,2),(82,6,1),(4,5,2),(17,5,3),(27,5,1),(36,5,4),(47,5,5),(59,5,6),(74,5,2),(6,6,2),(11,6,4),(21,6,3),(30,6,1),(54,6,5),(65,6,6),(80,6,2),(9,4,2),(25,4,1),(35,4,2),(44,4,1),(51,4,2),(64,4,1),(71,4,2),(78,4,1),(10,1,2),(33,1,3),(45,1,1),(52,1,2),(63,1,3),(70,1,1),(77,1,2),(10,2,3),(10,3,4),(33,2,5),(33,3,3),(45,2,4),(45,3,2),(52,2,5),(52,3,3),(63,2,4),(63,3,2),(70,2,5),(70,3,4),(77,2,3),(77,3,5),(14,2,3),(14,3,4),(24,2,5),(24,3,2),(31,2,4),(31,3,3),(39,2,2),(39,3,5),(49,2,3),(49,3,4),(55,2,5),(55,3,2),(60,2,4),(60,3,3),(68,2,5),(68,3,2),(76,2,4),(76,3,5),(81,2,3),(81,3,4),(14,7,2),(24,7,1),(31,7,3),(39,7,2),(49,7,1),(55,7,3),(60,7,2),(68,7,1),(76,7,3),(81,7,2);
/*!40000 ALTER TABLE `composicao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `cpf` char(11) NOT NULL,
  `telefone` varchar(11) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `tempo_experiencia_profissional_ano` int NOT NULL,
  `especializacao` varchar(50) NOT NULL,
  `funcionario_tipo` enum('vendedor','produtor') NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `funcionario_chk_1` CHECK ((`tempo_experiencia_profissional_ano` > 0))
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'João Silva','12345678901','11987654321','Rua A, 123',3,'Vendas','vendedor'),(2,'Maria Oliveira','23456789012','11976543210','Rua B, 456',5,'Vendas','vendedor'),(3,'Carlos Pereira','34567890123','11965432109','Rua C, 789',4,'Vendas','vendedor'),(4,'Ana Souza','45678901234','11954321098','Rua D, 101',2,'Vendas','vendedor'),(5,'Pedro Santos','56789012345','11943210987','Rua E, 112',7,'Marketing','produtor'),(6,'Juliana Lima','67890123456','11932109876','Rua F, 223',6,'Criação de Conteúdo','produtor'),(7,'Ricardo Gomes','78901234567','11921098765','Rua G, 334',8,'Gestão de Projetos','produtor'),(8,'Larissa Rocha','89012345678','11910987654','Rua H, 445',4,'Desenvolvimento','produtor'),(9,'Felipe Almeida','90123456789','11909876543','Rua I, 556',9,'Design Gráfico','produtor'),(10,'Tatiane Costa','01234567890','11908765432','Rua J, 667',10,'Gestão de Equipe','produtor');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materia_prima`
--

DROP TABLE IF EXISTS `materia_prima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materia_prima` (
  `cod_materia_prima` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `valor_unit` decimal(7,2) DEFAULT NULL,
  `qtd_minima` int DEFAULT NULL,
  `qtd_maxima` int DEFAULT NULL,
  PRIMARY KEY (`cod_materia_prima`),
  CONSTRAINT `materia_prima_chk_1` CHECK ((`valor_unit` > 0)),
  CONSTRAINT `materia_prima_chk_2` CHECK ((`qtd_minima` > 0)),
  CONSTRAINT `materia_prima_chk_3` CHECK ((`qtd_maxima` > 0))
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia_prima`
--

LOCK TABLES `materia_prima` WRITE;
/*!40000 ALTER TABLE `materia_prima` DISABLE KEYS */;
INSERT INTO `materia_prima` VALUES (1,'Material de Alumínio Composto (ACM)',450.00,1,100),(2,'Metalon 20x20 na chapa 18',50.00,1,150),(3,'Metalon 20x30 na chapa 18',60.00,1,150),(4,'Lona de Impressão Digital',700.00,1,100),(5,'Adesivo Vinil',425.00,1,100),(6,'Adesivo Impressão Digital',530.00,1,100),(7,'Policarbonato',450.00,1,100),(8,'Poliestireno Extrudado (XPS)',79.00,1,100),(9,'Acrílico Cast Cristal 2mm',219.00,1,100),(10,'PVC Expandido 2mm',69.00,1,100);
/*!40000 ALTER TABLE `materia_prima` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `numero_do_pedido` varchar(50) NOT NULL,
  `status_pedido` enum('em produção','em separação','enviado') NOT NULL DEFAULT 'em produção',
  `data_criacao` datetime NOT NULL,
  `desconto` decimal(8,2) DEFAULT NULL,
  `valor_total` decimal(8,2) DEFAULT NULL,
  `fk_cliente_id` int DEFAULT NULL,
  `forma_pagamento` enum('pix','cartao de credito','fisico') NOT NULL,
  `status_de_pagamento` enum('pago','pendente') NOT NULL,
  `fk_vendedor_id` int DEFAULT NULL,
  `comissao` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`numero_do_pedido`),
  KEY `fk_cliente_id` (`fk_cliente_id`),
  KEY `fk_vendedor_id` (`fk_vendedor_id`),
  CONSTRAINT `pedido_chk_1` CHECK ((`desconto` >= 0)),
  CONSTRAINT `pedido_chk_2` CHECK ((`valor_total` >= 0)),
  CONSTRAINT `pedido_chk_3` CHECK ((`comissao` >= 0))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES ('PED0001','em produção','2025-02-10 08:00:00',50.00,450.00,1,'pix','pago',1,45.00),('PED0002','em separação','2025-02-10 09:00:00',30.00,700.00,2,'cartao de credito','pendente',2,70.00),('PED0003','enviado','2025-02-10 10:00:00',20.00,350.00,3,'pix','pago',3,35.00),('PED0004','em produção','2025-02-10 11:00:00',40.00,1200.00,4,'fisico','pendente',4,120.00),('PED0005','em separação','2025-02-10 12:00:00',10.00,500.00,5,'cartao de credito','pago',1,50.00),('PED0006','enviado','2025-02-10 13:00:00',0.00,800.00,6,'pix','pendente',2,80.00),('PED0007','em produção','2025-02-10 14:00:00',0.00,250.00,7,'fisico','pago',3,25.00),('PED0008','em separação','2025-02-10 15:00:00',50.00,450.00,8,'pix','pendente',4,45.00),('PED0009','enviado','2025-02-10 16:00:00',30.00,600.00,9,'cartao de credito','pago',1,60.00),('PED0010','em produção','2025-02-10 17:00:00',10.00,300.00,10,'fisico','pendente',2,30.00),('PED0011','em separação','2025-02-10 18:00:00',5.00,450.00,11,'pix','pago',3,45.00),('PED0012','enviado','2025-02-10 19:00:00',0.00,500.00,12,'cartao de credito','pendente',4,50.00),('PED0013','em produção','2025-02-10 20:00:00',20.00,1000.00,13,'pix','pago',1,100.00),('PED0014','em separação','2025-02-10 21:00:00',30.00,600.00,14,'cartao de credito','pendente',2,60.00),('PED0015','enviado','2025-02-10 22:00:00',0.00,700.00,15,'fisico','pago',3,70.00),('PED0016','em produção','2025-02-10 23:00:00',50.00,900.00,16,'pix','pendente',4,90.00),('PED0017','em separação','2025-02-10 00:30:00',25.00,500.00,17,'cartao de credito','pago',1,50.00),('PED0018','enviado','2025-02-10 01:00:00',15.00,350.00,18,'fisico','pendente',2,35.00),('PED0019','em produção','2025-02-10 02:00:00',0.00,1200.00,19,'pix','pago',3,120.00),('PED0020','em separação','2025-02-10 03:00:00',10.00,750.00,20,'cartao de credito','pendente',4,75.00),('PED0021','enviado','2025-02-10 04:00:00',5.00,400.00,21,'fisico','pago',1,40.00),('PED0022','em produção','2025-02-10 05:00:00',0.00,1500.00,22,'pix','pendente',2,150.00),('PED0023','em separação','2025-02-10 06:00:00',10.00,600.00,23,'cartao de credito','pago',3,60.00),('PED0024','enviado','2025-02-10 07:00:00',0.00,850.00,24,'fisico','pendente',4,85.00),('PED0025','em produção','2025-02-10 08:30:00',20.00,700.00,25,'pix','pago',1,70.00),('PED0026','em separação','2025-02-10 09:30:00',5.00,480.00,26,'cartao de credito','pendente',2,48.00),('PED0027','enviado','2025-02-10 10:30:00',0.00,950.00,27,'fisico','pago',3,95.00),('PED0028','em produção','2025-02-10 11:30:00',15.00,450.00,28,'pix','pendente',4,45.00),('PED0029','em separação','2025-02-10 12:30:00',0.00,1250.00,29,'cartao de credito','pago',1,125.00),('PED0030','enviado','2025-02-10 13:30:00',0.00,600.00,30,'fisico','pendente',2,60.00),('PED0031','em produção','2025-02-10 14:00:00',0.00,1300.00,31,'pix','pago',3,130.00),('PED0032','em separação','2025-02-10 15:00:00',10.00,550.00,32,'cartao de credito','pendente',4,55.00),('PED0033','enviado','2025-02-10 16:00:00',20.00,600.00,33,'fisico','pago',1,60.00),('PED0034','em produção','2025-02-10 17:00:00',30.00,900.00,34,'pix','pendente',2,90.00),('PED0035','em separação','2025-02-10 18:00:00',5.00,500.00,35,'cartao de credito','pago',3,50.00),('PED0036','enviado','2025-02-10 19:00:00',0.00,1100.00,36,'fisico','pendente',4,110.00),('PED0037','em produção','2025-02-10 20:00:00',10.00,650.00,37,'pix','pago',1,65.00),('PED0038','em separação','2025-02-10 21:00:00',20.00,800.00,38,'cartao de credito','pendente',2,80.00),('PED0039','enviado','2025-02-10 22:00:00',0.00,600.00,39,'fisico','pago',3,60.00),('PED0040','em produção','2025-02-10 23:00:00',50.00,1500.00,40,'pix','pendente',4,150.00),('PED0041','em separação','2025-02-11 00:00:00',5.00,500.00,41,'cartao de credito','pago',1,50.00),('PED0042','enviado','2025-02-11 01:00:00',0.00,400.00,42,'fisico','pendente',2,40.00),('PED0043','em produção','2025-02-11 02:00:00',15.00,750.00,43,'pix','pago',3,75.00),('PED0044','em separação','2025-02-11 03:00:00',30.00,1000.00,44,'cartao de credito','pendente',4,100.00),('PED0045','enviado','2025-02-11 04:00:00',0.00,950.00,45,'fisico','pago',1,95.00),('PED0046','em produção','2025-02-11 05:00:00',25.00,1200.00,46,'pix','pendente',2,120.00),('PED0047','em separação','2025-02-11 06:00:00',5.00,550.00,47,'cartao de credito','pago',3,55.00),('PED0048','enviado','2025-02-11 07:00:00',0.00,850.00,48,'fisico','pendente',4,85.00),('PED0049','em produção','2025-02-11 08:00:00',0.00,950.00,49,'pix','pago',1,95.00),('PED0050','em separação','2025-02-11 09:00:00',0.00,700.00,50,'cartao de credito','pendente',2,70.00);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `descricao` text,
  `status_produto` enum('em producao','concluido') NOT NULL DEFAULT 'em producao',
  `valor_unitario_total` decimal(8,2) NOT NULL,
  `fk_pedido_numero_do_pedido` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `fk_pedido_numero_do_pedido` (`fk_pedido_numero_do_pedido`),
  CONSTRAINT `produto_chk_1` CHECK ((`valor_unitario_total` > 0))
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Plotagem Capô de Carro','Plotagem de capô de carro 50x30','em producao',120.00,'PED0001'),(2,'Fachada de ACM','Fachada de ACM 2x1.5 metros','em producao',850.00,'PED0001'),(3,'Plotagem de Lona','Plotagem em lona 1.50x0.80 metros','em producao',200.00,'PED0002'),(4,'Adesivo Vinil','Adesivo Vinil para comunicação visual','em producao',150.00,'PED0002'),(5,'Fachada de ACM','Fachada de ACM 3x2 metros','em producao',900.00,'PED0003'),(6,'Adesivo Impressão Digital','Adesivo impresso em material digital 50x30','em producao',100.00,'PED0004'),(7,'Plotagem de Carro','Plotagem personalizada 1.20x0.80 metros','em producao',250.00,'PED0004'),(8,'Fachada de ACM','Fachada de ACM com acabamento de alta resistência','em producao',1100.00,'PED0005'),(9,'Plotagem Banner','Banner impresso com design personalizado','em producao',220.00,'PED0006'),(10,'Fachada Luminosa','Fachada luminosa em ACM 3x1 metros','em producao',1050.00,'PED0007'),(11,'Adesivo Impressão Digital','Adesivo de impressão digital 80x60','em producao',150.00,'PED0007'),(12,'Fachada de ACM','Fachada com acabamento detalhado em ACM 2x1.5 metros','em producao',1200.00,'PED0008'),(13,'Plotagem de Lona','Plotagem em lona 2x1 metros','em producao',180.00,'PED0009'),(14,'Fachada de Policarbonato','Fachada em policarbonato 2x2 metros','em producao',950.00,'PED0009'),(15,'Plotagem de Carro','Plotagem para carro com adesivo vinil 1.5x0.80 metros','em producao',200.00,'PED0010'),(16,'Fachada de ACM','Fachada de ACM 2.5x1.5 metros','em producao',1300.00,'PED0011'),(17,'Adesivo Vinil','Adesivo vinil personalizado para loja','em producao',120.00,'PED0011'),(18,'Plotagem de Lona','Plotagem de lona 1.5x1 metros','em producao',250.00,'PED0012'),(19,'Fachada de ACM','Fachada com acabamento em alumínio composto 2.5x2 metros','em producao',1200.00,'PED0013'),(20,'Plotagem de Carro','Plotagem do capô do carro 50x30','em producao',150.00,'PED0014'),(21,'Adesivo Impressão Digital','Adesivo com impressão digital 1x0.5 metros','em producao',180.00,'PED0014'),(22,'Fachada de ACM','Fachada luminosa de ACM 3x1 metros','em producao',1400.00,'PED0015'),(23,'Plotagem de Lona','Plotagem de lona para fachada de loja 2x1 metros','em producao',220.00,'PED0016'),(24,'Fachada de Policarbonato','Fachada em policarbonato 2x1 metros','em producao',1000.00,'PED0017'),(25,'Plotagem Banner','Banner de lona 1.5x0.80 metros','em producao',170.00,'PED0017'),(26,'Plotagem Capô de Carro','Plotagem de capô 50x30','em producao',120.00,'PED0018'),(27,'Adesivo Vinil','Adesivo vinil para comunicação visual 1.5x0.5 metros','em producao',150.00,'PED0018'),(28,'Fachada de ACM','Fachada de ACM 3x2 metros com acabamento sofisticado','em producao',1400.00,'PED0019'),(29,'Plotagem de Lona','Plotagem de lona 2x1.5 metros para outdoor','em producao',230.00,'PED0020'),(30,'Adesivo Impressão Digital','Adesivo impresso para fachada 1.5x0.8 metros','em producao',180.00,'PED0020'),(31,'Fachada de Policarbonato','Fachada de policarbonato 2x2 metros','em producao',950.00,'PED0021'),(32,'Plotagem de Carro','Plotagem de capô de carro 60x40','em producao',160.00,'PED0021'),(33,'Fachada Luminosa','Fachada luminosa de ACM 2x1 metros','em producao',1200.00,'PED0022'),(34,'Plotagem de Lona','Plotagem de lona 1.5x1 metros','em producao',220.00,'PED0022'),(35,'Plotagem Banner','Banner impresso para evento 1.5x0.80 metros','em producao',250.00,'PED0023'),(36,'Adesivo Vinil','Adesivo vinil para vitrine 1.2x0.8 metros','em producao',130.00,'PED0024'),(37,'Fachada de ACM','Fachada de ACM 2x2 metros','em producao',1300.00,'PED0024'),(38,'Plotagem de Lona','Plotagem de lona para fachada de loja 2x1 metros','em producao',250.00,'PED0025'),(39,'Fachada de Policarbonato','Fachada com acabamento em Policarbonato 2x1 metros','em producao',950.00,'PED0026'),(40,'Fachada de ACM','Fachada de ACM 2x1.5 metros para loja','em producao',1150.00,'PED0027'),(41,'Plotagem de Lona','Plotagem em lona 2x1 metros para evento','em producao',220.00,'PED0027'),(42,'Plotagem de Carro','Plotagem para carro 1.20x0.60 metros','em producao',180.00,'PED0028'),(43,'Fachada de ACM','Fachada com revestimento de ACM 3x2 metros','em producao',1300.00,'PED0029'),(44,'Plotagem Banner','Banner de lona 2x1 metros','em producao',210.00,'PED0029'),(45,'Fachada Luminosa','Fachada luminosa de ACM para loja 3x1 metros','em producao',1500.00,'PED0030'),(46,'Plotagem de Lona','Plotagem de lona 2x1.5 metros para fachada','em producao',240.00,'PED0031'),(47,'Adesivo Vinil','Adesivo vinil 1x0.5 metros para parede','em producao',100.00,'PED0031'),(48,'Plotagem Capô de Carro','Plotagem de capô de carro 50x30','em producao',120.00,'PED0032'),(49,'Fachada de Policarbonato','Fachada de policarbonato 2x1 metros','em producao',950.00,'PED0032'),(50,'Fachada de ACM','Fachada de ACM com acabamento em alumínio composto','em producao',1350.00,'PED0033'),(51,'Plotagem Banner','Banner impresso para evento 2x1 metros','em producao',200.00,'PED0033'),(52,'Fachada Luminosa','Fachada de ACM luminosa 3x1 metros','em producao',1400.00,'PED0034'),(53,'Plotagem de Lona','Plotagem de lona 1.5x1 metros para evento','em producao',220.00,'PED0035'),(54,'Adesivo Impressão Digital','Adesivo impresso para comunicação visual','em producao',180.00,'PED0035'),(55,'Fachada de Policarbonato','Fachada em policarbonato 2x2 metros','em producao',950.00,'PED0036'),(56,'Plotagem de Carro','Plotagem de capô 50x30','em producao',130.00,'PED0037'),(57,'Fachada de ACM','Fachada de ACM 2x1 metros','em producao',1200.00,'PED0037'),(58,'Fachada de ACM','Fachada de ACM para fachada de loja 2.5x1 metros','em producao',1300.00,'PED0038'),(59,'Adesivo Vinil','Adesivo vinil 1.2x0.8 metros para loja','em producao',150.00,'PED0038'),(60,'Fachada de Policarbonato','Fachada de policarbonato para loja 3x1 metros','em producao',1200.00,'PED0039'),(61,'Plotagem de Lona','Plotagem de lona 1.5x0.8 metros','em producao',180.00,'PED0039'),(62,'Plotagem de Carro','Plotagem para carro 60x40','em producao',160.00,'PED0040'),(63,'Fachada Luminosa','Fachada luminosa de ACM para evento 3x1 metros','em producao',1400.00,'PED0040'),(64,'Plotagem Banner','Banner impresso 1.5x1 metros','em producao',220.00,'PED0041'),(65,'Adesivo Impressão Digital','Adesivo impresso para vitrine 1.2x0.5 metros','em producao',100.00,'PED0041'),(66,'Fachada de ACM','Fachada de ACM 3x2 metros para loja','em producao',1500.00,'PED0042'),(67,'Plotagem de Lona','Plotagem de lona 2x1.5 metros para fachada','em producao',240.00,'PED0042'),(68,'Fachada de Policarbonato','Fachada de policarbonato 2x2 metros com acabamento','em producao',950.00,'PED0043'),(69,'Plotagem de Carro','Plotagem para capô de carro 50x30','em producao',120.00,'PED0043'),(70,'Fachada Luminosa','Fachada luminosa de ACM para loja 3x1 metros','em producao',1300.00,'PED0044'),(71,'Plotagem Banner','Banner de lona 2x1 metros para evento','em producao',200.00,'PED0044'),(72,'Plotagem de Lona','Plotagem de lona 1.5x1 metros para evento','em producao',230.00,'PED0045'),(73,'Fachada de ACM','Fachada de ACM 2x1.5 metros para loja','em producao',1200.00,'PED0046'),(74,'Adesivo Vinil','Adesivo vinil 1.5x0.5 metros','em producao',150.00,'PED0046'),(75,'Plotagem de Carro','Plotagem para capô de carro 60x40','em producao',150.00,'PED0047'),(76,'Fachada de Policarbonato','Fachada de policarbonato 2x1 metros','em producao',950.00,'PED0047'),(77,'Fachada Luminosa','Fachada luminosa de ACM para loja 3x2 metros','em producao',1400.00,'PED0048'),(78,'Plotagem Banner','Banner para evento 2x1 metros','em producao',220.00,'PED0048'),(79,'Plotagem de Lona','Plotagem de lona 2x1 metros para evento','em producao',250.00,'PED0049'),(80,'Adesivo Impressão Digital','Adesivo de impressão digital para fachada 1.5x0.8 metros','em producao',180.00,'PED0049'),(81,'Fachada de Policarbonato','Fachada de policarbonato 2x1 metros','em producao',950.00,'PED0050'),(82,'Plotagem de Carro','Plotagem para capô de carro 50x30','em producao',120.00,'PED0050');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produz`
--

DROP TABLE IF EXISTS `produz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produz` (
  `fk_funcionario_id` int DEFAULT NULL,
  `fk_produto_codigo` int DEFAULT NULL,
  `custo_mao_de_obra` decimal(6,2) DEFAULT NULL,
  KEY `fk_funcionario_id` (`fk_funcionario_id`),
  KEY `fk_produto_codigo` (`fk_produto_codigo`),
  CONSTRAINT `produz_chk_1` CHECK ((`custo_mao_de_obra` > 0))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produz`
--

LOCK TABLES `produz` WRITE;
/*!40000 ALTER TABLE `produz` DISABLE KEYS */;
INSERT INTO `produz` VALUES (7,1,25.50),(8,2,40.75),(9,3,15.20),(10,4,80.60),(7,5,55.90),(8,6,30.45),(9,7,70.25),(10,8,90.10),(7,9,20.80),(8,10,60.35),(9,11,45.50),(10,12,35.90),(7,13,50.75),(8,14,85.30),(9,15,95.40),(10,16,12.25),(7,17,22.15),(8,18,33.60),(9,19,44.50),(10,20,77.75),(7,21,88.90),(8,22,66.30),(9,23,55.40),(10,24,14.25),(7,25,19.80),(8,26,29.10),(9,27,39.90),(10,28,49.60),(7,29,79.30),(8,30,69.50),(9,31,59.40),(10,32,48.25),(7,33,37.15),(8,34,26.80),(9,35,16.45),(10,36,82.60),(7,37,93.75),(8,38,53.40),(9,39,63.25),(10,40,73.80),(7,41,83.90),(8,42,92.50),(9,43,11.20),(10,44,21.30),(7,45,31.40),(8,46,41.50),(9,47,51.60),(10,48,61.70),(7,49,71.80),(8,50,81.90),(9,51,91.00),(10,52,13.10),(7,53,23.20),(8,54,33.30),(9,55,43.40),(10,56,53.50),(7,57,63.60),(8,58,73.70),(9,59,83.80),(10,60,93.90),(7,61,14.00),(8,62,24.10),(9,63,34.20),(10,64,44.30),(7,65,54.40),(8,66,64.50),(9,67,74.60),(10,68,84.70),(7,69,94.80),(8,70,15.90),(9,71,26.00),(10,72,36.10),(7,73,46.20),(8,74,56.30),(9,75,66.40),(10,76,76.50),(7,77,86.60),(8,78,96.70),(9,79,17.80),(10,80,27.90),(7,81,38.00),(8,82,48.10);
/*!40000 ALTER TABLE `produz` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-10 14:16:12
