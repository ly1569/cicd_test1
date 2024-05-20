/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : xm_animal_manager

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 07/12/2023 20:28:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '管理员' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'admin', '管理员', 'http://localhost:9090/files/1697438073596-avatar.png', 'ADMIN', '13677889922', 'admin@xm.com');

-- ----------------------------
-- Table structure for adopt
-- ----------------------------
DROP TABLE IF EXISTS `adopt`;
CREATE TABLE `adopt`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` int(10) NULL DEFAULT NULL COMMENT '用户ID',
  `animal_id` int(10) NULL DEFAULT NULL COMMENT '宠物ID',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '领养时间',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '领养状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '领养记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adopt
-- ----------------------------
INSERT INTO `adopt` VALUES (1, 1, 8, '2023-12-05 15:12:21', '已归还');
INSERT INTO `adopt` VALUES (2, 3, 1, '2023-12-05 16:31:56', '领养中');
INSERT INTO `adopt` VALUES (3, 1, 3, '2023-12-05 16:36:53', '领养中');
INSERT INTO `adopt` VALUES (4, 1, 8, '2023-12-05 16:37:50', '领养中');

-- ----------------------------
-- Table structure for animal
-- ----------------------------
DROP TABLE IF EXISTS `animal`;
CREATE TABLE `animal`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '宠物图片',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '宠物名字',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '宠物性别',
  `age` int(10) NULL DEFAULT NULL COMMENT '宠物年龄',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '宠物种类',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '宠物状态',
  `descr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '宠物介绍',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '宠物信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of animal
-- ----------------------------
INSERT INTO `animal` VALUES (1, 'http://localhost:9090/files/1701681725875-柴犬.jpeg', '小柴柴', '公', 3, '狗狗', '已领养', '我是小柴犬，我很可爱哦！');
INSERT INTO `animal` VALUES (2, 'http://localhost:9090/files/1701681805117-柯基.jpeg', '小柯柯', '公', 3, '狗狗', '待领养', '我是小柯基，我很可爱哦！');
INSERT INTO `animal` VALUES (3, 'http://localhost:9090/files/1701681835145-拉布拉多.jpeg', '小拉拉', '母', 2, '狗狗', '已领养', '我是拉布拉多，我很可爱哦！');
INSERT INTO `animal` VALUES (4, 'http://localhost:9090/files/1701681866777-金毛.jpeg', '小金金', '公', 2, '狗狗', '待领养', '我是小金毛，我很可爱哦！');
INSERT INTO `animal` VALUES (5, 'http://localhost:9090/files/1701681893938-萨摩耶.jpeg', '小萨萨', '母', 2, '狗狗', '待领养', '我是萨摩耶，我很可爱哦！');
INSERT INTO `animal` VALUES (6, 'http://localhost:9090/files/1701681916059-伯曼猫.jpg', '小曼曼', '母', 2, '猫猫', '待领养', '我是伯曼猫，我有点凶凶哦！');
INSERT INTO `animal` VALUES (7, 'http://localhost:9090/files/1701681939459-奥西猫.jpg', '小奥奥', '母', 2, '猫猫', '待领养', '我是奥西猫，我有点呆萌哦！');
INSERT INTO `animal` VALUES (8, 'http://localhost:9090/files/1701681962730-布偶猫.jpg', '小布布', '母', 2, '猫猫', '已领养', '我是布偶猫，我很温顺哦！');

