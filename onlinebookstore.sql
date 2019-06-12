/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.7.21 : Database - bookstore
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bookstore` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bookstore`;

/*Table structure for table `bookdiscuss` */

DROP TABLE IF EXISTS `bookdiscuss`;

CREATE TABLE `bookdiscuss` (
  `disId` int(11) NOT NULL AUTO_INCREMENT,
  `bookId` int(11) NOT NULL,
  `custId` int(11) NOT NULL,
  `context` varchar(100) COLLATE utf8_bin NOT NULL,
  `states` int(11) NOT NULL,
  PRIMARY KEY (`disId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bookdiscuss` */

insert  into `bookdiscuss`(`disId`,`bookId`,`custId`,`context`,`states`) values (1,1,3,'这讲的什么鬼？！',1),(2,12,1,'垃圾大家不要买啊',0),(3,7,3,'好评，书中经典，推荐观看',1),(4,16,2,'第二次买了，给朋友带一本',1),(5,17,5,'很好看，很喜欢',1);

/*Table structure for table `bookinfo` */

DROP TABLE IF EXISTS `bookinfo`;

CREATE TABLE `bookinfo` (
  `bookId` int(11) NOT NULL AUTO_INCREMENT,
  `bookName` varchar(20) CHARACTER SET utf8 NOT NULL,
  `booktypeId` int(11) NOT NULL,
  `author` varchar(20) CHARACTER SET utf8 NOT NULL,
  `pbName` varchar(20) CHARACTER SET utf8 NOT NULL,
  `context` varchar(200) CHARACTER SET utf8 NOT NULL,
  `smallImg` varchar(20) CHARACTER SET utf8 NOT NULL,
  `bigImg` varchar(20) CHARACTER SET utf8 NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `pbdate` date NOT NULL,
  `hyprice` decimal(10,0) NOT NULL,
  `bookStates` int(11) NOT NULL,
  `sjdate` date DEFAULT NULL,
  `num` int(11) NOT NULL,
  `saleCount` int(11) NOT NULL,
  PRIMARY KEY (`bookId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bookinfo` */

insert  into `bookinfo`(`bookId`,`bookName`,`booktypeId`,`author`,`pbName`,`context`,`smallImg`,`bigImg`,`price`,`pbdate`,`hyprice`,`bookStates`,`sjdate`,`num`,`saleCount`) values (1,'爱过你',3,'张小娴','北京联合出版公司','痴心也有山穷水尽的一天，爱过就是最好的结局','aiguoni.jpg','aiguoni.jpg','47','2019-04-01','40',1,NULL,100,0),(2,'只差一个谎言',4,'东野圭吾','南海出版公司','一本描写现代都市生活的书，家庭主妇、单身母亲、多年好友……人们究竟抱着怎样的目的，编织着一个又一个谎言？','huangyan.jpg','huangyan.jpg','50','2019-06-01','42',1,NULL,100,0),(3,'活着',3,'余华','作家出版社','《活着》是一篇沉重且意义深长的小说','huozhe.jpg','huozhe.jpg','16','2010-11-01','10',1,NULL,100,0),(4,'12个我',3,'安定医院郝医生','四川文艺出版社','《你也是蘑菇吗》之后，郝医生再度带来与精神病人“斗智斗勇”的脑洞日常','gewo.jpg','gewo.jpg','45','2018-05-17','38',1,NULL,100,0),(5,'倾城之恋',2,'张爱玲','湖南文艺出版社','在这动荡的世界里，钱财，地产，天长地久的一切，全不可靠了。靠得住的只有她腔子里的这口气，还有睡在她身边的这个人','qincheng.jpg','qincheng.jpg','40','2012-08-24','30',1,NULL,100,0),(6,'周恩来传',4,'迪克威尔逊','国际文化出版公司','作者以详实权威的资料为基础，再现了周恩来具有传奇性的一生，分析了他的性格、气质和他的工作作风，以及他给新中国成立和发展带来的巨大影响，是一部全面、深刻又不失独特见解的著作。','zhoueng.jpg','zhoueng.jpg','49','2017-07-09','33',1,'2019-06-05',100,0),(7,'念楼学短',5,'锺叔河 ','后浪出版社','百字版《古文观止》 读古文，都应先学其短','nianlou.jpg','nianlou.jpg','37','2018-08-01','24',1,NULL,100,0),(8,'资治通鉴',5,'司马光','岳麓书社','中国史学的不朽巨著','zizhi.jpg','zizhi.jpg','34','2011-03-22','22',1,NULL,100,0),(9,'挪威的森林',4,'村上春树',' 上海译文出版社','故事讲述主角渡边纠缠在情绪不稳定且患有精神疾病的直子和开朗活泼的小林绿子之间，苦闷彷徨，最终展开了自我救赎和成长的旅程。','nuowei.jpg','nuowei.jpg','39','2018-02-01','36',1,NULL,100,0),(10,'追风筝的人',4,'卡勒德·胡赛尼','上海人民出版社','为你，千千万万遍！','zhui.jpg','zhui.jpg','34','2008-05-01','23',1,NULL,100,0),(11,'寻找时间的人',4,'凯特.汤普森','江苏文艺出版社','一部关于成长、亲情，还有不断消失的传统的颂歌','xunzhao.jpg','xunzhao.jpg','30','2010-08-01','19',1,NULL,100,0),(12,'红楼梦',3,'曹雪芹','人民文学出版社','　《红楼梦》塑造了众多的人物形象，他们各自具有自己独特而鲜明的个性特征，成为不朽的艺术典型，在中国文学史和世界文学史上永远放射着奇光异彩。','hongloumeng.jpg','hongloumeng.jpg','51','2000-05-24','35',1,NULL,100,0),(13,'你是人间四月天 ',3,'林徽因','江苏凤凰文艺出版社','集合了林徽因的诗歌、散文、书信、小说以及译作等','nishi.jpg','nishi.jpg','26','2009-01-01','16',1,NULL,100,0),(14,'夜莺与玫瑰',4,'奥斯卡·王尔德','开明出版社','它启示我们：在给予中，付出的爱才是最重要的；在生命的终点，审判我们的将是爱。','yeying.jpg','yeying.jpg','30','2016-05-01','22',1,NULL,100,0),(15,'云图',4,'（英）大卫·米切尔','上海文艺出版社','入选“新千年最佳小说”入围布克奖、星云奖、克拉克奖决选','yuntu.jpg','yuntu.jpg','33','2010-01-01','24',1,NULL,100,0),(16,'重温最美古诗词',5,'于丹','北京联合出版公司','和于丹一起，重温最美古诗词，回归自在大人生。','chongwen.jpg','chongwen.jpg','39','2012-06-01','30',1,NULL,100,0),(17,'人间失格',4,'太宰治','作家出版社','人间失格，即丧失为人的资格','renjian.jpg','renjian.jpg','59','1983-12-01','38',1,NULL,100,0),(18,'月亮与六便士',4,'毛姆','江苏文艺出版社','满地都是六便士，他却抬头看见了月亮','yueliang.jpg','yueliang.jpg','37','2011-03-01','24',1,NULL,100,0),(19,'蒋勋说宋词',5,'蒋勋',' 福建人民出版社',' 蒋勋说：在宋词中，你会觉得有一种饱满与安静','jiangxun.jpg','jiangxun.jpg','37','2011-01-01','26',1,NULL,100,0),(20,'席慕蓉诗集',5,'席慕蓉',' 作家出版社','《席慕蓉诗集（套装共6册）》包括有《七里香》、《无怨的青春》','ximurong.jpg','ximurong.jpg','109','2008-05-01','69',1,NULL,100,0);

/*Table structure for table `booktype` */

DROP TABLE IF EXISTS `booktype`;

CREATE TABLE `booktype` (
  `bookTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL,
  `bookTypeName` varchar(20) COLLATE utf8_bin NOT NULL,
  `context` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `isDelete` int(11) NOT NULL,
  PRIMARY KEY (`bookTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `booktype` */

insert  into `booktype`(`bookTypeId`,`parentId`,`bookTypeName`,`context`,`isDelete`) values (2,0,'文学作品','形象化地反映客观现实的艺术',1),(3,1,'中国当代小说','中国50年代后期文学史著作',1),(4,1,'外国当代小说','外国文学著作，不同文化相互渗透，学习',1),(5,2,'历史著作','记载了中国人类的发展史',1);

/*Table structure for table `customerdetailinfo` */

DROP TABLE IF EXISTS `customerdetailinfo`;

CREATE TABLE `customerdetailinfo` (
  `custId` int(11) NOT NULL AUTO_INCREMENT,
  `tel` varchar(13) CHARACTER SET utf8 NOT NULL,
  `address` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `sex` int(11) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `countMoney` decimal(10,0) DEFAULT NULL,
  `qq` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`custId`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `customerdetailinfo` */

insert  into `customerdetailinfo`(`custId`,`tel`,`address`,`sex`,`age`,`countMoney`,`qq`) values (1,'13545698425','长麦路',0,21,'126','766528@qq.com'),(2,'15885695429','凤凰中大道',1,18,'6','8885328@qq.com'),(3,'15845698425','凌波路',1,22,'1226','766528@qq.com'),(4,'15999668489','工业大道',0,23,'26','766528@qq.com'),(5,'13645655423','南京东路',0,20,'23','766528@qq.com'),(6,'13545698425','北京西路',0,21,'126','766528@qq.com'),(7,'15885695429','上海北路',1,18,'6','8885328@qq.com'),(8,'15845698425','江大南路',1,22,'340','766528@qq.com'),(9,'15999668489','会展路',0,23,'26','766528@qq.com'),(10,'13645455423','马路',0,20,'32','766528@qq.com');

/*Table structure for table `customerinfo` */

DROP TABLE IF EXISTS `customerinfo`;

CREATE TABLE `customerinfo` (
  `custId` int(11) NOT NULL AUTO_INCREMENT,
  `custName` varchar(100) COLLATE utf8_bin NOT NULL,
  `pwd` varchar(20) COLLATE utf8_bin NOT NULL,
  `email` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`custId`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `customerinfo` */

insert  into `customerinfo`(`custId`,`custName`,`pwd`,`email`) values (1,'sss','123456','124255@qq.com'),(2,'ccc','123456','244355@163.com'),(3,'hhh','456','345366@yahu.com'),(4,'lll','123','354646@qq.com'),(5,'bbb','56789','46646@qq.com'),(6,'123','66666','743623@qq.com'),(7,'niko','326','2516085027@qq.com'),(9,'sophia','666','252346@qq.com'),(10,'琴生','19990326','2516085027@qq.com'),(11,'abc','123456','12354361@qq.com');

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `empId` int(11) NOT NULL AUTO_INCREMENT,
  `empName` varchar(20) CHARACTER SET utf8 NOT NULL,
  `empAge` int(11) NOT NULL,
  `empBtd` date NOT NULL,
  `empSex` int(11) NOT NULL,
  `isDelete` int(11) NOT NULL,
  PRIMARY KEY (`empId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `employee` */

insert  into `employee`(`empId`,`empName`,`empAge`,`empBtd`,`empSex`,`isDelete`) values (1,'小董',22,'1997-05-13',1,1),(2,'王华',30,'1989-11-29',1,1),(3,'钱鑫',40,'1979-02-04',1,1),(4,'周凯',35,'1984-08-12',1,1);

/*Table structure for table `favorite` */

DROP TABLE IF EXISTS `favorite`;

CREATE TABLE `favorite` (
  `favoriteId` int(11) NOT NULL AUTO_INCREMENT,
  `bookId` int(11) NOT NULL,
  `custId` int(11) NOT NULL,
  `scdate` date NOT NULL,
  `context` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`favoriteId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `favorite` */

insert  into `favorite`(`favoriteId`,`bookId`,`custId`,`scdate`,`context`) values (1,16,1,'2012-03-01','想买的书'),(2,10,3,'2009-02-03','很喜欢的书'),(3,7,2,'2012-04-27','期待的书'),(4,6,4,'2011-09-01','漫画书'),(5,11,3,'2010-03-01','文学小说');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `newsId` int(11) NOT NULL AUTO_INCREMENT,
  `newTitle` varchar(30) CHARACTER SET utf8 NOT NULL,
  `context` varchar(50) CHARACTER SET utf8 NOT NULL,
  `createTime` date NOT NULL,
  PRIMARY KEY (`newsId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `news` */

insert  into `news`(`newsId`,`newTitle`,`context`,`createTime`) values (1,'极限挑战今日看点','极限挑战-师徒回归啦','2019-06-02'),(2,'哈根达斯误卖模型','哈根达斯门店误卖酸奶模型，小朋友吃了一半才发现','2019-06-03'),(3,'消防车追尾逃逸','消防车追尾男子后逃逸，交警却判男子全责，男子怒：就因为是消防车？','2019-06-03'),(4,'硬核！82岁奶奶重返蓝天','82岁奶奶重返蓝天，曾是第二批女飞行员','2019-06-03'),(5,'优衣库联名款遭哄抢','优衣库正式开售kaws联名款，遭疯抢！','2019-06-03'),(6,'第一号留学预警','赴美留学审查周期延长，拒签率上升，教育部发布第一号留学预警 ','2019-06-04'),(7,'国青退出中赫国安杯','北京中赫国安2粒精彩进球，助力国安拿下开赛10连胜','2019-06-03'),(8,'学生申请带猫上学','杭州四年级学生男生申请带猫上学，校长竟然同意了……','2019-06-05'),(9,'郎朗结婚','6月2日钢琴演奏家郎朗在个人媒体平台官宣了结婚的信息','2019-06-02'),(10,'阿里回应经营电子烟','阿里经营范围新增电子烟 回应：符合法律法规','2019-06-03'),(11,'创造营2019','创造营黑马频出，哇唧唧哇或不敌SDT？','2019-06-03'),(12,'最好的我们影评','最好的你成就了我们，最好的我们圆满了青春','2019-06-05');

/*Table structure for table `orderdetail` */

DROP TABLE IF EXISTS `orderdetail`;

CREATE TABLE `orderdetail` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `orderNum` varchar(40) NOT NULL,
  `bookId` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `orderdetail` */

insert  into `orderdetail`(`orderId`,`orderNum`,`bookId`,`num`) values (1,'2019-06-07-18-18-24-086',1,1),(2,'2019-06-07-18-14-45-604',2,1),(3,'2019-06-07-18-14-45-604',4,1),(4,'2019-06-07-18-23-29-408',9,1),(5,'2019-06-07-18-23-29-408',1,1),(6,'2019-06-07-18-30-37-486',6,1),(7,'2019-06-07-18-30-37-486',5,2),(8,'2019-06-08-12-28-28-619',3,1),(9,'2019-06-08-12-28-28-619',1,2);

/*Table structure for table `ordermain` */

DROP TABLE IF EXISTS `ordermain`;

CREATE TABLE `ordermain` (
  `orderNum` varchar(40) CHARACTER SET utf8 NOT NULL,
  `customerId` int(11) NOT NULL,
  `customerName` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `tel` varchar(20) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `status` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `adminId` int(11) DEFAULT NULL,
  `context` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `sumprice` decimal(10,0) NOT NULL,
  PRIMARY KEY (`orderNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `ordermain` */

insert  into `ordermain`(`orderNum`,`customerId`,`customerName`,`tel`,`address`,`status`,`adminId`,`context`,`sumprice`) values ('2019-06-07-18-30-37-486',1,'sss','13545698425','长麦路','0',NULL,'请尽快发货','93'),('2019-06-08-12-28-28-619',2,'ccc','15885695429','凤凰中大道','0',NULL,'速派','90'),('2019-06-08-12-29-57-021',2,'ccc','15885695429','凤凰中大道','0',NULL,'急用','0');

/*Table structure for table `sysadmin` */

DROP TABLE IF EXISTS `sysadmin`;

CREATE TABLE `sysadmin` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(20) DEFAULT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `adminType` int(11) NOT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `sysadmin` */

insert  into `sysadmin`(`adminId`,`adminName`,`pwd`,`adminType`) values (1,'admin','admin',3),(2,'guest','guest',2),(3,'user','user',1),(4,'head','head',2),(5,'boss','boss',3);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
