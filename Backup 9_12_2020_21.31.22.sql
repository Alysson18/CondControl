-- MySqlBackup.NET 2.3.3
-- Dump Time: 2020-12-09 21:31:23
-- --------------------------------------
-- Server version 8.0.21 MySQL Community Server - GPL


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 
-- Definition of tb_controleacesso
-- 

DROP TABLE IF EXISTS `tb_controleacesso`;
CREATE TABLE IF NOT EXISTS `tb_controleacesso` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) NOT NULL,
  `Telefone` varchar(45) DEFAULT NULL,
  `Rg` varchar(45) NOT NULL,
  `Endereco` varchar(45) DEFAULT NULL,
  `Apartamento` varchar(45) NOT NULL,
  `Proprietario` varchar(45) DEFAULT NULL,
  `Data` varchar(45) NOT NULL,
  `Hora_de_Entrada` varchar(45) DEFAULT NULL,
  `Hora_de_Saida` varchar(45) DEFAULT NULL,
  `Porteiro_Responsavel_Entrada` varchar(45) DEFAULT NULL,
  `Porteiro_Responsavel_Saida` varchar(45) DEFAULT NULL,
  `Alteracao` varchar(45) DEFAULT NULL,
  `Codigo_de_Acesso` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table tb_controleacesso
-- 

/*!40000 ALTER TABLE `tb_controleacesso` DISABLE KEYS */;
INSERT INTO `tb_controleacesso`(`ID`,`Nome`,`Telefone`,`Rg`,`Endereco`,`Apartamento`,`Proprietario`,`Data`,`Hora_de_Entrada`,`Hora_de_Saida`,`Porteiro_Responsavel_Entrada`,`Porteiro_Responsavel_Saida`,`Alteracao`,`Codigo_de_Acesso`) VALUES
(1,'Jose da Silva','(18) 99979-7977','17.854.201-1','Rua Ambar','351','Daniel de Jesus Souza','04/12/2020','04/12/2020 20:47:56','04/12/2020 22:19:53','Alysson Gabriel de Oliveira Paulino','Alysson Gabriel de Oliveira Paulino','2','00000');
/*!40000 ALTER TABLE `tb_controleacesso` ENABLE KEYS */;

-- 
-- Definition of tb_funcionariointerno
-- 

DROP TABLE IF EXISTS `tb_funcionariointerno`;
CREATE TABLE IF NOT EXISTS `tb_funcionariointerno` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) DEFAULT NULL,
  `RG` varchar(45) NOT NULL,
  `CPF` varchar(45) NOT NULL,
  `Funcao` varchar(45) DEFAULT NULL,
  `Endereco` varchar(45) DEFAULT NULL,
  `NumeroCasa` varchar(45) DEFAULT NULL,
  `Telefone` varchar(45) DEFAULT NULL,
  `Email` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2005 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table tb_funcionariointerno
-- 

/*!40000 ALTER TABLE `tb_funcionariointerno` DISABLE KEYS */;
INSERT INTO `tb_funcionariointerno`(`Id`,`Nome`,`RG`,`CPF`,`Funcao`,`Endereco`,`NumeroCasa`,`Telefone`,`Email`) VALUES
(2000,'Alysson Gabriel de Oliveira Paulino','11.734.451-5','724.751.718-20','Administrador','Braulino Barbosa de Souza','610','(18) 98196-5692','alysson.paulino@hotmail.com'),
(2001,'Daniel Escudeiro Rodrigues','37.005.778-8','903.801.298-50','Porteiro','Avenida 9 de Julho','20','(18) 97566-7417','dancaescudeiro@gmail.com'),
(2002,'Guilherme Dos Santos Munhos','12.345.678-0','845.895.410-92','Porteiro','Rodrigues dos Santos Adalberto','110','(18) 99654-9055','guiguilherme.santos85@gmail.com'),
(2003,'Roberto da Cruz Brunelli ','23.090.294-7','477.314.158-13','Porteiro','Avenida Rodrigues Alvez','55','(18) 99654-9055','robertobrunelli57@gmail.com'),
(2004,'Andre Benedito das Neves','13.816.734-5','544.800.419-90','Vigia','Osvaldo Luiz Thiago Rodrigues','613','(18) 99854-4554','teste@funcionario.com');
/*!40000 ALTER TABLE `tb_funcionariointerno` ENABLE KEYS */;

