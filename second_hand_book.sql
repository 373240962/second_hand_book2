/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80036 (8.0.36)
 Source Host           : localhost:3306
 Source Schema         : second_hand_book

 Target Server Type    : MySQL
 Target Server Version : 80036 (8.0.36)
 File Encoding         : 65001

 Date: 30/03/2024 15:39:04
*/

CREATE DATABASE `second_hand_book`;

USE `second_hand_book`;


SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `userid` bigint NOT NULL COMMENT '创建用户',
  `address` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '地址 ',
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收货人',
  `phone` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '手机号',
  `isdefault` char(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '是否默认地址 ',
  `addtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1711784132706 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '收货地址' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, 3, '收货人1', '17703786901', '地址1', '1', '2022-03-16 14:42:41');
INSERT INTO `address` VALUES (2, 1, '收货人2', '17703786902', '地址2', '1', '2022-03-16 14:42:41');
INSERT INTO `address` VALUES (3, 2, '收货人3', '17703786903', '地址3', '1', '2022-03-16 14:42:41');
INSERT INTO `address` VALUES (4, 2, '收货人4', '17703786904', '地址4', '1', '2022-03-16 14:42:41');
INSERT INTO `address` VALUES (5, 3, '收货人5', '17703786905', '地址5', '1', '2022-03-16 14:42:41');
INSERT INTO `address` VALUES (1711784132705, 1711779307383, '这里是地址', '测试01', '15855236325', '是', '2024-03-30 15:35:32');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tablename` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品表名',
  `userid` bigint NULL DEFAULT NULL COMMENT '所属用户',
  `goodid` bigint NULL DEFAULT NULL COMMENT '商品id',
  `goodname` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片url',
  `buynumber` int NULL DEFAULT NULL COMMENT '购买数量',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '单价',
  `discountprice` decimal(10, 2) NULL DEFAULT NULL COMMENT '会员价',
  `maijiazhanghao` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商户名称',
  `addtime` datetime NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1711784037095 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '购物车' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NULL DEFAULT NULL COMMENT '提问用户',
  `adminid` bigint NULL DEFAULT NULL COMMENT '管理员id',
  `ask` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '问题',
  `ask_time` datetime NULL DEFAULT NULL COMMENT '问题时间',
  `reply` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '回复',
  `reply_time` datetime NULL DEFAULT NULL COMMENT '回复时间',
  `isreply` tinyint NULL DEFAULT NULL COMMENT '是否回复',
  `addtime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1711784259787 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户反馈' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES (1711784259786, 1711779307383, NULL, '客服在么', NULL, NULL, NULL, 1, NULL);

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, '轮播图1', 'upload/picture1.jpg');
INSERT INTO `config` VALUES (2, '轮播图2', 'upload/picture2.jpg');
INSERT INTO `config` VALUES (3, '轮播图3', 'upload/picture3.jpg');

-- ----------------------------
-- Table structure for dictionary
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '字段名',
  `code_index` int NULL DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int NULL DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '字典' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dictionary
-- ----------------------------
INSERT INTO `dictionary` VALUES (1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-03-16 14:42:10');
INSERT INTO `dictionary` VALUES (2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-03-16 14:42:10');
INSERT INTO `dictionary` VALUES (3, 'isdefault_types', '是否默认地址', 1, '否', NULL, NULL, '2022-03-16 14:42:10');
INSERT INTO `dictionary` VALUES (4, 'isdefault_types', '是否默认地址', 2, '是', NULL, NULL, '2022-03-16 14:42:10');
INSERT INTO `dictionary` VALUES (5, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2022-03-16 14:42:10');
INSERT INTO `dictionary` VALUES (6, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2022-03-16 14:42:10');
INSERT INTO `dictionary` VALUES (7, 'tushu_types', '图书类型', 1, '图书类型1', NULL, NULL, '2022-03-16 14:42:10');
INSERT INTO `dictionary` VALUES (8, 'tushu_types', '图书类型', 2, '图书类型2', NULL, NULL, '2022-03-16 14:42:10');
INSERT INTO `dictionary` VALUES (9, 'tushu_types', '图书类型', 3, '图书类型3', NULL, NULL, '2022-03-16 14:42:10');
INSERT INTO `dictionary` VALUES (10, 'chat_types', '数据类型', 1, '问题', NULL, NULL, '2022-03-16 14:42:11');
INSERT INTO `dictionary` VALUES (11, 'chat_types', '数据类型', 2, '回复', NULL, NULL, '2022-03-16 14:42:11');
INSERT INTO `dictionary` VALUES (12, 'zhuangtai_types', '状态', 1, '未回复', NULL, NULL, '2022-03-16 14:42:11');
INSERT INTO `dictionary` VALUES (13, 'zhuangtai_types', '状态', 2, '已回复', NULL, NULL, '2022-03-16 14:42:11');
INSERT INTO `dictionary` VALUES (15, 'tushu_order_types', '订单类型', 2, '退款', NULL, NULL, '2022-03-16 14:42:11');
INSERT INTO `dictionary` VALUES (16, 'tushu_order_types', '订单类型', 3, '已支付', NULL, NULL, '2022-03-16 14:42:11');
INSERT INTO `dictionary` VALUES (17, 'tushu_order_types', '订单类型', 4, '已发货', NULL, NULL, '2022-03-16 14:42:11');
INSERT INTO `dictionary` VALUES (18, 'tushu_order_types', '订单类型', 5, '已收货', NULL, NULL, '2022-03-16 14:42:11');
INSERT INTO `dictionary` VALUES (19, 'tushu_order_payment_types', '订单支付类型', 1, '现金', NULL, NULL, '2022-03-16 14:42:11');
INSERT INTO `dictionary` VALUES (20, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-03-16 14:42:11');
INSERT INTO `dictionary` VALUES (21, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-03-16 14:42:11');
INSERT INTO `dictionary` VALUES (22, 'tushuqiugou_types', '图书求购状态', 1, '未完成', NULL, NULL, '2022-03-16 14:42:11');
INSERT INTO `dictionary` VALUES (23, 'tushuqiugou_types', '图书求购状态', 2, '已完成', NULL, NULL, '2022-03-16 14:42:11');

-- ----------------------------
-- Table structure for discussershoutushu
-- ----------------------------
DROP TABLE IF EXISTS `discussershoutushu`;
CREATE TABLE `discussershoutushu`  (
  `id` bigint NOT NULL COMMENT 'id',
  `refid` bigint NULL DEFAULT NULL COMMENT '关联表id',
  `userid` bigint NULL DEFAULT NULL COMMENT '用户id',
  `nickname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '评论内容',
  `reply` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复内容',
  `addtime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discussershoutushu
-- ----------------------------

-- ----------------------------
-- Table structure for ershoutushu
-- ----------------------------
DROP TABLE IF EXISTS `ershoutushu`;
CREATE TABLE `ershoutushu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int NULL DEFAULT NULL COMMENT '用户',
  `tushumingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图书名称',
  `tushufenlei` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图书分类',
  `fengmian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '封面',
  `zuozhe` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '作者',
  `chubanshe` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '出版社',
  `chengse` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '成色',
  `tushujianjie` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '图书简介',
  `maijiazhanghao` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '卖家账号',
  `maijiaxingming` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '卖家姓名',
  `clicktime` datetime NULL DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int NULL DEFAULT NULL COMMENT '点击次数',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `addtime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1711782826104 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '图书' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ershoutushu
-- ----------------------------
INSERT INTO `ershoutushu` VALUES (1711782772604, NULL, '《Java 编程思想》（Thinking in Java）', 'java', 'upload/1711782691850.jpg', 'Bruce', '牛津大学出版社', '全新', '<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(25, 27, 31);\">这是一本非常有名的经典书籍。它不仅介绍了 Java 编程的基础知识，还深入讨论了各种编程选择和判断，并涵盖了设计模式的应用。作者从理论到实践都进行了全面探讨，帮助构建了坚实的 Java 编程知识体系。</span></p>', 'seller02', '卖家01', '2024-03-30 15:36:07', 11, 198.00, NULL);

-- ----------------------------
-- Table structure for maijiayonghu
-- ----------------------------
DROP TABLE IF EXISTS `maijiayonghu`;
CREATE TABLE `maijiayonghu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `maijiazhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '卖家账号',
  `mima` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '密码',
  `maijiaxingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '卖家姓名',
  `xingbie` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '性别',
  `maijiashouji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '卖家手机',
  `youxiang` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '照片',
  `money` decimal(10, 2) NULL DEFAULT NULL COMMENT '余额',
  `addtime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1711782449242 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of maijiayonghu
-- ----------------------------
INSERT INTO `maijiayonghu` VALUES (1711779530637, 'seller01', '123456', '卖家1', '男', '15525552223', '', 'upload/1711779459487.jpg', NULL, NULL);
INSERT INTO `maijiayonghu` VALUES (1711782449241, 'seller02', '123456', '卖家01', NULL, '15232558855', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `userid` bigint NOT NULL COMMENT '用户id ',
  `username` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '留言内容 ',
  `cpicture` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '留言图片',
  `reply` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复内容 ',
  `rpicture` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '回复图片 ',
  `addtime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1711782107997 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '留言反馈' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES (1711782107996, 1711779307383, 'test01', '测试留言', 'upload/1711782091682.jpg', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `title` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '标题',
  `introduction` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '简介 ',
  `picture` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片',
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '内容 ',
  `rpicture` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '回复图片 ',
  `addtime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1711779839192 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '系统公告' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1711779839191, '测试系统公告', '测试', 'upload/1711779711618.jpg', '<p><strong><em><u>测试系统公告测试系统公告测试系统公告测试系统公告</u></em></strong></p>', NULL, NULL);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `orderid` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '订单编号',
  `tablename` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品表名',
  `userid` bigint NULL DEFAULT NULL COMMENT '用户id ',
  `goodid` bigint NULL DEFAULT NULL COMMENT '商品id ',
  `goodname` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `buynumber` int NULL DEFAULT NULL COMMENT '购买数量',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `discountprice` decimal(10, 2) NULL DEFAULT NULL COMMENT '折扣价格',
  `total` decimal(10, 2) NULL DEFAULT NULL COMMENT '总价格',
  `discounttotal` decimal(10, 2) NULL DEFAULT NULL COMMENT '折扣总价格',
  `type` tinyint NULL DEFAULT NULL COMMENT '支付类型',
  `status` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '状态',
  `address` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '地址',
  `tel` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '电话',
  `consignee` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '收货人',
  `logistics` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '物流',
  `maijiazhanghao` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商户名称',
  `addtime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1711784158611 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '系统公告' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1711784141406, '2024330153541167002', 'ershoutushu', 1711779307383, 1711782772604, '《Java 编程思想》（Thinking in Java）', 'upload/1711782691850.jpg', 4, 198.00, 198.00, 792.00, 792.00, 1, '已支付', '这里是地址', '15855236325', '测试01', NULL, 'seller02', NULL);
INSERT INTO `orders` VALUES (1711784158610, '202433015355824750750', 'ershoutushu', 1711779307383, 1711782772604, '《Java 编程思想》（Thinking in Java）', 'upload/1711782691850.jpg', 4, 198.00, 198.00, 792.00, 792.00, 1, '已支付', '这里是地址', '15855236325', '测试01', NULL, 'seller02', NULL);

-- ----------------------------
-- Table structure for qiugouhuifu
-- ----------------------------
DROP TABLE IF EXISTS `qiugouhuifu`;
CREATE TABLE `qiugouhuifu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `tushumingcheng` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图书名称',
  `tushufenlei` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图书分类',
  `zuozhe` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '作者',
  `chubanshe` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '出版社',
  `chengseyaoqiu` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '成色要求',
  `jieshoujiawei` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '接受价位',
  `yonghuzhanghao` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `maijiazhanghao` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '卖家账号',
  `maijiaxingming` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '卖家姓名',
  `maijiashouji` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '卖家手机',
  `huifuneirong` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复内容',
  `huifushijian` datetime NULL DEFAULT NULL COMMENT '回复时间',
  `addtime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '求购回复' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qiugouhuifu
-- ----------------------------

-- ----------------------------
-- Table structure for qiugoutushu
-- ----------------------------
DROP TABLE IF EXISTS `qiugoutushu`;
CREATE TABLE `qiugoutushu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `tushumingcheng` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图书名称',
  `tushufenlei` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图书分类',
  `zuozhe` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '作者',
  `chubanshe` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '出版社',
  `chengseyaoqiu` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '成色要求',
  `jieshoujiawei` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '接受价位',
  `yonghuzhanghao` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `maijiashouji` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '卖家手机',
  `xiangqing` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '详情',
  `fabushijian` datetime NULL DEFAULT NULL COMMENT '发布时间',
  `addtime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '求购图书' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qiugoutushu
-- ----------------------------

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `userid` bigint NOT NULL COMMENT '用户id ',
  `refid` bigint NOT NULL COMMENT '收藏id ',
  `tablename` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '收藏名称',
  `picture` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '收藏图片',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '推荐类型',
  `addtime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1711783749164 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '收藏表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES (1711783749163, 1711779307383, 1711782772604, 'ershoutushu', '《Java 编程思想》（Thinking in Java）', 'upload/1711782691850.jpg', '1', NULL, NULL);

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `addtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1, 'admin', 'users', '管理员', 'cyzy7sfh0fin1ca34buhlbuww55vzre7', '2022-03-16 14:53:54', '2024-03-30 15:15:55');
INSERT INTO `token` VALUES (2, 1, 'a1', 'yonghu', '用户', '1ikb2akrqz4n11iazikeaxvbz1k9r8a2', '2022-03-16 14:57:28', '2022-03-16 16:57:48');
INSERT INTO `token` VALUES (3, 2, 'a2', 'yonghu', '用户', 'm26trdx33qvc5of2sywcty25l5vwho9t', '2022-03-16 15:34:35', '2022-03-16 16:50:16');
INSERT INTO `token` VALUES (4, 1711779307383, 'test01', 'yonghu', '用户', '5kkw9iwn8wibabk4p3fbinvuquqdcdyi', '2024-03-30 14:15:18', '2024-03-30 16:33:54');
INSERT INTO `token` VALUES (5, 1711782449241, 'seller02', 'maijiayonghu', '卖家用户', 'le08tufbxjj31gkkmqqp97xlbxf7g7f6', '2024-03-30 15:07:44', '2024-03-30 16:07:45');

-- ----------------------------
-- Table structure for tushufenlei
-- ----------------------------
DROP TABLE IF EXISTS `tushufenlei`;
CREATE TABLE `tushufenlei`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `tushufenlei` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图书分类',
  `addtime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1711779596756 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '图书分类' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tushufenlei
-- ----------------------------
INSERT INTO `tushufenlei` VALUES (1711779553459, 'java', NULL);
INSERT INTO `tushufenlei` VALUES (1711779568501, 'go', NULL);
INSERT INTO `tushufenlei` VALUES (1711779576615, 'python', NULL);
INSERT INTO `tushufenlei` VALUES (1711779584424, 'js', NULL);
INSERT INTO `tushufenlei` VALUES (1711779589975, 'vue', NULL);
INSERT INTO `tushufenlei` VALUES (1711779596755, 'html', NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '123456', '管理员', '2022-05-01 00:00:00');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghuzhanghao` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `mima` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '密码',
  `xingbie` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '性别',
  `nianling` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '年龄',
  `touxiang` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '头像',
  `money` decimal(10, 2) NULL DEFAULT NULL COMMENT '余额',
  `addtime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1711779307384 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (1711779307383, 'test01', '测试01', '123456', '', '18', 'upload/1711782236109.jpg', 98516.00, NULL);

SET FOREIGN_KEY_CHECKS = 1;
