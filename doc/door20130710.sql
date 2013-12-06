/*
SQLyog Enterprise - MySQL GUI v6.0
Host - 5.5.19 : Database - door
*********************************************************************
Server version : 5.5.19
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `door`;

USE `door`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `app_dict` */

DROP TABLE IF EXISTS `app_dict`;

CREATE TABLE `app_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(100) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `pinyin` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

/*Data for the table `app_dict` */

insert  into `app_dict`(`id`,`key`,`value`,`type`,`pinyin`) values (1,'article.state.normal','普通','article.state','putong'),(2,'article.state.recommand','推荐','article.state','tuijian'),(3,'article.state.top','置顶','article.state','zhiding'),(4,'ascii','ACSII码','regex','acsii'),(10,'boolean.false','否','boolean','fou'),(11,'boolean.true','是','boolean','shi'),(20,'chinese','中文','regex','zhengwen'),(24,'content.mode.more','多项','content.mode','duoxiang'),(25,'content.mode.none','空项','content.mode','kongxiang'),(26,'content.mode.one','单项','content.mode','danxiang'),(28,'decmal','浮点数','regex','fudianshu'),(29,'email','邮箱','regex','youxiang'),(39,'id','标识','regex','biaoshi'),(40,'idcard','身份证','regex','shenfenzheng'),(41,'integer','整数','regex','zhengshu'),(42,'letter','字母','regex','zimu'),(43,'loginId','登录标识','regex','denglubiaoshi'),(46,'node.condition.auth','权限','node.condition.model','qanxian'),(47,'node.condition.auth.department','组织机构','node.condition.auth','bumen'),(48,'node.condition.auth.role','角色','node.condition.auth','juese'),(49,'node.condition.auth.user','用户','node.condition.auth','yonghu'),(53,'notempty','非空','regex','feikong'),(54,'number','数字','regex','shuzi'),(55,'phone','手机电话','regex','shouji'),(56,'picture','图片','regex','tupian'),(57,'qq','QQ号','regex','qq'),(58,'rar','压缩文件','regex','yasuowenjian'),(59,'tel','座机电话','regex','zuoji'),(60,'url','URL','regex','url'),(61,'visible.false','隐藏','visible','yinchang'),(62,'visible.true','显示','visible','xianshi'),(63,'zipcode','邮编','regex','youbian'),(64,'只读','只读','node.state','zhidu'),(65,'必填','必填','node.state','bitian'),(66,'选填','选填','node.state','xuantian'),(67,'隐藏','隐藏','node.state','yincang'),(95,'女','女','gender','nv'),(96,'男','男','gender','nan'),(97,'是','是','easyboolean','shi'),(98,'否','否','easyboolean','fou'),(99,'message.state.false','未回复','message.state','weihuifu'),(100,'message.state.true','已回复','message.state','yihuifu');

/*Table structure for table `app_resources` */

DROP TABLE IF EXISTS `app_resources`;

CREATE TABLE `app_resources` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `path` varchar(100) DEFAULT NULL,
  `parentId` varchar(100) DEFAULT NULL,
  `sort` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

/*Data for the table `app_resources` */

insert  into `app_resources`(`id`,`name`,`path`,`parentId`,`sort`) values ('auth','管理权限',NULL,NULL,1),('auth.user','管理用户','/app/auth/user/showUsers.jsp','auth',2),('auth.role','管理角色','/app/auth/role/showRoles.jsp','auth',3),('auth.resource','管理资源','/app/auth/resource/showResources.jsp','auth',4),('configuration','管理基础配置','',NULL,6),('configuration.dict','管理数据字典','/app/system/dict/showDicts.jsp','configuration',7),('website','管理网站','',NULL,8),('website.content','管理目录','/app/website/content/show.jsp','website',14),('website.article','管理文章','/app/website/article/show.jsp','website',32),('auth.change.password','修改密码','/app/auth/user/changePassword.jsp',NULL,57),('website.message','管理留言','/app/website/message/show.jsp','website',103),('website.door','管理文章','/app/website/admin/main.jsp?cid=door','website',104),('website.doorproduct','管理产品','/app/website/admin/main.jsp?cid=geneonproduct','website',105),('website.doorhtml','管理代码','/app/website/admin/main.jsp?cid=doorhtml','website',106),('website.recommend','管理推荐木门','/app/website/recommend/show.jsp','website',107);

/*Table structure for table `auth_re_role_resource` */

DROP TABLE IF EXISTS `auth_re_role_resource`;

CREATE TABLE `auth_re_role_resource` (
  `roleId` int(100) NOT NULL,
  `resourceId` varchar(100) CHARACTER SET gb2312 NOT NULL DEFAULT '',
  PRIMARY KEY (`roleId`,`resourceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_re_role_resource` */

insert  into `auth_re_role_resource`(`roleId`,`resourceId`) values (1,'auth.change.password'),(1,'website'),(1,'website.content'),(1,'website.geneon'),(1,'website.geneonproduct'),(1,'website.message'),(5,'auth'),(5,'auth.change.password'),(5,'auth.resource'),(5,'auth.role'),(5,'auth.user'),(5,'configuration'),(5,'configuration.dict'),(5,'website'),(5,'website.content'),(5,'website.geneon'),(5,'website.geneonhtml'),(5,'website.geneonproduct'),(5,'website.message');

/*Table structure for table `auth_re_user_resource` */

DROP TABLE IF EXISTS `auth_re_user_resource`;

CREATE TABLE `auth_re_user_resource` (
  `userId` varchar(100) NOT NULL,
  `resourceId` varchar(100) NOT NULL,
  PRIMARY KEY (`userId`,`resourceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_re_user_resource` */

insert  into `auth_re_user_resource`(`userId`,`resourceId`) values ('system','auth'),('system','auth.change.password'),('system','auth.resource'),('system','auth.role'),('system','auth.user'),('system','configuration'),('system','configuration.dict'),('system','website'),('system','website.content'),('system','website.door'),('system','website.doorhtml'),('system','website.doorproduct'),('system','website.message'),('system','website.recommend');

/*Table structure for table `auth_re_user_role` */

DROP TABLE IF EXISTS `auth_re_user_role`;

CREATE TABLE `auth_re_user_role` (
  `userId` varchar(100) CHARACTER SET gb2312 NOT NULL,
  `roleId` int(100) NOT NULL,
  PRIMARY KEY (`userId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_re_user_role` */

insert  into `auth_re_user_role`(`userId`,`roleId`) values ('admin',1),('system',5);

/*Table structure for table `auth_roles` */

DROP TABLE IF EXISTS `auth_roles`;

CREATE TABLE `auth_roles` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `auth_roles` */

insert  into `auth_roles`(`id`,`name`,`description`) values (1,'管理员','拥有网站维护权限'),(5,'系统维护员','开发人员专用');

/*Table structure for table `auth_users` */

DROP TABLE IF EXISTS `auth_users`;

CREATE TABLE `auth_users` (
  `Id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `id` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_users` */

insert  into `auth_users`(`Id`,`name`,`password`,`email`,`phone`) values ('admin','管理员','lueSGJZetyySpUndWjMBEg==','',''),('system','开发维护员','lueSGJZetyySpUndWjMBEg==','','');

/*Table structure for table `web_article` */

DROP TABLE IF EXISTS `web_article`;

CREATE TABLE `web_article` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `cid` varchar(100) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `text` varchar(20000) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `typeName` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `stateName` varchar(100) DEFAULT NULL,
  `count` int(11) DEFAULT '0',
  `createTime` datetime DEFAULT NULL,
  `operater` varchar(100) DEFAULT NULL,
  `operaterName` varchar(100) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `sort` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=483 DEFAULT CHARSET=utf8;

/*Data for the table `web_article` */

insert  into `web_article`(`id`,`cid`,`title`,`text`,`type`,`typeName`,`state`,`stateName`,`count`,`createTime`,`operater`,`operaterName`,`image`,`sort`) values (419,'geneon.about','公司简介','<p style=\"text-indent:2em;\">\r\n	<span style=\"line-height:2;color:#003399;\">长春市志昂生物科技有限公司</span><span style=\"line-height:2;\">（简称志昂生物）坐落于吉林省长春市高新区，是一家集研发、生产、销售、服务为一体的专业化生物技术公司。公司前身为长春市博坤生物科技有限公司（简称博坤生物）的生命科学部。2012年5月，博坤生物进行业务拆分，博坤生物专注于公安法检领域，新成立的志昂生物从事公安法检以外的生命科学领域。</span> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	&nbsp;<span style=\"line-height:2;\">公司拥有雄厚的技术力量和科技实力，研发团队中具有博士学位者占50%以上。公司具备独立的研发体系和较强的研发能力，目前已成功研发具有国际先进水平的磁珠法核酸提取试剂盒数十种，包括全血、血浆、植物、动物、昆虫、病毒等核酸提取试剂盒。公司在重视产品质量的同时，结合客户需求，提供个性化的手工及自动化解决方案，以及全方位的技术支持和服务。</span> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	&nbsp;<span style=\"line-height:2;\">志昂生物敢为人先，引领市场，秉承“产品关键，服务至上”的理念，愿与各界同仁携手合作，共创辉煌！</span> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	&nbsp;\r\n</p>','article.state.normal','普通','visible.true','显示',0,'2012-11-26 22:31:55','admin','管理员','',NULL),(454,'geneonhtml.banner','广告位','imgUrl1=\"/geneon/attached/image/20121128/20121128105038_649.jpg\";\r\nimgtext1=\"#\"\r\nimgLink1=escape(\"#\");\r\nimgUrl2=\"/geneon/attached/image/20121128/20121128105101_434.jpg\";\r\nimgtext2=\"#\"\r\nimgLink2=escape(\"#\");\r\nimgUrl3=\"/geneon/attached/image/20121128/20121128105045_671.jpg\";\r\nimgtext3=\"#\"\r\nimgLink3=escape(\"#\");\r\nimgUrl4=\"/geneon/attached/image/20121128/20121128105109_827.jpg\";\r\nimgtext4=\"#\"\r\nimgLink4=escape(\"#\");\r\nimgUrl5=\"/geneon/attached/image/20121128/20121128104955_653.jpg\";\r\nimgtext5=\"#\"\r\nimgLink5=escape(\"#\");\r\n var focus_width=1003;\r\n var focus_height=270;\r\n var text_height=0;\r\n var swf_height = focus_height+text_height;\r\n var pics=imgUrl1+\"|\"+imgUrl2+\"|\"+imgUrl3+\"|\"+imgUrl4+\"|\"+imgUrl5;\r\n var links=imgLink1+\"|\"+imgLink2+\"|\"+imgLink3+\"|\"+imgLink4+\"|\"+imgLink5;\r\n var texts=imgtext1+\"|\"+imgtext2+\"|\"+imgtext3+\"|\"+imgtext4+\"|\"+imgtext5;\r\n','article.state.normal','普通','visible.true','显示',0,'2012-11-27 23:51:50','system','开发维护员','',NULL),(455,'geneonhtml.cntact','推荐解决方案','<div class=\"part\">\r\n<div class=\"parta\">\r\n  <h1>推荐解决方案</h1>\r\n</div>\r\n  <div class=\"partb\">\r\n  	<div class=\"qh\">\r\n  	  <object id=\"FlashID2\" classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" width=\"266\" height=\"223\">\r\n  	    <param name=\"movie\" value=\"flash/bh.swf\" />\r\n  	    <param name=\"quality\" value=\"high\" />\r\n  	    <param name=\"wmode\" value=\"opaque\" />\r\n  	    <param name=\"swfversion\" value=\"6.0.65.0\" />\r\n  	    <!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->\r\n  	    <param name=\"expressinstall\" value=\"Scripts/expressInstall.swf\" />\r\n  	    <!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->\r\n  	    <!--[if !IE]>-->\r\n  	    <object type=\"application/x-shockwave-flash\" data=\"flash/bh.swf\" width=\"266\" height=\"223\">\r\n  	      <!--<![endif]-->\r\n  	      <param name=\"quality\" value=\"high\" />\r\n  	      <param name=\"wmode\" value=\"opaque\" />\r\n  	      <param name=\"swfversion\" value=\"6.0.65.0\" />\r\n  	      <param name=\"expressinstall\" value=\"Scripts/expressInstall.swf\" />\r\n  	      <!-- 浏览器将以下替代内容显示给使用 Flash Player 6.0 和更低版本的用户。 -->\r\n  	      <div>\r\n  	        <h4>此页面上的内容需要较新版本的 Adobe Flash Player。</h4>\r\n  	        <p><a href=\"http://www.adobe.com/go/getflashplayer\"><img src=\"http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif\" alt=\"获取 Adobe Flash Player\" width=\"112\" height=\"33\" /></a></p>\r\n	        </div>\r\n  	      <!--[if !IE]>-->\r\n	      </object>\r\n  	    <!--<![endif]-->\r\n	    </object>\r\n  	</div>\r\n      <div class=\"pc\"><img src=\"images/jqr.jpg\" width=\"266\" height=\"202\" /></div>\r\n      <div class=\"clear\"></div>\r\n  </div>\r\n  <div class=\"clear\"></div>\r\n  </div>','article.state.normal','普通','visible.true','显示',0,'2012-11-27 23:52:48','system','开发维护员','',NULL),(456,'geneonhtml.contactme','联系我们','<div class=\"part\">\r\n	<div class=\"parta\">\r\n		<h1>\r\n			联系我们\r\n		</h1>\r\n	</div>\r\n	<div class=\"partb\">\r\n		<div class=\"contant\">\r\n			<h2>\r\n				东北木门网\r\n			</h2>\r\n			<h2>\r\n				高新区锦湖大路1357号5楼516室\r\n			</h2>\r\n			<div class=\"lxfs\">\r\n				<p>\r\n					0431-89251663\r\n				</p>\r\n				<p>\r\n					0431-89251665\r\n				</p>\r\n				<p>\r\n					info@geneonbio.com\r\n				</p>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div class=\"clear\">\r\n	</div>\r\n</div>','article.state.normal','普通','visible.true','显示',0,'2012-11-27 23:53:14','system','开发维护员','',NULL),(457,'geneonhtml.foot','页尾','<p>\r\n	Copyright© 2012长春市志昂生的科技有限公司 All Rights Reseived\r\n</p>\r\n<p>\r\n	地址：高新区锦湖大路1357号5楼516室\r\n</p>\r\n<p>\r\n	网站备案:吉ICP备00000008</p>','article.state.normal','普通','visible.true','显示',0,'2012-11-27 23:53:43','system','开发维护员','',NULL),(458,'geneon.new','sdf','sd','article.state.normal','普通','visible.true','显示',0,'2012-11-28 09:11:06','system','开发维护员','',NULL),(459,'geneonproduct.chanpin1.chanpin15','病毒DNA/RNA磁珠法提取产品','<p align=\"center\">\r\n	<img alt=\"\" src=\"/geneon/attached/image/20121128/20121128130817_152.jpg\" />\r\n</p>\r\n<p align=\"center\">\r\n	&nbsp;\r\n</p>\r\n<hr style=\"page-break-after:always;\" class=\"ke-pagebreak\" />\r\n<p align=\"center\">\r\n	&nbsp;\r\n</p>\r\n<img alt=\"\" src=\"/geneon/attached/image/20121128/20121128130834_656.jpg\" /> \r\n<p>\r\n	&nbsp;\r\n</p>\r\n<hr style=\"page-break-after:always;\" class=\"ke-pagebreak\" />\r\n<img alt=\"\" src=\"/geneon/attached/image/20121128/20121128130847_914.jpg\" /> \r\n<p>\r\n	&nbsp;\r\n</p>','article.state.normal','普通','visible.true','显示',0,'2012-11-28 10:41:21','admin','管理员','/geneon/attached/appCar/20121128/20121128130713_296.jpg',NULL),(460,'geneonproduct.chanpin1.chanpin11','血液DNARNA磁珠法提取产品','<p align=\"center\">\r\n	<img alt=\"\" src=\"/geneon/attached/image/20121128/20121128124920_903.jpg\" /> \r\n</p>\r\n<hr style=\"page-break-after:always;\" class=\"ke-pagebreak\" />\r\n<p align=\"center\">\r\n	<img alt=\"\" src=\"/geneon/attached/image/20121128/20121128125026_702.jpg\" /> \r\n</p>\r\n<hr style=\"page-break-after:always;\" class=\"ke-pagebreak\" />\r\n<p align=\"center\">\r\n	<img alt=\"\" src=\"/geneon/attached/image/20121128/20121128125042_145.jpg\" /> \r\n</p>\r\n<p align=\"center\">\r\n	&nbsp;\r\n</p>','article.state.normal','普通','visible.true','显示',0,'2012-11-28 12:46:47','admin','管理员','/geneon/attached/appCar/20121128/20121128124734_502.jpg',NULL),(461,'geneonproduct.chanpin1.chanpin12','动物组织和培养细胞DNARNA磁珠法提取产品','<p align=\"center\">\r\n	<img alt=\"\" src=\"/geneon/attached/image/20121128/20121128125812_262.jpg\" /> \r\n</p>\r\n<hr style=\"page-break-after:always;\" class=\"ke-pagebreak\" />\r\n<p align=\"center\">\r\n	<img alt=\"\" src=\"/geneon/attached/image/20121128/20121128125843_391.jpg\" /> \r\n</p>\r\n<p align=\"center\">\r\n	&nbsp;\r\n</p>\r\n<hr style=\"page-break-after:always;\" class=\"ke-pagebreak\" />\r\n<p>\r\n	<img alt=\"\" src=\"/geneon/attached/image/20121128/20121128125902_244.jpg\" /> \r\n</p>\r\n<p align=\"center\">\r\n	&nbsp;\r\n</p>','article.state.normal','普通','visible.true','显示',0,'2012-11-28 12:52:34','admin','管理员','/geneon/attached/appCar/20121128/20121128125302_771.jpg',NULL),(462,'geneonproduct.chanpin1.chanpin13','植物DNA/RNA磁珠法提取产品','<p align=\"center\">\r\n	<img alt=\"\" src=\"/geneon/attached/image/20121128/20121128130047_364.jpg\" />\r\n</p>\r\n<hr style=\"page-break-after:always;\" class=\"ke-pagebreak\" />\r\n<p align=\"center\">\r\n	<img alt=\"\" src=\"/geneon/attached/image/20121128/20121128130108_707.jpg\" />\r\n</p>\r\n<p align=\"center\">\r\n	&nbsp;\r\n</p>\r\n<hr style=\"page-break-after:always;\" class=\"ke-pagebreak\" />\r\n<p align=\"center\">\r\n	<img alt=\"\" src=\"/geneon/attached/image/20121128/20121128130132_7.jpg\" />\r\n</p>\r\n&nbsp;\r\n<p>\r\n	&nbsp;\r\n</p>','article.state.normal','普通','visible.true','显示',0,'2012-11-28 12:59:47','admin','管理员','/geneon/attached/appCar/20121128/20121128130027_886.jpg',NULL),(463,'geneonproduct.chanpin1.chanpin14','磁珠法DNA片段回收纯化产品','<p align=\"center\">\r\n	<img alt=\"\" src=\"/geneon/attached/image/20121128/20121128130239_141.jpg\" />\r\n</p>\r\n<hr style=\"page-break-after:always;\" class=\"ke-pagebreak\" />\r\n<p>\r\n	<img alt=\"\" src=\"/geneon/attached/image/20121128/20121128130305_902.jpg\" />\r\n</p>\r\n<hr style=\"page-break-after:always;\" class=\"ke-pagebreak\" />\r\n<img alt=\"\" src=\"/geneon/attached/image/20121128/20121128130320_27.jpg\" /> \r\n<p align=\"center\">\r\n	&nbsp;\r\n</p>','article.state.normal','普通','visible.true','显示',0,'2012-11-28 13:02:00','admin','管理员','/geneon/attached/appCar/20121128/20121128130226_132.jpg',NULL),(464,'geneon.contact','联系我们','<p>\r\n	<span style=\"font-size:16px;\"><strong></strong></span>&nbsp;\r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;font-size:16px;\"><strong>　　　　　　　　　长春市志昂生物科技有限公司 </strong></span>\r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;\">　　　　　　　　　地址：高新区锦湖大路1357号5楼516室</span>\r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;\">　　　　　　　　　电话：0431-89251663</span>\r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;\">　　　　　　　　　传真：0431-89251665</span>\r\n</p>\r\n<p>\r\n	<span style=\"line-height:2;\">　　　　　　　　　E-mail:&nbsp;&nbsp;info@geneonbio.com&nbsp;</span>\r\n</p>','article.state.normal','普通','visible.true','显示',0,'2012-11-28 13:14:14','admin','管理员','',NULL),(465,'door.notice','行业公告标题','<p>\r\n	第一条行业公告信息\r\n</p>','article.state.normal','普通','visible.true','显示',0,'2013-06-30 22:25:01','system','开发维护员','',NULL),(467,'doorhtml.foot','页尾','<table class=\"ke-zeroborder\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center;line-height:32px;color:#b20505;\">\r\n				版权所有 ©中国木门网 友情提示：多咨询、多打电话、多考察，可降低投资风险。经调查显示：90%以上的木门加盟商加盟前都进行过留言咨询1。\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<table class=\"ke-zeroborder\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n					<tbody>\r\n						<tr>\r\n							<td width=\"20%\">\r\n								&nbsp;\r\n							</td>\r\n							<td style=\"line-height:26px;\" width=\"53%\">\r\n								客服电话：010-52493733 010-80542312 传真：010-80542312 7x24服务QQ:295912282\r\n							</td>\r\n							<td rowspan=\"2\" width=\"27%\">\r\n								<img src=\"images/icp.jpg\" width=\"32\" height=\"36\" /> \r\n							</td>\r\n						</tr>\r\n						<tr>\r\n							<td>\r\n								&nbsp;\r\n							</td>\r\n							<td style=\"line-height:26px;\">\r\n								京ICP备11025554号 东北木门网 www.dbmmw.com 版权所有 All Rights Reserved.\r\n							</td>\r\n						</tr>\r\n					</tbody>\r\n				</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"color:#b20505;\" align=\"middle\">\r\n				累计访问量：\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>','article.state.normal','普通','visible.true','显示',0,'2013-06-30 22:56:40','system','开发维护员','',NULL),(468,'door.notice','q','1','article.state.normal','普通','visible.true','显示',0,'2013-07-09 14:52:04','system','开发维护员','',1),(469,'door.notice','3','3','article.state.normal','普通','visible.true','显示',0,'2013-07-09 14:58:16','system','开发维护员','',2),(470,'door.notice','1肇东市玛歌木业有限公司（玛歌木门）入驻中国木门网','<a href=\"#\">肇东市玛歌木业有限公司（玛歌木门）入驻中国木门网</a>','article.state.normal','普通','visible.true','显示',0,'2013-07-09 14:58:37','system','开发维护员','',3),(471,'door.notice','2肇东市玛歌木业有限公司（玛歌木门）入驻中国木门网','<a href=\"#\">肇东市玛歌木业有限公司（玛歌木门）入驻中国木门网</a>','article.state.normal','普通','visible.true','显示',0,'2013-07-09 14:58:43','system','开发维护员','',4),(472,'door.notice','3肇东市玛歌木业有限公司（玛歌木门）入驻中国木门网','<a href=\"#\">肇东市玛歌木业有限公司（玛歌木门）入驻中国木门网</a>','article.state.normal','普通','visible.true','显示',0,'2013-07-09 14:58:49','system','开发维护员','',5),(473,'door.notice','4肇东市玛歌木业有限公司（玛歌木门）入驻中国木门网','<a href=\"#\">肇东市玛歌木业有限公司（玛歌木门）入驻中国木门网</a>','article.state.normal','普通','visible.true','显示',0,'2013-07-09 14:58:49','system','开发维护员','',6),(474,'door.notice','5肇东市玛歌木业有限公司（玛歌木门）入驻中国木门网','<a href=\"#\">肇东市玛歌木业有限公司（玛歌木门）入驻中国木门网</a>','article.state.normal','普通','visible.true','显示',0,'2013-07-09 14:58:49','system','开发维护员','',7),(475,'door.notice','6肇东市玛歌木业有限公司（玛歌木门）入驻中国木门网','<a href=\"#\">肇东市玛歌木业有限公司（玛歌木门）入驻中国木门网</a>','article.state.normal','普通','visible.true','显示',0,'2013-07-09 14:58:49','system','开发维护员','',8),(476,'door.notice','7肇东市玛歌木业有限公司（玛歌木门）入驻中国木门网','<a href=\"#\">肇东市玛歌木业有限公司（玛歌木门）入驻中国木门网</a>','article.state.normal','普通','visible.true','显示',0,'2013-07-09 14:58:49','system','开发维护员','',9),(477,'door.notice','8肇东市玛歌木业有限公司（玛歌木门）入驻中国木门网','<a href=\"#\">肇东市玛歌木业有限公司（玛歌木门）入驻中国木门网</a>','article.state.normal','普通','visible.true','显示',0,'2013-07-09 14:58:49','system','开发维护员','',10),(478,'door.notice','9肇东市玛歌木业有限公司（玛歌木门）入驻中国木门网','<a href=\"#\">肇东市玛歌木业有限公司（玛歌木门）入驻中国木门网</a>','article.state.normal','普通','visible.true','显示',0,'2013-07-09 14:58:49','system','开发维护员','',11),(479,'door.notice','10肇东市玛歌木业有限公司（玛歌木门）入驻中国木门网','<a href=\"#\">肇东市玛歌木业有限公司（玛歌木门）入驻中国木门网</a>','article.state.normal','普通','visible.true','显示',0,'2013-07-09 14:58:49','system','开发维护员','',12),(480,'door.notice','11肇东市玛歌木业有限公司（玛歌木门）入驻中国木门网','<a href=\"#\">肇东市玛歌木业有限公司（玛歌木门）入驻中国木门网</a>','article.state.normal','普通','visible.true','显示',0,'2013-07-09 14:58:49','system','开发维护员','',13),(481,'door.notice','12肇东市玛歌木业有限公司（玛歌木门）入驻中国木门网','<a href=\"#\">肇东市玛歌木业有限公司（玛歌木门）入驻中国木门网</a>','article.state.normal','普通','visible.true','显示',0,'2013-07-09 14:58:49','system','开发维护员','',14),(482,'door.people','aaaaa','aaaaa','article.state.normal','普通','visible.true','显示',0,'2013-07-10 08:11:50','system','开发维护员','',15);

/*Table structure for table `web_content` */

DROP TABLE IF EXISTS `web_content`;

CREATE TABLE `web_content` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `english` varchar(100) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `parentId` varchar(100) DEFAULT NULL,
  `sort` int(11) NOT NULL AUTO_INCREMENT,
  `hasShow` varchar(100) DEFAULT NULL,
  `hasShowName` varchar(100) DEFAULT NULL,
  `mode` varchar(100) DEFAULT 'content.mode.one',
  `modeName` varchar(100) DEFAULT '单一',
  PRIMARY KEY (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=480 DEFAULT CHARSET=utf8;

/*Data for the table `web_content` */

insert  into `web_content`(`id`,`name`,`english`,`path`,`parentId`,`sort`,`hasShow`,`hasShowName`,`mode`,`modeName`) values ('doorhtml','管理代码','Dai Ma','',NULL,458,'visible.true','显示','content.mode.none','空项'),('doorhtml.banner','广告位','Banner','','doorhtml',459,'visible.true','显示','content.mode.one','单项'),('doorhtml.contact','推荐解决方案','Cntact','','doorhtml',460,'visible.true','显示','content.mode.one','单项'),('doorhtml.contactme','联系我们','Contactme','','doorhtml',461,'visible.true','显示','content.mode.one','单项'),('doorhtml.foot','页尾','Foot','','doorhtml',462,'visible.true','显示','content.mode.one','单项'),('door','东北木门网','mumen','',NULL,463,'visible.true','显示','content.mode.none','空项'),('door.index','首页','Home','index.jsp','door',464,'visible.true','显示','content.mode.none','空项'),('door.notice','协会公告','Notice','list.jsp','door',465,'visible.true','显示','content.mode.more','多项'),('door.hot','行业热点','Hot','list.jsp','door',466,'visible.true','显示','content.mode.more','多项'),('door.people','人物','people','list.jsp','door',467,'visible.true','显示','content.mode.more','多项'),('door.zthd','专题活动','subject','list.jsp','door',468,'visible.true','显示','content.mode.more','多项'),('door.vip','会员展示','VIP','list.jsp','door',469,'visible.true','显示','content.mode.more','多项'),('door.download','下载中心','DownLoad','list.jsp','door',470,'visible.true','显示','content.mode.more','多项'),('door.mmzs','木门知识','knowledge','list.jsp','door',471,'visible.true','显示','content.mode.more','多项'),('door.qydt','企业动态','dynamic','list.jsp','door',472,'visible.true','显示','content.mode.more','多项'),('door.zhxx','展会信息','exhibition','list.jsp','door',473,'visible.true','显示','content.mode.more','多项'),('door.zsjm','招商加盟','Join','list.jsp','door',474,'visible.true','显示','content.mode.more','多项'),('door.zjk','专家库','expert','list.jsp','door',475,'visible.true','显示','content.mode.more','多项'),('door.gyjs','工艺技术','technology','list.jsp','door',476,'visible.true','显示','content.mode.more','多项'),('door.qygq','企业供求','supply','list.jsp','door',477,'visible.true','显示','content.mode.more','多项'),('door.xgqy','相关企业','relate','list.jsp','door',478,'visible.true','显示','content.mode.more','多项'),('door.link','友情链接','link','list.jsp','door',479,'visible.true','显示','content.mode.more','多项');

/*Table structure for table `web_message` */

DROP TABLE IF EXISTS `web_message`;

CREATE TABLE `web_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `stateName` varchar(100) DEFAULT NULL,
  `hasShow` varchar(100) DEFAULT NULL,
  `hasShowName` varchar(100) DEFAULT NULL,
  `sendTime` datetime DEFAULT NULL,
  `sendText` varchar(1000) DEFAULT NULL,
  `sendEmail` varchar(100) DEFAULT NULL,
  `sendPhone` varchar(100) DEFAULT NULL,
  `sendName` varchar(100) DEFAULT NULL,
  `receiveTime` varchar(100) DEFAULT NULL,
  `receiveText` varchar(1000) DEFAULT NULL,
  `receiveOperater` varchar(100) DEFAULT NULL,
  `receiveOperaterName` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `web_message` */

/*Table structure for table `web_recommend` */

DROP TABLE IF EXISTS `web_recommend`;

CREATE TABLE `web_recommend` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `brand` varchar(100) DEFAULT NULL,
  `series` varchar(100) DEFAULT NULL,
  `style` varchar(100) DEFAULT NULL,
  `face` varchar(100) DEFAULT NULL,
  `createtime` varchar(100) DEFAULT NULL,
  `level` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `typename` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `statename` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `web_recommend` */

insert  into `web_recommend`(`id`,`brand`,`series`,`style`,`face`,`createtime`,`level`,`type`,`typename`,`state`,`statename`) values (1,'qwe','123','123','123','2013-07-07 21:55:50','1','article.state.normal','普通','visible.true','显示');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