-- ----------------------------
-- Table structure for foster
-- ----------------------------
DROP TABLE IF EXISTS `foster`;
CREATE TABLE `foster`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` int(10) NULL DEFAULT NULL COMMENT '用户ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '宠物昵称',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '寄养时间',
  `days` int(10) NULL DEFAULT NULL COMMENT '寄养天数',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '寄养状态',
  `room_id` int(10) NULL DEFAULT NULL COMMENT '房间ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '寄养信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of foster
-- ----------------------------
INSERT INTO `foster` VALUES (4, 1, '小黑', '2023-12-13', 3, '已领回', 5);
INSERT INTO `foster` VALUES (5, 2, '小萌', '2023-12-12', 2, '已领回', 4);
INSERT INTO `foster` VALUES (6, 1, '小拉拉', '2023-12-06', 2, '已领回', 1);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用品名称',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品图片',
  `price` double(10, 2) NULL DEFAULT NULL COMMENT '商品价格',
  `num` int(10) NULL DEFAULT 0 COMMENT '商品数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '宠物用品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '土狗专用狗粮', 'http://localhost:9090/files/1701848334055-土狗专用狗粮.jpg', 29.00, 45);
INSERT INTO `goods` VALUES (2, '通用狗粮', 'http://localhost:9090/files/1701848416085-通用狗粮.jpg', 30.00, 50);
INSERT INTO `goods` VALUES (3, '挑嘴猫粮', 'http://localhost:9090/files/1701848429495-挑嘴猫粮.jpg', 40.00, 50);
INSERT INTO `goods` VALUES (4, '布偶猫粮', 'http://localhost:9090/files/1701848445260-布偶猫粮.jpg', 30.00, 50);
INSERT INTO `goods` VALUES (5, '麦富迪狗粮', 'http://localhost:9090/files/1701848462275-麦富迪狗粮.jpg', 50.00, 50);
INSERT INTO `goods` VALUES (6, '体外驱虫剂', 'http://localhost:9090/files/1701848482287-体外驱虫剂.jpg', 20.00, 50);
INSERT INTO `goods` VALUES (7, '卫仕 关节舒', 'http://localhost:9090/files/1701848495991-卫仕 关节舒.jpg', 50.00, 50);
INSERT INTO `goods` VALUES (8, '卫仕猫多维', 'http://localhost:9090/files/1701848508194-卫仕猫多维.jpg', 50.00, 50);
INSERT INTO `goods` VALUES (9, '比乐狗粮', 'http://localhost:9090/files/1701848523937-比乐狗粮.jpg', 30.00, 0);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '公告信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '今天系统正式上线，开始内测', '今天系统正式上线，开始内测', '2023-09-05', 'admin');
INSERT INTO `notice` VALUES (2, '所有功能都已完成，可以正常使用', '所有功能都已完成，可以正常使用', '2023-09-05', 'admin');
INSERT INTO `notice` VALUES (3, '今天天气很不错，可以出去一起玩了', '今天天气很不错，可以出去一起玩了', '2023-09-05', 'admin');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `goods_id` int(10) NULL DEFAULT NULL COMMENT '商品',
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单编号',
  `user_id` int(10) NULL DEFAULT NULL COMMENT '用户ID',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '下单时间',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '收货人',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系电话',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '送货地址',
  `num` int(10) NULL DEFAULT NULL COMMENT '购买数量',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单状态',
  `price` double(10, 2) NULL DEFAULT NULL COMMENT '订单价格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '订单信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 8, '20231206172036', 1, '2023-12-06 17:20:36', '武大郎', '18899990000', '上海市浦东新区888号', 2, '已完成', 100.00);
INSERT INTO `orders` VALUES (2, 1, '20231206175237', 1, '2023-12-06 17:52:37', '武大郎', '18877776666', '上海市浦东新区888号', 3, '已完成', 87.00);
INSERT INTO `orders` VALUES (3, 1, '20231207131152', 2, '2023-12-07 13:11:52', '李大嘴', '18899990000', '北京市海淀区888号', 2, '已完成', 58.00);

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '房间编号',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '房间状态',
  `animal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '寄养宠物',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '房间信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES (1, 'D001', '空闲', '');
INSERT INTO `room` VALUES (2, 'D002', '空闲', NULL);
INSERT INTO `room` VALUES (3, 'D003', '空闲', NULL);
INSERT INTO `room` VALUES (4, 'D004', '空闲', '');
INSERT INTO `room` VALUES (5, 'D005', '空闲', '');

-- ----------------------------
-- Table structure for submit
-- ----------------------------
DROP TABLE IF EXISTS `submit`;
CREATE TABLE `submit`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '上报说明',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '上报图片',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '上报时间',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '处理状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '上报信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of submit
-- ----------------------------
INSERT INTO `submit` VALUES (1, '在幸福公园小河边看到一只流浪狗，待在这好几天了，希望平台能够救助一下它！', 'http://localhost:9090/files/1701927831454-中华田园犬.jpeg', '2023-12-07 13:44:10', '已处理');
INSERT INTO `submit` VALUES (2, '我在幸福小区旁边发现一只拉布拉多，很可怜，希望平台救助一下', 'http://localhost:9090/files/1701928500825-拉布拉多.jpeg', '2023-12-07 13:55:26', '待处理');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `account` double(10, 2) NULL DEFAULT 0.00 COMMENT '余额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'zhangsan', '123456', '张三', 'http://localhost:9090/files/1701678935222-柴犬.jpeg', 'USER', '18899990000', 'zhangsan@xm.com', 63.00);
INSERT INTO `user` VALUES (2, 'lisi', '123456', '李四', 'http://localhost:9090/files/1701679108554-拉布拉多.jpeg', 'USER', '18877776668', 'lisi@xm.com', 42.00);
INSERT INTO `user` VALUES (3, 'wangwu', '123456', '王五', 'http://localhost:9090/files/1701763231883-柴犬.jpeg', 'USER', '18899997777', 'wangwu@xm.com', 0.00);

SET FOREIGN_KEY_CHECKS = 1;
