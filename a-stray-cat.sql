/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : a-stray-cat

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 01/01/2020 14:19:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `adminName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `adminPassword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`adminName`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', 'admin');
INSERT INTO `admin` VALUES ('root', 'root');

-- ----------------------------
-- Table structure for music
-- ----------------------------
DROP TABLE IF EXISTS `music`;
CREATE TABLE `music`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '歌曲ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of music
-- ----------------------------
INSERT INTO `music` VALUES (1);
INSERT INTO `music` VALUES (2);
INSERT INTO `music` VALUES (3);
INSERT INTO `music` VALUES (4);
INSERT INTO `music` VALUES (5);
INSERT INTO `music` VALUES (6);
INSERT INTO `music` VALUES (7);
INSERT INTO `music` VALUES (8);
INSERT INTO `music` VALUES (9);
INSERT INTO `music` VALUES (10);
INSERT INTO `music` VALUES (11);
INSERT INTO `music` VALUES (12);
INSERT INTO `music` VALUES (13);
INSERT INTO `music` VALUES (14);
INSERT INTO `music` VALUES (15);
INSERT INTO `music` VALUES (16);
INSERT INTO `music` VALUES (17);
INSERT INTO `music` VALUES (18);
INSERT INTO `music` VALUES (19);
INSERT INTO `music` VALUES (20);
INSERT INTO `music` VALUES (21);
INSERT INTO `music` VALUES (22);
INSERT INTO `music` VALUES (23);
INSERT INTO `music` VALUES (24);
INSERT INTO `music` VALUES (25);
INSERT INTO `music` VALUES (26);
INSERT INTO `music` VALUES (27);
INSERT INTO `music` VALUES (28);
INSERT INTO `music` VALUES (29);
INSERT INTO `music` VALUES (30);
INSERT INTO `music` VALUES (31);
INSERT INTO `music` VALUES (32);
INSERT INTO `music` VALUES (33);

-- ----------------------------
-- Table structure for musicform
-- ----------------------------
DROP TABLE IF EXISTS `musicform`;
CREATE TABLE `musicform`  (
  `userId` int(100) NOT NULL COMMENT '总歌单ID',
  `formId` int(10) NOT NULL COMMENT '歌单ID',
  `formName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '歌单名',
  `musicName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '歌名',
  `singer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '歌手',
  `album` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '专辑',
  `allTime` time(0) NOT NULL COMMENT '总时长',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '封面',
  INDEX `formID`(`userId`) USING BTREE,
  CONSTRAINT `musicform_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of musicform
-- ----------------------------
INSERT INTO `musicform` VALUES (1, 1, '古风1', '关山酒', '等什么君', '关山酒', '00:03:54', '/cover/1.jpg');
INSERT INTO `musicform` VALUES (2, 1, '古风1', '归寻', '等什么君', '归寻', '00:03:14', '/cover/2.jpg');
INSERT INTO `musicform` VALUES (1, 2, '古风2', '辞九门回忆', '等什么君', '辞九门回忆', '00:04:00', '/cover/3.jpg');
INSERT INTO `musicform` VALUES (2, 2, '古风2', '一抹桃花', '珍哥', '一抹桃花', '00:03:16', '/cover/4.jpg');

-- ----------------------------
-- Table structure for rotation
-- ----------------------------
DROP TABLE IF EXISTS `rotation`;
CREATE TABLE `rotation`  (
  `chartId` int(10) NOT NULL COMMENT '海报ID',
  `posterName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '海报名称',
  `poster` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '海报路径',
  `musicId` int(255) NOT NULL COMMENT '对应所属音乐ID',
  PRIMARY KEY (`chartId`) USING BTREE,
  INDEX `musicId`(`musicId`) USING BTREE,
  CONSTRAINT `rotation_ibfk_1` FOREIGN KEY (`musicId`) REFERENCES `music` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rotation
-- ----------------------------
INSERT INTO `rotation` VALUES (1, '无感', '/rotation/wangyibo.png', 1);
INSERT INTO `rotation` VALUES (2, '我成了自己期待的样子', '/rotation/baijugang.png', 2);
INSERT INTO `rotation` VALUES (3, '爱你', '/rotation/wangyilang.png', 3);
INSERT INTO `rotation` VALUES (4, '阴阳师-百闻牌', '/rotation/yiziqianjin.png', 4);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userId` int(100) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `userPassword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `userPhonenumber` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '手机号',
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '123', '123', '1234525341');
INSERT INTO `user` VALUES (2, '1234', '1234', '1284773847309');
INSERT INTO `user` VALUES (3, 'lh1123', '123', '123');
INSERT INTO `user` VALUES (4, 'lh113', '123', '123');
INSERT INTO `user` VALUES (5, '131', '123', '123');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `userId` int(100) NOT NULL COMMENT '用户ID',
  `videoId` int(100) NOT NULL AUTO_INCREMENT COMMENT '视频ID',
  `videoName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '视频名称',
  `uploadTime` datetime(0) NOT NULL COMMENT '上传时间',
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '标签',
  `storagePath` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '保存路径',
  PRIMARY KEY (`videoId`) USING BTREE,
  INDEX `userId`(`userId`) USING BTREE,
  CONSTRAINT `video_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES (1, 1, 'gnash,Olivia O\'Brien - I Hate U, I Love U', '2016-05-11 00:00:00', '流行', '/video/gnash,Olivia O\'Brien - I Hate U, I Love U.mp4');
INSERT INTO `video` VALUES (1, 2, '李荣浩 - 麻雀', '2019-12-09 00:00:00', '流行', '/video/李荣浩 - 麻雀.mp4');
INSERT INTO `video` VALUES (2, 3, '薛之谦,刘惜君 - 聊表心意', '2019-12-17 00:00:00', '流行', '/video/薛之谦,刘惜君 - 聊表心意.mp4');
INSERT INTO `video` VALUES (3, 4, '薛之谦 - 像风一样', '2018-01-18 00:00:00', '流行', '/video/薛之谦 - 像风一样.mp4');

SET FOREIGN_KEY_CHECKS = 1;
