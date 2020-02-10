/*
Navicat MySQL Data Transfer

Source Server         : mldn
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : flowerstore

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2020-02-10 16:03:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `telphone` varchar(255) DEFAULT NULL,
  `send_person` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '浙江省杭州市浙江水利水电学院', '刘潇', '13362150327', '张三');
INSERT INTO `address` VALUES ('3', '浙江省杭州市中国计量大学', '张三', '15565510232', '刘潇');
INSERT INTO `address` VALUES ('4', '浙江省杭州市杭州电子科技大学', '李四', '13673521586', '刘潇');
INSERT INTO `address` VALUES ('10', '浙江省杭州市桐庐县', '小狗', '15564231586', '小猫');
INSERT INTO `address` VALUES ('11', '浙江省杭州市浙江水利水电学院', '刘潇', '13362150327', '小猫');
INSERT INTO `address` VALUES ('12', 'shui', 'zhaoruiheng', '13336152510', 'zhaoruiheng');
INSERT INTO `address` VALUES ('14', '北京东路', '王五', '15712548695', '刘潇');
INSERT INTO `address` VALUES ('17', '浙江水利水电学院', '刘潇', '13362150327', '黑子');
INSERT INTO `address` VALUES ('19', '浙江水利水电学院', '刘潇', '13362150327', '大头');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `item_number` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('1', '2018-12-26 22:38:25', '4', 'Flower00001', 'aaa', '幸福的味道', '288.00');
INSERT INTO `cart` VALUES ('2', '2018-12-26 21:46:43', '3', 'Flower00002', 'aaa', '阳光守护你', '246.00');
INSERT INTO `cart` VALUES ('3', '2018-12-26 20:00:00', '3', 'Flower00003', 'aaa', '温情永远', '325.00');
INSERT INTO `cart` VALUES ('4', '2018-12-26 21:11:10', '1', 'Flower00004', 'aaa', '爱无界', '376.00');
INSERT INTO `cart` VALUES ('5', '2018-12-26 22:37:58', '3', 'Flower00005', 'aaa', '亲亲宝贝', '436.00');
INSERT INTO `cart` VALUES ('6', '2018-12-26 21:18:51', '1', 'Flower00008', 'aaa', '如花似玉', '534.00');
INSERT INTO `cart` VALUES ('9', '2018-12-27 13:13:21', '2', 'Flower00007', 'aaa', '真爱一生', '329.00');
INSERT INTO `cart` VALUES ('10', '2018-12-27 13:13:21', '2', 'Flower000010', 'aaa', '稳稳的幸福', '372.00');
INSERT INTO `cart` VALUES ('23', '2018-12-28 21:52:24', '1', 'Flower00002', '小猫', '阳光守护你', '246.00');
INSERT INTO `cart` VALUES ('26', '2018-12-28 21:52:22', '1', 'Flower00004', '小猫', '爱无界', '376.00');
INSERT INTO `cart` VALUES ('29', '2018-12-30 22:12:40', '1', 'Flower00006', '刘潇', '甜美的花季', '232.00');
INSERT INTO `cart` VALUES ('31', '2018-12-30 22:13:23', '1', 'Flower00008', '刘潇', '如花似玉', '534.00');
INSERT INTO `cart` VALUES ('36', '2019-01-02 17:43:18', '1', 'Flower00002', '黑子', '阳光守护你', '246.00');

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_name` varchar(255) DEFAULT NULL,
  `image_size` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_number` varchar(255) DEFAULT NULL,
  `material` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `upload_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('1', 'flower1.jpg', '180*250', '红色郁金香的花语是爱的告白。红色郁金香除了表达对爱人、恋人的爱以外，红色的郁金香还有一点高贵之意。一说到郁金香，第一时间想到的就是荷兰，那一个让好多女生都无限向往着的郁金香王国。郁金香的花束就像是一位亭亭玉立的美人，安静而又迷人的矗立在花海中，让人渴望簇拥，也渴望轻嗅。', '幸福的味道', 'Flower00001', '郁金香', '288', '50', 'love', '2018-12-26 10:10:10');
INSERT INTO `item` VALUES ('2', 'flower2.jpg', '180*250', '橙色的郁金香：美好的回忆、永恒的爱。橙色，在生机盎然中流露出一种安逸与宁静。更适合那些走过长久爱情之路的情侣，因为它象征了历久弥新的爱情，散发出成熟的韵味', '阳光守护你', 'Flower00002', '郁金香', '246', '50', 'love', '2018-12-26 10:10:10');
INSERT INTO `item` VALUES ('3', 'flower3.jpg', '180*250', '康乃馨代表的爱表现为比\r\n较清淡和温馨，适于形容亲情之爱，所以儿女多康乃馨给自己的双亲。\r\n粉色：我永远不会忘了你、美丽、年青、热爱、祝母亲永远年轻美丽；感动、亮丽、母爱、女性的爱、我热烈地爱着你 。', '温情永远', 'Flower00003', '康乃馨', '325', '50', 'love', '2018-12-26 10:10:10');
INSERT INTO `item` VALUES ('4', 'flower4.jpg', '180*250', '若是一整束都是白色的花瓣，这给人一种纯洁、淡雅的感觉，这寓意着守望爱情，甘愿做配角；心里默默爱着某个人，一直的默默付出，而被爱的人却不知道，只希望被爱之人幸福快乐便好，因为守望爱情也是一种幸福，那也是表达爱的方式之一。', '爱无界', 'Flower00004', '满天星', '376', '50', 'love', '2018-12-26 10:10:10');
INSERT INTO `item` VALUES ('5', 'flower5.jpg', '180*250', '珍惜你身边的人，珍惜你眼前的幸福，不要在失去后才追悔莫及，那时一切为时已晚。', '亲亲宝贝', 'Flower00005', '木棉花', '436', '50', 'love', '2018-12-26 10:10:10');
INSERT INTO `item` VALUES ('6', 'flower6.jpg', '180*250', '花语：纤细、优雅、遇见幸福、单身的幸福。\r\n\r\n　　送花对象：朋友、爱人\r\n\r\n　　\r\n\r\n　　花语解析：凡是受到这种花祝福的人，一辈子会遇见不少贵人：如良师益友或是理想伴侣等等。矢车菊般的女孩似乎永远也不会长大，总是如小女孩般甜美可人，更如这种花一样色彩鲜艳斑斓。', '甜美的花季', 'Flower00006', '矢车菊', '232', '50', 'love', '2018-12-26 10:10:10');
INSERT INTO `item` VALUES ('7', 'flower7.jpg', '180*250', '我只钟情你一个\r\n\r\n手捧温暖而脱俗，优雅而清新的香槟玫瑰，让你觉得我们就是这个世界上最般配的一对。', '真爱一生', 'Flower00007', '香槟玫瑰', '329', '50', 'love', '2018-12-26 10:10:10');
INSERT INTO `item` VALUES ('8', 'flower8.jpg', '180*250', '百合花语是指百合具有百年好合美好家庭、伟大的爱之含意，有深深祝福的意义。收到这种花的祝福的人具有清纯的性格，集众人宠爱于一身，不过光凭这一点并不能平静度过一生，必须具备自制力，抵抗外界的诱惑，才能保持不被污染的纯真。', '如花似玉', 'Flower00008', '百合', '534', '50', 'love', '2018-12-26 10:10:10');
INSERT INTO `item` VALUES ('9', 'flower9.jpg', '180*250', '花语：纤细、优雅、遇见幸福、单身的幸福。\r\n\r\n　　送花对象：朋友、爱人\r\n\r\n　　\r\n\r\n　　花语解析：凡是受到这种花祝福的人，一辈子会遇见不少贵人：如良师益友或是理想伴侣等等。矢车菊般的女孩似乎永远也不会长大，总是如小女孩般甜美可人，更如这种花一样色彩鲜艳斑斓。', '灿烂人生', 'Flower00009', '矢车菊', '264', '50', 'love', '2018-12-26 10:10:10');
INSERT INTO `item` VALUES ('10', 'flower10.jpg', '180*250', '它象征着热烈与激情的爱，这相对来说，更适合于用在恋人或爱人之间增进感情。', '稳稳的幸福', 'Flower00010', '红玫瑰', '372', '50', 'love', '2018-12-26 10:10:10');
INSERT INTO `item` VALUES ('11', 'flower11.jpg', '180*250', '白玫瑰象征着纯洁、高贵而天真的爱，白色的花瓣没有一丝瑕疵，用来表达纯洁的友情是再合适不过了，送给女孩子那是想与她拥有一份没有其他意义掺杂的纯白恋情。', '倾情于你', 'Flower00011', '白玫瑰', '743', '50', 'love', '2018-12-26 10:10:10');
INSERT INTO `item` VALUES ('12', 'flower12.jpg', '180*250', '它是甜蜜与温馨的代表，象征着美好朦胧的初恋，有着永恒的美丽，就如那粉玫瑰的娇嫩，只有两个人在一起那份莫名的愉悦与心的相互吸引。', '今生挚爱', 'Flower00012', '粉色玫瑰', '846', '50', 'love', '2018-12-26 10:10:10');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_number` varchar(255) DEFAULT NULL,
  `price` float NOT NULL,
  `receive_person` varchar(255) DEFAULT NULL,
  `telphone` varchar(255) DEFAULT NULL,
  `totle` float NOT NULL,
  `order_time` varchar(255) DEFAULT NULL,
  `send_person` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '浙江省杭州市浙江水利水电学院', '2', '如花似玉', 'Flower00008', '534', '刘潇', '13362150327', '1068', '2018-12-26 22:38:25', '小猫');
INSERT INTO `orders` VALUES ('2', '浙江省杭州市浙江水利水电学院', '1', '温情永远', 'Flower00003', '325', '刘潇', '13362150327', '325', '2018-12-26 22:38:25', '小猫');
INSERT INTO `orders` VALUES ('3', '浙江省杭州市浙江水利水电学院', '2', '如花似玉', 'Flower00008', '534', '刘潇', '13362150327', '1068', '2018-12-26 22:38:25', '小猫');
INSERT INTO `orders` VALUES ('4', '浙江省杭州市中国计量大学', '2', '幸福的味道', 'Flower00001', '288', '张三', '15565510232', '576', '2018-12-26 22:38:25', '小猫');
INSERT INTO `orders` VALUES ('5', '浙江省杭州市中国计量大学', '1', '温情永远', 'Flower00003', '325', '张三', '15565510232', '325', '2018-12-26 22:38:25', '小猫');
INSERT INTO `orders` VALUES ('6', '浙江省杭州市浙江水利水电学院', '2', '如花似玉', 'Flower00008', '534', '刘潇', '13362150327', '1068', '2018-12-26 22:38:25', '小猫');
INSERT INTO `orders` VALUES ('7', '浙江省杭州市浙江水利水电学院', '1', '温情永远', 'Flower00003', '325', '刘潇', '13362150327', '325', '2018-12-26 22:38:25', '小猫');
INSERT INTO `orders` VALUES ('8', '浙江省杭州市浙江水利水电学院', '1', '爱无界', 'Flower00004', '376', '刘潇', '13362150327', '376', '2018-12-26 22:38:25', '小猫');
INSERT INTO `orders` VALUES ('9', '浙江省杭州市中国计量大学', '1', '如花似玉', 'Flower00008', '534', '张三', '15565510232', '534', '2018-12-26 22:38:25', '小猫');
INSERT INTO `orders` VALUES ('10', '浙江省杭州市浙江水利水电学院', '2', '幸福的味道', 'Flower00001', '288', '刘潇', '13362150327', '576', '2018-12-26 22:38:25', '小猫');
INSERT INTO `orders` VALUES ('11', '浙江省杭州市浙江水利水电学院', '1', '真爱一生', 'Flower00007', '329', '刘潇', '13362150327', '329', '2018-12-26 22:38:25', '小猫');
INSERT INTO `orders` VALUES ('12', '浙江省杭州市杭州电子科技大学', '1', '真爱一生', 'Flower00007', '329', '李四', '13673521586', '329', '2018-12-28 14:36:49', '小猫');
INSERT INTO `orders` VALUES ('13', '浙江省杭州市中国计量大学', '1', '阳光守护你', 'Flower00002', '246', '张三', '15565510232', '246', '2018-12-28 14:37:35', '小猫');
INSERT INTO `orders` VALUES ('14', '浙江省杭州市中国计量大学', '1', '真爱一生', 'Flower00007', '329', '张三', '15565510232', '329', '2018-12-28 14:48:10', '小猫');
INSERT INTO `orders` VALUES ('15', '浙江省杭州市浙江水利水电学院', '1', '甜美的花季', 'Flower00006', '232', '刘潇', '13362150327', '232', '2018-12-28 14:52:11', '小猫');
INSERT INTO `orders` VALUES ('16', '浙江省杭州市中国计量大学', '1', '爱无界', 'Flower00004', '376', '张三', '15565510232', '376', '2018-12-28 14:55:21', '小猫');
INSERT INTO `orders` VALUES ('17', '浙江省杭州市浙江水利水电学院', '1', '温情永远', 'Flower00003', '325', '刘潇', '13362150327', '325', '2018-12-28 21:18:08', '小猫');
INSERT INTO `orders` VALUES ('18', '浙江省杭州市中国计量大学', '1', '爱无界', 'Flower00004', '376', '张三', '15565510232', '376', '2018-12-28 21:18:58', '小猫');
INSERT INTO `orders` VALUES ('19', '浙江省杭州市中国计量大学', '1', '真爱一生', 'Flower00007', '329', '张三', '15565510232', '329', '2018-12-28 21:18:58', '小猫');
INSERT INTO `orders` VALUES ('20', 'shui', '1', '幸福的味道', 'Flower00001', '288', 'zhaoruiheng', '13336152510', '288', '2018-12-30 19:10:20', 'zhaoruiheng');
INSERT INTO `orders` VALUES ('21', '北京东路', '1', '温情永远', 'Flower00003', '325', '王五', '15712548695', '325', '2018-12-30 20:20:32', '刘潇');
INSERT INTO `orders` VALUES ('22', '浙江省杭州市杭州电子科技大学', '2', '亲亲宝贝', 'Flower00005', '436', '李四', '13673521586', '872', '2018-12-30 20:56:54', '刘潇');
INSERT INTO `orders` VALUES ('23', '浙江省杭州市中国计量大学', '1', '阳光守护你', 'Flower00002', '246', '张三', '15565510232', '246', '2018-12-30 20:57:39', '刘潇');
INSERT INTO `orders` VALUES ('24', '浙江省杭州市中国计量大学', '1', '温情永远', 'Flower00003', '325', '张三', '15565510232', '325', '2018-12-30 22:13:30', '刘潇');
INSERT INTO `orders` VALUES ('25', '浙江水利水电学院', '2', '阳光守护你', 'Flower00002', '246', '刘潇', '13362150327', '492', '2019-01-02 17:37:07', '黑子');
INSERT INTO `orders` VALUES ('26', '浙江水利水电学院', '1', '阳光守护你', 'Flower00002', '246', '刘潇', '13362150327', '246', '2019-01-02 17:40:21', '黑子');
INSERT INTO `orders` VALUES ('27', '浙江水利水电学院', '2', '阳光守护你', 'Flower00002', '246', '刘潇', '13362150327', '492', '2019-01-02 17:43:04', '黑子');
INSERT INTO `orders` VALUES ('28', '浙江水利水电学院', '2', '如花似玉', 'Flower00008', '534', '刘潇', '13362150327', '1068', '2019-01-02 17:43:38', '黑子');
INSERT INTO `orders` VALUES ('29', '浙江水利水电学院', '2', '亲亲宝贝', 'Flower00005', '436', '刘潇', '13362150327', '872', '2019-01-02 17:43:38', '黑子');
INSERT INTO `orders` VALUES ('30', '浙江水利水电学院', '2', '温情永远', 'Flower00003', '325', '刘潇', '13362150327', '650', '2019-01-03 10:31:44', '大头');
INSERT INTO `orders` VALUES ('31', '浙江水利水电学院', '1', '爱无界', 'Flower00004', '376', '刘潇', '13362150327', '376', '2019-01-03 10:31:44', '大头');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `telphone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'aaa', '123456', '男', '13362150327');
INSERT INTO `user` VALUES ('2', '刘潇', '123456', '男', '13362150327');
INSERT INTO `user` VALUES ('3', '张三丰', '123456', '男', '13312345678');
INSERT INTO `user` VALUES ('10', '小猫', '111111', '女', '13542657689');
INSERT INTO `user` VALUES ('11', '小虎', '445566', '男', '18713765648');
INSERT INTO `user` VALUES ('12', 'zhaoruiheng', '123456', '男', '13336152510');
INSERT INTO `user` VALUES ('13', '黑子', '123456', '男', '13645879658');
INSERT INTO `user` VALUES ('14', '大头', '123456', '男', '13645218965');