-- 
-- Definition of tb_morador
-- 

DROP TABLE IF EXISTS `tb_morador`;
CREATE TABLE IF NOT EXISTS `tb_morador` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) DEFAULT NULL,
  `RG` varchar(45) DEFAULT NULL,
  `CPF` varchar(45) DEFAULT NULL,
  `Telefone` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Endereco` varchar(45) DEFAULT NULL,
  `NumeroCasa` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table tb_morador
-- 

/*!40000 ALTER TABLE `tb_morador` DISABLE KEYS */;
INSERT INTO `tb_morador`(`Id`,`Nome`,`RG`,`CPF`,`Telefone`,`Email`,`Endereco`,`NumeroCasa`) VALUES
(1,'Henry Francisco Rodrigues','46.088.391-4','033.381.459-26','(19) 99745-5445','teste@projeto.com','Avenida José Alves de Lima','345'),
(2,'JOSEFA BITENCOURT','12.547.954-2','724.772.460-97','(18) 99799-7779','JOSEFA@EMAIL.COM','AVIAÇÃO','30');
/*!40000 ALTER TABLE `tb_morador` ENABLE KEYS */;

-- 
-- Definition of tb_pontofuncionario
-- 

DROP TABLE IF EXISTS `tb_pontofuncionario`;
CREATE TABLE IF NOT EXISTS `tb_pontofuncionario` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Cod_Funcionario` int NOT NULL,
  `Data` varchar(45) NOT NULL,
  `Hora_de_Entrada_Manha` varchar(45) DEFAULT NULL,
  `Hora_de_Saida_Manha` varchar(45) DEFAULT NULL,
  `Hora_de_Entrada_Tarde` varchar(45) DEFAULT NULL,
  `Hora_de_Saida_Tarde` varchar(45) DEFAULT NULL,
  `Controle` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id_UNIQUE` (`Id`),
  KEY `FK_CodFuncionario` (`Cod_Funcionario`),
  CONSTRAINT `FK_CodFuncionario` FOREIGN KEY (`Cod_Funcionario`) REFERENCES `tb_funcionariointerno` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table tb_pontofuncionario
-- 

/*!40000 ALTER TABLE `tb_pontofuncionario` DISABLE KEYS */;
INSERT INTO `tb_pontofuncionario`(`Id`,`Cod_Funcionario`,`Data`,`Hora_de_Entrada_Manha`,`Hora_de_Saida_Manha`,`Hora_de_Entrada_Tarde`,`Hora_de_Saida_Tarde`,`Controle`) VALUES
(1,2000,'03/12/2020','22:08:18',NULL,NULL,NULL,'1'),
(2,2000,'04/12/2020','20:50:06',NULL,NULL,NULL,'1');
/*!40000 ALTER TABLE `tb_pontofuncionario` ENABLE KEYS */;

-- 
-- Definition of tb_trabalhador
-- 

DROP TABLE IF EXISTS `tb_trabalhador`;
CREATE TABLE IF NOT EXISTS `tb_trabalhador` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) DEFAULT NULL,
  `Telefone` varchar(45) DEFAULT NULL,
  `RG` varchar(45) DEFAULT NULL,
  `Tipo_de_Servico` varchar(45) DEFAULT NULL,
  `Data_Inicio` varchar(45) DEFAULT NULL,
  `Data_Fim` varchar(45) DEFAULT NULL,
  `Acesso` varchar(45) DEFAULT NULL,
  `Endereco` varchar(45) DEFAULT NULL,
  `Casa` varchar(45) DEFAULT NULL,
  `Propietario` varchar(45) DEFAULT NULL,
  `Porteiro_Responsavel_Cadastro` varchar(45) DEFAULT NULL,
  `Codigo_de_Acesso` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table tb_trabalhador
-- 

/*!40000 ALTER TABLE `tb_trabalhador` DISABLE KEYS */;
INSERT INTO `tb_trabalhador`(`ID`,`Nome`,`Telefone`,`RG`,`Tipo_de_Servico`,`Data_Inicio`,`Data_Fim`,`Acesso`,`Endereco`,`Casa`,`Propietario`,`Porteiro_Responsavel_Cadastro`,`Codigo_de_Acesso`) VALUES
(1,'ALGUEM','1','11.111.111-1','PEDREIRO','01/12/2020','01/12/2020','LIBERADO','SADA','32','22AA','Alysson Gabriel de Oliveira Paulino','2d4362');
/*!40000 ALTER TABLE `tb_trabalhador` ENABLE KEYS */;

-- 
-- Definition of tb_usuarios
-- 

DROP TABLE IF EXISTS `tb_usuarios`;
CREATE TABLE IF NOT EXISTS `tb_usuarios` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Cod_Funcionario` int NOT NULL,
  `Nome` varchar(45) NOT NULL,
  `Usuario` varchar(45) NOT NULL,
  `Senha` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Nivel_Acesso` varchar(45) NOT NULL,
  `Acesso` varchar(45) NOT NULL,
  `Tema` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Usuario_UNIQUE` (`Usuario`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `Cod_Funcionario_UNIQUE` (`Cod_Funcionario`),
  KEY `FK_Cod_Funcionario_idx` (`Cod_Funcionario`),
  CONSTRAINT `FK_Cod_Funcionario` FOREIGN KEY (`Cod_Funcionario`) REFERENCES `tb_funcionariointerno` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table tb_usuarios
-- 

/*!40000 ALTER TABLE `tb_usuarios` DISABLE KEYS */;
INSERT INTO `tb_usuarios`(`ID`,`Cod_Funcionario`,`Nome`,`Usuario`,`Senha`,`Nivel_Acesso`,`Acesso`,`Tema`) VALUES
(1,2000,'Alysson Gabriel de Oliveira Paulino','alysson.paulino@hotmail.com','2206','Administrador','Liberado',' '),
(2,2001,'Daniel Escudeiro Rodrigues','dancaescudeiro@gmail.com','8d0252','Porteiro','Liberado',' '),
(3,2002,'Guilherme Dos Santos Munhos','guiguilherme.santos85@gmail.com','123456','Porteiro','Liberado',' '),
(4,2003,'Roberto da Cruz Brunelli ','robertobrunelli57@gmail.com','6841c7','Porteiro','Bloqueado',' ');
/*!40000 ALTER TABLE `tb_usuarios` ENABLE KEYS */;

-- 
-- Dumping views
-- 

DROP TABLE IF EXISTS `vw_join_ponto`;
DROP VIEW IF EXISTS `vw_join_ponto`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_join_ponto` AS select `tb_pontofuncionario`.`Cod_Funcionario` AS `Codigo Funcionario`,`tb_funcionariointerno`.`Nome` AS `Nome`,`tb_funcionariointerno`.`RG` AS `Rg`,`tb_funcionariointerno`.`CPF` AS `CPF`,`tb_pontofuncionario`.`Data` AS `Data`,`tb_pontofuncionario`.`Hora_de_Entrada_Manha` AS `Inicio do Expediente`,`tb_pontofuncionario`.`Hora_de_Saida_Manha` AS `Saida Refeição`,`tb_pontofuncionario`.`Hora_de_Entrada_Tarde` AS `Entrada Pós Refeição`,`tb_pontofuncionario`.`Hora_de_Saida_Tarde` AS `Fim Expediente` from (`tb_pontofuncionario` join `tb_funcionariointerno` on((`tb_funcionariointerno`.`Id` = `tb_pontofuncionario`.`Cod_Funcionario`)));



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


-- Dump completed on 2020-12-09 21:31:23
-- Total time: 0:0:0:0:331 (d:h:m:s:ms)
