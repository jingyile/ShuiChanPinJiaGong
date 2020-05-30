-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: action0
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bas_bom`
--

DROP TABLE IF EXISTS `bas_bom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bas_bom` (
  `id` varchar(64) NOT NULL,
  `bomName` varchar(64) NOT NULL DEFAULT '' COMMENT 'bom名称',
  `bomVersion` varchar(64) NOT NULL DEFAULT '' COMMENT 'bom版本',
  `product_id` varchar(64) NOT NULL DEFAULT '' COMMENT '产品编号',
  `status` varchar(20) NOT NULL DEFAULT '' COMMENT '状态',
  `create_by` varchar(64) NOT NULL DEFAULT '' COMMENT '创建者',
  `create_date` datetime NOT NULL DEFAULT '2000-10-10 00:00:00' COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL DEFAULT '' COMMENT '更新着',
  `update_date` datetime NOT NULL DEFAULT '2000-10-10 00:00:00' COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT '' COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物料清单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bas_bom`
--

LOCK TABLES `bas_bom` WRITE;
/*!40000 ALTER TABLE `bas_bom` DISABLE KEYS */;
INSERT INTO `bas_bom` VALUES ('12b76351cd884da39d0f1672418cd7fd','asS','SDad','2863063d53464663be4728a9685a3c79','asd','1e3851a285a4474c99fde9f824315168','2019-09-09 17:21:06','1e3851a285a4474c99fde9f824315168','2019-09-09 17:21:06',NULL,'1'),('4f5d2cc6cd2c41b8bd031acb9aa937d7','鱿鱼BOM','V1.0','1','已核审','1','2018-05-18 18:39:05','1','2018-05-26 17:17:27',NULL,'0'),('5e57ceab41f84578824e36e36ae39516','金枪鱼BOM','V2.0','2','已核审','1','2018-05-18 18:39:27','1','2018-05-26 17:17:16',NULL,'0'),('74c56abab9844bfba43ba65dffd11944','马哈鱼BOM','V1.0','f1754ab55f5847a6963d306b10409db3','已核审','1','2018-05-26 17:35:01','1','2018-05-26 17:35:01',NULL,'0'),('7e5d5d063fa146fe8870ea33c5264782','深海鱼biss','１','bab98a528be1428ba16f8106e69534a8','１','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-11 08:49:40','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-11 08:49:40',NULL,'0');
/*!40000 ALTER TABLE `bas_bom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bas_bom_detail`
--

DROP TABLE IF EXISTS `bas_bom_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bas_bom_detail` (
  `id` varchar(64) NOT NULL,
  `bom_id` varchar(64) NOT NULL,
  `mType` varchar(64) NOT NULL,
  `mNum` int(11) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `del_flag` char(1) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `create_by` varchar(64) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(64) NOT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bas_bom_detail`
--

LOCK TABLES `bas_bom_detail` WRITE;
/*!40000 ALTER TABLE `bas_bom_detail` DISABLE KEYS */;
INSERT INTO `bas_bom_detail` VALUES ('acc320842b944ec296f37fe31d5268f1','5e57ceab41f84578824e36e36ae39516','bag200',12,'k','1',NULL,'1e3851a285a4474c99fde9f824315168','2019-09-10 10:20:23','1e3851a285a4474c99fde9f824315168','2019-09-10 10:20:23'),('bb34f97a15da48208b0d0dad88827577','7e5d5d063fa146fe8870ea33c5264782','fresh_salmon',2,'k','0',NULL,'fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-11 08:50:13','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-11 08:50:13'),('d0c34250c79c457a89009cdcf43d79f8','74c56abab9844bfba43ba65dffd11944','fresh_salmon',22,'kg','0',NULL,'1e3851a285a4474c99fde9f824315168','2019-09-10 10:20:10','1e3851a285a4474c99fde9f824315168','2019-09-10 10:20:10');
/*!40000 ALTER TABLE `bas_bom_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bas_cardreader`
--

DROP TABLE IF EXISTS `bas_cardreader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bas_cardreader` (
  `qrCode` varchar(20) NOT NULL DEFAULT '' COMMENT '设备条码',
  `type` varchar(64) DEFAULT NULL COMMENT '设备类型id，外键，参照EquipmentType表',
  `spec` varchar(64) DEFAULT NULL COMMENT '设备规格id，外键，参照EquipmentSpec表',
  `cell_id` varchar(64) DEFAULT NULL COMMENT '工位',
  `station_id` varchar(64) DEFAULT NULL COMMENT '工站',
  `supplier` varchar(20) DEFAULT NULL COMMENT '供应商',
  `manufacturer` varchar(20) DEFAULT NULL COMMENT '生产厂商',
  `factoryNumber` varchar(20) DEFAULT NULL COMMENT '出厂编号',
  `purpose` varchar(20) DEFAULT NULL COMMENT '用途',
  `buyDate` date DEFAULT NULL COMMENT '购置时间',
  `person` varchar(20) DEFAULT NULL COMMENT '资产负责人',
  `organization` varchar(20) DEFAULT NULL COMMENT '所有权部门',
  `ip` varchar(32) DEFAULT NULL COMMENT 'ip',
  `comBaudrate` varchar(20) DEFAULT NULL COMMENT 'com波特率',
  `comDataseat` varchar(20) DEFAULT NULL COMMENT 'com数据位',
  `comBegin` varchar(20) DEFAULT NULL COMMENT 'com起始位',
  `comEnd` varchar(20) DEFAULT NULL COMMENT 'com终止位',
  `checkMode` varchar(20) DEFAULT NULL COMMENT '校验方式',
  `sysParam` varchar(20) DEFAULT NULL COMMENT '系统简单属性',
  `readerSpeed` varchar(20) DEFAULT NULL COMMENT '读卡速度',
  `timeInterval` varchar(20) DEFAULT NULL COMMENT '打卡间隔',
  `distance` varchar(20) DEFAULT NULL COMMENT '感应距离',
  `readerType` varchar(20) DEFAULT NULL COMMENT '读卡类型',
  `frequency` varchar(20) DEFAULT NULL COMMENT '读卡频率',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) NOT NULL COMMENT '删除标记',
  `id` varchar(64) NOT NULL COMMENT '编号',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `CardReader_ibfk_1` (`type`),
  KEY `CardReader_ibfk_2` (`spec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bas_cardreader`
--

LOCK TABLES `bas_cardreader` WRITE;
/*!40000 ALTER TABLE `bas_cardreader` DISABLE KEYS */;
INSERT INTO `bas_cardreader` VALUES ('02','0003','0003','5dbf19c4e1614576aff68eda48db8d74','8f218ef3004d430085f7160a15d0a4ec','','','','','2019-09-26','2','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','','','1','2019-09-26 19:41:52','1','2019-09-26 19:41:52',NULL,'0','57b30b6444fd4ffe95dd61c5945af9f3');
/*!40000 ALTER TABLE `bas_cardreader` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bas_cell_employee`
--

DROP TABLE IF EXISTS `bas_cell_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bas_cell_employee` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `employee_id` varchar(64) NOT NULL COMMENT '员工编号',
  `cell_id` varchar(64) DEFAULT NULL COMMENT '工位编号',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) DEFAULT NULL COMMENT '删除标记',
  `create_by` varchar(64) NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新人',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bas_cell_employee`
--

LOCK TABLES `bas_cell_employee` WRITE;
/*!40000 ALTER TABLE `bas_cell_employee` DISABLE KEYS */;
INSERT INTO `bas_cell_employee` VALUES ('0038acb2251340a6a979cd24e0e7f9e0','2af999a9d0054aaf95e42a20d89e29f0','09b853edcb854268957e9c26f7371480',NULL,'0','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-07 18:00:27','1','2019-09-26 10:33:19'),('398ce6f19d314ef49776259aa18860e7','daf00402388c4c1fabcd7ea832f497d4','dfc99609cca644cc9af0703c5d231b1b',NULL,'1','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-07 18:55:49','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-07 18:55:49'),('44be0da2624145dc94288555547f7055','c918784605a242538b7e5b197dd982d7','c2f0f0924cbe4b5d9f3437355ddaf3c5',NULL,'0','1','2019-09-25 19:38:25','1','2019-09-25 19:38:25'),('4f2ba015cc4f4938a1b69b95783a793c','6','66d2e09e0fe244cba3598e0686d96409',NULL,'0','1','2019-09-26 09:03:57','1','2019-09-27 11:30:05'),('67ea3eee2cac436694cb15057ec2f104','6','c2f0f0924cbe4b5d9f3437355ddaf3c5',NULL,'0','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-07 18:56:03','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-07 18:56:03'),('8c081870b4ba4a6aacfc043c6b060c45','daf00402388c4c1fabcd7ea832f497d4','dfc99609cca644cc9af0703c5d231b1b',NULL,'1','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-07 17:42:39','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-07 17:42:39'),('a657ef6839cb43548d2ee1a3c9dcd2f1','5db5f07b56434cff82e0eaeb17318049','f9a882d5150e43378ee11972a58f7e0c',NULL,'0','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-07 16:59:01','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-07 16:59:01'),('f1899d5f9ece49e097ed5a0ed314dfa7','1012fef7efaf47da9ac039b303f9da90','86bdd12fd951410d9a59f4ee1fdd7469',NULL,'0','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-24 16:40:28','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-24 16:40:28'),('f7759ac8a742401d8937c1e717bb58a9','0c117a96744542b68f5c39b744190d4f','c2f0f0924cbe4b5d9f3437355ddaf3c5',NULL,'0','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-16 15:46:37','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-24 11:27:16');
/*!40000 ALTER TABLE `bas_cell_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bas_codeprinter`
--

DROP TABLE IF EXISTS `bas_codeprinter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bas_codeprinter` (
  `qrCode` varchar(20) NOT NULL DEFAULT '' COMMENT '设备条码',
  `type` varchar(64) DEFAULT NULL COMMENT '设备类型属性',
  `spec` varchar(64) DEFAULT NULL COMMENT '设备规格属性',
  `cell_id` varchar(64) NOT NULL COMMENT '所属工位',
  `station_id` varchar(64) NOT NULL COMMENT '所属工站',
  `supplier` varchar(20) DEFAULT NULL COMMENT '供应商',
  `manufacturer` varchar(20) DEFAULT NULL COMMENT '生产厂商',
  `factoryNumber` varchar(20) DEFAULT NULL COMMENT '出厂编号',
  `purpose` varchar(20) DEFAULT NULL COMMENT '用途',
  `buyDate` date DEFAULT NULL COMMENT '购置时间',
  `person` varchar(20) DEFAULT NULL COMMENT '资产负责人',
  `organization` varchar(20) DEFAULT NULL COMMENT '所有权部门',
  `ip` varchar(32) DEFAULT NULL COMMENT 'ip',
  `comBaudrate` varchar(20) DEFAULT NULL COMMENT 'com波特率',
  `comDataseat` varchar(20) DEFAULT NULL COMMENT 'com数据位',
  `comBegin` varchar(20) DEFAULT NULL COMMENT 'com起始位',
  `comEnd` varchar(20) DEFAULT NULL COMMENT 'com终止位',
  `checkMode` varchar(20) DEFAULT NULL COMMENT '校验方式',
  `sysParam` varchar(20) DEFAULT NULL COMMENT '系统简单属性',
  `cPNumber` varchar(20) DEFAULT NULL COMMENT '型号',
  `mode` varchar(20) DEFAULT NULL COMMENT '打印模式',
  `resolution` varchar(20) DEFAULT NULL COMMENT '分辨率',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL COMMENT '删除标记',
  `id` varchar(64) NOT NULL COMMENT '编号',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `CodePrinter_ibfk_1` (`type`),
  KEY `CodePrinter_ibfk_2` (`spec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bas_codeprinter`
--

LOCK TABLES `bas_codeprinter` WRITE;
/*!40000 ALTER TABLE `bas_codeprinter` DISABLE KEYS */;
INSERT INTO `bas_codeprinter` VALUES ('001','0002','0001','dfc99609cca644cc9af0703c5d231b1b','8f218ef3004d430085f7160a15d0a4ec','','','','','2019-09-26','22','4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','1','2019-09-26 20:08:48','1','2019-09-26 20:08:48',NULL,'0','de4fe18911fc4b3297320708912e7a8e');
/*!40000 ALTER TABLE `bas_codeprinter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bas_electronsteelyard`
--

DROP TABLE IF EXISTS `bas_electronsteelyard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bas_electronsteelyard` (
  `qrCode` varchar(20) NOT NULL DEFAULT '' COMMENT '设备条码',
  `type` varchar(64) DEFAULT NULL COMMENT '设备类型id，外键，参照EquipmentType表',
  `spec` varchar(64) DEFAULT NULL COMMENT '设备规格id，外键，参照EquipmentSpec表',
  `cell_id` varchar(64) DEFAULT NULL COMMENT '所属工位\n',
  `station_id` varchar(64) DEFAULT NULL COMMENT '所属工站',
  `supplier` varchar(20) DEFAULT NULL COMMENT '供应商',
  `manufacturer` varchar(20) DEFAULT NULL COMMENT '生产厂商',
  `factoryNumber` varchar(20) DEFAULT NULL COMMENT '出厂编号',
  `purpose` varchar(20) DEFAULT NULL COMMENT '用途',
  `buyDate` date DEFAULT NULL COMMENT '采购时间',
  `person` varchar(20) DEFAULT NULL COMMENT '资产负责人',
  `organization` varchar(20) DEFAULT NULL COMMENT '所有权部门',
  `ip` varchar(32) DEFAULT NULL COMMENT 'ip',
  `comBaudrate` varchar(20) DEFAULT NULL COMMENT 'com波特率',
  `comDataseat` varchar(20) DEFAULT NULL COMMENT 'com数据位',
  `comBegin` varchar(20) DEFAULT NULL COMMENT 'com起始位',
  `comEnd` varchar(20) DEFAULT NULL COMMENT 'com终止位',
  `checkMode` varchar(20) DEFAULT NULL COMMENT '校验方式',
  `sysParam` varchar(20) DEFAULT NULL COMMENT '系统简单属性',
  `eSName` varchar(20) DEFAULT NULL COMMENT '名称',
  `eSRange` varchar(20) DEFAULT NULL COMMENT '称量范围',
  `eSWeight` varchar(20) DEFAULT NULL COMMENT '重量',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL COMMENT '删除标记',
  `id` varchar(64) NOT NULL COMMENT '编号',
  PRIMARY KEY (`qrCode`,`id`) USING BTREE,
  KEY `ElectronSteelyard_ibfk_1` (`type`),
  KEY `ElectronSteelyard_ibfk_2` (`spec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bas_electronsteelyard`
--

LOCK TABLES `bas_electronsteelyard` WRITE;
/*!40000 ALTER TABLE `bas_electronsteelyard` DISABLE KEYS */;
INSERT INTO `bas_electronsteelyard` VALUES ('001','0001','0002','86bdd12fd951410d9a59f4ee1fdd7469','7e1c273df5334c648142e72f0045876b','李航','大众','X32-10','称重','2018-05-02','李刚','3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'电子秤','1000Kg','20Kg','1','2018-05-11 10:38:40','1','2019-09-25 10:19:13','0001','0','27a2fbbb4f584c27b641adf934ea5405'),('001','0001','0002','66d2e09e0fe244cba3598e0686d96409','8021d772bf09424f9dc51674ab419431','','','','','2019-09-26','','5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'电子秤','','','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-26 09:30:28','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-26 09:30:28',NULL,'0','79a0a74ca64e4975ab5ae12329c2be7a'),('001','0001','0002','86bdd12fd951410d9a59f4ee1fdd7469','7e1c273df5334c648142e72f0045876b','','','','','2019-09-25','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'电子秤','10-100','','1','2019-09-25 10:40:17','1','2019-09-25 11:21:45',NULL,'0','7eda16df48164aa1947b976dee129e80'),('002','0001','0002',NULL,NULL,'利华电子','长宏电子','X32-36','称重','2018-05-15','王开','5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'嘉华','100kg','20kg','509e20b7d0f9447bbb6098c592b7cb28','2018-05-26 11:57:41','1','2018-05-26 16:20:07','','0','dfd1602cbf30494e970944f7d83e4e60'),('33','0001','0001','c2f0f0924cbe4b5d9f3437355ddaf3c5','63688c609f824834bf0abca0171bc8a7','','','','','2019-09-10','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'gv','','','1e3851a285a4474c99fde9f824315168','2019-09-10 02:24:15','1e3851a285a4474c99fde9f824315168','2019-09-10 02:24:31',NULL,'1','bf1ccda2a3de47b48ac19b735e9f43cb'),('546','0001','0003','1df8a88a68b64aa28ed182a788d71ca9','b704ea7d3af84b9a94a8481891b6526c','11','11','55','55','2019-09-23','李忠林','4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'xiao','10-100','20-100','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-23 15:18:00','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-23 15:18:35',NULL,'0','c313648d37d344548e8b005c83bba391'),('０００３','0001','0001','86bdd12fd951410d9a59f4ee1fdd7469','7e1c273df5334c648142e72f0045876b','','','','','2019-09-25','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'０３','','','1','2019-09-25 10:32:22','1','2019-09-25 10:32:22',NULL,'0','84f330c1b3514f868fa453d35415d129');
/*!40000 ALTER TABLE `bas_electronsteelyard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bas_employees`
--

DROP TABLE IF EXISTS `bas_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bas_employees` (
  `id` varchar(64) NOT NULL COMMENT '员工id',
  `employeeNo` varchar(20) NOT NULL COMMENT '员工编号',
  `employeeName` varchar(20) DEFAULT NULL COMMENT '员工姓名',
  `workDate` date DEFAULT NULL COMMENT '入职日期',
  `sex` char(2) DEFAULT NULL COMMENT '性别',
  `age` int(11) NOT NULL COMMENT '年龄',
  `telNUm` varchar(20) NOT NULL COMMENT '电话',
  `address` varchar(50) NOT NULL COMMENT '地址',
  `email` varchar(50) NOT NULL COMMENT '邮箱',
  `idCard` varchar(20) DEFAULT NULL COMMENT '身份证',
  `officeId` varchar(64) NOT NULL COMMENT '所属部门',
  `remarks` varchar(255) NOT NULL COMMENT '备注',
  `del_flag` char(1) DEFAULT NULL COMMENT '删除标记',
  `create_by` varchar(64) NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新人',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bas_employees`
--

LOCK TABLES `bas_employees` WRITE;
/*!40000 ALTER TABLE `bas_employees` DISABLE KEYS */;
INSERT INTO `bas_employees` VALUES ('0c117a96744542b68f5c39b744190d4f','009','景怡乐','2019-09-09','男',20,'20','烟台大学','115911237@qq.com','622254654564565','2','Execusive','0','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-09 10:40:56','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-09 10:40:56'),('1012fef7efaf47da9ac039b303f9da90','1000000009','郭聪','2019-09-24','男',20,'110','弟弟','','11222222','2','','0','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-24 16:40:17','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-24 16:40:17'),('1fe5b8042afa4f4c9d7492ea4e6f1b8e','1000000007','666','2019-09-26','男',20,'2222','','','5656556566565','6','','1','1','2019-09-26 09:03:47','1','2019-09-26 09:03:47'),('2af999a9d0054aaf95e42a20d89e29f0','1000000005','张明明','2019-09-06','男',20,'336336','烟台大学','656445@qq.com','656546545546465','5','啊','0','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-06 08:55:23','1','2019-09-26 10:33:12'),('5db5f07b56434cff82e0eaeb17318049','003','李忠林','2019-09-05','男',20,'33336356','天水moba','115111@qq.com','455664456','53353f41ec4e4c7dba065d013cb401d6','寻找大户型','0','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-05 10:18:40','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-05 10:18:40'),('6','666','冯琬淇','2020-05-26','男',20,'336','yantai','1155@qq.com','6666666','2','00','0','2','2020-05-26 16:40:35','1','2019-09-27 11:29:54'),('c918784605a242538b7e5b197dd982d7','1000000008','徐豪','2019-09-25','男',20,'20','20','','44566555555','6','20','0','1','2019-09-25 19:38:13','1','2019-09-25 19:38:13'),('daf00402388c4c1fabcd7ea832f497d4','001','002','2019-09-05','男',5,'006','烟台','66@qq.com','003','bcd26b7a99374726b5e5679e2bf28b23','666','1','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-05 10:06:43','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-05 10:19:13'),('f311e45a131a463e97f039e8ffcafbe0','1000000002','闫春相','2019-09-26','男',22,'222','','','55555555','8f88e7ac7a4c4a6784ea22d71d0bb7d8','','0','1','2019-09-26 14:43:26','1','2019-09-26 14:43:26');
/*!40000 ALTER TABLE `bas_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bas_enterprise`
--

DROP TABLE IF EXISTS `bas_enterprise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bas_enterprise` (
  `id` varchar(64) NOT NULL COMMENT '企业id',
  `enterName` varchar(10) DEFAULT NULL COMMENT '单位名称',
  `enterCode` varchar(20) DEFAULT NULL COMMENT '组织机构代码',
  `enterLevel` varchar(20) DEFAULT NULL COMMENT '单位层次',
  `enterNature` varchar(20) DEFAULT NULL COMMENT '单位性质',
  `enterCapital` varchar(20) DEFAULT NULL COMMENT '企业注册资本',
  `enterLperson` varchar(20) DEFAULT NULL COMMENT '法人',
  `enterLpCard` varchar(20) DEFAULT NULL COMMENT '法人身份证',
  `enterAddress` varchar(20) DEFAULT NULL COMMENT '单位地址',
  `emailCode` varchar(20) DEFAULT NULL COMMENT '邮政编码',
  `enterRemarks` varchar(20) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建日期',
  `update_by` varchar(64) NOT NULL COMMENT '更新人',
  `update_date` datetime NOT NULL COMMENT '更新日期',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) NOT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bas_enterprise`
--

LOCK TABLES `bas_enterprise` WRITE;
/*!40000 ALTER TABLE `bas_enterprise` DISABLE KEYS */;
INSERT INTO `bas_enterprise` VALUES ('42','龙大肉食','A03','一级企业','国有企业','6亿','李舜','07061311502017','烟台市芝罘区','276000','无','','2018-05-01 10:20:10','1','2018-06-01 13:05:29',NULL,'1'),('551d6fcf50274890b67875f085e302a9','烟台喜旺','A01','二级企业','国有企业','2亿','邹佳霖','37061222802010','烟台市牟平区','264000','无','1','2018-05-26 14:18:49','1','2018-05-26 16:25:07',NULL,'0'),('aed5cc0c296241689c0a0b60f258f018','烟台艾氪森','A02','一级企业','国有企业','1亿','陈媛','37061219952018','烟台市莱山区','264000','无','1','2018-05-26 14:16:50','1','2018-05-26 16:25:34',NULL,'1'),('ceb38c3f16194551b6cbe826421b4284','烟台小草','S8900778','一级','民办','2000万,k,pl,l','张国立','45235311632','烟台市','kiok,l;','','1','2019-09-02 11:23:23','1','2019-09-27 15:20:23',NULL,'1');
/*!40000 ALTER TABLE `bas_enterprise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bas_factory`
--

DROP TABLE IF EXISTS `bas_factory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bas_factory` (
  `id` varchar(64) NOT NULL COMMENT '工厂id',
  `factoryName` varchar(10) DEFAULT NULL COMMENT '工厂名称',
  `factoryBuildDate` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `factoryAddress` varchar(20) DEFAULT NULL COMMENT '地址',
  `factoryPhone` varchar(20) DEFAULT NULL COMMENT '电话',
  `factoryECode` varchar(20) DEFAULT NULL COMMENT '邮政编码',
  `factoryBuildM` varchar(20) DEFAULT NULL COMMENT '建筑面积',
  `enterprise_id` varchar(64) NOT NULL COMMENT '企业编号',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建日期',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新日期',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bas_factory`
--

LOCK TABLES `bas_factory` WRITE;
/*!40000 ALTER TABLE `bas_factory` DISABLE KEYS */;
INSERT INTO `bas_factory` VALUES ('1','马哈鱼加工厂','2015-05-01','高新区科技大道001','0535449872','264000','1000m','aed5cc0c296241689c0a0b60f258f018','','2018-05-26 15:02:37','509e20b7d0f9447bbb6098c592b7cb28','2018-05-26 15:02:37',NULL,'0'),('2','金枪鱼加工厂','2015-05-08','高新区银海路756','0535469426','264001','2000m','aed5cc0c296241689c0a0b60f258f018','','2018-05-26 15:02:37','509e20b7d0f9447bbb6098c592b7cb28','2018-05-26 15:02:56',NULL,'0'),('9ac24160e2a340079f73c9b84347d621','鱿鱼加工厂','2015-04-30','高新区科技大道001','0535449872','264000','11111m','aed5cc0c296241689c0a0b60f258f018','1','2018-05-11 17:10:52','1','2018-05-26 16:28:54',NULL,'1'),('bb033f9d0ab14b05b58aca018f6472c0','金龙鱼加工厂','2017-01-01','烟台莱山区','0535428115','264001','3000m','aed5cc0c296241689c0a0b60f258f018','1','2018-05-16 12:00:27','1','2018-05-26 16:28:24',NULL,'0'),('f8d74a9db575496b914c5527ab4bd4bb','鸿海一厂','','北京市红州区','17865563013','','10000平方米','551d6fcf50274890b67875f085e302a9','1','2019-09-04 09:45:08','1','2019-09-04 09:45:51',NULL,'0');
/*!40000 ALTER TABLE `bas_factory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bas_iphoto`
--

DROP TABLE IF EXISTS `bas_iphoto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bas_iphoto` (
  `qrCode` varchar(20) NOT NULL DEFAULT '' COMMENT '设备条码',
  `type` varchar(64) DEFAULT NULL COMMENT '设备类型id，外键，参照EquipmentType表',
  `spec` varchar(64) DEFAULT NULL COMMENT '设备规格id，外键，参照EquipmentSpec表',
  `cell_id` varchar(64) DEFAULT NULL COMMENT '所属工位',
  `station_id` varchar(64) DEFAULT NULL COMMENT '所属工站',
  `supplier` varchar(20) DEFAULT NULL COMMENT '供应商',
  `manufacturer` varchar(20) DEFAULT NULL COMMENT '生产厂商',
  `factoryNumber` varchar(20) DEFAULT NULL COMMENT '出厂编号',
  `purpose` varchar(20) DEFAULT NULL COMMENT '用途',
  `buyDate` date DEFAULT NULL COMMENT '采购时间',
  `person` varchar(20) DEFAULT NULL COMMENT '资产负责人',
  `organization` varchar(20) DEFAULT NULL COMMENT '所有权部门',
  `ip` varchar(32) DEFAULT NULL COMMENT 'ip',
  `comBaudrate` varchar(20) DEFAULT NULL COMMENT 'com波特率',
  `comDataseat` varchar(20) DEFAULT NULL COMMENT 'com数据位',
  `comBegin` varchar(20) DEFAULT NULL COMMENT 'com起始位',
  `comEnd` varchar(20) DEFAULT NULL COMMENT 'com终止位',
  `checkMode` varchar(20) DEFAULT NULL COMMENT '校验方式',
  `sysParam` varchar(20) DEFAULT NULL COMMENT '系统简单属性',
  `iphotoDistance` varchar(20) DEFAULT NULL COMMENT '感应距离',
  `iphotoWay` varchar(20) DEFAULT NULL COMMENT '感应方式',
  `workEnvironment` varchar(20) DEFAULT NULL COMMENT '工作环境',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建日期',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新日期',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL COMMENT '删除标记',
  `id` varchar(64) NOT NULL COMMENT '编号',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `IPhoto_ibfk_1` (`type`),
  KEY `IPhoto_ibfk_2` (`spec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bas_iphoto`
--

LOCK TABLES `bas_iphoto` WRITE;
/*!40000 ALTER TABLE `bas_iphoto` DISABLE KEYS */;
INSERT INTO `bas_iphoto` VALUES ('001','0003','0001','dfc99609cca644cc9af0703c5d231b1b','8f218ef3004d430085f7160a15d0a4ec','','','','','2019-09-26','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','1','2019-09-26 19:41:35','1','2019-09-26 19:41:35',NULL,'0','236a2ba808e04d8f83df48a89cf2c9bd');
/*!40000 ALTER TABLE `bas_iphoto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bas_line`
--

DROP TABLE IF EXISTS `bas_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bas_line` (
  `id` varchar(64) NOT NULL COMMENT '产线id',
  `lineName` varchar(10) DEFAULT NULL COMMENT '产线名称',
  `lineNumber` varchar(20) DEFAULT NULL COMMENT '产线编码',
  `lineMaster` varchar(10) DEFAULT NULL COMMENT '产线负责人',
  `lineDescription` varchar(20) DEFAULT NULL COMMENT '产线描述',
  `workshop_id` varchar(64) NOT NULL COMMENT '所属车间',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建日期',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新日期',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) NOT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `lineId` (`id`),
  KEY `lineNumber` (`lineNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bas_line`
--

LOCK TABLES `bas_line` WRITE;
/*!40000 ALTER TABLE `bas_line` DISABLE KEYS */;
INSERT INTO `bas_line` VALUES ('50bab7e0a126485cb062534590e05038','金龙鱼产线','J01','王林','金龙鱼切片','94daa213bbe4491eae32971da58abde1','509e20b7d0f9447bbb6098c592b7cb28','2018-05-26 14:44:11','1','2018-05-26 16:36:30',NULL,'0'),('689b1cde6dd243538c735e08b954acda','鱿鱼丝产线','Y01','王坤','鱿鱼丝烘烤','330ee50462414b4394dcfc4d874998de','1','2018-05-26 16:31:15','1','2018-05-26 16:36:21',NULL,'0'),('794abde5a457437f812eecf712c17578','金枪鱼产线','Q01','高磊','金枪鱼去头','adbc33cdf66d4891aa1d79e3dda8374b','1','2018-05-26 17:22:08','1','2018-05-26 17:22:21',NULL,'0'),('839d2dbd6ffa4a71a9635c19a5f70fc0','rr','rr','rr','rrr','adbc33cdf66d4891aa1d79e3dda8374b','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-23 09:44:06','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-23 09:44:06',NULL,'1'),('d3b5488ffa5d4d48ad73d45d4a0229a5','马哈鱼产线','M01','陈凯','马哈鱼挑刺','4524c0d903a9448099ef44568174f5dd','509e20b7d0f9447bbb6098c592b7cb28','2018-05-26 14:45:21','1','2018-05-26 17:22:32',NULL,'0');
/*!40000 ALTER TABLE `bas_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bas_pad`
--

DROP TABLE IF EXISTS `bas_pad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bas_pad` (
  `qrCode` varchar(20) NOT NULL DEFAULT '' COMMENT '设备条码',
  `type` varchar(64) NOT NULL COMMENT '设备类型id，外键，对应EquipmentType表',
  `spec` varchar(64) NOT NULL COMMENT '设备规格id，外键，对应EquipmentSpec表',
  `supplier` varchar(20) DEFAULT NULL COMMENT '供应商',
  `manufacturer` varchar(20) DEFAULT NULL COMMENT '生产商',
  `factoryNumber` varchar(20) DEFAULT NULL COMMENT '出厂编号',
  `purpose` varchar(20) DEFAULT NULL COMMENT '用途',
  `buyDate` date DEFAULT NULL COMMENT '采购日期',
  `person` varchar(20) DEFAULT NULL COMMENT '资产负责人',
  `organization` varchar(20) DEFAULT NULL COMMENT '所有权部门',
  `ip` varchar(32) DEFAULT NULL COMMENT 'ip',
  `comBaudrate` varchar(20) DEFAULT NULL COMMENT 'com波特率',
  `comDataseat` varchar(20) DEFAULT NULL COMMENT 'com数据位',
  `comBegin` varchar(20) DEFAULT NULL COMMENT 'com起始位',
  `comEnd` varchar(20) DEFAULT NULL COMMENT 'com终止位',
  `checkMode` varchar(20) DEFAULT NULL COMMENT '校验属性',
  `sysParam` varchar(20) DEFAULT NULL COMMENT '系统简单属性',
  `pADSC` varchar(20) DEFAULT NULL COMMENT '分辨率',
  `pADNucleus` varchar(20) DEFAULT NULL COMMENT '核心数',
  `pADMemory` varchar(20) DEFAULT NULL COMMENT '内存',
  `capacity` varchar(20) DEFAULT NULL COMMENT '电池容量',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL COMMENT '删除标记',
  `id` varchar(64) NOT NULL COMMENT '编号',
  `cell_id` varchar(64) DEFAULT NULL COMMENT '所属工位',
  `station_id` varchar(45) DEFAULT NULL COMMENT '所属工站',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `AndroidPAD_ibfk_1` (`type`),
  KEY `AndroidPAD_ibfk_2` (`spec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bas_pad`
--

LOCK TABLES `bas_pad` WRITE;
/*!40000 ALTER TABLE `bas_pad` DISABLE KEYS */;
INSERT INTO `bas_pad` VALUES ('01','0004','0001','王明','晨光','X52-12','扫码','2018-05-15','张康','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1995*1994','8','4G','20000mA','1','2018-05-15 18:49:58','1','2018-05-26 16:19:47','','0','0b13296847974ba7b962f9861e8b722d',NULL,NULL),('03','0004','0003','三星','富士康','X52-36','测试用途','2018-02-09','李刚','5','202.194.44.19','240bd','7','5','13','偶校验','无','1920*1080','4','4G','10000mA','1','2018-05-21 19:31:41','1','2018-05-26 16:19:11','','0','16740928400a4496b9140a4d1829de31',NULL,NULL),('054068','0003','0003','','','','','2019-09-11','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','9853438976','','','1e3851a285a4474c99fde9f824315168','2019-09-10 02:22:19','1e3851a285a4474c99fde9f824315168','2019-09-10 02:22:43',NULL,'1','ce7c1ad6c4554478879f7212812b2f0e','c2f0f0924cbe4b5d9f3437355ddaf3c5','7e1c273df5334c648142e72f0045876b');
/*!40000 ALTER TABLE `bas_pad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bas_product`
--

DROP TABLE IF EXISTS `bas_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bas_product` (
  `id` varchar(64) NOT NULL,
  `productName` varchar(20) DEFAULT NULL COMMENT '产品名称',
  `productAbbr` varchar(10) DEFAULT NULL COMMENT '产品简称',
  `productDesc` varchar(20) DEFAULT NULL COMMENT '产品描述',
  `firstCheck` varchar(20) DEFAULT NULL COMMENT '是否需要首件检查',
  `qrCode` varchar(20) DEFAULT NULL COMMENT '条码',
  `manageWay` varchar(20) DEFAULT NULL COMMENT '管理方式',
  `lotNumber` varchar(20) DEFAULT NULL COMMENT '批次',
  `state` varchar(10) DEFAULT NULL COMMENT '状态',
  `productUnit` varchar(20) DEFAULT NULL COMMENT '产品计量单位',
  `productProp` varchar(20) DEFAULT NULL COMMENT '产品属性',
  `flow_id` varchar(64) DEFAULT NULL COMMENT '生产流程',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建日期',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新日期',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) NOT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `productId` (`id`),
  KEY `ProductName` (`productName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bas_product`
--

LOCK TABLES `bas_product` WRITE;
/*!40000 ALTER TABLE `bas_product` DISABLE KEYS */;
INSERT INTO `bas_product` VALUES ('1','深海鱼','M2','','是','0002','通风管理','1','阿萨德12','kg','','a190c9f9c57e43f89f7cf4d37b69e6ca','1e3851a285a4474c99fde9f824315168','2019-09-09 15:00:36','1e3851a285a4474c99fde9f824315168','2019-09-09 15:01:01',NULL,'0'),('bab98a528be1428ba16f8106e69534a8','包子','深海鱼biss','1','是','1','1','1','1','kg','1','d61e6be69be848979fcd6941a6227d0c','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-11 08:48:58','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-11 08:48:58',NULL,'0'),('f6ba89e9c1fe4e9c869b547752d78627','马哈鱼','M','','是','0001','通风管理','2','阿萨德','k','','7a438722f41a4ce6846d2ea6af086aca','1e3851a285a4474c99fde9f824315168','2019-09-09 09:47:07','1e3851a285a4474c99fde9f824315168','2019-09-09 14:53:33',NULL,'0');
/*!40000 ALTER TABLE `bas_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bas_workcell`
--

DROP TABLE IF EXISTS `bas_workcell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bas_workcell` (
  `id` varchar(64) NOT NULL COMMENT '工位id',
  `cellName` varchar(10) DEFAULT NULL COMMENT '工位名',
  `cellNumber` varchar(20) DEFAULT NULL COMMENT '工位编号',
  `cellMaster` varchar(10) DEFAULT NULL COMMENT '工位负责人',
  `cellDescription` varchar(20) DEFAULT NULL COMMENT '工位描述',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建日期',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新日期',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) NOT NULL COMMENT '删除标记',
  `station_id` varchar(64) NOT NULL COMMENT '所属工站',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bas_workcell`
--

LOCK TABLES `bas_workcell` WRITE;
/*!40000 ALTER TABLE `bas_workcell` DISABLE KEYS */;
INSERT INTO `bas_workcell` VALUES ('09b853edcb854268957e9c26f7371480','开片工位','0002','小屁猪','５５５','1','2019-09-26 10:32:16','1','2019-09-26 10:32:16',NULL,'1','8f218ef3004d430085f7160a15d0a4ec'),('1df8a88a68b64aa28ed182a788d71ca9','小屁猪','006','李忠林','大大大','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-09 10:43:02','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-09 10:43:02',NULL,'1','63688c609f824834bf0abca0171bc8a7'),('30ccd2fb23e6482d9ebe7552cc225b8c','烘烤工位','H01','李帅','鱿鱼丝烘烤','1','2018-05-26 16:40:35','1','2018-05-26 16:40:35',NULL,'0','b704ea7d3af84b9a94a8481891b6526c'),('5dbf19c4e1614576aff68eda48db8d74','6','6','6','666','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-02 10:32:27','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-02 10:32:27',NULL,'1','63688c609f824834bf0abca0171bc8a7'),('66d2e09e0fe244cba3598e0686d96409','挑刺工位','Q02','王凯','马哈鱼挑刺','509e20b7d0f9447bbb6098c592b7cb28','2018-05-26 14:50:34','1','2018-05-26 17:28:41',NULL,'0','8021d772bf09424f9dc51674ab419431'),('86bdd12fd951410d9a59f4ee1fdd7469','去头工位','J01','李成','金枪鱼去头','1','2018-05-26 17:30:30','1','2019-09-27 14:57:54',NULL,'1','63688c609f824834bf0abca0171bc8a7'),('c2f0f0924cbe4b5d9f3437355ddaf3c5','切片工位','Q01','王明','金龙鱼切片','509e20b7d0f9447bbb6098c592b7cb28','2018-05-26 14:51:25','1','2018-05-26 17:29:04',NULL,'0','63688c609f824834bf0abca0171bc8a7'),('dfc99609cca644cc9af0703c5d231b1b','336','336','336','336','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-04 10:03:14','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-05 10:15:38',NULL,'1','b704ea7d3af84b9a94a8481891b6526c'),('f9a882d5150e43378ee11972a58f7e0c','户型','001','李忠林','寻找大da户人家.','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-05 09:09:03','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-05 10:13:27',NULL,'1','8021d772bf09424f9dc51674ab419431');
/*!40000 ALTER TABLE `bas_workcell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bas_workorder`
--

DROP TABLE IF EXISTS `bas_workorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bas_workorder` (
  `id` varchar(64) NOT NULL COMMENT '工单Id',
  `order_id` varchar(64) NOT NULL COMMENT '订单Id',
  `orderCode` varchar(20) NOT NULL COMMENT '工单条码',
  `unitName` varchar(20) DEFAULT NULL COMMENT '计量单位',
  `orderType` varchar(20) DEFAULT NULL COMMENT '工单类型',
  `amount` int(11) DEFAULT NULL COMMENT '工单生产数量',
  `estStartTime` datetime DEFAULT NULL COMMENT '预计生产时间',
  `estEndTime` datetime DEFAULT NULL COMMENT '预计结束时间',
  `actStartTime` datetime DEFAULT NULL COMMENT '实际生产时间',
  `inAmount` int(11) DEFAULT NULL COMMENT '投入数量',
  `outAmount` int(11) DEFAULT NULL COMMENT '产出数量',
  `scrapAmount` int(11) DEFAULT NULL COMMENT '报废数量',
  `state` varchar(20) DEFAULT NULL COMMENT '工单状态',
  `line_id` varchar(64) NOT NULL DEFAULT '' COMMENT '所属产线',
  `product_id` varchar(64) NOT NULL DEFAULT '' COMMENT '产品',
  `del_flag` char(1) NOT NULL COMMENT '删除标记',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建日期',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bas_workorder`
--

LOCK TABLES `bas_workorder` WRITE;
/*!40000 ALTER TABLE `bas_workorder` DISABLE KEYS */;
INSERT INTO `bas_workorder` VALUES ('6afcd1053b6b47adb7a90a334340021e','1','11','1','一般工单',1,'2019-09-11 17:23:00','2019-09-11 17:23:00','2019-09-11 17:23:00',0,0,0,'unreleased','M01','1','0',NULL,'fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-11 17:23:39','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-12 16:58:49'),('972a4119bb9e4f05b599fb8bb020b410','2','44','1','一般工单',1,'2019-09-11 17:26:00','2019-09-11 17:26:00','2019-09-12 16:16:00',0,0,0,'unreleased','M01','1','0',NULL,'fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-11 17:26:10','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-12 16:59:05'),('a02f1e21c73e4a53a998b6039727be84','1','22','box','一般工单',1,'2019-09-24 16:04:00','2019-09-24 16:04:00','2019-09-24 16:04:00',111,11,11,'cancelled','J01','1','0',NULL,'fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-24 16:05:01','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-24 16:05:01'),('cd6083fbda48414eb1f708fcef9b94ee','3','111','box','一般工单',1,'2019-09-20 16:29:00','2019-09-24 16:29:00','2019-09-26 16:29:00',111,11,1,'closed','Y01','1','0',NULL,'fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-24 16:31:22','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-24 16:31:22'),('dcd6bad91da442edafa3e04d1a9b184d','1','11','1','一般工单',1,'2019-09-11 17:12:00','2019-09-11 17:12:00','2019-09-11 17:12:00',1,0,0,'onHold','Y01','1','0',NULL,'fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-11 17:12:19','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-16 17:18:49'),('ecbc49ff22b24a20ab36e7ed86170029','3','２２２','box','一般工单',1,'2019-09-24 17:17:00','2019-09-24 17:17:00',NULL,2,2,2,'closed','Y01','1','0',NULL,'fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-24 17:27:27','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-25 15:27:00');
/*!40000 ALTER TABLE `bas_workorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bas_workshop`
--

DROP TABLE IF EXISTS `bas_workshop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bas_workshop` (
  `id` varchar(64) NOT NULL COMMENT '车间id',
  `shopName` varchar(10) DEFAULT NULL COMMENT '车间名称',
  `shopNo` varchar(20) DEFAULT NULL COMMENT '车间编码',
  `master` varchar(10) DEFAULT NULL COMMENT '车间负责人',
  `description` varchar(20) DEFAULT NULL COMMENT '车间描述',
  `factory_id` varchar(64) NOT NULL COMMENT '所属工厂',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建日期',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新日期',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL COMMENT '删除信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bas_workshop`
--

LOCK TABLES `bas_workshop` WRITE;
/*!40000 ALTER TABLE `bas_workshop` DISABLE KEYS */;
INSERT INTO `bas_workshop` VALUES ('21da4a5db8664abb83928d425b93be88','阿士大夫','21212','李明','大师法','f8d74a9db575496b914c5527ab4bd4bb','1','2019-09-05 18:48:18','1','2019-09-05 18:48:18',NULL,'1'),('330ee50462414b4394dcfc4d874998de','烘烤车间','H01','邹佳霖','鱿鱼丝烘烤','9ac24160e2a340079f73c9b84347d621','1','2018-05-26 16:29:30','1','2018-05-26 16:30:34',NULL,'0'),('4524c0d903a9448099ef44568174f5dd','挑刺车间','P02','邹佳霖','马哈鱼挑刺','1','1','2018-05-17 14:18:17','1','2018-05-26 17:22:55',NULL,'1'),('5c15ebaa229f4222b0f03f09880e8a6c','小鱼加工','21212','李明','友好','f8d74a9db575496b914c5527ab4bd4bb','1','2019-09-05 18:40:28','1','2019-09-05 18:40:37',NULL,'1'),('94daa213bbe4491eae32971da58abde1','切片车间','Q01','张聪','金龙鱼切片','bb033f9d0ab14b05b58aca018f6472c0','509e20b7d0f9447bbb6098c592b7cb28','2018-05-26 15:06:02','509e20b7d0f9447bbb6098c592b7cb28','2018-05-26 15:06:02',NULL,'0'),('adbc33cdf66d4891aa1d79e3dda8374b','去头车间','P01','王帅','金龙鱼去头','2','1','2018-05-17 14:08:53','1','2018-05-26 17:20:07',NULL,'0'),('c6c66e0f334e457c82a80abe79dcc408','888','888','88','88','f8d74a9db575496b914c5527ab4bd4bb','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-12 15:15:29','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-12 15:15:29',NULL,'1');
/*!40000 ALTER TABLE `bas_workshop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bas_workstationinfos`
--

DROP TABLE IF EXISTS `bas_workstationinfos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bas_workstationinfos` (
  `id` varchar(64) NOT NULL COMMENT '工站id',
  `stationName` varchar(10) DEFAULT NULL COMMENT '工站名称',
  `stationNo` varchar(20) DEFAULT NULL COMMENT '工站编码',
  `stationMaster` varchar(10) DEFAULT NULL COMMENT '工站负责人',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建日期',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新日期',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) NOT NULL COMMENT '删除标记',
  `line_id` varchar(64) NOT NULL COMMENT '所属产线',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bas_workstationinfos`
--

LOCK TABLES `bas_workstationinfos` WRITE;
/*!40000 ALTER TABLE `bas_workstationinfos` DISABLE KEYS */;
INSERT INTO `bas_workstationinfos` VALUES ('63688c609f824834bf0abca0171bc8a7','切片工站','J001','白杰','1','2018-05-26 16:37:43','1','2018-05-26 16:37:53',NULL,'0','50bab7e0a126485cb062534590e05038'),('7e1c273df5334c648142e72f0045876b','去头工站','Q001','鲍迪','1','2018-05-26 17:23:32','1','2018-05-26 17:23:52',NULL,'0','794abde5a457437f812eecf712c17578'),('8021d772bf09424f9dc51674ab419431','挑刺工站','M001','苗琳','1','2018-05-26 16:33:30','1','2018-05-26 16:37:05',NULL,'0','d3b5488ffa5d4d48ad73d45d4a0229a5'),('8f218ef3004d430085f7160a15d0a4ec','开片工站','002','李忠林','1','2019-09-26 10:31:33','1','2019-09-26 10:31:33',NULL,'0','50bab7e0a126485cb062534590e05038'),('b704ea7d3af84b9a94a8481891b6526c','烘烤工站','H001','刘坤','1','2018-05-26 16:32:45','1','2018-05-26 16:37:13',NULL,'0','689b1cde6dd243538c735e08b954acda'),('dec4d75d2b23471396f49b5b5cc8e60f','rr','bb','jj','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-23 09:44:19','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-23 09:44:29',NULL,'1','839d2dbd6ffa4a71a9635c19a5f70fc0'),('eec1e5b6b75d473083fc68f4d0aa89ab','eee','eee','e','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-23 09:45:31','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-23 09:45:31',NULL,'1','d3b5488ffa5d4d48ad73d45d4a0229a5');
/*!40000 ALTER TABLE `bas_workstationinfos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equip_fault_report`
--

DROP TABLE IF EXISTS `equip_fault_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equip_fault_report` (
  `id` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '主键',
  `equip_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '设备主键',
  `equip_no` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '设备编号',
  `equip_type` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '设备类型',
  `equip_loc` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '所处产线',
  `fault_desc` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '故障描述',
  `status` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '状态',
  `report_person` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '上报人姓名',
  `assign_time` datetime DEFAULT NULL COMMENT '指派时间',
  `maintenance_worker` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '维修工人',
  `create_by` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `remarks` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `del_flag` char(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equip_fault_report`
--

LOCK TABLES `equip_fault_report` WRITE;
/*!40000 ALTER TABLE `equip_fault_report` DISABLE KEYS */;
INSERT INTO `equip_fault_report` VALUES ('00258438bf68433e9be0f08beb1af663','d739ccee4f864762bdb2ad4e2bae521c','0002','0001','50bab7e0a126485cb062534590e05038','坏了','0001','王天成',NULL,NULL,'1e3851a285a4474c99fde9f824315168','2019-09-18 09:51:39','1e3851a285a4474c99fde9f824315168','2019-09-18 09:51:39',NULL,'0'),('0e19045111ff4d60b9e702ae6a845908','27a2fbbb4f584c27b641adf934ea5405','001','0005','50bab7e0a126485cb062534590e05038','aaaaa','0002','王天成','2019-09-24 15:48:18',NULL,'1e3851a285a4474c99fde9f824315168','2019-09-24 15:30:35','1e3851a285a4474c99fde9f824315168','2019-09-24 15:48:19',NULL,'0'),('1709a0d27a6c429f9b2c7ff08b54b664','769634924c674dc99fb3ef1a7afc9378','100','0004','50bab7e0a126485cb062534590e05038','qqqqqqq','0002','王明','2019-09-24 16:13:50',NULL,'1','2019-09-24 11:12:26','1e3851a285a4474c99fde9f824315168','2019-09-24 16:13:50',NULL,'0'),('1e0a9d00ccc14cbb8118429c65ce862e',NULL,'0005','0003','M01','机器停止','0004','系统管理员','2018-06-01 16:10:30','181abcd9d1e04e0fb4f4b310031e2f86','1','2018-05-31 15:31:48','1','2018-06-01 16:14:58',NULL,'0'),('20857f1011eb493f8a6a360c6548afb5','d739ccee4f864762bdb2ad4e2bae521c','0005','0003','M01','11111111111111','0004',NULL,'2018-06-01 15:32:43','6b6c722ef6824ce8ad2625cfd7911603',NULL,'2018-06-01 14:37:46',NULL,'2018-06-01 16:15:38',NULL,'0'),('217a9ecff0324ccc8ec1c45d8a4e001b','769634924c674dc99fb3ef1a7afc9378','100','0005','J01','ghjjjf','0001',NULL,NULL,NULL,NULL,'2018-06-02 15:23:52',NULL,'2018-06-02 15:23:52',NULL,'0'),('288084c9d064448b8d09e6697797cb57','27a2fbbb4f584c27b641adf934ea5405','001','0004','daba301ce06e4445a33d57cbb8a32d9e','zzzzz','0004','王天成','2019-09-24 16:44:00',NULL,'1e3851a285a4474c99fde9f824315168','2019-09-24 16:40:10','1e3851a285a4474c99fde9f824315168','2019-09-25 14:37:52',NULL,'0'),('2c5d70b116244d44a71ecee2f80a6033','d739ccee4f864762bdb2ad4e2bae521c','0002','0003','d3b5488ffa5d4d48ad73d45d4a0229a5','0002','0004','王明','2019-09-25 19:48:46',NULL,'1','2019-09-25 19:48:36','1','2019-09-25 19:49:03',NULL,'0'),('33d8296001384a77b1668b254ad70186','27a2fbbb4f584c27b641adf934ea5405','001','0004','daba301ce06e4445a33d57cbb8a32d9e','sssss','0004','王天成','2019-09-24 16:40:50',NULL,'1e3851a285a4474c99fde9f824315168','2019-09-24 16:40:36','1e3851a285a4474c99fde9f824315168','2019-09-25 14:44:59',NULL,'0'),('36a9551326794ff0b1d86a8f60f542df','','0002','0004','rfthryh','屏幕坏了','0001',NULL,NULL,'181abcd9d1e04e0fb4f4b310031e2f86','1','2018-05-17 10:27:13','1','2018-05-17 17:40:31',NULL,'0'),('3c6b5f29411044e18cf8534502735284','0f4f2fa3ea864d9fa8441e1c68c2b889','0001','0003','d3b5488ffa5d4d48ad73d45d4a0229a5','sss','0004','王明','2019-09-25 19:44:17',NULL,'1','2019-09-25 19:43:58','1','2019-09-25 19:48:02',NULL,'0'),('52782b01d7fa40ddba4bb8231f51f9f8','27a2fbbb4f584c27b641adf934ea5405','001','0004','daba301ce06e4445a33d57cbb8a32d9e','111','0001','王天成',NULL,NULL,'1e3851a285a4474c99fde9f824315168','2019-09-17 08:55:08','1e3851a285a4474c99fde9f824315168','2019-09-17 08:55:08',NULL,'0'),('552b43fb4434400b840c4abc57dc0b4b','27a2fbbb4f584c27b641adf934ea5405','001','0001','Q01','hhhhhh','0001',NULL,NULL,NULL,NULL,'2018-06-02 15:28:04',NULL,'2018-06-02 15:28:04',NULL,'0'),('63eb2f1c3ad64205a717f40da5d82a4f','27a2fbbb4f584c27b641adf934ea5405','001','0004','50bab7e0a126485cb062534590e05038','qerewrewfsdf','0004','王天成','2019-09-24 16:27:27',NULL,'1e3851a285a4474c99fde9f824315168','2019-09-24 16:27:05','1e3851a285a4474c99fde9f824315168','2019-09-24 16:58:30',NULL,'0'),('691ba62cb72e4d73bcf18868d4a7a3ab','','22','0002','M01','读卡器刷卡无反应','0003','系统管理员','2018-06-02 14:14:44','61df92229e4b4a57b9ef810bb2cd9e90','1','2018-06-01 09:40:47','1','2019-09-24 11:08:11',NULL,'0'),('708cc32e135a4de3b07b4376771c6bfe','57b30b6444fd4ffe95dd61c5945af9f3','02','0004','839d2dbd6ffa4a71a9635c19a5f70fc0','333','0004','系统管理员','2019-09-27 15:28:06',NULL,'fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-26 21:07:20','1','2019-09-27 15:30:10',NULL,'0'),('76b548676bf9433ba645320c6451362a','27a2fbbb4f584c27b641adf934ea5405','001','0001','Q01','yhjjjj','0001',NULL,NULL,NULL,NULL,'2018-06-02 15:26:34',NULL,'2018-06-02 15:26:34',NULL,'0'),('8f667fb1198243f7aeb77801840cb418','27a2fbbb4f584c27b641adf934ea5405','001','0004','daba301ce06e4445a33d57cbb8a32d9e','qqq','0001','王天成',NULL,NULL,'1e3851a285a4474c99fde9f824315168','2019-09-16 17:13:34','1e3851a285a4474c99fde9f824315168','2019-09-16 17:13:34',NULL,'0'),('92e873c4eef84d4fb4abfd6ba2db4233','','0102','0001','M01','电子秤不标准','0004','系统管理员','2018-06-01 16:15:13','ef83ec0c592148c2991b12e6711e5911','1','2018-05-26 16:13:03','1','2018-06-01 18:26:05',NULL,'0'),('9b448bf2e2ed483980639ba1ac1ef4c2','27a2fbbb4f584c27b641adf934ea5405','001','0004','50bab7e0a126485cb062534590e05038','asdasdasd','0004','王天成','2019-09-24 16:22:55',NULL,'1e3851a285a4474c99fde9f824315168','2019-09-24 16:22:39','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-26 10:46:14',NULL,'0'),('9fc6f6e21dbb40d482f6815d0ad81b49','','0101','0002','M01','读卡器无法读卡','0003','系统管理员','2018-06-01 18:25:46','181abcd9d1e04e0fb4f4b310031e2f86','1','2018-05-26 16:12:24','1','2018-06-04 10:02:44',NULL,'0'),('b14e1063bd9e4496a47d4bc62239c4a7','27a2fbbb4f584c27b641adf934ea5405','001','0003','50bab7e0a126485cb062534590e05038','bhkkjhkjhkj,','0004','王天成','2019-09-25 14:46:52',NULL,'1e3851a285a4474c99fde9f824315168','2019-09-24 16:24:53','1e3851a285a4474c99fde9f824315168','2019-09-25 14:52:27',NULL,'0'),('ce1672eecd004385a5287f2162046c2d','27a2fbbb4f584c27b641adf934ea5405','001','0003','daba301ce06e4445a33d57cbb8a32d9e','啊啊','0001','王天成',NULL,NULL,'1e3851a285a4474c99fde9f824315168','2019-09-16 17:13:45','1e3851a285a4474c99fde9f824315168','2019-09-16 17:13:45',NULL,'0'),('f3849749a2df40a98c0035330cca5169','','0004','0002','J01','读卡器读数有误','0001','系统管理员','2018-05-30 17:31:20','6b6c722ef6824ce8ad2625cfd7911603','1','2018-05-30 15:40:59','1','2018-05-31 11:25:08',NULL,'0'),('f4a4262696dc4bd49177cd4a1bdef3ec','','0103','0004','J01','屏幕损坏','0001','系统管理员',NULL,NULL,'1','2018-05-26 16:13:41','1','2018-05-30 15:42:25',NULL,'0');
/*!40000 ALTER TABLE `equip_fault_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equip_maintenance_plan`
--

DROP TABLE IF EXISTS `equip_maintenance_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equip_maintenance_plan` (
  `id` varchar(64) CHARACTER SET utf8 NOT NULL COMMENT '保养计划主键',
  `equip_type` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '设备类型',
  `maintenance` varchar(2000) CHARACTER SET utf8 DEFAULT NULL COMMENT '保养内容',
  `cycle` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '保养周期：周，月，年',
  `warn_time` int(11) DEFAULT NULL COMMENT '预警时间',
  `user_name` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '保养人姓名',
  `user_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '保养人',
  `create_by` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `update_by` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `remarks` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `del_flag` char(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equip_maintenance_plan`
--

LOCK TABLES `equip_maintenance_plan` WRITE;
/*!40000 ALTER TABLE `equip_maintenance_plan` DISABLE KEYS */;
INSERT INTO `equip_maintenance_plan` VALUES ('52789bbc5f74430ba84f5b0069255084','0005','扫码枪扫码距离敏感度','week',4,'张聪','181abcd9d1e04e0fb4f4b310031e2f86','1','1','2018-05-16 17:24:46','2018-05-26 16:00:57',NULL,'0'),('636ad0d29313444fbe8d81fb36bb3e5b','0004','扫码识别时间','week',4,'张震刚','61df92229e4b4a57b9ef810bb2cd9e90','1','1','2018-05-16 17:14:46','2018-05-26 16:02:45',NULL,'1'),('892674d936d54a1ea3017aacf03b79a4','0004','111qqq','week',33,'王天成','1e3851a285a4474c99fde9f824315168','1e3851a285a4474c99fde9f824315168','1e3851a285a4474c99fde9f824315168','2019-09-12 09:16:37','2019-09-24 15:13:22',NULL,'0'),('a26c8c74aa364327805b3b2eab1408f0','0003','33','yy',20,'王明','1','1','1','2019-09-25 19:11:23','2019-09-25 19:11:23',NULL,'0'),('d25bdc8900e34ba38bc0cd390a7db889','0003','打印机墨盒剩余量','mm',2,'姚霞','6b6c722ef6824ce8ad2625cfd7911603','1','1','2018-05-16 17:22:28','2018-05-26 16:01:29',NULL,'0'),('de4cf3da74f04a2caed5304cf74e8acc','0002','读卡器敏感度','week',4,'张聪','181abcd9d1e04e0fb4f4b310031e2f86','1','1','2018-05-16 17:23:44','2018-05-26 16:00:34',NULL,'0'),('ff381c67851a425a81ab66fd096c97f6','0003','去问问','week',1,'王天成','1e3851a285a4474c99fde9f824315168','1e3851a285a4474c99fde9f824315168','1e3851a285a4474c99fde9f824315168','2019-09-12 09:17:34','2019-09-12 09:17:34',NULL,'0');
/*!40000 ALTER TABLE `equip_maintenance_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equip_repair`
--

DROP TABLE IF EXISTS `equip_repair`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equip_repair` (
  `id` varchar(64) CHARACTER SET utf8 NOT NULL,
  `mid` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '报修记录编号',
  `fault_type` varchar(60) CHARACTER SET utf8 DEFAULT NULL COMMENT '故障类型',
  `fault_reason` varchar(500) CHARACTER SET utf8 DEFAULT NULL COMMENT '故障原因',
  `fault_desc` varchar(500) CHARACTER SET utf8 DEFAULT NULL COMMENT '故障描述',
  `fault_imgs` varchar(500) CHARACTER SET utf8 DEFAULT NULL COMMENT '图片地址',
  `create_by` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `remarks` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `del_flag` char(1) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equip_repair`
--

LOCK TABLES `equip_repair` WRITE;
/*!40000 ALTER TABLE `equip_repair` DISABLE KEYS */;
INSERT INTO `equip_repair` VALUES ('038bb48ca70e4143aa1d9a3c40f960d6','6bb8d96498634077b8b2672c52904dc9','机械故障','11111','1111111',NULL,'1','2018-05-31 11:21:00','1','2018-05-31 11:21:19','null','0'),('0e6da33720354bcaa150aba6b16ba1fd','9fc6f6e21dbb40d482f6815d0ad81b49','线路老化','机械故障','由于线路老化导致的无法刷卡',NULL,'1','2018-05-26 16:12:39','1','2018-06-04 10:02:44','null','0'),('270de9303bb94781a10ff3ed395735fa','63eb2f1c3ad64205a717f40da5d82a4f','坏了','坏了','asdasd',NULL,'1e3851a285a4474c99fde9f824315168','2019-09-24 16:58:30','1e3851a285a4474c99fde9f824315168','2019-09-24 16:58:30',NULL,'0'),('4c7e91e17d2b4690b30f515e6dfaeb13','b14e1063bd9e4496a47d4bc62239c4a7','无法运转','机器卡住了','润滑度不够','d0d69421-b7c3-41d9-9cee-857c718cd676.jpg','1e3851a285a4474c99fde9f824315168','2019-09-25 14:52:27','1e3851a285a4474c99fde9f824315168','2019-09-25 14:52:27',NULL,'0'),('4e8db4e9fa1c45bbafe0b72c95ea6dfe','9b448bf2e2ed483980639ba1ac1ef4c2','','','','75b611f3-1e2e-43fa-8a50-ba11aa2fbc33.jpeg','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-26 10:46:14','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-26 10:46:14',NULL,'0'),('6235856f868647a6a80c5c89a92bdfeb','2c5d70b116244d44a71ecee2f80a6033','11','11','11','1cfdb03b-a4c6-46e9-8f18-e8354cb90df1.jpeg','1','2019-09-25 19:49:03','1','2019-09-25 19:49:03',NULL,'0'),('6e03357fecb5414eb60e06415d6da768','92e873c4eef84d4fb4abfd6ba2db4233','hhj','hhj','hhh',NULL,NULL,'2018-06-01 18:25:53',NULL,'2018-06-01 18:26:05','null','0'),('7e4e8560b54945d8bd8019abebc195ca','691ba62cb72e4d73bcf18868d4a7a3ab',NULL,NULL,NULL,NULL,'1','2018-06-01 09:41:13','1','2018-06-01 09:42:47','null','0'),('89348d6b5f644e02b4ad63efcdd82775','3c6b5f29411044e18cf8534502735284','11','11','11','cd6f76fe-6763-4244-8fb0-4fc4f690fbd7.jpeg','1','2019-09-25 19:48:02','1','2019-09-25 19:48:02',NULL,'0'),('8c9520d0bd754d318047f137a1d6db25','33d8296001384a77b1668b254ad70186','坏了','坏了','cccc','c610a808-b563-47bf-bb9f-e7952e399d49.jpg','1e3851a285a4474c99fde9f824315168','2019-09-25 14:44:59','1e3851a285a4474c99fde9f824315168','2019-09-25 14:44:59',NULL,'0'),('964e0136284f4ec9b55fd4747dd4c194','321ea1db787e445cb67c6c77ea6b5aa4',NULL,NULL,NULL,NULL,'1','2018-05-17 17:36:46','1','2018-05-17 17:40:51','null','0'),('a2ae02088fa342cfaecf10ad6d528ecf','288084c9d064448b8d09e6697797cb57','坏了','坏了','aaa','3ed4a649-3f3e-405e-84c7-b13f056f4245.jpg','1e3851a285a4474c99fde9f824315168','2019-09-25 14:37:53','1e3851a285a4474c99fde9f824315168','2019-09-25 14:37:53',NULL,'0'),('bc8cae5eddfc4d479e0ceb5aebdc0e83','708cc32e135a4de3b07b4376771c6bfe','qq','qq','qq','5e730230-ccbe-4a12-bede-5777da70b016.png','1','2019-09-27 15:30:10','1','2019-09-27 15:30:10',NULL,'0'),('c4b7d39d91864d1faac81fdc8b35032c','f4a4262696dc4bd49177cd4a1bdef3ec',NULL,NULL,NULL,NULL,'1','2018-05-28 16:40:38','1','2018-05-30 15:42:25','null','0'),('c6ea49a0dfee451eaadaa8b7ee2788a2','36a9551326794ff0b1d86a8f60f542df',NULL,NULL,NULL,NULL,'1','2018-05-17 17:40:32','1','2018-05-17 17:40:32','null','0'),('cbb22d3b2da448379a667b55b66332a3','f3849749a2df40a98c0035330cca5169','机械故障','测试大V是','而非我无法我无法v',NULL,'1','2018-05-30 15:42:20','1','2018-05-31 11:25:08','null','0'),('cc66b5b785854576960e68b30a6c52c6','2c3076c75f544defb6a841b016d1dbc4','螺丝松动','螺丝磨损','由于螺丝磨损导致的螺丝松动',NULL,NULL,'2018-06-01 10:43:24',NULL,'2018-06-01 12:06:03','null','0'),('e5459d3e931d4bc186bd590cff251060','20857f1011eb493f8a6a360c6548afb5','222222','22222','222222',NULL,NULL,'2018-06-01 16:09:43',NULL,'2018-06-01 16:15:38','null','0'),('e97e3bcedb6248a2b3101fb92915d78d','2ca94cb2776646179fead1489939d7e9','机械故障','螺丝松动','由于螺丝松动导致的机械卡顿',NULL,'1','2018-05-31 08:58:17','1','2018-05-31 11:18:10','null','0'),('f48105f5c0d541cea4cb0a0d2f772037','1e0a9d00ccc14cbb8118429c65ce862e','gggh','bhh','ghh',NULL,NULL,'2018-06-01 16:10:54',NULL,'2018-06-01 16:14:58','null','0');
/*!40000 ALTER TABLE `equip_repair` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpi_perform_station`
--

DROP TABLE IF EXISTS `kpi_perform_station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kpi_perform_station` (
  `id` varchar(64) NOT NULL,
  `perform_id` varchar(64) NOT NULL DEFAULT '0' COMMENT '绩效数值',
  `station_id` varchar(64) NOT NULL DEFAULT '0' COMMENT '工站',
  `del_flag` varchar(5) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `remarks` char(1) DEFAULT '' COMMENT '备注',
  `create_by` varchar(64) NOT NULL DEFAULT '' COMMENT '创建者',
  `create_date` datetime NOT NULL DEFAULT '2019-05-01 12:00:00' COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL DEFAULT '' COMMENT '更新人',
  `update_date` datetime NOT NULL DEFAULT '2019-05-01 12:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='绩效参数与工站关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpi_perform_station`
--

LOCK TABLES `kpi_perform_station` WRITE;
/*!40000 ALTER TABLE `kpi_perform_station` DISABLE KEYS */;
INSERT INTO `kpi_perform_station` VALUES ('0e95b329f6b34dbda777a729c8f85e15','ed8033388bf745b8bbea14efedac5c15','eec1e5b6b75d473083fc68f4d0aa89ab','0',NULL,'1','2019-09-25 20:20:37','1','2019-09-25 20:20:37'),('5033b5b2a5dd4e5f873b90183425e65c','3da307723b8a4a0da593e691446dcee5','facb7c45a8b54ad9b243ba78ac46a0fe','1',NULL,'1e3851a285a4474c99fde9f824315168','2019-09-18 09:31:18','1e3851a285a4474c99fde9f824315168','2019-09-18 09:31:18'),('749335a4839e4600b511cf63f91fd207','53721059111140368908fb3428b401aa','8021d772bf09424f9dc51674ab419431','1',NULL,'1e3851a285a4474c99fde9f824315168','2019-09-18 09:26:39','1e3851a285a4474c99fde9f824315168','2019-09-18 09:26:39'),('a729ee89c918458f8efa1b6dc6e37fb5','53721059111140368908fb3428b401aa','209d1bfd96b943aa9d4f763906b875a2','0',NULL,'1e3851a285a4474c99fde9f824315168','2019-09-25 19:34:48','1e3851a285a4474c99fde9f824315168','2019-09-25 19:34:48'),('b1005fb1c3a448668d34333f718bb6c6','833cf822a690465fa349306829042791','7e1c273df5334c648142e72f0045876b','1',NULL,'1e3851a285a4474c99fde9f824315168','2019-09-18 09:27:31','1e3851a285a4474c99fde9f824315168','2019-09-18 09:27:31'),('b25985ec164344d1971b468e903e9311','a361653a265540a686eb334645cadd26','63688c609f824834bf0abca0171bc8a7','1',NULL,'1e3851a285a4474c99fde9f824315168','2019-09-18 09:44:13','1e3851a285a4474c99fde9f824315168','2019-09-18 09:44:13'),('d6173a5289244ca185af44eee54add2f','e19cc284c16d4500a1639faffffe5b60','facb7c45a8b54ad9b243ba78ac46a0fe','0',NULL,'1e3851a285a4474c99fde9f824315168','2019-09-25 15:03:22','1e3851a285a4474c99fde9f824315168','2019-09-25 15:03:22'),('e8751582266b426da19ebe83fb877239','e19cc284c16d4500a1639faffffe5b60','8021d772bf09424f9dc51674ab419431','11',NULL,'1e3851a285a4474c99fde9f824315168','2019-09-18 09:42:32','1e3851a285a4474c99fde9f824315168','2019-09-18 09:42:32');
/*!40000 ALTER TABLE `kpi_perform_station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kpi_performtype`
--

DROP TABLE IF EXISTS `kpi_performtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kpi_performtype` (
  `id` varchar(64) NOT NULL,
  `performTypeName` varchar(64) NOT NULL DEFAULT '' COMMENT '绩效名称',
  `performTypeNum` double NOT NULL DEFAULT '0' COMMENT '绩效数值',
  `performTypeUnit` varchar(5) NOT NULL DEFAULT '' COMMENT '绩效单位',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `remarks` varchar(255) DEFAULT '' COMMENT '备注信息',
  `create_by` varchar(64) NOT NULL DEFAULT '' COMMENT '创建者',
  `create_date` datetime NOT NULL DEFAULT '2019-05-01 12:00:00' COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL DEFAULT '' COMMENT '更新着',
  `update_date` datetime NOT NULL DEFAULT '2019-05-01 12:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='绩效方式表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kpi_performtype`
--

LOCK TABLES `kpi_performtype` WRITE;
/*!40000 ALTER TABLE `kpi_performtype` DISABLE KEYS */;
INSERT INTO `kpi_performtype` VALUES ('3baa1f2d940849c2b74f5da45f35dd4e','22',0,'2','0',NULL,'fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-25 22:18:50','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-25 22:18:50'),('3da307723b8a4a0da593e691446dcee5','王八',10,'元','0',NULL,'1e3851a285a4474c99fde9f824315168','2019-09-17 11:14:05','1e3851a285a4474c99fde9f824315168','2019-09-17 11:14:05'),('45834359fb524daf8ab0ef992b0787a1','5554',0,'55','0',NULL,'fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-25 22:19:45','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-26 15:10:35'),('53721059111140368908fb3428b401aa','金龙鱼',1,'元','0',NULL,'1e3851a285a4474c99fde9f824315168','2019-09-17 11:13:31','1e3851a285a4474c99fde9f824315168','2019-09-17 11:13:31'),('833cf822a690465fa349306829042791','很快斯巴达vkdb',0,'12','0',NULL,'1e3851a285a4474c99fde9f824315168','2019-09-25 15:03:05','1e3851a285a4474c99fde9f824315168','2019-09-25 15:03:05'),('a361653a265540a686eb334645cadd26','服务',1000,'强大','0',NULL,'1e3851a285a4474c99fde9f824315168','2019-09-17 11:17:56','1e3851a285a4474c99fde9f824315168','2019-09-18 09:39:58'),('bcdae5b948f64dff953c5af6ec433f2e','2',0,'2','0',NULL,'fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-25 22:19:15','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-25 22:19:15'),('dfec99f5c5c842aa8da08eb877a225e0','ww',0,'ww','1',NULL,'fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-26 15:10:21','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-26 15:10:21'),('e19cc284c16d4500a1639faffffe5b60','为企鹅的',0,'11','0',NULL,'1e3851a285a4474c99fde9f824315168','2019-09-18 09:43:52','1e3851a285a4474c99fde9f824315168','2019-09-18 09:43:52'),('ed8033388bf745b8bbea14efedac5c15','666',6,'6','0',NULL,'1','2019-09-25 20:19:38','1','2019-09-25 20:19:38');
/*!40000 ALTER TABLE `kpi_performtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_chopingbizrecords`
--

DROP TABLE IF EXISTS `log_chopingbizrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_chopingbizrecords` (
  `id` varchar(64) NOT NULL,
  `cardId` varchar(64) DEFAULT NULL,
  `employeeId` varchar(64) DEFAULT NULL,
  `employeeName` varchar(64) NOT NULL,
  `workCellId` varchar(64) DEFAULT NULL,
  `workCellName` varchar(64) DEFAULT NULL,
  `equipId` varchar(64) DEFAULT NULL,
  `equipName` varchar(64) DEFAULT NULL,
  `qrCode` varchar(64) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `pieces` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `creatorId` varchar(32) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifer` varchar(255) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_chopingbizrecords`
--

LOCK TABLES `log_chopingbizrecords` WRITE;
/*!40000 ALTER TABLE `log_chopingbizrecords` DISABLE KEYS */;
INSERT INTO `log_chopingbizrecords` VALUES ('4028811962e106430162e10c5d860021','2531785','8a11c2d061260eae01612665cf6202fd','haohu333','30ccd2fb23e6482d9ebe7552cc225b8c','切段',NULL,NULL,NULL,NULL,NULL,NULL,'2018-04-20 11:15:06',NULL,NULL,NULL,NULL,NULL),('4028811962e106430162e10c5f7d0022','2531785','8a11c2d061260eae01612665cf6202fd','haohu333','30ccd2fb23e6482d9ebe7552cc225b8c','切段',NULL,NULL,NULL,NULL,NULL,NULL,'2018-04-20 11:15:07',NULL,NULL,NULL,NULL,NULL),('4028811962e106430162e10c6e900024','2540681','8a11c2d061260eae01612665cf6202fd','haohu333','86bdd12fd951410d9a59f4ee1fdd7469','切段',NULL,NULL,NULL,NULL,NULL,NULL,'2018-04-20 11:15:10',NULL,NULL,NULL,NULL,NULL),('4028811962e106430162e10c711a0025','2540681','8a11c2d061260eae01612665cf6202fd','haohu333','86bdd12fd951410d9a59f4ee1fdd7469','切段',NULL,NULL,NULL,NULL,NULL,NULL,'2018-04-20 11:15:11',NULL,NULL,NULL,NULL,NULL),('4028811962e106430162e111d8c90057','2569438','8a11c2d061260eae01612665cf6202fd','haohu333','66d2e09e0fe244cba3598e0686d96409','切段',NULL,NULL,NULL,NULL,NULL,NULL,'2018-04-20 11:21:05',NULL,NULL,NULL,NULL,NULL),('4028811962e106430162e111db3c0058','2569438','8a11c2d061260eae01612665cf6202fd','haohu333','66d2e09e0fe244cba3598e0686d96409','切段',NULL,NULL,NULL,NULL,NULL,NULL,'2018-04-20 11:21:06',NULL,NULL,NULL,NULL,NULL),('4028811962e106430162e111ddbb0059','2569438','8a11c2d061260eae01612665cf6202fd','haohu333','c2f0f0924cbe4b5d9f3437355ddaf3c5','切段',NULL,NULL,NULL,NULL,NULL,NULL,'2018-04-20 11:21:07',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `log_chopingbizrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_cutpiecebizrecords`
--

DROP TABLE IF EXISTS `log_cutpiecebizrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_cutpiecebizrecords` (
  `id` varchar(64) NOT NULL,
  `cardId` varchar(64) DEFAULT NULL,
  `employeeId` varchar(64) DEFAULT NULL,
  `employeeName` varchar(64) NOT NULL,
  `workCellId` varchar(64) DEFAULT NULL,
  `workCellName` varchar(64) DEFAULT NULL,
  `equipId` varchar(64) DEFAULT NULL,
  `equipName` varchar(64) DEFAULT NULL,
  `qrCode` varchar(64) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `pieces` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `creatorId` varchar(32) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_cutpiecebizrecords`
--

LOCK TABLES `log_cutpiecebizrecords` WRITE;
/*!40000 ALTER TABLE `log_cutpiecebizrecords` DISABLE KEYS */;
INSERT INTO `log_cutpiecebizrecords` VALUES ('4028811962e106430162e109ab490001','2584945','8a11c2d061260eae01612665cf6202fd','haohu333','30ccd2fb23e6482d9ebe7552cc225b8c','开片',NULL,NULL,NULL,NULL,NULL,NULL,'2018-04-20 11:12:09',NULL,NULL,NULL,NULL,NULL),('4028811962e106430162e10a4d8d0002','2584945','8a11c2d061260eae01612665cf6202fd','haohu333','66d2e09e0fe244cba3598e0686d96409','开片',NULL,NULL,NULL,NULL,NULL,NULL,'2018-04-20 11:12:50',NULL,NULL,NULL,NULL,NULL),('4028811962e106430162e10a50600003','2584945','8a11c2d061260eae01612665cf6202fd','haohu333','86bdd12fd951410d9a59f4ee1fdd7469','开片',NULL,NULL,NULL,NULL,NULL,NULL,'2018-04-20 11:12:51',NULL,NULL,NULL,NULL,NULL),('4028811962e106430162e10a53160004','2584945','8a11c2d061260eae01612665cf6202fd','haohu333','c2f0f0924cbe4b5d9f3437355ddaf3c5','开片',NULL,NULL,NULL,NULL,NULL,NULL,'2018-04-20 11:12:52',NULL,NULL,NULL,NULL,NULL),('4028811962e106430162e10a557b0005','2584945','8a11c2d061260eae01612665cf6202fd','haohu333','30ccd2fb23e6482d9ebe7552cc225b8c','开片',NULL,NULL,NULL,NULL,NULL,NULL,'2018-04-20 11:12:53',NULL,NULL,NULL,NULL,NULL),('4028811962e106430162e10a70970006','2584945','8a11c2d061260eae01612665cf6202fd','haohu333','66d2e09e0fe244cba3598e0686d96409','开片',NULL,NULL,NULL,NULL,NULL,NULL,'2018-04-20 11:13:00',NULL,NULL,NULL,NULL,NULL),('4028811962e106430162e10a72f00007','2584945','8a11c2d061260eae01612665cf6202fd','haohu333','86bdd12fd951410d9a59f4ee1fdd7469','开片',NULL,NULL,NULL,NULL,NULL,NULL,'2018-04-20 11:13:00',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `log_cutpiecebizrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_cutpiecequalitytestingrecords`
--

DROP TABLE IF EXISTS `log_cutpiecequalitytestingrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_cutpiecequalitytestingrecords` (
  `id` varchar(64) CHARACTER SET utf8 NOT NULL,
  `cardId` varchar(64) CHARACTER SET utf8 NOT NULL COMMENT '员工工号',
  `employeeId` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `employeeName` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `workCellId` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `workCellName` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `equipId` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `equipName` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `qrCode` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `unit` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `error` double DEFAULT NULL,
  `qualified` int(11) DEFAULT NULL COMMENT '0:合格 ，1：不合格',
  `time` datetime DEFAULT NULL,
  `del_flag` char(1) DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `create_by` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_cutpiecequalitytestingrecords`
--

LOCK TABLES `log_cutpiecequalitytestingrecords` WRITE;
/*!40000 ALTER TABLE `log_cutpiecequalitytestingrecords` DISABLE KEYS */;
INSERT INTO `log_cutpiecequalitytestingrecords` VALUES ('201601','1000000004','40329b2170854281811464d3469efb7b','李林','201658503101','切片工位','1111','电子秤','003',210,'g',10,0,'2019-09-18 09:58:19','0','','1',NULL,'1',NULL),('201602','1000000007','bf452ccbb619402b9350d936ffce9645','黄飞虎','201658503102','切片工位','1112','电子秤','005',228,'g',28,1,'2019-09-16 09:58:54','0',NULL,'1',NULL,'1',NULL),('201603','1000000006','b9407ca0a16c43468f82162ea2cc668a','姚霞','201658503103','切片工位','1113','电子秤','004',228,'g',5,0,'2019-09-15 09:59:31','0',NULL,'1',NULL,'1',NULL),('201604','1000000004','40329b2170854281811464d3469efb7b','李林','201658503101','切片工位','1111','电子秤','003',189,'g',11,0,'2019-09-18 10:58:19','0','','1','2019-09-18 11:01:18','1','2019-09-18 11:01:33'),('201605','1000000007','bf452ccbb619402b9350d936ffce9645','黄飞虎','201658503102','切片工位','1112','电子秤','005',230,'g',30,1,'2019-09-16 09:58:54','0','','1','2019-09-18 11:02:50','1','2019-09-18 11:02:54'),('201606','1000000007','bf452ccbb619402b9350d936ffce9645','黄飞虎','201658503102','切片工位','1112','电子秤','005',210,'g',8,0,'2019-09-16 09:58:54','0','','1','2019-09-18 11:03:54','1','2019-09-18 11:03:56'),('201607','1000000007','bf452ccbb619402b9350d936ffce9645','黄飞虎','201658503102','切片工位','1112','电子秤','005',220,'g',28,1,'2019-09-16 09:58:54','0','','1','2019-09-18 11:04:29','1','2019-09-18 11:04:31'),('201608','1000000006','b9407ca0a16c43468f82162ea2cc668a','姚霞','201658503103','切片工位','1113','电子秤','004',209,'g',20,1,'2019-09-15 09:59:31','0','','1','2019-09-18 11:05:29','1','2019-09-18 11:05:31'),('201609','1000000006','b9407ca0a16c43468f82162ea2cc668a','姚霞','201658503103','切片工位','1113','电子秤','004',228,'g',10,0,'2019-09-15 09:59:31','0','','1','2019-09-18 11:06:00','1','2019-09-18 11:06:03'),('201610','1000000004','40329b2170854281811464d3469efb7b','李林','201658503101','切片工位','1111','电子秤','003',232,'g',20,1,'2019-09-18 09:58:19','0','','1','2019-09-18 11:06:30','1','2019-09-18 11:06:32'),('201611','1000000004','40329b2170854281811464d3469efb7b','李林','201658503101','切片工位','1111','电子秤','003',209,'g',6,0,'2019-09-18 09:58:19','0','','1','2019-09-18 11:07:31','1','2019-09-18 11:07:34');
/*!40000 ALTER TABLE `log_cutpiecequalitytestingrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_decaptitatingbizrecords`
--

DROP TABLE IF EXISTS `log_decaptitatingbizrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_decaptitatingbizrecords` (
  `id` varchar(64) NOT NULL,
  `cardId` varchar(64) DEFAULT NULL,
  `employeeId` varchar(64) DEFAULT NULL,
  `employeeName` varchar(64) NOT NULL,
  `workCellId` varchar(64) DEFAULT NULL,
  `workCellName` varchar(64) DEFAULT NULL,
  `equipId` varchar(64) DEFAULT NULL,
  `equipName` varchar(64) DEFAULT NULL,
  `qrCode` varchar(64) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `creatorId` varchar(32) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifer` varchar(255) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_decaptitatingbizrecords`
--

LOCK TABLES `log_decaptitatingbizrecords` WRITE;
/*!40000 ALTER TABLE `log_decaptitatingbizrecords` DISABLE KEYS */;
INSERT INTO `log_decaptitatingbizrecords` VALUES ('4028811962e106430162e10a83bd000c','2540681','8a11c2d061260eae01612665cf6202fd','haohu333','30ccd2fb23e6482d9ebe7552cc225b8c','去头','',NULL,NULL,90.75,NULL,'2018-04-20 11:13:04',NULL,NULL,NULL,NULL,NULL),('4028811962e106430162e10af029000f','2549222','8a11c2d061260eae01612665cf6202fd','haohu333','66d2e09e0fe244cba3598e0686d96409','去头',NULL,NULL,NULL,91.02,NULL,'2018-04-20 11:13:32',NULL,NULL,NULL,NULL,NULL),('4028811962e106430162e10b11290012','2550444','8a11c2d061260eae01612665cf6202fd','haohu333','86bdd12fd951410d9a59f4ee1fdd7469','去头',NULL,NULL,NULL,91.26,NULL,'2018-04-20 11:13:41',NULL,NULL,NULL,NULL,NULL),('4028811962e106430162e10b22a90015','2540681','8a11c2d061260eae01612665cf6202fd','haohu333','c2f0f0924cbe4b5d9f3437355ddaf3c5','去头',NULL,NULL,NULL,91.01,NULL,'2018-04-20 11:13:45',NULL,NULL,NULL,NULL,NULL),('4028811962e106430162e10bd4080018','2550444','8a11c2d061260eae01612665cf6202fd','haohu333','30ccd2fb23e6482d9ebe7552cc225b8c','去头',NULL,NULL,NULL,83.64,NULL,'2018-04-20 11:14:31',NULL,NULL,NULL,NULL,NULL),('4028811962e106430162e10bf906001b','2531785','8a11c2d061260eae01612665cf6202fd','haohu333','66d2e09e0fe244cba3598e0686d96409','去头',NULL,NULL,NULL,90.2,NULL,'2018-04-20 11:14:40',NULL,NULL,NULL,NULL,NULL),('4028811962e106430162e10c391a001e','2531772','8a11c2d061260eae01612665cf6202fd','haohu333','66d2e09e0fe244cba3598e0686d96409','去头',NULL,NULL,NULL,71.87,NULL,'2018-04-20 11:14:57',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `log_decaptitatingbizrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_removefishbonebizrecords`
--

DROP TABLE IF EXISTS `log_removefishbonebizrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_removefishbonebizrecords` (
  `id` varchar(64) NOT NULL,
  `cardId` varchar(64) DEFAULT NULL,
  `employeeId` varchar(64) DEFAULT NULL,
  `employeeName` varchar(64) NOT NULL,
  `workCellId` varchar(64) DEFAULT NULL,
  `workCellName` varchar(64) DEFAULT NULL,
  `equipId` varchar(64) DEFAULT NULL,
  `equipName` varchar(64) DEFAULT NULL,
  `qrCode` varchar(64) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `creatorId` varchar(32) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifer` varchar(255) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_removefishbonebizrecords`
--

LOCK TABLES `log_removefishbonebizrecords` WRITE;
/*!40000 ALTER TABLE `log_removefishbonebizrecords` DISABLE KEYS */;
INSERT INTO `log_removefishbonebizrecords` VALUES ('4028811962e106430162e10c5815001f','2584945','8a11c2d061260eae01612665cf6202fd','haohu333','30ccd2fb23e6482d9ebe7552cc225b8c','挑刺',NULL,NULL,NULL,NULL,NULL,'2018-04-20 11:15:05',NULL,NULL,NULL,NULL,NULL),('4028811962e106430162e10c5ac00020','2584945','8a11c2d061260eae01612665cf6202fd','haohu333','66d2e09e0fe244cba3598e0686d96409','挑刺',NULL,NULL,NULL,NULL,NULL,'2018-04-20 11:15:05',NULL,NULL,NULL,NULL,NULL),('4028811962e106430162e10c6c3b0023','2584945','8a11c2d061260eae01612665cf6202fd','haohu333','86bdd12fd951410d9a59f4ee1fdd7469','挑刺',NULL,NULL,NULL,NULL,NULL,'2018-04-20 11:15:10',NULL,NULL,NULL,NULL,NULL),('4028811962e106430162e10c72270026','2584945','8a11c2d061260eae01612665cf6202fd','haohu333','86bdd12fd951410d9a59f4ee1fdd7469','挑刺',NULL,NULL,NULL,NULL,NULL,'2018-04-20 11:15:11',NULL,NULL,NULL,NULL,NULL),('4028811962e106430162e10c74220027','2584945','8a11c2d061260eae01612665cf6202fd','haohu333','86bdd12fd951410d9a59f4ee1fdd7469','挑刺',NULL,NULL,NULL,NULL,NULL,'2018-04-20 11:15:12',NULL,NULL,NULL,NULL,NULL),('4028811962e106430162e10c76a10028','2584945','8a11c2d061260eae01612665cf6202fd','haohu333','86bdd12fd951410d9a59f4ee1fdd7469','挑刺',NULL,NULL,NULL,NULL,NULL,'2018-04-20 11:15:13',NULL,NULL,NULL,NULL,NULL),('4028811962e106430162e10df6110044','2560614','8a11c2d061260eae01612665cf6202fd','haohu333','86bdd12fd951410d9a59f4ee1fdd7469','挑刺',NULL,NULL,NULL,NULL,NULL,'2018-04-20 11:16:51',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `log_removefishbonebizrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material` (
  `id` varchar(60) NOT NULL COMMENT '编号',
  `batchNum` varchar(60) NOT NULL COMMENT '批号',
  `mType` varchar(60) NOT NULL COMMENT '材料类型',
  `mName` varchar(60) NOT NULL COMMENT '材料名称',
  `supplierId` varchar(60) NOT NULL COMMENT '供应商ID',
  `supplierName` varchar(60) NOT NULL COMMENT '供应商名称',
  `purchaseDate` date NOT NULL COMMENT '采购日期',
  `quantity` float NOT NULL COMMENT '数量（顿）',
  `unit` varchar(65) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` char(20) CHARACTER SET latin1 NOT NULL COMMENT '删除标记',
  `create_by` varchar(64) NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(45) NOT NULL COMMENT '更新人',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT INTO `material` VALUES ('001','001','bag200','biss','001','火星包','2019-01-01',98,'bag','','0','bzzb','2019-01-01 00:00:00','bzzb','2019-01-01 00:00:00'),('002','002','fresh_salmon','bzzb','002','深海鱼','2019-02-02',96,'kg','','0','ybxg','2019-02-02 00:00:00','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-24 17:27:27'),('003','003','bag200','biss','003','火星包２','2019-02-02',95,'bag',NULL,'0','bzzb','2019-02-02 00:00:00','bzzb','2019-02-02 00:00:00');
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mount_guard`
--

DROP TABLE IF EXISTS `mount_guard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mount_guard` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `employee_id` varchar(64) NOT NULL COMMENT '员工ID',
  `employeeNo` varchar(64) DEFAULT NULL COMMENT '员工工号',
  `employeeName` varchar(64) DEFAULT NULL,
  `office_id` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `line_id` varchar(64) DEFAULT NULL COMMENT '所属产线',
  `lineName` varchar(64) DEFAULT NULL,
  `station_id` varchar(64) DEFAULT NULL COMMENT '所属工站',
  `stationName` varchar(64) DEFAULT NULL,
  `cell_id` varchar(64) DEFAULT NULL COMMENT '工位',
  `cellName` varchar(64) DEFAULT NULL,
  `clockIn` datetime DEFAULT NULL COMMENT '打卡上班',
  `clockOff` datetime DEFAULT NULL COMMENT '打卡下班',
  `workTime` varchar(5) DEFAULT NULL COMMENT '一次上下班工作时间',
  `workStatus` varchar(10) DEFAULT NULL COMMENT '工作状态',
  `del_flag` char(1) NOT NULL COMMENT '删除标记',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工上岗表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mount_guard`
--

LOCK TABLES `mount_guard` WRITE;
/*!40000 ALTER TABLE `mount_guard` DISABLE KEYS */;
INSERT INTO `mount_guard` VALUES ('1','2b9683465507436d8cfbda456e57e4f3','1000000005','闫春相','6','b464047e15204d7bb62f437413fd5522','鱿鱼丝产线','9dc012d19aab4c9eb457857930d10b25','烘烤工站','ed5c2171f3964a5395274baea1ec3cbe','烘烤工位','2019-09-25 09:41:22','2019-09-25 17:41:36','8','下班','0',NULL,'1','2019-09-25 21:42:03','1','2019-09-25 21:42:06'),('10','2b9683465507436d8cfbda456e57e4f3','1000000005','闫春相','6','b464047e15204d7bb62f437413fd5522','鱿鱼丝产线','9dc012d19aab4c9eb457857930d10b25','烘烤工站','ed5c2171f3964a5395274baea1ec3cbe','烘烤工位','2017-05-11 21:46:43','2017-05-11 21:46:43','10','上班','0',NULL,'1','2019-09-25 21:43:44','1','2019-09-25 21:43:44'),('12','2b9683465507436d8cfbda456e57e4f3','1000000005','闫春相','6','b464047e15204d7bb62f437413fd5522','鱿鱼丝产线','9dc012d19aab4c9eb457857930d10b25','烘烤工站','ed5c2171f3964a5395274baea1ec3cbe','烘烤工位','2017-06-11 21:46:43','2017-06-11 21:46:43','9','上班','0',NULL,'1','2019-09-25 21:43:44','1','2019-09-25 21:43:44'),('13','2b9683465507436d8cfbda456e57e4f3','1000000005','闫春相','6','b464047e15204d7bb62f437413fd5522','鱿鱼丝产线','9dc012d19aab4c9eb457857930d10b25','挑刺工站','ed5c2171f3964a5395274baea1ec3cbe','挑刺工位','2017-07-11 21:46:43','2017-07-11 21:46:43','10','上班','0',NULL,'1','2019-09-25 21:43:44','1','2019-09-25 21:43:44'),('14','2b9683465507436d8cfbda456e57e4f3','100000004','景怡乐','6','b464047e15204d7bb62f437413fd5522','鱿鱼丝产线','9dc012d19aab4c9eb457857930d10b25','挑刺工站','ed5c2171f3964a5395274baea1ec3cbe','挑刺工位','2017-08-11 21:46:43','2017-08-11 21:46:43','8','上班','0',NULL,'1','2019-09-25 21:43:44',NULL,'2019-09-25 21:43:44'),('2','2b9683465507436d8cfbda456e57e4f3','1000000005','闫春相','6','b464047e15204d7bb62f437413fd5522','鱿鱼丝产线','9dc012d19aab4c9eb457857930d10b25','烘烤工站','ed5c2171f3964a5395274baea1ec3cbe','烘烤工位','2019-09-24 09:43:08','2019-09-25 17:43:24','20','下班','0',NULL,'1','2019-09-25 21:43:44','1','2019-09-25 21:43:48'),('3','2b9683465507436d8cfbda456e57e4f3','1000000005','闫春相','6','b464047e15204d7bb62f437413fd5522','鱿鱼丝产线','9dc012d19aab4c9eb457857930d10b25','烘烤工站','ed5c2171f3964a5395274baea1ec3cbe','烘烤工位','2019-08-08 21:45:04','2019-08-08 17:45:22','8','下班','0',NULL,NULL,NULL,NULL,NULL),('4','2b9683465507436d8cfbda456e57e4f3','1000000005','闫春相','6','b464047e15204d7bb62f437413fd5522','鱿鱼丝产线','9dc012d19aab4c9eb457857930d10b25','挑刺工站','ed5c2171f3964a5395274baea1ec3cbe','挑刺工位','2018-10-11 21:46:43','2018-10-11 17:46:55','3','下班','0',NULL,NULL,NULL,NULL,NULL),('5','5555','100000004','景怡乐','6','b464047e15204d7bb62f437413fd5522','鱿鱼丝产线','9dc012d19aab4c9eb457857930d10b25','烘烤工站','ed5c2171f3964a5395274baea1ec3cbe','烘烤工位','2018-10-11 21:46:43','2018-10-11 17:46:55','20','下班','0',NULL,'1',NULL,NULL,NULL),('6','2b9683465507436d8cfbda456e57e4f3','1000000005','闫春相','6','b464047e15204d7bb62f437413fd5522','鱿鱼丝产线','9dc012d19aab4c9eb457857930d10b25','烘烤工站','ed5c2171f3964a5395274baea1ec3cbe','烘烤工位','2017-08-11 21:46:43','2017-08-11 21:46:43','5','上班','0',NULL,'1','2019-09-25 21:43:44','1','2019-09-25 21:43:44');
/*!40000 ALTER TABLE `mount_guard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `orderNo` varchar(64) NOT NULL COMMENT '员工Id',
  `indentor` varchar(64) NOT NULL COMMENT '员工工号',
  `product_id` varchar(64) DEFAULT NULL COMMENT '姓名',
  `quantity` int(11) DEFAULT NULL COMMENT '所属部门',
  `unit` varchar(64) DEFAULT NULL COMMENT '所属产线',
  `orderDate` datetime DEFAULT NULL COMMENT '预计生产时间',
  `salesman` varchar(64) DEFAULT NULL COMMENT '预计结束时间',
  `status` varchar(64) DEFAULT NULL COMMENT '实际生产时间',
  `del_flag` char(1) NOT NULL COMMENT '删除标记',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建日期',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('1','1','1','1',1,'box','2018-05-26 16:47:06','1','workOrder','0','null','1','2018-05-26 16:47:06','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-24 16:05:01');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qc_abnormal_process`
--

DROP TABLE IF EXISTS `qc_abnormal_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qc_abnormal_process` (
  `id` varchar(64) NOT NULL,
  `pro_id` varchar(64) NOT NULL DEFAULT '' COMMENT '工序ID',
  `problem` varchar(200) NOT NULL DEFAULT '' COMMENT '问题描述',
  `report_user` varchar(64) NOT NULL DEFAULT '' COMMENT '上报人',
  `report_time` datetime NOT NULL COMMENT '上报时间',
  `test` varchar(200) NOT NULL DEFAULT '' COMMENT '检测描述',
  `test_user` varchar(64) NOT NULL DEFAULT '' COMMENT '检测人人',
  `test_time` datetime NOT NULL COMMENT '检测时间',
  `state` varchar(64) NOT NULL DEFAULT '' COMMENT '状态',
  `create_by` varchar(64) NOT NULL DEFAULT '' COMMENT '创建者',
  `create_date` datetime NOT NULL DEFAULT '2015-01-02 00:00:00' COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL DEFAULT '' COMMENT '更新着',
  `update_date` datetime NOT NULL DEFAULT '2017-04-05 00:00:00' COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT '' COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='异常工序检测';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qc_abnormal_process`
--

LOCK TABLES `qc_abnormal_process` WRITE;
/*!40000 ALTER TABLE `qc_abnormal_process` DISABLE KEYS */;
INSERT INTO `qc_abnormal_process` VALUES ('2a552128179b4918a66518a032b662f1','a2ca4fff0f844f09848a33d80f151b1c','温度计温度不标准','fe10556bf83e4b4eb8ad4c10c117aeba','2018-05-08 17:17:00','本批次的温度计问题客观环境','5a19d195cc47465888a6f66a8a4dfbec','2018-05-22 17:17:00','已解决','1','2018-05-24 17:17:41','1','2019-09-17 00:57:39',NULL,'0'),('9dafef1376944ea0aa2c59eebeb56c46','953719098b464d9699ff0258786bd058','读卡器无法读取信息','ef83ec0c592148c2991b12e6711e5911','2018-05-08 17:07:00','读卡器内部线路烧坏','181abcd9d1e04e0fb4f4b310031e2f86','2018-05-09 17:08:00','已解决','1','2018-05-26 17:09:44','1','2018-05-26 17:09:44',NULL,'0');
/*!40000 ALTER TABLE `qc_abnormal_process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qc_inperfections`
--

DROP TABLE IF EXISTS `qc_inperfections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qc_inperfections` (
  `id` varchar(64) NOT NULL,
  `pn` varchar(64) DEFAULT NULL COMMENT '产品编号',
  `bn` varchar(20) DEFAULT NULL COMMENT '批次编号',
  `wo_id` varchar(64) DEFAULT NULL COMMENT '工单编号',
  `desc` varchar(200) DEFAULT NULL,
  `create_by` varchar(64) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `del_flag` char(1) DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qc_inperfections`
--

LOCK TABLES `qc_inperfections` WRITE;
/*!40000 ALTER TABLE `qc_inperfections` DISABLE KEYS */;
INSERT INTO `qc_inperfections` VALUES ('289601b693994a3b98e33e683c2f01c7','1','1批次','138c128f116b4a6e980598243fc57a89','烘烤温度控制不恰当','1','2018-05-24 13:32:25','1','2018-06-01 16:50:53','0',NULL),('d0d648186d324dd7b97ad8eb4cd86ab7','1','1','972a4119bb9e4f05b599fb8bb020b410','洒大地','1e3851a285a4474c99fde9f824315168','2019-09-12 06:51:59','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-23 16:56:30','0',NULL),('fbd39092e382482c99c290aa5d7df66e','f1754ab55f5847a6963d306b10409db3','2批次','2c7d15094e1b4c239053c0a6432afd4a','冷藏温度不合适jug','1','2018-05-26 15:55:23','1e3851a285a4474c99fde9f824315168','2019-09-12 06:55:59','1',NULL);
/*!40000 ALTER TABLE `qc_inperfections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qc_violaction`
--

DROP TABLE IF EXISTS `qc_violaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qc_violaction` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '主键',
  `station_id` varchar(64) DEFAULT NULL COMMENT '工站编号',
  `pro_id` varchar(64) DEFAULT NULL COMMENT '工序编号',
  `userName` varchar(64) DEFAULT NULL COMMENT '违规人员',
  `violation_des` varchar(200) DEFAULT NULL COMMENT '违规描述',
  `violation_time` datetime DEFAULT NULL COMMENT '违规时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) DEFAULT NULL COMMENT '删除标记',
  `remarks` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qc_violaction`
--

LOCK TABLES `qc_violaction` WRITE;
/*!40000 ALTER TABLE `qc_violaction` DISABLE KEYS */;
INSERT INTO `qc_violaction` VALUES ('63688c609f824834bf0abca0171bc8a7','63688c609f824834bf0abca0171bc8a7','8112b7c264604d5bbf6b0f0e3af5651a','刘平','上班时间玩手机','2018-05-09 17:06:00','1','2018-05-26 17:06:14','2','2018-05-30 14:21:08','0',NULL),('b704ea7d3af84b9a94a8481891b6526c','b704ea7d3af84b9a94a8481891b6526c','a2ca4fff0f844f09848a33d80f151b1c','张三','在工作区抽烟','2018-05-26 16:21:00','1','2018-05-26 16:20:11','1','2018-06-01 16:29:00','0',NULL);
/*!40000 ALTER TABLE `qc_violaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_area`
--

DROP TABLE IF EXISTS `sys_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_area` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `code` varchar(100) DEFAULT NULL COMMENT '区域编码',
  `type` char(1) DEFAULT NULL COMMENT '区域类型',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_area_parent_id` (`parent_id`),
  KEY `sys_area_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='区域表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_area`
--

LOCK TABLES `sys_area` WRITE;
/*!40000 ALTER TABLE `sys_area` DISABLE KEYS */;
INSERT INTO `sys_area` VALUES ('1','0','0,','中国',10,'100000','1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('1eddac4de095495f9d9f413d322d2a23','2','null2,','烟台市',30,'00003','3','509e20b7d0f9447bbb6098c592b7cb28','2018-05-26 11:47:11','509e20b7d0f9447bbb6098c592b7cb28','2018-05-26 11:47:11','','0'),('2','1','0,1,','山东省',20,'110000','2','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');
/*!40000 ALTER TABLE `sys_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict`
--

DROP TABLE IF EXISTS `sys_dict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dict` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `value` varchar(100) NOT NULL COMMENT '数据值',
  `label` varchar(100) NOT NULL COMMENT '标签名',
  `type` varchar(100) NOT NULL COMMENT '类型',
  `description` varchar(100) NOT NULL COMMENT '描述',
  `sort` decimal(10,0) NOT NULL COMMENT '排序（升序）',
  `parent_id` varchar(64) DEFAULT '0' COMMENT '父级编号',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_dict_value` (`value`),
  KEY `sys_dict_label` (`label`),
  KEY `sys_dict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict`
--

LOCK TABLES `sys_dict` WRITE;
/*!40000 ALTER TABLE `sys_dict` DISABLE KEYS */;
INSERT INTO `sys_dict` VALUES ('032a60a572594daebd5bb6efd9718677','一般工单','一般工单','workorder_type','工单类型',10,'0','1','2018-05-19 15:01:33','1','2018-05-19 17:54:13','','0'),('0ec8ff1e32d9485997a4752260951438','six','6','piece_num','每盘6片',10,'0','1','2019-04-25 15:48:08','1','2019-04-25 15:48:08','','0'),('1','0','正常','del_flag','删除标记',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','yellow','黄色','color','颜色值',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('105','1','会议通告','oa_notify_type','通知通告类型',10,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('106','2','奖惩通告','oa_notify_type','通知通告类型',20,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('107','3','活动通告','oa_notify_type','通知通告类型',30,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('108','0','草稿','oa_notify_status','通知通告状态',10,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('109','1','发布','oa_notify_status','通知通告状态',20,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('11','orange','橙色','color','颜色值',50,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('110','0','未读','oa_notify_read','通知通告状态',10,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('111','1','已读','oa_notify_read','通知通告状态',20,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('12','default','默认主题','theme','主题方案',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','cerulean','天蓝主题','theme','主题方案',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('14','readable','橙色主题','theme','主题方案',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('15','united','红色主题','theme','主题方案',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('16','flat','Flat主题','theme','主题方案',60,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('17','1','国家','sys_area_type','区域类型',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('170f790abba444678f6d6899e51621ab','mm','月','equip_cycle','设备保养周期',20,'0','1','2018-05-16 16:37:13','1','2018-05-16 16:37:13','','0'),('18','2','省份、直辖市','sys_area_type','区域类型',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('19','3','地市','sys_area_type','区域类型',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','删除','del_flag','删除标记',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('20','4','区县','sys_area_type','区域类型',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('21','1','公司','sys_office_type','机构类型',60,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('21496be344114f31bf7d2c1c4a71006c','manage_001','零售','manage_type','产品管理',10,'0','1','2018-05-14 13:16:07','1','2018-05-14 13:24:51','产品管理方式','0'),('21d453c4d8514a0ab3e062a0c3415308','fresh_salmon','鲜马哈鱼','material_type','新鲜冷冻的马哈鱼',10,'0','1','2019-04-11 15:24:57','1','2019-04-11 15:29:54','','0'),('22','2','部门','sys_office_type','机构类型',70,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('23','3','小组','sys_office_type','机构类型',80,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('24','4','其它','sys_office_type','机构类型',90,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('25','1','综合部','sys_office_common','快捷通用部门',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('26','2','开发部','sys_office_common','快捷通用部门',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('264b41fa7b26444cb79b2ec115b0bd1c','yy','年','equip_cycle','设备保养周期',20,'0','1','2018-05-16 16:37:26','1','2018-05-16 16:37:26','','0'),('27','3','人力部','sys_office_common','快捷通用部门',50,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('28','1','一级','sys_office_grade','机构等级',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('29','2','二级','sys_office_grade','机构等级',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('290bc1ef6f93485d8fb8f3d5fbf28ebd','0002','重量','equip_spec','设备规格',20,'0','1','2018-05-15 17:40:57','1','2018-05-15 17:40:57','重量','0'),('29f1868d069647588bf0f8ef90c03cee','0005','扫码枪','equip_type','设备类型',20,'0','1','2018-05-15 17:38:23','1','2018-05-15 17:38:23','扫码枪','0'),('3','1','显示','show_hide','显示/隐藏',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('30','3','三级','sys_office_grade','机构等级',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('31','4','四级','sys_office_grade','机构等级',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('32','1','所有数据','sys_data_scope','数据范围',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('323a0329aef94ce8b4c80216c91a46b9','cancelled','已取消','order_status','订单被取消',40,'0','1','2019-04-17 10:37:45','1','2019-04-17 10:37:45','','0'),('33','2','所在公司及以下数据','sys_data_scope','数据范围',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('34','3','所在公司数据','sys_data_scope','数据范围',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('35','4','所在部门及以下数据','sys_data_scope','数据范围',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('36','5','所在部门数据','sys_data_scope','数据范围',50,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('37','8','仅本人数据','sys_data_scope','数据范围',90,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('37ecbb08093b430f8725c790a753bbc2','0003','体积','equip_spec','设备规格',20,'0','1','2018-05-15 17:41:14','1','2018-05-15 17:41:14','体积','0'),('38','9','按明细设置','sys_data_scope','数据范围',100,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('39','1','系统管理','sys_user_type','用户类型',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('39d8dabf5ca548fe8f3a147072c7b2cc','unreleased','未发布','workorder_state','工单状态',10,'0','1','2018-05-19 14:45:30','1','2019-04-17 10:29:26','','0'),('3da5f35be09f4d1abe49632f3bdb34ae','0001','上报','eqiup_maintenance','报修记录状态',10,'0','1','2018-05-17 10:51:57','1','2018-05-17 10:51:57','','0'),('3e877bc90c7a4ab88f1725a8a314532e','week','周','equip_cycle','设备保养周期',10,'0','1','2018-05-16 16:36:56','1','2018-05-16 16:36:56','设备保养周期','0'),('3eb9d7883d1f477d93228670b410216b','cut_piece_error','20','quality_testing','切片工位质量检测，每片误差为+-20克',10,'0','1','2019-04-25 09:26:48','1','2019-04-25 10:52:56','','0'),('4','0','隐藏','show_hide','显示/隐藏',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('40','2','部门经理','sys_user_type','用户类型',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('40077f0c1aed4ed0ac17d9adf2670c10','0005','无效','eqiup_maintenance','报修记录状态',20,'0','1','2018-05-17 11:21:30','1','2018-05-17 11:21:30','','0'),('41','3','普通用户','sys_user_type','用户类型',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('42','basic','基础主题','cms_theme','站点主题',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('45','article','文章模型','cms_module','栏目模型',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('47ece1219f2d481d82cf284acc621e03','type_002','扫描枪','eq_type','设备类型',10,'0','1','2018-05-10 15:10:21','1','2018-05-10 15:17:21','','0'),('48','link','链接模型','cms_module','栏目模型',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4a4882f35f1a4ac2805347663fae7df0','newOrder','新订单','order_status','新建的订单',10,'0','1','2019-04-17 10:35:59','1','2019-04-17 10:35:59','','0'),('4b130604f532452ea20329e1e14432fa','ten','10','piece_num','每盘10片',10,'0','1','2019-04-25 15:48:33','1','2019-04-25 15:48:33','','0'),('5','1','是','yes_no','是/否',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('50','0','默认展现方式','cms_show_modes','展现方式',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('51','1','首栏目内容列表','cms_show_modes','展现方式',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('51f1b47e230b4f21a25bb383eea92f9e','0004','完工','eqiup_maintenance','报修记录状态',20,'0','1','2018-05-17 10:53:09','1','2018-05-17 10:53:09','','0'),('52','2','栏目第一条内容','cms_show_modes','展现方式',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('53','0','发布','cms_del_flag','内容状态',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('54','1','删除','cms_del_flag','内容状态',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5456cece6bd843b0bf4b0111beeca6ab','0001','电子秤','equip_type','设备类型',30,'0','1','2018-05-15 17:37:37','1','2018-05-16 14:17:49','电子秤','0'),('55','2','审核','cms_del_flag','内容状态',15,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('55a1bfbab0e544d4b2bdcd0db1f5ebe1','complete','已完成','order_status','订单已经完成',30,'0','1','2019-04-17 10:37:12','1','2019-04-17 10:37:12','','0'),('56','1','首页焦点图','cms_posid','推荐位',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('57','2','栏目页文章推荐','cms_posid','推荐位',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('58','1','咨询','cms_guestbook','留言板分类',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('59','2','建议','cms_guestbook','留言板分类',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('59cc88dc49e244728360f7e2d859b7c8','0001','长度','equip_spec','设备规格',10,'0','1','2018-05-15 17:40:41','1','2018-05-15 17:40:41','长度','0'),('5cb87b3102814985bae7c3a21480374f','bag200','包装袋200克','material_type','每袋装200克烤鱼片',12,'0','1','2019-04-11 15:28:14','1','2019-04-11 15:30:42','','0'),('5e2024a28c4443fab24be97de4b777bd','bag50','包装袋50克','material_type','每袋装50克烤鱼片',14,'0','1','2019-04-11 15:28:58','1','2019-04-11 15:31:02','','0'),('5f7fce065fb34bccba30214231e619e5','released','已发布','workorder_state','工单状态',20,'0','1','2018-05-19 14:46:42','1','2019-04-17 10:29:36','','0'),('6','0','否','yes_no','是/否',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('60','3','投诉','cms_guestbook','留言板分类',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('61','4','其它','cms_guestbook','留言板分类',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('610165b33b7347fba28b32260268e29b','spec_001','手持式','eq_spec','设备规格',10,'0','1','2018-05-10 15:18:52','1','2018-05-10 15:19:42','','0'),('62','1','公休','oa_leave_type','请假类型',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('63','2','病假','oa_leave_type','请假类型',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('64','3','事假','oa_leave_type','请假类型',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('64a92747057c4310b0215bc0ae2e8380','ge','个','unit','数量单位',50,'0','1','2019-04-18 11:07:35','1','2019-04-18 11:08:24','','0'),('65','4','调休','oa_leave_type','请假类型',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('65788dde32f0463da36d4e2929a60ed2','box','箱','unit','数量单位',30,'0','1','2019-04-17 17:39:47','1','2019-04-17 17:39:47','','0'),('66','5','婚假','oa_leave_type','请假类型',60,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('67','1','接入日志','sys_log_type','日志类型',30,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('68','2','异常日志','sys_log_type','日志类型',40,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('69','leave','请假流程','act_type','流程类型',10,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('7','red','红色','color','颜色值',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('70','test_audit','审批测试流程','act_type','流程类型',20,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('71','1','分类1','act_category','流程分类',10,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('72','2','分类2','act_category','流程分类',20,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('8','green','绿色','color','颜色值',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('8e95a67beef640029d8fe2867cd00733','0002','读卡器','equip_type','设备类型',20,'0','1','2018-05-15 17:37:54','1','2018-05-16 14:17:56','读卡器','0'),('9','blue','蓝色','color','颜色值',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('902ea3bd07ec4c70b63b2b7af2538a5d','0003','维修','eqiup_maintenance','报修记录状态',20,'0','1','2018-05-17 10:52:42','1','2018-05-17 10:52:42','','0'),('96','1','男','sex','性别',10,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'0'),('968eb751319248b9af60a2ea218b6975','cancelled','取消','workorder_state','工单状态',60,'0','1','2018-05-19 14:49:17','1','2019-04-17 10:30:54','','0'),('97','2','女','sex','性别',20,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'0'),('9bac1ae3650b48779c68ecfd67eee2b4','el_2_3','鳗鱼2kg-3kg','material_type','鲜鳗鱼2kg到3kg每条',11,'0','1','2019-04-11 15:27:24','1','2019-04-11 15:30:20','','0'),('9c5bb4e441fd4249b696ab68c389c901','0003','打印机','equip_type','设备类型',20,'0','1','2018-05-16 09:42:34','1','2018-05-16 14:18:02','','0'),('9ead79935de5488a92c835fb1d76621d','0002','派工','eqiup_maintenance','报修记录状态',20,'0','1','2018-05-17 10:52:16','1','2018-05-17 10:52:16','','0'),('a061f2df38cd43229043313a5bdb3522','k','克','unit','质量单位',10,'0','1','2019-04-17 17:37:37','1','2019-04-17 17:38:54','','0'),('a09324fef4cb4d75acede2a7d9d41c3a','kg','千克','unit','质量单位',20,'0','1','2019-04-17 17:38:03','1','2019-04-17 17:39:11','','0'),('a73f79a6e92c4600b02a24af91e85254','cut_piece_200g','200','quality_testing','切片时，每片标准质量为200g',20,'0','1','2019-04-25 10:54:29','1','2019-04-25 10:54:29','','0'),('b55e89bc735e4a2c9458e6f947fe5ed0','加班工单','加班工单','workorder_type','工单类型',20,'0','1','2018-05-19 15:01:48','1','2018-05-19 17:54:26','','0'),('bd2049b3961a4899a774a5e3c26db0ab','spec_002','固定式','eq_spec','设备规格',20,'0','1','2018-05-10 15:19:29','1','2018-05-10 15:19:29','','0'),('c498be07902e42f09991e0e54629f891','bag','袋','unit','数量单位',40,'0','1','2019-04-17 17:44:42','1','2019-04-17 17:44:42','','0'),('c8b1db2e89d34c5da2fd86d55c36a078','manage_002','批发','manage_type','产品管理',20,'0','1','2018-05-14 13:24:23','1','2018-05-14 13:25:08','产品管理方式','0'),('d4d5ae6bf8fd46ffabab0e8d32f2827d','complete','已完成','workorder_state','工单状态',40,'0','1','2018-05-19 14:48:32','1','2019-04-17 10:29:57','','0'),('d82db92479ce4fc1a41c697f42fdcc28','workOrder','已下工单','order_status','订单已经下了工单',20,'0','1','2019-04-17 10:36:36','1','2019-04-17 10:36:36','','0'),('e01016dc6c1b4464a43d1089e85ea94e','type_001','计数器','eq_type','设备类型',10,'0','1','2018-05-10 15:09:45','1','2018-05-10 15:17:29','','0'),('e4fa1ca4fcb041728ea583070d2390b2','0004','PAD','equip_type','设备类型',20,'0','1','2018-05-15 18:34:38','1','2018-05-16 14:18:09','安卓PAD','0'),('e9e2bb79fc7f4f3a838272762faa4c0f','closed','结案','workorder_state','工单状态',70,'0','1','2018-05-19 14:49:37','1','2019-04-17 10:31:14','','0'),('f8b4dbe0701841c0bafb1ac4b842758b','onHold','暂停','workorder_state','工单状态',50,'0','1','2018-05-19 14:49:01','1','2019-04-17 10:30:17','','0');
/*!40000 ALTER TABLE `sys_dict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `type` char(1) DEFAULT '1' COMMENT '日志类型',
  `title` varchar(255) DEFAULT '' COMMENT '日志标题',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `remote_addr` varchar(255) DEFAULT NULL COMMENT '操作IP地址',
  `user_agent` varchar(255) DEFAULT NULL COMMENT '用户代理',
  `request_uri` varchar(255) DEFAULT NULL COMMENT '请求URI',
  `method` varchar(5) DEFAULT NULL COMMENT '操作方式',
  `params` text COMMENT '操作提交的数据',
  `exception` text COMMENT '异常信息',
  PRIMARY KEY (`id`),
  KEY `sys_log_create_by` (`create_by`),
  KEY `sys_log_request_uri` (`request_uri`),
  KEY `sys_log_type` (`type`),
  KEY `sys_log_create_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
INSERT INTO `sys_log` VALUES ('013a0f7e59224e91b830c80268705bd4','1','系统设置-机构用户-用户管理','1','2018-05-02 16:51:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('01651191c62841e3a1536d951c2261ba','1','系统设置-机构用户-用户管理-修改','1','2018-05-02 18:32:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/save','POST','id=5&photo=&company.id=1&company.name=山东省总公司&office.id=5&office.name=技术部&no=0005&name=技术部&oldLoginName=sd_jsb&loginName=sd_jsb&newPassword=&confirmNewPassword=&email=&phone=&mobile=&loginFlag=1&userType=&roleIdList=6&_roleIdList=on&remarks=',''),('020b21613ae047248b84d1d026f717ed','1','系统设置-机构用户-机构管理','1','2018-05-02 13:07:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/office/','GET','',''),('022fc22f8bfa48a9bd49fa4bbfbd13ae','1','我的面板-个人信息-个人信息','1','2018-05-02 14:48:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('02b1034a9e264fdd92b4ba4bcf7dc1be','1','内容管理-内容管理-内容发布','1','2018-05-02 15:26:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/','GET','',''),('02d69c63123143449a147e086a932efb','1','系统设置-系统设置-菜单管理','1','2018-05-02 18:24:15','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('03550ffa52f447e6a42bda2a6bd0ef5b','1','在线办公-通知通告-我的通告','1','2018-05-02 14:48:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','',''),('0466081dd1a142d589aed928ef483521','1','在线办公-通知通告-通告管理','1','2018-05-02 15:25:43','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/oa/oaNotify','GET','',''),('04d4094848974547b1721f21a44744d6','1','系统登录','5','2018-05-02 18:30:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a','GET','login=',''),('05454057b3a14126840650036bcd46f9','1','在线办公-通知通告-我的通告','3','2018-05-02 18:29:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','',''),('0689a4092078417f99cfe24cf1659988','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 14:48:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('087723ad1e834f8498a1070b75381d1b','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 18:32:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/list','GET','repage=',''),('08e52ec838bf4e53bc40b5178a56f7e5','1','代码生成-代码生成-业务表配置','1','2018-05-02 19:04:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genTable','GET','',''),('091e5684e981499bb07474423be03e94','1','内容管理-内容管理','1','2018-05-02 18:27:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/tree','GET','',''),('093710bdd85144098cc210431ef36ad5','1','系统设置-系统设置-角色管理-查看','1','2018-05-02 18:39:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/form','GET','id=6',''),('093bbc7e265b489198db43c8cfb0f2c3','1','系统设置-机构用户-区域管理','1','2018-05-02 13:07:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/area/','GET','',''),('09b4f544c3dc43afb68cc4e75ebab26c','1','代码生成-代码生成-业务表配置','1','2018-05-02 18:01:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genTable','GET','',''),('0a303e7049fb4e5fb60e79bb094930da','1','代码生成-生成示例-测试用户','5','2018-05-02 18:39:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testUser','GET','',''),('0a3c21ccc5334ef6aa01651ebd14d0b6','1','系统设置-系统设置-字典管理','1','2018-05-02 15:28:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/dict/','GET','',''),('0b6602ae4ee84481b0c3a0ea2de000fb','1','内容管理-栏目设置-站点设置','1','2018-05-02 13:07:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/site/','GET','',''),('0b92829b79f3466bacc78ce4246c1d37','1','系统设置-系统设置-角色管理-查看','1','2018-05-02 18:31:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/form','GET','id=6',''),('0bba2cd5fa7943f59811b34ed5604626','1','系统设置-机构用户-用户管理-查看','3','2018-05-02 18:28:56','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('0c134ca24507419bbe8454d025317089','1','系统设置-系统设置-菜单管理','3','2018-05-02 18:28:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('0c48b574743c42a8a5589fb2c5389992','1','系统设置-机构用户-用户管理','1','2018-05-02 15:28:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('0ca956cd89594329bb6b401919a81639','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 18:26:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('0ce11695261b4403bbd25d4d70a05709','1','系统登录','5','2018-05-02 18:32:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a','GET','login=',''),('0dd99700ff924afa83e8d811d4252f3f','1','系统设置-系统设置-菜单管理-查看','1','2018-05-02 18:26:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/form','GET','id=a89f30f6a8c1471c9f5c53cb8e36e175',''),('0ea490b21bb4410a82c231e9acd76048','1','内容管理-统计分析-信息量统计','1','2018-05-02 13:07:55','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/stats/article','POST','categoryId=&categoryName=&officeId=&officeName=&beginDate=2018-05-01&endDate=2018-05-31',''),('0ee58a6ed4644965bdba7cd2f653a278','1','系统设置-系统设置-字典管理','1','2018-05-02 13:10:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/dict/','POST','pageNo=3&pageSize=30&type=&description=',''),('105cd7a65bef47a187fccb460d076149','1','系统设置-系统设置-字典管理','3','2018-05-02 18:29:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/dict/','GET','',''),('105dbe80cc484092b309daf3f1892c1a','1','在线办公-个人办公-我的任务','1','2018-05-02 13:02:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/act/task/todo/','GET','procDefKey=leave&beginDate=&endDate=',''),('128e2024568b44c69d29a6b081e65fa5','1','我的面板-个人信息-个人信息','1','2018-05-02 13:08:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('12912d22f1224bfc82bfa28ed30a5998','1','内容管理-内容管理','1','2018-05-02 13:07:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/none','GET','',''),('1331747e79e446658be4f395be0862a9','1','系统设置-系统设置-角色管理-修改','1','2018-05-02 18:27:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/assign','GET','id=1',''),('141ea8ce41994cf99d88bb19ad7911ab','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 19:01:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('148e1b559e5f4a9b81a6fb5faf6cc721','1','系统登录','1','2018-05-02 18:30:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a','GET','login=',''),('14af4218fd5846eda960da56d9da9979','1','我的面板-个人信息-个人信息','1','2018-05-02 18:27:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('153df40048504053869880cf20023600','1','内容管理-内容管理-内容发布','1','2018-05-02 13:07:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/','GET','',''),('166c9963d43e45c38cc079d76c0032e1','1','系统设置-系统设置-菜单管理','1','2018-05-02 18:26:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('17a6a290fd0a48868b46afdbf69a0189','1','系统设置-系统设置-角色管理-查看','1','2018-05-02 18:31:37','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/form','GET','id=1',''),('17cf3fd231a146d89325eceb3d3e7b6b','1','系统设置-系统设置-角色管理','1','2018-05-02 13:04:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/','GET','',''),('1857562809e14a75bdb973b820bf7365','1','代码生成-生成示例-树结构-查看','1','2018-05-02 13:06:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testTree/','POST','name=',''),('19937817b4d749c8abc5725a75d3bb8e','1','系统设置-机构用户-用户管理','1','2018-05-02 18:38:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('1996d613ec204860ab126d59e33adb6c','1','代码生成-生成示例-树结构-查看','1','2018-05-02 13:06:15','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testTree/','GET','',''),('1a15f2ab159b4a1587c2b1398776fe6f','1','系统设置-系统设置-字典管理','1','2018-05-02 13:06:47','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/dict/','GET','',''),('1c020ea502af40a2b08ceb0cdf04c444','1','系统设置-机构用户-机构管理-查看','1','2018-05-02 15:29:56','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/office/list','GET','id=&parentIds=',''),('1d7cf8049a344a76bb51f0200592c2c6','1','内容管理-内容管理','1','2018-05-02 13:08:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/none','GET','',''),('1e0bd1f427084c57b3735a15038d2718','1','代码生成-代码生成-生成方案配置','1','2018-05-02 19:02:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genScheme','GET','',''),('1e9c77a240f14c26a4aa57bf04b784b9','1','内容管理-内容管理-内容发布-文章模型','1','2018-05-02 11:36:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=5',''),('1ed963100dcd456e90d52314d029d8da','1','代码生成-生成示例-树结构-查看','1','2018-05-02 13:06:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testTree/','POST','name=',''),('1f6b951c52ae4e2a9851cacb284015f1','1','系统设置-系统设置-角色管理-修改','1','2018-05-02 13:04:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/assign','GET','id=7',''),('1f6f6140f8a746bfa9a92e1f227a25e6','1','系统登录','1','2018-05-02 14:48:14','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a','GET','login=',''),('1fc5cf98fe984adfad1f19cf12db7ee2','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 18:31:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/form','GET','id=5',''),('205cc830c18f439ab54b887b41345932','1','内容管理-内容管理-公共留言-查看','1','2018-05-02 13:08:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/guestbook/','GET','status=2',''),('2150f41b185c43d8934ec09a23f70f82','1','内容管理-内容管理','3','2018-05-02 18:29:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/none','GET','',''),('217da6e54cf2470f8df4bcc34606da46','1','系统设置-系统设置-菜单管理','1','2018-05-02 16:51:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('21d18b8065fb49bb98fccd68330b348a','1','系统设置-机构用户-用户管理','1','2018-05-02 14:48:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('2204b4b0465a46efbcc1cc537d612b14','1','代码生成-代码生成-业务表配置','1','2018-05-02 18:58:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genTable','GET','',''),('2214350278e4441681d65512a4b53b68','1','我的面板-个人信息-个人信息','1','2018-05-02 19:04:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('222a145a033c461fa70171fa705ca296','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 15:28:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('2390cb2d96714186af2801d06cea800c','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 16:49:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('2399276a980843b6955050eea342581d','1','系统设置-系统设置-菜单管理-查看','1','2018-05-02 18:26:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/form','GET','parent.id=a89f30f6a8c1471c9f5c53cb8e36e175',''),('2515811fbc1e4311bfb0cddc6ddbc874','1','代码生成-生成示例-树结构','1','2018-05-02 19:02:15','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testTree','GET','',''),('252836021b1a47458ed2fab7ba7cb1fe','1','系统登录','1','2018-05-02 11:36:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a','GET','login=',''),('25937071b31b4c8cb509f064baa4e913','1','系统设置-系统设置-菜单管理-查看','1','2018-05-02 18:22:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/form','GET','parent.id=3c92c17886944d0687e73e286cada573',''),('2597c20ca79b4e47b6c595f1bbd9e0a2','1','内容管理-栏目设置-站点设置','1','2018-05-02 13:07:37','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/site/','GET','',''),('2680460b4b8b47659ac8a8dcbcbd750e','1','系统设置-机构用户-用户管理','1','2018-05-02 13:12:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('278220d067804a0eb1815b15f9510b07','1','代码生成-生成示例-树结构-查看','1','2018-05-02 13:06:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testTree/','POST','name=',''),('283b32ed7d9444d88192cc909983e6ea','1','代码生成-代码生成-业务表配置','1','2018-05-02 18:26:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genTable','GET','',''),('286e760a6de943599be40312fa98b7d6','1','系统设置-系统设置-菜单管理-查看','1','2018-05-02 16:49:15','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/form','GET','id=56',''),('294ac8f39dc1451f984ae12f2691d32e','1','代码生成-生成示例-单表-查看','1','2018-05-02 11:37:15','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testData/','POST','pageNo=1&pageSize=30&user.id=&user.name=&office.id=6&office.name=研发部&area.id=5&area.name=历下区&name=&beginInDate=&endInDate=',''),('29b269defb124aef9f4bbc206cef1cd1','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 18:31:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('2a78a44801364b52aafe5e6b7e9dc837','1','系统设置-系统设置-菜单管理-修改','1','2018-05-02 18:24:43','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/save','POST','id=&parent.id=1&parent.name=功能菜单&name=测试用户&href=/test/testUser&target=&icon=user&sort=5030&isShow=1&permission=&remarks=',''),('2ab99206ef0646af921e0b51d48ed645','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 13:03:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('2c70315ab20f49999187379493080f6a','1','代码生成-代码生成-生成方案配置','3','2018-05-02 18:28:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genScheme','GET','',''),('2d595297b4ec4b90be72b8446a786ec6','1','系统设置-系统设置-角色管理-查看','1','2018-05-02 18:31:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/form','GET','id=4',''),('2edf802384db4288b6a73f8337ad9550','1','系统设置-系统设置-角色管理','1','2018-05-02 18:27:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/','GET','',''),('2f3b993cca2e40479db63d89476f1d9c','1','系统设置-系统设置-角色管理-修改','1','2018-05-02 18:39:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/save','POST','id=6&office.id=1&office.name=山东省总公司&oldName=普通用户&name=普通用户&oldEnname=d&enname=d&roleType=assignment&sysData=1&useable=1&dataScope=8&menuIds=1,79,3c92c17886944d0687e73e286cada573,a89f30f6a8c1471c9f5c53cb8e36e175&officeIds=&remarks=',''),('2f3be150310f4f99924cff440c7daab4','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 11:36:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('2f651383f6294e2db763bff0068afcab','1','内容管理-栏目设置-栏目管理-查看','1','2018-05-02 13:07:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/category/form','GET','',''),('2fb6a00a295a4b389218c8c9574f6ce2','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 15:26:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('2fcd5904fd9c41f5b0f04cdad9a74f2f','1','系统设置-机构用户-用户管理','1','2018-05-02 13:06:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('32b10937f07e41e081a2dcf2d603434e','1','系统设置-系统设置-角色管理','1','2018-05-02 18:31:41','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/','GET','',''),('3369cdcdd68c46dd8fce1844e25fdde7','1','系统设置-系统设置-角色管理-查看','1','2018-05-02 15:29:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/users','GET','officeId=2',''),('33c51e2464624f26a739dd7aaaee6b33','1','代码生成-生成示例-主子表-查看','1','2018-05-02 17:26:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testDataMain/','POST','pageNo=1&pageSize=30&user.id=&user.name=&name=&sex=',''),('340537d0d34f48b89af16101fc833a7f','1','系统登录','1','2018-05-02 19:01:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a','GET','login=',''),('344b6618ea5e4f03a5f8421fef9bf5b5','1','代码生成-代码生成-业务表配置','1','2018-05-02 11:36:37','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genTable','GET','',''),('34a54c4877b64d7091ce267c81633c6c','1','代码生成-代码生成-业务表配置','1','2018-05-02 18:57:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genTable','GET','',''),('362a45e8ef644eadad803364f6ca1207','1','代码生成-生成示例-测试用户','1','2018-05-02 19:05:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testUser','GET','',''),('365658e68b32409e9e061f017774fd97','1','系统设置-系统设置-角色管理','1','2018-05-02 18:26:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/','GET','',''),('36bded8891474a719e11a82a37aa9b6a','1','内容管理-栏目设置-切换站点','1','2018-05-02 13:07:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/site/select','GET','',''),('36fbcbd245664b85a9c75099221ed28c','1','代码生成-生成示例-树结构-查看','1','2018-05-02 11:40:03','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testTree/form','GET','',''),('375ba2a71fb742b992ba0b7fdf697265','1','代码生成-代码生成-业务表配置','3','2018-05-02 18:28:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genTable','GET','',''),('380f55efab1c4a1393de4d6741d78ae6','1','内容管理-栏目设置-切换站点','1','2018-05-02 13:07:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/site/select','GET','id=2',''),('3817022df3fa4ad9adb746eb45786e70','1','代码生成-代码生成-生成方案配置','1','2018-05-02 18:05:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genScheme','GET','',''),('38654b9a33a94454846ee9ad680f54ca','1','系统设置-系统设置-菜单管理','1','2018-05-02 18:26:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('39cbcbb0c30c490f86600a04147c50c2','1','在线办公-通知通告-我的通告','1','2018-05-02 13:08:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','',''),('3a4b00998dfa4bed983fa2c19548096a','1','我的面板-个人信息-个人信息','1','2018-05-02 11:36:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('3c3a11b634d8412f826daab6ca734380','1','代码生成-生成示例-树结构-查看','1','2018-05-02 17:26:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testTree/form','GET','',''),('3c5f25af21dc4ca2bf7ed2a70fda4cb1','1','系统设置-机构用户-用户管理','1','2018-05-02 18:27:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('3d6958c831f84fb79a520f5cff5e0dbf','1','系统设置-机构用户-用户管理','1','2018-05-02 19:01:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('3deb65f4a9824f188b3cf5aba8ab0c4e','1','代码生成-代码生成-业务表配置','1','2018-05-02 17:26:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genTable','GET','',''),('3dfc5e23aabd438dbb9789d6af58d1de','1','系统设置-系统设置-菜单管理-查看','1','2018-05-02 18:24:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/form','GET','id=30',''),('3e2a40016abf42f9a0567f45ea7754d8','1','代码生成-生成示例-树结构','1','2018-05-02 13:06:03','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testTree','GET','',''),('3ef34a992c4f4f7f9799bed207362efd','1','代码生成-生成示例-单表','1','2018-05-02 11:36:55','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testData','GET','',''),('406fb652a5234e7d92332acb85222eb4','1','系统设置-系统设置-字典管理','1','2018-05-02 13:04:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/dict/','GET','',''),('40907d67c7024b62928ac8dd6d39c58e','1','系统设置-系统设置-角色管理','1','2018-05-02 18:31:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/','GET','',''),('4090cb7bb60c45a9b2a8613a13716b7a','1','系统设置-系统设置-角色管理-修改','1','2018-05-02 16:52:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/assign','GET','id=7',''),('412bf41828d341cb8245c551105901ce','1','我的面板-个人信息-个人信息','1','2018-05-02 18:57:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('41ffb04a20f743dbbb620fc22656c82e','1','我的面板-个人信息-修改密码','1','2018-05-02 11:38:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/modifyPwd','GET','',''),('42363ea48c6c4a76b64e7bc2f9f4655f','1','系统设置-系统设置-角色管理','1','2018-05-02 18:31:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/','GET','',''),('4249fae4d2e04da78f5cd427e8243e59','1','代码生成-代码生成-业务表配置','1','2018-05-02 11:38:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genTable','GET','',''),('42ee030f688f4dcfb7883fbc65c6b585','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 18:22:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('433de537152c443792572689744bc02d','1','系统设置-系统设置-菜单管理','1','2018-05-02 18:38:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('43597c0bb69d4469bd7347c620defa76','1','系统设置-系统设置-菜单管理','1','2018-05-02 18:24:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('4437a5614e314f528c368015ffe9d928','1','系统设置-机构用户-机构管理-查看','1','2018-05-02 13:07:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/office/list','GET','id=&parentIds=',''),('448033815c584a4994331befb8b2a733','1','系统设置-系统设置-角色管理','1','2018-05-02 15:28:37','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/','GET','',''),('453cc1e4e8ab43e0a2535da26406c0d0','1','代码生成-代码生成-业务表配置','1','2018-05-02 19:02:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genTable','GET','',''),('46c566e5a8414ee5802683565c0145e4','1','系统设置-系统设置-菜单管理-修改','1','2018-05-02 18:26:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/save','POST','id=a89f30f6a8c1471c9f5c53cb8e36e175&parent.id=3c92c17886944d0687e73e286cada573&parent.name=生成示例&name=测试用户&href=/test/testUser&target=&icon=user&sort=5030&isShow=1&permission=&remarks=',''),('47cdcc24beaa48679e24f62212081883','1','代码生成-代码生成-生成方案配置','1','2018-05-02 18:57:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genScheme','GET','',''),('486aae48f90c4635a4a90d4f874d890b','1','系统设置-机构用户-区域管理','1','2018-05-02 16:51:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/area/','GET','',''),('4896eee6ab3443e2b7aae8adac55da40','1','系统登录','1','2018-05-02 19:08:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a','GET','login=',''),('490b12de4ff042989274f1e67cf50c05','1','在线办公-流程管理-流程管理','1','2018-05-02 15:33:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/act/process','GET','',''),('4beab533f62244219315c0309bb37d97','1','代码生成-代码生成-业务表配置','1','2018-05-02 14:48:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genTable','GET','',''),('4dcc255de016481eb3a985179dbf5e47','1','系统设置-系统设置-角色管理-查看','1','2018-05-02 15:29:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/usertorole','POST','id=2&___t0.14573206586785092=',''),('4ea9e28c9c5940d4abe76a7245f80670','1','系统设置-系统设置-角色管理-修改','1','2018-05-02 16:52:14','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/assign','GET','id=4',''),('4fb890a8dcc84210b044c9f1848f5410','1','系统设置-系统设置-菜单管理','1','2018-05-02 18:38:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('4fd35c2285fc4b8687a83d1733c05bc8','1','系统登录','5','2018-05-02 18:39:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a','GET','login=',''),('51732418c33941dd9d9303f710cc1649','1','系统设置-系统设置-角色管理','1','2018-05-02 16:49:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/','GET','',''),('51f7919471614a6d8b123c2a3aa0739c','1','我的面板-个人信息-个人信息','1','2018-05-02 18:21:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('5311d89f6df34c859ff2e8b695d84536','1','代码生成-生成示例-树结构','1','2018-05-02 17:26:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testTree','GET','',''),('5377806e869a4e2b9c1b2715c41abd2f','1','代码生成-生成示例-树结构','1','2018-05-02 11:40:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testTree','GET','',''),('5457b07516e54487ba7992d5678524eb','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 18:32:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('5521cfa834a44be98f1f76564ca50357','1','内容管理-内容管理-内容发布','1','2018-05-02 13:08:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/','GET','',''),('55df981c01d94782af10b97298ae5ab3','1','系统设置-系统设置-角色管理','1','2018-05-02 16:51:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/','GET','',''),('58604361c9e94572b846e37487e249f9','1','代码生成-生成示例-树结构-查看','1','2018-05-02 13:06:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testTree/','POST','name=',''),('5945837b5187434caf53eeae6abd245b','1','在线办公-个人办公-审批测试','1','2018-05-02 15:25:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/oa/testAudit','GET','',''),('59ec31f4a41e4f089113d0d9c2603928','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 13:08:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('5b02f22ef9394225ab812ca20bc68b90','1','系统设置-系统设置-菜单管理-修改','1','2018-05-02 18:38:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/delete','GET','id=c83f74e7f73a4921ab4936905da881b8',''),('5b3917c68d2a4ca4b132dc656b5c2e61','1','系统设置-系统设置-角色管理-查看','1','2018-05-02 15:29:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/users','GET','officeId=10',''),('5bdf9d1afb6845398ef1cf3d3652afc4','1','内容管理-内容管理-内容发布','1','2018-05-02 11:36:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/','GET','',''),('5bec561035c34bb18167021ca54fd8af','1','在线办公-流程管理-模型管理','1','2018-05-02 15:35:15','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/act/model','GET','',''),('5d215dd94b7b4e648c4fe4b162fadf1e','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 16:51:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('5d2389105aaf45149c9179494b1513b9','1','代码生成-代码生成-生成方案配置','1','2018-05-02 18:21:14','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genScheme','GET','',''),('5d9f076ee14c4cb49461ada8ae98d9bd','1','系统设置-系统设置-角色管理-查看','1','2018-05-02 15:29:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/users','GET','officeId=4',''),('5e9000f265214d37b24868cd82b213d0','1','系统设置-日志查询-日志查询','1','2018-05-02 13:04:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/log','GET','',''),('5ed74fc095cb45629702ea20e206e9dc','1','代码生成-代码生成-业务表配置','1','2018-05-02 13:11:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genTable','GET','',''),('5fad2b044bf54ca0af7908282a3e4ef1','1','系统设置-系统设置-角色管理-查看','3','2018-05-02 18:29:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/form','GET','id=4',''),('603e92998823481abf009ee5d7588f96','1','代码生成-生成示例-单表-查看','1','2018-05-02 17:26:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testData/','POST','pageNo=1&pageSize=30&user.id=&user.name=&office.id=&office.name=&area.id=&area.name=&name=&beginInDate=&endInDate=',''),('60a467875b1443be87daee309f72f919','1','代码生成-生成示例-主子表','1','2018-05-02 11:37:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testDataMain','GET','',''),('60a72712aadd4869b882ea1871238e43','1','系统设置-系统设置-角色管理-查看','1','2018-05-02 15:29:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/users','GET','officeId=8',''),('6171f00ed30d4233819d850eb9048ea3','1','在线办公-通知通告-我的通告','1','2018-05-02 13:08:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','',''),('61a535b95b9e431dbe2d724ed8f1cfa8','1','代码生成-生成示例-单表','1','2018-05-02 13:11:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testData','GET','',''),('61f094b7a6b94d449d2e224b2c09841b','1','系统设置-机构用户-机构管理','1','2018-05-02 16:51:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/office/','GET','',''),('6275a35a13334a0bace4d17f0a2d910e','1','系统设置-机构用户-用户管理','1','2018-05-02 18:32:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('6326ec6166b4428395f2d160ba6d0cd6','1','在线办公-个人办公-我的任务','1','2018-05-02 13:02:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/act/task/todo/','GET','',''),('63cfd34c3de447aa834ded217fea9c07','1','我的面板-个人信息-个人信息','1','2018-05-02 18:37:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('6529e9d87e9e4dd1bf4343b2a53bee80','1','系统设置-系统设置-角色管理-查看','1','2018-05-02 15:29:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/users','GET','officeId=9',''),('65ef3c8f738c4b0eb7ca8df841a07eda','1','系统设置-系统设置-菜单管理','1','2018-05-02 15:28:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('6655975a92514966963a2c87505f74a4','1','我的面板-个人信息-个人信息','1','2018-05-02 11:36:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('67fa1024c29a40d7aed4088acafc4340','1','系统设置-机构用户-用户管理','1','2018-05-02 16:49:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('68fde16d7c664d2a906c7500980e6eb0','1','内容管理-栏目设置-栏目管理','1','2018-05-02 13:07:43','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/category/','GET','',''),('6b11bf2c96754f59a139f27a08295e84','1','系统设置-系统设置-字典管理-查看','1','2018-05-02 13:11:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/dict/form','GET','id=39',''),('6d2dbe50e3764b948020c221a631da10','1','内容管理-内容管理','1','2018-05-02 11:36:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/tree','GET','',''),('6de3f38022394f0ca3e90461dc40edd7','1','内容管理-内容管理','1','2018-05-02 15:26:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/tree','GET','',''),('6e0d5a0be1ed4fdfa0baa2941d3a72c5','1','代码生成-代码生成-业务表配置','3','2018-05-02 18:29:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genTable','GET','',''),('6fce012b8bb348cdbb69f96cf1efc291','1','在线办公-流程管理-流程管理','1','2018-05-02 13:03:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/act/process','GET','',''),('705aaaa357d44c8b89309cbdb2924de0','1','在线办公-个人办公-我的任务','1','2018-05-02 15:25:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/act/task/todo/','GET','',''),('71fc5a373c3846d3a4d1c6d16cb060d8','1','系统设置-系统设置-菜单管理-查看','1','2018-05-02 18:24:55','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/form','GET','id=df7ce823c5b24ff9bada43d992f373e2',''),('72e299b7da6e404494efd1c75b143e5a','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 18:38:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('7317d0428c0b474ba26df424a014486d','1','系统登录','3','2018-05-02 18:28:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a','GET','login=',''),('735b8cac5622411185dafcd7cbefd5b9','1','在线办公-通知通告-我的通告','1','2018-05-02 19:02:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','',''),('737a281285f24357961c150123ec35be','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 13:03:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/list','GET','office.id=13&office.name=公司领导',''),('7387261ea2a9416cb0ac74af1fe75a52','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 15:29:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('7469478a487b4727a71104282307354c','1','系统登录','1','2018-05-02 18:57:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a','GET','login=',''),('74976c07456141cf97626d4b59cf283a','1','系统设置-机构用户-用户管理','3','2018-05-02 18:30:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('755d9a95fe8245e0b38b852f925278e6','1','系统设置-机构用户-用户管理-修改','1','2018-05-02 18:28:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/checkLoginName','GET','oldLoginName=sd_zhb&loginName=sd_zhb',''),('7604b474dcf14511bca935f697d9356b','1','代码生成-代码生成-业务表配置','1','2018-05-02 17:26:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genTable','GET','',''),('767f4447839e476dbc826a9b35d81602','1','系统设置-系统设置-菜单管理','1','2018-05-02 18:23:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('768a0b906526409ab964feab3b65bbaf','1','系统设置-系统设置-菜单管理-修改','1','2018-05-02 18:38:43','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/save','POST','id=a89f30f6a8c1471c9f5c53cb8e36e175&parent.id=3c92c17886944d0687e73e286cada573&parent.name=生成示例&name=测试用户&href=/test/testUser&target=&icon=user&sort=5030&isShow=1&permission=test:testUser:view,test:testUser:edit&remarks=',''),('7856be8a9dd34fa6895ab26f76898d5d','1','系统设置-机构用户-用户管理','1','2018-05-02 18:22:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('78c5eb65a9aa44f2af10c80e06501d93','1','在线办公-流程管理-流程管理','1','2018-05-02 15:26:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/act/process','GET','',''),('791ce179863b422cbfbd979f77bd53d4','1','代码生成-生成示例-树结构-查看','1','2018-05-02 13:06:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testTree/','POST','name=',''),('794510f6b11d4ec89418a7d74e11b30d','1','系统设置-机构用户-机构管理-查看','1','2018-05-02 16:51:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/office/list','GET','id=&parentIds=',''),('79ba871159a94ae49b80f82b51abc040','1','系统设置-机构用户-用户管理','1','2018-05-02 18:28:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('79fc1324979c4c7ab183bdb791ca699d','1','系统设置-系统设置-菜单管理-查看','1','2018-05-02 18:24:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/form','GET','',''),('7c1b0c9d122f4cb3b961972257069f15','1','系统设置-机构用户-用户管理','1','2018-05-02 18:26:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('7cd34662474946988813a5bdddd0eb6d','1','代码生成-代码生成-业务表配置','1','2018-05-02 19:02:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genTable','GET','',''),('7d60b93f87704ae9b0d9053be5eeea79','1','系统设置-系统设置-角色管理','1','2018-05-02 16:52:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/','GET','',''),('7debb7ea60dd42188a3cbc5d8470d539','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 13:12:14','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('7f177ac9fb614577b4d24c59c8653d71','1','内容管理-栏目设置-切换站点','1','2018-05-02 13:07:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/site/select','GET','id=2',''),('7f94b18b3cf644cc88e9a8697cf505b7','1','内容管理-内容管理','1','2018-05-02 13:07:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/tree','GET','',''),('7f9b72b8ba7b420abe50cd92d4fa69e3','1','系统设置-系统设置-角色管理-查看','1','2018-05-02 13:04:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/usertorole','POST','id=7&___t0.8199803413066871=',''),('7fa5bbc6cb9f4d4896cf61329e4e1103','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 13:04:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/form','GET','',''),('7fa76debe80544c682f1c3297ee54771','1','我的面板-个人信息-个人信息','1','2018-05-02 18:01:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('80250979f61c4291861a44a09b35d2f1','1','系统设置-系统设置-菜单管理-修改','1','2018-05-02 18:26:43','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/save','POST','id=&parent.id=a89f30f6a8c1471c9f5c53cb8e36e175&parent.name=测试用户&name=编辑&href=&target=&icon=&sort=60&isShow=1&permission=test:testUser:edit&remarks=',''),('80cc48bfea9a4062af9890bb656d63b0','1','系统设置-机构用户-用户管理-修改','1','2018-05-02 18:32:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/checkLoginName','GET','oldLoginName=sd_jsb&loginName=sd_jsb',''),('80fc80a7fea44840b4279212dc8f5b23','1','系统设置-系统设置-菜单管理-查看','1','2018-05-02 18:26:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/form','GET','id=a89f30f6a8c1471c9f5c53cb8e36e175',''),('8260a2146d33447198452c733d9af790','1','代码生成-生成示例-树结构-查看','1','2018-05-02 13:06:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testTree/','POST','name=',''),('826823f58a9441ae8012c2a44bcd7b46','1','系统设置-系统设置-角色管理-查看','1','2018-05-02 16:52:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/form','GET','',''),('832524fb11c84a79b6da1a207199517d','1','我的面板-个人信息-个人信息','1','2018-05-02 19:08:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('83b4a557f4a7485e97aa2b6ff6dae1c3','1','系统设置-系统设置-角色管理-查看','1','2018-05-02 18:27:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/form','GET','id=1',''),('849488505be3478cb08a4901189456bb','1','系统设置-系统设置-字典管理','1','2018-05-02 13:10:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/dict/','POST','pageNo=2&pageSize=30&type=&description=',''),('877b851e17b04550aa4c5b564e45b5e8','1','代码生成-代码生成-生成方案配置','1','2018-05-02 19:05:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genScheme','GET','',''),('888dce77e102466bacf1cfbad40e70a0','1','系统设置-机构用户-用户管理','3','2018-05-02 18:29:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('88c67245247d46fd80b410b3ddba826b','1','内容管理-内容管理-内容发布','1','2018-05-02 19:01:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/','GET','',''),('88f9954be1fd40158235e889ad6b8ae7','1','代码生成-代码生成-业务表配置','1','2018-05-02 19:01:56','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genTable','GET','',''),('8915e25a0dfe401891dd245f1c1edf1e','1','系统设置-系统设置-角色管理-查看','1','2018-05-02 15:29:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/users','GET','officeId=6',''),('89701ecc6be4443497f09086eaee9ef3','1','系统设置-日志查询-日志查询','1','2018-05-02 13:07:14','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/log','GET','',''),('89a775b5b0324664b77d8102b5b813a0','1','系统设置-系统设置-角色管理-查看','1','2018-05-02 16:52:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/usertorole','POST','id=4&___t0.15616215416806933=',''),('8a0d2428627a44b39b6623b036ee24e9','1','系统设置-系统设置-角色管理','3','2018-05-02 18:29:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/','GET','',''),('8c26c1a4efdc46748b34989a18f677f7','1','系统设置-系统设置-字典管理','1','2018-05-02 13:10:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/dict/','GET','',''),('8c2f6353c3514b7cb39a8e71dc061a23','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 18:27:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('8c6d0761256d4f8a9c2a0208e2a80f54','1','内容管理-内容管理','1','2018-05-02 11:36:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/none','GET','',''),('8d3358e6e34c4ac492df977eabe4a91e','1','系统设置-机构用户-用户管理','1','2018-05-02 18:31:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('8e157c5ef7164e149bf6c1e84abe76d7','1','系统设置-系统设置-菜单管理-修改','1','2018-05-02 18:26:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/save','POST','id=&parent.id=a89f30f6a8c1471c9f5c53cb8e36e175&parent.name=测试用户&name=查看&href=&target=&icon=&sort=30&isShow=1&permission=test:testUser:view&remarks=',''),('8e32ea16db71420886c791c956f6f11b','1','代码生成-生成示例-测试用户','1','2018-05-02 19:05:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testUser','GET','',''),('8e80d1cca0424671a7f6f6a7d6cacd67','1','代码生成-代码生成-业务表配置','1','2018-05-02 18:37:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genTable','GET','',''),('8e87210764c84e1e9b66488a89cf719f','1','代码生成-代码生成-业务表配置','1','2018-05-02 13:03:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genTable','GET','',''),('8e8b1fbf923740ee97c0a73ece821244','1','我的面板-个人信息-个人信息','1','2018-05-02 19:01:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('8e99d9d294de4adb87308cd63befbe47','1','系统设置-系统设置-角色管理','1','2018-05-02 18:31:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/','GET','',''),('8ec9c0fb29a64bd9b867f9833f94a63f','1','内容管理-内容管理-内容发布-文章模型','1','2018-05-02 11:36:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=3',''),('8f0b985c1e4f414d9ba585bfa1c144a4','1','内容管理-内容管理-内容发布','1','2018-05-02 13:03:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/','GET','',''),('8f230d78aabc47dca88604384f1256f0','1','系统设置-系统设置-菜单管理','1','2018-05-02 13:04:14','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('8fcbc73c634149179b3f94ff8af70bf6','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 13:12:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('905db877c1684a55874d585a247e683d','1','系统设置-系统设置-角色管理','1','2018-05-02 18:39:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/','GET','',''),('911a45b5b96b4afcb56d983d7b134955','1','系统设置-系统设置-角色管理-修改','1','2018-05-02 15:29:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/assign','GET','id=2',''),('91330a4d53094379a3a745e29b8b0736','1','系统设置-机构用户-用户管理-查看','3','2018-05-02 18:29:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('9483dcb60ae4496bb8baa7534287c220','1','代码生成-生成示例-单表','1','2018-05-02 19:02:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testData','GET','',''),('968a2183507549ee8179aa317f81fe16','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 13:08:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/form','GET','',''),('979a232ead2c46eda6b6b2d491bfe156','1','系统登录','1','2018-05-02 19:04:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a','GET','login=',''),('98f8962ae81842c08c2de9d98be6fd45','1','系统设置-系统设置-菜单管理','1','2018-05-02 15:28:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('995aea2164364a549a6cf7db45bd3c69','1','系统设置-系统设置-菜单管理-修改','1','2018-05-02 18:38:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/delete','GET','id=0a34f5c83c9e4096b5268135d0ae200a',''),('9976efd4219240a581cc5e1b7ddfc69d','1','代码生成-代码生成-业务表配置','1','2018-05-02 15:26:39','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genTable','GET','',''),('99aba90bd5944f4f8007490260b57d42','1','系统设置-机构用户-用户管理','1','2018-05-02 13:03:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('9a205ab1851844ceabb713d4ad970f1c','1','系统设置-系统设置-角色管理-查看','1','2018-05-02 15:29:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/users','GET','officeId=13',''),('9aa65c40320f4189857dd6182f700594','1','代码生成-代码生成-业务表配置','1','2018-05-02 13:06:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genTable','GET','',''),('9ac1cdf31263461094f8d0812b098f61','1','内容管理-内容管理-内容发布','3','2018-05-02 18:29:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/','GET','',''),('9ad5af7cf6ba4bae828dfddba1667649','1','系统设置-系统设置-菜单管理','1','2018-05-02 18:25:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('9b3c33105e6843669c47dd8fd3f929cd','1','代码生成-生成示例-主子表','1','2018-05-02 17:26:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testDataMain','GET','',''),('9b5de2b3675c40929c110c44dee879bb','1','代码生成-生成示例-树结构-查看','1','2018-05-02 17:26:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testTree/','POST','name=',''),('9b9f89c264b34aedb40fbcf9d931ca7f','1','代码生成-生成示例-树结构','1','2018-05-02 19:02:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testTree','GET','',''),('9c07d2e439e54ea2881d7dfa36082c67','1','我的面板-个人信息-个人信息','1','2018-05-02 11:37:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('9c9f4e1c9ad54cda8b8ab9f000b8ef13','1','代码生成-生成示例-测试用户','1','2018-05-02 19:08:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testUser','GET','',''),('9d787b07f66d46e797d1e8b4bc53b8b3','1','在线办公-通知通告-我的通告','1','2018-05-02 11:36:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','',''),('9e2e3c234f9d49e99eb01850d5ebd4bc','1','系统设置-机构用户-用户管理','3','2018-05-02 18:28:55','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('9e38803b281e4d47b305d12fb1856445','1','内容管理-内容管理','1','2018-05-02 19:02:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/tree','GET','',''),('9ed40bf913d54d508dd3780fa089cc8a','1','内容管理-栏目设置-切换站点','1','2018-05-02 13:07:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/site/select','GET','id=1',''),('a03939b4817e4322910f997ad2998864','1','系统设置-系统设置-角色管理','1','2018-05-02 18:27:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/','GET','',''),('a0489f240e2f419790231d601b211aff','1','代码生成-生成示例-单表','1','2018-05-02 11:37:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testData','GET','',''),('a230fe36a9044abc9861c64d7b6dff4b','1','系统设置-系统设置-角色管理-查看','1','2018-05-02 18:31:55','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/form','GET','id=6',''),('a278a730d7ae451788aec27553fb34d2','1','系统设置-系统设置-菜单管理','1','2018-05-02 18:38:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('a39043136c66418c867ed49256d4e831','1','代码生成-代码生成-生成方案配置','1','2018-05-02 18:58:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genScheme','GET','',''),('a4bf8791c3db47cdbd3cd53811f5647e','1','内容管理-内容管理-公共留言-查看','1','2018-05-02 13:07:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/guestbook/','GET','status=2',''),('a4ca7f6e5931440eaa73fe0ded873917','1','代码生成-生成示例-树结构-查看','1','2018-05-02 13:06:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testTree/','POST','name=',''),('a4dd67ad3f224382ad3510a561a6d9f4','1','系统设置-系统设置-菜单管理-查看','1','2018-05-02 18:25:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/form','GET','parent.id=a89f30f6a8c1471c9f5c53cb8e36e175',''),('a54446487e6a4bef84d5d64443351f7e','1','系统设置-机构用户-用户管理-查看','3','2018-05-02 18:29:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/form','GET','id=3',''),('a554649058d34a0691ffab6f5132da8e','1','系统设置-系统设置-角色管理','1','2018-05-02 17:25:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/','GET','',''),('a58826b2340c4c78a7e3d906288bd812','1','系统设置-系统设置-菜单管理','1','2018-05-02 18:22:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('a5af5719fc994f879ce07c25e7dc37e4','1','系统设置-机构用户-用户管理','1','2018-05-02 11:36:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('a6291df135094b17888f0490e74e8c8c','1','代码生成-生成示例-主子表','1','2018-05-02 11:37:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testDataMain','GET','',''),('a6491c8c36944e22bd945adf78404096','1','在线办公-个人办公-审批测试','1','2018-05-02 13:03:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/oa/testAudit','GET','',''),('a79b261fc715401f81f7072b82a55039','1','代码生成-生成示例-树结构-查看','1','2018-05-02 13:06:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testTree/form','GET','',''),('a933fb1b84ce49eda5bb028e45ce6b96','1','系统登录','1','2018-05-02 18:37:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a','GET','login=',''),('a93c48f4eb4743af834d32390bf6b80e','1','系统设置-系统设置-菜单管理','1','2018-05-02 18:24:43','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('aa36b223c4694824ba41521bb079330d','1','我的面板-个人信息-个人信息','1','2018-05-02 11:40:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('aac87c0d453a49fb9f1fd79f2c9fb3a1','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 18:28:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/form','GET','id=3',''),('ac0463718ffb4d86afafe0b97e763dcf','1','在线办公-流程管理-模型管理','1','2018-05-02 15:33:37','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/act/model','GET','',''),('ac8cdc3e634f43659229e9b6a2f4cb4d','1','系统设置-系统设置-菜单管理-查看','1','2018-05-02 18:25:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/form','GET','parent.id=a89f30f6a8c1471c9f5c53cb8e36e175',''),('adb10d3ca7d34d229bc70fafc2426c7f','1','系统设置-系统设置-菜单管理-查看','1','2018-05-02 18:38:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/form','GET','id=a89f30f6a8c1471c9f5c53cb8e36e175',''),('af3a5ba41caa46a5a1146302dea0bb91','1','系统设置-系统设置-菜单管理-查看','1','2018-05-02 18:23:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/form','GET','id=ba8092291b40482db8fe7fc006ea3d76',''),('af4212f5cb2143cb8107c3b0203434db','1','系统设置-机构用户-用户管理','1','2018-05-02 18:31:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('b072c68dd9d943be8e5d5ff998d9fd4d','1','系统设置-机构用户-用户管理','1','2018-05-02 16:51:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('b0f07d04a7c9439e832905948d249918','1','系统设置-系统设置-菜单管理-查看','1','2018-05-02 18:25:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/form','GET','id=ba8092291b40482db8fe7fc006ea3d76',''),('b1d0eed8347d4bbca04560a0e6612bfb','1','在线办公-通知通告-我的通告','1','2018-05-02 15:33:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','',''),('b226a70d236b4bff879ab49bc19c8305','1','系统设置-系统设置-角色管理','1','2018-05-02 18:32:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/','GET','repage=',''),('b3cbb5ac5d6f475d91f9baa2b80193cb','1','系统设置-系统设置-菜单管理','1','2018-05-02 16:49:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('b46c89ad327649dd8f74a0cb7f3482ba','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 18:28:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/form','GET','id=3',''),('b53629c9db0c49d8ae942a557c9e069c','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 13:06:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('b731b214503748e5ae73106f8362e8e3','1','系统设置-系统设置-菜单管理-查看','1','2018-05-02 15:28:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/form','GET','parent.id=27',''),('b97e01f7498b42e8a8363d8ba1b215cb','1','系统设置-系统设置-菜单管理','1','2018-05-02 18:26:43','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('bb09add87c6748fa9b3f45ce59144294','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 18:32:14','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/form','GET','id=5',''),('bb778eee218247ff96d8a3bb984b8428','1','我的面板-个人信息-个人信息','1','2018-05-02 19:02:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('bbe5bc5bc31d4b978fc44c806216c851','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 17:26:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('bcc7a53ce6594b658071d4a6338c5115','1','代码生成-代码生成-业务表配置','1','2018-05-02 18:30:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genTable','GET','',''),('bd7575f4f67e48ccb4aca5d3c56ca569','1','代码生成-生成示例-树结构-查看','1','2018-05-02 17:26:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testTree/','GET','',''),('bdea188ee8784fc794a9ffb45761fc9c','1','内容管理-内容管理','1','2018-05-02 15:26:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/none','GET','',''),('be039487ebc143a0b1cc8123bc6e34e6','1','代码生成-生成示例-测试用户','5','2018-05-02 18:39:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testUser','GET','',''),('be177d232d1944d8bfeaf522e57aa993','1','系统设置-机构用户-用户管理-查看','3','2018-05-02 18:30:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('bf7653f03a044b94b01e734dc5ae0164','1','内容管理-栏目设置-栏目管理','1','2018-05-02 13:07:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/category/','GET','',''),('bfcbf6218dd747bc81621fba9cd37872','1','内容管理-内容管理','1','2018-05-02 18:27:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/none','GET','',''),('c023eb209a574e34bbc38f53ed5f5115','1','系统设置-机构用户-机构管理','1','2018-05-02 16:51:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/office/','GET','',''),('c0c343f21ba4468184209ea742ed7684','1','内容管理-内容管理','1','2018-05-02 19:01:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/none','GET','',''),('c1c2a7743db04f99abe09d26bd750dfc','1','系统设置-机构用户-用户管理-查看','3','2018-05-02 18:29:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('c1c4117daef44d2da54af8b41e72f808','1','系统设置-系统设置-菜单管理-查看','1','2018-05-02 18:25:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/form','GET','id=df7ce823c5b24ff9bada43d992f373e2',''),('c1dfaa5462514c2685fdb75f7426b7ab','1','系统设置-机构用户-用户管理','1','2018-05-02 13:12:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('c27b9236ba714bf3a5b02afcdeff0fee','1','代码生成-代码生成-业务表配置','1','2018-05-02 18:37:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genTable','GET','',''),('c2c4d406495b480ba7e6f5128ca26546','1','系统设置-机构用户-机构管理','1','2018-05-02 15:29:55','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/office/','GET','',''),('c33f22d6990447079d3fc796369dea71','1','系统设置-系统设置-字典管理-查看','1','2018-05-02 13:04:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/dict/form','GET','sort=10',''),('c44ce1ca5d85484abdd16da043efea3d','1','系统设置-日志查询-日志查询','1','2018-05-02 13:11:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/log','GET','',''),('c5f308126cb241a3806b86382b857b72','1','代码生成-生成示例-树结构-查看','1','2018-05-02 13:06:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testTree/','POST','name=',''),('c6aac05303e84752ae54e1279842deec','1','代码生成-代码生成-业务表配置','1','2018-05-02 18:28:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genTable','GET','',''),('c6fd979e437a45ac9289070720068d06','1','内容管理-内容管理','1','2018-05-02 13:03:47','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/none','GET','',''),('c879914e813844d0b61efdeb75aff8eb','1','系统设置-系统设置-角色管理','1','2018-05-02 18:31:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/','GET','',''),('c8af08f574ee44c0a9125a708122b2d7','1','系统设置-系统设置-菜单管理','1','2018-05-02 18:25:15','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('cba76e84f64940159e81eb41b4005b5d','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 13:10:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('cc0f7e0fe5bc4a68ac1713a6ef24231a','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 18:28:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('cc9b29cb39894db48fbf6c9a84eb6e3c','1','内容管理-内容管理','3','2018-05-02 18:29:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/tree','GET','',''),('ccc04001c2a1415b8c0c40d1de17f336','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 13:06:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/form','GET','id=2',''),('cccec3832e844aff983ff572b50c4685','1','代码生成-生成示例-测试用户','1','2018-05-02 19:02:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testUser','GET','',''),('cd2876edc4264b69920cfa86216e6b0c','1','系统设置-机构用户-用户管理','1','2018-05-02 13:06:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('cd4fa18525d54a84a109d6281084630c','1','系统设置-机构用户-用户管理','1','2018-05-02 13:10:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('cd84a30adf674df1be6e688ec9335619','1','我的面板-个人信息-个人信息','1','2018-05-02 13:08:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('ce15a017268a44518e83991b58c33b94','1','代码生成-代码生成-业务表配置','1','2018-05-02 13:12:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genTable','GET','',''),('ce1a8280bb6e4773b690ecee229e10ee','1','系统设置-系统设置-角色管理-修改','1','2018-05-02 18:32:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/save','POST','id=6&office.id=1&office.name=山东省总公司&oldName=普通用户&name=普通用户&oldEnname=d&enname=d&roleType=assignment&sysData=1&useable=1&dataScope=8&menuIds=1,79,3c92c17886944d0687e73e286cada573,a89f30f6a8c1471c9f5c53cb8e36e175,c83f74e7f73a4921ab4936905d...&officeIds=&remarks=',''),('cf61545c2cca4aae8679f605ad92b0f3','1','代码生成-生成示例-单表','1','2018-05-02 17:26:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testData','GET','',''),('cf879dd408054534b9a7e586d47a45dc','1','系统设置-系统设置-角色管理','1','2018-05-02 15:28:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/','GET','',''),('d01bb8a70bc84621884697042dcc7554','1','系统设置-系统设置-字典管理','1','2018-05-02 13:07:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/dict/','GET','',''),('d0a00118d4f14d9398191592cff2af29','1','系统设置-系统设置-角色管理','1','2018-05-02 16:52:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/','GET','',''),('d3479095d4d6413880e816003be2a13c','1','内容管理-内容管理-内容发布-文章模型','1','2018-05-02 11:36:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/article/','GET','category.id=4',''),('d42b23e324874674808e6629d6b201d3','1','代码生成-生成示例-主子表','1','2018-05-02 15:28:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testDataMain','GET','',''),('d4c2e26438414f4bbdfff626c054639a','1','我的面板-个人信息-修改密码','1','2018-05-02 13:02:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/modifyPwd','GET','',''),('d52a71b7deb143c88360803793266eef','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 13:06:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('d5f177aa8579429eb0e792cd047c5ef6','1','系统设置-系统设置-菜单管理','1','2018-05-02 18:26:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('d60606b45b2841e485e2adce7b198989','1','系统设置-系统设置-菜单管理','1','2018-05-02 18:38:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('d69baaa4a46846c4926448b56260b423','1','在线办公-通知通告-我的通告','1','2018-05-02 14:48:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','',''),('d707f896bcf1490ca8499a145382ce4e','1','系统设置-机构用户-用户管理','1','2018-05-02 19:01:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('d73e17a1fa6f48c985ea03aef0d3e1f6','1','代码生成-代码生成-生成方案配置','1','2018-05-02 15:27:56','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genScheme','GET','',''),('d745151e7609400dbb65b7f440601372','1','代码生成-代码生成-业务表配置','1','2018-05-02 18:27:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genTable','GET','',''),('d7c66a225602466a86109768a486f53f','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 19:01:47','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('d800570e70964f7d84c437dd00057b3c','1','在线办公-流程管理-模型管理','1','2018-05-02 15:34:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/act/model','GET','',''),('d91789151f734971ba9f77fb99a1f2af','1','代码生成-生成示例-树结构-查看','1','2018-05-02 13:06:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testTree/','POST','name=',''),('d9290bf3652f40ffbc172264206f57eb','1','内容管理-内容管理','1','2018-05-02 13:08:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/tree','GET','',''),('d9aca427844b4fb5b6ed4e8aaf77fda7','1','系统设置-机构用户-用户管理','3','2018-05-02 18:29:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('da5eb7763a4042ffa0eec294c501aea9','1','我的面板-个人信息-修改密码','1','2018-05-02 11:36:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/modifyPwd','GET','',''),('dc05ff314d4e428a94b78c2741ab50fd','1','代码生成-代码生成-业务表配置','1','2018-05-02 19:08:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genTable','GET','',''),('dc385bdae0164adda2d2897aeae7da26','1','在线办公-通知通告-我的通告','1','2018-05-02 13:02:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/oa/oaNotify/self','GET','',''),('dd78a95158104340b8b6636a2d404e46','1','系统设置-系统设置-角色管理-查看','1','2018-05-02 17:25:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/form','GET','id=1',''),('de1f0a0ba3004430a3fcf1383ff8c65c','1','我的面板-个人信息-个人信息','3','2018-05-02 18:28:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('de77836e21fc45a7918d767d767bab10','1','系统设置-系统设置-菜单管理-查看','1','2018-05-02 18:25:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/form','GET','id=a89f30f6a8c1471c9f5c53cb8e36e175',''),('deceed89bf6d4020935945da91d3abef','1','系统设置-系统设置-角色管理-查看','1','2018-05-02 18:31:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/form','GET','id=3',''),('ded60fb867384e8783a3869130ee7ccd','1','代码生成-代码生成-业务表配置','1','2018-05-02 13:10:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genTable','GET','',''),('dffb87c04ef845a59b503ccd77a1f37e','1','系统设置-机构用户-用户管理','1','2018-05-02 15:29:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('e08b3b9e86a44c4a8b287fde693cc505','1','系统设置-系统设置-角色管理','1','2018-05-02 16:52:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/','GET','',''),('e1fcec737ecb416f8110aa686ba26a38','1','系统设置-系统设置-角色管理','1','2018-05-02 18:39:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/','GET','repage=',''),('e4eeedf37d8046e6b7affc70839a7bac','1','内容管理-统计分析-信息量统计','1','2018-05-02 13:07:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/stats/article','GET','',''),('e52f218127764f4f92ff085abd123b91','1','代码生成-代码生成-生成方案配置','1','2018-05-02 11:36:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genScheme','GET','',''),('e6a4abf968414937ace265a47017cda2','1','在线办公-流程管理-模型管理','1','2018-05-02 15:25:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/act/model','GET','',''),('e7a9c6a071304101a6b9987f412b4bc2','1','系统设置-机构用户-用户管理','1','2018-05-02 13:03:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('e80ead5952ae4e339bc0949c23dd4896','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 13:03:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('e84adcec6ab94bf49dc9b04000e7d2a2','1','代码生成-生成示例-单表-查看','1','2018-05-02 13:11:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testData/','POST','pageNo=1&pageSize=30&user.id=3&user.name=综合部&office.id=&office.name=&area.id=&area.name=&name=&beginInDate=&endInDate=',''),('e860415b9ae747e7aab721ae0f6d4c5e','1','系统设置-系统设置-菜单管理','1','2018-05-02 18:25:03','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('e868bfa339894348abb2c9521135c99a','1','我的面板-个人信息-个人信息','1','2018-05-02 15:33:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('e9690ff5d0e143c180e7470183114f84','1','系统设置-系统设置-角色管理-查看','1','2018-05-02 15:29:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/users','GET','officeId=3',''),('e9b66a7981b74f75b1b8ce9e71dbdd6e','1','系统设置-机构用户-用户管理','1','2018-05-02 18:37:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('eb61ee4fe1a74907abf902531d1fa791','1','系统设置-机构用户-机构管理-查看','1','2018-05-02 16:51:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/office/list','GET','id=&parentIds=',''),('ebf5f692b1e5425289774b02421b833a','1','内容管理-内容管理-内容发布','1','2018-05-02 18:27:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/','GET','',''),('ed31882303e2493985806a7723d73fd2','1','系统设置-机构用户-用户管理','1','2018-05-02 15:26:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('edf677341f7a4ed19c7c3376ee86e5d9','1','代码生成-代码生成-生成方案配置','1','2018-05-02 18:37:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genScheme','GET','',''),('ee03bb40f5eb46f185a35fdcecbc0d8e','1','系统设置-系统设置-角色管理-查看','1','2018-05-02 16:49:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/form','GET','',''),('ee0c14f92aac45beaf4ab7507f747547','1','系统设置-系统设置-角色管理-查看','1','2018-05-02 15:29:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/users','GET','officeId=5',''),('f1dea32e85aa418d9347dc61c568254f','1','系统设置-系统设置-角色管理','1','2018-05-02 15:29:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/role/','GET','',''),('f297119668c5491d8f6abbdc29349754','1','系统设置-系统设置-菜单管理','1','2018-05-02 18:25:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('f2cc0dc7de244de7bfcd8c6f240dffb3','1','我的面板-个人信息-个人信息','1','2018-05-02 18:30:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('f3849b32ca54432f9b0a15d03d09e7f6','1','代码生成-生成示例-树结构-查看','1','2018-05-02 13:06:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testTree/','POST','name=',''),('f3a58aac16ff43e1ac482659706dfcd3','1','代码生成-生成示例-树结构-查看','1','2018-05-02 13:06:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/test/testTree/','POST','name=',''),('f3a95e8743594f32bee19777167e6e30','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 18:31:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('f47655dd5c864cb2b09ab87f61567a1e','1','在线办公-流程管理-模型管理','1','2018-05-02 13:03:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/act/model','GET','',''),('f580e90c478e4e588747ca83fe445fb1','1','系统设置-机构用户-用户管理','1','2018-05-02 17:26:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('f6463b43a6d547b4a3a161fd9633cb90','1','系统设置-机构用户-用户管理','1','2018-05-02 13:08:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/index','GET','',''),('f727c784daa34cef996aedb1a1621e3a','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 18:37:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/list','GET','',''),('f901f902f9ab4057aec4d56029e4fa70','1','我的面板-个人信息-个人信息','3','2018-05-02 18:29:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/info','GET','',''),('f9d95b75061649fd81c6e0c899c3647c','1','代码生成-代码生成-业务表配置','1','2018-05-02 18:21:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/gen/genTable','GET','',''),('fb989f39291a4427b6bd8fb0fe8a1f0b','1','内容管理-内容管理','1','2018-05-02 13:03:47','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/cms/tree','GET','',''),('fb9bd3378e964275ba129527b2ec1699','1','系统设置-系统设置-菜单管理','1','2018-05-02 18:25:41','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/menu/','GET','',''),('fc7a10263970411a9bf8a5619cc41cbf','1','系统设置-机构用户-用户管理-查看','1','2018-05-02 16:51:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','/jeesite/a/sys/user/list','GET','','');
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_mdict`
--

DROP TABLE IF EXISTS `sys_mdict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_mdict` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_mdict_parent_id` (`parent_id`),
  KEY `sys_mdict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='多级字典表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_mdict`
--

LOCK TABLES `sys_mdict` WRITE;
/*!40000 ALTER TABLE `sys_mdict` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_mdict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `href` varchar(2000) DEFAULT NULL COMMENT '链接',
  `target` varchar(20) DEFAULT NULL COMMENT '目标',
  `icon` varchar(100) DEFAULT NULL COMMENT '图标',
  `is_show` char(1) NOT NULL COMMENT '是否在菜单中显示',
  `permission` varchar(200) DEFAULT NULL COMMENT '权限标识',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_menu_parent_id` (`parent_id`),
  KEY `sys_menu_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES ('0354fe46ecd24a1090e1d37d780f3d1e','9db337df085145159a90ab810624e92a','null198ebe5385c74214914194d13e18eac5,9db337df085145159a90ab810624e92a,','挑刺工站',90,'/kpi/removeFishBone','','','1','','1','2018-05-25 15:23:19','1','2018-05-25 15:23:19','','0'),('064fb95e239b48b98e21e2f536a9794c','8f8c3454bfa044ef9bfa66dab2eb5f6a','0,1,8f8c3454bfa044ef9bfa66dab2eb5f6a,','产品追溯性管理',120,'','','','1','','1','2019-09-25 09:52:13','1','2019-09-25 09:52:13','','0'),('0651e7c6854f40cdbb5dc8cd05664bca','947ec5a840f847ad98cd2d7443a8116e','null821da4927c5d420891ddbf20ff46ed58,947ec5a840f847ad98cd2d7443a8116e,','原料库存清单',20,'/bas/material','','','1','','1','2019-04-11 15:35:02','1','2019-04-11 15:35:02','','0'),('083f84925703427997df6cd8710ba1eb','f27dc4ee0ab7417c8146daf68f5b209b','nullf27dc4ee0ab7417c8146daf68f5b209b,','车间',90,'/bas/workShop','','','1','','1','2018-05-09 14:33:32','1','2018-05-10 15:34:44','','0'),('0925db880feb4735824d10acc5741fe8','f494e85a935d44e3a071cfe007b67b05','nullf494e85a935d44e3a071cfe007b67b05,','组织机构',30,'/bas/organization','','','0','','1','2018-05-09 14:31:28','1','2018-05-11 17:46:19','','0'),('0cac1a5f9fcc484dabb9feb9816ac2d6','f494e85a935d44e3a071cfe007b67b05','nullf494e85a935d44e3a071cfe007b67b05,','员工信息',60,'','','','1','','1','2018-05-09 14:32:50','1','2018-05-09 14:32:50','','0'),('0e80c03c5a06424581c6090de6fedba8','d380e37f05bc4270b474e207a8ff5696','nullbe3ae032104041568621e5724fb750dd,d380e37f05bc4270b474e207a8ff5696,','工单',90,'/bas/workOrder','','','1','','1','2018-05-09 14:43:37','1','2018-05-14 15:23:15','','1'),('1','0','0,','功能菜单',0,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','3','0,1,2,3,','字典管理',60,'/sys/dict/',NULL,'th-list','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11d1e99f639b4dc69543976945831d5f','f27dc4ee0ab7417c8146daf68f5b209b','null821da4927c5d420891ddbf20ff46ed58,f27dc4ee0ab7417c8146daf68f5b209b,','设备组',1140,'/bas/combination','','','1','','1','2018-05-18 14:37:32','1','2018-05-18 14:37:32','','1'),('13','2','0,1,2,','机构用户',970,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('14','13','0,1,2,13,','区域管理',50,'/sys/area/',NULL,'th','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('147a5f2c8f354f3eab5a911c42566ea1','821da4927c5d420891ddbf20ff46ed58','null821da4927c5d420891ddbf20ff46ed58,','设备基础资料',30,'','','','1','','1','2018-05-09 13:47:20','1','2018-05-14 10:02:52','','0'),('16856ddef4e14c33bf7f94569f995c3f','064fb95e239b48b98e21e2f536a9794c','0,1,8f8c3454bfa044ef9bfa66dab2eb5f6a,064fb95e239b48b98e21e2f536a9794c,','订单追溯',90,'/back/orderback/','','','1','','1','2019-09-25 09:49:46','1','2019-09-25 09:53:27','','0'),('17','13','0,1,2,13,','机构管理',40,'/sys/office/',NULL,'th-large','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('198ebe5385c74214914194d13e18eac5','38e12856aa084ee0b541d09552b5941e','null38e12856aa084ee0b541d09552b5941e,','绩效管理',30,'','','','1','','1','2018-05-14 10:14:27','1','2018-05-14 10:14:27','','0'),('1bbb262f5eda4982969bd76cc699481d','f27dc4ee0ab7417c8146daf68f5b209b','nullf27dc4ee0ab7417c8146daf68f5b209b,','产线',960,'/bas/line','','','1','','1','2018-05-09 14:36:48','1','2018-05-10 15:35:07','','0'),('1c99e12a568f4c839301ad11b0f5c154','147a5f2c8f354f3eab5a911c42566ea1','null147a5f2c8f354f3eab5a911c42566ea1,','红外对射枪',180,'/bas/iPhoto','','','1','','1','2018-05-09 14:28:55','1','2018-05-11 16:27:51','','0'),('1f2c7ad96430409ab5cdc3aa1857d79e','f27dc4ee0ab7417c8146daf68f5b209b','nullf27dc4ee0ab7417c8146daf68f5b209b,','工厂',60,'/bas/factory','','','1','','1','2018-05-09 14:33:19','1','2018-05-10 15:34:16','','0'),('2','1','0,1,','系统设置',900,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('20','13','0,1,2,13,','用户管理',30,'/sys/user/index',NULL,'user','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2026b9c0933847f09835958c746ac187','a7d21cda6e8f4dc9a10d6ca29ca1d94b','0,1,9c7cdfc6ee0b42e989cd5f8062ba4ad2,a7d21cda6e8f4dc9a10d6ca29ca1d94b,','上岗记录',20,'/bas/mountGuard','','','1','','1','2019-04-16 10:17:24','1','2019-04-16 10:17:24','','0'),('22f682f746ba487ca1b8dea98fee09b5','e93acdc44f6246caafd6234ecdc39ff4','null655854fb056a443bb02e89b21c56349a,e93acdc44f6246caafd6234ecdc39ff4,','工序维护',30,'/tec/process','','','1','','1','2018-05-14 10:21:32','1','2019-04-28 16:05:31','','0'),('254f67e24e544885a7a11d1886b3586e','947ec5a840f847ad98cd2d7443a8116e','null821da4927c5d420891ddbf20ff46ed58,947ec5a840f847ad98cd2d7443a8116e,','BOM物料',60,'/bas/bom','','','1','','1','2018-05-09 14:43:16','1','2018-05-18 17:41:09','','0'),('26a55ebf8f3a4e39a25182973cb3a70f','064fb95e239b48b98e21e2f536a9794c','0,1,8f8c3454bfa044ef9bfa66dab2eb5f6a,064fb95e239b48b98e21e2f536a9794c,','原材料追溯',30,'/back/materialback','','','1','','1','2019-09-25 09:23:05','1','2019-09-25 09:52:56','','0'),('27','1','0,1,','我的面板',100,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('27332120e8574ab18161f524e361ebd7','f27dc4ee0ab7417c8146daf68f5b209b','null821da4927c5d420891ddbf20ff46ed58,f27dc4ee0ab7417c8146daf68f5b209b,','员工',1070,'/bas/employee','','','1','','1','2019-04-09 15:46:56','1','2019-04-09 15:46:56','员工信息管理','0'),('28','27','0,1,27,','个人信息',30,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('29','28','0,1,27,28,','个人信息',30,'/sys/user/info',NULL,'user','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2a589b154b174e2c8db2ecd1cd63b678','b671fe13f0fc457ab42473203ef8b304','null56bbcfb7e5fb4250b9940309d6298866,b671fe13f0fc457ab42473203ef8b304,','设备台账',30,'/equip/equip','','','1','','1','2018-05-14 10:15:31','1','2018-05-16 14:32:36','','0'),('2b438a3a7fe547fb8ff4dcfa51f8dabf','f7f6cebd3894464e83e69942fb8c7857','nullaf879e38b8af44f9b3521df7e2382062,f7f6cebd3894464e83e69942fb8c7857,','违规管理',30,'/qc/violaction','','','1','','1','2018-05-14 10:12:41','1','2018-05-24 09:09:41','','0'),('2f048dbd81694d92a19a7b3a47970922','f27dc4ee0ab7417c8146daf68f5b209b','nullf27dc4ee0ab7417c8146daf68f5b209b,','企业',30,'/bas/enterprise','','','1','','1','2018-05-09 14:33:08','1','2018-05-09 17:44:51','','0'),('3','2','0,1,2,','系统设置',980,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('30','28','0,1,27,28,','修改密码',40,'/sys/user/modifyPwd',NULL,'lock','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('329165aeb8a841c7a46714ce87f9fbcd','147a5f2c8f354f3eab5a911c42566ea1','null147a5f2c8f354f3eab5a911c42566ea1,','设备规格',240,'','','','1','','1','2018-05-09 14:29:47','1','2018-05-09 14:29:47','','1'),('33d1a188f3884f7ca08c7faff340a042','f27dc4ee0ab7417c8146daf68f5b209b','nullf27dc4ee0ab7417c8146daf68f5b209b,','工站',990,'/bas/workStationInfos','','','1','','1','2018-05-09 14:37:12','1','2018-05-11 09:33:23','','0'),('35c927c93e354f3388d7c9c5b9bfebb7','d4e8ff6fe7d1458ab00ca946971a22da','null6a53863d5f9649158e6cde52250c5bd3,d4e8ff6fe7d1458ab00ca946971a22da,','原材料追溯',30,'/trace/traceBomComponent','','','1','','1','2018-05-14 10:17:00','1','2018-05-26 11:19:04','','0'),('360480a8ba0f438eaef27a2b9f5f1e60','147a5f2c8f354f3eab5a911c42566ea1','null147a5f2c8f354f3eab5a911c42566ea1,','电子秤',90,'/bas/electronSteelyard','','','1','','1','2018-05-09 14:26:40','1','2018-05-11 10:00:59','','0'),('38e12856aa084ee0b541d09552b5941e','1','null1,','绩效管理',1050,'','','','1','','1','2018-05-14 10:01:03','1','2018-05-14 10:01:03','','0'),('4','3','0,1,2,3,','菜单管理',30,'/sys/menu/',NULL,'list-alt','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('41ca3011072b47fc91d1f1943fce97c5','b671fe13f0fc457ab42473203ef8b304','null56bbcfb7e5fb4250b9940309d6298866,b671fe13f0fc457ab42473203ef8b304,','设备报修派工记录',120,'/equip/report/list','','','1','','1','2018-05-16 18:50:02','1','2019-09-25 18:53:38','','0'),('425c47f8cb144ade837aa6d6d657d385','198ebe5385c74214914194d13e18eac5','null38e12856aa084ee0b541d09552b5941e,198ebe5385c74214914194d13e18eac5,','绩效参数配置',30,'/kpi/performType','','','1','','1','2018-05-14 10:19:55','1','2019-08-17 13:55:19','','0'),('4d97626b7d6943c286fca7b98b45e1d0','be3ae032104041568621e5724fb750dd','null9c7cdfc6ee0b42e989cd5f8062ba4ad2,be3ae032104041568621e5724fb750dd,','订单信息',20,'/bas/order','','','1','','1','2019-04-17 17:15:05','1','2019-04-17 17:15:05','','0'),('56bbcfb7e5fb4250b9940309d6298866','1','null1,','设备管理',1080,'','','','1','','1','2018-05-14 10:01:15','1','2018-05-14 10:01:15','','0'),('56ee5d4912854427a90e11d5e6ba2e4c','f7f6cebd3894464e83e69942fb8c7857','nullaf879e38b8af44f9b3521df7e2382062,f7f6cebd3894464e83e69942fb8c7857,','异常工序检测',90,'/qc/abnormalProcess','','','1','','1','2018-05-14 10:13:47','1','2018-05-24 16:14:32','','0'),('59','56','0,1,27,40,56,','修改',50,NULL,NULL,NULL,'0','cms:ckfinder:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5d87192870dd48be982f3d3b8bacfeff','198ebe5385c74214914194d13e18eac5','null38e12856aa084ee0b541d09552b5941e,198ebe5385c74214914194d13e18eac5,','绩效参数与工站关系',40,'/kpi/performStation','','','1','','1','2019-08-17 13:52:46','1','2019-08-17 13:52:46','','0'),('5ee0577f976a4de79c143d0160391750','f7f6cebd3894464e83e69942fb8c7857','nullaf879e38b8af44f9b3521df7e2382062,f7f6cebd3894464e83e69942fb8c7857,','切片质量检测',120,'/qc/cutPieceYield','','','1','','1','2018-05-14 10:14:02','1','2019-04-26 11:18:51','','0'),('5efd3a0e30a54c198d6d202ff9105771','147a5f2c8f354f3eab5a911c42566ea1','null147a5f2c8f354f3eab5a911c42566ea1,','设备类型',210,'','','','1','','1','2018-05-09 14:29:38','1','2018-05-09 14:29:38','','1'),('61c22282b36c44e98bd3d8b30dbc05ea','b671fe13f0fc457ab42473203ef8b304','null56bbcfb7e5fb4250b9940309d6298866,b671fe13f0fc457ab42473203ef8b304,','设备维修记录',150,'/equip/report/repairlist','','','1','','1','2018-05-17 15:37:29','1','2018-05-17 16:24:35','','0'),('6410a688d9f84f3c846cdfbc0158c23c','f27dc4ee0ab7417c8146daf68f5b209b','null821da4927c5d420891ddbf20ff46ed58,f27dc4ee0ab7417c8146daf68f5b209b,','工位与员工关系',1080,'/bas/cellEmployee','','','1','','1','2018-05-17 16:00:57','1','2019-04-12 14:41:28','','0'),('655854fb056a443bb02e89b21c56349a','1','null1,','工艺管理',960,'','','','1','','1','2018-05-14 09:59:55','1','2018-05-14 09:59:55','','0'),('67','2','0,1,2,','日志查询',985,NULL,NULL,NULL,'1',NULL,'1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'1'),('6702b1298ca84bffab2113bc6441e364','f27dc4ee0ab7417c8146daf68f5b209b','nullf27dc4ee0ab7417c8146daf68f5b209b,','工站类型',1050,'/bas/workStationType','','','1','','1','2018-05-09 14:37:38','1','2018-05-10 17:11:47','','1'),('67eb0d89f09945a1a088edd8698392ff','9db337df085145159a90ab810624e92a','null198ebe5385c74214914194d13e18eac5,9db337df085145159a90ab810624e92a,','装袋工站',150,'/kpi/packages','','','1','','1','2018-05-25 16:27:19','1','2018-05-25 17:14:01','','1'),('68','67','0,1,2,67,','日志查询',30,'/sys/log',NULL,'pencil','1','sys:log:view','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'1'),('6a53863d5f9649158e6cde52250c5bd3','1','null1,','产品追溯性管理',1110,'','','','0','','1','2018-05-14 10:01:27','1','2018-05-14 11:16:27','','1'),('6a804e8517d44f6599a5cb6c5b592066','064fb95e239b48b98e21e2f536a9794c','0,1,8f8c3454bfa044ef9bfa66dab2eb5f6a,064fb95e239b48b98e21e2f536a9794c,','生产流程追溯',60,'/back/processback/','','','1','','1','2019-09-25 09:49:19','1','2019-09-25 09:53:13','','0'),('6d88acd0de0f42c6b6449c85bdf03afe','1','null1,','基础资料',930,'','','','1','','1','2018-05-08 14:34:42','1','2018-05-08 14:34:42','','1'),('6fe4ac323b324e8591e6cbfc81408644','947ec5a840f847ad98cd2d7443a8116e','null947ec5a840f847ad98cd2d7443a8116e,','产品',30,'/bas/product','','','1','','1','2018-05-09 14:42:50','1','2018-05-11 09:59:24','','0'),('7','3','0,1,2,3,','角色管理',50,'/sys/role/',NULL,'lock','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('72fa06bf23874c16b8004f9120e05c9c','947ec5a840f847ad98cd2d7443a8116e','null947ec5a840f847ad98cd2d7443a8116e,','产品类型',120,'/bas/productType','','','1','','1','2018-05-09 14:43:48','1','2018-05-11 10:00:48','','1'),('757ef2df975c4373ac332a358db2088d','b671fe13f0fc457ab42473203ef8b304','null56bbcfb7e5fb4250b9940309d6298866,b671fe13f0fc457ab42473203ef8b304,','设备保养计划',60,'/equip/maintenance','','','1','','1','2018-05-14 10:15:56','1','2018-05-16 16:29:25','','0'),('7788447acd244ffb96808309446ac493','e93acdc44f6246caafd6234ecdc39ff4','null655854fb056a443bb02e89b21c56349a,e93acdc44f6246caafd6234ecdc39ff4,','工序与工站关系',120,'/tec/processStation','','','1','','1','2018-05-23 13:48:27','1','2018-05-24 17:34:58','','0'),('810357a5a848490b94f62c4eb38bb53a','e93acdc44f6246caafd6234ecdc39ff4','null655854fb056a443bb02e89b21c56349a,e93acdc44f6246caafd6234ecdc39ff4,','工艺流程维护',60,'/tec/flow','','','1','','1','2018-05-14 10:21:48','1','2019-04-28 16:03:27','','0'),('821da4927c5d420891ddbf20ff46ed58','1','null1,','基础资料管理',930,'','','','1','','1','2018-05-09 13:45:18','1','2018-05-14 09:59:39','','0'),('822d2d342500413fac4752a623441f21','947ec5a840f847ad98cd2d7443a8116e','null821da4927c5d420891ddbf20ff46ed58,947ec5a840f847ad98cd2d7443a8116e,','BOM物料组件',90,'/bas/bomComponent','','','1','','1','2018-05-19 10:41:56','1','2018-05-19 10:41:56','','1'),('84f341d19e8346daa918698f9d569caa','d4e8ff6fe7d1458ab00ca946971a22da','null6a53863d5f9649158e6cde52250c5bd3,d4e8ff6fe7d1458ab00ca946971a22da,','工艺流程追溯',60,'/trace/traceProcess','','','1','','1','2018-05-14 10:17:21','1','2018-05-26 15:03:13','','0'),('85','76','0,1,75,76,','行政区域',80,'/../static/map/map-city.html',NULL,NULL,'1',NULL,'1','2013-10-22 08:00:00','1','2013-10-22 08:00:00',NULL,'0'),('8b0dd786c8904a0caf5b4582d4adaf7c','947ec5a840f847ad98cd2d7443a8116e','null821da4927c5d420891ddbf20ff46ed58,947ec5a840f847ad98cd2d7443a8116e,','BOM物料详情',70,'/bas/bomDetail','','','1','','1','2019-04-12 09:54:30','1','2019-04-12 09:54:30','','0'),('8b2f8164e1f74e798c2de67bdb03afb8','147a5f2c8f354f3eab5a911c42566ea1','null147a5f2c8f354f3eab5a911c42566ea1,','触摸屏',30,'/bas/touchScreen','','','1','','1','2018-05-09 14:26:01','1','2018-05-11 09:49:23','','1'),('8d39580f5bec461d9ae5fb7d9f0fe9c3','9db337df085145159a90ab810624e92a','null198ebe5385c74214914194d13e18eac5,9db337df085145159a90ab810624e92a,','开片工站',60,'/kpi/cutPiece','','','1','','1','2018-05-25 14:13:43','1','2018-05-25 14:13:43','','0'),('8f8c3454bfa044ef9bfa66dab2eb5f6a','1','0,1,','产品追溯性管理',1110,'','','','1','','1','2019-09-25 09:21:51','1','2019-09-25 09:21:51','','0'),('947ec5a840f847ad98cd2d7443a8116e','821da4927c5d420891ddbf20ff46ed58','null821da4927c5d420891ddbf20ff46ed58,','BOM资料管理',120,'','','','1','','1','2018-05-09 13:54:26','1','2018-05-14 10:03:36','','0'),('964cd22cbd0b4b538e545bdaac9788e0','147a5f2c8f354f3eab5a911c42566ea1','null147a5f2c8f354f3eab5a911c42566ea1,','读卡器',270,'/bas/cardReader','','','1','','1','2018-05-09 14:30:32','1','2018-05-11 16:36:22','','0'),('9c7cdfc6ee0b42e989cd5f8062ba4ad2','1','0,1,','生产管理',990,'','','','1','','1','2018-05-14 10:00:21','1','2019-04-16 10:08:43','','0'),('9db337df085145159a90ab810624e92a','198ebe5385c74214914194d13e18eac5','null198ebe5385c74214914194d13e18eac5,','绩效报表',60,'','','','1','','1','2018-05-14 10:20:07','1','2018-05-14 10:20:07','','0'),('9db9a90f2a444e7bb761184f2a7d6076','9db337df085145159a90ab810624e92a','null198ebe5385c74214914194d13e18eac5,9db337df085145159a90ab810624e92a,','去头工站',30,'/kpi/decaptitating','','','1','','1','2018-05-25 11:15:38','1','2018-05-25 11:15:38','','0'),('a6e77a77b4244200a05e3634a0d4917c','38e12856aa084ee0b541d09552b5941e','null38e12856aa084ee0b541d09552b5941e,','绩效参数配置',60,'','','','1','','1','2018-05-14 10:14:43','1','2018-05-14 10:14:43','','1'),('a771eff126ab4a029c5834d343ea18b7','f27dc4ee0ab7417c8146daf68f5b209b','null821da4927c5d420891ddbf20ff46ed58,f27dc4ee0ab7417c8146daf68f5b209b,','工站与工作组关系',1110,'/bas/stationGroup','','','1','','1','2018-05-18 10:16:50','1','2018-05-18 10:35:29','','1'),('a7d21cda6e8f4dc9a10d6ca29ca1d94b','9c7cdfc6ee0b42e989cd5f8062ba4ad2','0,1,9c7cdfc6ee0b42e989cd5f8062ba4ad2,','员工工作信息',20,'','','','1','','1','2019-04-16 10:10:40','1','2019-04-16 10:10:40','','0'),('af879e38b8af44f9b3521df7e2382062','1','null1,','质量管理',1020,'','','','1','','1','2018-05-14 10:00:42','1','2018-05-14 10:00:42','','0'),('b3a63a91787d4a69917ec31b90d5bd04','f27dc4ee0ab7417c8146daf68f5b209b','null821da4927c5d420891ddbf20ff46ed58,f27dc4ee0ab7417c8146daf68f5b209b,','工作组',1050,'/bas/workGroup','','','1','','1','2018-05-17 13:36:20','1','2018-05-17 13:51:47','','1'),('b4c4553b6a8f492297c8d472a8690b4f','e93acdc44f6246caafd6234ecdc39ff4','null655854fb056a443bb02e89b21c56349a,e93acdc44f6246caafd6234ecdc39ff4,','工艺流程与工序关系',90,'/tec/flowProcess','','','1','','1','2018-05-23 10:50:47','1','2019-04-28 16:07:29','','0'),('b671fe13f0fc457ab42473203ef8b304','56bbcfb7e5fb4250b9940309d6298866','null56bbcfb7e5fb4250b9940309d6298866,','设备管理',30,'','','','1','','1','2018-05-14 10:15:14','1','2018-05-14 10:15:14','','0'),('b9262d06229241ad82f853c8488038a3','147a5f2c8f354f3eab5a911c42566ea1','null147a5f2c8f354f3eab5a911c42566ea1,','设备类型',300,'/bas/equipType','','','1','','1','2018-05-09 15:31:44','1','2018-05-10 14:07:16','','1'),('b9f606e5f7b34c3698b48e4e8e4dfaba','f27dc4ee0ab7417c8146daf68f5b209b','nullf27dc4ee0ab7417c8146daf68f5b209b,','工位',1020,'/bas/workCell','','','1','','1','2018-05-09 14:37:26','1','2018-05-10 17:12:22','','0'),('bae14cd841df4358a52c581550a8ac9b','821da4927c5d420891ddbf20ff46ed58','null821da4927c5d420891ddbf20ff46ed58,','电磁门锁',150,'','','','1','','1','2018-05-09 14:26:52','1','2018-05-09 14:27:35','','1'),('be3ae032104041568621e5724fb750dd','9c7cdfc6ee0b42e989cd5f8062ba4ad2','null9c7cdfc6ee0b42e989cd5f8062ba4ad2,','工单管理',30,'','','','1','','1','2018-05-14 10:09:57','1','2018-05-14 10:09:57','','0'),('c4c2f8796867427880b1ac75292d8612','147a5f2c8f354f3eab5a911c42566ea1','null147a5f2c8f354f3eab5a911c42566ea1,','设备规格',330,'/bas/equipSpec','','','0','','1','2018-05-09 15:31:56','1','2018-05-11 17:46:36','','1'),('c5596aa99cd54fd8981682eaf79ffb89','f7f6cebd3894464e83e69942fb8c7857','nullaf879e38b8af44f9b3521df7e2382062,f7f6cebd3894464e83e69942fb8c7857,','残次品上报管理',60,'/qc/inperfections','','','1','','1','2018-05-14 10:13:21','1','2018-05-24 11:25:03','','0'),('c666c10050714730b9f943c4d9c47c05','b671fe13f0fc457ab42473203ef8b304','null56bbcfb7e5fb4250b9940309d6298866,b671fe13f0fc457ab42473203ef8b304,','设备故障上报',90,'/equip/report/form','','','1','','1','2018-05-16 19:22:44','1','2018-05-16 19:22:44','','0'),('c72025961c354c3ba96ba53a0339dae0','38e12856aa084ee0b541d09552b5941e','null38e12856aa084ee0b541d09552b5941e,','绩效报表',90,'','','','1','','1','2018-05-14 10:14:54','1','2018-05-14 10:14:54','','1'),('c96965c03ecc470096385f77171755a3','d4e8ff6fe7d1458ab00ca946971a22da','null6a53863d5f9649158e6cde52250c5bd3,d4e8ff6fe7d1458ab00ca946971a22da,','订单追溯',90,'/trace/traceWorkOrder','','','1','','1','2018-05-14 10:17:37','1','2018-05-26 17:53:39','','0'),('c9853ea7d0c8433db0fa467f1338ecf2','147a5f2c8f354f3eab5a911c42566ea1','null147a5f2c8f354f3eab5a911c42566ea1,','电磁门锁',120,'/bas/eleDoor','','','1','','1','2018-05-09 14:28:14','1','2018-05-11 11:24:49','','1'),('ce08ca9b8ef0467e943d4aec1f5e67bc','147a5f2c8f354f3eab5a911c42566ea1','null147a5f2c8f354f3eab5a911c42566ea1,','条码打印机',150,'/bas/codePrinter','','','1','','1','2018-05-09 14:28:31','1','2018-05-11 11:54:09','','0'),('cec73bb87f6247fbbab8f83198d6b63a','9db337df085145159a90ab810624e92a','null198ebe5385c74214914194d13e18eac5,9db337df085145159a90ab810624e92a,','切片工站',120,'/kpi/chopingBiz','','','1','','1','2018-05-25 15:56:26','1','2019-04-28 16:29:30','','0'),('d380e37f05bc4270b474e207a8ff5696','be3ae032104041568621e5724fb750dd','null9c7cdfc6ee0b42e989cd5f8062ba4ad2,be3ae032104041568621e5724fb750dd,','工单维护',30,'/bas/workOrder','','','1','','1','2018-05-14 10:10:38','1','2018-05-22 16:53:47','','0'),('d4e8ff6fe7d1458ab00ca946971a22da','6a53863d5f9649158e6cde52250c5bd3','null6a53863d5f9649158e6cde52250c5bd3,','产品追溯性管理',30,'','','','1','','1','2018-05-14 10:16:41','1','2018-05-14 10:16:41','','0'),('d55287890e9b46d0957183154965b18a','947ec5a840f847ad98cd2d7443a8116e','null821da4927c5d420891ddbf20ff46ed58,947ec5a840f847ad98cd2d7443a8116e,','订单信息',25,'/bas/order','','','1','','1','2019-04-16 17:13:44','1','2019-04-16 17:13:44','','1'),('df348560c3794621a3dd6e146b0d001e','9db337df085145159a90ab810624e92a','null198ebe5385c74214914194d13e18eac5,9db337df085145159a90ab810624e92a,','装箱工站',180,'/kpi/boxing','','','1','','1','2018-05-25 17:35:46','1','2018-05-25 17:35:46','','1'),('e93acdc44f6246caafd6234ecdc39ff4','655854fb056a443bb02e89b21c56349a','null655854fb056a443bb02e89b21c56349a,','工艺资料管理',30,'','','','1','','1','2018-05-14 10:07:02','1','2018-05-14 10:07:02','','0'),('f27dc4ee0ab7417c8146daf68f5b209b','821da4927c5d420891ddbf20ff46ed58','null821da4927c5d420891ddbf20ff46ed58,','资源基础资料',90,'','','','1','','1','2018-05-09 13:54:12','1','2018-05-14 10:03:07','','0'),('f494e85a935d44e3a071cfe007b67b05','821da4927c5d420891ddbf20ff46ed58','null821da4927c5d420891ddbf20ff46ed58,','组织',60,'','','','1','','1','2018-05-09 13:49:15','1','2018-05-09 14:31:19','','1'),('f7f6cebd3894464e83e69942fb8c7857','af879e38b8af44f9b3521df7e2382062','nullaf879e38b8af44f9b3521df7e2382062,','质量管理',30,'','','','1','','1','2018-05-14 10:11:24','1','2018-05-14 10:11:24','','0'),('f87e6fcfe87b4a07b3f69165dfe59add','147a5f2c8f354f3eab5a911c42566ea1','null147a5f2c8f354f3eab5a911c42566ea1,','安卓PAD',60,'/bas/androidPAD','','','1','','1','2018-05-09 14:26:16','1','2018-05-10 17:20:55','','0'),('fa5cbee4e51044558967f4d326b7019e','947ec5a840f847ad98cd2d7443a8116e','null947ec5a840f847ad98cd2d7443a8116e,','产品规格',150,'/bas/productSpec','','','1','','1','2018-05-09 14:43:57','1','2018-05-11 10:01:09','','1');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_office`
--

DROP TABLE IF EXISTS `sys_office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_office` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `area_id` varchar(64) NOT NULL COMMENT '归属区域',
  `code` varchar(100) DEFAULT NULL COMMENT '区域编码',
  `type` char(1) NOT NULL COMMENT '机构类型',
  `grade` char(1) NOT NULL COMMENT '机构等级',
  `address` varchar(255) DEFAULT NULL COMMENT '联系地址',
  `zip_code` varchar(100) DEFAULT NULL COMMENT '邮政编码',
  `master` varchar(100) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `fax` varchar(200) DEFAULT NULL COMMENT '传真',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `USEABLE` varchar(64) DEFAULT NULL COMMENT '是否启用',
  `PRIMARY_PERSON` varchar(64) DEFAULT NULL COMMENT '主负责人',
  `DEPUTY_PERSON` varchar(64) DEFAULT NULL COMMENT '副负责人',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_office_parent_id` (`parent_id`),
  KEY `sys_office_del_flag` (`del_flag`),
  KEY `sys_office_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='机构表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_office`
--

LOCK TABLES `sys_office` WRITE;
/*!40000 ALTER TABLE `sys_office` DISABLE KEYS */;
INSERT INTO `sys_office` VALUES ('1','0','0,','山东省艾动科技有限公司',10,'2','100000','1','1','','','','','','','1','','','1','2013-05-27 08:00:00','1','2019-04-29 13:44:00','','0'),('1f36868bcc994524a583bf50229504e6','0','0,','维修部',30,'2','100006','2','1','','','','','','','1','','','1','2019-04-29 09:45:01','1','2019-04-29 09:45:43','','1'),('2','1','0,1,','总经理',10,'2','100001','2','1','','','','','','','1','','','1','2013-05-27 08:00:00','1','2019-04-29 13:53:25','','0'),('3','1','0,1,','生产部',20,'2','100002','2','1','','','','','','','1','','','1','2013-05-27 08:00:00','1','2018-05-14 11:34:36','','0'),('34ec46d711744bb9af8eda10aac85b6e','3','0,1,3,','马哈鱼车间',30,'2','100002001','2','1','','','','','','','1','181abcd9d1e04e0fb4f4b310031e2f86','','ef83ec0c592148c2991b12e6711e5911','2018-05-15 18:54:14','1','2019-04-29 09:36:16','','1'),('4','1','0,1,','市场部',30,'2','100003','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','1','0,1,','技术部',40,'2','100004','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('53353f41ec4e4c7dba065d013cb401d6','1','0,1,','人事部',30,'2','100008','2','1','','','','','','','1','','','1','2019-04-29 13:54:29','1','2019-04-29 13:54:29','','0'),('6','1','0,1,','研发部',50,'2','100005','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('8f88e7ac7a4c4a6784ea22d71d0bb7d8','1','0,1,','维修部',30,'2','100006','2','1','','','','','','','1','','','1','2019-04-29 09:46:58','1','2019-04-29 09:56:25','','0'),('bcd26b7a99374726b5e5679e2bf28b23','1','0,1,','财务部',30,'2','100007','2','1','','','','','','','1','','','1','2019-04-29 13:54:07','1','2019-04-29 13:54:07','','0');
/*!40000 ALTER TABLE `sys_office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属机构',
  `name` varchar(100) NOT NULL COMMENT '角色名称',
  `enname` varchar(255) DEFAULT NULL COMMENT '英文名称',
  `role_type` varchar(255) DEFAULT NULL COMMENT '角色类型',
  `data_scope` char(1) DEFAULT NULL COMMENT '数据范围',
  `is_sys` varchar(64) DEFAULT NULL COMMENT '是否系统数据',
  `useable` varchar(64) DEFAULT NULL COMMENT '是否可用',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_role_del_flag` (`del_flag`),
  KEY `sys_role_enname` (`enname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES ('1','1','系统管理员','dept','assignment','1','1','1','1','2013-05-27 08:00:00','1','2019-09-25 09:54:06','','0'),('2','1','公司管理员','hr','assignment','2','1','1','1','2013-05-27 08:00:00','1','2019-04-29 16:09:41','','0'),('3','1','本公司管理员','a','assignment','3',NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','1','部门管理员','b','assignment','4',NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','1','本部门管理员','c','assignment','5',NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','1','普通用户','d','assignment','8','1','1','1','2013-05-27 08:00:00','1','2018-05-02 18:39:09','','0');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_menu` (
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  `menu_id` varchar(64) NOT NULL COMMENT '菜单编号',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色-菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES ('1','0354fe46ecd24a1090e1d37d780f3d1e'),('1','064fb95e239b48b98e21e2f536a9794c'),('1','0651e7c6854f40cdbb5dc8cd05664bca'),('1','083f84925703427997df6cd8710ba1eb'),('1','0925db880feb4735824d10acc5741fe8'),('1','0cac1a5f9fcc484dabb9feb9816ac2d6'),('1','1'),('1','10'),('1','13'),('1','14'),('1','147a5f2c8f354f3eab5a911c42566ea1'),('1','16856ddef4e14c33bf7f94569f995c3f'),('1','17'),('1','198ebe5385c74214914194d13e18eac5'),('1','1bbb262f5eda4982969bd76cc699481d'),('1','1c99e12a568f4c839301ad11b0f5c154'),('1','1f2c7ad96430409ab5cdc3aa1857d79e'),('1','2'),('1','20'),('1','2026b9c0933847f09835958c746ac187'),('1','22f682f746ba487ca1b8dea98fee09b5'),('1','254f67e24e544885a7a11d1886b3586e'),('1','26a55ebf8f3a4e39a25182973cb3a70f'),('1','27'),('1','27332120e8574ab18161f524e361ebd7'),('1','28'),('1','29'),('1','2a589b154b174e2c8db2ecd1cd63b678'),('1','2b438a3a7fe547fb8ff4dcfa51f8dabf'),('1','2f048dbd81694d92a19a7b3a47970922'),('1','3'),('1','30'),('1','33d1a188f3884f7ca08c7faff340a042'),('1','35c927c93e354f3388d7c9c5b9bfebb7'),('1','360480a8ba0f438eaef27a2b9f5f1e60'),('1','38e12856aa084ee0b541d09552b5941e'),('1','4'),('1','41ca3011072b47fc91d1f1943fce97c5'),('1','425c47f8cb144ade837aa6d6d657d385'),('1','4d97626b7d6943c286fca7b98b45e1d0'),('1','56bbcfb7e5fb4250b9940309d6298866'),('1','56ee5d4912854427a90e11d5e6ba2e4c'),('1','59'),('1','5d87192870dd48be982f3d3b8bacfeff'),('1','5ee0577f976a4de79c143d0160391750'),('1','61c22282b36c44e98bd3d8b30dbc05ea'),('1','6410a688d9f84f3c846cdfbc0158c23c'),('1','655854fb056a443bb02e89b21c56349a'),('1','6a804e8517d44f6599a5cb6c5b592066'),('1','6fe4ac323b324e8591e6cbfc81408644'),('1','7'),('1','757ef2df975c4373ac332a358db2088d'),('1','7788447acd244ffb96808309446ac493'),('1','810357a5a848490b94f62c4eb38bb53a'),('1','821da4927c5d420891ddbf20ff46ed58'),('1','84f341d19e8346daa918698f9d569caa'),('1','85'),('1','8b0dd786c8904a0caf5b4582d4adaf7c'),('1','8d39580f5bec461d9ae5fb7d9f0fe9c3'),('1','8f8c3454bfa044ef9bfa66dab2eb5f6a'),('1','947ec5a840f847ad98cd2d7443a8116e'),('1','964cd22cbd0b4b538e545bdaac9788e0'),('1','9c7cdfc6ee0b42e989cd5f8062ba4ad2'),('1','9db337df085145159a90ab810624e92a'),('1','9db9a90f2a444e7bb761184f2a7d6076'),('1','a7d21cda6e8f4dc9a10d6ca29ca1d94b'),('1','af879e38b8af44f9b3521df7e2382062'),('1','b4c4553b6a8f492297c8d472a8690b4f'),('1','b671fe13f0fc457ab42473203ef8b304'),('1','b9f606e5f7b34c3698b48e4e8e4dfaba'),('1','be3ae032104041568621e5724fb750dd'),('1','c5596aa99cd54fd8981682eaf79ffb89'),('1','c666c10050714730b9f943c4d9c47c05'),('1','c96965c03ecc470096385f77171755a3'),('1','ce08ca9b8ef0467e943d4aec1f5e67bc'),('1','cec73bb87f6247fbbab8f83198d6b63a'),('1','d380e37f05bc4270b474e207a8ff5696'),('1','d4e8ff6fe7d1458ab00ca946971a22da'),('1','e93acdc44f6246caafd6234ecdc39ff4'),('1','f27dc4ee0ab7417c8146daf68f5b209b'),('1','f7f6cebd3894464e83e69942fb8c7857'),('1','f87e6fcfe87b4a07b3f69165dfe59add'),('2','0651e7c6854f40cdbb5dc8cd05664bca'),('2','083f84925703427997df6cd8710ba1eb'),('2','0925db880feb4735824d10acc5741fe8'),('2','0cac1a5f9fcc484dabb9feb9816ac2d6'),('2','1'),('2','10'),('2','13'),('2','14'),('2','147a5f2c8f354f3eab5a911c42566ea1'),('2','17'),('2','1bbb262f5eda4982969bd76cc699481d'),('2','1c99e12a568f4c839301ad11b0f5c154'),('2','1f2c7ad96430409ab5cdc3aa1857d79e'),('2','2'),('2','20'),('2','254f67e24e544885a7a11d1886b3586e'),('2','27'),('2','27332120e8574ab18161f524e361ebd7'),('2','28'),('2','29'),('2','2f048dbd81694d92a19a7b3a47970922'),('2','3'),('2','30'),('2','33d1a188f3884f7ca08c7faff340a042'),('2','360480a8ba0f438eaef27a2b9f5f1e60'),('2','4'),('2','59'),('2','6410a688d9f84f3c846cdfbc0158c23c'),('2','6fe4ac323b324e8591e6cbfc81408644'),('2','7'),('2','821da4927c5d420891ddbf20ff46ed58'),('2','85'),('2','8b0dd786c8904a0caf5b4582d4adaf7c'),('2','947ec5a840f847ad98cd2d7443a8116e'),('2','964cd22cbd0b4b538e545bdaac9788e0'),('2','b9f606e5f7b34c3698b48e4e8e4dfaba'),('2','ce08ca9b8ef0467e943d4aec1f5e67bc'),('2','f27dc4ee0ab7417c8146daf68f5b209b'),('2','f87e6fcfe87b4a07b3f69165dfe59add'),('3','1'),('3','10'),('3','11'),('3','12'),('3','13'),('3','14'),('3','15'),('3','16'),('3','17'),('3','18'),('3','19'),('3','2'),('3','20'),('3','21'),('3','22'),('3','23'),('3','24'),('3','25'),('3','26'),('3','27'),('3','28'),('3','29'),('3','3'),('3','30'),('3','31'),('3','32'),('3','33'),('3','34'),('3','35'),('3','36'),('3','37'),('3','38'),('3','39'),('3','4'),('3','40'),('3','41'),('3','42'),('3','43'),('3','44'),('3','45'),('3','46'),('3','47'),('3','48'),('3','49'),('3','5'),('3','50'),('3','51'),('3','52'),('3','53'),('3','54'),('3','55'),('3','56'),('3','57'),('3','58'),('3','59'),('3','6'),('3','60'),('3','61'),('3','62'),('3','63'),('3','64'),('3','65'),('3','66'),('3','67'),('3','68'),('3','69'),('3','7'),('3','70'),('3','71'),('3','72'),('3','73'),('3','74'),('3','75'),('3','76'),('3','77'),('3','78'),('3','79'),('3','8'),('3','80'),('3','81'),('3','82'),('3','83'),('3','84'),('3','85'),('3','86'),('3','87'),('3','88'),('3','89'),('3','9'),('3','90'),('6','1'),('6','3c92c17886944d0687e73e286cada573'),('6','79'),('6','a89f30f6a8c1471c9f5c53cb8e36e175');
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_office`
--

DROP TABLE IF EXISTS `sys_role_office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_office` (
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  `office_id` varchar(64) NOT NULL COMMENT '机构编号',
  PRIMARY KEY (`role_id`,`office_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色-机构';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_office`
--

LOCK TABLES `sys_role_office` WRITE;
/*!40000 ALTER TABLE `sys_role_office` DISABLE KEYS */;
INSERT INTO `sys_role_office` VALUES ('7','10'),('7','11'),('7','12'),('7','13'),('7','14'),('7','15'),('7','16'),('7','17'),('7','18'),('7','19'),('7','20'),('7','21'),('7','22'),('7','23'),('7','24'),('7','25'),('7','26'),('7','7'),('7','8'),('7','9');
/*!40000 ALTER TABLE `sys_role_office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `company_id` varchar(64) NOT NULL COMMENT '归属公司',
  `office_id` varchar(64) NOT NULL COMMENT '归属部门',
  `login_name` varchar(100) NOT NULL COMMENT '登录名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `no` varchar(100) DEFAULT NULL COMMENT '工号',
  `name` varchar(100) NOT NULL COMMENT '姓名',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `mobile` varchar(200) DEFAULT NULL COMMENT '手机',
  `user_type` char(1) DEFAULT NULL COMMENT '用户类型',
  `photo` varchar(1000) DEFAULT NULL COMMENT '用户头像',
  `login_ip` varchar(100) DEFAULT NULL COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `login_flag` varchar(64) DEFAULT NULL COMMENT '是否可登录',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_user_office_id` (`office_id`),
  KEY `sys_user_login_name` (`login_name`),
  KEY `sys_user_company_id` (`company_id`),
  KEY `sys_user_update_date` (`update_date`),
  KEY `sys_user_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES ('1','1','2','wangming','admin','0001','王明','gaojl@163.com','8675','8675','',NULL,'0:0:0:0:0:0:0:1','2018-05-02 19:08:01','1','1','2013-05-27 08:00:00','1','2019-04-29 16:11:13','最高管理员','0'),('181abcd9d1e04e0fb4f4b310031e2f86','1','2','jialin','admin','0001','系统管理员','gaojl@163.com','8675','8675','',NULL,NULL,NULL,'1','1','2018-05-14 11:59:21','181abcd9d1e04e0fb4f4b310031e2f86','2018-06-01 10:08:22','最高管理员','0'),('1e3851a285a4474c99fde9f824315168','1','5','admin','0001','T001','王天成','','','','',NULL,NULL,NULL,'1','1','2019-04-29 16:12:22','1','2019-04-29 16:12:22','','0'),('509e20b7d0f9447bbb6098c592b7cb28','1','5','zjl','admin','0001','系统管理员','gaojl@163.com','8675','8675','',NULL,NULL,NULL,'1','1','2018-05-14 12:04:41','509e20b7d0f9447bbb6098c592b7cb28','2018-05-26 14:35:07','最高管理员','0'),('5a19d195cc47465888a6f66a8a4dfbec','1','3','wk','wk','ACTION20180302','王坤','','','','3',NULL,NULL,NULL,'0','1','2018-05-14 12:03:20','1','2018-05-14 12:03:20','','0'),('61df92229e4b4a57b9ef810bb2cd9e90','1','3','ACTION20180303','853263f13da256307453130c605e122dcd231ac2345cda614a462aeb','ACTION20180303','张震刚','','','','3',NULL,NULL,NULL,'0','1','2018-05-14 12:03:50','1','2018-05-14 12:03:50','','0'),('6b6c722ef6824ce8ad2625cfd7911603','1','5','action','fe71e9eeeb7c68c9fdb37000aa614a1d9a38581bab46d8f3f04d3b54','20133748','姚霞','','','','3',NULL,NULL,NULL,'1','1','2018-05-26 11:44:39','1','2018-05-26 11:44:39','','0'),('6e50c6047679437c893bec9652180fbf','1','8f88e7ac7a4c4a6784ea22d71d0bb7d8','zhangsan','bd40d0fd3f43484acb4a5570ae886d5c7f22422ec5f026158d4da4ba','W001','张三','','','','3',NULL,NULL,NULL,'1','1','2019-04-29 10:04:32','1','2019-04-29 10:04:32','','0'),('7e7de2c31aa249afbbd865fb9b9fd74f','1','34ec46d711744bb9af8eda10aac85b6e','hgw','911d2dbc4a6930fb58599d0c1e5150120e74dc81af25d325e82787c0','M001','黄国伟','','','','2',NULL,NULL,NULL,'1','1','2019-04-29 09:38:37','1','2019-04-29 09:38:37','','0'),('95815892ef5643ef81692062d803c4b9','1','8f88e7ac7a4c4a6784ea22d71d0bb7d8','lisi','a24c1e037ece82dd590904335046e8f43c923649df68267a3e4d831a','W002','李四','','','','',NULL,NULL,NULL,'1','509e20b7d0f9447bbb6098c592b7cb28','2019-04-29 14:06:23','509e20b7d0f9447bbb6098c592b7cb28','2019-04-29 14:06:23','','0'),('ef83ec0c592148c2991b12e6711e5911','1','3','ACTION20180306','c027b6f965425b5d46a566630fbeef736552095f686ab7f8c6744b04','ACTION20180306','韩兆玉','','','','3',NULL,NULL,NULL,'0','1','2018-05-14 12:05:06','1','2018-05-14 12:05:06','','0'),('fe10556bf83e4b4eb8ad4c10c117aeba','1','5','ws','admin','0001','系统管理员','gaojl@163.com','8675','8675','',NULL,NULL,NULL,'1','1','2018-05-14 12:04:14','fe10556bf83e4b4eb8ad4c10c117aeba','2018-05-26 14:34:16','最高管理员','0');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_cell`
--

DROP TABLE IF EXISTS `sys_user_cell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_cell` (
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户编号',
  `cell_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '工位编号',
  PRIMARY KEY (`user_id`,`cell_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_cell`
--

LOCK TABLES `sys_user_cell` WRITE;
/*!40000 ALTER TABLE `sys_user_cell` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_user_cell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `user_id` varchar(64) NOT NULL COMMENT '用户编号',
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户-角色';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES ('1','1'),('1','2'),('1','3'),('1','4'),('1','5'),('1','6'),('10','2'),('11','3'),('12','4'),('13','5'),('14','6'),('181abcd9d1e04e0fb4f4b310031e2f86','1'),('181abcd9d1e04e0fb4f4b310031e2f86','2'),('181abcd9d1e04e0fb4f4b310031e2f86','3'),('181abcd9d1e04e0fb4f4b310031e2f86','4'),('181abcd9d1e04e0fb4f4b310031e2f86','5'),('181abcd9d1e04e0fb4f4b310031e2f86','6'),('1e3851a285a4474c99fde9f824315168','1'),('1e3851a285a4474c99fde9f824315168','2'),('1e3851a285a4474c99fde9f824315168','3'),('1e3851a285a4474c99fde9f824315168','4'),('1e3851a285a4474c99fde9f824315168','5'),('1e3851a285a4474c99fde9f824315168','6'),('2','1'),('3','2'),('4','3'),('5','4'),('5','6'),('509e20b7d0f9447bbb6098c592b7cb28','1'),('509e20b7d0f9447bbb6098c592b7cb28','2'),('509e20b7d0f9447bbb6098c592b7cb28','3'),('509e20b7d0f9447bbb6098c592b7cb28','4'),('509e20b7d0f9447bbb6098c592b7cb28','5'),('509e20b7d0f9447bbb6098c592b7cb28','6'),('5a19d195cc47465888a6f66a8a4dfbec','6'),('6','5'),('61df92229e4b4a57b9ef810bb2cd9e90','6'),('6b6c722ef6824ce8ad2625cfd7911603','6'),('6e50c6047679437c893bec9652180fbf','6'),('7','2'),('7','7'),('7e7de2c31aa249afbbd865fb9b9fd74f','5'),('8','2'),('9','1'),('95815892ef5643ef81692062d803c4b9','6'),('ef83ec0c592148c2991b12e6711e5911','6'),('fe10556bf83e4b4eb8ad4c10c117aeba','1'),('fe10556bf83e4b4eb8ad4c10c117aeba','2'),('fe10556bf83e4b4eb8ad4c10c117aeba','3'),('fe10556bf83e4b4eb8ad4c10c117aeba','4'),('fe10556bf83e4b4eb8ad4c10c117aeba','5'),('fe10556bf83e4b4eb8ad4c10c117aeba','6');
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tec_flow`
--

DROP TABLE IF EXISTS `tec_flow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tec_flow` (
  `id` varchar(64) NOT NULL,
  `flowCode` varchar(64) NOT NULL DEFAULT '' COMMENT '流程编号',
  `version` varchar(64) NOT NULL DEFAULT '' COMMENT '版本',
  `flowName` varchar(64) NOT NULL DEFAULT '' COMMENT '流程名称',
  `flowDesc` varchar(255) NOT NULL DEFAULT '0' COMMENT '描述',
  `create_by` varchar(64) NOT NULL DEFAULT '' COMMENT '创建者',
  `create_date` datetime NOT NULL DEFAULT '2018-05-26 16:56:43' COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL DEFAULT '' COMMENT '更新着',
  `update_date` datetime NOT NULL DEFAULT '2018-05-26 16:56:43' COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT '' COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工艺路由维护（流程）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tec_flow`
--

LOCK TABLES `tec_flow` WRITE;
/*!40000 ALTER TABLE `tec_flow` DISABLE KEYS */;
INSERT INTO `tec_flow` VALUES ('7a438722f41a4ce6846d2ea6af086aca','003','V 0.2','马哈鱼挑刺','马哈鱼挑刺流程','1','2018-05-26 16:56:43','1','2018-05-26 16:56:55',NULL,'0'),('a190c9f9c57e43f89f7cf4d37b69e6ca','002','V 0.2','鱿鱼丝烘烤','金枪鱼烘烤流程','1','2018-05-23 10:53:44','1','2018-05-26 16:56:03',NULL,'0'),('ca25d7b65d3e40c3af0f40d7e9ebfadd','005','V 0.1','去头流程','','1','2019-09-07 17:42:55','1','2019-09-07 17:42:55',NULL,'0'),('d61e6be69be848979fcd6941a6227d0c','001','V 0.1','金枪鱼加工','金枪鱼去头流程的','1','2018-05-19 14:28:32','1','2019-09-07 17:39:20',NULL,'0');
/*!40000 ALTER TABLE `tec_flow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tec_flow_process`
--

DROP TABLE IF EXISTS `tec_flow_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tec_flow_process` (
  `id` varchar(64) NOT NULL,
  `flow_id` varchar(64) NOT NULL DEFAULT '' COMMENT '流程ID',
  `pro_id` varchar(64) NOT NULL DEFAULT '' COMMENT '工序ID',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序号',
  `create_by` varchar(64) NOT NULL DEFAULT '' COMMENT '创建者',
  `create_date` datetime NOT NULL DEFAULT '2018-05-24 17:36:23' COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL DEFAULT '' COMMENT '更新着',
  `update_date` datetime NOT NULL DEFAULT '2018-05-24 17:36:23' COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT '' COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工艺路由与工序关系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tec_flow_process`
--

LOCK TABLES `tec_flow_process` WRITE;
/*!40000 ALTER TABLE `tec_flow_process` DISABLE KEYS */;
INSERT INTO `tec_flow_process` VALUES ('00695b47d34946a4a80d82d3271e4d3a','7a438722f41a4ce6846d2ea6af086aca','953719098b464d9699ff0258786bd058',5,'1','2019-09-07 19:26:50','1','2019-09-07 19:26:50',NULL,'0'),('27518bd914c445ceaf32cb1837ed2df6','7a438722f41a4ce6846d2ea6af086aca','953719098b464d9699ff0258786bd058',1,'1','2018-05-24 17:36:23','1','2018-05-26 16:57:48',NULL,'1'),('9cead66591124d9cac59f8820841bf66','d61e6be69be848979fcd6941a6227d0c','8cfbfa45e61941849247855a9992b2f6',1,'1','2019-09-07 19:21:53','1','2019-09-27 15:22:41',NULL,'0'),('a0189463b1d243e8a5e82f908a949fd9','d61e6be69be848979fcd6941a6227d0c','a2ca4fff0f844f09848a33d80f151b1c',3,'1','2018-05-23 10:53:24','1','2018-05-26 15:49:22',NULL,'0'),('c12111a355af41078faa2af85cf920bb','a190c9f9c57e43f89f7cf4d37b69e6ca','a2ca4fff0f844f09848a33d80f151b1c',2,'1','2018-05-23 10:53:52','1','2018-05-26 15:49:17',NULL,'0'),('d0c09c1844494fdd97b08eccd52380a8','d61e6be69be848979fcd6941a6227d0c','8112b7c264604d5bbf6b0f0e3af5651a',4,'1','2018-05-23 10:53:11','1','2018-05-26 17:38:43',NULL,'0');
/*!40000 ALTER TABLE `tec_flow_process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tec_process`
--

DROP TABLE IF EXISTS `tec_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tec_process` (
  `id` varchar(64) NOT NULL,
  `proCode` varchar(64) NOT NULL DEFAULT '' COMMENT '工序编号',
  `proName` varchar(64) NOT NULL DEFAULT '' COMMENT '工序名称',
  `proDesc` varchar(255) NOT NULL DEFAULT '0' COMMENT '描述',
  `create_by` varchar(64) NOT NULL DEFAULT '' COMMENT '创建者',
  `create_date` datetime NOT NULL DEFAULT '2018-05-19 13:48:13' COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL DEFAULT '' COMMENT '更新着',
  `update_date` datetime NOT NULL DEFAULT '2018-05-19 13:48:13' COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT '' COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工艺基础数据维护（工序）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tec_process`
--

LOCK TABLES `tec_process` WRITE;
/*!40000 ALTER TABLE `tec_process` DISABLE KEYS */;
INSERT INTO `tec_process` VALUES ('8112b7c264604d5bbf6b0f0e3af5651a','002','切片工序','金龙鱼切片','1','2018-05-19 13:48:13','1','2018-05-26 17:38:07',NULL,'0'),('8cfbfa45e61941849247855a9992b2f6','006','入库','','1','2019-09-06 18:10:05','1','2019-09-06 18:10:05',NULL,'0'),('953719098b464d9699ff0258786bd058','003','挑刺工序','马哈鱼挑刺','1','2018-05-26 16:55:20','1','2018-05-26 16:55:35',NULL,'0'),('a2ca4fff0f844f09848a33d80f151b1c','001','烘烤工序','鱿鱼丝烘烤真好吃','1','2018-05-19 13:45:06','1','2019-09-06 18:09:25',NULL,'1'),('c5df22578c3246a499bfdc23be0d35d9','004','去头工序','金枪鱼去头','1','2018-05-26 17:37:55','1','2018-05-26 17:37:55',NULL,'0');
/*!40000 ALTER TABLE `tec_process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tec_process_station`
--

DROP TABLE IF EXISTS `tec_process_station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tec_process_station` (
  `id` varchar(64) NOT NULL,
  `pro_id` varchar(64) NOT NULL DEFAULT '' COMMENT '工序ID',
  `station_id` varchar(64) NOT NULL DEFAULT '' COMMENT '工站编号',
  `line_id` varchar(64) NOT NULL DEFAULT '' COMMENT '产线编号',
  `create_by` varchar(64) NOT NULL DEFAULT '' COMMENT '创建者',
  `create_date` datetime NOT NULL DEFAULT '2018-05-23 13:54:07' COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL DEFAULT '' COMMENT '更新着',
  `update_date` datetime NOT NULL DEFAULT '2018-05-23 13:54:07' COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT '' COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工序与工站关系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tec_process_station`
--

LOCK TABLES `tec_process_station` WRITE;
/*!40000 ALTER TABLE `tec_process_station` DISABLE KEYS */;
INSERT INTO `tec_process_station` VALUES ('1178e17b669f4f169012ab8e53e8e93e','a2ca4fff0f844f09848a33d80f151b1c','b704ea7d3af84b9a94a8481891b6526c','50bab7e0a126485cb062534590e05038','1','2018-05-23 13:54:07','1','2018-05-26 17:02:04',NULL,'0'),('1e477326086a42cd825b9ba9a28eec53','8112b7c264604d5bbf6b0f0e3af5651a','8f218ef3004d430085f7160a15d0a4ec','794abde5a457437f812eecf712c17578','1','2019-09-27 15:23:12','1','2019-09-27 15:23:12',NULL,'0'),('856b1486ef4649acb76f4109166993ec','c5df22578c3246a499bfdc23be0d35d9','7e1c273df5334c648142e72f0045876b','794abde5a457437f812eecf712c17578','1','2018-05-26 17:46:20','1','2018-05-26 17:46:30',NULL,'1'),('8bf15c5db1a84ab39574a69f7a68de0c','8112b7c264604d5bbf6b0f0e3af5651a','63688c609f824834bf0abca0171bc8a7','d3b5488ffa5d4d48ad73d45d4a0229a5','1','2018-05-23 13:54:27','1','2018-05-26 17:00:28',NULL,'0'),('a2f5fc42052e4d67a4c33179ff90201b','953719098b464d9699ff0258786bd058','8021d772bf09424f9dc51674ab419431','689b1cde6dd243538c735e08b954acda','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-12 15:16:22','fe10556bf83e4b4eb8ad4c10c117aeba','2019-09-12 15:16:22',NULL,'0'),('ad1d246df7834def950faa246d1fe838','953719098b464d9699ff0258786bd058','8021d772bf09424f9dc51674ab419431','d3b5488ffa5d4d48ad73d45d4a0229a5','1','2019-09-09 23:07:32','1','2019-09-09 23:14:58',NULL,'0'),('d35f58a92992435da4f990768d8a36b1','953719098b464d9699ff0258786bd058','8021d772bf09424f9dc51674ab419431','689b1cde6dd243538c735e08b954acda','1','2018-05-26 17:03:34','1','2018-05-26 17:03:34',NULL,'0');
/*!40000 ALTER TABLE `tec_process_station` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-31  3:49:05
