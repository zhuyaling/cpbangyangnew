/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : hthr

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2019-12-18 11:33:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for control
-- ----------------------------
DROP TABLE IF EXISTS `control`;
CREATE TABLE `control` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `user_type` varchar(20) NOT NULL,
  `voter_wxid` varchar(255) NOT NULL,
  `voter_wxname` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `ip` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of control
-- ----------------------------
INSERT INTO `control` VALUES ('1', '1', '', 'oN7utt_UGckQ72qqgu8kycVkSN1s', '李小沫', '2019-12-04', '00:00:06', '117.155.14.130');
INSERT INTO `control` VALUES ('2', '1', '', 'oN7utt_UGckQ72qqgu8kycVkSN1s', '李小沫', '2019-12-04', '00:00:17', '117.155.14.130');
INSERT INTO `control` VALUES ('10', '1', '', 'oN7utt_UGckQ72qqgu8kycVkSN1s', '李小沫', '2019-12-04', '00:00:37', '117.155.14.130');
INSERT INTO `control` VALUES ('21', '1', '', 'oN7utt0p5b6W8xcniJ9tWa8-qgWU', '晨夜将逝', '2019-12-04', '14:58:57', '123.151.76.248');
INSERT INTO `control` VALUES ('22', '1', '', 'oN7utt0p5b6W8xcniJ9tWa8-qgWU', '晨夜将逝', '2019-12-04', '14:59:01', '220.194.106.92');
INSERT INTO `control` VALUES ('23', '1', '', 'oN7utt0p5b6W8xcniJ9tWa8-qgWU', '晨夜将逝', '2019-12-04', '14:59:01', '220.194.106.92');
INSERT INTO `control` VALUES ('24', '1', '', 'oN7utt0p5b6W8xcniJ9tWa8-qgWU', '晨夜将逝', '2019-12-04', '14:59:01', '220.194.106.92');
INSERT INTO `control` VALUES ('25', '1', '', 'oN7utt0p5b6W8xcniJ9tWa8-qgWU', '晨夜将逝', '2019-12-04', '14:59:08', '123.151.76.248');
INSERT INTO `control` VALUES ('26', '1', '', 'oN7utt0p5b6W8xcniJ9tWa8-qgWU', '晨夜将逝', '2019-12-04', '14:59:10', '123.151.76.248');
INSERT INTO `control` VALUES ('27', '1', '', 'oN7utt0p5b6W8xcniJ9tWa8-qgWU', '晨夜将逝', '2019-12-04', '14:59:12', '220.194.106.92');
INSERT INTO `control` VALUES ('28', '1', '', 'oN7utt0p5b6W8xcniJ9tWa8-qgWU', '晨夜将逝', '2019-12-04', '14:59:12', '123.151.76.248');
INSERT INTO `control` VALUES ('29', '1', '', 'oN7utt0p5b6W8xcniJ9tWa8-qgWU', '晨夜将逝', '2019-12-04', '15:03:34', '220.194.106.92');
INSERT INTO `control` VALUES ('30', '1', '', 'oN7utt0p5b6W8xcniJ9tWa8-qgWU', '晨夜将逝', '2019-12-04', '15:03:37', '220.194.106.92');
INSERT INTO `control` VALUES ('31', '1', '', 'oN7utt8NfapnHsTVovI0eUJ7RBsw', '森海', '2019-12-04', '15:31:40', '58.30.130.144');
INSERT INTO `control` VALUES ('32', '1', '', 'oN7utt8NfapnHsTVovI0eUJ7RBsw', '森海', '2019-12-04', '15:31:42', '58.30.130.144');
INSERT INTO `control` VALUES ('33', '1', '', 'oN7utt8NfapnHsTVovI0eUJ7RBsw', '森海', '2019-12-04', '15:31:44', '58.30.130.144');
INSERT INTO `control` VALUES ('34', '1', '', 'oN7utt8NfapnHsTVovI0eUJ7RBsw', '森海', '2019-12-04', '15:31:46', '58.30.130.144');
INSERT INTO `control` VALUES ('35', '1', '', 'oN7utt9d40ouEI4a_VYSkP4ORz4c', '高瑜爽', '2019-12-04', '15:39:11', '58.30.130.144');
INSERT INTO `control` VALUES ('36', '2', '', 'oN7utt9d40ouEI4a_VYSkP4ORz4c', '高瑜爽', '2019-12-04', '15:39:19', '58.30.130.144');
INSERT INTO `control` VALUES ('37', '3', '', 'oN7utt9d40ouEI4a_VYSkP4ORz4c', '高瑜爽', '2019-12-04', '15:39:25', '58.30.130.144');
INSERT INTO `control` VALUES ('38', '3', '', 'oN7utt9d40ouEI4a_VYSkP4ORz4c', '高瑜爽', '2019-12-04', '15:39:26', '58.30.130.144');
INSERT INTO `control` VALUES ('39', '3', '', 'oN7utt9d40ouEI4a_VYSkP4ORz4c', '高瑜爽', '2019-12-04', '15:39:30', '58.30.130.144');
INSERT INTO `control` VALUES ('40', '3', '', 'oN7utt9d40ouEI4a_VYSkP4ORz4c', '高瑜爽', '2019-12-04', '15:39:30', '58.30.130.144');
INSERT INTO `control` VALUES ('41', '3', '', 'oN7utt9d40ouEI4a_VYSkP4ORz4c', '高瑜爽', '2019-12-04', '15:39:33', '58.30.130.144');
INSERT INTO `control` VALUES ('42', '3', '', 'oN7utt9d40ouEI4a_VYSkP4ORz4c', '高瑜爽', '2019-12-04', '15:39:33', '58.30.130.144');
INSERT INTO `control` VALUES ('43', '0', '', 'oN7utt1auxPJCCSvUR4y9QNfoT3s', '文源', '2019-12-04', '15:57:37', '123.151.77.91');
INSERT INTO `control` VALUES ('46', '0', '', 'oN7utt1auxPJCCSvUR4y9QNfoT3s', '文源', '2019-12-04', '15:57:50', '125.39.132.94');
INSERT INTO `control` VALUES ('47', '2', '', 'oN7utt1auxPJCCSvUR4y9QNfoT3s', '文源', '2019-12-04', '17:39:46', '123.151.77.91');
INSERT INTO `control` VALUES ('48', '1', '', 'oN7utt1auxPJCCSvUR4y9QNfoT3s', '文源', '2019-12-04', '17:40:31', '123.151.77.91');
INSERT INTO `control` VALUES ('49', '7', '', 'oN7utt1auxPJCCSvUR4y9QNfoT3s', '文源', '2019-12-04', '17:40:46', '125.39.132.94');
INSERT INTO `control` VALUES ('50', '15', '', 'oN7utt1auxPJCCSvUR4y9QNfoT3s', '文源', '2019-12-04', '17:41:29', '123.151.77.91');
INSERT INTO `control` VALUES ('51', '15', '', 'oN7utt1auxPJCCSvUR4y9QNfoT3s', '文源', '2019-12-04', '17:41:31', '125.39.132.94');
INSERT INTO `control` VALUES ('52', '15', '', 'oN7utt1auxPJCCSvUR4y9QNfoT3s', '文源', '2019-12-04', '17:41:33', '125.39.132.94');
INSERT INTO `control` VALUES ('53', '6', '', 'oN7utt1auxPJCCSvUR4y9QNfoT3s', '文源', '2019-12-04', '17:42:30', '123.151.77.91');
INSERT INTO `control` VALUES ('54', '6', '', 'oN7utt1auxPJCCSvUR4y9QNfoT3s', '文源', '2019-12-04', '17:42:33', '123.151.77.91');
INSERT INTO `control` VALUES ('55', '1', 'user', 'oN7utt_UGckQ72qqgu8kycVkSN1s', '李小沫', '2019-12-04', '21:38:55', '117.155.14.130');
INSERT INTO `control` VALUES ('56', '1', 'team', 'oN7utt_UGckQ72qqgu8kycVkSN1s', '李小沫', '2019-12-04', '21:40:33', '117.155.14.130');
INSERT INTO `control` VALUES ('57', '1', 'team', 'oN7utt0p5b6W8xcniJ9tWa8-qgWU', '晨夜将逝', '2019-12-09', '16:24:16', '123.151.76.248');
INSERT INTO `control` VALUES ('58', '1', 'team', 'oN7utt0p5b6W8xcniJ9tWa8-qgWU', '晨夜将逝', '2019-12-09', '16:24:18', '123.151.76.248');
INSERT INTO `control` VALUES ('59', '1', 'user', 'oN7utt0p5b6W8xcniJ9tWa8-qgWU', '晨夜将逝', '2019-12-09', '16:35:37', '123.151.76.248');
INSERT INTO `control` VALUES ('60', '1', 'user', 'oN7utt0p5b6W8xcniJ9tWa8-qgWU', '晨夜将逝', '2019-12-10', '09:39:28', '123.151.76.248');
INSERT INTO `control` VALUES ('61', '1', 'user', 'oN7utt8NfapnHsTVovI0eUJ7RBsw', '森海', '2019-12-17', '14:14:14', '58.30.130.144');
INSERT INTO `control` VALUES ('62', '1', 'user', 'oN7utt8NfapnHsTVovI0eUJ7RBsw', '森海', '2019-12-17', '14:14:17', '58.30.130.144');
INSERT INTO `control` VALUES ('63', '1', 'user', 'oN7utt8NfapnHsTVovI0eUJ7RBsw', '森海', '2019-12-17', '14:14:20', '58.30.130.144');
INSERT INTO `control` VALUES ('64', '1', 'user', 'oN7utt8NfapnHsTVovI0eUJ7RBsw', '森海', '2019-12-17', '14:14:22', '58.30.130.144');
INSERT INTO `control` VALUES ('65', '1', 'user', 'oN7utt8NfapnHsTVovI0eUJ7RBsw', '森海', '2019-12-17', '14:14:24', '58.30.130.144');
INSERT INTO `control` VALUES ('66', '1', 'user', 'oN7utt8NfapnHsTVovI0eUJ7RBsw', '森海', '2019-12-17', '14:14:26', '58.30.130.144');
INSERT INTO `control` VALUES ('67', '1', 'user', 'oN7utt8NfapnHsTVovI0eUJ7RBsw', '森海', '2019-12-17', '14:14:27', '58.30.130.144');
INSERT INTO `control` VALUES ('68', '1', 'user', 'oN7utt8NfapnHsTVovI0eUJ7RBsw', '森海', '2019-12-17', '14:14:29', '58.30.130.144');
INSERT INTO `control` VALUES ('69', '1', 'user', 'oN7utt8NfapnHsTVovI0eUJ7RBsw', '森海', '2019-12-17', '14:14:30', '58.30.130.144');
INSERT INTO `control` VALUES ('70', '1', 'user', 'oN7utt8NfapnHsTVovI0eUJ7RBsw', '森海', '2019-12-17', '14:14:32', '58.30.130.144');
INSERT INTO `control` VALUES ('71', '6', 'team', 'oN7utt1auxPJCCSvUR4y9QNfoT3s', '文源', '2019-12-17', '14:37:06', '123.151.77.123');

