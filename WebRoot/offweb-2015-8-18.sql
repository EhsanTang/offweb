-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.6.18-enterprise-commercial-advanced


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema offweb
--

CREATE DATABASE IF NOT EXISTS offweb;
USE offweb;

--
-- Definition of table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned DEFAULT NULL,
  `nid` int(10) unsigned DEFAULT NULL,
  `pid` int(10) unsigned DEFAULT NULL,
  `insertTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `content` text,
  `flag` int(11) DEFAULT '1',
  `praise` int(11) DEFAULT '0',
  `addTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK_comment_user` (`uid`) USING BTREE,
  KEY `FK_comment_news` (`nid`),
  KEY `FK_comment_comment` (`pid`),
  CONSTRAINT `FK_comment_comment` FOREIGN KEY (`pid`) REFERENCES `comment` (`id`),
  CONSTRAINT `FK_comment_news` FOREIGN KEY (`nid`) REFERENCES `news` (`id`),
  CONSTRAINT `FK_comment_user` FOREIGN KEY (`uid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` (`id`,`uid`,`nid`,`pid`,`insertTime`,`content`,`flag`,`praise`,`addTime`) VALUES 
 (12,86,2,NULL,'2015-04-13 21:03:52','我他妈的有什么错，怎么就是出不来效果',-100,0,'2015-08-17 11:53:53'),
 (83,89,2,NULL,'2015-04-13 17:26:53','呵呵呵呵',1,0,'2015-08-17 11:53:53'),
 (84,89,2,NULL,'2015-04-13 17:27:01','哈哈哈',1,0,'2015-08-17 11:53:53'),
 (85,89,2,NULL,'2015-04-14 15:34:12','嘿嘿嘿',1,2,'2015-08-17 11:53:53'),
 (113,89,2,NULL,'2015-04-14 18:41:47','哈哈哈，终于弄好了嘿嘿',1,1,'2015-08-17 11:53:53'),
 (125,89,2,85,'2015-04-14 15:24:57','的的的',1,0,'2015-08-17 11:53:53'),
 (126,89,2,85,'2015-04-14 15:26:32','事实上',1,0,'2015-08-17 11:53:53'),
 (127,89,2,NULL,'2015-04-14 16:45:24','月租房、日租房、聚会租房 租房吗不收取任何手续费，所有价格均为商家提供的最低价格',1,1,'2015-08-17 11:53:53'),
 (128,89,2,127,'2015-04-14 17:08:54','月租房、日租房、聚会租房 租房吗不收取任何手续费，所有价格均为商家提供的最低价格',1,1,'2015-08-17 11:53:53'),
 (129,89,2,NULL,'2015-04-14 18:25:01','租房吗不收取任何费用，房间价格均为商家提供的最低价格',1,1,'2015-08-17 11:53:53'),
 (130,89,2,129,'2015-04-14 18:40:36','租房吗不收取任何费用，房间价格均为商家提供的最低价格',1,0,'2015-08-17 11:53:53'),
 (131,89,2,129,'2015-04-14 18:40:30','租房吗不收取任何费用，房间价格均为商家提供的最低价格66666',1,1,'2015-08-17 11:53:53'),
 (132,89,2,129,'2015-04-14 18:37:19','房间价格均为商家提供的最低价格8888',1,1,'2015-08-17 11:53:53'),
 (133,89,2,129,'2015-04-14 18:40:42','房间价格均为商家提供的最低价格8888',1,0,'2015-08-17 11:53:53'),
 (134,89,2,129,'2015-04-14 18:40:32','房间价格均为商家提供的最低价格8888',1,1,'2015-08-17 11:53:53'),
 (135,89,2,129,'2015-04-14 18:40:46','房间价格均为商家提供的最低价格8888',1,1,'2015-08-17 11:53:53'),
 (142,89,2,129,'2015-04-14 18:39:02','房间价格均为商家提供的最低价格99999',1,1,'2015-08-17 11:53:53'),
 (143,89,2,129,'2015-04-14 18:37:44','房间价格均为商家提供的最低价格9999',1,1,'2015-08-17 11:53:53'),
 (144,89,2,129,'2015-04-14 17:55:29','房间价格均为商家提供的最低价格77777',1,0,'2015-08-17 11:53:53'),
 (145,89,2,129,'2015-04-14 18:39:06','房间价格均为商家提供的最低价格55555',1,1,'2015-08-17 11:53:53'),
 (149,89,2,NULL,'2015-04-14 18:06:19','房间价格均为商家提供的最低价格77777777777777777777777777777777777777777',1,1,'2015-08-17 11:53:53'),
 (150,89,2,149,'2015-04-14 18:00:19','房间价格均为商家提供的最低价格6666666666666',1,0,'2015-08-17 11:53:53'),
 (151,89,11,NULL,'2015-04-14 18:45:42','dfd d df ',1,0,'2015-08-17 11:53:53'),
 (152,89,11,151,'2015-04-14 18:45:47','d d fd fds fd ',1,0,'2015-08-17 11:53:53'),
 (153,89,2,NULL,'2015-04-15 17:53:24','订单的的的的',1,0,'2015-08-17 11:53:53'),
 (154,89,2,153,'2015-04-15 17:53:30','订单 订单的的',1,0,'2015-08-17 11:53:53'),
 (155,89,2,153,'2015-04-15 17:53:37','订单的  的  ',1,0,'2015-08-17 11:53:53');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;


--
-- Definition of table `hotword`
--

DROP TABLE IF EXISTS `hotword`;
CREATE TABLE `hotword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `searchTimes` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '搜索次数',
  `flag` int(11) NOT NULL DEFAULT '1' COMMENT '1为显示，-1为不显示，100为置顶',
  `addTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `hotword_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=341 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotword`
--

/*!40000 ALTER TABLE `hotword` DISABLE KEYS */;
INSERT INTO `hotword` (`id`,`name`,`searchTimes`,`flag`,`addTime`) VALUES 
 (51,'约炮',349,-1,'2015-08-17 11:54:27'),
 (110,'付村',250,-1,'2015-08-17 11:54:27'),
 (111,'天津',581,-1,'2015-08-17 11:54:27'),
 (112,'天津工业大学',649,-1,'2015-08-17 11:54:27'),
 (113,'天津工业大学订单',146,-1,'2015-08-17 11:54:27'),
 (114,'天津师范大学',228,-1,'2015-08-17 11:54:27'),
 (115,'姚村',444,-1,'2015-08-17 11:54:27'),
 (116,'文博园',330,-1,'2015-08-17 11:54:27'),
 (117,'日租',488,-1,'2015-08-17 11:54:27'),
 (118,'日租房',335,-1,'2015-08-17 11:54:27'),
 (119,'月租',270,-1,'2015-08-17 11:54:27'),
 (120,'潘鑫园',235,-1,'2015-08-17 11:54:27'),
 (121,'潘馨园',1348,1,'2015-08-17 11:54:27'),
 (122,'特价房',145,-1,'2015-08-17 11:54:27'),
 (123,'聚会',229,-1,'2015-08-17 11:54:27'),
 (124,'tjpu',110,-1,'2015-08-17 11:54:27'),
 (125,'不与房东住',1,-1,'2015-08-17 11:54:27'),
 (126,'观影',1,1,'2015-08-17 11:54:27'),
 (128,'工大',23,1,'2015-08-17 11:54:27'),
 (129,'景福花园',1,1,'2015-08-17 11:54:27'),
 (130,'东北石油大学',1,1,'2015-08-17 11:54:27'),
 (131,'滨江道',1,1,'2015-08-17 11:54:27'),
 (132,'天津医专',1,1,'2015-08-17 11:54:27'),
 (134,'10号楼6门402精',1,1,'2015-08-17 11:54:27'),
 (135,'独立卫浴',1,1,'2015-08-17 11:54:27'),
 (136,'南昌航空大学科技学院',1,1,'2015-08-17 11:54:27'),
 (137,'中国劳动关系学院',1,1,'2015-08-17 11:54:27'),
 (138,'工业大',1,1,'2015-08-17 11:54:27'),
 (139,'天师大',2,1,'2015-08-17 11:54:27'),
 (140,'dfsfdsf',1,1,'2015-08-17 11:54:27'),
 (141,'武汉理工大学',1,1,'2015-08-17 11:54:27'),
 (142,'双井',2,1,'2015-08-17 11:54:27'),
 (143,'弄饭',2,1,'2015-08-17 11:54:27'),
 (144,'厨房',15,1,'2015-08-17 11:54:27'),
 (145,'夏华园',2,1,'2015-08-17 11:54:27'),
 (146,'大连开发区',1,1,'2015-08-17 11:54:27'),
 (147,'工业大学',26,1,'2015-08-17 11:54:27'),
 (148,'单间月租',1,1,'2015-08-17 11:54:27'),
 (149,'河北工业大学',2,1,'2015-08-17 11:54:27'),
 (150,'天津职业技术师范大学',1,1,'2015-08-17 11:54:27'),
 (151,'常州大学',1,1,'2015-08-17 11:54:27'),
 (152,'潘馨园6号楼',1,1,'2015-08-17 11:54:27'),
 (153,'潘馨园5号楼',1,1,'2015-08-17 11:54:27'),
 (154,'厦门',1,1,'2015-08-17 11:54:27'),
 (155,'厦门海洋学院',1,1,'2015-08-17 11:54:27'),
 (156,'天津中医药大学',1,1,'2015-08-17 11:54:27'),
 (157,'PArty',4,1,'2015-08-17 11:54:27'),
 (158,'师大南门',1,1,'2015-08-17 11:54:27'),
 (159,'肯德基附近',1,1,'2015-08-17 11:54:27'),
 (160,'天津理工大学',11,1,'2015-08-17 11:54:27'),
 (161,'做饭',23,1,'2015-08-17 11:54:27'),
 (162,'朝阳里',1,1,'2015-08-17 11:54:27'),
 (163,'租房',1,1,'2015-08-17 11:54:27'),
 (164,'德才里',2,1,'2015-08-17 11:54:27'),
 (166,'聚餐',2,1,'2015-08-17 11:54:27'),
 (167,'月租房',1,1,'2015-08-17 11:54:27'),
 (168,'年租房',1,1,'2015-08-17 11:54:27'),
 (169,'工大西苑',3,1,'2015-08-17 11:54:27'),
 (170,'潘心源',2,1,'2015-08-17 11:54:27'),
 (171,'秩幽',1,1,'2015-08-17 11:54:27'),
 (173,'文博园12号楼',1,1,'2015-08-17 11:54:27'),
 (174,'潘馨圆',1,1,'2015-08-17 11:54:27'),
 (175,'10号楼',1,1,'2015-08-17 11:54:27'),
 (177,'麻将桌',1,1,'2015-08-17 11:54:27'),
 (179,'姚村公寓',1,1,'2015-08-17 11:54:27'),
 (180,'天津机电职业技术',1,1,'2015-08-17 11:54:27'),
 (181,'厨房作饭',1,1,'2015-08-17 11:54:27'),
 (182,'北京',1,1,'2015-08-17 11:54:27'),
 (183,'师范',1,1,'2015-08-17 11:54:27'),
 (184,'独单',1,1,'2015-08-17 11:54:27'),
 (185,'带厨房',2,1,'2015-08-17 11:54:27'),
 (186,'阁楼',1,1,'2015-08-17 11:54:27'),
 (187,'大学城',5,1,'2015-08-17 11:54:27'),
 (188,'济南大学',1,1,'2015-08-17 11:54:27'),
 (189,'chongyou',1,1,'2015-08-17 11:54:27'),
 (190,'重邮',1,1,'2015-08-17 11:54:27'),
 (191,'重庆邮电大吸血',1,1,'2015-08-17 11:54:27'),
 (192,'重庆邮电大学',1,1,'2015-08-17 11:54:27'),
 (193,'荣水里',3,1,'2015-08-17 11:54:27'),
 (194,'有厨房',4,1,'2015-08-17 11:54:27'),
 (195,'班级聚会',1,1,'2015-08-17 11:54:27'),
 (196,'礼贤里',1,1,'2015-08-17 11:54:27'),
 (199,'过夜',1,1,'2015-08-17 11:54:27'),
 (200,'鼓楼附近',1,1,'2015-08-17 11:54:27'),
 (201,'南开',1,1,'2015-08-17 11:54:27'),
 (202,'两室一厅',1,1,'2015-08-17 11:54:27'),
 (203,'南开区',1,1,'2015-08-17 11:54:27'),
 (204,'天津科技大学泰达校区',1,1,'2015-08-17 11:54:27'),
 (205,'5号楼4门201北',1,1,'2015-08-17 11:54:27'),
 (206,'河北经贸大学',1,1,'2015-08-17 11:54:27'),
 (207,'天津工业',3,1,'2015-08-17 11:54:27'),
 (208,'民航大学',1,1,'2015-08-17 11:54:27'),
 (210,'天津农学院',1,1,'2015-08-17 11:54:27'),
 (212,'中小型温馨聚会',1,1,'2015-08-17 11:54:27'),
 (213,'温馨园',1,1,'2015-08-17 11:54:27'),
 (214,'春馨园',2,1,'2015-08-17 11:54:27'),
 (215,'合租',1,1,'2015-08-17 11:54:27'),
 (217,'sssss',1,1,'2015-08-17 11:54:27'),
 (218,'10号楼2门',1,1,'2015-08-17 11:54:27'),
 (219,'10号楼2门502',1,1,'2015-08-17 11:54:27'),
 (220,'温暖且明亮',1,1,'2015-08-17 11:54:27'),
 (221,'1502',2,1,'2015-08-17 11:54:27'),
 (222,'山东财经大学',1,1,'2015-08-17 11:54:27'),
 (223,'文博圆',4,1,'2015-08-17 11:54:27'),
 (224,'文博',2,1,'2015-08-17 11:54:27'),
 (225,'12月21日',5,1,'2015-08-17 11:54:27'),
 (226,'商大',1,1,'2015-08-17 11:54:27'),
 (227,'52',4,1,'2015-08-17 11:54:27'),
 (228,'潘馨园9号楼',1,1,'2015-08-17 11:54:27'),
 (229,'辽宁石油化工大学',1,1,'2015-08-17 11:54:27'),
 (230,'年租',1,1,'2015-08-17 11:54:27'),
 (231,'半年租',1,1,'2015-08-17 11:54:27'),
 (232,'丽湾大厦、',1,1,'2015-08-17 11:54:27'),
 (233,'北京大学',1,1,'2015-08-17 11:54:27'),
 (234,'郑州师范学院',1,1,'2015-08-17 11:54:27'),
 (235,'华苑',3,1,'2015-08-17 11:54:27'),
 (236,'52house',7,1,'2015-08-17 11:54:27'),
 (237,'别墅',1,1,'2015-08-17 11:54:27'),
 (238,'师大南门付村',4,1,'2015-08-17 11:54:27'),
 (239,'可以做饭',3,1,'2015-08-17 11:54:27'),
 (240,'独立的一房一厅',1,1,'2015-08-17 11:54:27'),
 (241,'一室一厅',1,1,'2015-08-17 11:54:27'),
 (242,'工大东苑',1,1,'2015-08-17 11:54:27'),
 (243,'付家湾小区',1,1,'2015-08-17 11:54:27'),
 (244,'双层',1,1,'2015-08-17 11:54:27'),
 (245,'智达里',1,1,'2015-08-17 11:54:27'),
 (246,'天津科技泰达校区',1,1,'2015-08-17 11:54:27'),
 (247,'整租',3,1,'2015-08-17 11:54:27'),
 (248,'二层',1,1,'2015-08-17 11:54:27'),
 (249,'情侣',1,1,'2015-08-17 11:54:27'),
 (250,'六号楼',3,1,'2015-08-17 11:54:27'),
 (251,'天津财经大学',1,1,'2015-08-17 11:54:27'),
 (252,'春风园7号楼',1,1,'2015-08-17 11:54:27'),
 (253,'工大旅社',1,1,'2015-08-17 11:54:27'),
 (254,'可做饭',1,1,'2015-08-17 11:54:27'),
 (255,'内蒙古工业大学',1,1,'2015-08-17 11:54:27'),
 (256,'全套',1,1,'2015-08-17 11:54:27'),
 (257,'工大旅舍',1,1,'2015-08-17 11:54:27'),
 (258,'潘馨园5号1门402',1,1,'2015-08-17 11:54:27'),
 (259,'9号楼5门301',1,1,'2015-08-17 11:54:27'),
 (260,'天津工业大学新校区',1,1,'2015-08-17 11:54:27'),
 (261,'幸福花园',1,1,'2015-08-17 11:54:27'),
 (262,'9号楼',1,1,'2015-08-17 11:54:27'),
 (263,'1501',1,1,'2015-08-17 11:54:27'),
 (264,'天津外国语大学',1,1,'2015-08-17 11:54:27'),
 (265,'联系号码',1,1,'2015-08-17 11:54:27'),
 (266,'西安文理学院',2,1,'2015-08-17 11:54:27'),
 (267,'文理学院',1,1,'2015-08-17 11:54:27'),
 (268,'啊说的',1,1,'2015-08-17 11:54:27'),
 (269,'50',2,1,'2015-08-17 11:54:27'),
 (270,'东侧卧室',1,1,'2015-08-17 11:54:27'),
 (271,'渤海职业技术学院',1,1,'2015-08-17 11:54:27'),
 (272,'天津理工',3,1,'2015-08-17 11:54:27'),
 (273,'天津工程师范',1,1,'2015-08-17 11:54:27'),
 (274,'天津工大',3,1,'2015-08-17 11:54:27'),
 (275,'能做饭',1,1,'2015-08-17 11:54:27'),
 (276,'西青大学城',1,1,'2015-08-17 11:54:27'),
 (277,'秋鼎园',1,1,'2015-08-17 11:54:27'),
 (278,'春风园',4,1,'2015-08-17 11:54:27'),
 (279,'独卫',2,1,'2015-08-17 11:54:27'),
 (280,'阳光',1,1,'2015-08-17 11:54:27'),
 (281,'潘馨园8号楼2门',1,1,'2015-08-17 11:54:27'),
 (282,'刘阿姨',1,1,'2015-08-17 11:54:27'),
 (283,'大床房',1,1,'2015-08-17 11:54:27'),
 (284,'双人床',2,1,'2015-08-17 11:54:27'),
 (285,'双人大床房',1,1,'2015-08-17 11:54:27'),
 (286,'富家湾、',2,1,'2015-08-17 11:54:27'),
 (287,'10号楼阁楼',1,1,'2015-08-17 11:54:27'),
 (288,'三人间',1,1,'2015-08-17 11:54:27'),
 (289,'理工h',1,1,'2015-08-17 11:54:27'),
 (290,'仁德里',2,1,'2015-08-17 11:54:27'),
 (291,'仁德里2号楼',1,1,'2015-08-17 11:54:27'),
 (292,'姚村春风园',3,1,'2015-08-17 11:54:27'),
 (293,'阳光一百',1,1,'2015-08-17 11:54:27'),
 (294,'秀川路',1,1,'2015-08-17 11:54:27'),
 (295,'阳光100',1,1,'2015-08-17 11:54:27'),
 (296,'程华里',1,1,'2015-08-17 11:54:27'),
 (297,'10号楼3门502',1,1,'2015-08-17 11:54:27'),
 (298,'独立卫生间',1,1,'2015-08-17 11:54:27'),
 (299,'可以做饭的',1,1,'2015-08-17 11:54:27'),
 (300,'天津城建大学',1,1,'2015-08-17 11:54:27'),
 (301,'大学城月租',1,1,'2015-08-17 11:54:27'),
 (302,'理工',2,1,'2015-08-17 11:54:27'),
 (303,'做爱',1,1,'2015-08-17 11:54:27'),
 (304,'开房',1,1,'2015-08-17 11:54:27'),
 (305,'国兴家园',1,1,'2015-08-17 11:54:27'),
 (306,'中关村',5,1,'2015-08-17 11:54:27'),
 (307,'四年',1,1,'2015-08-17 11:54:27'),
 (308,'天塔',1,1,'2015-08-17 11:54:27'),
 (309,'天津农家院',1,1,'2015-08-17 11:54:27'),
 (310,'天津火车站',1,1,'2015-08-17 11:54:27'),
 (311,'5单元502东侧卧室',1,1,'2015-08-17 11:54:27'),
 (312,'姚村日租房',1,1,'2015-08-17 11:54:27'),
 (313,'多人间',2,1,'2015-08-17 11:54:27'),
 (314,'多人',2,1,'2015-08-17 11:54:27'),
 (315,'天津工业大学东苑',1,1,'2015-08-17 11:54:27'),
 (316,'操逼',1,-100,'2015-08-17 11:54:27'),
 (317,'海尔洗衣机',7,1,'2015-08-17 11:54:27'),
 (318,'品牌',52,1,'2015-08-17 11:54:27'),
 (319,'品牌1',1,1,'2015-08-17 11:54:27'),
 (320,'品牌二',2,1,'2015-08-17 11:54:27'),
 (321,'导航主菜单2',1,1,'2015-08-17 11:54:27'),
 (322,'洗衣机',7,1,'2015-08-17 11:54:27'),
 (323,'导航主菜单2 洗衣机',1,1,'2015-08-17 11:54:27'),
 (324,'导航主菜单1',1,1,'2015-08-17 11:54:27'),
 (325,'导航',1,1,'2015-08-17 11:54:27'),
 (326,'品牌三',1,1,'2015-08-17 11:54:27'),
 (327,'品牌一',7,1,'2015-08-17 11:54:27'),
 (328,'运动监测器',1,1,'2015-08-17 11:54:27'),
 (329,'智能',25,1,'2015-08-17 11:54:27'),
 (330,'评论',1,1,'2015-08-17 11:54:27'),
 (331,'’对对对',1,1,'2015-08-17 11:54:27'),
 (332,'对对对ddd',1,1,'2015-08-17 11:54:27'),
 (333,'简单普通',4,1,'2015-08-17 11:54:27'),
 (334,'特小号',1,1,'2015-08-17 11:54:27'),
 (335,'路由器',1,1,'2015-08-17 11:54:27'),
 (336,'血压',11,1,'2015-08-17 11:54:27'),
 (337,'智能硬件',2,1,'2015-08-17 11:54:27'),
 (338,'æ½é¦¨å­',3,1,'2015-08-17 11:54:27'),
 (339,'åç',2,1,'2015-08-17 11:54:27'),
 (340,'æºè½',1,1,'2015-08-17 11:54:27');
/*!40000 ALTER TABLE `hotword` ENABLE KEYS */;


--
-- Definition of table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cntitle` varchar(100) NOT NULL COMMENT '标题',
  `cncontent` text NOT NULL COMMENT '内容',
  `date` varchar(20) NOT NULL COMMENT '添加日期',
  `click` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击量',
  `imgUrl` varchar(200) DEFAULT NULL COMMENT '图片',
  `type` varchar(10) NOT NULL DEFAULT 'INFOR' COMMENT '新闻类型：通知（INFOR）',
  `flag` int(11) NOT NULL DEFAULT '1' COMMENT '新闻状态、标识-1：删除，1为正常，100为置顶',
  `tag` varchar(10) DEFAULT NULL,
  `entitle` varchar(200) DEFAULT NULL,
  `encontent` text,
  `canComment` varchar(1) NOT NULL DEFAULT 'N',
  `addTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` (`id`,`cntitle`,`cncontent`,`date`,`click`,`imgUrl`,`type`,`flag`,`tag`,`entitle`,`encontent`,`canComment`,`addTime`) VALUES 
 (2,'置顶：','<h2 class=\"F16\" style=\"font-family:\'Microsoft yahei\';color:#F14897;font-size:16px;background-color:#FFFFFF;\">\r\n	新闻3\r\n</h2>','2014-04-03',1686,'','INFOR',100,'','news 3','news 3','N','2015-08-17 11:55:05'),
 (4,'帮助内容','									<div class=\"col-sm-12 col-md-12 zfm-help\">\r\n	<h3>\r\n		请仔细阅读以下内容\r\n	</h3>\r\n	<hr />\r\n	<a name=\"yi\"></a> <span>一、租房吗是什么?</span> \r\n	<p>\r\n		租房吗是一家专注大学生日租、月租、PARTY租房、考研租房的网站，是一家网络服务平台，立志于提高大学生租房的透明度，建立一个诚信的租房平台。租房吗网站上所有房源均由租房吗团队拍摄，房屋照片真实有效，同时对所有入住商家进行了实地考察与认证，不存在任何虚假行为。\r\n	</p>\r\n	<p>\r\n		租房吗网上所有房源均配备有真实图片及用户评论。通过照片与评论，从而建立一个公平、公正的租房平台。\r\n	</p>\r\n<a name=\"er\"></a> <span>二、F币是什么？</span> \r\n	<p>\r\n		F币是租房吗网站内部发行和使用的一种积分营销工具，持有F币的会员能够在租房吗网站上使用F币进行抵现金付款，甚至全额房费用F币付款、以及参与网站不定期举行的抽奖活动。F币在参与抵现付款时的价值为1F币=0.1元。\r\n	</p>\r\n<a name=\"san\"></a> <span>三、怎么获得F币？</span> \r\n	<p>\r\n		F币目前不支持在线购买，只能通过租房奖励，连续租房返还，做任务获取的方式获得。同时F币还会在每次会员成功住房并成功评价后以返利的方式得到。\r\n	</p>\r\n<a name=\"si\"></a> <span>四、F币租房流程是什么？</span> \r\n	<p>\r\n		首先请登录租房吗，然后在房屋详情页选择好入住日期后，点击立即预订，然后将跳转至订单确认页面，在订单确认页面可以选择使用F币的数量，10F=1￥，如果可使用F币不足，\r\n								付款时将使用支付宝补足。订单确认后需要在30分钟内支付，否则订单将会自动取消。若F币不足，付款时将跳转至支付宝页面付款，付款成功后房屋即预订成功，在【我的租房】\r\n								中将可看到订单状态为：确认入住。如F币足够，将跳转至租房吗支付页面，若你设置了支付密码，则需要输入支付密码，否则不需要输入。\r\n	</p>\r\n<a name=\"wu\"></a> <span>五、支付宝支付安全吗？</span> \r\n	<p>\r\n		租房吗采用的是支付宝担保交易，以诚信为基础，主要为在线大学生提供服务。在支付宝付款后，资金尚未到达租房吗账户，只有你入住后并且在支付宝上确认后，才正式付款。\r\n							由支付宝、租房吗双重担保，因此你的租房是安全的。\r\n	</p>\r\n<a name=\"liu\"></a> <span>六、我的注册信息安全吗？</span> \r\n	<p>\r\n		网站将对会员的注册信息进行保密，具体可见--《网站会员隐私声明》\r\n	</p>\r\n<a name=\"qi\"></a> <span>七、房间能提前预定吗？</span> \r\n	<p>\r\n		租房吗网站上所有的日租房都可以接受未来28天之内的预定。预定成功，一定有房。\r\n	</p>\r\n<a name=\"ba\"></a> <span>八、我预定了日租房，临时又不想住了，能退款吗？</span> \r\n	<p>\r\n		可以退款，根据退房申请的提出时间不同，返还给会员的金额不同。<br />\r\n住房当日中午12点及以前退订，全额退还；<br />\r\n住房当日中午12点--下午15点间退房：扣除房费百分之十五；<br />\r\n住房当日下午15点--下午16点间退房：扣除房费百分之三十；<br />\r\n住房当日下午16点--下午18点间退房：扣除房费百分之八十；<br />\r\n住房当日晚18点后不再接受退订。由此给您带来的不便还请谅解。\r\n	</p>\r\n<a name=\"jiu\"></a> <span>九、你们网站上的图片真实可靠吗？</span> \r\n	<p>\r\n		我们保证网站所有关于房间的图片都是实地采集的真实房源。\r\n	</p>\r\n<a name=\"shi\"></a> <span>十、会员等级及相应优惠政策？</span> \r\n	<p>\r\n		根据会员积分不同，所有会员将分为四个等级：<br />\r\n普通会员（0积分）：普通会员不享受订房折扣<br />\r\n铜牌会员（500积分）：铜牌会员订房享受订房折扣9.8折<br />\r\n银牌会员（2000积分）：银牌会员订房享受订房折扣9.5折<br />\r\n金牌会员（5000积分）：金牌会员订房享受订房折扣9.0折\r\n	</p>\r\n<a name=\"shiyi\"></a> <span>十一、支付的方式都有哪些？</span> \r\n	<p>\r\n		我们暂时支持的支付方式是支付宝，下一步还将开通微信支付以及财付通支付通道，敬请关注。\r\n	</p>\r\n	<p>\r\n		©zufangma.cn 天津众擎信息技术有限责任公司<a href=\"contacts.htm\">[详情]</a>\r\n	</p>\r\n</div>\r\n			\r\n			\r\n			','2015-01-07',112,'','PAGE',-100,'HELP',NULL,NULL,'N','2015-08-17 11:55:05'),
 (5,'加入我们','<p>\r\n	<br />\r\n</p>\r\n<h3>\r\n	<span style=\"font-size:24px;\">天津众擎信息技术有限责任公司</span> \r\n</h3>\r\n<hr />\r\n<p>\r\n	<span style=\"color:#666666;\">我们是一个充满活力和热情的90后创业团队！</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#666666;\">你是否也曾怀有梦想？是否</span><span style=\"line-height:1.5;color:#666666;\">也有超牛的技术？是否也有创业的激情？</span> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:1.5;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"line-height:1.5;\"></span> \r\n</p>\r\n<h2 id=\"modal_jobs_title\" class=\"modal-title\" style=\"font-size:36px;font-weight:normal;font-family:\'Helvetica Neue\', Arial, \'Microsoft Yahei\', sans-serif;color:#555555;background-color:#EEEEEE;\">\r\n	Web前端开发工程师\r\n</h2>\r\n<p>\r\n	<span style=\"line-height:1.5;\"> </span> \r\n</p>\r\n<h3 class=\"subtitle\" style=\"font-size:18px;font-weight:normal;color:#555555;\">\r\n	职位描述\r\n</h3>\r\n<ul class=\"desc-list\">\r\n	<li>\r\n		在项目经理的安排下高效和高质的完成代码的编写，并确保代码符合前端规范\r\n	</li>\r\n	<li>\r\n		和设计师团队密切配合，能够实现设计师想要达到的效果\r\n	</li>\r\n	<li>\r\n		和后台工程师密切配合，确保数据传输接口功能的完备\r\n	</li>\r\n	<li>\r\n		找出一切可以提升前端网站加载速度的方法，并着力实施\r\n	</li>\r\n</ul>\r\n<h3 class=\"subtitle\" style=\"font-size:18px;font-weight:normal;color:#555555;\">\r\n	任职要求\r\n</h3>\r\n<ul class=\"desc-list\">\r\n	<li>\r\n		喜欢技术，喜欢折腾。有1年web前端开发经验\r\n	</li>\r\n	<li>\r\n		熟悉HTML/CSS/JavaScript，熟悉前端开发规范和W3C标准\r\n	</li>\r\n	<li>\r\n		熟悉html5，css3\r\n	</li>\r\n	<li>\r\n		熟悉bootstrap响应式框架\r\n	</li>\r\n</ul>\r\n<h3 class=\"subtitle\" style=\"font-size:18px;font-weight:normal;color:#555555;\">\r\n	工作地点\r\n</h3>\r\n<ul class=\"desc-list\">\r\n	<li>\r\n		天津\r\n	</li>\r\n</ul>\r\n<p>\r\n	<br />\r\n</p>\r\n<h2 id=\"modal_jobs_title\" class=\"modal-title\" style=\"font-size:36px;font-weight:normal;font-family:\'Helvetica Neue\', Arial, \'Microsoft Yahei\', sans-serif;color:#555555;background-color:#EEEEEE;\">\r\n	Web后端开发工程师\r\n</h2>\r\n<h3 class=\"subtitle\" style=\"font-size:18px;font-weight:normal;color:#555555;\">\r\n	任职要求\r\n</h3>\r\n<ul class=\"desc-list\">\r\n	<li>\r\n		本科及以上学历，计算机相关专业，扎实的计算机基础知识\r\n	</li>\r\n	<li>\r\n		1年以上web开发经验，熟悉JAVA/MySQL/SSH等web技术\r\n	</li>\r\n	<li>\r\n		理解devops，能兼顾开发和运维两方面，实时掌控线上程序的运行状态\r\n	</li>\r\n	<li>\r\n		熟悉linux的开发环境，熟悉常见的指令和shell脚本的编写\r\n	</li>\r\n	<li>\r\n		<span style=\"line-height:1.5;\">善于沟通和合作，掌握源代码管理工具svn、git等</span><br />\r\n	</li>\r\n</ul>\r\n<h3 class=\"subtitle\" style=\"font-size:18px;font-weight:normal;color:#555555;\">\r\n	工作地点\r\n</h3>\r\n<ul class=\"desc-list\">\r\n	<li>\r\n		天津\r\n	</li>\r\n</ul>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	&copy;zufangma.cn &nbsp;天津众擎信息技术有限责任公司\r\n</p>\r\n<p>\r\n	<br />\r\n</p>','2015-01-07',82,'','PAGE',-100,'US',NULL,NULL,'N','2015-08-17 11:55:05'),
 (6,'合作投资','						\r\n															<div class=\"col-sm-12 col-md-12 zfm-help\">\r\n						\r\n						<hr>\r\n						<a name=\"yi\"></a>\r\n						<span>\r\n<p>嘿，土豪，想收购我们吗？我们很想和你做盆友哦~<p>\r\n<p>亲（xiao）爱（biao）的（za）,想和我们谈谈合作吗？<p>\r\n<p>快快致电我们的市场部合作热线吧。<p>\r\n</span>\r\n						\r\n\r\n						\r\n						\r\n			\r\n					</div>\r\n			\r\n			\r\n			\r\n			\r\n			\r\n			','2015-01-06',67,'','PAGE',-100,'INVEST',NULL,NULL,'N','2015-08-17 11:55:05'),
 (7,'产品','<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\"><b><a href=\"newsDetail?p_tag=PRODUCT1\" target=\"_blank\">叮叮通</a></b>是叮叮通商务专线是亿通世界专为商务人士打造的一款移动互联网语音通信应用平台，能够帮助您通过手机轻松实现直接拨打国内外电话，满足用户在移动通信、网络会议、群组沟通等方面的需求。</span><span style=\"font-size:14px;\"><span style=\"color:#E53333;\"><a href=\"newsDetail?p_tag=PRODUCT1\" target=\"_blank\"><span><span style=\"color:#E53333;\">详情..</span><span style=\"color:#E53333;\">.</span></span></a></span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<b><span style=\"font-size:14px;\"><a href=\"newsDetail?p_tag=PRODUCT2\" target=\"_blank\">智能生活</a></span></b><span style=\"font-size:14px;\">是一款为高端商务人士打造的、以手机等移动终端为载体的智慧商城开放平台，商城引进国内外尖端科技智能产品，拥有线上3D展示和线下智能生活体验馆，为商务人士工作、生活、休闲提供智慧商品和服务，同时也为合作商家智能产品提供广阔的市场渠道。<a href=\"newsDetail?p_tag=PRODUCT2\" target=\"_blank\"><span style=\"color:#E53333;\">详情...</span></a><span id=\"__kindeditor_bookmark_end_22__\"></span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<b><span style=\"font-size:14px;\"><a href=\"http://newsDetail?p_tag=PRODUCT3\" target=\"_blank\">私人</a><a href=\"http://newsDetail?p_tag=PRODUCT3\" target=\"_blank\">秘书</a></span></b><span style=\"font-size:14px;\">是一款以“结果导向的智能搜索引擎”技术为核心的人工智能私人助理，为商务人士提供按需私人订制服务的移动O2O应用平台。<a href=\"newsDetail?p_tag=PRODUCT3\" target=\"_blank\"><span style=\"color:#E53333;\">详情...</span></a><span id=\"__kindeditor_bookmark_end_7__\"></span></span> \r\n</p>','2015-01-07',964,'','PAGE',1,'PRODUCT','Product','<div>\r\n	<p class=\"MsoNormal\">\r\n		<a href=\"newsDetail?p_tag=PRODUCT2\" target=\"_blank\"><strong><span style=\"color:#000000;font-size:14px;\">Voice Calls</span></strong></a><span style=\"color:#000000;font-size:14px;\"> is\r\nco</span><span style=\"font-size:14px;\">mmunication services for business people that can achieve access system\r\nby any terminal securely and quickly at any time, anywhere, to meet the\r\nneeds of users</span><span style=\"font-size:14px;\"> &nbsp;</span><span style=\"font-size:14px;\">in the network meeting, group communication, mobile office,\r\netc.</span><a href=\"newsDetail?p_tag=PRODUCT1\" target=\"_blank\"><span style=\"color:#E53333;font-size:14px;\">Details...</span></a><span style=\"line-height:1.5;font-size:14px;\">&nbsp;</span> \r\n	</p>\r\n</div>\r\n<p>\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<strong><span style=\"color:#000000;\"><br />\r\n</span></strong> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<strong><span style=\"color:#000000;\"><span style=\"color:#000000;font-size:14px;\"><a href=\"newsDetail?p_tag=PRODUCT2\" target=\"_blank\">Mobile Mall</a></span><span style=\"color:#000000;font-size:14px;\">&nbsp;</span></span></strong><span style=\"line-height:1.5;\"><span style=\"color:#000000;font-size:14px;\">is</span><span><span style=\"color:#000000;font-size:14px;\"> Yit</span><span style=\"font-size:14px;\">ong world\'s efforts to build a \"one-stop\" work style\r\nshopping platform</span></span></span><span style=\"line-height:1.5;font-size:14px;\">&nbsp;</span><span style=\"line-height:1.5;font-size:14px;\"> that brings together high-quality resources to provide\r\nspecialized matching selection of products for business and improve the\r\nservice.</span><a href=\"newsDetail?p_tag=PRODUCT2\" target=\"_blank\"><span style=\"color:#E53333;font-size:14px;\">Details...&nbsp;</span></a> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<div>\r\n</div>\r\n<p>\r\n	<span><span style=\"color:#E53333;\"> </span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<strong><br />\r\n</strong> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<strong><span style=\"color:#000000;font-size:14px;\"><a href=\"newsDetail?p_tag=PRODUCT3\" target=\"_blank\">Business secretary</a></span></strong><span style=\"color:#000000;\"><span style=\"color:#000000;font-size:14px;\"> is t</span><span style=\"font-size:14px;\">o&nbsp;create exclusive business travel services for business people, including air ticket booking, hotel reservation, business club, outdoor activities such as cost-effective travel arrangements and services.</span></span><a href=\"newsDetail?p_tag=PRODUCT3\" target=\"_blank\"><span style=\"line-height:1.5;color:#E53333;\"></span></a><a href=\"newsDetail?p_tag=PRODUCT3\" target=\"_blank\"><span style=\"color:#E53333;font-size:14px;\">Details...</span></a><span style=\"line-height:1.5;color:#E53333;font-size:14px;\">&nbsp;</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>','N','2015-08-17 11:55:05'),
 (8,'联系我们','<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\"> </span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp;客服热线：400-113-7366 &nbsp; 周一-周日\r\n9:00-24:00 &nbsp;提供产品、活动及交易等各类问题咨询</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp;招商热线：010-53675866 &nbsp;周一-周五\r\n9:00-18:00 &nbsp;提供商家入驻、资费标准咨询</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp;微信：</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp;官方微博：@北京亿通世界</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp;电子邮箱：kf@ytworld.cn</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp;地址：北京市朝阳区朝外大街26号财贸中心A座909</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp;邮编：100020</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:center;\">\r\n	<span style=\"font-size:14px;\"><img src=\"/attached/images/20150518/00783_QQ图片.png\" alt=\"\" /><br />\r\n</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span><span style=\"font-size:14px;\"></span> \r\n</p>','2015-01-07',784,'','PAGE',1,'CONTACT','Contact Us','<p class=\"MsoNormal\">\r\n	<span>&nbsp; &nbsp; &nbsp;<span style=\"font-size:14px;\">Service hotline: </span><span style=\"font-size:14px;line-height:21px;\">400-113-7377</span><span style=\"font-size:14px;\"> Monday - Sunday\r\n9:00-24:00 Provide products, service and trading of various kinds of problems consultation. </span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span><span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp;Merchants hotline: </span><span style=\"font-size:14px;line-height:21px;\">010-<span style=\"font-size:14px;line-height:21px;\">53675866</span></span><span style=\"font-size:14px;\"> Monday - Friday\r\n9-17:30 Provide the tenants, charges consultation </span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp;WeChat: </span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp;Sina weibo: @</span><span style=\"font-size:14px;\">北京亿通世界</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp;E-mail: kf@ytworld.cn </span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp;Address: 909, block A 26 chaowai street of\r\nBeijing</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp;Zip code: 100020</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:center;\">\r\n	<span><img src=\"/attached/images/20150518/00783_QQ%E5%9B%BE%E7%89%87.png\" alt=\"\" /><br />\r\n</span> \r\n</p>','N','2015-08-17 11:55:05'),
 (10,'关于我们','<p>\r\n	&nbsp; &nbsp; &nbsp;<span style=\"font-size:14px;\">&nbsp;<img src=\"/attached/images/20150702/39486_关于我们.jpg\" alt=\"\" /></span>\r\n</p>','2015-05-14',943,'','PAGE',1,'ABOUTUS','About Us','','N','2015-08-17 11:55:05'),
 (11,'分销加盟','<p style=\"text-align:center;\">\r\n	<img src=\"/attached/images/20150404/02666_1.JPG\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/attached/images/20150404/04911_2.JPG\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/attached/images/20150404/06777_3.JPG\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/attached/images/20150404/08292_5.JPG\" alt=\"\" /> \r\n</p>','2015-01-14',72,'','PAGE',-100,'fenxiao',NULL,NULL,'N','2015-08-17 11:55:05'),
 (12,'亿通世界全线启程','<span style=\"font-size:14px;line-height:21px;\">&nbsp; &nbsp; &nbsp; &nbsp;</span><span style=\"font-size:14px;line-height:21px;\">亿通世界全线启程啦！这里有最智能的商品，最贴心的服务，欢迎别具慧眼的您的光临，诚邀广大优质品牌前来入驻！亿通世界将带给您不一样的愉悦体验，有它生活更精彩！</span><span style=\"font-size:14px;line-height:21px;\"><br />\r\n</span>','2015-05-22',181,'','INFOR',4,'','news 1','news1','N','2015-08-17 11:55:05'),
 (13,'新闻2','<p class=\"MsoNormal\" style=\"text-indent:27.45pt;\">\r\n	<br />\r\n</p>','2015-05-22',170,'','INFOR',4,'NEW','Though critics worry about an increasing focus on metrics,','<p style=\"font-family:\'Lucida Grande\', Tahoma, Verdana, sans-serif;vertical-align:baseline;color:#4C4C4C;background-color:#FFFFFF;\">\r\n	The New York Times News Service/Syndicate makes it easier for you to get the content you need, 24 hours a day, 7 days a week. By becoming a member, you get full access to the latest articles, commentary, images, videos and multimedia. Whether you are reporting on breaking news stories or looking for feature content, nytsyn.com makes it simple and convenient to find quality content when you need it.\r\n</p>\r\n<p style=\"font-family:\'Lucida Grande\', Tahoma, Verdana, sans-serif;vertical-align:baseline;color:#4C4C4C;background-color:#FFFFFF;\">\r\n	Registration is easy. Simply fill out our registration form and a representative will contact you to set up your account.\r\n</p>','N','2015-08-17 11:55:05'),
 (14,'底部公司简介','<p>\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"font-size:14px;\">北京亿通世界网络科技有限公司是中国新一代的开放式网络通信服务商，主要从事互联网语音通信服务和互联网语音增值业务。公司秉承“创新、卓越、务实、诚信”的企业精神，坚持“开放、服务、融合、共赢”的经营理念，以客户为中心，以服务为宗旨，以技术为基础，以诚信为准则，全力打造成国际一流的专业网络电话通信服务商。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>','2015-05-14',0,'','PAGE',-100,'F_BRIEF','','<p>\r\nBeijing Yitong World Network Technology Co., Ltd.\r\nis a new generation open network communication service providers in China,\r\nmainly engaged in Internet voice communications services and Internet voice value-added\r\nservices. Companies adhering to the \"innovation, excellence, pragmatic,\r\nintegrity\" spirit of enterprise, adhere to the \"open, service,\r\nintegration, win-win\" business philosophy, take the customer as the\r\ncenter, for the purpose of service, based on the technology, by the good faith\r\nfor the guidelines, fully into the international first-class professional\r\nnetwork telephone communications service providers.\r\n</p>\r\n','N','2015-08-17 11:55:05'),
 (15,'语音通话','123','2015-05-18',7,'','PAGE',4,'PRODUCT1','','','N','2015-08-17 11:55:05'),
 (16,'叮叮通','<br />\r\n<div style=\"text-align:center;\">\r\n	<img src=\"/attached/images/20150817/90294_网站-1.jpg\" alt=\"\" /><br />\r\n</div>\r\n<table style=\"width:100%;\" cellpadding=\"2\" cellspacing=\"0\" border=\"1\" bordercolor=\"#000000\">\r\n	<tbody>\r\n	</tbody>\r\n</table>','2015-05-09',315,'','PAGE',4,'PRODUCT1','PRODUCT1','Product1','N','2015-08-17 11:55:05'),
 (17,'商家入驻','<p>\r\n	<b>&nbsp; &nbsp; &nbsp; &nbsp;</b>&nbsp; <span style=\"font-size:14px;line-height:1.5;\">智能生活馆是亿通世界全新打造的智能商品网上购物平台，为提升合作服务水平，实现平台价值最大化，智能生活馆与入驻商家采取多种合作模式，严把品牌质量关，对商家进行严格筛选监控、审核认证，坚决杜绝“假、次、水”，为用户提供最优质的资源，最满意的服务。入驻商家可以通过亿通商城的市场宣传及推广，扩大商品销量并提升品牌价值。</span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"left\" style=\"text-indent:21pt;\">\r\n	<span style=\"font-size:14px;\">亿通世界以开放进取的姿态欢迎广大优质品牌入驻，共享电子商务高速发展的巨大商机。</span><span></span> \r\n</p>\r\n<span style=\"font-size:14px;\"> </span> \r\n<p>\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp;附件：招商说明</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;亿通商城开放平台运营总则</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp;<span style=\"font-size:14px;line-height:21px;\">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span>商家管理规则</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp;<span style=\"font-size:14px;line-height:21px;\">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span>商品发布规范</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp; <span style=\"font-size:14px;line-height:21px;\">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span>&nbsp;积分管理规则</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp;<span style=\"font-size:14px;line-height:21px;\">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span>交易争议处理规范</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp;<span style=\"font-size:14px;line-height:21px;\">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span>促销基本规则<br />\r\n</span> \r\n</p>\r\n<p>\r\n	&nbsp; &nbsp; &nbsp; &nbsp;<span style=\"font-size:14px;line-height:21px;\">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style=\"font-size:14px;\">&nbsp; 广告、促销宣传管理规范</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<span style=\"font-size:14px;\"></span>','2015-05-12',543,'','PAGE',4,'SJRZ','','<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp;Yitong world adhering to the \"open cooperation, win-win development\" \r\nconcept, adhere to the principle of fair competition, honesty and credibility \r\nand business cooperation of every trade, improve service level of cooperation, \r\nsharing of resources, the superior quality with open and enterprising attitude \r\nto seek partners hand in hand with the industry, create a new age of the \r\nInternet life!&nbsp;</span>','N','2015-08-17 11:55:05'),
 (18,'智能生活','<div style=\"text-align:center;\">\r\n	<img src=\"/attached/images/20150817/85951_网站-2.jpg\" alt=\"\" /><br />\r\n</div>','2015-05-12',342,'','PAGE',4,'PRODUCT2','PRODUCT2','<span>Product2</span>','N','2015-08-17 11:55:05'),
 (19,'私人秘书','<p style=\"text-align:center;margin-left:0in;\">\r\n	<img src=\"/attached/images/20150817/30041_私人秘书.jpg\" alt=\"\" />\r\n</p>','2015-05-12',314,'','PAGE',4,'PRODUCT3','PRODUCT3','<span>Product3</span>','N','2015-08-17 11:55:05'),
 (20,'应用下载','<p style=\"text-align:left;\">\r\n	<span style=\"font-size:14px;\"><strong>安卓下载:<span style=\"color:#006600;\">微信扫描后请点击右上角，在浏览器中打开</span><span style=\"color:#006600;\"></span></strong></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<!--<a href=\"http://admin.ytworld.cn/apkDownload\" class=\"btn btn-block btn-lg btn-success\"><i class=\"iconfont f22\"></i>    官网下载安卓APP</a>--> <a href=\"http://admin.ytworld.cn/attached/file/20150730/83155_yitongbao1.3.0.apk\" class=\"btn btn-block btn-lg btn-success\"><i class=\"iconfont f22\"></i>&nbsp;&nbsp;&nbsp;&nbsp;官网下载安卓APP</a> \r\n</p>\r\n<br />\r\n<p style=\"text-align:center;\">\r\n	<a href=\"http://zhushou.360.cn/detail/index/soft_id/3040905\" class=\"btn btn-block btn-lg btn-danger\"><i class=\"iconfont f22\"></i>&nbsp;&nbsp;&nbsp;&nbsp;360手机助手载安卓APP</a> \r\n</p>\r\n<br />\r\n<p style=\"text-align:left;\">\r\n	<span style=\"font-size:14px;\"><strong>IOS:<span style=\"color:#006600;\">微信扫描后请点击右上角，在浏览器中打开</span><span style=\"color:#006600;\"></span></strong></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<a href=\"http://www.pgyer.com/uxyv\" class=\"btn btn-block btn-lg btn-info\"><i class=\"iconfont f22\"></i>&nbsp;&nbsp;&nbsp;&nbsp;下载IOS</a> \r\n</p>','2015-07-09',1132,'','PAGE',4,'DOWLOAD','APP Download','<p style=\"text-align:left;\">\r\n	<span style=\"font-size:14px;\"><strong>Android:<span style=\"color:#006600;\">WeChat scan, please click on the top right corner after open in a browser</span><span style=\"color:#006600;\"></span></strong></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<a href=\"http://admin.ytworld.cn/attached/file/20150730/83155_yitongbao1.3.0.apk\" class=\"btn btn-block btn-lg btn-success\"><i class=\"iconfont f22\"></i>&nbsp;&nbsp;&nbsp;&nbsp;Click to download APP</a> \r\n</p>\r\n<br />\r\n<p style=\"text-align:center;\">\r\n	<a href=\"http://zhushou.360.cn/detail/index/soft_id/3040905\" class=\"btn btn-block btn-lg btn-danger\"><i class=\"iconfont f22\"></i>&nbsp;&nbsp;&nbsp;&nbsp;Go 360, Download APP</a> \r\n</p>\r\n<br />\r\n<p style=\"text-align:left;\">\r\n	<span style=\"font-size:14px;\"><strong>IOS:<span style=\"color:#006600;\">WeChat scan, please click on the top right corner after open in a browser</span><span style=\"color:#006600;\"></span></strong></span> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<a href=\"http://www.pgyer.com/uxyv\" class=\"btn btn-block btn-lg btn-info\"><i class=\"iconfont f22\"></i>&nbsp;&nbsp;&nbsp;&nbsp;Click to download IOS</a> \r\n</p>','N','2015-08-17 11:55:05');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;


