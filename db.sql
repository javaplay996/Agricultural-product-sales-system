/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - lelenongchanpinxiaoshou
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`lelenongchanpinxiaoshou` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `lelenongchanpinxiaoshou`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,3,'收货人1','17703786901','地址1',1,'2023-04-28 16:06:15','2023-04-28 16:06:15','2023-04-28 16:06:15'),(2,3,'收货人2','17703786902','地址2',1,'2023-04-28 16:06:15','2023-04-28 16:06:15','2023-04-28 16:06:15'),(3,1,'收货人3','17703786903','地址3',1,'2023-04-28 16:06:15','2023-04-28 16:06:15','2023-04-28 16:06:15'),(4,3,'收货人4','17703786904','地址4',1,'2023-04-28 16:06:15','2023-04-28 16:06:15','2023-04-28 16:06:15'),(5,2,'收货人5','17703786905','地址5',1,'2023-04-28 16:06:15','2023-04-28 16:06:15','2023-04-28 16:06:15'),(6,3,'收货人6','17703786906','地址6',1,'2023-04-28 16:06:15','2023-04-28 16:06:15','2023-04-28 16:06:15'),(7,1,'收货人7','17703786907','地址7',1,'2023-04-28 16:06:15','2023-04-28 16:06:15','2023-04-28 16:06:15'),(8,2,'收货人8','17703786908','地址8',1,'2023-04-28 16:06:15','2023-04-28 16:06:15','2023-04-28 16:06:15'),(9,3,'收货人9','17703786909','地址9',1,'2023-04-28 16:06:15','2023-04-28 16:06:15','2023-04-28 16:06:15'),(10,1,'收货人10','17703786910','地址10',1,'2023-04-28 16:06:15','2023-04-28 16:06:15','2023-04-28 16:06:15'),(11,1,'收货人11','17703786911','地址11',1,'2023-04-28 16:06:15','2023-04-28 16:06:15','2023-04-28 16:06:15'),(12,1,'收货人12','17703786912','地址12',1,'2023-04-28 16:06:15','2023-04-28 16:06:15','2023-04-28 16:06:15'),(13,3,'收货人13','17703786913','地址13',1,'2023-04-28 16:06:15','2023-04-28 16:06:15','2023-04-28 16:06:15'),(14,2,'收货人14','17703786914','地址14',1,'2023-04-28 16:06:15','2023-04-28 16:06:15','2023-04-28 16:06:15');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `nongchanpin_id` int(11) DEFAULT NULL COMMENT '农产品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-28 16:06:01'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-28 16:06:01'),(3,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-28 16:06:01'),(4,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-28 16:06:01'),(5,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-28 16:06:01'),(6,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-28 16:06:01'),(7,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2023-04-28 16:06:02'),(8,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2023-04-28 16:06:02'),(9,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-04-28 16:06:02'),(10,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-04-28 16:06:02'),(11,'nongchanpin_types','农产品类型',1,'农产品类型1',NULL,NULL,'2023-04-28 16:06:02'),(12,'nongchanpin_types','农产品类型',2,'农产品类型2',NULL,NULL,'2023-04-28 16:06:02'),(13,'nongchanpin_types','农产品类型',3,'农产品类型3',NULL,NULL,'2023-04-28 16:06:02'),(14,'nongchanpin_types','农产品类型',4,'农产品类型4',NULL,NULL,'2023-04-28 16:06:02'),(15,'nongchanpin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-28 16:06:02'),(16,'nongchanpin_order_types','订单类型',101,'已支付',NULL,NULL,'2023-04-28 16:06:02'),(17,'nongchanpin_order_types','订单类型',102,'已退款',NULL,NULL,'2023-04-28 16:06:02'),(18,'nongchanpin_order_types','订单类型',103,'已发货',NULL,NULL,'2023-04-28 16:06:02'),(19,'nongchanpin_order_types','订单类型',104,'已收货',NULL,NULL,'2023-04-28 16:06:02'),(20,'nongchanpin_order_types','订单类型',105,'已评价',NULL,NULL,'2023-04-28 16:06:02'),(21,'shangjia_xingji_types','商家信用类型',1,'一级',NULL,NULL,'2023-04-28 16:06:02'),(22,'shangjia_xingji_types','商家信用类型',2,'二级',NULL,NULL,'2023-04-28 16:06:02'),(23,'shangjia_xingji_types','商家信用类型',3,'三级',NULL,NULL,'2023-04-28 16:06:02');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '商家',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='交流论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`shangjia_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,NULL,'发布内容1',66,1,'2023-04-28 16:06:15','2023-04-28 16:06:15','2023-04-28 16:06:15'),(2,'帖子标题2',3,NULL,NULL,'发布内容2',256,1,'2023-04-28 16:06:15','2023-04-28 16:06:15','2023-04-28 16:06:15'),(3,'帖子标题3',3,NULL,NULL,'发布内容3',500,1,'2023-04-28 16:06:15','2023-04-28 16:06:15','2023-04-28 16:06:15'),(4,'帖子标题4',3,NULL,NULL,'发布内容4',244,1,'2023-04-28 16:06:15','2023-04-28 16:06:15','2023-04-28 16:06:15'),(5,'帖子标题5',1,NULL,NULL,'发布内容5',463,1,'2023-04-28 16:06:15','2023-04-28 16:06:15','2023-04-28 16:06:15'),(6,'帖子标题6',3,NULL,NULL,'发布内容6',88,1,'2023-04-28 16:06:15','2023-04-28 16:06:15','2023-04-28 16:06:15'),(7,'帖子标题7',3,NULL,NULL,'发布内容7',18,1,'2023-04-28 16:06:15','2023-04-28 16:06:15','2023-04-28 16:06:15'),(8,'帖子标题8',3,NULL,NULL,'发布内容8',350,1,'2023-04-28 16:06:15','2023-04-28 16:06:15','2023-04-28 16:06:15'),(9,'帖子标题9',2,NULL,NULL,'发布内容9',164,1,'2023-04-28 16:06:15','2023-04-28 16:06:15','2023-04-28 16:06:15'),(10,'帖子标题10',1,NULL,NULL,'发布内容10',14,1,'2023-04-28 16:06:15','2023-04-28 16:06:15','2023-04-28 16:06:15'),(11,'帖子标题11',3,NULL,NULL,'发布内容11',22,1,'2023-04-28 16:06:15','2023-04-28 16:06:15','2023-04-28 16:06:15'),(12,'帖子标题12',1,NULL,NULL,'发布内容12',4,1,'2023-04-28 16:06:15','2023-04-28 16:06:15','2023-04-28 16:06:15'),(13,'帖子标题13',2,NULL,NULL,'发布内容13',207,1,'2023-04-28 16:06:15','2023-04-28 16:06:15','2023-04-28 16:06:15'),(14,'帖子标题14',3,NULL,NULL,'发布内容14',14,1,'2023-04-28 16:06:15','2023-04-28 16:06:15','2023-04-28 16:06:15'),(16,'测试',1,NULL,NULL,'<p>测试</p>',NULL,1,'2023-04-28 16:25:08',NULL,'2023-04-28 16:25:08'),(17,NULL,NULL,1,NULL,'测试',16,2,'2023-04-28 16:27:18',NULL,'2023-04-28 16:27:18'),(18,NULL,NULL,NULL,1,'车阿萨德',16,2,'2023-04-28 16:28:16',NULL,'2023-04-28 16:28:16');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-04-28 16:06:15','公告详情1','2023-04-28 16:06:15'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-04-28 16:06:15','公告详情2','2023-04-28 16:06:15'),(3,'公告名称3','upload/gonggao3.jpg',1,'2023-04-28 16:06:15','公告详情3','2023-04-28 16:06:15'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-04-28 16:06:15','公告详情4','2023-04-28 16:06:15'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-04-28 16:06:15','公告详情5','2023-04-28 16:06:15'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-04-28 16:06:15','公告详情6','2023-04-28 16:06:15'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-04-28 16:06:15','公告详情7','2023-04-28 16:06:15'),(8,'公告名称8','upload/gonggao8.jpg',1,'2023-04-28 16:06:15','公告详情8','2023-04-28 16:06:15'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-04-28 16:06:15','公告详情9','2023-04-28 16:06:15'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-04-28 16:06:15','公告详情10','2023-04-28 16:06:15'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-04-28 16:06:15','公告详情11','2023-04-28 16:06:15'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-04-28 16:06:15','公告详情12','2023-04-28 16:06:15'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-04-28 16:06:15','公告详情13','2023-04-28 16:06:15'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-04-28 16:06:15','公告详情14','2023-04-28 16:06:15');

/*Table structure for table `nongchanpin` */

DROP TABLE IF EXISTS `nongchanpin`;

CREATE TABLE `nongchanpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '商家',
  `nongchanpin_name` varchar(200) DEFAULT NULL COMMENT '农产品名称  Search111 ',
  `nongchanpin_photo` varchar(200) DEFAULT NULL COMMENT '农产品照片',
  `nongchanpin_types` int(11) DEFAULT NULL COMMENT '农产品类型 Search111',
  `nongchanpin_kucun_number` int(11) DEFAULT NULL COMMENT '农产品库存',
  `nongchanpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '农产品原价 ',
  `nongchanpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `nongchanpin_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `nongchanpin_content` text COMMENT '农产品介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `nongchanpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='农产品';

/*Data for the table `nongchanpin` */

insert  into `nongchanpin`(`id`,`shangjia_id`,`nongchanpin_name`,`nongchanpin_photo`,`nongchanpin_types`,`nongchanpin_kucun_number`,`nongchanpin_old_money`,`nongchanpin_new_money`,`nongchanpin_clicknum`,`nongchanpin_content`,`shangxia_types`,`nongchanpin_delete`,`create_time`) values (1,3,'农产品名称1','upload/nongchanpin1.jpg',1,101,'691.58','366.22',4,'农产品介绍1',1,1,'2023-04-28 16:06:15'),(2,2,'农产品名称2','upload/nongchanpin2.jpg',3,102,'567.73','119.39',415,'农产品介绍2',1,1,'2023-04-28 16:06:15'),(3,1,'农产品名称3','upload/nongchanpin3.jpg',1,97,'685.36','86.44',386,'农产品介绍3',1,1,'2023-04-28 16:06:15'),(4,1,'农产品名称4','upload/nongchanpin4.jpg',4,104,'514.64','154.26',225,'农产品介绍4',1,1,'2023-04-28 16:06:15'),(5,2,'农产品名称5','upload/nongchanpin5.jpg',3,105,'534.46','219.68',40,'农产品介绍5',1,1,'2023-04-28 16:06:15'),(6,3,'农产品名称6','upload/nongchanpin6.jpg',4,106,'942.49','468.07',383,'农产品介绍6',1,1,'2023-04-28 16:06:15'),(7,3,'农产品名称7','upload/nongchanpin7.jpg',2,107,'663.59','441.83',107,'农产品介绍7',1,1,'2023-04-28 16:06:15'),(8,2,'农产品名称8','upload/nongchanpin8.jpg',4,108,'552.67','216.15',264,'农产品介绍8',1,1,'2023-04-28 16:06:15'),(9,2,'农产品名称9','upload/nongchanpin9.jpg',1,109,'558.69','71.73',355,'农产品介绍9',1,1,'2023-04-28 16:06:15'),(10,1,'农产品名称10','upload/nongchanpin10.jpg',4,1010,'514.54','375.05',240,'农产品介绍10',1,1,'2023-04-28 16:06:15'),(11,3,'农产品名称11','upload/nongchanpin11.jpg',1,1011,'532.79','315.15',191,'农产品介绍11',1,1,'2023-04-28 16:06:15'),(12,2,'农产品名称12','upload/nongchanpin12.jpg',1,1012,'605.65','304.88',274,'农产品介绍12',1,1,'2023-04-28 16:06:15'),(13,3,'农产品名称13','upload/nongchanpin13.jpg',1,1013,'909.70','216.35',472,'农产品介绍13',1,1,'2023-04-28 16:06:15'),(14,3,'农产品名称14','upload/nongchanpin14.jpg',4,1014,'524.58','441.53',414,'农产品介绍14',1,1,'2023-04-28 16:06:15');

/*Table structure for table `nongchanpin_collection` */

DROP TABLE IF EXISTS `nongchanpin_collection`;

CREATE TABLE `nongchanpin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `nongchanpin_id` int(11) DEFAULT NULL COMMENT '农产品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `nongchanpin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='农产品收藏';

/*Data for the table `nongchanpin_collection` */

insert  into `nongchanpin_collection`(`id`,`nongchanpin_id`,`yonghu_id`,`nongchanpin_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-04-28 16:06:15','2023-04-28 16:06:15'),(2,2,1,1,'2023-04-28 16:06:15','2023-04-28 16:06:15'),(3,3,3,1,'2023-04-28 16:06:15','2023-04-28 16:06:15'),(4,4,2,1,'2023-04-28 16:06:15','2023-04-28 16:06:15'),(5,5,3,1,'2023-04-28 16:06:15','2023-04-28 16:06:15'),(6,6,1,1,'2023-04-28 16:06:15','2023-04-28 16:06:15'),(7,7,3,1,'2023-04-28 16:06:15','2023-04-28 16:06:15'),(8,8,3,1,'2023-04-28 16:06:15','2023-04-28 16:06:15'),(9,9,2,1,'2023-04-28 16:06:15','2023-04-28 16:06:15'),(10,10,2,1,'2023-04-28 16:06:15','2023-04-28 16:06:15'),(11,11,3,1,'2023-04-28 16:06:15','2023-04-28 16:06:15'),(12,12,3,1,'2023-04-28 16:06:15','2023-04-28 16:06:15'),(13,13,3,1,'2023-04-28 16:06:15','2023-04-28 16:06:15'),(14,14,1,1,'2023-04-28 16:06:15','2023-04-28 16:06:15');

/*Table structure for table `nongchanpin_commentback` */

DROP TABLE IF EXISTS `nongchanpin_commentback`;

CREATE TABLE `nongchanpin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `nongchanpin_id` int(11) DEFAULT NULL COMMENT '农产品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `nongchanpin_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='农产品评价';

/*Data for the table `nongchanpin_commentback` */

insert  into `nongchanpin_commentback`(`id`,`nongchanpin_id`,`yonghu_id`,`nongchanpin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'评价内容1','2023-04-28 16:06:15','回复信息1','2023-04-28 16:06:15','2023-04-28 16:06:15'),(2,2,1,'评价内容2','2023-04-28 16:06:15','回复信息2','2023-04-28 16:06:15','2023-04-28 16:06:15'),(3,3,2,'评价内容3','2023-04-28 16:06:15','回复信息3','2023-04-28 16:06:15','2023-04-28 16:06:15'),(4,4,3,'评价内容4','2023-04-28 16:06:15','回复信息4','2023-04-28 16:06:15','2023-04-28 16:06:15'),(5,5,1,'评价内容5','2023-04-28 16:06:15','回复信息5','2023-04-28 16:06:15','2023-04-28 16:06:15'),(6,6,3,'评价内容6','2023-04-28 16:06:15','回复信息6','2023-04-28 16:06:15','2023-04-28 16:06:15'),(7,7,3,'评价内容7','2023-04-28 16:06:15','回复信息7','2023-04-28 16:06:15','2023-04-28 16:06:15'),(8,8,3,'评价内容8','2023-04-28 16:06:15','回复信息8','2023-04-28 16:06:15','2023-04-28 16:06:15'),(9,9,1,'评价内容9','2023-04-28 16:06:15','回复信息9','2023-04-28 16:06:15','2023-04-28 16:06:15'),(10,10,1,'评价内容10','2023-04-28 16:06:15','回复信息10','2023-04-28 16:06:15','2023-04-28 16:06:15'),(11,11,2,'评价内容11','2023-04-28 16:06:15','回复信息11','2023-04-28 16:06:15','2023-04-28 16:06:15'),(12,12,1,'评价内容12','2023-04-28 16:06:15','回复信息12','2023-04-28 16:06:15','2023-04-28 16:06:15'),(13,13,3,'评价内容13','2023-04-28 16:06:15','回复信息13','2023-04-28 16:06:15','2023-04-28 16:06:15'),(14,14,1,'评价内容14','2023-04-28 16:06:15','回复信息14','2023-04-28 16:06:15','2023-04-28 16:06:15'),(15,3,1,'sad奥迪撒','2023-04-28 16:26:09','相册sad','2023-04-28 16:26:44','2023-04-28 16:26:09');

/*Table structure for table `nongchanpin_order` */

DROP TABLE IF EXISTS `nongchanpin_order`;

CREATE TABLE `nongchanpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `nongchanpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `address_id` int(11) DEFAULT NULL COMMENT '收获地址 ',
  `nongchanpin_id` int(11) DEFAULT NULL COMMENT '农产品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `nongchanpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `nongchanpin_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `nongchanpin_order_courier_number` varchar(200) DEFAULT NULL COMMENT '订单快递单号',
  `nongchanpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='农产品订单';

/*Data for the table `nongchanpin_order` */

insert  into `nongchanpin_order`(`id`,`nongchanpin_order_uuid_number`,`address_id`,`nongchanpin_id`,`yonghu_id`,`buy_number`,`nongchanpin_order_true_price`,`nongchanpin_order_courier_name`,`nongchanpin_order_courier_number`,`nongchanpin_order_types`,`insert_time`,`create_time`) values (5,'1682670109881',3,3,1,2,'172.88','123','3321',105,'2023-04-28 16:21:50','2023-04-28 16:21:50'),(6,'1682670332670',7,3,1,1,'86.44',NULL,NULL,101,'2023-04-28 16:25:33','2023-04-28 16:25:33'),(7,'1682670349554',10,3,1,3,'259.32','阿萨德sad','sadsad是',104,'2023-04-28 16:25:50','2023-04-28 16:25:50');

/*Table structure for table `shangjia` */

DROP TABLE IF EXISTS `shangjia`;

CREATE TABLE `shangjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `shangjia_name` varchar(200) DEFAULT NULL COMMENT '商家名称 Search111 ',
  `shangjia_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangjia_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shangjia_photo` varchar(200) DEFAULT NULL COMMENT '营业执照展示 ',
  `shangjia_xingji_types` int(11) DEFAULT NULL COMMENT '商家信用类型',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '现有余额',
  `shangjia_content` longtext COMMENT '商家介绍 ',
  `shangjia_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商家';

/*Data for the table `shangjia` */

insert  into `shangjia`(`id`,`username`,`password`,`shangjia_name`,`shangjia_phone`,`shangjia_email`,`shangjia_photo`,`shangjia_xingji_types`,`new_money`,`shangjia_content`,`shangjia_delete`,`create_time`) values (1,'a1','123456','商家名称1','17703786901','1@qq.com','upload/shangjia1.jpg',1,'749.99','商家介绍1',1,'2023-04-28 16:06:15'),(2,'a2','123456','商家名称2','17703786902','2@qq.com','upload/shangjia2.jpg',1,'859.03','商家介绍2',1,'2023-04-28 16:06:15'),(3,'a3','123456','商家名称3','17703786903','3@qq.com','upload/shangjia3.jpg',1,'568.56','商家介绍3',1,'2023-04-28 16:06:15');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','1rppvvt59w2jjwg9znbzfp08b4n0wvt7','2023-04-28 16:10:37','2023-04-28 17:24:39'),(2,1,'admin','users','管理员','0zbyzq1l2ssk080xpwlrz00copwy481n','2023-04-28 16:15:44','2023-04-28 17:27:33'),(3,1,'a1','shangjia','商家','zdr8gd1jd4pzrrzum2x4yy3dofrgzxhd','2023-04-28 16:21:24','2023-04-28 17:26:19');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-28 16:06:01');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_uuid_number`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','1682669175619','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com','368.59','2023-04-28 16:06:15'),(2,'a2','123456','1682669175553','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','85.44','2023-04-28 16:06:15'),(3,'a3','123456','1682669175558','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com','351.63','2023-04-28 16:06:15');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
