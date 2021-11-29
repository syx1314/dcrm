/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : crm

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-08-13 19:01:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `snake_articles`
-- ----------------------------
DROP TABLE IF EXISTS `snake_articles`;
CREATE TABLE `snake_articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `title` varchar(155) NOT NULL COMMENT '文章标题',
  `description` varchar(255) NOT NULL COMMENT '文章描述',
  `keywords` varchar(155) NOT NULL COMMENT '文章关键字',
  `thumbnail` varchar(255) NOT NULL COMMENT '文章缩略图',
  `content` text NOT NULL COMMENT '文章内容',
  `add_time` datetime NOT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of snake_articles
-- ----------------------------
INSERT INTO `snake_articles` VALUES ('1', '杰百纳网络CRM管理系统', '杰百纳网络专注于网站建设，定位于网站高端开发，定制开发。', '杰百纳 ,网站建设,高端定制', '/upload/20180813/a7789cd54ea6cf41fda28d7b8b0a0bca.jpg', '<p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(255, 255, 255);\"><strong><span style=\"font-size: 24px;\"><span style=\"font-family: kaiti_gb2312;\"><span style=\"background-color: rgb(255, 0, 0);\">本店承接各种活动、网站、商城、微信等定制开发，php功能修改，php定制开发，php二次开发等</span></span></span></strong></span></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(255, 255, 0);\"><span style=\"font-family: &quot;microsoft yahei&quot;;\"><span style=\"font-size: 18px;\"><span style=\"background-color: rgb(204, 0, 0);\"><span style=\"background-color: rgb(61, 133, 198);\"><span style=\"background-color: rgb(0, 0, 255);\"><span style=\"background-color: rgb(53, 28, 117);\"><span style=\"background-color: rgb(255, 242, 204);\"><span style=\"background-color: rgb(0, 0, 0);\">没有服务的开发都是耍流氓</span></span></span></span></span></span></span></span></span></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(255, 255, 0);\"><span style=\"font-family: &quot;microsoft yahei&quot;;\"><span style=\"font-size: 18px;\"><span style=\"background-color: rgb(204, 0, 0);\"><span style=\"background-color: rgb(61, 133, 198);\"><span style=\"background-color: rgb(0, 0, 255);\"><span style=\"background-color: rgb(53, 28, 117);\"><span style=\"background-color: rgb(255, 242, 204);\"><span style=\"background-color: rgb(0, 0, 0);\">没有技术的开发都是耍流氓</span></span></span></span></span></span></span></span></span></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(255, 255, 0);\"><span style=\"font-family: &quot;microsoft yahei&quot;;\"><span style=\"font-size: 18px;\"><span style=\"background-color: rgb(204, 0, 0);\"><span style=\"background-color: rgb(61, 133, 198);\"><span style=\"background-color: rgb(0, 0, 255);\"><span style=\"background-color: rgb(53, 28, 117);\"><span style=\"background-color: rgb(255, 242, 204);\"><span style=\"background-color: rgb(0, 0, 0);\">没有责任的开发都是耍流氓</span></span></span></span></span></span></span></span></span></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-size: 18px;\"><span style=\"font-family: kaiti_gb2312;\"><strong><span style=\"color: rgb(0, 0, 255);\">茫茫人海，相识就是缘分，兄弟姐妹一家亲，您的首肯就是对我们最大的鼓励。</span></strong></span></span></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-size: 18px;\"><span style=\"font-family: kaiti_gb2312;\"><strong><span style=\"color: rgb(0, 0, 255);\">承诺我们开发的产品都是有服务的，都是包后续可以继续开发。</span></strong></span></span></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-size: 18px;\"><span style=\"font-family: kaiti_gb2312;\"><strong><span style=\"color: rgb(0, 0, 255);\">一分钱一分货，一份价格一份承诺。</span></strong></span></span></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-size: 18px;\"><span style=\"font-family: kaiti_gb2312;\"><strong><span style=\"color: rgb(0, 0, 255);\">您有方案，我有技术，找我们吧，我们给你一个完善的产品。</span></strong></span></span></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-size: 18px;\"><span style=\"font-family: kaiti_gb2312;\"><strong><span style=\"color: rgb(0, 0, 255);\">请亲准备好自己的策划方案，让我们沟通开发都少走弯路，重要的事情说三遍。</span></strong></span></span></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-size: 18px;\"><span style=\"font-family: kaiti_gb2312;\"><strong><span style=\"color: rgb(0, 0, 255);\">请准备好策划方案哦！</span></strong></span></span></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-size: 18px;\"><span style=\"font-family: kaiti_gb2312;\"><strong><span style=\"color: rgb(0, 0, 255);\">请准备好策划方案哦！</span></strong></span></span></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-size: 18px;\"><span style=\"font-family: kaiti_gb2312;\"><strong><span style=\"color: rgb(0, 0, 255);\">请准备好策划方案哦！</span></strong></span></span></p><p><br/></p>', '2017-09-16 17:47:44');

-- ----------------------------
-- Table structure for `snake_member`
-- ----------------------------
DROP TABLE IF EXISTS `snake_member`;
CREATE TABLE `snake_member` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nick_name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `mobile` varchar(12) DEFAULT NULL COMMENT '手机号',
  `id_number` varchar(20) DEFAULT NULL COMMENT '证件号',
  `signature` varchar(255) DEFAULT NULL COMMENT '电子签名',
  `add_time` varchar(10) DEFAULT NULL,
  `last_login_ip` varchar(20) DEFAULT NULL COMMENT '最后登陆ip',
  `last_login_time` varchar(10) DEFAULT NULL COMMENT ' 最后登录时间',
  `login_times` int(10) DEFAULT '0' COMMENT '登陆次数',
  `is_delete` int(2) DEFAULT '0' COMMENT '是否删除，1为删除，默认0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of snake_member
-- ----------------------------
INSERT INTO `snake_member` VALUES ('1', '杰百纳', '123123', '15200001111', '37048154646456546', '/upload/20180813/131511b1b7d22407677fced08572ba9f.png', '1533610701', '127.0.0.1', '1534157780', '2', '0');

-- ----------------------------
-- Table structure for `snake_node`
-- ----------------------------
DROP TABLE IF EXISTS `snake_node`;
CREATE TABLE `snake_node` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_name` varchar(155) NOT NULL DEFAULT '' COMMENT '节点名称',
  `control_name` varchar(155) NOT NULL DEFAULT '' COMMENT '控制器名',
  `action_name` varchar(155) NOT NULL COMMENT '方法名',
  `is_menu` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否是菜单项 1不是 2是',
  `type_id` int(11) NOT NULL COMMENT '父级节点id',
  `style` varchar(155) DEFAULT '' COMMENT '菜单样式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of snake_node