--
-- Definition of table `setting`
--

DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `skey` varchar(32) NOT NULL,
  `value` varchar(500) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `flag` int(11) NOT NULL DEFAULT '1',
  `addTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `verify` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `SKEY` (`skey`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` (`id`,`skey`,`value`,`remark`,`flag`,`addTime`,`verify`) VALUES 
 (5,'Test2','Test2','test',0,'2015-08-17 11:55:38',NULL),
 (6,'ALIYUNOSSURL','','阿里云地址',0,'2015-08-17 11:55:38',NULL),
 (7,'LOGINIMG','/attached/images/20150325/97898_5506bc36430ab1cff2efdcf401a.jpg) 50% 0px no-repeat rgb(174, 238, 255)','登录页面图片',0,'2015-08-17 11:55:38',NULL),
 (8,'LOGINLINK','tmall.com','登录页面连接',0,'2015-08-17 11:55:38',NULL),
 (9,'PRINTEXCEPTION','YES','是否打印异常（YES/NO)',0,'2015-08-17 11:55:38',NULL),
 (10,'EXEPTIONEMAILS','516452267@qq.com,1340760685@qq.com','接受异常的邮箱(a@c.com,b@c.com..)',0,'2015-08-17 11:55:38',NULL),
 (11,'REGISTERSIMG','/attached/images/20150325/97898_5506bc36430ab1cff2efdcf401a.jpg) 50% 0px no-repeat rgb(174, 238, 255)','注册页面背景 img) 样式',0,'2015-08-17 11:55:38',NULL),
 (12,'IMG','/attached/images/20150325/37251_BG.jpg) 50% 0px no-repeat rgb(174, 238, 255)','主背景图/attached/images/20150325/37251_BG.jpg) 50% 0px no-repeat rgb(174, 238, 255)',0,'2015-08-17 11:55:38',NULL),
 (13,'SECOND_COLOR','#000000;','网站次要颜色(顶部背景色)',0,'2015-08-17 11:55:38',NULL),
 (14,'PRIMARY_COLOR','#3A3838;','网站主色(顶部菜单背景色）',0,'2015-08-17 11:55:38',NULL),
 (15,'LUCENEURL','http://localhost:8080/ZQShopService/','',1,'2015-08-17 11:55:38',NULL),
 (16,'SUPERADINID','89','最高管理员id',1,'2015-08-17 11:55:38',NULL),
 (17,'NOTICEURL','newsDetail?p_tag=fenxiao','头部通知链接',-100,'2015-08-17 11:55:38',NULL),
 (18,'NOTICENAME','倍力康商城加盟！！！！！！！','头部通知内容',-100,'2015-08-17 11:55:38',NULL),
 (19,'LOGOIMG','images/ytwd.png','商城logo',0,'2015-08-17 11:55:38',NULL),
 (20,'MATCH_COLOR','#5bc0de;','网站配色',0,'2015-08-17 11:55:38',NULL),
 (21,'WEB_NAME','E通世界','',-100,'2015-08-17 11:55:38',NULL),
 (22,'LINK_COLOR','#FFFFFF','超链颜色',0,'2015-08-17 11:55:38',NULL),
 (23,'HOVER_COLOR','#B20000','a:hover 颜色',0,'2015-08-17 11:55:38',NULL),
 (24,'KF_PHONE','010-85654599','客服电话',1,'2015-08-17 11:55:38',NULL),
 (25,'KF_EMAIL','kf@ytworld.cn','客服邮箱',1,'2015-08-17 11:55:38',NULL);
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;


