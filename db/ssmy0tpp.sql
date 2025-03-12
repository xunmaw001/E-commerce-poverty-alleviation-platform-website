-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmy0tpp
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613975846487 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-02-22 06:13:33',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-02-22 06:13:33',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-02-22 06:13:33',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-02-22 06:13:33',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-02-22 06:13:33',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-02-22 06:13:33',6,'宇宙银河系月球1号','月某','13823888886','是'),(1613975846486,'2021-02-22 06:37:25',1613975789042,'湖北省荆门市沙洋县拾回桥镇李家咀子','小李','16458978891','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'remenshangpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613975877565 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613976144230 DEFAULT CHARSET=utf8 COMMENT='投诉举报';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (61,'2021-02-22 06:13:33',1,1,'提问1','回复1',1),(62,'2021-02-22 06:13:33',2,2,'提问2','回复2',2),(63,'2021-02-22 06:13:33',3,3,'提问3','回复3',3),(64,'2021-02-22 06:13:33',4,4,'提问4','回复4',4),(65,'2021-02-22 06:13:33',5,5,'提问5','回复5',5),(66,'2021-02-22 06:13:33',6,6,'提问6','回复6',6),(1613975938884,'2021-02-22 06:38:58',1613975789042,NULL,'这里可以投诉举报 管理员会在后台查看信息并回复',NULL,0),(1613976144229,'2021-02-22 06:42:23',1613975789042,1,NULL,'这里回复投诉',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmy0tpp/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmy0tpp/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmy0tpp/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanpingjia`
--

DROP TABLE IF EXISTS `dingdanpingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) NOT NULL COMMENT '订单编号',
  `pingjiabiaoti` varchar(200) NOT NULL COMMENT '评价标题',
  `dingdanpingfen` varchar(200) NOT NULL COMMENT '订单评分',
  `dingdanpingjia` longtext NOT NULL COMMENT '订单评价',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613976242458 DEFAULT CHARSET=utf8 COMMENT='订单评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanpingjia`
--

LOCK TABLES `dingdanpingjia` WRITE;
/*!40000 ALTER TABLE `dingdanpingjia` DISABLE KEYS */;
INSERT INTO `dingdanpingjia` VALUES (51,'2021-02-22 06:13:33','订单编号1','评价标题1','1','订单评价1','2021-02-22','用户名1','手机1','是',''),(52,'2021-02-22 06:13:33','订单编号2','评价标题2','1','订单评价2','2021-02-22','用户名2','手机2','是',''),(53,'2021-02-22 06:13:33','订单编号3','评价标题3','1','订单评价3','2021-02-22','用户名3','手机3','是',''),(54,'2021-02-22 06:13:33','订单编号4','评价标题4','1','订单评价4','2021-02-22','用户名4','手机4','是',''),(55,'2021-02-22 06:13:33','订单编号5','评价标题5','1','订单评价5','2021-02-22','用户名5','手机5','是',''),(56,'2021-02-22 06:13:33','订单编号6','评价标题6','1','订单评价6','2021-02-22','用户名6','手机6','是',''),(1613976242457,'2021-02-22 06:44:02','20212221438395354075','这里进行评价','5','666','2021-03-13','666','16459878982','是','这里回复用户的评价');
/*!40000 ALTER TABLE `dingdanpingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussremenshangpin`
--

DROP TABLE IF EXISTS `discussremenshangpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussremenshangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613975867472 DEFAULT CHARSET=utf8 COMMENT='热门商品评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussremenshangpin`
--

LOCK TABLES `discussremenshangpin` WRITE;
/*!40000 ALTER TABLE `discussremenshangpin` DISABLE KEYS */;
INSERT INTO `discussremenshangpin` VALUES (121,'2021-02-22 06:13:33',1,1,'评论内容1','回复内容1'),(122,'2021-02-22 06:13:33',2,2,'评论内容2','回复内容2'),(123,'2021-02-22 06:13:33',3,3,'评论内容3','回复内容3'),(124,'2021-02-22 06:13:33',4,4,'评论内容4','回复内容4'),(125,'2021-02-22 06:13:33',5,5,'评论内容5','回复内容5'),(126,'2021-02-22 06:13:33',6,6,'评论内容6','回复内容6'),(1613975867471,'2021-02-22 06:37:46',21,1613975789042,'登录后可以收藏 评论  购买  在线投诉举报等操作','这里查看评论并回复');
/*!40000 ALTER TABLE `discussremenshangpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613976128556 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (111,'2021-02-22 06:13:33','合肥：电商扶贫助力脱贫攻坚与乡村振兴平稳衔接','2017年以来，合肥市商务局围绕省、市所确定的电商扶贫重点工作任务，全面实施电商扶贫工程，扎实推进电商扶贫各项工作，助力精准扶贫取得积极成效，相关工作考核验收取得优异成绩：在2017年省政府开展的电子商务发展综合考核中，合肥市名列全省地级市第1名，电子商务进农村全覆盖工作顺利通过省级验收；2018-2019年，在省政府对各市开展的电商发展年度考核中，合肥市均位居全省第一。肥东县、庐江县、长丰县先后获评省级农村电商示范县。','http://localhost:8080/ssmy0tpp/upload/news_picture1.jpg','<p class=\"ql-align-justify\"><strong>统筹发展抓扶贫，政策持续推进</strong></p><p class=\"ql-align-justify\">2017年以来，围绕市委、市政府文件精神，结合合肥市实际，合肥市商务局草拟并提请市扶贫开发领导小组印发出台《合肥市电商扶贫工作实施方案》，印发《2018年电商扶贫工作计划》《关于下达2019年度市本级财政扶贫专项资金(农村电商扶贫)任务清单的通知》《关于下达2020年度市本级财政扶贫专项资金(电商扶贫专项资金)任务清单的通知》等文件，确定推进电商精准扶贫的年度目标和工作任务。会同市财政局印发《合肥市农村电商扶贫支持政策专项资金管理暂行办法》等文件，加快推动电商扶贫项目建设进度，扎实推进电商扶贫工程。</p><p class=\"ql-align-justify\"><strong>深耕细作强扶贫，机制不断完善</strong></p><p class=\"ql-align-justify\">合肥市四县一市共建成5个县级电子商务公共服务中心，5个县级电商物流配送中心，全面完成全市 112个贫困村电商服务网点的建设和提升工作。同时，各县(市)均依托县级公共服务中心建设农村电子商务线下体验中心，积极开展产品展示、农产品上行、物流配送等综合服务工作，直接为当地的贫困户提供电商综合服务。</p><p class=\"ql-align-justify\">聚焦贫困村电商服务网点，加强分类实施、动态管理，对能够稳定实现农村</p><p><br></p>'),(112,'2021-02-22 06:13:33','商务扶贫回眸丨娄底新化：整体县域开展电商扶贫','红网时刻记者 杨斌 长沙报道\n\n湖南娄底新化县地处湘中腹地，盛产茶叶、水酒、中药材、豆腐、小水果等特色产品，自2014年新化县重点推进电商工作以来，电商扶贫逐渐成为当地带动产业发展、助力脱贫攻坚的重要抓手。\n\n对于这个曾经产业基础薄弱、贫困人口多的国家级贫困县来讲，正是凭借新化县委县政府始终把电商扶贫作为一把手工程，作为扶贫先扶智、授人以渔的一项核心抓手，才真正让产业、企业、创业者实现了从零到一的成长与蜕变。','http://localhost:8080/ssmy0tpp/upload/news_picture2.jpg','<p class=\"ql-align-justify\">如今，在电商的带动下，新化县原本一些自给自足、或者区域性销售的产品，纷纷通过互联网走了出去，全县网络零售额从2013年几乎为零开始，到2019年增长到8.01亿元，其中农产品网销从2015年的0.4亿元提升到2019年的4.94亿元，共带动贫困户3.5万余人脱贫致富。</p><p class=\"ql-align-justify\"><strong>政府推动，强化公共服务能力</strong></p><p class=\"ql-align-justify\">新化县电商工作始于2014年，县委、县政府高度重视，成立以县长为组长的领导机构，聘请国家级专家作为县域电商发展顾问，设立电商扶贫专项资金，采取以奖代补等方式支持电商主体与贫困户的精准对接帮扶，确保电商扶贫工作精准有效。</p><p class=\"ql-align-justify\">2015年，新化县成为省级电子商务示范县，2017年以全省第一名的成绩申报为国家电子商务进农村综合示范县，并连续4年在全省电商扶贫绩效考评中名列前茅；电子商务进农村示范项目以全省第一名的成绩顺利通过了商务部、省商务厅两级中期绩效评价考核；2018年全省电子商务进农村现场推进会在新化召开。</p><p class=\"ql-align-justify\">2018年5月，新化正式建成电商产业园，引进颐高集团、众高电商为园区提</p><p><br></p>'),(113,'2021-02-22 06:13:33','消费电商扶贫 点点奉献汇成爱心大潮','2020年5月，乌鲁木齐高新区（新市区）发出区内协作帮扶洛浦县消费扶贫倡议书：倡议全区各界人士积极行动起来，参与到对洛浦县的消费扶贫行列中来。倡导人们在日常消费时更多选择购买洛浦县建档立卡贫困户的产品与服务，奉献一片真情、贡献一份力量，用日常消费行为给洛浦县贫困群众送去实实在在的关爱，为脱贫攻坚作出实实在在的贡献。','http://localhost:8080/ssmy0tpp/upload/news_picture3.jpg','<p class=\"ql-align-justify\">洛浦县特色农产品“三合一”特惠箱</p><p class=\"ql-align-justify\">倡议书特别推荐了洛浦县特色农产品“三合一”特惠箱，这箱优质特产总重约4公斤，含灰枣、核桃和木耳三种产品。其中产于洛浦当地的灰枣果色红郁，肉足、皮薄、核小、口感甘甜醇厚；核桃果仁饱满、味香不涩；而乡镇大型种植基地出产的黑褐色木耳，因当地气候干燥、无工业污染，整个生长期不施用任何农药，更是营养丰富的有机产品，木耳泡发后叶片饱满，质地柔软，肉厚无根，胶原蛋白充沛，口感极佳，是老少咸宜的滋补佳品。</p><p class=\"ql-align-justify\">“‘三合一’特惠箱产品品质优、价格实惠，是送礼或家人食用的营养健康好产品！最近我们刚给西单商场发运了569件‘三合一’特惠箱，商场职工对洛浦特产评价很高。还有不少人打包装上的电话再次购买呢！”乌鲁木齐高新区（新市区）商贸企业雪中送炭式的消费帮扶，让洛浦县供销投资控股公司总经理金胜对县里特色农产品“走出去”、开拓市场树立了信心。</p><p><br></p>'),(114,'2021-02-22 06:13:33','商务扶贫回眸丨“永州模式”让美丽乡村富起来','2019年，永州祁阳县青峰村人均收入提升15%以上，在该年度祁阳县“工作村为主、成果大比武”中，总分居全县第三名，荣获“祁阳县模范村”称号，年底还成功获得广州市农业农村局、永州海关认证的“粤港澳大湾区菜篮子生产基地”，蔬菜获准进入粤港澳大湾区市场。','http://localhost:8080/ssmy0tpp/upload/news_picture4.jpg','<p class=\"ql-align-justify\">这是永州市“致富产业稳发展，乡村振兴结硕果”的缩影。近年来，永州市开展形式多样的商务扶贫，取得了丰硕成果。</p><p class=\"ql-align-justify\"><strong>电商扶贫动起来</strong></p><p class=\"ql-align-justify\">近年来，祁阳县商务和粮食局持续推进电商精准扶贫工作，助推扶贫攻坚，加快搭建平台。包括京东、阿里村淘、嘟嘟牛等45家电商平台和企业签订了入驻祁阳县电商产业孵化园协议，形成抱团发展、优势互补的良好局面。</p><p class=\"ql-align-justify\">祁阳县商务和粮食局还邀请了阿里巴巴、神州买卖提、农商通86077、友阿、金荣商学院等金牌培训讲师开展电子商务实操培训12次，培训达600人次。广泛开展贫困户电商技能培训，对已建档立卡的贫困户子女参加电商培训的给予资金补助，引导贫困户在淘宝网、“农村e邮”等平台开店创业，销售土特农产品增收脱贫。另外，引导电商龙头企业安排适当产品、适当岗位帮助低收入、残疾人群实现就业。</p><p><br></p>'),(1613976128555,'2021-02-22 06:42:08','这里添加系统公告信息','111','http://localhost:8080/ssmy0tpp/upload/1613976117817.jpg','<p>平台上新</p><p><img src=\"http://localhost:8080/ssmy0tpp/upload/1613976127139.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'remenshangpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1613976197702 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1613975884422,'2021-02-22 06:38:04','20212221438395354075','remenshangpin',1613975789042,22,'商品名称2','http://localhost:8080/ssmy0tpp/upload/remenshangpin_tupian2.jpg',1,99.9,99.9,99.9,99.9,1,'已完成','湖北省荆门市沙洋县拾回桥镇李家咀子'),(1613975894948,'2021-02-22 06:38:14','202122214381448239532','remenshangpin',1613975789042,21,'商品名称1','http://localhost:8080/ssmy0tpp/upload/1613975630951.jpg',3,32,32,96,96,1,'已完成','湖北省荆门市沙洋县拾回桥镇李家咀子'),(1613976197701,'2021-02-22 06:43:16','202122214431640110098','remenshangpin',1613975789042,1613976028788,'哈密瓜','http://localhost:8080/ssmy0tpp/upload/1613976008488.jpg',1,100,100,100,100,2,'已支付','湖北省荆门市沙洋县拾回桥镇李家咀子');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remenshangpin`
--

DROP TABLE IF EXISTS `remenshangpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remenshangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `diqu` varchar(200) DEFAULT NULL COMMENT '地区',
  `xiangqing` longtext COMMENT '详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `jifen` int(11) DEFAULT '-1' COMMENT '积分',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613976028789 DEFAULT CHARSET=utf8 COMMENT='热门商品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remenshangpin`
--

LOCK TABLES `remenshangpin` WRITE;
/*!40000 ALTER TABLE `remenshangpin` DISABLE KEYS */;
INSERT INTO `remenshangpin` VALUES (21,'2021-02-22 06:13:33','商品名称1','禽蛋','http://localhost:8080/ssmy0tpp/upload/1613975630951.jpg','规格1','品牌1','地区1','<p>详情1</p>','2021-02-22 14:43:00',10,10000,32),(22,'2021-02-22 06:13:33','商品名称2','分类2','http://localhost:8080/ssmy0tpp/upload/remenshangpin_tupian2.jpg','规格2','品牌2','地区2','详情2','2021-02-22 14:38:04',4,10000,99.9),(23,'2021-02-22 06:13:33','商品名称3','水果','http://localhost:8080/ssmy0tpp/upload/1613975515820.jpg','规格3','品牌3','地区3','<p><img src=\"http://localhost:8080/ssmy0tpp/upload/1613975525703.jpg\"></p>','2021-02-22 14:30:56',4,10000,26),(24,'2021-02-22 06:13:33','商品名称4','禽蛋','http://localhost:8080/ssmy0tpp/upload/1613975615045.jpg','规格4','品牌4','地区4','<p>详情4</p>','2021-02-22 14:33:29',5,10000,38),(25,'2021-02-22 06:13:33','商品名称5','分类5','http://localhost:8080/ssmy0tpp/upload/remenshangpin_tupian5.jpg','规格5','品牌5','地区5','详情5','2021-02-22 14:13:33',5,10000,99.9),(26,'2021-02-22 06:13:33','商品名称6','分类6','http://localhost:8080/ssmy0tpp/upload/remenshangpin_tupian6.jpg','规格6','品牌6','地区6','详情6','2021-02-22 14:13:33',6,10000,99.9),(1613976028788,'2021-02-22 06:40:28','哈密瓜','水果','http://localhost:8080/ssmy0tpp/upload/1613976008488.jpg','个','AA','新疆','<p><img src=\"http://localhost:8080/ssmy0tpp/upload/1613976027822.jpg\"></p>','2021-02-22 14:44:56',4,100,3);
/*!40000 ALTER TABLE `remenshangpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinfenlei`
--

DROP TABLE IF EXISTS `shangpinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1613975987510 DEFAULT CHARSET=utf8 COMMENT='商品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinfenlei`
--

LOCK TABLES `shangpinfenlei` WRITE;
/*!40000 ALTER TABLE `shangpinfenlei` DISABLE KEYS */;
INSERT INTO `shangpinfenlei` VALUES (11,'2021-02-22 06:13:33','水果'),(12,'2021-02-22 06:13:33','禽蛋'),(13,'2021-02-22 06:13:33','干货'),(14,'2021-02-22 06:13:33','菌类'),(1613975987509,'2021-02-22 06:39:46','这里添加商品分类');
/*!40000 ALTER TABLE `shangpinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613975854479 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1613975854478,'2021-02-22 06:37:33',1613975789042,21,'remenshangpin','商品名称1','http://localhost:8080/ssmy0tpp/upload/1613975630951.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','lodbkk2nsf271bjfhh5i4hjk69a1j931','2021-02-22 06:30:14','2021-02-22 07:44:14'),(2,1613975789042,'666','yonghu','用户','bxaj04r6mt3km0zehgdwzack3jwnpzlc','2021-02-22 06:36:34','2021-02-22 07:44:33');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-02-22 06:13:33'),(2,'000','000','管理员','2021-02-22 06:41:42');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xitongrizhi`
--

DROP TABLE IF EXISTS `xitongrizhi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xitongrizhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `rizhibiaoti` varchar(200) DEFAULT NULL COMMENT '日志标题',
  `rizhineirong` longtext COMMENT '日志内容',
  `rizhiriqi` date DEFAULT NULL COMMENT '日志日期',
  `rizhibeizhu` varchar(200) DEFAULT NULL COMMENT '日志备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613976083589 DEFAULT CHARSET=utf8 COMMENT='系统日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xitongrizhi`
--

LOCK TABLES `xitongrizhi` WRITE;
/*!40000 ALTER TABLE `xitongrizhi` DISABLE KEYS */;
INSERT INTO `xitongrizhi` VALUES (41,'2021-02-22 06:13:33','日志标题1','日志内容1','2021-02-22','日志备注1'),(42,'2021-02-22 06:13:33','日志标题2','日志内容2','2021-02-22','日志备注2'),(43,'2021-02-22 06:13:33','日志标题3','日志内容3','2021-02-22','日志备注3'),(44,'2021-02-22 06:13:33','日志标题4','日志内容4','2021-02-22','日志备注4'),(45,'2021-02-22 06:13:33','日志标题5','日志内容5','2021-02-22','日志备注5'),(46,'2021-02-22 06:13:33','日志标题6','日志内容6','2021-02-22','日志备注6'),(1613976083588,'2021-02-22 06:41:23','这里添加系统日志','<p>212</p>','2021-03-13','121');
/*!40000 ALTER TABLE `xitongrizhi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `jifen` float DEFAULT '0' COMMENT '积分',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1613975789043 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (31,'2021-02-22 06:13:33','用户1','123456','姓名1','男','http://localhost:8080/ssmy0tpp/upload/yonghu_touxiang1.jpg','13823888881','773890001@qq.com',10000,100),(32,'2021-02-22 06:13:33','用户2','123456','姓名2','女','http://localhost:8080/ssmy0tpp/upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com',10000,100),(33,'2021-02-22 06:13:33','用户3','123456','姓名3','男','http://localhost:8080/ssmy0tpp/upload/yonghu_touxiang3.jpg','13823888883','773890003@qq.com',10000,100),(35,'2021-02-22 06:13:33','用户5','123456','姓名5','男','http://localhost:8080/ssmy0tpp/upload/yonghu_touxiang5.jpg','13823888885','773890005@qq.com',10000,100),(36,'2021-02-22 06:13:33','用户6','123456','姓名6','男','http://localhost:8080/ssmy0tpp/upload/yonghu_touxiang6.jpg','13823888886','773890006@qq.com',10000,100),(1613975789042,'2021-02-22 06:36:29','666','666','小李','女','http://localhost:8080/ssmy0tpp/upload/1613975802832.png','16459878982','132@123.com',95.9,4.1);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-23 13:12:25