-- ----------------------------
-- Table structure for data
-- ----------------------------
DROP TABLE IF EXISTS `data`;
CREATE TABLE `data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `voter_count` int(10) unsigned NOT NULL DEFAULT '0',
  `score_count` int(10) unsigned NOT NULL DEFAULT '0',
  `visitor_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of data
-- ----------------------------
INSERT INTO `data` VALUES ('1', '10', '71', '1050');

-- ----------------------------
-- Table structure for team
-- ----------------------------
DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `no` varchar(10) NOT NULL COMMENT '编号',
  `name` varchar(50) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `score` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '票数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of team
-- ----------------------------
INSERT INTO `team` VALUES ('1', '01', '公共文明引导员天通苑北街道中队', 'static/uploads/001.jpg', '<p style=\"text-align: justify; line-height: 2em; text-indent: 2em;\">\r\n    <strong><span style=\"font-family: 宋体, SimSun; font-size: 16px;\">公共文明引导员天通苑北街道中队，该中队共有64名公共文明引导员，主要负责天通苑北街道4个公交站、2个地铁站和1个行人集中路口的文明引导和交通疏导工作。在完成岗位工作之余，该中队与辖区社区、车队、环卫中心等7个单位开展共建活动，参加“回天有我”社会服务活动60余场次，捡拾公园垃圾、清理过街天桥小广告、开展文明宣传、为老人义务理发。</span></strong>\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '3');
INSERT INTO `team` VALUES ('2', '02', '金色旗手志愿者服务队', 'static/uploads/002.jpg', '<p style=\"text-indent: 2em; text-align: justify; line-height: 2em;\">\r\n    <strong><span style=\"font-family: 宋体, SimSun;\">金色旗手志愿者服务队，该服务队是天通苑南街道天通东苑第一社区党支部探索党建工作成立的一支党员志愿者服务队。自2008年6月成立以来，已有志愿者284人，先后开展社区服务活动300余次，为居民服务、解决实际问题110余次，有效增强了社区凝聚力。在“回天有我”社会服务活动中，该服务队重点承担社区精细化管理工作，处处体现主人翁精神，积极为服务社区居民贡献力量。</span></strong>\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '0');
INSERT INTO `team` VALUES ('3', '03', '龙泽苑社区党支部', 'static/uploads/003.jpg', '<p style=\"text-align: justify; text-indent: 2em; line-height: 2em;\">\r\n    <strong><span style=\"font-family: 宋体, SimSun; font-size: 16px;\">龙泽苑社区党支部，回龙观镇龙泽苑社区党支部充分发挥战斗堡垒作用，组织党员和社区群众开展组团式、联动式“回天有我”社会服务活动，参与居民3000多人次。先后与中国邮政北京分公司、回龙观镇卫生服务中心、市体育局等单位加强共建共治共享，为社区安装智能快递柜，更新社区健身器材，开展惠民政策宣传和健康讲座，举办“国防教育日”演习，组织传唱“回天有我”歌曲，有效激发了社区居民参与回天行动的热情。</span></strong>\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '0');
INSERT INTO `team` VALUES ('4', '04', '东小口镇文艺志愿者服务队', 'static/uploads/004.jpg', '<p style=\"text-align: justify; text-indent: 2em; line-height: 2em;\">\r\n    <strong><span style=\"font-family: 宋体, SimSun;\">东小口镇文艺志愿者服务队。该服务队是一个集舞蹈、合唱、京剧、评剧、柔力球、时装表演等多种形式为一体的表演服务队，曾多次在北京市以及昌平区组织的比赛中取得优异成绩。十余年来，尤其是在“回天有我”社会服务活动中，他们积极深入到各社区、各行政村、养老院开展志愿服务、慰问演出等活动，为丰富东小口地区群众业余文化生活做出了巨大贡献。</span></strong>\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '10');
INSERT INTO `team` VALUES ('5', '05', '天通苑南派出所青年突击队', 'static/uploads/005.jpg', '<p style=\"line-height: 2em; text-align: justify; text-indent: 2em;\">\r\n    <strong><span style=\"font-family: 宋体, SimSun;\">天通苑南派出所青年突击队。该群体严格落实“四个超常规”要求，发挥青年民警敢闯敢拼、吃苦耐劳、艰苦奋斗、无私奉献的精神，多次圆满出色地完成各项任务。特别是“回天行动计划”以来，在“回天利剑”、“两会安保”等行动中，他们打高发、查黄赌、整秩序、除隐患，有效维护辖区治安环境。2018年荣立“非建制打击小分队”集体三等功称号，其中有6人荣立个人三等功。</span></strong>\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '0');
INSERT INTO `team` VALUES ('6', '06', '天北街道天通苑BHG Mall“回天”H.O志愿队', 'static/uploads/006.jpg', '<p style=\"text-align: justify; text-indent: 2em; line-height: 2em;\">\r\n    <strong><span style=\"font-family: 宋体, SimSun;\">天北街道天通苑BHG Mall“回天”H.O志愿队。该服务队成立于2017年，由地区商户代表和居民志愿者组成。在“回天有我”社会服务活动中，他们每月确定一个服务主题，定期组织义务劳动、到孤儿院、敬老院送温暖献爱心、为居民提供专业大厨免费上门等服务，先后为居民理发两万余次、手机贴膜一万五千张、磨刀一万余把。他们用自己的实际行动，积极践行志愿服务精，为建设幸福和谐新家园贡献了力量。</span></strong>\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '1');
INSERT INTO `team` VALUES ('7', '07', '“霍营管家”楼门长', 'static/uploads/007.jpg', '<p style=\"text-align: justify; text-indent: 2em; line-height: 2em;\">\r\n    <strong><span style=\"font-family: 宋体, SimSun;\">“霍营管家”由社区各楼门长组成，2019年社区积极探索“五方共建”工作机制，成效初显。全社区126个单元门，每个单元门推举出一位楼门长作为“霍营管家”，为社区居民服务。“霍营管家”机制的建立，有利于加深居民和社区的联系，能够把居民反映的问题及时上报居委会来协调解决，并培养了居民的自治意识。“霍营管家”楼门长在社区治理中发挥了重要作用。他们对各自管辖的楼门负责，充分听取居民诉求并向社区居委会反映，居委会通过协调动员多方力量，及时解决居民诉求。</span></strong>\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '0');
INSERT INTO `team` VALUES ('8', '08', '回龙观医院“南丁格尔”志愿护理队', 'static/uploads/008.jpg', '<p style=\"margin-right: 0px; margin-left: 0px; text-align: justify; text-indent: 2em; line-height: 2em;\">\r\n    <strong><span style=\"font-size: 16px; font-family: 宋体, SimSun;\">回龙观医院“南丁格尔”志愿护理队，回龙观街道推荐。</span></strong>\r\n</p>\r\n<p style=\"margin-right: 0px; margin-left: 0px; text-align: justify; text-indent: 2em; line-height: 2em;\">\r\n    <strong><span style=\"font-size: 16px; font-family: 宋体, SimSun;\">北京回龙观医院“南丁格尔”护理志愿服务队于2007年10月19日成立，志愿者人数从70多人发展到224人，参与志愿活动已12年余，始终秉承“人道、博爱、奉献”的精神，充分发挥精神科专业护理优势，根据周边群众的需求及自身的专业特长，进社区，进学校，进养老院。在普及健康知识、培训急救技能、开展康复活动、指导日常生活等方面贡献着力量，扎实推进志愿服务活动，形成长期有效的服务机制，每年志愿者参与活动140余次，服务时长近1000小时，服务对象达3000多人次。提供系统化、条理化、科学化的管理，规范志愿者活动的考评机制，使志愿者活动长期持续有效的开展，获得社会各界的好评。</span></strong>\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '0');
INSERT INTO `team` VALUES ('9', '09', 'H·O志愿者服务队', 'static/uploads/009.jpg', '<p style=\"text-align: justify; text-indent: 2em; line-height: 2em;\">\r\n    <strong><span style=\"font-family: 宋体, SimSun;\">“回天”H.O志愿者服务队，前身是天通苑华联志愿者服务队。成立于2017年，是由各商户代表和居民志愿者100余人组成的。每个月都有不同的主题，三月的“寻雷锋扬志愿精神”、四月的“和谐家园 你我共创”、五月的“劳动节清洁美丽家园”等。志愿者为居民理发、手机贴膜、磨刀，理发2万余人次、手机贴膜1.5万张、磨刀1万余把。开展的志愿服务“大厨进我家”为居民提供专业大厨免费上门服务；“回天”H.O 环卫队定期组织天通苑周边卫生清扫活动；他们还不定期到孤儿院及敬老院开展送温暖献爱心活动。</span></strong>\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '0');
INSERT INTO `team` VALUES ('10', '10', '清水园剪纸队', 'static/uploads/010.jpg', '<p style=\"text-align: justify; text-indent: 2em; line-height: 2em;\">\r\n    <strong><span style=\"font-family: 宋体, SimSun;\">清水园剪纸服务队成立于2013年7月，自成立以来，立志于弘扬民族优秀传统文化，传承非遗。不仅以剪纸的形式积极参与到社区各项宣传工作中，如：禁毒宣传、法制宣传、优生优育宣传等政策法规宣传，还积极发扬志愿服务精神，面向社区不同人群，设立非遗课堂；为社区老人、学员、妈妈们“剪纸送祝福”；用剪纸装饰社区宣传栏……她们不求回报，以助人为乐。</span></strong>\r\n</p>\r\n<p style=\"text-indent: 0em;\">\r\n    <br/>\r\n</p>', '0');
INSERT INTO `team` VALUES ('11', '11', '合立方物业', 'static/uploads/011.jpg', '<p style=\"text-indent: 2em; text-align: justify; line-height: 2em;\">\r\n    <strong><span style=\"font-family: 宋体, SimSun;\">合立方物业，“回天三年计划”启动以来，物业主动建立多方共建机制，联合党支部、居委会、业委会及居民代表召开品鉴会，收集大家意见和建议。收集意见后，通过铺设路沿砖，解决了雨季小区街心花园淤泥向四周道路淤积问题。立水桥西路改造工程开始后，物业连夜将小区车行入口临时外移，方便住户进出和停车，在施工期间顶着酷暑24小时值班巡逻。并在小区发现居民在阳台搭设的违建后，立即高空作业，拆除违建，有效排除了隐患。积极宣传垃圾分类，在各楼门和电梯张贴垃圾分类方法，主动购买分类垃圾箱和可降解垃圾袋，引导居民正确分类。积极配合参与社区和基层政府实行区域化社会管理。和社区居委会联合为小区加装43个摄像头，加强安保管理。</span></strong>\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '0');
INSERT INTO `team` VALUES ('12', '12', '回龙观街道理发志愿服务队', 'static/uploads/012.jpg', '<p style=\"text-align: justify; text-indent: 2em; line-height: 2em;\">\r\n    <strong><span style=\"font-family: 宋体, SimSun;\">回龙观街道理发志愿服务队。公益理发进社区，服务周到又便利，手艺不错在细心，居民满意是初心。社区义务理发队在册的志愿者有30余人。从2018年7月至今，义务理发1500人次。不论是寒冬腊月、还是盛夏酷暑，坚持每月两次为居民义务理发不动摇。除此之外，遇到有特殊需求的居民，义务理发队是有求必应，随叫随到，不管是不是理发日都能主动上门为居民服务。这项活动既省去了老年人外出跑路理发的麻烦，又让大家在家门口享受到了优质的便捷服务，很受社区居民的欢迎。志愿者们，全都是心甘情愿为社区居民服务。他们不仅态度和蔼，而且认真负责，像对待亲人一样对待每一个前来理发的人。</span></strong>\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `no` varchar(10) NOT NULL COMMENT '编号',
  `name` varchar(50) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `score` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '票数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '01', '孟祥印', 'static/uploads/01.jpg', '<p style=\"margin-right: 0px; text-indent: 40px; text-align: justify; line-height: 35px;\">\r\n    <span style=\"font-size: 16px;\"><strong><span style=\"font-family: 宋体, SimSun;\">孟祥印是霍营街道紫金新干线二区一名热心居民。她积极参加“回天有我”社会服务活动，为了让社区里的妈妈们有一个交流互助平台，她建立紫金二期妈妈微信群并自任群主，坚持传递正能量；为了让社区健身沙坑更加舒适，她联系供应商替换成细沙，并在沙坑周围建设围栏、种上绿植。每逢节日假期，她都会为邻里策划各种文化活动，以此增进邻居感情。</span></strong></span><span style=\"font-size: 16px; font-family: 宋体, SimSun;\"></span>\r\n</p>', '47');
INSERT INTO `user` VALUES ('2', '02', '于自凯', 'static/uploads/02.jpg', '<p style=\"margin-right:0;text-indent:40px;text-autospace:ideograph-numeric;text-align:justify;text-justify:inter-ideograph;line-height:35px\">\r\n    <strong><span style=\"font-size: 20px; font-family: 宋体, SimSun;\"><span style=\"font-size: 16px;\"></span></span></strong>\r\n</p>\r\n<p style=\"margin-right:0;margin-left:0;text-indent:0;text-autospace:ideograph-numeric;text-align:center;line-height:35px\">\r\n    <span style=\";font-family:方正小标宋简体;color:rgb(0,0,0);font-size:29px\"></span>\r\n</p>\r\n<p style=\"margin-right: 0px; margin-left: 0px; text-indent: 40px; text-align: justify; line-height: 35px;\">\r\n    <strong><span style=\"font-size: 16px; font-family: 宋体, SimSun;\">于自凯是回龙观镇龙腾苑五区的一名“志愿者小明星”，14岁的他，在社区做公益已经五年多了。他从小学开始，就跟随母亲一起走社区、进住户、问冷暖、送关怀，边学边做，利用课余时间陪老人聊天、收拾屋子。他在学校是品学兼优的学生，在“回天有我”社会服务活动中，通过对口帮扶结识内蒙古自治区太仆寺旗王琴剑同学，寒假时将其接来北京，共同学习、游览京城。</span></strong><span style=\"font-size: 16px; font-family: 宋体, SimSun;\"><br/></span>\r\n</p>\r\n<p style=\"margin-right: 0px; margin-left: 0px; text-indent: 40px; text-align: justify; line-height: 35px;\">\r\n    <br/><span style=\"font-size: 16px; font-family: 宋体, SimSun;\"></span>\r\n</p>', '2');
INSERT INTO `user` VALUES ('3', '03', '季东洋', 'static/uploads/03.jpg', '<p style=\"margin-right:0;text-indent:40px;text-autospace:ideograph-numeric;text-align:justify;text-justify:inter-ideograph;line-height:35px\">\r\n    <strong><span style=\"font-family: 宋体, SimSun; font-size: 16px;\"></span></strong>\r\n</p>\r\n<p style=\"margin-right:0;margin-left:0;text-indent:0;text-autospace:ideograph-numeric;text-align:center;line-height:35px\">\r\n    <span style=\";font-family:方正小标宋简体;color:rgb(0,0,0);font-size:29px\"></span>\r\n</p>\r\n<p style=\"margin-right: 0px; margin-left: 0px; text-indent: 40px; text-align: justify; line-height: 35px;\">\r\n    <strong><span style=\"font-size: 16px; font-family: 宋体, SimSun;\"></span></strong>\r\n</p>\r\n<p style=\"margin-right: 0px; text-indent: 40px; text-align: justify; line-height: 35px;\">\r\n    <span style=\"font-size: 16px;\"><strong><span style=\"font-family: 宋体, SimSun;\">季东洋是天通苑南街道综治维稳工作部科长。在“回天有我”社会服务活动中，他积极推进群租房治理工作，始终奋战在综治维稳第一线，坚持一栋楼一栋楼找、一层楼一层楼爬，挨家挨户敲门传达拆除群租房隔断通知，深入推进销账工作，五年来共综合治理违法群租房1800多套，有效促进了社区环境秩序建设。</span></strong></span>\r\n</p>\r\n<p style=\"margin-right: 0px; text-indent: 40px; text-align: justify; line-height: 35px;\">\r\n    <span style=\"font-size: 16px;\"><strong><span style=\"font-family: 宋体, SimSun;\"><br/></span></strong></span>\r\n</p>', '7');
INSERT INTO `user` VALUES ('4', '04', '李双月', 'static/uploads/04.jpg', '<p style=\"margin-right:0;text-indent:40px;text-autospace:ideograph-numeric;text-align:justify;text-justify:inter-ideograph;line-height:35px\">\r\n    <strong><span style=\"font-family: 宋体, SimSun; font-size: 16px;\"></span></strong>\r\n</p>\r\n<p style=\"margin-right: 0px; text-indent: 40px; text-align: justify; line-height: 35px;\">\r\n    <span style=\";font-family:方正小标宋简体;color:rgb(0,0,0);font-size:29px\"></span><strong><span style=\"font-size: 16px; font-family: 宋体, SimSun;\">李双月是天通苑南街道天通苑第一社区居民代表、楼长。在“回天有我”社会服务活动中，他主动发挥志愿者作用，为回天地区平安建设做贡献。2017年3月11日晚上9时，他在社区遛弯时，果断拦截一名正在逃跑的犯罪嫌疑人，及时联合在场的居民将其抓获送交公安机关。</span></strong>\r\n</p>\r\n<p style=\"margin-right: 0px; text-indent: 40px; text-align: justify; line-height: 35px;\">\r\n    <strong><span style=\"font-size: 16px; font-family: 宋体, SimSun;\"><br/></span></strong>\r\n</p>', '1');
INSERT INTO `user` VALUES ('5', '05', '胡维标', 'static/uploads/05.jpg', '<p style=\"margin-right:0;text-indent:40px;text-autospace:ideograph-numeric;text-align:justify;text-justify:inter-ideograph;line-height:35px\">\r\n    <strong><span style=\"font-family: 宋体, SimSun; font-size: 16px;\"></span></strong>\r\n</p>\r\n<p style=\"margin-right: 0px; text-indent: 40px; text-align: justify; line-height: 35px;\">\r\n    <span style=\";font-family:方正小标宋简体;color:rgb(0,0,0);font-size:29px\"></span><strong><span style=\"font-size: 16px; font-family: 宋体, SimSun;\"></span></strong>\r\n</p>\r\n<p style=\"margin-right: 0px; text-indent: 40px; text-align: justify; line-height: 35px;\">\r\n    <span style=\"font-size: 16px;\"><strong><span style=\"font-family: 宋体, SimSun;\">胡维标是东小口镇都市芳园社区的一名居民，81岁的他退休前曾是北京出版社的摄影编辑。近10年来，他积极参加社区志愿活动，为社区义务拍照近千张，用镜头记录了小区环境发展变化的过程，为回天行动计划提供了珍贵的图片资料。</span></strong></span>\r\n</p>\r\n<p style=\"margin-right: 0px; text-indent: 40px; text-align: justify; line-height: 35px;\">\r\n    <span style=\"font-size: 16px;\"><strong><span style=\"font-family: 宋体, SimSun;\"><br/></span></strong></span>\r\n</p>', '0');
INSERT INTO `user` VALUES ('6', '06', '刘艳利', 'static/uploads/06.jpg', '<p style=\"margin-right:0;text-indent:26px;text-autospace:ideograph-numeric;text-align:justify;text-justify:inter-ideograph;line-height:35px\">\r\n    <span style=\"font-size: 16px;\"><strong><span style=\"font-weight: bold; font-family: 宋体;\">刘艳利，中共党员，海淀区永泰小学在职教师，也是在</span></strong><strong><span style=\"font-weight: bold; font-family: 宋体;\">天通苑</span></strong><strong><span style=\"font-family: 宋体; font-weight: bold;\"><span style=\"font-family: 宋体;\">南街道佳运园社区孩子们敬爱的</span>“刘老师”。她积极参与“回天有我”社会服务活动，发挥教学专长，利用周末时间为社区居民开展讲座、志愿服务等活动。特别是在教育教学方面，她把三尺讲台延伸到社区，志愿为社区里的孩子们开设作文辅导课，答疑解惑，帮助孩子们提高学习成绩，她的执着坚守和默默奉献深受社区居民的赞扬和好评。</span></strong></span>\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '2');
INSERT INTO `user` VALUES ('7', '07', '高源', 'static/uploads/07.jpg', '<p style=\"margin-right:0;text-indent:26px;text-autospace:ideograph-numeric;text-align:justify;text-justify:inter-ideograph;line-height:35px\">\r\n    <span style=\"font-size: 16px;\"><strong><span style=\"font-weight: bold; font-family: 宋体;\"></span></strong></span>\r\n</p>\r\n<p style=\"margin-right: 0px; text-align: justify; line-height: 35px; text-indent: 2em;\">\r\n    <span style=\"font-size: 16px;\"><strong><span style=\"font-family: 宋体; font-weight: bold;\"><span style=\"font-family: 宋体;\">高源，中共党员，现任昌平分局天通苑南派出所社区警务三队副队长，一级警司。多年来，他扎根基层，全身心地投入到社区防控工作，坚持奋战在警务工作第一线，辖区内发案率下降了三成。</span>2018年，他会同战友并肩作战，共破案102起，刑拘72人、治拘186人。因工作成绩突出，荣获个人三等功，被授予“社区防范之星”和“平安昌平”标兵称号，群众都亲切地称他为社区平安的“守护者”。</span></strong></span>\r\n</p>\r\n<p style=\"margin-right: 0px; text-indent: 26px; text-align: justify; line-height: 35px;\">\r\n    <span style=\"font-size: 16px;\"><strong><span style=\"font-family: 宋体; font-weight: bold;\"><br/></span></strong></span>\r\n</p>', '1');
INSERT INTO `user` VALUES ('8', '08', '杜栩名', 'static/uploads/08.jpg', '<p style=\"margin-right:0;text-indent:26px;text-autospace:ideograph-numeric;text-align:justify;text-justify:inter-ideograph;line-height:35px\">\r\n    <span style=\"font-size: 16px;\"><strong><span style=\"font-weight: bold; font-family: 宋体;\"></span></strong></span>\r\n</p>\r\n<p style=\"margin-right: 0px; text-align: justify; line-height: 35px; text-indent: 2em;\">\r\n    <span style=\"font-size: 16px;\"><strong><span style=\"font-family: 宋体; font-weight: bold;\"><span style=\"font-family: 宋体;\"></span></span></strong></span>\r\n</p>\r\n<p style=\"margin-right:0;text-indent:26px;text-autospace:ideograph-numeric;text-align:justify;text-justify:inter-ideograph;line-height:35px\">\r\n    <span style=\"font-size: 16px;\"><strong><span style=\"font-family: 宋体; font-weight: bold;\"><span style=\"font-family: 宋体;\">杜栩名，东小口镇东小口社区卫生服务中心社区医生。医者父母心，自</span>2007年以来，他通过金伯华针灸培训、腹针培训、贺氏管针培训等平台和昌平电视台“小儿推拿儿童保健”、“扼住生病的喉咙”等节目，大力推广中医保健知识，义务为地区居民提供医疗服务。十多年来，他共带领团队开展中医宣传教育活动200余场，受益群众近万余人次。</span></strong></span>\r\n</p>\r\n<p style=\"margin-right: 0px; text-align: justify; line-height: 35px; text-indent: 2em;\">\r\n    <span style=\"font-size: 16px;\"><strong><span style=\"font-family: 宋体; font-weight: bold;\"></span></strong></span><br/>\r\n</p>', '0');
INSERT INTO `user` VALUES ('9', '09', '苏静', 'static/uploads/09.jpg', '<p style=\"margin-right:0;text-indent:26px;text-autospace:ideograph-numeric;text-align:justify;text-justify:inter-ideograph;line-height:35px\">\r\n    <span style=\"font-size: 16px;\"><strong><span style=\"font-weight: bold; font-family: 宋体;\"></span></strong></span>\r\n</p>\r\n<p style=\"margin-right: 0px; text-align: justify; line-height: 35px; text-indent: 2em;\">\r\n    <span style=\"font-size: 16px;\"><strong><span style=\"font-family: 宋体; font-weight: bold;\"><span style=\"font-family: 宋体;\"></span></span></strong></span>\r\n</p>\r\n<p style=\"margin-right:0;text-indent:26px;text-autospace:ideograph-numeric;text-align:justify;text-justify:inter-ideograph;line-height:35px\">\r\n    <span style=\"font-size: 16px;\"><strong><span style=\"font-family: 宋体; font-weight: bold;\"><span style=\"font-family: 宋体;\"></span></span></strong></span>\r\n</p>\r\n<p style=\"margin-right:0;text-indent:26px;text-autospace:ideograph-numeric;text-align:justify;text-justify:inter-ideograph;line-height:35px\">\r\n    <span style=\"font-size: 16px;\"><strong><span style=\"font-family: 宋体; font-weight: bold;\"><span style=\"font-family: 宋体;\">苏静，天通苑南街道东一社区党支部书记、居委会主任。在</span>“回天有我”社会服务活动中，她坚持以身作则，冲锋在前，高度重视社区平安建设工作，积极组织在职党员、团员和志愿者开展安全用火、用电知识宣传教育活动。每逢重大任务期间，她都坚持带头严格执行社会面一级防控安保任务，2018年，被授予北京市“首都最美治安志愿者”荣誉称号。</span></strong></span>\r\n</p>\r\n<p style=\"margin-right: 0px; text-indent: 26px; text-align: justify; line-height: 35px;\">\r\n    <br/>\r\n</p>', '0');
INSERT INTO `user` VALUES ('10', '10', '李小会', 'static/uploads/10.jpg', '<p style=\"margin-right: 0px; text-align: justify; line-height: 35px; text-indent: 2em;\">\r\n    <span style=\"font-size: 16px;\"><strong><span style=\"font-family: 宋体; font-weight: bold;\"><span style=\"font-family: 宋体;\">李小会，龙泽园街道龙泽苑东区居民。</span>2018年6月22日上午，龙泽苑东区13号楼姜阿姨做饭时不慎将厨房门反锁，燃烧的油锅烟雾弥漫，火势紧急。邻居李小会接到求助后，迅速赶到现场打开厨房门，关闭天然气，顾不上手上被烫出的水泡，她用湿毛巾盖住着火的菜锅，成功将火扑灭，有效的避免了一场火灾。助邻救火显身手，社区服务热心肠，李小会的见义勇为行为广受邻里称赞。</span></strong></span>\r\n</p>\r\n<p style=\"text-indent: 0em;\">\r\n    <br/>\r\n</p>', '0');
INSERT INTO `user` VALUES ('11', '11', '张保峰', 'static/uploads/11.jpg', '<p style=\"margin-right: 0px; margin-left: 0px; text-indent: 43px; text-align: justify; line-height: 37px;\">\r\n    <strong><span style=\"font-size: 16px; font-family: 宋体, SimSun;\">张保峰，42岁，天北街道推荐，天通北苑第三社区党支部副书记。</span></strong>\r\n</p>\r\n<p style=\"margin-right: 0px; margin-left: 0px; text-indent: 43px; text-align: justify; line-height: 37px;\">\r\n    <strong><span style=\"font-size: 16px; font-family: 宋体, SimSun;\">他是一个热心肠的人，入户走访时了解到，修脚师傅一般不会入户提供服务，而有些老年人因腿脚不便无法去修脚店，知道了老人的需求，他花了2个月的时间在家附近找了个修脚师傅学习修脚技巧，还自掏腰包购买修脚工具，他拿儿子练手，有次剪指甲剪到肉了，有段时间儿子看见他就躲。2018年3月19日，发起了“爱老助残公益服务项目”，队伍现有30余人，不光可以给老人修脚，还开发了剪头发、打扫卫生等多项服务。他说：“希望以我们的服务、我们的努力可以给老人提供更多的、更贴心的服务，让社区老人的晚年更加幸福快乐。”</span></strong>\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '0');
INSERT INTO `user` VALUES ('12', '12', '李林', 'static/uploads/12.jpg', '<p style=\"margin-right: 0px; margin-left: 0px; text-align: justify; line-height: 2em; text-indent: 2em;\">\r\n    <strong><span style=\"font-size: 16px; font-family: 宋体, SimSun;\">李林，62岁，史各庄街道推荐，领秀慧谷社区居民。</span></strong>\r\n</p>\r\n<p style=\"line-height: 2em; text-align: justify; text-indent: 2em;\">\r\n    <strong><span style=\"font-size: 16px; font-family: 宋体, SimSun;\">她用自己的实际行动传承中国的传统文化，每周二的下午是领秀慧谷社区多功能厅里热闹非凡，李林作为一名做手工志愿者老师，为居民们带来了一堂堂生动的手工编织课，一条条绳子在她的手中一会就变成活灵活现的各种小物件，大家学习热情很高。但因为参加学习的大多是老年人，需要她每一步都细致地讲解，有的时候很复杂的编织大家学不会，她很耐心地重复和演示，一遍遍指导大家动手制作。学员们看着自己亲手完成的作品，心中充满感激，不仅学到了知识，加强了交流，还愉悦了身心，促进了整个社区的和谐稳定。</span></strong>\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '0');
INSERT INTO `user` VALUES ('13', '13', '王杰', 'static/uploads/13.jpg', '<p style=\"text-align: justify; text-indent: 2em; line-height: 2em;\">\r\n    <strong><span style=\"font-size: 16px; font-family: 宋体, SimSun;\">王杰，34岁，天南街道推荐，北京市奇妙佳儿童有限公司员工 ，清水园社区居民。</span></strong>\r\n</p>\r\n<p style=\"text-align: justify; text-indent: 2em; line-height: 2em;\">\r\n    <strong><span style=\"font-size: 16px; font-family: 宋体, SimSun;\">十几年来，王杰用坚毅撑起“家”的重量，亦用自己的实际行动诠释着什么是“相濡以沫、患难与共”。今年34岁的王杰，2008年与丈夫结婚。2010年，丈夫突发脑梗，由于大面积的脑出血，生活完全不能自理。王杰一边照顾躺在床上的爱人，一边喂养嗷嗷待哺的儿子。王杰自身就是肢体残疾四级，给爱人喂饭、喂药、翻身、帮助他进行简单的语言训练，都是她一个人完成，有段时间憔悴了不少。她说：“能走到一起，就是缘分，现在是他最需要我的时候，虽然生活不能自理，但毕竟保住了生命，孩子有了爸爸，就有了一个完整的家”。2013年，王杰的公公被查出患有肝硬化，王杰虽然尽全力精心照料了丈夫、公公多年，但病魔还是在2017年、2018年夺走了两位亲人的生命。现在，王杰带着孩子和患过脑梗的婆婆一起努力生活。王杰荣登2019年10月“北京榜样”周榜。</span></strong>\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '0');
INSERT INTO `user` VALUES ('14', '14', '伊然', 'static/uploads/14.jpg', '<p style=\"line-height: 2em; text-align: justify; text-indent: 2em;\">\r\n    <strong><span style=\"font-family: 宋体, SimSun;\">伊然，52岁，龙泽园街道推荐，龙泽苑社区党支部书记兼居委会主任。</span></strong>\r\n</p>\r\n<p style=\"line-height: 2em; text-align: justify; text-indent: 2em;\">\r\n    <strong><span style=\"font-family: 宋体, SimSun;\">自2009年从事社区工作以来，以身作则，埋头苦干，任劳任怨。针对回天地区配套设施不全，居民成分复杂、诉求多，工作难度大的问题。带领社区党支部一班人，想居民之所想，急居民之所急，时时刻刻把居民的事放在第一位。先后组织开展丰富多彩的“回天有我”社会服务活动，以组团式、联动式开展社区服务，受益居民300多人次；以文体活动为载体，通过各项活动把党的惠民政策宣传到位深入人心；依托党建工作协调委员会，切实解决居民生活中遇到的实际问题，让居民多得实惠。几年下来，他们已经成为居民心中最值得信赖的基层组织，深受广大居民的喜爱和拥护。</span></strong>\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '0');
INSERT INTO `user` VALUES ('15', '15', '张光辉', 'static/uploads/15.jpg', '<p style=\"line-height: 2em; text-align: justify; text-indent: 2em;\">\r\n    <span style=\"font-family: 宋体, SimSun;\"><strong>张光辉，35岁，东小口镇推荐，悦府家园社区工作者。</strong></span>\r\n</p>\r\n<p style=\"line-height: 2em; text-align: justify; text-indent: 2em;\">\r\n    <span style=\"font-family: 宋体, SimSun;\"><strong>他积极推进社区小学引进工作，协调学校硬件、软件建设。2018年9月，建立社区篮球队，组织第一届社区篮球赛，并和其他社区进行友谊赛。2018年10月，组织了第一届社区足球联赛和亲子足球活动。得到了社区老年舞蹈队和社区合唱团的积极参加，形成了社区居民大联欢的效果。2018年积极参加社区的“回天有我”座谈会，反馈居民迫切需要解决的幼儿园建设、公交站点等问题。2019年申请“公园悦府社区”公众号，传播社区正能量，反馈社区居民的需求。为“回天地区三年行动计划”贡献了自己的力量。</strong></span>\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '3');
INSERT INTO `user` VALUES ('16', '16', '王玉春', 'static/uploads/16.jpg', '<p style=\"margin-right: 0px; margin-left: 0px; text-align: justify; line-height: 2em; text-indent: 2em;\">\r\n    <strong><span style=\"font-size: 16px; font-family: 宋体, SimSun;\">王玉春，女，62岁，东小口镇推荐，九台庄园社区居民。</span></strong>\r\n</p>\r\n<p style=\"margin-right: 0px; margin-left: 0px; text-align: justify; line-height: 2em; text-indent: 2em;\">\r\n    <strong><span style=\"font-size: 16px; font-family: 宋体, SimSun;\">王玉春退休后积极参与各类志愿服务活动，待人热情、甘于奉献，是小区里出了名的热心肠。88岁的万希缊老人虽已到了耄耋之年，但平常喜欢遛弯、散步，老人腿脚不好又不爱拄拐杖，王玉春便每天下午三点准时到万阿姨家打卡，一路搀扶她出去散步，这一搀扶就是16年。“每次遛弯，小王都要把我送进家门才放心。上回她脚崴了，还坚持带我出去呢，跟亲闺女一样，是我最暖心的拐杖。”万阿姨见人就夸王玉春。邻居们经常看到她帮助别人，怕老人出行摔倒，她扫雪铲冰清路面；怕老人购物不便，她会帮忙代买日常用品；怕老人提东西费劲，她将两购物车的白菜帮老人送上楼；亲子活动中，她是忙前忙后的巾帼志愿者；执勤巡逻中，她是尽职尽责的治安志愿者；宣传推广中，她是热情专业的垃圾分类志愿者，她在社区志愿活动中发挥着举足轻重的作用。</span></strong>\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '0');
INSERT INTO `user` VALUES ('17', '17', '董长军', 'static/uploads/17.jpg', '<p style=\"margin-right: 0px; margin-left: 0px; text-align: justify; line-height: 2em; text-indent: 2em;\">\r\n    <strong><span style=\"font-size: 16px; font-family: 宋体, SimSun;\">董长军，男，72岁，回龙观街道蓝天家园社区居民。</span></strong>\r\n</p>\r\n<p style=\"margin-right: 0px; margin-left: 0px; text-align: justify; line-height: 2em; text-indent: 2em;\">\r\n    <strong><span style=\"font-size: 16px; font-family: 宋体, SimSun;\">董长军退休不褪色，把社区当成自己的家，积极参加社区公益活动，是公认的优秀志愿者。义务宣传党的路线方针政策和身边的好人好事。十多篇报道被《北京社区报》、《北京晚报》和《同心》等刊物采用。他是出名的太极武术教练，现有队员300余人，传授太极拳(剑、扇)等健身活动项目；理发队他是组织者和出名的理发师，他既能给男士理发，又能给老年妇女理发。他利用在部队积累的军事知识，在社区开展国防教育。他是社区书法教员，治安巡逻有他的脚步，卫生清扫活动中有他的身影，各项捐献活动带头参加，他热爱、关心社区活动，是各项公益活动的积极分子，是军休人员和居民的好榜样。</span></strong>\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '0');
INSERT INTO `user` VALUES ('18', '18', '房永辉', 'static/uploads/18.jpg', '<p style=\"margin-right: 0px; margin-left: 0px; text-indent: 43px; text-align: justify; line-height: 2em;\">\r\n    <strong><span style=\"font-size: 16px; font-family: 宋体, SimSun;\">房永辉，男，49岁，霍营街道推荐，昌平区中西医结合医院医保办主任。</span></strong>\r\n</p>\r\n<p style=\"margin-right: 0px; margin-left: 0px; text-indent: 43px; text-align: justify; line-height: 2em;\">\r\n    <strong><span style=\"font-size: 16px; font-family: 宋体, SimSun;\">房永辉热心社会公益，积极投身社区志愿服务，乐于奉献，不计得失。参加社区活动以来，共参与社区义务植树、清理草坪、治安巡逻、义务诊疗、健康讲座认领微心愿等30余次志愿活动，累计社区志愿时长120多小时。作为一名医生，他针对社区空巢老人、残疾人、精神病人及其他困难群体提供一对一的医疗志愿服务。定期开展群体性健康知识教育讲座，免费健康体检、咨询、发放健康教育资料。在他的带动下，昌平区中西医结合医院多名医生认领了“为社区老人保驾护航”微心愿。他时刻关心、关注着社区困难群体，尽其所能为他们提供帮助，他用行动树立了党员的形象，展示了新时代医务工作者的心系社区、服务为民精神风貌。</span></strong>\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '0');
INSERT INTO `user` VALUES ('19', '19', '李铁宏', 'static/uploads/19.jpg', '<p style=\"text-align: justify; text-indent: 2em; line-height: 2em;\">\r\n    <strong><span style=\"font-family: 宋体, SimSun;\">李铁宏，女，60岁，霍营街道推荐，龙锦苑东一区党支部书记。</span></strong>\r\n</p>\r\n<p style=\"text-align: justify; text-indent: 2em; line-height: 2em;\">\r\n    <strong><span style=\"font-family: 宋体, SimSun;\">李铁宏2010年9月上任以来，以身作则、率先垂范、大胆创新、严格管理，以党建工作为抓手，提高服务质量，彻底改变了社区环境和居民精神面貌，为社区的和谐发展奠定了良好基础。创办了老年科普大学和老干部大学，丰富了居民业余文化活动。在社区环境整治、拆违控违、五好支部创建、六型社区创建、党风廉政等方面做出了突出贡献。即使在失去两位至亲的时候，她也没有放下社区的工作，她以自己的实际行动赢得了所有社区居民的尊重。在北辰集团公司连续多年获得优秀党员、先进个人、三八红旗手等荣誉称号。进入社区工作后，又被评为北京市孝星，昌平区三八红旗手，街道优秀党务工作者。社区获得“全国科普示范社区”等多项荣誉称号。</span></strong>\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '0');
INSERT INTO `user` VALUES ('20', '20', '刘秋茹', 'static/uploads/20.jpg', '<p style=\"text-align: justify; text-indent: 2em; line-height: 2em;\">\r\n    <strong><span style=\"font-family: 宋体, SimSun;\">刘秋茹，女，64岁，天南街道推荐，嘉城花园社区居民。</span></strong>\r\n</p>\r\n<p style=\"text-align: justify; text-indent: 2em; line-height: 2em;\">\r\n    <strong><span style=\"font-family: 宋体, SimSun;\">刘秋茹每天都为86岁高龄、脑梗后生活无法自理的父亲做可口的饭菜，捏揉身体，带父亲到户外呼吸新鲜空气。父亲需要经常去医院检查、开药。在家中，她按照医生的叮嘱为父亲做辅助治疗。日常，她还要看管外孙女。尽管她每天都家务缠身，身心疲惫，但她毫无怨言，承担起照顾父亲的重任，将生活安排得井井有条。作为计生宣传员，她利用空余时间，做好计生宣传工作。对于经常不在家，电话也经常联系不到的人员，她想尽办法联系本人，将国家的政策宣传到位。她还是一名志愿者、居民代表，虽然家里老人和孩子需要照顾，但她不怕脏、不怕累，积极参加社区组织的治安执勤和清洁整治活动。</span></strong>\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '0');

-- ----------------------------
-- Table structure for voter
-- ----------------------------
DROP TABLE IF EXISTS `voter`;
CREATE TABLE `voter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wx_openid` varchar(255) NOT NULL,
  `wx_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of voter
-- ----------------------------