-- ----------------------------
INSERT INTO `snake_node` VALUES ('1', '用户管理', '#', '#', '2', '0', 'fa fa-users');
INSERT INTO `snake_node` VALUES ('2', '管理员管理', 'user', 'index', '2', '1', '');
INSERT INTO `snake_node` VALUES ('3', '添加管理员', 'user', 'useradd', '1', '2', '');
INSERT INTO `snake_node` VALUES ('4', '编辑管理员', 'user', 'useredit', '1', '2', '');
INSERT INTO `snake_node` VALUES ('5', '删除管理员', 'user', 'userdel', '1', '2', '');
INSERT INTO `snake_node` VALUES ('6', '角色管理', 'role', 'index', '2', '1', '');
INSERT INTO `snake_node` VALUES ('7', '添加角色', 'role', 'roleadd', '1', '6', '');
INSERT INTO `snake_node` VALUES ('8', '编辑角色', 'role', 'roleedit', '1', '6', '');
INSERT INTO `snake_node` VALUES ('9', '删除角色', 'role', 'roledel', '1', '6', '');
INSERT INTO `snake_node` VALUES ('10', '分配权限', 'role', 'giveaccess', '1', '6', '');
INSERT INTO `snake_node` VALUES ('11', '系统管理', '#', '#', '2', '0', 'fa fa-desktop');
INSERT INTO `snake_node` VALUES ('12', '数据备份/还原', 'data', 'index', '2', '11', '');
INSERT INTO `snake_node` VALUES ('13', '备份数据', 'data', 'importdata', '1', '12', '');
INSERT INTO `snake_node` VALUES ('14', '还原数据', 'data', 'backdata', '1', '12', '');
INSERT INTO `snake_node` VALUES ('15', '节点管理', 'node', 'index', '2', '1', '');
INSERT INTO `snake_node` VALUES ('16', '添加节点', 'node', 'nodeadd', '1', '15', '');
INSERT INTO `snake_node` VALUES ('17', '编辑节点', 'node', 'nodeedit', '1', '15', '');
INSERT INTO `snake_node` VALUES ('18', '删除节点', 'node', 'nodedel', '1', '15', '');
INSERT INTO `snake_node` VALUES ('19', '文章管理', 'articles', 'index', '2', '0', 'fa fa-book');
INSERT INTO `snake_node` VALUES ('20', '文章列表', 'articles', 'index', '2', '19', '');
INSERT INTO `snake_node` VALUES ('21', '添加文章', 'articles', 'articleadd', '1', '19', '');
INSERT INTO `snake_node` VALUES ('22', '编辑文章', 'articles', 'articleedit', '1', '19', '');
INSERT INTO `snake_node` VALUES ('23', '删除文章', 'articles', 'articledel', '1', '19', '');
INSERT INTO `snake_node` VALUES ('24', '上传图片', 'articles', 'uploadImg', '1', '19', '');
INSERT INTO `snake_node` VALUES ('25', '会员管理', '#', '#', '2', '0', 'glyphicon glyphicon-user');
INSERT INTO `snake_node` VALUES ('26', '会员列表', 'member', 'index', '2', '25', '');
INSERT INTO `snake_node` VALUES ('27', '添加会员', 'member', 'memberadd', '1', '25', '');
INSERT INTO `snake_node` VALUES ('28', '编辑会员', 'member', 'memberedit', '1', '25', '');
INSERT INTO `snake_node` VALUES ('29', '删除会员', 'member', 'memberdel', '1', '25', '');
INSERT INTO `snake_node` VALUES ('30', '上传签名', 'member', 'uploadimg', '1', '25', '');

-- ----------------------------
-- Table structure for `snake_role`
-- ----------------------------
DROP TABLE IF EXISTS `snake_role`;
CREATE TABLE `snake_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `role_name` varchar(155) NOT NULL COMMENT '角色名称',
  `rule` varchar(255) DEFAULT '' COMMENT '权限节点数据',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of snake_role
-- ----------------------------
INSERT INTO `snake_role` VALUES ('1', '超级管理员', '*');
INSERT INTO `snake_role` VALUES ('2', '系统维护员', '1,2,3,4,5,6,7,8,9,10');

-- ----------------------------
-- Table structure for `snake_user`
-- ----------------------------
DROP TABLE IF EXISTS `snake_user`;
CREATE TABLE `snake_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '密码',
  `login_times` int(11) NOT NULL DEFAULT '0' COMMENT '登陆次数',
  `last_login_ip` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '最后登录IP',
  `last_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `real_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '真实姓名',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `role_id` int(11) NOT NULL DEFAULT '1' COMMENT '用户角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of snake_user
-- ----------------------------
INSERT INTO `snake_user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '46', '127.0.0.1', '1534151894', 'admin', '1', '1');
