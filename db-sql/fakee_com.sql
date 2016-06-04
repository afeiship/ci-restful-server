/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Version : 50711
 Source Host           : 127.0.0.1
 Source Database       : fakee_com

 Target Server Version : 50711
 File Encoding         : utf-8

 Date: 06/04/2016 22:53:35 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `accounts`
-- ----------------------------
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id主键',
  `account` varchar(40) NOT NULL COMMENT '账号',
  `password` varchar(40) NOT NULL COMMENT '密码',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `accounts`
-- ----------------------------
BEGIN;
INSERT INTO `accounts` VALUES ('1', '53llkjll3', '2131l.12l3j1l23', '2016-05-27 14:15:52', '2016-05-27 14:15:55'), ('2', 'test2', 'lajsfldj.com', '2016-05-27 17:49:17', '2016-05-27 17:49:21');
COMMIT;

-- ----------------------------
--  Table structure for `sources`
-- ----------------------------
DROP TABLE IF EXISTS `sources`;
CREATE TABLE `sources` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL COMMENT '网站名称',
  `url` varchar(200) NOT NULL COMMENT '网址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `sources`
-- ----------------------------
BEGIN;
INSERT INTO `sources` VALUES ('1', '迅雷粉', 'http://xlfans.com/'), ('2', '老冰棍', 'http://www.laobinggun.com/forum.php');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
