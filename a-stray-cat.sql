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

 Date: 02/01/2020 13:19:01
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
  `musicId` int(11) NOT NULL AUTO_INCREMENT COMMENT '歌曲ID',
  `musicName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '歌曲名',
  `singer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '歌手',
  `play` int(255) NOT NULL COMMENT '播放量',
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '短期标签',
  PRIMARY KEY (`musicId`) USING BTREE,
  INDEX `musicName`(`musicName`) USING BTREE,
  INDEX `singer`(`singer`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of music
-- ----------------------------
INSERT INTO `music` VALUES (1, '归寻', '等什么君', 123, NULL);
INSERT INTO `music` VALUES (2, '关山酒', '等什么君', 2321, NULL);
INSERT INTO `music` VALUES (3, '辞九门回忆', '等什么君', 2343, NULL);
INSERT INTO `music` VALUES (4, '一抹桃花', '珍哥', 56, NULL);
INSERT INTO `music` VALUES (34, '赤伶', 'HITA', 4522, 'new');
INSERT INTO `music` VALUES (35, '好想爱这个世界啊', '华晨宇', 4532, 'new');
INSERT INTO `music` VALUES (36, '环', '薛之谦', 6543, 'new');
INSERT INTO `music` VALUES (37, '世界美好与你环环相扣', '柏松', 6545, 'hot');
INSERT INTO `music` VALUES (38, '你的答案', '阿冗', 4321, 'hot');
INSERT INTO `music` VALUES (39, '句号', '邓紫棋', 5432, 'hot');

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
  `collection` int(255) NOT NULL DEFAULT 0 COMMENT '收藏',
  INDEX `formID`(`userId`) USING BTREE,
  INDEX `musicName`(`musicName`) USING BTREE,
  INDEX `singer`(`singer`) USING BTREE,
  CONSTRAINT `musicform_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `musicform_ibfk_2` FOREIGN KEY (`musicName`) REFERENCES `music` (`musicName`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `musicform_ibfk_3` FOREIGN KEY (`singer`) REFERENCES `music` (`singer`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of musicform
-- ----------------------------
INSERT INTO `musicform` VALUES (1, 1, '古风1', '关山酒', '等什么君', '关山酒', '00:03:54', '/cover/1.jpg', 0);
INSERT INTO `musicform` VALUES (2, 1, '古风1', '归寻', '等什么君', '归寻', '00:03:14', '/cover/2.jpg', 0);
INSERT INTO `musicform` VALUES (1, 2, '古风2', '辞九门回忆', '等什么君', '辞九门回忆', '00:04:00', '/cover/3.jpg', 0);
INSERT INTO `musicform` VALUES (2, 2, '古风2', '一抹桃花', '珍哥', '一抹桃花', '00:03:16', '/cover/4.jpg', 0);

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
  CONSTRAINT `rotation_ibfk_1` FOREIGN KEY (`musicId`) REFERENCES `music` (`musicId`) ON DELETE RESTRICT ON UPDATE RESTRICT
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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `video` VALUES (1, 1, 'gnash,Olivia O\'Brien - I Hate U, I Love U', '2016-05-11 00:00:00', '流行', '/video/i hate u ilove u.png');
INSERT INTO `video` VALUES (1, 2, '李荣浩 - 麻雀', '2019-12-09 00:00:00', '流行', '/video/maque.png');
INSERT INTO `video` VALUES (2, 3, '薛之谦,刘惜君 - 聊表心意', '2019-12-17 00:00:00', '流行', '/video/liaobiaoxinyi.png');
INSERT INTO `video` VALUES (3, 4, '薛之谦 - 像风一样', '2018-01-18 00:00:00', '流行', '/video/xiangfengyiyang.png');

SET FOREIGN_KEY_CHECKS = 1;