--
-- Definition of table `staticdata`
--

DROP TABLE IF EXISTS `staticdata`;
CREATE TABLE `staticdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(15) NOT NULL,
  `pcode` varchar(15) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `flag` int(11) NOT NULL DEFAULT '1',
  `order_list` int(11) DEFAULT '1',
  `type` varchar(25) DEFAULT NULL,
  `enName` varchar(100) DEFAULT NULL,
  `addTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `FK_staticdata_pcode` (`pcode`),
  CONSTRAINT `FK_staticdata_pcode` FOREIGN KEY (`pcode`) REFERENCES `staticdata` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staticdata`
--

/*!40000 ALTER TABLE `staticdata` DISABLE KEYS */;
INSERT INTO `staticdata` (`id`,`code`,`pcode`,`value`,`name`,`description`,`link`,`flag`,`order_list`,`type`,`enName`,`addTime`) VALUES 
 (1,'MENU','TOP','','主菜单','主菜单                \r\n				\r\n				\r\n				','',1,NULL,'NO',NULL,'2015-08-17 11:56:24'),
 (2,'SUBMENU1','MENU','','联系我们','			','newsDetail?p_tag=CONTACT',1,4,'MENU','Contact Us','2015-08-17 11:56:24'),
 (3,'SUBMEUN2','MENU','','新闻','                \r\n				','newsList',1,12,'MENU','Information','2015-08-17 11:56:24'),
 (4,'SUBMENU3','MENU','','关于我们','                \r\n				','newsDetail?p_tag=ABOUTUS',1,6,'MENU','About Us','2015-08-17 11:56:24'),
 (5,'SUBMENU4','MENU','','产品','','newsDetail?p_tag=PRODUCT',1,16,'MENU','Products','2015-08-17 11:56:24'),
 (24,'INDEXSLIDE','TOP','','首页滚动图片 ','','',1,2,'NO','','2015-08-17 11:56:24'),
 (25,'INDEX_IMG1','INDEXSLIDE','attached/images/20150817/95070_叮叮通.jpg','NO','叮叮通','newsDetail?p_tag=PRODUCT1',1,2,'SLIDE','','2015-08-17 11:56:24'),
 (26,'INDEX_IMG2','INDEXSLIDE','attached/images/20150817/83003_banner2.jpg','NO','私人秘书','newsDetail?p_tag=PRODUCT3',1,1,'SLIDE','','2015-08-17 11:56:24'),
 (27,'INDEX_IMG3','INDEXSLIDE','attached/images/20150817/25914_banner.jpg','NO','智能生活馆','newsDetail?p_tag=PRODUCT2',1,4,'SLIDE','','2015-08-17 11:56:24'),
 (32,'TOPBAR_R','TOP','','顶部导航条右边','顶部导航条，登录后的value为：YES，未登录的value为NO，都显示则填其它任意值\r\n				\r\n				\r\n				','',1,5,'NO',NULL,'2015-08-17 11:56:24'),
 (33,'LOGIN','TOPBAR_R','NO','登录','                                                \r\n				\r\n				\r\n				','preLogin',-100,10,'NO',NULL,'2015-08-17 11:56:24'),
 (34,'ENGLISH','L_FRIENDLY','','English','<i class=\"iconfont\"></i> 		','http://en.yitongworld.com/index',1,9,'NO','English','2015-08-17 11:56:24'),
 (65,'TOP','TOP','','顶级父类','根据类型查找时不会在根据PCOD查找。该列无实际用处，仅仅作为其他数据的PCODE','',1,0,'NO',NULL,'2015-08-17 11:56:24'),
 (78,'CHINESE','L_FRIENDLY','','中文','<i class=\"iconfont\"></i> ','http://yitongworld.com/index',1,0,'NO','中文','2015-08-17 11:56:24'),
 (95,'ROLE','TOP','','角色','setting表、staticdata表只有最高管理员才具有管理权限','',1,10,'NO',NULL,'2015-08-17 11:56:24'),
 (96,'AUTHORITY','TOP','','权限','','',1,10,'NO',NULL,'2015-08-17 11:56:24'),
 (97,'a_userList','AUTHORITY','manageUserList','预加载用户列表','','',1,1,'NO',NULL,'2015-08-17 11:56:24'),
 (99,'a_loadUserList','AUTHORITY','manageLoadUserList','加载用户','','',1,2,'NO',NULL,'2015-08-17 11:56:24'),
 (100,'a_addUser','AUTHORITY','manageAddUser','添加用户','','',1,3,'NO',NULL,'2015-08-17 11:56:24'),
 (101,'a_findUserById','AUTHORITY','manageFindUserById','查找一个用户','','',1,4,'NO',NULL,'2015-08-17 11:56:24'),
 (102,'a_deleteUser','AUTHORITY','manageDeleteUser','删除用户','','',1,5,'NO',NULL,'2015-08-17 11:56:24'),
 (103,'r_user','ROLE','a_index,a_pick,a_deleteUser,a_findUserById,a_addUser,a_loadUserList,a_userList,','管理用户','','',1,1,'NO',NULL,'2015-08-17 11:56:24'),
 (104,'a_index','AUTHORITY','manageIndex','管理员主页面','','',1,1000,'NO',NULL,'2015-08-17 11:56:24'),
 (105,'a_hotwordList','AUTHORITY','manageHotwordList','预加载热词页面','','',1,7,'NO',NULL,'2015-08-17 11:56:24'),
 (106,'a_loadHotword','AUTHORITY','manageLoadHotwordList','加载热词页面','','',1,8,'NO',NULL,'2015-08-17 11:56:24'),
 (107,'a_FindHotword','AUTHORITY','manageFindHotwordById','查找一个热词','','',1,9,'NO',NULL,'2015-08-17 11:56:24'),
 (108,'a_addHotword','AUTHORITY','manageAddHotword','添加热词','','',1,10,'NO',NULL,'2015-08-17 11:56:24'),
 (109,'a_deleteHotword','AUTHORITY','manageDeleteHotword','删除热词','','',1,11,'NO',NULL,'2015-08-17 11:56:24'),
 (110,'r_hotword','ROLE','a_index,a_pick,a_deleteHotword,a_addHotword,a_FindHotword,a_loadHotword,a_hotwordList,','管理热词','','',1,2,'NO',NULL,'2015-08-17 11:56:24'),
 (111,'a_pick','AUTHORITY','pick','加载选择控件','','',1,999,'NO',NULL,'2015-08-17 11:56:24'),
 (112,'a_newsList','AUTHORITY','manageNewsList','预加载新闻页面','','',1,12,'NO',NULL,'2015-08-17 11:56:24'),
 (113,'a_loadNewsList','AUTHORITY','manageLoadNewsList','加载新闻页面','','',1,13,'NO',NULL,'2015-08-17 11:56:24'),
 (114,'a_findNewsById','AUTHORITY','manageFindNewsById','查找新闻','','',1,14,'NO',NULL,'2015-08-17 11:56:24'),
 (115,'a_addNews','AUTHORITY','manageAddNews','添加新闻','','',1,15,'NO',NULL,'2015-08-17 11:56:24'),
 (116,'a_deleteNews','AUTHORITY','manageDeleteNews','删除新闻','','',1,16,'NO',NULL,'2015-08-17 11:56:24'),
 (117,'r_news','ROLE','a_index,a_pick,a_deleteNews,a_addNews,a_findNewsById,a_loadNewsList,a_newsList,a_clear,','管理新闻','','',1,3,'NO','','2015-08-17 11:56:24'),
 (119,'ADMIN_MENU','TOP','','管理员菜单','管理员菜单','',1,1,'NO',NULL,'2015-08-17 11:56:24'),
 (120,'ADMIN_USER','ADMIN_MENU','','用户管理','','',1,1,'NO',NULL,'2015-08-17 11:56:24'),
 (121,'USER_COMMON','ADMIN_USER','href=\"adminJsp?jspName=userList&p_type=AVERUSER\"','普通用户','','manageUserList?p_type=AVERUSER',1,1,'NO','','2015-08-17 11:56:24'),
 (123,'USER_ADMIN','ADMIN_USER','href=\"adminJsp?jspName=userList&p_type=ADMINUSER\"','管理员','','manageUserList?p_type=ADMINUSER',1,2,'NO','','2015-08-17 11:56:24'),
 (124,'ADMIN_NEWS','ADMIN_MENU','','新闻资讯','','',1,2,'NO',NULL,'2015-08-17 11:56:24'),
 (125,'NEWS_INFOR','ADMIN_NEWS','href=\"adminJsp?jspName=newsList&p_type=INFOR\"','新闻资讯','','manageNewsList?type=INFOR',1,2,'NO','','2015-08-17 11:56:24'),
 (126,'NEWS_PAGE','ADMIN_NEWS','href=\"adminJsp?jspName=newsList&p_type=PAGE\"','网站页面','','manageNewsList?type=PAGE',1,2,'NO','','2015-08-17 11:56:24'),
 (127,'NEWS_TOP','ADMIN_NEWS','href=\"adminJsp?jspName=newsList&flag=100\"','置顶','','manageNewsList?flag=100',1,3,'NO','','2015-08-17 11:56:24'),
 (128,'ADMIN_COMMENT','ADMIN_MENU','','新闻评论','','',1,3,'NO',NULL,'2015-08-17 11:56:24'),
 (129,'COMMENT_LIST','ADMIN_COMMENT','','列表','','manageCommentList?cId=null',1,1,'NO',NULL,'2015-08-17 11:56:24'),
 (130,'ADMIN_HOTWORD','ADMIN_MENU','','搜索管理','','',1,4,'NO',NULL,'2015-08-17 11:56:24'),
 (131,'HOTWORD_NO','ADMIN_HOTWORD','','不可用','','manageHotwordList?flag=-1',1,1,'NO',NULL,'2015-08-17 11:56:24'),
 (132,'HOTWORD_YES','ADMIN_HOTWORD','','可用','','manageHotwordList?flag=1',1,2,'NO',NULL,'2015-08-17 11:56:24'),
 (133,'HOTWORD_TOP','ADMIN_HOTWORD','','置顶','','manageHotwordList?flag=100',1,3,'NO',NULL,'2015-08-17 11:56:24'),
 (134,'ADMIN_SETTING','ADMIN_MENU','','系统设置','','',1,4,'NO',NULL,'2015-08-17 11:56:24'),
 (135,'SETTING_LIST','ADMIN_SETTING','href=\"adminJsp?jspName=settingList\"','系统参数','','manageSettingList',1,1,'NO','','2015-08-17 11:56:24'),
 (136,'SETTING_LUCENE','ADMIN_SETTING','','重建Lucene索引','','http://localhost:8080/ZQShopService/lucene?method=addAll',1,2,'NO',NULL,'2015-08-17 11:56:24'),
 (137,'ADMIN_STATIC','ADMIN_MENU','','StaticData','','',1,6,'NO',NULL,'2015-08-17 11:56:24'),
 (138,'STATIC_LIST','ADMIN_STATIC','href=\"adminJsp?jspName=staticdataList\"','分类列表','','manageStaticdataList',1,1,'NO','','2015-08-17 11:56:24'),
 (139,'STATIC_ALL','ADMIN_STATIC','href=\"adminJsp?jspName=staticdataList&p_code=ALL\"','所有数据','','manageStaticdataList?spcode=ALL',1,2,'NO','','2015-08-17 11:56:24'),
 (140,'LABEL','TOP','','标签','中英文标签','',1,0,'NO','','2015-08-17 11:56:24'),
 (141,'WEB_NAME','LABEL','','E通世界','网站名称title','',1,0,'NO','YTWorld','2015-08-17 11:56:24'),
 (142,'NOTICE','LABEL','','免费获取通话时间！','顶部系统通知','http://admin.ytworld.cn/webJsp?jspName=appPhoneUserApplyCard',1,0,'NO','Free access to talk time！','2015-08-17 11:56:24'),
 (143,'L_CLICK','LABEL','','点击量','','',1,1,'NO','click','2015-08-17 11:56:24'),
 (144,'L_TIME','LABEL','','发布时间','','',1,2,'NO','time','2015-08-17 11:56:24'),
 (145,'L_EMAIL','LABEL','','客服邮箱：','','',1,0,'NO','Email Us At:','2015-08-17 11:56:24'),
 (146,'L_PHONE','LABEL','','客服电话：','','',1,0,'NO','24/7 Phone Support:','2015-08-17 11:56:24'),
 (147,'L_TOTOP','LABEL','','返回顶部','','',1,0,'NO','To Top','2015-08-17 11:56:24'),
 (148,'L_CONTACT','LABEL','','联系我们：','','',1,0,'NO','GET IN TOUCH:','2015-08-17 11:56:24'),
 (149,'L_INTRODUCTION','LABEL','','软件下载：','','',1,0,'NO','APP Download:','2015-08-17 11:56:24'),
 (150,'L_FRIENDLY','LABEL','','地区语言：','','',1,0,'NO','LANGUAGE:','2015-08-17 11:56:24'),
 (151,'ADDRESS','LABEL','','北京市朝阳区朝外大街26号A座909','地址','',1,0,'NO','The 26 909, block A chaowai street of Beijing','2015-08-17 11:56:24'),
 (152,'L_ADDRESS','LABEL','','公司地址：','','',1,0,'NO','Address:','2015-08-17 11:56:24'),
 (153,'L_F_EMAIL','L_FRIENDLY','','公司邮箱','','http://mail.ytworld.cn',-100,0,'NO','Company Email','2015-08-17 11:56:24'),
 (154,'a_clear','AUTHORITY','clear','清除缓存','','',1,0,'NO','','2015-08-17 11:56:24'),
 (155,'INDEX','MENU','','首页','','index',1,20,'MENU','Index','2015-08-17 11:56:24'),
 (156,'SHANGJIARUZHU','MENU','','商家入驻','','newsDetail?p_tag=SJRZ',1,10,'MENU','Tenants ','2015-08-17 11:56:24'),
 (157,'DOWNLOAD','TOPBAR_R','','应用下载','<i class=\"iconfont\"></i> ','newsDetail?p_tag=DOWLOAD',1,0,'NO','App Download','2015-08-17 11:56:24'),
 (158,'INDEX_IMG4','INDEXSLIDE','attached/images/20150817/11818_banner3.jpg','NO','激活码获取','http://admin.ytworld.cn/webJsp?jspName=appPhoneUserApplyCard',1,3,'SLIDE','','2015-08-17 11:56:24'),
 (159,'ACTIVATION','TOPBAR_R','','获取激活码','<i class=\"iconfont\">&#xe640;</i> ','http://admin.ytworld.cn/webJsp?jspName=appPhoneUserApplyCard',1,1,'NO','Get Activation Code','2015-08-17 11:56:24');
/*!40000 ALTER TABLE `staticdata` ENABLE KEYS */;


--
-- Definition of table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `sex` varchar(12) DEFAULT 'MALE',
  `email` varchar(32) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `qq` varchar(32) DEFAULT NULL,
  `bounds` int(10) unsigned DEFAULT '0',
  `grade` int(11) DEFAULT '1',
  `insertTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `flag` int(11) NOT NULL DEFAULT '1',
  `type` varchar(12) DEFAULT 'AVERUSER',
  `authority` varchar(200) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `addTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`,`name`,`sex`,`email`,`phone`,`password`,`qq`,`bounds`,`grade`,`insertTime`,`flag`,`type`,`authority`,`role`,`addTime`) VALUES 
 (86,'付辉','MALE','1340760685@qq.com','15620633948','96e79218965eb72c92a549dd5a330112','1340760685',10000,1,'2015-03-24 19:57:35',2,'ADMINUSER','a_index,','r_hotword,r_user,','2015-08-17 11:56:58'),
 (87,'小灰灰','FEMALE','2390619002@qq.com','15620693882','e3ceb5881a0a1fdaad01296d7554868d','14234242',0,1,'2015-04-04 17:39:29',2,'AVERUSER',NULL,NULL,'2015-08-17 11:56:58'),
 (88,'lijing','FEMALE','lijing@ytworld.cn','13662113635','96e79218965eb72c92a549dd5a330112','lijing@ytworld.cn',0,1,'2015-04-04 18:49:01',2,'ADMINUSER','a_index,','r_news,','2015-08-17 11:56:58'),
 (89,'SuperAdmin','MALE','516452267@qq.com','15620633934','96e79218965eb72c92a549dd5a330112','',6000,1,'2015-04-11 16:27:32',2,'ADMINUSER','','','2015-08-17 11:56:58');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
